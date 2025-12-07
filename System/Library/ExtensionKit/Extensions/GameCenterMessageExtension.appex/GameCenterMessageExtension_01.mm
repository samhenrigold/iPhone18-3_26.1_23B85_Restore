void sub_100016B34(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = sub_1000411B0();
  }

  else
  {
    v10 = 0;
  }

  [a3 setError:{v10, a8, a7}];

  if (!a1)
  {
    goto LABEL_32;
  }

  if (a1 >> 62)
  {
    v11 = sub_100041F50();
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_32:
    v35 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player;
    v36 = *(a4 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player);
    v37 = v36;
    if (!v36)
    {
      v37 = [objc_opt_self() unknownPlayer];
    }

    v38 = v36;
    v39 = sub_1000137CC(v37);
    v40 = *(a4 + v35);
    if (!v40)
    {
      goto LABEL_43;
    }

    v41 = v40;
    v42 = [v41 internal];
    v43 = [v42 playerID];

    v44 = sub_100041B20();
    v46 = v45;

    if (v44 == 0x496E776F6E6B6E55 && v46 == 0xE900000000000044)
    {
    }

    else
    {
      v48 = sub_100041FC0();

      if ((v48 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    *(a4 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType) = 0;
LABEL_43:
    v51(v39);
    return;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_32;
  }

LABEL_7:
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = (a4 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID);
    v52 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer;
    v14 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v23 = sub_100041EC0();
      }

      else
      {
        v23 = *(a1 + 8 * v12 + 32);
      }

      v24 = v23;
      v25 = [v23 internal];
      v26 = [v25 playerID];

      v27 = sub_100041B20();
      v29 = v28;

      v30 = v13[1];
      if (v30)
      {
        v31 = *v13 == v27 && v30 == v29;
        if (v31 || (sub_100041FC0() & 1) != 0)
        {

          v15 = *(a4 + v14);
          *(a4 + v14) = v24;
          v16 = v24;

          v17 = *(a4 + v14);
          if (v17)
          {
            v18 = [v17 internal];
            v19 = [v18 playerID];

            v20 = sub_100041B20();
            v22 = v21;
          }

          else
          {

            v20 = 0;
            v22 = 0;
          }

          *v13 = v20;
          v13[1] = v22;

          goto LABEL_12;
        }
      }

      if (v27 == a5 && v29 == a6)
      {
        break;
      }

      v33 = sub_100041FC0();

      if (v33)
      {
        goto LABEL_29;
      }

LABEL_12:
      if (v11 == ++v12)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v34 = *(a4 + v52);
    *(a4 + v52) = v24;

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_100016ECC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100019C9C, v4);
}

uint64_t sub_100016F60(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result)
  {
    v5 = [objc_opt_self() unknownPlayer];
    sub_1000137CC(v5);
    v6 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType;
    *(a2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType) = 2;
    swift_errorRetain();
    sub_100002D08(&qword_10005CF30, &unk_1000463B0);
    sub_10000EA78(0, &qword_10005CF38, NSError_ptr);
    if (swift_dynamicCast())
    {
      v7 = sub_10001953C(v8);

      if (v7)
      {
        *(a2 + v6) = 4;
      }
    }

    return a3();
  }

  return result;
}

void sub_100017064(uint64_t a1, void (*a2)(void *, id))
{
  v4 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player;
  v5 = *(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player);
  if (v5)
  {
    v6 = v5;
    if ([v6 isFriend])
    {
      v7 = [v6 friendBiDirectional];
      sub_10000EA78(0, &unk_10005CA40, NSNumber_ptr);
      isa = sub_100041DA0(1).super.super.isa;
      v9 = [v7 isEqualToNumber:isa];

      if (v9)
      {
        *(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState) = 2;
      }
    }

    else
    {
    }
  }

  v10 = *(a1 + v4);
  v11 = *(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerGroup);
  v12 = v10;
  v13 = [v11 error];
  a2(v10, v13);
}

void sub_1000171B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10000EA78(0, &qword_10005D028, GKDispatchGroup_ptr);
  v6 = sub_100041D00();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v6;
  v18 = sub_10001C850;
  v19 = v7;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100016ECC;
  v17 = &unk_100056708;
  v8 = _Block_copy(&v14);
  v9 = v3;
  v10 = v6;

  [v10 perform:v8];
  _Block_release(v8);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;
  v18 = sub_10001C898;
  v19 = v11;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100012BD4;
  v17 = &unk_100056758;
  v12 = _Block_copy(&v14);
  v13 = v10;

  [v13 notifyOnMainQueueWithBlock:v12];
  _Block_release(v12);
}

uint64_t sub_1000173B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v8 = a4;

  sub_1000123C8(sub_10001C904, v7);
}

uint64_t sub_100017450(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  if (a2)
  {
    v6 = sub_1000411B0();
  }

  else
  {
    v6 = 0;
  }

  [a3 setError:v6];

  return a4();
}

void sub_1000174E8()
{

  v1 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerGroup);
}

id sub_1000175AC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000176EC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100017780(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayerModel.FriendCodeState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlayerModel.FriendCodeState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100017994()
{
  result = qword_10005CEE0;
  if (!qword_10005CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CEE0);
  }

  return result;
}

unint64_t sub_1000179EC()
{
  result = qword_10005CEE8;
  if (!qword_10005CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CEE8);
  }

  return result;
}

unint64_t sub_100017A44()
{
  result = qword_10005CEF0;
  if (!qword_10005CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CEF0);
  }

  return result;
}

uint64_t sub_100017A98(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

id *sub_100017AF8(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002D08(&qword_10005CF00, &unk_100046F40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100017C04(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unsigned __int8 *sub_100017C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100041BF0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100018204(result, v5);
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
      result = sub_100041EE0();
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

uint64_t sub_100018204(uint64_t a1, unint64_t a2)
{
  v2 = sub_100041C00();
  v6 = sub_100018284(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100018284(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_100041E20();
    if (!v9 || (v10 = v9, v11 = sub_100040010(v9, 0), v12 = sub_1000183DC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_100041B60();

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
      return sub_100041B60();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_100041EE0();
LABEL_4:

  return sub_100041B60();
}

unint64_t sub_1000183DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1000185FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100041BC0();
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
          result = sub_100041EE0();
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

    result = sub_1000185FC(v12, a6, a7);
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

    result = sub_100041BA0();
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

unint64_t sub_1000185FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100041BD0();
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
    v5 = sub_100041BB0();
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

void sub_100018678(unsigned __int8 *a1, void *a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState;
  if (a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] >= 2u)
  {

LABEL_13:
    sub_100041F40();
    __break(1u);
    return;
  }

  v10 = objc_opt_self();
  v11 = a2;
  v35 = [v10 local];
  if (![v35 isAuthenticated])
  {

    goto LABEL_13;
  }

  if (a1[v9])
  {
    sub_10002F1BC(0, v11);

    v12 = v35;
  }

  else
  {
    sub_1000413E0();
    v13 = a1;
    v14 = sub_100041400();
    v15 = sub_100041CC0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v15;
      v17 = v16;
      v18 = swift_slowAlloc();
      v31 = v18;
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v17 = 138412546;
      *(v17 + 4) = v13;
      *v18 = v13;
      *(v17 + 12) = 2080;
      v19 = v13;
      v20 = [v19 description];
      v32 = v5;
      v21 = v20;
      v22 = sub_100041B20();
      v24 = v23;

      v25 = sub_10003FBD0(v22, v24, aBlock);

      *(v17 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v14, v33, "%@ CREATE friend request for playerModel: %s", v17, 0x16u);
      sub_10000E9F0(v31, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v34);

      (*(v32 + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v26 = sub_100041AF0();
    v27 = swift_allocObject();
    v27[2] = v13;
    v27[3] = sub_10001C964;
    v27[4] = v8;
    aBlock[4] = sub_10001CB88;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000147B8;
    aBlock[3] = &unk_100056870;
    v28 = _Block_copy(aBlock);
    v29 = v13;

    [v35 createFriendRequestWithIdentifier:v26 handler:v28];

    _Block_release(v28);
  }
}

void sub_100018B4C(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v6 = sub_100041410();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState;
  if (a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] >= 2u)
  {

LABEL_13:
    sub_100041F40();
    __break(1u);
    return;
  }

  v12 = objc_opt_self();
  v13 = a2;

  v39 = [v12 local];
  if (![v39 isAuthenticated])
  {

    goto LABEL_13;
  }

  if (a1[v11])
  {
    sub_10003EE78(0, v13, a3);

    v14 = v39;
  }

  else
  {
    sub_1000413E0();
    v15 = a1;
    v16 = sub_100041400();
    v17 = sub_100041CC0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v37 = v17;
      v19 = v18;
      v20 = swift_slowAlloc();
      v36 = v20;
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v19 = 138412546;
      *(v19 + 4) = v15;
      *v20 = v15;
      *(v19 + 12) = 2080;
      v21 = v15;
      v22 = [v21 description];
      v23 = sub_100041B20();
      v35 = v16;
      v24 = v7;
      v25 = v23;
      v27 = v26;

      v28 = sub_10003FBD0(v25, v27, aBlock);

      *(v19 + 14) = v28;
      v29 = v35;
      _os_log_impl(&_mh_execute_header, v35, v37, "%@ CREATE friend request for playerModel: %s", v19, 0x16u);
      sub_10000E9F0(v36, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v38);

      (*(v24 + 8))(v9, v6);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v30 = sub_100041AF0();
    v31 = swift_allocObject();
    v31[2] = v15;
    v31[3] = sub_100019B68;
    v31[4] = v10;
    aBlock[4] = sub_100019B70;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000147B8;
    aBlock[3] = &unk_1000562A8;
    v32 = _Block_copy(aBlock);
    v33 = v15;

    [v39 createFriendRequestWithIdentifier:v30 handler:v32];

    _Block_release(v32);
  }
}

void sub_10001903C(unsigned __int8 *a1, void *a2, void *a3, void *a4)
{
  v8 = sub_100041410();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v13 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState;
  if (a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] >= 2u)
  {

LABEL_13:
    sub_100041F40();
    __break(1u);
    return;
  }

  v14 = objc_opt_self();
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v41 = [v14 local];
  if (![v41 isAuthenticated])
  {

    goto LABEL_13;
  }

  if (a1[v13])
  {
    sub_100008230(0, v15, v16, v17);

    v18 = v41;
  }

  else
  {
    sub_1000413E0();
    v19 = a1;
    v20 = sub_100041400();
    v21 = sub_100041CC0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v38 = v21;
      v23 = v22;
      v24 = swift_slowAlloc();
      v37 = v24;
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v23 = 138412546;
      *(v23 + 4) = v19;
      *v24 = v19;
      *(v23 + 12) = 2080;
      v25 = v19;
      v40 = v9;
      v26 = v25;
      v27 = [v25 description];
      v28 = sub_100041B20();
      v30 = v29;

      v31 = sub_10003FBD0(v28, v30, aBlock);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v20, v38, "%@ CREATE friend request for playerModel: %s", v23, 0x16u);
      sub_10000E9F0(v37, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v39);

      (*(v40 + 8))(v11, v8);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v32 = sub_100041AF0();
    v33 = swift_allocObject();
    v33[2] = v19;
    v33[3] = sub_10001C958;
    v33[4] = v12;
    aBlock[4] = sub_10001CB88;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000147B8;
    aBlock[3] = &unk_1000567F8;
    v34 = _Block_copy(aBlock);
    v35 = v19;

    [v41 createFriendRequestWithIdentifier:v32 handler:v34];

    _Block_release(v34);
  }
}

uint64_t sub_10001953C(void *a1)
{
  if ([a1 gkIsNotConnectedToInternetError])
  {
    v2 = 1;
  }

  else if ([a1 code] == 3)
  {
    v3 = [a1 domain];
    v4 = sub_100041B20();
    v6 = v5;

    if (v4 == sub_100041B20() && v6 == v7)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_100041FC0();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_100019620(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100041410();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v13 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState;
  if (a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] >= 2u)
  {

LABEL_13:
    sub_100041F40();
    __break(1u);
    return;
  }

  v14 = objc_opt_self();
  v15 = a2;

  v41 = [v14 local];
  if (![v41 isAuthenticated])
  {

    goto LABEL_13;
  }

  if (a1[v13])
  {

    v16 = v41;
  }

  else
  {
    sub_1000413E0();
    v17 = a1;
    v18 = sub_100041400();
    v19 = sub_100041CC0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = v19;
      v21 = v20;
      v22 = swift_slowAlloc();
      v38 = v22;
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v21 = 138412546;
      *(v21 + 4) = v17;
      *v22 = v17;
      *(v21 + 12) = 2080;
      v23 = v17;
      v24 = [v23 description];
      v25 = sub_100041B20();
      v37 = v18;
      v26 = v9;
      v27 = v25;
      v29 = v28;

      v30 = sub_10003FBD0(v27, v29, aBlock);

      *(v21 + 14) = v30;
      v31 = v37;
      _os_log_impl(&_mh_execute_header, v37, v39, "%@ CREATE friend request for playerModel: %s", v21, 0x16u);
      sub_10000E9F0(v38, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v40);

      (*(v26 + 8))(v11, v8);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v32 = sub_100041AF0();
    v33 = swift_allocObject();
    v33[2] = v17;
    v33[3] = sub_10001C0C8;
    v33[4] = v12;
    aBlock[4] = sub_10001CB88;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000147B8;
    aBlock[3] = &unk_100056578;
    v34 = _Block_copy(aBlock);
    v35 = v17;

    [v41 createFriendRequestWithIdentifier:v32 handler:v34];

    _Block_release(v34);
  }
}

unint64_t sub_100019B08(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_100019B18(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_100019B28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100019B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019C04()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019C64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100019CBC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1000412B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier];
  sub_1000412A0();
  v10 = sub_100041290();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *v9 = v10;
  v9[1] = v12;
  v13 = &v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player;
  *&v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player] = 0;
  v15 = &v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount];
  *v18 = 0;
  v18[8] = 1;
  *&v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs] = 0;
  *&v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer] = 0;
  v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState] = 2;
  v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] = 0;
  v2[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 0;
  v19 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerGroup;
  v20 = objc_allocWithZone(GKDispatchGroup);
  v21 = sub_100041AF0();
  v22 = [v20 initWithName:v21];

  *&v2[v19] = v22;
  v23 = *&v2[v14];
  *&v2[v14] = a1;
  v24 = a1;

  v25 = [v24 internal];
  v26 = [v25 playerID];

  v27 = sub_100041B20();
  v29 = v28;

  *v13 = v27;
  v13[1] = v29;

  v31.receiver = v2;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, "init");
}

_BYTE *sub_100019F48(uint64_t a1)
{
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v146 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v140 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v140 - v10;
  __chkstk_darwin(v9);
  v13 = &v140 - v12;
  if (!sub_100041110())
  {
    goto LABEL_65;
  }

  v14 = sub_1000110F0(28278, 0xE200000000000000);
  if (!v15)
  {
    v14 = 48;
    v15 = 0xE100000000000000;
  }

  v16 = sub_1000141C8(v14, v15);
  v144 = v2;
  v145 = a1;
  if ((v17 & 1) != 0 || !v16)
  {
    v18 = sub_1000110F0(6580592, 0xE300000000000000);
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      v22 = objc_allocWithZone(type metadata accessor for PlayerModel());
      v23 = sub_100013F98(v20, v21);
      v24 = sub_1000110F0(25446, 0xE200000000000000);
      if (v25)
      {
        v26 = &v23[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
        *v26 = v24;
        v26[1] = v25;
      }

      v27 = sub_1000110F0(7565682, 0xE300000000000000);
      if (v28)
      {
        v29 = sub_1000141C8(v27, v28);
        if ((v30 & 1) == 0 && v29 <= 4)
        {
          LODWORD(v143) = 0;
          v23[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] = v29;
          goto LABEL_43;
        }
      }
    }

    else
    {
      sub_1000413D0();

      v32 = sub_100041400();
      v33 = sub_100041CE0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v149 = v143;
        *v34 = 136315138;
        sub_100041100();
        v35 = sub_100041C30();
        v37 = sub_10003FBD0(v35, v36, &v149);

        *(v34 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v32, v33, "Couldn't find playerID in queryItems: %s", v34, 0xCu);
        sub_10000E8A8(v143);

        v2 = v144;
      }

      (*(v3 + 8))(v13, v2);
      v38 = [objc_opt_self() unknownPlayer];
      v39 = objc_allocWithZone(type metadata accessor for PlayerModel());
      v40 = sub_100019CBC(v38);

      v40[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 3;
      v23 = v40;
    }

    LODWORD(v143) = 0;
    goto LABEL_43;
  }

  if (v16 == 1)
  {
    v31 = 1;
  }

  else
  {
    if (v16 != 2)
    {
      v142 = v3;
      v80 = [objc_opt_self() unknownPlayer];
      v81 = objc_allocWithZone(type metadata accessor for PlayerModel());
      v82 = sub_100019CBC(v80);

      v23 = v82;
      sub_1000413E0();
      v83 = sub_100041400();
      v84 = sub_100041CC0();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v141 = v86;
        v143 = swift_slowAlloc();
        v149 = v143;
        *v85 = 138412546;
        *(v85 + 4) = v23;
        *v86 = v23;
        *(v85 + 12) = 2080;
        LOBYTE(v148) = 3;
        v87 = v23;
        sub_100002D08(&qword_10005CFC8, &qword_1000463D8);
        v88 = sub_100041E10();
        v90 = sub_10003FBD0(v88, v89, &v149);

        *(v85 + 14) = v90;
        _os_log_impl(&_mh_execute_header, v83, v84, "%@ Couldn't handle this verion of friend request: %s", v85, 0x16u);
        sub_10000E9F0(v141, &unk_10005CA00, &unk_100045CF0);

        sub_10000E8A8(v143);

        v2 = v144;
      }

      v3 = v142;
      (*(v142 + 8))(v11, v2);
      v23[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 1;
      LODWORD(v143) = 3;
      goto LABEL_43;
    }

    v31 = 2;
  }

  sub_1000110F0(25722, 0xE200000000000000);
  if (!v41)
  {
    v139 = 0;
    for (i = 197; ; i = 198)
    {
LABEL_67:
      sub_100041F40();
      __break(1u);
LABEL_68:
      v139 = 0;
    }
  }

  LODWORD(v143) = v31;
  v42 = sub_100041210();
  if (v43 >> 60 == 15)
  {
    goto LABEL_68;
  }

  v44 = v42;
  v45 = v43;
  v46 = __chkstk_darwin(v42);
  *(&v140 - 32) = 0;
  *(&v140 - 3) = v46;
  i = v47;
  sub_100002D08(&qword_10005CFD0, &qword_1000463E0);
  sub_100041230();
  v48 = v150;
  if (v150 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_64;
  }

  v49 = v149;

  sub_100002D08(&qword_10005CFD8, &qword_1000463E8);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100046110;
  v51 = sub_10000EA78(0, &qword_10005CFE0, NSString_ptr);
  *(v50 + 56) = sub_100002D08(&qword_10005CFE8, &qword_1000463F0);
  *(v50 + 32) = v51;
  v52 = sub_10000EA78(0, &qword_10005CFF0, NSDictionary_ptr);
  *(v50 + 88) = sub_100002D08(&qword_10005CFF8, &qword_1000463F8);
  *(v50 + 64) = v52;
  v53 = objc_allocWithZone(NSSet);
  isa = sub_100041C10().super.isa;

  v55 = [v53 initWithArray:isa];

  v149 = 0;
  sub_100041CB0();
  if (!v149)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    v139 = 0;
    i = 164;
    goto LABEL_67;
  }

  v56 = objc_opt_self();
  v57 = sub_100041CA0().super.isa;

  v141 = v49;
  v58 = sub_100041240().super.isa;
  v149 = 0;
  v59 = [v56 _strictlyUnarchivedObjectOfClasses:v57 fromData:v58 error:&v149];

  if (!v59)
  {
    v91 = v149;
    sub_1000411C0();

    swift_willThrow();

    v62 = v44;
    goto LABEL_41;
  }

  v60 = v149;
  sub_100041E50();
  swift_unknownObjectRelease();
  v61 = sub_100002D08(&qword_10005D000, &qword_100046400);
  v62 = v44;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:
    v92 = [objc_opt_self() local];
    v93 = objc_allocWithZone(type metadata accessor for PlayerModel());
    v94 = sub_100019CBC(v92);

    sub_10001C254(v141, v48);
    sub_10001C254(v62, v45);
    v23 = v94;
LABEL_42:
    v2 = v144;
    goto LABEL_43;
  }

  v142 = v3;
  v63 = v148;
  if (!v148[2])
  {

LABEL_40:
    v3 = v142;
    goto LABEL_41;
  }

  v64 = sub_10002FF90(25446, 0xE200000000000000);
  if ((v65 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_40;
  }

  v140 = v61;
  v66 = (v63[7] + 16 * v64);
  v67 = *v66;
  v68 = v66[1];

  v69 = objc_allocWithZone(type metadata accessor for PlayerModel());
  v70 = sub_100013D68(v67, v68);
  v23 = v70;
  if (v63[2])
  {

    v71 = v23;
    v72 = sub_10002FF90(7565682, 0xE300000000000000);
    if (v73)
    {
      v74 = (v63[7] + 16 * v72);
      v75 = *v74;
      v76 = v74[1];

      v77 = v76;
      v62 = v44;
      v78 = sub_1000141C8(v75, v77);
      if ((v79 & 1) == 0 && v78 <= 4)
      {
        v71[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] = v78;
      }
    }

    else
    {
    }

    if (v63[2])
    {

      v127 = sub_10002FF90(28272, 0xE200000000000000);
      if (v128)
      {
        v129 = (v63[7] + 16 * v127);
        v131 = *v129;
        v130 = v129[1];

        v132 = &v71[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname];
        *v132 = v131;
        v132[1] = v130;
        v62 = v44;
      }
    }
  }

  else
  {
    v126 = v70;
  }

  v149 = v63;
  sub_100002D08(&qword_10005D008, &qword_100046408);
  if (swift_dynamicCast())
  {
    v133 = v148;
    v3 = v142;
    if (v148[2] && (v134 = sub_10002FF90(1684631666, 0xE400000000000000), (v135 & 1) != 0))
    {
      sub_100012320(v133[7] + 32 * v134, &v149);

      sub_100002D08(&qword_10005CF00, &unk_100046F40);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_100045AE0;
      sub_100012320(&v149, &v148);
      swift_dynamicCast();
      sub_10001C254(v141, v48);
      sub_10001C254(v62, v45);
      sub_10000E8A8(&v149);
      v137 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
      swift_beginAccess();
      *&v23[v137] = v136;
    }

    else
    {
      sub_10001C254(v141, v48);
      sub_10001C254(v62, v45);
    }

    goto LABEL_42;
  }

  sub_10001C254(v141, v48);
  sub_10001C254(v62, v45);
  v2 = v144;
  v3 = v142;
LABEL_43:
  sub_1000413E0();

  v95 = v23;
  v96 = sub_100041400();
  v97 = sub_100041CC0();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = v2;
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v142 = v3;
    v101 = v100;
    v102 = swift_slowAlloc();
    v149 = v102;
    *v99 = 138412546;
    *(v99 + 4) = v95;
    *v101 = v95;
    *(v99 + 12) = 2080;
    sub_100041100();
    v103 = v95;
    v104 = sub_100041C30();
    v105 = v8;
    v106 = v98;
    v108 = v107;

    v109 = sub_10003FBD0(v104, v108, &v149);

    *(v99 + 14) = v109;
    _os_log_impl(&_mh_execute_header, v96, v97, "%@ queryItems: %s", v99, 0x16u);
    sub_10000E9F0(v101, &unk_10005CA00, &unk_100045CF0);
    v110 = v142;

    sub_10000E8A8(v102);

    v2 = v106;

    v111 = *(v110 + 8);
    v111(v105, v106);
  }

  else
  {

    v111 = *(v3 + 8);
    v111(v8, v2);
  }

  sub_1000413E0();
  v112 = v95;
  v113 = sub_100041400();
  v114 = sub_100041CC0();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v149 = v117;
    *v115 = 138412546;
    *(v115 + 4) = v112;
    *v116 = v112;
    *(v115 + 12) = 2080;
    v147 = v143;
    v143 = v112;
    sub_100002D08(&qword_10005CFC8, &qword_1000463D8);
    v118 = sub_100041E10();
    v120 = sub_10003FBD0(v118, v119, &v149);

    *(v115 + 14) = v120;
    _os_log_impl(&_mh_execute_header, v113, v114, "%@ Version in queryItems: %s", v115, 0x16u);
    sub_10000E9F0(v116, &unk_10005CA00, &unk_100045CF0);

    sub_10000E8A8(v117);

    v121 = sub_100041130();
    (*(*(v121 - 8) + 8))(v145, v121);
    v122 = v146;
    v123 = v144;
  }

  else
  {

    v124 = sub_100041130();
    (*(*(v124 - 8) + 8))(v145, v124);
    v122 = v146;
    v123 = v2;
  }

  v111(v122, v123);
  return v112;
}

_BYTE *sub_10001AFBC(void *a1)
{
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  v71 = v2;
  v72 = v3;
  v4 = __chkstk_darwin(v2);
  v69 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v67 = &v60[-v6];
  v7 = sub_100002D08(&qword_10005CFB8, &qword_1000463D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v60[-v8];
  v10 = sub_100041130();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v60[-v15];
  v68 = sub_100041200();
  v17 = *(v68 - 8);
  v18 = __chkstk_darwin(v68);
  v20 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v60[-v21];
  v70 = a1;
  v23 = [a1 selectedMessage];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 URL];
    if (v25)
    {
      v26 = v25;
      sub_1000411E0();

      sub_100041120();
      v27 = v11;
      v28 = *(v11 + 48);
      v29 = v10;
      if (v28(v9, 1, v10) != 1)
      {
        v46 = v16;
        (*(v27 + 32))(v16, v9, v29);
        (*(v27 + 16))(v14, v16, v29);
        v33 = sub_100019F48(v14);
        v65 = v27;
        v47 = v67;
        sub_1000413E0();
        v66 = v29;
        v48 = v17;
        v49 = *(v17 + 16);
        v50 = v68;
        v49(v20, v22, v68);
        v51 = sub_100041400();
        v52 = sub_100041CC0();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v64 = v46;
          v54 = v53;
          v62 = swift_slowAlloc();
          v73 = v62;
          *v54 = 136315138;
          sub_10001C1DC();
          v61 = v52;
          v55 = sub_100041FB0();
          v57 = v56;
          v63 = *(v48 + 8);
          v63(v20, v50);
          v58 = sub_10003FBD0(v55, v57, &v73);

          *(v54 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v51, v61, "PlayerModel.init url: %s", v54, 0xCu);
          sub_10000E8A8(v62);

          v34 = v71;
          (*(v72 + 8))(v67, v71);
          (*(v65 + 8))(v64, v66);
          v63(v22, v50);
        }

        else
        {

          v59 = *(v48 + 8);
          v59(v20, v50);
          v34 = v71;
          (*(v72 + 8))(v47, v71);
          (*(v65 + 8))(v46, v66);
          v59(v22, v50);
        }

        goto LABEL_7;
      }

      (*(v17 + 8))(v22, v68);

      sub_10000E9F0(v9, &qword_10005CFB8, &qword_1000463D0);
    }

    else
    {
    }
  }

  v30 = [objc_opt_self() local];
  v31 = objc_allocWithZone(type metadata accessor for PlayerModel());
  v32 = sub_100019CBC(v30);

  v33 = v32;
  v34 = v71;
LABEL_7:
  v35 = v69;
  sub_1000413E0();
  v36 = v33;
  v37 = sub_100041400();
  v38 = sub_100041CC0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v73 = v40;
    *v39 = 136315138;
    v41 = sub_100013A74();
    v43 = v42;

    v44 = sub_10003FBD0(v41, v43, &v73);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v37, v38, "PlayerModel.init playerModel: %s", v39, 0xCu);
    sub_10000E8A8(v40);
  }

  else
  {
  }

  (*(v72 + 8))(v35, v34);
  return v36;
}

_BYTE *sub_10001B6B8(uint64_t a1)
{
  v2 = sub_100002D08(&qword_10005CFB8, &qword_1000463D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_100041130();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_100041120();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000E9F0(v4, &qword_10005CFB8, &qword_1000463D0);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_100041EB0(39);

    v15 = 0xD000000000000025;
    v16 = 0x80000001000447D0;
    sub_100041200();
    sub_10001C1DC();
    v17._countAndFlagsBits = sub_100041FB0();
    sub_100041B80(v17);

    result = sub_100041F40();
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    v12 = sub_100019F48(v9);
    v13 = sub_100041200();
    (*(*(v13 - 8) + 8))(a1, v13);
    (*(v6 + 8))(v11, v5);
    return v12;
  }

  return result;
}

void sub_10001B970(char *a1, void *a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = sub_100041410();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v58 = a4;
  v17[4] = a4;
  v17[5] = a5;
  v18 = objc_opt_self();
  v19 = a2;
  v57 = a3;
  v59 = a5;

  v20 = [v18 local];
  if ([v20 isAuthenticated] && *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8])
  {
    v59 = *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];

    sub_1000413E0();
    v21 = a1;
    v22 = sub_100041400();
    v23 = sub_100041CC0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      LODWORD(v57) = v23;
      v25 = v24;
      v26 = swift_slowAlloc();
      v56 = v26;
      v58 = swift_slowAlloc();
      *&aBlock = v58;
      *v25 = 138412546;
      *(v25 + 4) = v21;
      *v26 = v21;
      *(v25 + 12) = 2080;
      v27 = v21;
      v55 = v10;
      v28 = v27;
      v29 = [v27 description];
      v30 = sub_100041B20();
      v60 = v11;
      v31 = v30;
      v54 = v22;
      v33 = v32;

      v34 = sub_10003FBD0(v31, v33, &aBlock);

      *(v25 + 14) = v34;
      v35 = v54;
      _os_log_impl(&_mh_execute_header, v54, v57, " %@ View friend code details for playerModel: %s", v25, 0x16u);
      sub_10000E9F0(v56, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v58);

      (*(v60 + 8))(v16, v55);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    v38 = sub_100041AF0();

    v50 = swift_allocObject();
    v50[2] = v21;
    v50[3] = sub_10001BFD8;
    v50[4] = v17;
    v64 = sub_10001BFE4;
    v65 = v50;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v62 = sub_1000145E4;
    v63 = &unk_100056460;
    v51 = _Block_copy(&aBlock);
    v52 = v21;

    [v20 getPlayerIDFromFriendCode:v38 handler:v51];

    _Block_release(v51);
  }

  else
  {
    v56 = v19;
    v60 = v11;
    sub_1000413E0();
    v36 = v20;
    v37 = a1;
    v38 = v36;
    v39 = sub_100041400();
    v40 = sub_100041CC0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55 = v10;
      v44 = v43;
      v66 = v43;
      *v41 = 138412802;
      *(v41 + 4) = v37;
      *v42 = v37;
      *(v41 + 12) = 2080;
      aBlock = *&v37[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
      v45 = v37;
      sub_100002D08(&qword_10005CF28, &qword_1000463A8);
      v46 = sub_100041E10();
      v48 = sub_10003FBD0(v46, v47, &v66);

      *(v41 + 14) = v48;
      *(v41 + 22) = 1024;
      v49 = [v38 isAuthenticated];

      *(v41 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v39, v40, "%@ Could not fetch playerID using friend code %s, local player authentication status: %{BOOL}d", v41, 0x1Cu);
      sub_10000E9F0(v42, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v44);

      (*(v60 + 8))(v14, v55);
    }

    else
    {

      (*(v60 + 8))(v14, v10);
    }

    sub_1000162DC(0, v56, v57, v58, v59);
  }
}

uint64_t sub_10001BF90()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001C010()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001C064()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001C0D4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001C11C(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  if (!a1)
  {
    *(v1[2] + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState) = 1;
  }

  sub_100014A88(v3, v4);
  return v5(a1);
}

uint64_t sub_10001C180()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_10001C1DC()
{
  result = qword_10005CFC0;
  if (!qword_10005CFC0)
  {
    sub_100041200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CFC0);
  }

  return result;
}

uint64_t sub_10001C254(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001C268(a1, a2);
  }

  return a1;
}

uint64_t sub_10001C268(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_10001C2BC(char *a1, void *a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState;
  if (a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] == 1)
  {
    v10 = objc_opt_self();
    v11 = a2;
    v40 = [v10 local];
    if (a1[v9] == 1 && *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8])
    {
      v12 = *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];

      sub_1000413E0();
      v13 = a1;
      v14 = sub_100041400();
      v15 = sub_100041CC0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v37 = v15;
        v17 = v16;
        v18 = swift_slowAlloc();
        v35 = v18;
        v38 = swift_slowAlloc();
        aBlock[0] = v38;
        *v17 = 138412546;
        *(v17 + 4) = v13;
        *v18 = v13;
        *(v17 + 12) = 2080;
        v19 = v13;
        v20 = [v19 description];
        v39 = v12;
        v21 = v20;
        v22 = sub_100041B20();
        v36 = v5;
        v23 = v22;
        v34 = v14;
        v25 = v24;

        v26 = sub_10003FBD0(v23, v25, aBlock);

        *(v17 + 14) = v26;
        v27 = v34;
        _os_log_impl(&_mh_execute_header, v34, v37, "%@ CANCEL friend request for playerModel: %s", v17, 0x16u);
        sub_10000E9F0(v35, &unk_10005CA00, &unk_100045CF0);

        sub_10000E8A8(v38);

        (*(v36 + 8))(v7, v4);
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }

      v29 = sub_100041AF0();

      v30 = swift_allocObject();
      v30[2] = v13;
      v30[3] = sub_10001C798;
      v30[4] = v8;
      aBlock[4] = sub_10001C7A4;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000151F0;
      aBlock[3] = &unk_1000566B8;
      v31 = _Block_copy(aBlock);
      v32 = v13;

      [v40 cancelFriendRequestWithIdentifier:v29 handler:v31];

      _Block_release(v31);
    }

    else
    {
      sub_10002BB98(0, v11);

      v28 = v40;
    }
  }

  else
  {

    sub_100041F40();
    __break(1u);
  }
}

uint64_t sub_10001C760()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C7A4(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!a1)
  {
    v3 = *(v1 + 16);
    *(v3 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState) = 0;
    v4 = (v3 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode);
    *v4 = 0;
    v4[1] = 0;

    a1 = 0;
  }

  return v2(a1);
}

uint64_t sub_10001C810()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C858()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10001C898()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 32) error];
  v1();
}

uint64_t sub_10001C910()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for PlayerModel.URLPropertiesVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlayerModel.URLPropertiesVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001CAC0()
{
  result = qword_10005D030;
  if (!qword_10005D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D030);
  }

  return result;
}

void sub_10001CBFC(void (*a1)(void), uint64_t a2)
{
  if (*(*&v2[qword_10005D760] + 16))
  {
    v5 = objc_opt_self();

    isa = sub_100041C10().super.isa;

    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = a1;
    v7[4] = a2;
    v22 = sub_10001D608;
    v23 = v7;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100016238;
    v21 = &unk_1000569C0;
    v8 = _Block_copy(&aBlock);
    v9 = v2;

    [v5 loadPlayersForIdentifiers:isa withCompletionHandler:v8];
    _Block_release(v8);
  }

  else
  {
    v10 = *&v2[qword_10005D758];
    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = swift_allocObject();
        v13[2] = v2;
        v13[3] = a1;
        v13[4] = a2;
        v22 = sub_10001D5E4;
        v23 = v13;
        aBlock = _NSConcreteStackBlock;
        v19 = 1107296256;
        v20 = sub_10001CFC4;
        v21 = &unk_100056970;
        v14 = _Block_copy(&aBlock);
        v15 = v2;

        v16 = v10;

        [v12 loadRecentPlayersWithCompletionHandler:v14];
        _Block_release(v14);
      }

      else
      {
        v17 = v10;
        a1(0);
      }
    }

    else
    {
      sub_100041F40();
      __break(1u);
    }
  }
}

uint64_t sub_10001CEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    *(a3 + qword_10005D768) = a1;
  }

  return a4(a2, a2, a3);
}

uint64_t sub_10001CF24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    *(a3 + qword_10005D768) = a1;

    if (a1 >> 62)
    {
      v8 = sub_100041F50();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a3 + qword_10005D770) = v8;
  }

  return a4(a2, a2, a3);
}

uint64_t sub_10001CFC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10001D4C8();
    v4 = sub_100041C20();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_10001D058(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for FriendsModel(0);
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10001D09C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FriendsModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _sSo8GKPlayerC26GameCenterMessageExtensionE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v4 = sub_100002D08(&qword_10005CC90, qword_100045DE8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = sub_100041280();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v35 - v16;
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  v20 = &unk_10005A000;
  v21 = [a1 lastPlayedDate];
  v36 = v19;
  if (v21)
  {
    v22 = v21;
    sub_100041270();

    v23 = v14;
    v24 = v7;
    v25 = a2;
    v26 = *(v11 + 32);
    v26(v9, v17, v10);
    v35 = *(v11 + 56);
    v35(v9, 0, 1, v10);
    v26(v19, v9, v10);
    v20 = &unk_10005A000;
    a2 = v25;
    v7 = v24;
    v14 = v23;
  }

  else
  {
    v35 = *(v11 + 56);
    v35(v9, 1, 1, v10);
    sub_100041250();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_100010354(v9);
    }
  }

  v27 = [a2 v20[259]];
  if (v27)
  {
    v28 = v27;
    sub_100041270();

    v29 = *(v11 + 32);
    v29(v7, v17, v10);
    v35(v7, 0, 1, v10);
    v29(v14, v7, v10);
    v30 = v36;
  }

  else
  {
    v35(v7, 1, 1, v10);
    sub_100041250();
    v31 = (*(v11 + 48))(v7, 1, v10);
    v30 = v36;
    if (v31 != 1)
    {
      sub_100010354(v7);
    }
  }

  v32 = sub_100041260();
  v33 = *(v11 + 8);
  v33(v14, v10);
  v33(v30, v10);
  return v32 & 1;
}

uint64_t sub_10001D484(uint64_t a1)
{
  result = sub_10001D548(&qword_10005D040, &protocol conformance descriptor for GKPlayer);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001D4C8()
{
  result = qword_10005CA38;
  if (!qword_10005CA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CA38);
  }

  return result;
}

uint64_t sub_10001D548(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001D4C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for FriendsModel(uint64_t a1)
{
  result = qword_10005D078;
  if (!qword_10005D078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001D5F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10001D620(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001D634(uint64_t a1, int a2)
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

uint64_t sub_10001D67C(uint64_t result, int a2, int a3)
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

uint64_t sub_10001D6E8@<X0>(uint64_t a1@<X0>, char *a4@<X8>)
{
  v33 = a4;
  v32 = sub_100002D08(&qword_10005D250, &qword_100046660);
  v36 = *(v32 - 8);
  v5 = __chkstk_darwin(v32);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v35 = sub_1000419A0();
  v30 = *(v35 - 8);
  v9 = v30;
  v10 = __chkstk_darwin(v35);
  v34 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v29 = &v28 - v12;
  sub_100041990();
  v14 = sub_100041690();
  v40 = 0;
  sub_10001DAF8(a1, &v47);
  v43 = v49;
  v44[0] = v50[0];
  *(v44 + 10) = *(v50 + 10);
  v41 = v47;
  v42 = v48;
  v45[2] = v49;
  v46[0] = v50[0];
  *(v46 + 10) = *(v50 + 10);
  v45[0] = v47;
  v45[1] = v48;
  sub_10001DED0(&v41, &v37);
  sub_10000E9F0(v45, &qword_10005D258, &qword_100046668);
  *&v39[7] = v41;
  *&v39[65] = *(v44 + 10);
  *&v39[55] = v44[0];
  *&v39[39] = v43;
  *&v39[23] = v42;
  *&v38[33] = *&v39[32];
  *&v38[49] = *&v39[48];
  *&v38[65] = *&v39[64];
  *&v38[1] = *v39;
  *&v37 = v14;
  *(&v37 + 1) = 0x4010000000000000;
  v38[0] = v40;
  v38[81] = BYTE9(v44[1]);
  *&v38[17] = *&v39[16];
  sub_100002D08(&qword_10005D260, &qword_100046670);
  sub_10001DF70(&qword_10005D268, &qword_10005D260, &qword_100046670);
  v28 = v8;
  sub_1000418A0();
  v50[1] = *&v38[48];
  v50[2] = *&v38[64];
  v51 = *&v38[80];
  v47 = v37;
  v48 = *v38;
  v49 = *&v38[16];
  v50[0] = *&v38[32];
  sub_10000E9F0(&v47, &qword_10005D260, &qword_100046670);
  v15 = *(v9 + 16);
  v16 = v34;
  v17 = v35;
  v15(v34, v13, v35);
  v18 = *(v36 + 16);
  v19 = v31;
  v20 = v8;
  v21 = v32;
  v18(v31, v20, v32);
  v22 = v33;
  v15(v33, v16, v17);
  v23 = sub_100002D08(&qword_10005D270, &unk_100046678);
  v18(&v22[*(v23 + 48)], v19, v21);
  v24 = *(v36 + 8);
  v24(v28, v21);
  v25 = *(v30 + 8);
  v26 = v35;
  v25(v29, v35);
  v24(v19, v21);
  return (v25)(v34, v26);
}

uint64_t sub_10001DAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = GKGameCenterUIFrameworkBundle();
  v35._countAndFlagsBits = 0xE000000000000000;
  v41._object = 0x8000000100044030;
  v41._countAndFlagsBits = 0xD00000000000001ALL;
  v43.value._countAndFlagsBits = 0;
  v43.value._object = 0;
  v5.super.isa = v4;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_100041180(v41, v43, v5, v45, 0, v35);

  sub_100002D08(&qword_10005C9C0, &qword_100045CD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100045AE0;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  sub_100041B30();

  sub_1000024FC();
  v7 = sub_100041860();
  v9 = v8;
  v11 = v10;
  sub_100041800();
  v12 = sub_100041840();
  v38 = v13;
  v39 = v12;
  HIDWORD(v36._object) = v14;
  v40 = v15;

  sub_100002550(v7, v9, v11 & 1);

  v16 = GKGameCenterUIFrameworkBundle();
  v36._countAndFlagsBits = 0xE000000000000000;
  v42._countAndFlagsBits = 0xD00000000000001CLL;
  v42._object = 0x8000000100044050;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v17.super.isa = v16;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_100041180(v42, v44, v17, v46, 0, v36);

  v18 = sub_100041860();
  v20 = v19;
  v22 = v21;
  sub_100041800();
  sub_1000417B0();

  v23 = sub_100041840();
  v25 = v24;
  LOBYTE(v4) = v26;

  sub_100002550(v18, v20, v22 & 1);

  sub_100041900();
  v27 = sub_100041830();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_100002550(v23, v25, v4 & 1);

  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v40;
  *(a2 + 32) = 256;
  *(a2 + 40) = v27;
  *(a2 + 48) = v29;
  *(a2 + 56) = v31 & 1;
  *(a2 + 64) = v33;
  *(a2 + 72) = 256;
  sub_100011D44(v39, v38, v37 & 1);

  sub_100011D44(v27, v29, v31 & 1);

  sub_100002550(v27, v29, v31 & 1);

  sub_100002550(v39, v38, v37 & 1);
}

uint64_t sub_10001DE64@<X0>(uint64_t a6@<X8>)
{
  v8 = *v6;
  *a6 = sub_100041690();
  *(a6 + 8) = 0x4024000000000000;
  *(a6 + 16) = 0;
  v9 = sub_100002D08(&qword_10005D248, &qword_100046658);
  return sub_10001D6E8(v8, (a6 + *(v9 + 44)));
}

uint64_t sub_10001DED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005D258, &qword_100046668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DF70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000025E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10001DFC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10001DFE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10001E030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001E094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001E0DC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_10001E134(uint64_t a1)
{
  sub_10001E38C(319);
  if (v1 <= 0x3F)
  {
    sub_10001E3E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10001E1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D08(qword_10005D288, qword_100046BB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001E2B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D08(qword_10005D288, qword_100046BB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_10001E38C(uint64_t a1)
{
  if (!qword_10005D310)
  {
    sub_100041680();
    v1 = sub_1000414E0();
    if (!v2)
    {
      atomic_store(v1, &qword_10005D310);
    }
  }
}

unint64_t sub_10001E3E4()
{
  result = qword_10005D318;
  if (!qword_10005D318)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10005D318);
  }

  return result;
}

uint64_t sub_10001E478(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

  return sub_100041A00();
}

uint64_t sub_10001E648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100041610();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D08(&qword_10005D358, &qword_100047220);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100021B9C(v2, &v14 - v9, &qword_10005D358, &qword_100047220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100041680();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100041CF0();
    v13 = sub_100041730();
    sub_1000413F0();

    sub_100041600();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

BOOL sub_10001E848(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100041680();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E648(v7);
  v8 = sub_100041670();
  (*(v5 + 8))(v7, v4);
  return (v8 & 1) == 0 && *(*(v2 + *(a1 + 36) + 32) + 16) != 0;
}

uint64_t sub_10001E948@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v22 = sub_1000025E8(&qword_10005D320, &qword_1000467E0);
  v23 = sub_1000025E8(&qword_10005D328, &qword_1000467E8);
  v5 = sub_1000025E8(&qword_10005D330, &qword_1000467F0);
  v6 = *(a1 + 16);
  v24 = v5;
  v25 = v6;
  swift_getTupleTypeMetadata();
  sub_1000419F0();
  swift_getWitnessTable();
  v7 = sub_100041980();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  v14 = *(a1 + 24);
  v19 = v6;
  v20 = v14;
  v21 = v2;
  sub_100041690();
  sub_100041970();
  swift_getWitnessTable();
  v15 = *(v8 + 16);
  v15(v13, v11, v7);
  v16 = *(v8 + 8);
  v16(v11, v7);
  v15(a2, v13, v7);
  return (v16)(v13, v7);
}

uint64_t sub_10001EB88@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v113 = a4;
  v115 = *(a2 - 1);
  v7 = __chkstk_darwin(a1);
  v114 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v88 - v9;
  v94 = sub_100002D08(&qword_10005D338, &qword_1000467F8);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v88 - v10;
  v107 = sub_100002D08(&qword_10005D340, &qword_100046800);
  __chkstk_darwin(v107);
  v95 = &v88 - v11;
  v102 = sub_100002D08(&qword_10005D348, &qword_100046808);
  __chkstk_darwin(v102);
  v103 = (&v88 - v12);
  v100 = sub_100041310();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100002D08(&qword_10005D330, &qword_1000467F0);
  v14 = __chkstk_darwin(v108);
  v111 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v109 = &v88 - v16;
  v104 = sub_100002D08(&qword_10005D328, &qword_1000467E8);
  v17 = __chkstk_darwin(v104);
  v119 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v120 = &v88 - v19;
  v21 = type metadata accessor for FriendInviteInfoCardView(0, a2, a3, v20);
  v22 = *(v21 - 8);
  v101 = *(v22 + 64);
  __chkstk_darwin(v21);
  v24 = &v88 - v23;
  v117 = sub_100002D08(&qword_10005D350, &unk_100046810);
  __chkstk_darwin(v117);
  v116 = &v88 - v25;
  v106 = sub_100002D08(&qword_10005D320, &qword_1000467E0);
  v105 = *(v106 - 8);
  v26 = __chkstk_darwin(v106);
  v118 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v121 = &v88 - v28;
  v29 = *(v21 + 36);
  v97 = a1;
  v92 = a1 + v29;
  v90 = *(a1 + v29);
  v30 = [v90 internal];
  v110 = *(v22 + 16);
  v110(v24, a1, v21);
  v31 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v32 = swift_allocObject();
  v33 = v122;
  *(v32 + 16) = a2;
  *(v32 + 24) = v33;
  v96 = *(v22 + 32);
  v96(v32 + v31, v24, v21);
  v34 = v116;
  sub_100041330();
  sub_1000419D0();
  sub_100041500();
  v35 = &v34[*(v117 + 36)];
  v36 = v133;
  *v35 = v132;
  *(v35 + 1) = v36;
  *(v35 + 2) = v134;
  v37 = v97;
  v110(v24, v97, v21);
  v38 = v37;
  v39 = swift_allocObject();
  v110 = a2;
  v40 = v122;
  *(v39 + 16) = a2;
  *(v39 + 24) = v40;
  v41 = v21;
  v96(v39 + v31, v24, v21);
  v101 = sub_100020F6C();
  v42 = v116;
  sub_1000418A0();

  sub_10000E9F0(v42, &qword_10005D350, &unk_100046810);
  sub_10001F98C(v41, v120);
  v43 = v99;
  v44 = v98;
  v45 = v100;
  (*(v99 + 104))(v98, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v100);
  LOBYTE(v42) = sub_100041300();
  (*(v43 + 8))(v44, v45);
  if (v42)
  {
    v46 = *(v92 + 9) == 1;
    v89 = v41;
    if (v46)
    {
      v47 = v90;
      v48 = [v90 displayNameWithOptions:0];
      if (!v48)
      {
        v48 = [v47 displayName];
      }

      v49 = v48;
      sub_100041B20();

      sub_1000413B0();
      v50 = sub_100041360();
      v52 = v51;

      v128 = v50;
      v129 = v52;
      sub_1000024FC();
      v61 = sub_100041860();
      v62 = v53;
      LOBYTE(v52) = v54;
      v63 = v55;
      KeyPath = swift_getKeyPath();
      LOBYTE(v128) = v52 & 1;
      v69 = v52 & 1;
      v56 = sub_100041720();
      v66 = sub_1000417E0();
      v65 = swift_getKeyPath();
      v68 = v56 << 32;
      v67 = 1;
    }

    else
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      KeyPath = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
    }

    v70 = v103;
    *v103 = v61;
    v70[1] = v62;
    v70[2] = v69;
    v70[3] = v63;
    v70[4] = KeyPath;
    v70[5] = v68 | (v67 << 16) | v67;
    v70[6] = v65;
    v70[7] = v66;
    swift_storeEnumTagMultiPayload();
    sub_100002D08(&qword_10005D370, &qword_100046820);
    sub_100021050();
    sub_100021388();
    v60 = v109;
    v71 = sub_1000416D0();
    v41 = v89;
  }

  else
  {
    if (sub_10001E848(v41))
    {
      v57 = v91;
      sub_10001FAD0(v41, v91);
      v58 = v95;
      sub_10002159C(v57, v95);
      v59 = 0;
      v60 = v109;
    }

    else
    {
      v59 = 1;
      v60 = v109;
      v58 = v95;
    }

    (*(v93 + 56))(v58, v59, 1, v94);
    sub_100021B9C(v58, v103, &qword_10005D340, &qword_100046800);
    swift_storeEnumTagMultiPayload();
    sub_100002D08(&qword_10005D370, &qword_100046820);
    sub_100021050();
    sub_100021388();
    sub_1000416D0();
    v71 = sub_10000E9F0(v58, &qword_10005D340, &qword_100046800);
  }

  v72 = *(v38 + *(v41 + 40));
  v73 = v114;
  v72(v71);
  v74 = v115;
  v75 = *(v115 + 16);
  v76 = v112;
  v77 = v110;
  v75(v112, v73, v110);
  v116 = *(v74 + 8);
  (v116)(v73, v77);
  v78 = v105;
  v79 = v118;
  v80 = v106;
  (*(v105 + 16))(v118, v121, v106);
  v128 = v79;
  v81 = v119;
  sub_100021438(v120, v119);
  v129 = v81;
  v82 = v60;
  v83 = v60;
  v84 = v111;
  sub_100021B9C(v82, v111, &qword_10005D330, &qword_1000467F0);
  v130 = v84;
  v75(v73, v76, v77);
  v131 = v73;
  v127[0] = v80;
  v127[1] = v104;
  v127[2] = v108;
  v127[3] = v77;
  OpaqueTypeConformance2 = v117;
  v124 = v101;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v124 = sub_100003214(&qword_10005D400, &qword_10005D328, &qword_1000467E8, &protocol conformance descriptor for VStack<A>);
  v125 = sub_1000214A8();
  v126 = v122;
  sub_10001E478(&v128, 4uLL, v127);
  v85 = v116;
  (v116)(v76, v77);
  sub_10000E9F0(v83, &qword_10005D330, &qword_1000467F0);
  sub_100021534(v120);
  v86 = *(v78 + 8);
  v86(v121, v80);
  v85(v73, v77);
  sub_10000E9F0(v84, &qword_10005D330, &qword_1000467F0);
  sub_100021534(v119);
  return (v86)(v118, v80);
}

uint64_t sub_10001F8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for FriendInviteInfoCardView(0, a2, a3, a4) + 36);
  v5 = *(v4 + 56);
  v6 = [*v4 internal];
  v7 = [v6 playerID];

  v8 = sub_100041B20();
  v10 = v9;

  v5(v8, v10);
}

uint64_t sub_10001F98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100041310();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v6);
  v10 = sub_100041300();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v11 = 0x4000000000000000;
  }

  else
  {
    v11 = 0xC000000000000000;
  }

  *a2 = sub_100041690();
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  v12 = sub_100002D08(&qword_10005D448, &qword_1000468F0);
  return sub_10001FB34(v3, *(a1 + 16), *(a1 + 24), v13, (a2 + *(v12 + 44)));
}

uint64_t sub_10001FAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_100041620();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  sub_100002D08(&qword_10005D410, &qword_1000468C0);
  return sub_100020944(v2, *(a1 + 16), *(a1 + 24), v5);
}

uint64_t sub_10001FB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v61 = a5;
  v55 = type metadata accessor for FriendInviteInfoCardView(0, a2, a3, a4);
  v8 = *(v55 - 8);
  __chkstk_darwin(v55);
  v10 = &v54 - v9;
  v11 = sub_100041310();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002D08(&qword_10005D450, &qword_1000468F8);
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = __chkstk_darwin(v15);
  v62 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v63 = &v54 - v18;
  v54 = sub_100041630();
  v76 = 0;
  v57 = a3;
  v58 = a1;
  v56 = a2;
  sub_100020128(a1, a2, a3, &v67);
  v79 = v69;
  v80 = v70;
  v77 = v67;
  v78 = v68;
  v82[2] = v69;
  v82[3] = v70;
  v82[4] = v71;
  v82[1] = v68;
  v81 = v71;
  v82[0] = v67;
  sub_100021B9C(&v77, &v64, &qword_10005D458, &qword_100046900);
  sub_10000E9F0(v82, &qword_10005D458, &qword_100046900);
  *&v75[23] = v78;
  *&v75[39] = v79;
  *&v75[55] = v80;
  *&v75[71] = v81;
  *&v75[7] = v77;
  v19 = v76;
  (*(v12 + 104))(v14, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v11);
  LOBYTE(a1) = sub_100041300();
  (*(v12 + 8))(v14, v11);
  if (a1)
  {
    v20 = sub_100041810();
  }

  else
  {
    v20 = sub_1000417A0();
  }

  v21 = v20;
  KeyPath = swift_getKeyPath();
  *(&v65[2] + 1) = *&v75[32];
  *(&v65[3] + 1) = *&v75[48];
  *(&v65[4] + 1) = *&v75[64];
  *(v65 + 1) = *v75;
  *&v64 = v54;
  *(&v64 + 1) = 0x4000000000000000;
  LOBYTE(v65[0]) = v19;
  *(&v65[1] + 1) = *&v75[16];
  *&v65[5] = *&v75[79];
  *(&v65[5] + 1) = KeyPath;
  v66 = v21;
  v23 = v58;
  v24 = v55;
  (*(v8 + 16))(v10, v58, v55);
  v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v26 = swift_allocObject();
  v27 = v57;
  *(v26 + 16) = v56;
  *(v26 + 24) = v27;
  (*(v8 + 32))(v26 + v25, v10, v24);
  sub_100002D08(&qword_10005D460, &qword_100046908);
  sub_1000219C4();
  sub_1000418A0();

  v71 = v65[3];
  v72 = v65[4];
  v73 = v65[5];
  v74 = v66;
  v67 = v64;
  v68 = v65[0];
  v69 = v65[1];
  v70 = v65[2];
  sub_10000E9F0(&v67, &qword_10005D460, &qword_100046908);
  v28 = v23 + *(v24 + 36);
  v29 = *(v28 + 24);
  if (v29)
  {
    *&v64 = *(v28 + 16);
    *(&v64 + 1) = v29;
    sub_1000024FC();

    v30 = sub_100041860();
    v32 = v31;
    v34 = v33;
    sub_1000417A0();
    v35 = sub_100041840();
    v57 = v36;
    v58 = v35;
    v38 = v37;
    v56 = v39;

    sub_100002550(v30, v32, v34 & 1);

    v55 = swift_getKeyPath();
    LOBYTE(v64) = v38 & 1;
    v40 = v38 & 1;
    v41 = 65537;
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v40 = 0;
    v55 = 0;
    v56 = 0;
    v41 = 0;
  }

  v43 = v59;
  v42 = v60;
  v44 = *(v59 + 16);
  v45 = v62;
  v44(v62, v63, v60);
  v46 = v61;
  v44(v61, v45, v42);
  v47 = &v46[*(sub_100002D08(&qword_10005D480, qword_100046918) + 48)];
  v49 = v57;
  v48 = v58;
  *v47 = v58;
  *(v47 + 1) = v49;
  v50 = v55;
  v51 = v56;
  *(v47 + 2) = v40;
  *(v47 + 3) = v51;
  *(v47 + 4) = v50;
  v47[42] = BYTE2(v41);
  *(v47 + 20) = v41;
  sub_100021AA8(v48, v49, v40, v51, v50);
  v52 = *(v43 + 8);
  v52(v63, v42);
  sub_100021AF8(v48, v49, v40, v51, v50);
  return (v52)(v62, v42);
}

uint64_t sub_100020128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000411A0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100041150();
  __chkstk_darwin(v9 - 8);
  v11 = a1 + *(type metadata accessor for FriendInviteInfoCardView(0, a2, a3, v10) + 36);
  v12 = *v11;
  v13 = [*v11 displayNameWithOptions:0];
  if (!v13)
  {
    v13 = [v12 displayName];
  }

  v14 = v13;
  sub_100041B20();

  sub_100041190();
  sub_100041160();
  sub_1000417A0();
  v15 = sub_1000417B0();

  *&v33 = v15;
  sub_100021B48();
  sub_100041170();
  v16 = sub_100041850();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  v24 = v20 & 1;
  v43 = v20 & 1;
  if (*(v11 + 8) == 1)
  {
    v25 = sub_100041930();
    LODWORD(v28) = sub_100041710();
    v26 = sub_100041790();
    v27 = swift_getKeyPath();
    v28 = v28;
  }

  else
  {
    v25 = 0;
    v28 = 0;
    v27 = 0;
    v26 = 0;
  }

  *&v31 = v16;
  *(&v31 + 1) = v18;
  v32[0] = v24;
  *&v32[1] = *v42;
  *&v32[4] = *&v42[3];
  *&v32[8] = v22;
  *&v32[16] = KeyPath;
  *&v32[24] = 1;
  v32[26] = 1;
  v33 = v31;
  *v34 = *v32;
  *&v34[11] = *&v32[11];
  sub_100021B9C(&v31, v35, &qword_10005D3A8, &qword_100046838);
  sub_100021C04(v25, v28, v27, v26);
  sub_100021C54(v25, v28, v27, v26);
  v29 = *v34;
  *a4 = v33;
  *(a4 + 16) = v29;
  *(a4 + 32) = *&v34[16];
  *(a4 + 48) = v25;
  *(a4 + 56) = v28;
  *(a4 + 64) = v27;
  *(a4 + 72) = v26;
  sub_100021C54(v25, v28, v27, v26);
  v35[0] = v16;
  v35[1] = v18;
  v36 = v24;
  *v37 = *v42;
  *&v37[3] = *&v42[3];
  v38 = v22;
  v39 = KeyPath;
  v40 = 1;
  v41 = 1;
  return sub_10000E9F0(v35, &qword_10005D3A8, &qword_100046838);
}

uint64_t sub_100020474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FriendInviteInfoCardView(0, a2, a3, a4);
  v6 = a1 + *(result + 36);
  if (*(v6 + 8) == 1)
  {
    v7 = *(v6 + 72);
    v8 = [*v6 internal];
    v9 = [v8 playerID];

    v10 = sub_100041B20();
    v12 = v11;

    v7(v10, v12);
  }

  return result;
}

uint64_t sub_100020548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a2;
  v54 = a3;
  v6 = sub_100002D08(&qword_10005D440, &qword_1000468E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = sub_100041820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v56 = sub_100041FB0();
  v57 = v13;
  v49 = sub_1000024FC();
  v14 = sub_100041860();
  v46 = v16;
  v47 = v15;
  v18 = v17;
  (*(v10 + 104))(v12, enum case for Font.TextStyle.headline(_:), v9);
  v19 = enum case for Font.Design.rounded(_:);
  v20 = sub_1000417C0();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v8, v19, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  sub_1000417D0();
  sub_10000E9F0(v8, &qword_10005D440, &qword_1000468E8);
  (*(v10 + 8))(v12, v9);
  v22 = v47;
  v23 = sub_100041840();
  v50 = v24;
  v51 = v23;
  v48 = v25;
  v52 = v26;

  sub_100002550(v14, v22, v18 & 1);

  v56 = v53;
  v57 = v54;

  v27 = sub_100041860();
  v29 = v28;
  LOBYTE(v22) = v30;
  sub_1000417F0();
  v31 = sub_100041840();
  v33 = v32;
  LOBYTE(v12) = v34;

  sub_100002550(v27, v29, v22 & 1);

  LODWORD(v56) = sub_100041720();
  v35 = sub_100041830();
  v37 = v36;
  LOBYTE(v22) = v38;
  v40 = v39;
  sub_100002550(v31, v33, v12 & 1);

  v41 = v48 & 1;
  v55 = v48 & 1;
  LOBYTE(v56) = v48 & 1;
  LOBYTE(v22) = v22 & 1;
  v58 = v22;
  v43 = v50;
  v42 = v51;
  *a4 = v51;
  *(a4 + 8) = v43;
  *(a4 + 16) = v41;
  *(a4 + 24) = v52;
  *(a4 + 32) = v35;
  *(a4 + 40) = v37;
  *(a4 + 48) = v22;
  *(a4 + 56) = v40;
  v44 = v42;
  sub_100011D44(v42, v43, v41);

  sub_100011D44(v35, v37, v22);

  sub_100002550(v35, v37, v22);

  sub_100002550(v44, v43, v55);
}

uint64_t sub_100020944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FriendInviteInfoCardView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_100002D08(&qword_10005D418, &qword_1000468C8);
  sub_100003214(&qword_10005D420, &qword_10005D418, &qword_1000468C8, &protocol conformance descriptor for TupleView<A>);
  return sub_1000419B0();
}

uint64_t sub_100020AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1000419A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002D08(&qword_10005D428, &qword_1000468D0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  result = type metadata accessor for FriendInviteInfoCardView(0, a3, a4, v20);
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v38 = v13;
  v22 = *(a2 + *(result + 36) + 32);
  if (*(v22 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v39 = v10;
  v23 = (v22 + 24 * a1);
  v24 = v23[4];
  v25 = v23[5];
  v26 = v23[6];

  v40 = sub_100041690();
  LOBYTE(v41[0]) = 1;
  sub_100020548(v24, v25, v26, &v43);
  *&v46[7] = v43;
  *&v46[23] = *v44;
  *&v46[39] = *&v44[16];
  *&v46[55] = *&v44[32];

  v27 = v41[0];
  if (*(v22 + 16) - 1 <= a1)
  {
    (*(v11 + 56))(v19, 1, 1, v39);
  }

  else
  {
    v28 = v38;
    sub_100041990();
    v29 = v28;
    v30 = v39;
    (*(v11 + 32))(v19, v29, v39);
    (*(v11 + 56))(v19, 0, 1, v30);
  }

  sub_100021B9C(v19, v17, &qword_10005D428, &qword_1000468D0);
  v31 = v40;
  v41[0] = v40;
  v41[1] = 0;
  v42[0] = v27;
  *&v42[1] = *v46;
  *&v42[17] = *&v46[16];
  *&v42[33] = *&v46[32];
  *&v42[49] = *&v46[48];
  *&v42[64] = *&v46[63];
  v32 = *v42;
  *a5 = v40;
  *(a5 + 16) = v32;
  v33 = *&v42[16];
  v34 = *&v42[32];
  v35 = *&v42[48];
  *(a5 + 80) = *&v42[64];
  *(a5 + 48) = v34;
  *(a5 + 64) = v35;
  *(a5 + 32) = v33;
  v36 = sub_100002D08(&qword_10005D430, &qword_1000468D8);
  sub_100021B9C(v17, a5 + *(v36 + 48), &qword_10005D428, &qword_1000468D0);
  sub_100021B9C(v41, &v43, &qword_10005D438, &qword_1000468E0);
  sub_10000E9F0(v19, &qword_10005D428, &qword_1000468D0);
  sub_10000E9F0(v17, &qword_10005D428, &qword_1000468D0);
  v43 = v31;
  v44[0] = v27;
  *&v44[17] = *&v46[16];
  *&v44[33] = *&v46[32];
  *v45 = *&v46[48];
  *&v45[15] = *&v46[63];
  *&v44[1] = *v46;
  return sub_10000E9F0(&v43, &qword_10005D438, &qword_1000468E0);
}

unint64_t sub_100020F6C()
{
  result = qword_10005D360;
  if (!qword_10005D360)
  {
    sub_1000025E8(&qword_10005D350, &unk_100046810);
    sub_100020FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D360);
  }

  return result;
}

unint64_t sub_100020FF8()
{
  result = qword_10005D368;
  if (!qword_10005D368)
  {
    sub_100041340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D368);
  }

  return result;
}

unint64_t sub_100021050()
{
  result = qword_10005D378;
  if (!qword_10005D378)
  {
    sub_1000025E8(&qword_10005D370, &qword_100046820);
    sub_1000210D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D378);
  }

  return result;
}

unint64_t sub_1000210D4()
{
  result = qword_10005D380;
  if (!qword_10005D380)
  {
    sub_1000025E8(&qword_10005D388, &qword_100046828);
    sub_10002118C();
    sub_100003214(&qword_10005D3E0, &qword_10005D3E8, &qword_100046CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D380);
  }

  return result;
}

unint64_t sub_10002118C()
{
  result = qword_10005D390;
  if (!qword_10005D390)
  {
    sub_1000025E8(&qword_10005D398, &qword_100046830);
    sub_100021244();
    sub_100003214(&qword_10005D3D0, &qword_10005D3D8, &unk_100046850, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D390);
  }

  return result;
}

unint64_t sub_100021244()
{
  result = qword_10005D3A0;
  if (!qword_10005D3A0)
  {
    sub_1000025E8(&qword_10005D3A8, &qword_100046838);
    sub_1000212D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D3A0);
  }

  return result;
}

unint64_t sub_1000212D0()
{
  result = qword_10005D3B0;
  if (!qword_10005D3B0)
  {
    sub_1000025E8(&qword_10005D3B8, &qword_100046840);
    sub_100003214(&qword_10005D3C0, &qword_10005D3C8, &qword_100046848, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D3B0);
  }

  return result;
}

unint64_t sub_100021388()
{
  result = qword_10005D3F0;
  if (!qword_10005D3F0)
  {
    sub_1000025E8(&qword_10005D340, &qword_100046800);
    sub_100003214(&qword_10005D3F8, &qword_10005D338, &qword_1000467F8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D3F0);
  }

  return result;
}

uint64_t sub_100021438(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005D328, &qword_1000467E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000214A8()
{
  result = qword_10005D408;
  if (!qword_10005D408)
  {
    sub_1000025E8(&qword_10005D330, &qword_1000467F0);
    sub_100021050();
    sub_100021388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D408);
  }

  return result;
}

uint64_t sub_100021534(uint64_t a1)
{
  v2 = sub_100002D08(&qword_10005D328, &qword_1000467E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002159C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005D338, &qword_1000467F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002160C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000415A0();
  *a1 = result;
  return result;
}

uint64_t sub_100021660@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000415C0();
  *a1 = result;
  return result;
}

uint64_t sub_10002168C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000415C0();
  *a1 = result;
  return result;
}

uint64_t sub_100021710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for FriendInviteInfoCardView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100020AF8(a1, v9, v6, v7, a3);
}

uint64_t sub_1000217AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FriendInviteInfoCardView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  sub_100002D08(&qword_10005D358, &qword_100047220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_100041680();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_10002192C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FriendInviteInfoCardView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

unint64_t sub_1000219C4()
{
  result = qword_10005D468;
  if (!qword_10005D468)
  {
    sub_1000025E8(&qword_10005D460, &qword_100046908);
    sub_100003214(&qword_10005D470, &qword_10005D478, &qword_100046910, &protocol conformance descriptor for HStack<A>);
    sub_100003214(&qword_10005D3E0, &qword_10005D3E8, &qword_100046CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D468);
  }

  return result;
}

uint64_t sub_100021AA8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_100011D44(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100021AF8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_100002550(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100021B48()
{
  result = qword_10005D488;
  if (!qword_10005D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D488);
  }

  return result;
}

uint64_t sub_100021B9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002D08(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100021C04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100021C54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100021CD0()
{
  sub_1000025E8(&qword_10005D320, &qword_1000467E0);
  sub_1000025E8(&qword_10005D328, &qword_1000467E8);
  sub_1000025E8(&qword_10005D330, &qword_1000467F0);
  swift_getTupleTypeMetadata();
  sub_1000419F0();
  swift_getWitnessTable();
  sub_100041980();
  return swift_getWitnessTable();
}

id sub_100021F10(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LoadingStatusView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100021FAC()
{
  *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_maxRowsPerSection] = 2;
  *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_sectionInfo] = &_swiftEmptyDictionarySingleton;
  v1 = &v0[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_contentSize];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_itemAttributes] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_headerAttributes] = &_swiftEmptyDictionarySingleton;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for WideFlowLayout();
  v2 = objc_msgSendSuper2(&v4, "init");
  [v2 setScrollDirection:1];
  [v2 setHeaderReferenceSize:{0.0, 36.0}];
  [v2 setEstimatedItemSize:{42.0, 42.0}];
  [v2 setSectionInset:{0.0, 16.0, 0.0, 16.0}];

  return v2;
}

id sub_1000220D4(void *a1)
{
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_maxRowsPerSection] = 2;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_sectionInfo] = &_swiftEmptyDictionarySingleton;
  v3 = &v1[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_contentSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_itemAttributes] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_headerAttributes] = &_swiftEmptyDictionarySingleton;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for WideFlowLayout();
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setScrollDirection:1];
    [v6 setHeaderReferenceSize:{0.0, 36.0}];
    [v6 setEstimatedItemSize:{42.0, 42.0}];
    [v6 setSectionInset:{0.0, 16.0, 0.0, 16.0}];
  }

  return v5;
}

void sub_100022234()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 numberOfSections];
    v5 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_sectionInfo;
    swift_beginAccess();
    *&v0[v5] = &_swiftEmptyDictionarySingleton;

    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4)
      {
        v57 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_maxRowsPerSection;
        type metadata accessor for SectionInfo();
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v8 = swift_allocObject();
          *(v8 + 16) = 0u;
          *(v8 + 32) = 0u;
          *(v8 + 48) = 0u;
          *(v8 + 64) = 0u;
          *(v8 + 80) = 0u;
          *(v8 + 96) = 0u;
          *(v8 + 112) = 0;
          v9 = [v3 numberOfItemsInSection:v7];
          *(v8 + 16) = v9;
          v10 = *&v1[v57];
          *(v8 + 32) = v10;
          if (!v10)
          {
            goto LABEL_44;
          }

          if (v9 == 0x8000000000000000 && v10 == -1)
          {
            goto LABEL_47;
          }

          v12 = v9 / v10;
          v13 = __OFADD__(v12, 1);
          v14 = v12 + 1;
          if (v13)
          {
            goto LABEL_45;
          }

          v15 = v3;
          *(v8 + 24) = v14;
          [v1 headerReferenceSize];
          *(v8 + 40) = v16;
          *(v8 + 48) = v17;
          [v1 estimatedItemSize];
          *(v8 + 56) = v18;
          *(v8 + 64) = v19;
          [v1 minimumInteritemSpacing];
          v21 = v20;
          [v1 minimumLineSpacing];
          *(v8 + 104) = v21;
          *(v8 + 112) = v22;
          if (*(v8 + 24) > v6)
          {
            v6 = *(v8 + 24);
          }

          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v24 = *&v1[v5];
          *&v1[v5] = 0x8000000000000000;
          v25 = sub_100030008(v7);
          v27 = v24[2];
          v28 = (v26 & 1) == 0;
          v13 = __OFADD__(v27, v28);
          v29 = v27 + v28;
          if (v13)
          {
            goto LABEL_46;
          }

          v30 = v26;
          if (v24[3] < v29)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_20;
          }

          v34 = v25;
          sub_100023E3C();
          v25 = v34;
          if (v30)
          {
LABEL_5:
            *(v24[7] + 8 * v25) = v8;

            goto LABEL_6;
          }

LABEL_21:
          v24[(v25 >> 6) + 8] |= 1 << v25;
          *(v24[6] + 8 * v25) = v7;
          *(v24[7] + 8 * v25) = v8;
          v32 = v24[2];
          v13 = __OFADD__(v32, 1);
          v33 = v32 + 1;
          if (v13)
          {
            goto LABEL_48;
          }

          v24[2] = v33;
LABEL_6:
          ++v7;
          *&v1[v5] = v24;
          swift_endAccess();

          v3 = v15;
          if (v4 == v7)
          {
            goto LABEL_26;
          }
        }

        sub_10002359C(v29, isUniquelyReferenced_nonNull_native);
        v25 = sub_100030008(v7);
        if ((v30 & 1) != (v31 & 1))
        {
          goto LABEL_52;
        }

LABEL_20:
        if (v30)
        {
          goto LABEL_5;
        }

        goto LABEL_21;
      }

      v6 = 0;
LABEL_26:
      [v1 sectionInset];
      v36 = v35;
      [v1 sectionInset];
      v38 = v37;
      v39 = 0;
      v40 = 0.0;
      while (1)
      {
        if (v4 == v39)
        {

          v56 = &v1[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_contentSize];
          *v56 = v40;
          v56[1] = v38 + -50.0;
          return;
        }

        if (v39 >= v4)
        {
          break;
        }

        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_41;
        }

        v42 = *&v1[v5];
        if (!*(v42 + 16))
        {
          goto LABEL_42;
        }

        v43 = sub_100030008(v39);
        if ((v44 & 1) == 0)
        {
          goto LABEL_43;
        }

        v45 = *(*(v42 + 56) + 8 * v43);
        v46 = *(v45 + 16);
        ++v39;
        if (v46 >= 1)
        {
          *(v45 + 72) = v36;
          *(v45 + 80) = v38;
          if (!v6)
          {
            goto LABEL_50;
          }

          v47 = v46 / v6;
          v13 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v13)
          {
            goto LABEL_51;
          }

          *(v45 + 24) = v6;
          *(v45 + 32) = v48;
          v49 = v48;

          [v1 headerReferenceSize];
          v51 = v50;
          [v1 estimatedItemSize];
          v53 = v51 + (v52 + *(v45 + 112)) * v49;
          [v1 estimatedItemSize];
          v55 = (v54 + *(v45 + 104)) * v6 - *(v45 + 104);
          *(v45 + 88) = v55;
          *(v45 + 96) = v53;

          if (v55 > v40)
          {
            v40 = v55;
          }

          v38 = v38 + v53;
          v39 = v41;
        }
      }

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
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    sub_100041FE0();
    __break(1u);
  }
}

void sub_100022690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000412F0();
  v82 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v92 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v87 = &v75 - v8;
  __chkstk_darwin(v7);
  v10 = &v75 - v9;
  v11 = type metadata accessor for WideFlowLayout();
  v96.receiver = v2;
  v96.super_class = v11;
  objc_msgSendSuper2(&v96, "prepareLayout");
  v12 = [v2 collectionView];
  if (!v12)
  {
    return;
  }

  v76 = v12;
  [v12 bounds];
  if (v13 <= 0.0 || (v14 = v13, sub_100022234(), v15 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_sectionInfo, swift_beginAccess(), v80 = v15, v16 = *(*&v2[v15] + 16), v94 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_itemAttributes, v81 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_headerAttributes, swift_beginAccess(), (v79 = v16) == 0))
  {
LABEL_45:

    return;
  }

  v90 = 0;
  v17 = (v82 + 8);
  v86 = (v82 + 32);
  v77 = UICollectionElementKindSectionHeader;
  v89 = (v82 + 16);
  v78 = (v82 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v83 = v10;
  v84 = (v82 + 8);
  while (1)
  {
    v18 = *&v3[v80];
    if (!*(v18 + 16))
    {
      goto LABEL_50;
    }

    v19 = sub_100030008(v90);
    if ((v20 & 1) == 0)
    {
      break;
    }

    v21 = *(*(v18 + 56) + 8 * v19);
    if (*(v21 + 16) < 1)
    {
      goto LABEL_7;
    }

    sub_1000412E0();
    v22 = *&v3[v81];
    if (*(v22 + 16))
    {

      v24 = sub_10003004C(v10, v23);
      if (v25)
      {
        v26 = *(*(v22 + 56) + 8 * v24);

LABEL_16:
        v29 = v26;
        v30 = v29;
        v31 = *(v21 + 40);
        if (v31 == 0.0)
        {
          v31 = v14;
        }

        [v29 setFrame:{*(v21 + 72), *(v21 + 80), v31, *(v21 + 48)}];
        v32 = v81;
        swift_beginAccess();
        v33 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = *&v3[v32];
        *&v3[v32] = 0x8000000000000000;
        sub_100023BB8(v33, v10, isUniquelyReferenced_nonNull_native);
        *&v3[v32] = v95;
        swift_endAccess();

        v35 = *(v21 + 16);
        if (v35 < 0)
        {
          goto LABEL_52;
        }

        goto LABEL_21;
      }
    }

    v27 = v77;
    isa = sub_1000412C0().super.isa;
    v26 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v27 withIndexPath:isa];

    if (v26)
    {
      goto LABEL_16;
    }

    v30 = 0;
    v35 = *(v21 + 16);
    if (v35 < 0)
    {
      goto LABEL_52;
    }

LABEL_21:
    if (v35)
    {
      swift_beginAccess();
      v36 = 0;
      v85 = v21;
      v88 = v35;
      while (1)
      {
        v41 = v87;
        sub_1000412E0();
        v42 = *v17;
        (*v17)(v10, v4);
        (*v86)(v10, v41, v4);
        v43 = *&v3[v94];
        v44 = *(v43 + 16);
        v93 = v42;
        if (v44)
        {

          v46 = sub_10003004C(v10, v45);
          if (v47)
          {
            v48 = *(*(v43 + 56) + 8 * v46);

            goto LABEL_31;
          }
        }

        v49 = sub_1000412C0().super.isa;
        v48 = [objc_opt_self() layoutAttributesForCellWithIndexPath:v49];

        if (!v48)
        {
          v30 = 0;
          v40 = v88;
          v39 = v93;
          goto LABEL_25;
        }

LABEL_31:
        v50 = v48;
        if (!*(v21 + 24))
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v51 = v50;
        sub_100041320();
        [v51 setFrame:?];
        v52 = *v89;
        v53 = v92;
        (*v89)(v92, v10, v4);
        v54 = v3;
        v55 = v94;
        swift_beginAccess();
        v91 = v51;
        v56 = v51;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v95 = *&v54[v55];
        v58 = v95;
        *&v54[v55] = 0x8000000000000000;
        v61 = sub_10003004C(v53, v59);
        v62 = v58[2];
        v63 = (v60 & 1) == 0;
        v64 = v62 + v63;
        if (__OFADD__(v62, v63))
        {
          goto LABEL_48;
        }

        v65 = v60;
        if (v58[3] >= v64)
        {
          if (v57)
          {
            v69 = v95;
            if ((v60 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            sub_100023FE4(v64, v60);
            v69 = v95;
            if ((v65 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          sub_10002380C(v64, v57);
          v67 = sub_10003004C(v92, v66);
          if ((v65 & 1) != (v68 & 1))
          {
            goto LABEL_53;
          }

          v61 = v67;
          v69 = v95;
          if ((v65 & 1) == 0)
          {
LABEL_39:
            v69[(v61 >> 6) + 8] |= 1 << v61;
            v70 = v92;
            v52(v69[6] + *(v82 + 72) * v61, v92, v4);
            *(v69[7] + 8 * v61) = v56;
            v71 = v70;
            v17 = v84;
            v39 = v93;
            v93(v71, v4);
            v72 = v69[2];
            v73 = __OFADD__(v72, 1);
            v74 = v72 + 1;
            if (v73)
            {
              goto LABEL_49;
            }

            v69[2] = v74;
            goto LABEL_24;
          }
        }

        v37 = v69[7];
        v38 = *(v37 + 8 * v61);
        *(v37 + 8 * v61) = v56;

        v39 = v93;
        v17 = v84;
        v93(v92, v4);
LABEL_24:
        v3 = v54;
        *&v54[v94] = v69;

        swift_endAccess();

        v10 = v83;
        v21 = v85;
        v30 = v91;
        v40 = v88;
LABEL_25:
        if (v40 == ++v36)
        {

          v39(v10, v4);
          goto LABEL_6;
        }
      }
    }

    (*v17)(v10, v4);
LABEL_6:

LABEL_7:
    if (++v90 == v79)
    {
      goto LABEL_45;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  sub_100041FE0();
  __break(1u);
}

void sub_100022EB4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_itemAttributes;
  swift_beginAccess();
  v11 = *&v5[v10];
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = *(*(v11 + 56) + ((v17 << 9) | (8 * v18)));
        [v19 frame];
        v42.origin.x = v20;
        v42.origin.y = v21;
        v42.size.width = v22;
        v42.size.height = v23;
        v40.origin.x = a1;
        v40.origin.y = a2;
        v40.size.width = a3;
        v40.size.height = a4;
        if (CGRectIntersectsRect(v40, v42))
        {
          sub_100041EF0();
          sub_100041F10();
          sub_100041F20();
          sub_100041F00();
          v16 = v17;
          if (!v14)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v16 = v17;
          if (!v14)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v17 = v16;
      }
    }
  }

  v24 = [v5 collectionView];
  if (!v24)
  {
    goto LABEL_29;
  }

  v25 = v24;
  [v24 contentOffset];
  v27 = v26;

  [v5 sectionInset];
  v29 = v27 + v28;
  v30 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_headerAttributes;
  swift_beginAccess();
  v31 = *&v5[v30];
  v32 = 1 << *(v31 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v31 + 64);
  v35 = (v32 + 63) >> 6;

  v36 = 0;
  if (v34)
  {
    goto LABEL_19;
  }

LABEL_20:
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      sub_100024258(_swiftEmptyArrayStorage);
      return;
    }

    v34 = *(v31 + 64 + 8 * v37);
    ++v36;
    if (v34)
    {
      while (1)
      {
        v38 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v39 = *(*(v31 + 56) + ((v37 << 9) | (8 * v38)));
        [v39 frame];
        [v39 setFrame:v29];
        [v39 frame];
        v43.origin.x = a1;
        v43.origin.y = a2;
        v43.size.width = a3;
        v43.size.height = a4;
        if (CGRectIntersectsRect(v41, v43))
        {
          sub_100041EF0();
          sub_100041F10();
          sub_100041F20();
          sub_100041F00();
          v36 = v37;
          if (!v34)
          {
            goto LABEL_20;
          }
        }

        else
        {

          v36 = v37;
          if (!v34)
          {
            goto LABEL_20;
          }
        }

LABEL_19:
        v37 = v36;
      }
    }
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void *sub_1000232C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_100041B20() == a1 && v6 == a2)
  {
  }

  else
  {
    v8 = sub_100041FC0();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_headerAttributes;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (!*(v10 + 16))
  {
    return 0;
  }

  v12 = sub_10003004C(a3, v11);
  if (v13)
  {
    v14 = *(*(v10 + 56) + 8 * v12);
    v15 = v14;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_1000234E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WideFlowLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002359C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002D08(&qword_10005D6B8, &qword_1000469D8);
  result = sub_100041F70();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_100041FF0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10002380C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000412F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100002D08(&qword_10005D6D8, &qword_1000469E8);
  v42 = v4;
  result = sub_100041F70();
  v10 = result;
  if (*(v8 + 16))
  {
    v46 = v5;
    v38 = v2;
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
    v39 = (v6 + 16);
    v40 = v8;
    v41 = v6;
    v44 = (v6 + 32);
    v17 = result + 64;
    v18 = v43;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v45 = *(v41 + 72);
      v25 = v24 + v45 * v23;
      if (v42)
      {
        v26 = (*v44)(v18, v25, v46);
        v28 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v39)(v18, v25, v46);
        v26 = *(*(v8 + 56) + 8 * v23);
        v28 = v26;
      }

      sub_100024654(v26, v27);
      result = sub_100041AA0();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v18 = v43;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v18 = v43;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)((*(v10 + 48) + v45 * v19), v18, v46);
      *(*(v10 + 56) + 8 * v19) = v28;
      ++*(v10 + 16);
      v8 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

void sub_100023BB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000412F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v15 = sub_10003004C(a2, v13);
  v16 = v12[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100023FE4(v18, v14);
      goto LABEL_7;
    }

    sub_10002380C(v18, a3 & 1);
    v25 = sub_10003004C(a2, v24);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_100023D84(v15, v11, a1, v21);
      return;
    }

LABEL_15:
    sub_100041FE0();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_100023D84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000412F0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_100023E3C()
{
  v1 = v0;
  sub_100002D08(&qword_10005D6B8, &qword_1000469D8);
  v2 = *v0;
  v3 = sub_100041F60();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

unint64_t sub_100023F98()
{
  result = qword_10005D6C0;
  if (!qword_10005D6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005D6C0);
  }

  return result;
}

char *sub_100023FE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = sub_1000412F0();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002D08(&qword_10005D6D8, &qword_1000469E8);
  v5 = *v2;
  v6 = sub_100041F60();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v3;
    v29 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;
        result = v25;
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v28;
        v7 = v34;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v3 = v7;
  }

  return result;
}

uint64_t sub_100024258(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100041F50();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_100041F50();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100024348(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100024470(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100024348(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_100041F50();
LABEL_9:
  result = sub_100041ED0();
  *v2 = result;
  return result;
}

void (*sub_1000243E8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100041EC0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100024468;
  }

  __break(1u);
  return result;
}

uint64_t sub_100024470(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100041F50();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100041F50();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000245F0();
          for (i = 0; i != v6; ++i)
          {
            sub_100002D08(&qword_10005D6C8, &qword_1000469E0);
            v9 = sub_1000243E8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100023F98();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000245F0()
{
  result = qword_10005D6D0;
  if (!qword_10005D6D0)
  {
    sub_1000025E8(&qword_10005D6C8, &qword_1000469E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D6D0);
  }

  return result;
}

unint64_t sub_100024654(uint64_t a1, uint64_t a2)
{
  result = qword_10005DBC0;
  if (!qword_10005DBC0)
  {
    sub_1000412F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DBC0);
  }

  return result;
}

uint64_t sub_1000246AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000246F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100024760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_1000411A0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100041150();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = [a1 displayNameWithOptions:{0, v19}];
  if (!v11)
  {
    v11 = [a1 displayName];
  }

  v12 = v11;
  sub_100041B20();

  sub_100041190();
  sub_100041160();
  sub_100041800();
  v13 = sub_1000417B0();

  v20 = v13;
  sub_100021B48();
  sub_100041170();
  v14 = GKGameCenterUIFrameworkBundle();
  v18._countAndFlagsBits = 0xE000000000000000;
  v21._object = 0x8000000100043FE0;
  v21._countAndFlagsBits = 0xD000000000000020;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v15.super.isa = v14;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_100041180(v21, v22, v15, v23, 0, v18);

  sub_100041190();
  sub_100041160();
  v20 = sub_100041800();
  sub_100041170();
  sub_100041140();
  v16 = *(v5 + 8);
  v16(v8, v4);
  return (v16)(v10, v4);
}

uint64_t sub_100024A08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v51 = a4;
  v7 = sub_100002D08(&qword_10005D6E8, &qword_100046AB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_100002D08(&qword_10005D6F0, &qword_100046AC0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = sub_100002D08(&qword_10005D6F8, &qword_100046AC8);
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = __chkstk_darwin(v13);
  v48 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v52 = &v44 - v16;
  v17 = sub_1000419A0();
  v46 = *(v17 - 8);
  v18 = v46;
  v47 = v17;
  v19 = __chkstk_darwin(v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v44 - v22;
  v45 = &v44 - v22;
  sub_100041990();
  *v9 = sub_100041630();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  v24 = sub_100002D08(&qword_10005D700, &qword_100046AD0);
  sub_100024EA4(a1, a2, a3, &v9[*(v24 + 44)]);
  sub_1000419E0();
  sub_100041550();
  sub_100025688(v9, v12);
  v25 = &v12[*(v10 + 36)];
  v26 = v58;
  *(v25 + 4) = v57;
  *(v25 + 5) = v26;
  *(v25 + 6) = v59;
  v27 = v54;
  *v25 = v53;
  *(v25 + 1) = v27;
  v28 = v56;
  *(v25 + 2) = v55;
  *(v25 + 3) = v28;
  v29 = swift_allocObject();
  v29[2] = a1;
  v29[3] = a2;
  v29[4] = a3;
  sub_100025744();
  v30 = a1;

  v31 = v52;
  sub_1000418A0();

  sub_10000E9F0(v12, &qword_10005D6F0, &qword_100046AC0);
  v32 = *(v18 + 16);
  v44 = v21;
  v33 = v47;
  v32(v21, v23, v47);
  v34 = v48;
  v35 = v49;
  v36 = *(v49 + 16);
  v37 = v31;
  v38 = v50;
  v36(v48, v37, v50);
  v39 = v51;
  v32(v51, v21, v33);
  v40 = &v39[*(sub_100002D08(&qword_10005D718, &qword_100046AD8) + 48)];
  v36(v40, v34, v38);
  v41 = *(v35 + 8);
  v41(v52, v38);
  v42 = *(v46 + 8);
  v42(v45, v33);
  v41(v34, v38);
  return (v42)(v44, v33);
}

uint64_t sub_100024EA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v26 = a3;
  v6 = sub_100002D08(&qword_10005D720, &unk_100046AE0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_100002D08(&qword_10005D350, &unk_100046810);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  v19 = [a1 internal];
  sub_100041330();
  sub_1000419D0();
  sub_100041500();
  v20 = &v18[*(v13 + 44)];
  v21 = v28;
  *v20 = v27;
  *(v20 + 1) = v21;
  *(v20 + 2) = v29;
  *v11 = sub_1000416A0();
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = 0;
  v22 = sub_100002D08(&qword_10005D728, &qword_100046AF0);
  sub_100025130(a1, &v11[*(v22 + 44)]);
  sub_100021B9C(v18, v16, &qword_10005D350, &unk_100046810);
  sub_100021B9C(v11, v9, &qword_10005D720, &unk_100046AE0);
  sub_100021B9C(v16, a4, &qword_10005D350, &unk_100046810);
  v23 = sub_100002D08(&qword_10005D730, &qword_100046AF8);
  sub_100021B9C(v9, a4 + *(v23 + 48), &qword_10005D720, &unk_100046AE0);
  sub_10000E9F0(v11, &qword_10005D720, &unk_100046AE0);
  sub_10000E9F0(v18, &qword_10005D350, &unk_100046810);
  sub_10000E9F0(v9, &qword_10005D720, &unk_100046AE0);
  return sub_10000E9F0(v16, &qword_10005D350, &unk_100046810);
}

uint64_t sub_100025130@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100041660();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D08(&qword_10005D738, &unk_100046B00);
  v7 = __chkstk_darwin(v6 - 8);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v46 - v9;
  v10 = sub_100041150();
  __chkstk_darwin(v10 - 8);
  sub_100024760(a1, &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100041850();
  v46 = v13;
  v47 = v12;
  v48 = v14;
  v49 = v15;
  v16 = GKGameCenterUIFrameworkBundle();
  v45._countAndFlagsBits = 0xE000000000000000;
  v60._object = 0x8000000100044010;
  v60._countAndFlagsBits = 0xD00000000000001DLL;
  v61.value._countAndFlagsBits = 0;
  v61.value._object = 0;
  v17.super.isa = v16;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  v18 = sub_100041180(v60, v61, v17, v62, 0, v45);
  v20 = v19;

  v55 = v18;
  v56 = v20;
  sub_1000024FC();
  v21 = sub_100041860();
  v23 = v22;
  LOBYTE(v20) = v24;
  sub_100041800();
  sub_1000417B0();

  v25 = sub_100041840();
  v27 = v26;
  v29 = v28;

  sub_100002550(v21, v23, v20 & 1);

  v55 = sub_100041900();
  v30 = sub_100041830();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_100002550(v25, v27, v29 & 1);

  v55 = v30;
  v56 = v32;
  v37 = v34 & 1;
  v57 = v34 & 1;
  v58 = v36;
  v59 = 256;
  v38 = v51;
  sub_100041650();
  sub_100002D08(&unk_10005C590, &unk_100045930);
  sub_100002564();
  v39 = v50;
  sub_1000418D0();
  (*(v53 + 8))(v38, v54);
  sub_100002550(v30, v32, v37);

  v40 = v52;
  sub_100021B9C(v39, v52, &qword_10005D738, &unk_100046B00);
  v42 = v46;
  v41 = v47;
  *a2 = v47;
  *(a2 + 8) = v42;
  LOBYTE(v21) = v48 & 1;
  *(a2 + 16) = v48 & 1;
  *(a2 + 24) = v49;
  *(a2 + 32) = 256;
  v43 = sub_100002D08(&qword_10005D740, &qword_100046B10);
  sub_100021B9C(v40, a2 + *(v43 + 48), &qword_10005D738, &unk_100046B00);
  sub_100011D44(v41, v42, v21);

  sub_10000E9F0(v39, &qword_10005D738, &unk_100046B00);
  sub_10000E9F0(v40, &qword_10005D738, &unk_100046B00);
  sub_100002550(v41, v42, v21);
}

uint64_t sub_10002557C(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = [a1 internal];
  v4 = [v3 playerID];

  v5 = sub_100041B20();
  v7 = v6;

  a2(v5, v7);
}

uint64_t sub_10002561C@<X0>(uint64_t a6@<X8>)
{
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = *(v6 + 16);
  *a6 = sub_100041690();
  *(a6 + 8) = 0x4024000000000000;
  *(a6 + 16) = 0;
  v11 = sub_100002D08(&qword_10005D6E0, &qword_100046AB0);
  return sub_100024A08(v8, v9, v10, (a6 + *(v11 + 44)));
}

uint64_t sub_100025688(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005D6E8, &qword_100046AB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000256F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100025744()
{
  result = qword_10005D708;
  if (!qword_10005D708)
  {
    sub_1000025E8(&qword_10005D6F0, &qword_100046AC0);
    sub_100003214(&qword_10005D710, &qword_10005D6E8, &qword_100046AB8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D708);
  }

  return result;
}

id sub_1000258A8()
{
  v1 = *v0;
  v2 = swift_isaMask;
  *(v0 + qword_10005D758) = 0;
  *(v0 + qword_10005D760) = _swiftEmptyArrayStorage;
  v3 = qword_10005D768;
  v4 = *((v2 & v1) + 0xC8);
  *(v0 + v3) = sub_100041C40();
  *(v0 + qword_10005D770) = 0;
  *(v0 + qword_10005D778) = 100;
  v6 = type metadata accessor for PlayerItemsModel(0, v4, *((v2 & v1) + 0xD0), v5);
  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_1000259AC()
{
}

id sub_1000259FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PlayerItemsModel(0, *((swift_isaMask & *v4) + 0xC8), *((swift_isaMask & *v4) + 0xD0), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100025A6C(uint64_t a1)
{
}

uint64_t sub_100025AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D08(qword_10005D288, qword_100046BB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100025BD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D08(qword_10005D288, qword_100046BB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FriendInviteButtonStackView(uint64_t a1)
{
  result = qword_10005D858;
  if (!qword_10005D858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025CE0(uint64_t a1)
{
  sub_10001E38C(319);
  if (v1 <= 0x3F)
  {
    sub_10001E3E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100025D90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100041610();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D08(&qword_10005D358, &qword_100047220);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100027960(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100041680();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100041CF0();
    v13 = sub_100041730();
    sub_1000413F0();

    sub_100041600();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100025F78@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v20[0] = sub_100002D08(&qword_10005D898, &qword_100046C50);
  __chkstk_darwin(v20[0]);
  v2 = v20 - v1;
  v3 = sub_100002D08(&qword_10005D8A0, &qword_100046C58);
  __chkstk_darwin(v3);
  v5 = v20 - v4;
  v6 = sub_100002D08(&qword_10005D8A8, &qword_100046C60);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  v9 = sub_100041680();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100025D90(v12);
  v13 = sub_100041670();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    *v8 = sub_100041690();
    *(v8 + 1) = 0x4024000000000000;
    v8[16] = 0;
    v14 = sub_100002D08(&qword_10005D8C8, &qword_100046C70);
    sub_100026C20(sub_100026388, sub_1000267D4, &v8[*(v14 + 44)]);
    v15 = &qword_10005D8A8;
    v16 = &qword_100046C60;
    sub_100021B9C(v8, v5, &qword_10005D8A8, &qword_100046C60);
    swift_storeEnumTagMultiPayload();
    sub_100003214(&qword_10005D8B8, &qword_10005D8A8, &qword_100046C60, &protocol conformance descriptor for VStack<A>);
    sub_100003214(&qword_10005D8C0, &qword_10005D898, &qword_100046C50, &protocol conformance descriptor for HStack<A>);
    sub_1000416D0();
    v17 = v8;
  }

  else
  {
    *v2 = sub_100041630();
    *(v2 + 1) = 0x4024000000000000;
    v2[16] = 0;
    v18 = sub_100002D08(&qword_10005D8B0, &qword_100046C68);
    sub_100026C20(sub_1000267D4, sub_100026388, &v2[*(v18 + 44)]);
    v15 = &qword_10005D898;
    v16 = &qword_100046C50;
    sub_100021B9C(v2, v5, &qword_10005D898, &qword_100046C50);
    swift_storeEnumTagMultiPayload();
    sub_100003214(&qword_10005D8B8, &qword_10005D8A8, &qword_100046C60, &protocol conformance descriptor for VStack<A>);
    sub_100003214(&qword_10005D8C0, &qword_10005D898, &qword_100046C50, &protocol conformance descriptor for HStack<A>);
    sub_1000416D0();
    v17 = v2;
  }

  return sub_10000E9F0(v17, v15, v16);
}

uint64_t sub_100026388@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_1000416F0();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100041540();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100002D08(&qword_10005D8E0, &qword_100046C88);
  __chkstk_darwin(v43);
  v8 = &v41 - v7;
  v9 = sub_100002D08(&qword_10005D8E8, &qword_100046C90);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v44 = sub_100002D08(&qword_10005D8F0, &qword_100046C98);
  __chkstk_darwin(v44);
  v14 = &v41 - v13;
  v15 = type metadata accessor for FriendInviteButtonStackView(0);

  sub_100002D08(&qword_10005D8F8, &qword_100046CA0);
  sub_10002740C();
  sub_100041960();
  LODWORD(v15) = *(v1 + *(v15 + 28));
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = &v12[*(v10 + 44)];
  *v18 = KeyPath;
  v18[1] = sub_100027ABC;
  v18[2] = v17;
  v19 = *(v5 + 28);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = sub_100041640();
  v22 = &v42[v19];
  v23 = v42;
  (*(*(v21 - 8) + 104))(v22, v20, v21);
  __asm { FMOV            V0.2D, #9.0 }

  *v23 = _Q0;
  if (v15 == 1)
  {
    v29 = [objc_opt_self() systemGray2Color];
    v30 = sub_1000418E0();
  }

  else
  {
    v30 = sub_100041900();
  }

  v31 = v30;
  sub_100027688(v23, v8);
  v32 = v43;
  *&v8[*(v43 + 52)] = v31;
  *&v8[*(v32 + 56)] = 256;
  v33 = sub_1000419D0();
  v35 = v34;
  v36 = &v14[*(v44 + 36)];
  sub_1000276EC(v8, v36, &qword_10005D8E0, &qword_100046C88);
  v37 = (v36 + *(sub_100002D08(&qword_10005D938, &qword_100046D00) + 36));
  *v37 = v33;
  v37[1] = v35;
  sub_1000276EC(v12, v14, &qword_10005D8E8, &qword_100046C90);
  v38 = v45;
  sub_1000416E0();
  sub_100027754();
  sub_100011DBC();
  v39 = v48;
  sub_100041890();
  (*(v47 + 8))(v38, v39);
  return sub_1000278F0(v14);
}

uint64_t sub_1000267D4@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_1000416F0();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100041540();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100002D08(&qword_10005D8E0, &qword_100046C88);
  __chkstk_darwin(v43);
  v8 = &v41 - v7;
  v9 = sub_100002D08(&qword_10005D8E8, &qword_100046C90);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v44 = sub_100002D08(&qword_10005D8F0, &qword_100046C98);
  __chkstk_darwin(v44);
  v14 = &v41 - v13;
  v15 = type metadata accessor for FriendInviteButtonStackView(0);

  sub_100002D08(&qword_10005D8F8, &qword_100046CA0);
  sub_10002740C();
  sub_100041960();
  LODWORD(v15) = *(v1 + *(v15 + 28));
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = &v12[*(v10 + 44)];
  *v18 = KeyPath;
  v18[1] = sub_100027670;
  v18[2] = v17;
  v19 = *(v5 + 28);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = sub_100041640();
  v22 = &v42[v19];
  v23 = v42;
  (*(*(v21 - 8) + 104))(v22, v20, v21);
  __asm { FMOV            V0.2D, #9.0 }

  *v23 = _Q0;
  if (v15 == 1)
  {
    v29 = [objc_opt_self() systemGray2Color];
    v30 = sub_1000418E0();
  }

  else
  {
    v30 = sub_100041910();
  }

  v31 = v30;
  sub_100027688(v23, v8);
  v32 = v43;
  *&v8[*(v43 + 52)] = v31;
  *&v8[*(v32 + 56)] = 256;
  v33 = sub_1000419D0();
  v35 = v34;
  v36 = &v14[*(v44 + 36)];
  sub_1000276EC(v8, v36, &qword_10005D8E0, &qword_100046C88);
  v37 = (v36 + *(sub_100002D08(&qword_10005D938, &qword_100046D00) + 36));
  *v37 = v33;
  v37[1] = v35;
  sub_1000276EC(v12, v14, &qword_10005D8E8, &qword_100046C90);
  v38 = v45;
  sub_1000416E0();
  sub_100027754();
  sub_100011DBC();
  v39 = v48;
  sub_100041890();
  (*(v47 + 8))(v38, v39);
  return sub_1000278F0(v14);
}

uint64_t sub_100026C20@<X0>(uint64_t (*a1)(uint64_t)@<X1>, void (*a2)(uint64_t)@<X2>, char *a3@<X8>)
{
  v6 = sub_100002D08(&qword_10005D8D0, &qword_100046C78);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v25 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v25 - v18;
  v20 = a1(v17);
  a2(v20);
  v21 = *(v7 + 16);
  v21(v13, v19, v6);
  v21(v10, v16, v6);
  v21(a3, v13, v6);
  v22 = sub_100002D08(&qword_10005D8D8, &qword_100046C80);
  v21(&a3[*(v22 + 48)], v10, v6);
  v23 = *(v7 + 8);
  v23(v16, v6);
  v23(v19, v6);
  v23(v10, v6);
  return (v23)(v13, v6);
}

double sub_100026E40@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100041310();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = GKGameCenterUIFrameworkBundle();
  v35._countAndFlagsBits = 0xE000000000000000;
  v50._countAndFlagsBits = 0x45524F4E4749;
  v50._object = 0xE600000000000000;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v7.super.isa = v6;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v8 = sub_100041180(v50, v51, v7, v52, 0, v35);
  v10 = v9;

  *&v41 = v8;
  *(&v41 + 1) = v10;
  sub_1000024FC();
  v40 = sub_100041860();
  v39 = v11;
  LOBYTE(v8) = v12;
  v38 = v13;
  v37 = sub_100041780();
  v14 = enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:);
  v15 = *(v3 + 104);
  v15(v5, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v2);
  sub_100041300();
  v16 = *(v3 + 8);
  v16(v5, v2);
  sub_1000414B0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v8 & 1;
  v49 = v25;
  v48 = 0;
  sub_100041790();
  v36 = sub_1000417B0();

  KeyPath = swift_getKeyPath();
  v15(v5, v14, v2);
  LOBYTE(v14) = sub_100041300();
  v16(v5, v2);
  if (v14)
  {
    v27 = sub_100041900();
  }

  else
  {
    v27 = sub_1000418F0();
  }

  v28 = v27;
  sub_1000419D0();
  sub_100041550();
  v29 = v39;
  *a1 = v40;
  *(a1 + 8) = v29;
  *(a1 + 16) = v25;
  *(a1 + 24) = v38;
  *(a1 + 32) = v37;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20;
  *(a1 + 56) = v22;
  *(a1 + 64) = v24;
  *(a1 + 72) = 0;
  v30 = v36;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v30;
  *(a1 + 96) = v28;
  v31 = v43;
  *(a1 + 152) = v44;
  v32 = v46;
  *(a1 + 168) = v45;
  *(a1 + 184) = v32;
  *(a1 + 200) = v47;
  result = *&v41;
  v34 = v42;
  *(a1 + 104) = v41;
  *(a1 + 120) = v34;
  *(a1 + 136) = v31;
  return result;
}

double sub_100027160@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100041310();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = GKGameCenterUIFrameworkBundle();
  v35._countAndFlagsBits = 0xE000000000000000;
  v46._countAndFlagsBits = 0x545045434341;
  v46._object = 0xE600000000000000;
  v47.value._countAndFlagsBits = 0;
  v47.value._object = 0;
  v7.super.isa = v6;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v8 = sub_100041180(v46, v47, v7, v48, 0, v35);
  v10 = v9;

  *&v37 = v8;
  *(&v37 + 1) = v10;
  sub_1000024FC();
  v11 = sub_100041860();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_100041780();
  (*(v3 + 104))(v5, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v2);
  sub_100041300();
  (*(v3 + 8))(v5, v2);
  sub_1000414B0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v15 & 1;
  v45 = v15 & 1;
  v44 = 0;
  sub_100041790();
  v28 = sub_1000417B0();

  KeyPath = swift_getKeyPath();
  v30 = sub_100041910();
  sub_1000419D0();
  sub_100041550();
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v27;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  *(a1 + 40) = v20;
  *(a1 + 48) = v22;
  *(a1 + 56) = v24;
  *(a1 + 64) = v26;
  *(a1 + 72) = 0;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v28;
  *(a1 + 96) = v30;
  v31 = v39;
  *(a1 + 152) = v40;
  v32 = v42;
  *(a1 + 168) = v41;
  *(a1 + 184) = v32;
  *(a1 + 200) = v43;
  result = *&v37;
  v34 = v38;
  *(a1 + 104) = v37;
  *(a1 + 120) = v34;
  *(a1 + 136) = v31;
  return result;
}

unint64_t sub_10002740C()
{
  result = qword_10005D900;
  if (!qword_10005D900)
  {
    sub_1000025E8(&qword_10005D8F8, &qword_100046CA0);
    sub_100027498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D900);
  }

  return result;
}

unint64_t sub_100027498()
{
  result = qword_10005D908;
  if (!qword_10005D908)
  {
    sub_1000025E8(&qword_10005D910, &qword_100046CA8);
    sub_100027550();
    sub_100003214(&qword_10005D928, &qword_10005D930, &qword_100046CC8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D908);
  }

  return result;
}

unint64_t sub_100027550()
{
  result = qword_10005D918;
  if (!qword_10005D918)
  {
    sub_1000025E8(&qword_10005D920, &unk_100046CB0);
    sub_100003190();
    sub_100003214(&qword_10005D3E0, &qword_10005D3E8, &qword_100046CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D918);
  }

  return result;
}

uint64_t sub_100027608@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000415E0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100027688(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041540();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000276EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002D08(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100027754()
{
  result = qword_10005D940;
  if (!qword_10005D940)
  {
    sub_1000025E8(&qword_10005D8F0, &qword_100046C98);
    sub_10002780C();
    sub_100003214(&qword_10005D970, &qword_10005D938, &qword_100046D00, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D940);
  }

  return result;
}

unint64_t sub_10002780C()
{
  result = qword_10005D948;
  if (!qword_10005D948)
  {
    sub_1000025E8(&qword_10005D8E8, &qword_100046C90);
    sub_100003214(&qword_10005D950, &qword_10005D958, &qword_100046D08, &protocol conformance descriptor for Button<A>);
    sub_100003214(&qword_10005D960, &qword_10005D968, &qword_100046D10, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D948);
  }

  return result;
}

uint64_t sub_1000278F0(uint64_t a1)
{
  v2 = sub_100002D08(&qword_10005D8F0, &qword_100046C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027960(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005D358, &qword_100047220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000279D4()
{
  result = qword_10005D978;
  if (!qword_10005D978)
  {
    sub_1000025E8(&qword_10005D980, qword_100046D50);
    sub_100003214(&qword_10005D8B8, &qword_10005D8A8, &qword_100046C60, &protocol conformance descriptor for VStack<A>);
    sub_100003214(&qword_10005D8C0, &qword_10005D898, &qword_100046C50, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D978);
  }

  return result;
}

uint64_t sub_100027AC0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100041A10();
  v19 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100041A30();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_100028C70;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_100056EE0;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v2;

  sub_100041A20();
  v20 = _swiftEmptyArrayStorage;
  sub_100028C94(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_100028CDC(&qword_10005CA28, &qword_10005CA20, qword_100045D00);
  sub_100041E60();
  sub_100041D60();
  _Block_release(v13);

  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);
}

void sub_100027D9C()
{
  sub_100041EB0(62);
  swift_getObjectType();
  sub_100002D08(&qword_10005D9D0, &qword_100046E38);
  v0._countAndFlagsBits = sub_100041B40();
  sub_100041B80(v0);

  v1._object = 0x8000000100044DE0;
  v1._countAndFlagsBits = 0xD00000000000003CLL;
  sub_100041B80(v1);
  sub_100041F40();
  __break(1u);
}

void sub_100027E68(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (a1[OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadingState] - 1 >= 2)
  {
    a1[OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadingState] = 1;
    v9 = *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadGroup];
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = a3;
    v17 = sub_100028D94;
    v18 = v11;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_100016ECC;
    v16 = &unk_100056F80;
    v7 = _Block_copy(&v13);
    v8 = v9;
    v12 = a1;

    [v8 perform:v7];
  }

  else
  {
    v5 = *&a1[OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadGroup];
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v17 = sub_100028D68;
    v18 = v6;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_100012BD4;
    v16 = &unk_100056F30;
    v7 = _Block_copy(&v13);

    v8 = v5;

    [v8 notifyOnMainQueueWithBlock:v7];
  }

  _Block_release(v7);
}

uint64_t sub_100028048(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v10[6] = a2;
  v11 = *((swift_isaMask & *a3) + 0xB8);
  v12 = a3;

  v11(sub_100028DE8, v10);
}

uint64_t sub_10002812C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v11 = sub_100041A10();
  v25 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100041A30();
  v14 = *(v24 - 8);
  __chkstk_darwin(v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&a2[OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadQueue];
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = v23;
  v18[7] = a6;
  aBlock[4] = sub_100028E48;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_100056FF8;
  v19 = _Block_copy(aBlock);
  v20 = v17;
  v21 = a2;
  swift_errorRetain();

  sub_100041A20();
  v26 = _swiftEmptyArrayStorage;
  sub_100028C94(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_100028CDC(&qword_10005CA28, &qword_10005CA20, qword_100045D00);
  sub_100041E60();
  sub_100041D60();
  _Block_release(v19);

  (*(v25 + 8))(v13, v11);
  (*(v14 + 8))(v16, v24);
}

uint64_t sub_100028430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a6;
  v25 = a5;
  v10 = sub_100041A10();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100041A30();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  *(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadingState) = v16;
  sub_100028C20();
  v17 = sub_100041D50();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a2;
  aBlock[4] = sub_100028E98;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_100057048;
  v19 = _Block_copy(aBlock);

  swift_errorRetain();

  sub_100041A20();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100028C94(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_100028CDC(&qword_10005CA28, &qword_10005CA20, qword_100045D00);
  sub_100041E60();
  sub_100041D60();
  _Block_release(v19);

  (*(v23 + 8))(v12, v10);
  v20 = (*(v13 + 8))(v15, v22);
  return v25(v20);
}

id sub_100028744()
{
  v1 = sub_100041D40();
  v17 = *(v1 - 8);
  v18 = v1;
  __chkstk_darwin(v1);
  v16 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100041D10();
  __chkstk_darwin(v3);
  v4 = sub_100041A30();
  __chkstk_darwin(v4 - 8);
  *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadingState) = 0;
  v14 = OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadQueue;
  v13[1] = sub_100028C20();
  v21 = 0x7565755164616F6CLL;
  v22 = 0xEB000000003C2065;
  v13[0] = sub_100002D08(&qword_10005D9D8, &qword_100046E40);
  v20 = v13[0];
  sub_100002D08(&qword_10005D9E0, &qword_100046E48);
  v23._countAndFlagsBits = sub_100041B40();
  sub_100041B80(v23);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  sub_100041B80(v24);
  sub_100041A20();
  v21 = _swiftEmptyArrayStorage;
  sub_100028C94(&qword_10005D9E8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100002D08(&qword_10005D9F0, qword_100046E50);
  sub_100028CDC(&qword_10005D9F8, &qword_10005D9F0, qword_100046E50);
  sub_100041E60();
  (*(v17 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  v5 = sub_100041D70();
  v6 = v15;
  *&v15[v14] = v5;
  v7 = OBJC_IVAR____TtC26GameCenterMessageExtension13LoadableModel_loadGroup;
  v21 = 0x756F724764616F6CLL;
  v22 = 0xEB000000003C2070;
  v20 = v13[0];
  v25._countAndFlagsBits = sub_100041B40();
  sub_100041B80(v25);

  v26._countAndFlagsBits = 62;
  v26._object = 0xE100000000000000;
  sub_100041B80(v26);
  v8 = objc_allocWithZone(GKDispatchGroup);
  v9 = sub_100041AF0();

  v10 = [v8 initWithName:v9];

  *&v6[v7] = v10;
  v11 = type metadata accessor for LoadableModel();
  v19.receiver = v6;
  v19.super_class = v11;
  return objc_msgSendSuper2(&v19, "init");
}

id sub_100028B14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoadableModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100028BCC()
{
  result = qword_10005D9C8;
  if (!qword_10005D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005D9C8);
  }

  return result;
}

unint64_t sub_100028C20()
{
  result = qword_10005CA10;
  if (!qword_10005CA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CA10);
  }

  return result;
}

uint64_t sub_100028C7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100028C94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100028CDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000025E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100028D30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100028DA0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100028DF8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100028E58()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100028EEC()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();
  v5 = v0;
  v6 = sub_100041400();
  v7 = sub_100041CC0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%@ user interface is ready for display", v8, 0xCu);
    sub_10000E9F0(v9, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v2 + 8))(v4, v1);
  return [v5 setReadyForDisplay];
}

uint64_t sub_100029094()
{
  v1 = v0;
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 activeConversation];
  if (v6)
  {
    v7 = v6;
    v8 = *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
    if (v8)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      *(v9 + 24) = v7;
      v10 = v8;
      v11 = v1;
      v12 = v7;
      sub_100027AC0(sub_10003373C, v9);
    }
  }

  sub_1000413D0();
  v14 = v1;
  v15 = sub_100041400();
  v16 = sub_100041CE0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "%@ Expected a conversation and a playerModel", v17, 0xCu);
    sub_10000E9F0(v18, &unk_10005CA00, &unk_100045CF0);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_1000292E4()
{
  v1 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = [objc_opt_self() local];
  v5 = [v4 internal];
  v6 = [v5 playerID];

  v7 = sub_100041B20();
  v9 = v8;

  qword_10005FF58 = v7;
  qword_10005FF60 = v9;

  if (*(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel))
  {
    swift_beginAccess();
  }

  else
  {
    v10 = 0;
  }

  qword_10005FF68 = v10;

  v11 = [objc_opt_self() defaultWorkspace];
  if (v11)
  {
    v12 = v11;
    sub_1000411F0();
    v13 = sub_100041200();
    v14 = *(v13 - 8);
    v16 = 0;
    if ((*(v14 + 48))(v3, 1, v13) != 1)
    {
      sub_1000411D0(v15);
      v16 = v17;
      (*(v14 + 8))(v3, v13);
    }

    [v12 openURL:v16];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100029528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  a4(0);
  sub_100002D08(a5, a6);
  v9 = sub_100041B40();
  v11 = v10;
  v12 = sub_100041AF0();
  v13 = [objc_opt_self() storyboardWithName:v12 bundle:a3];

  v14 = sub_100041AF0();
  v15 = [v13 instantiateViewControllerWithIdentifier:v14];

  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;

    return v17;
  }

  else
  {

    v19._countAndFlagsBits = v9;
    v19._object = v11;
    sub_100041B80(v19);
    result = sub_100041F40();
    __break(1u);
  }

  return result;
}

void sub_100029704()
{
  v1 = type metadata accessor for FriendInviteCardView(0);
  __chkstk_darwin(v1);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = &v0[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight];
  if (v0[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight + 8])
  {
    v5 = [objc_opt_self() local];
    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v23.origin.x = v9;
      v23.origin.y = v11;
      v23.size.width = v13;
      v23.size.height = v15;
      CGRectGetWidth(v23);
      sub_100040584(v5, 0, 0);
      *v3 = swift_getKeyPath();
      sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
      swift_storeEnumTagMultiPayload();
      v16 = (v3 + *(v1 + 20));
      type metadata accessor for FriendInviteCardViewModel(0);
      sub_100033620(&qword_10005DAD8, type metadata accessor for FriendInviteCardViewModel, &unk_1000475E0);
      *v16 = sub_100041510();
      v16[1] = v17;
      v18 = objc_allocWithZone(sub_100002D08(&qword_10005DAE0, &qword_100046EE0));
      v19 = sub_1000416C0();
      sub_1000416B0();
      v21 = v20;

      *v4 = v21;
      v4[8] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10002991C()
{
  v0 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  sub_1000333D8(v0, qword_10005DA00);
  v1 = sub_100033330(v0, qword_10005DA00);
  v2 = sub_100041200();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

id sub_1000299BC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_inviteCardResizingObserver] = 0;
  v7 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState];
  *v8 = [objc_opt_self() local];
  *(v8 + 1) = 0;
  v8[16] = 0;
  if (a2)
  {
    v9 = sub_100041AF0();
  }

  else
  {
    v9 = 0;
  }

  v14.receiver = v3;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v9, a3);

  v11 = objc_opt_self();
  v12 = v10;
  [v11 setForCurrentProcess];

  return v12;
}

id sub_100029B48(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel] = 0;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_inviteCardResizingObserver] = 0;
  v4 = &v1[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState];
  *v5 = [objc_opt_self() local];
  *(v5 + 1) = 0;
  v5[16] = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = v6;
    [v7 setForCurrentProcess];
  }

  return v6;
}

void sub_100029C64(void *a1)
{
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "willBecomeActiveWithConversation:", a1);
  if (!_UISolariumEnabled())
  {
    goto LABEL_4;
  }

  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

LABEL_4:
    v6 = [objc_opt_self() defaultCenter];
    [v6 addObserver:v1 selector:"updateCard:" name:GKPlayerAuthenticationDidChangeNotificationName object:0];

    v7 = objc_opt_self();
    v8 = sub_100041AF0();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = a1;
    v13[4] = sub_1000337D4;
    v13[5] = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100012BD4;
    v13[3] = &unk_100057490;
    v10 = _Block_copy(v13);
    v11 = v1;
    v12 = a1;

    [v7 named:v8 execute:v10];
    _Block_release(v10);

    return;
  }

  __break(1u);
}

uint64_t sub_100029E5C(void *a1, void *a2)
{
  type metadata accessor for LocalPlayerAuthenticator();
  inited = swift_initStaticObject();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = inited;
  v5[4] = a2;
  v6 = a1;
  v7 = a2;
  sub_100011F64(sub_100033824);
}

void sub_100029EFC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v9 = sub_100041410();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  if (!a2)
  {
    if (*(a4 + 16) == 2)
    {
      sub_1000413E0();
      v28 = a3;
      v29 = sub_100041400();
      v30 = sub_100041CC0();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "%@ willBecomeActive - authentication succeed.", v31, 0xCu);
        sub_10000E9F0(v32, &unk_10005CA00, &unk_100045CF0);
      }

      (*(v10 + 8))(v13, v9);
      v34 = sub_10001AFBC(a5);
      v35 = *&v28[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
      *&v28[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel] = v34;
    }

    else
    {
      if (byte_10005C528 != 3)
      {
        goto LABEL_12;
      }

      v36 = sub_10001AFBC(a5);
      v35 = *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
      *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel] = v36;
    }

    goto LABEL_12;
  }

  sub_1000413D0();
  v16 = a3;
  swift_errorRetain();
  v17 = sub_100041400();
  v18 = sub_100041CE0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v9;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = a5;
    v39 = a2;
    v23 = v22;
    v40 = v22;
    *v19 = 138412546;
    *(v19 + 4) = v16;
    *v21 = v16;
    *(v19 + 12) = 2080;
    v24 = v16;
    swift_errorRetain();
    sub_100002D08(&unk_10005CF10, &qword_100047670);
    v25 = sub_100041B40();
    v27 = sub_10003FBD0(v25, v26, &v40);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "%@ willBecomeActive - authentication failed with error: %s", v19, 0x16u);
    sub_10000E9F0(v21, &unk_10005CA00, &unk_100045CF0);

    sub_10000E8A8(v23);
    a5 = v38;

    (*(v10 + 8))(v15, v37);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

LABEL_12:
  sub_10002A2E4(a5, [a3 presentationStyle]);
}

void sub_10002A2E4(void *a1, uint64_t a2)
{
  v3 = v2;
  v59 = a1;
  v5 = sub_100041310();
  v60 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100041410();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v57 - v14;
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  if (sub_10002C790())
  {
    sub_10002B2C8();
  }

  if (byte_10005C528 == 2)
  {
    if (a2)
    {
      sub_1000413E0();
      v18 = v2;
      v19 = sub_100041400();
      v20 = sub_100041CC0();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v58 = v8;
        v23 = v22;
        *v21 = 138412290;
        *(v21 + 4) = v18;
        *v22 = v18;
        v24 = v18;
        _os_log_impl(&_mh_execute_header, v19, v20, "%@ local player was authenticated instantiating FriendRequestCardViewController.", v21, 0xCu);
        sub_10000E9F0(v23, &unk_10005CA00, &unk_100045CF0);
        v8 = v58;
      }

      (*(v9 + 8))(v12, v8);
      v25 = v60;
      (*(v60 + 104))(v7, enum case for GKFeatureFlags.FriendInviteCardRewrite(_:), v5);
      v26 = sub_100041300();
      (*(v25 + 8))(v7, v5);
      if (v26)
      {
        v27 = sub_10002C8BC(v59);
      }

      else
      {
        v27 = sub_10003194C();
      }
    }

    else
    {
      v35 = v8;
      sub_1000413E0();
      v36 = v2;
      v37 = sub_100041400();
      v38 = sub_100041CC0();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        *(v39 + 4) = v36;
        *v40 = v36;
        v41 = v36;
        _os_log_impl(&_mh_execute_header, v37, v38, "%@ local player was authenticated presentation style was compact so instantiating MessageActionsViewController.", v39, 0xCu);
        sub_10000E9F0(v40, &unk_10005CA00, &unk_100045CF0);
      }

      (*(v9 + 8))(v15, v35);
      v42 = sub_100029528(0x65746E496E69614DLL, 0xED00006563616672, 0, type metadata accessor for MessageActionsViewController, &qword_10005DB00, &qword_100046F50);
      v43 = (v42 + OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_delegate);
      *v43 = v36;
      v43[1] = &off_100057070;
      v44 = v36;
      swift_unknownObjectRelease();
      v27 = v42;
    }
  }

  else
  {
    v28 = v8;
    sub_1000413E0();
    v29 = v2;
    v30 = sub_100041400();
    v31 = sub_100041CC0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&_mh_execute_header, v30, v31, "%@ local player was not authenticated instantiating actions VC.", v32, 0xCu);
      sub_10000E9F0(v33, &unk_10005CA00, &unk_100045CF0);
    }

    (*(v9 + 8))(v17, v28);
    v27 = sub_100029528(0x65746E496E69614DLL, 0xED00006563616672, 0, type metadata accessor for ActionViewController, &unk_10005DBB0, &qword_100046FB0);
  }

  v45 = v27;
  [v3 addChildViewController:v45];
  v46 = [v45 view];

  if (!v46)
  {
    __break(1u);
    goto LABEL_24;
  }

  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (!_UISolariumEnabled())
  {
LABEL_20:
    v50 = [v3 view];
    if (v50)
    {
      v51 = v50;
      v52 = [v45 view];
      if (v52)
      {
        v53 = v52;
        [v51 addSubview:v52];

        v54 = objc_opt_self();
        v55 = [v45 view];
        v56 = [v3 view];
        [v54 _gkInstallEdgeConstraintsForView:v55 containedWithinParentView:v56];

        [v45 didMoveToParentViewController:v3];
        return;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v47 = [v45 view];
  if (v47)
  {
    v48 = v47;
    v49 = [objc_opt_self() clearColor];
    [v48 setBackgroundColor:v49];

    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
}

void sub_10002AA90(void *a1, void *a2)
{
  v4 = [a1 CGContext];
  v5 = [a1 format];
  CGContextSetAlpha(v4, 0.6);
  CGContextSetBlendMode(v4, kCGBlendModeNormal);
  if ([a2 presentationStyle] == 2)
  {
    v6 = [a2 view];
    if (!v6)
    {
LABEL_9:
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = [v6 layer];

    [v8 renderInContext:v4];
  }

  v9 = [objc_opt_self() currentTraitCollection];
  [v9 userInterfaceStyle];

  v10 = [objc_opt_self() _dimmingViewColor];
  if (!v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v10;
  v11 = [v10 CGColor];
  CGContextSetFillColorWithColor(v4, v11);

  CGContextSetAlpha(v4, 1.0);
  [v5 bounds];
  [a1 fillRect:0 blendMode:?];
}

void sub_10002AC64(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_10002AD1C(void *a1)
{
  type metadata accessor for LocalPlayerAuthenticator();
  inited = swift_initStaticObject();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = inited;
  v4 = a1;
  sub_100011F64(sub_10003378C);
}

void sub_10002ADAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_100041410();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v14 = &unk_10005A000;
  if (a2)
  {
    sub_1000413D0();
    v15 = a3;
    swift_errorRetain();
    v16 = sub_100041400();
    v17 = sub_100041CE0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v7;
      v40 = a2;
      v21 = v20;
      v41 = v20;
      *v18 = 138412546;
      *(v18 + 4) = v15;
      *v19 = v15;
      *(v18 + 12) = 2080;
      v22 = v15;
      swift_errorRetain();
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v23 = sub_100041B40();
      v25 = sub_10003FBD0(v23, v24, &v41);

      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "%@ updating the card authentication failed with error: %s", v18, 0x16u);
      sub_10000E9F0(v19, &unk_10005CA00, &unk_100045CF0);
      v14 = &unk_10005A000;

      sub_10000E8A8(v21);

      (*(v8 + 8))(v13, v39);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }
  }

  else if (*(a4 + 16) == 2)
  {
    sub_1000413E0();
    v26 = a3;
    v27 = sub_100041400();
    v28 = sub_100041CC0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v7;
      v31 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v31 = v26;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "%@ updating the card authentication succeed.", v29, 0xCu);
      sub_10000E9F0(v31, &unk_10005CA00, &unk_100045CF0);
      v7 = v30;
    }

    (*(v8 + 8))(v11, v7);
    v33 = [v26 activeConversation];
    if (!v33)
    {
      __break(1u);
      return;
    }

    v34 = sub_10001AFBC(v33);
    v35 = *&v26[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
    *&v26[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel] = v34;
  }

  v36 = [a3 v14[197]];
  if (v36)
  {
    v37 = v36;
    sub_10002A2E4(v36, [a3 presentationStyle]);
  }
}

id sub_10002B2C8()
{
  v1 = [v0 childViewControllers];
  sub_10000EA78(0, &qword_10005DAF8, UIViewController_ptr);
  v2 = sub_100041C20();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
  }

LABEL_14:
  v3 = sub_100041F50();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_100041EC0();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v5 willMoveToParentViewController:0];
    result = [v6 view];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result removeFromSuperview];

    [v6 removeFromParentViewController];
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_10002B4A8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100041410();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "didTransitionToPresentationStyle:", a1);
  v9 = [v2 activeConversation];
  if (v9)
  {
    v10 = v9;
    sub_10002A2E4(v9, a1);
  }

  else
  {
    sub_1000413D0();
    v11 = v2;
    v12 = sub_100041400();
    v13 = sub_100041CE0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "%@ didTransition: Expected an active conversation", v14, 0xCu);
      sub_10000E9F0(v15, &unk_10005CA00, &unk_100045CF0);
    }

    (*(v6 + 8))(v8, v5);
  }
}

double sub_10002B810(double a1)
{
  v2 = v1;
  v28 = sub_100041410();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FriendInviteCardView(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 300.0)
  {
    a1 = 300.0;
  }

  v11 = *&v2[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState];
  v12 = *&v2[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState + 8];
  v13 = v2[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState + 16];
  sub_10003347C(v11, v12, v2[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState + 16]);
  sub_100040584(v11, v12, v13);
  *v10 = swift_getKeyPath();
  sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
  swift_storeEnumTagMultiPayload();
  v14 = (v10 + *(v8 + 28));
  type metadata accessor for FriendInviteCardViewModel(0);
  sub_100033620(&qword_10005DAD8, type metadata accessor for FriendInviteCardViewModel, &unk_1000475E0);
  *v14 = sub_100041510();
  v14[1] = v15;
  v16 = objc_allocWithZone(sub_100002D08(&qword_10005DAE0, &qword_100046EE0));
  v17 = sub_1000416C0();
  sub_1000416B0();
  v19 = v18;
  sub_1000334F0(v11, v12, v13);

  sub_1000413E0();
  v20 = v2;
  v21 = sub_100041400();
  v22 = sub_100041CC0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412546;
    *(v23 + 4) = v20;
    *v24 = v20;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v19;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "%@ Provide an inviteCardHeight size for our MSMessages Live Bubble View, %f", v23, 0x16u);
    sub_10000E9F0(v24, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v4 + 8))(v6, v28);
  return a1;
}

uint64_t sub_10002BB98(uint64_t a1, void *a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  if (a1)
  {
    sub_1000413D0();
    v11 = a2;
    swift_errorRetain();
    v12 = sub_100041400();
    v13 = sub_100041CE0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = a1;
      v30 = v16;
      *v14 = 138412546;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2080;
      v17 = v11;
      swift_errorRetain();
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v18 = sub_100041B40();
      v20 = sub_10003FBD0(v18, v19, &v30);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "%@ didCancelSending - cancelFriendRequest error: %s", v14, 0x16u);
      sub_10000E9F0(v15, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v16);
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v22 = [objc_allocWithZone(GKReporter) init];
    [v22 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestCancelled];

    sub_1000413E0();
    v23 = a2;
    v24 = sub_100041400();
    v25 = sub_100041CC0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "%@ didCancelSending - cancelFriendRequest succeed", v26, 0xCu);
      sub_10000E9F0(v27, &unk_10005CA00, &unk_100045CF0);
    }

    return (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_10002BF7C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100041410();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_1000413D0();
    swift_errorRetain();

    v11 = sub_100041400();
    v12 = sub_100041CE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v17 = a2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v14 = 136315650;
      *(v14 + 4) = sub_10003FBD0(0xD000000000000020, 0x8000000100045080, &v18);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_10003FBD0(v17, a3, &v18);
      *(v14 + 22) = 2112;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s - Error adding %s to the deny list. Error: %@", v14, 0x20u);
      sub_10000E9F0(v15, &unk_10005CA00, &unk_100045CF0);

      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_10002C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100041C70();
  v5[7] = sub_100041C60();
  v7 = sub_100041C50();

  return _swift_task_switch(sub_10002C4B0, v7, v6);
}

uint64_t sub_10002C4B0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  *(v0 + 64) = _Block_copy(v2);
  if (v1)
  {
    sub_100041B20();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 72) = v3;
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  v7 = v5;
  v8 = v4;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_10002C5AC;
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);

  return sub_100032B10(v11, v10);
}

uint64_t sub_10002C5AC(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (a3)
  {

    v11 = sub_100041AF0();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v6 + 64);
  (v12)[2](v12, a1 & 1, v11);

  _Block_release(v12);

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_10002C790()
{
  v1 = [v0 childViewControllers];
  sub_10000EA78(0, &qword_10005DAF8, UIViewController_ptr);
  v2 = sub_100041C20();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_100041F50();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = sub_100041EC0();
LABEL_6:
    v5 = v4;

    v6 = [v5 presentedViewController];

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
LABEL_12:
        v8 = v7 == 0;

        return v8;
      }
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C8BC(void *a1)
{
  v80 = a1;
  v2 = sub_100002D08(&qword_10005DB08, &qword_100046F58);
  v3 = *(v2 - 8);
  v95 = v2;
  v96 = v3;
  __chkstk_darwin(v2);
  v93 = v74 - v4;
  v5 = sub_100002D08(&qword_10005DB10, &qword_100046F60);
  v6 = *(v5 - 8);
  v97 = v5;
  v98 = v6;
  __chkstk_darwin(v5);
  v94 = v74 - v7;
  v8 = sub_100002D08(&qword_10005DB18, &qword_100046F68);
  __chkstk_darwin(v8 - 8);
  v91 = v74 - v9;
  v10 = sub_100002D08(&qword_10005DB20, &qword_100046F70);
  __chkstk_darwin(v10 - 8);
  v87 = v74 - v11;
  v85 = sub_100041E00();
  v106 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002D08(&qword_10005DB28, &qword_100046F78);
  __chkstk_darwin(v13 - 8);
  v103 = v74 - v14;
  v81 = sub_100041D80();
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100002D08(&qword_10005DB30, &qword_100046F80);
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v104 = v74 - v16;
  v90 = sub_100002D08(&qword_10005DB38, &qword_100046F88);
  v92 = *(v90 - 8);
  __chkstk_darwin(v90);
  v105 = v74 - v17;
  v78 = sub_100002D08(&qword_10005DB40, &qword_100046F90);
  v18 = *(v78 - 1);
  __chkstk_darwin(v78);
  v20 = v74 - v19;
  v21 = sub_100002D08(&unk_10005DB48, &qword_100046F98);
  v82 = v21;
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v74 - v23;
  v25 = *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  v27 = swift_allocObject();
  v102 = v27;
  *(v27 + 16) = sub_100033564;
  *(v27 + 24) = v26;
  v101 = swift_allocObject();
  *(v101 + 16) = v1;
  v100 = swift_allocObject();
  *(v100 + 16) = v1;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v99 = swift_allocObject();
  *(v99 + 16) = v1;
  type metadata accessor for FriendInviteCardViewModel(0);
  v29 = swift_allocObject();
  v30 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel__state;
  v107 = 0;
  v108 = 0;
  v109 = 9;
  v76 = v25;

  v86 = v1;
  sub_100041430();
  (*(v22 + 32))(v29 + v30, v24, v21);
  v31 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel__isProcessingAction;
  LOBYTE(v107) = 0;
  sub_100041430();
  (*(v18 + 32))(v29 + v31, v20, v78);
  v32 = OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_playerModel;
  *(v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_isViewRecordSent) = 0;
  *(v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_refreshObserver) = 0;
  *(v29 + v32) = v25;
  v33 = v80;
  *(v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_conversation) = v80;
  v34 = (v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentProfile);
  v36 = v101;
  v35 = v102;
  *v34 = sub_100033568;
  v34[1] = v35;
  v37 = (v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentFriendsList);
  *v37 = sub_100033590;
  v37[1] = v36;
  v38 = (v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onAcceptInvite);
  v39 = v100;
  *v38 = sub_1000335B4;
  v38[1] = v39;
  v40 = (v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onPresentAlert);
  *v40 = sub_100033610;
  v40[1] = v28;
  v77 = v28;
  v41 = (v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onMessageUrlCreated);
  *v41 = sub_1000338D4;
  v41[1] = 0;
  v42 = (v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_onReadyForDisplay);
  v43 = v99;
  *v42 = sub_100033618;
  v42[1] = v43;
  v78 = v76;
  v44 = v33;

  sub_10003D788();
  v45 = [objc_opt_self() defaultCenter];
  v46 = sub_100041AF0();
  v47 = v79;
  sub_100041D90();

  v74[0] = sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
  v48 = sub_100041D50();
  v107 = v48;
  v76 = sub_100041D30();
  v49 = *(v76 - 1);
  v75 = *(v49 + 56);
  v80 = (v49 + 56);
  v50 = v103;
  v75(v103, 1, 1, v76);
  sub_100033620(&qword_10005DB58, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v74[1] = sub_100033668(&qword_10005DB60, &qword_10005CA10, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v51 = v81;
  sub_100041490();
  sub_10000E9F0(v50, &qword_10005DB28, &qword_100046F78);
  v83[1](v47, v51);

  v52 = v84;
  sub_100041DF0();
  v53 = v87;
  v54 = v85;
  (*(v106 + 56))(v87, 1, 1, v85);
  v55 = [objc_opt_self() mainRunLoop];
  v107 = v55;
  v56 = sub_100041DE0();
  v57 = v91;
  (*(*(v56 - 8) + 56))(v91, 1, 1, v56);
  sub_10000EA78(0, &qword_10005DB68, NSRunLoop_ptr);
  v83 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100003214(&qword_10005DB70, &qword_10005DB30, &qword_100046F80, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  sub_100033668(&qword_10005DB78, &qword_10005DB68, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  v58 = v104;
  v59 = v53;
  v60 = v88;
  sub_100041480();
  sub_10000E9F0(v57, &qword_10005DB18, &qword_100046F68);
  sub_10000E9F0(v59, &qword_10005DB20, &qword_100046F70);
  (*(v106 + 8))(v52, v54);
  (*(v89 + 8))(v58, v60);

  swift_allocObject();
  swift_weakInit();
  sub_100003214(&qword_10005DB80, &qword_10005DB38, &qword_100046F88, &protocol conformance descriptor for Publishers.Delay<A, B>);
  v61 = v90;
  v62 = v105;
  v63 = sub_1000414A0();

  (*(v92 + 8))(v62, v61);
  *(v29 + OBJC_IVAR____TtC26GameCenterMessageExtension25FriendInviteCardViewModel_refreshObserver) = v63;

  swift_beginAccess();
  v64 = v93;
  sub_100041440();
  swift_endAccess();
  v65 = sub_100041D50();
  v107 = v65;
  v66 = v103;
  v75(v103, 1, 1, v76);
  sub_100003214(&qword_10005DB88, &qword_10005DB08, &qword_100046F58, &protocol conformance descriptor for Published<A>.Publisher);
  v67 = v94;
  v68 = v95;
  sub_100041490();
  sub_10000E9F0(v66, &qword_10005DB28, &qword_100046F78);

  (*(v96 + 8))(v64, v68);
  swift_allocObject();
  v69 = v86;
  swift_unknownObjectWeakInit();
  sub_100003214(&qword_10005DB90, &qword_10005DB10, &qword_100046F60, v83);
  v70 = v97;
  v71 = sub_1000414A0();

  (*(v98 + 8))(v67, v70);
  *&v69[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_inviteCardResizingObserver] = v71;

  v107 = sub_1000336F4;
  v108 = v29;
  v72 = objc_allocWithZone(sub_100002D08(&unk_10005DB98, &qword_100046FA0));
  return sub_1000416C0();
}

void sub_10002D7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_100041AF0();
    v8 = sub_100041AF0();
    v9 = GKGameCenterUIFrameworkBundle();
    v13._countAndFlagsBits = 0xE000000000000000;
    v19._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v19._object = 0xE90000000000004ELL;
    v20.value._countAndFlagsBits = 0;
    v20.value._object = 0;
    v10.super.isa = v9;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_100041180(v19, v20, v10, v21, 0, v13);

    v11 = sub_100041AF0();

    v17 = nullsub_1;
    v18 = 0;
    v13._object = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_100012BD4;
    v16 = &unk_100057300;
    v12 = _Block_copy(&v13._object);
    [v6 _presentAlertWithTitle:v7 message:v8 buttonTitle:v11 completion:v12];
    _Block_release(v12);
  }
}

id sub_10002D960(void *a1)
{
  v2 = sub_100041410();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();
  v6 = a1;
  v7 = sub_100041400();
  v8 = sub_100041CC0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%@ user interface is ready for display", v9, 0xCu);
    sub_10000E9F0(v10, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v3 + 8))(v5, v2);
  return [v6 setReadyForDisplay];
}

void sub_10002DB08(void **a1, uint64_t a2)
{
  v3 = sub_100041410();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (v9 != 9 || (v7 & 0xFFFFFFFFFFFFFFFELL | v8) != 0)
    {
      sub_1000413E0();
      v13 = v11;
      v14 = sub_100041400();
      v15 = sub_100041CC0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v26 = v4;
        v17 = v16;
        v18 = swift_slowAlloc();
        v27 = v3;
        v19 = v18;
        *v17 = 138412290;
        *(v17 + 4) = v13;
        *v18 = v11;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "%@ FriendInviteCardViewModel state updated, updating card height.", v17, 0xCu);
        sub_10000E9F0(v19, &unk_10005CA00, &unk_100045CF0);
        v3 = v27;

        v4 = v26;
      }

      (*(v4 + 8))(v6, v3);
      v21 = &v13[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState];
      v22 = *&v13[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState];
      v23 = *&v13[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_currentCardState + 8];
      *v21 = v7;
      *(v21 + 1) = v8;
      v24 = v21[16];
      v21[16] = v9;
      sub_10003347C(v7, v8, v9);
      sub_1000334F0(v22, v23, v24);
      [v13 requestResize];
      [v13 requestResize];
    }
  }
}

uint64_t sub_10002DD5C@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100002D08(&qword_10005DAD0, &qword_1000470B0);
  swift_storeEnumTagMultiPayload();
  v3 = (a2 + *(type metadata accessor for FriendInviteCardView(0) + 20));
  type metadata accessor for FriendInviteCardViewModel(0);
  sub_100033620(&qword_10005DAD8, type metadata accessor for FriendInviteCardViewModel, &unk_1000475E0);

  result = sub_100041510();
  *v3 = result;
  v3[1] = v5;
  return result;
}

id sub_10002DE34()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10002DFB0()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 activeConversation];
  if (v5)
  {
    v6 = v5;
    v7 = *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
    if (v7)
    {
      v8 = v7;
      v9 = sub_10002E250(0);
      v10 = swift_allocObject();
      *(v10 + 16) = v0;
      aBlock[4] = sub_100030E90;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000151F0;
      aBlock[3] = &unk_1000570A8;
      v11 = _Block_copy(aBlock);
      v12 = v0;

      [v6 insertMessage:v9 completionHandler:v11];
      _Block_release(v11);

      return;
    }
  }

  sub_1000413D0();
  v13 = v0;
  v14 = sub_100041400();
  v15 = sub_100041CE0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "%@ Expected a conversation and a playerModel", v16, 0xCu);
    sub_10000E9F0(v17, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v2 + 8))(v4, v1);
}

uint64_t sub_10002E250(char a1)
{
  v3 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_100041410();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();
  v10 = v1;
  v11 = sub_100041400();
  v12 = sub_100041CC0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%@ creating a message for GC friend invite", v13, 0xCu);
    sub_10000E9F0(v14, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v7 + 8))(v9, v6);
  v16 = [v10 activeConversation];
  if (!v16 || (v17 = v16, v18 = [v16 selectedMessage], v17, v19 = objc_msgSend(v18, "session"), v18, !v19))
  {
    v19 = [objc_allocWithZone(MSSession) init];
  }

  v20 = *&v10[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController_playerModel];
  if (v20)
  {
    v21 = v20;
    sub_10001287C(1, v5);
  }

  else
  {
    v22 = sub_100041200();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  }

  sub_10000EA78(0, &qword_10005DAE8, MSMessage_ptr);
  if (a1)
  {
    v23 = sub_100041DD0();
  }

  else
  {
    v23 = sub_100041DC0();
  }

  v24 = v23;

  sub_10000E9F0(v5, &qword_10005CA30, &unk_100046380);
  return v24;
}