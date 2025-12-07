void sub_1001318E0(uint64_t a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    [v3 updatePort:a1];
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v4 = sub_1001F6688();
    sub_10009951C(v4, qword_1002E6180);
    v22 = sub_1001F6668();
    v5 = sub_1001F7298();
    if (sub_100133A70(v5, v6, v7, v8, v9, v10, v11, v12, v20, v22))
    {
      v13 = sub_10003A87C();
      sub_100133A8C(v13);
      sub_100133A34(&_mh_execute_header, v14, v15, "Unable to communicate with daemon to update the port", v16, v17, v18, v19, v21, v23);
      sub_100133A54();
    }
  }
}

void sub_1001319B4(void *a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, void *a6)
{
  swift_beginAccess();

  v12 = sub_100131C0C(v11, a1);

  if (qword_1002AC510 != -1)
  {
    sub_10001B230(&qword_1002AC510);
  }

  v13 = sub_1001F6688();
  sub_10009951C(v13, qword_1002E6180);

  v14 = sub_1001F6668();
  v15 = sub_1001F7288();

  if (os_log_type_enabled(v14, v15))
  {
    v25 = a6;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v16 = 138412546;
    sub_100019C0C(0, qword_1002B23E0, NSNumber_ptr);
    if (a3)
    {
      v19 = 37;
    }

    else
    {
      v19 = 36;
    }

    v20.super.super.isa = sub_1001F73C8(v19).super.super.isa;
    *(v16 + 4) = v20;
    v17->super.super.isa = v20.super.super.isa;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1000E4544(a4, a5, &v26);
    _os_log_impl(&_mh_execute_header, v14, v15, "sending push %@ from %s", v16, 0x16u);
    sub_1001327E0(v17);
    sub_10003A72C(v17);
    sub_100019CCC(v18);
    sub_10003A72C(v18);
    v21 = v16;
    a6 = v25;
    sub_10003A72C(v21);
  }

  sub_100019C0C(0, qword_1002B23E0, NSNumber_ptr);
  if (a3)
  {
    v22 = 37;
  }

  else
  {
    v22 = 36;
  }

  isa = sub_1001F73C8(v22).super.super.isa;
  sub_10007BA20(v12);
  v24 = sub_1001F6F18().super.isa;

  [a6 simulateStoreKitPushWithAction:isa forBundleIdentifiers:v24];
}

char *sub_100131C0C(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100132848(a1);
    return a2;
  }

  else
  {

    return sub_100132EB4(a1, a2);
  }
}

void sub_100131C60(uint64_t a1, uint64_t a2, void (*a3)())
{

  swift_getAtKeyPath();

  v4 = *(v5 + 16);

  if (v4)
  {

    swift_getAtKeyPath();

    a3();
  }

  swift_setAtReferenceWritableKeyPath();

  sub_10007E444();
}

void sub_100131D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      swift_unknownObjectRetain();
      sub_1001F78C8();
      v6 = (a1 + 32);
      do
      {
        v7 = *v6++;
        [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v7];
        sub_1001F7878();
        sub_1001F7908();
        sub_1001F7918();
        sub_1001F7898();
        --v5;
      }

      while (v5);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    sub_100019C0C(0, qword_1002B23E0, NSNumber_ptr);
    isa = sub_1001F6F18().super.isa;

    oslog = sub_1001F6B48();
    [v3 removeTransactionIdentifiersFromCache:isa forBundleIdentifier:?];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v8 = sub_1001F6688();
    sub_10009951C(v8, qword_1002E6180);
    oslog = sub_1001F6668();
    v9 = sub_1001F7298();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = sub_10003A87C();
      sub_100133A8C(v10);
      _os_log_impl(&_mh_execute_header, oslog, v9, "Unable to communicate with daemon to notify of deleted transactions", v2, 2u);
      sub_100133A54();
    }
  }
}

void sub_100131F38(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(v3 + 56);
  if (v5)
  {
    swift_unknownObjectRetain();
    if (a3 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_1001F63A8().super.isa;
    }

    sub_1001F6538();
    [v5 receiveEventOfType:a1 eventData:isa identifier:?];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v8 = sub_1001F6688();
    sub_10009951C(v8, qword_1002E6180);
    loga = sub_1001F6668();
    v9 = sub_1001F7298();
    if (sub_100133ABC(v9, v10, v11, v12, v13, v14, v15, v16, v20, loga))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a1;
      _os_log_impl(&_mh_execute_header, log, v3, "Unable to communicate with daemon to notify of event %ld", v17, 0xCu);
      sub_10003A72C(v17);
    }
  }

  sub_10007E444();
}

uint64_t sub_1001320E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 40);

  LOBYTE(a3) = sub_1000BFAC4(a2, a3, v8);

  *a4 = a3 & 1;
  return result;
}

void sub_100132174(uint64_t a1, void *a2, int a3, uint64_t a4, unint64_t a5)
{
  v6 = *(v5 + 56);
  if (v6)
  {
    v12 = qword_1002AC468;
    swift_unknownObjectRetain();
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_1002E60C8;
    v14 = *(*(qword_1002E60C8 + 48) + 16);

    os_unfair_lock_lock(v14);
    v15 = *(v13 + 40);
    os_unfair_lock_unlock(v14);

    v16 = sub_1000B4DDC(v15, a4, a5, a1, a2, a3 & 0xFFFFFF01);
    if (v16)
    {
      sub_1001DEFAC(v16);

      isa = sub_1001F6988().super.isa;

      log = sub_1001F6B48();
      [v6 showMessage:isa forBundleID:?];
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1002AC510 != -1)
      {
        sub_10001B230(&qword_1002AC510);
      }

      v34 = sub_1001F6688();
      sub_10009951C(v34, qword_1002E6180);
      logb = sub_1001F6668();
      v35 = sub_1001F7298();
      if (sub_100133ABC(v35, v36, v37, v38, v39, v40, v41, v42, v44, logb))
      {
        v43 = sub_10003A87C();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, log, v13, "Unable to parse message info to show message", v43, 2u);
        sub_10003A72C(v43);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v18 = sub_1001F6688();
    sub_10009951C(v18, qword_1002E6180);
    loga = sub_1001F6668();
    v19 = sub_1001F7298();
    if (sub_100133A70(v19, v20, v21, v22, v23, v24, v25, v26, v44, loga))
    {
      v27 = sub_10003A87C();
      sub_100133A8C(v27);
      sub_100133A34(&_mh_execute_header, v28, v29, "Unable to communicate with daemon to show message", v30, v31, v32, v33, v45, log);
      sub_100133A54();
    }
  }
}

uint64_t sub_100132440@<X0>(char a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  if (a1)
  {
    swift_beginAccess();

    v8 = sub_1001D1564(&v13, a3, a4);
    swift_endAccess();

    v10 = v8;
  }

  else
  {
    swift_beginAccess();
    sub_100132A5C(a3, a4);
    v12 = v11;
    result = swift_endAccess();
    if (v12)
    {
    }

    v10 = v12 != 0;
  }

  *a5 = v10;
  return result;
}

uint64_t sub_100132524()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10013256C()
{
  sub_100132524();

  return swift_deallocClassInstance();
}

void *sub_1001325C4()
{
  v8 = sub_1001F7308();
  v1 = *(v8 - 8);
  __chkstk_darwin(v8);
  sub_100023510();
  v4 = v3 - v2;
  v5 = sub_1001F72E8();
  __chkstk_darwin(v5);
  sub_100023510();
  v6 = sub_1001F6768();
  __chkstk_darwin(v6 - 8);
  sub_100023510();
  v0[2] = &_swiftEmptySetSingleton;
  v0[3] = &_swiftEmptySetSingleton;
  v0[4] = &_swiftEmptySetSingleton;
  v0[5] = &_swiftEmptySetSingleton;
  sub_100019C0C(0, &qword_1002BA630, OS_dispatch_queue_ptr);
  sub_1001F6758();
  sub_10013381C();
  sub_1000183C4(&unk_1002BA640, &qword_10020E200);
  sub_100133874();
  sub_1001F7708();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  v0[6] = sub_1001F7348();
  v0[7] = sub_100130368();
  return v0;
}

uint64_t sub_1001327E0(uint64_t a1)
{
  v2 = sub_1000183C4(&unk_1002BA650, &unk_100203AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100132848(uint64_t a1)
{
  if (*(*v1 + 16))
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
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100132A5C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_100132974(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1001F8058();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001D38A8();
      }

      sub_100132B84(v7);
      *v2 = v9;
      break;
    }

    v5 = v7 + 1;
  }

  sub_10007E444();
}

uint64_t sub_100132A5C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1001F8068();
  sub_1001F6C28();
  v6 = sub_1001F80D8();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1001F7EA8() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001D353C();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_100132CFC(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_100132B84(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1001F7728();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1001F8058() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100132CFC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1001F7728();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1001F8068();

        sub_1001F6C28();
        v10 = sub_1001F80D8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_100132EB4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_1001F8068();

        sub_1001F6C28();
        v20 = sub_1001F80D8();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v22 = (v5[6] + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_1001F7EA8() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              __chkstk_darwin(v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = v5[2];
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_1001F8068();

                sub_1001F6C28();
                v34 = sub_1001F80D8();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (v5[6] + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_1001F7EA8();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_100133600(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_100133578(v41, v44, v5 + 7, v44, v5, v7, v52);

            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_10007E0F8(v14);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

unint64_t *sub_10013338C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1001F8068();

    sub_1001F6C28();
    v16 = sub_1001F80D8();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_1001F7EA8();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_100133600(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_100133578(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_10013338C(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_100133600(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000183C4(&unk_1002BC450, &unk_10020A100);
  result = sub_1001F7788();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1001F8068();

    sub_1001F6C28();
    result = sub_1001F80D8();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_10013381C()
{
  result = qword_1002AE9B0;
  if (!qword_1002AE9B0)
  {
    sub_1001F72E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE9B0);
  }

  return result;
}

unint64_t sub_100133874()
{
  result = qword_1002AE9B8;
  if (!qword_1002AE9B8)
  {
    sub_100019BC4(&unk_1002BA640, &qword_10020E200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AE9B8);
  }

  return result;
}

uint64_t sub_1001338D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100133934()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100133980@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 32);

  return result;
}

uint64_t sub_100133994()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001339D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100133A34(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t sub_100133A54()
{
}

BOOL sub_100133A70(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog)
{

  return os_log_type_enabled(oslog, a1);
}

uint64_t sub_100133A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return OS_dispatch_queue.sync<A>(execute:)(v9, &a9);
}

BOOL sub_100133ABC(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog)
{

  return os_log_type_enabled(oslog, a1);
}

uint64_t sub_100133AD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v267 = a6;
  v256 = a5;
  v259 = a3;
  v282 = a2;
  v264 = sub_1001F6978();
  sub_10001A278();
  v263 = v10;
  __chkstk_darwin(v11);
  sub_100023510();
  v262 = v13 - v12;
  v14 = sub_1001F6868();
  sub_10001A278();
  v275 = v15;
  __chkstk_darwin(v16);
  sub_100099484();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = v253 - v21;
  v273 = sub_1001F6578();
  sub_10001A278();
  v277 = v23;
  __chkstk_darwin(v24);
  sub_100023510();
  v272 = v26 - v25;
  v27 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  __chkstk_darwin(v27 - 8);
  sub_100099484();
  sub_10004FE44();
  __chkstk_darwin(v28);
  sub_10004FE44();
  __chkstk_darwin(v29);
  sub_10004FE44();
  __chkstk_darwin(v30);
  sub_10004FE44();
  __chkstk_darwin(v31);
  v33 = v253 - v32;
  v34 = sub_1001F6508();
  sub_10001A278();
  v36 = v35;
  __chkstk_darwin(v37);
  sub_100023510();
  v274 = v39 - v38;
  sub_100137C28();
  *a7 = v40;
  a7[1] = v41;
  a7[9] = 48;
  a7[10] = 0xE100000000000000;
  v42 = sub_1000C5458(8);
  v266 = v22;
  v261 = v19;
  v260 = a4;
  if (v43)
  {
    v42 = sub_1000C1A68();
  }

  *&number = v42;
  v44 = a7;
  a7[3] = sub_1001F7E28();
  a7[4] = v45;
  a7[7] = sub_1000BFC14();
  a7[8] = v46;
  v47 = type metadata accessor for RenewalInfo(0);
  sub_1001F64F8();
  v281 = swift_allocObject();
  *(v281 + 16) = 1;
  v48 = v274;
  sub_1001F64E8();
  v49 = sub_1000C18DC();
  v278 = *(v36 + 8);
  v278(v48, v34);
  v279 = v47;
  v280 = v34;
  v276 = v14;
  v283 = v44;
  v271 = a1;
  v265 = v36;
  v270 = v36 + 8;
  if (v49)
  {
    *(v44 + 16) = 5;
LABEL_17:
    v54 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_1000C3984(v33);
  v14 = 1;
  v50 = sub_10001C990(v33, 1, v34);
  sub_100136794(v33);
  if (v50 == 1)
  {
    if (sub_100135304(v281))
    {

      if (sub_1000BFBB0())
      {
LABEL_8:
        v14 = 0;
        goto LABEL_14;
      }

      v51 = sub_1000C152C();
      if (v51 == 5)
      {
        sub_1000C1570(v51);
        if (!v52)
        {
          goto LABEL_8;
        }

        v14 = 4;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 3;
    }
  }

LABEL_14:
  *(v44 + 16) = v14;
  v53 = sub_100135304(v281);
  v54 = _swiftEmptyArrayStorage;
  if (!v53)
  {
    goto LABEL_18;
  }

  v14 = v53;
  sub_1000C1570(v53);
  v56 = v55;
  if (v55)
  {

    goto LABEL_17;
  }

  v253[1] = v14;
  v14 = *(v14 + 160);
  v33 = sub_10013B560();
  v85 = v14 & 0xC000000000000001;
  v86 = v14 & 0xFFFFFFFFFFFFFF8;
  v87 = v14 + 32;
  v284 = v14;

  while (v33 != v56)
  {
    if (v85)
    {
      v88 = sub_1001F7808();
    }

    else
    {
      if (v56 >= *(v86 + 16))
      {
        goto LABEL_156;
      }
    }

    v14 = *(v88 + 112);

    if (v14)
    {
      v33 = v56;
      break;
    }

    v89 = __OFADD__(v56++, 1);
    if (v89)
    {
      goto LABEL_157;
    }
  }

  v96 = sub_10013B560();
  v97 = v96;
  if (v96 >= v33)
  {
    if (v33 == v96)
    {
      goto LABEL_88;
    }

    v257 = 1;
    v98 = v96;
    v97 = v33;
  }

  else
  {
    v257 = -1;
    v98 = v33;
  }

  v33 = sub_10013B560();
  v36 = sub_10013B560();
  v14 = 0;
  do
  {
    v89 = __OFADD__(v14, v257);
    v14 += v257;
    if (v89)
    {
      goto LABEL_158;
    }

    if (v97 == v33)
    {
      goto LABEL_159;
    }

    while (1)
    {
      v99 = (v97 + 1);
      if (__OFADD__(v97, 1))
      {
        __break(1u);
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

      if (v99 == v36)
      {
        break;
      }

      if (v85)
      {
        v100 = sub_1001F7808();
      }

      else
      {
        if ((v99 & 0x8000000000000000) != 0)
        {
          goto LABEL_151;
        }

        if (v99 >= *(v86 + 16))
        {
          goto LABEL_152;
        }
      }

      v101 = *(v100 + 112);

      ++v97;
      if (v101)
      {
        goto LABEL_68;
      }
    }

    v99 = v36;
LABEL_68:
    v97 = v99;
  }

  while (v99 != v98);
  v47 = v279;
  v34 = v280;
  if (!v14)
  {
LABEL_88:

    v54 = _swiftEmptyArrayStorage;
    v44 = v283;
    LOBYTE(a1) = v271;
    goto LABEL_149;
  }

  *&number = _swiftEmptyArrayStorage;
  sub_1000375CC(0, v14 & ~(v14 >> 63), 0);
  v102 = number;
  v36 = sub_10013B560();
  v103 = 0;
  while (v36 != v103)
  {
    if (v85)
    {
      v104 = sub_1001F7808();
    }

    else
    {
      if (v103 >= *(v86 + 16))
      {
        goto LABEL_163;
      }
    }

    v105 = *(v104 + 112);

    if (v105)
    {
      v36 = v103;
      break;
    }

    v89 = __OFADD__(v103++, 1);
    if (v89)
    {
      goto LABEL_164;
    }
  }

  if (v14 < 0)
  {
    goto LABEL_167;
  }

  v54 = v102;
  v254 = sub_10013B560();
  v33 = sub_10013B560();
  v240 = 0;
  do
  {
    if (v240 >= v14)
    {
      goto LABEL_160;
    }

    v89 = __OFADD__(v240++, 1);
    if (v89)
    {
      goto LABEL_161;
    }

    if (v85)
    {
      v241 = v54;
      v242 = sub_1001F7808();
    }

    else
    {
      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_165;
      }

      if (v36 >= *(v86 + 16))
      {
        goto LABEL_166;
      }

      v241 = v54;
      v242 = *(v87 + 8 * v36);
    }

    v243 = *(v242 + 104);
    v257 = *(v242 + 96);

    v244 = v241;
    *&number = v241;
    v245 = v241[2];
    v246 = v244[3];
    v247 = v245 + 1;
    if (v245 >= v246 >> 1)
    {
      v253[0] = v245 + 1;
      sub_1000375CC(v246 > 1, v245 + 1, 1);
      v247 = v253[0];
      v244 = number;
    }

    v244[2] = v247;
    v248 = &v244[2 * v245];
    v248[4] = v257;
    v248[5] = v243;
    if (v36 == v254)
    {
      goto LABEL_162;
    }

    v249 = v244;
    while (1)
    {
      v250 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_153;
      }

      if (v250 == v33)
      {
        break;
      }

      if (v85)
      {
        v251 = sub_1001F7808();
      }

      else
      {
        if ((v250 & 0x8000000000000000) != 0)
        {
          goto LABEL_154;
        }

        if (v250 >= *(v86 + 16))
        {
          goto LABEL_155;
        }
      }

      v252 = *(v251 + 112);

      ++v36;
      if (v252)
      {
        goto LABEL_147;
      }
    }

    v250 = v33;
LABEL_147:
    v36 = v250;
    v54 = v249;
  }

  while (v240 != v14);

  v44 = v283;
  LOBYTE(a1) = v271;
  v47 = v279;
  v34 = v280;
LABEL_149:
  v48 = v274;
LABEL_18:
  *(v44 + *(v47 + 92)) = v54;
  sub_1001F64E8();
  sub_1000C18DC();
  v57 = sub_100137C50();
  v58(v57);
  if (((a1 & 1) != 0 || (sub_1000C152C() - 1) <= 4u && sub_1000C152C() != 2) && (v59 = sub_1000C2E3C()) != 0)
  {
    if (v59[2])
    {
      v36 = v59[5];
      v14 = v59[6];
      v34 = v59[7];
      LODWORD(v33) = *(v59 + 64);
      v47 = v59[4];
      sub_100137AEC();
      sub_10008A298(v60, v61, v62, v63, v33);
    }

    else
    {
      sub_100137C10();
    }
  }

  else
  {
    sub_100137C10();
  }

  v64 = sub_100135304(v281);
  if (!v64)
  {
    sub_100137AEC();
    sub_1001367FC(v81, v82, v83, v84, v33);
LABEL_49:
    *(v44 + 88) = 0;
    v44[5] = 0;
    v44[6] = 0;
    v90 = v279;
    sub_100137C04(v279[18]);
    *(v44 + v90[17]) = 4;
    *(v44 + v90[19]) = 3;
    sub_100137AB8(v90[20]);
    v91 = v280;
    sub_100018460(v44 + v90[25], 1, 1, v280);
    v92 = v44 + v90[21];
    *v92 = 0;
    v92[8] = 1;
    sub_100137C04(v90[22]);
    v93 = v275;
    v94 = v277;
    v95 = v260;
    goto LABEL_106;
  }

  if (v33 == 255)
  {
LABEL_48:

    goto LABEL_49;
  }

  v284 = v64;
  v257 = v36;
  v65 = v14;
  sub_1001F64E8();
  v66 = sub_1000C18DC();
  v278(v48, v280);
  if ((v66 & 1) == 0 && (sub_1000C1760() & 1) == 0)
  {
    sub_1001367FC(v47, v257, v14, v34, v33);
    goto LABEL_48;
  }

  v67 = v44;
  v68 = 1;
  *(v67 + 88) = 1;
  sub_1000C5464(4);
  v69 = v255;
  if ((v70 & 1) == 0)
  {
    sub_1001F6418();
    v68 = 0;
  }

  sub_100018460(v69, v68, 1, v280);
  v71 = v283;
  sub_100136810(v69, v283 + v279[25]);
  v72 = v47;
  v73 = v65;
  switch(v33)
  {
    case 1:
      sub_100137B64();
      v135 = v279;
      v136 = (v71 + v279[18]);
      *v136 = v65;
      v136[1] = v34;
      v90 = v135;
      *(v71 + v135[17]) = 1;

      v137 = sub_100137BE4();
      v139 = sub_100025678(v137, v138);
      if (v139)
      {
        LODWORD(v47) = *(v139 + 57);
        v254 = v73;

        sub_100161BA8();
        sub_100137BB8();
        sub_100137AA4(v90[20]);

        v140 = sub_100161AA0();
        sub_100137ADC(v140);
        v142 = v141;

        v112 = HIDWORD(v142) & 1;
        v123 = sub_100137B94();
        v125 = v254;
        v126 = v34;
        v127 = 1;
        goto LABEL_87;
      }

      LOBYTE(v112) = 1;
      v155 = sub_100137B94();
      sub_1001367FC(v155, v156, v157, v34, 1u);
      sub_100137B2C();
      sub_100137AB8(v90[20]);
      break;
    case 2:
      sub_100137B64();
      v90 = v279;
      *(v71 + v279[17]) = 2;

      v113 = sub_100137BE4();
      v115 = sub_10002574C(v113, v114);
      v116 = v115;
      if (v115)
      {
        v118 = *(v115 + 80);
        v117 = *(v115 + 88);
        v119 = (v71 + v90[18]);
        *v119 = v118;
        v119[1] = v117;
        LODWORD(v47) = *(v116 + 57);

        sub_100161BA8();
        sub_100137BB8();
        sub_100137AA4(v90[20]);

        v120 = sub_100161AA0();
        sub_100137ADC(v120);
        v122 = v121;

        v112 = HIDWORD(v122) & 1;
        v123 = sub_100137B94();
        v126 = v34;
        v127 = 2;
        goto LABEL_87;
      }

      v143 = sub_100137B94();
      sub_1001367FC(v143, v144, v73, v34, 2u);
      sub_100137B2C();
      sub_100137C04(v90[18]);
      goto LABEL_91;
    case 3:
      sub_100137B64();
      v90 = v279;
      v128 = (v71 + v279[18]);
      *v128 = v73;
      v128[1] = v34;
      *(v71 + v90[17]) = 3;

      v129 = sub_100137BE4();
      v131 = sub_100025820(v129, v130);
      if (v131)
      {
        LODWORD(v47) = *(v131 + 57);

        sub_100161BA8();
        sub_100137BB8();
        sub_100137AA4(v90[20]);

        v132 = sub_100161AA0();
        sub_100137ADC(v132);
        v134 = v133;

        v112 = HIDWORD(v134) & 1;
        v123 = sub_100137B94();
        v126 = v34;
        v127 = 3;
LABEL_87:
        sub_1001367FC(v123, v124, v125, v126, v127);

        v71 = v283;
      }

      else
      {
        v145 = sub_100137B94();
        sub_1001367FC(v145, v146, v73, v34, 3u);
        sub_100137B2C();
LABEL_91:
        sub_100137AB8(v90[20]);
        LOBYTE(v112) = 1;
      }

      break;
    case 4:
      sub_100137B64();
      v112 = v279;
      sub_100137C04(v279[18]);
      *(v71 + *(v112 + 68)) = 4;
      sub_100137AB8(*(v112 + 80));
      v106 = sub_100137B94();
      sub_100136880(v106, v107, v65, v34, 4u);

      v108 = sub_1001E84A8();
      sub_100137ADC(v108);
      v109 = sub_100137B94();
      v110 = v65;
      v90 = v112;
      sub_1001367FC(v109, v111, v110, v34, 4u);

      LODWORD(v47) = 0;
      LOBYTE(v112) = 0;
      break;
    default:
      v74 = v257;
      v71[5] = v47;
      v71[6] = v74;
      sub_100137C04(v279[18]);
      *(v71 + *(v75 + 68)) = 0;
      v76 = *(v284 + 136);
      if (v76)
      {
        LODWORD(v47) = *(v76 + 57);
        sub_100137AEC();
        sub_100136880(v77, v78, v79, v80, 0);

        sub_100161BA8();
        sub_100137BB8();
      }

      else
      {
        sub_100137AEC();
        sub_10008A298(v147, v148, v149, v150, 0);
        LODWORD(v47) = 0;
      }

      sub_100137AA4(v279[20]);
      if (*(v284 + 136))
      {

        v151 = sub_100161AA0();
        sub_100137ADC(v151);
        v153 = v152;
        v154 = v73;
        v112 = HIDWORD(v153) & 1;
        sub_1001367FC(v72, v74, v154, v34, 0);
      }

      else
      {
        sub_100137AEC();
        sub_1001367FC(v158, v159, v160, v161, 0);
        v255 = 0;
        LOBYTE(v112) = 1;
      }

      v90 = v279;
      v71 = v283;
      break;
  }

  *(v71 + v90[19]) = sub_1001417D0(v47);
  v91 = v280;
  v162 = v71;
  v95 = v260;
  if (v112)
  {
    switch(v47)
    {
      case 1:

        v93 = v275;
        goto LABEL_103;
      default:
        v174 = sub_1001F7EA8();

        v93 = v275;
        if (v174)
        {
LABEL_103:
          sub_100137C3C();
          *(v175 + 8) = 0;
        }

        else
        {
          sub_100137C3C();
          *(v176 + 8) = 1;
        }

        break;
    }
  }

  else
  {
    sub_1001F7418(&v287, 1000);
    *&number = sub_1001F7438();
    *&number._mantissa[2] = v163;
    *&number._mantissa[6] = v164;
    sub_1001F7418(v165, 0);
    *&result = v166;
    *&result._mantissa[2] = v167;
    *&result._mantissa[6] = v168;
    NSDecimalRound(&result, &number, 0, NSRoundDown);
    sub_1001F7428(v169);
    v171 = v170;
    v172 = [v170 longLongValue];

    v173 = v162 + v90[21];
    *v173 = v172;
    *(v173 + 8) = 0;
    v93 = v275;
  }

  v177 = *(v282 + 48);
  v179 = *(v177 + 88);
  v178 = *(v177 + 96);
  v180 = (v162 + v90[22]);
  *v180 = v179;
  v180[1] = v178;

  v94 = v277;
LABEL_106:
  v181 = v258;
  sub_1000C3984(v258);
  v182 = sub_10001C990(v181, 1, v91);
  sub_100136794(v181);
  if (v182 == 1)
  {
    v183 = 2;
  }

  else
  {
    v183 = sub_1000C1760() & 1;
  }

  v184 = v266;
  v185 = v283;
  *(v283 + 89) = v183;
  sub_1000C390C(v185 + v90[13]);
  sub_1001F64E8();
  sub_1000C18DC();
  v186 = sub_100137C50();
  v187(v186);
  if (a1)
  {
    v188 = 0x20101020100uLL >> (8 * sub_1000C152C());
  }

  else
  {
    LOBYTE(v188) = 2;
  }

  v189 = v264;
  *(v283 + 90) = v188;
  v190 = v272;
  sub_1001F6568();
  v191 = sub_1001F6528();
  v193 = v192;
  v194 = *(v94 + 8);
  v277 = v94 + 8;
  v278 = v194;
  v194(v190, v273);
  *&number = v191;
  *&number._mantissa[2] = v193;
  sub_10001C790();
  v195 = sub_1001F75D8();
  v197 = v196;

  v284 = v195;
  v198 = sub_1001410B4(v259, v95, v195, v197);
  v200 = v199;

  sub_100141134(v198, v200);
  sub_1001374A8(&qword_1002B2568, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
  v201 = v262;
  sub_1001F6858();
  v202 = sub_100137BAC();
  sub_100040C70(v202, v203);
  v204 = sub_100137BAC();
  sub_1001442D0(v204, v205, v201);
  v206 = sub_100137BAC();
  sub_10003A380(v206, v207);
  sub_1001F6848();
  (*(v263 + 8))(v201, v189);
  v208 = *(v93 + 16);
  v209 = v261;
  v210 = v184;
  v211 = v184;
  v212 = v93;
  v213 = v276;
  v208(v261, v210, v276);
  v214 = sub_100141600(v209);
  v216 = v215;
  v217 = sub_1001F63B8(0);
  v219 = v218;
  sub_10003A380(v214, v216);
  if (v267)
  {
    (*(v212 + 8))(v211, v213);
    v220 = sub_100137BAC();
    sub_10003A380(v220, v221);
    v222 = v271;
    goto LABEL_117;
  }

  if (v256 == 19)
  {

    v223 = v272;
    sub_1001F6568();
    v224 = sub_1001F6528();
    v197 = v225;
    v226 = sub_100137BAC();
    sub_10003A380(v226, v227);
    v278(v223, v273);
    (*(v275 + 8))(v211, v276);
    v222 = v271;
  }

  else
  {
    (*(v275 + 8))(v211, v276);
    v228 = sub_100137BAC();
    sub_10003A380(v228, v229);
    v222 = v271;
LABEL_117:
    v224 = v284;
  }

  v230 = v279;
  v231 = v283;
  v232 = (v283 + v279[15]);
  *v232 = v224;
  v232[1] = v197;
  v233 = (v231 + v230[14]);
  *v233 = v217;
  v233[1] = v219;
  v234 = v268;
  sub_1000C1AC4(v268);
  v235 = v280;
  v236 = sub_10001C990(v234, 1, v280);
  v237 = v265;
  if (v236 == 1)
  {
    v238 = v269;
    sub_1001F6448();

    if (sub_10001C990(v234, 1, v235) != 1)
    {
      sub_100136794(v234);
    }
  }

  else
  {

    v238 = v269;
    (*(v237 + 32))(v269, v234, v235);
  }

  sub_100018460(v238, 0, 1, v235);
  sub_100136810(v238, v283 + v230[24]);
}

uint64_t sub_100135068(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

uint64_t sub_10013508C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100135068(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100135178@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C4880(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100135304(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  v3 = v1;
  if (v1 == 1)
  {
    v4 = sub_1000BFC14();
    v3 = sub_1000EE5B8(v4, v5);

    swift_beginAccess();
    v6 = *v2;
    *v2 = v3;

    sub_100136894(v6);
  }

  sub_1001368A4(v1);
  return v3;
}

unint64_t sub_1001353A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F7F58();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100135408(char a1)
{
  result = 0x6D6E6F7269766E65;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v3 = 5;
      goto LABEL_18;
    case 4:
    case 10:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x49746375646F7270;
      break;
    case 6:
      result = 0x656E65526F747561;
      break;
    case 7:
    case 9:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 11:
    case 17:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x614464656E676973;
      break;
    case 13:
      result = 0x707954726566666FLL;
      break;
    case 14:
      result = 0x656449726566666FLL;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x726550726566666FLL;
      break;
    case 18:
      v3 = 11;
LABEL_18:
      result = v3 | 0xD000000000000010;
      break;
    case 19:
      result = 0x446C6177656E6572;
      break;
    case 20:
      result = 0x506C6177656E6572;
      break;
    case 21:
      result = 0x79636E6572727563;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1001356F0(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B49D8, &unk_10020E600);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_100137160();
  sub_1001F8198();
  LOBYTE(v19) = 0;
  sub_1001F7D88();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  sub_1001379E4(1);
  sub_1001F7D88();
  LOBYTE(v19) = v3[16];
  v21 = 2;
  sub_1001371B4();
  sub_100137A4C();
  sub_1001F7D58();
  sub_1001379E4(3);
  sub_1001F7D88();
  sub_1001379E4(4);
  sub_1001F7D18();
  sub_1001379E4(5);
  sub_1001F7D88();
  LOBYTE(v19) = v3[88];
  v21 = 6;
  sub_100137208();
  sub_100137A4C();
  sub_1001F7DC8();
  LOBYTE(v19) = 7;
  sub_1001F7D28();
  LOBYTE(v19) = v3[90];
  v21 = 8;
  sub_10013725C();
  sub_100137A4C();
  sub_1001F7D58();
  v18 = v7;
  v11 = type metadata accessor for RenewalInfo(0);
  LOBYTE(v19) = 9;
  sub_1001F6508();
  sub_100137B14();
  sub_1001374A8(v12, v13, &protocol conformance descriptor for Date);
  sub_100137A78();
  sub_1001F7D58();
  sub_10001E770(v11[14]);
  sub_1001379E4(10);
  sub_1001F7D88();
  sub_10001E770(v11[15]);
  sub_1001379E4(11);
  sub_1001F7D88();
  LOBYTE(v19) = 12;
  sub_100137A78();
  sub_1001F7DC8();
  LOBYTE(v19) = v3[v11[17]];
  v21 = 13;
  sub_1001372B0();
  sub_100137A4C();
  sub_1001F7D58();
  sub_10001E770(v11[18]);
  sub_1001379E4(14);
  sub_1001F7D18();
  LOBYTE(v19) = v3[v11[19]];
  v21 = 15;
  sub_100137304();
  sub_100137A4C();
  sub_1001F7D58();
  v14 = &v3[v11[20]];
  v15 = *v14;
  LOBYTE(v14) = v14[8];
  v19 = v15;
  v20 = v14;
  v21 = 16;
  sub_100137358();
  sub_100137A4C();
  sub_1001F7D58();
  v19 = *&v3[v11[23]];
  v21 = 17;
  sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  sub_10001DE1C(&qword_1002ACB30, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1001F7DC8();
  LOBYTE(v19) = 18;
  sub_100137A78();
  sub_1001F7D58();
  LOBYTE(v19) = 19;
  sub_100137A78();
  sub_1001F7D58();
  sub_1001379E4(20);
  sub_1001F7D68();
  sub_10001E770(v11[22]);
  sub_1001379E4(21);
  sub_1001F7D18();
  return (*(v18 + 8))(v10, v5);
}

uint64_t sub_100135BD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  sub_1001F6508();
  sub_10001A278();
  v77 = v4;
  v78 = v3;
  __chkstk_darwin(v3);
  sub_100023510();
  v7 = v6 - v5;
  v8 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  __chkstk_darwin(v8 - 8);
  sub_100099484();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v74 - v13;
  __chkstk_darwin(v15);
  v17 = &v74 - v16;
  v81 = sub_1000183C4(&qword_1002B4A18, &qword_10020E610);
  sub_10001A278();
  v19 = v18;
  __chkstk_darwin(v20);
  v22 = &v74 - v21;
  v85 = type metadata accessor for RenewalInfo(0);
  __chkstk_darwin(v85);
  sub_100023510();
  sub_100137C28();
  *v25 = v23;
  v25[1] = v24;
  v25[9] = 48;
  v25[10] = 0xE100000000000000;
  v82 = a1;
  v83 = v25;
  v26 = a1[4];
  sub_10001AE68(a1, a1[3]);
  sub_100137160();
  v80 = v22;
  v27 = v84;
  sub_1001F8178();
  if (v27)
  {
    v84 = v27;
    v28 = 0;
    LODWORD(v29) = 0;
    v30 = 0;
    v31 = 0;
    sub_1001379C8();
  }

  else
  {
    v29 = v17;
    v75 = v14;
    v76 = v7;
    v74 = v11;
    v88 = 2;
    sub_1001373AC();
    sub_100137BA0();
    LODWORD(v26) = v81;
    sub_100137BF4();
    sub_1001F7C48();
    v35 = v83;
    *(v83 + 16) = v86;
    sub_100137A94(3);
    v31 = v19;
    v35[3] = sub_1001F7C78();
    v35[4] = v36;
    sub_100137A94(4);
    v35[5] = sub_1001F7C08();
    v35[6] = v37;
    sub_100137A94(5);
    v35[7] = sub_1001F7C78();
    v35[8] = v38;
    v88 = 6;
    sub_100137400();
    sub_100137BA0();
    sub_100137BF4();
    sub_1001F7CB8();
    *(v35 + 88) = v86;
    sub_100137A94(7);
    *(v35 + 89) = sub_1001F7C18();
    v88 = 8;
    sub_100137454();
    sub_100137BA0();
    sub_100137BF4();
    sub_1001F7C48();
    *(v35 + 90) = v86;
    LOBYTE(v86) = 9;
    sub_100137B14();
    LODWORD(v14) = sub_1001374A8(v39, v40, &protocol conformance descriptor for Date);
    sub_1001F7C48();
    sub_100136810(v29, v35 + v85[13]);
    sub_100137A94(10);
    v41 = sub_1001F7C78();
    v84 = 0;
    v42 = (v35 + v85[14]);
    *v42 = v41;
    v42[1] = v43;
    sub_100137A94(11);
    v44 = sub_1001F7C78();
    v84 = 0;
    v45 = (v83 + v85[15]);
    *v45 = v44;
    v45[1] = v46;
    LOBYTE(v86) = 12;
    sub_100137B74();
    sub_1001F7CB8();
    v84 = 0;
    (*(v77 + 32))(v83 + v85[16], v76, v78);
    v88 = 13;
    sub_1001374F0();
    sub_100137B40(&type metadata for CheddarTransaction.OfferType);
    v84 = 0;
    *(v83 + v85[17]) = v86;
    sub_100137BD4(14);
    v47 = sub_1001F7C08();
    v84 = 0;
    v48 = (v83 + v85[18]);
    *v48 = v47;
    v48[1] = v49;
    v88 = 15;
    sub_100137544();
    sub_100137B40(&type metadata for CheddarTransaction.OfferPaymentMode);
    v84 = 0;
    *(v83 + v85[19]) = v86;
    v88 = 16;
    sub_100137598();
    sub_100137B40(&type metadata for OctaneSubscriptionPeriod);
    v84 = 0;
    v50 = v87;
    v51 = v83 + v85[20];
    *v51 = v86;
    v51[8] = v50;
    v28 = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
    v88 = 17;
    sub_10001DE1C(&qword_1002ACB50, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_100137BA0();
    v30 = v80;
    v52 = v84;
    sub_1001F7CB8();
    v84 = v52;
    if (v52)
    {
      v53 = sub_100137B88();
      v54(v53);
      LODWORD(v79) = 0;
      LODWORD(v80) = 0;
      sub_100137A18();
      v19 = 1;
      LODWORD(v14) = 1;
      LODWORD(v26) = 1;
    }

    else
    {
      *(v83 + v85[23]) = v86;
      LOBYTE(v86) = 18;
      sub_100137B74();
      sub_1001F7C48();
      v84 = 0;
      sub_100136810(v75, v83 + v85[24]);
      LOBYTE(v86) = 19;
      sub_100137B74();
      v55 = v84;
      sub_1001F7C48();
      v84 = v55;
      if (v55)
      {
        v56 = sub_100137B88();
        v57(v56);
        sub_100137A18();
        sub_100137AFC();
        LODWORD(v80) = v58;
      }

      else
      {
        sub_100136810(v74, v83 + v85[25]);
        sub_100137BD4(20);
        v59 = v84;
        v60 = sub_1001F7C58();
        v84 = v59;
        if (!v59)
        {
          v62 = v83 + v85[21];
          *v62 = v60;
          v62[8] = v61 & 1;
          sub_100137BD4(21);
          v63 = sub_1001F7C08();
          v84 = 0;
          v67 = v63;
          v69 = v68;
          v70 = sub_100137B88();
          v71(v70);
          v72 = v83;
          v73 = (v83 + v85[22]);
          *v73 = v67;
          v73[1] = v69;
          sub_1001375EC(v72, v79);
          sub_100019CCC(v82);
          return sub_100137650(v72);
        }

        v64 = sub_100137B88();
        v65(v64);
        sub_100137A34();
        sub_100137AFC();
        LODWORD(v80) = v66;
        LODWORD(v81) = v66;
      }
    }
  }

  v32 = v83;
  result = sub_100019CCC(v82);
  if (v28)
  {
  }

  if (v29)
  {
  }

  v34 = v85;
  if (v30)
  {
  }

  if (v31)
  {
  }

  if (!v19)
  {
    if (!v14)
    {
      goto LABEL_14;
    }

LABEL_24:
    result = (*(v77 + 8))(&v32[v34[16]], v78);
    if (!v26)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v14)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v26)
  {
LABEL_15:
  }

LABEL_16:
  if (v79)
  {
  }

  if (v80)
  {
    result = sub_100136794(&v32[v34[24]]);
  }

  if (v81)
  {
    return sub_100136794(&v32[v34[25]]);
  }

  return result;
}

unint64_t sub_1001365C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001353A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1001365F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100135408(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10013662C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001353FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100136660(uint64_t a1)
{
  v2 = sub_100137160();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013669C(uint64_t a1)
{
  v2 = sub_100137160();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for RenewalInfo(uint64_t a1)
{
  result = qword_1002B4908;
  if (!qword_1002B4908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100136754()
{
  if (*(v0 + 16) != 1)
  {
  }

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100136794(uint64_t a1)
{
  v2 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001367FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_100099050(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_100136810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100136880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_10008A298(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_100136894(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001368A4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001368C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = sub_1001F6508();
      v10 = *(a3 + 64);
    }

    return sub_10001C990(a1 + v10, a2, v9);
  }
}

uint64_t sub_1001369B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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
      v9 = sub_1001F6508();
      v10 = *(a4 + 64);
    }

    return sub_100018460(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_100136A88(uint64_t a1)
{
  sub_100136D94(319, &qword_1002B4918, &type metadata for RenewalInfo.ExpirationIntent, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_100136D94(319, &qword_1002ACF10, type metadata for String, &type metadata accessor for Optional);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_100136D94(319, &qword_1002B4920, &type metadata for Bool, &type metadata accessor for Optional);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_100136D94(319, &qword_1002B4928, &type metadata for RenewalInfo.PriceIncreaseStatus, &type metadata accessor for Optional);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_1000AD1F8(319);
      if (v10 > 0x3F)
      {
        return v9;
      }

      v6 = sub_1001F6508();
      if (v11 > 0x3F)
      {
        return v6;
      }

      sub_100136D94(319, &qword_1002B4930, &type metadata for CheddarTransaction.OfferType, &type metadata accessor for Optional);
      if (v12 > 0x3F)
      {
        return v6;
      }

      sub_100136D94(319, &qword_1002B4938, &type metadata for CheddarTransaction.OfferPaymentMode, &type metadata accessor for Optional);
      if (v13 > 0x3F)
      {
        return v6;
      }

      sub_100136D94(319, &unk_1002B4940, &type metadata for OctaneSubscriptionPeriod, &type metadata accessor for Optional);
      if (v14 > 0x3F)
      {
        return v6;
      }

      sub_100136D94(319, &qword_1002AD180, &type metadata for Int64, &type metadata accessor for Optional);
      if (v15 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_100136D94(319, &qword_1002ACA80, type metadata for String, &type metadata accessor for Array);
        v2 = v16;
        if (v17 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_100136D94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *sub_100136DF8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100136EC4);
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

_BYTE *storeEnumTagSinglePayload for RenewalInfo.ExpirationIntent(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100136FC8);
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

unint64_t sub_100137004()
{
  result = qword_1002B49C0;
  if (!qword_1002B49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49C0);
  }

  return result;
}

unint64_t sub_10013705C()
{
  result = qword_1002B49C8;
  if (!qword_1002B49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49C8);
  }

  return result;
}

unint64_t sub_1001370B4()
{
  result = qword_1002B49D0;
  if (!qword_1002B49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49D0);
  }

  return result;
}

uint64_t sub_100137108(uint64_t a1)
{
  result = sub_1001374A8(&unk_1002AF1E8, type metadata accessor for RenewalInfo, &unk_10020E5D8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100137160()
{
  result = qword_1002B49E0;
  if (!qword_1002B49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49E0);
  }

  return result;
}

unint64_t sub_1001371B4()
{
  result = qword_1002B49E8;
  if (!qword_1002B49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49E8);
  }

  return result;
}

unint64_t sub_100137208()
{
  result = qword_1002B49F0;
  if (!qword_1002B49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49F0);
  }

  return result;
}

unint64_t sub_10013725C()
{
  result = qword_1002B49F8;
  if (!qword_1002B49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B49F8);
  }

  return result;
}

unint64_t sub_1001372B0()
{
  result = qword_1002B4A00;
  if (!qword_1002B4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A00);
  }

  return result;
}

unint64_t sub_100137304()
{
  result = qword_1002B4A08;
  if (!qword_1002B4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A08);
  }

  return result;
}

unint64_t sub_100137358()
{
  result = qword_1002B4A10;
  if (!qword_1002B4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A10);
  }

  return result;
}

unint64_t sub_1001373AC()
{
  result = qword_1002B4A20;
  if (!qword_1002B4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A20);
  }

  return result;
}

unint64_t sub_100137400()
{
  result = qword_1002B4A28;
  if (!qword_1002B4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A28);
  }

  return result;
}

unint64_t sub_100137454()
{
  result = qword_1002B4A30;
  if (!qword_1002B4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A30);
  }

  return result;
}

uint64_t sub_1001374A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001374F0()
{
  result = qword_1002B4A38;
  if (!qword_1002B4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A38);
  }

  return result;
}

unint64_t sub_100137544()
{
  result = qword_1002B4A40;
  if (!qword_1002B4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A40);
  }

  return result;
}

unint64_t sub_100137598()
{
  result = qword_1002B4A48;
  if (!qword_1002B4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A48);
  }

  return result;
}

uint64_t sub_1001375EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenewalInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100137650(uint64_t a1)
{
  v2 = type metadata accessor for RenewalInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001376AC()
{
  result = qword_1002B4A50;
  if (!qword_1002B4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A50);
  }

  return result;
}

unint64_t sub_100137700()
{
  result = qword_1002B4A58;
  if (!qword_1002B4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A58);
  }

  return result;
}

unint64_t sub_100137754()
{
  result = qword_1002B4A60;
  if (!qword_1002B4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RenewalInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
        JUMPOUT(0x100137874);
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001378B0()
{
  result = qword_1002B4A68;
  if (!qword_1002B4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A68);
  }

  return result;
}

unint64_t sub_100137908()
{
  result = qword_1002B4A70;
  if (!qword_1002B4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A70);
  }

  return result;
}

unint64_t sub_100137960()
{
  result = qword_1002B4A78;
  if (!qword_1002B4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A78);
  }

  return result;
}

void sub_1001379C8()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void sub_1001379FC()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

void sub_100137AA4(uint64_t a1@<X8>)
{
  v4 = *(v3 - 168) + a1;
  *v4 = v1;
  *(v4 + 8) = v2;
}

void sub_100137AB8(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 7;
}

uint64_t sub_100137B40(uint64_t a1)
{

  return sub_1001F7C48();
}

void sub_100137B64()
{
  v3 = *(v2 - 376);
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
}

uint64_t sub_100137BB8()
{
}

void sub_100137C04(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void sub_100137E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = sub_1001388F8(a1, a2, a3, a4, a5);
  v6 = sub_100138880(v5);
  sub_100138664(v6, v7, v8, v9);
}

uint64_t sub_100137E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 22) = BYTE6(a3);
  *(a4 + 20) = WORD2(a3);
  *(a4 + 56) = 0;
}

uint64_t sub_100137E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002EE44(a1, v8);
  sub_10002EE44(v8, v6);
  *(a2 + 24) = &type metadata for NIOAny;
  v3 = swift_allocObject();
  *a2 = v3;
  v4 = v6[1];
  v3[1] = v6[0];
  v3[2] = v4;
  v3[3] = v7[0];
  *(v3 + 57) = *(v7 + 9);
  result = sub_100034310(v8);
  *(a2 + 56) = 2;
  return result;
}

uint64_t sub_100137EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 22) = BYTE6(a3);
  *(a4 + 20) = WORD2(a3);
  *(a4 + 56) = 0;
  return sub_100037154(a1);
}

uint64_t _EmittingChannelHandler.wrapOutboundOut(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1001388DC(a1, a2, a3, &protocol requirements base descriptor for _EmittingChannelHandler, &associated type descriptor for _EmittingChannelHandler.OutboundOut);
  sub_100037778();
  __chkstk_darwin(v7);
  v9 = sub_1001388BC(v8, v12);
  v10(v9);
  return NIOAny.init<A>(_:)(v5, v4, a4);
}

uint64_t sub_100138014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = sub_1001388F8(a1, a2, a3, a4, a5);
  v6 = sub_100138880(v5);
  return sub_1000811E4(v6, v7, v8, v9);
}

uint64_t sub_10013804C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(_OWORD *, uint64_t *)@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 24) = a2;
  v8 = swift_allocObject();
  *a5 = v8;
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  *(v8 + 47) = *(a1 + 31);
  *(a5 + 56) = 2;
  return a4(a1, &v11);
}

uint64_t ChannelInboundHandler.wrapInboundOut(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1001388DC(a1, a2, a3, &protocol requirements base descriptor for ChannelInboundHandler, &associated type descriptor for ChannelInboundHandler.InboundOut);
  sub_100037778();
  __chkstk_darwin(v7);
  v9 = sub_1001388BC(v8, v12);
  v10(v9);
  return NIOAny.init<A>(_:)(v5, v4, a4);
}

uint64_t sub_1001381A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X8>)
{
  result = sub_100137D88(a1, a2, a3, a4);
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  *(a5 + 22) = v9;
  *(a5 + 20) = v10;
  *(a5 + 23) = v11;
  return result;
}

uint64_t sub_100138204(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ADD50, &unk_10020E140);
  if (v2 == &type metadata for ByteBuffer)
  {
    v22 = NIOAny.forceAsByteBuffer()();
    v23 = v9;
    v24 = v10;
    v26 = v11;
    v25 = v12;
LABEL_9:
    swift_dynamicCast();
    return v27;
  }

  if (v2 == &type metadata for FileRegion)
  {
    v22 = NIOAny.forceAsFileRegion()();
    v23 = v13;
    v24 = v14;
    v26 = v15;
    v25 = v16;
    goto LABEL_9;
  }

  if (v2 == &type metadata for IOData)
  {
    v22 = NIOAny.forceAsIOData()();
    v23 = v17;
    v24 = v18;
    v26 = v19;
    v25 = v20;
    goto LABEL_9;
  }

  if (v2 == sub_1000183C4(&qword_1002ADD58, &qword_100200AC0))
  {
    NIOAny.forceAsByteEnvelope()(&v22);
    goto LABEL_9;
  }

  sub_100031498(a1, v3, v4, v5, v6);
  v27 = v7;
  v28 = v8;
  return v27;
}

uint64_t sub_1001384C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100137CB8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001384F0@<X0>(uint64_t a1@<X8>)
{
  result = sub_100137CF0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v6;
  *(a1 + 22) = v7;
  return result;
}

void sub_100138664(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
LABEL_5:

    return;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return;
    }

    goto LABEL_5;
  }

  sub_100037154(a1);
}

uint64_t sub_1001386E0()
{
  v1 = *(v0 + 72);
  if (v1 == 2)
  {
    sub_100019CCC((v0 + 16));
  }

  else if (v1 == 1)
  {

    if (*(v0 + 48) != 4 && (~*(v0 + 56) & 0xF000000000000007) != 0)
    {
    }
  }

  else if (!*(v0 + 72))
  {
    sub_100034300(*(v0 + 16));
  }

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_100138880(uint64_t a1)
{
  *(v4 + 24) = a1;
  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;
  *(v4 + 22) = BYTE6(v1);
  *(v4 + 20) = WORD2(v1);
  *(v4 + 23) = v5;
  *(v4 + 56) = 2;
  return v3;
}

uint64_t sub_1001388DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1001388F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return sub_1000183C4(a4, a5);
}

void *static MultiThreadedEventLoopGroup.currentEventLoop.getter()
{
  if (qword_1002AC488 != -1)
  {
    swift_once();
  }

  return sub_100138A4C(type metadata accessor for SelectableEventLoop);
}

void *ScheduledTask.__allocating_init(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10012F014();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

unint64_t sub_100138A18(unint64_t result)
{
  v2 = *(v1 + 48);
  if (((v2 | result) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2 >= result;
    v4 = v2 - result;
    if (v3)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_100138A4C(uint64_t (*a1)(void))
{
  result = pthread_getspecific(*(*(v1 + 16) + 16));
  if (result)
  {
    swift_unknownObjectRetain();
    a1(0);
    swift_dynamicCast();
    return v4;
  }

  return result;
}

void *sub_100138AC0()
{
  v2 = v0;
  *(v0 + 24) = _swiftEmptyDictionarySingleton;
  *(v0 + 32) = -1;
  type metadata accessor for Lock();
  swift_allocObject();
  *(v0 + 48) = Lock.init()();
  *(v0 + 56) = -1;
  *(v0 + 72) = 64;
  v3 = pthread_self();
  type metadata accessor for NIOThread();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = v3;
  result[2] = 0;
  *(v2 + 40) = result;
  *(v2 + 16) = 2;
  if ((*(v2 + 72) - 0x400000000000000) >> 59 == 31)
  {
    v5 = swift_slowAlloc();
    *v5 = 0u;
    v5[1] = 0u;
    *(v2 + 64) = v5;
    sub_100138BB4();
    if (v1)
    {
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100138BB4()
{
  sub_10019F24C();
  if (!v1)
  {
    *(v0 + 56) = v2;
    *(v0 + 16) = 0;
    changelist.ident = 0;
    *&changelist.filter = 2490358;
    memset(&changelist.fflags, 0, 20);
    sub_10017BE7C(&changelist, 1uLL);
  }
}

uint64_t sub_100138C50()
{
  sub_1000183C4(&qword_1002AC618, &qword_1001FDF58);
  swift_bufferAllocate();
  v0 = swift_unknownObjectRetain();
  sub_100006B94((v0 + 16), 0);
  swift_unknownObjectRelease();
  result = swift_dynamicCastClassUnconditional();
  qword_1002B4A80 = result;
  return result;
}

uint64_t sub_100138CCC()
{
  sub_1000183C4(&qword_1002B4C18, &qword_10020EB00);
  v0 = swift_allocObject();
  sub_1000183C4(&qword_1002B4C20, &qword_10020EB08);
  swift_allocObject();
  result = sub_10004B03C(j_j__swift_release);
  *(v0 + 16) = result;
  qword_1002B4A88 = v0;
  return result;
}

uint64_t sub_100138D50(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(uint64_t))
{
  v10 = a5();
  v11 = a3(v10);
  type metadata accessor for SelectableEventLoop();
  swift_allocObject();

  v13 = sub_100043A44(v12, v11, a2 & 1);
  if (qword_1002AC488 != -1)
  {
    swift_once();
  }

  sub_10004AA38(v14);
  a7(v13);
  sub_1000446E0();
  sub_10004AA38(0);
}

uint64_t sub_100138F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Lock();
  swift_allocObject();
  v10 = Lock.init()();
  v11 = dispatch_group_create();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  dispatch_group_enter(v11);
  type metadata accessor for NIOThread();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v10;
  v13[7] = v12;
  v13[8] = v11;

  v14 = v11;
  sub_1000B35F4(a1, a2, 0, sub_10013B418, v13);

  sub_1001F72C8();
  Lock.lock()();
  result = swift_beginAccess();
  v16 = *(v12 + 16);
  if (v16)
  {

    Lock.unlock()();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001390BC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{

  v14 = a8;
  v15 = a4(a1);
  v16 = a2(v15);
  type metadata accessor for SelectableEventLoop();
  swift_allocObject();

  v18 = sub_100043A44(v17, v16, 0);
  if (qword_1002AC488 != -1)
  {
    swift_once();
  }

  sub_10004AA38(v19);
  sub_100139308(v18, a6, a7, v14);
  sub_1000446E0();
  sub_10004AA38(0);
}

void sub_100139308(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  Lock.lock()();
  swift_beginAccess();
  *(a3 + 16) = a1;

  Lock.unlock()();
  dispatch_group_leave(a4);
}

uint64_t sub_10013937C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1000C6894(debugOnly(_:), 0, result);
    v6 = swift_allocObject();
    sub_100139400(v5, a2, a3);
    return v6;
  }

  return result;
}

uint64_t sub_100139400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000183C4(&qword_1002AC618, &qword_1001FDF58);
  sub_10012F3D4();
  swift_bufferAllocate();
  v7 = swift_unknownObjectRetain();
  sub_100006B94((v7 + 16), 0);
  swift_unknownObjectRelease();
  *(v3 + 24) = swift_dynamicCastClassUnconditional();
  type metadata accessor for Lock();
  sub_10012F3D4();
  swift_allocObject();
  *(v3 + 40) = Lock.init()();
  *(v3 + 48) = 0;
  *(v3 + 56) = 2;
  if (qword_1002AC480 != -1)
  {
    swift_once();
  }

  *(v3 + 16) = sub_100006B70((qword_1002B4A80 + 16), 1uLL);
  v12 = *(a1 + 16);
  if (v12)
  {
    sub_1001F78C8();
    v11 = a2;
    for (i = 0; i != v12; ++i)
    {
      sub_10004794C();
      v9 = swift_allocObject();
      *(v9 + 16) = *(a1 + 16 * i + 32);
      swift_retain_n();
      v13._countAndFlagsBits = sub_1001F7E28();
      sub_1001F6CA8(v13);

      v14._countAndFlagsBits = 9005;
      v14._object = 0xE200000000000000;
      sub_1001F6CA8(v14);
      v15._countAndFlagsBits = sub_1001F7E28();
      sub_1001F6CA8(v15);

      sub_100138F30(0x2D544C452D4F494ELL, 0xE800000000000000, v11, a3, sub_10013B23C, v9);

      sub_1001F7878();
      sub_1001F7908();
      sub_1001F7918();
      sub_1001F7898();
    }
  }

  *(v3 + 32) = _swiftEmptyArrayStorage;
  return v3;
}

uint64_t MultiThreadedEventLoopGroup.next()()
{
  v1 = *(v0 + 32);
  v2 = sub_100006B70((*(v0 + 24) + 16), 1uLL);
  result = sub_10001A07C();
  if (!result)
  {
    __break(1u);
    return sub_1001F7808();
  }

  if (v2 != 0x8000000000000000 || result != -1)
  {
    sub_1001C19A8();
    if ((v1 & 0xC000000000000001) == 0)
    {
    }

    return sub_1001F7808();
  }

  __break(1u);
  return result;
}

void MultiThreadedEventLoopGroup.shutdownGracefully(queue:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1001F6738();
  sub_10001A278();
  v39 = v4;
  v40 = v3;
  __chkstk_darwin(v3);
  sub_100023510();
  v38 = v6 - v5;
  v41 = sub_1001F7308();
  sub_10001A278();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100023510();
  v12 = v11 - v10;
  v13 = sub_1001F72E8();
  __chkstk_darwin(v13);
  sub_100023510();
  sub_1001F6768();
  sub_10001A278();
  v36 = v15;
  v37 = v14;
  __chkstk_darwin(v14);
  sub_100023510();
  v18 = v17 - v16;
  v19 = dispatch_group_create();
  sub_10004B17C();
  sub_1001F6758();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10013AF48(&qword_1002AE9B0, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000183C4(&unk_1002BA640, &qword_10020E200);
  sub_10004B28C(&qword_1002AE9B8, &unk_1002BA640, &qword_10020E200);
  sub_1001F7708();
  (*(v8 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v41);
  v20 = a1;
  v42 = v18;
  v21 = sub_1001F7348();
  v22 = *(v45 + 40);

  v23 = v21;

  if (sub_10015F210(v22, v45, v23, a2, a3))
  {
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v25 = *(v45 + 32);
    v26 = sub_10001744C(v25);
    if (!v26)
    {
LABEL_9:
      v31 = swift_allocObject();
      v31[2] = v45;
      v31[3] = v24;
      v31[4] = v20;
      v31[5] = a2;
      v31[6] = a3;
      aBlock[4] = sub_10013AE38;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000172C0;
      aBlock[3] = &unk_10028CC20;
      v32 = _Block_copy(aBlock);
      v33 = v20;

      sub_1001F6758();
      sub_10013B588();
      sub_10013AF48(v34, 255, v35, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
      sub_10004B28C(&qword_1002BA620, &qword_1002AC880, &qword_1001FE6D0);
      sub_1001F7708();
      sub_1001F72D8();

      _Block_release(v32);
      (*(v39 + 8))(v38, v40);
      (*(v36 + 8))(v42, v37);

      return;
    }

    v27 = v26;
    if (v26 >= 1)
    {
      v28 = 0;
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          sub_1001F7808();
        }

        else
        {
        }

        ++v28;
        dispatch_group_enter(v19);
        sub_10004794C();
        v29 = swift_allocObject();
        *(v29 + 16) = v24;
        *(v29 + 24) = v19;

        v30 = v19;
        sub_100045190(v23, sub_10013ADE4, v29);
      }

      while (v27 != v28);
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
  }
}

void sub_100139D90(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = sub_1001F6738();
  sub_10001A278();
  v43 = v10;
  __chkstk_darwin(v11);
  sub_100023510();
  v14 = v13 - v12;
  sub_1001F6768();
  sub_10001A278();
  __chkstk_darwin(v15);
  sub_100023510();
  v20 = v19 - v18;
  v21 = *(a1 + 48);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      v41 = v17;
      v42 = v16;
      v22 = swift_allocObject();
      v22[2] = a3;
      v22[3] = a4;
      v22[4] = v21;
      aBlock[4] = sub_10013B330;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000172C0;
      aBlock[3] = &unk_10028CF00;
      v40 = _Block_copy(aBlock);
      v23 = sub_10013B5A0();
      sub_10013B1C8(v23, v24);
      v25 = sub_10013B5A0();
      sub_10013B1C8(v25, v26);

      sub_1001F6758();
      aBlock[7] = _swiftEmptyArrayStorage;
      sub_10013B588();
      sub_10013AF48(v27, 255, v28, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
      sub_10004B28C(&qword_1002BA620, &qword_1002AC880, &qword_1001FE6D0);
      sub_1001F7708();
      sub_1001F7338();
      _Block_release(v40);
      v29 = sub_10013B5A0();
      sub_10013AE90(v29, v30);
      (*(v43 + 8))(v14, v9);
      (*(v41 + 8))(v20, v42);

      v31 = 0;
    }

    else
    {
      *(a1 + 48) = _swiftEmptyArrayStorage;
      *(a1 + 56) = 0;
      v31 = 1;
    }
  }

  else
  {
    sub_10004794C();
    v32 = swift_allocObject();
    *(v32 + 16) = a3;
    *(v32 + 24) = a4;
    sub_10013B1C8(v21, 0);
    v33 = a2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000337C8();
      v21 = v38;
    }

    v34 = *(v21 + 16);
    if (v34 >= *(v21 + 24) >> 1)
    {
      sub_1000337C8();
      v21 = v39;
    }

    *(v21 + 16) = v34 + 1;
    v35 = (v21 + 24 * v34);
    v35[4] = v33;
    v35[5] = sub_10013B360;
    v35[6] = v32;
    v36 = *(a1 + 48);
    *(a1 + 48) = v21;
    v37 = *(a1 + 56);
    *(a1 + 56) = 0;
    sub_10013AE90(v36, v37);
    v31 = 0;
  }

  *a5 = v31;
}

void sub_10013A164(uint64_t a1, char a2, uint64_t a3, dispatch_group_t group)
{
  if (a2)
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    *(a3 + 16) = a1;
    *(a3 + 24) = 1;
    swift_errorRetain();
    sub_1000374AC(v7, v8);
  }

  dispatch_group_leave(group);
}

void sub_10013A1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t a1), uint64_t a5)
{
  v60 = a5;
  v61 = a4;
  v62 = a3;
  v7 = sub_1001F6738();
  v65 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F6768();
  v11 = *(v10 - 8);
  v63 = v10;
  v64 = v11;
  __chkstk_darwin(v10);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 32);
  v15 = sub_10001744C(v14);
  if (v15)
  {
    v16 = v15;
    if (v15 < 1)
    {
      __break(1u);
      goto LABEL_17;
    }

    for (i = 0; i != v16; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        sub_1001F7808();
      }

      else
      {
      }

      sub_100045974(1);
    }
  }

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  Lock.lock()();
  if (*(a1 + 56))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v19 = *(a1 + 48);
  swift_beginAccess();
  v20 = *(a2 + 24) == 1;
  v56[0] = v19;
  if (v20)
  {
    v21 = *(a2 + 16);
    *(v18 + 16) = v21;
    sub_1000477E8(v21, 1);
    sub_10013B1C8(v19, 0);
    sub_1000477E8(v21, 1);
  }

  else
  {
    *(v18 + 16) = 0;

    v21 = 0;
  }

  v22 = v65;

  v23 = *(a1 + 48);
  *(a1 + 48) = v21;
  v24 = *(a1 + 56);
  *(a1 + 56) = 1;
  sub_10013AE90(v23, v24);
  Lock.unlock()();
  v25 = swift_allocObject();
  v26 = v60;
  v25[2] = v61;
  v25[3] = v26;
  v25[4] = v18;
  v71 = sub_10013B1FC;
  v72 = v25;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v61 = &v69;
  v69 = sub_1000172C0;
  v70 = &unk_10028CE38;
  v27 = _Block_copy(&aBlock);

  sub_1001F6758();
  v66 = _swiftEmptyArrayStorage;
  v28 = sub_10013AF48(&qword_1002BA610, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v29 = sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
  v30 = v28;
  v59 = sub_10004B28C(&qword_1002BA620, &qword_1002AC880, &qword_1001FE6D0);
  v60 = v29;
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v27);
  v33 = *(v22 + 8);
  v32 = v22 + 8;
  v31 = v33;
  v34 = v13;
  v35 = v9;
  v36 = v9;
  v37 = v7;
  v33(v36, v7);
  v38 = v64 + 8;
  v39 = v34;
  v40 = v34;
  v41 = *(v64 + 8);
  v41(v40, v63);

  v42 = *(v56[0] + 16);
  if (v42)
  {
    v62 = v18;
    v43 = (v56[0] + 48);
    v56[1] = v30;
    v64 = v38;
    v65 = v32;
    v57 = v41;
    v58 = v31;
    do
    {
      v45 = *(v43 - 2);
      v44 = *(v43 - 1);
      v46 = *v43;
      v43 += 3;
      v47 = swift_allocObject();
      *(v47 + 16) = v44;
      *(v47 + 24) = v46;
      v48 = swift_allocObject();
      v48[2] = v45;
      v48[3] = sub_10013B23C;
      v49 = v62;
      v48[4] = v47;
      v48[5] = v49;
      v71 = sub_10013B2BC;
      v72 = v48;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v69 = sub_1000172C0;
      v70 = &unk_10028CEB0;
      v50 = _Block_copy(&aBlock);
      v51 = v45;

      v52 = v51;

      sub_1001F6758();
      v66 = _swiftEmptyArrayStorage;
      sub_1001F7708();
      sub_1001F7338();
      v53 = v50;
      v54 = v57;
      v55 = v58;
      _Block_release(v53);

      v55(v35, v37);
      v54(v39, v63);

      --v42;
    }

    while (v42);
  }

  sub_10013AE90(v56[0], 0);
}

uint64_t sub_10013A7E0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  swift_errorRetain();
  a1(v5);
}

uint64_t sub_10013A84C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a4 + 16);
  swift_errorRetain();
  a2(v6);
}

uint64_t static MultiThreadedEventLoopGroup.withCurrentThreadAsEventLoop(_:)(uint64_t a1, uint64_t a2)
{
  v4 = pthread_self();
  type metadata accessor for NIOThread();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = v4;
  v5[2] = 0;
  sub_10004794C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_10013B5A0();
  sub_100138D50(v7, v8, v9, 0, v10, 0, v11);
}

void *sub_10013A9B8()
{
  sub_1000183C4(&qword_1002B4C10, &unk_10020EAF0);
  swift_allocObject();
  return sub_100138AC0();
}

uint64_t MultiThreadedEventLoopGroup._preconditionSafeToSyncShutdown(file:line:)()
{
  result = static MultiThreadedEventLoopGroup.currentEventLoop.getter();
  if (result)
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  return result;
}

uint64_t MultiThreadedEventLoopGroup.deinit()
{

  sub_10013AE90(*(v0 + 48), *(v0 + 56));
  return v0;
}

uint64_t MultiThreadedEventLoopGroup.__deallocating_deinit()
{
  MultiThreadedEventLoopGroup.deinit();

  return swift_deallocClassInstance();
}

uint64_t MultiThreadedEventLoopGroup.description.getter()
{
  sub_10013B5AC();
  sub_1001F77B8(61);
  v2._object = 0x80000001002284D0;
  v2._countAndFlagsBits = 0xD000000000000036;
  sub_1001F6CA8(v2);
  v3._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v3);

  v4._countAndFlagsBits = 0x7D202A232DLL;
  v4._object = 0xE500000000000000;
  sub_1001F6CA8(v4);
  return v1;
}

void *ScheduledTask.init(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t ScheduledTask.deinit()
{

  return v0;
}

uint64_t ScheduledTask.__deallocating_deinit()
{
  ScheduledTask.deinit();
  sub_10012F014();

  return swift_deallocClassInstance();
}

uint64_t ScheduledTask.description.getter()
{
  sub_10013B5AC();
  sub_1001F77B8(28);

  if ((*(v0 + 48) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_10013AEAC();
    v2._countAndFlagsBits = sub_1001F76B8();
    sub_1001F6CA8(v2);

    v3._countAndFlagsBits = 41;
    v3._object = 0xE100000000000000;
    sub_1001F6CA8(v3);
    return 0xD000000000000019;
  }

  return result;
}

BOOL static ScheduledTask.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 48);
  v3 = *(a2 + 48);
  if (((v3 | v2) & 0x8000000000000000) == 0)
  {
    return v2 < v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10013AD6C()
{
  sub_1000374AC(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10013ADA8()
{

  sub_10004794C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10013ADF0()
{

  v1 = sub_10012F014();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10013AE48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013AE90(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

unint64_t sub_10013AEAC()
{
  result = qword_1002B4A90;
  if (!qword_1002B4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4A90);
  }

  return result;
}

uint64_t sub_10013AF48(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10013AFD8(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10013AFF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_10013B034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10013B078(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10013B0AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFD && *(a1 + 16))
    {
      v2 = *a1 + 16380;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 8) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
      if (v2 >> 2 >= 0xFFF)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_10013B118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *result = a2 - 16381;
    *(result + 8) = 0;
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_10013B194()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_10013B1C8(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    swift_errorRetain();
  }

  else if (!a2)
  {
  }
}

uint64_t sub_10013B208()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10013B23C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_10013B274()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10013B2E0(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10013B38C()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10013B3C0()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10013B42C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFD && *(a1 + 9))
    {
      v2 = *a1 + 16380;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 8) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
      if (v2 >> 2 >= 0xFFF)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_10013B498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *(result + 8) = 0;
    *result = a2 - 16381;
    if (a3 >= 0x3FFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_10013B518(uint64_t result, char a2)
{
  v2 = *(result + 8) & 1 | (a2 << 6);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 8) = v2;
  return result;
}

unint64_t sub_10013B5DC(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD000000000000030;
      break;
    case 3:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_10013B688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

unint64_t sub_10013B6D4(char a1)
{
  result = 0xD00000000000003FLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000003ELL;
      break;
    case 2:
      result = 0xD000000000000027;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_10013B798(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10013B864);
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

unint64_t sub_10013B8A0()
{
  result = qword_1002B4C28;
  if (!qword_1002B4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4C28);
  }

  return result;
}

unint64_t sub_10013B8F8()
{
  result = qword_1002B4C30;
  if (!qword_1002B4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4C30);
  }

  return result;
}

uint64_t sub_10013B970(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  sub_10013E83C();
  v17 = swift_allocObject();
  sub_10013CF9C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

uint64_t sub_10013BA10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10013E83C();
  v12 = swift_allocObject();
  sub_10013DE70(a1, a2, a3, a4, a5);
  return v12;
}

uint64_t sub_10013BA90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_10013E83C();
  v12 = swift_allocObject();
  sub_10013D410(a1, a2, a3, a4, a5, a6);
  return v12;
}

BOOL sub_10013BB08(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027C090;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  return v4 != 0;
}

unint64_t sub_10013BB74(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027C0C8;
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

uint64_t sub_10013BBC0(char a1)
{
  if (!a1)
  {
    return 7959874;
  }

  if (a1 == 1)
  {
    return 0x6C65636E6143;
  }

  return 27503;
}

BOOL sub_10013BC0C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013BB08(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10013BD3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013BB74(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10013BD6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10013BBC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_10013BE48()
{
  result = sub_10013BE68();
  qword_1002E60E0 = result;
  return result;
}

id sub_10013BE68()
{
  v0 = sub_1001F65B8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  [v4 setNumberStyle:5];
  sub_1001F6588();
  isa = sub_1001F6598().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  return v4;
}

uint64_t sub_10013BF90()
{
  v2 = v0;
  v3 = sub_1001F5F48();
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10013E8BC();
  result = swift_beginAccess();
  if (*(v0 + 48))
  {

    sub_1001F5F28();
    sub_10001C790();
    sub_1001F75E8();
    (*(v5 + 8))(v1, v3);

    v9._object = 0x8000000100228C40;
    v9._countAndFlagsBits = 0xD000000000000014;
    v8 = sub_1001F6D68(v9);

    if (!v8)
    {
      swift_beginAccess();
      if (*(v2 + 48))
      {
        v10._countAndFlagsBits = 0xD000000000000016;
        v10._object = 0x8000000100226110;
        sub_1001F6CA8(v10);
      }

      return swift_endAccess();
    }
  }

  return result;
}

unint64_t sub_10013C120(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027C130;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10013C174(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x65776F6C6C612D6DLL;
      break;
    case 2:
      result = 0x6567617373656DLL;
      break;
    case 3:
      result = 0x74616E616C707865;
      break;
    case 4:
      result = 0x42746C7561666564;
      break;
    case 5:
    case 6:
      result = 0x6E6F747475426B6FLL;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x656572467369;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10013C32C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013C120(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10013C35C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10013C174(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10013C3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10013C16C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10013C3CC(uint64_t a1)
{
  v2 = sub_10013E3DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013C408(uint64_t a1)
{
  v2 = sub_10013E3DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t *sub_10013C444()
{

  sub_10013E388(v0[10], v0[11], v0[12]);

  sub_10013E388(v0[20], v0[21], v0[22]);
  memcpy(v2, v0 + 28, sizeof(v2));
  sub_10004BDE8(v2, &qword_1002B6CF0, &qword_10020F2B8);
  return v0;
}

uint64_t sub_10013C500(void *a1)
{
  v3 = v1;
  sub_1000183C4(&qword_1002B6CF8, &qword_10020F2C0);
  sub_10001A278();
  __chkstk_darwin(v5);
  sub_10001AE68(a1, a1[3]);
  sub_10013E3DC();
  sub_1001F8198();
  v25[0] = *(v3 + 16);
  v24[0] = 0;
  sub_10013E430();
  sub_10013E7B8();
  sub_1001F7D58();
  if (v2)
  {
    goto LABEL_3;
  }

  v25[0] = 1;
  sub_10013E7B8();
  sub_1001F7D98();
  v9 = *(v3 + 24);
  v25[0] = 2;

  sub_10013E7E8();
  sub_1001F7D18();
  if (!v9)
  {

    swift_beginAccess();
    v10 = *(v3 + 40);
    v25[0] = 3;

    sub_10013E7E8();
    sub_1001F7D18();
    if (!v10)
    {

      v25[0] = *(v3 + 56);
      v24[0] = 4;
      sub_10013E484();
      sub_10013E7B8();
      sub_1001F7D58();
      v13 = *(v3 + 64);
      v43 = 5;

      sub_10013E7E8();
      sub_1001F7D18();
      if (!v13)
      {

        v14 = *(v3 + 96);
        v41[0] = *(v3 + 80);
        v41[1] = v14;
        v16 = *(v3 + 80);
        v15 = *(v3 + 96);
        v42[0] = *(v3 + 112);
        *(v42 + 10) = *(v3 + 122);
        v38 = v16;
        v39 = v15;
        v40[0] = *(v3 + 112);
        *(v40 + 10) = *(v3 + 122);
        v37 = 6;
        sub_100057CB8(v41, v25, &qword_1002B4150, &qword_10020F2B0);
        sub_10013E4D8();
        sub_10013E7E8();
        sub_1001F7D58();
        v35[0] = v38;
        v35[1] = v39;
        *v36 = v40[0];
        *&v36[10] = *(v40 + 10);
        sub_10004BDE8(v35, &qword_1002B4150, &qword_10020F2B0);
        v17 = *(v3 + 144);
        v34 = 7;

        sub_10013E7E8();
        sub_1001F7D18();
        if (v17)
        {
          v18 = sub_10013E894();
          v19(v18);
        }

        v20 = *(v3 + 176);
        v32[0] = *(v3 + 160);
        v32[1] = v20;
        v22 = *(v3 + 160);
        v21 = *(v3 + 176);
        *v33 = *(v3 + 192);
        *&v33[10] = *(v3 + 202);
        v29 = v22;
        v30 = v21;
        v31[0] = *(v3 + 192);
        *(v31 + 10) = *(v3 + 202);
        v28 = 8;
        sub_100057CB8(v32, v25, &qword_1002B4150, &qword_10020F2B0);
        sub_10013E7E8();
        sub_1001F7D58();
        v26[0] = v29;
        v26[1] = v30;
        *v27 = v31[0];
        *&v27[10] = *(v31 + 10);
        sub_10004BDE8(v26, &qword_1002B4150, &qword_10020F2B0);
        v25[0] = 9;
        sub_10013E7B8();
        sub_1001F7D28();
        v25[239] = 10;
        sub_10013E7B8();
        sub_1001F7D28();
        memcpy(v25, (v3 + 224), 0xE0uLL);
        memcpy(v24, (v3 + 224), sizeof(v24));
        v23[231] = 11;
        sub_100057CB8(v25, v23, &qword_1002B6CF0, &qword_10020F2B8);
        sub_10013E52C();
        sub_10013E7B8();
        sub_1001F7D58();
        memcpy(v23, v24, 0xE0uLL);
        sub_10004BDE8(v23, &qword_1002B6CF0, &qword_10020F2B8);
LABEL_3:
        v6 = sub_10013E894();
        return v7(v6);
      }
    }
  }

  v11 = sub_10013E894();
  v12(v11);
}

uint64_t sub_10013CA74()
{
  *(v0 + 16) = 1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 3;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 33619968;
  sub_10013E380(v2);
  memcpy((v0 + 224), v2, 0xE0uLL);
  return v0;
}

uint64_t sub_10013CB18(void *a1)
{
  v2 = v1;
  v4 = 0xD000000000000010;
  sub_10013CA74();
  memcpy(__dst, a1 + 28, sizeof(__dst));
  memcpy(v24, a1 + 28, sizeof(v24));
  if (sub_100086FB4(v24) == 1)
  {
    type metadata accessor for OctaneSubscription();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v5)
    {
      v6 = "Confirm Your In-App Purchase";
    }

    else
    {
      v6 = "n will renew again on ";
    }
  }

  else
  {
    v6 = "Subscription Terms";
  }

  *(v1 + 24) = v4;
  *(v1 + 32) = v6 | 0x8000000000000000;

  v7 = sub_100086AD4();
  v9 = v8;
  sub_10012F774(v2 + 40, v21);
  *(v2 + 40) = v7;
  *(v2 + 48) = v9;

  sub_10013BF90();
  memcpy(v23, __dst, sizeof(v23));
  if (sub_100086FB4(v23) == 1)
  {
    type metadata accessor for OctaneSubscription();
    v10 = vdup_n_s32(swift_dynamicCastClass() == 0);
    v11.i64[0] = v10.u32[0];
    v11.i64[1] = v10.u32[1];
    v12 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v11, 0x3FuLL)), xmmword_10020EE30, xmmword_10020EE20);
  }

  else
  {
    v12 = xmmword_10020CD20;
  }

  *(v2 + 64) = v12;

  v13 = *(a1[11] + 88);
  sub_10013E868();
  *(v2 + 80) = 1;
  *(v2 + 88) = v15;
  *(v2 + 96) = v14;
  *(v2 + 104) = v16;
  *(v2 + 112) = v13;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 513;

  sub_10004BDE8(v18, &qword_1002B4150, &qword_10020F2B0);
  *(v2 + 56) = 0;
  *(v2 + 144) = xmmword_10020CD10;

  sub_1001AAB88(a1, __src);
  debugOnly(_:)();
  memcpy(v20, (v2 + 224), sizeof(v20));
  memcpy((v2 + 224), __src, 0xE0uLL);
  sub_10004BDE8(v20, &qword_1002B6CF0, &qword_10020F2B8);
  return v2;
}

uint64_t sub_10013CD98()
{
  sub_10013CA74();
  *(v1 + 219) = 1;
  sub_10013E7D8();
  sub_10013E8F0(v2);

  sub_10013E790(v3);
  *(v1 + 40) = 0xD00000000000001DLL;
  *(v1 + 48) = v0;

  sub_10013BF90();
  sub_10013E7C8();
  sub_10013E90C(xmmword_10020CD20);

  return v1;
}

uint64_t sub_10013CE24()
{
  sub_10013C444();
  sub_10013E83C();

  return swift_deallocClassInstance();
}

uint64_t sub_10013CE74()
{
  sub_10013CA74();
  *(v0 + 219) = 1;
  sub_1000B3DE0();
  sub_10013E8F0(v1);

  sub_10012F774(v0 + 40, &v3);
  *(v0 + 40) = 0xD000000000000015;
  *(v0 + 48) = 0x8000000100228CB0;

  sub_10013BF90();
  *(v0 + 56) = 2;
  *(v0 + 64) = xmmword_10020CD20;

  sub_10013E7F4();
  sub_10004BDE8(v4, &qword_1002B4150, &qword_10020F2B0);

  *(v0 + 144) = xmmword_10020CD10;

  return v0;
}

uint64_t sub_10013CF9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  sub_10013CA74();
  *(v10 + 219) = 1;
  sub_1000B3DE0();
  *(v10 + 24) = 0x1000000000000026;
  *(v10 + 32) = v18;

  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1001F77B8(114);
  v23._countAndFlagsBits = 0x2072756F59;
  v23._object = 0xE500000000000000;
  sub_1001F6CA8(v23);
  v24._countAndFlagsBits = sub_1001ECB3C(*(a1 + 176), *(a1 + 184));
  sub_1001F6CA8(v24);

  v25._object = 0x8000000100228F70;
  v25._countAndFlagsBits = 0xD000000000000018;
  sub_1001F6CA8(v25);
  v26._countAndFlagsBits = a2;
  v26._object = a3;
  sub_1001F6CA8(v26);

  v27._countAndFlagsBits = 0x20726F6620;
  v27._object = 0xE500000000000000;
  sub_1001F6CA8(v27);
  v28._countAndFlagsBits = a4;
  v28._object = a5;
  sub_1001F6CA8(v28);

  v29._countAndFlagsBits = 0xD00000000000004ALL;
  v29._object = 0x8000000100228F90;
  sub_1001F6CA8(v29);
  sub_10012F774(v10 + 40, v22);
  *(v10 + 40) = 0;
  *(v10 + 48) = 0xE000000000000000;

  sub_10013BF90();
  *(v10 + 56) = 2;
  *(v10 + 64) = xmmword_10020CD20;

  *(v10 + 144) = xmmword_10020EE40;

  if (a6)
  {
    if (a8)
    {

      sub_10013D22C(a7, a8, a6);

      swift_unknownObjectRelease();
      sub_10013E84C();
      sub_10013E8A4(2);
      *(v10 + 216) = 0;
      sub_10004BDE8(v21, &qword_1002B4150, &qword_10020F2B0);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  *(v10 + 218) = 1;
  return v10;
}

uint64_t sub_10013D22C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_10001C6E0(a3, 11);
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_1001F6CA8(v7);
  v8._countAndFlagsBits = 0x3D7070613FLL;
  v8._object = 0xE500000000000000;
  sub_1001F6CA8(v8);

  return v5;
}

uint64_t sub_10013D2EC()
{
  sub_10013CA74();
  sub_1000B3DE0();
  *(v0 + 24) = 0xD000000000000012;
  *(v0 + 32) = v1;

  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_1001F77B8(64);
  v4._countAndFlagsBits = 0xD00000000000003ELL;
  v4._object = 0x8000000100228E70;
  sub_1001F6CA8(v4);
  v5._countAndFlagsBits = 0xD000000000000014;
  v5._object = 0x8000000100228C40;
  sub_1001F6CA8(v5);
  sub_10012F774(v0 + 40, v3);
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;

  sub_10013BF90();
  sub_10013E884();
  *(v0 + 64) = xmmword_10020CD20;

  return v0;
}

uint64_t sub_10013D410(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_10013CA74();
  *(v6 + 219) = 1;
  *(v6 + 24) = xmmword_10020CCF0;

  *&v17[0] = 0;
  *(&v17[0] + 1) = 0xE000000000000000;
  sub_1001F77B8(66);
  v19._object = 0x8000000100227F60;
  v19._countAndFlagsBits = 0x1000000000000014;
  sub_1001F6CA8(v19);
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  sub_1001F6CA8(v20);

  v21._countAndFlagsBits = 0x100000000000002CLL;
  v21._object = 0x8000000100227F80;
  sub_1001F6CA8(v21);
  v11 = v17[0];
  sub_10012F774(v6 + 40, v16);
  *(v6 + 40) = v11;

  sub_10013BF90();
  *(v6 + 56) = 2;
  *(v6 + 64) = xmmword_10020CD00;

  *(v6 + 144) = xmmword_10020CD10;

  v16[24] = 1;
  v12 = *(v6 + 96);
  v17[0] = *(v6 + 80);
  v17[1] = v12;
  v18[0] = *(v6 + 112);
  *(v18 + 10) = *(v6 + 122);
  *(v6 + 80) = 0;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 513;
  sub_10004BDE8(v17, &qword_1002B4150, &qword_10020F2B0);

  if (a6)
  {
    swift_unknownObjectRetain();
    sub_1001F77B8(25);

    v15[0] = 0x7975426F546B7361;
    v15[1] = 0xE90000000000002FLL;
    v22._countAndFlagsBits = 0x6C65636E6163;
    v22._object = 0xE600000000000000;
    sub_1001F6CA8(v22);
    sub_10013E924(29759);
    v23._countAndFlagsBits = sub_1001F7E28();
    sub_1001F6CA8(v23);

    sub_10013E924(25126);
    v24._countAndFlagsBits = a4;
    v24._object = a5;
    sub_1001F6CA8(v24);
    sub_1001B3448(0x7975426F546B7361, 0xE90000000000002FLL);

    swift_unknownObjectRelease_n();

    sub_10013E84C();
    sub_10013E8A4(3);
    *(v6 + 216) = 513;
    sub_10004BDE8(v15, &qword_1002B4150, &qword_10020F2B0);
  }

  else
  {
  }

  return v6;
}

uint64_t sub_10013D704()
{
  sub_10013CA74();
  sub_1000B3DE0();
  sub_10013E8F0(v1);

  sub_10012F774(v0 + 40, &v3);
  *(v0 + 40) = 0xD00000000000002DLL;
  *(v0 + 48) = 0x8000000100228D00;

  sub_10013BF90();
  *(v0 + 56) = 2;
  *(v0 + 64) = xmmword_10020EE30;

  sub_10013E7F4();
  sub_10004BDE8(v4, &qword_1002B4150, &qword_10020F2B0);

  *(v0 + 144) = xmmword_10020CD10;

  return v0;
}

uint64_t sub_10013D828()
{
  sub_10013CA74();
  sub_10013E7D8();
  sub_10013E8D4(v2);

  sub_10013E790(v3);
  *(v1 + 40) = 43;
  *(v1 + 48) = v0;

  sub_10013BF90();
  sub_10013E7C8();
  sub_10013E90C(xmmword_10020CD20);

  return v1;
}

uint64_t sub_10013D8D4()
{
  sub_10013CA74();
  sub_10013E7D8();
  sub_10013E8D4(v2);

  sub_10013E790(v3);
  *(v1 + 40) = 76;
  *(v1 + 48) = v0;

  sub_10013BF90();
  sub_10013E7C8();
  sub_10013E90C(xmmword_10020CD20);

  return v1;
}

uint64_t sub_10013D980(uint64_t a1)
{
  sub_10013CA74();
  sub_1000B3DE0();
  *(v1 + 24) = 0xD00000000000001CLL;
  *(v1 + 32) = v3;

  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_1001F77B8(52);
  v6._object = 0x8000000100228DB0;
  v6._countAndFlagsBits = 0xD000000000000018;
  sub_1001F6CA8(v6);
  v5[3] = a1;
  v7._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v7);

  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v8._object = 0x8000000100228DD0;
  sub_1001F6CA8(v8);
  sub_10012F774(v1 + 40, v5);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xE000000000000000;

  sub_10013BF90();
  sub_10013E884();
  *(v1 + 64) = xmmword_10020CD20;

  return v1;
}

void *sub_10013DADC()
{
  sub_10013CA74();
  sub_10013E7D8();
  v1[3] = 0xD000000000000033;
  v1[4] = v2;

  sub_10013E790(v3);
  v1[5] = 0xD00000000000001ELL;
  v1[6] = v0;

  sub_10013BF90();
  sub_10013E7C8();
  sub_10013E90C(xmmword_10020CD20);

  return v1;
}

uint64_t sub_10013DB94()
{
  sub_10013CA74();
  sub_10013E7D8();
  sub_10013E8D4(v2);

  sub_10013E790(v3);
  *(v1 + 40) = 62;
  *(v1 + 48) = v0;

  sub_10013BF90();
  sub_10013E7C8();
  sub_10013E90C(xmmword_10020CD20);

  return v1;
}

uint64_t sub_10013DC40(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = sub_1001F6508();
  sub_10001A278();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10013E8BC();
  sub_10013CD98();

  sub_1001F6418();
  if (qword_1002AC410 != -1)
  {
    swift_once();
  }

  v11 = qword_1002AE9E8;
  isa = sub_1001F6478().super.isa;
  v13 = [v11 stringFromDate:isa];

  v14 = sub_1001F6B58();
  v16 = v15;

  sub_1001F77B8(47);

  sub_1000B3DE0();
  v20 = 0xD000000000000026;
  v21 = v17;
  v22._countAndFlagsBits = v14;
  v22._object = v16;
  sub_1001F6CA8(v22);

  v23._countAndFlagsBits = 544497952;
  v23._object = 0xE400000000000000;
  sub_1001F6CA8(v23);
  v24._countAndFlagsBits = a1;
  v24._object = a2;
  sub_1001F6CA8(v24);

  v25._countAndFlagsBits = 46;
  v25._object = 0xE100000000000000;
  sub_1001F6CA8(v25);
  v18 = v21;
  sub_10012F774(v4 + 40, &v20);
  *(v4 + 40) = 0xD000000000000026;
  *(v4 + 48) = v18;

  sub_10013BF90();

  (*(v9 + 8))(v3, v7);
  return v4;
}

uint64_t sub_10013DE70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  sub_10013CA74();
  sub_1000B3DE0();
  *(v5 + 24) = 0xD000000000000020;
  *(v5 + 32) = v12;

  sub_10012F774(v5 + 40, v18);
  *(v5 + 40) = 0xD000000000000048;
  *(v5 + 48) = 0x8000000100227FE0;

  sub_10013BF90();
  sub_10013E884();
  *(v5 + 64) = xmmword_10020CD20;

  if (a5)
  {
    type metadata accessor for ConfirmPurchaseEngagementUIRoute();
    swift_unknownObjectRetain();

    v19._countAndFlagsBits = a3;
    v19._object = a4;
    sub_100062764(v19);

    v13 = sub_1000EFA58();
    v15 = v14;

    swift_unknownObjectRelease_n();
    sub_10013E868();
    *(v6 + 80) = 2;
    *(v6 + 88) = a3;
    *(v6 + 96) = a4;
    *(v6 + 104) = a1;
    *(v6 + 112) = a2;
    *(v6 + 120) = v13;
    *(v6 + 128) = v15;
    *(v6 + 136) = 256;
    sub_10004BDE8(v17, &qword_1002B4150, &qword_10020F2B0);
  }

  else
  {
  }

  *(v6 + 218) = 1;
  return v6;
}

_BYTE *storeEnumTagSinglePayload for DefaultButton(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10013E11CLL);
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

_BYTE *storeEnumTagSinglePayload for DialogKind(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x10013E1F0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10013E22C()
{
  result = qword_1002B6CD0;
  if (!qword_1002B6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6CD0);
  }

  return result;
}

unint64_t sub_10013E284()
{
  result = qword_1002B6CD8;
  if (!qword_1002B6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6CD8);
  }

  return result;
}

unint64_t sub_10013E2D8()
{
  result = qword_1002B6CE0;
  if (!qword_1002B6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6CE0);
  }

  return result;
}

unint64_t sub_10013E32C()
{
  result = qword_1002B6CE8;
  if (!qword_1002B6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6CE8);
  }

  return result;
}

uint64_t sub_10013E388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_10013E3DC()
{
  result = qword_1002B6D00;
  if (!qword_1002B6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D00);
  }

  return result;
}

unint64_t sub_10013E430()
{
  result = qword_1002B6D08;
  if (!qword_1002B6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D08);
  }

  return result;
}

unint64_t sub_10013E484()
{
  result = qword_1002B6D10;
  if (!qword_1002B6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D10);
  }

  return result;
}

unint64_t sub_10013E4D8()
{
  result = qword_1002B6D18;
  if (!qword_1002B6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D18);
  }

  return result;
}

unint64_t sub_10013E52C()
{
  result = qword_1002B6D20;
  if (!qword_1002B6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Dialog.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x10013E64CLL);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10013E688()
{
  result = qword_1002B6D28;
  if (!qword_1002B6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D28);
  }

  return result;
}

unint64_t sub_10013E6E0()
{
  result = qword_1002B6D30;
  if (!qword_1002B6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D30);
  }

  return result;
}

unint64_t sub_10013E738()
{
  result = qword_1002B6D38;
  if (!qword_1002B6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D38);
  }

  return result;
}

uint64_t sub_10013E790(uint64_t a1, ...)
{

  return swift_beginAccess();
}

double sub_10013E7F4()
{
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  *(v1 + 80) = v4;
  *(v1 + 88) = v3;
  *(v1 + 96) = v2;
  *(v1 + 104) = v7;
  *(v1 + 112) = v6;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 513;

  return result;
}

double sub_10013E8A4@<D0>(char a1@<W8>)
{
  *(v1 + 160) = a1;
  result = 0.0;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = v2;
  *(v1 + 208) = v3;
  return result;
}

uint64_t sub_10013E8D4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 24) = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v1 + 32) = a1;
}

uint64_t sub_10013E8F0@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 24) = v1 & 0xFFFFFFFFFFFFLL | 0x1000000000000000;
  *(v2 + 32) = a1;
}

uint64_t sub_10013E90C(__n128 a1)
{
  v1[4] = a1;
}

void sub_10013E924(uint64_t a1)
{
  v2._countAndFlagsBits = a1 & 0xFFFF00000000FFFFLL | 0x3D64690000;
  v2._object = 0xE500000000000000;

  sub_1001F6CA8(v2);
}

uint64_t sub_10013E974(unsigned int *a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = *a1;
  result = sub_10000BA90(0);
  if (!__OFSUB__(v4, result))
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10013E9CC(uint64_t a1, uint64_t a2)
{
  bzero(v12, 0x90uLL);
  sub_10019EFD0(a1, a2, v12);
  if (!v2)
  {
    v5 = WORD2(v12[0]);
    v6 = sub_1001F6718() & v5;
    if (v6 == sub_1001F6718())
    {
      return sub_10019F098(a1, a2);
    }

    sub_10013EB6C();
    swift_allocError();
    swift_willThrow();
  }

  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  if (swift_dynamicCast())
  {

    v8 = v12[1];
    v9 = v13;
    if (v13 == 2)
    {
    }

    v10 = v12[0];
    sub_1000274C4();
    swift_allocError();
    *v11 = v10;
    *(v11 + 8) = v8;
    *(v11 + 16) = v9;
    swift_willThrow();
  }
}

unint64_t sub_10013EB6C()
{
  result = qword_1002B6D40;
  if (!qword_1002B6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D40);
  }

  return result;
}

unint64_t sub_10013EBCC(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x746174735F627461;
      break;
    case 2:
      result = 0x695F656C646E7562;
      break;
    case 3:
      result = 0x645F6C65636E6163;
      break;
    case 4:
      result = 0x6974617269707865;
      break;
    case 5:
      result = 0x64656873696E6966;
      break;
    case 6:
    case 35:
      sub_1000881D8();
      result = v4 - 3;
      break;
    case 7:
      result = 25705;
      break;
    case 8:
      result = 0x6C616E696769726FLL;
      break;
    case 9:
      result = 0x5F746375646F7270;
      break;
    case 10:
    case 27:
      sub_1000881D8();
      result = v5 - 4;
      break;
    case 11:
      result = 0x6573616863727570;
      break;
    case 12:
    case 25:
    case 30:
      sub_1000881D8();
      result = v6 + 1;
      break;
    case 13:
      result = 0x797469746E617571;
      break;
    case 14:
      v3 = 1952543859;
      goto LABEL_19;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 1701869940;
      break;
    case 17:
      result = 0x756665725F646964;
      break;
    case 18:
      result = 0x64695F726566666FLL;
      break;
    case 19:
      sub_1000881D8();
      result = v8 - 5;
      break;
    case 20:
      result = 0x6F726665726F7473;
      break;
    case 21:
      v3 = 1667854960;
LABEL_19:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 22:
    case 34:
      sub_1000881D8();
      result = v7 - 1;
      break;
    case 23:
      result = 0x6470755F7473616CLL;
      break;
    case 24:
      result = 0x61726770755F7369;
      break;
    case 26:
      result = 0xD000000000000015;
      break;
    case 28:
    case 33:
      sub_1000881D8();
      result = v9 + 9;
      break;
    case 29:
      sub_1000881D8();
      result = v10 + 15;
      break;
    case 31:
      result = 0x735F736568737570;
      break;
    case 32:
      result = 0xD000000000000015;
      break;
    case 36:
      result = 0x65705F726566666FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10013F048(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F7F58();

  if (v2 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10013F09C(char a1)
{
  result = 0x6E65725F6F747561;
  switch(a1)
  {
    case 1:
      v3 = 1836020336;
      goto LABEL_5;
    case 2:
      v3 = 1920233065;
LABEL_5:
      result = v3 | 0x666F5F6F00000000;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10013F180@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013F048(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10013F1B0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10013EBCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_10013F1EC(uint64_t a1, void *a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v36 = v2;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = __clz(__rbit64(v5)) | (v8 << 6);
      v10 = *(*(a1 + 48) + v9);
      sub_10002F9B0(*(a1 + 56) + 32 * v9, &v41);
      v40[0] = v10;
      sub_10013F85C(v40, v38);
      v11 = v38[0];
      sub_10003708C((v38 + 8), v39);
      v12 = sub_10013EBCC(v11);
      v14 = v13;
      sub_10002F9B0(v39, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_10011108C(v12);
      v18 = _swiftEmptyDictionarySingleton[2];
      v19 = (v17 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        break;
      }

      v21 = v16;
      v22 = v17;
      sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
      if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v20))
      {
        v23 = sub_10011108C(v12);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_22;
        }

        v21 = v23;
      }

      v5 &= v5 - 1;
      if (v22)
      {

        v25 = (_swiftEmptyDictionarySingleton[7] + 32 * v21);
        sub_100019CCC(v25);
        sub_10003708C(v38, v25);
        sub_100019CCC(v39);
        sub_10013F8CC(v40);
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v21 >> 6) + 8] |= 1 << v21;
        v26 = (_swiftEmptyDictionarySingleton[6] + 16 * v21);
        *v26 = v12;
        v26[1] = v14;
        sub_10003708C(v38, (_swiftEmptyDictionarySingleton[7] + 32 * v21));
        sub_100019CCC(v39);
        sub_10013F8CC(v40);
        v27 = _swiftEmptyDictionarySingleton[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_21;
        }

        _swiftEmptyDictionarySingleton[2] = v29;
      }

      v7 = v8;
      v2 = v36;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        v30 = objc_allocWithZone(v34);

        sub_1001DEFAC(_swiftEmptyDictionarySingleton);

        isa = sub_1001F6988().super.isa;

        v32 = [v30 initWithPropertyValues:isa onConnection:a2];

        return v32;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1001F7FC8();
  __break(1u);
  return result;
}

id sub_10013F590(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_1001F6988().super.isa;

  v6 = [v4 initWithPropertyValues:isa onConnection:a2];

  return v6;
}

id sub_10013F620(uint64_t a1, void *a2)
{
  isa = sub_1001F6988().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TransactionEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithPropertyValues:onConnection:", isa, a2);

  return v5;
}

id sub_10013F718(uint64_t a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TransactionEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithPersistentID:onConnection:", a1, a2);

  return v5;
}

id sub_10013F7AC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TransactionEntity();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10013F804(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TransactionEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10013F85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B6D70, &unk_10020F458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013F8CC(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002B6D70, &unk_10020F458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for TransactionEntity.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDC)
  {
    if (a2 + 36 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 36) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 37;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v5 = v6 - 37;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TransactionEntity.Key(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDB)
  {
    v6 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
        JUMPOUT(0x10013FA88);
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
          *result = a2 + 36;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10013FAC4()
{
  result = qword_1002B6D78;
  if (!qword_1002B6D78)
  {
    sub_100019BC4(&qword_1002B6D80, qword_10020F470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D78);
  }

  return result;
}

unint64_t sub_10013FB2C()
{
  result = qword_1002B6D88;
  if (!qword_1002B6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6D88);
  }

  return result;
}

uint64_t sub_10013FB94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F6508();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
      v10 = *(a3 + 88);
    }

    return sub_10001C990(a1 + v10, a2, v9);
  }
}

uint64_t sub_10013FC80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1001F6508();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
      v10 = *(a4 + 88);
    }

    return sub_100018460(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for CheddarTransaction(uint64_t a1)
{
  result = qword_1002B6DE8;
  if (!qword_1002B6DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013FDA0(uint64_t a1)
{
  v1 = sub_1001F6508();
  if (v2 <= 0x3F)
  {
    sub_1000AD1F8(319);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_100140004(319, &qword_1002ACF10, type metadata for String);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_100140004(319, &unk_1002B6DF8, &type metadata for Transaction.RevocationReason);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_100140004(319, &qword_1002B4930, &type metadata for CheddarTransaction.OfferType);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_100140004(319, &qword_1002B4938, &type metadata for CheddarTransaction.OfferPaymentMode);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_100140004(319, &unk_1002B4940, &type metadata for OctaneSubscriptionPeriod);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_100140004(319, &qword_1002B4920, &type metadata for Bool);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  sub_100140004(319, &unk_1002ACA88, &type metadata for Double);
                  v1 = v17;
                  if (v18 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

  return v1;
}

void sub_100140004(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1001F74B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CheddarTransaction.OfferPaymentMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10014011CLL);
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

_BYTE *storeEnumTagSinglePayload for CheddarTransaction.OfferType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100140220);
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

_BYTE *sub_10014026C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100140338);
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

uint64_t sub_100140370@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v159 = a5;
  v151 = a4;
  v154 = a2;
  v157 = sub_1001F6978();
  sub_10001A278();
  v158 = v9;
  __chkstk_darwin(v10);
  sub_100023510();
  sub_100144CF8(v12 - v11);
  v164 = sub_1001F6868();
  sub_10001A278();
  v163 = v13;
  __chkstk_darwin(v14);
  sub_100099484();
  v155 = v15 - v16;
  __chkstk_darwin(v17);
  sub_100144CF8(&v148 - v18);
  v19 = sub_1001F6508();
  sub_10001A278();
  v166 = v20;
  __chkstk_darwin(v21);
  sub_100023510();
  sub_100144CF8(v23 - v22);
  v24 = sub_1001F6578();
  sub_10001A278();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100023510();
  v30 = v29 - v28;
  v31 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  __chkstk_darwin(v31 - 8);
  v33 = &v148 - v32;
  v34 = type metadata accessor for CheddarTransaction(0);
  sub_100144CBC((a6 + v34[8]));
  sub_100144D48((a6 + v35));
  sub_100144BD0(v36);
  sub_100144BD0(*(v37 + 140));
  sub_100144BD0(*(v38 + 144));
  sub_100144BD0(*(v39 + 148));
  sub_100144BD0(*(v40 + 152));
  sub_100144BD0(*(v41 + 156));
  sub_100144BD0(*(v42 + 160));
  sub_100144BD0(*(v43 + 164));
  sub_100144BD0(*(v44 + 168));
  v46 = a6 + *(v45 + 172);
  *v46 = 0;
  v46[8] = 1;
  sub_100144BD0(*(v45 + 176));
  sub_1000C2DBC(v33);
  v47 = sub_10001C990(v33, 1, v24);
  v161 = v24;
  if (v47)
  {
    sub_10004BDE8(v33, &qword_1002AFA30, &unk_10020FA10);
    v48 = 0;
    v24 = 0;
  }

  else
  {
    (*(v26 + 16))(v30, v33, v24);
    sub_10004BDE8(v33, &qword_1002AFA30, &unk_10020FA10);
    v49 = sub_1001F6528();
    v51 = v50;
    (*(v26 + 8))(v30, v24);
    *&v174[0] = v49;
    *(&v174[0] + 1) = v51;
    sub_10001C790();
    v48 = v174;
    sub_1001F75D8();
    sub_100087254();
  }

  v52 = (a6 + v34[25]);
  *v52 = v48;
  v52[1] = v24;
  *a6 = sub_1000BFC24();
  a6[1] = v53;
  sub_1000C5464(3);
  if ((v54 & 1) != 0 || (sub_1000BFBB0() & 1) == 0)
  {
    sub_100018460(a6 + v34[26], 1, 1, v19);
    v56 = 2;
  }

  else
  {
    v55 = v34[26];
    sub_1001F6418();
    sub_100018460(a6 + v55, 0, 1, v19);
    v56 = sub_1000BFBD0();
  }

  *(a6 + v34[27]) = v56;
  sub_1000C5464(4);
  if (v57)
  {
    v58 = a6 + v34[22];
    v59 = 1;
  }

  else
  {
    v60 = v34[22];
    sub_1001F6418();
    v58 = a6 + v60;
    v59 = 0;
  }

  sub_100018460(v58, v59, 1, v19);
  v61 = sub_1000C5388(15);
  if (v62)
  {
    sub_10001E77C(v61, v62, v34[23]);
    *(a6 + v34[32]) = sub_1000C6260() & 1;
    v63 = sub_1000C5458(25);
    if (v64)
    {
      *&v174[0] = -1;
    }

    else
    {
      *&v174[0] = v63;
    }

    v66 = sub_1001F7E28();
    v68 = sub_10001E77C(v66, v67, v34[24]);
    v69 = sub_1000C25B8(v68);
    if (v69)
    {
      *(a6 + v34[29]) = 0;
LABEL_18:
      sub_100144BD0(v34[28]);
LABEL_26:
      v74 = sub_1000C5D00();
      if (v74 == 4)
      {
        v75 = 0;
      }

      else
      {
        v75 = v74;
      }

      *(a6 + v34[30]) = 0x2010003u >> (8 * v75);
      sub_1000C5F7C();
      v76 = a6 + v34[31];
      *v76 = v77;
      v76[8] = v78;
      goto LABEL_30;
    }

    v70 = sub_1000C2770(v69);
    if (v71)
    {
      v72 = v34[29];
      v73 = 1;
    }

    else
    {
      v70 = sub_1000C5388(28);
      if (v71)
      {
        v72 = v34[29];
        v73 = 2;
      }

      else
      {
        v70 = sub_1000C27E4(v70);
        if (!v71)
        {
          *(a6 + v34[29]) = 4;
          goto LABEL_18;
        }

        v72 = v34[29];
        v73 = 3;
      }
    }

    *(a6 + v72) = v73;
    sub_10001E77C(v70, v71, v34[28]);
    goto LABEL_26;
  }

  *(a6 + v34[32]) = 2;
  *(a6 + v34[29]) = 4;
  sub_100144BD0(v34[28]);
  *(a6 + v34[30]) = 3;
  v65 = a6 + v34[31];
  *v65 = 0;
  v65[8] = 7;
  sub_100144BD0(v34[23]);
  sub_100144BD0(v34[24]);
LABEL_30:
  sub_1000BFDA8();
  sub_1001F6418();
  sub_1000C5464(12);
  if (v79)
  {
    v80 = sub_100144CA0(v34[9]);
    v81(v80);
  }

  else
  {
    sub_1001F6418();
  }

  sub_1000BFCB0(v174);
  v160 = v30;
  if (*(&v174[0] + 1))
  {
    v169 = v174[0];
    *(a6 + v34[18]) = v174[0];
    v170 = v175;
    v171 = v174[1];
    *(a6 + v34[19]) = v175;
    sub_1000552A0(&v169, &number);
    sub_1000552A0(&v170, &number);
    sub_1000552A0(&v171, &number);
    sub_10004BDE8(v174, &qword_1002AEDE0, &unk_100207230);
    *(a6 + v34[15]) = v171;
  }

  else
  {
    v82 = (a6 + v34[18]);
    *v82 = 5790042;
    v82[1] = 0xE300000000000000;
    v83 = (a6 + v34[19]);
    *v83 = 0x313233343536;
    v83[1] = 0xE600000000000000;
    v84 = (a6 + v34[15]);
    *v84 = 5789784;
    v84[1] = 0xE300000000000000;
  }

  v85 = 1;
  switch(sub_1000C22AC())
  {
    case 1u:
      break;
    default:
      v85 = sub_1001F7EA8();
      break;
  }

  *(a6 + v34[17]) = v85 & 1;
  sub_1001F64F8();
  v86 = sub_1000C5458(8);
  if (v87)
  {
    v86 = sub_1000C1A68();
  }

  *&number = v86;
  v88 = sub_1001F7E28();
  sub_10001E77C(v88, v89, v34[10]);
  v90 = sub_1000BFC14();
  sub_10001E77C(v90, v91, v34[12]);
  v92 = sub_100144CA0(v34[13]);
  v93(v92);
  sub_1000BFD40();
  if ((v95 & 0x100000000) != 0)
  {
    sub_1001F7418(v94, 0);
  }

  sub_100087254();
  sub_1001F7418(v96, 1000);
  *&number = sub_1001F7438();
  *&number._mantissa[2] = v97;
  *&number._mantissa[6] = v98;
  sub_1001F7418(v99, 0);
  *&result = v100;
  *&result._mantissa[2] = v101;
  *&result._mantissa[6] = v102;
  NSDecimalRound(&result, &number, 0, NSRoundDown);
  sub_1001F7428(v103);
  v105 = v104;
  v106 = [v104 longLongValue];

  *(a6 + v34[14]) = v106;
  v107 = sub_1000C2550();
  if (v107 < 0)
  {
    __break(1u);
  }

  *(a6 + v34[16]) = v107;
  v167 = sub_1000C1A68();
  v108 = sub_1001F7E28();
  sub_10001E77C(v108, v109, v34[20]);
  v110 = sub_1000C257C();
  v111 = 0xEA0000000000656CLL;
  v112 = 0x62616D75736E6F43;
  v153 = v19;
  v113 = v160;
  switch(v110)
  {
    case 1:
      v111 = 0xEE00656C62616D75;
      v112 = 0x736E6F432D6E6F4ELL;
      break;
    case 2:
      v112 = 0xD000000000000019;
      v111 = 0x80000001002274B0;
      break;
    case 3:
      v111 = 0x8000000100227490;
      v112 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  v114 = (a6 + v34[21]);
  *v114 = v112;
  v114[1] = v111;
  sub_1001F6568();
  sub_1001F6528();
  sub_100087254();
  v115 = *(v26 + 8);
  v150 = v26 + 8;
  v149 = v115;
  v115(v113, v161);
  v167 = v113;
  v168 = v106;
  sub_10001C790();
  v116 = sub_1001F75D8();
  v118 = v117;

  v119 = v154;
  v152 = v116;
  v154 = v118;
  sub_1001410B4(v119, a3, v116, v118);
  sub_100087254();

  sub_100141134(v118, v106);
  sub_10014437C(&qword_1002B2568, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
  v120 = v156;
  v121 = v157;
  sub_1001F6858();
  v122 = sub_1000999D4();
  sub_100040C70(v122, v123);
  v124 = sub_1000999D4();
  sub_1001442D0(v124, v125, v120);
  v126 = sub_1000999D4();
  sub_10003A380(v126, v127);
  sub_1001F6848();
  (*(v158 + 8))(v120, v121);
  v128 = v155;
  v129 = sub_10012F398();
  v130(v129);
  v131 = sub_100141600(v128);
  v133 = v132;
  v134 = sub_1001F63B8(0);
  v136 = v135;
  sub_10003A380(v131, v133);
  if ((v159 & 1) != 0 || v151 != 19)
  {
    v143 = sub_1000999D4();
    sub_10003A380(v143, v144);

    v140 = v154;
    v138 = v152;
  }

  else
  {

    v137 = v160;
    sub_1001F6568();
    v138 = sub_1001F6528();
    v140 = v139;
    v141 = sub_1000999D4();
    sub_10003A380(v141, v142);

    v149(v137, v161);
  }

  (*(v163 + 8))(v162, v164);
  v145 = (*(v166 + 8))(v165, v153);
  v146 = (a6 + v34[7]);
  *v146 = v138;
  v146[1] = v140;
  v147 = (a6 + v34[6]);
  *v147 = v134;
  v147[1] = v136;
  *(a6 + v34[11]) = 0;
  return v145;
}

uint64_t sub_1001410B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = sub_1001F6DA8();
  sub_1001F6C88();
  return v5;
}

uint64_t sub_100141134(unint64_t a1, unint64_t a2)
{
  v4 = 0;
  v47[0] = a1;
  v47[1] = a2;
  *&v50 = a1;
  *(&v50 + 1) = a2;

  sub_1000183C4(&qword_1002B6F48, &qword_10020FA20);
  if (swift_dynamicCast())
  {
    sub_10002DD3C(v48, &v51);
    sub_10001AE68(&v51, v52);
    sub_100144BDC();
    sub_1001F6108();
    v48[0] = v50;
    sub_100019CCC(&v51);
    goto LABEL_56;
  }

  v49 = 0;
  memset(v48, 0, sizeof(v48));
  sub_10004BDE8(v48, &qword_1002B6F50, &qword_10020FA28);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v48[0] = a1;
    *(&v48[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v48;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1001F7858();
  }

  sub_100143DB0(v5, v6, &v51);
  v7 = *(&v51 + 1);
  v8 = v51;
  if (*(&v51 + 1) >> 60 != 15)
  {
    v48[0] = v51;
    goto LABEL_56;
  }

LABEL_9:
  *&v48[0] = sub_1001F6378();
  *(&v48[0] + 1) = v9;
  __chkstk_darwin(*&v48[0]);
  v42[2] = v47;
  v10 = sub_100143ECC(sub_100144710, v42);
  v12 = *(&v48[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v48[0]);
  switch(*(&v48[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v48[0]) - LODWORD(v48[0]);
      if (__OFSUB__(DWORD1(v48[0]), v48[0]))
      {
        goto LABEL_63;
      }

      v19 = v19;
LABEL_19:
      if (v11 == v19)
      {
        goto LABEL_20;
      }

      if (v12 == 2)
      {
        v18 = *(*&v48[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v48[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v21 = *(*&v48[0] + 16);
      v20 = *(*&v48[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v11)
      {
        v18 = 0;
LABEL_53:
        if (v18 < v11)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        sub_1001F6358();
        goto LABEL_55;
      }

LABEL_20:
      v42[4] = v4;
      v43 = v8;
      v44 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      v45 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v46 = v15 & 0xFFFFFFFFFFFFFFLL;
      *(&v50 + 7) = 0;
      *&v50 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v19 = BYTE14(v48[0]);
      goto LABEL_19;
  }

  while (4 * v24 != v17 >> 14)
  {
    v4 = v17 & 0xC;
    v27 = v17;
    if (v4 == v26)
    {
      v31 = sub_100144CD8();
      v27 = sub_1001EE2BC(v31, v32, v33);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      sub_1001F6CF8();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_1001F6D38();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v51 = v13;
      *(&v51 + 1) = v46;
      v30 = *(&v51 + v28);
    }

    else
    {
      v29 = v45;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_1001F7858();
      }

      v30 = *(v29 + v28);
    }

    if (v4 == v26)
    {
      v34 = sub_100144CD8();
      v17 = sub_1001EE2BC(v34, v35, v36);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_59;
    }

    sub_100144CD8();
    v17 = sub_1001F6D08();
LABEL_43:
    *(&v50 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_58;
    }

    if (v23 == 14)
    {
      sub_100144D34();
      sub_1001F6388();
      LOBYTE(v23) = 0;
    }
  }

  if (!v23)
  {

    sub_10003A36C(v43, v44);
    goto LABEL_56;
  }

  sub_100144D34();
  sub_1001F6388();
  sub_10003A36C(v43, v44);
LABEL_55:

LABEL_56:
  v37 = sub_10012F398();
  sub_100040C70(v37, v38);

  v39 = sub_10012F398();
  sub_10003A380(v39, v40);
  return sub_10012F398();
}

uint64_t sub_100141600(uint64_t a1)
{
  v2 = sub_1001F6868();
  v7 = v2;
  v8 = sub_10014437C(&qword_1002B6F40, &type metadata accessor for SHA384Digest, &protocol conformance descriptor for SHA384Digest);
  v3 = sub_1000629FC(v6);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_10001AE68(v6, v7);
  sub_100144BDC();
  sub_1001F6108();
  sub_100019CCC(v6);
  (*(v4 + 8))(a1, v2);
  return sub_10012F398();
}

uint64_t sub_10014172C(uint64_t a1)
{
  v7 = sub_1000183C4(&qword_1002B6F58, &qword_10020FA30);
  v8 = sub_10014478C();
  v6[0] = a1;
  v2 = sub_10001AE68(v6, v7);
  sub_100144258(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_100019CCC(v6);
  return v3;
}

uint64_t sub_1001417F4(char a1)
{
  if (a1)
  {
    return 0x535F594C494D4146;
  }

  else
  {
    return 0x4553414843525550;
  }
}

uint64_t sub_100141848(char a1)
{
  if (a1)
  {
    return 0x4C4157454E4552;
  }

  else
  {
    return 0x4553414843525550;
  }
}

unint64_t sub_100141880(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027C310;
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

uint64_t sub_1001418CC(char a1)
{
  if (!a1)
  {
    return 0x4952545F45455246;
  }

  if (a1 == 1)
  {
    return 0x595F53415F594150;
  }

  return 0x465F50555F594150;
}

uint64_t sub_100141960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_10027C270;
  result = sub_100047D7C(*a1, a1[1], v3);
  *a2 = result;
  return result;
}

uint64_t sub_100141998()
{
  v1 = sub_100056690();
  result = sub_1001417F4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_100141A74()
{
  result = qword_1002B6EC8;
  if (!qword_1002B6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6EC8);
  }

  return result;
}

uint64_t sub_100141AC8()
{
  v1 = sub_100056690();
  result = sub_1000B4D70(v1);
  *v0 = result;
  return result;
}

uint64_t sub_100141BC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_10027C2C0;
  result = sub_100047D7C(*a1, a1[1], v3);
  *a2 = result;
  return result;
}

uint64_t sub_100141BFC()
{
  v1 = sub_100056690();
  result = sub_100141848(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_100141CD8()
{
  result = qword_1002B6ED0;
  if (!qword_1002B6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6ED0);
  }

  return result;
}

unint64_t sub_100141D30()
{
  result = qword_1002B6ED8;
  if (!qword_1002B6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6ED8);
  }

  return result;
}

unint64_t sub_100141DA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100141880(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100141DD8()
{
  v1 = sub_100056690();
  result = sub_1001418CC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_100141EB4()
{
  result = qword_1002B6EE0;
  if (!qword_1002B6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6EE0);
  }

  return result;
}

uint64_t sub_100141F08(uint64_t a1)
{
  result = sub_10014437C(&qword_1002AF1D0, type metadata accessor for CheddarTransaction, &unk_10020F9AC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100141F60(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F7F58();

  if (v2 >= 0x29)
  {
    return 41;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100141FC0(char a1)
{
  result = 0x6843746E756F6D61;
  switch(a1)
  {
    case 1:
      return 0x756F636341707061;
    case 2:
    case 31:
      return 0xD000000000000010;
    case 3:
      return 0x6449656C646E7562;
    case 4:
      return 0x6F43656772616863;
    case 5:
      return 0x614464656E676973;
    case 6:
    case 25:
      return 0x79636E6572727563;
    case 7:
      v4 = 0x6D6F74737563;
      goto LABEL_31;
    case 8:
    case 20:
    case 27:
    case 40:
      return 0xD000000000000012;
    case 9:
      return 0xD000000000000017;
    case 10:
      return 0x6D6E6F7269766E65;
    case 11:
      return 0x6574616D69747365;
    case 12:
      return 0x4473657269707865;
    case 13:
      return 0x6461726770557369;
    case 14:
      return 0xD000000000000014;
    case 15:
      return 0xD000000000000015;
    case 16:
      return 0x656449726566666FLL;
    case 17:
      return 0x707954726566666FLL;
    case 18:
      return 0xD000000000000011;
    case 19:
      return 0x726550726566666FLL;
    case 21:
      return 0xD000000000000011;
    case 22:
      return 0xD000000000000011;
    case 23:
      return 0x49746375646F7270;
    case 24:
      return 0x6563697270;
    case 26:
      return 0x6573616863727570;
    case 28:
      return 0x797469746E617571;
    case 29:
      return 0xD000000000000011;
    case 30:
      return 0x697461636F766572;
    case 32:
    case 33:
      return 0x6F726665726F7473;
    case 34:
      return 0xD00000000000001BLL;
    case 35:
      v3 = 0x646F43786174;
      goto LABEL_6;
    case 36:
      v3 = 0x746152786174;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 37:
      result = 0x746361736E617274;
      break;
    case 38:
      result = 1701869940;
      break;
    case 39:
      v4 = 0x64724F626577;
LABEL_31:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001424F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100141F60(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100142520()
{
  v1 = sub_100056690();
  result = sub_100141FC0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100142550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100141FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100142578@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOBSDSocket.OptionLevel.ipv6.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001425A0(uint64_t a1)
{
  v2 = sub_1001439FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001425DC(uint64_t a1)
{
  v2 = sub_1001439FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100142618(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B6F08, &qword_10020FA08);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_1001439FC();
  sub_1001F8198();
  v11 = type metadata accessor for CheddarTransaction(0);
  sub_10001E770(v11[34]);
  LOBYTE(v17) = 0;
  sub_1001F7D18();
  if (!v2)
  {
    sub_10001E770(v11[25]);
    sub_100144A88(1);
    sub_1001F7D18();
    sub_10001E770(v11[33]);
    sub_100144A88(2);
    sub_1001F7D88();
    sub_100144A88(3);
    sub_1001F7D88();
    sub_10001E770(v11[35]);
    sub_100144A88(4);
    sub_1001F7D18();
    LOBYTE(v17) = 5;
    sub_1001F6508();
    sub_100144BF4();
    sub_10014437C(v12, v13, &protocol conformance descriptor for Date);
    sub_100144B34();
    sub_1001F7DC8();
    sub_10001E770(v11[36]);
    sub_100144A88(6);
    sub_1001F7D18();
    sub_10001E770(v11[37]);
    sub_100144A88(7);
    sub_1001F7D18();
    sub_10001E770(v11[6]);
    sub_100144A88(8);
    sub_1001F7D88();
    sub_10001E770(v11[7]);
    sub_100144A88(9);
    sub_1001F7D88();
    sub_10001E770(v11[8]);
    sub_100144A88(10);
    sub_1001F7D88();
    sub_10001E770(v11[38]);
    sub_100144A88(11);
    sub_1001F7D18();
    LOBYTE(v17) = 12;
    sub_100144B34();
    sub_1001F7D58();
    sub_100144C94(13);
    sub_100144B98();
    sub_1001F7D28();
    LOBYTE(v17) = 14;
    sub_100144B34();
    sub_1001F7DC8();
    sub_10001E770(v11[10]);
    sub_100144A88(15);
    sub_1001F7D88();
    sub_10001E770(v11[28]);
    sub_100144A88(16);
    sub_1001F7D18();
    sub_100144D08(v11[29]);
    v19 = 17;
    sub_1001372B0();
    sub_100144B04();
    sub_1001F7D58();
    sub_100144D08(v11[30]);
    v19 = 18;
    sub_100137304();
    sub_100144B04();
    sub_1001F7D58();
    v14 = (v3 + v11[31]);
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 8);
    v17 = v15;
    v18 = v14;
    v19 = 19;
    sub_100137358();
    sub_100144B04();
    sub_1001F7D58();
    sub_100144D08(v11[11]);
    v19 = 20;
    sub_100143BB8();
    sub_100144B04();
    sub_1001F7DC8();
    sub_10001E770(v11[39]);
    sub_100144A88(21);
    sub_1001F7D18();
    sub_10001E770(v11[40]);
    sub_100144A88(22);
    sub_1001F7D18();
    sub_10001E770(v11[12]);
    sub_100144A88(23);
    sub_1001F7D88();
    sub_100144C94(24);
    sub_100144B98();
    sub_1001F7DD8();
    sub_10001E770(v11[15]);
    sub_100144A88(25);
    sub_1001F7D88();
    LOBYTE(v17) = 26;
    sub_100144B34();
    sub_1001F7DC8();
    sub_10001E770(v11[41]);
    sub_100144A88(27);
    sub_1001F7D18();
    sub_100144C94(28);
    sub_100144B98();
    sub_1001F7DB8();
    sub_100144D08(v11[17]);
    v19 = 29;
    sub_100143C0C();
    sub_100144B04();
    sub_1001F7DC8();
    LOBYTE(v17) = 30;
    sub_100144B34();
    sub_1001F7D58();
    sub_100144D08(v11[27]);
    v19 = 31;
    sub_10005AE08();
    sub_100144B04();
    sub_1001F7D58();
    sub_10001E770(v11[18]);
    sub_100144A88(32);
    sub_1001F7D88();
    sub_10001E770(v11[19]);
    sub_100144A88(33);
    sub_1001F7D88();
    sub_10001E770(v11[23]);
    sub_100144A88(34);
    sub_1001F7D18();
    sub_10001E770(v11[42]);
    sub_100144A88(35);
    sub_1001F7D18();
    sub_100144A88(36);
    sub_1001F7D38();
    sub_10001E770(v11[20]);
    sub_100144A88(37);
    sub_1001F7D88();
    sub_10001E770(v11[21]);
    sub_100144A88(38);
    sub_1001F7D88();
    sub_10001E770(v11[44]);
    sub_100144A88(39);
    sub_1001F7D18();
    sub_10001E770(v11[24]);
    sub_100144A88(40);
    sub_1001F7D18();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100142CA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  __chkstk_darwin(v3 - 8);
  sub_100099484();
  v127 = v4 - v5;
  __chkstk_darwin(v6);
  v8 = &v122[-v7];
  sub_1001F6508();
  sub_10001A278();
  v136 = v9;
  v137 = v10;
  __chkstk_darwin(v9);
  sub_100099484();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v122[-v15];
  __chkstk_darwin(v17);
  v19 = &v122[-v18];
  sub_1000183C4(&qword_1002B6EE8, &qword_10020FA00);
  sub_10001A278();
  v129 = v21;
  v130 = v20;
  __chkstk_darwin(v20);
  v23 = &v122[-v22];
  v24 = type metadata accessor for CheddarTransaction(0);
  __chkstk_darwin(v24);
  sub_100023510();
  sub_100144CBC((v26 - v25 + *(v27 + 32)));
  sub_100144D48((v29 + v28));
  sub_100144C0C(v30);
  sub_100144C0C(*(v31 + 140));
  sub_100144C0C(*(v32 + 144));
  sub_100144C0C(*(v33 + 148));
  sub_100144C0C(*(v34 + 152));
  sub_100144C0C(*(v35 + 156));
  sub_100144C0C(*(v36 + 160));
  sub_100144C0C(*(v37 + 164));
  sub_100144C0C(*(v38 + 168));
  v41 = v40 + v39[43];
  *v41 = 0;
  *(v41 + 8) = 1;
  v134 = v40;
  v135 = v39;
  sub_100144C0C(v39[44]);
  v42 = a1[3];
  v132 = a1;
  sub_10001AE68(a1, v42);
  sub_1001439FC();
  v131 = v23;
  v43 = v133;
  sub_1001F8178();
  if (v43)
  {
    sub_100144AC0();
    LODWORD(v126) = 0;
    LODWORD(v125) = 0;
    sub_100144C18();
    v46 = v134;
    v47 = v135;
    v133 = v43;
    result = sub_100019CCC(v132);
    LODWORD(v124) = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = v136;
    if (!v19)
    {
      if (!v123)
      {
        goto LABEL_20;
      }

LABEL_5:
      result = sub_10001E800();
      if (v140)
      {
        goto LABEL_21;
      }

LABEL_6:
      if (!v127)
      {
        goto LABEL_22;
      }

LABEL_7:
      result = (*(v137 + 8))(v46 + v47[13], v52);
      if (v128)
      {
        goto LABEL_23;
      }

LABEL_8:
      if (!v130)
      {
        goto LABEL_24;
      }

LABEL_9:
      result = sub_10001E800();
      if (v51)
      {
        goto LABEL_25;
      }

LABEL_10:
      if (!v50)
      {
        goto LABEL_26;
      }

LABEL_11:
      result = sub_10001E800();
      if (v49)
      {
        goto LABEL_27;
      }

LABEL_12:
      if (!v126)
      {
        goto LABEL_28;
      }

LABEL_13:
      result = sub_10004BDE8(v46 + v47[22], &unk_1002B3450, &qword_100202EE0);
      if (v124)
      {
        goto LABEL_29;
      }

LABEL_14:
      if (!v125)
      {
        goto LABEL_30;
      }

LABEL_15:
      result = sub_10001E800();
      if (v131)
      {
        goto LABEL_31;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v44 = v8;
    v133 = v16;
    v126 = v13;
    LOBYTE(v138) = 1;
    v45 = sub_1001F7C08();
    v53 = v134;
    v54 = v135;
    sub_10001E77C(v45, v55, v135[25]);
    *v53 = sub_100144D68(3);
    v53[1] = v56;
    LOBYTE(v138) = 5;
    sub_100144BF4();
    v59 = sub_10014437C(v57, v58, &protocol conformance descriptor for Date);
    v60 = v136;
    sub_1001F7CB8();
    v125 = v59;
    v61 = v60;
    v62 = *(v137 + 32);
    v62(v53 + v54[5], v19, v61);
    v63 = sub_100144D68(8);
    v124 = v62;
    sub_10001E77C(v63, v64, v54[6]);
    sub_100144BA8(9);
    v65 = sub_1001F7C78();
    sub_10001E77C(v65, v66, v54[7]);
    sub_100144C94(12);
    sub_100144C54();
    sub_1001F7C48();
    sub_100136810(v44, v53 + v54[22]);
    sub_100144BA8(13);
    *(v53 + v54[32]) = sub_1001F7C18();
    sub_100144C94(14);
    v67 = v133;
    sub_100144C54();
    sub_1001F7CB8();
    v124(v53 + v54[9], v67, v136);
    sub_100144BA8(15);
    v68 = sub_1001F7C78();
    sub_10001E77C(v68, v69, v54[10]);
    sub_100144BA8(16);
    v70 = sub_1001F7C08();
    sub_100144C48(v70, v71, v135[28]);
    v141 = 17;
    sub_1001374F0();
    sub_100144B1C();
    sub_1001F7C48();
    sub_100144D14();
    *(v74 + *(v72 + 116)) = v73;
    v141 = 18;
    sub_100137544();
    sub_100144B1C();
    sub_1001F7C48();
    sub_100144D14();
    *(v77 + *(v75 + 120)) = v76;
    v141 = 19;
    sub_100137598();
    sub_100144B1C();
    sub_1001F7C48();
    v78 = v139;
    v79 = v134 + v135[31];
    *v79 = v138;
    v79[8] = v78;
    v141 = 20;
    sub_100143A50();
    sub_100144B1C();
    sub_1001F7CB8();
    sub_100144D14();
    *(v82 + *(v80 + 44)) = v81;
    sub_100144B50(23);
    v83 = sub_1001F7C78();
    sub_100144C48(v83, v84, v135[12]);
    sub_100144B50(24);
    *(v134 + v135[14]) = sub_1001F7CC8();
    sub_100144B50(25);
    v85 = sub_1001F7C78();
    sub_100144C48(v85, v86, v135[15]);
    sub_100144C94(26);
    sub_1001F7CB8();
    v124(v134 + v135[13], v126, v136);
    sub_100144B50(28);
    *(v134 + v135[16]) = sub_1001F7CA8();
    v141 = 29;
    sub_100143AA4();
    sub_100144B1C();
    sub_1001F7CB8();
    sub_100144D14();
    *(v89 + *(v87 + 68)) = v88;
    sub_100144C94(30);
    sub_1001F7C48();
    sub_100136810(v127, v134 + v135[26]);
    v141 = 31;
    sub_10005ADB4();
    sub_100144B1C();
    sub_1001F7C48();
    sub_100144D14();
    *(v92 + *(v90 + 108)) = v91;
    sub_100144B50(32);
    v93 = sub_1001F7C78();
    sub_100144C48(v93, v94, v135[18]);
    sub_100144B50(33);
    v95 = sub_1001F7C78();
    sub_100144C48(v95, v96, v135[19]);
    sub_100144B50(34);
    v97 = sub_1001F7C08();
    LODWORD(v124) = 1;
    v133 = 0;
    sub_100144C48(v97, v98, v135[23]);
    sub_100144B88(37);
    v99 = v133;
    v100 = sub_1001F7C78();
    v133 = v99;
    if (v99)
    {
      v102 = sub_100144B64();
      v103(v102);
      v50 = 0;
      v49 = 0;
    }

    else
    {
      sub_100144C48(v100, v101, v135[20]);
      sub_100144B88(38);
      v106 = v133;
      v107 = sub_1001F7C78();
      v133 = v106;
      if (v106)
      {
        v109 = sub_100144B64();
        v110(v109);
        v49 = 0;
        v50 = 1;
      }

      else
      {
        sub_100144C48(v107, v108, v135[21]);
        sub_100144B88(40);
        v111 = v133;
        v112 = sub_1001F7C08();
        v133 = v111;
        if (!v111)
        {
          v116 = v112;
          v117 = v113;
          v118 = sub_100144B64();
          v119(v118);
          v120 = v134;
          v121 = (v134 + v135[24]);
          *v121 = v116;
          v121[1] = v117;
          sub_100143AF8(v120, v128);
          sub_100019CCC(v132);
          return sub_100143B5C(v120);
        }

        v114 = sub_100144B64();
        v115(v114);
        v50 = 1;
        v49 = 1;
      }
    }

    sub_100019CCC(v132);
    v123 = 1;
    sub_100144CE8(1);
    LODWORD(v130) = v104;
    v51 = 1;
    sub_100144D5C(v104);
    LODWORD(v131) = v105;
    LODWORD(v129) = v105;
    v46 = v134;
    v47 = v135;

    v52 = v136;
    (*(v137 + 8))(v46 + v47[5], v136);
    sub_10001E800();
    sub_10001E800();
  }

  result = (*(v137 + 8))(v46 + v47[9], v52);
  if (v123)
  {
    goto LABEL_5;
  }

LABEL_20:
  if (!v140)
  {
    goto LABEL_6;
  }

LABEL_21:
  result = sub_10001E800();
  if (v127)
  {
    goto LABEL_7;
  }

LABEL_22:
  if (!v128)
  {
    goto LABEL_8;
  }

LABEL_23:
  result = sub_10001E800();
  if (v130)
  {
    goto LABEL_9;
  }

LABEL_24:
  if (!v51)
  {
    goto LABEL_10;
  }

LABEL_25:
  result = sub_10001E800();
  if (v50)
  {
    goto LABEL_11;
  }

LABEL_26:
  if (!v49)
  {
    goto LABEL_12;
  }

LABEL_27:
  result = sub_10001E800();
  if (v126)
  {
    goto LABEL_13;
  }

LABEL_28:
  if (!v124)
  {
    goto LABEL_14;
  }

LABEL_29:
  result = sub_10001E800();
  if (v125)
  {
    goto LABEL_15;
  }

LABEL_30:
  if (v131)
  {
LABEL_31:
    result = sub_10004BDE8(v46 + v47[26], &unk_1002B3450, &qword_100202EE0);
    if ((v129 & 1) == 0)
    {
      return result;
    }

    return sub_10001E800();
  }

LABEL_16:
  if (!v129)
  {
    return result;
  }

  return sub_10001E800();
}

unint64_t sub_1001439FC()
{
  result = qword_1002B6EF0;
  if (!qword_1002B6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6EF0);
  }

  return result;
}

unint64_t sub_100143A50()
{
  result = qword_1002B6EF8;
  if (!qword_1002B6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6EF8);
  }

  return result;
}

unint64_t sub_100143AA4()
{
  result = qword_1002B6F00;
  if (!qword_1002B6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F00);
  }

  return result;
}

uint64_t sub_100143AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CheddarTransaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100143B5C(uint64_t a1)
{
  v2 = type metadata accessor for CheddarTransaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100143BB8()
{
  result = qword_1002B6F10;
  if (!qword_1002B6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F10);
  }

  return result;
}

unint64_t sub_100143C0C()
{
  result = qword_1002B6F18;
  if (!qword_1002B6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F18);
  }

  return result;
}

unint64_t sub_100143C60()
{
  result = qword_1002B6F20;
  if (!qword_1002B6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F20);
  }

  return result;
}

unint64_t sub_100143CB4()
{
  result = qword_1002B6F28;
  if (!qword_1002B6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F28);
  }

  return result;
}

unint64_t sub_100143D08()
{
  result = qword_1002B6F30;
  if (!qword_1002B6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F30);
  }

  return result;
}

unint64_t sub_100143D5C()
{
  result = qword_1002B6F38;
  if (!qword_1002B6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F38);
  }

  return result;
}

uint64_t sub_100143DB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1001F6298();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1001F6088();
      swift_allocObject();
      v8 = sub_1001F6048();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1001F6338();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_100143E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_10014440C(sub_10014476C, v5, a1, a2);
}

uint64_t sub_100143ECC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v10 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10003A380(v7, v6);
      *v5 = xmmword_10020F550;
      sub_10003A380(0, 0xC000000000000000);
      v11 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v11 < v7)
      {
        goto LABEL_23;
      }

      v12 = sub_1001F6058();
      if (v12)
      {
        v4 = v12;
        if (__OFSUB__(v7, sub_1001F6078()))
        {
          goto LABEL_24;
        }
      }

      sub_1001F6088();
      swift_allocObject();
      v13 = sub_1001F6038();

      v10 = v13;
LABEL_16:
      if (v11 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      sub_100144470(v7, v7 >> 32, a1);
      sub_100144D20();

      v9 = v10 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10003A380(v7, v6);
      v16 = v7;
      v17 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_10020F550;
      sub_10003A380(0, 0xC000000000000000);
      sub_1001F62A8();
      v7 = v16;
      sub_100144470(*(v16 + 16), *(v16 + 24), a1);
      if (v3)
      {
        v9 = v17 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v9;
      }

      else
      {
        sub_100144D20();
        v9 = v17 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v9;
      }

      return v4;
    case 3uLL:
      memset(v18, 0, 15);
      a1(&v16, v18, v18);
      if (!v3)
      {
        return v16;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_10003A380(v7, v6);
      v18[0] = v7;
      LOWORD(v18[1]) = v6;
      BYTE2(v18[1]) = BYTE2(v6);
      BYTE3(v18[1]) = BYTE3(v6);
      BYTE4(v18[1]) = BYTE4(v6);
      BYTE5(v18[1]) = BYTE5(v6);
      BYTE6(v18[1]) = BYTE6(v6);
      a1(&v16, v18, v18 + BYTE6(v6));
      if (!v3)
      {
        v4 = v16;
      }

      sub_100144C74();
      return v4;
  }
}

uint64_t sub_100144258@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1001F6298();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = sub_1001F62B8();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = sub_1001F62E8();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1001442D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v8;
LABEL_9:
      result = sub_1001445F8(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
      goto LABEL_9;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100144524(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x10014436CLL);
      }

      return result;
  }
}

uint64_t sub_10014437C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001443C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result = sub_1001F77C8();
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10014440C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_100144470(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1001F6058();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1001F6078();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1001F6068();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}