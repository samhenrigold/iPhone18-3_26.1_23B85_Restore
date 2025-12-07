uint64_t sub_100066618(uint64_t a1)
{
  v23 = v1;
  v2 = v1[42];
  v4 = v1[40];
  v3 = v1[41];
  v5 = v1[33];
  v6 = v1[31];
  swift_willThrow();

  static FamilyLogger.daemon.getter();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v20 = v1[26];
    v21 = v1[28];
    v9 = v1[24];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000373D4(v12, v13, &v22);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to process parental controls push with error: %s", v10, 0xCu);
    sub_100024F7C(v11);

    v21(v20, v9);
  }

  else
  {
    v15 = v1[28];
    v16 = v1[26];
    v17 = v1[24];

    v15(v16, v17);
  }

  v18 = v1[1];

  return v18();
}

uint64_t sub_100066824(uint64_t a1, void *a2)
{
  v3 = sub_1000297A8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

id ParentalControlsPushHandler.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ParentalControlsPushHandler(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000669BC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100066AB4;

  return v6(a1);
}

uint64_t sub_100066AB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_100066BAC(uint64_t a1, uint64_t a2)
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

  sub_100022F18(&qword_1000B8BC8, &unk_10008E030);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_100066C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000673DC(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000671AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100026358;

  return sub_10006582C(a1, v4, v5, v7, v6);
}

uint64_t sub_10006726C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_1000669BC(a1, v4);
}

uint64_t sub_100067324(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026358;

  return sub_1000669BC(a1, v4);
}

uint64_t sub_1000673DC(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10006745C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10006745C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100066BAC(v9, 0), v12 = sub_1000675B4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000675B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000677D4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000677D4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000677D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100067870(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 26;
  v4 = [objc_opt_self() defaultStore];
  v2[28] = v4;
  if (v4)
  {
    v5 = v4;
    v2[10] = v2;
    v2[15] = v3;
    v2[11] = sub_100067A90;
    v6 = swift_continuation_init();
    v2[25] = sub_100022F18(&qword_1000B9048, &unk_10008D840);
    v2[18] = _NSConcreteStackBlock;
    v2[19] = 1107296256;
    v2[20] = sub_10006D050;
    v2[21] = &unk_1000A9208;
    v2[22] = v6;
    [v5 aa_primaryAppleAccountWithCompletion:v2 + 18];
    v7 = v2 + 10;
  }

  else
  {
    v8 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    v2[30] = v8;
    v2[2] = v2;
    v2[7] = v3;
    v2[3] = sub_100068074;
    v9 = swift_continuation_init();
    v2[25] = sub_100022F18(&unk_1000B8440, &unk_10008C890);
    v2[18] = _NSConcreteStackBlock;
    v2[19] = 1107296256;
    v2[20] = sub_10007415C;
    v2[21] = &unk_1000A91E0;
    v2[22] = v9;
    [v8 startRequestWithCompletionHandler:v2 + 18];
    v7 = v2 + 2;
  }

  return _swift_continuation_await(v7);
}

uint64_t sub_100067A90()
{
  v1 = *(*v0 + 112);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_100068370;
  }

  else
  {
    v2 = sub_100067BA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100067BA0()
{
  v42 = v0;
  v1 = *(v0 + 208);

  if (!v1)
  {
LABEL_72:
    v38 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    *(v0 + 240) = v38;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_100068074;
    v39 = swift_continuation_init();
    *(v0 + 200) = sub_100022F18(&unk_1000B8440, &unk_10008C890);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10007415C;
    *(v0 + 168) = &unk_1000A91E0;
    *(v0 + 176) = v39;
    [v38 startRequestWithCompletionHandler:v0 + 144];
    v7 = (v0 + 16);

    return _swift_continuation_await(v7);
  }

  v2 = [v1 aa_personID];
  if (!v2)
  {
LABEL_71:

    goto LABEL_72;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v8 = HIBYTE(v6) & 0xF;
  v9 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v10 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_72;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v12 = sub_100066C20(v4, v6, 10);
    v30 = v40;
    goto LABEL_65;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v41[0] = v4;
    v41[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    if (v4 == 43)
    {
      if (v8)
      {
        if (--v8)
        {
          v12 = 0;
          v22 = v41 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_81:
      __break(1u);
      return _swift_continuation_await(v7);
    }

    if (v4 != 45)
    {
      if (v8)
      {
        v12 = 0;
        v27 = v41;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v8)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v8)
    {
      if (--v8)
      {
        v12 = 0;
        v16 = v41 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v8)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_79;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v7 = _StringObject.sharedUTF8.getter();
  }

  v11 = *v7;
  if (v11 == 43)
  {
    if (v9 < 1)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v8 = v9 - 1;
    if (v9 != 1)
    {
      v12 = 0;
      if (v7)
      {
        v19 = v7 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            goto LABEL_63;
          }

          v21 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            goto LABEL_63;
          }

          v12 = v21 + v20;
          if (__OFADD__(v21, v20))
          {
            goto LABEL_63;
          }

          ++v19;
          if (!--v8)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_55;
    }

LABEL_63:
    v12 = 0;
    LOBYTE(v8) = 1;
    goto LABEL_64;
  }

  if (v11 != 45)
  {
    if (v9)
    {
      v12 = 0;
      if (v7)
      {
        while (1)
        {
          v25 = *v7 - 48;
          if (v25 > 9)
          {
            goto LABEL_63;
          }

          v26 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            goto LABEL_63;
          }

          v12 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            goto LABEL_63;
          }

          ++v7;
          if (!--v9)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_55;
    }

    goto LABEL_63;
  }

  if (v9 < 1)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v8 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_63;
  }

  v12 = 0;
  if (v7)
  {
    v13 = v7 + 1;
    while (1)
    {
      v14 = *v13 - 48;
      if (v14 > 9)
      {
        goto LABEL_63;
      }

      v15 = 10 * v12;
      if ((v12 * 10) >> 64 != (10 * v12) >> 63)
      {
        goto LABEL_63;
      }

      v12 = v15 - v14;
      if (__OFSUB__(v15, v14))
      {
        goto LABEL_63;
      }

      ++v13;
      if (!--v8)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_55:
  LOBYTE(v8) = 0;
LABEL_64:
  v30 = v8;
LABEL_65:

  if (v30)
  {
    goto LABEL_71;
  }

  if ([*(v0 + 216) integerValue] != v12)
  {
    goto LABEL_71;
  }

  v31 = [v1 aa_altDSID];
  if (!v31)
  {
    goto LABEL_71;
  }

  v32 = v31;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = *(v0 + 8);

  return v36(v33, v35);
}

uint64_t sub_100068074()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_100068300;
  }

  else
  {
    v2 = sub_100068184;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100068184()
{
  v1 = v0[26];
  v2 = [v1 memberForDSID:v0[27]];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 altDSID];
    if (v4)
    {
      v5 = v0[30];
      v6 = v4;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = v0[1];

      return v10(v7, v9);
    }
  }

  v12 = v0[30];
  type metadata accessor for AgeRangeError(0);
  v0[26] = -4004;
  sub_100023D48(_swiftEmptyArrayStorage);
  sub_1000683E0();
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100068300(uint64_t a1)
{
  v2 = *(v1 + 240);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100068370(uint64_t a1)
{
  v2 = *(v1 + 224);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_1000683E0()
{
  result = qword_1000B8068;
  if (!qword_1000B8068)
  {
    type metadata accessor for AgeRangeError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8068);
  }

  return result;
}

char *sub_1000684D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR___FAXPCEventObserver_delegate];
    v4 = result;
    swift_unknownObjectRetain();

    [v3 handleContactsChanged];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100068554()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR___FAXPCEventObserver_handlers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v2);
  *(v0 + v2) = 0x8000000000000000;
  sub_100076938(sub_100069124, v1, 0xD00000000000002DLL, 0x8000000100089420, isUniquelyReferenced_nonNull_native);
  *(v0 + v2) = v9;
  swift_endAccess();

  v4 = *(v0 + OBJC_IVAR___FAXPCEventObserver_stream);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v6 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10006912C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006913C;
  aBlock[3] = &unk_1000A92D0;
  v7 = _Block_copy(aBlock);

  [v4 setEventHandlerForStream:v6 queue:0 handler:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
}

char *sub_100068758(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [a1 name];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = OBJC_IVAR___FAXPCEventObserver_handlers;
    swift_beginAccess();
    v10 = *&v4[v9];

    if (*(v10 + 16))
    {
      v11 = sub_100037A08(v6, v8);
      v13 = v12;

      if (v13)
      {
        v14 = *(*(v10 + 56) + 16 * v11);

        v15 = a1;
        v14(&v15);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1000689C4(uint64_t a1, void (*a2)(void))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for XPCEvent(v7, v10);
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC13familycircled8XPCEvent_object] = a1;
  v31.receiver = v12;
  v31.super_class = v11;
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v31, "init");
  static FamilyLogger.daemon.getter();
  v14 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v5;
    v18 = v17;
    v27 = swift_slowAlloc();
    v30 = v27;
    *v18 = 136315138;
    v19 = [v14 name];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v4;
    v21 = v20;
    v22 = a2;
    v24 = v23;

    v25 = sub_1000373D4(v21, v24, &v30);
    a2 = v22;

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "did receive xpc event: %s", v18, 0xCu);
    sub_100024F7C(v27);

    (*(v29 + 8))(v9, v28);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v26 = v14;
  a2();
}

uint64_t sub_100068C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_100068EBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100068F90()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (xpc_dictionary_get_string(*(v0 + OBJC_IVAR____TtC13familycircled8XPCEvent_object), _xpc_event_key_name))
  {
    return String.init(cString:)();
  }

  static FamilyLogger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unknown XPC event name received", v9, 2u);
  }

  (*(v2 + 8))(v5, v1);
  return 0xD000000000000021;
}

uint64_t sub_100069140@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SystemBackgroundRequestFactory();
  __chkstk_darwin(v4 - 8, v5);
  if ([v1 internalScheduler])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    sub_100022F18(&qword_1000B9780, &qword_10008E298);
    if (swift_dynamicCast())
    {
      if (*(&v16 + 1))
      {
        sub_10006CF34(&v15, v18);
        return sub_10006CF34(v18, a1);
      }
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    sub_10002624C(v14, &qword_1000B82F8, &qword_10008CEB0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  sub_10002624C(&v15, &qword_1000B9760, &qword_10008E270);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100022F18(&qword_1000B9768, &qword_10008E288);
  swift_allocObject();
  sub_10006CBF0(86400, &unk_10008E280, v7);

  v8 = objc_opt_self();

  v9 = [v8 sharedScheduler];
  SystemBackgroundRequestFactory.init()();
  *&v18[0] = v9;
  v10 = sub_100022F18(&qword_1000B9770, &qword_10008E290);
  swift_allocObject();
  v11 = SystemBackgroundTaskScheduler.init(taskProvider:underlyingScheduler:requestFactory:)();
  [v2 setInternalScheduler:v11];
  a1[3] = v10;
  a1[4] = sub_100031B9C(&qword_1000B9778, &qword_1000B9770, &qword_10008E290, &protocol conformance descriptor for SystemBackgroundTaskScheduler<A, B, C>);

  *a1 = v11;
  return result;
}

uint64_t sub_100069428()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_100069510;

    return sub_100069670();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100069510()
{

  return _swift_task_switch(sub_10006960C, 0, 0);
}

uint64_t sub_10006960C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100069670()
{
  v1[25] = v0;
  sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v1[26] = swift_task_alloc();
  v2 = type metadata accessor for XPCActivity.Criteria.Options();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = type metadata accessor for XPCActivity.Priority();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  type metadata accessor for XPCActivity.Criteria();
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000697F0, 0, 0);
}

uint64_t sub_1000697F0()
{
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_10006990C;
  v2 = swift_continuation_init();
  v0[17] = sub_100022F18(&qword_1000B97A8, &qword_10008E2B8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100069D30;
  v0[13] = &unk_1000A9518;
  v0[14] = v2;
  [v1 performHeartbeatCheckinWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10006990C()
{

  return _swift_task_switch(sub_1000699EC, 0, 0);
}

uint64_t sub_1000699EC()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v10 = v0[26];
  v11 = v0[25];
  sub_100069140(v0 + 18);
  sub_1000297A8(v0 + 18, v0[21]);
  dispatch thunk of BackgroundTaskScheduler.taskProvider.getter();
  (*(v3 + 104))(v1, enum case for XPCActivity.Priority.maintenance(_:), v2);
  sub_100022F18(&qword_1000B9788, &qword_10008E2A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008C760;
  static XPCActivity.Criteria.Options.requiresNetwork.getter();
  static XPCActivity.Criteria.Options.allowBattery.getter();
  v0[24] = v4;
  sub_10006D000(&qword_1000B9790, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
  sub_100022F18(&qword_1000B9798, &qword_10008E2A8);
  sub_100031B9C(&qword_1000B97A0, &qword_1000B9798, &qword_10008E2A8, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of BackgroundTaskProvider.criteria.setter();
  swift_unknownObjectRelease();
  sub_100024F7C(v0 + 18);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v10, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v11;
  v7 = v11;
  sub_10006A334(0, 0, v10, &unk_10008E2C8, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100069D30(uint64_t a1, uint64_t a2)
{
  **(*(*sub_1000297A8((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_100069D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100069E4C, 0, 0);
}

uint64_t sub_100069E4C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100069F18;

  return sub_10006C414(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100069F18()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10006A260;
  }

  else
  {
    v5 = sub_10006A088;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10006A088()
{
  sub_100069140(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  sub_1000297A8(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10006A148;

  return dispatch thunk of BackgroundTaskScheduler.schedule()(v1, v2);
}

uint64_t sub_10006A148()
{

  if (v0)
  {

    v1 = sub_10006D048;
  }

  else
  {
    v1 = sub_10006A2C4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10006A260()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006A2C4()
{
  sub_100024F7C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006A334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v23 - v10;
  sub_10006C3A4(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002624C(v11, &qword_1000B82B8, &qword_10008C6C0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10002624C(a3, &qword_1000B82B8, &qword_10008C6C0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002624C(a3, &qword_1000B82B8, &qword_10008C6C0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10006A5F0()
{
  sub_100069140(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  sub_1000297A8(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10006A6B0;

  return dispatch thunk of BackgroundTaskScheduler.schedule()(v1, v2);
}

uint64_t sub_10006A6B0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10006A828;
  }

  else
  {
    v2 = sub_10006A7C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006A7C4()
{
  sub_100024F7C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006A828()
{
  sub_100024F7C((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006AA00(const void *a1, void *a2)
{
  *(v2 + 56) = a2;
  *(v2 + 64) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10006AA78, 0, 0);
}

uint64_t sub_10006AA78()
{
  sub_100069140(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  sub_1000297A8(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10006AB38;

  return dispatch thunk of BackgroundTaskScheduler.schedule()(v1, v2);
}

uint64_t sub_10006AB38()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10006ACD0;
  }

  else
  {
    v2 = sub_10006AC4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006AC4C()
{
  v1 = *(v0 + 64);

  sub_100024F7C((v0 + 16));
  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 64));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006ACD0()
{
  v1 = *(v0 + 64);

  sub_100024F7C((v0 + 16));
  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 64));
  v3 = *(v0 + 8);

  return v3();
}

Swift::Void __swiftcall FAHeartbeatActivity.unregister()()
{
  sub_100069140(v0);
  sub_1000297A8(v0, v1);
  dispatch thunk of BackgroundTaskScheduler.unregister()();
  sub_100024F7C(v0);
}

uint64_t sub_10006AE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;

  sub_10006A334(0, 0, v9, &unk_10008E240, v11);
}

uint64_t sub_10006AF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10006B038, 0, 0);
}

uint64_t sub_10006B038()
{
  v22 = v0;
  if (XPCActivity.shouldDefer()())
  {
    static FamilyLogger.osUpdateActivity.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000373D4(0xD000000000000011, 0x8000000100089530, &v21);
      _os_log_impl(&_mh_execute_header, v1, v2, "FAOSUpdatedActivity %s - defering activityBlock", v7, 0xCu);
      sub_100024F7C(v8);
    }

    (*(v5 + 8))(v4, v6);

    v9 = v0[1];

    return v9();
  }

  else
  {
    static FamilyLogger.osUpdateActivity.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[8];
    v15 = v0[5];
    v16 = v0[6];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1000373D4(0xD000000000000011, 0x8000000100089530, &v21);
      _os_log_impl(&_mh_execute_header, v11, v12, "FAOSUpdatedActivity %s - executing activityBlock", v17, 0xCu);
      sub_100024F7C(v18);
    }

    (*(v16 + 8))(v14, v15);
    v20 = (v0[3] + *v0[3]);
    v19 = swift_task_alloc();
    v0[9] = v19;
    *v19 = v0;
    v19[1] = sub_10006B378;

    return v20();
  }
}

uint64_t sub_10006B378()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10006B4CC, 0, 0);
  }
}

uint64_t sub_10006B4CC()
{
  XPCActivity.done()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006B540()
{

  v1 = OBJC_IVAR____TtC13familycircled28HeartbeatXPCActivityProvider_criteria;
  v2 = type metadata accessor for XPCActivity.Criteria();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeartbeatXPCActivityProvider(uint64_t a1)
{
  result = qword_1000B9620;
  if (!qword_1000B9620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B638(uint64_t a1)
{
  result = type metadata accessor for XPCActivity.Criteria();
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

uint64_t sub_10006B6D8(uint64_t a1)
{
  result = type metadata accessor for XPCActivity.Criteria();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t (*sub_10006B808())()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10006C2A8;
  *(v4 + 24) = v3;

  return sub_10006C2B0;
}

uint64_t (*sub_10006B89C())(uint64_t a1)
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_allocObject();
  v4[2] = *(v1 + 80);
  v4[3] = *(v1 + 88);
  v4[4] = v3;
  v4[5] = v2;

  return sub_10006C8CC;
}

uint64_t sub_10006B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1, a2);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v21 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v12, a1, a4);
  v18 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  *(v19 + 6) = a2;
  *(v19 + 7) = a3;
  (*(v10 + 32))(&v19[v18], v12, a4);

  sub_10006A334(0, 0, v16, &unk_10008E250, v19);
}

uint64_t sub_10006BB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for Logger();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return _swift_task_switch(sub_10006BBF4, 0, 0);
}

uint64_t sub_10006BBF4()
{
  v13 = v0;
  static FamilyLogger.osUpdateActivity.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000373D4(0xD000000000000011, 0x8000000100089530, &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "FAOSUpdatedActivity %s - executing activityBlock", v7, 0xCu);
    sub_100024F7C(v8);
  }

  (*(v5 + 8))(v4, v6);
  v11 = (v0[2] + *v0[2]);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_10006BDE8;

  return v11();
}

uint64_t sub_10006BDE8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10006BF34, 0, 0);
  }
}

uint64_t sub_10006BF34()
{
  dispatch thunk of SystemBackgroundTaskProtocol.setTaskCompleted()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006BFA8()
{

  v1 = qword_1000BC038;
  v2 = type metadata accessor for XPCActivity.Criteria();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10006C010()
{
  sub_10006BFA8();

  return swift_deallocClassInstance();
}

uint64_t sub_10006C098@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = type metadata accessor for XPCActivity.Criteria();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_10006C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = type metadata accessor for XPCActivity.Criteria();
  (*(*(v7 - 8) + 40))(v4 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_10006C2DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100026358;

  return sub_10006AF68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10006C3A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10006C514, 0, 0);
}

uint64_t sub_10006C514()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10006D000(&qword_1000B97B0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10006D000(&qword_1000B97B8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10006C6A4;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10006C6A4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10006C860, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10006C860()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006C8D8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100026620;

  return sub_10006BB2C(a1, v7, v8, v9, v10, v1 + v6, v4, v5);
}

uint64_t sub_10006C9E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100026620;

  return sub_10006AA00(v2, v3);
}

uint64_t sub_10006CA94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100026358;

  return sub_100071F00(a1, v4, v5, v6);
}

uint64_t sub_10006CB60()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100026620;

  return sub_100069408(v0);
}

uint64_t sub_10006CBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a2;
  v20 = a1;
  v19 = type metadata accessor for XPCActivity.Criteria.Options();
  v17[1] = *(v19 - 8);
  __chkstk_darwin(v19, v5);
  v6 = type metadata accessor for XPCActivity.Priority();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for XPCActivity.Criteria();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = v17[0];
  *(v3 + 24) = a3;
  (*(v7 + 104))(v10, enum case for XPCActivity.Priority.maintenance(_:), v6);
  sub_100022F18(&qword_1000B9788, &qword_10008E2A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10008C760;

  static XPCActivity.Criteria.Options.requiresNetwork.getter();
  static XPCActivity.Criteria.Options.allowBattery.getter();
  v21 = v15;
  sub_10006D000(&qword_1000B9790, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
  sub_100022F18(&qword_1000B9798, &qword_10008E2A8);
  sub_100031B9C(&qword_1000B97A0, &qword_1000B9798, &qword_10008E2A8, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
  (*(v11 + 32))(v3 + qword_1000BC038, v14, v18);
  return v3;
}

uint64_t sub_10006CF34(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10006CF4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100026620;

  return sub_100069D8C(a1, v4, v5, v6);
}

uint64_t sub_10006D000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006D050(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000297A8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_10006D120(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = [v3 defaultStore];
  v5 = [v4 aa_primaryAppleAccount];
  v6 = objc_allocWithZone(FADeviceInfo);
  v7 = v5;
  v8 = [v6 init];
  v9 = [objc_allocWithZone(FAURLConfiguration) init];
  v10 = [objc_opt_self() sharedSession];
  v11 = [objc_allocWithZone(FANetworkService) initWithAccount:v7 deviceInfo:v8 urlProvider:v9 urlSession:v10];

  *&v2[OBJC_IVAR___FAParentalControlsOperation_networkService] = v11;
  v12 = [v4 aa_grandSlamAccountForiCloudAccount:v7];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = objc_allocWithZone(AAGrandSlamSigner);
  v14 = v4;
  v15 = String._bridgeToObjectiveC()();

  v16 = [v13 initWithAccountStore:v14 grandSlamAccount:v12 appTokenID:v15];

  *&v2[OBJC_IVAR___FAParentalControlsOperation_aaGrandSlamSigner] = v16;
  v17 = [v3 defaultStore];
  v18 = [v14 aa_grandSlamAccountForiCloudAccount:v7];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = objc_allocWithZone(AAGrandSlamSigner);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 initWithAccountStore:v17 grandSlamAccount:v18 appTokenID:v20];

  if (v21)
  {
    v22 = AAFamilyGrandSlamTokenHeaderKey;
    v23 = v21;
    v24 = v22;
    [v23 setHeaderFieldKey:v24];
  }

  *&v2[OBJC_IVAR___FAParentalControlsOperation_familyGrandSlamSigner] = v21;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for FAParentalControlsOperation(v25, v26);
  return objc_msgSendSuper2(&v28, "init");
}

uint64_t sub_10006D428(uint64_t a1, uint64_t a2)
{
  v3[12] = v2;
  sub_100022F18(&qword_1000B8290, &unk_10008C690);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[17] = v7;
  *v7 = v3;
  v7[1] = sub_10006D578;

  return sub_1000722D4(a1, a2);
}

uint64_t sub_10006D578(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10006D6D4, 0, 0);
  }
}

uint64_t sub_10006D6D4()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C640;
  *(inited + 32) = 0x5344726F46746573;
  *(inited + 40) = 0xEA00000000004449;
  *(inited + 72) = sub_100060238(0, v6);
  *(inited + 48) = v1;
  v7 = v1;
  v8 = sub_100023D48(inited);
  v0[19] = v8;
  swift_setDeallocating();
  sub_10002624C(inited + 32, &qword_1000B8098, &unk_10008C6B0);
  URL.init(string:)();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10002624C(v0[13], &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
    v10 = swift_task_alloc();
    v0[20] = v10;
    *v10 = v0;
    v10[1] = sub_10006D8F0;
    v11 = v0[16];

    return sub_100070840(v11, v8);
  }
}

uint64_t sub_10006D8F0(uint64_t a1)
{
  v4 = *v2;
  v4[21] = v1;

  v5 = v4[16];
  v6 = v4[15];
  v7 = v4[14];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_10006DB1C;
  }

  else
  {
    v4[22] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_10006DA9C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10006DA9C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 176);

  return v1(v2);
}

uint64_t sub_10006DB1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006DD1C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10006DDF0;

  return sub_10006D428(v5, v7);
}

uint64_t sub_10006DDF0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10006DFAC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  sub_100022F18(&qword_1000B8290, &unk_10008C690);
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_10006E100, 0, 0);
}

uint64_t sub_10006E100(uint64_t a1)
{
  v2 = v1[12];
  static FamilyLogger.daemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "fetchParentalControls dsid: %@", v7, 0xCu);
    sub_10002624C(v8, &qword_1000B8590, &qword_10008C960);
  }

  v11 = v1[19];
  v10 = v1[20];
  v12 = v1[18];
  v13 = v1[15];
  v14 = v1[16];
  v15 = v1[14];
  v16 = v1[12];

  (*(v11 + 8))(v10, v12);
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C640;
  *(inited + 32) = 0x5344726F46746573;
  *(inited + 40) = 0xEA00000000004449;
  *(inited + 72) = sub_100060238(0, v18);
  *(inited + 48) = v16;
  v19 = v16;
  v20 = sub_100023D48(inited);
  v1[21] = v20;
  swift_setDeallocating();
  sub_10002624C(inited + 32, &qword_1000B8098, &unk_10008C6B0);
  URL.init(string:)();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_10002624C(v1[14], &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    (*(v1[16] + 32))(v1[17], v1[14], v1[15]);
    v22 = swift_task_alloc();
    v1[22] = v22;
    *v22 = v1;
    v22[1] = sub_10006E420;
    v23 = v1[17];

    return sub_100070840(v23, v20);
  }
}

uint64_t sub_10006E420(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    (*(v4[16] + 8))(v4[17], v4[15]);

    return _swift_task_switch(sub_10006E5F0, 0, 0);
  }

  else
  {
    (*(v4[16] + 8))(v4[17], v4[15]);

    v6 = v5[1];

    return v6(a1);
  }
}

uint64_t sub_10006E5F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006E66C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 144) = v3;
  *(v4 + 224) = a3;
  sub_100022F18(&qword_1000B8290, &unk_10008C690);
  *(v4 + 152) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v4 + 160) = v7;
  *(v4 + 168) = *(v7 - 8);
  *(v4 + 176) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v4 + 184) = v8;
  *v8 = v4;
  v8[1] = sub_10006E7C0;

  return sub_1000722D4(a1, a2);
}

uint64_t sub_10006E7C0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 192) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10006E91C, 0, 0);
  }
}

uint64_t sub_10006E91C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 224);
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C760;
  *(inited + 32) = 0xD000000000000021;
  *(inited + 40) = 0x80000001000897B0;
  *(inited + 48) = v5;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x5344726F46746573;
  *(inited + 88) = 0xEA00000000004449;
  *(inited + 120) = sub_100060238(0, v7);
  *(inited + 96) = v1;
  v8 = v1;
  v9 = sub_100023D48(inited);
  *(v0 + 200) = v9;
  swift_setDeallocating();
  sub_100022F18(&qword_1000B8098, &unk_10008C6B0);
  swift_arrayDestroy();
  URL.init(string:)();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10002624C(*(v0 + 152), &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 152), *(v0 + 160));
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = sub_10006EB7C;
    v12 = *(v0 + 176);

    return sub_100070840(v12, v9);
  }
}

uint64_t sub_10006EB7C(void *a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  v5 = v4[22];
  v6 = v4[21];
  v7 = v4[20];
  if (v1)
  {
    (*(v6 + 8))(v4[22], v4[20]);

    v8 = sub_100074150;
  }

  else
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_100074158;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10006EED0(uint64_t a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_100074154;

  return sub_10006E66C(v7, v9, a2);
}

uint64_t sub_10006EFB4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 144) = v3;
  *(v4 + 224) = a3;
  sub_100022F18(&qword_1000B8290, &unk_10008C690);
  *(v4 + 152) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v4 + 160) = v7;
  *(v4 + 168) = *(v7 - 8);
  *(v4 + 176) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v4 + 184) = v8;
  *v8 = v4;
  v8[1] = sub_10006F108;

  return sub_1000722D4(a1, a2);
}

uint64_t sub_10006F108(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 192) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10006F264, 0, 0);
  }
}

uint64_t sub_10006F264()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 224);
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008C760;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000100089790;
  *(inited + 48) = v5;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x5344726F46746573;
  *(inited + 88) = 0xEA00000000004449;
  *(inited + 120) = sub_100060238(0, v7);
  *(inited + 96) = v1;
  v8 = v1;
  v9 = sub_100023D48(inited);
  *(v0 + 200) = v9;
  swift_setDeallocating();
  sub_100022F18(&qword_1000B8098, &unk_10008C6B0);
  swift_arrayDestroy();
  URL.init(string:)();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10002624C(*(v0 + 152), &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 152), *(v0 + 160));
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = sub_10006F4C4;
    v12 = *(v0 + 176);

    return sub_100070840(v12, v9);
  }
}

uint64_t sub_10006F4C4(void *a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  v5 = v4[22];
  v6 = v4[21];
  v7 = v4[20];
  if (v1)
  {
    (*(v6 + 8))(v4[22], v4[20]);

    v8 = sub_10006F704;
  }

  else
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_10006F688;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10006F688()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006F704()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006F90C(uint64_t a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_10006F9F0;

  return sub_10006EFB4(v7, v9, a2);
}

uint64_t sub_10006F9F0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10006FB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[30] = a3;
  sub_100022F18(&qword_1000B8290, &unk_10008C690);
  v5[33] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[34] = v8;
  v5[35] = *(v8 - 8);
  v5[36] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[37] = v9;
  *v9 = v5;
  v9[1] = sub_10006FCE4;

  return sub_1000722D4(a1, a2);
}

uint64_t sub_10006FCE4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 304) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10006FE40, 0, 0);
  }
}

uint64_t sub_10006FE40()
{
  v1 = v0[38];
  v2 = v0[35];
  v16 = v0[34];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  sub_100022F18(&qword_1000B82A0, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E2E0;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x80000001000896F0;
  v8 = sub_100060238(0, v7);
  *(inited + 48) = v4;
  *(inited + 72) = v8;
  *(inited + 80) = 0x5344726F46746573;
  *(inited + 88) = 0xEA00000000004449;
  *(inited + 96) = v1;
  *(inited + 120) = v8;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = 0x8000000100089710;
  v9 = v4;
  v10 = v1;
  *(inited + 144) = [v9 integerValue] != 0;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 216) = v8;
  *(inited + 184) = 0x8000000100089730;
  *(inited + 192) = v5;
  v11 = v5;
  v12 = sub_100023D48(inited);
  v0[39] = v12;
  swift_setDeallocating();
  sub_100022F18(&qword_1000B8098, &unk_10008C6B0);
  swift_arrayDestroy();
  URL.init(string:)();
  if ((*(v2 + 48))(v3, 1, v16) == 1)
  {
    sub_10002624C(v0[33], &qword_1000B8290, &unk_10008C690);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    (*(v0[35] + 32))(v0[36], v0[33], v0[34]);
    v14 = swift_task_alloc();
    v0[40] = v14;
    *v14 = v0;
    v14[1] = sub_100070104;
    v15 = v0[36];

    return sub_100070840(v15, v12);
  }
}

uint64_t sub_100070104(uint64_t a1)
{
  v4 = *v2;
  v4[41] = v1;

  v5 = v4[36];
  v6 = v4[35];
  v7 = v4[34];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_100070330;
  }

  else
  {
    v4[42] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_1000702B0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000702B0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 336);

  return v1(v2);
}

uint64_t sub_100070330()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007054C(uint64_t a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[6] = v10;
  v12 = a2;
  v13 = a3;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_10007064C;

  return sub_10006FB90(v9, v11, v12, v13);
}

uint64_t sub_10007064C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 40);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 40), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100070840(uint64_t a1, uint64_t a2)
{
  v3[71] = v2;
  v3[70] = a2;
  v3[69] = a1;
  v4 = type metadata accessor for Logger();
  v3[72] = v4;
  v3[73] = *(v4 - 8);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();

  return _swift_task_switch(sub_100070914, 0, 0);
}

uint64_t sub_100070914()
{
  v1 = v0[71];
  v2 = *(v1 + OBJC_IVAR___FAParentalControlsOperation_aaGrandSlamSigner);
  v0[76] = v2;
  if (v2 && (v3 = *(v1 + OBJC_IVAR___FAParentalControlsOperation_familyGrandSlamSigner), (v0[77] = v3) != 0))
  {
    v4 = *(v1 + OBJC_IVAR___FAParentalControlsOperation_networkService);
    v5 = v2;
    v6 = v3;
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v12 = [v4 standardRequestWithURL:v9 grandSlamSigner:v5 familyGrandSlamSigner:v6 method:v10 body:isa];
    v0[78] = v12;

    v0[2] = v0;
    v0[7] = v0 + 65;
    v0[3] = sub_100070BBC;
    v13 = swift_continuation_init();
    v0[33] = sub_100022F18(&qword_1000B9800, &unk_10008E350);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_10007415C;
    v0[29] = &unk_1000A9568;
    v0[30] = v13;
    [v12 onComplete:v0 + 26];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    type metadata accessor for AgeRangeError(0);
    v0[64] = -4004;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_1000683E0();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100070BBC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 632) = v1;
  if (v1)
  {
    v2 = sub_1000719F4;
  }

  else
  {
    v2 = sub_100070CCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100070CCC()
{
  v49 = v0;
  v1 = v0[78];
  v2 = v0[65];
  v0[80] = v2;

  v3 = [v2 HTTPResponse];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 allHeaderFields];
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v0[59] = 0xD00000000000001ALL;
    v0[60] = 0x80000001000896D0;
    AnyHashable.init<A>(_:)();
    if (*(v6 + 16) && (v7 = sub_100037BCC((v0 + 50)), (v8 & 1) != 0))
    {
      sub_100026180(*(v6 + 56) + 32 * v7, (v0 + 55));
      sub_10003206C((v0 + 50));

      if (swift_dynamicCast())
      {
        v10 = v0[61];
        v9 = v0[62];
        v11 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v11 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (v11)
        {
          static FamilyLogger.daemon.getter();

          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.default.getter();

          v14 = os_log_type_enabled(v12, v13);
          v15 = v0[75];
          v16 = v0[73];
          v47 = v0[72];
          if (v14)
          {
            v46 = v0[75];
            v17 = swift_slowAlloc();
            log = v12;
            v18 = swift_slowAlloc();
            v48 = v18;
            *v17 = 136315138;
            v19 = sub_1000373D4(v10, v9, &v48);

            *(v17 + 4) = v19;
            _os_log_impl(&_mh_execute_header, log, v13, "Found X-Apple-Family-TeardownCFU header with identifier: %s", v17, 0xCu);
            sub_100024F7C(v18);

            (*(v16 + 8))(v46, v47);
          }

          else
          {

            (*(v16 + 8))(v15, v47);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {

      sub_10003206C((v0 + 50));
    }
  }

  v20 = v2;
  v21 = [v20 HTTPResponse];
  v22 = [v21 statusCode];

  if (v22 == 401)
  {
    static FamilyLogger.daemon.getter();
    v23 = v20;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = [v23 HTTPResponse];
      v28 = [v27 statusCode];

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "sendRequest: renewCredentials, status: %ld", v26, 0xCu);
    }

    else
    {

      v24 = v23;
    }

    v33 = v0[74];
    v34 = v0[73];
    v35 = v0[72];

    (*(v34 + 8))(v33, v35);
    v36 = [objc_opt_self() defaultStore];
    v0[81] = v36;
    if (v36)
    {
      v37 = v36;
      v0[10] = v0;
      v0[15] = v0 + 66;
      v0[11] = sub_10007133C;
      v38 = swift_continuation_init();
      v0[41] = sub_100022F18(&qword_1000B9048, &unk_10008D840);
      v0[34] = _NSConcreteStackBlock;
      v0[35] = 1107296256;
      v0[36] = sub_10006D050;
      v0[37] = &unk_1000A9590;
      v0[38] = v38;
      [v37 aa_primaryAppleAccountWithCompletion:v0 + 34];

      return _swift_continuation_await(v0 + 10);
    }

    else
    {

      v40 = v0[80];
      v41 = v0[77];
      v42 = v0[76];
      type metadata accessor for AgeRangeError(0);
      v0[68] = -4004;
      sub_100023D48(_swiftEmptyArrayStorage);
      sub_1000683E0();
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      v43 = v0[1];

      return v43();
    }
  }

  else
  {
    v29 = v0[77];
    v30 = v0[76];

    v31 = [v20 body];
    if (v31)
    {
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (!v32)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v32 = 0;
    }

    v39 = v0[1];

    return v39(v32);
  }
}

uint64_t sub_10007133C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 656) = v2;
  if (v2)
  {

    v3 = sub_100071A94;
  }

  else
  {
    v3 = sub_100071454;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100071454()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 528);
  *(v0 + 664) = v2;

  if (v2)
  {
    v3 = [objc_allocWithZone(FARequestConfigurator) initWithAccount:v2];
    *(v0 + 672) = v3;
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 712;
    *(v0 + 152) = sub_10007166C;
    v4 = swift_continuation_init();
    *(v0 + 392) = sub_100022F18(&qword_1000B9808, &qword_10008E360);
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_100071C98;
    *(v0 + 360) = &unk_1000A95B8;
    *(v0 + 368) = v4;
    [v3 renewCredentialsWithCompletion:v0 + 336];

    return _swift_continuation_await(v0 + 144);
  }

  else
  {

    v5 = *(v0 + 640);
    v6 = *(v0 + 616);
    v7 = *(v0 + 608);
    type metadata accessor for AgeRangeError(0);
    *(v0 + 544) = -4004;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_1000683E0();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10007166C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 680) = v2;
  if (v2)
  {

    v3 = sub_100071B3C;
  }

  else
  {
    v3 = sub_100071784;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100071784()
{
  v1 = swift_task_alloc();
  v0[86] = v1;
  *v1 = v0;
  v1[1] = sub_100071820;
  v2 = v0[70];
  v3 = v0[69];

  return sub_100070840(v3, v2);
}

uint64_t sub_100071820(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 696) = v1;

  if (v1)
  {
    v5 = sub_100071BF4;
  }

  else
  {
    *(v4 + 704) = a1;
    v5 = sub_100071948;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100071948()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 640);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);

  v5 = *(v0 + 704);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1000719F4(uint64_t a1)
{
  v2 = v1[78];
  v3 = v1[77];
  v4 = v1[76];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_100071A94(uint64_t a1)
{
  v2 = v1[81];
  v3 = v1[80];
  v4 = v1[77];
  v5 = v1[76];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_100071B3C(uint64_t a1)
{
  v2 = v1[84];
  v3 = v1[83];
  v4 = v1[80];
  v5 = v1[77];
  v6 = v1[76];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_100071BF4()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 640);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100071C98(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1000297A8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_100071D64(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FAParentalControlsOperation(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100071E18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100026620;

  return v6();
}

uint64_t sub_100071F00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100026358;

  return v7();
}

uint64_t sub_100071FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v24 - v11;
  sub_10006C3A4(a3, v24 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10002624C(v12, &qword_1000B82B8, &qword_10008C6C0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_10002624C(a3, &qword_1000B82B8, &qword_10008C6C0);

    return v22;
  }

LABEL_8:
  sub_10002624C(a3, &qword_1000B82B8, &qword_10008C6C0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000722D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return _swift_task_switch(sub_1000722F4, 0, 0);
}

uint64_t sub_1000722F4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 26;
  v4 = [objc_opt_self() defaultStore];
  v2[29] = v4;
  if (v4)
  {
    v5 = v4;
    v2[10] = v2;
    v2[15] = v3;
    v2[11] = sub_100072514;
    v6 = swift_continuation_init();
    v2[25] = sub_100022F18(&qword_1000B9048, &unk_10008D840);
    v2[18] = _NSConcreteStackBlock;
    v2[19] = 1107296256;
    v2[20] = sub_10006D050;
    v2[21] = &unk_1000A9608;
    v2[22] = v6;
    [v5 aa_primaryAppleAccountWithCompletion:v2 + 18];
    v7 = v2 + 10;
  }

  else
  {
    v8 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    v2[31] = v8;
    v2[2] = v2;
    v2[7] = v3;
    v2[3] = sub_100072B48;
    v9 = swift_continuation_init();
    v2[25] = sub_100022F18(&unk_1000B8440, &unk_10008C890);
    v2[18] = _NSConcreteStackBlock;
    v2[19] = 1107296256;
    v2[20] = sub_10007415C;
    v2[21] = &unk_1000A95E0;
    v2[22] = v9;
    [v8 startRequestWithCompletionHandler:v2 + 18];
    v7 = v2 + 2;
  }

  return _swift_continuation_await(v7);
}

uint64_t sub_100072514()
{
  v1 = *(*v0 + 112);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_100072E38;
  }

  else
  {
    v2 = sub_100072624;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100072624()
{
  v47 = v0;
  v1 = *(v0 + 208);

  if (!v1)
  {
    goto LABEL_75;
  }

  v2 = [v1 aa_altDSID];
  if (!v2)
  {
    goto LABEL_74;
  }

  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = v2;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == v4 && v8 == v3)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  v11 = [v1 aa_personID];
  if (!v11)
  {
LABEL_74:

    goto LABEL_75;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v17 = HIBYTE(v15) & 0xF;
  v18 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v19 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

LABEL_75:
    v40 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    *(v0 + 248) = v40;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_100072B48;
    v41 = swift_continuation_init();
    *(v0 + 200) = sub_100022F18(&unk_1000B8440, &unk_10008C890);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10007415C;
    *(v0 + 168) = &unk_1000A95E0;
    *(v0 + 176) = v41;
    [v40 startRequestWithCompletionHandler:v0 + 144];
    v16 = (v0 + 16);

    return _swift_continuation_await(v16);
  }

  if ((v15 & 0x1000000000000000) == 0)
  {
    if ((v15 & 0x2000000000000000) != 0)
    {
      v46[0] = v13;
      v46[1] = v15 & 0xFFFFFFFFFFFFFFLL;
      if (v13 == 43)
      {
        if (v17)
        {
          if (--v17)
          {
            v21 = 0;
            v31 = v46 + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                break;
              }

              v33 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                break;
              }

              v21 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                break;
              }

              ++v31;
              if (!--v17)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_87:
        __break(1u);
        return _swift_continuation_await(v16);
      }

      if (v13 != 45)
      {
        if (v17)
        {
          v21 = 0;
          v36 = v46;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            v38 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              break;
            }

            ++v36;
            if (!--v17)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v17)
      {
        if (--v17)
        {
          v21 = 0;
          v25 = v46 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v27 - v26;
            if (__OFSUB__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v17)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v13 & 0x1000000000000000) != 0)
      {
        v16 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v16 = _StringObject.sharedUTF8.getter();
      }

      v20 = *v16;
      if (v20 == 43)
      {
        if (v18 >= 1)
        {
          v17 = v18 - 1;
          if (v18 != 1)
          {
            v21 = 0;
            if (v16)
            {
              v28 = v16 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  goto LABEL_71;
                }

                v30 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  goto LABEL_71;
                }

                v21 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  goto LABEL_71;
                }

                ++v28;
                if (!--v17)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_63;
          }

          goto LABEL_71;
        }

        goto LABEL_86;
      }

      if (v20 != 45)
      {
        if (v18)
        {
          v21 = 0;
          if (v16)
          {
            while (1)
            {
              v34 = *v16 - 48;
              if (v34 > 9)
              {
                goto LABEL_71;
              }

              v35 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_71;
              }

              v21 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_71;
              }

              ++v16;
              if (!--v18)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_71:
        v21 = 0;
        LOBYTE(v17) = 1;
        goto LABEL_72;
      }

      if (v18 >= 1)
      {
        v17 = v18 - 1;
        if (v18 != 1)
        {
          v21 = 0;
          if (v16)
          {
            v22 = v16 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_71;
              }

              v24 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_71;
              }

              v21 = v24 - v23;
              if (__OFSUB__(v24, v23))
              {
                goto LABEL_71;
              }

              ++v22;
              if (!--v17)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_63:
          LOBYTE(v17) = 0;
LABEL_72:
          v39 = v17;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v21 = sub_100066C20(v13, v15, 10);
  v39 = v45;
LABEL_73:

  if (v39)
  {
    goto LABEL_74;
  }

  v42 = [objc_allocWithZone(NSNumber) initWithInteger:v21];

  v43 = *(v0 + 8);

  return v43(v42);
}

uint64_t sub_100072B48()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_100072DC8;
  }

  else
  {
    v2 = sub_100072C58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100072C58()
{
  v1 = v0[26];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 memberForAltDSID:v2];

  if (v3 && (v4 = [v3 dsid], v3, v4))
  {
    v5 = v0[31];

    v6 = v0[1];

    return v6(v4);
  }

  else
  {
    v8 = v0[31];
    type metadata accessor for AgeRangeError(0);
    v0[26] = -4004;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_1000683E0();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100072DC8(uint64_t a1)
{
  v2 = *(v1 + 248);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100072E38(uint64_t a1)
{
  v2 = *(v1 + 232);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100072EA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100026620;

  return sub_10007054C(v2, v3, v4, v5, v6);
}

uint64_t sub_100072F70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_1000669BC(a1, v4);
}

uint64_t sub_100073028(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026358;

  return sub_1000669BC(a1, v4);
}

uint64_t sub_1000730E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100026620;

  return sub_10006F90C(v2, v3, v5, v4);
}

uint64_t sub_1000731A4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000731EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100026620;

  return sub_10006EED0(v2, v3, v5, v4);
}

uint64_t sub_1000732B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026358;

  return sub_10006DD1C(v2, v3, v4);
}

Class sub_100073364(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = v30 - v9;
  sub_100060238(0, v11);
  v12.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  if (*(a1 + 16))
  {
    v13 = sub_100037A08(0xD000000000000013, 0x8000000100089820);
    if (v14)
    {
      sub_100026180(*(a1 + 56) + 32 * v13, v32);
      sub_100022F18(&unk_1000B94C0, &unk_10008E420);
      if (swift_dynamicCast())
      {
        v15 = v31[0];
        if (*(v31[0] + 16) && (v16 = sub_100037A08(0xD00000000000001BLL, 0x80000001000896F0), (v17 & 1) != 0))
        {
          sub_100026180(*(v15 + 56) + 32 * v16, v32);

          sub_100026180(v32, v31);
          if (swift_dynamicCast())
          {

            v18 = v30[1];
            static FamilyLogger.common.getter();
            v19 = Logger.logObject.getter();
            v20 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              *v21 = 138412290;
              *(v21 + 4) = v18;
              *v22 = v18;
              v23 = v18;
              _os_log_impl(&_mh_execute_header, v19, v20, "Share option from server: %@", v21, 0xCu);
              sub_10002624C(v22, &qword_1000B8590, &qword_10008C960);
            }

            (*(v3 + 8))(v10, v2);
            sub_100024F7C(v32);
            return v18;
          }

          sub_100024F7C(v32);
        }

        else
        {
        }
      }
    }
  }

  static FamilyLogger.common.getter();
  v18 = v12.super.super.isa;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v18;
    *v27 = v18;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v24, v25, "Returning default value for declaredAgeRangeShareOption: %@", v26, 0xCu);
    sub_10002624C(v27, &qword_1000B8590, &qword_10008C960);
  }

  (*(v3 + 8))(v7, v2);
  return v18;
}

Class sub_100073748(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = v30 - v9;
  sub_100060238(0, v11);
  v12.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  if (*(a1 + 16))
  {
    v13 = sub_100037A08(0xD000000000000013, 0x8000000100089820);
    if (v14)
    {
      sub_100026180(*(a1 + 56) + 32 * v13, v32);
      sub_100022F18(&unk_1000B94C0, &unk_10008E420);
      if (swift_dynamicCast())
      {
        v15 = v31[0];
        if (*(v31[0] + 16) && (v16 = sub_100037A08(0xD00000000000001ELL, 0x8000000100089730), (v17 & 1) != 0))
        {
          sub_100026180(*(v15 + 56) + 32 * v16, v32);

          sub_100026180(v32, v31);
          if (swift_dynamicCast())
          {

            v18 = v30[1];
            static FamilyLogger.common.getter();
            v19 = Logger.logObject.getter();
            v20 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              *v21 = 138412290;
              *(v21 + 4) = v18;
              *v22 = v18;
              v23 = v18;
              _os_log_impl(&_mh_execute_header, v19, v20, "Privacy version from server: %@", v21, 0xCu);
              sub_10002624C(v22, &qword_1000B8590, &qword_10008C960);
            }

            (*(v3 + 8))(v10, v2);
            sub_100024F7C(v32);
            return v18;
          }

          sub_100024F7C(v32);
        }

        else
        {
        }
      }
    }
  }

  static FamilyLogger.common.getter();
  v18 = v12.super.super.isa;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v18;
    *v27 = v18;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v24, v25, "Returning default value for declaredAgeRangePrivacyVersion: %@", v26, 0xCu);
    sub_10002624C(v27, &qword_1000B8590, &qword_10008C960);
  }

  (*(v3 + 8))(v7, v2);
  return v18;
}

uint64_t sub_100073B2C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v24 - v9;
  if (*(a1 + 16))
  {
    v11 = sub_100037A08(0x7275446568636163, 0xED00006E6F697461);
    if (v12)
    {
      sub_100026180(*(a1 + 56) + 32 * v11, v27);
      sub_100026180(v27, v26);
      sub_100060238(0, v13);
      if (swift_dynamicCast())
      {
        v14 = v25;
        [v25 doubleValue];
        v16 = v15;
        static FamilyLogger.common.getter();
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 134217984;
          *(v19 + 4) = v16;
          _os_log_impl(&_mh_execute_header, v17, v18, "Share option TTL from server: %f", v19, 0xCu);
        }

        (*(v3 + 8))(v10, v2);
        return sub_100024F7C(v27);
      }

      sub_100024F7C(v27);
    }
  }

  static FamilyLogger.common.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = 0x40F5180000000000;
    _os_log_impl(&_mh_execute_header, v21, v22, "Returning default value for share option TTL: %f", v23, 0xCu);
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_100073E04(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5, v8);
  v10 = &v24[-v9];
  if (*(a1 + 16))
  {
    v11 = sub_100037A08(0xD000000000000013, 0x8000000100089820);
    if (v12)
    {
      sub_100026180(*(a1 + 56) + 32 * v11, v26);
      sub_100022F18(&unk_1000B94C0, &unk_10008E420);
      if (swift_dynamicCast())
      {
        v13 = *&v25[0];
        if (*(*&v25[0] + 16) && (v14 = sub_100037A08(0xD000000000000017, 0x8000000100089710), (v15 & 1) != 0))
        {
          sub_100026180(*(v13 + 56) + 32 * v14, v25);

          sub_1000249A8(v25, v26);
          sub_100026180(v26, v25);
          if (swift_dynamicCast())
          {
            v16 = v24[15];
            static FamilyLogger.common.getter();
            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              *v19 = 67109120;
              *(v19 + 4) = v16;
              _os_log_impl(&_mh_execute_header, v17, v18, "DeclaredAgeRange featureEnabled from server: %{BOOL}d", v19, 8u);
            }

            (*(v3 + 8))(v10, v2);
            sub_100024F7C(v26);
            return v16;
          }

          sub_100024F7C(v26);
        }

        else
        {
        }
      }
    }
  }

  static FamilyLogger.common.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    _os_log_impl(&_mh_execute_header, v21, v22, "Returning default value for declaredAgeRangeEnabled: %{BOOL}d", v23, 8u);
  }

  (*(v3 + 8))(v7, v2);
  return 0;
}

id MemberPhotoRequest404Cache.init()()
{
  v1 = OBJC_IVAR___FAMemberPhotoRequest404Cache_encoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *&v0[v1] = JSONEncoder.init()();
  v2 = OBJC_IVAR___FAMemberPhotoRequest404Cache_decoder;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *&v0[v2] = JSONDecoder.init()();
  v3 = [objc_opt_self() standardUserDefaults];
  *&v0[OBJC_IVAR___FAMemberPhotoRequest404Cache_persistence] = v3;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MemberPhotoRequest404Cache(v3, v4);
  return objc_msgSendSuper2(&v6, "init");
}

Swift::Void __swiftcall MemberPhotoRequest404Cache.save404Response(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100075384();
  static Date.now.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v12;
  sub_100076AC0(v11, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
  sub_100075484(v19);

  static FamilyLogger.daemon.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1000373D4(countAndFlagsBits, object, &v19);
    _os_log_impl(&_mh_execute_header, v14, v15, "MemberPhotoRequest404Cache: saved 404 response for %s)", v16, 0xCu);
    sub_100024F7C(v17);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t MemberPhotoRequest404Cache.getLast404Response(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100075384();
  if (*(v6 + 16) && (v7 = sub_100037A08(a1, a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for Date();
    v18 = *(v11 - 8);
    (*(v18 + 16))(a3, v10 + *(v18 + 72) * v9, v11);

    v12 = *(v18 + 56);
    v13 = a3;
    v14 = 0;
    v15 = v11;
  }

  else
  {

    v16 = type metadata accessor for Date();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a3;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

Swift::Bool __swiftcall MemberPhotoRequest404Cache.shouldAllowRequest(for:cacheDuration:)(Swift::String a1, Swift::Int cacheDuration)
{
  v89[2] = cacheDuration;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v101 = sub_100022F18(&qword_1000B8A60, &unk_10008E430);
  v93 = *(v101 - 8);
  v5 = __chkstk_darwin(v101, v4);
  v97 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5, v7);
  v91 = v89 - v9;
  __chkstk_darwin(v8, v10);
  v100 = v89 - v11;
  v12 = type metadata accessor for Logger();
  v102 = *(v12 - 8);
  v14 = __chkstk_darwin(v12, v13);
  v16 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v14, v17);
  v99 = v89 - v19;
  v21 = __chkstk_darwin(v18, v20);
  v92 = v89 - v22;
  __chkstk_darwin(v21, v23);
  v25 = v89 - v24;
  v26 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  __chkstk_darwin(v26 - 8, v27);
  v29 = v89 - v28;
  v30 = type metadata accessor for Date();
  v32 = __chkstk_darwin(v30, v31);
  v95 = v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32, v34);
  v94 = v89 - v36;
  v38 = __chkstk_darwin(v35, v37);
  v40 = v89 - v39;
  __chkstk_darwin(v38, v41);
  v43 = v89 - v42;
  v44 = countAndFlagsBits;
  v46 = v45;
  MemberPhotoRequest404Cache.getLast404Response(for:)(v44, object, v29);
  if ((*(v46 + 48))(v29, 1, v30) == 1)
  {
    sub_100076C40(v29);
    static FamilyLogger.daemon.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v103[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_1000373D4(0xD000000000000026, 0x8000000100089840, v103);
      _os_log_impl(&_mh_execute_header, v47, v48, "MemberPhotoRequest404Cache: %s no 404 cache for member, allow request", v49, 0xCu);
      sub_100024F7C(v50);
    }

    (*(v102 + 8))(v16, v12);
    v51 = 1;
  }

  else
  {
    (*(v46 + 32))(v43, v29, v30);
    static FamilyLogger.daemon.getter();
    (*(v46 + 16))(v40, v43, v30);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    v54 = os_log_type_enabled(v52, v53);
    v98 = v12;
    v89[1] = v46;
    v96 = v43;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v55 = 136315394;
      *(v55 + 4) = sub_1000373D4(0xD000000000000026, 0x8000000100089840, v103);
      *(v55 + 12) = 2080;
      sub_100077BC0(&qword_1000B8BB8, &protocol conformance descriptor for Date);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v89[0] = *(v46 + 8);
      (v89[0])(v40, v30);
      v59 = sub_1000373D4(v56, v58, v103);
      v12 = v98;

      *(v55 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "MemberPhotoRequest404Cache: %s getLast404Response %s", v55, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v89[0] = *(v46 + 8);
      (v89[0])(v40, v30);
    }

    v90 = *(v102 + 8);
    v90(v25, v12);
    v60 = v100;
    v61 = v92;
    v92 = objc_opt_self();
    v62 = [v92 hours];
    sub_100076CA8(0, v63);
    Measurement.init(value:unit:)();
    static FamilyLogger.daemon.getter();
    v64 = v93;
    v65 = v91;
    v66 = v101;
    (*(v93 + 16))(v91, v60, v101);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v103[0] = v70;
      *v69 = 136315138;
      sub_100076CF4();
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      v93 = *(v64 + 8);
      (v93)(v65, v101);
      v74 = sub_1000373D4(v71, v73, v103);

      *(v69 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v67, v68, "MemberPhotoRequest404Cache: cacheMeasurementDuration: %s", v69, 0xCu);
      sub_100024F7C(v70);
      v66 = v101;

      v60 = v100;

      v75 = v61;
      v76 = v98;
    }

    else
    {

      v93 = *(v64 + 8);
      (v93)(v65, v66);
      v75 = v61;
      v76 = v12;
    }

    v90(v75, v76);
    v77 = [v92 seconds];
    v78 = v97;
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    (v93)(v78, v66);
    v79 = v94;
    Date.addingTimeInterval(_:)();
    v80 = v95;
    static Date.now.getter();
    sub_100077BC0(&qword_1000B8A68, &protocol conformance descriptor for Date);
    LOBYTE(v77) = dispatch thunk of static Comparable.< infix(_:_:)();
    v81 = v89[0];
    (v89[0])(v80, v30);
    v81(v79, v30);
    v51 = v77 ^ 1;
    v82 = v99;
    static FamilyLogger.daemon.getter();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v103[0] = v86;
      *v85 = 136315394;
      *(v85 + 4) = sub_1000373D4(0xD000000000000026, 0x8000000100089840, v103);
      *(v85 + 12) = 1024;
      *(v85 + 14) = v51 & 1;
      _os_log_impl(&_mh_execute_header, v83, v84, "MemberPhotoRequest404Cache: %s %{BOOL}d", v85, 0x12u);
      sub_100024F7C(v86);

      v90(v99, v98);
      v87 = v100;
    }

    else
    {

      v90(v82, v98);
      v87 = v60;
    }

    (v93)(v87, v66);
    v81(v96, v30);
  }

  return v51 & 1;
}

unint64_t sub_100075384()
{
  v1 = *(v0 + OBJC_IVAR___FAMemberPhotoRequest404Cache_persistence);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 dataForKey:v2];

  if (!v3)
  {
    return sub_1000249B8(_swiftEmptyArrayStorage);
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_100077834();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10002C190(v4, v6);
  return v8;
}

uint64_t sub_100075484(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3, v4);
  v13 = a1;
  sub_100077560();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = *(v1 + OBJC_IVAR___FAMemberPhotoRequest404Cache_persistence);
  v7 = v5;
  v9 = v8;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = String._bridgeToObjectiveC()();
  [v6 setValue:isa forKey:v11];

  return sub_10002C190(v7, v9);
}

id MemberPhotoRequest404Cache.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MemberPhotoRequest404Cache(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100075798(void *a1, uint64_t a2)
{
  v4 = sub_100022F18(&qword_1000B9868, &qword_10008E518);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v10 - v7;
  sub_1000297A8(a1, a1[3]);
  sub_100077898();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = a2;
  sub_100022F18(&qword_1000B9878, &qword_10008E520);
  sub_1000778EC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100075918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x523430347473616CLL && a2 == 0xEF65736E6F707365)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000759A8(uint64_t a1)
{
  v2 = sub_100077898();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000759E4(uint64_t a1)
{
  v2 = sub_100077898();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100075A20@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100077994(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100075A68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100022F18(&qword_1000B8120, &qword_10008E490);
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

Swift::Int sub_100075D0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ClientRecord(0);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5 - 8, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100022F18(&unk_1000B8130, &unk_10008E480);
  v41 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
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
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        sub_100024BA4(v29, v42);
      }

      else
      {
        sub_100037A80(v29, v42);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = sub_100024BA4(v42, *(v10 + 56) + v28 * v18);
      ++*(v10 + 16);
      v8 = v39;
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

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_100076048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100022F18(&qword_1000B8090, &unk_10008C570);
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1000249A8(v24, v34);
      }

      else
      {
        sub_100026180(v24, v34);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1000249A8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_100076300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100022F18(&qword_1000B8118, &unk_10008C5A0);
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
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

Swift::Int sub_1000765B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = type metadata accessor for Date();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46, v6);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100022F18(&qword_1000B8110, &unk_10008C590);
  v43 = v4;
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
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v8;
    v42 = v5;
    v44 = (v5 + 32);
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v42 + 72);
      v29 = v24 + v28 * v23;
      if (v43)
      {
        (*v44)(v45, v29, v46);
      }

      else
      {
        (*v40)(v45, v29, v46);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v26;
      result = (*v44)(*(v10 + 56) + v28 * v18, v45, v46);
      ++*(v10 + 16);
      v8 = v41;
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

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_100076938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100037A08(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100076300(v18, a5 & 1);
      v13 = sub_100037A08(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000773E0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_100076AC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100037A08(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000775B4();
      goto LABEL_7;
    }

    sub_1000765B8(v15, a4 & 1);
    v26 = sub_100037A08(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_100076DF0(v12, a2, a3, a1, v18);
}

uint64_t sub_100076C40(uint64_t a1)
{
  v2 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100076CA8(uint64_t a1, uint64_t a2)
{
  result = qword_1000B8BC0;
  if (!qword_1000B8BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8BC0);
  }

  return result;
}

unint64_t sub_100076CF4()
{
  result = qword_1000B9828;
  if (!qword_1000B9828)
  {
    sub_100022F60(&qword_1000B8A60, &unk_10008E430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9828);
  }

  return result;
}

uint64_t sub_100076D58(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ClientRecord(0);
  result = sub_100024BA4(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100076DF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Date();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

id sub_100076EA0()
{
  v1 = v0;
  sub_100022F18(&qword_1000B8120, &qword_10008E490);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10007700C()
{
  v1 = v0;
  v2 = type metadata accessor for ClientRecord(0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022F18(&unk_1000B8130, &unk_10008E480);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_100037A80(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_100024BA4(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_10007723C()
{
  v1 = v0;
  sub_100022F18(&qword_1000B8090, &unk_10008C570);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100026180(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000249A8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1000773E0()
{
  v1 = v0;
  sub_100022F18(&qword_1000B8118, &unk_10008C5A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_100077560()
{
  result = qword_1000B9858;
  if (!qword_1000B9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9858);
  }

  return result;
}

char *sub_1000775B4()
{
  v1 = v0;
  v36 = type metadata accessor for Date();
  v38 = *(v36 - 8);
  __chkstk_darwin(v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022F18(&qword_1000B8110, &unk_10008C590);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_100077834()
{
  result = qword_1000B9860;
  if (!qword_1000B9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9860);
  }

  return result;
}

unint64_t sub_100077898()
{
  result = qword_1000B9870;
  if (!qword_1000B9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9870);
  }

  return result;
}

unint64_t sub_1000778EC()
{
  result = qword_1000B9880;
  if (!qword_1000B9880)
  {
    sub_100022F60(&qword_1000B9878, &qword_10008E520);
    sub_100077BC0(&qword_1000B8BA8, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9880);
  }

  return result;
}

void *sub_100077994(void *a1)
{
  v3 = sub_100022F18(&qword_1000B9888, &qword_10008E528);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v10 - v6;
  v8 = sub_1000297A8(a1, a1[3]);
  sub_100077898();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100024F7C(a1);
  }

  else
  {
    sub_100022F18(&qword_1000B9878, &qword_10008E520);
    sub_100077B18();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    sub_100024F7C(a1);
  }

  return v8;
}

unint64_t sub_100077B18()
{
  result = qword_1000B9890;
  if (!qword_1000B9890)
  {
    sub_100022F60(&qword_1000B9878, &qword_10008E520);
    sub_100077BC0(&qword_1000B8B98, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9890);
  }

  return result;
}

uint64_t sub_100077BC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100077C18()
{
  result = qword_1000B9898;
  if (!qword_1000B9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9898);
  }

  return result;
}

unint64_t sub_100077C70()
{
  result = qword_1000B98A0;
  if (!qword_1000B98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B98A0);
  }

  return result;
}

unint64_t sub_100077CC8()
{
  result = qword_1000B98A8;
  if (!qword_1000B98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B98A8);
  }

  return result;
}

uint64_t sub_100077D1C()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return sub_100077D40();
}

void sub_100077D90(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch family circle with error: %@, Returning cached info.", &v4, 0xCu);
}

void sub_100077E28(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: FetchFamilyCircleRequest  enableTelemetry=YES ", &v2, 0xCu);
}

void sub_100077EE4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "store front is nil!!! default to deviceCountryCode %@.", &v3, 0xCu);
}

void sub_100077F60(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "store front is nil!!! setting unknown code %@.", &v2, 0xCu);
}

void sub_100077FD8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "store front is %@.", &v2, 0xCu);
}

void sub_1000780EC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to write cache to %@: %@.", &v3, 0x16u);
}

void sub_1000783CC(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch family followup with error: %@", &v4, 0xCu);
}

void sub_100078464(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FAHeartbeatActivity failed to checkIn: %@", &v2, 0xCu);
}

void sub_1000784DC(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Flag type '%@' not recognized", &v3, 0xCu);
}

void sub_100078558(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not convert push message body to JSON. Error: %@. Body: %@", &v3, 0x16u);
}

void sub_1000785F4(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 description];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to fetch valid APS environment (%@) from server with error: %@, falling back to Prod.", &v6, 0x16u);
}

void sub_1000786EC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
}

void sub_10007891C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch image from cache error: %@", &v2, 0xCu);
}

void sub_1000789D8(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 40) dsid];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch image for member: %@, last 404 response is within duration ", &v4, 0xCu);
}

void sub_100078A74(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 40) dsid];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to fetch image for member: %@, error: %@", &v6, 0x16u);
}

void sub_100078E78()
{
  sub_10001AE58();
  sub_10001AE4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100078EB4()
{
  sub_10001AE58();
  sub_10001AE4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100078EF0(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  sub_100013998();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while cleaning up pending CFUs: %@", v4, 0xCu);
}

void sub_100078F84()
{
  sub_10001AE58();
  sub_10001AE4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100078FC0()
{
  sub_10001AE58();
  sub_10001AE4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100078FFC(void *a1, NSObject *a2)
{
  v3 = [a1 debugDescription];
  sub_100013998();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Failed to complete heartbeat operation with error: %@", v4, 0xCu);
}

void sub_1000790F8(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 screenTimeState]);
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error updating Screen Time setup configuration %{public}@ currentConfigurationState:%{public}@", &v6, 0x16u);
}

void sub_10007922C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 40);
  sub_10001397C(&_mh_execute_header, a2, a3, "screentime introduction model is nil for %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100079340(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Call to fetch URL for photos cache provided error: %@", &v2, 0xCu);
}

void sub_1000793CC(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: LoadFamilyPhotoCache ", &v2, 0xCu);
}

void sub_100079444(uint64_t a1, NSObject *a2, double a3)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:LoadFamilyPhotoCache ", &v3, 0x16u);
}

void sub_1000794C8(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 40) altDSID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error updating photo cache for member %@", &v4, 0xCu);
}

void sub_100079564(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Call to fetch URL for presets cache provided error: %@", &v2, 0xCu);
}

void sub_1000795F0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error updating presets cache for url %@", &v3, 0xCu);
}

void sub_10007966C(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch family push details with error: %@", &v4, 0xCu);
}

void sub_10007978C(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to parse response data with error: %@", &v4, 0xCu);
}

void sub_1000798AC(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching family circle from server upon family change push %@", &v4, 0xCu);
}

void sub_100079944(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ deallocated", &v2, 0xCu);
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::tuple_Bool_Bool __swiftcall FAFamilyCircle.isPartOfFamilyAndChildOrTeen(altDSID:)(Swift::String altDSID)
{
  v1 = FAFamilyCircle.isPartOfFamilyAndChildOrTeen(altDSID:)(altDSID._countAndFlagsBits, altDSID._object);
  result._1 = v2;
  result._0 = v1;
  return result;
}