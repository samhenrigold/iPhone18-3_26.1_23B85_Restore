uint64_t sub_100596AA0(id *__src, id *a2, id *a3, unint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = v52 - v17 + 7;
        if (v52 - v17 >= 0)
        {
          v43 = v52 - v17;
        }

        if (v7 < v17 || v7 >= (v17 + (v43 & 0xFFFFFFFFFFFFFFF8)) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = v17 + 1;
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = v52 + v25;
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = v5 + 1;
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= (v14 + (v44 & 0xFFFFFFFFFFFFFFF8)) || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

void *sub_100596E68(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v5 = v3;
  v6 = sub_1003BE178(v4);
  sub_10031EBC8((v6 + 4), v5, a1);
  v8 = v7;

  result = v6;
  if (v8 != v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_100596EFC(unint64_t a1, char **a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_1005944C8(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100597000()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(AKAnisetteProvisioningController) init];
  v17 = 0;
  v5 = [v4 anisetteDataWithError:&v17];

  if (v5)
  {
    v6 = v17;
    v7 = [v5 machineID];

    if (v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v8;
    }
  }

  else
  {
    v10 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    defaultLogger()();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to get machine ID %@", v13, 0xCu);
      sub_10000BE18(v14, &unk_100833B50, &unk_1006D8FB0);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
  }

  return 0;
}

void sub_1005972A4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v46 - v11;
  v13 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);

  os_unfair_lock_unlock((v13 + 24));
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = *(v14 + 16);
  if (!v15)
  {

LABEL_11:
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "no phone numbers available", v25, 2u);
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_14;
  }

  if ((a1 & 1) == 0)
  {
    v47 = a3;
    v26 = sub_10001F298();
    v46[1] = v14;
    v27 = (v14 + 40);
    v28 = _swiftEmptyArrayStorage;
    while (1)
    {
      v29 = *(v27 - 1);
      v30 = *v27;
      v52 = v29;
      v53 = v30;
      v50 = 48;
      v51 = 0xE100000000000000;
      v48 = 0;
      v49 = 0xE000000000000000;

      v44 = v26;
      v45 = v26;
      v43[1] = v26;
      v43[0] = &type metadata for String;
      v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v33 = v32;
      v34 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v34 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (!v34 || (v35 = v31, v52 = v29, v53 = v30, __chkstk_darwin(v31), v44 = &v52, (sub_10035C8E4(sub_1000F713C, v43, v28) & 1) != 0))
      {
      }

      else
      {

        v36 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v36 = v35 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1003C5110(0, *(v28 + 2) + 1, 1, v28);
          }

          v38 = *(v28 + 2);
          v37 = *(v28 + 3);
          if (v38 >= v37 >> 1)
          {
            v28 = sub_1003C5110((v37 > 1), v38 + 1, 1, v28);
          }

          *(v28 + 2) = v38 + 1;
          v39 = &v28[16 * v38];
          *(v39 + 4) = v29;
          *(v39 + 5) = v30;
          goto LABEL_18;
        }
      }

LABEL_18:
      v27 += 2;
      if (!--v15)
      {

        sub_1005A0174(v28, v47);

        return;
      }
    }
  }

  v16 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctDefaultVoiceNumber);
  os_unfair_lock_lock((v16 + 32));
  v18 = *(v16 + 16);
  v17 = *(v16 + 24);

  os_unfair_lock_unlock((v16 + 32));
  if (!v17)
  {
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "no default voice numbers available", v42, 2u);
    }

    (*(v7 + 8))(v12, v6);
LABEL_14:
    dispatch_group_leave(*(a3 + 16));
    return;
  }

  v19 = sub_1003C5110(0, 1, 1, _swiftEmptyArrayStorage);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1003C5110((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[16 * v21];
  *(v22 + 4) = v18;
  *(v22 + 5) = v17;
  sub_1005A0174(v19, a3);
}

void sub_100597774(char a1, uint64_t a2, void *a3, NSObject *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v53 - v13;
  v15 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);

  os_unfair_lock_unlock((v15 + 24));
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = *(v16 + 16);
  if (!v17)
  {

LABEL_11:
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "no phone numbers available", v29, 2u);
    }

    (*(v9 + 8))(v12, v8);
    v30 = a4;
    goto LABEL_14;
  }

  v54 = a3;
  v55 = a4;
  if (a1)
  {

    v18 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctDefaultVoiceNumber);
    os_unfair_lock_lock((v18 + 32));
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);

    os_unfair_lock_unlock((v18 + 32));
    if (v20)
    {
      v21 = sub_1003C5110(0, 1, 1, _swiftEmptyArrayStorage);
      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1003C5110((v22 > 1), v23 + 1, 1, v21);
      }

      v24 = v54;
      *(v21 + 2) = v23 + 1;
      v25 = &v21[16 * v23 + 32];
      *v25 = v19;
      *(v25 + 1) = v20;
      v26 = *(v21 + 5);
      *v24 = *(v21 + 4);
      v24[1] = v26;

      dispatch_group_leave(v55);

      return;
    }

    defaultLogger()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "no default voice numbers available", v49, 2u);
    }

    (*(v9 + 8))(v14, v8);
    v30 = v55;
LABEL_14:
    dispatch_group_leave(v30);
    return;
  }

  v31 = sub_10001F298();
  v53 = v16;
  v32 = (v16 + 40);
  v33 = _swiftEmptyArrayStorage;
  do
  {
    v34 = *(v32 - 1);
    v35 = *v32;
    v60 = v34;
    v61 = v35;
    v58 = 48;
    v59 = 0xE100000000000000;
    v56 = 0;
    v57 = 0xE000000000000000;

    v51 = v31;
    v52 = v31;
    v50[1] = v31;
    v50[0] = &type metadata for String;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v38 = v37;
    v39 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v39 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v39 || (v40 = v36, v60 = v34, v61 = v35, __chkstk_darwin(v36), v51 = &v60, (sub_10035C8E4(sub_1000307C0, v50, v33) & 1) != 0))
    {

LABEL_17:

      goto LABEL_18;
    }

    v41 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v41 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (!v41)
    {
      goto LABEL_17;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1003C5110(0, *(v33 + 2) + 1, 1, v33);
    }

    v43 = *(v33 + 2);
    v42 = *(v33 + 3);
    if (v43 >= v42 >> 1)
    {
      v33 = sub_1003C5110((v42 > 1), v43 + 1, 1, v33);
    }

    *(v33 + 2) = v43 + 1;
    v44 = &v33[16 * v43];
    *(v44 + 4) = v34;
    *(v44 + 5) = v35;
LABEL_18:
    v32 += 2;
    --v17;
  }

  while (v17);

  if (*(v33 + 2))
  {
    v45 = *(v33 + 5);
    v46 = v54;
    *v54 = *(v33 + 4);
    v46[1] = v45;
  }

  dispatch_group_leave(v55);
}

uint64_t sub_100597CA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100597CE8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  v11 = type metadata accessor for UUID();
  v62 = *(v11 - 8);
  v63 = v11;
  __chkstk_darwin(v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_ctClient);
  v67 = 0;
  v15 = [v14 getUserDefaultVoiceSubscriptionContext:&v67];
  if (!v15)
  {
    v43 = v67;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_27:
    defaultLogger()();
    swift_errorRetain();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v61 = v4;
      v53 = v8;
      v54 = v52;
      v67 = v52;
      *v51 = 136315138;
      swift_getErrorValue();
      v55 = Error.localizedDescription.getter();
      v57 = sub_100141FE4(v55, v56, &v67);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "error retrieving ICCID: %s", v51, 0xCu);
      sub_10000BB78(v54);

      (*(v5 + 8))(v53, v61);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    dispatch_group_leave(a2[2]);
    return;
  }

  v16 = v15;
  v17 = v67;
  v18 = [v16 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = 0;
  v19 = [v14 getSubscriptionInfoWithError:&v67];
  if (!v19)
  {
    v44 = v67;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v62 + 8))(v13, v63);
    goto LABEL_27;
  }

  v20 = v19;
  v21 = v67;
  v22 = [v20 subscriptionsInUse];

  if (v22)
  {
    v58 = v8;
    sub_10001F8D4(0, &qword_1008410B8, CTXPCServiceSubscriptionContext_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v23);
    *(&v58 - 2) = v13;

    v67 = sub_100596E68(v24);
    sub_100596118(sub_100598B00, (&v58 - 4));
    v59 = v5;
    v60 = a2;

    v25 = v67;
    if ((v67 & 0x8000000000000000) != 0 || (v67 & 0x4000000000000000) != 0)
    {
      goto LABEL_33;
    }

    for (i = *(v67 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v61 = v4;
      v27 = 0;
      v65 = v14;
      v66 = v25 & 0xC000000000000001;
      v28 = _swiftEmptyArrayStorage;
      v64 = v25;
      while (1)
      {
        if (v66)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *(v25 + 16))
          {
            goto LABEL_32;
          }

          v29 = *(v25 + 8 * v27 + 32);
        }

        v30 = v29;
        v14 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v67 = 0;
        v31 = [v65 copySIMIdentity:v29 error:&v67];
        v32 = v67;
        if (!v31)
        {
          v48 = v67;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          (*(v62 + 8))(v13, v63);
          a2 = v60;
          v4 = v61;
          v8 = v58;
          v5 = v59;
          goto LABEL_27;
        }

        v33 = v31;
        v34 = i;
        v35 = v13;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
        v39 = v32;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1003C5110(0, *(v28 + 2) + 1, 1, v28);
        }

        v4 = *(v28 + 2);
        v40 = *(v28 + 3);
        if (v4 >= v40 >> 1)
        {
          v28 = sub_1003C5110((v40 > 1), v4 + 1, 1, v28);
        }

        *(v28 + 2) = v4 + 1;
        v41 = &v28[16 * v4];
        *(v41 + 4) = v36;
        *(v41 + 5) = v38;
        ++v27;
        i = v34;
        v42 = v14 == v34;
        v13 = v35;
        v25 = v64;
        if (v42)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

    v28 = _swiftEmptyArrayStorage;
LABEL_35:

    sub_10059FC0C(v28, v60);
  }

  else
  {
    defaultLogger()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "No CT Subscriptions in use", v47, 2u);
    }

    (*(v5 + 8))(v10, v4);
    dispatch_group_leave(a2[2]);
  }

  (*(v62 + 8))(v13, v63);
}

void sub_1005983FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = objc_allocWithZone(LSApplicationRecord);

  v14 = sub_100595FE0(a1, a2, 0);
  if (v14)
  {
    v35 = a1;
    v36 = v12;
    v37 = v6;
    v38 = v14;
    v39 = [v14 entitlements];
    v20 = 1 << *(a3 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(a3 + 56);
    v23 = (v20 + 63) >> 6;

    v24 = 0;
    if (v22)
    {
      while (1)
      {
        v25 = v24;
LABEL_13:

        v26 = String._bridgeToObjectiveC()();

        sub_10001F8D4(0, &qword_10083AA78, NSObject_ptr);
        v27 = [v39 objectForKey:v26 ofClass:swift_getObjCClassFromMetadata()];

        if (v27)
        {
          break;
        }

        v22 &= v22 - 1;
        memset(v40, 0, 32);
        sub_10000BE18(v40, &unk_100845ED0, &qword_1006DA1D0);
        v24 = v25;
        if (!v22)
        {
          goto LABEL_10;
        }
      }

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      sub_10000BE18(v40, &unk_100845ED0, &qword_1006DA1D0);
    }

    else
    {
      while (1)
      {
LABEL_10:
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
          return;
        }

        if (v25 >= v23)
        {
          break;
        }

        v22 = *(a3 + 56 + 8 * v25);
        ++v24;
        if (v22)
        {
          goto LABEL_13;
        }
      }

      v28 = v36;
      defaultLogger()();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v40[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_100141FE4(v35, a2, v40);
        _os_log_impl(&_mh_execute_header, v29, v30, "App with bundle ID %s does not have any matching entitlements", v31, 0xCu);
        sub_10000BB78(v32);

        v33 = v39;
      }

      else
      {

        v33 = v38;
      }

      (*(v7 + 8))(v28, v37);
    }
  }

  else
  {
    defaultLogger()();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = a1;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v40[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100141FE4(v17, a2, v40);
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not find app for bundle ID %s", v18, 0xCu);
      sub_10000BB78(v19);
    }

    (*(v7 + 8))(v10, v6);
  }
}

void sub_1005988AC(uint64_t a1)
{
  v13 = [objc_opt_self() enumeratorWithOptions:0];
  v2 = [v13 nextObject];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      v4 = [v3 entitlements];
      v5 = 1 << *(a1 + 32);
      v6 = v5 < 64 ? ~(-1 << v5) : -1;
      v7 = v6 & *(a1 + 56);
      v8 = (v5 + 63) >> 6;

      v9 = 0;
      if (v7)
      {
        break;
      }

      while (1)
      {
LABEL_9:
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          return;
        }

        if (v10 >= v8)
        {
          break;
        }

        v7 = *(a1 + 56 + 8 * v10);
        ++v9;
        if (v7)
        {
          goto LABEL_12;
        }
      }

      v3 = [v13 nextObject];
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v10 = v9;
LABEL_12:

      v11 = String._bridgeToObjectiveC()();

      sub_10001F8D4(0, &qword_10083AA78, NSObject_ptr);
      v12 = [v4 objectForKey:v11 ofClass:swift_getObjCClassFromMetadata()];

      if (v12)
      {
        break;
      }

      v7 &= v7 - 1;
      memset(v14, 0, sizeof(v14));
      sub_10000BE18(v14, &unk_100845ED0, &qword_1006DA1D0);
      v9 = v10;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    sub_10000BE18(v14, &unk_100845ED0, &qword_1006DA1D0);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_100598B20()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100598B58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_100595874();
}

double sub_100598C34(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;

  return result;
}

CLLocationAccuracy sub_100598CD8()
{
  result = kCLLocationAccuracyHundredMeters * 3.0;
  *&qword_1008823E8 = kCLLocationAccuracyHundredMeters * 3.0;
  return result;
}

CLLocationAccuracy sub_100598CF8()
{
  result = kCLLocationAccuracyHundredMeters;
  qword_1008823F0 = *&kCLLocationAccuracyHundredMeters;
  return result;
}

id sub_100598D70(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a2;
  v18 = a3;
  v16 = a1;
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v15 - 8);
  __chkstk_darwin(v15);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  *&v3[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager] = 0;
  *&v3[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location] = 0;
  v9 = sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v14[1] = "ionManager";
  v14[2] = v9;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10059AEDC(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10001F484(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *&v3[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_serviceQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_authorizationStatus] = 0;
  v10 = type metadata accessor for DIPLocationHelper();
  v19.receiver = v3;
  v19.super_class = v10;
  v11 = objc_msgSendSuper2(&v19, "init");
  v12 = v18;
  sub_100599050(v16, v17, v18);

  return v11;
}

uint64_t sub_100599050(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 | a3)
  {
    v15 = *&v3[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_serviceQueue];
    v16 = swift_allocObject();
    v16[2] = v3;
    v16[3] = a3;
    v16[4] = a1;
    v16[5] = a2;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_10059AFE8;
    *(v17 + 24) = v16;
    aBlock[4] = sub_10026CBB8;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10057E264;
    aBlock[3] = &unk_100817D00;
    v18 = _Block_copy(aBlock);

    v19 = v3;
    v20 = a3;

    dispatch_sync(v15, v18);
    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "skipping init as no effective bundles provided", v13, 2u);
    }

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_1005992DC(char *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager;
  if (!*&a1[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager])
  {
    v36 = v10;
    if (a2)
    {
      v14 = [a2 bundlePath];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      if (a4)
      {
        v15 = a3;
      }

      else
      {
        v15 = 0;
      }

      if (a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      v37 = 0xD000000000000020;
      v38 = 0x8000000100722B80;

      v17._countAndFlagsBits = v15;
      v17._object = v16;
      String.append(_:)(v17);
    }

    v18 = *&a1[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_serviceQueue];
    v19 = objc_allocWithZone(CLLocationManager);
    v20 = v18;
    v21 = String._bridgeToObjectiveC()();
    v22 = [v19 initWithEffectiveBundlePath:v21 delegate:a1 onQueue:v20];

    if (v22)
    {
      v23 = v22;
      if ([v23 locationServicesAvailable])
      {
        [v23 requestWhenInUseAuthorization];
        if (qword_100832CD0 != -1)
        {
          swift_once();
        }

        [v23 setDistanceFilter:*&qword_1008823F0];
        if (qword_100832CC8 != -1)
        {
          swift_once();
        }

        [v23 setDesiredAccuracy:*&qword_1008823E8];
        v24 = objc_opt_self();
        v25 = String._bridgeToObjectiveC()();

        v26 = [v24 authorizationStatusForBundlePath:v25];

        v27 = OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_authorizationStatus;
        *&a1[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_authorizationStatus] = v26;
        defaultLogger()();
        v28 = a1;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = v28;
          v33 = v31;
          *v31 = 67240192;
          *(v31 + 1) = *&a1[v27];

          _os_log_impl(&_mh_execute_header, v29, v30, "init Authorization status is %{public}d", v33, 8u);
        }

        else
        {

          v29 = v28;
        }

        (*(v9 + 8))(v12, v36);
        [v23 requestLocation];

        goto LABEL_23;
      }
    }

LABEL_23:
    v34 = *&a1[v13];
    *&a1[v13] = v22;
  }
}

id sub_10059968C()
{
  v1 = OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager;
  v2 = *&v0[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager];
  if (!v2)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  [v2 setDelegate:0];
  if ([objc_opt_self() isMainThread])
  {
    v3 = *&v0[v1];
    if (v3)
    {
      [v3 stopUpdatingLocation];
      v4 = *&v0[v1];
    }

    else
    {
      v4 = 0;
    }

    *&v0[v1] = 0;

    v2 = 0;
    goto LABEL_9;
  }

  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v5 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10059B600;
  *(v7 + 24) = v6;
  v8 = v6;
  v14[4] = sub_10026CBB8;
  v14[5] = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10057E264;
  v14[3] = &unk_100817D78;
  v9 = _Block_copy(v14);
  v10 = v0;

  dispatch_sync(v5, v9);

  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    v12 = v8;
    v2 = sub_10059B600;
LABEL_10:
    sub_10001FE8C(v2, v12);
    v13 = type metadata accessor for DIPLocationHelper();
    v15.receiver = v0;
    v15.super_class = v13;
    return objc_msgSendSuper2(&v15, "dealloc");
  }

  __break(1u);
  return result;
}

uint64_t sub_10059994C(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  __chkstk_darwin(v5);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&a1[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location];
  if (!v16 || (v17 = v16, v37 = v9, v18 = v8, v19 = a1, v20 = v3, v21 = v2, v22 = v17, v23 = [v17 timestamp], static Date._unconditionallyBridgeFromObjectiveC(_:)(), v23, Date.timeIntervalSinceNow.getter(), v25 = v24, v22, v2 = v21, v3 = v20, a1 = v19, v8 = v18, v9 = v37, result = (*(v13 + 8))(v15, v12), v25 <= -600.0))
  {
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "requesting location", v29, 2u);
    }

    (*(v9 + 8))(v11, v8);
    sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
    v30 = static OS_dispatch_queue.main.getter();
    v31 = swift_allocObject();
    *(v31 + 16) = a1;
    aBlock[4] = sub_10059AF84;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100503A7C;
    aBlock[3] = &unk_100817C88;
    v32 = _Block_copy(aBlock);
    v33 = a1;

    v34 = v38;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10059AEDC(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100007224(&qword_100848A40, &unk_1006BF8C0);
    sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
    v35 = v41;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    (*(v3 + 8))(v35, v2);
    return (*(v40 + 8))(v34, v39);
  }

  return result;
}

uint64_t sub_100599E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_serviceQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10059AEDC(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void sub_10059A12C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager);
  if (v1)
  {
    v2 = v1;
    sub_10059ABA4(v2);
  }
}

id sub_10059A17C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "stop updating location", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return [a1 stopUpdatingLocation];
}

uint64_t sub_10059A2CC()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_serviceQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10059AF5C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10021E8E8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_100817B98;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_10059A430(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - v10;
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "attempting to get location", v16, 2u);
  }

  v17 = *(v5 + 8);
  v17(v13, v4);
  if ((*(a1 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_authorizationStatus) - 3) >= 2)
  {
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No location authorization, returning nothing", v27, 2u);
    }

    v17(v11, v4);
  }

  else
  {
    v18 = OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location;
    if (*(a1 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location))
    {
      defaultLogger()();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "got location update from delegate", v21, 2u);
      }

      v17(v8, v4);
    }

    v22 = *(a1 + v18);
    v23 = *a2;
    *a2 = v22;
    v24 = v22;
  }
}

unint64_t sub_10059A714(void *a1, unint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Got a location update", v14, 2u);
  }

  v15 = *(v6 + 8);
  v15(v11, v5);
  defaultLogger()();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    sub_10001F8D4(0, &qword_100848A38, CLLocation_ptr);
    v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v18 + 4) = v20;
    v19->super.isa = v20.super.isa;
    _os_log_impl(&_mh_execute_header, v16, v17, "locations %@", v18, 0xCu);
    sub_1004385F4(v19);
  }

  v15(v9, v5);
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_7:
    if (__OFSUB__(result--, 1))
    {
      __break(1u);
    }

    else if ((a2 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(a2 + 8 * result + 32);
LABEL_12:
        v24 = *(v3 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location);
        *(v3 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location) = v23;

        return sub_10059ABA4(v26);
      }

      __break(1u);
      return result;
    }

    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10059ABA4(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_10059AEBC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_100817B20;
  v10 = _Block_copy(aBlock);
  v11 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10059AEDC(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

uint64_t sub_10059AE84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10059AEC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10059AEDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10059AF24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10059AFA0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10059AFF4(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_100141FE4(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update location %{public}s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v4 + 8))(v6, v3);
  return sub_10059ABA4(a1);
}

uint64_t sub_10059B1CC(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - v13;
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v11;
    *v19 = 67240192;
    *(v19 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Authorization changed. new status %{public}d", v19, 8u);
    v11 = v39;
  }

  v20 = *(v5 + 8);
  v39 = v4;
  v20(v16, v4);
  v21 = OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_authorizationStatus;
  *(v2 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_authorizationStatus) = a1;
  v22 = *(v2 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location);
  if (v22)
  {
    v23 = v22;
    defaultLogger()();
    v24 = v23;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v22;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "Location information is already known %@. Will not request again.", v27, 0xCu);
      sub_1004385F4(v28);
    }

    else
    {
      v29 = v25;
      v25 = v24;
    }

    return (v20)(v14, v39);
  }

  else
  {
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Location information doesn't exist. Will attempt to make a single location request based on the authorizationStatus", v32, 2u);
    }

    v33 = v39;
    result = (v20)(v11, v39);
    if ((*(v2 + v21) - 3) <= 1)
    {
      defaultLogger()();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Making a single location request", v37, 2u);
      }

      v20(v8, v33);
      return sub_100599924();
    }
  }

  return result;
}

void sub_10059B600()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager;
  [*(v1 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager) stopUpdatingLocation];
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;
}

id sub_10059B698(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v112 = a1;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v99 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v99 - v16;
  __chkstk_darwin(v15);
  v111 = &v99 - v18;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v113 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v23 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    defaultLogger()();

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v118 = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_100141FE4(v112, a2, &v118);
      _os_log_impl(&_mh_execute_header, v61, v62, "Failed to override URLResponse Header: '%s' override value is empty.", v63, 0xCu);
      sub_10000BB78(v64);
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v109 = v21;
  v110 = a2;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    defaultLogger()();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "Failed to override URLResponse Header: URLResponse could not be downcasted to HTTPURLResponse.", v87, 2u);
    }

    (*(v8 + 8))(v14, v7);
    return 0;
  }

  v25 = v24;
  v26 = v4;
  v27 = [v25 URL];
  if (!v27)
  {
    defaultLogger()();
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "Failed to override URLResponse Header: URLResponse doesn't have a valid URL. Aborting override", v90, 2u);
    }

    else
    {
    }

    (*(v8 + 8))(v17, v7);
    return 0;
  }

  v101 = a4;
  v103 = v26;
  v104 = v20;
  v105 = v19;
  v107 = v7;
  v106 = v8;
  v28 = v27;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v102 = v25;
  v29 = [v25 allHeaderFields];
  v30 = &type metadata for AnyHashable;
  v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = 1 << *(v31 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v31 + 64);
  v35 = (v32 + 63) >> 6;

  v36 = 0;
  v108 = &_swiftEmptyDictionarySingleton;
LABEL_10:
  v37 = v36;
  if (!v34)
  {
    goto LABEL_12;
  }

  do
  {
    v36 = v37;
LABEL_15:
    v38 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v39 = v38 | (v36 << 6);
    sub_100040520(*(v31 + 48) + 40 * v39, &v118);
    sub_10001F2EC(*(v31 + 56) + 32 * v39, &v120);
    sub_10059C178(&v118, v116);
    if (!swift_dynamicCast())
    {
      sub_10059C1E8(&v118);
      sub_10000BB78(v117);
      goto LABEL_10;
    }

    v40 = v30;
    v42 = v114;
    v41 = v115;
    sub_10000BB78(v117);
    sub_10059C178(&v118, v116);
    if (swift_dynamicCast())
    {
      v43 = v115;
      v100 = v114;
      sub_1000279C8(v116);
      v44 = v108;
      LODWORD(v99) = swift_isUniquelyReferenced_nonNull_native();
      v116[0] = v44;
      v46 = sub_10003ADCC(v42, v41);
      v47 = v44[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
LABEL_49:
        __break(1u);
      }

      else
      {
        if (v44[3] >= v49)
        {
          if ((v99 & 1) == 0)
          {
            v99 = v46;
            LODWORD(v108) = v45;
            sub_10016F53C();
            LOBYTE(v45) = v108;
            v46 = v99;
          }
        }

        else
        {
          LODWORD(v108) = v45;
          sub_100165FC0(v49, v99);
          v50 = sub_10003ADCC(v42, v41);
          v51 = v45 & 1;
          LOBYTE(v45) = v108;
          if ((v108 & 1) != v51)
          {
LABEL_51:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v46 = v50;
        }

        if (v45)
        {
          v52 = v46;

          v108 = v116[0];
          v53 = (*(v116[0] + 56) + 16 * v52);
          *v53 = v100;
          v53[1] = v43;

          sub_10059C1E8(&v118);
LABEL_29:
          v30 = v40;
          goto LABEL_10;
        }

        v54 = v43;
        v55 = v116[0];
        *(v116[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
        v56 = (v55[6] + 16 * v46);
        *v56 = v42;
        v56[1] = v41;
        v57 = (v55[7] + 16 * v46);
        *v57 = v100;
        v57[1] = v54;
        sub_10059C1E8(&v118);
        v58 = v55[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (!v59)
        {
          v108 = v55;
          v55[2] = v60;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

    sub_10059C1E8(&v118);

    sub_1000279C8(v116);
    v37 = v36;
    v30 = v40;
  }

  while (v34);
  while (1)
  {
LABEL_12:
    v36 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v36 >= v35)
    {
      break;
    }

    v34 = *(v31 + 64 + 8 * v36);
    ++v37;
    if (v34)
    {
      goto LABEL_15;
    }
  }

  v65 = v110;

  v66 = v101;

  v67 = v108;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v118 = v67;
  v69 = v109;
  v70 = v112;
  sub_10016CAB8(v109, v66, v112, v65, isUniquelyReferenced_nonNull_native);

  v71 = [v102 statusCode];
  v72 = objc_allocWithZone(NSHTTPURLResponse);
  URL._bridgeToObjectiveC()(v73);
  v75 = v74;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v77 = [v72 initWithURL:v75 statusCode:v71 HTTPVersion:0 headerFields:isa];

  v78 = v77;
  if (v77)
  {
    v118 = 0;
    v119 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v118 = 0xD00000000000001ELL;
    v119 = 0x8000000100722C10;
    v79._countAndFlagsBits = v70;
    v79._object = v65;
    String.append(_:)(v79);
    v80._countAndFlagsBits = 0x206874697720;
    v80._object = 0xE600000000000000;
    String.append(_:)(v80);
    v81._countAndFlagsBits = v69;
    v81._object = v66;
    String.append(_:)(v81);
    v82._countAndFlagsBits = 46;
    v82._object = 0xE100000000000000;
    String.append(_:)(v82);
    v84 = v118;
    v83 = v119;
  }

  else
  {
    v83 = 0x8000000100722BB0;
    v84 = 0xD00000000000005BLL;
  }

  v91 = v107;
  v92 = v111;
  defaultLogger()();

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v118 = v96;
    *v95 = 136315138;
    v97 = sub_100141FE4(v84, v83, &v118);

    *(v95 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v93, v94, "%s", v95, 0xCu);
    sub_10000BB78(v96);
  }

  else
  {
  }

  (*(v106 + 8))(v92, v91);
  (*(v104 + 8))(v113, v105);
  return v78;
}

uint64_t sub_10059C178(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100848A48, &unk_1006E9420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059C1E8(uint64_t a1)
{
  v2 = sub_100007224(&qword_100848A48, &unk_1006E9420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10059C250(uint64_t a1, unint64_t a2)
{
  v48 = a2;
  v51 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA256();
  v46 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256Digest();
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[4];
  sub_10000BA08(v2, v2[3]);
  v13 = v57;
  v14 = dispatch thunk of DIPAccountManagerProtocol.primaryiCloudAccountAltDSID()();
  if (!v13)
  {
    v42 = v14;
    v43 = v8;
    v57 = v15;
    v16 = v48;
    v44 = v6;
    v45 = 0;
    v17 = sub_100592810();
    if (v18 == 1)
    {
      sub_1005946FC();
    }

    else
    {
      sub_10003477C(v17, v18);
    }

    v19 = v11;
    v20 = v5;
    v21 = sub_100592810();
    v23 = v50;
    v24 = v49;
    if (v22 >= 2)
    {
      v53 = v51;
      v54 = v16;
      v26 = v21;
      v27 = v22;

      v28._countAndFlagsBits = 124;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29 = v19;

      v30._countAndFlagsBits = v42;
      v30._object = v57;
      String.append(_:)(v30);

      v31._countAndFlagsBits = 124;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);

      v32._countAndFlagsBits = v26;
      v32._object = v27;
      String.append(_:)(v32);
      sub_10003477C(v26, v27);

      v33 = sub_100343B88(v53, v54);
      v35 = v34;
      sub_10059D230(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      v37 = v43;
      v36 = v44;
      dispatch thunk of HashFunction.init()();
      sub_10000B8B8(v33, v35);
      sub_10037939C(v33, v35, v37);
      sub_10000B90C(v33, v35);
      dispatch thunk of HashFunction.finalize()();
      sub_10000B90C(v33, v35);
      (*(v46 + 8))(v37, v36);
      v55 = v9;
      v56 = sub_10059D230(&qword_100841E10, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
      v38 = sub_100032DBC(&v53);
      v39 = v29;
      v40 = v47;
      (*(v47 + 16))(v38, v39, v9);
      sub_10000BA08(&v53, v55);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v40 + 8))(v39, v9);
      v12 = v52;
      sub_10000BB78(&v53);
    }

    else
    {

      (*(v24 + 104))(v20, enum case for DIPError.Code.documentReaderUnableToGetSEID(_:), v23);
      v12 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10059D230(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  return v12;
}

uint64_t sub_10059C7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10059C92C, 0, 0);
}

uint64_t sub_10059C92C(uint64_t a1)
{
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[13];
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v1[16] = v5;
  v1[17] = v6;
  (*(v3 + 8))(v2, v4);
  v8 = sub_10059C250(v5, v7);
  v1[18] = v8;
  v1[19] = v9;
  v10 = v8;
  v11 = v9;
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Getting FairPlay provisioning info", v14, 2u);
  }

  v15 = v1[12];
  v16 = v1[8];
  v17 = v1[9];

  v18 = *(v17 + 8);
  v1[20] = v18;
  v18(v15, v16);
  v19 = swift_task_alloc();
  v1[21] = v19;
  *v19 = v1;
  v19[1] = sub_10059CCB4;
  v20 = v1[5];
  v21 = v1[6];
  v23 = v1[3];
  v22 = v1[4];

  return static FairPlayPassbookProvisioning.getProvisioningInfo(auditToken:nonce:)(v23, v22, v20, v21, v10, v11);
}

uint64_t sub_10059CCB4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 176) = v2;

  if (v2)
  {
    v7 = sub_10059CF18;
  }

  else
  {
    *(v6 + 184) = a2;
    *(v6 + 192) = a1;
    v7 = sub_10059CDE8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10059CDE8(uint64_t a1)
{
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[18];
  v15 = v1[17];
  v7 = v1[11];
  v8 = v1[8];
  defaultLogger()();
  v9 = swift_task_alloc();
  v9[2] = v2;
  v9[3] = v3;
  v9[4] = v6;
  v9[5] = v4;
  Logger.cryptoParam(_:)();
  sub_10000B90C(v6, v4);

  v5(v7, v8);
  v11 = v1[23];
  v10 = v1[24];
  v12 = v1[16];

  v13 = v1[1];

  return v13(v10, v11, v12, v15);
}

uint64_t sub_10059CF18()
{
  v18 = v0;
  sub_10000B90C(v0[18], v0[19]);
  v1 = v0[22];

  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[9];
    v16 = v0[10];
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[2] = v1;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v8 = String.init<A>(describing:)();
    v10 = sub_100141FE4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get FairPlay provisioning info (app likely does not come from App Store, TestFlight or third party marketplace): %s", v6, 0xCu);
    sub_10000BB78(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[1];

  return v14(0, 0, 0, 0);
}

unint64_t sub_10059D140()
{
  _StringGuts.grow(_:)(30);

  v0 = Data.base64EncodedString(options:)(0);
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x3D65636E6F6E203BLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  v2 = Data.base64EncodedString(options:)(0);
  String.append(_:)(v2);

  return 0xD000000000000012;
}

uint64_t sub_10059D230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10059D288(uint64_t a1)
{
  v2 = type metadata accessor for NWInterface.InterfaceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&unk_100834140, &qword_1006DC180);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for NWPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10059D7B4(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = 0x726568744FLL;
    sub_1002C8738(v8);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = *(v3 + 104);
    v14(v5, enum case for NWInterface.InterfaceType.wifi(_:), v2);
    v15 = NWPath.usesInterfaceType(_:)();
    v16 = *(v3 + 8);
    v16(v5, v2);
    if (v15)
    {
      (*(v10 + 8))(v12, v9);
      return 1768319319;
    }

    else
    {
      v14(v5, enum case for NWInterface.InterfaceType.cellular(_:), v2);
      v17 = NWPath.usesInterfaceType(_:)();
      v16(v5, v2);
      if (v17)
      {
        (*(v10 + 8))(v12, v9);
        return 0x72616C756C6C6543;
      }

      else
      {
        v14(v5, enum case for NWInterface.InterfaceType.wiredEthernet(_:), v2);
        v19 = NWPath.usesInterfaceType(_:)();
        v16(v5, v2);
        (*(v10 + 8))(v12, v9);
        if (v19)
        {
          return 0x6465726957;
        }

        else
        {
          return 0x726568744FLL;
        }
      }
    }
  }

  return v13;
}

uint64_t sub_10059D5E0(uint64_t a1)
{
  v2 = sub_100007224(&unk_100834140, &qword_1006DC180);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for NWPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10059D7B4(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1002C8738(v4);
    return 0x6E776F6E6B6E55;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (NWPath.isExpensive.getter())
    {
      v9 = 0x7669736E65707845;
    }

    else
    {
      v9 = 0x736E657078656E49;
    }

    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

uint64_t sub_10059D7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100834140, &qword_1006DC180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059D824()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10059D8A0(uint64_t a1, int a2)
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

uint64_t sub_10059D8E8(uint64_t result, int a2, int a3)
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

uint64_t sub_10059D940(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10059DA0C, 0, 0);
}

uint64_t sub_10059DA0C()
{
  v1 = IdentityProofingConfiguration.proofingErrorMessage.getter();
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = IdentityProofingConfiguration.state.getter();
    *(v0 + 72) = v4;
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      v7 = IdentityProofingConfiguration.country.getter();
      *(v0 + 80) = v8;
      if (v8)
      {
        v9 = v7;
        v10 = v8;
        v11 = swift_task_alloc();
        *(v0 + 88) = v11;
        *v11 = v0;
        v11[1] = sub_10059DC10;

        return sub_10059DF4C(v2, v5, v6, v9, v10);
      }
    }

    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "IdentityProofingFlow Configuration has a proofing error message, but no state / country associated", v16, 2u);
    }

    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);
    v20 = *(v0 + 16);

    (*(v18 + 8))(v17, v19);
    v21 = v20;
    v13 = *(v0 + 16);
  }

  else
  {
    v13 = *(v0 + 16);
  }

  v22 = *(v0 + 8);

  return v22(v13);
}

uint64_t sub_10059DC10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_10059DEBC;
  }

  else
  {

    v4 = sub_10059DD34;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10059DD34(uint64_t a1)
{
  v2 = v1[12];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v4, v5, "IdentityProofingFlow Mapping text replacement for proofing error message:\n %@", v8, 0xCu);
    sub_1004385F4(v9);
  }

  v11 = v1[12];
  v12 = v1[8];
  (*(v1[5] + 8))(v1[7], v1[4]);
  v13 = v11;
  v14 = IdentityProofingConfiguration.withProofingErrorMessage(_:)();

  v15 = v1[1];

  return v15(v14);
}

uint64_t sub_10059DEBC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10059DF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v11 = type metadata accessor for Logger();
  v6[8] = v11;
  v6[9] = *(v11 - 8);
  v6[10] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[11] = v12;
  *v12 = v6;
  v12[1] = sub_10059E070;

  return sub_10059E71C(a2, a3, a4, a5);
}

uint64_t sub_10059E070(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 104) = a1;

    return _swift_task_switch(sub_10059E1C8, 0, 0);
  }
}

uint64_t sub_10059E1C8()
{
  sub_10000BA08(*(v0 + 56), *(*(v0 + 56) + 24));
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10059E274;
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);

  return sub_1002C6CDC(v6, v5, v3, v4, v2);
}

uint64_t sub_10059E274(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_10059E374, 0, 0);
}

uint64_t sub_10059E374()
{
  v29 = v0;
  v1 = v0;
  v2 = IdentityProofingPrecursorPassMessage.actions.getter();
  if (v2)
  {
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      v7 = v1;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v4 + 16))
          {
            goto LABEL_17;
          }

          v8 = *(v3 + 8 * v6 + 32);
        }

        v9 = v8;
        v1 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = v7[15];
        v27 = v8;
        sub_10059ED74(&v27, v10, &v28);

        if (v28)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        ++v6;
        if (v1 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v7 = v1;
LABEL_20:

    v1 = v7;
  }

  IdentityProofingPrecursorPassMessage.title.getter();
  if (v11)
  {
    if (!v1[15])
    {

      IdentityProofingPrecursorPassMessage.message.getter();
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    dispatch thunk of IdentityProofingTextReplacementHelper.replaceText(_:)();
  }

  IdentityProofingPrecursorPassMessage.message.getter();
  if (!v12)
  {
    goto LABEL_29;
  }

  if (v1[15])
  {
    dispatch thunk of IdentityProofingTextReplacementHelper.replaceText(_:)();

    goto LABEL_29;
  }

LABEL_28:

LABEL_29:
  v14 = objc_allocWithZone(type metadata accessor for IdentityProofingPrecursorPassMessage());
  v15 = IdentityProofingPrecursorPassMessage.init(title:message:actions:)();
  defaultLogger()();
  v16 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "IdentityProofingFlow Mapping text replacement for proofing error message:\n %@", v19, 0xCu);
    sub_1004385F4(v20);
  }

  v23 = v1[9];
  v22 = v1[10];
  v24 = v1[8];

  (*(v23 + 8))(v22, v24);

  v25 = v1[1];

  return v25(v16);
}

uint64_t sub_10059E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  v5 = type metadata accessor for Logger();
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();

  return _swift_task_switch(sub_10059E7E0, 0, 0);
}

uint64_t sub_10059E7E0()
{
  v25 = v0;
  v1 = sub_1005127B4();
  if (v1 <= 3)
  {
    if (v1 - 2 >= 2)
    {
      v2 = v1 == 0;
LABEL_11:
      defaultLogger()();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      v6 = os_log_type_enabled(v4, v5);
      v7 = v0[33];
      v8 = v0[34];
      v9 = v0[32];
      if (v6)
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v24 = v11;
        *v10 = 136315138;
        v12 = IdentityDocumentType.description.getter();
        v14 = sub_100141FE4(v12, v13, &v24);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v4, v5, "IdentityProofingFlow got ID type: %s from existing pass", v10, 0xCu);
        sub_10000BB78(v11);

        (*(v7 + 8))(v8, v9);
      }

      else
      {

        (*(v7 + 8))(v8, v9);
      }

      v15 = v0[1];

      return v15(v2);
    }

LABEL_7:
    v2 = 2;
    goto LABEL_11;
  }

  if (v1 == 4)
  {
    goto LABEL_7;
  }

  if (v1 == 5)
  {
    v2 = 3;
    goto LABEL_11;
  }

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v3 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v3 + 54);
  sub_1000318FC(&v3[4], (v0 + 2));
  os_unfair_lock_unlock(v3 + 54);
  v18 = v0[30];
  v17 = v0[31];
  v20 = v0[28];
  v19 = v0[29];
  v0[35] = v0[9];

  sub_100031918((v0 + 2));
  v21 = swift_allocObject();
  v0[36] = v21;
  v21[2] = v20;
  v21[3] = v19;
  v21[4] = v18;
  v21[5] = v17;
  v22 = swift_allocObject();
  v0[37] = v22;
  *(v22 + 16) = sub_10059F758;
  *(v22 + 24) = v21;

  v23 = swift_task_alloc();
  v0[38] = v23;
  *v23 = v0;
  v23[1] = sub_10059EB7C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_10017F748, v22, &type metadata for IdentityDocumentType);
}

uint64_t sub_10059EB7C()
{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10059ECEC, 0, 0);
  }

  else
  {

    v3 = v2[27];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_10059ECEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10059ED74@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v6 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v6 - 8);
  v40 = type metadata accessor for Logger();
  v7 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = *a1;
  if (a2)
  {
    v39 = v3;

    IdentityProofingPrecursorPassMessageAction.title.getter();
    dispatch thunk of IdentityProofingTextReplacementHelper.replaceText(_:)();
    v15 = v14;

    if (!v15)
    {
      defaultLogger()();
      v16 = v13;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v42 = v38;
        *v19 = 136315138;
        v37 = v18;
        v20 = IdentityProofingPrecursorPassMessageAction.title.getter();
        v22 = sub_100141FE4(v20, v21, &v42);
        v36 = v17;
        v23 = v22;

        *(v19 + 4) = v23;
        v24 = v36;
        _os_log_impl(&_mh_execute_header, v36, v37, "IdentityProofingFlow invalid replacement string; falling back to: %s", v19, 0xCu);
        sub_10000BB78(v38);
      }

      else
      {
      }

      (*(v7 + 8))(v12, v40);
      IdentityProofingPrecursorPassMessageAction.title.getter();
    }

    IdentityProofingPrecursorPassMessageAction.actionType.getter();
    IdentityProofingPrecursorPassMessageAction.actionURL.getter();
    v35 = objc_allocWithZone(type metadata accessor for IdentityProofingPrecursorPassMessageAction());
    v34 = IdentityProofingPrecursorPassMessageAction.init(title:actionType:actionURL:)();
  }

  else
  {
    defaultLogger()();
    v25 = v13;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42 = v29;
      *v28 = 136315138;
      v30 = IdentityProofingPrecursorPassMessageAction.title.getter();
      v32 = sub_100141FE4(v30, v31, &v42);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "IdentityProofingFlow invalid textReplacementHelper; could not localize string for action: %s", v28, 0xCu);
      sub_10000BB78(v29);
    }

    result = (*(v7 + 8))(v10, v40);
    v34 = 0;
  }

  *v41 = v34;
  return result;
}

void sub_10059F168(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v46 = a1;
  v44 = a6;
  v10 = type metadata accessor for Logger();
  v43 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPError.Code();
  v45 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v48;
  v17 = sub_1005796D0(a2, a3, a4, a5);
  if (v16)
  {
    return;
  }

  v48 = a3;
  v18 = a4;
  v19 = v45;
  if (v17 >> 62)
  {
    v42 = v17;
    v35 = _CocoaArrayWrapper.endIndex.getter();
    v17 = v42;
    if (v35)
    {
      goto LABEL_4;
    }

LABEL_14:

    v47[0] = 0;
    v47[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v36._countAndFlagsBits = 0xD00000000000001CLL;
    v36._object = 0x8000000100722DD0;
    String.append(_:)(v36);
    v37._countAndFlagsBits = a2;
    v37._object = v48;
    String.append(_:)(v37);
    v38._countAndFlagsBits = 8236;
    v38._object = 0xE200000000000000;
    String.append(_:)(v38);
    v39._countAndFlagsBits = v18;
    v39._object = a5;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0xD000000000000022;
    v40._object = 0x8000000100722DF0;
    String.append(_:)(v40);
    (*(v19 + 104))(v15, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_4:
  v46 = 0;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v20 = *(v17 + 32);
  }

  v21 = v20;

  v22 = [v21 documentType];
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = IdentityDocumentType.init(documentTypeString:)();
    v25 = v12;
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v48 = v25;
      v29 = v28;
      v30 = v10;
      v31 = swift_slowAlloc();
      v47[0] = v31;
      *v29 = 136315138;
      v32 = IdentityDocumentType.description.getter();
      v34 = sub_100141FE4(v32, v33, v47);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "IdentityProofingFlow got document type: %s from existing proofing session", v29, 0xCu);
      sub_10000BB78(v31);

      (*(v43 + 8))(v48, v30);
    }

    else
    {

      (*(v43 + 8))(v25, v10);
    }

    *v44 = v24;
  }

  else
  {
    (*(v19 + 104))(v15, enum case for DIPError.Code.unexpectedIDType(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_10059F718()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10059F778()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10059F7B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1005A0C34(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10059F7F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v19 = a2;
  v20 = a3;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13 - 8);
  *(v5 + 16) = dispatch_group_create();
  sub_10017ABC8();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v5 + 160) = 0x3FE999999999999ALL;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;
  *(v5 + 24) = v14;
  *(v5 + 32) = a1;
  v15 = v20;
  *(v5 + 40) = v19;
  *(v5 + 48) = v15;
  *(v5 + 56) = a4;
  v16 = objc_allocWithZone(type metadata accessor for DIPLocationHelper());
  v17 = a4;
  *(v5 + 152) = sub_100598D70(0, 0, a4);
  return v5;
}

uint64_t sub_10059FA1C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Beginning fetch of supplemental device data", v8, 2u);
  }

  result = (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 32);
  if (v10)
  {
    result = sub_10059FC64();
    if ((v10 & 4) == 0)
    {
LABEL_5:
      if ((v10 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_5;
  }

  result = sub_10059FFC8();
  if ((v10 & 8) == 0)
  {
LABEL_6:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = sub_1005A01CC();
  if ((v10 & 0x10) == 0)
  {
LABEL_7:
    if ((v10 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = sub_1005A0664();
  if ((v10 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  dispatch_group_enter(*(v1 + 16));
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v11 = qword_1008823E0;

  v12 = v11;
  sub_100597CE8(v12, v1);
}

void sub_10059FC0C(void *a1, void *a2)
{
  if (a1 && a1[2])
  {
    v4 = a1[4];
    v3 = a1[5];
    a2[17] = v4;
    a2[18] = v3;
  }

  v5 = a2[2];

  dispatch_group_leave(v5);
}

uint64_t sub_10059FC64()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_enter(*(v1 + 16));
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Beginning to fetch IDS data", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  sub_1000363B4(v9, v10);
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  if (v10 >> 60 == 15)
  {
    v10 = 0xC000000000000000;
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = qword_1008823E0;

  sub_100593FC0(v11, v10, sub_1005A0C6C, v1);

  return sub_10000B90C(v11, v10);
}

void sub_10059FE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 64) = a1;

  v8 = *(a2 + 64);
  if (!v8 || !*(v8 + 16))
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No IDS data available", v11, 2u);
    }

    (*(v5 + 8))(v7, v4);
  }

  dispatch_group_leave(*(a2 + 16));
}

uint64_t sub_10059FFC8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_enter(*(v1 + 16));
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Beginning to fetch phone number", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v9 = qword_1008823E0;

  v10 = v9;
  sub_1005972A4(0, v10, v1);
}

void sub_1005A0174(void *a1, void *a2)
{
  if (a1 && a1[2])
  {
    v4 = a1[4];
    v3 = a1[5];
    a2[12] = v4;
    a2[13] = v3;
  }

  v5 = a2[2];

  dispatch_group_leave(v5);
}

uint64_t sub_1005A01EC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v40 - v8;
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  defaultLogger()();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = 0x3FE999999999999ALL;
    _os_log_impl(&_mh_execute_header, v12, v13, "Beginning to fetch device location after %f seconds", v14, 0xCu);
  }

  v15 = *(v3 + 8);
  v15(v11, v2);
  [objc_opt_self() sleepForTimeInterval:0.8];
  v16 = *(a1 + 152);
  v17 = sub_10059A2CC();
  if (v17)
  {
    v18 = v17;
    v41 = v16;
    v42 = v15;
    v43 = v2;
    sub_100007224(&unk_1008483D0, &unk_1006E83E0);
    v19 = swift_allocObject();
    v40 = xmmword_1006BF520;
    *(v19 + 16) = xmmword_1006BF520;
    [v18 coordinate];
    *(v19 + 56) = &type metadata for Double;
    *(v19 + 64) = &protocol witness table for Double;
    *(v19 + 32) = v20;
    v21 = String.init(format:_:)();
    v23 = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = v40;
    [v18 coordinate];
    *(v24 + 56) = &type metadata for Double;
    *(v24 + 64) = &protocol witness table for Double;
    *(v24 + 32) = v25;
    v26 = String.init(format:_:)();
    v28 = v27;
    v44 = 0;
    v29 = sub_1006594FC(v21, v23, &v44);

    if (v29)
    {
      v30 = v44;
      v44 = 0;
      v31 = sub_1006594FC(v26, v28, &v44);

      if (!v31)
      {
LABEL_11:
        v15 = v42;
        v2 = v43;
        defaultLogger()();
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Got device location", v38, 2u);
        }

        goto LABEL_14;
      }

      v32 = v44;
      sub_100007224(&unk_100849F70, &qword_1006E90C0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1006BF740;
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;
      *(a1 + 112) = v33;
    }

    goto LABEL_11;
  }

  defaultLogger()();
  v18 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v18, v34, "no device location available", v35, 2u);
  }

  v6 = v9;
LABEL_14:

  v15(v6, v2);
  return sub_100599E58();
}

uint64_t sub_1005A0684(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = *(v2 + 24);
  aBlock[4] = a1;
  v17 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15[1] = _swiftEmptyArrayStorage;
  sub_1005A0F94(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_100031834();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_1005A08FC(uint64_t a1)
{
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1008823E0;
  v3 = sub_100592810();
  if (v4 == 1)
  {
    sub_1005946FC();
  }

  else
  {
    sub_10003477C(v3, v4);
  }

  v5 = sub_100592810();
  v7 = v6;

  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (v7 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  *(a1 + 120) = v8;
  *(a1 + 128) = v9;
}

uint64_t sub_1005A09B0()
{
  v1 = *(v0 + 56);
  sub_10000BD94(*(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t sub_1005A0A30()
{
  sub_1005A09B0();

  return swift_deallocClassInstance();
}

unint64_t sub_1005A0AAC()
{
  result = qword_100848D88;
  if (!qword_100848D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848D88);
  }

  return result;
}

unint64_t sub_1005A0B04()
{
  result = qword_100848D90;
  if (!qword_100848D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848D90);
  }

  return result;
}

unint64_t sub_1005A0B5C()
{
  result = qword_100848D98;
  if (!qword_100848D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848D98);
  }

  return result;
}

unint64_t sub_1005A0BB4()
{
  result = qword_100848DA0;
  if (!qword_100848DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848DA0);
  }

  return result;
}

uint64_t sub_1005A0C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005A0C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1005A0C74()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OS_dispatch_group.wait()();
  if (*(v0 + 32))
  {
    if (*(v0 + 72))
    {
      (*(v2 + 104))(v4, enum case for DIPError.Code.internalError(_:), v1);
      swift_errorRetain();
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1005A0F94(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      return *(v0 + 64);
    }
  }

  else
  {
    (*(v2 + 104))(v4, enum case for DIPError.Code.badLogic(_:), v1);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005A0F94(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

uint64_t sub_1005A0F94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005A0FE8(size_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = a1;
      bzero(v7 + 4, a1);
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v8 = SecRandomCopyBytes(kSecRandomDefault, a1, v7 + 4);
    if (v8)
    {
      v9 = v8;

      (*(v3 + 104))(v6, enum case for DIPError.Code.systemSecError(_:), v2);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v10 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1006BF520;
      v13 = v12 + v11;
      v14 = v13 + v10[14];
      v15 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v16 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v16 - 8) + 104))(v13, v15, v16);
      *(v14 + 24) = &type metadata for Int32;
      *(v14 + 32) = &protocol witness table for Int32;
      *v14 = v9;
      sub_10003C9C0(v12);
      swift_setDeallocating();
      sub_10000BE18(v13, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    else
    {
      v17 = sub_10034C158(v7);
      v19 = v18;

      countAndFlagsBits = Data.base16EncodedString()()._countAndFlagsBits;
      sub_10000B90C(v17, v19);
      return countAndFlagsBits;
    }
  }

  return result;
}

unint64_t sub_1005A1364(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v59 - v9;
  if (String.count.getter() != 2)
  {
    defaultLogger()();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = -1;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v64[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_100141FE4(a1, a2, v64);
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to convert country code %{public}s to ASCII due to invalid length.", v24, 0xCu);
      sub_10000BB78(v25);

      (*(v5 + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      return -1;
    }

    return v23;
  }

  v63 = a1;
  v11 = sub_1005A1A6C(a1, a2);
  v12 = *(v11 + 16);
  if (v12)
  {
    v59 = v10;
    v60 = a2;
    v61 = v5;
    v62 = v4;
    v64[0] = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v12, 0);
    v13 = 32;
    v14 = v64[0];
    do
    {
      v65 = *(v11 + v13);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v64[0] = v14;
      v19 = v14[2];
      v18 = v14[3];
      if (v19 >= v18 >> 1)
      {
        sub_100172D4C((v18 > 1), v19 + 1, 1);
        v14 = v64[0];
      }

      v14[2] = v19 + 1;
      v20 = &v14[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      ++v13;
      --v12;
    }

    while (v12);

    v5 = v61;
    v4 = v62;
    v10 = v59;
    a2 = v60;
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  v64[0] = v14;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10004D7FC();
  v26 = BidirectionalCollection<>.joined(separator:)();
  v28 = v27;

  v30 = HIBYTE(v28) & 0xF;
  v31 = v26 & 0xFFFFFFFFFFFFLL;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v32 = v26 & 0xFFFFFFFFFFFFLL;
  }

  v33 = v63;
  if (!v32)
  {

    v23 = -1;
LABEL_76:
    defaultLogger()();

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v10;
      v57 = swift_slowAlloc();
      v64[0] = v57;
      *v55 = 136446466;
      *(v55 + 4) = sub_100141FE4(v33, a2, v64);
      *(v55 + 12) = 2048;
      *(v55 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v53, v54, "Converted country code: %{public}s to ASCII value: %ld", v55, 0x16u);
      sub_10000BB78(v57);

      (*(v5 + 8))(v56, v4);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    return v23;
  }

  if ((v28 & 0x1000000000000000) != 0)
  {
    v65 = 0;
    v23 = sub_1000FFDD8(v26, v28, 10);
    v52 = v58;
LABEL_74:

    if (v52)
    {
      v23 = -1;
    }

    goto LABEL_76;
  }

  if ((v28 & 0x2000000000000000) == 0)
  {
    if ((v26 & 0x1000000000000000) != 0)
    {
      result = (v28 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v34 = *result;
    if (v34 == 43)
    {
      if (v31 >= 1)
      {
        v30 = v31 - 1;
        if (v31 != 1)
        {
          v23 = 0;
          if (result)
          {
            v41 = (result + 1);
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                goto LABEL_72;
              }

              v43 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_72;
              }

              v23 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                goto LABEL_72;
              }

              ++v41;
              if (!--v30)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_64;
        }

        goto LABEL_72;
      }

      goto LABEL_85;
    }

    if (v34 != 45)
    {
      if (v31)
      {
        v23 = 0;
        if (result)
        {
          while (1)
          {
            v47 = *result - 48;
            if (v47 > 9)
            {
              goto LABEL_72;
            }

            v48 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              goto LABEL_72;
            }

            v23 = v48 + v47;
            if (__OFADD__(v48, v47))
            {
              goto LABEL_72;
            }

            ++result;
            if (!--v31)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_72:
      v23 = 0;
      LOBYTE(v30) = 1;
      goto LABEL_73;
    }

    if (v31 >= 1)
    {
      v30 = v31 - 1;
      if (v31 != 1)
      {
        v23 = 0;
        if (result)
        {
          v35 = (result + 1);
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              goto LABEL_72;
            }

            v37 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              goto LABEL_72;
            }

            v23 = v37 - v36;
            if (__OFSUB__(v37, v36))
            {
              goto LABEL_72;
            }

            ++v35;
            if (!--v30)
            {
              goto LABEL_73;
            }
          }
        }

LABEL_64:
        LOBYTE(v30) = 0;
LABEL_73:
        v65 = v30;
        v52 = v30;
        goto LABEL_74;
      }

      goto LABEL_72;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v64[0] = v26;
  v64[1] = v28 & 0xFFFFFFFFFFFFFFLL;
  if (v26 != 43)
  {
    if (v26 != 45)
    {
      if (v30)
      {
        v23 = 0;
        v49 = v64;
        while (1)
        {
          v50 = *v49 - 48;
          if (v50 > 9)
          {
            break;
          }

          v51 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v51 + v50;
          if (__OFADD__(v51, v50))
          {
            break;
          }

          v49 = (v49 + 1);
          if (!--v30)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    if (v30)
    {
      if (--v30)
      {
        v23 = 0;
        v38 = v64 + 1;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v40 - v39;
          if (__OFSUB__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v30)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    goto LABEL_84;
  }

  if (v30)
  {
    if (--v30)
    {
      v23 = 0;
      v44 = v64 + 1;
      while (1)
      {
        v45 = *v44 - 48;
        if (v45 > 9)
        {
          break;
        }

        v46 = 10 * v23;
        if ((v23 * 10) >> 64 != (10 * v23) >> 63)
        {
          break;
        }

        v23 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          break;
        }

        ++v44;
        if (!--v30)
        {
          goto LABEL_73;
        }
      }
    }

    goto LABEL_72;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1005A1A6C(uint64_t a1, uint64_t a2)
{

  v2 = String.Iterator.next()();
  if (!v2.value._object)
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_35:

    return v5;
  }

  countAndFlagsBits = v2.value._countAndFlagsBits;
  object = v2.value._object;
  v5 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (countAndFlagsBits == 2573 && object == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {

      LOBYTE(v14) = 10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }

    v8 = (object & 0x2000000000000000) != 0 ? HIBYTE(object) & 0xF : countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if (!v8)
    {
      break;
    }

    if ((object & 0x1000000000000000) != 0)
    {
      v13 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      if ((object & 0x2000000000000000) != 0)
      {
        v10 = countAndFlagsBits;
      }

      else
      {
        if ((countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v9 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v9 = _StringObject.sharedUTF8.getter();
        }

        v10 = *v9;
      }

      v11 = v10;
      v12 = (__clz(~v10) - 24) << 16;
      if (v11 < 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 65541;
      }
    }

    if (v13 >> 14 == 4 * v8)
    {
      result = sub_1005A2728(countAndFlagsBits, object);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_38;
      }

      if ((result & 0xFFFFFF80) == 0)
      {
        result = sub_1005A2728(countAndFlagsBits, object);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_39;
        }

        v14 = result;

        if ((v14 & 0xFFFFFF00) != 0)
        {
          goto LABEL_37;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_27;
        }

LABEL_31:
        v5 = sub_1003C54A8(0, *(v5 + 2) + 1, 1, v5);
LABEL_27:
        v16 = *(v5 + 2);
        v15 = *(v5 + 3);
        if (v16 >= v15 >> 1)
        {
          v5 = sub_1003C54A8((v15 > 1), v16 + 1, 1, v5);
        }

        *(v5 + 2) = v16 + 1;
        v5[v16 + 32] = v14;
        goto LABEL_4;
      }
    }

LABEL_4:
    v6 = String.Iterator.next()();
    countAndFlagsBits = v6.value._countAndFlagsBits;
    object = v6.value._object;
    if (!v6.value._object)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1005A1CA8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v43 - v11;
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v15 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v15 - 8);
  v17 = &v43 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v22 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "URL is not a valid HTTPS URL because it is an empty string", v30, 2u);
    }

    (*(v44 + 8))(v9, v45);
    goto LABEL_11;
  }

  URL.init(string:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000BE18(v17, &unk_100844540, &unk_1006BFBC0);
    defaultLogger()();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = a3;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_100141FE4(a1, a2, &v46);
      _os_log_impl(&_mh_execute_header, v23, v24, "URL %{public}s is not a valid HTTPS URL because it is not a url", v26, 0xCu);
      sub_10000BB78(v27);

      a3 = v25;
    }

    (*(v44 + 8))(v12, v45);
LABEL_11:
    v31 = 1;
    return (*(v19 + 56))(a3, v31, 1, v18);
  }

  v43 = a3;
  v33 = *(v19 + 32);
  v33(v21, v17, v18);
  v34 = URL.scheme.getter();
  if (v35)
  {
    if (v34 == 0x7370747468 && v35 == 0xE500000000000000)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v42 = v43;
    v33(v43, v21, v18);
    a3 = v42;
    v31 = 0;
    return (*(v19 + 56))(a3, v31, 1, v18);
  }

LABEL_19:
  defaultLogger()();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v46 = v41;
    *v40 = 136446210;
    *(v40 + 4) = sub_100141FE4(a1, a2, &v46);
    _os_log_impl(&_mh_execute_header, v38, v39, "URL %{public}s is not a valid HTTPS URL because it does not have the https scheme", v40, 0xCu);
    sub_10000BB78(v41);
  }

  (*(v44 + 8))(v14, v45);
  (*(v19 + 8))(v21, v18);
  v31 = 1;
  a3 = v43;
  return (*(v19 + 56))(a3, v31, 1, v18);
}

uint64_t sub_1005A2220@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v37 - v11;
  v12 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_1005A1CA8(a1, a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v37 = v7;
    v38 = v6;
    v39 = a3;
    v20 = *(v16 + 32);
    v20(v18, v14, v15);
    v21 = URL.host.getter();
    if (v22)
    {
      v23 = v21 == 0x6F632E656C707061 && v22 == 0xE90000000000006DLL;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

LABEL_10:
        a3 = v39;
        v20(v39, v18, v15);
        v19 = 0;
        return (*(v16 + 56))(a3, v19, 1, v15);
      }

      v29._countAndFlagsBits = 0x632E656C7070612ELL;
      v29._object = 0xEA00000000006D6FLL;
      v30 = String.hasSuffix(_:)(v29);

      if (v30)
      {
        goto LABEL_10;
      }

      v31 = v40;
      defaultLogger()();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      v34 = v32;
      if (os_log_type_enabled(v32, v33))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v42 = v36;
        *v35 = 136446210;
        *(v35 + 4) = sub_100141FE4(v41, a2, &v42);
        _os_log_impl(&_mh_execute_header, v34, v33, "URL %{public}s is not an Apple url", v35, 0xCu);
        sub_10000BB78(v36);
      }

      else
      {
      }

      (*(v37 + 8))(v31, v38);
    }

    else
    {
      defaultLogger()();

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v42 = v27;
        *v26 = 136446210;
        *(v26 + 4) = sub_100141FE4(v41, a2, &v42);
        _os_log_impl(&_mh_execute_header, v24, v25, "URL %{public}s is not a valid HTTPS URL because it does not have a host", v26, 0xCu);
        sub_10000BB78(v27);
      }

      (*(v37 + 8))(v10, v38);
    }

    (*(v16 + 8))(v18, v15);
    v19 = 1;
    a3 = v39;
    return (*(v16 + 56))(a3, v19, 1, v15);
  }

  sub_10000BE18(v14, &unk_100844540, &unk_1006BFBC0);
  v19 = 1;
  return (*(v16 + 56))(a3, v19, 1, v15);
}

unint64_t sub_1005A2728(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1005A2878(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1005A2878(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1005A2910(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1005A2984(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1005A2910(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10010075C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1005A2984(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_1005A2ACC()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v0 + 54);
  sub_1000318FC(&v0[4], v6);
  os_unfair_lock_unlock(v0 + 54);
  v1 = v7;
  v2 = v8;
  sub_10001F640(v7, v8);
  v3 = sub_100031918(v6);
  if (v1)
  {
    v4 = v1(v3);
    sub_10001FE8C(v1, v2);
    return v4;
  }

  else
  {
    type metadata accessor for AssetsFetcher();
    return swift_allocObject();
  }
}

uint64_t sub_1005A2BA0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_100007224(&unk_10084A260, &qword_1006EA050);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for DIPSignpost.Config();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005A2E14, 0, 0);
}

uint64_t sub_1005A2E14()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 24) = v1;
  *(v0 + 32) = 46;
  *(v0 + 40) = 0xE100000000000000;
  sub_10001F298();
  v2 = StringProtocol.components<A>(separatedBy:)();
  *(v0 + 48) = 0x74726F7073736170;
  *(v0 + 56) = 0xE800000000000000;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 48;
  *(v0 + 368) = sub_10035C8E4(sub_1000307C0, v3, v2) & 1;

  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Will attempt to get Identity Proofing Static asset meta data", v6, 2u);
  }

  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 168);
  v10 = *(v0 + 176);
  v12 = *(v0 + 160);

  v13 = *(v9 + 8);
  *(v0 + 216) = v13;
  v13(v7, v8);
  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 224) = v14;
  (*(v11 + 8))(v10, v12);
  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  *v15 = v0;
  v15[1] = sub_1005A3058;

  return sub_1005D7070(1);
}

uint64_t sub_1005A3058(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_1005A3178, 0, 0);
}

uint64_t sub_1005A3178()
{
  v1 = *(v0 + 368);
  if (*(v0 + 240))
  {
    v2 = *(v0 + 120);
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    static DaemonSignposts.fetchIdentityStaticAssetTotal.getter();
    DIPSignpost.init(_:)();
    static DaemonSignposts.fetchIdentityStaticAssetRequest.getter();
    (*(v2 + 56))(v4, 0, 1, v3);
    v5 = swift_task_alloc();
    *(v0 + 248) = v5;
    *v5 = v0;
    v5[1] = sub_1005A3454;
    v6 = "e96da0d4-05f5-4cc9-b3c2-21bbc5c50cc7";
    if (v1)
    {
      v6 = "46541ed0-7919-427f-be5e-217c14133438";
    }

    v7 = *(v0 + 104);

    return sub_1005CC204(0xD000000000000024, (v6 - 32) | 0x8000000000000000, 0x6A2E737465737361, 0xEB000000006E6F73, 2, v7);
  }

  else
  {
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);

    (*(v10 + 104))(v9, enum case for DIPError.Code.staticWebServiceUnavailable(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1005A3454(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[32] = a2;
  v5[33] = v2;

  v6 = v5[13];
  if (v2)
  {
    sub_1005A4980(v6);

    v7 = sub_1005A3E20;
  }

  else
  {
    v5[34] = a1;
    sub_1005A4980(v6);

    v7 = sub_1005A35E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005A35E8()
{
  v1 = v0[32];

  if (v1)
  {
    v2 = v0[32];
    if (*(v2 + 16))
    {
      v3 = sub_10003ADCC(v0[8], v0[9]);
      if (v4)
      {
        v5 = (*(v2 + 56) + 32 * v3);
        v6 = *v5;
        v7 = v5[1];
        v0[35] = v7;
        v0[36] = v5[2];
        v0[37] = v5[3];

        v8 = swift_task_alloc();
        v0[38] = v8;
        *v8 = v0;
        v8[1] = sub_1005A38E0;

        return sub_1005CE0D4(v6, v7);
      }
    }
  }

  v10 = v0[18];
  v17 = v0[19];
  v16 = v0[17];
  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[10];
  _StringGuts.grow(_:)(39);

  v14._countAndFlagsBits = 0xD000000000000025;
  v14._object = 0x80000001007230D0;
  String.append(_:)(v14);
  (*(v11 + 104))(v12, enum case for DIPError.Code.invalidStaticImageAssetData(_:), v13);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v10 + 8))(v17, v16);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1005A38E0(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v6[39] = a1;
  v6[40] = a2;
  v6[41] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1005A3FF8, 0, 0);
  }

  else
  {

    sub_10000B8B8(a1, a2);
    v7 = swift_task_alloc();
    v6[42] = v7;
    *v7 = v6;
    v7[1] = sub_1005A3A94;
    v8 = v6[37];
    v9 = v6[36];

    return sub_1005CE0D4(v9, v8);
  }
}

uint64_t sub_1005A3A94(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;

  if (v2)
  {
    v5 = sub_1005A40DC;
  }

  else
  {
    v5 = sub_1005A3BD4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005A3BD4()
{
  sub_10000B8B8(v0[43], v0[44]);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Asset data downloaded successfully", v3, 2u);
  }

  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[27];
  v9 = v0[25];
  v10 = v0[23];
  v11 = v1;
  v12 = v0[19];
  v18 = v0[18];
  v19 = v0[17];

  v8(v9, v10);
  v13 = v12;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v14 = objc_allocWithZone(type metadata accessor for IdentityProofingAssetData());
  sub_10000B8B8(v6, v7);
  sub_10000B8B8(v5, v4);

  v15 = IdentityProofingAssetData.init(twoX:threeX:assetId:)();

  sub_10000B90C(v5, v4);
  sub_10000B90C(v6, v7);
  sub_10000B90C(v5, v4);
  sub_10000B90C(v6, v7);
  (*(v18 + 8))(v13, v19);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_1005A3E20()
{
  v1 = v0[18];
  v4 = v0[17];
  v5 = v0[19];
  (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.internalError(_:), v0[10]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v1 + 8))(v5, v4);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005A3FF8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005A40DC()
{
  v1 = v0[39];
  v2 = v0[40];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];

  sub_10000B90C(v1, v2);
  sub_10000B90C(v1, v2);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005A41DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005A4358, 0, 0);
}

uint64_t sub_1005A4358(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will attempt to refresh Identity Proofing Static asset ", v4, 2u);
  }

  v6 = v1[13];
  v5 = v1[14];
  v8 = v1[11];
  v7 = v1[12];
  v9 = v1[9];
  v10 = v1[10];

  (*(v6 + 8))(v5, v7);
  UUID.init()();
  UUID.uuidString.getter();
  v1[15] = v11;
  (*(v10 + 8))(v8, v9);
  v12 = swift_task_alloc();
  v1[16] = v12;
  *v12 = v1;
  v12[1] = sub_1005A44DC;

  return sub_1005D7070(1);
}

uint64_t sub_1005A44DC(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1005A45FC, 0, 0);
}

uint64_t sub_1005A45FC()
{
  if (v0[17])
  {
    v1 = swift_task_alloc();
    v0[18] = v1;
    *v1 = v0;
    v1[1] = sub_1005A47F4;
    v2 = v0[4];
    v3 = v0[5];
    v5 = v0[2];
    v4 = v0[3];

    return sub_1005CB61C(v5, v4, v2, v3);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.staticWebServiceUnavailable(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1005A47F4()
{

  return _swift_task_switch(sub_1005A48F0, 0, 0);
}

uint64_t sub_1005A48F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005A4980(uint64_t a1)
{
  v2 = sub_100007224(&unk_10084A260, &qword_1006EA050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005A49E8()
{
  v0 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100031898(v3, qword_1008823F8);
  v4 = sub_10003170C(v3, qword_1008823F8);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A4B18()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031898(v2, qword_100882410);
  sub_10003170C(v0, qword_100882410);
  if (qword_100832CD8 != -1)
  {
    swift_once();
  }

  v5 = sub_10003170C(v0, qword_1008823F8);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1005A4C70@<X0>(char *a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for Logger();
  v43 = *(v1 - 8);
  v44 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v39 - v5;
  v7 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v17 = [objc_opt_self() standardUserDefaults];
  static DaemonDefaultsKeys.bootstrapURL.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 stringForKey:v18];

  if (!v19)
  {
LABEL_9:
    if (qword_100832CE0 != -1)
    {
      swift_once();
    }

    v37 = sub_10003170C(v10, qword_100882410);
    return (*(v11 + 16))(v45, v37, v10);
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  sub_1005A2220(v20, v22, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1005A51F8(v9);
    defaultLogger()();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46 = v26;
      *v25 = 136446210;
      v27 = sub_100141FE4(v20, v22, &v46);

      *(v25 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Not using bootstrap base url %{public}s from user defaults because it is not valid", v25, 0xCu);
      sub_10000BB78(v26);
    }

    else
    {
    }

    (*(v43 + 8))(v4, v44);
    goto LABEL_9;
  }

  v28 = *(v11 + 32);
  v28(v16, v9, v10);
  defaultLogger()();
  (*(v11 + 16))(v14, v16, v10);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v41 = v6;
    v42 = v28;
    v32 = v31;
    v40 = swift_slowAlloc();
    v46 = v40;
    *v32 = 136446210;
    v33 = URL.absoluteString.getter();
    v35 = v34;
    (*(v11 + 8))(v14, v10);
    v36 = sub_100141FE4(v33, v35, &v46);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "Using bootstrap base url from defaults: %{public}s", v32, 0xCu);
    sub_10000BB78(v40);

    v28 = v42;

    (*(v43 + 8))(v41, v44);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    (*(v43 + 8))(v6, v44);
  }

  return (v28)(v45, v16, v10);
}

uint64_t sub_1005A51F8(uint64_t a1)
{
  v2 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1005A5260(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v48 - v10;
  __chkstk_darwin(v9);
  v13 = &v48 - v12;
  v14 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v14 - 8);
  v16 = &v48 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v48 - v22;
  if (a2)
  {
    sub_1005A2220(a1, a2, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_1005A51F8(v16);
      defaultLogger()();

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = a1;
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v53 = v28;
        *v27 = 136446210;
        v29 = sub_100141FE4(v26, a2, &v53);

        *(v27 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v24, v25, "Not setting bootstrap to %{public}s because it is not a valid HTTPS url", v27, 0xCu);
        sub_10000BB78(v28);
      }

      else
      {
      }

      (*(v52 + 8))(v11, v51);
    }

    else
    {

      (*(v18 + 32))(v23, v16, v17);
      defaultLogger()();
      (*(v18 + 16))(v21, v23, v17);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v49 = v37;
        v50 = swift_slowAlloc();
        v53 = v50;
        *v37 = 136446210;
        v48 = URL.absoluteString.getter();
        v39 = v38;
        v40 = *(v18 + 8);
        v40(v21, v17);
        v41 = v40;
        v42 = sub_100141FE4(v48, v39, &v53);

        v43 = v49;
        *(v49 + 1) = v42;
        _os_log_impl(&_mh_execute_header, v35, v36, "Setting bootstrap base URL to %{public}s", v43, 0xCu);
        sub_10000BB78(v50);
      }

      else
      {

        v44 = *(v18 + 8);
        v44(v21, v17);
        v41 = v44;
      }

      (*(v52 + 8))(v13, v51);
      v45 = [objc_opt_self() standardUserDefaults];
      URL.absoluteString.getter();
      v46 = String._bridgeToObjectiveC()();

      static DaemonDefaultsKeys.bootstrapURL.getter();
      v47 = String._bridgeToObjectiveC()();

      [v45 setObject:v46 forKey:v47];

      v41(v23, v17);
    }
  }

  else
  {
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Clearing bootstrap base URL", v32, 2u);
    }

    (*(v52 + 8))(v8, v51);
    v33 = [objc_opt_self() standardUserDefaults];
    static DaemonDefaultsKeys.bootstrapURL.getter();
    v34 = String._bridgeToObjectiveC()();

    [v33 removeObjectForKey:v34];
  }
}

uint64_t sub_1005A58C4(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 41) = a1;
  v3 = type metadata accessor for DIPError.Code();
  *(v2 + 88) = v3;
  *(v2 + 96) = *(v3 - 8);
  *(v2 + 104) = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 - 8);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  v5 = type metadata accessor for URL();
  *(v2 + 152) = v5;
  *(v2 + 160) = *(v5 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  *(v2 + 184) = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  *(v2 + 192) = v6;
  *(v2 + 200) = *(v6 - 8);
  *(v2 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_1005A5AEC, 0, 0);
}

uint64_t sub_1005A5AEC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 120);
  v51 = *(v0 + 136);
  v52 = *(v0 + 112);
  v7 = *(v0 + 80);
  v54 = *(v0 + 41);
  static DaemonSignposts.getSTSRequest.getter();
  DIPSignpost.init(_:)();
  sub_1005AE160(v3);
  URL.appendingPathComponent(_:)();
  v8 = *(v2 + 8);
  *(v0 + 216) = v8;
  *(v0 + 224) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v9 = *(v2 + 16);
  *(v0 + 232) = v9;
  *(v0 + 240) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v3, v1, v5);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  v10 = *(v7 + 64);
  v11 = *(v6 + 16);
  v11(v51, v4, v52);
  v12 = sub_1005BEE18(v51);
  v14 = v12;
  *(v0 + 248) = v12;
  if ((v54 & 1) == 0 && (v13 & 1) != 0 && v12)
  {
    v15 = *(v0 + 136);
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = [v12 data];
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [v14 response];
    v23 = *(v17 + 8);
    v23(v15, v16);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1005B05A0();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v53 = *(v0 + 56);
    v55 = *(v0 + 48);
    v39._countAndFlagsBits = 0xD000000000000016;
    v40._countAndFlagsBits = 0x6437623761323661;
    v39._object = 0x8000000100723640;
    v40._object = 0xE800000000000000;
    logMilestone(tag:description:)(v40, v39);
    v49 = *(v0 + 216);
    v42 = *(v0 + 200);
    v41 = *(v0 + 208);
    v50 = *(v0 + 192);
    v48 = *(v0 + 176);
    v43 = *(v0 + 144);
    v47 = *(v0 + 152);
    v44 = *(v0 + 112);

    sub_10000B90C(v19, v21);
    v23(v43, v44);
    v49(v48, v47);
    (*(v42 + 8))(v41, v50);

    v45 = *(v0 + 8);

    return v45(v55, v53);
  }

  else
  {
    v24 = [objc_opt_self() standardUserDefaults];
    v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
    v26 = NSUserDefaults.internalBool(forKey:)(v25);

    if (!v26 && v14)
    {
      v27 = qword_100832D20;
      v28 = v14;
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = sub_1005FFF28(v28);
      if (v30)
      {
        v31._countAndFlagsBits = 0xD000000000000011;
        v31._object = 0x8000000100723320;
        URLRequest.addValue(_:forHTTPHeaderField:)(*&v29, v31);
      }
    }

    v32 = *(v0 + 128);
    v33 = *(v0 + 112);
    v34 = *(v0 + 120);
    v11(v32, *(v0 + 136), v33);
    type metadata accessor for DIPHTTPSession.RequestContainer(0);
    v35 = swift_allocObject();
    *(v0 + 256) = v35;
    swift_defaultActor_initialize();
    (*(v34 + 32))(v35 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v32, v33);
    v36 = swift_task_alloc();
    *(v0 + 264) = v36;
    *(v36 + 16) = v35;
    *(v36 + 24) = v10;
    *(v36 + 32) = 0;
    *(v36 + 40) = _swiftEmptyArrayStorage;
    *(v36 + 48) = v14;
    v37 = swift_task_alloc();
    *(v0 + 272) = v37;
    v38 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
    *v37 = v0;
    v37[1] = sub_1005A667C;

    return DIPRetrier.retry<A>(operation:)(v0 + 16, &unk_1006E91F0, v36, v38);
  }
}

uint64_t sub_1005A667C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1005A7100;
  }

  else
  {
    v2 = sub_1005A67B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005A67B0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);

  v72 = *(v4 + 8);
  v72(v2, v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 280);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005B05A0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v70 = v6;
  v71 = v5;
  v69 = v7;
  if (v9)
  {
    if (v8)
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v10 = qword_100882498;
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      [v10 removeCachedResponseForRequest:isa];
    }

    v64 = *(v0 + 232);
    v12 = *(v0 + 176);
    v13 = *(v0 + 152);
    v60 = *(v0 + 104);
    v73 = *(v0 + 96);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v14 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006BF520;
    v17 = v16 + v15;
    v18 = (v16 + v15 + v14[14]);
    v19 = enum case for DIPError.PropertyKey.serverURL(_:);
    v67 = type metadata accessor for DIPError.PropertyKey();
    v66 = *(*(v67 - 8) + 104);
    v66(v17, v19, v67);
    v18[3] = v13;
    v18[4] = sub_1005AFC38(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v20 = sub_100032DBC(v18);
    v64(v20, v12, v13);
    swift_errorRetain();
    sub_10003C9C0(v16);
    swift_setDeallocating();
    sub_10000BE18(v17, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v63 = enum case for DIPError.Code.internalError(_:);
    v65 = *(v73 + 104);
    v65(v60);
    type metadata accessor for DIPError();
    sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v71, v70);
    v58 = *(v0 + 216);
    v21 = *(v0 + 200);
    v59 = *(v0 + 192);
    v61 = *(v0 + 208);
    v57 = *(v0 + 176);
    v55 = *(v0 + 144);
    v56 = *(v0 + 152);
    v54 = *(v0 + 112);
    v22 = *(v0 + 104);
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v25 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v26 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1006BF520;
    v28 = v27 + v26;
    v29 = (v28 + v25[14]);
    v66(v28, enum case for DIPError.PropertyKey.conversationID(_:), v67);
    v30 = *(v24 + 48);
    v31 = *(v24 + 56);
    v29[3] = &type metadata for String;
    v29[4] = &protocol witness table for String;
    *v29 = v30;
    v29[1] = v31;
    swift_errorRetain();

    sub_10003C9C0(v27);
    swift_setDeallocating();
    sub_10000BE18(v28, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (v65)(v22, v63, v23);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v72(v55, v54);
    v58(v57, v56);
    (*(v21 + 8))(v61, v59);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v74 = *(v0 + 48);
    v68 = *(v0 + 56);
    if (v8)
    {
      v34._countAndFlagsBits = 0xD000000000000016;
      v35._countAndFlagsBits = 0x6437623761323661;
      v34._object = 0x8000000100723640;
      v35._object = 0xE800000000000000;
      logMilestone(tag:description:)(v35, v34);
    }

    else
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v36 = qword_100882498;
      v37 = objc_allocWithZone(NSCachedURLResponse);
      v38 = Data._bridgeToObjectiveC()().super.isa;
      v39 = [v37 initWithResponse:v7 data:v38];

      v40 = sub_100600EC4(v39, 0, 1);
      if (v40)
      {
        v41 = v40;
        v42 = URLRequest._bridgeToObjectiveC()().super.isa;
        v43 = type metadata accessor for DIPURLCache();
        *(v0 + 64) = v36;
        *(v0 + 72) = v43;
        objc_msgSendSuper2((v0 + 64), "storeCachedResponse:forRequest:", v41, v42);

        v39 = v42;
      }

      v44._countAndFlagsBits = 0xD000000000000018;
      v45._countAndFlagsBits = 0x3032326230323266;
      v44._object = 0x8000000100723620;
      v45._object = 0xE800000000000000;
      logMilestone(tag:description:)(v45, v44);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }

    v46 = *(v0 + 216);
    v48 = *(v0 + 200);
    v47 = *(v0 + 208);
    v62 = *(v0 + 192);
    v49 = *(v0 + 176);
    v51 = *(v0 + 144);
    v50 = *(v0 + 152);
    v52 = *(v0 + 112);

    sub_10000B90C(v71, v70);
    v72(v51, v52);
    v46(v49, v50);
    (*(v48 + 8))(v47, v62);

    v53 = *(v0 + 8);

    return v53(v74, v68);
  }
}

uint64_t sub_1005A7100()
{
  v1 = v0[31];
  v37 = v0[29];
  v36 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v38 = v0[13];
  v41 = v0[12];

  v40 = *(v5 + 8);
  v40(v3, v4);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v6 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  v9 = v8 + v7;
  v10 = (v8 + v7 + v6[14]);
  v11 = enum case for DIPError.PropertyKey.serverURL(_:);
  v12 = type metadata accessor for DIPError.PropertyKey();
  v39 = *(*(v12 - 8) + 104);
  v39(v9, v11, v12);
  v10[3] = v2;
  v10[4] = sub_1005AFC38(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v13 = sub_100032DBC(v10);
  v37(v13, v36, v2);
  swift_errorRetain();
  sub_10003C9C0(v8);
  swift_setDeallocating();
  sub_10000BE18(v9, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v34 = enum case for DIPError.Code.internalError(_:);
  v35 = *(v41 + 104);
  v35(v38);
  type metadata accessor for DIPError();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v31 = v0[27];
  v14 = v0[25];
  v32 = v0[24];
  v33 = v0[26];
  v29 = v0[19];
  v30 = v0[22];
  v28 = v0[18];
  v27 = v0[14];
  v15 = v0[13];
  v17 = v0[10];
  v16 = v0[11];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v18 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v19 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1006BF520;
  v21 = v20 + v19;
  v22 = (v21 + v18[14]);
  v39(v21, enum case for DIPError.PropertyKey.conversationID(_:), v12);
  v23 = *(v17 + 48);
  v24 = *(v17 + 56);
  v22[3] = &type metadata for String;
  v22[4] = &protocol witness table for String;
  *v22 = v23;
  v22[1] = v24;
  swift_errorRetain();

  sub_10003C9C0(v20);
  swift_setDeallocating();
  sub_10000BE18(v21, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (v35)(v15, v34, v16);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v40(v28, v27);
  v31(v30, v29);
  (*(v14 + 8))(v33, v32);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1005A770C(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = type metadata accessor for Logger();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1005A7930, 0, 0);
}

uint64_t sub_1005A7930(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[28];
  v4 = v1[27];
  v5 = v1[25];
  v6 = v1[23];
  v30 = v1[21];
  v27 = v1[22];
  v28 = v1[14];
  Date.init()();
  static Date.- infix(_:_:)();
  v7 = *(v3 + 8);
  v1[32] = v7;
  v1[33] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  Date.init()();
  static Date.+ infix(_:_:)();
  v7(v2, v4);
  sub_1005AE160(v5);
  URL.appendingPathComponent(_:)();
  v8 = *(v6 + 8);
  v1[34] = v8;
  v1[35] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v27);
  sub_1005AE358(v28, v30);
  v10 = v1[23];
  v9 = v1[24];
  v12 = v1[21];
  v11 = v1[22];
  (*(v10 + 56))(v12, 0, 1, v11);
  (*(v10 + 32))(v9, v12, v11);
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v14 = v1[28];
  v13 = v1[29];
  v15 = v1[27];
  v17 = v1[19];
  v16 = v1[20];
  v29 = v1[14];
  v31 = qword_100882498;
  v18 = *(v14 + 16);
  v18(v16, v1[31], v15);
  v19 = *(v14 + 56);
  v19(v16, 0, 1, v15);
  v18(v17, v13, v15);
  v19(v17, 0, 1, v15);

  sub_1005B05F4(v29, (v1 + 2));
  v20 = swift_task_alloc();
  v1[36] = v20;
  *v20 = v1;
  v20[1] = sub_1005A7E00;
  v21 = v1[24];
  v23 = v1[19];
  v22 = v1[20];
  v25 = v1[14];
  v24 = v1[15];

  return sub_100604AA4(v21, 0, v22, v23, v31, v24, v25);
}

uint64_t sub_1005A7E00()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 112);

  sub_10054B698(v3);

  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v1, &unk_100849400, &unk_1006BFBB0);

  return _swift_task_switch(sub_1005A7F94, 0, 0);
}

uint64_t sub_1005A7F94()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[31];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[22];
  v1(v0[24], v7);
  v1(v6, v7);
  v2(v4, v5);
  v2(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1005A80B8()
{
  v1[2] = v0;
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1005A823C, 0, 0);
}

uint64_t sub_1005A823C(uint64_t a1)
{
  v2 = v1[12];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[9];
  v7 = v1[6];
  v6 = v1[7];
  v23 = v1[5];
  Date.init()();
  static Date.- infix(_:_:)();
  v8 = *(v3 + 8);
  v1[14] = v8;
  v1[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v5);
  Date.init()();
  static Date.+ infix(_:_:)();
  v8(v4, v5);
  sub_1005AE160(v6);
  URL.appendingPathComponent(_:)();
  v9 = *(v7 + 8);
  v1[16] = v9;
  v1[17] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v23);
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v10 = v1[12];
  v11 = v1[9];
  v12 = v1[10];
  v14 = v1[3];
  v13 = v1[4];
  v24 = qword_100882498;
  v15 = *(v12 + 16);
  v15(v13, v1[13], v11);
  v16 = *(v12 + 56);
  v16(v13, 0, 1, v11);
  v15(v14, v10, v11);
  v16(v14, 0, 1, v11);

  v17 = swift_task_alloc();
  v1[18] = v17;
  *v17 = v1;
  v17[1] = sub_1005A84A8;
  v18 = v1[8];
  v20 = v1[3];
  v19 = v1[4];
  v21 = v1[2];

  return sub_1006069CC(v18, 0, v19, v20, v24, v21);
}

uint64_t sub_1005A84A8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);

  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v1, &unk_100849400, &unk_1006BFBB0);

  return _swift_task_switch(sub_1005A8620, 0, 0);
}

uint64_t sub_1005A8620()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 72);
  (*(v0 + 128))(*(v0 + 64), *(v0 + 40));
  v1(v2, v4);
  v1(v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1005A8714(uint64_t a1, char a2)
{
  *(v3 + 41) = a2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  v5 = type metadata accessor for URLRequest();
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v6 = type metadata accessor for URL();
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  *(v3 + 200) = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  *(v3 + 208) = v7;
  *(v3 + 216) = *(v7 - 8);
  *(v3 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1005A8948, 0, 0);
}

uint64_t sub_1005A8948()
{
  v1 = *(v0 + 184);
  v61 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 80);
  static DaemonSignposts.getProfileRequest.getter();
  DIPSignpost.init(_:)();
  sub_1005AE160(v1);
  URL.appendingPathComponent(_:)();
  v5 = *(v3 + 8);
  *(v0 + 232) = v5;
  *(v0 + 240) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  sub_1005AE358(v4, v61);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v14 = *(v0 + 88);
  LOBYTE(v4) = *(v0 + 41);
  v15 = *(v9 + 16);
  *(v0 + 248) = v15;
  *(v0 + 256) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v7, v6, v8);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  v16 = *(v14 + 64);
  v17 = *(v13 + 16);
  v17(v11, v10, v12);
  v18 = sub_1005BEE18(v11);
  v20 = v18;
  *(v0 + 264) = v18;
  if ((v4 & 1) == 0 && (v19 & 1) != 0 && v18)
  {
    v21 = *(v0 + 144);
    v22 = *(v0 + 120);
    v23 = *(v0 + 128);
    v24 = [v18 data];
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = [v20 response];
    v29 = *(v23 + 8);
    v29(v21, v22);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1005AFC80();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v59 = *(v0 + 56);
    v60 = *(v0 + 48);
    v45._countAndFlagsBits = 0xD000000000000025;
    v46._countAndFlagsBits = 0x3465353336353365;
    v45._object = 0x80000001007234E0;
    v46._object = 0xE800000000000000;
    logMilestone(tag:description:)(v46, v45);
    v47 = v28;
    v48 = *(v0 + 232);
    v49 = *(v0 + 216);
    v57 = *(v0 + 208);
    v58 = *(v0 + 224);
    v55 = *(v0 + 176);
    v56 = *(v0 + 192);
    v50 = *(v0 + 152);
    v51 = *(v0 + 160);
    v52 = *(v0 + 120);

    sub_10000B90C(v25, v27);
    v29(v50, v52);
    v48(v55, v51);
    v48(v56, v51);
    (*(v49 + 8))(v58, v57);

    v53 = *(v0 + 8);

    return v53(v60, v59);
  }

  else
  {
    v30 = [objc_opt_self() standardUserDefaults];
    v31._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
    v32 = NSUserDefaults.internalBool(forKey:)(v31);

    if (!v32 && v20)
    {
      v33 = qword_100832D20;
      v34 = v20;
      if (v33 != -1)
      {
        swift_once();
      }

      v35 = sub_1005FFF28(v34);
      if (v36)
      {
        v37._countAndFlagsBits = 0xD000000000000011;
        v37._object = 0x8000000100723320;
        URLRequest.addValue(_:forHTTPHeaderField:)(*&v35, v37);
      }
    }

    v38 = *(v0 + 136);
    v39 = *(v0 + 120);
    v40 = *(v0 + 128);
    v17(v38, *(v0 + 144), v39);
    type metadata accessor for DIPHTTPSession.RequestContainer(0);
    v41 = swift_allocObject();
    *(v0 + 272) = v41;
    swift_defaultActor_initialize();
    (*(v40 + 32))(v41 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v38, v39);
    v42 = swift_task_alloc();
    *(v0 + 280) = v42;
    *(v42 + 16) = v41;
    *(v42 + 24) = v16;
    *(v42 + 32) = 0;
    *(v42 + 40) = _swiftEmptyArrayStorage;
    *(v42 + 48) = v20;
    v43 = swift_task_alloc();
    *(v0 + 288) = v43;
    v44 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
    *v43 = v0;
    v43[1] = sub_1005A93DC;

    return DIPRetrier.retry<A>(operation:)(v0 + 16, &unk_1006E91C0, v42, v44);
  }
}

uint64_t sub_1005A93DC()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1005A9D24;
  }

  else
  {
    v2 = sub_1005A9510;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005A9510()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);

  v63 = *(v4 + 8);
  v63(v2, v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 296);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005AFC80();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v61 = v7;
  if (v9)
  {
    if (v8)
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v10 = qword_100882498;
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      [v10 removeCachedResponseForRequest:isa];
    }

    v59 = enum case for DIPError.Code.internalError(_:);
    v57 = *(*(v0 + 104) + 104);
    v57(*(v0 + 112));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v5, v6);
    v53 = *(v0 + 232);
    v12 = *(v0 + 216);
    v62 = *(v0 + 224);
    v56 = *(v0 + 208);
    v50 = *(v0 + 176);
    v51 = *(v0 + 192);
    v48 = *(v0 + 152);
    v49 = *(v0 + 160);
    v47 = *(v0 + 120);
    v13 = *(v0 + 112);
    v14 = *(v0 + 88);
    v46 = *(v0 + 96);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v15 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1006BF520;
    v18 = v17 + v16;
    v19 = (v18 + v15[14]);
    v20 = enum case for DIPError.PropertyKey.conversationID(_:);
    v21 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v21 - 8) + 104))(v18, v20, v21);
    v22 = *(v14 + 48);
    v23 = *(v14 + 56);
    v19[3] = &type metadata for String;
    v19[4] = &protocol witness table for String;
    *v19 = v22;
    v19[1] = v23;
    swift_errorRetain();

    sub_10003C9C0(v17);
    swift_setDeallocating();
    sub_10000BE18(v18, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (v57)(v13, v59, v46);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v63(v48, v47);
    v53(v50, v49);
    v53(v51, v49);
    (*(v12 + 8))(v62, v56);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v58 = *(v0 + 56);
    v60 = *(v0 + 48);
    v55 = v6;
    if (v8)
    {
      v26._countAndFlagsBits = 0xD000000000000025;
      v27._countAndFlagsBits = 0x3465353336353365;
      v26._object = 0x80000001007234E0;
      v27._object = 0xE800000000000000;
      logMilestone(tag:description:)(v27, v26);
    }

    else
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v28 = qword_100882498;
      v29 = objc_allocWithZone(NSCachedURLResponse);
      v30 = Data._bridgeToObjectiveC()().super.isa;
      v31 = [v29 initWithResponse:v7 data:v30];

      v32 = sub_100600EC4(v31, 0, 1);
      if (v32)
      {
        v33 = v32;
        v34 = URLRequest._bridgeToObjectiveC()().super.isa;
        v35 = type metadata accessor for DIPURLCache();
        *(v0 + 64) = v28;
        *(v0 + 72) = v35;
        objc_msgSendSuper2((v0 + 64), "storeCachedResponse:forRequest:", v33, v34);

        v31 = v34;
      }

      v36._countAndFlagsBits = 0x6565626362666539;
      v37._countAndFlagsBits = 0xD000000000000027;
      v37._object = 0x80000001007234B0;
      v36._object = 0xE800000000000000;
      logMilestone(tag:description:)(v36, v37);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }

    v38 = *(v0 + 232);
    v40 = *(v0 + 216);
    v39 = *(v0 + 224);
    v52 = *(v0 + 192);
    v54 = *(v0 + 208);
    v41 = *(v0 + 176);
    v42 = *(v0 + 152);
    v43 = *(v0 + 160);
    v44 = *(v0 + 120);

    sub_10000B90C(v5, v55);
    v63(v42, v44);
    v38(v41, v43);
    v38(v52, v43);
    (*(v40 + 8))(v39, v54);

    v45 = *(v0 + 8);

    return v45(v60, v58);
  }
}

uint64_t sub_1005A9D24()
{
  v1 = v0[33];
  v37 = v0[31];
  v36 = v0[24];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  v41 = v0[13];

  v40 = *(v5 + 8);
  v40(v3, v4);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v7 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006BF520;
  v10 = v9 + v8;
  v11 = (v9 + v8 + v7[14]);
  v12 = enum case for DIPError.PropertyKey.serverURL(_:);
  v13 = type metadata accessor for DIPError.PropertyKey();
  v39 = *(*(v13 - 8) + 104);
  v39(v10, v12, v13);
  v11[3] = v2;
  v11[4] = sub_1005AFC38(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v14 = sub_100032DBC(v11);
  v37(v14, v36, v2);
  swift_errorRetain();
  sub_10003C9C0(v9);
  swift_setDeallocating();
  sub_10000BE18(v10, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  LODWORD(v36) = enum case for DIPError.Code.internalError(_:);
  v38 = *(v41 + 104);
  v38(v6);
  type metadata accessor for DIPError();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v33 = v0[29];
  v15 = v0[27];
  v34 = v0[26];
  v35 = v0[28];
  v32 = v0[24];
  v31 = v0[22];
  v29 = v0[19];
  v30 = v0[20];
  v28 = v0[15];
  v16 = v0[14];
  v17 = v0[11];
  v18 = v0[12];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v19 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v20 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006BF520;
  v22 = v21 + v20;
  v23 = (v22 + v19[14]);
  v39(v22, enum case for DIPError.PropertyKey.conversationID(_:), v13);
  v24 = *(v17 + 48);
  v25 = *(v17 + 56);
  v23[3] = &type metadata for String;
  v23[4] = &protocol witness table for String;
  *v23 = v24;
  v23[1] = v25;
  swift_errorRetain();

  sub_10003C9C0(v21);
  swift_setDeallocating();
  sub_10000BE18(v22, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (v38)(v16, v36, v18);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v40(v29, v28);
  v33(v31, v30);
  v33(v32, v30);
  (*(v15 + 8))(v35, v34);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1005AA350()
{
  v0 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_100031898(v3, qword_100848E68);
  v4 = sub_10003170C(v3, qword_100848E68);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id sub_1005AA480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = &v3[OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_ORD_ENDPOINT];
  *v13 = 0x726F5F646E65732FLL;
  *(v13 + 1) = 0xE900000000000064;
  v14 = &v3[OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT];
  *v14 = 0x746F5F646E65732FLL;
  *(v14 + 1) = 0xE900000000000064;
  v15 = &v3[OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_LABEL_ENDPOINT];
  *v15 = 0x6C6F5F646E65732FLL;
  *(v15 + 1) = 0xE900000000000064;
  sub_1005AFB08(a3, &v20 - v11, type metadata accessor for DIPHTTPSession.Configuration);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v16 = &v3[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  *v16 = a1;
  *(v16 + 1) = a2;
  sub_100020260(v22, v21);
  sub_1005AFB08(v12, v10, type metadata accessor for DIPHTTPSession.Configuration);
  type metadata accessor for DIPHTTPSession(0);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] = sub_1005BE690(v21, v10);
  v17 = type metadata accessor for DIPWebService();
  v20.receiver = v3;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, "init");
  sub_1005AFAA8(a3, type metadata accessor for DIPHTTPSession.Configuration);
  sub_10000BB78(v22);
  sub_1005AFAA8(v12, type metadata accessor for DIPHTTPSession.Configuration);
  return v18;
}

uint64_t sub_1005AA678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[250] = v7;
  v8[249] = a7;
  v8[248] = a6;
  v8[247] = a5;
  v8[246] = a4;
  v8[245] = a3;
  v8[244] = a2;
  v8[243] = a1;
  v9 = type metadata accessor for DIPError.Code();
  v8[251] = v9;
  v8[252] = *(v9 - 8);
  v8[253] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v8[254] = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  v8[255] = v10;
  v8[256] = *(v10 - 8);
  v8[257] = swift_task_alloc();

  return _swift_task_switch(sub_1005AA7DC, 0, 0);
}

uint64_t sub_1005AA7DC()
{
  v1 = v0[248];
  v2 = v0[244];
  v3 = v0[243];
  static DaemonSignposts.ordRequest.getter();
  DIPSignpost.init(_:)();
  sub_100007224(&qword_100838818, &unk_1006D0F90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BF520;
  *(v4 + 32) = 0x692D656C646E7562;
  *(v4 + 40) = 0xE900000000000064;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;

  v5 = sub_10003D21C(v4);
  swift_setDeallocating();
  sub_10000BE18(v4 + 32, &qword_100838820, &unk_1006DB6B0);
  swift_deallocClassInstance();
  v0[242] = v5;
  if (v1)
  {
    v6 = v0[248];
    v7 = v0[247];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    sub_10014BC18(v7, v6, v8, v10);
  }

  if (v0[246])
  {
    v11 = v0[245];
    v12 = v0[246];
LABEL_12:
    v0[259] = v12;
    v0[258] = v11;
    v31 = v0[250];
    v32 = v0[249];
    v0[241] = type metadata accessor for ORDRequest(0);
    v33 = sub_100032DBC(v0 + 238);
    sub_1005AFB08(v32, v33, type metadata accessor for ORDRequest);
    v34 = *(v31 + OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_ORD_ENDPOINT);
    v35 = *(v31 + OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_ORD_ENDPOINT + 8);

    v36._countAndFlagsBits = v34;
    v36._object = v35;
    String.append(_:)(v36);
    v0[260] = v12;
    v37 = v0[242];
    v0[261] = v37;
    v38 = swift_task_alloc();
    v0[262] = v38;
    *v38 = v0;
    v38[1] = sub_1005AAEE8;

    return sub_1005AC528((v0 + 238), v11, v12, v37);
  }

  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v13 = *(qword_100882440 + 56);
  os_unfair_lock_lock(v13 + 126);
  memcpy(v0 + 63, &v13[4], 0x1E8uLL);
  sub_100394180((v0 + 63), (v0 + 124));
  os_unfair_lock_unlock(v13 + 126);
  memcpy(v0 + 2, v0 + 63, 0x1E8uLL);
  if (sub_1000A257C((v0 + 2)) != 1)
  {
    sub_1000AA624((v0 + 6), (v0 + 185));
    sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
    v11 = v0[26];
    v12 = v0[27];

    sub_1000AA65C((v0 + 6));
    goto LABEL_12;
  }

  v14 = v0[253];
  v15 = v0[252];
  v16 = v0[251];

  v43 = *(v15 + 104);
  v43(v14, enum case for DIPError.Code.unexpectedDaemonState(_:), v16);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v40 = enum case for DIPError.Code.internalError(_:);
  v17 = v0[256];
  v41 = v0[255];
  v42 = v0[257];
  v18 = v0[253];
  v39 = v0[251];
  v19 = v0[250];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v20 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v21 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1006BF520;
  v23 = v22 + v21;
  v24 = (v23 + v20[14]);
  v25 = enum case for DIPError.PropertyKey.conversationID(_:);
  v26 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v26 - 8) + 104))(v23, v25, v26);
  v27 = *(v19 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v28 = *(v19 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v24[3] = &type metadata for String;
  v24[4] = &protocol witness table for String;
  *v24 = v27;
  v24[1] = v28;
  swift_errorRetain();

  sub_10003C9C0(v22);
  swift_setDeallocating();
  sub_10000BE18(v23, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v43(v18, v40, v39);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v17 + 8))(v42, v41);

  v29 = v0[1];

  return v29();
}

uint64_t sub_1005AAEE8()
{
  v2 = *v1;
  *(*v1 + 2104) = v0;

  if (v0)
  {
    v3 = sub_1005AB11C;
  }

  else
  {

    sub_10000BB78((v2 + 1904));
    v3 = sub_1005AB02C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005AB02C()
{
  v1 = v0[257];
  v2 = v0[256];
  v3 = v0[255];
  v4._countAndFlagsBits = 0x6462386637643638;
  v5._object = 0x8000000100723440;
  v4._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0xD000000000000014;
  logMilestone(tag:description:)(v4, v5);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005AB11C()
{
  v1 = v0[259];
  v2 = v0[258];
  v3 = v0[253];
  v29 = v0[252];

  sub_10000BB78(v0 + 238);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v4 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  v7 = v6 + v5;
  v8 = (v6 + v5 + v4[14]);
  v9 = enum case for DIPError.PropertyKey.serverURL(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  v28 = *(*(v10 - 8) + 104);
  v28(v7, v9, v10);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = v2;
  v8[1] = v1;
  swift_errorRetain();
  sub_10003C9C0(v6);
  swift_setDeallocating();
  sub_10000BE18(v7, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v26 = enum case for DIPError.Code.internalError(_:);
  v27 = *(v29 + 104);
  v27(v3);
  type metadata accessor for DIPError();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v11 = v0[256];
  v24 = v0[255];
  v25 = v0[257];
  v12 = v0[253];
  v13 = v0[251];
  v14 = v0[250];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v15 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006BF520;
  v18 = v17 + v16;
  v19 = (v18 + v15[14]);
  v28(v18, enum case for DIPError.PropertyKey.conversationID(_:), v10);
  v20 = *(v14 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v21 = *(v14 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v19[3] = &type metadata for String;
  v19[4] = &protocol witness table for String;
  *v19 = v20;
  v19[1] = v21;
  swift_errorRetain();

  sub_10003C9C0(v17);
  swift_setDeallocating();
  sub_10000BE18(v18, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (v27)(v12, v26, v13);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v11 + 8))(v25, v24);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1005AB670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[245] = v3;
  v4[244] = a3;
  v4[243] = a2;
  v4[242] = a1;
  v5 = type metadata accessor for DIPError.Code();
  v4[246] = v5;
  v4[247] = *(v5 - 8);
  v4[248] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v4[249] = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  v4[250] = v6;
  v4[251] = *(v6 - 8);
  v4[252] = swift_task_alloc();

  return _swift_task_switch(sub_1005AB7C4, 0, 0);
}

uint64_t sub_1005AB7C4()
{
  v1 = v0[244];
  static DaemonSignposts.otdRequest.getter();
  DIPSignpost.init(_:)();
  if (v1)
  {
    v2 = v0[243];
    v3 = v0[244];
LABEL_10:
    v0[254] = v3;
    v0[253] = v2;
    v20 = v0[245];
    v21 = v0[242];
    v0[241] = type metadata accessor for OTDRequest(0);
    v22 = sub_100032DBC(v0 + 238);
    sub_1005AFB08(v21, v22, type metadata accessor for OTDRequest);
    v23 = *(v20 + OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT);
    v24 = *(v20 + OBJC_IVAR____TtC8coreidvd23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT + 8);

    v25._countAndFlagsBits = v23;
    v25._object = v24;
    String.append(_:)(v25);
    v0[255] = v3;
    v26 = swift_task_alloc();
    v0[256] = v26;
    *v26 = v0;
    v26[1] = sub_1005ABDC4;

    return sub_1005AC528((v0 + 238), v2, v3, 0);
  }

  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100882440 + 56);
  os_unfair_lock_lock(v4 + 126);
  memcpy(v0 + 63, &v4[4], 0x1E8uLL);
  sub_100394180((v0 + 63), (v0 + 124));
  os_unfair_lock_unlock(v4 + 126);
  memcpy(v0 + 2, v0 + 63, 0x1E8uLL);
  if (sub_1000A257C((v0 + 2)) != 1)
  {
    sub_1000AA624((v0 + 6), (v0 + 185));
    sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
    v2 = v0[26];
    v3 = v0[27];

    sub_1000AA65C((v0 + 6));
    goto LABEL_10;
  }

  v5 = *(v0[247] + 104);
  v5(v0[248], enum case for DIPError.Code.serverUnavailable(_:), v0[246]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v28 = enum case for DIPError.Code.internalError(_:);
  v6 = v0[251];
  v29 = v0[250];
  v30 = v0[252];
  v7 = v0[248];
  v27 = v0[246];
  v8 = v0[245];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v9 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006BF520;
  v12 = v11 + v10;
  v13 = (v12 + v9[14]);
  v14 = enum case for DIPError.PropertyKey.conversationID(_:);
  v15 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v15 - 8) + 104))(v12, v14, v15);
  v16 = *(v8 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v17 = *(v8 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v13[3] = &type metadata for String;
  v13[4] = &protocol witness table for String;
  *v13 = v16;
  v13[1] = v17;
  swift_errorRetain();

  sub_10003C9C0(v11);
  swift_setDeallocating();
  sub_10000BE18(v12, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v5(v7, v28, v27);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v6 + 8))(v30, v29);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1005ABDC4()
{
  v2 = *v1;
  *(*v1 + 2056) = v0;

  if (v0)
  {
    v3 = sub_1005ABFE4;
  }

  else
  {

    sub_10000BB78((v2 + 1904));
    v3 = sub_1005ABEF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005ABEF4()
{
  v1 = v0[252];
  v2 = v0[251];
  v3 = v0[250];
  v4._countAndFlagsBits = 0x3135306333336665;
  v5._object = 0x80000001007233C0;
  v4._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0xD000000000000014;
  logMilestone(tag:description:)(v4, v5);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005ABFE4()
{
  v1 = v0[254];
  v2 = v0[253];
  v3 = v0[248];
  v29 = v0[247];

  sub_10000BB78(v0 + 238);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v4 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  v7 = v6 + v5;
  v8 = (v6 + v5 + v4[14]);
  v9 = enum case for DIPError.PropertyKey.serverURL(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  v28 = *(*(v10 - 8) + 104);
  v28(v7, v9, v10);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = v2;
  v8[1] = v1;
  swift_errorRetain();
  sub_10003C9C0(v6);
  swift_setDeallocating();
  sub_10000BE18(v7, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v26 = enum case for DIPError.Code.internalError(_:);
  v27 = *(v29 + 104);
  v27(v3);
  type metadata accessor for DIPError();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v11 = v0[251];
  v24 = v0[250];
  v25 = v0[252];
  v12 = v0[248];
  v23 = v0[246];
  v13 = v0[245];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v14 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1006BF520;
  v17 = v16 + v15;
  v18 = (v17 + v14[14]);
  v28(v17, enum case for DIPError.PropertyKey.conversationID(_:), v10);
  v19 = *(v13 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v20 = *(v13 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v18[3] = &type metadata for String;
  v18[4] = &protocol witness table for String;
  *v18 = v19;
  v18[1] = v20;
  swift_errorRetain();

  sub_10003C9C0(v16);
  swift_setDeallocating();
  sub_10000BE18(v17, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (v27)(v12, v26, v23);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v11 + 8))(v25, v24);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005AC528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = type metadata accessor for URLRequest();
  v5[44] = v6;
  v5[45] = *(v6 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v5[51] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[52] = v7;
  v5[53] = *(v7 - 8);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v5[56] = v8;
  v5[57] = *(v8 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = type metadata accessor for OTDRequest(0);
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = type metadata accessor for ORDRequest(0);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[65] = v9;
  v5[66] = *(v9 - 8);
  v5[67] = swift_task_alloc();

  return _swift_task_switch(sub_1005AC7F0, 0, 0);
}

uint64_t sub_1005AC7F0(uint64_t a1)
{
  v148 = v1;
  v2 = v1[39];
  defaultLogger()();
  sub_10001F2EC(v2, (v1 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[67];
    v6 = v1[66];
    v7 = v1[65];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v146 = v9;
    *v8 = 136446210;
    sub_10000BA08(v1 + 2, v1[5]);
    v1[38] = swift_getDynamicType();
    sub_100007224(&qword_100848F90, &qword_1006E96D0);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_10000BB78(v1 + 2);
    v13 = sub_100141FE4(v10, v12, &v146);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "coreidvd: sendPostRequest of type %{public}s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v1[67];
    v15 = v1[66];
    v16 = v1[65];

    sub_10000BB78(v1 + 2);
    (*(v15 + 8))(v14, v16);
  }

  sub_10001F2EC(v1[39], (v1 + 6));
  if (swift_dynamicCast())
  {
    v17 = v1[39];
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_10001F2EC(v17, (v1 + 30));
    swift_dynamicCast();
    sub_1005AFC38(&qword_100848F88, type metadata accessor for ORDRequest, &unk_1006C1444);
    v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v20 = v19;
    v22 = v1[63];
    v21 = v1[64];

    v23 = type metadata accessor for ORDRequest;
LABEL_8:
    v26 = v23;
    sub_1005AFAA8(v22, v23);
    sub_1005AFAA8(v21, v26);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v24 = v1[39];
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_10001F2EC(v24, (v1 + 26));
    swift_dynamicCast();
    sub_1005AFC38(&unk_1008480C0, type metadata accessor for OTDRequest, &unk_1006C1534);
    v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v20 = v25;
    v22 = v1[60];
    v21 = v1[61];

    v23 = type metadata accessor for OTDRequest;
    goto LABEL_8;
  }

  if (!swift_dynamicCast())
  {
    v90 = v1[57];
    v91 = v1[58];
    v92 = v1[56];
    v93 = v1[40];
    v94 = v1[41];
    v95 = v1[39];
    v146 = 0;
    v147 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v146 = 0xD000000000000015;
    v147 = 0x8000000100723270;
    sub_10000BA08(v95, v95[3]);
    swift_getDynamicType();
    v96._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v96);

    (*(v90 + 104))(v91, enum case for DIPError.Code.badLogic(_:), v92);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v97 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v98 = (*(*v97 + 80) + 32) & ~*(*v97 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_1006BF520;
    v100 = v99 + v98;
    v101 = (v100 + v97[14]);
    v102 = enum case for DIPError.PropertyKey.serverURL(_:);
    v103 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v103 - 8) + 104))(v100, v102, v103);
    v101[3] = &type metadata for String;
    v101[4] = &protocol witness table for String;
    *v101 = v93;
    v101[1] = v94;

    sub_10003C9C0(v99);
    swift_setDeallocating();
    sub_10000BE18(v100, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v28 = v1[57];
    v27 = v1[58];
    v143 = v1[56];
    v29 = v1[40];
    v30 = v1[41];
    sub_10000BB78(v1 + 6);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v31 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v32 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1006BF520;
    v34 = v33 + v32;
    v35 = (v34 + v31[14]);
    v36 = enum case for DIPError.PropertyKey.serverURL(_:);
    v37 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v37 - 8) + 104))(v34, v36, v37);
    v35[3] = &type metadata for String;
    v35[4] = &protocol witness table for String;
    *v35 = v29;
    v35[1] = v30;

    swift_errorRetain();
    sub_10003C9C0(v33);
    swift_setDeallocating();
    sub_10000BE18(v34, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v28 + 104))(v27, enum case for DIPError.Code.internalError(_:), v143);
    type metadata accessor for DIPError();
    sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_9;
  }

  v40 = v1[39];

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10001F2EC(v40, (v1 + 14));
  swift_dynamicCast();
  v41 = v1[19];
  v42 = v1[20];
  v43 = v1[21];
  v1[22] = v1[18];
  v1[23] = v41;
  v1[24] = v42;
  v1[25] = v43;
  sub_1005AFA54();
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v20 = v44;

LABEL_15:
  v46 = v1[52];
  v45 = v1[53];
  v47 = v1[51];
  v1[68] = v20;
  v1[69] = v18;
  sub_10000BB78(v1 + 6);
  URL.init(string:)();
  v48 = (*(v45 + 48))(v47, 1, v46);
  v49 = v1[51];
  v50 = v18;
  v144 = v20;
  if (v48 == 1)
  {
    v51 = v1[57];
    v52 = v1[58];
    v53 = v1[56];
    v54 = v1[40];
    v55 = v1[41];
    sub_10000BE18(v49, &unk_100844540, &unk_1006BFBC0);
    (*(v51 + 104))(v52, enum case for DIPError.Code.badLogic(_:), v53);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v56 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v57 = (*(*v56 + 80) + 32) & ~*(*v56 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1006BF520;
    v59 = v58 + v57;
    v60 = (v58 + v57 + v56[14]);
    v61 = enum case for DIPError.PropertyKey.serverURL(_:);
    v62 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v62 - 8) + 104))(v59, v61, v62);
    v60[3] = &type metadata for String;
    v60[4] = &protocol witness table for String;
    *v60 = v54;
    v60[1] = v55;

    sub_10003C9C0(v58);
    swift_setDeallocating();
    sub_10000BE18(v59, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v50, v144);
LABEL_9:

    v38 = v1[1];
LABEL_10:

    return v38();
  }

  v142 = v18;
  v64 = v1[54];
  v63 = v1[55];
  v66 = v1[52];
  v65 = v1[53];
  v67 = v1[48];
  v69 = v1[42];
  v68 = v1[43];
  (*(v65 + 32))(v63, v49, v66);
  v70 = *(v68 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession);
  (*(v65 + 16))(v64, v63, v66);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v141 = v70;
  sub_1005C3550(v67, 0);
  URLRequest.cachePolicy.setter();
  if (v69)
  {
    v71 = v1[42];
    v74 = *(v71 + 64);
    v73 = v71 + 64;
    v72 = v74;
    v75 = -1;
    v76 = -1 << *(v1[42] + 32);
    if (-v76 < 64)
    {
      v75 = ~(-1 << -v76);
    }

    v77 = v75 & v72;
    v78 = ((63 - v76) >> 6);
    v145 = v1[42];

    v79 = 0;
    while (v77)
    {
      v80 = v79;
LABEL_26:
      v81 = __clz(__rbit64(v77));
      v77 &= v77 - 1;
      v82 = (v80 << 10) | (16 * v81);
      v83 = (*(v145 + 6) + v82);
      v84 = *v83;
      v67 = v83[1];
      v85 = (*(v145 + 7) + v82);
      v87 = *v85;
      v86 = v85[1];

      v88.value._countAndFlagsBits = v87;
      v88.value._object = v86;
      v89._countAndFlagsBits = v84;
      v89._object = v67;
      URLRequest.setValue(_:forHTTPHeaderField:)(v88, v89);
    }

    while (1)
    {
      v80 = (v79 + 1);
      if (__OFADD__(v79, 1))
      {
        break;
      }

      if (v80 >= v78)
      {

        goto LABEL_30;
      }

      v77 = *(v73 + 8 * v80);
      ++v79;
      if (v77)
      {
        v79 = v80;
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_30:
  v104 = v1[49];
  v105 = v1[50];
  v106 = v1[47];
  v107 = v1[44];
  v108 = v1[45];
  v109 = *(v108 + 32);
  (v109)(v104, v1[48], v107);
  URLRequest.httpMethod.setter();
  v110.value._countAndFlagsBits = 0xD000000000000010;
  v111._countAndFlagsBits = 0x2D746E65746E6F43;
  v111._object = 0xEC00000065707954;
  v110.value._object = 0x80000001006FA390;
  URLRequest.setValue(_:forHTTPHeaderField:)(v110, v111);
  sub_10000B8B8(v142, v144);
  URLRequest.httpBody.setter();
  v145 = v109;
  (v109)(v105, v104, v107);
  v67 = *(v108 + 16);
  (v67)(v106, v105, v107);
  v112 = v106;
  v73 = v141;
  v113 = sub_1005BEE18(v112);
  v78 = v113;
  v1[70] = v113;
  if ((v114 & 1) != 0 && v113)
  {
    v115 = v1[47];
    v117 = v1[44];
    v116 = v1[45];
    v118 = [v113 data];
    v119 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000B90C(v119, v120);

    v121 = [v78 response];
    v122 = *(v116 + 8);
    v122(v115, v117);
    v123 = v1[55];
    v124 = v1[52];
    v125 = v1[53];
    v126 = v1[50];
    v127 = v1[44];
    sub_10000B90C(v1[69], v1[68]);
    v122(v126, v127);
    (*(v125 + 8))(v123, v124);

    v38 = v1[1];
    goto LABEL_10;
  }

  v128 = [objc_opt_self() standardUserDefaults];
  v129._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
  v130 = NSUserDefaults.internalBool(forKey:)(v129);

  if (!v130 && v78)
  {
    v131 = qword_100832D20;
    v79 = v78;
    if (v131 == -1)
    {
LABEL_36:
      v132 = sub_1005FFF28(v79);
      if (v133)
      {
        v134._countAndFlagsBits = 0xD000000000000011;
        v134._object = 0x8000000100723320;
        URLRequest.addValue(_:forHTTPHeaderField:)(*&v132, v134);
      }

      goto LABEL_39;
    }

LABEL_43:
    swift_once();
    goto LABEL_36;
  }

LABEL_39:
  v135 = v1[46];
  v136 = v1[44];
  (v67)(v135, v1[47], v136);
  type metadata accessor for DIPHTTPSession.RequestContainer(0);
  v137 = swift_allocObject();
  v1[71] = v137;
  swift_defaultActor_initialize();
  v145(v137 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v135, v136);
  v138 = swift_task_alloc();
  v1[72] = v138;
  *(v138 + 16) = v137;
  *(v138 + 24) = v73;
  *(v138 + 32) = 0;
  *(v138 + 40) = _swiftEmptyArrayStorage;
  *(v138 + 48) = v78;
  v139 = swift_task_alloc();
  v1[73] = v139;
  v140 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
  *v139 = v1;
  v139[1] = sub_1005ADB0C;

  return DIPRetrier.retry<A>(operation:)(v1 + 34, &unk_1006E96C0, v138, v140);
}

uint64_t sub_1005ADB0C()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {

    v3 = sub_1005ADDD4;
  }

  else
  {
    v4 = v2[34];
    v5 = v2[35];
    v6 = v2[36];
    sub_10000B90C(v4, v5);

    v3 = sub_1005ADC44;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005ADC44()
{
  v1 = v0[70];
  v2 = v0[47];
  v3 = v0[44];
  v4 = v0[45];

  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v0[55];
  v8 = v0[52];
  v7 = v0[53];
  v9 = v0[50];
  v10 = v0[44];
  sub_10000B90C(v0[69], v0[68]);
  v5(v9, v10);
  (*(v7 + 8))(v6, v8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005ADDD4()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v13 = v0[55];
  v4 = v0[52];
  v5 = v0[53];
  v6 = v0[50];
  v7 = v0[47];
  v9 = v0[44];
  v8 = v0[45];

  v10 = *(v8 + 8);
  v10(v7, v9);
  sub_10000B90C(v2, v3);
  v10(v6, v9);
  (*(v5 + 8))(v13, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005ADF6C()
{
}

id sub_1005ADFC8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DIPAssessmentWebService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005AE088()
{
  v0 = type metadata accessor for DIPHTTPSession.Configuration(0);
  sub_100031898(v0, qword_100882428);
  v1 = sub_10003170C(v0, qword_100882428);
  v2 = v0[6];
  *&v1[v2] = 0x3FE0000000000000;
  v3 = enum case for DIPBackoffStrategy.exponential(_:);
  v4 = type metadata accessor for DIPBackoffStrategy();
  result = (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  *v1 = 0x4024000000000000;
  *(v1 + 1) = 3;
  v1[v0[7]] = 0;
  v1[v0[8]] = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  return result;
}

uint64_t sub_1005AE160@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = static DIPFeatures.sharedInstance.getter();
  if (v5 && (v6 = [v5 getStaticAssessmentURL], swift_unknownObjectRelease(), v6))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    result = (*(v8 + 48))(v4, 1, v7);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {

      return (*(v8 + 32))(a1, v4, v7);
    }
  }

  else
  {
    if (qword_100832CE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for URL();
    v11 = sub_10003170C(v10, qword_100848E68);
    v12 = *(*(v10 - 8) + 16);

    return v12(a1, v11, v10);
  }

  return result;
}

uint64_t sub_1005AE358@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a3;
  v21[3] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_100007224(&qword_100848FA0, &qword_1006E94D0);
  __chkstk_darwin(v10 - 8);
  v12 = v21 - v11;
  v13 = type metadata accessor for URLComponents();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000BE18(v12, &qword_100848FA0, &qword_1006E94D0);
    (*(v4 + 104))(v6, enum case for DIPError.Code.badLogic(_:), v3);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  else
  {
    v18 = v6;
    (*(v14 + 32))(v16, v12, v13);
    sub_100077E90();
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    v19 = type metadata accessor for URL();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v9, 1, v19) == 1)
    {
      sub_10000BE18(v9, &unk_100844540, &unk_1006BFBC0);
      (*(v4 + 104))(v18, enum case for DIPError.Code.badLogic(_:), v3);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return (*(v14 + 8))(v16, v13);
    }

    else
    {
      (*(v14 + 8))(v16, v13);
      return (*(v20 + 32))(v21[0], v9, v19);
    }
  }
}

uint64_t sub_1005AE88C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005AEA1C, 0, 0);
}

uint64_t sub_1005AEA1C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing profile cache", v4, 2u);
  }

  v5 = v1[14];
  v6 = v1[10];
  v7 = v1[11];

  v8 = *(v7 + 8);
  v1[15] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[16] = v9;
  *v9 = v1;
  v9[1] = sub_1005AEB58;
  v10 = v1[3];

  return sub_1005A8714(v10, 1);
}

uint64_t sub_1005AEB58(uint64_t a1, uint64_t a2)
{
  *(*v3 + 136) = v2;

  if (v2)
  {
    v4 = sub_1005AEDB8;
  }

  else
  {

    v4 = sub_1005AEC78;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005AEC78(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[15];
  v6 = v1[13];
  v7 = v1[10];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done refreshing configuration cache", v8, 2u);
  }

  v5(v6, v7);

  v9 = v1[1];

  return v9();
}

uint64_t sub_1005AEDB8()
{
  v1 = v0[12];
  v2 = v0[9];
  v8 = v0[10];
  v9 = v0[15];
  v3 = v0[7];
  v4 = v0[8];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v5, v2, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v9(v1, v8);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005AEFEC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1005AF17C, 0, 0);
}

uint64_t sub_1005AF17C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing sts cache", v4, 2u);
  }

  v5 = v1[13];
  v6 = v1[9];
  v7 = v1[10];

  v8 = *(v7 + 8);
  v1[14] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[15] = v9;
  *v9 = v1;
  v9[1] = sub_1005AF2B4;

  return sub_1005A58C4(1);
}

uint64_t sub_1005AF2B4(uint64_t a1, uint64_t a2)
{
  *(*v3 + 128) = v2;

  if (v2)
  {
    v4 = sub_1005AF514;
  }

  else
  {

    v4 = sub_1005AF3D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005AF3D4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[14];
  v6 = v1[12];
  v7 = v1[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done refreshing sts cache", v8, 2u);
  }

  v5(v6, v7);

  v9 = v1[1];

  return v9();
}

uint64_t sub_1005AF514()
{
  v1 = v0[11];
  v2 = v0[8];
  v8 = v0[9];
  v9 = v0[14];
  v3 = v0[6];
  v4 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1005AFC38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v5, v2, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v9(v1, v8);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005AF748()
{

  return swift_deallocClassInstance();
}

void *sub_1005AF7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v7 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v30[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = &v30[-1] - v12;
  __chkstk_darwin(v11);
  v15 = &v30[-1] - v14;
  if (qword_100832CF0 != -1)
  {
    swift_once();
  }

  v16 = sub_10003170C(v7, qword_100882428);
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = v7[6];
  v20 = type metadata accessor for DIPBackoffStrategy();
  (*(*(v20 - 8) + 16))(&v15[v19], &v16[v19], v20);
  v21 = v7[7];
  v22 = v16[v21];
  v23 = v16[v7[8]];
  v24 = v16[v7[9]];
  *v15 = v17;
  *(v15 + 1) = v18;
  v15[v21] = v22;
  v15[v7[8]] = v23;
  v15[v7[9]] = v24;
  v25 = &v15[v7[10]];
  *v25 = a3;
  *(v25 + 1) = a4;
  sub_1005AFB08(v15, v13, type metadata accessor for DIPHTTPSession.Configuration);
  type metadata accessor for DIPAssessmentStaticWebService();
  v26 = swift_allocObject();
  v26[2] = 1937011503;
  v26[3] = 0xE400000000000000;
  v26[4] = 0x656C69666F72702FLL;
  v26[5] = 0xE800000000000000;
  v26[6] = v29;
  v26[7] = a2;
  sub_1005AFB08(v13, v10, type metadata accessor for DIPHTTPSession.Configuration);
  type metadata accessor for DIPAccountManager();

  static DIPAccountManager.sharedInstance.getter();
  type metadata accessor for DIPHTTPSession(0);
  swift_allocObject();
  v27 = sub_1005BE690(v30, v10);
  sub_1005AFAA8(v13, type metadata accessor for DIPHTTPSession.Configuration);
  v26[8] = v27;
  sub_1005AFAA8(v15, type metadata accessor for DIPHTTPSession.Configuration);
  return v26;
}

unint64_t sub_1005AFA54()
{
  result = qword_100848F78;
  if (!qword_100848F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848F78);
  }

  return result;
}

uint64_t sub_1005AFAA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005AFB08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005AFB70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_1005BFF98(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_1005AFC38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005AFC80()
{
  result = qword_100848F98;
  if (!qword_100848F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848F98);
  }

  return result;
}

uint64_t sub_1005AFCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[227] = a4;
  v4[226] = a3;
  v4[225] = a2;
  v4[224] = a1;
  v5 = type metadata accessor for DIPBackoffStrategy();
  v4[228] = v5;
  v4[229] = *(v5 - 8);
  v4[230] = swift_task_alloc();
  v4[231] = type metadata accessor for DIPHTTPSession.Configuration(0);
  v4[232] = swift_task_alloc();
  v4[233] = swift_task_alloc();

  return _swift_task_switch(sub_1005AFDDC, 0, 0);
}

uint64_t sub_1005AFDDC()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = qword_100881E78;
  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_1000318FC(&v2[4], (v0 + 169));
  os_unfair_lock_unlock(v2 + 54);
  v3 = v0[180];
  v4 = v0[181];
  sub_10001F640(v3, v4);
  sub_100031918((v0 + 169));
  if (v3)
  {
    v5 = v3(v0[224], v0[225]);
    sub_10001FE8C(v3, v4);

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v8 = *(v1 + 16);
    os_unfair_lock_lock(v8 + 54);
    sub_100031B5C(&v8[4], (v0 + 194));
    os_unfair_lock_unlock(v8 + 54);
    sub_100020260((v0 + 194), (v0 + 219));
    sub_100031918((v0 + 194));
    v0[234] = *sub_10000BA08(v0 + 219, v0[222]);
    v9 = swift_task_alloc();
    v0[235] = v9;
    *v9 = v0;
    v9[1] = sub_1005AFFE4;

    return sub_10050886C((v0 + 2));
  }
}

uint64_t sub_1005AFFE4()
{
  v2 = *v1;
  *(*v1 + 1888) = v0;

  if (v0)
  {
    v3 = *(v2 + 1872);
    v4 = sub_1005B0320;
  }

  else
  {
    v4 = sub_1005B0100;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005B0100()
{
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1840);
  v4 = *(v0 + 1832);
  v5 = *(v0 + 1824);
  v6 = *(v0 + 1816);
  v7 = *(v0 + 1808);
  sub_10000BB78((v0 + 1752));
  memcpy((v0 + 504), (v0 + 48), 0x1A1uLL);
  sub_1000AA624(v0 + 504, v0 + 928);
  sub_1000F2758(v0 + 16);
  sub_1000AA65C(v0 + 504);
  v8 = (v0 + 696);
  if (*(v0 + 704))
  {
    v8 = (v0 + 512);
  }

  v9 = *v8;
  v10 = (v0 + 712);
  if (*(v0 + 720))
  {
    v10 = (v0 + 520);
  }

  v11 = *v10;
  v12 = (v0 + 728);
  if (*(v0 + 736))
  {
    v12 = (v0 + 528);
  }

  *v3 = *v12;
  (*(v4 + 104))(v3, enum case for DIPBackoffStrategy.exponential(_:), v5);
  *v1 = v9;
  *(v1 + 1) = v11;
  (*(v4 + 32))(&v1[v2[6]], v3, v5);
  v1[v2[7]] = 1;
  v1[v2[8]] = 1;
  v1[v2[9]] = 0;
  v13 = &v1[v2[10]];
  *v13 = v7;
  *(v13 + 1) = v6;
  v14 = *(v0 + 1864);
  v15 = *(v0 + 1856);
  v16 = *(v0 + 1800);
  v17 = *(v0 + 1792);

  sub_1005AFB08(v14, v15, type metadata accessor for DIPHTTPSession.Configuration);
  v18 = objc_allocWithZone(type metadata accessor for DIPAssessmentWebService());

  v19 = sub_1005AA480(v17, v16, v15);
  sub_1005AFAA8(v14, type metadata accessor for DIPHTTPSession.Configuration);

  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_1005B0320()
{

  return _swift_task_switch(sub_1005B0388, 0, 0);
}

uint64_t sub_1005B0388()
{
  sub_10000BB78(v0 + 219);
  if (qword_100832D10 != -1)
  {
    swift_once();
  }

  v1 = v0[233];
  v2 = sub_10003170C(v0[231], qword_100882460);
  sub_1005AFB08(v2, v1, type metadata accessor for DIPHTTPSession.Configuration);
  v3 = v0[233];
  v4 = v0[232];
  v5 = v0[225];
  v6 = v0[224];
  sub_1005AFB08(v3, v4, type metadata accessor for DIPHTTPSession.Configuration);
  v7 = objc_allocWithZone(type metadata accessor for DIPAssessmentWebService());

  v8 = sub_1005AA480(v6, v5, v4);
  sub_1005AFAA8(v3, type metadata accessor for DIPHTTPSession.Configuration);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1005B04D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1005BFF98(a1, v4, v5, v6, v8, v7);
}

unint64_t sub_1005B05A0()
{
  result = qword_100848FA8;
  if (!qword_100848FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848FA8);
  }

  return result;
}

uint64_t sub_1005B0650()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 126);
  memcpy(__dst, &v1[4], sizeof(__dst));
  sub_10000BBC4(__dst, v30, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v1 + 126);
  v25 = *&__dst[96];
  v26 = *&__dst[112];
  v27 = *&__dst[128];
  v28 = *&__dst[144];
  v21 = *&__dst[32];
  v22 = *&__dst[48];
  v23 = *&__dst[64];
  v24 = *&__dst[80];
  v19 = *__dst;
  v20 = *&__dst[16];
  v2 = *&__dst[160];
  v3 = __dst[168];
  memcpy(__src, &__dst[169], sizeof(__src));
  v30[6] = *&__dst[96];
  v30[7] = *&__dst[112];
  v30[8] = *&__dst[128];
  v30[9] = *&__dst[144];
  v30[2] = *&__dst[32];
  v30[3] = *&__dst[48];
  v30[4] = *&__dst[64];
  v30[5] = *&__dst[80];
  v30[0] = *__dst;
  v30[1] = *&__dst[16];
  memcpy(v33, &__dst[169], sizeof(v33));
  v31 = *&__dst[160];
  v32 = __dst[168];
  if (sub_1000A257C(v30) == 1)
  {
    v11 = v25;
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v7 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v5 = v19;
    v6 = v20;
    v15 = v2;
    v16 = v3;
    memcpy(v17, __src, sizeof(v17));
    sub_10000BE18(&v5, &qword_100839998, &qword_1006DCAA0);
    return 3;
  }

  else
  {
    v11 = v25;
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v7 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v5 = v19;
    v6 = v20;
    v15 = v2;
    v16 = v3;
    memcpy(v17, __src, sizeof(v17));
    sub_10000BE18(&v5, &qword_100839998, &qword_1006DCAA0);
    if (v3)
    {
      return 3;
    }

    else
    {
      return v2;
    }
  }
}

double sub_1005B083C()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 126);
  memcpy(__dst, &v1[4], sizeof(__dst));
  sub_10000BBC4(__dst, v32, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v1 + 126);
  v28 = *&__dst[128];
  v29 = *&__dst[144];
  v30 = *&__dst[160];
  v24 = *&__dst[64];
  v25 = *&__dst[80];
  v26 = *&__dst[96];
  v27 = *&__dst[112];
  v20 = *__dst;
  v21 = *&__dst[16];
  v22 = *&__dst[32];
  v23 = *&__dst[48];
  v2 = *&__dst[176];
  v3 = __dst[184];
  memcpy(__src, &__dst[185], sizeof(__src));
  v32[8] = *&__dst[128];
  v32[9] = *&__dst[144];
  v32[10] = *&__dst[160];
  v32[4] = *&__dst[64];
  v32[5] = *&__dst[80];
  v32[7] = *&__dst[112];
  v32[6] = *&__dst[96];
  v32[0] = *__dst;
  v32[1] = *&__dst[16];
  v32[3] = *&__dst[48];
  v32[2] = *&__dst[32];
  memcpy(v35, &__dst[185], sizeof(v35));
  v33 = *&__dst[176];
  v34 = __dst[184];
  if (sub_1000A257C(v32) == 1)
  {
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v9 = v24;
    v10 = v25;
    v11 = v26;
    v12 = v27;
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v16 = v2;
    v17 = v3;
    memcpy(v18, __src, sizeof(v18));
    sub_10000BE18(&v5, &qword_100839998, &qword_1006DCAA0);
    return 1.0;
  }

  else
  {
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v9 = v24;
    v10 = v25;
    v11 = v26;
    v12 = v27;
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v16 = v2;
    v17 = v3;
    memcpy(v18, __src, sizeof(v18));
    sub_10000BE18(&v5, &qword_100839998, &qword_1006DCAA0);
    if (v3)
    {
      return 1.0;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1005B0A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 4928) = v6;
  *(v7 + 4920) = a4;
  *(v7 + 5049) = a6;
  *(v7 + 4912) = a3;
  *(v7 + 5048) = a5;
  *(v7 + 4904) = a2;
  *(v7 + 4896) = a1;
  v8 = type metadata accessor for Logger();
  *(v7 + 4936) = v8;
  *(v7 + 4944) = *(v8 - 8);
  *(v7 + 4952) = swift_task_alloc();
  *(v7 + 4960) = swift_task_alloc();
  *(v7 + 4968) = swift_task_alloc();
  *(v7 + 4976) = swift_task_alloc();
  *(v7 + 4984) = swift_task_alloc();
  *(v7 + 4992) = swift_task_alloc();

  return _swift_task_switch(sub_1005B0B68, 0, 0);
}

uint64_t sub_1005B0B68()
{
  v61 = v0;
  v1 = *(*(v0 + 4928) + 56);
  *(v0 + 5000) = v1;
  os_unfair_lock_lock(v1 + 126);
  memcpy((v0 + 504), &v1[4], 0x1E8uLL);
  sub_10000BBC4(v0 + 504, v0 + 1480, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v1 + 126);
  *(v0 + 4864) = *(v0 + 504);
  v2 = *(v0 + 520);
  v3 = *(v0 + 528);
  memcpy((v0 + 4408), (v0 + 536), 0x1C8uLL);
  *(v0 + 16) = *(v0 + 504);
  memcpy((v0 + 48), (v0 + 536), 0x1C8uLL);
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  if (sub_1000A257C(v0 + 16) == 1)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = v2;
    v5 = v3;
  }

  v6 = v0 + 4096;
  *(v0 + 1968) = *(v0 + 4864);
  *(v0 + 1984) = v2;
  *(v0 + 1992) = v3;
  memcpy((v0 + 2000), (v0 + 4408), 0x1C8uLL);
  sub_10000BE18(v0 + 1968, &qword_100839998, &qword_1006DCAA0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 5049);
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "DIPWebService getActiveConfig: shouldSkipFetchingDefaultConfig is set to %{BOOL}d", v10, 8u);
  }

  v11 = *(v0 + 4992);
  v12 = *(v0 + 4944);
  v13 = *(v0 + 4936);

  v14 = *(v12 + 8);
  *(v0 + 5008) = v14;
  *(v0 + 5016) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v13);
  if (!v5)
  {
    goto LABEL_13;
  }

  v15 = *(v0 + 4920);
  *(v0 + 4880) = v4;
  *(v0 + 4888) = v5;
  v16 = swift_task_alloc();
  *(v16 + 16) = v0 + 4880;
  LOBYTE(v15) = sub_10035C8E4(sub_1000307C0, v16, v15);

  if ((v15 & 1) == 0)
  {

LABEL_13:
    v24 = *(v0 + 4920);
    if (v24[2])
    {
      v4 = v24[4];
      v5 = v24[5];
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    defaultLogger()();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 4976);
    v29 = *(v0 + 4936);
    if (v27)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v60[0] = v31;
      *v30 = 136446210;
      v55 = v29;
      v57 = v28;
      v32 = v4;
      if (!v5)
      {
        v4 = 7104878;
      }

      v33 = v14;
      if (v5)
      {
        v34 = v5;
      }

      else
      {
        v34 = 0xE300000000000000;
      }

      v35 = sub_100141FE4(v4, v34, v60);
      v14 = v33;

      *(v30 + 4) = v35;
      v4 = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "DIPWebService getActiveConfig: setting requiredLanguage to the 1st in the list = %{public}s", v30, 0xCu);
      sub_10000BB78(v31);
      v6 = v0 + 4096;

      v33(v57, v55);
    }

    else
    {

      v14(v28, v29);
    }

    goto LABEL_24;
  }

  v17 = v14;
  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "DIPWebService getActiveConfig: not setting requiredLanguage", v20, 2u);
  }

  v21 = *(v0 + 4984);
  v22 = *(v0 + 4936);
  v23 = *(v0 + 5048);

  v17(v21, v22);
  if (v23)
  {
    v14 = v17;
LABEL_24:
    *(v0 + 5024) = v5;
    defaultLogger()();

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 4968);
    v40 = *(v0 + 4936);
    if (v38)
    {
      v41 = swift_slowAlloc();
      v59 = v14;
      v42 = swift_slowAlloc();
      v60[0] = v42;
      *v41 = 136446210;
      v56 = v39;
      v58 = v40;
      v43 = v6;
      if (v5)
      {
        v44 = v4;
      }

      else
      {
        v44 = 7104878;
      }

      v45 = v4;
      if (v5)
      {
        v46 = v5;
      }

      else
      {
        v46 = 0xE300000000000000;
      }

      v47 = sub_100141FE4(v44, v46, v60);
      v4 = v45;

      *(v41 + 4) = v47;
      v6 = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "DIPWebService getActiveConfig: require new attributeConfig for %{public}s", v41, 0xCu);
      sub_10000BB78(v42);

      v59(v56, v58);
    }

    else
    {

      v14(v39, v40);
    }

    v48 = swift_task_alloc();
    *(v0 + 5032) = v48;
    *v48 = v0;
    v48[1] = sub_1005B12C0;
    v49 = *(v6 + 953);
    v50 = *(v0 + 4912);
    v51 = *(v0 + 4904);

    return sub_1005B2A48(v0 + 992, v4, v5, 0, 1, v51, v50, v49);
  }

  v53 = *(v0 + 5000);
  os_unfair_lock_lock(v53 + 126);
  memcpy((v0 + 2944), &v53[4], 0x1E8uLL);
  sub_10000BBC4(v0 + 2944, v0 + 3432, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v53 + 126);
  memcpy((v0 + 2456), (v0 + 2944), 0x1E8uLL);
  memcpy(*(v0 + 4896), (v0 + 2456), 0x1E8uLL);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1005B12C0()
{
  v7 = v1;
  v7 = *v1;
  v2 = v7;
  v3 = *v1;
  v7 = v3;
  v2[630] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005B14C0, 0, 0);
  }

  else
  {
    memcpy(__dst, v2 + 124, sizeof(__dst));

    memcpy(v2 + 490, __dst, 0x1E8uLL);
    nullsub_7();
    memcpy(v2 + 307, v2 + 490, 0x1E8uLL);
    memcpy(v2[612], v2 + 307, 0x1E8uLL);

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1005B14C0()
{

  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "ignore error retrieving attributeConfig", v3, 2u);
  }

  v4 = *(v0 + 5008);
  v5 = *(v0 + 4960);
  v6 = *(v0 + 4952);
  v7 = *(v0 + 4936);

  v4(v5, v7);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v4(v6, v7);
  v8 = *(v0 + 5000);
  os_unfair_lock_lock(v8 + 126);
  memcpy((v0 + 2944), &v8[4], 0x1E8uLL);
  sub_10000BBC4(v0 + 2944, v0 + 3432, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v8 + 126);
  memcpy((v0 + 2456), (v0 + 2944), 0x1E8uLL);
  memcpy(*(v0 + 4896), (v0 + 2456), 0x1E8uLL);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1005B16AC(uint64_t a1, char a2)
{
  *(v3 + 616) = v2;
  *(v3 + 553) = a2;
  *(v3 + 608) = a1;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 624) = v4;
  *(v3 + 632) = *(v4 - 8);
  *(v3 + 640) = swift_task_alloc();
  v5 = type metadata accessor for DIPBackoffStrategy();
  *(v3 + 648) = v5;
  *(v3 + 656) = *(v5 - 8);
  *(v3 + 664) = swift_task_alloc();
  v6 = type metadata accessor for DIPRetrier();
  *(v3 + 672) = v6;
  *(v3 + 680) = *(v6 - 8);
  *(v3 + 688) = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  *(v3 + 696) = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  *(v3 + 704) = v7;
  *(v3 + 712) = *(v7 - 8);
  *(v3 + 720) = swift_task_alloc();
  *(v3 + 728) = swift_task_alloc();

  return _swift_task_switch(sub_1005B18C0, 0, 0);
}

uint64_t sub_1005B18C0()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 616);
  v12 = *(v0 + 553);
  static DaemonSignposts.configurationRequest.getter();
  DIPSignpost.init(_:)();
  static DaemonSignposts.configureLoadBootstrapConfig.getter();
  DIPSignpost.init(_:)();
  v6 = v4[4];
  v5 = v4[5];
  v7 = v4[3];
  (*(v2 + 104))(v1, enum case for DIPBackoffStrategy.noBackoff(_:), v3);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  v8 = swift_task_alloc();
  *(v0 + 736) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = 301;
  *(v8 + 40) = v12;
  *(v8 + 48) = v7;
  *(v8 + 56) = v6;
  v9 = swift_task_alloc();
  *(v0 + 744) = v9;
  v10 = sub_100007224(&qword_100849098, &qword_1006E92D0);
  *v9 = v0;
  v9[1] = sub_1005B1A60;

  return DIPRetrier.retry<A>(operation:)(v0 + 504, &unk_1006E92C8, v8, v10);
}

uint64_t sub_1005B1A60()
{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = sub_1005B242C;
  }

  else
  {

    v2 = sub_1005B1B7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1005B1B7C()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 616);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  *(v0 + 760) = v4;
  *(v0 + 768) = v3;
  v5 = *(v0 + 520);
  *(v0 + 776) = v5;
  v6 = *(v0 + 528);
  *(v0 + 784) = v6;
  v7 = *(v0 + 536);
  *(v0 + 792) = v7;
  v8 = *(v0 + 544);
  *(v0 + 800) = v8;
  v9 = *(v0 + 552);
  *(v0 + 560) = v4;
  *(v0 + 568) = v3;
  *(v0 + 576) = v5;
  *(v0 + 584) = v6;
  *(v0 + 592) = v7;
  *(v0 + 600) = v8;
  v10 = *(v2 + 48);
  *(swift_task_alloc() + 16) = v0 + 560;

  os_unfair_lock_lock((v10 + 64));
  sub_1005BE3F4((v10 + 16));
  os_unfair_lock_unlock((v10 + 64));
  if (!v1)
  {

    if ((v9 & 1) == 0)
    {
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v11 = swift_task_alloc();
    *(v0 + 808) = v11;
    *v11 = v0;
    v11[1] = sub_1005B1D68;
    v12 = *(v0 + 553);

    sub_1005B2A48(v0 + 16, 0, 0, v12, 0, 0, 0, 0);
  }
}

uint64_t sub_1005B1D68()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v3 = sub_1005B26B0;
  }

  else
  {
    *(v2 + 832) = *(v2 + 24);
    *(v2 + 856) = *(v2 + 48);
    *(v2 + 880) = *(v2 + 72);
    v4 = *(v2 + 112);
    *(v2 + 904) = *(v2 + 96);
    *(v2 + 920) = v4;
    *(v2 + 944) = *(v2 + 136);
    *(v2 + 968) = *(v2 + 160);
    v5 = *(v2 + 320);
    *(v2 + 1056) = *(v2 + 304);
    *(v2 + 1072) = v5;
    v6 = *(v2 + 352);
    *(v2 + 1088) = *(v2 + 336);
    *(v2 + 1104) = v6;
    v7 = *(v2 + 448);
    *(v2 + 1152) = *(v2 + 432);
    *(v2 + 824) = *(v2 + 16);
    *(v2 + 848) = *(v2 + 40);
    *(v2 + 872) = *(v2 + 64);
    v8 = *(v2 + 88);
    *(v2 + 888) = *(v2 + 80);
    *(v2 + 896) = v8;
    *(v2 + 936) = *(v2 + 128);
    *(v2 + 960) = *(v2 + 152);
    *(v2 + 984) = *(v2 + 176);
    *(v2 + 554) = *(v2 + 184);
    *(v2 + 992) = *(v2 + 192);
    *(v2 + 555) = *(v2 + 200);
    v9 = *(v2 + 216);
    *(v2 + 1000) = *(v2 + 208);
    *(v2 + 1008) = v9;
    *(v2 + 1016) = *(v2 + 224);
    *(v2 + 556) = *(v2 + 232);
    *(v2 + 1024) = *(v2 + 240);
    *(v2 + 557) = *(v2 + 248);
    *(v2 + 1032) = *(v2 + 256);
    *(v2 + 558) = *(v2 + 264);
    *(v2 + 1040) = *(v2 + 272);
    *(v2 + 559) = *(v2 + 280);
    *(v2 + 1048) = *(v2 + 288);
    *(v2 + 1216) = *(v2 + 296);
    *(v2 + 1120) = *(v2 + 368);
    *(v2 + 1217) = *(v2 + 376);
    *(v2 + 1128) = *(v2 + 384);
    *(v2 + 1218) = *(v2 + 392);
    *(v2 + 1219) = *(v2 + 393);
    *(v2 + 1136) = *(v2 + 400);
    *(v2 + 1220) = *(v2 + 408);
    *(v2 + 1144) = *(v2 + 416);
    *(v2 + 1221) = *(v2 + 424);
    *(v2 + 1168) = v7;
    *(v2 + 1222) = *(v2 + 464);
    *(v2 + 1184) = *(v2 + 472);
    *(v2 + 1200) = *(v2 + 488);
    v3 = sub_1005B1FFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005B1FFC()
{
  v58 = *(v0 + 1221);
  v59 = *(v0 + 1222);
  v57 = *(v0 + 1144);
  v56 = *(v0 + 1220);
  v55 = *(v0 + 1136);
  v53 = *(v0 + 1218);
  v54 = *(v0 + 1219);
  v52 = *(v0 + 1128);
  v51 = *(v0 + 1217);
  v50 = *(v0 + 1120);
  v49 = *(v0 + 1216);
  v48 = *(v0 + 1048);
  v47 = *(v0 + 559);
  v46 = *(v0 + 1040);
  v45 = *(v0 + 558);
  v44 = *(v0 + 1032);
  v43 = *(v0 + 557);
  v42 = *(v0 + 1024);
  v41 = *(v0 + 556);
  v40 = *(v0 + 1016);
  v38 = *(v0 + 1000);
  v36 = *(v0 + 555);
  v35 = *(v0 + 992);
  v33 = *(v0 + 554);
  v32 = *(v0 + 984);
  v29 = *(v0 + 968);
  v27 = *(v0 + 952);
  v24 = *(v0 + 936);
  v22 = *(v0 + 888);
  v23 = *(v0 + 896);
  v1 = *(v0 + 880);
  v21 = *(v0 + 872);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  v16 = *(v0 + 848);
  v15 = *(v0 + 824);
  v14 = *(v0 + 840);
  v39 = *(v0 + 776);
  v37 = *(v0 + 792);
  v12 = *(v0 + 920);
  v13 = *(v0 + 904);
  v34 = *(v0 + 768);
  v30 = *(v0 + 1200);
  v31 = *(v0 + 1184);
  v28 = *(v0 + 1152);
  v25 = *(v0 + 1168);
  v19 = *(v0 + 1088);
  v20 = *(v0 + 1056);
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1072);
  v26 = *(v0 + 760);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);
  v6 = *(v0 + 712);
  v7 = *(v0 + 704);
  v8 = *(v0 + 608);
  (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  v9 = *(v6 + 8);
  v9(v5, v7);
  v9(v4, v7);

  *(v8 + 16) = v14;
  *(v8 + 24) = v16;
  *v8 = v15;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  *(v8 + 48) = v21;
  *(v8 + 56) = v1;
  *(v8 + 64) = v22;
  *(v8 + 72) = v23;
  *(v8 + 80) = v13;
  *(v8 + 96) = v12;
  *(v8 + 112) = v24;
  *(v8 + 128) = v27;
  *(v8 + 144) = v29;
  *(v8 + 160) = v32;
  *(v8 + 168) = v33 & 1;
  *(v8 + 176) = v35;
  *(v8 + 184) = v36 & 1;
  *(v8 + 192) = v38;
  *(v8 + 208) = v40;
  *(v8 + 216) = v41 & 1;
  *(v8 + 224) = v42;
  *(v8 + 232) = v43 & 1;
  *(v8 + 240) = v44;
  *(v8 + 248) = v45 & 1;
  *(v8 + 256) = v46;
  *(v8 + 264) = v47 & 1;
  *(v8 + 272) = v48;
  *(v8 + 280) = v49 & 1;
  *(v8 + 288) = v20;
  *(v8 + 304) = v18;
  *(v8 + 320) = v19;
  *(v8 + 336) = v17;
  *(v8 + 352) = v50;
  *(v8 + 360) = v51 & 1;
  *(v8 + 368) = v52;
  *(v8 + 376) = v53 & 1;
  *(v8 + 377) = v54;
  *(v8 + 384) = v55;
  *(v8 + 392) = v56 & 1;
  *(v8 + 400) = v57;
  *(v8 + 408) = v58 & 1;
  *(v8 + 416) = v28;
  *(v8 + 432) = v25;
  *(v8 + 448) = v59;
  *(v8 + 456) = v31;
  *(v8 + 472) = v30;
  *(v8 + 488) = v26;
  *(v8 + 496) = v34;
  *(v8 + 504) = v39;
  *(v8 + 520) = v37;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1005B242C()
{

  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v13 = v0[88];
  v4 = v0[85];
  v11 = v0[84];
  v12 = v0[86];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v4 + 8))(v12, v11);
  v8 = *(v3 + 8);
  v8(v2, v13);
  v8(v1, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005B26B0()
{

  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v13 = v0[88];
  v4 = v0[85];
  v11 = v0[84];
  v12 = v0[86];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v4 + 8))(v12, v11);
  v8 = *(v3 + 8);
  v8(v2, v13);
  v8(v1, v13);

  v9 = v0[1];

  return v9();
}