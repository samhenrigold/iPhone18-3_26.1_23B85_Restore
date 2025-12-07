uint64_t sub_100219F54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a3;
  v68 = type metadata accessor for Date();
  v7 = *(v68 - 8);
  v8 = __chkstk_darwin(v68);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v56 - v10;
  v72 = type metadata accessor for Fence();
  v11 = *(v72 - 8);
  v12 = __chkstk_darwin(v72);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v70 = &v56 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = v73 - a2;
  if (v73 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v76 = a1;
  v75 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v21;
    if (v21 >= 1)
    {
      v39 = -v17;
      v60 = (v7 + 8);
      v61 = (v11 + 16);
      v58 = a4;
      v59 = (v11 + 8);
      v40 = v38;
      v71 = a1;
      v62 = -v17;
      v41 = v72;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v42 = a2;
          v43 = a2 + v39;
          v63 = v42;
          v64 = v43;
          while (1)
          {
            v44 = v73;
            if (v42 <= a1)
            {
              v76 = v42;
              v74 = v56;
              goto LABEL_59;
            }

            v57 = v38;
            v73 += v39;
            v45 = v40 + v39;
            v46 = *v61;
            (*v61)();
            v47 = v65;
            (v46)(v65, v43, v41);
            v48 = v66;
            Fence.updatedAt.getter();
            v49 = v67;
            Fence.updatedAt.getter();
            v69 = static Date.> infix(_:_:)();
            v50 = *v60;
            v51 = v49;
            v52 = v68;
            (*v60)(v51, v68);
            v50(v48, v52);
            v53 = *v59;
            (*v59)(v47, v41);
            v53(v70, v41);
            if (v69)
            {
              break;
            }

            v38 = v45;
            v54 = v58;
            if (v44 < v40 || v73 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v43 = v64;
              v39 = v62;
            }

            else
            {
              v43 = v64;
              v39 = v62;
              if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v45;
            a1 = v71;
            v42 = v63;
            if (v45 <= v54)
            {
              a2 = v63;
              goto LABEL_58;
            }
          }

          v55 = v58;
          if (v44 < v63 || v73 >= v63)
          {
            break;
          }

          a2 = v64;
          a1 = v71;
          v38 = v57;
          v39 = v62;
          if (v44 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v64;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v71;
        v38 = v57;
        v39 = v62;
        if (v40 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v76 = a2;
    v74 = v38;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v20;
    v74 = a4 + v20;
    if (v20 >= 1 && a2 < v73)
    {
      v23 = *(v11 + 16);
      v60 = (v7 + 8);
      v61 = v23;
      v62 = v17;
      v63 = v11 + 16;
      v59 = (v11 + 8);
      v24 = v72;
      do
      {
        v71 = a1;
        v25 = v70;
        v26 = v61;
        (v61)(v70, a2, v24);
        v27 = v65;
        (v26)(v65, a4, v24);
        v28 = v66;
        Fence.updatedAt.getter();
        v29 = v67;
        Fence.updatedAt.getter();
        v69 = static Date.> infix(_:_:)();
        v30 = a2;
        v31 = *v60;
        v32 = v29;
        v33 = a4;
        v34 = v68;
        (*v60)(v32, v68);
        v31(v28, v34);
        v35 = *v59;
        (*v59)(v27, v24);
        v35(v25, v24);
        if (v69)
        {
          v36 = v62;
          a2 = v30 + v62;
          v37 = v71;
          a4 = v33;
          if (v71 < v30 || v71 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v30;
          v36 = v62;
          a4 = v33 + v62;
          v37 = v71;
          if (v71 < v33 || v71 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v75 = a4;
        }

        a1 = v37 + v36;
        v76 = a1;
      }

      while (a4 < v64 && a2 < v73);
    }
  }

LABEL_59:
  sub_10023C598(&v76, &v75, &v74);
  return 1;
}

void sub_10021A630(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for FenceRecord(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v41[-v11];
  v13 = UUID.uuidString.getter();
  v46 = a1;
  v15 = *a1;
  if (!*(*a1 + 16))
  {

    goto LABEL_8;
  }

  v16 = sub_1000110D8(v13, v14);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_8:
    v37 = *(v5 + 56);
    v37(v12, 1, 1, v4);
    sub_100002CE0(v12, &qword_1005AE720, &qword_1004CA2F0);
    goto LABEL_11;
  }

  sub_1001C2B80(*(v15 + 56) + *(v5 + 72) * v16, v12);
  v44 = *(v5 + 56);
  v44(v12, 0, 1, v4);
  sub_100002CE0(v12, &qword_1005AE720, &qword_1004CA2F0);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 30;
  v20 = inited + 32;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001004E5870;
  v21 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(v20, &qword_1005A8790, &qword_1004C0EB0);
  v22 = sub_10004C68C(3u, v21);
  v24 = v23;
  v26 = v25;

  sub_10001157C(v22, v24, v26);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000A6F0(v27, qword_1005DFF18);
  v28 = v45;
  sub_1001C2B80(a2, v45);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v42 = v30;
    v32 = v31;
    v43 = swift_slowAlloc();
    v47 = v43;
    *v32 = 136446466;
    *(v32 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v47);
    *(v32 + 12) = 2082;
    type metadata accessor for UUID();
    sub_1000093B0(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    sub_1001769EC(v28);
    v36 = sub_10000D01C(v33, v35, &v47);

    *(v32 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v29, v42, "%{public}s ckFence with duplicate ID: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001769EC(v28);
  }

  v37 = v44;
LABEL_11:
  v38 = UUID.uuidString.getter();
  v40 = v39;
  sub_1001C2B80(a2, v10);
  v37(v10, 0, 1, v4);
  sub_100145FB4(v10, v38, v40);
}

void sub_10021AB34(void *a1, const void *a2)
{
  v5 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  __chkstk_darwin(v5 - 8);
  v7 = &v46[-v6];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v50, a2, 0x241uLL);
  if (v50[5])
  {
    v12 = HIBYTE(v50[5]) & 0xFLL;
    if ((v50[5] & 0x2000000000000000) == 0)
    {
      v12 = v50[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      UUID.init(uuidString:)();
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_100002CE0(v7, &qword_1005A96E0, &qword_1004C2A80);
        sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
        inited = swift_initStackObject();
        *(inited + 32) = 30;
        v14 = inited + 32;
        *(inited + 16) = xmmword_1004C1900;
        *(inited + 64) = &type metadata for String;
        *(inited + 72) = &off_10058C398;
        *(inited + 40) = 0xD000000000000014;
        *(inited + 48) = 0x80000001004E5830;
        v15 = sub_1000105C0(inited);
        swift_setDeallocating();
        sub_100002CE0(v14, &qword_1005A8790, &qword_1004C0EB0);
        v16 = sub_10004C68C(3u, v15);
        v18 = v17;
        v20 = v19;

        sub_10001157C(v16, v18, v20);

        if (qword_1005A80B8 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_10000A6F0(v21, qword_1005DFF18);
        sub_10005D0C0(v50, v49);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        sub_10005D11C(v50);
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v49[0] = swift_slowAlloc();
          *v24 = 136446466;
          *(v24 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, v49);
          *(v24 + 12) = 2082;
          if (v50[46])
          {
            v25 = v50[45];
          }

          else
          {
            v25 = 0x3E6C696E3CLL;
          }

          if (v50[46])
          {
            v26 = v50[46];
          }

          else
          {
            v26 = 0xE500000000000000;
          }

          v27 = sub_10000D01C(v25, v26, v49);

          *(v24 + 14) = v27;
          _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s fence with invalid UUID: %{public}s", v24, 0x16u);
          swift_arrayDestroy();
        }
      }

      else
      {
        (*(v9 + 32))(v11, v7, v8);
        if (*(*a1 + 16))
        {
          sub_1001FD868(v11);
          if (v28)
          {
            v50[75] = v2;
            sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
            v29 = swift_initStackObject();
            *(v29 + 32) = 30;
            v30 = v29 + 32;
            *(v29 + 16) = xmmword_1004C1900;
            *(v29 + 64) = &type metadata for String;
            *(v29 + 72) = &off_10058C398;
            *(v29 + 40) = 0xD000000000000016;
            *(v29 + 48) = 0x80000001004E5850;
            v31 = sub_1000105C0(v29);
            swift_setDeallocating();
            sub_100002CE0(v30, &qword_1005A8790, &qword_1004C0EB0);
            v32 = sub_10004C68C(3u, v31);
            v34 = v33;
            v36 = v35;

            sub_10001157C(v32, v34, v36);

            if (qword_1005A80B8 != -1)
            {
              swift_once();
            }

            v37 = type metadata accessor for Logger();
            sub_10000A6F0(v37, qword_1005DFF18);
            sub_10005D0C0(v50, v49);
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.error.getter();
            sub_10005D11C(v50);
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v47 = v39;
              v41 = v40;
              v48 = swift_slowAlloc();
              v49[0] = v48;
              *v41 = 136446466;
              *(v41 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, v49);
              *(v41 + 12) = 2082;
              if (v50[46])
              {
                v42 = v50[45];
              }

              else
              {
                v42 = 0x3E6C696E3CLL;
              }

              if (v50[46])
              {
                v43 = v50[46];
              }

              else
              {
                v43 = 0xE500000000000000;
              }

              v44 = sub_10000D01C(v42, v43, v49);

              *(v41 + 14) = v44;
              _os_log_impl(&_mh_execute_header, v38, v47, "%{public}s fmsFence with duplicate ID: %{public}s", v41, 0x16u);
              swift_arrayDestroy();
            }
          }
        }

        sub_10005D0C0(v50, v49);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49[0] = *a1;
        sub_100453CC8(v50, v11, isUniquelyReferenced_nonNull_native);
        *a1 = v49[0];
        (*(v9 + 8))(v11, v8);
      }
    }
  }
}

uint64_t sub_10021B210(uint64_t a1)
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
  v10[1] = sub_100003690;

  return sub_10021709C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10021B304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10021B3FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FriendInfoOption(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (Hasher.init(_seed:)(), type metadata accessor for HandleType(), sub_1000093F8(&qword_1005AE818, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType), dispatch thunk of Hashable.hash(into:)(), v7 = Hasher._finalize()(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    v11 = *(v4 + 72);
    do
    {
      sub_1002413D8(*(a2 + 48) + v11 * v9, v6, type metadata accessor for FriendInfoOption);
      v12 = static HandleType.== infix(_:_:)();
      sub_1002412D8(v6);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_10021B5B8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1000093F8(&qword_1005A9FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_10021B7D0(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10021B89C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_1002414A8(), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *sub_10021B9A4(uint64_t a1)
{
  v43 = type metadata accessor for Friend();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Handle();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = _swiftEmptyArrayStorage;
    v33 = a1;
    sub_10000E8E0(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 64;
    v46 = v47;
    result = _HashTable.startBucket.getter();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 72;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      Friend.handle.getter();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = v46[2];
      v21 = v46[3];
      if (v22 >= v21 >> 1)
      {
        sub_10000E8E0((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      v20[2] = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_10002F14C(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_10002F14C(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void *sub_10021BD68(uint64_t a1)
{
  v51 = type metadata accessor for Handle();
  v3 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Friend();
  v5 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005B0550, &qword_1004D1EA8);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = (v36 - v8);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v36[1] = v1;
  v56 = _swiftEmptyArrayStorage;
  sub_1002395F8(0, v9, 0);
  v10 = v56;
  v11 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v13 = result;
  v14 = 0;
  v42 = (v3 + 8);
  v43 = v5 + 16;
  v40 = a1;
  v41 = v5 + 8;
  v37 = a1 + 64;
  v38 = v9;
  v39 = v5;
  v44 = a1 + 56;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v52 = v14;
    v53 = *(a1 + 36);
    v54 = 1 << v13;
    v17 = *(a1 + 48) + *(v5 + 72) * v13;
    v18 = *(v5 + 16);
    v19 = v48;
    v55 = v10;
    v20 = v49;
    v18(v48, v17, v49);
    v21 = v50;
    Friend.handle.getter();
    v22 = Handle.identifier.getter();
    v24 = v23;
    (*v42)(v21, v51);
    v25 = v45;
    *v45 = v22;
    *(v25 + 8) = v24;
    Friend.type.getter();
    v26 = v20;
    v10 = v55;
    (*(v5 + 8))(v19, v26);
    v56 = v10;
    v28 = v10[2];
    v27 = v10[3];
    if (v28 >= v27 >> 1)
    {
      sub_1002395F8((v27 > 1), v28 + 1, 1);
      v10 = v56;
    }

    v10[2] = v28 + 1;
    result = sub_1000176A8(v25, v10 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v28, &qword_1005B0550, &qword_1004D1EA8);
    a1 = v40;
    v15 = 1 << *(v40 + 32);
    v11 = v44;
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v29 = *(v44 + 8 * v16);
    if ((v29 & v54) == 0)
    {
      goto LABEL_23;
    }

    if (v53 != *(v40 + 36))
    {
      goto LABEL_24;
    }

    v30 = v29 & (-2 << (v13 & 0x3F));
    if (v30)
    {
      v15 = __clz(__rbit64(v30)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v16 << 6;
      v32 = v16 + 1;
      v33 = (v37 + 8 * v16);
      while (v32 < (v15 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          result = sub_10002F14C(v13, v53, 0);
          v15 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      result = sub_10002F14C(v13, v53, 0);
    }

LABEL_4:
    v14 = v52 + 1;
    v13 = v15;
    v5 = v39;
    if (v52 + 1 == v38)
    {
      return v10;
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
  return result;
}

void sub_10021C1EC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v15 = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1002345CC(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10021C2F0()
{
  v13 = v0;
  v1 = v0[8];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager readFromLocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_10021C4BC()
{
  v13 = v0;
  v1 = v0[11];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager readFromLocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_10021C688()
{
  v1 = *(v0 + 848);

  return _swift_task_switch(sub_10021C6F4, v1, 0);
}

uint64_t sub_10021C6F4()
{
  v13 = v0;

  v1 = v0[122];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[102] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager readFromLocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_10021C8D8()
{
  v1 = *v0;
  v2 = *(*v0 + 848);

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_10021CA00, v2, 0);
}

uint64_t sub_10021CA00()
{
  (*(v0[109] + 8))(v0[110], v0[108]);

  return _swift_task_switch(sub_10021CA88, 0, 0);
}

uint64_t sub_10021CA88()
{
  v1 = v0[117];
  v2 = v0[105];
  v3 = swift_task_alloc();
  v0[125] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[126] = v4;
  *v4 = v0;
  v4[1] = sub_10021CB84;
  v5 = v0[121];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 104, 0, 0, 0x2873646E65697266, 0xEC000000293A666FLL, sub_100241558, v3, v5);
}

uint64_t sub_10021CB84()
{
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v2 = sub_10021CECC;
  }

  else
  {

    v2 = sub_10021CCA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021CCA0()
{
  v1 = v0[106];
  v0[128] = v0[104];
  return _swift_task_switch(sub_10021CCC4, v1, 0);
}

uint64_t sub_10021CCC4()
{
  v14 = v0;
  v1 = *(v0 + 1024);
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_bridgeObjectRetain_n();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = Array.description.getter();
    v9 = sub_10000D01C(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    v10 = *(v1 + 16);

    *(v5 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager load LocalStorage friends with types %{public}s count:%ld", v5, 0x16u);
    sub_100004984(v6);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_10021CECC()
{
  v1 = *(v0 + 848);

  return _swift_task_switch(sub_10021CF38, v1, 0);
}

uint64_t sub_10021CF38()
{
  v13 = v0;

  v1 = v0[127];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[102] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager readFromLocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_10021D11C()
{
  v13 = v0;

  v1 = v0[118];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[102] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager readFromLocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_10021D300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[106] = v3;
  v4[105] = a3;
  v4[104] = a2;
  v4[103] = a1;
  v4[107] = *v3;
  v5 = type metadata accessor for Date();
  v4[108] = v5;
  v4[109] = *(v5 - 8);
  v4[110] = swift_task_alloc();
  v6 = type metadata accessor for HandleType();
  v4[111] = v6;
  v4[112] = *(v6 - 8);
  v4[113] = swift_task_alloc();
  v7 = type metadata accessor for Friend();
  v4[114] = v7;
  v4[115] = *(v7 - 8);
  v4[116] = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[120] = v8;
  *v8 = v4;
  v8[1] = sub_10021D52C;

  return daemon.getter();
}

uint64_t sub_10021D52C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 968) = a1;

  v3 = swift_task_alloc();
  *(v2 + 976) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000093F8(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_10021D708;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10021D708(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[123] = a1;
  v3[124] = v1;

  if (v1)
  {
    v5 = v3[106];

    return _swift_task_switch(sub_10021E254, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[125] = v6;
    *v6 = v4;
    v6[1] = sub_10021D8A0;
    v7 = v3[119];
    v8 = v3[105];
    v9 = v3[104];

    return sub_100306054(v7, v9, v8);
  }
}

uint64_t sub_10021D8A0()
{
  v2 = *v1;
  *(*v1 + 1008) = v0;

  v3 = *(v2 + 848);
  if (v0)
  {
    v4 = sub_10021E494;
  }

  else
  {
    v4 = sub_10021D9CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10021D9CC()
{
  v1 = v0[118];
  v2 = v0[115];
  v3 = v0[114];
  sub_100005F04(v0[119], v1, &qword_1005A9188, &unk_1004D80D0);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[119];
    v5 = v0[118];
    v6 = v0[103];

    sub_100002CE0(v5, &qword_1005A9188, &unk_1004D80D0);
    v7 = v4;
    v8 = v6;
LABEL_13:
    sub_1000176A8(v7, v8, &qword_1005A9188, &unk_1004D80D0);

    v36 = v0[1];

    return v36();
  }

  v9 = v0[113];
  v10 = v0[112];
  v11 = v0[111];
  (*(v0[115] + 32))(v0[116], v0[118], v0[114]);
  v12 = *(v10 + 104);
  v12(v9, enum case for HandleType.follower(_:), v11);
  v13 = static HandleType.== infix(_:_:)();
  v14 = *(v10 + 8);
  v14(v9, v11);
  if ((v13 & 1) == 0)
  {
    v15 = v0[113];
    v16 = v0[111];
    v12(v15, enum case for HandleType.pendingOffer(_:), v16);
    v17 = static HandleType.== infix(_:_:)();
    v14(v15, v16);
    if ((v17 & 1) == 0)
    {
      v18 = v0[113];
      v19 = v0[111];
      v12(v18, enum case for HandleType.following(_:), v19);
      v20 = static HandleType.== infix(_:_:)();
      v14(v18, v19);
      if ((v20 & 1) == 0)
      {
        (*(v0[115] + 8))(v0[116], v0[114]);
        goto LABEL_12;
      }
    }
  }

  v21 = v0[116];
  v22 = v0[115];
  v23 = v0[114];
  v24 = v0[110];
  v25 = v0[107];
  sub_10004B564(&qword_1005B00D0, &qword_1004D1660);
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1004C1900;
  (*(v22 + 16))(v27 + v26, v21, v23);
  static Date.trustedNow.getter(v24);
  v28 = swift_task_alloc();
  *(v28 + 16) = v24;
  *(v28 + 24) = v25;
  v29 = sub_100026ABC(sub_1002414F4, v28, v27);

  v30 = v29[2];

  if (!v30)
  {
    v33 = v0[116];
    v34 = v0[115];
    v35 = v0[114];
    (*(v0[109] + 8))(v0[110], v0[108]);
    (*(v34 + 8))(v33, v35);
LABEL_12:

    v7 = v0[119];
    v8 = v0[103];
    goto LABEL_13;
  }

  v31 = swift_task_alloc();
  v0[127] = v31;
  *v31 = v0;
  v31[1] = sub_10021DE1C;

  return sub_1001E17C0((v0 + 2));
}

uint64_t sub_10021DE1C()
{
  v1 = *v0;
  v2 = *(*v0 + 848);

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_10021DF44, v2, 0);
}

uint64_t sub_10021DF44()
{
  (*(v0[109] + 8))(v0[110], v0[108]);
  v1 = swift_task_alloc();
  v0[128] = v1;
  *v1 = v0;
  v1[1] = sub_10021E000;
  v2 = v0[117];
  v3 = v0[105];
  v4 = v0[104];

  return sub_100306054(v2, v4, v3);
}

uint64_t sub_10021E000()
{
  v2 = *v1;
  *(*v1 + 1032) = v0;

  v3 = *(v2 + 848);
  if (v0)
  {
    v4 = sub_10021E6D4;
  }

  else
  {
    v4 = sub_10021E12C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10021E12C()
{
  v1 = v0[119];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[114];

  (*(v4 + 8))(v3, v5);
  sub_100002CE0(v1, &qword_1005A9188, &unk_1004D80D0);
  sub_1000176A8(v2, v1, &qword_1005A9188, &unk_1004D80D0);
  sub_1000176A8(v0[119], v0[103], &qword_1005A9188, &unk_1004D80D0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10021E254()
{
  v13 = v0;

  v1 = v0[124];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[102] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager readFromLocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  (*(v0[115] + 56))(v0[103], 1, 1, v0[114]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10021E494()
{
  v13 = v0;

  v1 = v0[126];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[102] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager readFromLocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  (*(v0[115] + 56))(v0[103], 1, 1, v0[114]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10021E6D4()
{
  v17 = v0;
  v1 = v0[119];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[114];

  (*(v3 + 8))(v2, v4);
  sub_100002CE0(v1, &qword_1005A9188, &unk_1004D80D0);
  v5 = v0[129];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFF18);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v0[102] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10000D01C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "DataManager readFromLocalStorage failed with error: %{public}s", v9, 0xCu);
    sub_100004984(v10);
  }

  else
  {
  }

  (*(v0[115] + 56))(v0[103], 1, 1, v0[114]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10021E954(uint64_t a1, char a2)
{
  *(v3 + 4984) = v2;
  *(v3 + 163) = a2;
  *(v3 + 4976) = a1;
  v4 = type metadata accessor for ClientOrigin();
  *(v3 + 4992) = v4;
  *(v3 + 5000) = *(v4 - 8);
  *(v3 + 5008) = swift_task_alloc();
  *(v3 + 5016) = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  *(v3 + 5024) = swift_task_alloc();
  *(v3 + 5032) = swift_task_alloc();
  *(v3 + 5040) = swift_task_alloc();
  *(v3 + 5048) = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  *(v3 + 5056) = v5;
  *(v3 + 5064) = *(v5 - 8);
  *(v3 + 5072) = swift_task_alloc();
  *(v3 + 5080) = swift_task_alloc();
  *(v3 + 5088) = swift_task_alloc();
  *(v3 + 5096) = swift_task_alloc();
  *(v3 + 5104) = swift_task_alloc();
  v6 = type metadata accessor for Friend();
  *(v3 + 5112) = v6;
  *(v3 + 5120) = *(v6 - 8);
  *(v3 + 5128) = swift_task_alloc();
  *(v3 + 5136) = swift_task_alloc();
  *(v3 + 5144) = swift_task_alloc();
  *(v3 + 5152) = swift_task_alloc();
  v7 = type metadata accessor for HandleType();
  *(v3 + 5160) = v7;
  *(v3 + 5168) = *(v7 - 8);
  *(v3 + 5176) = swift_task_alloc();
  *(v3 + 5184) = swift_task_alloc();
  *(v3 + 5192) = swift_task_alloc();
  *(v3 + 5200) = swift_task_alloc();
  *(v3 + 5208) = swift_task_alloc();
  *(v3 + 5216) = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  *(v3 + 5224) = swift_task_alloc();
  *(v3 + 5232) = swift_task_alloc();
  *(v3 + 5240) = swift_task_alloc();

  return _swift_task_switch(sub_10021EC78, v2, 0);
}

uint64_t sub_10021EC78()
{
  v554 = v0;
  v1 = v0;
  v2 = *(v0 + 4976);
  *(v0 + 4960) = _swiftEmptyArrayStorage;
  v3 = *(v2 + 184);
  if (v3 && (v4 = *(v3 + 16)) != 0)
  {
    v5 = (v0 + 2600);
    v6 = v3 + 32;
    v7 = _swiftEmptyDictionarySingleton;
    do
    {
      v9 = *(v6 + 32);
      v10 = *(v6 + 48);
      v11 = *(v6 + 80);
      *(v1 + 333) = *(v6 + 64);
      *(v1 + 335) = v11;
      *(v1 + 331) = v10;
      v12 = *(v6 + 96);
      v13 = *(v6 + 112);
      v14 = *(v6 + 128);
      *(v1 + 2743) = *(v6 + 143);
      *(v1 + 339) = v13;
      *(v1 + 341) = v14;
      *(v1 + 337) = v12;
      v15 = *(v6 + 16);
      *v5 = *v6;
      *(v1 + 327) = v15;
      *(v1 + 329) = v9;
      v16 = v1[331];
      v17 = v1[332];
      sub_100166288((v1 + 325), (v1 + 40));

      v19 = sub_10023F00C(v18);

      v20 = _swiftEmptyDictionarySingleton[2];

      if (v20)
      {
        v21 = sub_1000110D8(v16, v17);
        if (v22)
        {
          v23 = *(_swiftEmptyDictionarySingleton[7] + 8 * v21);

          sub_10021C1EC(v19, v23);
          v19 = v24;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v553[0] = _swiftEmptyDictionarySingleton;
      sub_100453E98(v19, v16, v17, isUniquelyReferenced_nonNull_native);

      sub_1001662C0((v1 + 325));
      v6 += 152;
      --v4;
    }

    while (v4);
    v2 = v1[622];
  }

  else
  {
    v7 = _swiftEmptyDictionarySingleton;
  }

  v25 = *(v2 + 192);
  v473 = v25;
  if (v25)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = v25 + 32;
      do
      {
        v29 = *(v27 + 32);
        v30 = *(v27 + 48);
        v31 = *(v27 + 80);
        *(v1 + 195) = *(v27 + 64);
        *(v1 + 196) = v31;
        *(v1 + 194) = v30;
        v32 = *(v27 + 96);
        v33 = *(v27 + 112);
        v34 = *(v27 + 128);
        *(v1 + 3199) = *(v27 + 143);
        *(v1 + 198) = v33;
        *(v1 + 199) = v34;
        *(v1 + 197) = v32;
        v35 = *(v27 + 16);
        *(v1 + 191) = *v27;
        *(v1 + 192) = v35;
        *(v1 + 193) = v29;
        v36 = v1[388];
        v37 = v1[389];
        sub_100166288((v1 + 382), (v1 + 344));

        v39 = sub_10023F00C(v38);

        v40 = _swiftEmptyDictionarySingleton[2];

        if (v40)
        {
          v41 = sub_1000110D8(v36, v37);
          if (v42)
          {
            v43 = *(_swiftEmptyDictionarySingleton[7] + 8 * v41);

            sub_10021C1EC(v39, v43);
            v39 = v44;
          }
        }

        v28 = swift_isUniquelyReferenced_nonNull_native();
        v553[0] = _swiftEmptyDictionarySingleton;
        sub_100453E98(v39, v36, v37, v28);

        sub_1001662C0((v1 + 382));
        v27 += 152;
        --v26;
      }

      while (v26);
    }
  }

  v550 = v1;
  if (v3)
  {
    v551 = _swiftEmptyArrayStorage;
    v45 = *(v3 + 16);
    if (!v45)
    {
LABEL_63:
      if (qword_1005A80B8 != -1)
      {
        goto LABEL_252;
      }

      goto LABEL_64;
    }

    v46 = 0;
    v47 = (v1 + 2);
    v474 = v1 + 287;
    v481 = v1 + 401;
    v454 = v1 + 458;
    v48 = v1[646];
    v460 = v1[622];
    v546 = v3 + 32;
    v468 = (v1[633] + 56);
    v466 = enum case for HandleType.follower(_:);
    v462 = (v48 + 104);
    v458 = (v48 + 8);
    v515 = *(v3 + 16);
    while (1)
    {
      v49 = v546 + 152 * v46;
      v50 = *(v49 + 32);
      v51 = *(v49 + 48);
      v52 = *(v49 + 80);
      *(v47 + 64) = *(v49 + 64);
      *(v47 + 80) = v52;
      v53 = *(v49 + 96);
      v54 = *(v49 + 112);
      v55 = *(v49 + 128);
      *(v47 + 143) = *(v49 + 143);
      *(v47 + 112) = v54;
      *(v47 + 128) = v55;
      *(v47 + 96) = v53;
      v56 = *(v49 + 16);
      *v47 = *v49;
      *(v47 + 16) = v56;
      *(v47 + 32) = v50;
      *(v47 + 48) = v51;
      if (*(v1[11] + 16))
      {
        if (*(v1[10] + 16))
        {
          if (v7[2])
          {
            v57 = v7;
            v58 = v1[8];
            v7 = v1[9];
            v59 = v1;
            sub_100166288(v47, (v1 + 249));

            v60 = sub_1000110D8(v58, v7);
            v62 = v61;

            if (v62)
            {
              v63 = v1[655];
              v504 = v1[652];
              v64 = v1[645];
              v65 = v59[632];
              v539 = v57;
              v66 = *(v57[7] + 8 * v60);

              sub_1002743D4(_swiftEmptyArrayStorage);
              Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
              (*v468)(v63, 0, 1, v65);
              (*v462)(v504, v466, v64);
              v67 = *(v66 + 16);
              if (v67)
              {
                sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
                v1 = swift_allocObject();
                v68 = j__malloc_size(v1);
                v69 = v68 - 32;
                if (v68 < 32)
                {
                  v69 = v68 - 17;
                }

                v1[2] = v67;
                v1[3] = 2 * (v69 >> 4);
                v70 = sub_10023E504(v553, v1 + 4, v67, v66);
                sub_10000E3F8(v553[0]);
                if (v70 != v67)
                {
                  goto LABEL_250;
                }
              }

              else
              {

                v1 = _swiftEmptyArrayStorage;
              }

              if (*(v460 + 144))
              {
                v104 = *(v460 + 128);
                v105 = *(v550 + 160);
                v106 = *(v550 + 161);
                v107 = *(v550 + 112);
                v524 = *(v550 + 113);
                v505 = *(v550 + 112);
                if (v104)
                {
                  v451 = *(v550 + 161);
                  v488 = *(v550 + 160);
                  v108 = (v104 + 48);
                  v109 = *(v104 + 16) + 1;
                  while (--v109)
                  {
                    v110 = *v108;
                    if (*(v108 - 2) != v58 || *(v108 - 1) != v7)
                    {
                      v108 += 3;
                      v112 = v107;
                      v113 = _stringCompareWithSmolCheck(_:_:expecting:)();
                      v107 = v112;
                      if ((v113 & 1) == 0)
                      {
                        continue;
                      }
                    }

                    v114 = v550;
                    v550[618] = v110;
                    v498 = dispatch thunk of CustomStringConvertible.description.getter();
                    v116 = v115;
                    goto LABEL_60;
                  }

                  v498 = 0;
                  v116 = 0;
                  v114 = v550;
LABEL_60:
                  v106 = v451;
                  v105 = v488;
                }

                else
                {
                  v498 = 0;
                  v116 = 0;
                  v114 = v550;
                }
              }

              else
              {
                v498 = 0;
                v116 = 0;
                v114 = v550;
                v105 = *(v550 + 160);
                v106 = *(v550 + 161);
                v524 = *(v550 + 113);
                v505 = *(v550 + 112);
              }

              v117 = v114[655];
              v118 = v114[652];
              v489 = v114[645];
              v119 = swift_task_alloc();
              *(v119 + 16) = v47;
              *(v119 + 24) = v1;
              *(v119 + 32) = v498;
              *(v119 + 40) = v116;
              *(v119 + 48) = v118;
              *(v119 + 56) = v505;
              *(v119 + 57) = v524;
              *(v119 + 58) = v105 & 1;
              *(v119 + 59) = v106 & 1;
              *(v119 + 64) = v117;
              v120 = sub_100056DB8(sub_10024151C, v119, v1);

              sub_1001662C0(v47);
              v1 = v550;

              (*v458)(v118, v489);
              sub_100002CE0(v117, &qword_1005B3360, &unk_1004C6AA0);
              sub_10024949C(v120);
              v7 = v539;
              v45 = v515;
              goto LABEL_21;
            }

            v7 = v57;
            v45 = v515;
          }

          else
          {
            sub_100166288(v47, (v1 + 306));
          }

          if (qword_1005A80B8 != -1)
          {
            swift_once();
          }

          v95 = type metadata accessor for Logger();
          sub_10000A6F0(v95, qword_1005DFF18);
          sub_100166288(v47, (v1 + 268));
          v72 = Logger.logObject.getter();
          v96 = static os_log_type_t.error.getter();
          sub_1001662C0(v47);
          if (os_log_type_enabled(v72, v96))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v553[0] = v75;
            *v74 = 136315138;
            v97 = *(v47 + 112);
            *(v474 + 6) = *(v47 + 96);
            *(v474 + 7) = v97;
            *(v474 + 8) = *(v47 + 128);
            *(v474 + 143) = *(v47 + 143);
            v98 = *(v47 + 48);
            *(v474 + 2) = *(v47 + 32);
            *(v474 + 3) = v98;
            v99 = *(v47 + 80);
            *(v474 + 4) = *(v47 + 64);
            *(v474 + 5) = v99;
            v100 = *(v47 + 16);
            *v474 = *v47;
            *(v474 + 1) = v100;
            v101 = String.init<A>(describing:)();
            v103 = sub_10000D01C(v101, v102, v553);

            *(v74 + 4) = v103;
            v83 = v96;
            v84 = v72;
            goto LABEL_45;
          }
        }

        else
        {
          sub_100166288(v47, (v1 + 59));
          if (qword_1005A80B8 != -1)
          {
            swift_once();
          }

          v86 = type metadata accessor for Logger();
          sub_10000A6F0(v86, qword_1005DFF18);
          sub_100166288(v47, (v1 + 477));
          v72 = Logger.logObject.getter();
          v87 = static os_log_type_t.error.getter();
          sub_1001662C0(v47);
          if (os_log_type_enabled(v72, v87))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v553[0] = v75;
            *v74 = 136315138;
            v88 = *(v47 + 112);
            *(v454 + 6) = *(v47 + 96);
            *(v454 + 7) = v88;
            *(v454 + 8) = *(v47 + 128);
            *(v454 + 143) = *(v47 + 143);
            v89 = *(v47 + 48);
            *(v454 + 2) = *(v47 + 32);
            *(v454 + 3) = v89;
            v90 = *(v47 + 80);
            *(v454 + 4) = *(v47 + 64);
            *(v454 + 5) = v90;
            v91 = *(v47 + 16);
            *v454 = *v47;
            *(v454 + 1) = v91;
            v92 = String.init<A>(describing:)();
            v94 = sub_10000D01C(v92, v93, v553);

            *(v74 + 4) = v94;
            v83 = v87;
            v84 = v72;
            goto LABEL_45;
          }
        }
      }

      else
      {
        sub_100166288(v47, (v1 + 439));
        if (qword_1005A80B8 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_10000A6F0(v71, qword_1005DFF18);
        sub_100166288(v47, (v1 + 420));
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        sub_1001662C0(v47);
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v553[0] = v75;
          *v74 = 136315138;
          v76 = *(v47 + 112);
          *(v481 + 6) = *(v47 + 96);
          *(v481 + 7) = v76;
          *(v481 + 8) = *(v47 + 128);
          *(v481 + 143) = *(v47 + 143);
          v77 = *(v47 + 48);
          *(v481 + 2) = *(v47 + 32);
          *(v481 + 3) = v77;
          v78 = *(v47 + 80);
          *(v481 + 4) = *(v47 + 64);
          *(v481 + 5) = v78;
          v79 = *(v47 + 16);
          *v481 = *v47;
          *(v481 + 1) = v79;
          v80 = String.init<A>(describing:)();
          v82 = sub_10000D01C(v80, v81, v553);

          *(v74 + 4) = v82;
          v83 = v73;
          v84 = v72;
LABEL_45:
          _os_log_impl(&_mh_execute_header, v84, v83, v85, v74, 0xCu);
          sub_100004984(v75);
          v1 = v550;

          goto LABEL_21;
        }
      }

      sub_1001662C0(v47);
LABEL_21:
      if (++v46 == v45)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_74:
  v1[619] = _swiftEmptyArrayStorage;
  if (v473)
  {
    v148 = *(v473 + 16);
    if (v148)
    {
      v149 = 0;
      v150 = (v1 + 21);
      v459 = v1 + 154;
      v476 = v1 + 78;
      v483 = v1 + 230;
      v151 = v1[646];
      v463 = v1[622];
      v547 = v473 + 32;
      v473 = v1[633] + 56;
      v470 = (v151 + 104);
      v467 = enum case for HandleType.following(_:);
      v461 = (v151 + 8);
      v517 = v148;
      do
      {
        v152 = v547 + 152 * v149;
        v153 = *(v152 + 32);
        v154 = *(v152 + 48);
        v155 = *(v152 + 80);
        *(v150 + 64) = *(v152 + 64);
        *(v150 + 80) = v155;
        v156 = *(v152 + 96);
        v157 = *(v152 + 112);
        v158 = *(v152 + 128);
        *(v150 + 143) = *(v152 + 143);
        *(v150 + 112) = v157;
        *(v150 + 128) = v158;
        *(v150 + 96) = v156;
        v159 = *(v152 + 16);
        *v150 = *v152;
        *(v150 + 16) = v159;
        *(v150 + 32) = v153;
        *(v150 + 48) = v154;
        if (*(v1[29] + 16))
        {
          if (*(v1[30] + 16))
          {
            if (v7[2])
            {
              v160 = v7;
              v161 = v1[27];
              v7 = v1[28];
              v162 = v1;
              sub_100166288(v150, (v1 + 173));

              v163 = sub_1000110D8(v161, v7);
              v165 = v164;

              if (v165)
              {
                v166 = v1[654];
                v507 = v1[651];
                v167 = v1[645];
                v168 = v162[632];
                v541 = v160;
                v169 = *(v160[7] + 8 * v163);

                sub_1002743D4(_swiftEmptyArrayStorage);
                Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
                (*v473)(v166, 0, 1, v168);
                (*v470)(v507, v467, v167);
                v170 = *(v169 + 16);
                if (v170)
                {
                  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
                  v1 = swift_allocObject();
                  v171 = j__malloc_size(v1);
                  v172 = v171 - 32;
                  if (v171 < 32)
                  {
                    v172 = v171 - 17;
                  }

                  v1[2] = v170;
                  v1[3] = 2 * (v172 >> 4);
                  v173 = sub_10023E504(v553, v1 + 4, v170, v169);
                  sub_10000E3F8(v553[0]);
                  if (v173 != v170)
                  {
                    goto LABEL_251;
                  }
                }

                else
                {

                  v1 = _swiftEmptyArrayStorage;
                }

                if (*(v463 + 144))
                {
                  v207 = *(v463 + 128);
                  v208 = *(v550 + 313);
                  v499 = *(v550 + 265);
                  v491 = *(v550 + 264);
                  if (v207)
                  {
                    v455 = *(v550 + 313);
                    v526 = *(v550 + 312);
                    v209 = (v207 + 48);
                    v210 = *(v207 + 16) + 1;
                    while (--v210)
                    {
                      v211 = *v209;
                      if (*(v209 - 2) != v161 || *(v209 - 1) != v7)
                      {
                        v209 += 3;
                        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      v213 = v550;
                      v550[621] = v211;
                      v508 = dispatch thunk of CustomStringConvertible.description.getter();
                      v215 = v214;
                      goto LABEL_117;
                    }

                    v508 = 0;
                    v215 = 0;
                    v213 = v550;
LABEL_117:
                    v216 = v526;
                    v208 = v455;
                  }

                  else
                  {
                    v508 = 0;
                    v215 = 0;
                    v213 = v550;
                    v216 = *(v550 + 312);
                  }
                }

                else
                {
                  v508 = 0;
                  v215 = 0;
                  v213 = v550;
                  v216 = *(v550 + 312);
                  v208 = *(v550 + 313);
                  v499 = *(v550 + 265);
                  v491 = *(v550 + 264);
                }

                v217 = v213[654];
                v218 = v213[651];
                v527 = v550[645];
                v219 = swift_task_alloc();
                *(v219 + 16) = v150;
                *(v219 + 24) = v1;
                *(v219 + 32) = v508;
                *(v219 + 40) = v215;
                *(v219 + 48) = v218;
                *(v219 + 56) = v491;
                *(v219 + 57) = v499;
                *(v219 + 58) = v216 & 1;
                *(v219 + 59) = v208 & 1;
                *(v219 + 64) = v217;
                v220 = sub_100056DB8(sub_10023FB48, v219, v1);

                sub_1001662C0(v150);

                v1 = v550;
                (*v461)(v218, v527);
                sub_100002CE0(v217, &qword_1005B3360, &unk_1004C6AA0);
                sub_10024949C(v220);
                v7 = v541;
                v148 = v517;
                goto LABEL_78;
              }

              v7 = v160;
              v148 = v517;
            }

            else
            {
              sub_100166288(v150, (v1 + 97));
            }

            if (qword_1005A80B8 != -1)
            {
              swift_once();
            }

            v198 = type metadata accessor for Logger();
            sub_10000A6F0(v198, qword_1005DFF18);
            sub_100166288(v150, (v1 + 363));
            v175 = Logger.logObject.getter();
            v199 = static os_log_type_t.error.getter();
            sub_1001662C0(v150);
            if (os_log_type_enabled(v175, v199))
            {
              v177 = swift_slowAlloc();
              v178 = swift_slowAlloc();
              v553[0] = v178;
              *v177 = 136315138;
              v200 = *(v150 + 112);
              *(v476 + 6) = *(v150 + 96);
              *(v476 + 7) = v200;
              *(v476 + 8) = *(v150 + 128);
              *(v476 + 143) = *(v150 + 143);
              v201 = *(v150 + 48);
              *(v476 + 2) = *(v150 + 32);
              *(v476 + 3) = v201;
              v202 = *(v150 + 80);
              *(v476 + 4) = *(v150 + 64);
              *(v476 + 5) = v202;
              v203 = *(v150 + 16);
              *v476 = *v150;
              *(v476 + 1) = v203;
              v204 = String.init<A>(describing:)();
              v206 = sub_10000D01C(v204, v205, v553);

              *(v177 + 4) = v206;
              v186 = v199;
              v187 = v175;
              goto LABEL_102;
            }
          }

          else
          {
            sub_100166288(v150, (v1 + 116));
            if (qword_1005A80B8 != -1)
            {
              swift_once();
            }

            v189 = type metadata accessor for Logger();
            sub_10000A6F0(v189, qword_1005DFF18);
            sub_100166288(v150, (v1 + 135));
            v175 = Logger.logObject.getter();
            v190 = static os_log_type_t.error.getter();
            sub_1001662C0(v150);
            if (os_log_type_enabled(v175, v190))
            {
              v177 = swift_slowAlloc();
              v178 = swift_slowAlloc();
              v553[0] = v178;
              *v177 = 136315138;
              v191 = *(v150 + 112);
              *(v459 + 6) = *(v150 + 96);
              *(v459 + 7) = v191;
              *(v459 + 8) = *(v150 + 128);
              *(v459 + 143) = *(v150 + 143);
              v192 = *(v150 + 48);
              *(v459 + 2) = *(v150 + 32);
              *(v459 + 3) = v192;
              v193 = *(v150 + 80);
              *(v459 + 4) = *(v150 + 64);
              *(v459 + 5) = v193;
              v194 = *(v150 + 16);
              *v459 = *v150;
              *(v459 + 1) = v194;
              v195 = String.init<A>(describing:)();
              v197 = sub_10000D01C(v195, v196, v553);

              *(v177 + 4) = v197;
              v186 = v190;
              v187 = v175;
              goto LABEL_102;
            }
          }
        }

        else
        {
          sub_100166288(v150, (v1 + 192));
          if (qword_1005A80B8 != -1)
          {
            swift_once();
          }

          v174 = type metadata accessor for Logger();
          sub_10000A6F0(v174, qword_1005DFF18);
          sub_100166288(v150, (v1 + 211));
          v175 = Logger.logObject.getter();
          v176 = static os_log_type_t.error.getter();
          sub_1001662C0(v150);
          if (os_log_type_enabled(v175, v176))
          {
            v177 = swift_slowAlloc();
            v178 = swift_slowAlloc();
            v553[0] = v178;
            *v177 = 136315138;
            v179 = *(v150 + 112);
            *(v483 + 6) = *(v150 + 96);
            *(v483 + 7) = v179;
            *(v483 + 8) = *(v150 + 128);
            *(v483 + 143) = *(v150 + 143);
            v180 = *(v150 + 48);
            *(v483 + 2) = *(v150 + 32);
            *(v483 + 3) = v180;
            v181 = *(v150 + 80);
            *(v483 + 4) = *(v150 + 64);
            *(v483 + 5) = v181;
            v182 = *(v150 + 16);
            *v483 = *v150;
            *(v483 + 1) = v182;
            v183 = String.init<A>(describing:)();
            v185 = sub_10000D01C(v183, v184, v553);

            *(v177 + 4) = v185;
            v186 = v176;
            v187 = v175;
LABEL_102:
            _os_log_impl(&_mh_execute_header, v187, v186, v188, v177, 0xCu);
            sub_100004984(v178);
            v1 = v550;

            goto LABEL_78;
          }
        }

        sub_1001662C0(v150);
LABEL_78:
        ++v149;
      }

      while (v149 != v148);
    }

    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v221 = type metadata accessor for Logger();
    sub_10000A6F0(v221, qword_1005DFF18);
    v222 = v1[619];

    v223 = Logger.logObject.getter();
    v224 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v223, v224))
    {
      v542 = v7;
      v225 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v227 = v226;
      v552 = v226;
      *v225 = 136315138;
      v228 = *(v222 + 16);
      if (v228)
      {
        v473 = v226;
        v477 = v225;
        v484 = v224;
        v492 = v223;
        v229 = v550[640];
        v230 = v550[633];
        v553[0] = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v228, 0);
        v231 = v553[0];
        v232 = *(v229 + 16);
        v229 += 16;
        v233 = v222 + ((*(v229 + 64) + 32) & ~*(v229 + 64));
        v528 = *(v229 + 56);
        v533 = v232;
        v518 = (v230 + 8);
        v500 = v222;
        v509 = (v229 - 8);
        do
        {
          v234 = v550[644];
          v235 = v550[639];
          v236 = v550[638];
          v237 = v550[632];
          v533(v234, v233, v235);
          Friend.handle.getter();
          v238 = Handle.identifier.getter();
          v240 = v239;
          (*v518)(v236, v237);
          (v509->isa)(v234, v235);
          v553[0] = v231;
          v242 = *(v231 + 16);
          v241 = *(v231 + 24);
          if (v242 >= v241 >> 1)
          {
            sub_10002B3C0((v241 > 1), v242 + 1, 1);
            v231 = v553[0];
          }

          *(v231 + 16) = v242 + 1;
          v243 = v231 + 16 * v242;
          *(v243 + 32) = v238;
          *(v243 + 40) = v240;
          v233 += v528;
          --v228;
        }

        while (v228);
        v223 = v492;
        v222 = v500;
        v224 = v484;
        v227 = v473;
        v225 = v477;
      }

      v244 = Array.description.getter();
      v246 = v245;

      v247 = sub_10000D01C(v244, v246, &v552);

      *(v225 + 4) = v247;
      _os_log_impl(&_mh_execute_header, v223, v224, "Server response with following: %s", v225, 0xCu);
      sub_100004984(v227);

      v1 = v550;
      v7 = v542;
    }

    else
    {
    }

    sub_10024949C(v222);
  }

  v442 = v1 + 4634;
  v1[656] = v7;
  v248 = v1[622];
  v249 = v248[25];
  if (!v249)
  {
    goto LABEL_176;
  }

  v434 = *(v249 + 16);
  if (v434)
  {
    v250 = 0;
    v251 = v1 + 570;
    v252 = v1[646];
    v253 = v1[633];
    v432 = v249 + 32;
    v430 = enum case for HandleType.futureFollower(_:);
    v428 = (v252 + 104);
    v452 = (v253 + 16);
    v449 = (v252 + 16);
    v422 = enum case for ClientOrigin.messagesApp(_:);
    v420 = enum case for ClientOrigin.other(_:);
    v445 = (v253 + 56);
    v447 = (v1[625] + 104);
    v464 = v1[640];
    v443 = (v253 + 8);
    v426 = (v252 + 8);
    v254 = _swiftEmptyArrayStorage;
    v424 = (v1 + 570);
    while (1)
    {
      v255 = (v432 + 96 * v250);
      v256 = v255[2];
      v257 = v255[3];
      v258 = v255[4];
      v251[5] = v255[5];
      v259 = *v255;
      v260 = v255[1];
      v251[3] = v257;
      v251[4] = v258;
      v251[1] = v260;
      v251[2] = v256;
      *v251 = v259;
      v261 = v1[580];
      v262 = v1[572];
      v263 = v1[573];
      sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
      v7 = swift_allocObject();
      *(v7 + 1) = xmmword_1004C1900;
      v7[4] = v262;
      v7[5] = v263;
      if (v261)
      {
        if (v261[2])
        {
          sub_1001661CC(v251, (v1 + 546));

          v7 = v261;
          goto LABEL_142;
        }

        v264 = 534;
      }

      else
      {
        v264 = 558;
      }

      sub_1001661CC(v251, &v1[v264]);

LABEL_142:
      (*v428)(v1[650], v430, v1[645]);
      v265 = v7[2];
      if (v265)
      {
        v436 = v250;
        v438 = v254;
        v553[0] = _swiftEmptyArrayStorage;
        sub_100239354(0, v265, 0);
        v266 = v553[0];
        v267 = v422;
        if ((*v442 & 1) == 0)
        {
          v267 = v420;
        }

        v456 = v267;
        v268 = v7 + 5;
        do
        {
          v548 = v265;
          v534 = v1[653];
          v471 = v1[649];
          v473 = v1[645];
          v478 = v1[650];
          v269 = v1[637];
          v270 = v1[636];
          v7 = v1[632];
          v271 = v1[631];
          v493 = v1[630];
          v510 = v1[627];
          v519 = v1[624];
          swift_bridgeObjectRetain_n();

          Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
          (*v452)(v270, v269, v7);
          (*v449)(v471, v478, v473);
          v272 = type metadata accessor for Date();
          v273 = *(*(v272 - 8) + 56);
          v273(v271, 1, 1, v272);
          Date.init(timeIntervalSince1970:)();
          v273(v493, 0, 1, v272);
          (*v447)(v510, v456, v519);
          (*v445)(v534, 1, 1, v7);
          Friend.init(handle:type:expiry:createdAt:origin:secureLocationsCapable:shallowOrLiveSecureLocationsCapable:fallbackToLegacyAllowed:fallbackToLegacy:optedNotToShare:ownerHandle:)();
          (*v443)(v269, v7);

          v553[0] = v266;
          v275 = v266[2];
          v274 = v266[3];
          if (v275 >= v274 >> 1)
          {
            sub_100239354((v274 > 1), v275 + 1, 1);
            v266 = v553[0];
          }

          v1 = v550;
          v276 = v550[643];
          v277 = v550[639];
          v266[2] = v275 + 1;
          (*(v464 + 32))(v266 + ((*(v464 + 80) + 32) & ~*(v464 + 80)) + *(v464 + 72) * v275, v276, v277);
          v268 += 2;
          --v265;
        }

        while (v548 != 1);
        v251 = v424;
        sub_100166204(v424);

        v250 = v436;
        v254 = v438;
      }

      else
      {
        sub_100166204(v251);

        v266 = _swiftEmptyArrayStorage;
      }

      (*v426)(v1[650], v1[645]);
      v278 = v266[2];
      v279 = v254[2];
      v280 = v279 + v278;
      if (__OFADD__(v279, v278))
      {
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        swift_once();
LABEL_64:
        v121 = type metadata accessor for Logger();
        sub_10000A6F0(v121, qword_1005DFF18);
        v122 = v551;

        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v123, v124))
        {
          v540 = v7;
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v127 = v126;
          v552 = v126;
          *v125 = 136315138;
          v128 = v551[2];
          if (v128)
          {
            v469 = v126;
            v475 = v125;
            v482 = v124;
            v490 = v123;
            v129 = v550[640];
            v130 = v550[633];
            v553[0] = _swiftEmptyArrayStorage;
            sub_10002B3C0(0, v128, 0);
            v131 = v553[0];
            v132 = *(v129 + 16);
            v129 += 16;
            v133 = v551 + ((*(v129 + 64) + 32) & ~*(v129 + 64));
            v525 = *(v129 + 56);
            v532 = v132;
            v516 = (v130 + 8);
            v506 = (v129 - 8);
            do
            {
              v134 = v550[644];
              v135 = v550[639];
              v136 = v550[638];
              v137 = v550[632];
              v532(v134, v133, v135);
              Friend.handle.getter();
              v138 = Handle.identifier.getter();
              v140 = v139;
              (*v516)(v136, v137);
              (v506->isa)(v134, v135);
              v553[0] = v131;
              v142 = *(v131 + 16);
              v141 = *(v131 + 24);
              if (v142 >= v141 >> 1)
              {
                sub_10002B3C0((v141 > 1), v142 + 1, 1);
                v131 = v553[0];
              }

              *(v131 + 16) = v142 + 1;
              v143 = v131 + 16 * v142;
              *(v143 + 32) = v138;
              *(v143 + 40) = v140;
              v133 = v525 + v133;
              --v128;
            }

            while (v128);
            v123 = v490;
            v122 = v551;
            v124 = v482;
            v125 = v475;
            v127 = v469;
          }

          v144 = Array.description.getter();
          v146 = v145;

          v147 = sub_10000D01C(v144, v146, &v552);

          *(v125 + 4) = v147;
          _os_log_impl(&_mh_execute_header, v123, v124, "Server response with follower: %s", v125, 0xCu);
          sub_100004984(v127);

          v1 = v550;
          v7 = v540;
        }

        else
        {
        }

        sub_10024949C(v122);
        goto LABEL_74;
      }

      v281 = swift_isUniquelyReferenced_nonNull_native();
      if ((v281 & 1) != 0 && v280 <= v254[3] >> 1)
      {
        if (v266[2])
        {
          goto LABEL_160;
        }
      }

      else
      {
        if (v279 <= v280)
        {
          v282 = v279 + v278;
        }

        else
        {
          v282 = v279;
        }

        v254 = sub_1001FCB80(v281, v282, 1, v254);
        if (v266[2])
        {
LABEL_160:
          if ((v254[3] >> 1) - v254[2] < v278)
          {
            goto LABEL_246;
          }

          swift_arrayInitWithCopy();

          if (v278)
          {
            v283 = v254[2];
            v284 = __OFADD__(v283, v278);
            v285 = v283 + v278;
            if (v284)
            {
              goto LABEL_248;
            }

            v254[2] = v285;
          }

          goto LABEL_135;
        }
      }

      if (v278)
      {
        goto LABEL_243;
      }

LABEL_135:
      if (++v250 == v434)
      {
        goto LABEL_165;
      }
    }
  }

  v254 = _swiftEmptyArrayStorage;
LABEL_165:
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v286 = type metadata accessor for Logger();
  sub_10000A6F0(v286, qword_1005DFF18);

  v287 = Logger.logObject.getter();
  v288 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v287, v288))
  {
    v289 = swift_slowAlloc();
    v290 = swift_slowAlloc();
    v291 = v290;
    v552 = v290;
    *v289 = 136315138;
    v292 = v254[2];
    if (v292)
    {
      v485 = v290;
      v494 = v289;
      v501 = v288;
      v511 = v287;
      v293 = v1[640];
      v294 = v1[633];
      v553[0] = _swiftEmptyArrayStorage;
      sub_10002B3C0(0, v292, 0);
      v295 = v553[0];
      v296 = *(v293 + 16);
      v293 += 16;
      v543 = v296;
      v439 = v254;
      v297 = v254 + ((*(v293 + 64) + 32) & ~*(v293 + 64));
      v529 = (v294 + 8);
      v535 = *(v293 + 56);
      v520 = (v293 - 8);
      do
      {
        v298 = v1[644];
        v299 = v1[639];
        v300 = v1[638];
        v301 = v1[632];
        v543(v298, v297, v299);
        Friend.handle.getter();
        v302 = Handle.identifier.getter();
        v304 = v303;
        (*v529)(v300, v301);
        (*v520)(v298, v299);
        v553[0] = v295;
        v306 = *(v295 + 16);
        v305 = *(v295 + 24);
        if (v306 >= v305 >> 1)
        {
          sub_10002B3C0((v305 > 1), v306 + 1, 1);
          v295 = v553[0];
        }

        *(v295 + 16) = v306 + 1;
        v307 = v295 + 16 * v306;
        *(v307 + 32) = v302;
        *(v307 + 40) = v304;
        v297 += v535;
        --v292;
        v1 = v550;
      }

      while (v292);
      v254 = v439;
      v287 = v511;
      v288 = v501;
      v289 = v494;
      v291 = v485;
    }

    v308 = Array.description.getter();
    v310 = v309;

    v311 = sub_10000D01C(v308, v310, &v552);

    *(v289 + 4) = v311;
    _os_log_impl(&_mh_execute_header, v287, v288, "Server response with futureFollowers: %s", v289, 0xCu);
    sub_100004984(v291);
  }

  sub_10024949C(v254);
  v248 = v1[622];
LABEL_176:
  v312 = v248[26];
  if (v312)
  {
    v435 = *(v312 + 16);
    if (v435)
    {
      v313 = 0;
      v314 = v1 + 606;
      v315 = v1[646];
      v316 = v1[633];
      v433 = v312 + 32;
      v431 = enum case for HandleType.futureFollowing(_:);
      v429 = (v315 + 104);
      v453 = (v316 + 16);
      v450 = (v315 + 16);
      v423 = enum case for ClientOrigin.messagesApp(_:);
      v421 = enum case for ClientOrigin.other(_:);
      v446 = (v316 + 56);
      v448 = (v1[625] + 104);
      v465 = v1[640];
      v444 = (v316 + 8);
      v427 = (v315 + 8);
      v317 = _swiftEmptyArrayStorage;
      v425 = (v1 + 606);
      while (1)
      {
        v318 = (v433 + 96 * v313);
        v319 = v318[2];
        v320 = v318[3];
        v321 = v318[5];
        v314[4] = v318[4];
        v314[5] = v321;
        v314[2] = v319;
        v314[3] = v320;
        v322 = v318[1];
        *v314 = *v318;
        v314[1] = v322;
        v323 = v1[617];
        v324 = v1[610];
        v325 = v1[611];
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v7 = swift_allocObject();
        *(v7 + 1) = xmmword_1004C1900;
        v7[4] = v324;
        v7[5] = v325;
        if (v323)
        {
          if (v323[2])
          {
            sub_1001661CC(v314, (v1 + 522));

            v7 = v323;
            goto LABEL_187;
          }

          v326 = 582;
        }

        else
        {
          v326 = 594;
        }

        sub_1001661CC(v314, &v1[v326]);

LABEL_187:
        (*v429)(v1[648], v431, v1[645]);
        v327 = v7[2];
        if (v327)
        {
          v437 = v313;
          v440 = v317;
          v553[0] = _swiftEmptyArrayStorage;
          sub_100239354(0, v327, 0);
          v328 = v553[0];
          v329 = v423;
          if ((v442[288] & 1) == 0)
          {
            v329 = v421;
          }

          v457 = v329;
          v330 = v7 + 5;
          do
          {
            v549 = v327;
            v536 = v1[653];
            v472 = v1[647];
            v473 = v1[645];
            v479 = v1[648];
            v331 = v1[635];
            v332 = v1[634];
            v7 = v1[632];
            v333 = v1[629];
            v495 = v1[628];
            v512 = v1[626];
            v521 = v1[624];
            swift_bridgeObjectRetain_n();

            Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
            (*v453)(v332, v331, v7);
            (*v450)(v472, v479, v473);
            v334 = type metadata accessor for Date();
            v335 = *(*(v334 - 8) + 56);
            v335(v333, 1, 1, v334);
            Date.init(timeIntervalSince1970:)();
            v335(v495, 0, 1, v334);
            (*v448)(v512, v457, v521);
            (*v446)(v536, 1, 1, v7);
            Friend.init(handle:type:expiry:createdAt:origin:secureLocationsCapable:shallowOrLiveSecureLocationsCapable:fallbackToLegacyAllowed:fallbackToLegacy:optedNotToShare:ownerHandle:)();
            (*v444)(v331, v7);

            v553[0] = v328;
            v337 = v328[2];
            v336 = v328[3];
            if (v337 >= v336 >> 1)
            {
              sub_100239354((v336 > 1), v337 + 1, 1);
              v328 = v553[0];
            }

            v1 = v550;
            v338 = v550[642];
            v339 = v550[639];
            v328[2] = v337 + 1;
            (*(v465 + 32))(v328 + ((*(v465 + 80) + 32) & ~*(v465 + 80)) + *(v465 + 72) * v337, v338, v339);
            v330 += 2;
            --v327;
          }

          while (v549 != 1);
          v314 = v425;
          sub_100166204(v425);

          v313 = v437;
          v317 = v440;
        }

        else
        {
          sub_100166204(v314);

          v328 = _swiftEmptyArrayStorage;
        }

        (*v427)(v1[648], v1[645]);
        v340 = v328[2];
        v341 = v317[2];
        v342 = v341 + v340;
        if (__OFADD__(v341, v340))
        {
          goto LABEL_244;
        }

        v343 = swift_isUniquelyReferenced_nonNull_native();
        if ((v343 & 1) != 0 && v342 <= v317[3] >> 1)
        {
          if (!v328[2])
          {
            goto LABEL_179;
          }
        }

        else
        {
          if (v341 <= v342)
          {
            v344 = v341 + v340;
          }

          else
          {
            v344 = v341;
          }

          v317 = sub_1001FCB80(v343, v344, 1, v317);
          if (!v328[2])
          {
LABEL_179:

            if (v340)
            {
              goto LABEL_245;
            }

            goto LABEL_180;
          }
        }

        if ((v317[3] >> 1) - v317[2] < v340)
        {
          goto LABEL_247;
        }

        swift_arrayInitWithCopy();

        if (v340)
        {
          v345 = v317[2];
          v284 = __OFADD__(v345, v340);
          v346 = v345 + v340;
          if (v284)
          {
            goto LABEL_249;
          }

          v317[2] = v346;
        }

LABEL_180:
        if (++v313 == v435)
        {
          goto LABEL_210;
        }
      }
    }

    v317 = _swiftEmptyArrayStorage;
LABEL_210:
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v347 = type metadata accessor for Logger();
    sub_10000A6F0(v347, qword_1005DFF18);

    v348 = Logger.logObject.getter();
    v349 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v348, v349))
    {
      v350 = swift_slowAlloc();
      v351 = swift_slowAlloc();
      v352 = v351;
      v552 = v351;
      *v350 = 136315138;
      v353 = v317[2];
      if (v353)
      {
        v486 = v351;
        v496 = v350;
        v502 = v349;
        v513 = v348;
        v354 = v1[640];
        v355 = v1[633];
        v553[0] = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v353, 0);
        v356 = v553[0];
        v357 = *(v354 + 16);
        v354 += 16;
        v544 = v357;
        v441 = v317;
        v358 = v317 + ((*(v354 + 64) + 32) & ~*(v354 + 64));
        v530 = (v355 + 8);
        v537 = *(v354 + 56);
        v522 = (v354 - 8);
        do
        {
          v359 = v1[644];
          v360 = v1[639];
          v361 = v1[638];
          v362 = v1[632];
          v544(v359, v358, v360);
          Friend.handle.getter();
          v363 = Handle.identifier.getter();
          v365 = v364;
          (*v530)(v361, v362);
          (*v522)(v359, v360);
          v553[0] = v356;
          v367 = *(v356 + 16);
          v366 = *(v356 + 24);
          if (v367 >= v366 >> 1)
          {
            sub_10002B3C0((v366 > 1), v367 + 1, 1);
            v356 = v553[0];
          }

          *(v356 + 16) = v367 + 1;
          v368 = v356 + 16 * v367;
          *(v368 + 32) = v363;
          *(v368 + 40) = v365;
          v358 += v537;
          --v353;
          v1 = v550;
        }

        while (v353);
        v317 = v441;
        v348 = v513;
        v349 = v502;
        v350 = v496;
        v352 = v486;
      }

      v369 = Array.description.getter();
      v371 = v370;

      v372 = sub_10000D01C(v369, v371, &v552);

      *(v350 + 4) = v372;
      _os_log_impl(&_mh_execute_header, v348, v349, "Server response with futureFollowing: %s", v350, 0xCu);
      sub_100004984(v352);
    }

    sub_10024949C(v317);
    v248 = v1[622];
  }

  v373 = v248[27];
  if (v373)
  {
    v374 = *(v373 + 16);
    v375 = _swiftEmptyArrayStorage;
    if (v374)
    {
      v376 = v1[640];
      v553[0] = _swiftEmptyArrayStorage;
      sub_100239354(0, v374, 0);
      v375 = v553[0];
      v377 = (v373 + 32);
      do
      {
        v378 = v1[641];
        v379 = v377[2];
        v380 = *v377;
        *(v1 + 249) = v377[1];
        *(v1 + 250) = v379;
        v382 = v377[4];
        v381 = v377[5];
        v383 = v377[3];
        *(v1 + 4064) = *(v377 + 96);
        *(v1 + 252) = v382;
        *(v1 + 253) = v381;
        *(v1 + 251) = v383;
        *(v1 + 248) = v380;
        v384 = v1[498];
        v385 = v1[499];
        sub_100165758((v1 + 496), (v1 + 509));
        sub_10022706C(v1 + 496, v384, v385, v378);
        sub_100165790((v1 + 496));
        v553[0] = v375;
        isa = v375[2].isa;
        v386 = v375[3].isa;
        if (isa >= v386 >> 1)
        {
          sub_100239354((v386 > 1), isa + 1, 1);
          v375 = v553[0];
        }

        v388 = v1[641];
        v389 = v1[639];
        v375[2].isa = (isa + 1);
        (*(v376 + 32))(v375 + ((*(v376 + 80) + 32) & ~*(v376 + 80)) + *(v376 + 72) * isa, v388, v389);
        v377 = (v377 + 104);
        --v374;
      }

      while (v374);
    }

    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v390 = type metadata accessor for Logger();
    sub_10000A6F0(v390, qword_1005DFF18);

    v391 = Logger.logObject.getter();
    v392 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v391, v392))
    {
      v393 = swift_slowAlloc();
      v394 = swift_slowAlloc();
      v395 = v394;
      v552 = v394;
      *v393 = 136315138;
      v396 = v375[2].isa;
      v397 = v375;
      if (v396)
      {
        v480 = v394;
        v487 = v393;
        v497 = v392;
        v503 = v391;
        v398 = v550[640];
        v399 = v550[633];
        v553[0] = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v396, 0);
        v400 = v553[0];
        v545 = *(v398 + 16);
        v401 = v397 + ((*(v398 + 80) + 32) & ~*(v398 + 80));
        v531 = (v399 + 8);
        v538 = *(v398 + 72);
        v514 = v397;
        v523 = (v398 + 8);
        do
        {
          v402 = v550[644];
          v403 = v550[639];
          v404 = v550[638];
          v405 = v550[632];
          v545(v402, v401, v403);
          Friend.handle.getter();
          v406 = Handle.identifier.getter();
          v408 = v407;
          (*v531)(v404, v405);
          (*v523)(v402, v403);
          v553[0] = v400;
          v410 = *(v400 + 16);
          v409 = *(v400 + 24);
          if (v410 >= v409 >> 1)
          {
            sub_10002B3C0((v409 > 1), v410 + 1, 1);
            v400 = v553[0];
          }

          *(v400 + 16) = v410 + 1;
          v411 = v400 + 16 * v410;
          *(v411 + 32) = v406;
          *(v411 + 40) = v408;
          v401 += v538;
          --v396;
        }

        while (v396);
        v391 = v503;
        v397 = v514;
        v392 = v497;
        v395 = v480;
        v393 = v487;
      }

      v412 = Array.description.getter();
      v414 = v413;

      v415 = sub_10000D01C(v412, v414, &v552);

      *(v393 + 4) = v415;
      _os_log_impl(&_mh_execute_header, v391, v392, "Server response with pendingOffers: %s", v393, 0xCu);
      sub_100004984(v395);

      v1 = v550;
      v375 = v397;
    }

    else
    {
    }

    sub_10024949C(v375);
  }

  v416 = v1[620];
  v1[657] = v416;
  v417 = swift_task_alloc();
  v1[658] = v417;
  *v417 = v1;
  v417[1] = sub_100221A84;
  v418 = *(v1 + 163);

  return sub_100227594(v416, v418);
}

uint64_t sub_100221A84(uint64_t a1)
{
  v2 = *(*v1 + 4984);
  *(*v1 + 5272) = a1;

  return _swift_task_switch(sub_100221BB8, v2, 0);
}

uint64_t sub_100221BB8()
{
  v13 = v0;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFC28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    type metadata accessor for FriendshipAction();
    sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    v6 = Dictionary.description.getter();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updated friends: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 5272);

  return v9(v10);
}

uint64_t sub_100221EF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_10004B564(&qword_1005B0500, &qword_1004D1E30);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for AppNotificationEvent();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for AppNotificationEvent.EventType();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v7 = type metadata accessor for FriendshipAction();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v8 = type metadata accessor for Friend();
  v3[29] = v8;
  v3[30] = *(v8 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v9 = _s12PersonEntityVMa(0);
  v3[36] = v9;
  v10 = swift_task_alloc();
  v3[37] = v10;
  v11 = sub_1000093F8(&qword_1005A8D58, _s12PersonEntityVMa, &unk_1004C1E40);
  v3[38] = v11;
  *v10 = v3;
  v10[1] = sub_1002222C0;

  return static AppEntity.isObserved()(v9, v11);
}

uint64_t sub_1002222C0(char a1)
{
  v4 = *v2;
  *(v4 + 312) = v1;

  v5 = *(v4 + 32);
  if (v1)
  {
    v6 = sub_100224A44;
  }

  else
  {
    *(v4 + 376) = a1 & 1;
    v6 = sub_100222400;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100222400()
{
  v10 = v0;
  if (*(v0 + 376))
  {
    v1 = swift_task_alloc();
    *(v0 + 320) = v1;
    *v1 = v0;
    v1[1] = sub_100222710;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A7EA8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFAB8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0xD00000000000003FLL, 0x80000001004E5910, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Won't publish - PersonEntity is not observed", v5, 0xCu);
      sub_100004984(v6);
    }

    sub_100037FC8(0, 0);
    sub_100037FC8(0, 0);
    sub_100037FC8(0, 0);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100222710(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 328) = a1;

  v3 = swift_task_alloc();
  *(v2 + 336) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000093F8(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002228EC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002228EC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 344) = a1;

  v4 = *(v3 + 32);
  if (v1)
  {

    v5 = sub_1002247B4;
  }

  else
  {

    v5 = sub_100222A50;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100222A50()
{
  sub_10022AFA0(v0[2]);
  v0[44] = v1;
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_100222AEC;

  return sub_100008CC0();
}

uint64_t sub_100222AEC(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 368) = a1;

  return _swift_task_switch(sub_100222C04, v2, 0);
}

uint64_t sub_100222C04()
{
  v266 = v0;
  v1 = v0[46];
  v2 = v0[30];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[12];
  v6 = v0[3];
  sub_10022AFA0(v1);
  v227 = v7;

  v234 = sub_100209B48(_swiftEmptyArrayStorage);
  v232 = v6 + 64;
  v8 = -1;
  v9 = -1 << *(v6 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v6 + 64);
  v11 = (63 - v9) >> 6;
  v256 = (v2 + 16);
  v238 = (v3 + 16);
  v257 = (v3 + 32);
  v259 = (v2 + 32);
  v251 = (v4 + 8);
  v237 = v2;
  v250 = (v2 + 8);
  v252 = (v3 + 8);
  v236 = v3;
  v225 = (v3 + 88);
  v224 = enum case for FriendshipAction.add(_:);
  v220 = enum case for FriendshipAction.remove(_:);
  v219 = enum case for FriendshipAction.modify(_:);
  v217 = enum case for FriendshipAction.offer(_:);
  v216 = enum case for FriendshipAction.invite(_:);
  v218 = enum case for AppNotificationEvent.EventType.updated(_:);
  v226 = (v5 + 104);
  v233 = (v5 + 16);
  v223 = (v5 + 8);
  v214 = enum case for AppNotificationEvent.EventType.deleted(_:);
  v215 = enum case for AppNotificationEvent.EventType.created(_:);
  v235 = v6;

  v221 = 0;
  v222 = 0;
  v229 = 0;
  v230 = 0;
  v228 = 0;
  v231 = 0;
  v12 = 0;
  v254 = v11;
LABEL_4:
  v13 = v12;
  for (i = v264; ; i = v264)
  {
    if (!v10)
    {
      if (v11 <= v13 + 1)
      {
        v17 = v13 + 1;
      }

      else
      {
        v17 = v11;
      }

      v18 = v17 - 1;
      while (1)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v16 >= v11)
        {
          v58 = i[34];
          v59 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
          (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
          v262 = 0;
          goto LABEL_17;
        }

        v10 = *(v232 + 8 * v16);
        ++v13;
        if (v10)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_136;
    }

    v16 = v13;
LABEL_16:
    v19 = i[33];
    v20 = i[34];
    v22 = i[28];
    v21 = i[29];
    v23 = i[23];
    v262 = (v10 - 1) & v10;
    v24 = __clz(__rbit64(v10)) | (v16 << 6);
    (*(v237 + 16))(v19, *(v235 + 48) + *(v237 + 72) * v24, v21);
    (*(v236 + 16))(v22, *(v235 + 56) + *(v236 + 72) * v24, v23);
    v25 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v26 = *(v25 + 48);
    (*(v237 + 32))(v20, v19, v21);
    i = v264;
    (*(v236 + 32))(v20 + v26, v22, v23);
    (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
    v18 = v16;
    v11 = v254;
LABEL_17:
    v27 = i[35];
    sub_1000176A8(i[34], v27, &qword_1005AFFF8, &unk_1004D2ED0);
    v28 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
    {
      break;
    }

    v261 = v18;
    v29 = i[35];
    v30 = i[32];
    v31 = i[29];
    v32 = i[27];
    v34 = i[22];
    v33 = i[23];
    v35 = i[20];
    v36 = *(v28 + 48);
    (*v259)(v30, v29, v31);
    (*v257)(v32, v29 + v36, v33);
    Friend.handle.getter();
    v37 = Handle.serverID.getter();
    v39 = v38;
    (*v251)(v34, v35);
    if (v39)
    {
      v60 = v264[26];
      v61 = v264[23];
      v62 = *v238;
      (*v238)(v60, v264[27], v61);
      v63 = (*v225)(v60, v61);
      if (v63 == v224)
      {
        goto LABEL_44;
      }

      if (v63 != v220)
      {
        if (v63 != v219)
        {
          if (v63 != v217 && v63 != v216)
          {
            if (qword_1005A7EA8 != -1)
            {
              swift_once();
            }

            v64 = v264[27];
            v65 = v264[25];
            v66 = v264[23];
            v67 = type metadata accessor for Logger();
            sub_10000A6F0(v67, qword_1005DFAB8);
            v62(v65, v64, v66);
            v68 = Logger.logObject.getter();
            v69 = static os_log_type_t.error.getter();
            v70 = os_log_type_enabled(v68, v69);
            v71 = v264[25];
            v72 = v264[23];
            if (v70)
            {
              v73 = swift_slowAlloc();
              v265 = swift_slowAlloc();
              *v73 = 136446466;
              *(v73 + 4) = sub_10000D01C(0xD00000000000003FLL, 0x80000001004E5910, &v265);
              *(v73 + 12) = 2080;
              sub_1000093F8(&qword_1005B0000, &type metadata accessor for FriendshipAction, &protocol conformance descriptor for FriendshipAction);
              v74 = dispatch thunk of CustomStringConvertible.description.getter();
              v76 = v75;
              v243 = *v252;
              (*v252)(v71, v72);
              v77 = sub_10000D01C(v74, v76, &v265);

              *(v73 + 14) = v77;
              _os_log_impl(&_mh_execute_header, v68, v69, "%{public}s: Got unexpected action: %s", v73, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              v243 = *v252;
              (*v252)(v71, v72);
            }

            v78 = v264[13];
            (*v226)(v78, v218, v264[11]);
            sub_100037FC8(v231, 0);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v265 = v234;
            v81 = sub_1001FDCFC(v78);
            v82 = *(v234 + 16);
            v83 = (v80 & 1) == 0;
            result = v82 + v83;
            if (!__OFADD__(v82, v83))
            {
              v85 = v80;
              if (*(v234 + 24) >= result)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  if (v80)
                  {
LABEL_42:
                    v240 = v264[32];
                    v90 = v264[29];
                    v91 = v264[27];
                    v242 = v264[26];
                    v92 = v264[23];
                    v93 = v264[13];
                    v94 = v264[11];
                    sub_1002345CC(&v265, v37, v39);
                    (*v223)(v93, v94);

                    v243(v91, v92);
                    (*v250)(v240, v90);
                    v243(v242, v92);
                    v231 = sub_100241534;
LABEL_43:
                    v12 = v261;
                    v10 = v262;
                    goto LABEL_4;
                  }
                }

                else
                {
                  sub_10020474C();
                  v234 = v265;
                  if (v85)
                  {
                    goto LABEL_42;
                  }
                }

LABEL_41:
                v89 = v264[18];
                (*v233)(v89, v264[13], v264[11]);
                sub_1002342A8(v81, v89, &_swiftEmptySetSingleton, v234, &type metadata accessor for AppNotificationEvent.EventType);
                goto LABEL_42;
              }

              v86 = v264[13];
              sub_100230164(result, isUniquelyReferenced_nonNull_native);
              v234 = v265;
              v87 = sub_1001FDCFC(v86);
              if ((v85 & 1) == (v88 & 1))
              {
                v81 = v87;
                if (v85)
                {
                  goto LABEL_42;
                }

                goto LABEL_41;
              }

LABEL_136:

              return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            }

            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
            return result;
          }

LABEL_44:
          v95 = sub_10021B304(v37, v39, v264[44]);
          v96 = v264[11];
          if ((v95 & 1) == 0)
          {
            v97 = v264[17];
            (*v226)(v97, v215, v96);
            sub_100037FC8(v230, 0);
            v98 = swift_isUniquelyReferenced_nonNull_native();
            v265 = v234;
            v100 = sub_1001FDCFC(v97);
            v101 = *(v234 + 16);
            v102 = (v99 & 1) == 0;
            result = v101 + v102;
            if (__OFADD__(v101, v102))
            {
              goto LABEL_148;
            }

            v103 = v99;
            if (*(v234 + 24) >= result)
            {
              if (v98)
              {
                if (v99)
                {
                  goto LABEL_64;
                }
              }

              else
              {
                sub_10020474C();
                v234 = v265;
                if (v103)
                {
                  goto LABEL_64;
                }
              }
            }

            else
            {
              v104 = v264[17];
              sub_100230164(result, v98);
              v234 = v265;
              v105 = sub_1001FDCFC(v104);
              if ((v103 & 1) != (v106 & 1))
              {
                goto LABEL_136;
              }

              v100 = v105;
              if (v103)
              {
LABEL_64:
                v244 = v264[32];
                v130 = v264[29];
                v131 = v264[27];
                v132 = v264[23];
                v133 = v264[17];
                v134 = v264[11];
                sub_1002345CC(&v265, v37, v39);
                (*v223)(v133, v134);

                (*v252)(v131, v132);
                (*v250)(v244, v130);
                v230 = sub_100241534;
                goto LABEL_43;
              }
            }

            v129 = v264[18];
            (*v233)(v129, v264[17], v264[11]);
            sub_1002342A8(v100, v129, &_swiftEmptySetSingleton, v234, &type metadata accessor for AppNotificationEvent.EventType);
            goto LABEL_64;
          }

          v147 = v264[19];
          (*v226)(v147, v218, v96);
          sub_100037FC8(v222, 0);
          v148 = swift_isUniquelyReferenced_nonNull_native();
          v265 = v234;
          v150 = sub_1001FDCFC(v147);
          v151 = *(v234 + 16);
          v152 = (v149 & 1) == 0;
          result = v151 + v152;
          if (__OFADD__(v151, v152))
          {
            goto LABEL_151;
          }

          v153 = v149;
          if (*(v234 + 24) >= result)
          {
            if (v148)
            {
              if (v149)
              {
                goto LABEL_86;
              }
            }

            else
            {
              sub_10020474C();
              v234 = v265;
              if (v153)
              {
                goto LABEL_86;
              }
            }
          }

          else
          {
            v154 = v264[19];
            sub_100230164(result, v148);
            v234 = v265;
            v155 = sub_1001FDCFC(v154);
            if ((v153 & 1) != (v156 & 1))
            {
              goto LABEL_136;
            }

            v150 = v155;
            if (v153)
            {
LABEL_86:
              v247 = v264[32];
              v168 = v264[29];
              v169 = v264[27];
              v170 = v264[23];
              v171 = v264[19];
              v172 = v264[11];
              sub_1002345CC(&v265, v37, v39);
              (*v223)(v171, v172);

              (*v252)(v169, v170);
              (*v250)(v247, v168);
              v222 = sub_100241534;
              goto LABEL_43;
            }
          }

          v167 = v264[18];
          (*v233)(v167, v264[19], v264[11]);
          sub_1002342A8(v150, v167, &_swiftEmptySetSingleton, v234, &type metadata accessor for AppNotificationEvent.EventType);
          goto LABEL_86;
        }

        v119 = v264[16];
        (*v226)(v119, v218, v264[11]);
        sub_100037FC8(v228, 0);
        v120 = swift_isUniquelyReferenced_nonNull_native();
        v265 = v234;
        v122 = sub_1001FDCFC(v119);
        v123 = *(v234 + 16);
        v124 = (v121 & 1) == 0;
        result = v123 + v124;
        if (__OFADD__(v123, v124))
        {
          goto LABEL_149;
        }

        v125 = v121;
        if (*(v234 + 24) >= result)
        {
          if (v120)
          {
            if (v121)
            {
              goto LABEL_72;
            }
          }

          else
          {
            sub_10020474C();
            v234 = v265;
            if (v125)
            {
              goto LABEL_72;
            }
          }
        }

        else
        {
          v126 = v264[16];
          sub_100230164(result, v120);
          v234 = v265;
          v127 = sub_1001FDCFC(v126);
          if ((v125 & 1) != (v128 & 1))
          {
            goto LABEL_136;
          }

          v122 = v127;
          if (v125)
          {
LABEL_72:
            v246 = v264[32];
            v142 = v264[29];
            v143 = v264[27];
            v144 = v264[23];
            v145 = v264[16];
            v146 = v264[11];
            sub_1002345CC(&v265, v37, v39);
            (*v223)(v145, v146);

            (*v252)(v143, v144);
            (*v250)(v246, v142);
            v228 = sub_100241534;
            goto LABEL_43;
          }
        }

        v141 = v264[18];
        (*v233)(v141, v264[16], v264[11]);
        sub_1002342A8(v122, v141, &_swiftEmptySetSingleton, v234, &type metadata accessor for AppNotificationEvent.EventType);
        goto LABEL_72;
      }

      v107 = sub_10021B304(v37, v39, v227);
      v108 = v264[11];
      if ((v107 & 1) == 0)
      {
        v109 = v264[14];
        (*v226)(v109, v214, v108);
        sub_100037FC8(v229, 0);
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v265 = v234;
        v112 = sub_1001FDCFC(v109);
        v113 = *(v234 + 16);
        v114 = (v111 & 1) == 0;
        result = v113 + v114;
        if (__OFADD__(v113, v114))
        {
          goto LABEL_150;
        }

        v115 = v111;
        if (*(v234 + 24) >= result)
        {
          if (v110)
          {
            if (v111)
            {
              goto LABEL_68;
            }
          }

          else
          {
            sub_10020474C();
            v234 = v265;
            if (v115)
            {
              goto LABEL_68;
            }
          }
        }

        else
        {
          v116 = v264[14];
          sub_100230164(result, v110);
          v234 = v265;
          v117 = sub_1001FDCFC(v116);
          if ((v115 & 1) != (v118 & 1))
          {
            goto LABEL_136;
          }

          v112 = v117;
          if (v115)
          {
LABEL_68:
            v245 = v264[32];
            v136 = v264[29];
            v137 = v264[27];
            v138 = v264[23];
            v139 = v264[14];
            v140 = v264[11];
            sub_1002345CC(&v265, v37, v39);
            (*v223)(v139, v140);

            (*v252)(v137, v138);
            (*v250)(v245, v136);
            v229 = sub_100241534;
            goto LABEL_43;
          }
        }

        v135 = v264[18];
        (*v233)(v135, v264[14], v264[11]);
        sub_1002342A8(v112, v135, &_swiftEmptySetSingleton, v234, &type metadata accessor for AppNotificationEvent.EventType);
        goto LABEL_68;
      }

      v157 = v264[15];
      (*v226)(v157, v218, v108);
      sub_100037FC8(v221, 0);
      v158 = swift_isUniquelyReferenced_nonNull_native();
      v265 = v234;
      v160 = sub_1001FDCFC(v157);
      v161 = *(v234 + 16);
      v162 = (v159 & 1) == 0;
      result = v161 + v162;
      if (__OFADD__(v161, v162))
      {
        goto LABEL_152;
      }

      v163 = v159;
      if (*(v234 + 24) >= result)
      {
        if (v158)
        {
          if (v159)
          {
            goto LABEL_90;
          }
        }

        else
        {
          sub_10020474C();
          v234 = v265;
          if (v163)
          {
            goto LABEL_90;
          }
        }
      }

      else
      {
        v164 = v264[15];
        sub_100230164(result, v158);
        v234 = v265;
        v165 = sub_1001FDCFC(v164);
        if ((v163 & 1) != (v166 & 1))
        {
          goto LABEL_136;
        }

        v160 = v165;
        if (v163)
        {
LABEL_90:
          v248 = v264[32];
          v174 = v264[29];
          v175 = v264[27];
          v176 = v264[23];
          v177 = v264[15];
          v178 = v264[11];
          sub_1002345CC(&v265, v37, v39);
          (*v223)(v177, v178);

          (*v252)(v175, v176);
          (*v250)(v248, v174);
          v221 = sub_100241534;
          goto LABEL_43;
        }
      }

      v173 = v264[18];
      (*v233)(v173, v264[15], v264[11]);
      sub_1002342A8(v160, v173, &_swiftEmptySetSingleton, v234, &type metadata accessor for AppNotificationEvent.EventType);
      goto LABEL_90;
    }

    if (qword_1005A7EA8 != -1)
    {
      swift_once();
    }

    v40 = v264[31];
    v41 = v264[32];
    v42 = v264[29];
    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005DFAB8);
    (*v256)(v40, v41, v42);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v264[31];
    v48 = v264[32];
    v49 = v264[29];
    v50 = v264[27];
    v51 = v264[23];
    if (v46)
    {
      v52 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      *v52 = 136446723;
      *(v52 + 4) = sub_10000D01C(0xD00000000000003FLL, 0x80000001004E5910, &v265);
      *(v52 + 12) = 2160;
      *(v52 + 14) = 1752392040;
      *(v52 + 22) = 2081;
      sub_1000093F8(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v239 = v50;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v241 = v48;
      v56 = *v250;
      (*v250)(v47, v49);
      v57 = sub_10000D01C(v53, v55, &v265);

      *(v52 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s: No serverID for %{private,mask.hash}s", v52, 0x20u);
      swift_arrayDestroy();

      (*v252)(v239, v51);
      v56(v241, v49);
      v11 = v254;
    }

    else
    {

      v15 = *v250;
      (*v250)(v47, v49);
      (*v252)(v50, v51);
      v15(v48, v49);
    }

    v13 = v261;
    v10 = v262;
  }

  v179 = v234;
  v180 = *(v234 + 16);
  if (v180)
  {
    v181 = i[12];
    v182 = i[9];
    v253 = i[5];
    sub_100239638(0, v180, 0);
    v183 = v234 + 64;
    v184 = _HashTable.startBucket.getter();
    v185 = 0;
    v186 = *(v234 + 36);
    v255 = v181;
    v249 = v186;
    while ((v184 & 0x8000000000000000) == 0 && v184 < 1 << *(v179 + 32))
    {
      if ((*(v183 + 8 * (v184 >> 6)) & (1 << v184)) == 0)
      {
        goto LABEL_140;
      }

      if (v186 != *(v179 + 36))
      {
        goto LABEL_141;
      }

      v263 = v184 >> 6;
      v260 = v185;
      v188 = i[11];
      v190 = i[6];
      v189 = i[7];
      (*v233)(v189, *(v179 + 48) + *(v255 + 72) * v184, v188);
      v191 = *(*(v179 + 56) + 8 * v184);
      (*(v255 + 32))(v190, v189, v188);
      *(v190 + *(v253 + 48)) = v191;
      v192 = *(v191 + 16);
      if (v192)
      {
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v193 = swift_allocObject();
        v194 = j__malloc_size(v193);
        v195 = v194 - 32;
        if (v194 < 32)
        {
          v195 = v194 - 17;
        }

        v193[2] = v192;
        v193[3] = 2 * (v195 >> 4);
        v258 = sub_10023E504(&v265, v193 + 4, v192, v191);
        i = v265;
        swift_bridgeObjectRetain_n();
        sub_10000E3F8(i);
        if (v258 != v192)
        {
          goto LABEL_145;
        }

        i = v264;
        v179 = v234;
      }

      else
      {
      }

      v196 = i[6];
      static AppEntity.notificationEvent(for:identifiers:)();

      sub_100002CE0(v196, &qword_1005B0500, &qword_1004D1E30);
      v198 = _swiftEmptyArrayStorage[2];
      v197 = _swiftEmptyArrayStorage[3];
      v186 = v249;
      if (v198 >= v197 >> 1)
      {
        sub_100239638((v197 > 1), v198 + 1, 1);
      }

      v199 = i[10];
      v200 = i[8];
      _swiftEmptyArrayStorage[2] = v198 + 1;
      (*(v182 + 32))(_swiftEmptyArrayStorage + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v198, v199, v200);
      v187 = 1 << *(v179 + 32);
      if (v184 >= v187)
      {
        goto LABEL_142;
      }

      v183 = v234 + 64;
      v201 = *(v234 + 64 + 8 * v263);
      if ((v201 & (1 << v184)) == 0)
      {
        goto LABEL_143;
      }

      if (v249 != *(v179 + 36))
      {
        goto LABEL_144;
      }

      v202 = v201 & (-2 << (v184 & 0x3F));
      if (v202)
      {
        v187 = __clz(__rbit64(v202)) | v184 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v203 = v263 << 6;
        v204 = (v234 + 72 + 8 * v263);
        v205 = v263 + 1;
        while (v205 < (v187 + 63) >> 6)
        {
          v207 = *v204++;
          v206 = v207;
          v203 += 64;
          ++v205;
          if (v207)
          {
            sub_10002F14C(v184, v249, 0);
            v187 = __clz(__rbit64(v206)) + v203;
            goto LABEL_128;
          }
        }

        sub_10002F14C(v184, v249, 0);
LABEL_128:
        v179 = v234;
      }

      v185 = v260 + 1;
      v184 = v187;
      if (v260 + 1 == v180)
      {
        goto LABEL_129;
      }
    }

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
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    swift_once();
  }

  else
  {
LABEL_129:

    Array<A>.send()();

    if (qword_1005A7EA8 != -1)
    {
      goto LABEL_146;
    }
  }

  v208 = type metadata accessor for Logger();
  sub_10000A6F0(v208, qword_1005DFAB8);
  v209 = Logger.logObject.getter();
  v210 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v209, v210))
  {
    v211 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    v265 = v212;
    *v211 = 136446210;
    *(v211 + 4) = sub_10000D01C(0xD00000000000003FLL, 0x80000001004E5910, &v265);
    _os_log_impl(&_mh_execute_header, v209, v210, "%{public}s - Did send PersonEntity events", v211, 0xCu);
    sub_100004984(v212);
  }

  sub_100037FC8(v222, 0);
  sub_100037FC8(v230, 0);
  sub_100037FC8(v228, 0);
  sub_100037FC8(v221, 0);
  sub_100037FC8(v229, 0);
  sub_100037FC8(v231, 0);

  v213 = i[1];

  return v213();
}

uint64_t sub_1002247B4()
{
  v9 = v0;
  if (qword_1005A7EA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003FLL, 0x80000001004E5910, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Error getting dataManager", v4, 0xCu);
    sub_100004984(v5);
  }

  sub_100037FC8(0, 0);
  sub_100037FC8(0, 0);
  sub_100037FC8(0, 0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100224A44()
{
  v11 = v0;
  if (qword_1005A7EA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFAB8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003FLL, 0x80000001004E5910, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Error getting isObserved for PersonEntity - %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = swift_task_alloc();
  *(v0 + 320) = v8;
  *v8 = v0;
  v8[1] = sub_100222710;

  return daemon.getter();
}

uint64_t sub_100224C80(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for Handle();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for HandleType();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for FriendshipAction();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = type metadata accessor for Friend();
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100224F60, v1, 0);
}

uint64_t sub_100224F60()
{
  v9 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 248) = sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s start updateFriends", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 256) = v6;
  *v6 = v0;
  v6[1] = sub_100225110;

  return daemon.getter();
}

uint64_t sub_100225110(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_100225228, v2, 0);
}

void sub_100225228()
{
  v205 = v0;
  v1 = v0[2];
  type metadata accessor for Daemon();
  sub_1000093F8(&qword_1005AF270, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  ActorDaemon.bundleIdentifier.getter();

  v2 = [BiomeLibrary() FindMy];
  swift_unknownObjectRelease();
  v3 = [v2 ContactActivity];
  swift_unknownObjectRelease();
  v170 = v3;
  v183 = [v3 source];
  v4 = *(v1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v0[2];
  v6 = sub_10022BD44(v4, 0);
  v7 = *(sub_10004B564(&qword_1005AFFE0, &qword_1004D6060) - 8);
  v8 = sub_10023E7B4(v204, v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v4, v5);
  v9 = v204[0];

  sub_10000E3F8(v9);
  if (v8 != v4)
  {
    __break(1u);
LABEL_4:
    v6 = _swiftEmptyArrayStorage;
  }

  v204[0] = v6;
  sub_10023A438(v204);
  v10 = v204[0];

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v204[0] = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, v204);
    *(v13 + 12) = 2080;
    sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v14 = Array.description.getter();
    v16 = sub_10000D01C(v14, v15, v204);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s sortedFriendsArray: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v17 = 0;
  v18 = v0[23];
  v19 = v0[19];
  v200 = (v19 + 32);
  v201 = (v18 + 32);
  v20 = v0[15];
  v198 = (v20 + 8);
  v199 = (v20 + 104);
  v196 = (v19 + 8);
  v202 = (v18 + 8);
  v192 = (v19 + 88);
  v193 = (v19 + 16);
  v185 = (v18 + 16);
  v194 = (v0[9] + 8);
  v21 = *(v10 + 16);
  v197 = enum case for HandleType.following(_:);
  v191 = enum case for FriendshipAction.add(_:);
  v177 = enum case for FriendshipAction.remove(_:);
  v184 = v10;
  for (i = v21; ; v21 = i)
  {
    if (v17 == v21)
    {
      v24 = v0[29];
      v25 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
      (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
      v26 = v21;
    }

    else
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_65:
        __break(1u);
        return;
      }

      if (v17 >= *(v10 + 16))
      {
        goto LABEL_65;
      }

      v27 = v0[29];
      v28 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
      v29 = *(v28 - 8);
      sub_100005F04(v10 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v17, v27, &qword_1005AFFE0, &qword_1004D6060);
      v26 = v17 + 1;
      (*(v29 + 56))(v27, 0, 1, v28);
    }

    v30 = v0[30];
    sub_1000176A8(v0[29], v30, &qword_1005AFFF8, &unk_1004D2ED0);
    v31 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
    {
      break;
    }

    v203 = v26;
    v32 = v0[30];
    v33 = v0[21];
    v35 = v0[17];
    v34 = v0[18];
    v36 = v0[16];
    v37 = v0[14];
    v38 = *(v31 + 48);
    (*v201)(v0[28], v32, v0[22]);
    (*v200)(v33, v32 + v38, v34);
    Friend.type.getter();
    (*v199)(v36, v197, v37);
    LOBYTE(v38) = static HandleType.== infix(_:_:)();
    v39 = *v198;
    (*v198)(v36, v37);
    v39(v35, v37);
    if ((v38 & 1) == 0)
    {
      v22 = v0[28];
      v23 = v0[22];
      (*v196)(v0[21], v0[18]);
      (*v202)(v22, v23);
      goto LABEL_9;
    }

    v40 = v0[20];
    v41 = v0[18];
    (*v193)(v40, v0[21], v41);
    v42 = (*v192)(v40, v41);
    if (v42 != v191)
    {
      if (v42 != v177)
      {
        v80 = v0[28];
        v81 = v0[22];
        v82 = v0[20];
        v83 = v0[18];
        v84 = *v196;
        (*v196)(v0[21], v83);
        (*v202)(v80, v81);
        v84(v82, v83);
        goto LABEL_9;
      }

      (*v185)(v0[24], v0[28], v0[22]);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      v70 = os_log_type_enabled(v68, v69);
      v71 = v0[24];
      v72 = v0[22];
      if (v70)
      {
        v73 = v0[12];
        v188 = v0[8];
        v74 = swift_slowAlloc();
        v204[0] = swift_slowAlloc();
        *v74 = 136446723;
        *(v74 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, v204);
        *(v74 + 12) = 2160;
        *(v74 + 14) = 1752392040;
        *(v74 + 22) = 2081;
        Friend.handle.getter();
        v75 = Handle.identifier.getter();
        v77 = v76;
        v78 = v194;
        (*v194)(v73, v188);
        v187 = *v202;
        (*v202)(v71, v72);
        v79 = sub_10000D01C(v75, v77, v204);

        *(v74 + 24) = v79;
        _os_log_impl(&_mh_execute_header, v68, v69, "%{public}s Removed a Friend: %{private,mask.hash}s", v74, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v187 = *v202;
        (*v202)(v71, v72);
        v78 = v194;
      }

      v101 = v0[10];
      v102 = v0[8];
      v103 = v0[5];
      v180 = v0[4];
      Friend.handle.getter();
      Handle.identifier.getter();
      (*v78)(v101, v102);
      Friend.createdAt.getter();
      v104 = type metadata accessor for Date();
      v105 = *(v104 - 8);
      (*(v105 + 56))(v180, 1, 1, v104);
      v106 = String._bridgeToObjectiveC()();

      v107 = *(v105 + 48);
      isa = 0;
      if (v107(v103, 1, v104) != 1)
      {
        v109 = v0[5];
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v105 + 8))(v109, v104);
      }

      v110 = v0[4];
      if (v107(v110, 1, v104) == 1)
      {
        v111 = 0;
      }

      else
      {
        v111 = Date._bridgeToObjectiveC()().super.isa;
        (*(v105 + 8))(v110, v104);
      }

      v112 = objc_allocWithZone(BMFindMyContactActivity);
      v113 = String._bridgeToObjectiveC()();
      v114 = [v112 initWithHandle:v106 actionType:3 eventTimestampBegin:isa eventTimestampEnd:v111 bundleID:v113];
LABEL_50:
      v125 = v114;

      v126 = v125;
      [v183 sendEvent:v126];
      v127 = v126;
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.default.getter();

      v130 = os_log_type_enabled(v128, v129);
      v131 = v0[28];
      v133 = v0[21];
      v132 = v0[22];
      v134 = v0[18];
      if (v130)
      {
        v135 = swift_slowAlloc();
        v181 = v132;
        v136 = swift_slowAlloc();
        v204[0] = v136;
        *v135 = 141558275;
        *(v135 + 4) = 1752392040;
        *(v135 + 12) = 2081;
        v175 = v131;
        v137 = [v127 description];
        v173 = v133;
        v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v140 = v139;

        v141 = sub_10000D01C(v138, v140, v204);

        *(v135 + 14) = v141;
        _os_log_impl(&_mh_execute_header, v128, v129, "Sent event: %{private,mask.hash}s", v135, 0x16u);
        sub_100004984(v136);

        (*v196)(v173, v134);
        v142 = v175;
        v143 = v181;
      }

      else
      {

        (*v196)(v133, v134);
        v142 = v131;
        v143 = v132;
      }

      (v187)(v142, v143);
      goto LABEL_54;
    }

    v43 = v0[13];
    v44 = v0[8];
    Friend.handle.getter();
    v45 = Handle.serverID.getter();
    v47 = v46;
    v48 = *v194;
    (*v194)(v43, v44);
    if (v47)
    {
      if (!*(&_swiftEmptySetSingleton + 2) || (Hasher.init(_seed:)(), String.hash(into:)(), v49 = Hasher._finalize()(), v50 = -1 << *(&_swiftEmptySetSingleton + 32), v51 = v49 & ~v50, ((*(&_swiftEmptySetSingleton + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51) & 1) == 0))
      {
LABEL_28:
        v178 = v48;
        (*v185)(v0[26], v0[28], v0[22]);

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();

        v57 = os_log_type_enabled(v55, v56);
        v58 = v0[26];
        v59 = v0[22];
        if (v57)
        {
          v60 = v0[12];
          v186 = v0[8];
          v61 = swift_slowAlloc();
          v204[0] = swift_slowAlloc();
          *v61 = 136447235;
          *(v61 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, v204);
          *(v61 + 12) = 2160;
          *(v61 + 14) = 1752392040;
          *(v61 + 22) = 2081;
          v171 = v56;
          Friend.handle.getter();
          v62 = Handle.identifier.getter();
          v64 = v63;
          v65 = v60;
          v66 = v178;
          v178(v65, v186);
          v187 = *v202;
          (*v202)(v58, v59);
          v67 = sub_10000D01C(v62, v64, v204);

          *(v61 + 24) = v67;
          *(v61 + 32) = 2160;
          *(v61 + 34) = 1752392040;
          *(v61 + 42) = 2081;
          *(v61 + 44) = sub_10000D01C(v45, v47, v204);
          _os_log_impl(&_mh_execute_header, v55, v171, "%{public}s Added a Friend: %{private,mask.hash}s with serverId %{private,mask.hash}s", v61, 0x34u);
          swift_arrayDestroy();
        }

        else
        {

          v187 = *v202;
          (*v202)(v58, v59);
          v66 = v178;
        }

        v115 = v0[11];
        v116 = v0[7];
        v117 = v0[8];
        v118 = v0[6];
        sub_1002345CC(v204, v45, v47);

        Friend.handle.getter();
        Handle.identifier.getter();
        v66(v115, v117);
        Friend.createdAt.getter();
        v119 = type metadata accessor for Date();
        v120 = *(v119 - 8);
        (*(v120 + 56))(v118, 1, 1, v119);
        v106 = String._bridgeToObjectiveC()();

        v121 = *(v120 + 48);
        isa = 0;
        if (v121(v116, 1, v119) != 1)
        {
          v122 = v0[7];
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v120 + 8))(v122, v119);
        }

        v123 = v0[6];
        if (v121(v123, 1, v119) == 1)
        {
          v111 = 0;
        }

        else
        {
          v111 = Date._bridgeToObjectiveC()().super.isa;
          (*(v120 + 8))(v123, v119);
        }

        v124 = objc_allocWithZone(BMFindMyContactActivity);
        v113 = String._bridgeToObjectiveC()();
        v114 = [v124 initWithHandle:v106 actionType:2 eventTimestampBegin:isa eventTimestampEnd:v111 bundleID:v113];
        goto LABEL_50;
      }

      v52 = ~v50;
      while (1)
      {
        v53 = (*(&_swiftEmptySetSingleton + 6) + 16 * v51);
        v54 = *v53 == v45 && v47 == v53[1];
        if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v51 = (v51 + 1) & v52;
        if (((*(&_swiftEmptySetSingleton + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      (*v185)(v0[27], v0[28], v0[22]);

      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.default.getter();

      v147 = os_log_type_enabled(v145, v146);
      v148 = v0[27];
      v149 = v0[28];
      v150 = v0[22];
      v190 = v0[21];
      v182 = v0[18];
      if (v147)
      {
        v151 = v48;
        v152 = v0[12];
        v166 = v0[8];
        loga = v145;
        v153 = swift_slowAlloc();
        v204[0] = swift_slowAlloc();
        *v153 = 136447235;
        *(v153 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, v204);
        *(v153 + 12) = 2160;
        *(v153 + 14) = 1752392040;
        *(v153 + 22) = 2081;
        v167 = v146;
        Friend.handle.getter();
        v154 = Handle.identifier.getter();
        v176 = v149;
        v156 = v155;
        v151(v152, v166);
        v157 = *v202;
        (*v202)(v148, v150);
        v158 = sub_10000D01C(v154, v156, v204);

        *(v153 + 24) = v158;
        *(v153 + 32) = 2160;
        *(v153 + 34) = 1752392040;
        *(v153 + 42) = 2081;
        v159 = sub_10000D01C(v45, v47, v204);

        *(v153 + 44) = v159;
        _os_log_impl(&_mh_execute_header, loga, v167, "%{public}s Friend: %{private,mask.hash}s has already added serverId %{private,mask.hash}s - skipping", v153, 0x34u);
        swift_arrayDestroy();

        (*v196)(v190, v182);
        (v157)(v176, v150);
      }

      else
      {

        v160 = *v202;
        (*v202)(v148, v150);
        (*v196)(v190, v182);
        (v160)(v149, v150);
      }

LABEL_54:
      v10 = v184;
      goto LABEL_9;
    }

    (*v185)(v0[25], v0[28], v0[22]);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    v87 = os_log_type_enabled(v85, v86);
    v88 = v0[28];
    v89 = v0[25];
    v90 = v0[22];
    v189 = v0[21];
    v174 = v0[18];
    if (v87)
    {
      v172 = v0[28];
      v91 = v0[12];
      log = v0[8];
      v179 = v48;
      v92 = swift_slowAlloc();
      v204[0] = swift_slowAlloc();
      *v92 = 136446723;
      *(v92 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, v204);
      *(v92 + 12) = 2160;
      *(v92 + 14) = 1752392040;
      *(v92 + 22) = 2081;
      Friend.handle.getter();
      v93 = Handle.identifier.getter();
      v95 = v94;
      v179(v91, log);
      v96 = v90;
      v97 = *v202;
      v98 = v89;
      v99 = v96;
      (*v202)(v98);
      v100 = sub_10000D01C(v93, v95, v204);
      v10 = v184;

      *(v92 + 24) = v100;
      _os_log_impl(&_mh_execute_header, v85, v86, "%{public}s Friend: %{private,mask.hash}s has nil serverId", v92, 0x20u);
      swift_arrayDestroy();

      (*v196)(v189, v174);
      (v97)(v172, v99);
    }

    else
    {

      v144 = *v202;
      (*v202)(v89, v90);
      (*v196)(v189, v174);
      (v144)(v88, v90);
    }

LABEL_9:
    v17 = v203;
  }

  v161 = Logger.logObject.getter();
  v162 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v161, v162))
  {
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v204[0] = v164;
    *v163 = 136446210;
    *(v163 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004E58D0, v204);
    _os_log_impl(&_mh_execute_header, v161, v162, "%{public}s end updateFriends", v163, 0xCu);
    sub_100004984(v164);
  }

  v165 = v0[1];

  v165();
}

uint64_t sub_100226A40(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_100226AD4;

  return daemon.getter();
}

uint64_t sub_100226AD4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FriendshipService(0);
  v6 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000093F8(&qword_1005AA6E0, type metadata accessor for FriendshipService, &unk_1004D2BF8);
  *v3 = v9;
  v3[1] = sub_100226CB0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100226CB0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = sub_100226E58;
  }

  else
  {

    *(v4 + 72) = a1;
    v6 = sub_100226DEC;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100226DEC()
{
  v1 = *(v0 + 32);
  sub_1002B4698(*(v0 + 24));

  return _swift_task_switch(sub_100217E08, v1, 0);
}

uint64_t sub_100226E58()
{
  v13 = v0;

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E5890, &v12);
    *(v6 + 12) = 2082;
    v0[2] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10022706C@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v7 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  __chkstk_darwin(v7 - 8);
  v49 = &v39 - v8;
  v9 = type metadata accessor for ClientOrigin();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v12 = __chkstk_darwin(v11 - 8);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v42 = &v39 - v14;
  v41 = type metadata accessor for HandleType();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Handle();
  v51 = *(v40 - 8);
  v17 = __chkstk_darwin(v40);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  v22 = sub_100209188(_swiftEmptyArrayStorage);
  v23 = *(a1 + 10);
  v24 = *(a1 + 11);
  v25 = a1[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = v22;
  sub_100452A48(v23, v24, isUniquelyReferenced_nonNull_native, v25);
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1004C1900;
  *(v27 + 32) = a2;
  *(v27 + 40) = a3;
  swift_bridgeObjectRetain_n();

  v28 = v40;
  Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
  v29 = *(v51 + 16);
  v43 = v19;
  v29(v19, v21, v28);
  v30 = *(v44 + 13);
  v44 = v16;
  v30(v16, enum case for HandleType.pendingOffer(_:), v41);
  if (v25 == 0.0)
  {
    v31 = 1;
    v32 = v42;
  }

  else
  {
    v32 = v42;
    Date.init(timeIntervalSince1970:)();
    v31 = 0;
  }

  v33 = type metadata accessor for Date();
  v34 = *(*(v33 - 8) + 56);
  v34(v32, v31, 1, v33);
  v35 = v45;
  Date.init(timeIntervalSince1970:)();
  v34(v35, 0, 1, v33);
  v36 = &enum case for ClientOrigin.messagesApp(_:);
  if ((a1[12] & 1) == 0)
  {
    v36 = &enum case for ClientOrigin.other(_:);
  }

  (*(v46 + 104))(v48, *v36, v47);
  v37 = v51;
  (*(v51 + 56))(v49, 1, 1, v28);
  Friend.init(handle:type:expiry:createdAt:origin:secureLocationsCapable:shallowOrLiveSecureLocationsCapable:fallbackToLegacyAllowed:fallbackToLegacy:optedNotToShare:ownerHandle:)();
  return (*(v37 + 8))(v21, v28);
}

uint64_t sub_100227594(uint64_t a1, char a2)
{
  *(v3 + 328) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  sub_10004B564(&qword_1005B0548, &qword_1004D1E90);
  *(v3 + 40) = swift_task_alloc();
  sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v5 = type metadata accessor for FriendshipAction();
  *(v3 + 152) = v5;
  *(v3 + 160) = *(v5 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v6 = type metadata accessor for Friend();
  *(v3 + 192) = v6;
  *(v3 + 200) = *(v6 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v3 + 280) = v7;
  *v7 = v3;
  v7[1] = sub_1002278C8;

  return sub_100008CC0();
}

uint64_t sub_1002278C8(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_1002279E0, v2, 0);
}

uint64_t sub_1002279E0()
{
  v129 = v0;
  v0[2] = _swiftEmptyDictionarySingleton;
  v1 = (v0 + 2);

  v3 = sub_10023F2F8(v2);

  v5 = sub_10023F2F8(v4);

  if (qword_1005A80B8 != -1)
  {
LABEL_70:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFF18);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v116 = v3;
  v111 = v5;
  v125 = v0;
  v104 = v1;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v9 = 136315394;
    sub_10021BD68(v5);
    sub_10004B564(&qword_1005B0550, &qword_1004D1EA8);
    v10 = Array.description.getter();
    v12 = v11;

    v13 = sub_10000D01C(v10, v12, v128);
    v3 = v116;

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_10021BD68(v116);
    v14 = Array.description.getter();
    v16 = v15;

    v17 = v14;
    v5 = v111;
    v18 = sub_10000D01C(v17, v16, v128);

    *(v9 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "cachedFriends: %s\ncurrentFriends: %s", v9, 0x16u);
    swift_arrayDestroy();

    v19 = *v1;
  }

  else
  {

    v19 = _swiftEmptyDictionarySingleton;
  }

  v117 = v19;
  v20 = v0[25];
  v21 = v0[20];
  v128[0] = v3;

  sub_10023CA4C(v5);
  v22 = 0;
  v23 = v128[0] + 56;
  v110 = v128[0];
  v24 = -1 << *(v128[0] + 32);
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v5 = v25 & *(v128[0] + 56);
  v26 = (63 - v24) >> 6;
  v126 = v3 + 56;
  v115 = v20;
  v124 = (v20 + 8);
  v103 = enum case for FriendshipAction.add(_:);
  v109 = (v21 + 104);
  v105 = enum case for FriendshipAction.remove(_:);
  v112 = (v21 + 32);
  v27 = _swiftEmptyDictionarySingleton;
  v107 = v128[0] + 56;
  v108 = v21;
  v106 = v26;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v1 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_67;
        }

        if (v1 >= v26)
        {
          break;
        }

        v5 = *(v23 + 8 * v1);
        ++v22;
        if (v5)
        {
          goto LABEL_16;
        }
      }

      v120 = v27;
      v66 = v0[25];

      v67 = 0;
      v68 = -1;
      v69 = -1 << *(v3 + 32);
      if (-v69 < 64)
      {
        v68 = ~(-1 << -v69);
      }

      v3 = v68 & *(v3 + 56);
      v1 = (63 - v69) >> 6;
      v123 = (v66 + 48);
      v114 = enum case for FriendshipAction.modify(_:);
      v70 = v117;
LABEL_35:
      v71 = v67;
      v5 = v111;
      v118 = v70;
      if (!v3)
      {
        goto LABEL_37;
      }

      do
      {
        v67 = v71;
LABEL_40:
        v72 = v0[29];
        v73 = v0[30];
        v74 = v0[24];
        v75 = v125[18];
        v76 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        (*(v115 + 16))(v73, *(v116 + 48) + *(v115 + 72) * (v76 | (v67 << 6)), v74);
        v77 = *(v115 + 32);
        v77(v72, v73, v74);
        *(swift_task_alloc() + 16) = v72;
        sub_1004501CC(sub_10023FBB0, v5, v75);

        v0 = v125;
        v78 = (*v123)(v75, 1, v74);
        v79 = v125[29];
        if (v78 != 1)
        {
          v77(v125[28], v125[18], v125[24]);
          if (Friend.checkFriendUpdateNeeded(with:)())
          {
            v81 = v125[29];
            v121 = v125[28];
            v82 = v125[24];
            v83 = v125[21];
            (*v109)(v83, v114, v125[19]);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v128[0] = v118;
            v0 = v125;
            sub_100453958(v83, v81, isUniquelyReferenced_nonNull_native);
            v85 = *v124;
            (*v124)(v121, v82);
            v70 = v128[0];
            v120 = v128[0];
          }

          else
          {
            v85 = *v124;
            (*v124)(v125[28], v125[24]);
            v70 = v118;
          }

          v85(v0[29], v0[24]);
          goto LABEL_35;
        }

        v80 = v125[24];
        sub_100002CE0(v125[18], &qword_1005A9188, &unk_1004D80D0);
        (*v124)(v79, v80);
        v71 = v67;
        v5 = v111;
        v70 = v118;
      }

      while (v3);
LABEL_37:
      while (1)
      {
        v67 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          break;
        }

        if (v67 >= v1)
        {
          *v104 = v70;

          v86 = v120;
          if (*(v120 + 16))
          {
            if ((v0[41] & 1) == 0)
            {
              v92 = v0[4];

              v94 = sub_10024063C(v93, v92, v104);

              swift_bridgeObjectRelease_n();
              v86 = v94;
            }

            v95 = v0[36];
            v96 = sub_10023D234(v86, &enum case for HandleType.follower(_:), &enum case for FriendshipAction.add(_:));
            v97 = sub_10021B9A4(v96);

            v98 = sub_1002410F8(v86, v97);
            v0[37] = v98;
            v0[38] = 0;
            swift_bridgeObjectRelease_n();

            v0[2] = v98;
            v99 = *(v95 + 16);

            if (v99)
            {
              v100 = swift_task_alloc();
              v0[40] = v100;
              *v100 = v0;
              v100[1] = sub_1002292C8;

              return sub_10022A3D0(v98);
            }

            else
            {
              v101 = swift_task_alloc();
              v0[39] = v101;
              *v101 = v0;
              v101[1] = sub_100228844;
              v102 = v0[3];

              return sub_100229B00(v102);
            }
          }

          else
          {

            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              *v89 = 0;
              _os_log_impl(&_mh_execute_header, v87, v88, "No friends to update.", v89, 2u);
            }

            v127 = sub_100209928(_swiftEmptyArrayStorage);

            v90 = v0[1];

            return v90(v127);
          }
        }

        v3 = *(v126 + 8 * v67);
        ++v71;
        if (v3)
        {
          goto LABEL_40;
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v1 = v22;
LABEL_16:
    v30 = v125[33];
    v31 = v125[34];
    v32 = v125[32];
    v33 = v125[24];
    v3 = v115;
    v119 = *(v115 + 72);
    v34 = *(v115 + 16);
    v34(v31, *(v110 + 48) + v119 * (__clz(__rbit64(v5)) | (v1 << 6)), v33);
    (*(v115 + 32))(v30, v31, v33);
    v122 = v34;
    v34(v32, v30, v33);
    if (*(v116 + 16) && (sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend), v35 = dispatch thunk of Hashable._rawHashValue(seed:)(), v36 = -1 << *(v116 + 32), v37 = v35 & ~v36, ((*(v126 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
    {
      v3 = ~v36;
      while (1)
      {
        v38 = v125[31];
        v39 = v125[24];
        v34(v38, *(v116 + 48) + v37 * v119, v39);
        sub_1000093F8(&qword_1005AE9B8, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v124)(v38, v39);
        if (v40)
        {
          break;
        }

        v37 = (v37 + 1) & v3;
        if (((*(v126 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v41 = v103;
    }

    else
    {
LABEL_21:
      v41 = v105;
    }

    v0 = v125;
    v42 = v125[32];
    v44 = v125[22];
    v43 = v125[23];
    v45 = v125[19];
    (*v109)(v43, v41, v45);
    v46 = *v112;
    (*v112)(v44, v43, v45);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v128[0] = v117;
    v48 = sub_1001FDC28(v42);
    v50 = v117[2];
    v51 = (v49 & 1) == 0;
    v52 = __OFADD__(v50, v51);
    v53 = v50 + v51;
    if (v52)
    {
      goto LABEL_68;
    }

    v54 = v49;
    if (v117[3] < v53)
    {
      break;
    }

    if ((v47 & 1) == 0)
    {
      v65 = v48;
      sub_100204710();
      v48 = v65;
      v117 = v128[0];
    }

LABEL_28:
    v5 &= v5 - 1;
    v58 = v125[32];
    v113 = v125[33];
    v59 = v125[24];
    v60 = v125[22];
    v61 = v125[19];
    if (v54)
    {
      v28 = v117;
      (*(v108 + 40))(v117[7] + *(v108 + 72) * v48, v125[22], v125[19]);
      v29 = *v124;
      (*v124)(v58, v59);
      v29(v113, v59);
    }

    else
    {
      v28 = v117;
      v117[(v48 >> 6) + 8] |= 1 << v48;
      v3 = v48;
      v122(v117[6] + v48 * v119, v58, v59);
      v46(v117[7] + *(v108 + 72) * v3, v60, v61);
      v62 = *v124;
      (*v124)(v58, v59);
      v62(v113, v59);
      v63 = v117[2];
      v52 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v52)
      {
        goto LABEL_69;
      }

      v117[2] = v64;
    }

    v22 = v1;
    v27 = v28;
    v3 = v116;
    v26 = v106;
    v23 = v107;
  }

  v55 = v125[32];
  sub_10022FCBC(v53, v47);
  v56 = v128[0];
  v48 = sub_1001FDC28(v55);
  if ((v54 & 1) == (v57 & 1))
  {
    v117 = v56;
    goto LABEL_28;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100228844()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100228954, v1, 0);
}

uint64_t sub_100228954()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[25];
  v4 = v0[20];
  v5 = v0[11];
  v95 = v0[10];
  v78 = sub_10023D234(v1, &enum case for HandleType.futureFollowing(_:), &enum case for FriendshipAction.remove(_:));
  result = sub_10023D234(v1, &enum case for HandleType.following(_:), &enum case for FriendshipAction.add(_:));
  v7 = 0;
  v8 = result + 64;
  v76 = result;
  v9 = -1;
  v10 = -1 << *(result + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(result + 64);
  v12 = (63 - v10) >> 6;
  v94 = (v4 + 16);
  v92 = (v3 + 56);
  v93 = (v5 + 48);
  v71 = (v4 + 8);
  v72 = v12;
  v74 = result + 64;
  while (v11)
  {
    v90 = v2;
LABEL_13:
    v17 = v0[25];
    v19 = v0[19];
    v18 = v0[20];
    v21 = v0[14];
    v20 = v0[15];
    v82 = v0[24];
    v84 = v0[9];
    v86 = v0[8];
    v88 = v0[10];
    v22 = __clz(__rbit64(v11)) | (v7 << 6);
    (*(v17 + 16))(v20, *(v76 + 48) + *(v17 + 72) * v22);
    v23 = *(v76 + 56) + *(v18 + 72) * v22;
    v24 = *(v95 + 48);
    (*v94)(v20 + v24, v23, v19);
    v25 = *(v95 + 48);
    v80 = *(v17 + 32);
    v80(v21, v20, v82);
    (*(v18 + 32))(v21 + v25, v20 + v24, v19);
    v26 = swift_task_alloc();
    *(v26 + 16) = v21;
    v2 = v90;
    sub_1004501F8(sub_100241538, v26, v78, v84);

    sub_100005F04(v84, v86, &qword_1005AFFF8, &unk_1004D2ED0);
    if ((*v93)(v86, 1, v88) == 1)
    {
      v13 = v0[24];
      v14 = v0[17];
      v15 = v0[8];
      sub_100002CE0(v0[9], &qword_1005AFFF8, &unk_1004D2ED0);
      sub_100002CE0(v15, &qword_1005AFFF8, &unk_1004D2ED0);
      (*v92)(v14, 1, 1, v13);
LABEL_5:
      v12 = v72;
      v8 = v74;
      sub_100002CE0(v0[17], &qword_1005A9188, &unk_1004D80D0);
      goto LABEL_6;
    }

    v27 = v0[24];
    v28 = v0[25];
    v29 = v0[19];
    v30 = v0[17];
    v31 = v0[8];
    v32 = *(v95 + 48);
    v80(v30, v31, v27);
    (*v92)(v30, 0, 1, v27);
    (*v71)(v31 + v32, v29);
    if ((*(v28 + 48))(v30, 1, v27) == 1)
    {
      sub_100002CE0(v0[9], &qword_1005AFFF8, &unk_1004D2ED0);
      goto LABEL_5;
    }

    v33 = v0[27];
    v34 = v0[24];
    v35 = v0[25];
    v36 = v0[9];
    v37 = v0[5];
    v80(v33, v0[17], v34);
    sub_1001FF13C(v33, v37);
    sub_100002CE0(v37, &qword_1005B0548, &qword_1004D1E90);
    (*(v35 + 8))(v33, v34);
    sub_100002CE0(v36, &qword_1005AFFF8, &unk_1004D2ED0);
    v12 = v72;
    v8 = v74;
LABEL_6:
    v11 &= v11 - 1;
    result = sub_100002CE0(v0[14], &qword_1005AFFE0, &qword_1004D6060);
  }

  while (1)
  {
    v16 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v16 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v16);
    ++v7;
    if (v11)
    {
      v90 = v2;
      v7 = v16;
      goto LABEL_13;
    }
  }

  v38 = v0[2];
  v79 = sub_10023D234(v38, &enum case for HandleType.futureFollower(_:), &enum case for FriendshipAction.remove(_:));
  result = sub_10023D234(v38, &enum case for HandleType.follower(_:), &enum case for FriendshipAction.add(_:));
  v39 = 0;
  v40 = result + 64;
  v75 = result + 64;
  v77 = result;
  v41 = -1;
  v42 = -1 << *(result + 32);
  if (-v42 < 64)
  {
    v41 = ~(-1 << -v42);
  }

  v43 = v41 & *(result + 64);
  v44 = (63 - v42) >> 6;
  v73 = v44;
  while (2)
  {
    if (v43)
    {
      v91 = v2;
LABEL_28:
      v51 = v0[25];
      v53 = v0[19];
      v52 = v0[20];
      v55 = v0[12];
      v54 = v0[13];
      v83 = v0[24];
      v85 = v0[7];
      v87 = v0[6];
      v89 = v0[10];
      v56 = __clz(__rbit64(v43)) | (v39 << 6);
      (*(v51 + 16))(v54, *(v77 + 48) + *(v51 + 72) * v56);
      v57 = *(v77 + 56) + *(v52 + 72) * v56;
      v58 = *(v95 + 48);
      (*v94)(v54 + v58, v57, v53);
      v59 = *(v95 + 48);
      v81 = *(v51 + 32);
      v81(v55, v54, v83);
      (*(v52 + 32))(v55 + v59, v54 + v58, v53);
      v60 = swift_task_alloc();
      *(v60 + 16) = v55;
      v2 = v91;
      sub_1004501F8(sub_1002412B8, v60, v79, v85);

      sub_100005F04(v85, v87, &qword_1005AFFF8, &unk_1004D2ED0);
      if ((*v93)(v87, 1, v89) == 1)
      {
        v61 = v0[24];
        v62 = v0[16];
        v63 = v0[6];
        sub_100002CE0(v0[7], &qword_1005AFFF8, &unk_1004D2ED0);
        sub_100002CE0(v63, &qword_1005AFFF8, &unk_1004D2ED0);
        (*v92)(v62, 1, 1, v61);
        goto LABEL_32;
      }

      v64 = v0[24];
      v65 = v0[25];
      v66 = v0[19];
      v67 = v0[16];
      v68 = v0[6];
      v69 = *(v95 + 48);
      v81(v67, v68, v64);
      (*v92)(v67, 0, 1, v64);
      (*v71)(v68 + v69, v66);
      if ((*(v65 + 48))(v67, 1, v64) == 1)
      {
        sub_100002CE0(v0[7], &qword_1005AFFF8, &unk_1004D2ED0);
LABEL_32:
        v44 = v73;
        v40 = v75;
        sub_100002CE0(v0[16], &qword_1005A9188, &unk_1004D80D0);
      }

      else
      {
        v46 = v0[25];
        v45 = v0[26];
        v47 = v0[24];
        v48 = v0[7];
        v49 = v0[5];
        v81(v45, v0[16], v47);
        sub_1001FF13C(v45, v49);
        sub_100002CE0(v49, &qword_1005B0548, &qword_1004D1E90);
        (*(v46 + 8))(v45, v47);
        sub_100002CE0(v48, &qword_1005AFFF8, &unk_1004D2ED0);
        v44 = v73;
        v40 = v75;
      }

      v43 &= v43 - 1;
      result = sub_100002CE0(v0[12], &qword_1005AFFE0, &qword_1004D6060);
      continue;
    }

    break;
  }

  while (1)
  {
    v50 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v50 >= v44)
    {

      v96 = v0[2];

      v70 = v0[1];

      return v70(v96);
    }

    v43 = *(v40 + 8 * v50);
    ++v39;
    if (v43)
    {
      v91 = v2;
      v39 = v50;
      goto LABEL_28;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1002292C8()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100241554, v1, 0);
}

uint64_t sub_1002293D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12)
{
  v66 = a6;
  v73 = a7;
  v74 = a8;
  v63 = a5;
  v65 = a4;
  v64 = a3;
  v72 = a9;
  v14 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  __chkstk_darwin(v14 - 8);
  v71 = &v55 - v15;
  v16 = type metadata accessor for ClientOrigin();
  v68 = *(v16 - 8);
  v69 = v16;
  __chkstk_darwin(v16);
  v70 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v19 = __chkstk_darwin(v18 - 8);
  v67 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v55 - v21;
  v62 = type metadata accessor for HandleType();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v57 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for GroupID();
  v24 = *(v56 - 8);
  __chkstk_darwin(v56);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Handle();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v78 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v79 = &v55 - v32;
  v33 = *a1;
  v34 = a1[1];
  v60 = v33;
  v35 = *(a2 + 56);
  v58 = *(a2 + 48);
  v36 = *(a2 + 24);
  v76 = v31;
  v77 = v22;
  v75 = v28;
  v59 = v34;
  if (v36)
  {

    v37 = v57;
  }

  else
  {
    sub_10004B564(&qword_1005B0538, &qword_1004D1E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C1900;
    v39 = v56;
    (*(v24 + 104))(v26, enum case for GroupID.oneToOne(_:), v56);

    v55 = v35;

    v40 = GroupID.rawValue.getter();
    v42 = v41;
    (*(v24 + 8))(v26, v39);
    *(inited + 32) = v40;
    v43 = inited + 32;
    *(inited + 40) = v42;
    v28 = v75;
    v27 = v76;
    v37 = v57;
    *(inited + 48) = *(a2 + 16);
    sub_100209188(inited);
    v22 = v77;
    swift_setDeallocating();
    sub_100002CE0(v43, &qword_1005B0540, &qword_1004D1E88);
  }

  v44 = v79;
  Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
  (*(v28 + 16))(v78, v44, v27);
  (*(v61 + 16))(v37, v66, v62);
  v45 = v67;
  if (*(a2 + 16) == 0.0)
  {
    v46 = 1;
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
    v46 = 0;
  }

  v47 = type metadata accessor for Date();
  v48 = *(*(v47 - 8) + 56);
  v48(v22, v46, 1, v47);
  if (*(a2 + 8) == 1 && (*(a2 + 128) & 1) != 0)
  {
    v49 = 1;
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
    v49 = 0;
  }

  v48(v45, v49, 1, v47);
  v50 = *(a2 + 146);
  if (v50 == 2 || (v50 & 1) == 0)
  {
    v53 = *(a2 + 104);
    v52 = *(a2 + 112);

    v80._countAndFlagsBits = v53;
    v80._object = v52;
    if (((sub_100163D00(v80) - 3) & 0xFE) != 0)
    {
      v51 = &enum case for ClientOrigin.findMyApp(_:);
    }

    else
    {
      v51 = &enum case for ClientOrigin.other(_:);
    }
  }

  else
  {
    v51 = &enum case for ClientOrigin.messagesApp(_:);
  }

  (*(v68 + 104))(v70, *v51, v69);
  sub_100005F04(a12, v71, &qword_1005B3360, &unk_1004C6AA0);
  Friend.init(handle:type:expiry:createdAt:origin:secureLocationsCapable:shallowOrLiveSecureLocationsCapable:fallbackToLegacyAllowed:fallbackToLegacy:optedNotToShare:ownerHandle:)();
  return (*(v75 + 8))(v79, v76);
}

uint64_t sub_100229B00(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_100229B94;

  return daemon.getter();
}

uint64_t sub_100229B94(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000093F8(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_100229D70;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100229D70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_10022A028, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[10] = v6;
    *v6 = v4;
    v6[1] = sub_100229F00;
    v7 = v3[3];

    return sub_100305C14(v7);
  }
}

uint64_t sub_100229F00()
{
  v2 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_10022A1FC;
  }

  else
  {
    v3 = sub_10024155C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10022A028()
{
  v13 = v0;
  v1 = v0[9];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager storeIntoLocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10022A1FC()
{
  v13 = v0;
  v1 = v0[11];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager storeIntoLocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10022A3D0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_10022A464;

  return daemon.getter();
}

uint64_t sub_10022A464(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000093F8(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_10022A640;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10022A640(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_10022A958, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[10] = v6;
    *v6 = v4;
    v6[1] = sub_10022A7D0;
    v7 = v3[3];

    return sub_100305EC8(v7);
  }
}

uint64_t sub_10022A7D0()
{
  v2 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_10022AB2C;
  }

  else
  {
    v3 = sub_10022A8F8;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10022A8F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022A958()
{
  v13 = v0;
  v1 = v0[9];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager update LocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10022AB2C()
{
  v13 = v0;
  v1 = v0[11];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager update LocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10022AD00(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v3 = type metadata accessor for Handle();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  sub_100005F04(a2, &v24 - v14, &qword_1005AFFE0, &qword_1004D6060);
  v24 = *(v10 + 56);
  Friend.handle.getter();
  v16 = type metadata accessor for Friend();
  v17 = *(*(v16 - 8) + 8);
  v17(v15, v16);
  sub_100005F04(v25, v13, &qword_1005AFFE0, &qword_1004D6060);
  v18 = *(v10 + 56);
  Friend.handle.getter();
  v17(v13, v16);
  LOBYTE(v16) = static Handle.== infix(_:_:)();
  v19 = v27;
  v20 = *(v26 + 8);
  v20(v6, v27);
  v20(v8, v19);
  v21 = type metadata accessor for FriendshipAction();
  v22 = *(*(v21 - 8) + 8);
  v22(&v13[v18], v21);
  v22(&v15[v24], v21);
  return v16 & 1;
}

void sub_10022AFA0(uint64_t a1)
{
  v2 = type metadata accessor for Friend();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Handle();
  __chkstk_darwin(v41);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v39 = (v6 + 8);
    v36 = (v3 + 8);
    v37 = (v3 + 16);
    v34 = "ent(updatedFriends:)";
    v32 = _swiftEmptyArrayStorage;
    *&v7 = 136446723;
    v33 = v7;
    v38 = v9;
    do
    {
      v11 = v10;
      while (1)
      {
        if (v11 >= v9)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        if (__OFADD__(v11, 1))
        {
          goto LABEL_22;
        }

        v42 = v11 + 1;
        v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11;
        v13 = v40;
        Friend.handle.getter();
        v14 = Handle.serverID.getter();
        v16 = v15;
        (*v39)(v13, v41);
        if (v16)
        {
          break;
        }

        if (qword_1005A7EA8 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_10000A6F0(v17, qword_1005DFAB8);
        (*v37)(v5, v12, v2);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v43 = v35;
          *v20 = v33;
          *(v20 + 4) = sub_10000D01C(0xD00000000000003FLL, v34 | 0x8000000000000000, &v43);
          *(v20 + 12) = 2160;
          *(v20 + 14) = 1752392040;
          *(v20 + 22) = 2081;
          sub_1000093F8(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
          v21 = dispatch thunk of CustomStringConvertible.description.getter();
          v22 = v3;
          v23 = a1;
          v25 = v24;
          (*v36)(v5, v2);
          v26 = sub_10000D01C(v21, v25, &v43);
          a1 = v23;
          v3 = v22;

          *(v20 + 24) = v26;
          _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: ServerID is nil for friend: %{private,mask.hash}s", v20, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          (*v36)(v5, v2);
        }

        ++v11;
        v9 = v38;
        if (v42 == v38)
        {
          goto LABEL_20;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1001FC900(0, *(v32 + 2) + 1, 1, v32);
      }

      v10 = v42;
      v28 = *(v32 + 2);
      v27 = *(v32 + 3);
      if (v28 >= v27 >> 1)
      {
        v32 = sub_1001FC900((v27 > 1), v28 + 1, 1, v32);
      }

      v29 = v32;
      *(v32 + 2) = v28 + 1;
      v30 = &v29[16 * v28];
      *(v30 + 4) = v14;
      *(v30 + 5) = v16;
    }

    while (v10 != v9);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

LABEL_20:
  sub_10023F00C(v32);
}

uint64_t sub_10022B46C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for Handle();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v36 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v9 = __chkstk_darwin(v36);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  sub_100005F04(a1, &v31 - v12, &qword_1005AFFE0, &qword_1004D6060);
  Friend.handle.getter();
  v14 = type metadata accessor for Friend();
  v15 = *(*(v14 - 8) + 8);
  v15(v13, v14);
  v16 = Handle.identifier.getter();
  v32 = v17;
  v33 = v16;
  v18 = v4 + 8;
  v19 = *(v4 + 8);
  v31 = v18;
  v19(v8, v3);
  sub_100005F04(v35, v11, &qword_1005AFFE0, &qword_1004D6060);
  v20 = v34;
  Friend.handle.getter();
  v15(v11, v14);
  v21 = v20;
  v22 = Handle.identifier.getter();
  v24 = v23;
  v19(v21, v3);
  if (v33 == v22 && v32 == v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v27 = *(v36 + 48);
  v28 = type metadata accessor for FriendshipAction();
  v29 = *(*(v28 - 8) + 8);
  v29(&v11[v27], v28);
  v29(&v13[v27], v28);
  return v26 & 1;
}

uint64_t sub_10022B76C(uint64_t a1, void (*a2)(char *, uint64_t), unsigned int *a3)
{
  v37 = a3;
  v41 = a2;
  v4 = type metadata accessor for HandleType();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = __chkstk_darwin(v4);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v35 = &v32 - v7;
  v8 = type metadata accessor for Handle();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v34 = a1;
  sub_100005F04(a1, &v32 - v16, &qword_1005AFFE0, &qword_1004D6060);
  v40 = *(v15 + 48);
  Friend.handle.getter();
  v18 = type metadata accessor for Friend();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v32 = v19 + 8;
  v33 = v20;
  v20(v17, v18);
  Friend.handle.getter();
  v21 = static Handle.== infix(_:_:)();
  v22 = *(v9 + 8);
  v22(v12, v8);
  v22(v14, v8);
  v23 = type metadata accessor for FriendshipAction();
  v24 = *(*(v23 - 8) + 8);
  v24(&v17[v40], v23);
  if (v21)
  {
    sub_100005F04(v34, v17, &qword_1005AFFE0, &qword_1004D6060);
    v40 = *(v15 + 48);
    v41 = v24;
    v25 = v35;
    Friend.type.getter();
    v33(v17, v18);
    v26 = v38;
    v27 = v36;
    v28 = v39;
    (*(v38 + 104))(v36, *v37, v39);
    v29 = static HandleType.== infix(_:_:)();
    v30 = *(v26 + 8);
    v30(v27, v28);
    v30(v25, v28);
    v41(&v17[v40], v23);
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_10022BB24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10022BBB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void *sub_10022BC70(uint64_t a1, uint64_t a2)
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

  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
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

void *sub_10022BD44(uint64_t a1, uint64_t a2)
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

  sub_10004B564(&qword_1005B04F8, &qword_1004D1E20);
  v4 = *(sub_10004B564(&qword_1005AFFE0, &qword_1004D6060) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10022BE4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B0120, &qword_1004D16B0);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 48 * v23);
      if (v38)
      {
        v28 = *v27;
        v29 = v27[1];
        *(v40 + 9) = *(v27 + 25);
        v39 = v28;
        v40[0] = v29;
      }

      else
      {
        sub_1000534E8(v27, &v39);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = (*(v7 + 56) + 48 * v15);
      v18 = v39;
      v19 = v40[0];
      *(v17 + 25) = *(v40 + 9);
      *v17 = v18;
      v17[1] = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10022C11C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B0158, &qword_1004D16E8);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 48 * v23);
      if (v38)
      {
        v28 = *v27;
        v29 = v27[1];
        *(v40 + 10) = *(v27 + 26);
        v39 = v28;
        v40[0] = v29;
      }

      else
      {
        sub_10005345C(v27, &v39);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = (*(v7 + 56) + 48 * v15);
      v18 = v39;
      v19 = v40[0];
      *(v17 + 26) = *(v40 + 10);
      *v17 = v18;
      v17[1] = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10022C3EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005A8A40, &qword_1004C18E0);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10022C6A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B0090, &qword_1004D1620);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10022C9DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v42 - v11;
  v12 = *v5;
  sub_10004B564(a4, a5);
  v47 = v9;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_10022CD60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B00F8, &qword_1004D1688);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = (*(v5 + 56) + 32 * v22);
      if (v4)
      {
        sub_10004B064(v24, v30);
      }

      else
      {
        sub_10000709C(v24, v30);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      result = sub_10004B064(v30, (*(v7 + 56) + 32 * v18));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_10022D114(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_10004B564(a3, a4);
  v36 = v7;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_10000709C(v27, v38);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 32 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

Swift::Int sub_10022D3D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B01E8, &qword_1004D1770);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10022D678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B00C8, &qword_1004D1658);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10022D944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v56 = a3(0);
  v10 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v44 - v11;
  v12 = type metadata accessor for Handle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v57 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  sub_10004B564(a4, a5);
  v51 = v9;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v13;
    v23 = v21 & *(v15 + 64);
    v24 = (v20 + 63) >> 6;
    v47 = (v22 + 16);
    v48 = v22;
    v45 = v5;
    v46 = v10 + 16;
    v49 = v15;
    v50 = v10;
    v52 = (v10 + 32);
    v53 = (v22 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v54 = *(v22 + 72);
      v32 = v31 + v54 * v30;
      if (v51)
      {
        (*v53)(v57, v32, v12);
        v33 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 32))(v55, v33 + v34 * v30, v56);
      }

      else
      {
        (*v47)(v57, v32, v12);
        v35 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 16))(v55, v35 + v34 * v30, v56);
      }

      sub_1000093F8(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v53)((*(v17 + 48) + v54 * v26), v57, v12);
      result = (*v52)(*(v17 + 56) + v34 * v26, v55, v56);
      ++*(v17 + 16);
      v22 = v48;
      v15 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v24)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v15 + 32);
    v8 = v45;
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v8 = v17;
  return result;
}

Swift::Int sub_10022DDE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B01D0, &qword_1004D1758);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10022E0C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B0118, &qword_1004D16A8);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 88 * v21;
      if (v38)
      {
        v47 = *(v25 + 32);
        v48 = *(v25 + 48);
        v49 = *(v25 + 64);
        v50 = *(v25 + 80);
        v45 = *v25;
        v46 = *(v25 + 16);
      }

      else
      {
        v26 = *(v25 + 16);
        v39 = *v25;
        v40 = v26;
        v28 = *(v25 + 48);
        v27 = *(v25 + 64);
        v29 = *(v25 + 32);
        v44 = *(v25 + 80);
        v42 = v28;
        v43 = v27;
        v41 = v29;

        sub_100182FA8(&v39, &v45);
        v47 = v41;
        v48 = v42;
        v49 = v43;
        v50 = v44;
        v45 = v39;
        v46 = v40;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 88 * v15;
      *(v17 + 32) = v47;
      *(v17 + 48) = v48;
      *(v17 + 64) = v49;
      *(v17 + 80) = v50;
      *v17 = v45;
      *(v17 + 16) = v46;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10022E428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B0288, &qword_1004D1830);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 2 * v21);
      v26 = *v25;
      v37 = v25[1];
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 2 * v15);
      *v17 = v26;
      v17[1] = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10022E6E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B01B8, &qword_1004D1740);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v38 = *v24;
      v39 = *v22;
      v26 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10022E9B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B0128, &qword_1004D16B8);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = v23[1];
      v39 = *v23;
      v25 = *(v5 + 56) + v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      if ((v38 & 1) == 0)
      {

        sub_100139350(v26, v27);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v39;
      v17[1] = v24;
      v18 = *(v7 + 56) + v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10022EC9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = *v2;
  sub_10004B564(&qword_1005B0360, &qword_1004D1988);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v23;
      v39 = *(*(v8 + 48) + 16 * v23);
      v26 = *(&v39 + 1);
      if (v38)
      {
        sub_1000176A8(v25, v7, &qword_1005AAC60, &qword_1004C46E8);
      }

      else
      {
        sub_100005F04(v25, v7, &qword_1005AAC60, &qword_1004C46E8);
        sub_100005F6C(v39, v26);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v19 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v19 = v39;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v19;
      result = sub_1000176A8(v7, *(v10 + 56) + v24 * v18, &qword_1005AAC60, &qword_1004C46E8);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

Swift::Int sub_10022F058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v49 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v46 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v48 = &v43 - v12;
  v13 = *v6;
  sub_10004B564(a4, a5);
  v47 = v10;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v44 = v6;
    v45 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v46 + 72);
      v34 = v29 + v33 * v28;
      if (v47)
      {
        sub_100241440(v34, v48, v49);
      }

      else
      {
        sub_1002413D8(v34, v48, v49);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = sub_100241440(v48, *(v15 + 56) + v33 * v23, v49);
      ++*(v15 + 16);
      v13 = v45;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

uint64_t sub_10022F398(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Destination();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10004B564(&qword_1005B0298, &qword_1004D1840);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000093F8(&qword_1005AADF8, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}