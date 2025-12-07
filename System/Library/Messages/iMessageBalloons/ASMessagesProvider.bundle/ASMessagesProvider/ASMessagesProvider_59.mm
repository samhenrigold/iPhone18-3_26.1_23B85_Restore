uint64_t sub_6A7EB0()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_6A7F0C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

void (*sub_6A7FCC(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_134D8(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_10914(v7, v5 + 32);
  return sub_6A81DC;
}

uint64_t sub_6A80DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6A8124()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6A815C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6A8194()
{

  sub_BEB8((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_6A81E8()
{
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_tapGestureRecognizer) = 0;
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_clickActionHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_wantsCardConsistentMargins) = 0;
  sub_76A840();
  __break(1u);
}

BOOL sub_6A82AC(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_isExpanded] != 1 || ([v2 bounds], v13.x = v4, v13.y = v6, !CGRectContainsPoint(v14, v13)))
  {

    return 0;
  }

  if (v7)
  {
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v8 = v7;
    v9 = v2;
    v10 = sub_76A1C0();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    if (v12)
    {
      return 0;
    }
  }

  return *&v2[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardChinSingleLockupView_clickActionHandler] != 0;
}

uint64_t sub_6A83EC(uint64_t a1)
{
  v2 = sub_7572E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_77B6C0;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();

  v7 = sub_5BEF20(0x6D69542074696157, 0xEF29636573282065, sub_6A8BF0, a1, sub_6A865C, 0);

  *(v6 + 32) = v7;
  swift_allocObject();

  v8 = sub_5BEF20(0xD00000000000001ELL, 0x80000000007F0D60, sub_6A9694, a1, sub_6A8708, 0);

  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_77D9F0;
  type metadata accessor for DebugSection();
  v10 = swift_allocObject();
  sub_7572D0();
  v11 = sub_7572B0();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v10[2] = v11;
  v10[3] = v13;
  v10[4] = 0;
  v10[5] = 0xE000000000000000;
  v10[6] = v6;
  *(v9 + 32) = v10;
  return v9;
}

uint64_t sub_6A8674(uint64_t a1, uint64_t (*a2)(void *))
{
  sub_75A920();
  sub_768900();
  v3 = sub_768ED0();
  a2(v3);

  return sub_76A910();
}

unsigned __int8 *sub_6A8720(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_BD88(&qword_94A558, &qword_78BA10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v41[-v12];
  sub_7689F0();
  result = a4();
  if (!a3 || ((v15 = HIBYTE(a3) & 0xF, v16 = a2 & 0xFFFFFFFFFFFFLL, (a3 & 0x2000000000000000) != 0) ? (v17 = HIBYTE(a3) & 0xF) : (v17 = a2 & 0xFFFFFFFFFFFFLL), !v17))
  {
    sub_7689C0();
    v44 = v7;
    v45 = sub_6A96C4();
    v23 = sub_B1B4(&v42);
    (*(v8 + 16))(v23, v13, v7);
    sub_7689D0();

    (*(v8 + 8))(v13, v7);
    return sub_BEB8(&v42);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {

    sub_6A8C20(a2, a3, 10);
    v19 = v38;
    v40 = v39;

    if (v40)
    {
      return (*(v8 + 8))(v13, v7);
    }

    goto LABEL_65;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_76A790();
    }

    v18 = *result;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_63;
              }

              v29 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_63;
              }

              v19 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_63;
              }

              ++v27;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_72;
    }

    if (v18 != 45)
    {
      if (v16)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              goto LABEL_63;
            }

            v34 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_63;
            }

            v19 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v19 = 0;
      LOBYTE(v15) = 1;
LABEL_64:
      v41[0] = v15;
      if (v15)
      {
        return (*(v8 + 8))(v13, v7);
      }

LABEL_65:
      sub_7689C0();
      (*(v8 + 16))(v10, v13, v7);
      v42 = v19;
      LOBYTE(v43) = 0;
      sub_7686E0();

      return (*(v8 + 8))(v13, v7);
    }

    if (v16 >= 1)
    {
      v15 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 0;
        if (result)
        {
          v20 = result + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              goto LABEL_63;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_63;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_63;
            }

            ++v20;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v15) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v42 = a2;
  v43 = a3 & 0xFFFFFFFFFFFFFFLL;
  if (a2 != 43)
  {
    if (a2 != 45)
    {
      if (v15)
      {
        v19 = 0;
        v35 = &v42;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          v35 = (v35 + 1);
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v15)
    {
      if (--v15)
      {
        v19 = 0;
        v24 = &v42 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v15)
  {
    if (--v15)
    {
      v19 = 0;
      v30 = &v42 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v15)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_73:
  __break(1u);
  return result;
}

void sub_6A8C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_7693F0();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_6A91AC(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_76A790();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
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

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_6A91AC(uint64_t a1, unint64_t a2)
{
  v2 = sub_769400();
  v6 = sub_6A922C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_6A922C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_76A490();
    if (!v9 || (v10 = v9, v11 = sub_6A9384(v9, 0), v12 = sub_6A93F8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_769320();

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
      return sub_769320();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_76A790();
LABEL_4:

  return sub_769320();
}

double *sub_6A9384(uint64_t a1, uint64_t a2)
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

  sub_BD88(&qword_961CA8, qword_7AD500);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_6A93F8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_6A9618(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_7693A0();
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
          result = sub_76A790();
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

    result = sub_6A9618(v12, a6, a7);
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

    result = sub_769380();
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

unint64_t sub_6A9618(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_7693B0();
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
    v5 = sub_769390();
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

unint64_t sub_6A96C4()
{
  result = qword_961CA0;
  if (!qword_961CA0)
  {
    sub_133D8(&qword_94A558, &qword_78BA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_961CA0);
  }

  return result;
}

void sub_6A9728(uint64_t a1, char a2)
{
  *(v2 + qword_95A578) = a2 & 1;
  sub_541F7C();
  sub_766CD0();
  v46 = v2;
  v3 = *(v2 + qword_95A550);
  sub_765410();
  v5 = v4;
  v6 = objc_allocWithZone(NSNumber);
  LODWORD(v7) = v5;
  v47.value.super.super.isa = [v6 initWithFloat:v7];
  isa = v47.value.super.super.isa;
  v47.is_nil = 1;
  sub_761940(v47, v9);
  v11 = v10;

  if (!v11)
  {
    sub_765410();
    sub_769620();
  }

  sub_BD88(&qword_940F40, &qword_785F00);
  inited = swift_initStackObject();
  *(inited + 32) = NSKernAttributeName;
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 64) = &type metadata for CGFloat;
  *(inited + 40) = 0xC010000000000000;
  v13 = NSKernAttributeName;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_252F70(inited + 32);
  v14 = objc_allocWithZone(NSAttributedString);
  v15 = sub_769210();

  type metadata accessor for Key(0);
  sub_206144();
  v16 = sub_7690E0().super.isa;

  v17 = [v14 initWithString:v15 attributes:v16];

  [v3 setAttributedText:v17];
  sub_765410();
  sub_43B74C(v18);
  v19 = *(v46 + qword_95A568);
  v20 = sub_7653F0();
  v48._object = 0x80000000007CCE00;
  v48._countAndFlagsBits = 0xD000000000000013;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_761130(v48, v20, v49);
  v21 = sub_769210();

  [v19 setText:v21];

  v22 = sub_765400();
  if (!v22)
  {
    goto LABEL_30;
  }

  v23 = v22;
  v24 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    goto LABEL_26;
  }

  if (*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)) != 5)
  {
    goto LABEL_29;
  }

  v45 = 5;
  while (2)
  {
    v25 = 4;
    v26 = qword_95A570;
    while (1)
    {
      v29 = v25 - 4;
      if ((v23 & 0xC000000000000001) != 0)
      {
        v30 = sub_76A770();
      }

      else
      {
        if (v29 >= *(v24 + 16))
        {
          goto LABEL_24;
        }

        v30 = *(v23 + 8 * v25);
      }

      v31 = v30;
      v32 = v25 - 3;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = *(v46 + v26);
      [v30 floatValue];
      v35 = v34;
      v36 = sub_7653F0();
      v37 = OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews;
      v38 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews);
      if (v38 >> 62)
      {
        if (v29 >= sub_76A860())
        {
          goto LABEL_10;
        }
      }

      else if (v29 >= *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_10;
      }

      v39 = *(v33 + v37);
      if ((v39 & 0xC000000000000001) != 0)
      {
        v27 = sub_76A770();
      }

      else
      {
        if (v29 >= *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v27 = *(v39 + 8 * v25);
      }

      v28 = v27;
      *&v27[OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progress] = v35 / v36;
      [v27 setNeedsLayout];

LABEL_10:
      ++v25;
      if (v32 == v45)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (sub_76A860() == 5)
    {
      v45 = sub_76A860();
      if (!v45)
      {
LABEL_28:

        goto LABEL_39;
      }

      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  v40 = *(*(v46 + qword_95A570) + OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews);
  if (v40 >> 62)
  {
    v41 = sub_76A860();
    if (!v41)
    {
      goto LABEL_39;
    }

LABEL_32:
    if (v41 >= 1)
    {
      v42 = 0;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v43 = sub_76A770();
        }

        else
        {
          v43 = *(v40 + 8 * v42 + 32);
        }

        v44 = v43;
        ++v42;
        *&v43[OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progress] = 0;
        [v43 setNeedsLayout];
      }

      while (v41 != v42);
      goto LABEL_39;
    }

    __break(1u);
  }

  else
  {
    v41 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
    if (v41)
    {
      goto LABEL_32;
    }

LABEL_39:
    sub_766CD0();
  }
}

void sub_6A9BFC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v6 = sub_757CA0();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_7652D0();
  v9 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = sub_764EE0();
  if (v18)
  {
  }

  v38 = v14;
  v33 = v9;
  v19 = sub_764EE0();
  if (!v19)
  {
    sub_757B90();
    v20 = sub_764EE0();

    if (!v20)
    {
      goto LABEL_11;
    }

    if (a4)
    {
      goto LABEL_5;
    }

LABEL_10:

    sub_765330();
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_75A040();

    sub_160090(&v40);
    goto LABEL_11;
  }

  v20 = v19;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v36 = v8;
  v21 = *(a4 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);

  [v21 contentMode];
  sub_765330();
  v22 = *(a4 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
  sub_7652E0();
  sub_7591B0();
  [v22 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_396E8();
    sub_76A030();
  }

  sub_759070();
  sub_759210();
  sub_14FA38();
  sub_75A050();

  v8 = v36;
LABEL_11:
  sub_757B90();
  v23 = sub_764EE0();

  if (!v23)
  {
LABEL_18:

    return;
  }

  if (!v18)
  {

    goto LABEL_18;
  }

  v32 = v20;
  sub_757C20();
  sub_7652E0();
  v24 = v33;
  v25 = v37;
  (*(v33 + 104))(v11, enum case for Artwork.Style.roundedRect(_:), v37);
  v26 = v11;
  sub_765290();
  v27 = *(v24 + 8);
  v27(v26, v25);
  v27(v17, v25);
  sub_757C30();
  sub_757C30();
  sub_765280();
  if (a4)
  {
    v28 = a4;
    v29 = v27;
    v36 = v8;
    v30 = v28;
    [*(v28 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_tileIconArtworkView) contentMode];
    sub_765330();
    v31 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_tileIconArtworkView);
    sub_7652E0();
    sub_7591B0();
    [v31 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();
    sub_759210();
    sub_14FA38();
    sub_75A050();

    v29(v38, v37);
    (*(v34 + 8))(v36, v35);
  }

  else
  {
    sub_765330();
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_75A040();

    sub_160090(&v40);
    v27(v38, v25);
    (*(v34 + 8))(v8, v35);
  }
}

double *sub_6AA1DC(double a1, double a2)
{
  v2 = sub_7652D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  __chkstk_darwin(v9);
  v19 = &v18 - v10;
  v20 = sub_757CA0();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  if (sub_764EE0())
  {
    sub_765330();

    sub_769440();
    if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v21 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v13 = v21;
  }

  sub_757B90();
  v14 = sub_764EE0();

  if (v14)
  {
    sub_757C20();
    sub_7652E0();
    (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
    v15 = v19;
    sub_765290();
    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v8, v2);
    sub_757C30();
    sub_757C30();
    sub_765280();
    sub_765330();

    sub_769440();
    if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v21 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v16(v15, v2);
    (*(v18 + 8))(v12, v20);
    return v21;
  }

  return v13;
}

double *sub_6AA568(unint64_t a1)
{
  v1 = a1;
  v39 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v37 = _swiftEmptyArrayStorage;
    v32 = v1 & 0xC000000000000001;
    v33 = v1 + 32;
    v30 = i;
    v31 = v1;
    while (1)
    {
      if (v4)
      {
        v5 = sub_76A770();
      }

      else
      {
        if (v3 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        v5 = *(v33 + 8 * v3);
      }

      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v8 = v6;
        sub_769440();
        if (*(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v39 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();

        v37 = v39;
        if (v3 == i)
        {
          return v37;
        }
      }

      else
      {
        v35 = v6;
        v9 = [v6 subviews];
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v10 = sub_769460();

        v11 = sub_6AA568(v10);

        v12 = v11 >> 62;
        if (v11 >> 62)
        {
          v13 = sub_76A860();
        }

        else
        {
          v13 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
        }

        v14 = v37 >> 62;
        if (v37 >> 62)
        {
          v15 = sub_76A860();
        }

        else
        {
          v15 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
        }

        v36 = v13;
        v7 = __OFADD__(v15, v13);
        v16 = v15 + v13;
        if (v7)
        {
          goto LABEL_46;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v14)
          {
            v17 = v37 & 0xFFFFFFFFFFFFFF8;
            if (v16 <= *(&dword_18 + (v37 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

LABEL_26:
          sub_76A860();
          goto LABEL_27;
        }

        if (v14)
        {
          goto LABEL_26;
        }

LABEL_27:
        v37 = sub_76A780();
        v17 = v37 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v12)
        {
          v20 = sub_76A860();
          if (v20)
          {
LABEL_32:
            if (((v19 >> 1) - v18) < v36)
            {
              goto LABEL_48;
            }

            v21 = v17 + 8 * v18 + 32;
            if (v12)
            {
              if (v20 < 1)
              {
                goto LABEL_50;
              }

              sub_16194(&unk_961CF0, &qword_961CE8, qword_7AD548, &protocol conformance descriptor for [A]);
              for (j = 0; j != v20; ++j)
              {
                sub_BD88(&qword_961CE8, qword_7AD548);
                v24 = sub_10B534(v38, j, v11);
                v26 = *v25;
                (v24)(v38, 0);
                *(v21 + 8 * j) = v26;
              }

              i = v30;
              v1 = v31;
              v22 = v36;
            }

            else
            {
              sub_BE70(0, &qword_950A70, UILabel_ptr);
              v22 = v36;
              swift_arrayInitWithCopy();
            }

            v4 = v32;
            if (v22 > 0)
            {
              v27 = *(v17 + 16);
              v7 = __OFADD__(v27, v22);
              v28 = v27 + v22;
              if (v7)
              {
                goto LABEL_49;
              }

              *(v17 + 16) = v28;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v20 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
          if (v20)
          {
            goto LABEL_32;
          }
        }

        v4 = v32;
        if (v36 > 0)
        {
          goto LABEL_47;
        }

LABEL_5:
        v39 = v37;
        if (v3 == i)
        {
          return v37;
        }
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
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void sub_6AAAE8(void *a1)
{
  v112 = sub_768380();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_7683C0();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_7683E0();
  v107 = *(v115 - 8);
  __chkstk_darwin(v115);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v106 = &v93 - v10;
  v11 = [a1 viewForKey:{UITransitionContextFromViewKey, v9}];
  v12 = v11;
  if (v11)
  {
    [v11 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v21 = [a1 containerView];
    [v21 bounds];
    v14 = v22;
    v16 = v23;
    v18 = v24;
    v20 = v25;
  }

  *&v26 = COERCE_DOUBLE(swift_allocObject());
  v27 = &v1[OBJC_IVAR____TtC18ASMessagesProvider21BouncyToRectAnimation_toRect];
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider21BouncyToRectAnimation_toRect + 32])
  {
    v117.origin.x = v14;
    v117.origin.y = v16;
    v117.size.width = v18;
    v117.size.height = v20;
    v28 = CGRectGetWidth(v117) * 0.3;
    v118.origin.x = v14;
    v118.origin.y = v16;
    v118.size.width = v18;
    v118.size.height = v20;
    v29 = CGRectGetHeight(v118) * 0.3;
    v119.origin.x = v14;
    v119.origin.y = v16;
    v119.size.width = v18;
    v119.size.height = v20;
    v120 = CGRectInset(v119, v28, v29);
    x = v120.origin.x;
    y = v120.origin.y;
    width = v120.size.width;
    height = v120.size.height;
  }

  else
  {
    width = v27[2];
    height = v27[3];
    x = *v27;
    y = v27[1];
  }

  v105 = v1;
  v26[2] = x;
  v26[3] = y;
  v26[4] = width;
  v26[5] = height;
  v121.origin.x = v14;
  v121.origin.y = v16;
  v121.size.width = v18;
  v121.size.height = v20;
  v104 = CGRectGetWidth(v121);
  v122.origin.x = x;
  v122.origin.y = y;
  v122.size.width = width;
  v122.size.height = height;
  v98 = CGRectGetWidth(v122);
  v123.origin.x = v14;
  v123.origin.y = v16;
  v123.size.width = v18;
  v123.size.height = v20;
  v96 = CGRectGetHeight(v123);
  v124.origin.x = x;
  v124.origin.y = y;
  v124.size.width = width;
  v124.size.height = height;
  v95 = CGRectGetHeight(v124);
  v125.origin.x = v14;
  v125.origin.y = v16;
  v125.size.width = v18;
  v125.size.height = v20;
  MidX = CGRectGetMidX(v125);
  v126.origin.x = x;
  v126.origin.y = y;
  v126.size.width = width;
  v126.size.height = height;
  v34 = CGRectGetMidX(v126);
  v127.size.height = v20;
  v35 = v34;
  *&v103 = v14;
  v127.origin.x = v14;
  v102 = v16;
  v127.origin.y = v16;
  v101 = v18;
  v127.size.width = v18;
  v100 = v127.size.height;
  MidY = CGRectGetMidY(v127);
  v113 = x;
  v128.origin.x = x;
  v97 = y;
  v128.origin.y = y;
  v114 = width;
  v128.size.width = width;
  v99 = height;
  v128.size.height = height;
  v37 = CGRectGetMidY(v128);
  v38 = sqrt((v104 - v98) * (v104 - v98) + (v96 - v95) * (v96 - v95));
  v39 = sqrt((MidX - v35) * (MidX - v35) + (MidY - v37) * (MidY - v37));
  if (v38 > v39)
  {
    v39 = v38;
  }

  v98 = v39 / 0.7 / v39;
  v40 = [a1 viewForKey:UITransitionContextToViewKey];
  v41 = *&v40;
  if (*&v40 != 0.0)
  {
    v42 = v40;
    v43 = [a1 containerView];
    [v43 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    [v42 setFrame:{v45, v47, v49, v51}];
    v52 = v42;
    v53 = [a1 containerView];
    [v53 insertSubview:v52 below:v12];
  }

  v104 = v41;
  v54 = v113;
  v129.origin.x = v113;
  v55 = v97;
  v129.origin.y = v97;
  v129.size.width = v114;
  v56 = v99;
  v129.size.height = v99;
  MinY = CGRectGetMinY(v129);
  v58 = *&v103;
  *&v130.origin.x = v103;
  v59 = v102;
  v130.origin.y = v102;
  v60 = v101;
  v130.size.width = v101;
  v61 = v100;
  v130.size.height = v100;
  v62 = MinY - CGRectGetMinY(v130);
  v131.origin.x = v54;
  v131.origin.y = v55;
  v63 = v114;
  v131.size.width = v114;
  v131.size.height = v56;
  v64 = CGRectGetMidX(v131);
  v132.origin.x = v58;
  v132.origin.y = v59;
  v132.size.width = v60;
  v132.size.height = v61;
  v65 = CGRectGetMidX(v132);
  CATransform3DMakeTranslation(&aBlock, v64 - v65, v62, 0.0);
  v26[3] = v59;
  v133.origin.x = v58;
  v133.origin.y = v59;
  v133.size.width = v60;
  v133.size.height = v61;
  v66 = CGRectGetWidth(v133);
  v134.origin.x = v113;
  v134.origin.y = v59;
  v134.size.width = v63;
  v134.size.height = v56;
  v67 = CGRectGetWidth(v134);
  v114 = *&v26;
  v26[2] = v58 + (v66 - v67) * 0.5;
  v68 = sub_769210();
  v69 = [objc_opt_self() animationWithKeyPath:v68];

  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 valueWithCATransform3D:&aBlock];
  [v71 setToValue:v72];

  [v71 setDamping:16.0];
  [v71 setMass:1.0];
  [v71 setStiffness:150.0];
  [v71 setInitialVelocity:v98];
  v73 = v71;
  [v73 settlingDuration];
  [v73 setDuration:?];
  [v73 setFillMode:kCAFillModeForwards];
  [v73 setRemovedOnCompletion:0];

  if (v12)
  {
    v74 = [v12 layer];
    v75 = sub_769210();
    [v74 addAnimation:v73 forKey:v75];
  }

  [v73 settlingDuration];
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  *&v103 = COERCE_DOUBLE(sub_769970());
  sub_7683D0();
  v76 = v106;
  sub_768450();
  v113 = v107[1];
  (*&v113)(v7, v115);
  v77 = swift_allocObject();
  v78 = v105;
  *(v77 + 16) = a1;
  *(v77 + 24) = v78;
  *&aBlock.m21 = sub_1ABBCC;
  *&aBlock.m22 = v77;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_23F0CC;
  *&aBlock.m14 = &unk_89C890;
  v79 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v107 = v78;

  sub_7683A0();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350, &unk_77F850);
  v80 = v12;
  sub_16194(&qword_9406F0, &qword_940350, &unk_77F850, &protocol conformance descriptor for [A]);
  v81 = v109;
  v82 = v112;
  sub_76A5A0();
  v83 = v103;
  sub_769930();
  _Block_release(v79);

  (*(v111 + 8))(v81, v82);
  (*(v108 + 8))(v5, v110);
  (*&v113)(v76, v115);
  v84 = objc_opt_self();
  v85 = swift_allocObject();
  v86 = v107;
  *(v85 + 2) = v107;
  *(v85 + 3) = v80;
  v85[4] = v114;
  *&aBlock.m21 = sub_6ABC28;
  *&aBlock.m22 = v85;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_23F0CC;
  *&aBlock.m14 = &unk_89C8E0;
  v87 = _Block_copy(&aBlock);
  v88 = v86;
  v89 = v80;

  v90 = swift_allocObject();
  *(v90 + 16) = v80;
  *&aBlock.m21 = sub_6ABC6C;
  *&aBlock.m22 = v90;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_3D6D80;
  *&aBlock.m14 = &unk_89C930;
  v91 = _Block_copy(&aBlock);
  v92 = v89;

  [v84 animateWithDuration:131201 delay:v87 options:v91 animations:0.35 completion:0.0];

  _Block_release(v91);
  _Block_release(v87);
}

void sub_6AB75C(uint64_t a1, void *a2, double *a3)
{
  v6 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = (v7 + 48);
    v10 = (v7 + 48);
    do
    {
      v11 = *v10;
      v10 += 24;
      if (v11 == 1)
      {
        v12 = *(v9 - 2);

        v12(1, 1);
      }

      v9 = v10;
      --v8;
    }

    while (v8);
  }

  if (a2)
  {
    swift_beginAccess();
    [a2 setFrame:{a3[2], a3[3], a3[4], a3[5]}];
    if (*(a1 + OBJC_IVAR____TtC18ASMessagesProvider21BouncyToRectAnimation_toRect + 32) == 1)
    {
      [a2 setAlpha:0.0];
    }
  }
}

void sub_6AB884(int a1, id a2)
{
  if (a2)
  {
    v2 = [a2 subviews];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v3 = sub_769460();

    v4 = sub_6AA568(v3);

    v5 = [objc_allocWithZone(CATransition) init];
    v6 = objc_opt_self();
    v15 = v5;
    v7 = [v6 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v15 setTimingFunction:v7];

    [v15 setType:kCATransitionFade];
    [v15 setDuration:0.2];

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
    {
      v9 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = sub_76A770();
        }

        else
        {
          if (v9 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_13;
          }

          v10 = *&v4[v9 + 4];
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 layer];
        [v13 setMasksToBounds:1];

        v14 = [v11 layer];
        [v14 addAnimation:v15 forKey:kCATransitionFade];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  else
  {
    __break(1u);
  }
}

id sub_6ABB20(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BouncyToRectAnimation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_6ABB88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

double sub_6ABBC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_6ABBE0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6ABC34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6ABC88()
{
  v0 = sub_BD88(&unk_945000, &qword_781830);
  sub_161DC(v0, qword_9A07A8);
  sub_BE38(v0, qword_9A07A8);
  return sub_768800();
}

char *sub_6ABD00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations(0);
  swift_allocObject();
  *&v4[v11] = sub_8851C();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource] = 0;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_userDefaults;
  *&v5[v12] = [objc_opt_self() standardUserDefaults];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_notificationCenter;
  *&v5[v13] = [objc_opt_self() defaultCenter];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_debugSections] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_objectGraph] = a1;
  v14 = objc_allocWithZone(UICollectionViewFlowLayout);

  v15 = [v14 init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v28, "initWithCollectionViewLayout:", v15);

  if (a3)
  {
    v17 = v16;
    sub_6AF7DC(a2, a3, a4);

    v18 = a4;
  }

  else
  {
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_77D9F0;
    v19 = objc_allocWithZone(type metadata accessor for DebugMenuSettings());
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v27.receiver = v19;
    v27.super_class = type metadata accessor for DebugSettingsProvider();
    v20 = v16;
    *(v18 + 32) = objc_msgSendSuper2(&v27, "init");
  }

  v21 = sub_6AF434(v18, a1);

  *&v16[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_debugSections] = v21;

  v22 = v16;
  if (a3)
  {
  }

  v23 = sub_769210();

  [v16 setTitle:v23];

  v24 = [v16 navigationItem];
  v25 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v16 action:"dismissFrom:"];

  [v24 setRightBarButtonItem:v25];

  return v16;
}

id sub_6AC030()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7676A0();
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLoad", v4);
  v5 = sub_6AC2CC();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource;
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource] = v5;

  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    aBlock[4] = sub_6B0130;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_507AD4;
    aBlock[3] = &unk_89CAC0;
    v12 = _Block_copy(aBlock);

    v13 = [v11 initWithSectionProvider:v12];
    _Block_release(v12);

    [v9 setCollectionViewLayout:v13];

    result = [v1 collectionView];
    if (result)
    {
      v14 = result;
      [result setDataSource:*&v1[v6]];

      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_notificationCenter] addObserver:v1 selector:"userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:*&v1[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_userDefaults]];
      sub_6AC584();
      v15 = UIContentSizeCategoryLarge;
      sub_7698D0();
      sub_767670();
      return sub_7698E0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_6AC2CC()
{
  v1 = sub_BD88(&qword_93FF58, &unk_77F3A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  sub_769240();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BE70(0, &qword_93FF60, UICollectionViewCell_ptr);
  sub_769880();
  result = [v0 collectionView];
  if (result)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_6B0140;
    *(v10 + 24) = v9;
    v11 = objc_allocWithZone(sub_BD88(&qword_961D90, qword_7AD5C0));
    v12 = sub_767A20();
    (*(v2 + 16))(v4, v7, v1);
    v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v14 = swift_allocObject();
    (*(v2 + 32))(v14 + v13, v4, v1);
    sub_767A30();
    (*(v2 + 8))(v7, v1);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_6AC584()
{
  v1 = v0;
  v2 = sub_BD88(&qword_961D68, &qword_7AD5A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v41 = sub_BD88(&qword_961D70, &qword_7AD5A8);
  v30 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v29 - v6;
  type metadata accessor for DebugSection();
  v8 = type metadata accessor for DebugSetting();
  sub_6B02DC(&qword_961D80, type metadata accessor for DebugSection, &unk_7869F8);
  v9 = sub_6B02DC(&qword_961D88, type metadata accessor for DebugSetting, &unk_78A0C8);
  v42 = v7;
  v39 = v9;
  v40 = v8;
  sub_767920();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_debugSections;
  v11 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_debugSections);
  if (v11 >> 62)
  {
    goto LABEL_45;
  }

  v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v35 = v1;
  if (v12)
  {
    if (v12 < 1)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v43 = v10;
    v44 = v3;

    v13 = 0;
    v45 = xmmword_77D9F0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_76A770();
      }

      else
      {
        v14 = *(v11 + 8 * v13 + 32);
      }

      ++v13;
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v15 = swift_allocObject();
      *(v15 + 16) = v45;
      *(v15 + 32) = v14;

      v16._rawValue = v15;
      sub_7678C0(v16);
    }

    while (v12 != v13);

    v1 = v35;
    v10 = v43;
    v3 = v44;
  }

  v38 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource;
  v17 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource);
  if (!v17)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v18 = v17;
  sub_767A60();

  v11 = *(v1 + v10);
  if (v11 >> 62)
  {
    v10 = sub_76A860();
    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
LABEL_14:
      v31 = v11 + 32;
      v32 = v11 & 0xFFFFFFFFFFFFFF8;
      v36 = (v3 + 8);
      v37 = v11 & 0xC000000000000001;

      v3 = 0;
      v45 = xmmword_77D9F0;
      v33 = v10;
      v34 = v11;
      while (1)
      {
        if (v37)
        {
          v19 = sub_76A770();
          v20 = __OFADD__(v3++, 1);
          if (v20)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v3 >= *(v32 + 16))
          {
            goto LABEL_44;
          }

          v19 = *(v31 + 8 * v3);

          v20 = __OFADD__(v3++, 1);
          if (v20)
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v12 = sub_76A860();
            goto LABEL_3;
          }
        }

        sub_767AE0();
        v21 = *(v19 + 48);
        if (v21 >> 62)
        {
          v22 = sub_76A860();
          if (!v22)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
          if (!v22)
          {
            goto LABEL_36;
          }
        }

        if (v22 < 1)
        {
          goto LABEL_43;
        }

        v43 = v19;
        v44 = v3;

        for (i = 0; i != v22; ++i)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = sub_76A770();
          }

          else
          {
            v24 = *(v21 + 8 * i + 32);
          }

          sub_BD88(&unk_93F5C0, &unk_77C600);
          v25 = swift_allocObject();
          *(v25 + 16) = v45;
          *(v25 + 32) = v24;
          v46 = 0;

          sub_767AB0();

          type metadata accessor for MenuDebugSetting();
          v26 = swift_dynamicCastClass();
          if (v26)
          {
            if (*(v26 + 72) >> 62)
            {

              sub_76A850();
            }

            else
            {
              swift_bridgeObjectRetain_n();

              sub_76A960();
            }

            v46 = v24;
            sub_767AB0();
          }

          else
          {
          }
        }

        v11 = v34;
        v1 = v35;
        v10 = v33;
        v19 = v43;
        v3 = v44;
LABEL_36:
        v27 = *(v1 + v38);
        if (!v27)
        {
          goto LABEL_49;
        }

        v46 = v19;
        v28 = v27;
        sub_767A70();

        (*v36)(v5, v2);

        if (v3 == v10)
        {

          break;
        }
      }
    }
  }

  (*(v30 + 8))(v42, v41);
}

id sub_6ACBF4()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_notificationCenter] removeObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_6ACDC0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v3 = sub_BD88(&qword_961D70, &qword_7AD5A8);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = sub_767B30();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_767B10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_767B70();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v10, v16);
  sub_767B40();
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v6);
  sub_767B60();
  sub_BE70(0, &unk_93FFE0, NSCollectionLayoutSection_ptr);
  v19 = sub_769C50();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v15 + 8))(v18, v14);
    return;
  }

  v21 = v15;
  v22 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource);
  v23 = Strong;
  v24 = v22;

  if (!v22)
  {
    goto LABEL_16;
  }

  sub_767A90();

  v25 = v40;
  v26 = sub_767910();
  (*(v39 + 8))(v5, v25);
  v27 = v14;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = sub_76A770();
    goto LABEL_7;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)) <= v41)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v28 = *(v26 + 8 * v41 + 32);

LABEL_7:

  v29 = *(v28 + 40);
  v30 = *(v28 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v29) & 0xF;
  }

  if (v30)
  {
    v31 = objc_opt_self();
    v32 = [v31 fractionalWidthDimension:1.0];
    v33 = [v31 estimatedDimension:44.0];
    v34 = [objc_opt_self() sizeWithWidthDimension:v32 heightDimension:v33];

    v35 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v34 elementKind:UICollectionElementKindSectionHeader alignment:1];
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_77D9F0;
    *(v36 + 32) = v35;
    sub_BE70(0, &unk_956240, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v37 = v35;
    isa = sub_769450().super.isa;

    [v19 setBoundarySupplementaryItems:isa];

    (*(v21 + 8))(v18, v27);
  }

  else
  {
    (*(v21 + 8))(v18, v14);
  }
}

unint64_t sub_6AD328(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_767880();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_961D70, &qword_7AD5A8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v21[1] = a1;
    v17 = *(result + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource);
    if (v17)
    {
      v18 = v17;
      sub_767A90();

      v19 = sub_767910();
      (*(v12 + 8))(v14, v11);
      result = sub_757650();
      if ((v19 & 0xC000000000000001) != 0)
      {
        sub_76A770();
        goto LABEL_7;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
      {

LABEL_7:

        sub_7677E0();

        sub_767860();
        v22[3] = v7;
        v22[4] = &protocol witness table for UIListContentConfiguration;
        v20 = sub_B1B4(v22);
        (*(v8 + 16))(v20, v10, v7);
        sub_769AE0();

        return (*(v8 + 8))(v10, v7);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_6AD5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    v9 = sub_88710(a1, a3, a2);

    if (v9)
    {
      return v9;
    }
  }

  sub_76A730(55);
  v11._object = 0x80000000007F0F20;
  v11._countAndFlagsBits = 0xD000000000000035;
  sub_769370(v11);
  sub_757640();
  sub_6B02DC(&qword_961D98, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v12._countAndFlagsBits = sub_76A910();
  sub_769370(v12);

  result = sub_76A840();
  __break(1u);
  return result;
}

void sub_6AD744(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong collectionView];

    if (v3)
    {
      [v3 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_6AD828(void *a1, uint64_t a2)
{
  v145 = sub_BD88(&qword_961D68, &qword_7AD5A0);
  v142 = *(v145 - 8);
  __chkstk_darwin(v145);
  v144 = &v135 - v5;
  v148 = sub_BD88(&qword_961D70, &qword_7AD5A8);
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v143 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v156 = &v135 - v8;
  __chkstk_darwin(v9);
  v160 = &v135 - v10;
  v154 = sub_758B40();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v155 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_75F340();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v153 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760280();
  v149 = *(v13 - 8);
  __chkstk_darwin(v13);
  v158 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7687B0();
  __chkstk_darwin(v15 - 8);
  v157 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v17 - 8);
  v19 = &v135 - v18;
  v20 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v20 - 8);
  v22 = &v135 - v21;
  v23 = sub_765490();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v27 - 8);
  v29 = &v135 - v28;
  v162 = v2;
  v147 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource;
  v30 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource];
  if (!v30)
  {
    __break(1u);
    goto LABEL_63;
  }

  v31 = v30;
  v161 = a2;
  sub_767A40();

  v32 = v167;
  if (!v167)
  {
    return;
  }

  v159 = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    v35 = *(v33 + 72);
    if (v35)
    {
      v36 = v35();
      v156 = v37;
    }

    else
    {
      v36 = 0;
      v156 = 0;
    }

    v142 = v36;
    v45 = *(v34 + 88);
    if (v45)
    {
      v137 = v19;
      v138 = v24;
      v140 = v13;
      v145 = v32;
      v46 = *(v34 + 64);
      v136 = *(v34 + 56);
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_77D9F0;
      *(v47 + 32) = v45;
      v48 = *&v162[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_objectGraph];
      v49 = sub_BD88(&unk_93F630, &unk_77E230);
      v144 = v45;
      v143 = v46;

      v139 = v48;
      sub_768860();
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v141 = v49;
      if (v51(v29, 1, v49) == 1)
      {

        v52 = sub_10A2C(v29, &unk_93F980, &qword_77EDA0);
      }

      else
      {
        v169 = 0;
        v167 = 0u;
        v168 = 0u;
        (*(v138 + 104))(v26, enum case for FlowPage.debugSettings(_:), v23);
        v54 = sub_7570A0();
        (*(*(v54 - 8) + 56))(v22, 1, 1, v54);
        v55 = sub_759E30();
        (*(*(v55 - 8) + 56))(v137, 1, 1, v55);
        v163 = v136;
        v164 = v143;
        v165 = v47;
        v166 = &type metadata for DebugMenuPage;
        sub_768790();
        (*(v149 + 104))(v158, enum case for FlowPresentationContext.push(_:), v140);
        (*(v150 + 104))(v153, enum case for FlowAnimationBehavior.infer(_:), v151);
        (*(v152 + 104))(v155, enum case for FlowOrigin.inapp(_:), v154);
        v56 = v50;
        v57 = sub_768CE0();
        v59 = v58;
        sub_758B20();
        swift_allocObject();
        v132[1] = v57;
        v133 = v59;
        v132[0] = 0;
        v60 = sub_758AD0();
        sub_32AC14(v60, 1, v139, v29);

        v52 = (*(v56 + 8))(v29, v141);
      }

      v32 = v145;
      v53 = v162;
    }

    else
    {
      v53 = v162;
      v52 = (*(v34 + 96))(*&v162[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_objectGraph]);
    }

    v61 = v160;
    v62 = v156;
    if (!v156)
    {
      goto LABEL_35;
    }

    v63 = *(v34 + 72);
    if (!v63)
    {
      goto LABEL_34;
    }

    v64 = v63(v52);
    if (!v65)
    {
      goto LABEL_34;
    }

    if (v64 == v142 && v65 == v62 || (sub_76A950() & 1) != 0)
    {
      goto LABEL_33;
    }

    v86 = v147;
    v87 = *&v53[v147];
    if (v87)
    {
      v88 = v87;
      sub_767A90();

      sub_BD88(&unk_93F5C0, &unk_77C600);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_77D9F0;
      *(v89 + 32) = v32;

      v90._rawValue = v89;
      v91 = v148;
      sub_7678F0(v90);

      v92 = *&v53[v86];
      if (v92)
      {
        v93 = v92;

        sub_767A60();

        (*(v146 + 8))(v61, v91);
        goto LABEL_35;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  type metadata accessor for ActionDebugSetting();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = v38;
    v40 = *(v38 + 88);
    v41 = v162;
    if (v40)
    {
      v42 = v40();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v72 = v156;
    v73 = (*(v39 + 104))(*&v41[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_objectGraph]);
    if (!v44)
    {
      goto LABEL_35;
    }

    v74 = *(v39 + 88);
    if (!v74)
    {
      goto LABEL_34;
    }

    v75 = v74(v73);
    if (!v76)
    {
      goto LABEL_34;
    }

    if (v75 == v42 && v76 == v44 || (sub_76A950() & 1) != 0)
    {
LABEL_33:

LABEL_34:

      goto LABEL_35;
    }

    v100 = v147;
    v101 = *&v41[v147];
    if (v101)
    {
      v102 = v101;
      sub_767A90();

      sub_BD88(&unk_93F5C0, &unk_77C600);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_77D9F0;
      *(v103 + 32) = v32;

      v104._rawValue = v103;
      v105 = v148;
      sub_7678F0(v104);

      v106 = *&v41[v100];
      if (v106)
      {
        v107 = v106;

        sub_767A60();

        (*(v146 + 8))(v72, v105);
        goto LABEL_35;
      }

      goto LABEL_66;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  type metadata accessor for StringPreferencesDebugSetting(0);
  v66 = swift_dynamicCastClass();
  v67 = v162;
  if (!v66)
  {
    type metadata accessor for StringUserDefaultsDebugSetting();
    v78 = swift_dynamicCastClass();
    if (v78)
    {
      v80 = *(v78 + 56);
      v79 = *(v78 + 64);
      __chkstk_darwin(v78);
      v133 = v67;
      v134 = v81;
      v82 = v81;
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v82;
      LOBYTE(v82) = v82[88];
      swift_retain_n();

      v85 = sub_6AFC20(v80, v79, sub_6B0054, v132, sub_6B005C, v84, v82);

      [v67 presentViewController:v85 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for PromptActionDebugSetting();
    v94 = swift_dynamicCastClass();
    if (v94)
    {
      v95 = v94;
      v96 = v94[8];
      v160 = v94[7];
      v97 = v94[9];
      v98 = v94[10];
      if (v97)
      {
        v94 = swift_allocObject();
        v99 = v94;
        v94[2] = v97;
        v94[3] = v98;
      }

      else
      {
        v99 = 0;
      }

      v158 = &v135;
      __chkstk_darwin(v94);
      v133 = v122;
      v134 = v99;
      v123 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v124 = v67;
      v125 = swift_allocObject();
      *(v125 + 16) = v123;
      *(v125 + 24) = v95;
      swift_retain_n();
      sub_F714(v97, v98);

      v126 = sub_6AFC20(v160, v96, sub_6AFFA8, v132, sub_6B001C, v125, 0);

      [v124 presentViewController:v126 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for MenuDebugSetting();
    v108 = swift_dynamicCastClass();
    if (v108)
    {
      v109 = v147;
      v110 = *&v67[v147];
      if (!v110)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      v111 = v108;
      v112 = v110;
      v113 = v143;
      sub_767A90();

      v163 = v111;
      v114 = v148;
      sub_767900();
      (*(v146 + 8))(v113, v114);
      v115 = v167;
      v116 = v145;
      v117 = v144;
      if (!v167)
      {
        goto LABEL_35;
      }

      v118 = *&v67[v109];
      if (!v118)
      {
        goto LABEL_68;
      }

      v119 = v118;
      sub_767A80();

      *&v167 = v32;
      LOBYTE(v119) = sub_767AA0();
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_77D9F0;
      *(v120 + 32) = v32;

      v121._rawValue = v120;
      if (v119)
      {
        sub_767AD0(v121);
      }

      else
      {
        sub_767AC0(v121);
      }

      v130 = *&v67[v109];
      if (!v130)
      {
        goto LABEL_69;
      }

      *&v167 = v115;
      v131 = v130;
      sub_767A70();

      (*(v142 + 8))(v117, v116);
    }

    else
    {
      type metadata accessor for MenuItemDebugSetting();
      v127 = swift_dynamicCastClass();
      if (!v127)
      {
        goto LABEL_35;
      }

      v128 = *(v127 + 80);

      v128(v129);

      [v159 reloadData];
    }

    goto LABEL_35;
  }

  v68 = *(v66 + 56);
  v69 = *(v66 + 64);
  v70 = v66;
  swift_retain_n();

  v71 = sub_6AFC20(v68, v69, sub_6B0064, v70, sub_6B006C, v70, 1);

  [v67 presentViewController:v71 animated:1 completion:0];

LABEL_35:
  isa = sub_757550().super.isa;
  [v159 deselectItemAtIndexPath:isa animated:1];
}

uint64_t sub_6AE9F0(uint64_t a1)
{
  swift_getObjectType();
  sub_7686D0();
  return v2;
}

uint64_t sub_6AEA68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_BD88(&qword_9526A0, &unk_7AD5B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - v8;
  if (!a2)
  {
    goto LABEL_6;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    swift_getObjectType();
    (*(v7 + 16))(v9, a3 + OBJC_IVAR____TtC18ASMessagesProvider29StringPreferencesDebugSetting_key, v6);
    v15[0] = a1;
    v15[1] = a2;

    return sub_7686E0();
  }

  else
  {
LABEL_6:
    swift_getObjectType();
    v12 = OBJC_IVAR____TtC18ASMessagesProvider29StringPreferencesDebugSetting_key;
    v15[3] = v6;
    v15[4] = sub_16194(&qword_9526B8, &qword_9526A0, &unk_7AD5B0, &protocol conformance descriptor for PreferenceKey<A>);
    v13 = sub_B1B4(v15);
    (*(v7 + 16))(v13, a3 + v12, v6);
    sub_7686A0();
    return sub_BEB8(v15);
  }
}

uint64_t sub_6AEC68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_userDefaults);
  v3 = sub_769210();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10A2C(v9, &unk_93FBD0, &qword_77DFA0);
    return 0;
  }
}

void sub_6AED54(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_userDefaults);

    if (a2)
    {
      a2 = sub_769210();
    }

    v8 = sub_769210();
    [v7 setObject:a2 forKey:v8];

    swift_unknownObjectRelease();
  }
}

double sub_6AEE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(a4 + 88);
    v10 = Strong;

    v9(v11, a1, a2);
  }

  return result;
}

void sub_6AF0BC(void *a1, uint64_t a2, NSString a3)
{
  if (!a3)
  {
LABEL_7:
    v4 = a3;
    [a1 setText:?];

    return;
  }

  v3 = a1;
  if ((a2 != 0x746C7561666544 || a3 != 0xE700000000000000) && (sub_76A950() & 1) == 0)
  {
    a3 = sub_769210();
    a1 = v3;
    goto LABEL_7;
  }
}

void sub_6AF184(int a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, char a7)
{
  v11 = [a2 textFields];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  sub_BE70(0, &qword_961D78, UITextField_ptr);
  v13 = sub_769460();

  if (!(v13 >> 62))
  {
    if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!sub_76A860())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 text];

  if (v16)
  {
    v17 = sub_769240();
    v19 = v18;

    if (a4 && (v17 == a3 && v19 == a4 || (sub_76A950() & 1) != 0))
    {
      goto LABEL_12;
    }

    a5(v17, v19);

    if (a7)
    {
      v20 = [objc_opt_self() sharedCoordinator];
      [v20 notify];
    }
  }
}

double *sub_6AF434(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v3 = *(&dword_10 + (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8));
  while (v3)
  {
    v4 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v29 = v3;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v30 = a2;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_76A770();
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = (*&stru_68.segname[swift_isaMask & *isUniquelyReferenced_nonNull_bridgeObject])(a2);
      v9 = v8;
      v10 = v8 >> 62;
      if (v8 >> 62)
      {
        v11 = sub_76A860();
      }

      else
      {
        v11 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      }

      v12 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_76A860();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v35 = v6;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_76A860();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      v14 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v15 = v11;
        goto LABEL_22;
      }

LABEL_21:
      v15 = v11;
      isUniquelyReferenced_nonNull_bridgeObject = sub_76A780();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_76A860();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v17 >> 1) - v16) < v15)
          {
            goto LABEL_44;
          }

          v20 = v14 + 8 * v16 + 32;
          v34 = v14;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_46;
            }

            sub_16194(&qword_961D60, &qword_961D58, &unk_7AD590, &protocol conformance descriptor for [A]);
            for (i = 0; i != v18; ++i)
            {
              sub_BD88(&qword_961D58, &unk_7AD590);
              v22 = sub_10B63C(v36, i, v9);
              v24 = *v23;

              (v22)(v36, 0);
              *(v20 + 8 * i) = v24;
            }

            v3 = v29;
            a2 = v30;
          }

          else
          {
            type metadata accessor for DebugSection();
            swift_arrayInitWithCopy();
          }

          if (v15 > 0)
          {
            v25 = *(v34 + 16);
            v7 = __OFADD__(v25, v15);
            v26 = v25 + v15;
            if (v7)
            {
              goto LABEL_45;
            }

            *(v34 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
        if (v18)
        {
          goto LABEL_26;
        }
      }

      if (v15 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v5;
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
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_76A860();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return _swiftEmptyArrayStorage;
}

double sub_6AF7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

void sub_6AF820()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations(0);
  swift_allocObject();
  *(v0 + v2) = sub_8851C();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_userDefaults;
  *(v1 + v3) = [objc_opt_self() standardUserDefaults];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_notificationCenter;
  *(v1 + v4) = [objc_opt_self() defaultCenter];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_debugSections) = _swiftEmptyArrayStorage;
  sub_76A840();
  __break(1u);
}

uint64_t sub_6AF928()
{
  v0 = sub_768380();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7683C0();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v6 = sub_769970();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_6B0128;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_89CA98;
  v8 = _Block_copy(aBlock);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_6B02DC(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_16194(&qword_9406F0, &qword_940350, &unk_77F850, &protocol conformance descriptor for [A]);
  sub_76A5A0();
  sub_769980();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

id sub_6AFC20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = a3();
  v10 = v9;
  v11 = sub_769210();
  v12 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  v30 = sub_6B00AC;
  v31 = v13;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_6B0344;
  v29 = &unk_89CA20;
  v14 = _Block_copy(&aBlock);

  [v12 addTextFieldWithConfigurationHandler:v14];
  _Block_release(v14);
  v15 = sub_769210();
  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v15 style:1 handler:0];

  [v12 addAction:v17];
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v8;
  *(v18 + 32) = v10;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  v19 = v12;

  v20 = sub_769210();
  v30 = sub_6B0114;
  v31 = v18;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_6B0344;
  v29 = &unk_89CA70;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 actionWithTitle:v20 style:2 handler:v21];
  _Block_release(v21);

  [v19 addAction:v22];
  return v19;
}

void sub_6AFEEC(_BOOL8 result)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource);
  if (v2)
  {
    v3 = v2;
    sub_767A40();

    if (v4)
    {
      type metadata accessor for InfoDebugSetting();
      if (swift_dynamicCastClass() || (type metadata accessor for BoolUserDefaultsDebugSetting(), swift_dynamicCastClass()))
      {
      }

      else
      {
        type metadata accessor for BoolPreferencesDebugSetting(0);
        swift_dynamicCastClass();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_6AFFE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6B0024@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_6B0074()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_6B00B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_6B00CC()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_6B0148()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6B01AC()
{
  v1 = sub_BD88(&qword_93FF58, &unk_77F3A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_6B0240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_BD88(&qword_93FF58, &unk_77F3A8);
  sub_BE70(0, &qword_93FF60, UICollectionViewCell_ptr);
  return sub_7698A0();
}

uint64_t sub_6B02DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_6B0348(void *a1)
{
  v2 = v1;
  v18 = a1;
  v3 = sub_7593D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_6B260C(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v9 = [v8 superview];
    if (!v9)
    {
LABEL_6:

      goto LABEL_7;
    }

    v10 = v9;
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v11 = v1;
    v12 = sub_76A1C0();

    if (v12)
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v8 = v13;
        [v13 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*(v4 + 104))(v6, enum case for CornerStyle.continuous(_:), v3);
    sub_75CCD0();
    (*(v4 + 8))(v6, v3);
    [v2 addSubview:v15];
    [v2 sendSubviewToBack:v15];
    [v2 setNeedsLayout];
  }

  else
  {
    v16 = v18;
  }
}

char *sub_6B05BC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_75CF00();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayStyle;
  v19 = enum case for MediaOverlayStyle.matchSystem(_:);
  v20 = sub_75CA40();
  (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView;
  *&v5[v21] = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView;
  *&v5[v22] = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_93E0E0 != -1)
  {
    swift_once();
  }

  sub_4E2E0(&qword_9A07C0, &v5[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_metrics]);
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v27 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView]];
  [*&v27[v28] _setCornerRadius:1 continuous:12 maskedCorners:20.0];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView;
  v30 = qword_93D580;
  v31 = *(*&v27[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_7666D0();
  v33 = sub_BE38(v32, qword_99E890);
  v34 = *(v32 - 8);
  (*(v34 + 16))(v17, v33, v32);
  (*(v34 + 56))(v17, 0, 1, v32);
  sub_75BA40();

  v35 = qword_93E0E8;
  v36 = *&v27[v29];
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_BE38(v11, qword_961DA0);
  (*(v12 + 16))(v14, v37, v11);
  v38 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v12 + 24))(&v36[v38], v14, v11);
  swift_endAccess();
  [v36 setNeedsLayout];

  (*(v12 + 8))(v14, v11);
  [*&v27[v29] setLayoutMargins:{12.0, 12.0, 12.0, 12.0}];
  v39 = [*&v27[v28] contentView];
  [v39 addSubview:*&v27[v29]];

  sub_6B0ACC();
  return v27;
}

void sub_6B0ACC()
{
  v1 = sub_75CA40();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayStyle;
  swift_beginAccess();
  v11 = *(v2 + 16);
  v11(v9, &v0[v10], v1);
  sub_6B23AC(v9);
  v27 = *(v2 + 8);
  v27(v9, v1);
  sub_BE70(0, &qword_945800, UIVisualEffect_ptr);
  isa = sub_769450().super.isa;
  v13 = v6;
  v14 = v26;

  [v25 setBackgroundEffects:isa];

  v11(v13, &v0[v10], v1);
  v11(v14, v13, v1);
  v15 = (*(v2 + 88))(v14, v1);
  if (v15 == enum case for MediaOverlayStyle.dark(_:))
  {
    v16 = (&dword_0 + 2);
    v27(v13, v1);
  }

  else if (v15 == enum case for MediaOverlayStyle.light(_:))
  {
    v16 = (&dword_0 + 1);
    v27(v13, v1);
  }

  else
  {
    v17 = v27;
    if (v15 == enum case for MediaOverlayStyle.matchSystem(_:))
    {
      v18 = [v0 traitCollection];
      v16 = [v18 userInterfaceStyle];
    }

    else
    {
      v27(v14, v1);
      v16 = (&dword_0 + 1);
    }

    v17(v13, v1);
  }

  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView];
  [v19 setOverrideUserInterfaceStyle:v16];
  v20 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton];
  if (v16 == &dword_0 + 2)
  {
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 whiteColor];
  }

  else
  {
    v24 = v20;
    v23 = 0;
  }

  [v20 setTintColor:v23];
}

uint64_t sub_6B0E70(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_75CA40();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayStyle;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_6B260C(&qword_953438, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
  LOBYTE(v11) = sub_7691C0();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_6B0ACC();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void (*sub_6B1080(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  v5 = sub_7593D0();
  v4[2] = v5;
  v6 = *(v5 - 8);
  v4[3] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_videoView;
  v4[4] = v7;
  v4[5] = v8;
  *v4 = swift_unknownObjectWeakLoadStrong();
  return sub_6B1168;
}

void sub_6B1168(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_6B260C(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v7 = v4;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        v10 = v3[1];
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v11 = v10;
        v12 = sub_76A1C0();

        if (v12)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v4;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v31 = v3[3];
      v30 = v3[4];
      v33 = v3[1];
      v32 = v3[2];
      v31[13](v30, enum case for CornerStyle.continuous(_:), v32);
      sub_75CCD0();
      (v31[1])(v30, v32);
      [v33 addSubview:v29];
      [v33 sendSubviewToBack:v29];
      [v33 setNeedsLayout];
    }

    v27 = v3[4];

    v4 = *v3;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_6B260C(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v15 = [v6 superview];
    if (v15)
    {
      v16 = v15;
      v17 = v3[1];
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v18 = v17;
      v19 = sub_76A1C0();

      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_13;
      }

      v6 = v20;
      [v20 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v24 = v3[3];
    v23 = v3[4];
    v26 = v3[1];
    v25 = v3[2];
    v24[13](v23, enum case for CornerStyle.continuous(_:), v25);
    sub_75CCD0();
    (v24[1])(v23, v25);
    [v26 addSubview:v22];
    [v26 sendSubviewToBack:v22];
    [v26 setNeedsLayout];
  }

  v27 = v3[4];
LABEL_21:

  free(v27);

  free(v3);
}

void sub_6B1504()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView];
  sub_75D650();
  [v1 sizeThatFits:{v2, v3}];
  v5 = v4;
  v15 = v6;
  sub_75D650();
  sub_769CE0();
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView];
  sub_75D650();
  sub_769D20();
  [v7 setFrame:?];
  [v1 setFrame:{0.0, 0.0, v5, v15}];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_75D650();
    [v9 setFrame:?];
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = (v10 + qword_99A1B0);
    v13 = *(v10 + qword_99A1B0);
    v14 = *(v10 + qword_99A1B0 + 16);
    *v12 = 0.0;
    v12[1] = 0.0;
    v12[2] = v15;
    v12[3] = 0.0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(0, v13), vceqq_f64(*&v15, v14)))) & 1) == 0)
    {
      sub_54EB4();
    }
  }
}

uint64_t type metadata accessor for VideoCardView(uint64_t a1)
{
  result = qword_961DE0;
  if (!qword_961DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6B17F8(uint64_t a1)
{
  result = sub_75CA40();
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

uint64_t (*sub_6B18D0(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_6B1080(v2);
  return sub_246E0;
}

double sub_6B1940(uint64_t a1, uint64_t a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();

  return sub_6B2178(a3, a4, a1, a2, v4, ObjectType);
}

uint64_t sub_6B19AC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_6B260C(&qword_961E08, type metadata accessor for VideoCardView, &unk_7AD720);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_6B1A20(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_6B260C(&qword_961E08, type metadata accessor for VideoCardView, &unk_7AD720);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_6B1AAC(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_6B260C(&qword_961E08, type metadata accessor for VideoCardView, &unk_7AD720);
  *(v3 + 32) = sub_75DC50();
  return sub_21028;
}

void sub_6B1CA0()
{
  qword_9A07D8 = &type metadata for CGFloat;
  unk_9A07E0 = &protocol witness table for CGFloat;
  qword_9A07C0 = 0x4066000000000000;
}

uint64_t sub_6B1CC8()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_961DA0);
  sub_BE38(v0, qword_961DA0);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_6B1E2C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  sub_75CE20();
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v18 = v6 + 16;
  v19 = v7;
  v7(v3, v5, v4);
  v8 = v1[13];
  v17 = enum case for FontSource.useCase(_:);
  v16 = v8;
  v8(v3);
  v9 = sub_766CA0();
  v24 = v9;
  v25 = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v10 = sub_B1B4(v20);
  v11 = v1[2];
  v11(v10, v3, v0);
  sub_766CB0();
  v12 = v1[1];
  v12(v3, v0);
  sub_75CE00();
  if (qword_93D580 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v4, qword_99E890);
  v19(v3, v13, v4);
  v16(v3, v17, v0);
  v24 = v9;
  v25 = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v20);
  v11(v14, v3, v0);
  sub_766CB0();
  v12(v3, v0);
  sub_75CED0();
  sub_75CEC0();
  sub_75CEA0();
  sub_75CEC0();
  sub_75CE90();
  v24 = sub_766970();
  v25 = &protocol witness table for ZeroDimension;
  sub_B1B4(v23);
  sub_766960();
  sub_75CDF0();
  return sub_75CE40();
}

double sub_6B2178(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_769AB0();
  type metadata accessor for SmallLockupView(0);
  if (qword_93E0E8 != -1)
  {
    swift_once();
  }

  v13 = sub_75CF00();
  v14 = sub_BE38(v13, qword_961DA0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1FE304(v14, v12, a1, a2);
  swift_unknownObjectRelease();
  if (qword_93E0E0 != -1)
  {
    swift_once();
  }

  sub_4E2E0(&qword_9A07C0, v18);
  v15 = v19;
  sub_B170(v18, v19);
  sub_33964(v15);
  sub_766700();
  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  sub_BEB8(v18);
  return a1;
}

uint64_t sub_6B23AC(uint64_t a1)
{
  v2 = sub_75CA40();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MediaOverlayStyle.dark(_:))
  {
    v8 = [objc_opt_self() _gkGameLayerModuleVisualEffect];
    sub_BE70(0, &qword_945800, UIVisualEffect_ptr);
    v9 = sub_769460();
  }

  else
  {
    if (v7 == enum case for MediaOverlayStyle.light(_:))
    {
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_77D9F0;
      v10 = [objc_opt_self() effectWithStyle:11];
    }

    else
    {
      v11 = enum case for MediaOverlayStyle.matchSystem(_:);
      v12 = v7;
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_77D9F0;
      v13 = objc_opt_self();
      if (v12 != v11)
      {
        *(v9 + 32) = [v13 effectWithStyle:11];
        (*(v3 + 8))(v6, v2);
        return v9;
      }

      v10 = [v13 effectWithStyle:6];
    }

    *(v9 + 32) = v10;
  }

  return v9;
}

uint64_t sub_6B260C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_6B2654()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayStyle;
  v2 = enum case for MediaOverlayStyle.matchSystem(_:);
  v3 = sub_75CA40();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView;
  *(v0 + v4) = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_76A840();
  __break(1u);
}

uint64_t sub_6B27B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_7664A0();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_94F1F0, &qword_782290);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17 = *(v11 + 8);
  v17(v16, v10);
  if (!v43)
  {
    sub_10A2C(v42, &unk_963040, &qword_77F400);
    goto LABEL_8;
  }

  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75AE60();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v33 = 1;
    v32 = v41;
    goto LABEL_9;
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17(v13, v10);
  if (v42[0] != 1 || (, v18 = sub_764C70(), , !v18))
  {

    goto LABEL_8;
  }

  v19 = sub_75DA30();
  v20 = sub_75DAB0();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v7, a1, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  v22 = v40;
  v23 = v19;
  sub_6B4280(v7, v40);
  sub_10A2C(v7, &unk_957F70, &unk_780270);
  v24 = *(v8 + 24);
  v25 = sub_7666D0();
  v26 = v37;
  (*(*(v25 - 8) + 16))(v37, v22 + v24, v25);
  v28 = v38;
  v27 = v39;
  (*(v38 + 104))(v26, enum case for FontSource.useCase(_:), v39);
  v29.super.isa = v23;
  isa = sub_766490(v29).super.isa;
  (*(v28 + 8))(v26, v27);
  v31 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_7651D0();
  sub_765140();
  v32 = v41;
  sub_7601D0();

  sub_6B65E0(v22, type metadata accessor for SearchActionContentView.Layout.Metrics);
  v33 = 0;
LABEL_9:
  v34 = sub_7601F0();
  return (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
}

char *sub_6B2D30(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView;
  *&v4[v9] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_linkLabel;
  sub_7667B0();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics;
  if (qword_93E0F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v13 = sub_BE38(v12, qword_9A0810);
  sub_6B64BC(v13, &v4[v11]);
  v35.receiver = v4;
  v35.super_class = type metadata accessor for SearchActionContentView(0);
  v14 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v20 = swift_allocObject();
  v34 = xmmword_77D9F0;
  *(v20 + 16) = xmmword_77D9F0;
  *(v20 + 32) = v19;
  v21 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_linkLabel];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_77D9F0;
  *(v22 + 32) = v21;
  sub_BD88(&qword_94DC60, &qword_7854E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v24 = v19;
  v25 = v21;
  sub_3CFB24(inited);
  v27 = v26;
  swift_setDeallocating();
  sub_BD88(&unk_945390, &unk_7851E0);
  result = swift_arrayDestroy();
  if (!(v27 >> 62))
  {
    v29 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
    if (v29)
    {
      goto LABEL_5;
    }

LABEL_12:

    sub_6B450C();
    sub_BD88(&qword_9477F0, qword_780200);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_77B6D0;
    *(v33 + 32) = sub_7676F0();
    *(v33 + 40) = &protocol witness table for UITraitLegibilityWeight;
    sub_769F40();

    swift_unknownObjectRelease();

    return v18;
  }

  result = sub_76A860();
  v29 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v29 >= 1)
  {
    for (i = 0; i != v29; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v31 = sub_76A770();
      }

      else
      {
        v31 = *(v27 + 8 * i + 32);
      }

      v32 = v31;
      [v18 addSubview:{v31, v34}];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_6B30F8(double *a1)
{
  v2 = v1;
  v45 = sub_767030();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v40 - v7;
  __chkstk_darwin(v8);
  v48 = &v40 - v9;
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v44 = sub_7664A0();
  v13 = *(v44 - 8);
  __chkstk_darwin(v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v40 - v20);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_6B64BC(&v2[v22], v21);
  v23 = *a1 == *v21 && a1[1] == v21[1];
  if (v23 && a1[2] == v21[2] && (sub_7666C0() & 1) != 0 && *(a1 + v16[7]) == *(v21 + v16[7]) && *(a1 + v16[8]) == *(v21 + v16[8]))
  {
    v24 = v16[9];
    v25 = *(a1 + v24);
    v26 = *(v21 + v24);
    result = sub_6B65E0(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
    if (v25 == v26)
    {
      return result;
    }
  }

  else
  {
    sub_6B65E0(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  v42 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView];
  v28 = [v2 traitCollection];
  sub_6B64BC(&v2[v22], v18);
  v43 = v12;
  v29 = v45;
  v41 = v22;
  v30 = v16[6];
  v31 = sub_7666D0();
  (*(*(v31 - 8) + 16))(v15, &v18[v30], v31);
  v32 = v44;
  (*(v13 + 104))(v15, enum case for FontSource.useCase(_:), v44);
  v33.super.isa = v28;
  isa = sub_766490(v33).super.isa;
  (*(v13 + 8))(v15, v32);
  v35 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_6B65E0(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_759120();
  [v2 setNeedsLayout];
  sub_6B64BC(&v2[v41], v18);
  v36 = v46;
  sub_767020();
  v37 = v47;
  sub_766FF0();
  v38 = *(v4 + 8);
  v38(v36, v29);
  v39 = v48;
  sub_767010();
  v38(v37, v29);
  sub_767000();
  v38(v39, v29);
  sub_6B65E0(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_766790();
  return [v2 setNeedsLayout];
}

uint64_t sub_6B3600()
{
  v1 = type metadata accessor for SearchActionContentView.Layout(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_7664F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchActionContentView(0);
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_linkLabel];
  v4[8] = sub_7667B0();
  v4[9] = &protocol witness table for UILabel;
  v4[5] = v10;
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView];
  v4[3] = sub_759210();
  v4[4] = &protocol witness table for UIView;
  *v4 = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_6B64BC(&v0[v12], v4 + *(v2 + 32));
  v13 = v10;
  v14 = v11;
  sub_75D650();
  sub_6B37EC(v0, v15, v16, v17, v18);
  sub_6B65E0(v4, type metadata accessor for SearchActionContentView.Layout);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_6B37EC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  MinX = CGRectGetMinX(*&a2);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  MinY = CGRectGetMinY(v24);
  v13 = v5 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v15 = *(v13 + *(v14 + 28));
  v16 = MinY + v15;
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  Width = CGRectGetWidth(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v18 = CGRectGetHeight(v26) - v15 - *(v13 + *(v14 + 32));
  sub_1ED18(v6, &v20, &unk_943B10, &qword_77E080);
  if (v21)
  {
    sub_10914(&v20, v22);
    sub_B170(v22, v23);
    sub_7665B0();
    sub_B170(v22, v23);
    v27.origin.x = MinX;
    v27.origin.y = v16;
    v27.size.width = Width;
    v27.size.height = v18;
    CGRectGetMinX(v27);
    v28.origin.y = v16;
    v28.origin.x = MinX;
    v28.size.width = Width;
    v28.size.height = v18;
    CGRectGetMidY(v28);
    sub_769D20();
    sub_766530();
    sub_BEB8(v22);
  }

  else
  {
    sub_10A2C(&v20, &unk_943B10, &qword_77E080);
  }

  sub_B170((v6 + 40), *(v6 + 64));
  sub_7665A0();
  sub_B170((v6 + 40), *(v6 + 64));
  v29.origin.y = v16;
  v29.origin.x = MinX;
  v29.size.width = Width;
  v29.size.height = v18;
  CGRectGetMidY(v29);
  sub_769D20();
  sub_766530();
  return sub_7664B0();
}

double sub_6B3B44(void *a1, __n128 a2, double a3)
{
  v5 = a2.n128_f64[0];
  v6 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v6);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7664A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v13 = v5 + 0.0;
  sub_1ED18(v3, &v23, &unk_943B10, &qword_77E080);
  if (v24)
  {
    sub_10914(&v23, v25);
    sub_B170(v25, v26);
    sub_7665B0();
    sub_BEB8(v25);
  }

  else
  {
    sub_10A2C(&v23, &unk_943B10, &qword_77E080);
  }

  sub_B170((v3 + 40), *(v3 + 64));
  v14 = a1;
  sub_7665A0();
  v15 = v22;
  sub_6B64BC(v12, v22);
  v16 = *(v6 + 24);
  v17 = sub_7666D0();
  (*(*(v17 - 8) + 32))(v11, v15 + v16, v17);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  v18 = [v14 traitCollection];
  v26 = v8;
  v27 = &protocol witness table for FontSource;
  v19 = sub_B1B4(v25);
  (*(v9 + 16))(v19, v11, v8);
  sub_765C10();

  (*(v9 + 8))(v11, v8);
  sub_BEB8(v25);
  return v13;
}

void sub_6B3EB4(uint64_t a1, uint64_t a2)
{
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_7664A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = a2;

    v14 = [v2 traitCollection];
    v15 = &v2[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics];
    swift_beginAccess();
    sub_6B64BC(v15, v13);
    v16 = *(v10 + 24);
    v17 = sub_7666D0();
    (*(*(v17 - 8) + 16))(v9, &v13[v16], v17);
    (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
    v18.super.isa = v14;
    v19 = v2;
    isa = sub_766490(v18).super.isa;
    (*(v7 + 8))(v9, v6);
    v21 = [objc_opt_self() configurationWithFont:isa scale:1];

    sub_6B65E0(v13, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_7651D0();

    v22 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView];
    [v22 contentMode];
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [v22 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();
    sub_759210();
    sub_6B6640(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
  }

  else
  {
    v24.value.super.isa = 0;
    v24.is_nil = 0;
    sub_7591D0(v24, v11);
  }
}

uint64_t sub_6B4280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  if ((sub_769A00() & 1) == 0)
  {
    sub_1ED18(a1, v10, &unk_957F70, &unk_780270);
    v11 = sub_75DAB0();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10A2C(v10, &unk_957F70, &unk_780270);
LABEL_8:
      if (qword_93E0F0 != -1)
      {
        swift_once();
      }

      v15 = qword_9A0810;
      goto LABEL_11;
    }

    sub_75DA20();
    (*(v12 + 8))(v10, v11);
    sub_765550();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 != 1.0)
    {
      goto LABEL_8;
    }
  }

  if (qword_93E0F8 != -1)
  {
    swift_once();
  }

  v15 = qword_9A0828;
LABEL_11:
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v17 = sub_BE38(v16, v15);
  return sub_6B64BC(v17, a2);
}

uint64_t sub_6B450C()
{
  v1 = v0;
  v2 = sub_767030();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = &v33 - v5;
  __chkstk_darwin(v6);
  v36 = &v33 - v7;
  __chkstk_darwin(v8);
  v37 = &v33 - v9;
  v10 = sub_7664A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v15 = v14 - 8;
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView] setAccessibilityIgnoresInvertColors:{0, v16}];
  sub_7590F0();
  v19 = [v0 traitCollection];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_6B64BC(&v0[v20], v18);
  v21 = *(v15 + 32);
  v22 = sub_7666D0();
  (*(*(v22 - 8) + 16))(v13, &v18[v21], v22);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  v23.super.isa = v19;
  isa = sub_766490(v23).super.isa;
  (*(v11 + 8))(v13, v10);
  v25 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_6B65E0(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_759120();
  [v1 setNeedsLayout];
  sub_6B64BC(v1 + v20, v18);
  v26 = v34;
  sub_767020();
  v27 = v35;
  sub_766FF0();
  v28 = *(v38 + 8);
  v29 = v26;
  v30 = v39;
  v28(v29, v39);
  v31 = v36;
  sub_767010();
  v28(v27, v30);
  sub_767000();
  v28(v31, v30);
  sub_6B65E0(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  return sub_766790();
}

id sub_6B4930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchActionContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6B49F4(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for SearchActionContentView.Layout.Metrics(319);
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_6B4AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6B4B88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_6B4C4C(uint64_t a1)
{
  sub_70898(319);
  if (v1 <= 0x3F)
  {
    sub_6B4CE8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SearchActionContentView.Layout.Metrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_6B4CE8()
{
  result = qword_941880;
  if (!qword_941880)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_941880);
  }

  return result;
}

uint64_t sub_6B4D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_7666D0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_6B4DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_7666D0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_6B4E68(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_7666D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_6B4F50(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  sub_161DC(v8, a2);
  v9 = sub_BE38(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, a4);
  (*(*(v10 - 8) + 16))(v9 + v8[6], v11, v10);
  __asm { FMOV            V0.2D, #21.0 }

  *v9 = result;
  v9[1].n128_u64[0] = 0x4024000000000000;
  *(v9->n128_u64 + v8[7]) = 0x401C000000000000;
  *(v9->n128_u64 + v8[8]) = 0x4018000000000000;
  *(v9->n128_u64 + v8[9]) = 0x404A800000000000;
  return result;
}

BOOL sub_6B506C(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    v6 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    if ((sub_7666C0() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]))
    {
      return *(a1 + v6[9]) == *(a2 + v6[9]);
    }
  }

  return 0;
}

double sub_6B512C(uint64_t a1)
{
  v2 = sub_7656C0();
  v85 = *(v2 - 8);
  __chkstk_darwin(v2);
  v84 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for SearchActionContentView.Layout(0);
  __chkstk_darwin(v83);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_767030();
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v73 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = v66 - v9;
  __chkstk_darwin(v10);
  v76 = v66 - v11;
  __chkstk_darwin(v12);
  v77 = v66 - v13;
  v14 = sub_766D70();
  v78 = *(v14 - 8);
  v79 = v14;
  __chkstk_darwin(v14);
  v75 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_7664A0();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v17 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v18 - 8);
  v20 = v66 - v19;
  v21 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v21 - 8);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v66 - v25;
  v27 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v27);
  v80 = v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AE60();
  sub_6B6640(&unk_94F480, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  sub_75C750();
  if (!v87[0])
  {
    return 0.0;
  }

  v29 = sub_764C60();
  if (v30)
  {
    v66[0] = v30;
    v66[1] = v29;
    v67 = v2;
    v68 = v5;
    v31 = sub_75C840();
    v32 = *(v31 - 8);
    (*(v32 + 16))(v26, a1, v31);
    (*(v32 + 56))(v26, 0, 1, v31);
    swift_getKeyPath();
    v69 = a1;
    sub_75C7B0();

    v33 = v87[0];
    sub_1ED18(v26, v23, &unk_93F620, &unk_77E220);
    if ((*(v32 + 48))(v23, 1, v31) == 1)
    {
      sub_10A2C(v23, &unk_93F620, &unk_77E220);
      v34 = 1;
    }

    else
    {
      sub_75C720();
      (*(v32 + 8))(v23, v31);
      v34 = 0;
    }

    v36 = sub_75DAB0();
    (*(*(v36 - 8) + 56))(v20, v34, 1, v36);
    v37 = v80;
    sub_6B4280(v20, v80);

    sub_10A2C(v20, &unk_957F70, &unk_780270);
    sub_10A2C(v26, &unk_93F620, &unk_77E220);
    swift_getKeyPath();
    sub_75C7B0();

    v38 = v87[0];
    v39 = *(v27 + 24);
    v40 = sub_7666D0();
    (*(*(v40 - 8) + 16))(v17, v37 + v39, v40);
    v41 = v70;
    v42 = v71;
    (*(v70 + 104))(v17, enum case for FontSource.useCase(_:), v71);
    v43.super.isa = v38;
    isa = sub_766490(v43).super.isa;
    (*(v41 + 8))(v17, v42);
    v45 = [objc_opt_self() configurationWithFont:isa scale:1];

    v46 = sub_764C70();

    v72 = v45;
    if (v46)
    {
      v47 = v45;
      sub_7651D0();
    }

    v48 = sub_7670D0();
    swift_allocObject();
    v49 = sub_7670B0();
    v50 = v73;
    sub_767020();
    v51 = v74;
    sub_766FF0();
    v52 = *(v81 + 8);
    v53 = v37;
    v54 = v82;
    v52(v50, v82);
    v55 = v76;
    sub_767010();
    v52(v51, v54);
    sub_767000();
    v52(v55, v54);
    sub_766D50();
    v56 = v75;
    sub_766D90();
    sub_766D40();
    (*(v78 + 8))(v56, v79);
    v57 = v68;
    sub_134D8(v87, (v68 + 5));
    v57[3] = v48;
    v57[4] = &protocol witness table for LayoutViewPlaceholder;
    *v57 = v49;
    sub_6B64BC(v53, v57 + *(v83 + 24));
    swift_getKeyPath();

    v58 = v84;
    sub_75C7B0();

    sub_765630();
    v60 = v59;
    v62 = v61;
    (*(v85 + 8))(v58, v67);
    swift_getKeyPath();
    sub_75C7B0();

    v63.n128_u64[0] = v60;
    sub_6B3B44(v86, v63, v62);
    v35 = v64;

    swift_unknownObjectRelease();
    sub_6B65E0(v57, type metadata accessor for SearchActionContentView.Layout);
    sub_BEB8(v87);
    sub_6B65E0(v53, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  else
  {

    return 0.0;
  }

  return v35;
}

double sub_6B5B74(uint64_t a1, uint64_t a2)
{
  v5 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v5 - 8);
  v7 = v27 - v6;
  v8 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AE60();
  sub_6B6640(&unk_94F480, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  sub_75C750();
  if (v28)
  {

    v18 = sub_764C70();

    if (v18)
    {
      v27[0] = v18;
      v27[1] = v2;
      v27[2] = a2;
      v19 = sub_75C840();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v13, a1, v19);
      (*(v20 + 56))(v13, 0, 1, v19);
      swift_getKeyPath();
      sub_75C7B0();

      v21 = v28;
      sub_1ED18(v13, v10, &unk_93F620, &unk_77E220);
      if ((*(v20 + 48))(v10, 1, v19) == 1)
      {
        sub_10A2C(v10, &unk_93F620, &unk_77E220);
        v22 = 1;
      }

      else
      {
        sub_75C720();
        (*(v20 + 8))(v10, v19);
        v22 = 0;
      }

      v23 = sub_75DAB0();
      (*(*(v23 - 8) + 56))(v7, v22, 1, v23);
      sub_6B4280(v7, v16);

      sub_10A2C(v7, &unk_957F70, &unk_780270);
      sub_10A2C(v13, &unk_93F620, &unk_77E220);
      v24 = sub_765320();
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_77D9F0;
      *(v25 + 32) = v24;

      v26._rawValue = v25;
      sub_75A070(v26);

      sub_6B65E0(v16, type metadata accessor for SearchActionContentView.Layout.Metrics);
    }

    else
    {
    }
  }

  return result;
}

double sub_6B5FBC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  sub_75AE60();
  sub_6B6640(&unk_94F480, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  sub_75C750();
  if (v37)
  {
    v34 = a1;
    v35 = ObjectType;
    v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_linkLabel];

    sub_764C60();
    if (v22)
    {
      v23 = sub_769210();
    }

    else
    {
      v23 = 0;
    }

    [v21 setText:v23];

    v24 = sub_764C30();

    v36 = v16;
    if ((v24 & 2) != 0)
    {
      [v21 _setTextColorFollowsTintColor:1];
    }

    else
    {
      [v21 _setTextColorFollowsTintColor:0];
      sub_396E8();
      v25 = sub_769FD0();
      [v21 setTextColor:v25];
    }

    v26 = sub_75C840();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v13, v34, v26);
    (*(v27 + 56))(v13, 0, 1, v26);
    v28 = [v2 traitCollection];
    sub_1ED18(v13, v10, &unk_93F620, &unk_77E220);
    if ((*(v27 + 48))(v10, 1, v26) == 1)
    {
      sub_10A2C(v10, &unk_93F620, &unk_77E220);
      v29 = 1;
    }

    else
    {
      sub_75C720();
      (*(v27 + 8))(v10, v26);
      v29 = 0;
    }

    v30 = sub_75DAB0();
    (*(*(v30 - 8) + 56))(v7, v29, 1, v30);
    sub_6B4280(v7, v19);

    sub_10A2C(v7, &unk_957F70, &unk_780270);
    sub_10A2C(v13, &unk_93F620, &unk_77E220);
    v31 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics;
    swift_beginAccess();
    v32 = v36;
    sub_6B64BC(v2 + v31, v36);
    swift_beginAccess();
    sub_6B6520(v19, v2 + v31);
    swift_endAccess();
    sub_6B30F8(v32);
    sub_6B65E0(v32, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_6B65E0(v19, type metadata accessor for SearchActionContentView.Layout.Metrics);
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_6B64BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6B6520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_6B65E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_6B6640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_6B6688()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView;
  *(v0 + v1) = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_linkLabel;
  sub_7667B0();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics;
  if (qword_93E0F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v5 = sub_BE38(v4, qword_9A0810);
  sub_6B64BC(v5, v0 + v3);
  sub_76A840();
  __break(1u);
}

double UITextView.firstBaselineFromTop.getter()
{
  v1 = [v0 layoutManager];
  [v1 baselineOffsetForGlyphAtIndex:0];
  v3 = v2;

  return v3;
}

CGFloat UITextView.lastBaselineFromBottom.getter()
{
  v1 = [v0 layoutManager];
  v2 = [v0 textContainer];
  [v1 usedRectForTextContainer:v2];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetMaxY(*&v11);
}

uint64_t sub_6B69C0(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView);
    v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_2630C();
      v8 = v4;
      v9 = sub_76A1C0();

      v5 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_6B6A78(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView);
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_6B7598(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v6 = v2;
    v7 = [v5 superview];
    if (v7)
    {
      v8 = v7;
      sub_2630C();
      v9 = v3;
      v10 = sub_76A1C0();

      if (v10)
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          [v11 removeFromSuperview];
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v2;
  }

  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    [v3 addSubview:v14];
  }

  sub_55A7A8();
  [v3 setNeedsLayout];
}

void (*sub_6B6C14(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_6B6C88;
}

void sub_6B6C88(uint64_t a1, char a2)
{
  v4 = *a1;
  v30 = *(*(a1 + 8) + *(a1 + 16));
  v5 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_6B7598(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
      v8 = v4;
      v9 = v30;
      v10 = [v7 superview];
      if (v10)
      {
        v11 = v10;
        sub_2630C();
        v12 = v5;
        v13 = sub_76A1C0();

        if (v13)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v4;
      v23 = v30;
    }

    swift_unknownObjectWeakAssign();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      [v5 addSubview:v25];
    }

    sub_55A7A8();
    [v5 setNeedsLayout];

    v27 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_6B7598(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
      v16 = v30;
      v17 = [v7 superview];
      if (v17)
      {
        v18 = v17;
        sub_2630C();
        v19 = v5;
        v20 = sub_76A1C0();

        if (v20)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v24 = v30;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      [v5 addSubview:v28];
    }

    sub_55A7A8();
    [v5 setNeedsLayout];

    v27 = v30;
  }
}

char *sub_6B6F78(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView] = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{a1, a2, a3, a4}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v9 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v13 = v9;
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView]];

  return v13;
}

id sub_6B7250(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t (*sub_6B72EC(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_6B6C14(v2);
  return sub_21028;
}

uint64_t sub_6B735C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_6B73B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_6B741C(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_6B7598(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_6B75E0(void *a1, uint64_t a2, char a3)
{
  _s18PaletteContentViewCMa();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = &v7[OBJC_IVAR____TtCC18ASMessagesProvider29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  v10 = *&v7[OBJC_IVAR____TtCC18ASMessagesProvider29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  v11 = *&v7[OBJC_IVAR____TtCC18ASMessagesProvider29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews + 8];
  *v9 = sub_6B8350;
  v9[1] = v8;

  sub_F704(v10, v11);

  v12 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v7];
  [v12 _setDisplaysWhenSearchActive:a3 & 1];
  [v12 _setContentViewMarginType:a2];
  [v12 setClipsToBounds:0];
  *(v3 + 65) = 0;
  [v12 setPreferredHeight:1.0];
  [v12 setMinimumHeight:0.0];
  [v12 setPreferredHeight:0.0];
  v13 = v12;
  [a1 _setBottomPalette:v13];

  swift_unknownObjectWeakAssign();
}

void sub_6B778C(void *a1)
{
  if (*(v1 + 24))
  {
    if ((*(v1 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = *(v1 + 32);
        if (!v5)
        {

          if (!*(v1 + 32))
          {
            return;
          }

          goto LABEL_9;
        }

        v25 = *(v1 + 64);
        v7 = *(v1 + 48);
        v6 = *(v1 + 56);

        v8 = [v4 contentView];
        sub_2630C();
        sub_75D650();
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v27.origin.x = v10;
        v27.origin.y = v12;
        v27.size.width = v14;
        v27.size.height = v16;
        Width = CGRectGetWidth(v27);
        v18 = [v4 contentView];
        v19 = v5(Width);

        [v4 setPreferredHeight:v19];
        v20 = 0.0;
        if ((v25 & 1) == 0)
        {
          v20 = v19;
        }

        [v4 setMinimumHeight:v20];

        sub_F704(v7, v6);
        *(v1 + 65) = 1;
      }
    }
  }

  if (!*(v1 + 32))
  {
    return;
  }

LABEL_9:
  v22 = *(v1 + 48);
  v21 = *(v1 + 56);
  v23 = *(v1 + 64);

  v24 = sub_F714(v22, v21);
  if (v23)
  {
    [a1 _scrollToTopIfPossible:{1, v24}];
  }

  sub_F704(v22, v21);
}

void sub_6B79A8()
{
  if (*(v0 + 24))
  {
    if ((*(v0 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = *(v0 + 32);
        if (v2)
        {
          v3 = *(v0 + 64);
          v5 = *(v0 + 48);
          v4 = *(v0 + 56);
          v19 = Strong;

          v6 = [v19 contentView];
          sub_2630C();
          sub_75D650();
          v8 = v7;
          v10 = v9;
          v12 = v11;
          v14 = v13;

          v21.origin.x = v8;
          v21.origin.y = v10;
          v21.size.width = v12;
          v21.size.height = v14;
          Width = CGRectGetWidth(v21);
          v16 = [v19 contentView];
          v17 = v2(Width);

          [v19 setPreferredHeight:v17];
          v18 = 0.0;
          if ((v3 & 1) == 0)
          {
            v18 = v17;
          }

          [v19 setMinimumHeight:v18];

          sub_F704(v5, v4);
          *(v0 + 65) = 1;
        }

        else
        {
        }
      }
    }
  }
}

void sub_6B7B5C()
{
  if (*(v0 + 24))
  {
    if (*(v0 + 65) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v3 = *(v0 + 32);
        if (v3)
        {
          v5 = *(v0 + 48);
          v4 = *(v0 + 56);
          v6 = *(v0 + 64);
          v20 = Strong;

          v7 = [v20 contentView];
          sub_2630C();
          sub_75D650();
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          v22.origin.x = v9;
          v22.origin.y = v11;
          v22.size.width = v13;
          v22.size.height = v15;
          Width = CGRectGetWidth(v22);
          v17 = [v20 contentView];
          v18 = v3(Width);

          [v20 preferredHeight];
          if (v19 != v18)
          {
            [v20 setPreferredHeight:v18];
            [v20 setMinimumHeight:v18];
            if (v6)
            {
              [v20 setMinimumHeight:0.0];
            }

            sub_6B7D80();
          }

          Strong = sub_F704(v5, v4);
          v2 = v20;
        }

        _objc_release_x1(Strong, v2);
      }
    }
  }
}

double sub_6B7D28(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_6B7D80();
  }

  return result;
}

void sub_6B7D80()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return;
  }

  if (*(v0 + 65) != 1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = *(v0 + 32);
  if (!v3)
  {
    goto LABEL_15;
  }

  v26 = Strong;
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  if (!v4)
  {
    sub_6B8358(v3, *(v0 + 40), 0, *(v0 + 56));
    v24 = v1;
    [v24 setAlpha:1.0];

    Strong = v26;
LABEL_15:

    return;
  }

  sub_6B8358(v3, *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v6 = [v26 contentView];
  sub_2630C();
  sub_75D650();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  Width = CGRectGetWidth(v28);
  v16 = [v26 contentView];
  v17 = v3(Width);

  v18 = [v26 contentView];
  v19 = v4(Width);

  [v26 frame];
  Height = CGRectGetHeight(v29);
  v21 = *(v0 + 24);
  if (v21)
  {
    v22 = (Height - v19) / (v17 - v19);
    if (v22 <= 0.0)
    {
      v22 = 0.0;
    }

    if (v22 <= 1.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 1.0;
    }

    v25 = v21;
    [v25 setAlpha:v23];

    sub_F704(v4, v5);

    sub_F704(v4, v5);
    Strong = v25;
    goto LABEL_15;
  }

  sub_F704(v4, v5);

  sub_F704(v4, v5);
}

uint64_t sub_6B8034()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 32);
    if (v3)
    {
      v4 = *(v0 + 48);
      v5 = *(v0 + 56);
      v18 = v2;
      if (*(v0 + 64))
      {
        v6 = *(v0 + 24);
        if (v6)
        {

          v7 = [v6 isHidden];
          Height = 0.0;
          if ((v7 & 1) == 0)
          {
            v9 = [v18 contentView];
            [v9 frame];
            v11 = v10;
            v13 = v12;
            v15 = v14;
            v17 = v16;

            v20.origin.x = v11;
            v20.origin.y = v13;
            v20.size.width = v15;
            v20.size.height = v17;
            Height = CGRectGetHeight(v20);
          }
        }

        else
        {

          sub_F714(v4, v5);
          Height = 0.0;
        }

        [v18 setMinimumHeight:Height];
        [v18 minimumHeight];
        [v18 setPreferredHeight:?];
      }

      else
      {
        sub_6B8358(v3, *(v0 + 40), v4, v5);
      }

      return sub_F704(v4, v5);
    }

    else
    {

      return _objc_release_x1(0, v2);
    }
  }

  return result;
}

uint64_t sub_6B81F0()
{
  swift_unknownObjectWeakDestroy();

  sub_2B47E4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_6B8264(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_6B827C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_6B82C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6B8318()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_6B8358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    return sub_F714(a3, a4);
  }

  return result;
}

void sub_6B83A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  sub_6B860C();
  if (sub_764EE0())
  {
    v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider36BundleSearchResultCollectionViewCell_lockupView);
    v6 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v7 = qword_93C668;
    v8 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_75CF00();
    sub_BE38(v9, qword_99B898);
    sub_75CDD0();
    [v8 contentMode];
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [v8 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();
    v10 = *(v5 + v6);
    sub_759210();
    sub_6B95E8(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v11 = v10;
    sub_75A050();
  }

  v12 = sub_764F60();
  if (v12)
  {
    sub_31353C(v12, a2);
  }
}

void sub_6B860C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider36BundleSearchResultCollectionViewCell_lockupView);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  sub_7591D0(v31, v5);

  v6 = *(v2 + v3);
  sub_759210();
  sub_6B95E8(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_75A0C0();

  v28 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36BundleSearchResultCollectionViewCell_bundleView);
  v8 = sub_6F4F74();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_76A860();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_76A770();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v14 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon;
    v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon];
    v32.value.super.isa = 0;
    v32.is_nil = 0;
    sub_7591D0(v32, v16);

    v17 = *&v13[v14];
    sub_75A0C0();
  }

  while (v10 != v11);
LABEL_10:

  v18 = sub_6F4F8C();
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = sub_76A860();
    if (v20)
    {
LABEL_12:
      if (v20 >= 1)
      {
        v21 = 0;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = sub_76A770();
          }

          else
          {
            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          ++v21;
          v24 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
          v25 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
          v33.value.super.isa = 0;
          v33.is_nil = 0;
          sub_7591D0(v33, v26);

          v27 = *&v23[v24];
          sub_75A0C0();
        }

        while (v20 != v21);
        goto LABEL_19;
      }

LABEL_23:
      __break(1u);
      return;
    }
  }

  else
  {
    v20 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    if (v20)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  v29 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_backgroundArtworkView];
  sub_75A0C0();
}

double sub_6B891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, void *a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v106 = a5;
  v94 = a3;
  v95 = a4;
  v91 = a2;
  v89 = a1;
  v14 = sub_76A920();
  v108 = *(v14 - 8);
  v109 = v14;
  __chkstk_darwin(v14);
  v107 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7652D0();
  v104 = *(v16 - 8);
  v105 = v16;
  __chkstk_darwin(v16);
  v103 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_760840();
  v101 = *(v18 - 8);
  v102 = v18;
  __chkstk_darwin(v18);
  v100 = v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_762D10();
  v93 = *(v113 - 8);
  __chkstk_darwin(v113);
  v92 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_75D850();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v79 - v26;
  v28 = sub_760820();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v96 = v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v79 - v32;
  sub_769DA0();
  v35 = v34;
  v37 = v36;
  ObjectType = swift_getObjectType();
  v38 = [a6 traitCollection];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v39 = sub_BE38(v28, qword_99B150);
  v40 = *(v29 + 16);
  v99 = v28;
  v86 = v40;
  v87 = v29 + 16;
  v40(v33, v39, v28);
  v41 = sub_769A00();
  v110 = a6;
  v98 = v29;
  if (v41)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v42 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v42 = qword_946938;
  }

  v43 = sub_BE38(v21, v42);
  v85 = v22;
  (*(v22 + 16))(v24, v43, v21);
  (*(v22 + 32))(v27, v24, v21);
  v84 = v38;
  v44 = [v38 preferredContentSizeCategory];
  sub_769B20();

  sub_75D800();
  sub_75D830();
  v112 = v33;
  sub_760810();
  sub_760800();
  v45 = sub_7670D0();
  swift_allocObject();
  v83 = sub_7670B0();
  v46 = objc_opt_self();

  v81 = v46;
  v79[1] = [v46 preferredFontForTextStyle:UIFontTextStyleBody];
  v47 = sub_7653B0();
  v90 = v27;
  v48 = v47;
  v150[3] = v47;
  v49 = sub_6B95E8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v88 = v21;
  v50 = v49;
  v150[4] = v49;
  v80 = v49;
  v51 = sub_B1B4(v150);
  v82 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v52 = *(v48 - 8);
  v111 = *(v52 + 104);
  v53 = v52 + 104;
  v111(v51);
  v79[2] = v53;
  sub_765C30();
  sub_BEB8(v150);
  v54 = v92;
  sub_762D00();
  sub_762CE0();
  v93 = *(v93 + 8);
  (v93)(v54, v113);

  v55 = [v46 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v149[3] = v48;
  v149[4] = v50;
  v56 = sub_B1B4(v149);
  v57 = v82;
  (v111)(v56, v82, v48);
  sub_765C30();
  sub_BEB8(v149);
  sub_762D00();
  sub_762CE0();
  v58 = v113;
  v59 = v93;
  (v93)(v54, v113);
  v60 = [v81 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v148[3] = v48;
  v148[4] = v80;
  v61 = sub_B1B4(v148);
  (v111)(v61, v57, v48);
  sub_765C30();
  sub_BEB8(v148);
  sub_762D00();
  sub_762CE0();
  v59(v54, v58);
  sub_246DC();
  swift_allocObject();
  v62 = sub_7670B0();

  sub_246DC();
  swift_allocObject();
  v63 = sub_7670B0();
  v64 = v99;
  v86(v96, v112, v99);
  v147 = &protocol witness table for LayoutViewPlaceholder;
  v146 = v45;
  v145 = v83;
  v144 = 0;
  *&v142[40] = 0u;
  v143 = 0u;
  sub_134D8(v150, v142);
  sub_134D8(v149, &v141);
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  v137 = 0;
  v135 = 0u;
  v136 = 0u;

  v65 = sub_7670C0();
  v134 = &protocol witness table for LayoutViewPlaceholder;
  v133 = v45;
  v132 = v65;
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  v122 = 0;
  v121 = 0u;
  *&v120[40] = 0u;
  sub_134D8(v148, v120);
  v118 = v45;
  v119 = &protocol witness table for LayoutViewPlaceholder;
  v116 = &protocol witness table for LayoutViewPlaceholder;
  v117 = v62;
  v115 = v45;
  v114 = v63;
  v66 = v100;
  sub_760830();
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_77D9F0;
  v68 = v84;
  *(v67 + 32) = v84;
  v69 = v68;
  v70 = sub_7671E0();
  sub_6B95E8(&qword_945FA0, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v71 = v102;
  sub_7665A0();

  (*(v101 + 8))(v66, v71);
  sub_BEB8(v148);
  sub_BEB8(v149);
  sub_BEB8(v150);
  (*(v85 + 8))(v90, v88);
  (*(v98 + 8))(v112, v64);
  v73 = v103;
  v72 = v104;
  v74 = v105;
  (*(v104 + 104))(v103, enum case for Artwork.Style.roundedRect(_:), v105);
  if (v106)
  {
    v75 = v106;
  }

  else
  {
    v75 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for BundleView(0);

  sub_316484(v73, v75, v110, v35, v37);

  (*(v72 + 8))(v73, v74);
  if (qword_93DD50 != -1)
  {
    swift_once();
  }

  v76 = qword_9A0038;
  sub_B170(qword_9A0020, qword_9A0038);
  v77 = v107;
  sub_33964(v76);
  sub_766700();
  (*(v108 + 8))(v77, v109);
  return a7;
}

uint64_t sub_6B95E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_6B9630(void *a1)
{
  sub_6BD01C(a1);
}

void sub_6B96A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_764590();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7645F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764600();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for Uber.AssetType.artwork(_:))
  {
    v13 = [v1 traitCollection];
    v14 = sub_7699D0();

    if (v14)
    {
      v15 = sub_764580();
      if (!v15)
      {
        return;
      }

LABEL_27:

      sub_7645B0();
      sub_6B9BE0(v15, a1, v7);

      (*(v5 + 8))(v7, v4);
      return;
    }

    v15 = sub_7645E0();
    if (v15)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v12 == enum case for Uber.AssetType.video(_:))
    {
      v16 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
      v37 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
      v38 = v16;
      v17 = *(v16 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
      v18 = &OBJC_METACLASS____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView;
      v19 = *&v17[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
      v39 = v2;
      if (v19)
      {
        type metadata accessor for VideoView(0);
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          sub_6BD128(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
          v21 = v19;
          v22 = [(__objc2_class *)v20 superview];
          if (v22)
          {
            v23 = v22;
            v35 = sub_BE70(0, &qword_93E550, UIView_ptr);
            v24 = v21;
            v25 = v17;
            v36 = a1;
            v26 = sub_76A1C0();
            a1 = v36;
            LODWORD(v35) = v26;

            v18 = &OBJC_METACLASS____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView;
            if (v35)
            {
              [(__objc2_class *)v20 removeFromSuperview];
            }
          }

          else
          {
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v27 = v18;
      isa = v18[8].isa;
      v29 = *(&isa->isa + v17);
      *(&isa->isa + v17) = v20;
      v30 = v20;
      sub_1F92A8(v29);

      if (v20)
      {
        *(&v30->superclass + qword_940588) = &off_89A910;
        swift_unknownObjectWeakAssign();
      }

      sub_761120();
      sub_768900();
      sub_768ED0();
      v31 = v40;
      v32 = *(&v27[8].isa->isa + *(v38 + v37));
      if (v32)
      {
        type metadata accessor for VideoView(0);
        v33 = swift_dynamicCastClass();
        if (v33)
        {
          sub_6BD128(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
          v34 = v32;
        }
      }

      else
      {
        v33 = 0;
      }

      sub_6BD128(&qword_95F410, type metadata accessor for UberHeaderView, &unk_7AA5E4);
      sub_761100();

      if (!sub_7645D0())
      {

        return;
      }

      v15 = sub_764BC0();

      goto LABEL_27;
    }

    if (v12 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v9 + 8))(v11, v8);
      return;
    }

    v15 = sub_764570();
    if (v15)
    {
      goto LABEL_27;
    }
  }
}

void sub_6B9BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_766690();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_764590();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v3 tabBarController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 tabBar];

    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v68.origin.x = v20;
    v68.origin.y = v22;
    v68.size.width = v24;
    v68.size.height = v26;
    Height = CGRectGetHeight(v68);
  }

  else
  {
    Height = 0.0;
  }

  v62 = a1;
  v28 = sub_7651A0();
  v29 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
  v30 = type metadata accessor for MediaView();
  v67.receiver = v29;
  v67.super_class = v30;
  objc_msgSendSuper2(&v67, "setBackgroundColor:", v28);
  [*(*&v29[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) setBackgroundColor:v28];
  v31 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView];
  if (v31)
  {
    v32 = v31;
    [v32 setBackgroundColor:v28];
  }

  v33 = [v4 view];
  if (v33)
  {
    v34 = v33;
    [v33 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v69.origin.x = v36;
    v69.origin.y = v38;
    v69.size.width = v40;
    v69.size.height = v42;
    v43 = CGRectGetHeight(v69);
    v44 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset);
    v45 = [v4 view];
    if (v45)
    {
      v46 = v45;
      *&v47 = v43 - Height - v44;
      [v45 bounds];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v70.origin.x = v49;
      v70.origin.y = v51;
      v70.size.width = v53;
      v70.size.height = v55;
      Width = CGRectGetWidth(v70);
      v57 = [v4 traitCollection];
      sub_6260C4(v57, a3, 1, Width, v47, 0);
      if (sub_7699D0())
      {
        (*(v12 + 104))(v15, enum case for Uber.Style.inline(_:), v11);
        sub_6BD128(&qword_9424D8, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
        sub_769430();
        sub_769430();
        if (v65 == v63 && v66 == v64)
        {
          (*(v12 + 8))(v15, v11);

LABEL_14:
          sub_765330();

          type metadata accessor for UberHeaderView();
          sub_6BD128(&unk_95F510, type metadata accessor for UberHeaderView, &unk_78E588);
          sub_75A050();

          return;
        }

        v58 = sub_76A950();
        (*(v12 + 8))(v15, v11);

        if (v58)
        {
          goto LABEL_14;
        }
      }

      sub_765260();
      sub_7666A0();
      sub_766650();
      (*(v60 + 8))(v10, v61);
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_6BA134(double a1, double a2)
{
  v3 = v2;
  v5 = sub_7599A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_95D3A0, qword_7A11F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &aBlock[-1] - v11;
  v13 = a1 < 0.5;
  if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_statusBarStyle] != v13)
  {
    aBlock[0] = 0x3FC999999999999ALL;
    aBlock[6] = 0x3FA999999999999ALL;
    (*(v6 + 104))(v8, enum case for TimingCurve.linear(_:), v5);
    sub_759CC0();
    sub_759CB0();
    (*(v10 + 8))(v12, v9);
    v14 = *aBlock;
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = v13;
    aBlock[4] = sub_6BD1A8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_89CE08;
    v17 = _Block_copy(aBlock);
    v18 = v3;

    [v15 animateWithDuration:v17 animations:v14];
    _Block_release(v17);
  }
}

void sub_6BA400()
{
  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver])
  {
    return;
  }

  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_434A90();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = v2;
    [v10 setContentInset:{v3, v5, v7, v9}];
    [v10 setScrollIndicatorInsets:{v3, v5, v7, v9}];

    v11 = OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_hasAnimatedToShowUber;
    if ((v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_hasAnimatedToShowUber] & 1) == 0 && [v0 isViewLoaded])
    {
      if ([v0 transitionCoordinator])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        [v10 contentOffset];
        if (v12 <= 0.0)
        {
          v13 = [v0 collectionView];
          if (!v13)
          {
            goto LABEL_19;
          }

          v14 = v13;
          [v13 _effectiveContentInset];
          v16 = v15;

          [v10 setContentOffset:1 animated:{0.0, -v16}];
          v0[v11] = 1;
        }
      }
    }

    v17 = [v0 collectionView];
    if (v17)
    {
      v18 = v17;
      sub_43480C(v17);

      return;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

void sub_6BA630()
{
  v1 = sub_764590();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v28 - v6;
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  MaxY = 0.0;
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber])
  {

    sub_7645B0();

    (*(v2 + 32))(v10, v7, v1);
    (*(v2 + 104))(v4, enum case for Uber.Style.above(_:), v1);
    sub_6BD128(&qword_9424D8, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
    sub_769430();
    sub_769430();
    if (v28[2] == v28[0] && v28[3] == v28[1])
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_76A950();
    }

    v13 = *(v2 + 8);
    v13(v4, v1);

    if (v12)
    {
      v14 = [v0 navigationController];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 navigationBar];

        [v16 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v29.origin.x = v18;
        v29.origin.y = v20;
        v29.size.width = v22;
        v29.size.height = v24;
        MaxY = CGRectGetMaxY(v29);
      }

      v25 = [v0 traitCollection];
      v26 = sub_626490(v25, 1);

      v13(v10, v1);
      MaxY = v26 - MaxY;
    }

    else
    {
      v13(v10, v1);
    }
  }

  v27 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarTransitionDistance];
  *v27 = fmax(MaxY, 16.0);
  *(v27 + 8) = 0;
  sub_71E3B8();
}

char *sub_6BA974()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber];
    if (!v4)
    {
      v6 = 0;
      goto LABEL_38;
    }

    v5 = OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView;
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView];
    if (v6)
    {
      v7 = v6;
LABEL_38:

      return v6;
    }

    v66 = OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber;
    v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
    v9 = objc_allocWithZone(type metadata accessor for UberHeaderView());
    swift_retain_n();

    v10 = sub_6235D8(v4, 1, v8);
    [v1 pageMarginInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView;
    [*&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView] layoutMargins];
    if (v12 != v23 || v14 != v20 || v16 != v21 || v18 != v22)
    {
      [*&v10[v19] setLayoutMargins:{v12, v14, v16, v18}];
      [v10 invalidateIntrinsicContentSize];
      v27 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver];
      if (v27)
      {
        v28 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver + 8];

        v27(v29);
        sub_F704(v27, v28);
      }
    }

    v30 = [v1 navigationItem];
    v31 = OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_navigationItem;
    v32 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_navigationItem];
    if (v32)
    {
      v33 = v32;
      v34 = sub_769210();
      [v33 removeObserver:v10 forKeyPath:v34 context:&unk_95F368];

      v35 = *&v10[v31];
    }

    else
    {
      v35 = 0;
    }

    *&v10[v31] = v30;
    v36 = v30;

    v37 = *&v10[v31];
    if (v37)
    {
      v38 = v37;
      v39 = sub_769210();
      [v38 addObserver:v10 forKeyPath:v39 options:0 context:&unk_95F368];

      v40 = *&v10[v31];
      if (v40)
      {
        v40 = [v40 title];
        if (v40)
        {
          v41 = v40;
          v42 = sub_769240();
          v44 = v43;

          v45 = v44;
          v40 = v42;
LABEL_28:
          sub_623034(v40, v45);

          v46 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v47 = &v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver];
          v48 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver];
          v49 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver + 8];
          *v47 = sub_6BD118;
          v47[1] = v46;

          sub_F704(v48, v49);

          type metadata accessor for UberScrollObserver();
          v50 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v50[5] = 0;
          v50[6] = 0;
          v50[3] = v10;
          v50[4] = v3;
          swift_unknownObjectWeakAssign();
          v6 = v10;
          v51 = v3;
          sub_434710();
          v52 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v53 = v50[5];
          v54 = v50[6];
          v50[5] = sub_6BD120;
          v50[6] = v52;

          sub_F704(v53, v54);

          v55 = [v1 navigationItem];
          v56 = [v55 _largeTitleAccessoryView];

          if (v56)
          {
            v57 = [v1 navigationItem];
            [v57 _setLargeTitleAccessoryView:0];

            v58 = v56;
            sub_191F24(v56);
          }

          v59 = *&v1[v5];
          v60 = v6;
          if (v59)
          {
            [v59 removeFromSuperview];
            v59 = *&v1[v5];
          }

          *&v1[v5] = v6;
          v3 = v6;

          v61 = [v1 viewIfLoaded];
          if (v61)
          {
            v62 = v61;
            [v61 insertSubview:v3 atIndex:0];
          }

          *&v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver] = v50;

          v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid] = 1;
          v63 = [v1 viewIfLoaded];
          [v63 setNeedsLayout];

          if (v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[v67])
          {
            v64 = [v1 navigationItem];
            [v64 setLargeTitleDisplayMode:1];
          }

          else
          {
            v64 = [v1 navigationItem];
            [v64 setLargeTitleDisplayMode:2];
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      v40 = 0;
    }

    v45 = 0;
    goto LABEL_28;
  }

  return 0;
}

void sub_6BAF74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView;
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView];
  if (v3)
  {
    type metadata accessor for UberHeaderView();
    sub_6BD128(&unk_95F510, type metadata accessor for UberHeaderView, &unk_78E588);
    v4 = v3;
    sub_75A0C0();
    v5 = *(*&v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView] + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView);
    if (v5)
    {
      v6 = v5;
      v7 = [v1 navigationItem];
      v8 = v6;
      [v7 _setLargeTitleAccessoryView:v8];
    }
  }

  v9 = OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver;
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver];
  if (v10)
  {
    v11 = *(v10 + 40);
    if (v11)
    {
      v12 = *(v10 + 48);

      sub_F714(v11, v12);
      v11(1.0, 0.0);

      sub_F704(v11, v12);
    }
  }

  v13 = *&v1[v2];
  if (v13)
  {
    [v13 removeFromSuperview];
    v14 = *&v1[v2];
  }

  else
  {
    v14 = 0;
  }

  *&v1[v2] = 0;

  *&v1[v9] = 0;

  v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid] = 1;
  v15 = [v1 viewIfLoaded];
  [v15 setNeedsLayout];

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber])
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = [v1 navigationItem];
  [v17 setLargeTitleDisplayMode:v16];
}

id sub_6BB1D4(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_inlineLockupHeight) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_statusBarStyle) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_hasAnimatedToShowUber) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_startedAsFlowPreview) = 0;
  sub_75A110();
  sub_768900();
  sub_768ED0();
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_artworkLoader) = v9;
  v5 = a1;

  v6 = sub_7212CC(v5, a2);

  sub_761120();
  v7 = v6;
  sub_768ED0();
  sub_7610F0();

  sub_75E3E0();
  sub_768ED0();
  sub_75E3A0();

  return v7;
}

void sub_6BB35C()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v4 = sub_76A000();
    [v3 setBackgroundColor:v4];

    v5 = [v1 collectionView];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor:v7];
    }

    v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView];
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v8;
    v10 = [v1 view];
    if (v10)
    {
      v11 = v10;
      [v10 insertSubview:v9 atIndex:0];

LABEL_7:
      sub_6BA630();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_6BB510()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewWillBecomeFullyVisible");
  sub_761120();
  sub_768900();
  sub_768ED0();
  sub_7610A0();
  sub_75E3E0();
  sub_7688F0();
  if (v2)
  {
    v1 = v2;
    sub_75E3C0();
  }

  sub_75A0A0();
}

void sub_6BB634(char a1)
{
  v2 = v1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1);
  sub_75A0A0();
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver];
  if (v4 && !*&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController])
  {

    v5 = [v2 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationBar];

      if (v7)
      {

        v8 = [v2 transitionCoordinator];
        if (v8)
        {
          v9 = v8;
          v18 = sub_6BD010;
          v19 = v4;
          v14 = _NSConcreteStackBlock;
          v15 = 1107296256;
          v16 = sub_6C6800;
          v17 = &unk_89CD68;
          v10 = _Block_copy(&v14);

          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v12 = swift_allocObject();
          *(v12 + 16) = v11;
          *(v12 + 24) = v4;
          v18 = sub_6BD014;
          v19 = v12;
          v14 = _NSConcreteStackBlock;
          v15 = 1107296256;
          v16 = sub_6C6800;
          v17 = &unk_89CDB8;
          v13 = _Block_copy(&v14);

          [v9 animateAlongsideTransition:v10 completion:v13];

          _Block_release(v13);
          _Block_release(v10);
          swift_unknownObjectRelease();
          return;
        }

        sub_434710();
      }
    }
  }
}

void sub_6BB8A4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v7)
    {
      v8 = v7;
      sub_BE70(0, &qword_9434E0, UIViewController_ptr);
      v9 = v6;
      v10 = sub_76A1C0();

      if ((v10 & 1) != 0 && ([a1 isCancelled] & 1) != 0 && (v11 = *(a3 + 40)) != 0)
      {
        v12 = *(a3 + 48);

        v11(v13, 1.0, 0.0);

        sub_F704(v11, v12);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_6BBA24(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid) = 1;
  v3 = [v1 viewIfLoaded];
  [v3 setNeedsLayout];

  sub_761120();
  sub_768900();
  sub_768ED0();
  v4 = v6;
  sub_7610A0();
  sub_75E3E0();
  sub_7688F0();
  if (v6)
  {
    v5 = v6;
    sub_75E3C0();

    v4 = v5;
  }
}

void sub_6BBB84(char a1)
{
  v2 = v1;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v24, "viewWillDisappear:", a1 & 1);
  sub_75E3E0();
  sub_7688F0();
  v4 = v18;
  if (v18)
  {
    v5 = v18;
    sub_75E3B0();
  }

  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v2 presentedViewController];
  if (v7)
  {
    v8 = v7;

LABEL_6:
    return;
  }

  if (v2[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation] == 1 || (v9 = [v2 transitionCoordinator]) == 0)
  {
    v15 = *(v6 + 40);
    if (!v15)
    {

      goto LABEL_6;
    }

    v16 = *(v6 + 48);

    v15(v17, 1.0, 0.0);

    sub_F704(v15, v16);
  }

  else
  {
    v10 = v9;
    v22 = sub_6BCFC4;
    v23 = v6;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_6C6800;
    v21 = &unk_89CCC8;
    v11 = _Block_copy(&v18);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    v22 = sub_6BD008;
    v23 = v13;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_6C6800;
    v21 = &unk_89CD40;
    v14 = _Block_copy(&v18);

    [v10 animateAlongsideTransition:v11 completion:v14];

    _Block_release(v14);
    _Block_release(v11);
    swift_unknownObjectRelease();
  }
}

void sub_6BBE4C(void *a1, uint64_t a2)
{
  v3 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for StoreCollectionViewController();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      (*&stru_158.sectname[swift_isaMask & *v5])();
    }
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    v7 = *(a2 + 48);

    v6(v8, 1.0, 0.0);

    sub_F704(v6, v7);
  }
}

void sub_6BBF44(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([a1 isCancelled])
    {
      v5 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v5)
      {
        v6 = v5;
        sub_BE70(0, &qword_9434E0, UIViewController_ptr);
        v7 = v4;
        v8 = sub_76A1C0();

        if ((v8 & 1) != 0 && !*&v7[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController])
        {
          v9 = [v7 navigationController];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 navigationBar];

            if (v11)
            {

              sub_434710();
            }
          }
        }
      }
    }
  }
}

void sub_6BC0E4()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewDidBecomePartiallyVisible");
  sub_75A0A0();
  sub_75E3E0();
  sub_7688F0();
  if (v2)
  {
    v1 = v2;
    sub_75E3B0();
  }
}

void sub_6BC234(void *a1, uint64_t a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a3, a4);
  v8 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver];
  if (v8)
  {
    v10[4] = sub_6BD1DC;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_6C6800;
    v10[3] = &unk_89CCA0;
    v9 = _Block_copy(v10);
    swift_retain_n();

    [a1 animateAlongsideTransition:v9 completion:0];
    _Block_release(v9);
  }
}

void sub_6BC3CC(uint64_t a1, uint64_t a2)
{
  v24.receiver = v2;
  v24.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v24, "viewDidLayoutSubviews");
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView];
  if (v3)
  {
    v4 = v3;
    [v2 pageMarginInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView;
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView] layoutMargins];
    v20 = v6 == v17 && v8 == v14 && v10 == v15 && v12 == v16;
    if (v20 || ([*&v4[v13] setLayoutMargins:{v6, v8, v10, v12}], objc_msgSend(v4, "invalidateIntrinsicContentSize"), (v21 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver]) == 0))
    {
    }

    else
    {
      v22 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver + 8];

      v21(v23);

      sub_F704(v21, v22);
    }
  }

  if (v2[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid] == 1)
  {
    v2[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid] = 0;
    sub_6BA400();
  }
}

void sub_6BC5D4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber);
  if (v5)
  {
    v16 = v5;
    if (!a1)
    {
      goto LABEL_14;
    }

    sub_764610();
    sub_6BD128(&qword_9424D0, &type metadata accessor for Uber, &protocol conformance descriptor for Uber);

    v6 = sub_7691C0();

    if (v6)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v7 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView);
  if (v7)
  {
    v8 = v7;
    if (sub_7645D0())
    {

      sub_761120();
      sub_768900();
      sub_768ED0();
      v9 = *(*(*&v8[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      if (v9)
      {
        type metadata accessor for VideoView(0);
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          sub_6BD128(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
          v11 = v9;
        }
      }

      else
      {
        v10 = 0;
      }

      sub_6BD128(&qword_95F410, type metadata accessor for UberHeaderView, &unk_7AA5E4);
      v12 = v8;
      sub_7610C0();
    }

    else
    {
    }
  }

LABEL_14:
  v13 = sub_6BA974();
  if (!v13)
  {
LABEL_20:
    sub_6BAF74();
    return;
  }

  v14 = v13;
  if (!*(v3 + v4))
  {

    goto LABEL_20;
  }

  v15 = *(*(*&v13[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);

  if (v15)
  {
    sub_6B96A0(v14);
  }

  sub_6BA630();
}

double sub_6BC898()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver];
  if (v1)
  {
    if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController])
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v3 = *(v1 + 48);

        sub_F714(v2, v3);
        v2(1.0, 0.0);

        sub_F704(v2, v3);
      }
    }

    else
    {

      v5 = [v0 navigationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 navigationBar];

        if (v7)
        {

          sub_434710();
        }
      }
    }
  }

  return result;
}

void sub_6BC9C8(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_statusBarStyle];
  *&a1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_statusBarStyle] = a2;
  if (v3 != a2)
  {
    v5 = [objc_allocWithZone(UIStatusBarAnimationParameters) init];
    [v5 setSkipFencing:1];
    [a1 _setNeedsStatusBarAppearanceUpdateWithAnimationParameters:v5];
  }
}

void sub_6BCA64(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid] = 1;
    v2 = Strong;
    v3 = [Strong viewIfLoaded];
    [v3 setNeedsLayout];
  }
}

void sub_6BCAEC(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_6BA134(a2, a3);
  }
}

void sub_6BCD00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v5 = [v2 traitCollection];
  v6 = sub_7699D0();

  if (!a1 || (sub_7699D0() & 1) != (v6 & 1))
  {
    v7 = sub_6BA974();
    if (v7)
    {
      v8 = v7;
      if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber])
      {

        sub_6B96A0(v8);

        return;
      }
    }

    sub_6BAF74();
  }
}

double sub_6BCE54()
{

  return result;
}

id sub_6BCEB4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UberedCollectionViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_6BCF78(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_startedAsFlowPreview) = result;
  if (result)
  {
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 1;
  }

  return result;
}

double sub_6BCFAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_6BCFCC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_6BD01C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_761930();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v7 = v5;

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];

    sub_761920();

    sub_6BC898();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_6BD128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6BD170()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_6BD1E0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_93E0E0 != -1)
  {
    swift_once();
  }

  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for VideoCardView(0);

  return sub_6B2178(a1, a2, &qword_9A07C0, a8, v12, ObjectType);
}

uint64_t sub_6BD330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v4 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v4 - 8);
  v82 = &v75 - v5;
  v6 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v6 - 8);
  v84 = &v75 - v7;
  v8 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v8 - 8);
  v83 = &v75 - v9;
  v10 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v10 - 8);
  v81 = &v75 - v11;
  v12 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v12 - 8);
  v80 = &v75 - v13;
  v14 = sub_75CA40();
  __chkstk_darwin(v14 - 8);
  v79 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7593D0();
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v76 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v18 - 8);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v85 = &v75 - v21;
  v22 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v22 - 8);
  v24 = &v75 - v23;
  v25 = sub_75A6B0();
  __chkstk_darwin(v25 - 8);
  __chkstk_darwin(v26);
  v27 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v27 - 8);
  v29 = &v75 - v28;
  v30 = sub_75A6E0();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_75DC30();
  v89 = *(v34 - 8);
  v90 = v34;
  __chkstk_darwin(v34);
  v36 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a1;
  sub_765B90();
  (*(v31 + 104))(v33, enum case for VideoFillMode.scaleAspectFill(_:), v30);
  sub_764BC0();
  sub_765260();
  sub_7666A0();

  v37 = sub_766690();
  (*(*(v37 - 8) + 56))(v29, 0, 1, v37);
  sub_764B60();
  sub_764BA0();
  sub_764B70();
  sub_764B50();
  sub_764BB0();
  sub_75DC10();
  sub_75C360();
  sub_768880();
  v38 = v93[0];
  sub_764B40();
  sub_764BD0();
  v39 = sub_7570A0();
  (*(*(v39 - 8) + 56))(v24, 0, 1, v39);
  v40 = v85;
  sub_764B90();
  v41 = v86;
  sub_764B80();
  type metadata accessor for VideoView(0);
  sub_6BE908(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
  v88 = v36;
  v42 = sub_75C340();
  sub_10A2C(v41, &unk_948710, &qword_77FF90);
  sub_10A2C(v40, &unk_948710, &qword_77FF90);
  sub_10A2C(v24, &unk_93FD30, qword_77F240);
  sub_10A2C(v93, &unk_9443A0, &unk_77E240);
  v43 = *(v87 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    v46 = [Strong superview];
    if (!v46)
    {
LABEL_6:

      goto LABEL_7;
    }

    v47 = v46;
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v48 = v43;
    v49 = sub_76A1C0();

    if (v49)
    {
      v50 = swift_unknownObjectWeakLoadStrong();
      if (v50)
      {
        v45 = v50;
        [v50 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v54 = v77;
    v53 = v78;
    v55 = v76;
    (*(v77 + 104))(v76, enum case for CornerStyle.continuous(_:), v78);
    sub_75CCD0();
    (*(v54 + 8))(v55, v53);
    [v43 addSubview:v52];
    [v43 sendSubviewToBack:v52];
    [v43 setNeedsLayout];
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {
    v56[qword_940598] = 1;
  }

  v57 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView];
  v58 = sub_765BA0();
  if (v58)
  {
    v59 = v58;
    [v57 setHidden:0];
    v87 = v38;
    v60 = v79;
    sub_765B80();
    sub_6B0E70(v60);
    v61 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView];
    v62 = sub_BD88(&unk_948740, &unk_784920);
    v63 = v80;
    (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
    v64 = sub_758C70();
    v65 = v81;
    (*(*(v64 - 8) + 56))(v81, 1, 1, v64);
    v66 = sub_75BD30();
    v67 = v83;
    (*(*(v66 - 8) + 56))(v83, 1, 1, v66);
    v68 = sub_BD88(&unk_9457F0, qword_783FD0);
    v69 = v84;
    (*(*(v68 - 8) + 56))(v84, 1, 1, v68);
    v70 = sub_765870();
    v71 = v82;
    (*(*(v70 - 8) + 56))(v82, 1, 1, v70);
    v72 = v61;
    sub_4A18A4(v59, v72, v63, v92, 0, 0, v65, v67, v71, v69);
    sub_10A2C(v71, &unk_9457D0, &unk_785630);
    v72[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v72 setNeedsLayout];

    sub_10A2C(v69, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v67, &unk_9457E0, &qword_785640);
    sub_10A2C(v65, &unk_94A780, &unk_788DC0);
    sub_10A2C(v63, &unk_948730, &qword_788DD0);
  }

  else
  {
    v73 = v57;
    [v73 setHidden:1];
  }

  return (*(v89 + 8))(v88, v90);
}

void sub_6BDF18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  swift_getObjectType();
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_765240();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75CF00();
  v35 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_766690();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v41);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_765BB0();
  if (swift_dynamicCast())
  {
    v34[1] = v7;
    v36 = v40;
    sub_765B90();
    v18 = sub_764BC0();

    sub_75D650();
    CGRectGetWidth(v42);
    sub_765260();
    sub_7666A0();
    sub_766660();
    (*(v15 + 8))(v17, v14);
    v34[2] = v18;
    v19 = sub_765330();
    v20 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      type metadata accessor for VideoView(0);
      sub_6BE908(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
      sub_75A050();
    }

    else
    {
      sub_75A060();
    }

    v23 = v38;
    v24 = *(v20 + OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView);
    if (sub_765BA0())
    {
      if (sub_764F20())
      {
        v34[0] = v19;
        v25 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
        swift_beginAccess();
        v26 = v35;
        (*(v35 + 16))(v13, &v24[v25], v11);
        sub_75CDD0();
        (*(v26 + 8))(v13, v11);
        sub_765250();
        sub_765210();
        v35 = *(v37 + 1);
        (v35)(v10, v23);
        sub_765330();
        v27 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
        v28 = *&v24[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
        v37 = v24;
        v29 = v28;
        sub_7652E0();
        sub_7591B0();
        [v29 setContentMode:sub_765140()];
        sub_75DEF0();
        sub_7591F0();
        if (!sub_7651A0())
        {
          sub_BE70(0, &qword_93E540, UIColor_ptr);
          sub_76A030();
        }

        sub_759070();

        v30 = *&v24[v27];
        sub_765250();
        v31 = sub_765210();
        (v35)(v10, v38);
        [v30 setContentMode:v31];

        v32 = *&v24[v27];
        v33 = v37;

        sub_759210();
        sub_6BE908(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_75A050();

        goto LABEL_12;
      }
    }

LABEL_12:
  }
}

id sub_6BE554(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_93E0E0 != -1)
  {
    swift_once();
  }

  sub_6BE908(&qword_962178, type metadata accessor for VideoCardCollectionViewCell, &unk_77F968);
  sub_766EF0();
  v3 = v2;
  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 absoluteDimension:v3];
  v8 = [v6 absoluteDimension:v5];
  v9 = [objc_opt_self() sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = [objc_opt_self() itemWithLayoutSize:v9];
  v11 = objc_opt_self();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_77D9F0;
  *(v12 + 32) = v10;
  sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
  v13 = v10;
  isa = sub_769450().super.isa;

  v15 = [v11 verticalGroupWithLayoutSize:v9 subitems:isa];

  return v15;
}

void sub_6BE78C(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for VideoView(0);
    sub_6BE908(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
    sub_75A0C0();
  }

  v6 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v8 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
  v9 = v6;
  v10 = v8;
  sub_759050();

  v11 = *&v6[v7];
  sub_759210();
  sub_6BE908(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v12 = v11;
  sub_75A0C0();
}

uint64_t sub_6BE908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6BE950@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764960();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_6BE97C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = sub_76A920();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_75B660();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0, &qword_782290);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v15(v11, v8);
  if (v32 && (sub_759880() & 1) != 0)
  {
    if (qword_93DCE0 != -1)
    {
      swift_once();
    }

    v16 = sub_766CA0();
    sub_BE38(v16, qword_99FDE8);
    sub_75DA40();
    sub_766470();
    sub_766700();
    bottom = v17;

    swift_unknownObjectRelease();
    (*(v28 + 8))(v4, v29);
    left = 0.0;
    top = 32.0;
    right = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v19.n128_f64[0] = top;
  v20.n128_f64[0] = left;
  v21.n128_f64[0] = bottom;
  v22.n128_f64[0] = right;
  v26 = sub_27D0E8(v7, v31, v19, v20, v21, v22);
  return (*(v5 + 8))(v7, v30, v26);
}

uint64_t sub_6BED18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764990();
  *a1 = result;
  return result;
}

uint64_t sub_6BED44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7649B0();
  *a1 = result;
  return result;
}

double sub_6BED78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v143 = a4;
  v149 = a5;
  v9 = sub_75B660();
  v10 = *(v9 - 8);
  v141 = v9;
  v142 = v10;
  __chkstk_darwin(v9);
  v150 = (&v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_75DAB0();
  v13 = *(v12 - 8);
  v147 = v12;
  v148 = v13;
  __chkstk_darwin(v12);
  v144 = v14;
  v146 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_94F1F0, &qword_782290);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v139 - v20;
  __chkstk_darwin(v22);
  v24 = &v139 - v23;
  if (sub_769240() == a1 && v25 == a2)
  {
  }

  else
  {
    v140 = a2;
    v27 = sub_76A950();

    if ((v27 & 1) == 0)
    {
      if (sub_769240() == a1 && v28 == v140)
      {

        v29 = a3;
        goto LABEL_18;
      }

      v69 = sub_76A950();

      v29 = a3;
      if (v69)
      {
LABEL_18:
        sub_75DAA0();
        swift_getKeyPath();
        sub_768750();

        (*(v16 + 8))(v18, v15);
        if (v152)
        {

          v70 = sub_BD88(&qword_962368, &unk_7ADFB0);
          v71 = v149;
          *(v149 + 24) = v70;
          v71[4] = sub_15D000(&qword_962370, &qword_962368, &unk_7ADFB0);
          v150 = sub_B1B4(v71);
          v149 = sub_769240();
          v142 = v72;
          type metadata accessor for ShelfFooterView();
          sub_769BD0();
          v73 = swift_allocObject();
          swift_weakInit();
          v74 = v147;
          v75 = v148;
          v76 = v146;
          (*(v148 + 16))(v146, v29, v147);
          v77 = (*(v75 + 80) + 24) & ~*(v75 + 80);
          v78 = (v144 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
          v79 = swift_allocObject();
          *(v79 + 16) = v73;
          (*(v75 + 32))(v79 + v77, v76, v74);
          *(v79 + v78) = v143;
        }

        else
        {
          v80 = sub_BD88(&qword_951B98, &unk_799978);
          v81 = v149;
          *(v149 + 24) = v80;
          v81[4] = sub_15D000(&unk_959630, &qword_951B98, &unk_799978);
          sub_B1B4(v81);
          sub_769240();
          type metadata accessor for InfiniteScrollFooterView();
          sub_769BD0();
        }

        goto LABEL_20;
      }

      type metadata accessor for GradientSectionBackgroundView();
      if (sub_769BC0() == a1 && v82 == v140)
      {

LABEL_27:
        v84 = sub_BD88(&qword_962358, &unk_7ADFA0);
        v85 = v149;
        *(v149 + 24) = v84;
        v85[4] = sub_15D000(&qword_962360, &qword_962358, &unk_7ADFA0);
        v150 = sub_B1B4(v85);
        v149 = sub_769BC0();
        sub_769BD0();
        v86 = v147;
        v87 = v148;
        v88 = v146;
        (*(v148 + 16))(v146, v29, v147);
        v89 = (*(v87 + 80) + 16) & ~*(v87 + 80);
        v90 = (v144 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
        v91 = swift_allocObject();
        (*(v87 + 32))(v91 + v89, v88, v86);
        *(v91 + v90) = v145;

        goto LABEL_20;
      }

      v83 = sub_76A950();

      if (v83)
      {
        goto LABEL_27;
      }

      type metadata accessor for MaterialGradientSectionBackgroundView();
      if (sub_769BC0() == a1 && v92 == v140)
      {

LABEL_33:
        v94 = sub_BD88(&qword_962348, &qword_7ADF98);
        v95 = v149;
        *(v149 + 24) = v94;
        v95[4] = sub_15D000(&qword_962350, &qword_962348, &qword_7ADF98);
        v150 = sub_B1B4(v95);
        v149 = sub_769BC0();
        sub_769BD0();
        v96 = v147;
        v97 = v148;
        v98 = v146;
        (*(v148 + 16))(v146, v29, v147);
        v99 = (*(v97 + 80) + 16) & ~*(v97 + 80);
        v100 = (v144 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
        v101 = swift_allocObject();
        (*(v97 + 32))(v101 + v99, v98, v96);
        *(v101 + v100) = v145;

        goto LABEL_20;
      }

      v93 = sub_76A950();

      if (v93)
      {
        goto LABEL_33;
      }

      type metadata accessor for ArtworkSectionBackgroundView();
      if (sub_769BC0() == a1 && v102 == v140)
      {

LABEL_38:
        v104 = sub_BD88(&qword_962338, &qword_7ADF90);
        v105 = v149;
        *(v149 + 24) = v104;
        v105[4] = sub_15D000(&qword_962340, &qword_962338, &qword_7ADF90);
        v150 = sub_B1B4(v105);
        v149 = sub_769BC0();
        sub_769BD0();
        v106 = v147;
        v107 = v148;
        v108 = v146;
        (*(v148 + 16))(v146, v29, v147);
        v109 = (*(v107 + 80) + 16) & ~*(v107 + 80);
        v110 = (v144 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
        v111 = swift_allocObject();
        (*(v107 + 32))(v111 + v109, v108, v106);
        *(v111 + v110) = v145;

        goto LABEL_20;
      }

      v103 = sub_76A950();

      if (v103)
      {
        goto LABEL_38;
      }

      type metadata accessor for InteractiveSectionBackgroundView(0);
      if (sub_769BC0() == a1 && v112 == v140)
      {

LABEL_43:
        v114 = sub_BD88(&qword_962328, &qword_7ADF88);
        v115 = v149;
        *(v149 + 24) = v114;
        v115[4] = sub_15D000(&qword_962330, &qword_962328, &qword_7ADF88);
        v150 = sub_B1B4(v115);
        v149 = sub_769BC0();
        sub_769BD0();
        v116 = swift_allocObject();
        swift_weakInit();
        v117 = v147;
        v118 = v148;
        v119 = v146;
        (*(v148 + 16))(v146, v29, v147);
        v120 = (*(v118 + 80) + 24) & ~*(v118 + 80);
        v121 = swift_allocObject();
        *(v121 + 16) = v116;
        (*(v118 + 32))(v121 + v120, v119, v117);
        goto LABEL_20;
      }

      v113 = sub_76A950();

      if (v113)
      {
        goto LABEL_43;
      }

      type metadata accessor for EditorsChoiceBackgroundView();
      if (sub_769BC0() == a1 && v122 == v140)
      {

LABEL_48:
        v124 = sub_BD88(&qword_962318, &qword_7ADF80);
        v125 = v149;
        *(v149 + 24) = v124;
        v125[4] = sub_15D000(&qword_962320, &qword_962318, &qword_7ADF80);
        v150 = sub_B1B4(v125);
        v149 = sub_769BC0();
        sub_769BD0();
        v126 = v147;
        v127 = v148;
        v128 = v146;
        (*(v148 + 16))(v146, v29, v147);
        v129 = (*(v127 + 80) + 16) & ~*(v127 + 80);
        v130 = (v144 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
        v131 = swift_allocObject();
        (*(v127 + 32))(v131 + v129, v128, v126);
        *(v131 + v130) = v145;

        goto LABEL_20;
      }

      v123 = sub_76A950();

      if (v123)
      {
        goto LABEL_48;
      }

      sub_75E6D0();
      if (sub_75E6B0() == a1 && v132 == v140)
      {
        goto LABEL_51;
      }

      v133 = sub_76A950();

      if (v133)
      {
        goto LABEL_53;
      }

      if (sub_75E6C0() == a1 && v136 == v140)
      {
LABEL_51:
      }

      else
      {
        v137 = sub_76A950();

        if ((v137 & 1) == 0)
        {
          v138 = v149;
          *(v149 + 32) = 0;
          result = 0.0;
          *v138 = 0u;
          v138[1] = 0u;
          return result;
        }
      }

LABEL_53:
      v134 = sub_BD88(&qword_946B48, &qword_787AF0);
      v135 = v149;
      *(v149 + 24) = v134;
      v135[4] = sub_15D000(&qword_946B50, &qword_946B48, &qword_787AF0);
      sub_B1B4(v135);
      sub_75E6A0();
      return result;
    }
  }

  v30 = a3;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v31 = *(v16 + 8);
  v31(v24, v15);
  if (!v151)
  {
    v33 = v141;
    v34 = v150;
    goto LABEL_14;
  }

  v32 = sub_759750();

  v33 = v141;
  v34 = v150;
  if ((v32 & 1) == 0)
  {
LABEL_14:
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v31(v21, v15);
    v45 = (*(v142 + 88))(v34, v33);
    v46 = v148;
    if (v45 != enum case for ShelfBackground.interactive(_:))
    {
      v56 = sub_BD88(&qword_946B58, &qword_787AF8);
      v57 = v149;
      *(v149 + 24) = v56;
      v57[4] = sub_15D000(&qword_946B60, &qword_946B58, &qword_787AF8);
      sub_B1B4(v57);
      v149 = sub_769240();
      v141 = v58;
      type metadata accessor for TitleHeaderView(0);
      v59 = sub_769BD0();
      v139 = v60;
      v140 = v59;
      v61 = v30;
      v62 = swift_allocObject();
      swift_weakInit();
      v64 = v146;
      v63 = v147;
      (*(v46 + 16))(v146, v61, v147);
      v65 = (*(v46 + 80) + 24) & ~*(v46 + 80);
      v66 = (v144 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      *(v67 + 16) = v62;
      (*(v46 + 32))(v67 + v65, v64, v63);
      *(v67 + v66) = v143;

      sub_763760();
      (*(v142 + 8))(v150, v33);
      return result;
    }

    v47 = sub_BD88(&qword_962378, &unk_7ADFC0);
    v48 = v149;
    *(v149 + 24) = v47;
    v48[4] = sub_15D000(&qword_962380, &qword_962378, &unk_7ADFC0);
    v150 = sub_B1B4(v48);
    v149 = sub_769240();
    v142 = v49;
    type metadata accessor for InteractiveTitleHeaderView(0);
    sub_769BD0();
    v50 = swift_allocObject();
    swift_weakInit();
    v52 = v146;
    v51 = v147;
    (*(v46 + 16))(v146, v30, v147);
    v53 = (*(v46 + 80) + 24) & ~*(v46 + 80);
    v54 = (v144 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = v50;
    (*(v46 + 32))(v55 + v53, v52, v51);
    *(v55 + v54) = v143;

    goto LABEL_20;
  }

  v35 = sub_BD88(&qword_951300, &qword_799368);
  v36 = v149;
  *(v149 + 24) = v35;
  v36[4] = sub_15D000(&qword_951308, &qword_951300, &qword_799368);
  v150 = sub_B1B4(v36);
  v149 = sub_769240();
  v142 = v37;
  type metadata accessor for ShelfHeaderView(0);
  sub_769BD0();
  v38 = swift_allocObject();
  swift_weakInit();
  v40 = v147;
  v39 = v148;
  v41 = v146;
  (*(v148 + 16))(v146, v30, v147);
  v42 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v43 = (v144 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  (*(v39 + 32))(v44 + v42, v41, v40);
  *(v44 + v43) = v143;

LABEL_20:
  sub_763760();
  return result;
}

uint64_t sub_6BFEFC(uint64_t a1, int *a2)
{
  v56 = a2;
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v60 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7656C0();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0, &qword_782290);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v54 - v12;
  __chkstk_darwin(v13);
  v55 = &v54 - v14;
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  __chkstk_darwin(v24);
  v26 = &v54 - v25;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v27 = *(v9 + 8);
  v27(v26, v8);
  v28 = v68;
  if (!v68)
  {
    goto LABEL_16;
  }

  v29 = v67;

  v30 = (v28 >> 56) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
LABEL_16:
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v27(v23, v8);
    if (!v67)
    {
      return 0;
    }

    v31 = sub_759880();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  sub_75DA60();
  sub_765BE0();
  sub_765630();
  v33 = v32;
  v35 = v34;
  (*(v61 + 8))(v7, v62);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v27(v20, v8);
  v36 = v67;
  if (!v67)
  {
    goto LABEL_12;
  }

  if ((sub_759750() & 1) == 0)
  {

LABEL_12:
    v38 = sub_6C2AC0(v33, v35);
    v40 = v39;
    v62 = type metadata accessor for TitleHeaderView(0);
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v27(v17, v8);
    v61 = v67;
    v56 = v68;
    v41 = v55;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v27(v41, v8);
    v42 = v66;
    v43 = v57;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v27(v43, v8);
    v45 = v64;
    v44 = v65;
    v46 = v58;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v27(v46, v8);
    v47 = v63;
    v48 = sub_6C2E38();
    v49 = v60;
    (*(*v59 + 192))(a1);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v53 = sub_75DA40();
    swift_getObjectType();
    sub_1995E0(v61, v56, v42, v45, v44, v47, 0, 0, v33, v35, v38, v40, UIEdgeInsetsZero.top, left, bottom, right, 0, 0, v48, v49, 1, v53);
    swift_unknownObjectRelease();

    sub_6C48A4(v49, type metadata accessor for TitleHeaderView.Style);
    return *&v33;
  }

  type metadata accessor for ShelfHeaderView(0);
  v33 = sub_50F5C0(v36, a1, v33, v35);

  return *&v33;
}