void sub_54453C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_needsPageViewLayout;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_needsPageViewLayout) == 1 && *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount) >= 1)
  {
    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_needsPageViewLayout) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_5463C4;
    *(v4 + 24) = v3;
    v7[4] = sub_2EC28;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1EB578;
    v7[3] = &unk_896758;
    v5 = _Block_copy(v7);
    v6 = isEscapingClosureAtFileLocation;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  *(isEscapingClosureAtFileLocation + v1) = 0;
}

double sub_5446CC(char *a1)
{
  [a1 bounds];
  v2 = CGRectGetWidth(v13) * *&a1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount];
  [a1 bounds];
  [a1 setContentSize:{v2, CGRectGetHeight(v14)}];
  v3 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers];
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      v8 = *(v6 + 32);
      [a1 bounds];
      v9 = CGRectGetWidth(v15) * v5;
      [a1 bounds];
      Width = CGRectGetWidth(v16);
      [a1 bounds];
      [v8 setFrame:{v9, 0.0, Width, CGRectGetHeight(v17)}];

      ++v5;
    }

    while (v7 != v4);
  }

  return result;
}

void sub_544880(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount];
  if (v3 < 0)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
LABEL_15:
    v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
    sub_543110(v10);

    [v1 contentOffset];
    if (v11 < 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v11;
    }

    [v1 contentSize];
    if (v13 < v12)
    {
      v12 = v13;
    }

    [v1 bounds];
    *v14.i64 = v12 / CGRectGetWidth(v20);
    *v15.i64 = *v14.i64 - trunc(*v14.i64);
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v19 = *vbslq_s8(vnegq_f64(v16), v15, v14).i64;
    [v1 bounds];
    v17 = v19 * CGRectGetWidth(v21);
    v18 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    [v1 setContentOffset:v17];
    v1[v18] = 0;
    return;
  }

  v5 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  while (1)
  {
    if (!*(*&v1[v5] + 16))
    {
      goto LABEL_5;
    }

    sub_663D5C(a1);
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v7 = *&v1[v2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      break;
    }

    if (a1 == v9)
    {
      a1 = 0;
    }

    else
    {
      v8 = __OFADD__(a1++, 1);
      if (v8)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if (!--v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_544AB0(uint64_t a1)
{
  v3 = sub_76A950();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount;
  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount];
  if (v5 < 0)
  {
    goto LABEL_37;
  }

  v6 = v3;
  if (!v5)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_24:
    if ((v6 & 1) == 0)
    {
      v8 = sub_5B4D00(_swiftEmptyArrayStorage);
    }

    v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers] = v8;
    sub_543110(v14);

    [v1 contentOffset];
    if (v15 < 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    [v1 contentSize];
    v18 = v17;
    [v1 bounds];
    v19 = v18 - CGRectGetWidth(v31);
    if (v19 >= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    [v1 bounds];
    *v21.i64 = v20 / CGRectGetWidth(v32);
    v30 = v21;
    [v1 contentSize];
    v23 = v22;
    [v1 bounds];
    v24 = v23 - CGRectGetWidth(v33);
    *v25.i64 = *v30.i64 - trunc(*v30.i64);
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v27 = 1.0 - *vbslq_s8(vnegq_f64(v26), v25, v30).i64;
    [v1 bounds];
    v28 = v24 - v27 * CGRectGetWidth(v34);
    v29 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    [v1 setContentOffset:v28];
    v1[v29] = 0;
    return;
  }

  v7 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (!*(*&v1[v7] + 16))
    {
      goto LABEL_5;
    }

    sub_663D5C(a1);
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v8 = _swiftEmptyArrayStorage;
    if (v6)
    {
      break;
    }

    if (a1)
    {
      v11 = __OFSUB__(a1--, 1);
      if (v11)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = *&v1[v4];
      a1 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_36;
      }
    }

LABEL_5:
    if (!--v5)
    {
      goto LABEL_24;
    }
  }

  v10 = *&v1[v4];
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
    if (a1 == v12)
    {
      a1 = 0;
    }

    else
    {
      v11 = __OFADD__(a1++, 1);
      if (v11)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_544DA4()
{
  [v0 contentOffset];
  v2 = v1;
  [v0 bounds];
  *v3.i64 = v2 / CGRectGetWidth(v15);
  *v4.i64 = *v3.i64 - trunc(*v3.i64);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = *vbslq_s8(vnegq_f64(v5), v4, v3).i64;
  if (v6 == 0.0)
  {
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = 9.22337204e18;
    if (*v3.i64 < 9.22337204e18)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v6 >= 0.5)
  {
LABEL_11:
    *v3.i64 = ceil(*v3.i64);
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (*v3.i64 >= 9.22337204e18)
    {
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

  *v3.i64 = floor(*v3.i64);
  if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*v3.i64 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*v3.i64 >= 9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount];
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
LABEL_26:

    v12 = sub_76A770();

    goto LABEL_22;
  }

  if (v9 >= (*v3.i64 & ~(*v3.i64 >> 63)))
  {
    v10 = *v3.i64 & ~(*v3.i64 >> 63);
  }

  else
  {
    v10 = v9;
  }

  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers];
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v10 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = *(v11 + 8 * v10 + 32);

LABEL_22:
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker] = v12;

  sub_5436B8(v13);
}

void sub_544FC0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers);
  if (v2 >> 62)
  {
    goto LABEL_74;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    goto LABEL_15;
  }

  v56 = _swiftEmptyArrayStorage;
  v5 = v2;

  v2 = sub_143F28(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v43 = v1;
    v6 = 0;
    v1 = 0;
    v4 = v56;
    v7 = v5;
    v47 = v5;
    v48 = v5 & 0xC000000000000001;
    v45 = v5 & 0xFFFFFFFFFFFFFF8;
    v46 = v3;
    do
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        v40 = v2;
        v3 = sub_76A860();
        v2 = v40;
        goto LABEL_3;
      }

      if (v48)
      {
        v9 = sub_76A770();
      }

      else
      {
        if (v6 >= *(v45 + 16))
        {
          goto LABEL_73;
        }

        v9 = *(v7 + 8 * v6 + 32);
      }

      v51 = v9;
      sub_545500(&v51, v50, &v52);

      v10 = v52;
      v11 = v53;
      v12 = v54;
      v13 = v55;
      v56 = v4;
      v15 = *(v4 + 2);
      v14 = *(v4 + 3);
      if (v15 >= v14 >> 1)
      {
        v2 = sub_143F28((v14 > 1), v15 + 1, 1);
        v4 = v56;
      }

      *(v4 + 2) = v15 + 1;
      v16 = &v4[2 * v15];
      *(v16 + 4) = v10;
      *(v16 + 40) = v11;
      *(v16 + 41) = v12;
      *(v16 + 42) = v13;
      ++v6;
      v7 = v47;
    }

    while (v8 != v46);

    v1 = v43;
LABEL_15:
    v17 = *&v50[v1];
    if (v17 >> 62)
    {
      v41 = *&v50[v1];
      v1 = sub_76A860();
      v17 = v41;
    }

    else
    {
      v1 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    }

    v42 = v17;

    if (v1)
    {
      v18 = 0;
      v19 = 0;
      v44 = v1;
      while (2)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v2 = sub_76A770();
          v20 = v2;
        }

        else
        {
          if (v19 >= *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_71;
          }

          v20 = *(v42 + 32 + 8 * v19);
        }

        v21 = *(v4 + 2);
        if (v19 == v21)
        {

          goto LABEL_67;
        }

        if (v19 >= v21)
        {
          goto LABEL_72;
        }

        v22 = v4[v18 + 4];
        v23 = LOBYTE(v4[v18 + 5]);
        v24 = BYTE1(v4[v18 + 5]);
        v25 = BYTE2(v4[v18 + 5]);
        v26 = *(v20 + 32) + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_pagingProgress;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 9);
        v49 = *(v26 + 10);
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 9) = v24;
        LODWORD(v50) = v25;
        *(v26 + 10) = v25;
        if (v22 != v27)
        {
          goto LABEL_19;
        }

        v30 = 0x64726177726F66;
        if (v23 != 1)
        {
          v30 = 1701736302;
        }

        v31 = 0xE700000000000000;
        if (v23 != 1)
        {
          v31 = 0xE400000000000000;
        }

        if (v23)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0x647261776B636162;
        }

        if (v23)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0xE800000000000000;
        }

        if (v28)
        {
          if (v28 == 1)
          {
            v34 = 0xE700000000000000;
            if (v32 != 0x64726177726F66)
            {
              goto LABEL_46;
            }

LABEL_44:
            if (v33 == v34)
            {

LABEL_47:
              if (v24)
              {
                if (v24 == 1)
                {
                  v36 = 0x6165707061736964;
                  v37 = 0xEC000000676E6972;
                  if (!v29)
                  {
LABEL_56:
                    v38 = 0xE900000000000067;
                    if (v36 != 0x6E69726165707061)
                    {
                      goto LABEL_62;
                    }

LABEL_59:
                    if (v37 == v38)
                    {

                      if (v50 == v49)
                      {
                        goto LABEL_20;
                      }

                      goto LABEL_19;
                    }

                    goto LABEL_62;
                  }
                }

                else
                {
                  v37 = 0xE400000000000000;
                  v36 = 1701736302;
                  if (!v29)
                  {
                    goto LABEL_56;
                  }
                }
              }

              else
              {
                v36 = 0x6E69726165707061;
                v37 = 0xE900000000000067;
                if (!v29)
                {
                  goto LABEL_56;
                }
              }

              if (v29 == 1)
              {
                v38 = 0xEC000000676E6972;
                if (v36 == 0x6165707061736964)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                v38 = 0xE400000000000000;
                if (v36 == 1701736302)
                {
                  goto LABEL_59;
                }
              }

LABEL_62:
              v39 = sub_76A950();

              if ((v39 & 1) != 0 && v50 == v49)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }

          else
          {
            v34 = 0xE400000000000000;
            if (v32 == 1701736302)
            {
              goto LABEL_44;
            }
          }

LABEL_46:
          v35 = sub_76A950();

          if (v35)
          {
            goto LABEL_47;
          }

LABEL_19:
          sub_5DA464();
          sub_5DA768();
LABEL_20:
          ++v19;

          v18 += 2;
          v1 = v44;
          if (v44 == v19)
          {
            goto LABEL_67;
          }

          continue;
        }

        break;
      }

      v34 = 0xE800000000000000;
      if (v32 != 0x647261776B636162)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

LABEL_67:
  }
}

id sub_545500@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  [*(*a1 + 32) frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a2 superview];
  [a2 convertRect:v13 toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [a2 frame];
  v46.origin.x = v22;
  v46.origin.y = v23;
  v46.size.width = v24;
  v46.size.height = v25;
  v40.origin.x = v15;
  v40.origin.y = v17;
  v40.size.width = v19;
  v40.size.height = v21;
  v41 = CGRectIntersection(v40, v46);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v47.origin.x = CGRectNull.origin.x;
  v47.origin.y = CGRectNull.origin.y;
  v47.size.width = CGRectNull.size.width;
  v47.size.height = CGRectNull.size.height;
  if (CGRectEqualToRect(v41, v47))
  {
    v42.origin.x = v15;
    v42.origin.y = v17;
    v42.size.width = v19;
    v42.size.height = v21;
    if (CGRectGetMaxX(v42) > 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }
  }

  else
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v31 = CGRectGetWidth(v43);
    [a2 bounds];
    v30 = v31 / CGRectGetWidth(v44);
  }

  v45.origin.x = v15;
  v45.origin.y = v17;
  v45.size.width = v19;
  v45.size.height = v21;
  MinX = CGRectGetMinX(v45);
  v33 = a2[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection];
  if (MinX <= 0.0)
  {
    if (v33 == 1)
    {

      goto LABEL_14;
    }

    v36 = sub_76A950();

    if (v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v33 == 1)
    {

      goto LABEL_16;
    }

    v34 = sub_76A950();

    if ((v34 & 1) == 0)
    {
LABEL_14:

      v35 = 1;
LABEL_17:
      v30 = 1.0 - v30;
      goto LABEL_18;
    }
  }

LABEL_16:
  v37 = sub_76A950();

  v35 = 0;
  if (v37)
  {
    goto LABEL_17;
  }

LABEL_18:
  v38 = a2[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection];
  result = [a2 _isAnimatingScroll];
  *a3 = v30;
  *(a3 + 8) = v38;
  *(a3 + 9) = v35;
  *(a3 + 10) = result ^ 1;
  return result;
}

void sub_545984(void *a1)
{
  v3 = sub_543294(0);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isFixingContentOffset;
  if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isFixingContentOffset) & 1) != 0 || ([a1 contentOffset], (v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker)) != 0) && (v7 = v5, objc_msgSend(*(v6 + 32), "frame"), v7 == v8))
  {
    *(v1 + v4) = 0;

    sub_545AB8(0);
  }

  else
  {
    *(v1 + v4) = 1;

    sub_543FF8(1u);
  }
}

void sub_545AB8(char a1)
{
  v2 = v1;
  v4 = sub_760180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker);
  if (!v9)
  {
    return;
  }

  v33 = v6;
  if (a1)
  {
    v10 = *(v9 + 16);

    v11 = v10;
LABEL_9:
    sub_544880(v11);
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection;
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection) && *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection) == 1)
  {

LABEL_8:
    v11 = *(v9 + 16);
    goto LABEL_9;
  }

  v13 = sub_76A950();

  if (v13)
  {
    goto LABEL_8;
  }

  if (*(v2 + v12))
  {
    v27 = sub_76A950();

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v28 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_37;
  }

  v31 = *(v9 + 16);
  if (v31 != v30)
  {
    v32 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      goto LABEL_35;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v32 = 0;
LABEL_35:
  sub_544AB0(v32);
LABEL_10:
  v14 = *(v9 + 24);
  v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPageIndex);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPageIndex) = v14;
  if (v14 != v15 && swift_unknownObjectWeakLoadStrong())
  {
    sub_190A64(v2, v15, v14);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = Strong;
  if (a1)
  {
    if (Strong)
    {
      v18 = sub_7653A0();
      v35 = v18;
      v36 = sub_21E944();
      v19 = sub_B1B4(v34);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v18);
      LOBYTE(v18) = sub_765C30();
      sub_BEB8(v34);
      if ((v18 & 1) == 0)
      {
        v20 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollConfiguration;
        swift_beginAccess();
        v21 = v33;
        (*(v5 + 16))(v8, v17 + v20, v33);
        sub_760160();
        v23 = v22;
        (*(v5 + 8))(v8, v21);
        v24 = v23;
LABEL_27:
        sub_18F7B4(v24);

        goto LABEL_28;
      }

      goto LABEL_19;
    }
  }

  else if (Strong)
  {
    v25 = sub_7653A0();
    v35 = v25;
    v36 = sub_21E944();
    v26 = sub_B1B4(v34);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v25);
    LOBYTE(v25) = sub_765C30();
    sub_BEB8(v34);
    if ((v25 & 1) == 0)
    {
      v24 = 0.0;
      goto LABEL_27;
    }

LABEL_19:

    *(v17 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isUserPagingInteractively) = 0;
LABEL_28:
    swift_unknownObjectRelease();
    return;
  }
}

id sub_545F10(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HeroCarouselScrollView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t initializeBufferWithCopyOfBuffer for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_5460CC()
{
  result = qword_95A728;
  if (!qword_95A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A728);
  }

  return result;
}

uint64_t sub_546120(int a1, int a2, double a3, double a4)
{
  if (a3 != a4)
  {
    return 0;
  }

  v6 = a1;
  if (!a1)
  {
    v8 = 0xE800000000000000;
    v7 = 0x647261776B636162;
    v9 = a2;
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0xE800000000000000;
    if (v7 != 0x647261776B636162)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (a1 == 1)
  {
    v7 = 0x64726177726F66;
  }

  else
  {
    v7 = 1701736302;
  }

  if (v6 == 1)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  v9 = a2;
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v9 == 1)
  {
    v10 = 0x64726177726F66;
  }

  else
  {
    v10 = 1701736302;
  }

  if (v9 == 1)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v7 != v10)
  {
LABEL_23:
    v13 = sub_76A950();

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (v8 != v11)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (BYTE1(a1))
  {
    if (BYTE1(a1) == 1)
    {
      v14 = 0x6165707061736964;
    }

    else
    {
      v14 = 1701736302;
    }

    if (BYTE1(a1) == 1)
    {
      v15 = 0xEC000000676E6972;
    }

    else
    {
      v15 = 0xE400000000000000;
    }
  }

  else
  {
    v14 = 0x6E69726165707061;
    v15 = 0xE900000000000067;
  }

  v16 = 0x6165707061736964;
  v17 = 0xEC000000676E6972;
  if (BYTE1(a2) != 1)
  {
    v16 = 1701736302;
    v17 = 0xE400000000000000;
  }

  if (BYTE1(a2))
  {
    v18 = v16;
  }

  else
  {
    v18 = 0x6E69726165707061;
  }

  if (BYTE1(a2))
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE900000000000067;
  }

  if (v14 == v18 && v15 == v19)
  {

    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  v20 = sub_76A950();

  if (v20)
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return 0;
}

unint64_t sub_546340(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_87F130;
  v6._object = a2;
  v4 = sub_76A8E0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_54638C()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_5463DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_5463F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_87F198;
  v6._object = a2;
  v4 = sub_76A8E0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void sub_546440()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pagingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackerLookup;
  *(v0 + v1) = sub_10F400(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isFixingContentOffset) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_meetsMinimumPageRequirement) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_needsPageViewLayout) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection) = 2;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPageIndex) = -1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset) = 0;
  sub_76A840();
  __break(1u);
}

void sub_54655C()
{
  [v0 _horizontalVelocity];
  v2 = v1;
  v3 = [v0 panGestureRecognizer];
  [v3 velocityInView:v0];
  v5 = v4;

  v6 = v5 != 0.0 && v2 == 0.0;
  v7 = -v5;
  if (!v6)
  {
    v7 = v2;
  }

  if (v7 != 0.0)
  {
    *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
    sub_54336C();
  }

  sub_544DA4();
  sub_544FC0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_7653A0();
    v19 = v10;
    v11 = sub_21E944();
    v20 = v11;
    v12 = sub_B1B4(v18);
    v13 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v14 = *(*(v10 - 8) + 104);
    v14(v12, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v10);
    v15 = sub_765C30();
    sub_BEB8(v18);
    if (v15)
    {
      *(v9 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isUserPagingInteractively) = 1;
    }

    else
    {
      v19 = v10;
      v20 = v11;
      v16 = sub_B1B4(v18);
      v14(v16, v13, v10);
      v17 = sub_765C30();
      sub_BEB8(v18);
      if ((v17 & 1) == 0)
      {
        sub_191690(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

void sub_54670C()
{
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset) & 1) == 0)
  {
    [v0 _horizontalVelocity];
    v2 = v1;
    v3 = [v0 panGestureRecognizer];
    [v3 velocityInView:v0];
    v5 = v4;

    v6 = v5 != 0.0 && v2 == 0.0;
    v7 = -v5;
    if (!v6)
    {
      v7 = v2;
    }

    if (v7 != 0.0)
    {
      *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
      sub_54336C();
    }

    sub_544DA4();

    sub_544FC0();
  }
}

unint64_t sub_5467F0()
{
  result = qword_95A738;
  if (!qword_95A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A738);
  }

  return result;
}

uint64_t sub_546844()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_759950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_940AD0, &unk_78F910);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_161DC(v11, qword_99E410);
  v12 = sub_BE38(v11, qword_99E410);
  v30 = &type metadata for Double;
  v31 = &protocol witness table for Double;
  *&v29 = 0x4030000000000000;
  *&v28 = 0x4038000000000000;
  *&v25 = 0x4034000000000000;
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_7592E0();
  sub_759310();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, enum case for SystemImage.chevronForward(_:), v3);
  v13 = sub_759930();
  (*(v4 + 8))(v6, v3);
  v14 = [objc_opt_self() secondaryLabelColor];
  v27 = &protocol witness table for Double;
  v26 = &type metadata for Double;
  *&v25 = 0x4010000000000000;
  v15 = objc_opt_self();
  v16 = UIFontTextStyleFootnote;
  v17 = [v15 configurationWithTextStyle:v16 scale:1];

  if (qword_93DA08 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v0, qword_99F610);
  v19 = v24;
  (*(v1 + 16))(v24, v18, v0);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v20 = sub_769FD0();
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_769E50();
  v22 = v21;
  sub_34698(&v29, v12);
  sub_34698(&v28, (v12 + 40));
  *(v12 + 10) = v13;
  *(v12 + 11) = v14;
  sub_34698(&v25, (v12 + 96));
  *(v12 + 17) = v17;
  result = (*(v1 + 32))(&v12[v11[10]], v19, v0);
  *&v12[v11[11]] = 2;
  *&v12[v11[12]] = v20;
  *&v12[v11[13]] = v22;
  return result;
}

uint64_t sub_546CA0()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_759950();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_161DC(v8, qword_99E428);
  v9 = sub_BE38(v8, qword_99E428);
  v10 = sub_766970();
  v29 = v10;
  v30 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v28);
  sub_766960();
  v26 = v10;
  v27 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v25);
  sub_766960();
  (*(v5 + 104))(v7, enum case for SystemImage.arrowUpForward(_:), v4);
  v21 = sub_759930();
  (*(v5 + 8))(v7, v4);
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  v23 = &type metadata for Double;
  v24 = &protocol witness table for Double;
  *&v22 = 0x4018000000000000;
  v13 = objc_opt_self();
  v14 = UIFontTextStyleFootnote;
  v15 = [v13 configurationWithTextStyle:v14 scale:1];

  if (qword_93DA08 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v0, qword_99F610);
  (*(v1 + 16))(v3, v16, v0);
  v17 = [v11 secondaryLabelColor];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_769E50();
  v19 = v18;
  sub_34698(&v28, v9);
  sub_34698(&v25, (v9 + 40));
  *(v9 + 10) = v21;
  *(v9 + 11) = v12;
  sub_34698(&v22, (v9 + 96));
  *(v9 + 17) = v15;
  result = (*(v1 + 32))(&v9[v8[10]], v3, v0);
  *&v9[v8[11]] = 2;
  *&v9[v8[12]] = v17;
  *&v9[v8[13]] = v19;
  return result;
}

uint64_t sub_54702C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v66 = a2;
  v6 = sub_766950();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v63 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_7672E0();
  v8 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v70 = (&v55 - v11);
  __chkstk_darwin(v12);
  v69 = (&v55 - v13);
  __chkstk_darwin(v14);
  v68 = (&v55 - v15);
  v16 = sub_766BD0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  __chkstk_darwin(v21);
  v24 = &v55 - v23;
  v25 = *(v4 + 120);
  v67 = v4;
  if (v25 == 1)
  {
    v59 = v22;
    sub_766BA0();
    sub_B170(v4, *(v4 + 24));
    sub_7665D0();
    sub_549D80(v4, v74);
    v26 = swift_allocObject();
    memcpy((v26 + 16), v74, 0x108uLL);
    v27 = v59;
    sub_766BB0();

    sub_BEB8(v75);
    v28 = *(v17 + 8);
    v57 = v17 + 8;
    v58 = v28;
    v28(v27, v16);
    sub_134D8(v4 + 40, v75);
    v29 = *(v4 + 248);
    v30 = v68;
    v68[3] = &type metadata for CGFloat;
    v30[4] = &protocol witness table for CGFloat;
    *v30 = v29;
    v60 = v24;
    v31 = v16;
    v32 = *(v8 + 104);
    v62 = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v33 = v72;
    v32(v30, enum case for Resize.Rule.replaced(_:), v72);
    v34 = enum case for Resize.Rule.unchanged(_:);
    v32(v69, enum case for Resize.Rule.unchanged(_:), v33);
    v56 = v20;
    v32(v70, v34, v33);
    v61 = v17;
    v32(v71, v34, v33);
    v74[3] = sub_7672F0();
    v74[4] = &protocol witness table for Resize;
    sub_B1B4(v74);
    v35 = v67;
    sub_767300();
    v36 = v56;
    sub_766BB0();
    v37 = v58;
    v58(v36, v31);
    sub_BEB8(v74);
    v38 = v59;
    sub_766BA0();
    sub_549D80(v35, v74);
    v39 = swift_allocObject();
    memcpy((v39 + 16), v74, 0x108uLL);
    sub_766BB0();

    v37(v38, v31);
    v74[3] = v31;
    v74[4] = &protocol witness table for HorizontalStack;
    v40 = sub_B1B4(v74);
    v41 = v60;
    (*(v61 + 16))(v40, v60, v31);
    v76 = v31;
    v77 = &protocol witness table for HorizontalStack;
    sub_B1B4(v75);
    sub_766BB0();
    v42 = v36;
    v43 = v67;
    v37(v42, v31);
    v37(v41, v31);
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    sub_766BA0();
    sub_B170(v4, *(v4 + 24));
    sub_7665D0();
    sub_549D80(v4, v74);
    v44 = swift_allocObject();
    memcpy((v44 + 16), v74, 0x108uLL);
    sub_766BB0();

    sub_BEB8(v75);
    v60 = *(v17 + 8);
    v61 = v17 + 8;
    v60(v20, v16);
    sub_134D8(v4 + 40, v75);
    v45 = *(v4 + 248);
    v46 = v68;
    v68[3] = &type metadata for CGFloat;
    v46[4] = &protocol witness table for CGFloat;
    *v46 = v45;
    v59 = v16;
    v32 = *(v8 + 104);
    v62 = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v47 = v72;
    v32(v46, enum case for Resize.Rule.replaced(_:), v72);
    v34 = enum case for Resize.Rule.unchanged(_:);
    v32(v69, enum case for Resize.Rule.unchanged(_:), v47);
    v32(v70, v34, v47);
    v32(v71, v34, v47);
    v74[3] = sub_7672F0();
    v74[4] = &protocol witness table for Resize;
    sub_B1B4(v74);
    v43 = v67;
    sub_767300();
    v48 = v59;
    v76 = v59;
    v77 = &protocol witness table for HorizontalStack;
    sub_B1B4(v75);
    sub_766BB0();
    v60(v24, v48);
  }

  sub_BEB8(v74);
  v49 = v63;
  sub_766930();
  sub_549D80(v43, v74);
  v50 = swift_allocObject();
  memcpy((v50 + 16), v74, 0x108uLL);
  v51 = v65;
  v73[3] = v65;
  v73[4] = &protocol witness table for VerticalStack;
  sub_B1B4(v73);
  sub_766940();

  (*(v64 + 8))(v49, v51);
  v52 = v68;
  *v68 = sub_E69A4;
  v52[1] = 0;
  v53 = v72;
  v32(v52, enum case for Resize.Rule.recalculated(_:), v72);
  v32(v69, v34, v53);
  v32(v70, v34, v53);
  v32(v71, v34, v53);
  sub_767300();
  return sub_BEB8(v75);
}

uint64_t sub_547968(uint64_t a1, uint64_t a2)
{
  sub_134D8(a2 + 128, v4);
  sub_7668B0();
  sub_134D8(a2 + 168, v4);
  return sub_7668C0();
}

double sub_5479BC(uint64_t a1, double a2, double a3)
{
  v4 = sub_7672F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(v3, v3[3]);
  sub_7665D0();
  sub_B170(v21, v21[3]);
  sub_7673F0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_BEB8(v21);
  sub_B170(v3, v3[3]);
  v22.var0 = v9;
  v22.var1 = v11;
  v22.var2 = v13;
  v22.var3 = v15;
  if (sub_766A10(v22) > 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 3;
  }

  sub_54702C(v16, v7);
  sub_7673F0();
  v18 = v17;
  (*(v5 + 8))(v7, v4);
  return v18;
}

uint64_t sub_547BB0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_7672F0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(v5, v5[3]);
  sub_7665D0();
  sub_B170(v25, v25[3]);
  sub_7673F0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_BEB8(v25);
  sub_B170(v5, v5[3]);
  v26.var0 = v15;
  v26.var1 = v17;
  v26.var2 = v19;
  v26.var3 = v21;
  if (sub_766A10(v26) > 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = 3;
  }

  if (sub_766BC0())
  {
    v27.origin.x = a2;
    v27.origin.y = a3;
    v27.size.width = a4;
    v27.size.height = a5;
    CGRectGetWidth(v27);
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    CGRectGetHeight(v28);
  }

  sub_54702C(v22, v13);
  sub_7673E0();
  return (*(v11 + 8))(v13, v10);
}

id sub_547DF4()
{
  type metadata accessor for ShelfFooterTitleButton(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_95A740 = result;
  return result;
}

char *sub_547F94(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = sub_76A270();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) init];
  v5[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconHeight] = 0;
  sub_5498C4(a1, &v5[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style]);
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v32, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_76A3A0();
  v28 = sub_76A3F0();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v21, 0, 1, v28);
  sub_76A420();
  sub_76A410();
  if ((*(v29 + 48))(v18, 1, v28))
  {
    sub_362208(v18, v21);
    sub_76A420();
    sub_502E14(v18);
  }

  else
  {
    (*(v13 + 104))(v15, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v12);
    sub_76A280();
    sub_76A420();
  }

  v30 = [v27 layer];
  [v30 setAllowsGroupBlending:0];

  [v27 addSubview:*&v27[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconView]];
  sub_549928(a1);
  return v27;
}

id sub_54838C()
{
  v1 = v0;
  v2 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  sub_76A410();
  v8 = sub_76A3F0();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_362208(v7, v4);
    sub_76A420();
    sub_502E14(v7);
  }

  else
  {
    v9 = &v0[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style];
    swift_beginAccess();
    v10 = v9[10];
    sub_76A390();
    sub_76A420();
  }

  v11 = [v1 titleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = &v1[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style];
    swift_beginAccess();
    [v12 setNumberOfLines:*&v13[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 44)]];
  }

  v14 = &v1[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style];
  swift_beginAccess();
  [v1 setTintColor:*&v14[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 48)]];
  return [v1 setNeedsUpdateConfiguration];
}

double sub_54858C@<D0>(uint64_t *a1@<X8>)
{
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 imageView];
    if (v5)
    {
      v6 = v5;
      a1[3] = &type metadata for ShelfFooterTitleButton.Layout;
      a1[4] = sub_54986C();
      v7 = swift_allocObject();
      *a1 = v7;
      *(v7 + 40) = sub_BE70(0, &qword_950A70, UILabel_ptr);
      *(v7 + 48) = &protocol witness table for UILabel;
      *(v7 + 16) = v4;
      v8 = sub_BE70(0, &qword_949D90, UIImageView_ptr);
      *(v7 + 80) = v8;
      *(v7 + 88) = &protocol witness table for UIImageView;
      *(v7 + 56) = v6;
      v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconView];
      *(v7 + 120) = v8;
      *(v7 + 128) = &protocol witness table for UIImageView;
      *(v7 + 96) = v9;
      v10 = v1[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_hasLeadingIcon];
      v11 = &v1[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style];
      swift_beginAccess();
      sub_134D8(v11, v7 + 144);
      sub_134D8(v11 + 40, v7 + 184);
      sub_134D8(v11 + 96, v7 + 224);
      v12 = v9;
      [v6 lastBaselineFromBottom];
      v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconHeight];
      *(v7 + 136) = v10;
      *(v7 + 264) = result;
      *(v7 + 272) = v14;
      return result;
    }
  }

  a1[3] = sub_766BD0();
  a1[4] = &protocol witness table for HorizontalStack;
  sub_B1B4(a1);
  sub_766BA0();
  return result;
}

uint64_t sub_548744()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&qword_95A868, &unk_7B1900);
  __chkstk_darwin(v3 - 8);
  v64 = v63 - v4;
  v5 = sub_BD88(&unk_95A870, &unk_798D00);
  __chkstk_darwin(v5 - 8);
  v7 = v63 - v6;
  v8 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v8 - 8);
  v73 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = v63 - v11;
  __chkstk_darwin(v12);
  v69 = v63 - v13;
  __chkstk_darwin(v14);
  v16 = v63 - v15;
  __chkstk_darwin(v17);
  v19 = v63 - v18;
  v20 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v21 = v20 - 8;
  v66 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = v22;
  v68 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v72 = v63 - v24;
  v25 = sub_7666D0();
  v26 = *(v25 - 8);
  *&v27 = __chkstk_darwin(v25).n128_u64[0];
  v29 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v1;
  v75.super_class = ObjectType;
  objc_msgSendSuper2(&v75, "updateConfiguration", v27);
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  v30 = v1 + OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style;
  swift_beginAccess();
  (*(v26 + 16))(v29, v30 + *(v21 + 48), v25);
  v31 = [v1 traitCollection];
  v71 = sub_769E10();

  (*(v26 + 8))(v29, v25);
  if ([v1 isHighlighted])
  {
    v65 = 1;
  }

  else
  {
    v65 = [v1 isSelected];
  }

  v32 = v72;
  sub_5498C4(v30, v72);
  sub_76A410();
  v33 = sub_76A3F0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v34 + 48;
  v37 = v35(v19, 1, v33);
  v38 = v70;
  if (v37)
  {
    sub_362208(v19, v73);
    sub_76A420();
    sub_502E14(v19);
  }

  else
  {
    v63[0] = v19;
    v39 = v68;
    sub_5498C4(v32, v68);
    v40 = (*(v66 + 80) + 25) & ~*(v66 + 80);
    v41 = swift_allocObject();
    v63[1] = v36;
    v42 = v35;
    v43 = v38;
    v44 = v71;
    *(v41 + 16) = v71;
    *(v41 + 24) = v65;
    v45 = v41 + v40;
    v32 = v72;
    sub_549AA8(v39, v45);
    v46 = v44;
    v38 = v43;
    v35 = v42;
    sub_767BA0();
    v47 = sub_767B90();
    (*(*(v47 - 8) + 56))(v7, 0, 1, v47);
    sub_76A340();
    sub_76A420();
  }

  sub_76A410();
  if (v35(v16, 1, v33))
  {
    sub_362208(v16, v73);
    sub_76A420();
    sub_502E14(v16);
  }

  else
  {
    v48 = v68;
    sub_5498C4(v32, v68);
    v49 = (*(v66 + 80) + 17) & ~*(v66 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v65;
    sub_549AA8(v48, v50 + v49);
    v51 = v64;
    sub_7679A0();
    v52 = sub_767990();
    (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
    sub_76A330();
    sub_76A420();
  }

  v53 = v69;
  sub_76A410();
  if (v35(v53, 1, v33))
  {
    sub_362208(v53, v73);
    sub_76A420();
    sub_502E14(v53);
  }

  else
  {
    v54 = *(v32 + 136);
    sub_76A220();
    sub_76A420();
  }

  v55 = [v1 imageView];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 layer];

    v58 = [v1 traitCollection];
    [v58 userInterfaceStyle];

    sub_769240();
    v59 = sub_769210();

    [v57 setCompositingFilter:v59];
  }

  sub_76A410();
  if (v35(v38, 1, v33))
  {
    sub_362208(v38, v73);
    sub_76A420();

    sub_549928(v32);
    return sub_502E14(v38);
  }

  else
  {
    v61 = [objc_opt_self() clearColor];
    v62 = sub_76A230();
    sub_767760();
    v62(v74, 0);
    sub_76A420();

    return sub_549928(v32);
  }
}

uint64_t sub_548FB4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_756F10();
  (*(*(v10 - 8) + 16))(a5, a1, v10);
  sub_1EABC();
  v11 = a2;
  sub_756F20();
  v12 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v13 = *(a4 + *(v12 + 48));
  if (a3)
  {
    v14 = [v13 colorWithAlphaComponent:*(a4 + *(v12 + 52))];
  }

  else
  {
    v15 = v13;
  }

  sub_489AC0();
  return sub_756F20();
}

id sub_5490BC(__n128 a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = *(a4 + 88);
  if (a3)
  {
    v6 = [*(a4 + 88) colorWithAlphaComponent:*(a4 + *(type metadata accessor for ShelfFooterTitleButton.Style(0) + 52))];

    return v6;
  }

  else
  {

    return v5;
  }
}

double sub_549270(double a1, double a2)
{
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "sizeThatFits:", a1, a2);
  v6 = v5;
  v7 = [v2 titleLabel];
  if (v7)
  {

    v8 = [v2 imageView];
    if (v8)
    {

      sub_54858C(v12);
      sub_B170(v12, v13);
      [v2 layoutMargins];
      sub_769DA0();
      v9 = [v2 traitCollection];
      sub_7673F0();

      [v2 layoutMargins];
      sub_769DC0();
      v6 = v10;
      sub_BEB8(v12);
    }
  }

  return v6;
}

uint64_t sub_5494A4(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
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

uint64_t sub_549590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_7666D0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_549650(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_7666D0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_5496F4(uint64_t a1)
{
  sub_199524();
  if (v1 <= 0x3F)
  {
    sub_BE70(319, &qword_947630, UIImage_ptr);
    if (v2 <= 0x3F)
    {
      sub_BE70(319, &qword_93E540, UIColor_ptr);
      if (v3 <= 0x3F)
      {
        sub_549804(319);
        if (v4 <= 0x3F)
        {
          sub_7666D0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_549804(uint64_t a1)
{
  if (!qword_95A808)
  {
    sub_BE70(255, &qword_95A810, UIImageSymbolConfiguration_ptr);
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_95A808);
    }
  }
}

unint64_t sub_54986C()
{
  result = qword_95A860;
  if (!qword_95A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A860);
  }

  return result;
}

uint64_t sub_5498C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_549928(uint64_t a1)
{
  v2 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_549984()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  sub_BEB8((v0 + v3));
  sub_BEB8((v0 + v3 + 40));

  sub_BEB8((v0 + v3 + 96));
  v5 = v1[12];
  v6 = sub_7666D0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_549AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_549B0C(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_5490BC(v4, a1, v5, v6);
}

uint64_t sub_549B80()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);

  sub_BEB8((v0 + v3));
  sub_BEB8((v0 + v3 + 40));

  sub_BEB8((v0 + v3 + 96));
  v5 = v1[12];
  v6 = sub_7666D0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_549CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_548FB4(a1, v6, v7, v8, a2);
}

uint64_t sub_549E04()
{
  sub_BEB8(v0 + 2);
  sub_BEB8(v0 + 7);
  sub_BEB8(v0 + 12);
  sub_BEB8(v0 + 18);
  sub_BEB8(v0 + 23);
  sub_BEB8(v0 + 28);

  return _swift_deallocObject(v0, 280, 7);
}

void sub_549E78(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12._object = 0x80000000007D9F40;
  v13._countAndFlagsBits = 0xD000000000000050;
  v13._object = 0x80000000007D9F60;
  v12._countAndFlagsBits = 0xD000000000000017;
  sub_75B750(v12, v13);
  v7 = sub_769350();

  v8 = v7 < 19;
  v9 = sub_2E0248(v7 < 19);
  v10 = sub_2E0514(v8);
  [v9 size];
  [v10 size];

  v11.n128_f64[0] = a1;
  sub_2E26CC(1, v8, 0, 2, a3, a4, v11);
}

uint64_t sub_549FF0(uint64_t a1)
{
  result = sub_7572E0();
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

uint64_t sub_54A098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_BD88(&qword_955640, &unk_790C50);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1ED18(a3, v25 - v10, &qword_955640, &unk_790C50);
  v12 = sub_769590();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10A2C(v11, &qword_955640, &unk_790C50);
  }

  else
  {
    sub_769580();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_769540();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_769300() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10A2C(a3, &qword_955640, &unk_790C50);

      return v23;
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

  sub_10A2C(a3, &qword_955640, &unk_790C50);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_54A398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_BD88(&qword_955640, &unk_790C50);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1ED18(a3, v25 - v10, &qword_955640, &unk_790C50);
  v12 = sub_769590();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10A2C(v11, &qword_955640, &unk_790C50);
  }

  else
  {
    sub_769580();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_769540();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_769300() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_BD88(&qword_95AA38, &qword_7A4938);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10A2C(a3, &qword_955640, &unk_790C50);

      return v22;
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

  sub_10A2C(a3, &qword_955640, &unk_790C50);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_BD88(&qword_95AA38, &qword_7A4938);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_54A6AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&unk_95A9D0, &unk_7A4838);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_7572E0();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "prepareForReuse", v8);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_renderingTask;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_renderingTask])
  {

    sub_7695C0();
  }

  *&v1[v11] = 0;

  sub_7572D0();
  v12 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
  swift_beginAccess();
  (*(v7 + 40))(&v1[v12], v10, v6);
  swift_endAccess();
  sub_759190();
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  [v13 setHidden:1];
  v14 = &v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v14 = 0;
  *(v14 + 1) = 0;

  v15 = *(v14 + 1);
  if (v15)
  {
    v16 = *v14;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      v18 = sub_769210();

      [v13 setText:v18];

      [v13 setHidden:0];
    }
  }

  [v1 setNeedsLayout];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel] setHidden:1];
  v19 = &v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v19 = 0;
  *(v19 + 1) = 0;

  sub_54B2D4();
  v20 = sub_7621E0();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_54F2A4(v5, &v1[v21]);
  swift_endAccess();
  return [*&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView] setImage:0];
}

uint64_t sub_54A9F4(uint64_t a1, uint64_t a2)
{
  sub_BD88(&qword_95A9C0, &qword_7A4828);
  sub_75C760();
  if (!v6)
  {
    return sub_10A2C(&v5, &qword_95A9C8, &qword_7A4830);
  }

  sub_10914(&v5, v7);
  v3 = [sub_527DE4() traitCollection];
  swift_unknownObjectRelease();
  sub_54D184(v7, v3, a2);

  return sub_BEB8(v7);
}

uint64_t sub_54AB6C(uint64_t a1, int a2)
{
  v29 = a2;
  v30 = a1;
  v27[1] = *v2;
  v3 = sub_7572E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27[0] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_95AA20, &qword_783ED8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v27 - v8;
  v10 = sub_BD88(&qword_944440, qword_783EE0);
  __chkstk_darwin(v10 - 8);
  v31 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v27 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = v27 - v17;
  (*(v2 + qword_95A888))(v16);
  v19 = *(v4 + 16);
  v28 = v2;
  v19(v14, v2 + qword_95A880, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v20 = *(v7 + 56);
  sub_1ED18(v18, v9, &qword_944440, qword_783EE0);
  sub_1ED18(v14, &v9[v20], &qword_944440, qword_783EE0);
  v21 = *(v4 + 48);
  if (v21(v9, 1, v3) != 1)
  {
    sub_1ED18(v9, v31, &qword_944440, qword_783EE0);
    if (v21(&v9[v20], 1, v3) != 1)
    {
      v23 = v27[0];
      (*(v4 + 32))(v27[0], &v9[v20], v3);
      sub_550FA0(&qword_95AA30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = v31;
      v25 = sub_7691C0();
      v26 = *(v4 + 8);
      v26(v23, v3);
      sub_10A2C(v14, &qword_944440, qword_783EE0);
      sub_10A2C(v18, &qword_944440, qword_783EE0);
      v26(v24, v3);
      result = sub_10A2C(v9, &qword_944440, qword_783EE0);
      if ((v25 & 1) == 0)
      {
        return result;
      }

      return sub_75C680();
    }

    sub_10A2C(v14, &qword_944440, qword_783EE0);
    sub_10A2C(v18, &qword_944440, qword_783EE0);
    (*(v4 + 8))(v31, v3);
    return sub_10A2C(v9, &unk_95AA20, &qword_783ED8);
  }

  sub_10A2C(v14, &qword_944440, qword_783EE0);
  sub_10A2C(v18, &qword_944440, qword_783EE0);
  if (v21(&v9[v20], 1, v3) != 1)
  {
    return sub_10A2C(v9, &unk_95AA20, &qword_783ED8);
  }

  sub_10A2C(v9, &qword_944440, qword_783EE0);
  return sub_75C680();
}

uint64_t sub_54B054()
{
  swift_unknownObjectRelease();
  v1 = qword_95A880;
  v2 = sub_7572E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_54B0D0()
{
  sub_54B054();

  return swift_deallocClassInstance();
}

Swift::Int sub_54B13C()
{
  sub_76AA30();
  sub_76AA40(v0);
  return sub_76AA80();
}

void (*sub_54B18C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_54AAC4();
  return sub_54B1D4;
}

void sub_54B1D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_54AB18(v2);
  }

  else
  {
    sub_54AB18(*a1);
  }
}

Swift::Int sub_54B288(uint64_t a1)
{
  sub_76AA30();
  sub_54B01C();
  return sub_76AA80();
}

id sub_54B2D4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleText + 8];
  if (v2)
  {
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleText] & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel];

      sub_75E010();
      v5 = sub_769210();

      [v4 setText:v5];

      [v4 setHidden:0];
    }
  }

  return [v1 setNeedsLayout];
}

char *sub_54B3AC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_7593D0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_itemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  sub_75BB20();
  *&v4[v17] = sub_75BB00();
  v18 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  v21 = sub_7621E0();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_renderingTask] = 0;
  sub_7572D0();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_backgroundGradient] = [objc_allocWithZone(sub_764460()) init];
  v22 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView] = v22;
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v24 = v22;
  sub_759200();

  (*(v12 + 8))(v14, v11);
  v25 = *&v5[v23];
  sub_7590D0();

  v26 = *&v5[v23];
  sub_7590C0();

  v27 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView] = v27;
  [v27 _setCornerRadius:12.0];
  v28 = [objc_allocWithZone(sub_75E040()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel] = v28;
  v30 = objc_opt_self();
  v31 = v28;
  v32 = [v30 clearColor];
  [v31 setBackgroundColor:v32];

  [*&v5[v29] setEditable:0];
  [*&v5[v29] setSelectable:0];
  [*&v5[v29] setUserInteractionEnabled:0];
  v33 = *&v5[v29];
  sub_75DFB0();

  v34 = [v30 redColor];
  v35 = sub_54BB04(v34);

  *&v5[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea] = v35;
  v36 = [v30 blackColor];
  v37 = sub_54BB04(v36);

  *&v5[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea] = v37;
  v38 = *&v5[v29];
  sub_75DFF0();

  v60.receiver = v5;
  v60.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  v40 = [v30 clearColor];
  [v39 setBackgroundColor:v40];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v44 = [v39 contentView];
  [v44 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v45 = [v39 contentView];
  [v45 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView]];

  v46 = [v39 contentView];
  [v46 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_backgroundGradient]];

  v47 = [v39 contentView];
  [v47 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView]];

  v48 = [v39 contentView];
  [v48 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel]];

  v49 = [v39 contentView];
  v50 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  [v49 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel]];

  v51 = [*&v39[v50] layer];
  [v51 setCompositingFilter:kCAFilterPlusL];

  v52 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
  if (v52)
  {
    v53 = v52;
    v54 = [v39 contentView];
    [v54 addSubview:v53];
  }

  v55 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea];
  if (v55)
  {
    v56 = v55;
    v57 = [v39 contentView];
    [v57 addSubview:v56];
  }

  sub_BD88(&qword_9477F0, qword_780200);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_77B6D0;
  *(v58 + 32) = sub_7676F0();
  *(v58 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();
  swift_unknownObjectRelease();

  return v39;
}

id sub_54BB04(void *a1)
{
  if ((byte_94AF68 & 1) == 0)
  {

    goto LABEL_5;
  }

  v2 = sub_76A950();

  if (v2)
  {
LABEL_5:
    v3 = [objc_allocWithZone(UIView) init];
    v4 = [v3 layer];
    v5 = [a1 CGColor];
    [v4 setBorderColor:v5];

    v6 = [v3 layer];
    [v6 setBorderWidth:1.0];

    return v3;
  }

  return 0;
}

void sub_54BC5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v77 = sub_7643E0();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_7664F0();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_95A9D0, &unk_7A4838);
  __chkstk_darwin(v5 - 8);
  v7 = v70 - v6;
  v8 = sub_7621E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = v70 - v14;
  v81.receiver = v1;
  v81.super_class = ObjectType;
  objc_msgSendSuper2(&v81, "layoutSubviews", v13);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_1ED18(&v1[v16], v7, &unk_95A9D0, &unk_7A4838);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10A2C(v7, &unk_95A9D0, &unk_7A4838);
    return;
  }

  (*(v9 + 32))(v15, v7, v8);
  sub_54C5B8();

  sub_75D650();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v1 traitCollection];
  sub_54CC3C(v25, v82, v18, v20, v22, v24);
  v26 = *v82;
  v27 = *&v82[1];
  v28 = *&v82[2];
  v29 = *&v82[3];
  v78 = v83;

  v30 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel];
  v31 = [v30 textContainer];
  v32 = [v31 exclusionPaths];

  v33 = sub_BE70(0, &qword_95AA08, UIBezierPath_ptr);
  sub_769460();

  v70[1] = v33;
  LOBYTE(v32) = sub_769490();

  if (v32)
  {
    v34 = [v30 textContainer];
    isa = sub_769450().super.isa;
    [v34 setExclusionPaths:isa];
  }

  if (v83)
  {
    v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
    if (!v36)
    {
      goto LABEL_13;
    }

    if (v78)
    {
      v37 = 0.0;
      v78 = 1;
      v38 = 0.0;
      v39 = 0.0;
      v40 = 0.0;
LABEL_11:
      [v36 setFrame:{v37, v38, v39, v40}];
      goto LABEL_13;
    }

LABEL_10:
    v78 = 0;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v40 = v29;
    goto LABEL_11;
  }

  sub_75D650();
  sub_769D20();
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
  if (v36)
  {
    goto LABEL_10;
  }

  v78 = 0;
LABEL_13:
  v45 = [v1 contentView];
  [v45 bounds];

  sub_764450();
  v46 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView];
  if ([v46 isHidden])
  {
    v46 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView];
  }

  v47 = v46;
  (*(v9 + 16))(v11, v15, v8);
  v48 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  v80[3] = sub_75BB20();
  v80[4] = &protocol witness table for UILabel;
  v80[0] = v48;
  v79[8] = sub_75E040();
  v79[9] = sub_550FA0(&qword_95AA10, &type metadata accessor for DynamicTypeTextView, &protocol conformance descriptor for DynamicTypeTextView);
  v79[5] = v30;
  v49 = sub_BE70(0, &qword_93E550, UIView_ptr);
  v79[4] = &protocol witness table for UIView;
  v79[3] = v49;
  v79[0] = v47;
  v50 = v48;
  v51 = v30;
  v71 = v47;
  v52 = v74;
  sub_7643D0();
  sub_75D650();
  v53 = v72;
  sub_7643A0();
  (*(v76 + 8))(v52, v77);
  (*(v73 + 8))(v53, v75);
  LOBYTE(v80[0]) = 2;
  if ((v78 & 1) != 0 || (sub_54D078(v80, v1) & 1) == 0)
  {
    v69 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea];
    if (v69)
    {
      [v69 setFrame:{0.0, 0.0, 0.0, 0.0}];

      goto LABEL_21;
    }

    (*(v9 + 8))(v15, v8);
  }

  else
  {
    v54 = [v51 font];
    if (v54)
    {
      v55 = v54;
      [v54 lineHeight];
      v57 = v56;

      v58 = v26 + 0.0;
      v59 = v27 + 0.0;
      v60 = v28 + 0.0;
      v61 = v29 + v57 * -0.5;
      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea] setFrame:{v58, v59, v60, v61}];
      v62 = [v51 textContainer];
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_77D9F0;
      [v1 convertRect:v51 toCoordinateSpace:{v58, v59, v60, v61}];
      *(v63 + 32) = [objc_opt_self() bezierPathWithRect:{v64, v65, v66, v67}];
      v68 = sub_769450().super.isa;

      [v62 setExclusionPaths:v68];

LABEL_21:
      (*(v9 + 8))(v15, v8);
      return;
    }

    __break(1u);
  }
}

uint64_t sub_54C5B8()
{
  v1 = v0;
  v2 = sub_765240();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7643C0();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766690();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_761270();
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_95A9D0, &unk_7A4838);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_7621E0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_1ED18(&v1[v20], v15, &unk_95A9D0, &unk_7A4838);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10A2C(v15, &unk_95A9D0, &unk_7A4838);
    return 0;
  }

  (*(v17 + 32))(v19, v15, v16);
  if (!sub_762190())
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  sub_7621C0();
  v21 = v41;
  v22 = (*(v41 + 88))(v12, v10);
  if (v22 == enum case for ChartOrCategoryBrickStyle.tile(_:) || v22 == enum case for ChartOrCategoryBrickStyle.pill(_:))
  {
    [v1 frame];
    sub_765260();
    v26 = v37;
    sub_7666A0();
    sub_766600();
    (*(v38 + 8))(v26, v39);
    sub_765140();
  }

  else
  {
    if (v22 != enum case for ChartOrCategoryBrickStyle.round(_:))
    {
      (*(v17 + 8))(v19, v16);

      (*(v21 + 8))(v12, v10);
      return 0;
    }

    v23 = v34;
    sub_762180();
    sub_7643B0();
    v25 = v24;
    (*(v35 + 8))(v23, v36);
    if (v25)
    {
      (*(v17 + 8))(v19, v16);

      return 0;
    }

    v30 = v31;
    sub_765250();
    sub_765210();
    (*(v32 + 8))(v30, v33);
  }

  v27 = sub_765330();
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView];
  sub_7652E0();
  sub_7591B0();
  [v28 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    sub_76A030();
  }

  sub_759070();

  (*(v17 + 8))(v19, v16);
  return v27;
}

uint64_t sub_54CC3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  *&v41 = a1;
  v11 = sub_762630();
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = sub_762660();
  *&v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&qword_95AA18, &qword_7A4920);
  __chkstk_darwin(v16 - 8);
  v18 = &v38 - v17;
  v19 = sub_762680();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7621B0();
  sub_B170(v42, v42[3]);
  sub_75E9C0();
  v23 = (*(v20 + 48))(v18, 1, v19);
  if (v23 == 1)
  {
    sub_10A2C(v18, &qword_95AA18, &qword_7A4920);
    result = sub_BEB8(v42);
    v25 = 0uLL;
    v26 = 0uLL;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    sub_BEB8(v42);
    sub_762670();
    sub_762640();
    v27 = sub_550D84(v13, [v38 effectiveUserInterfaceLayoutDirection]);
    sub_762620();
    sub_762650();
    if (v27 != 3 && v27)
    {
      v44.origin.x = a3;
      v44.origin.y = a4;
      v44.size.width = a5;
      v44.size.height = a6;
      CGRectGetMinX(v44);
    }

    else
    {
      v43.origin.x = a3;
      v43.origin.y = a4;
      v43.size.width = a5;
      v43.size.height = a6;
      CGRectGetMaxX(v43);
    }

    v28 = v40;
    v29 = v39;
    v30 = a3;
    v31 = a4;
    v32 = a5;
    v33 = a6;
    if (v27 > 1u)
    {
      CGRectGetMidY(*&v30);
    }

    else
    {
      CGRectGetMinY(*&v30);
    }

    sub_769CA0();
    v39 = v34;
    v40 = v35;
    v38 = v36;
    v41 = v37;
    (*(v29 + 8))(v15, v28);
    result = (*(v20 + 8))(v22, v19);
    *&v26 = v38;
    *&v25 = v39;
    *(&v25 + 1) = v40;
    *(&v26 + 1) = v41;
  }

  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v23 == 1;
  return result;
}

id sub_54D078(_BYTE *a1, uint64_t a2)
{
  LODWORD(v2) = *a1;
  if (v2 != 2)
  {
    return (v2 & 1);
  }

  v4 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel);
  [v4 frame];
  Height = CGRectGetHeight(v9);
  result = [v4 font];
  if (result)
  {
    v2 = result;
    [result lineHeight];
    v8 = v7;

    LOBYTE(v2) = v8 * 1.5 < Height;
    swift_beginAccess();
    *a1 = v2;
    return (v2 & 1);
  }

  __break(1u);
  return result;
}

id sub_54D184(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v55 = a3;
  v59 = a2;
  v6 = sub_BD88(&unk_95A9D0, &unk_7A4838);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_BD88(&qword_955640, &unk_790C50);
  __chkstk_darwin(v9 - 8);
  v57 = &v49 - v10;
  v11 = sub_7572E0();
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  __chkstk_darwin(v11);
  v58 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  sub_B170(a1, a1[3]);
  if (sub_75E9D0())
  {

    v16 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_backgroundGradient];
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor:v17];

    [v16 setHidden:0];
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView] setHidden:1];
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView] setHidden:0];
  }

  sub_B170(a1, a1[3]);
  if (sub_762A60())
  {
    sub_765390();
    v18 = sub_769490();

    if (v18)
    {
      sub_B170(a1, a1[3]);
      v19 = sub_762A50();
      if (v19)
      {
        v20 = v19;
        sub_757860();
        sub_768900();
        sub_768ED0();
        v54 = v20;
        v55 = *&v61[0];
        v21 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_backgroundGradient];
        [v21 setBackgroundColor:v20];
        [v21 setHidden:0];
        [*&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView] setHidden:0];
        [*&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView] setHidden:1];
        sub_7572D0();
        v22 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
        swift_beginAccess();
        v23 = v56;
        (*(v56 + 40))(&v4[v22], v15, v11);
        swift_endAccess();
        v24 = *(v23 + 16);
        v24(v58, &v4[v22], v11);
        v53 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_renderingTask;
        if (*&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_renderingTask])
        {

          sub_7695C0();
        }

        v25 = sub_769590();
        (*(*(v25 - 8) + 56))(v57, 1, 1, v25);
        v52 = v15;
        v24(v15, v58, v11);
        sub_134D8(a1, v61);
        sub_769570();
        v50 = v4;

        v51 = v59;
        v49 = sub_769560();
        v26 = v56;
        v27 = (*(v56 + 80) + 40) & ~*(v56 + 80);
        v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
        v29 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
        v30 = swift_allocObject();
        *(v30 + 2) = v49;
        *(v30 + 3) = &protocol witness table for MainActor;
        *(v30 + 4) = v50;
        (*(v26 + 32))(&v30[v27], v52, v11);
        sub_10914(v61, &v30[v28]);
        *&v30[v29] = v55;
        *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v51;
        v31 = sub_54A098(0, 0, v57, &unk_7A4850, v30);

        (*(v26 + 8))(v58, v11);
        *&v4[v53] = v31;
      }
    }
  }

  sub_134D8(a1, v61);
  sub_134D8(v61, v60);
  v32 = v59;
  sub_7621A0();
  sub_BEB8(v61);
  v33 = sub_7621E0();
  (*(*(v33 - 8) + 56))(v8, 0, 1, v33);
  v34 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_54F2A4(v8, &v4[v34]);
  swift_endAccess();
  sub_54DF9C(v35);
  sub_B170(a1, a1[3]);
  v36 = sub_75E9B0();
  v38 = v37;
  [*&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel] setHidden:1];
  v39 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v39 = v36;
  v39[1] = v38;

  sub_54B2D4();
  sub_B170(a1, a1[3]);
  v40 = sub_75E9A0();
  v42 = v41;
  v43 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  [v43 setHidden:1];
  v44 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v44 = v40;
  v44[1] = v42;

  v45 = v44[1];
  if (v45)
  {
    v46 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v46 = *v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {

      v47 = sub_769210();

      [v43 setText:v47];

      [v43 setHidden:0];
    }
  }

  [v4 setNeedsLayout];
  return [v4 setNeedsLayout];
}

uint64_t sub_54D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = sub_7572E0();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  sub_769570();
  v8[16] = sub_769560();
  v11 = sub_769540();
  v8[17] = v11;
  v8[18] = v10;

  return _swift_task_switch(sub_54DA1C, v11, v10);
}

uint64_t sub_54DA1C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[8];
  v6 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView];
  (*(v2 + 16))(v1, v0[9], v3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BD88(&qword_95A9E0, &unk_7A4870);
  v8 = swift_allocObject();
  v0[19] = v8;
  *(v8 + 16) = v6;
  (*(v2 + 32))(v8 + qword_95A880, v1, v3);
  v9 = (v8 + qword_95A888);
  *v9 = sub_54F854;
  v9[1] = v7;
  v0[7] = v5;
  v10 = v4[3];
  v11 = v4[4];
  v12 = sub_B170(v4, v10);
  v0[5] = v10;
  v0[6] = *(v11 + 8);
  v13 = sub_B1B4(v0 + 2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  v14 = v6;
  v15 = [v5 contentView];
  [v15 frame];
  v17 = v16;
  v19 = v18;

  v20 = sub_54F85C();

  v21 = swift_task_alloc();
  v0[20] = v21;
  v22 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell(0);
  v23 = sub_550FA0(&qword_95A9F0, type metadata accessor for ChartOrCategoryBrickCollectionViewCell, &unk_7A46E0);
  *v21 = v0;
  v21[1] = sub_54DCAC;
  v24 = v0[11];
  v25 = v0[12];
  v26 = v0[9];
  v27.n128_u64[0] = v17;
  v28.n128_u64[0] = v19;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:checking:into:traitCollection:)(v0 + 2, v24, v26, v8, v20, v25, v22, v23, v27, v28);
}

uint64_t sub_54DCAC()
{
  v1 = *v0;

  sub_BEB8(v1 + 2);
  v2 = v1[18];
  v3 = v1[17];

  return _swift_task_switch(sub_54DDF4, v3, v2);
}

uint64_t sub_54DDF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_54DE68@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
    v5 = Strong;
    swift_beginAccess();
    v6 = sub_7572E0();
    v7 = *(v6 - 8);
    (*(v7 + 16))(a2, &v5[v4], v6);

    return (*(v7 + 56))(a2, 0, 1, v6);
  }

  else
  {
    v9 = sub_7572E0();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_54DF9C(__n128 a1)
{
  v2 = v1;
  v69 = sub_761270();
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v72 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v73 = &v59 - v5;
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v68 = &v59 - v7;
  v70 = sub_762170();
  v78 = *(v70 - 8);
  __chkstk_darwin(v70);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_762120();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_95A9D0, &unk_7A4838);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_7621E0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_1ED18(&v2[v20], v15, &unk_95A9D0, &unk_7A4838);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10A2C(v15, &unk_95A9D0, &unk_7A4838);
  }

  v64 = v17;
  v22 = *(v17 + 32);
  v65 = v16;
  v22(v19, v15, v16);
  v23 = [v2 traitCollection];
  v24 = sub_769A20();

  v75 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel];
  v25 = v75;
  v26 = sub_BE70(0, &qword_93E540, UIColor_ptr);
  v27 = sub_769FD0();
  v28 = [v27 resolvedColorWithTraitCollection:v24];

  [v25 setTextColor:v28];
  v66 = v2;
  v29 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  v74 = v29;
  v59 = v26;
  v30 = sub_769FE0();
  v63 = v24;
  v31 = [v30 resolvedColorWithTraitCollection:v24];

  [v29 setTextColor:v31];
  v67 = v19;
  sub_7621D0();
  sub_762110();
  v32 = v77;
  v33 = v76 + 8;
  v34 = *(v76 + 8);
  v34(v12, v77);
  sub_762160();
  v36 = v78 + 8;
  v35 = *(v78 + 8);
  v37 = v70;
  v35(v9);
  sub_75E000();
  sub_7621D0();
  sub_762100();
  v34(v12, v32);
  v76 = v33;
  v38 = sub_762160();
  v39 = v37;
  v62 = v35;
  (v35)(v9, v37);
  v78 = v36;
  [v74 setNumberOfLines:v38];
  sub_7621D0();
  sub_762110();
  v34(v12, v32);
  v40 = v68;
  sub_762150();
  (v35)(v9, v37);
  v41 = sub_7666D0();
  v42 = *(v41 - 8);
  v60 = *(v42 + 56);
  v61 = v42 + 56;
  v60(v40, 0, 1, v41);
  sub_75DFD0();
  sub_7621D0();
  sub_762100();
  v43 = v77;
  v34(v12, v77);
  sub_762150();
  v44 = v62;
  (v62)(v9, v39);
  v60(v40, 0, 1, v41);
  sub_75BA40();
  v45 = v67;
  sub_7621D0();
  sub_762110();
  v34(v12, v43);
  sub_762140();
  v44(v9, v39);
  sub_75E020();
  sub_7621D0();
  sub_762100();
  v34(v12, v77);
  sub_762140();
  v46 = v9;
  v48 = v73;
  v47 = v74;
  v49 = v39;
  v50 = v69;
  v44(v46, v49);
  v51 = v71;
  sub_75BAB0();
  v52 = v45;
  sub_7621C0();
  v53 = v72;
  (*(v51 + 104))(v72, enum case for ChartOrCategoryBrickStyle.round(_:), v50);
  sub_550FA0(&unk_95A9F8, &type metadata accessor for ChartOrCategoryBrickStyle, &protocol conformance descriptor for ChartOrCategoryBrickStyle);
  sub_769430();
  sub_769430();
  if (v81 == v79 && v82 == v80)
  {
    v54 = *(v51 + 8);
    v54(v53, v50);
    v54(v48, v50);

LABEL_7:
    v57 = sub_769FF0();
    [v75 setTextColor:v57];

    v58 = sub_769FE0();
    [v47 setTextColor:v58];

    goto LABEL_8;
  }

  v55 = sub_76A950();
  v56 = *(v51 + 8);
  v56(v53, v50);
  v56(v48, v50);

  if (v55)
  {
    goto LABEL_7;
  }

LABEL_8:
  [v66 setNeedsLayout];

  return (*(v64 + 8))(v52, v65);
}

uint64_t type metadata accessor for ChartOrCategoryBrickCollectionViewCell(uint64_t a1)
{
  result = qword_95A998;
  if (!qword_95A998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_54EB30(uint64_t a1)
{
  sub_54EC98(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_54EC98(319, &unk_95A9B0, &type metadata accessor for ChartOrCategoryBrickContext);
    if (v2 <= 0x3F)
    {
      sub_7572E0();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_54EC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_54ECF0()
{
  if (sub_54C5B8())
  {
    sub_759210();
    sub_550FA0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
  }

  return result;
}

uint64_t sub_54EDB0(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  sub_7591D0(v4, a3);
  sub_759210();
  sub_550FA0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_54EE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_54EF28;
  v16.n128_f64[0] = a6;
  v17.n128_f64[0] = a7;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:size:with:traitCollection:)(a1, a2, a3, a4, a5, v16, v17);
}

uint64_t sub_54EF28(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_54F024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v21 = swift_task_alloc();
  *(v10 + 16) = v21;
  *v21 = v10;
  v21[1] = sub_254BD8;
  v22.n128_f64[0] = a9;
  v23.n128_f64[0] = a10;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:checking:into:traitCollection:)(a1, a2, a3, a4, a5, a6, a7, a8, v22, v23);
}

uint64_t sub_54F12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_14FCC;
  v20.n128_f64[0] = a8;
  v21.n128_f64[0] = a9;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:into:traitCollection:)(a1, a2, a3, a4, a5, a6, a7, v20, v21);
}

uint64_t sub_54F2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_95A9D0, &unk_7A4838);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_54F314()
{
  v1 = sub_7572E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_BEB8((v0 + v5));

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_54F41C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_7572E0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_14FCC;

  return sub_54D920(a1, v9, v10, v11, v1 + v6, v1 + v7, v12, v13);
}

uint64_t sub_54F574(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_54F66C;

  return v6(a1);
}

uint64_t sub_54F66C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_54F764(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254BD8;

  return sub_54F574(a1, v4);
}

uint64_t sub_54F81C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_54F85C()
{
  result = qword_95A9E8;
  if (!qword_95A9E8)
  {
    sub_133D8(&qword_95A9E0, &unk_7A4870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A9E8);
  }

  return result;
}

uint64_t sub_54F8C0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_54F9B4;

  return v5(v2 + 32);
}

uint64_t sub_54F9B4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

double sub_54FAC8()
{
  v0 = sub_766D70();
  v81 = *(v0 - 8);
  v82 = v0;
  __chkstk_darwin(v0);
  v80 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_7666D0();
  v88 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_762170();
  v94 = *(v89 - 8);
  __chkstk_darwin(v89);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_762120();
  v86 = *(v5 - 8);
  v87 = v5;
  __chkstk_darwin(v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_767030();
  v95 = *(v101 - 8);
  __chkstk_darwin(v101);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = &v69 - v10;
  __chkstk_darwin(v11);
  v100 = &v69 - v12;
  __chkstk_darwin(v13);
  v91 = &v69 - v14;
  v15 = sub_7643E0();
  v93 = *(v15 - 8);
  __chkstk_darwin(v15);
  v92 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_761270();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_7656C0();
  v98 = *(v21 - 8);
  v99 = v21;
  __chkstk_darwin(v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_7621E0();
  v96 = *(v24 - 8);
  v97 = v24;
  __chkstk_darwin(v24);
  v90 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  sub_BD88(&qword_95A9C0, &qword_7A4828);
  sub_75C760();
  if (!*(&v111 + 1))
  {
    sub_10A2C(&v110, &qword_95A9C8, &qword_7A4830);
    return 0.0;
  }

  v77 = v15;
  sub_10914(&v110, v113);
  swift_getKeyPath();
  sub_75C7B0();

  sub_134D8(v113, &v110);
  sub_134D8(&v110, &v107);
  sub_7621A0();
  sub_BEB8(&v110);
  swift_getKeyPath();
  sub_75C7B0();

  v83 = v110;
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  sub_7621C0();
  v29 = (*(v18 + 88))(v20, v17);
  if (v29 == enum case for ChartOrCategoryBrickStyle.tile(_:) || v29 == enum case for ChartOrCategoryBrickStyle.pill(_:))
  {
    v63 = v96;
    v62 = v97;
    (*(v96 + 16))(v90, v28, v97);
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    v109 = 0;
    v108 = 0u;
    v107 = 0u;
    v64 = sub_7670D0();
    swift_allocObject();
    v65 = sub_7670B0();
    v106[3] = v64;
    v106[4] = &protocol witness table for LayoutViewPlaceholder;
    v106[0] = v65;
    memset(v105, 0, 32);
    v105[32] = 1;
    v66 = v92;
    sub_7643D0();
    sub_764390();
    v59 = v67;
    swift_unknownObjectRelease();
    (*(v93 + 8))(v66, v77);
    (*(v98 + 8))(v23, v99);
    (*(v63 + 8))(v28, v62);
    goto LABEL_8;
  }

  if (v29 != enum case for ChartOrCategoryBrickStyle.round(_:))
  {
    swift_unknownObjectRelease();
    (*(v98 + 8))(v23, v99);
    (*(v96 + 8))(v28, v97);
    sub_BEB8(v113);
    (*(v18 + 8))(v20, v17);
    return 0.0;
  }

  v30 = v85;
  sub_767020();
  sub_7621D0();
  sub_762110();
  v31 = v87;
  v32 = v86 + 8;
  v73 = *(v86 + 8);
  v73(v7, v87);
  v33 = v32;
  v34 = v79;
  sub_762150();
  v72 = *(v94 + 8);
  v94 += 8;
  v74 = v28;
  v72(v4, v89);
  sub_766FF0();
  v35 = *(v88 + 8);
  v88 += 8;
  v70 = v35;
  v35(v34, v84);
  v36 = v95 + 8;
  v76 = *(v95 + 8);
  v71 = v23;
  v76(v30, v101);
  v75 = v36;
  sub_7621D0();
  sub_762110();
  v37 = v31;
  v38 = v73;
  v86 = v33;
  v73(v7, v37);
  sub_762160();
  v39 = v89;
  v40 = v72;
  v72(v4, v89);
  v41 = v100;
  sub_767010();
  v76(v41, v101);
  v42 = v78;
  sub_767020();
  sub_7621D0();
  sub_762100();
  v38(v7, v87);
  sub_762150();
  v40(v4, v39);
  v43 = v85;
  sub_766FF0();
  v70(v34, v84);
  v44 = v42;
  v45 = v101;
  v46 = v76;
  v76(v44, v101);
  v47 = v74;
  sub_7621D0();
  sub_762100();
  v73(v7, v87);
  sub_762160();
  v72(v4, v89);
  sub_767010();
  v48 = v43;
  v46(v43, v45);
  v49 = v47;
  sub_7621B0();
  sub_B170(&v110, *(&v111 + 1));
  sub_75E9B0();
  v94 = *(v95 + 16);
  v95 += 16;
  (v94)(v48, v91, v45);
  sub_766D50();
  v50 = v80;
  sub_766D90();
  sub_BEB8(&v110);
  sub_766D40();
  v51 = v82;
  v52 = *(v81 + 8);
  v52(v50, v82);
  sub_7621B0();
  sub_B170(&v107, *(&v108 + 1));
  sub_75E9A0();
  (v94)(v48, v100, v101);
  sub_766D50();
  sub_766D90();
  sub_BEB8(&v107);
  sub_766D40();
  v52(v50, v51);
  v54 = v96;
  v53 = v97;
  (*(v96 + 16))(v90, v49, v97);
  sub_134D8(&v107, v106);
  sub_134D8(&v110, v105);
  v55 = sub_7670D0();
  swift_allocObject();
  v56 = sub_7670B0();
  v103 = v55;
  v104 = &protocol witness table for LayoutViewPlaceholder;
  v102 = v56;
  v114 = 0u;
  v115 = 0u;
  v116 = 1;
  v57 = v92;
  sub_7643D0();
  sub_764390();
  v59 = v58;
  swift_unknownObjectRelease();
  (*(v93 + 8))(v57, v77);
  sub_BEB8(&v107);
  sub_BEB8(&v110);
  v60 = v101;
  v61 = v76;
  v76(v100, v101);
  v61(v91, v60);
  (*(v98 + 8))(v71, v99);
  (*(v54 + 8))(v49, v53);
LABEL_8:
  sub_BEB8(v113);
  return v59;
}

void sub_550818(uint64_t a1, uint64_t a2)
{
  v3 = sub_765240();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766690();
  v18 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7621E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_95A9C0, &qword_7A4828);
  sub_75C760();
  if (v21)
  {
    v16 = a2;
    v17 = v7;
    sub_10914(&v20, v22);
    swift_getKeyPath();
    sub_75C7B0();

    sub_134D8(v22, &v20);
    sub_134D8(&v20, v19);
    sub_7621A0();
    sub_BEB8(&v20);
    v14 = _swiftEmptyArrayStorage;
    *&v20 = _swiftEmptyArrayStorage;
    sub_54FAC8();
    if (sub_762190())
    {
      sub_765260();
      sub_7666A0();
      sub_766610();
      sub_765250();
      sub_765210();
      (*(v4 + 8))(v6, v3);
      sub_765330();
      sub_769440();
      if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v20 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      (*(v18 + 8))(v9, v17);
      v14 = v20;
    }

    sub_75DF50();
    if (sub_769490())
    {
      v15._rawValue = v14;
      sub_75A070(v15);

      (*(v11 + 8))(v13, v10);
      sub_BEB8(v22);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      sub_BEB8(v22);
    }
  }

  else
  {
    sub_10A2C(&v20, &qword_95A9C8, &qword_7A4830);
  }
}

void sub_550C24()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_itemLayoutContext;
  v3 = sub_75C840();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  sub_75BB20();
  *(v1 + v4) = sub_75BB00();
  v5 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeText);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleText);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  v8 = sub_7621E0();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_renderingTask) = 0;
  sub_7572D0();
  sub_76A840();
  __break(1u);
}

uint64_t sub_550D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_762630();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.topTrailing(_:))
  {
    v10 = a2 == 1;
LABEL_5:
    (*(v5 + 8))(a1, v4);
    return v10;
  }

  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.topLeading(_:))
  {
    v10 = a2 != 1;
    goto LABEL_5;
  }

  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.midLeading(_:))
  {
    (*(v5 + 8))(a1, v4);
    if (a2 == 1)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_76A730(29);
  v13._object = 0x80000000007E7630;
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  sub_769370(v13);
  sub_76A7F0();
  result = sub_76A840();
  __break(1u);
  return result;
}

uint64_t sub_550FA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_550FE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_551020(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254BD8;

  return sub_54F8C0(a1, v4);
}

uint64_t sub_5510D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_14FCC;

  return sub_54F8C0(a1, v4);
}

uint64_t sub_55124C()
{
  v0 = sub_766690();
  __chkstk_darwin(v0 - 8);
  v26[3] = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v26[2] = v26 - v3;
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_757E60();
  sub_161DC(v8, qword_99E450);
  v26[1] = sub_BE38(v8, qword_99E450);
  v68[8] = &type metadata for Double;
  v68[9] = &protocol witness table for Double;
  v68[5] = 0x4024000000000000;
  if (qword_93D408 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_95AA40);
  v11 = *(v9 - 8);
  v12 = *(v11 + 16);
  v30 = v11 + 16;
  v31 = v12;
  v12(v7, v10, v9);
  v13 = v5[13];
  v29 = enum case for FontSource.useCase(_:);
  v28 = v13;
  v13(v7);
  v14 = sub_766CA0();
  v68[3] = v14;
  v68[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v68);
  v66 = v4;
  v67 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v65);
  v27 = v5[2];
  v27(v15, v7, v4);
  sub_766CB0();
  v16 = v5[1];
  v16(v7, v4);
  if (qword_93D410 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v9, qword_95AA58);
  v31(v7, v17, v9);
  v28(v7, v29, v4);
  v66 = v14;
  v67 = &protocol witness table for StaticDimension;
  sub_B1B4(v65);
  v63 = v4;
  v64 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v62);
  v27(v18, v7, v4);
  sub_766CB0();
  v16(v7, v4);
  if (qword_93D418 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v9, qword_95AA70);
  v31(v7, v19, v9);
  v28(v7, v29, v4);
  v63 = v14;
  v64 = &protocol witness table for StaticDimension;
  sub_B1B4(v62);
  v60 = v4;
  v61 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v59);
  v27(v20, v7, v4);
  sub_766CB0();
  v16(v7, v4);
  if (qword_93D420 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v9, qword_95AA88);
  v31(v7, v21, v9);
  v28(v7, v29, v4);
  v60 = v14;
  v61 = &protocol witness table for StaticDimension;
  sub_B1B4(v59);
  v57 = v4;
  v58 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v56);
  v27(v22, v7, v4);
  sub_766CB0();
  v16(v7, v4);
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v14, qword_99FDE8);
  v57 = v14;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_B1B4(v56);
  (*(*(v14 - 8) + 16))(v24, v23, v14);
  v55 = &protocol witness table for Double;
  v54 = &type metadata for Double;
  v52 = &protocol witness table for Double;
  v53 = 0x4034000000000000;
  v51 = &type metadata for Double;
  v50 = 0x4057400000000000;
  sub_7666A0();
  sub_7666A0();
  v48 = &type metadata for Double;
  v49 = &protocol witness table for Double;
  v46 = &protocol witness table for Double;
  v47 = 0x3FAC9107B0E4883ELL;
  v45 = &type metadata for Double;
  v43 = &protocol witness table for Double;
  v44 = 0x3FAC9107B0E4883ELL;
  v42 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  v41 = 0x3FAC0E070381C0E0;
  v39 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v38 = 0x3FA6CB65B2D96CB6;
  v36 = &type metadata for Double;
  v34 = &protocol witness table for Double;
  v35 = 0x4034000000000000;
  v33 = &type metadata for Double;
  v32 = 0x4034000000000000;
  return sub_757E40();
}

uint64_t sub_551944()
{
  v0 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_161DC(v0, qword_95AAA0);
  sub_BE38(v0, qword_95AAA0);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

char *sub_5519E0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_757CA0();
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760AD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_metrics;
  if (qword_93D428 != -1)
  {
    swift_once();
  }

  v21 = sub_757E60();
  v22 = sub_BE38(v21, qword_99E450);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor;
  v68 = sub_BE70(0, &qword_93E540, UIColor_ptr);
  *&v5[v23] = sub_76A070();
  if (qword_93D408 != -1)
  {
    swift_once();
  }

  v24 = sub_7666D0();
  v25 = sub_BE38(v24, qword_95AA40);
  v26 = *(v24 - 8);
  v73 = *(v26 + 16);
  v73(v19, v25, v24);
  v72 = *(v26 + 56);
  v72(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v71 = enum case for DirectionalTextAlignment.none(_:);
  v70 = v27;
  v27(v16);
  v28 = sub_75BB20();
  v69 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel] = sub_75BB10();
  if (qword_93D410 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v24, qword_95AA58);
  v73(v19, v31, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_titleLabel] = sub_75BB10();
  if (qword_93D418 != -1)
  {
    swift_once();
  }

  v33 = sub_BE38(v24, qword_95AA70);
  v73(v19, v33, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel] = sub_75BB10();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_offerButton] = sub_1DD00C(0);
  sub_757C20();
  v37 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_iconView] = sub_243D30(v12, 1);
  if (qword_93D420 != -1)
  {
    swift_once();
  }

  v38 = sub_BE38(v24, qword_95AA88);
  v73(v19, v38, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v39 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] = sub_75BB10();
  v40 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  v75.receiver = v5;
  v75.super_class = v40;
  v41 = objc_msgSendSuper2(&v75, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = [v45 contentView];
  v47 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel;
  [v46 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel]];

  v48 = [v45 contentView];
  [v48 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_titleLabel]];

  v49 = [v45 contentView];
  v50 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel;
  [v49 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel]];

  v51 = [v45 contentView];
  [v51 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_offerButton]];

  v52 = [v45 contentView];
  v53 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_body;
  [v52 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_body]];

  v54 = [v45 contentView];
  [v54 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_iconView]];

  v55 = [v45 contentView];
  v56 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppDescription;
  [v55 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppDescription]];

  v57 = [*&v45[v53] layer];
  [v57 setCornerRadius:20.0];

  v58 = *&v45[v47];
  v59 = [v45 tintColor];
  [v58 setTextColor:v59];

  v60 = *&v45[v50];
  v61 = sub_769FF0();
  [v60 setTextColor:v61];

  [*&v45[v53] setBackgroundColor:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor]];
  v62 = qword_93D430;
  v63 = *&v45[v56];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_BE38(v64, qword_95AAA0);
  v74 = v45;
  sub_7592B0();

  sub_76A150();
  v65 = *&v45[v56];
  v66 = sub_769FF0();
  [v65 setTextColor:v66];

  return v45;
}

uint64_t sub_5524C8()
{
  v1 = v0;
  v2 = sub_7664F0();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_757E60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_757E80();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  v66.receiver = v0;
  v66.super_class = v10;
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v11 = [v0 contentView];
  v38 = sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();

  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_metrics], v4);
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_offerButton];
  sub_75D650();
  v13 = &v12[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  if (v12[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v14 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(&v12[v14], v63);
    sub_B170(v63, v64);
    sub_760DE0();
    v16 = v15;
    v18 = v17;
    sub_BEB8(v63);
    *v13 = v16;
    *(v13 + 1) = v18;
    v13[16] = 0;
  }

  sub_757E50();
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v20 = sub_75BB20();
  v64 = v20;
  v65 = &protocol witness table for UILabel;
  v63[0] = v19;
  v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  v61 = v20;
  v62 = &protocol witness table for UILabel;
  v60 = v21;
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
  v58 = v20;
  v59 = &protocol witness table for UILabel;
  v57 = v22;
  v23 = type metadata accessor for OfferButton();
  v37[1] = v7;
  v55 = v23;
  v56 = &protocol witness table for UIView;
  v54 = v12;
  v37[0] = v12;
  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v52 = type metadata accessor for InAppPurchaseView(0);
  v53 = &protocol witness table for UIView;
  v50 = &protocol witness table for UILabel;
  v51 = v24;
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  v49 = v20;
  v47 = &protocol witness table for UIView;
  v48 = v25;
  v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_body];
  v46 = v38;
  v45 = v26;
  v27 = v19;
  v28 = v21;
  v29 = v22;
  v30 = v37[0];
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v39;
  sub_757E70();
  v35 = v42;
  sub_757E20();
  (*(v43 + 8))(v35, v44);
  return (*(v40 + 8))(v34, v41);
}

id sub_55296C(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93D430 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    sub_BE38(v6, qword_95AAA0);
    v7 = v1;
    sub_7592B0();

    return sub_76A150();
  }

  return result;
}

id sub_552B0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(uint64_t a1)
{
  result = qword_95AAF0;
  if (!qword_95AAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_552C84(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = a1.n128_f64[0];
  v9 = sub_7596A0();
  v10 = sub_759690();
  v11 = sub_3325FC(v9, v10, a7, 0.0, 0.0, v8);

  return v11;
}

uint64_t sub_552DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_552DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_766690();
  v11 = *(v74 - 8);
  __chkstk_darwin(v74);
  v85 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = &v68 - v14;
  v15 = sub_759690();
  v86 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_platform;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_platform] = v15;

  v16 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_flowLayout];
  ObjectType = swift_getObjectType();
  [a5 pageMarginInsets];
  [v16 setSectionInset:?];
  v17 = [a5 snapshotPageTraitEnvironment];
  v82 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_pageTraits;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_pageTraits] = v17;
  swift_unknownObjectRelease();
  v18 = sub_7596A0();
  v19 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork];
  v71 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork] = v18;

  v21 = sub_117204(v20, v19);

  v22 = _TtC18ASMessagesProvider22MultipleScrollObserver;
  v23 = &unk_90D000;
  if ((v21 & 1) == 0)
  {
    [*&v5[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_collectionView] reloadData];
  }

  v24 = sub_7596A0();
  v25 = v24;
  if (v24 >> 62)
  {
    goto LABEL_58;
  }

  v26 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
LABEL_5:
  v27 = v74;
  v28 = v83;
  if (v26)
  {
    v78 = v26;
    v29 = 0;
    v79 = sub_7596B0();
    v80 = v25 & 0xC000000000000001;
    v73 = v25 & 0xFFFFFFFFFFFFFF8;
    v75 = v25;
    v72 = v25 + 32;
    v76 = (v11 + 2);
    v77 = (v11 + 1);
    v11 = _swiftEmptyArrayStorage;
    v69 = a5;
    v68 = v10;
    v70 = v6;
    while (1)
    {
      if (v80)
      {
        v23 = sub_76A770();
        v30 = __OFADD__(v29++, 1);
        if (v30)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v29 >= *(v73 + 16))
        {
          goto LABEL_57;
        }

        v23 = *(v72 + 8 * v29);

        v30 = __OFADD__(v29++, 1);
        if (v30)
        {
          goto LABEL_56;
        }
      }

      sub_765260();
      sub_7666A0();
      v25 = *&v6[v86];
      v84 = v23;
      if (v25)
      {

        v31 = sub_75A310();

        if (v31)
        {
          v32 = *&v6[v71];
          v6 = (v32 & 0xFFFFFFFFFFFFFF8);
          if (v32 >> 62)
          {
            v22 = sub_76A860();
          }

          else
          {
            v22 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
          }

          v10 = (v32 & 0xC000000000000001);

          v33 = 0;
          while (1)
          {
            v23 = v22 != v33;
            if (v22 == v33)
            {
LABEL_28:

              v6 = v70;
              a5 = v69;
              v10 = v68;
              v27 = v74;
              v28 = v83;
              goto LABEL_29;
            }

            if (v10)
            {
              v25 = sub_76A770();
              if (__OFADD__(v33, 1))
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (v33 >= *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_55;
              }

              v25 = *(v32 + 8 * v33 + 32);

              if (__OFADD__(v33, 1))
              {
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                v26 = sub_76A860();
                goto LABEL_5;
              }
            }

            a5 = sub_7650D0();

            v33 = (v33 + 1);
            if (a5)
            {
              goto LABEL_28;
            }
          }
        }
      }

      LOBYTE(v23) = 0;
LABEL_29:

      sub_6C14C(v34, v10);

      v35 = v10[8];
      v36 = v10[10];
      sub_161D14(v10);
      result = *&v6[v82];
      if (!result)
      {
        break;
      }

      [result pageContainerSize];
      [v6 bounds];
      v39 = v38;
      if (v23)
      {
        if (sub_7665E0())
        {
          (*v76)(v85, v28, v27);
        }

        else
        {
          sub_766620();
        }

        v40 = 1;
      }

      else
      {
        (*v76)(v85, v28, v27);
        v40 = sub_7665E0();
      }

      v41 = [a5 traitCollection];
      v42 = sub_7699B0();

      if (v42)
      {
        [a5 pageMarginInsets];
        v44 = v43;
        [a5 pageMarginInsets];
        v46 = v44 + v45;
        PageTraitEnvironment.pageColumnMargin.getter();
        v48 = v39 - (v46 + v47 + v47);
        v49 = v47 * 0.0;
        v50 = v48 * 0.333333333;
      }

      else
      {
        if (v40)
        {
          v51 = 2.0;
        }

        else
        {
          v51 = 1.0;
        }

        if (v40)
        {
          v52 = 3.0;
        }

        else
        {
          v52 = 1.0;
        }

        [a5 pageMarginInsets];
        v54 = v53;
        [a5 pageMarginInsets];
        v56 = v54 + v55;
        PageTraitEnvironment.pageColumnMargin.getter();
        v58 = v39 - (v56 + (v52 + -1.0) * v57);
        v49 = (v51 + -1.0) * v57;
        v50 = v51 / v52 * v58;
      }

      v59 = v49 + v50;
      v60 = [a5 traitCollection];
      sub_7699B0();

      v61 = v85;
      sub_766660();
      v62 = v59 - (v35 + v36);
      sub_766660();
      v64 = v63;
      v22 = v77;
      isa = v77->isa;
      (v77->isa)(v61, v27);
      v28 = v83;
      (isa)(v83, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_7B0D8(0, *(v11 + 2) + 1, 1, v11);
      }

      v23 = *(v11 + 2);
      v66 = *(v11 + 3);
      v25 = v23 + 1;
      if (v23 >= v66 >> 1)
      {
        v11 = sub_7B0D8((v66 > 1), v23 + 1, 1, v11);
      }

      *(v11 + 2) = v25;
      v67 = &v11[3 * v23];
      *(v67 + 4) = v84;
      v67[5] = v62;
      *(v67 + 6) = v64;
      if (v29 == v78)
      {

        v23 = 9490432;
        v22 = _TtC18ASMessagesProvider22MultipleScrollObserver;
        goto LABEL_53;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
LABEL_53:
    *&v6[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_sizedArtwork] = v11;

    return [*&v6[v22[92].vtable] *(v23 + 3848)];
  }

  return result;
}

uint64_t sub_5535AC(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v49 = a4;
  v51 = a3;
  v7 = sub_7687C0();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_BD88(&unk_955F90, qword_79E810);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v37 - v9;
  v10 = sub_BD88(&unk_93F630, &unk_77E230);
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v44 = &v37 - v11;
  v52 = *a1;
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v12 = sub_768FF0();
  v54 = sub_BE38(v12, qword_9A0430);
  v13 = sub_BD88(&qword_93FD00, &unk_77DF10);
  v14 = *(*(sub_7685F0() - 8) + 72);
  v40 = v13;
  *(swift_allocObject() + 16) = xmmword_780120;
  sub_768540();
  v38 = sub_758C00();
  v56 = v38;
  v55[0] = a2;

  sub_7685E0();
  sub_BDD0(v55);
  sub_768540();
  v15 = sub_768E70();
  v56 = v15;
  v16 = sub_B1B4(v55);
  (*(*(v15 - 8) + 16))(v16, v51, v15);
  v39 = 3 * v14;
  sub_7685E0();
  sub_BDD0(v55);
  v51 = a2;
  sub_768540();
  v56 = sub_BE70(0, &qword_95AB78, AMSURLResult_ptr);
  v55[0] = v52;
  v17 = v52;
  sub_7685E0();
  sub_BDD0(v55);
  sub_768E90();

  if ([v17 responseStatusCode] - 200 > &stru_20.nsects + 3)
  {
    *(swift_allocObject() + 16) = xmmword_782440;
    sub_768540();
    v56 = v38;
    v55[0] = v51;

    sub_7685E0();
    sub_BDD0(v55);
    sub_768540();
    v29 = [v17 responseStatusCode];
    v56 = &type metadata for Int;
    v55[0] = v29;
    sub_7685E0();
    sub_BDD0(v55);
    sub_768EA0();

    v30 = sub_758BC0();
    if (v30)
    {
      v31 = v30;
      sub_768900();
      v32 = v44;
      v33 = v47;
      sub_768ED0();
      v56 = sub_764C80();
      v57 = sub_554780(&qword_95AB70, &type metadata accessor for Action);
      v55[0] = v31;
      v34 = v48;
      v35 = v45;
      v36 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      sub_768980();

      (*(v34 + 8))(v35, v36);
      (*(v46 + 8))(v32, v33);
      sub_BEB8(v55);
    }

    sub_5547D4();
    swift_allocError();
    sub_768F50();
  }

  else
  {
    v18 = sub_758BD0();
    if (v18)
    {
      v19 = v18;
      sub_768900();
      v20 = v44;
      v21 = v47;
      sub_768ED0();
      v56 = sub_764C80();
      v57 = sub_554780(&qword_95AB70, &type metadata accessor for Action);
      v55[0] = v19;
      v22 = v48;
      v23 = v45;
      v24 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      sub_768980();

      (*(v22 + 8))(v23, v24);
      (*(v46 + 8))(v20, v21);
      sub_BEB8(v55);
    }

    v26 = v41;
    v25 = v42;
    v27 = v43;
    (*(v42 + 104))(v41, enum case for ActionOutcome.performed(_:), v43);
    sub_768F60();
    return (*(v25 + 8))(v26, v27);
  }
}

uint64_t sub_553D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v24 = a3;
  v6 = sub_BD88(&unk_955F90, qword_79E810);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v23 = &v21 - v7;
  v8 = sub_BD88(&unk_93F630, &unk_77E230);
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v11 = sub_768FF0();
  v27 = sub_BE38(v11, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_782440;
  sub_768540();
  v31 = sub_758C00();
  v30[0] = a2;

  sub_7685E0();
  sub_BDD0(v30);
  sub_768540();
  v28 = a1;
  swift_getErrorValue();
  v12 = v33;
  v13 = v34;
  v31 = v34;
  v14 = sub_B1B4(v30);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  sub_7685E0();
  sub_BDD0(v30);
  sub_768EA0();

  v15 = sub_758BC0();
  if (v15)
  {
    v16 = v15;
    sub_768900();
    sub_768ED0();
    v31 = sub_764C80();
    v32 = sub_554780(&qword_95AB70, &type metadata accessor for Action);
    v30[0] = v16;
    v18 = v25;
    v17 = v26;
    v19 = v23;
    (*(v25 + 104))(v23, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v26);

    sub_768980();

    (*(v18 + 8))(v19, v17);
    (*(v22 + 8))(v10, v8);
    sub_BEB8(v30);
  }

  return sub_768F50();
}

uint64_t sub_5541BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_768E70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v31 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v26 - v8;
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v32 = sub_768F90();
  sub_BE70(0, &unk_95AB60, AMSURLSession_ptr);
  sub_768900();
  sub_768ED0();
  v10 = v33[0];
  v29 = v4;
  v30 = v9;
  sub_768ED0();
  sub_BE70(0, &qword_94DDD0, AMSProcessInfo_ptr);
  sub_768ED0();
  v11 = v33[0];
  sub_75A920();
  sub_768ED0();
  v12 = v33[0];
  sub_BD88(&qword_955220, &qword_7A4A50);
  sub_768ED0();
  v13 = v33[0];
  if (sub_758BE0())
  {
    swift_unknownObjectRetain();
  }

  v26[2] = v13;
  v27 = v11;
  v14 = v30;
  v28 = v12;
  v26[1] = sub_758BF0();
  swift_unknownObjectRelease();
  v15 = v31;
  v16 = v29;
  (*(v5 + 16))(v31, v14, v29);
  v17 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26[0] = v10;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  (*(v5 + 32))(v20 + v17, v15, v16);
  *(v20 + v18) = a2;
  v21 = v32;
  *(v20 + v19) = v32;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v21;
  v23 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v24 = sub_769970();
  v33[3] = v23;
  v33[4] = &protocol witness table for OS_dispatch_queue;
  v33[0] = v24;
  sub_768F10();
  swift_unknownObjectRelease();

  (*(v5 + 8))(v14, v16);
  sub_BEB8(v33);
  return v21;
}

uint64_t sub_554590()
{
  v1 = sub_768E70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_554680(id *a1)
{
  v3 = *(sub_768E70() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_5535AC(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_55472C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_554780(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_5547D4()
{
  result = qword_95AB80;
  if (!qword_95AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95AB80);
  }

  return result;
}

unint64_t sub_55483C()
{
  result = qword_95AB88;
  if (!qword_95AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95AB88);
  }

  return result;
}

unint64_t sub_5548B4()
{
  result = qword_94FBA0;
  if (!qword_94FBA0)
  {
    sub_762730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94FBA0);
  }

  return result;
}

uint64_t sub_55490C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_758BB0();
    v8 = a1;
    sub_762720();
    sub_758B50();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a2;
    v9[4] = a4;
    v10 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
    swift_retain_n();

    v14[3] = v10;
    v14[4] = &protocol witness table for OS_dispatch_queue;
    v14[0] = sub_769970();
    sub_768F10();

    return sub_BEB8(v14);
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v12 = sub_768FF0();
    sub_BE38(v12, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    sub_555A18();
    swift_allocError();
    *v13 = 0;
    sub_768F50();
  }
}

void sub_554BE0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = [objc_allocWithZone(GKGameInternal) init];
  sub_762720();
  v8 = sub_769210();

  [v7 setBundleIdentifier:v8];

  v9 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v7];
  v10 = objc_opt_self();
  sub_BD88(&qword_941A88, &unk_786E40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_77B6D0;
  *(v11 + 32) = sub_762710();
  *(v11 + 40) = v12;
  isa = sub_769450().super.isa;

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v6;
  v14[4] = a4;
  v18[4] = sub_555AC8;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_555704;
  v18[3] = &unk_896E18;
  v15 = _Block_copy(v18);
  v16 = v9;

  v17 = v6;

  [v10 loadLeaderboardsWithIDs:isa setIdentifier:0 game:v16 completionHandler:v15];
  _Block_release(v15);
}

void sub_554DEC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, __n128 a6)
{
  v60 = a5;
  v58 = a4;
  v63 = a1;
  v64 = a3;
  v59 = sub_758B40();
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75F340();
  v61 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_760280();
  v57 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7687B0();
  __chkstk_darwin(v15 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v21 - 8);
  v23 = &v51 - v22;
  v24 = sub_765490();
  __chkstk_darwin(v24);
  v27 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v28 = sub_768FF0();
    sub_BE38(v28, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    swift_getErrorValue();
    v29 = v65;
    v30 = v66;
    *(&v71 + 1) = v66;
    v31 = sub_B1B4(&v70);
    (*(*(v30 - 8) + 16))(v31, v29, v30);
    sub_7685E0();
    sub_BDD0(&v70);
    sub_768EA0();

    sub_768F50();

    return;
  }

  v54 = v12;
  v55 = v17;
  v56 = v9;
  v33 = v61;
  v32 = v62;
  v34 = v63;
  if (v63)
  {
    if (v63 >> 62)
    {
      v52 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v53 = v14;
      v47 = v26;
      v48 = sub_76A860();
      v26 = v47;
      v14 = v53;
      v27 = v52;
      if (v48)
      {
LABEL_8:
        v53 = v14;
        v63 = v20;
        if ((v34 & 0xC000000000000001) != 0)
        {
          v35 = v26;
          v36 = v27;
          v37 = sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return;
          }

          v35 = v26;
          v36 = v27;
          v37 = *(v34 + 32);
        }

        v38 = v37;
        v39 = v58;
        v72 = 0;
        v70 = 0u;
        v71 = 0u;
        v40 = *(v35 + 104);
        v52 = v36;
        v40(v36, enum case for FlowPage.gameCenterLeaderboards(_:), v24);
        v41 = sub_7570A0();
        (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
        v42 = sub_759E30();
        (*(*(v42 - 8) + 56))(v63, 1, 1, v42);
        v69 = &type metadata for GameCenterLeaderboardsPage;
        v67 = v38;
        v68 = v39;
        v43 = v38;
        v44 = v39;
        v45 = v43;
        v58 = v44;
        sub_768790();
        (*(v57 + 104))(v53, enum case for FlowPresentationContext.infer(_:), v54);
        (*(v33 + 104))(v11, enum case for FlowAnimationBehavior.infer(_:), v56);
        (*(v32 + 104))(v8, enum case for FlowOrigin.inapp(_:), v59);
        sub_768CE0();
        sub_758B20();
        swift_allocObject();
        v46 = sub_758AD0();
        sub_72D7A8(v46, 1, v60);
        sub_768F00();

        return;
      }
    }

    else if (*(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_8;
    }
  }

  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v49 = sub_768FF0();
  sub_BE38(v49, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();

  sub_555A18();
  swift_allocError();
  *v50 = 1;
  sub_768F50();
}

double sub_555704(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_BE70(0, &qword_943F48, GKLeaderboard_ptr);
    v4 = sub_769460();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t sub_5557A8(uint64_t a1)
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();

  return sub_768F50();
}

uint64_t sub_555900(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v4 = sub_768F90();
  sub_758BB0();
  v7[3] = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_769970();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a2;

  sub_758B60();

  sub_BEB8(v7);
  return v4;
}

unint64_t sub_555A18()
{
  result = qword_95AB90;
  if (!qword_95AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95AB90);
  }

  return result;
}

uint64_t sub_555A80()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_555AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_555B00()
{
  result = qword_95AB98;
  if (!qword_95AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95AB98);
  }

  return result;
}

void sub_555BB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v84 = sub_75BC10();
  v81 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_7580D0();
  v110 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_764CF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v96 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v79 - v10;
  v99 = sub_BD88(&qword_946518, &qword_786F50);
  v108 = *(v99 - 8);
  __chkstk_darwin(v99);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v79 - v14;
  __chkstk_darwin(v15);
  v109 = (&v79 - v16);
  __chkstk_darwin(v17);
  v19 = &v79 - v18;
  __chkstk_darwin(v20);
  v22 = &v79 - v21;
  v23 = *a1;
  sub_BD88(&unk_944300, &qword_77DEE0);
  sub_768900();
  sub_768ED0();
  v24 = aBlock;
  v101 = v113;
  sub_758140();
  sub_768ED0();
  v79 = aBlock;
  v25 = _swiftEmptySetSingleton;
  v119 = _swiftEmptySetSingleton;
  v111 = sub_10F514(_swiftEmptyArrayStorage);
  v118 = _swiftEmptySetSingleton;
  v26 = *(v23 + 16);
  v100 = v6;
  v87 = v7;
  v102 = v24;
  if (v26)
  {
    v107 = v19;
    v27 = v99;
    v93 = &v22[*(v99 + 48)];
    ObjectType = swift_getObjectType();
    v28 = v23 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v91 = *(v108 + 72);
    v103 = v106 + 8;
    v95 = v12;
    v90 = v12 + 8;
    v108 = v7 + 32;
    v29 = (v7 + 8);
    v89 = (v110 + 11);
    v88 = enum case for LegacyAppState.paused(_:);
    v86 = (v110 + 1);
    v85 = (v110 + 12);
    v30 = _swiftEmptyArrayStorage;
    v31 = v27;
    v32 = v106;
    v33 = v22;
    v94 = v22;
    do
    {
      v105 = v28;
      v106 = v26;
      sub_558884(v28, v33);
      v35 = *v93;
      v36 = *(v93 + 1);
      v37 = v107;
      v38 = &v107[*(v31 + 48)];
      v104 = *v108;
      (v104)(v107, v33, v6);
      *v38 = v35;
      *(v38 + 1) = v36;
      v39 = v109;
      sub_558884(v37, v109);
      v40 = (v39 + *(v31 + 48));
      v41 = *v40;
      v42 = v40[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_7B5CC(0, *(v30 + 2) + 1, 1, v30);
      }

      v44 = *(v30 + 2);
      v43 = *(v30 + 3);
      if (v44 >= v43 >> 1)
      {
        v30 = sub_7B5CC((v43 > 1), v44 + 1, 1, v30);
      }

      *(v30 + 2) = v44 + 1;
      v110 = v30;
      v45 = &v30[2 * v44];
      *(v45 + 4) = v41;
      *(v45 + 5) = v42;
      v46 = *v29;
      v6 = v100;
      (*v29)(v109, v100);
      v47 = v107;
      sub_558884(v107, v32);

      v48 = v96;
      sub_1A068C(v96, v32);
      v46(v48, v6);
      sub_558884(v47, v32);
      v49 = &v32[*(v31 + 48)];
      v50 = *v49;
      v51 = v49[1];
      v52 = v95;
      sub_558884(v47, v95);

      (v104)(v48, v52, v6);
      v53 = v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v53;
      sub_45A2F8(v48, v50, v51, isUniquelyReferenced_nonNull_native);

      v111 = aBlock;
      v46(v32, v6);
      sub_758330();
      swift_getObjectType();
      v55 = v97;
      sub_758220();
      swift_unknownObjectRelease();
      v56 = v98;
      v57 = (*v89)(v55, v98);
      if (v57 == v88)
      {
        (*v85)(v55, v56);
        v34 = sub_758040();
        (*(*(v34 - 8) + 8))(v55, v34);
        sub_558884(v47, v32);

        sub_1A068C(v48, v32);
        v46(v48, v6);
        sub_10A2C(v47, &qword_946518, &qword_786F50);
      }

      else
      {
        sub_10A2C(v47, &qword_946518, &qword_786F50);
        (*v86)(v55, v56);
      }

      v33 = v94;
      v28 = v105 + v91;
      v26 = v106 - 1;
      v30 = v110;
      v31 = v99;
    }

    while (v106 != &dword_0 + 1);
    v25 = v119;
  }

  else
  {
    v110 = _swiftEmptyArrayStorage;
  }

  v58 = v25 + 7;
  v59 = 1 << *(v25 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & v25[7];
  v62 = (v59 + 63) >> 6;
  v108 = v87 + 16;
  LODWORD(v107) = enum case for InstallationType.update(_:);
  v105 = v87 + 8;
  v106 = (v81 + 104);
  v104 = (v81 + 8);
  v109 = v25;

  v63 = 0;
  v64 = v82;
  v65 = v83;
  v66 = v84;
  while (v61)
  {
    v67 = v63;
    v68 = v87;
    v69 = v109;
LABEL_22:
    v70 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v71 = v100;
    (*(v68 + 16))(v64, *(v69 + 48) + *(v68 + 72) * (v70 | (v67 << 6)), v100);
    swift_getObjectType();
    (*v106)(v65, v107, v66);
    sub_758310();
    (*(v87 + 8))(v64, v71);
    (*v104)(v65, v66);
  }

  v68 = v87;
  v69 = v109;
  while (1)
  {
    v67 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v67 >= v62)
    {

      isa = sub_769450().super.isa;

      v73 = v118;
      v74 = swift_allocObject();
      v74[2] = v111;
      v74[3] = v69;
      v75 = v101;
      v74[4] = v102;
      v74[5] = v75;
      v76 = v80;
      v74[6] = v73;
      v74[7] = v76;
      v116 = sub_55894C;
      v117 = v74;
      aBlock = _NSConcreteStackBlock;
      v113 = 1107296256;
      v114 = sub_556E7C;
      v115 = &unk_896F40;
      v77 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v78 = v79;
      [v79 updateAllWithOrder:isa completionBlock:v77];
      swift_unknownObjectRelease();

      _Block_release(v77);
      return;
    }

    v61 = v58[v67];
    ++v63;
    if (v61)
    {
      v63 = v67;
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_556674(char a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v106 = a6;
  v107 = a7;
  ObjectType = a4;
  v13 = sub_7687C0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_764CF0();
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v18 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v100 = v89 - v20;
  __chkstk_darwin(v21);
  v102 = v89 - v22;
  __chkstk_darwin(v23);
  v103 = v89 - v24;
  __chkstk_darwin(v25);
  v99 = v89 - v26;
  v101 = v27;
  __chkstk_darwin(v28);
  v98 = v89 - v29;
  v112 = _swiftEmptySetSingleton;
  v92 = v14;
  v93 = v13;
  v91 = v16;
  v95 = a8;
  v96 = v18;
  v94 = a5;
  if ((a1 & 1) == 0)
  {
    v112 = a5;

LABEL_22:
    v90 = a9;
    v56 = v55[7];
    v98 = (v55 + 7);
    v57 = 1 << *(v55 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & v56;
    v97 = (v57 + 63) >> 6;
    v109 = v110 + 16;
    v99 = (v110 + 32);
    v105 = v110 + 8;
    v102 = v55;

    v60 = 0;
    v61 = v103;
    while (v59)
    {
      v62 = v60;
      v63 = v102;
LABEL_31:
      v64 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v65 = v110;
      v66 = *(v110 + 16);
      v67 = v100;
      v68 = v108;
      v66(v100, *(v63 + 48) + *(v110 + 72) * (v64 | (v62 << 6)), v108);
      v69 = v106;
      ObjectType = swift_getObjectType();
      v66(v61, v67, v68);
      v70 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v71 = swift_allocObject();
      v72 = v107;
      *(v71 + 16) = v69;
      *(v71 + 24) = v72;
      (*(v65 + 32))(v71 + v70, v61, v68);
      swift_unknownObjectRetain();
      sub_758340();

      (*(v65 + 8))(v67, v68);
    }

    v63 = v102;
    while (1)
    {
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v62 >= v97)
      {
        break;
      }

      v59 = *&v98[8 * v62];
      ++v60;
      if (v59)
      {
        v60 = v62;
        goto LABEL_31;
      }
    }

    v73 = v94;
    if (*(v63 + 16) <= v94[2] >> 3)
    {
      v111 = v94;

      sub_557470(v63);

      v74 = v111;
    }

    else
    {

      v74 = sub_55768C(v63, v73);
    }

    v75 = v96;
    if (*(v95 + 16) <= v74[2] >> 3)
    {
      v111 = v74;
      sub_557470(v95);
      v76 = v111;
    }

    else
    {
      v76 = sub_55768C(v95, v74);
    }

    v77 = 0;
    v78 = 1 << *(v76 + 32);
    v79 = -1;
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    v80 = v79 & v76[7];
    v81 = (v78 + 63) >> 6;
    while (v80)
    {
      v82 = v77;
LABEL_47:
      v83 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
      v84 = v110;
      v85 = v108;
      (*(v110 + 16))(v75, v76[6] + *(v110 + 72) * (v83 | (v82 << 6)), v108);
      swift_getObjectType();
      sub_758360();
      (*(v84 + 8))(v75, v85);
    }

    while (1)
    {
      v82 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v82 >= v81)
      {

        v87 = v92;
        v86 = v93;
        v88 = v91;
        (*(v92 + 104))(v91, enum case for ActionOutcome.performed(_:), v93);
        sub_768F60();
        (*(v87 + 8))(v88, v86);
        return;
      }

      v80 = v76[v82 + 7];
      ++v77;
      if (v80)
      {
        v77 = v82;
        goto LABEL_47;
      }
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v105 = a2;
  if (!(a2 >> 62))
  {
    v109 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v109)
    {
      goto LABEL_4;
    }

LABEL_21:
    v55 = _swiftEmptySetSingleton;
    goto LABEL_22;
  }

  v109 = sub_76A860();
  if (!v109)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (v109 >= 1)
  {
    v30 = 0;
    v31 = v105;
    v32 = v105 & 0xC000000000000001;
    v97 = v110 + 16;
    v90 = v110 + 32;
    v89[1] = v110 + 8;
    v33 = &selRef_absoluteDimension_;
    v34 = ObjectType;
    v89[0] = v105 & 0xC000000000000001;
    v35 = v110;
    while (1)
    {
      v36 = v32 ? sub_76A770() : *(v31 + 8 * v30 + 32);
      v37 = v36;
      if ([v36 status] == &dword_0 + 1)
      {
        break;
      }

LABEL_7:
      if (v109 == ++v30)
      {
        v55 = v112;
        goto LABEL_22;
      }
    }

    v38 = [v37 v33[131]];
    v39 = sub_769240();
    v41 = v40;

    if (*(v34 + 16))
    {
      v42 = sub_3DF2F8(v39, v41);
      v44 = v43;

      if (v44)
      {
        v45 = *(v34 + 56) + *(v35 + 72) * v42;
        v46 = *(v35 + 16);
        v47 = v99;
        v48 = v108;
        v46(v99, v45, v108);
        v49 = v98;
        (*(v35 + 32))(v98, v47, v48);
        v50 = v102;
        v46(v102, v49, v48);
        v51 = v103;
        sub_1A068C(v103, v50);

        v52 = *(v35 + 8);
        v52(v51, v48);
        v53 = v49;
        v32 = v89[0];
        v54 = v48;
        v33 = &selRef_absoluteDimension_;
        v52(v53, v54);
        v34 = ObjectType;
LABEL_17:
        v31 = v105;
        goto LABEL_7;
      }
    }

    else
    {
    }

    goto LABEL_17;
  }

LABEL_52:
  __break(1u);
}

void sub_556E7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_BE70(0, &qword_95ABA8, ASDJobResult_ptr);
  v7 = sub_769460();

  v8 = a4;
  v6(a2, v7, a4);
}

void sub_556F34(unint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_BD88(&qword_941C20, &unk_781240);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - v4;
  v42 = sub_764CF0();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75A660();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v41 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v35 = v10;
    v37 = v9;
    v38 = v6;
    v40 = v8;
    v13 = 0;
    v8 = (a1 & 0xC000000000000001);
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8)
      {
        v14 = sub_76A770();
      }

      else
      {
        if (v13 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_18;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = [v14 updateState];
      if (v16 > 4 || ((1 << v16) & 0x19) == 0)
      {
      }

      else
      {
        v6 = &v45;
        sub_76A7A0();
        sub_76A7D0();
        sub_76A7E0();
        sub_76A7B0();
      }

      ++v13;
      if (v9 == i)
      {
        v18 = v45;
        v8 = v40;
        v9 = v37;
        v6 = v38;
        v10 = v35;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_21:
  v19 = v41;
  (*(v10 + 104))(v41, enum case for UpdatesSorter.Ordering.pendingUpdates(_:), v9);
  v20 = sub_75A650();
  (*(v10 + 8))(v19, v9);
  if (!(v20 >> 62))
  {
    v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
    v35 = v18;
    if (v21)
    {
      goto LABEL_23;
    }

LABEL_39:
    v22 = _swiftEmptyArrayStorage;
LABEL_40:

    v33 = sub_1416A0(v22);

    v45 = v33;
    sub_768F60();

    return;
  }

LABEL_38:
  v21 = sub_76A860();
  v35 = v18;
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_23:
  v18 = 0;
  v40 = v20 & 0xFFFFFFFFFFFFFF8;
  v41 = (v20 & 0xC000000000000001);
  v38 = v6 + 4;
  v22 = _swiftEmptyArrayStorage;
  v39 = v5;
  v37 = v20;
  while (1)
  {
    if (v41)
    {
      v23 = sub_76A770();
    }

    else
    {
      if (v18 >= *(v40 + 16))
      {
        goto LABEL_37;
      }

      v23 = *(v20 + 8 * v18 + 32);
    }

    v6 = v23;
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    [v23 storeItemIdentifier];
    sub_764CE0();
    v25 = [v6 bundleIdentifier];
    if (!v25)
    {
      break;
    }

    v26 = v25;
    v27 = sub_769240();
    v29 = v28;

    v30 = &v5[*(v44 + 48)];
    (*v38)(v5, v8, v42);
    *v30 = v27;
    v30[1] = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_7C3C4(0, *(v22 + 2) + 1, 1, v22);
    }

    v32 = *(v22 + 2);
    v31 = *(v22 + 3);
    if (v32 >= v31 >> 1)
    {
      v22 = sub_7C3C4((v31 > 1), v32 + 1, 1, v22);
    }

    v5 = v39;

    *(v22 + 2) = v32 + 1;
    sub_558B24(v5, v22 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v32);
    v18 = (v18 + 1);
    v20 = v37;
    if (v24 == v21)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
}

void sub_557470(uint64_t a1)
{
  v3 = sub_BD88(&unk_940200, &unk_7AEB70);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_764CF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_26FF30(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_10A2C(v5, &unk_940200, &unk_7AEB70);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_55768C(uint64_t a1, void *a2)
{
  v5 = sub_BD88(&unk_940200, &unk_7AEB70);
  __chkstk_darwin(v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v66 - v9);
  v11 = sub_764CF0();
  __chkstk_darwin(v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v66 - v14);
  __chkstk_darwin(v16);
  v81 = (&v66 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = a2 + 7;
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_10A2C(v30, &unk_940200, &unk_7AEB70);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_558AD4(&qword_948180, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
    v32 = sub_769150();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, a2[6] + v85 * v24, v11);
    v35 = sub_558AD4(&qword_945868, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
    v36 = sub_7691C0();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    __chkstk_darwin(v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_10A2C(v24, &unk_940200, &unk_7AEB70);
        a2 = sub_3AFF1C(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = sub_769150();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, v52[6] + v54 * v85, v11);
        v55 = sub_7691C0();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, v52[6] + v54 * v85, v11);
            v57 = sub_7691C0();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_5580F0(v64, v66, v81, v24, &v90);
  a2 = v65;

LABEL_52:
  v59 = v90;
LABEL_53:
  sub_1A01E0(v59);
  return a2;
}

void sub_5580F0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_BD88(&unk_940200, &unk_7AEB70);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_764CF0();
  __chkstk_darwin(v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_10A2C(v11, &unk_940200, &unk_7AEB70);
          v45 = v61;

          sub_3AFF1C(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_558AD4(&qword_948180, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
        v35 = sub_769150();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_558AD4(&qword_945868, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
        v43 = sub_7691C0();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_5585C4(uint64_t a1, uint64_t a2)
{
  sub_BD88(&qword_95ABB0, qword_7A4D30);
  v2 = sub_768F90();
  v3 = sub_75B730();
  if (v3)
  {
    v7[0] = v3;
    sub_768F60();
  }

  else
  {
    sub_758140();
    sub_768900();
    sub_768ED0();
    v4 = v7[0];
    v7[4] = sub_558B1C;
    v7[5] = v2;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_449B00;
    v7[3] = &unk_896F90;
    v5 = _Block_copy(v7);

    [v4 getUpdatesWithCompletionBlock:v5];
    _Block_release(v5);
  }

  return v2;
}

uint64_t sub_55870C(uint64_t a1, uint64_t a2)
{
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v4 = sub_768F90();
  sub_5585C4(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;
  v6 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  swift_retain_n();

  v8[3] = v6;
  v8[4] = &protocol witness table for OS_dispatch_queue;
  v8[0] = sub_769970();
  sub_768F10();

  sub_BEB8(v8);
  return v4;
}

uint64_t sub_558838()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_558884(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_946518, &qword_786F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5588F4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

double sub_55897C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_558994()
{
  v1 = sub_764CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_558A58()
{
  sub_764CF0();
  swift_getObjectType();
  return sub_758360();
}

uint64_t sub_558AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_558B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941C20, &unk_781240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_558B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = v4;
  v25 = a3;
  v8 = sub_75C930();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_BD88(&unk_94DF00, &unk_792100);
  __chkstk_darwin(v12 - 8);
  v14 = &v23[-v13];
  v24 = sub_55BE04(a1);
  v15 = sub_760770();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a2, v15);
  v17.n128_f64[0] = (*(v16 + 56))(v14, 0, 1, v15);
  v18 = sub_55C32C(a1, v14, v17);
  sub_10A2C(v14, &unk_94DF00, &unk_792100);
  v19 = *(v9 + 16);
  v19(v11, v5, v8);
  v20 = (*(v9 + 88))(v11, v8);
  if (v20 != enum case for LockupMediaLayout.DisplayType.oneUp(_:))
  {
    if (v20 == enum case for LockupMediaLayout.DisplayType.twoUp(_:) || v20 == enum case for LockupMediaLayout.DisplayType.threeUp(_:))
    {
      if (v18)
      {
        goto LABEL_11;
      }

      if (v24)
      {
        goto LABEL_9;
      }
    }

    else if (((v20 == enum case for LockupMediaLayout.DisplayType.fourUp(_:)) & v18) != 0)
    {
      goto LABEL_11;
    }

    v19(v25, v5, v8);
    return (*(v9 + 8))(v11, v8);
  }

  if (v18)
  {
LABEL_11:
    (*(v9 + 8))(v11, v8);
    v21 = &enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    return (*(v9 + 104))(v25, *v21, v8);
  }

  if (v24)
  {
LABEL_9:
    (*(v9 + 8))(v11, v8);
    v21 = &enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    return (*(v9 + 104))(v25, *v21, v8);
  }

  (*(v9 + 104))(v25, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v8);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_558ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_766690();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_75C930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v12 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v12 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v20 - v17;
  v22[3] = &type metadata for CGFloat;
  v22[4] = &protocol witness table for CGFloat;
  v22[0] = 0x4021000000000000;
  (*(v4 + 16))(v20 - v17, a1, v3, v16);
  (*(v4 + 56))(v18, 0, 1, v3);
  (*(v6 + 104))(v11, enum case for LockupMediaLayout.DisplayType.none(_:), v5);
  sub_134D8(v22, v21);
  (*(v6 + 16))(v8, v11, v5);
  if (_swiftEmptyArrayStorage >> 62 && sub_76A860())
  {
    sub_76A770();
    sub_765260();
    sub_7666A0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_7666A0();
  }

  sub_1ED18(v18, v14, &unk_948720, &unk_784970);
  sub_75C970();
  (*(v6 + 8))(v11, v5);
  sub_10A2C(v18, &unk_948720, &unk_784970);
  return sub_BEB8(v22);
}

uint64_t sub_559214()
{
  v0 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = sub_766690();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_75C930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75C9A0();
  sub_161DC(v9, qword_95ABB8);
  sub_BE38(v9, qword_95ABB8);
  v11[4] = &type metadata for CGFloat;
  v11[5] = &protocol witness table for CGFloat;
  v11[1] = 0x4021000000000000;
  (*(v6 + 104))(v8, enum case for LockupMediaLayout.DisplayType.none(_:), v5);
  sub_7666A0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_75C970();
}

id sub_559448()
{
  v1 = sub_BD88(&qword_94F6F0, &unk_7946A8);
  __chkstk_darwin(v1);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews] = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView(0);
  sub_7667C0();
  sub_55B714();
  sub_767480();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView] = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  if (qword_93D438 != -1)
  {
    swift_once();
  }

  v3 = sub_75C9A0();
  v4 = sub_BE38(v3, qword_95ABB8);
  (*(*(v3 - 8) + 16))(&v0[v2], v4, v3);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_93C258 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v7 = sub_BE38(v6, qword_99A2F0);
  sub_163C10(v7, &v0[v5]);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform] = 0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  v9 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v10 = sub_760770();
  (*(*(v10 - 8) + 104))(&v0[v8], v9, v10);
  v13.receiver = v0;
  v13.super_class = type metadata accessor for LockupMediaView(0);
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v11;
}

void (*sub_559700(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_559754;
}

void sub_559754(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_55CCB0(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_2630C();
        v10 = v4;
        v11 = sub_76A1C0();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_55A7A8();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_55CCB0(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_2630C();
      v16 = v4;
      v17 = sub_76A1C0();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_55A7A8();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

double *sub_5599F0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
  }

  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView);
  if (v4)
  {
    v5 = v4;
    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
  }

  v6 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    sub_2630C();

    v8 = sub_76A850();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_76A960();
    sub_2630C();
    v8 = v7;
  }

  sub_10A0A0(v8);
  return _swiftEmptyArrayStorage;
}

void sub_559BA0()
{
  v1 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v18 = v0;
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    v6 = sub_76A860();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;

    swift_beginAccess();
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_76A770();
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      sub_163C10(v18 + v7, v3);
      v11 = &v10[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      sub_163BAC(v3, v11);
      swift_endAccess();
      v12 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
      v13 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      sub_75CD10();

      v14 = *&v10[v12];
      v15 = *(v11 + 48);
      v16 = v14;
      v17 = v15;
      sub_75CD00();

      [v10 setNeedsLayout];
      sub_161D14(v3);
    }

    while (v6 != v8);
  }
}

void sub_559DA4()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 >> 62)
  {
    v7 = sub_76A860();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
    v20 = v6 & 0xC000000000000001;
    v21 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform;

    swift_beginAccess();
    v9 = 0;
    do
    {
      if (v20)
      {
        v10 = sub_76A770();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      *&v10[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform] = *(v1 + v21);
      swift_retain_n();

      sub_4FD578();

      sub_163C10(v1 + v8, v4);
      v12 = &v11[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      sub_163BAC(v4, v12);
      swift_endAccess();
      v13 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
      v14 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      sub_75CD10();

      v15 = *&v11[v13];
      v16 = *(v12 + 48);
      v17 = v15;
      v18 = v16;
      sub_75CD00();

      [v11 setNeedsLayout];
      sub_161D14(v4);
    }

    while (v7 != v9);
  }
}

uint64_t sub_559FF0()
{
  v16 = sub_7664F0();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75C9A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75C9D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LockupMediaView(0);
  v17.receiver = v0;
  v17.super_class = v12;
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v13 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v13], v4);
  v14 = sub_5599F0();
  sub_1418B8(v14);

  sub_75C9B0();
  [v0 bounds];
  sub_75C940();
  (*(v1 + 8))(v3, v16);
  return (*(v9 + 8))(v11, v8);
}

double sub_55A2B0(double a1, double a2)
{
  v3 = v2;
  v4 = sub_75C9D0();
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  __chkstk_darwin(v4);
  v48 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_760770();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75C930();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v41 = &v38 - v13;
  v14 = sub_75C9A0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  v40 = &v38 - v19;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  swift_beginAccess();
  v22 = *(v15 + 16);
  v22(v20, v3 + v21, v14);
  v39 = v14;
  v22(v17, v3 + v21, v14);
  sub_75C950();
  v23 = *(v15 + 8);
  v43 = v15 + 8;
  v44 = v23;
  v23(v17, v14);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  v38 = v3;
  swift_beginAccess();
  v25 = v3 + v24;
  v26 = v42;
  v27 = v45;
  (*(v7 + 16))(v42, v25, v45);

  sub_558B9C(v28, v26, v41);

  (*(v7 + 8))(v26, v27);
  (*(v46 + 8))(v11, v47);
  v29 = v40;
  sub_75C960();
  v30 = v39;
  v22(v17, v29, v39);
  v31 = sub_5599F0();
  sub_1418B8(v31);

  v32 = v48;
  sub_75C9B0();
  sub_55CCB0(&qword_95AC48, &type metadata accessor for LockupMediaLayout, &protocol conformance descriptor for LockupMediaLayout);
  v33 = v32;
  v34 = v49;
  sub_7665A0();
  v36 = v35;
  (*(v50 + 8))(v33, v34);
  v44(v29, v30);
  return v36;
}

void sub_55A7A8()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75C930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75C9A0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView])
  {

    sub_55AE40();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v14 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, &v1[v14], v9);
    sub_75C950();
    (*(v10 + 8))(v12, v9);
    v15 = sub_75C920();
    (*(v6 + 8))(v8, v5);
    if (__OFSUB__(v15, 1))
    {
      goto LABEL_32;
    }

    v16 = (v15 - 1) & ~((v15 - 1) >> 63);
  }

  else
  {
    v17 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, &v1[v17], v9);
    sub_75C950();
    (*(v10 + 8))(v12, v9);
    v16 = sub_75C920();
    (*(v6 + 8))(v8, v5);
  }

  v18 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  v36 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v20 = *&v1[v18];
        if (v20 >> 62)
        {
          if (sub_76A860() == v16)
          {
            return;
          }
        }

        else if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)) == v16)
        {
          return;
        }

        v21 = *&v1[v18];
        if (!(v21 >> 62))
        {
          break;
        }

        if (sub_76A860() >= v16)
        {
          goto LABEL_21;
        }

LABEL_15:
        swift_beginAccess();
        sub_BD88(&qword_94F708, &unk_7946C0);
        sub_767450();
        swift_endAccess();
        v22 = v37;
        *&v37[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform] = *&v1[v36];
        swift_retain_n();

        sub_4FD578();

        sub_163C10(&v1[v19], v4);
        v23 = &v22[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration];
        swift_beginAccess();
        sub_163BAC(v4, v23);
        swift_endAccess();
        v24 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
        v25 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
        sub_75CD10();

        v26 = *&v22[v24];
        v27 = *(v23 + 48);
        v28 = v26;
        v29 = v27;
        sub_75CD00();

        [v22 setNeedsLayout];
        sub_161D14(v4);
        swift_beginAccess();
        v30 = v22;
        sub_769440();
        if (*(&dword_10 + (*&v1[v18] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v1[v18] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        swift_endAccess();
        [v1 addSubview:v30];
      }

      if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)) < v16)
      {
        goto LABEL_15;
      }

LABEL_21:
      swift_beginAccess();
      v31 = *&v1[v18];
      if (!(v31 >> 62))
      {
        break;
      }

      if (sub_76A860())
      {
        goto LABEL_23;
      }

LABEL_10:
      swift_endAccess();
    }

    if (!*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_10;
    }

LABEL_23:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v1[v18] = v31;
    if (v31 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v31 = sub_45EDF0();
    }

    v33 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
    if (!v33)
    {
      break;
    }

    v34 = v33 - 1;
    v35 = *(&stru_20.cmd + 8 * v34 + (v31 & 0xFFFFFFFFFFFFFF8));
    *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) = v34;
    *&v1[v18] = v31;
    swift_endAccess();
    v37 = v35;
    swift_beginAccess();
    sub_BD88(&qword_94F708, &unk_7946C0);
    sub_767470();
    swift_endAccess();
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

id sub_55AE00@<X0>(void *a1@<X8>)
{
  type metadata accessor for BorderedScreenshotView(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_55AE40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;

    return;
  }

  v4 = sub_76A860();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v9 = v2;

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      swift_beginAccess();
      sub_BD88(&qword_94F708, &unk_7946C0);
      sub_767470();
      swift_endAccess();
      v8 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      sub_759190();
    }

    while (v4 != v5);

    v2 = v9;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_55AFC4(__n128 a1)
{
  v2 = v1;
  v3 = sub_760770();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_55AE40();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + qword_9405B8);
    if (v9)
    {
      aBlock[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_509F0;
      aBlock[3] = &unk_896FB8;
      v10 = _Block_copy(aBlock);
      v11 = v9;
      [v11 exitFullScreenAnimated:0 completionHandler:v10];
      _Block_release(v10);
    }

    v12 = *&v8[qword_9405B0];
    if (v12)
    {
      v13 = v12;
      sub_7599D0();

      v8 = v13;
    }
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_55CCB0(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v16 = [v15 superview];
    if (!v16)
    {
LABEL_12:

      goto LABEL_13;
    }

    v17 = v16;
    sub_2630C();
    v18 = v2;
    v19 = sub_76A1C0();

    if (v19)
    {
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v15 = v20;
        [v20 removeFromSuperview];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    [v2 addSubview:v21];
  }

  sub_55A7A8();
  [v2 setNeedsLayout];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
  v24 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
  if (v24)
  {
    [v24 removeFromSuperview];
    v25 = *&v2[v23];
  }

  else
  {
    v25 = 0;
  }

  *&v2[v23] = 0;

  [v2 setNeedsLayout];
  (*(v4 + 104))(v6, enum case for ScreenshotsDisplayStyle.standard(_:), v3);
  v26 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v4 + 24))(&v2[v26], v6, v3);
  swift_endAccess();
  [v2 setNeedsLayout];
  return (*(v4 + 8))(v6, v3);
}

id sub_55B36C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupMediaView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LockupMediaView(uint64_t a1)
{
  result = qword_95AC08;
  if (!qword_95AC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_55B540(uint64_t a1)
{
  sub_55B6A4(319);
  if (v1 <= 0x3F)
  {
    sub_75C9A0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ScreenshotDisplayConfiguration(319);
      if (v3 <= 0x3F)
      {
        sub_760770();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_55B6A4(uint64_t a1)
{
  if (!qword_94F6E8)
  {
    sub_133D8(&qword_94F6F0, &unk_7946A8);
    sub_55B714();
    v1 = sub_767490();
    if (!v2)
    {
      atomic_store(v1, &qword_94F6E8);
    }
  }
}

unint64_t sub_55B714()
{
  result = qword_94F6F8;
  if (!qword_94F6F8)
  {
    sub_133D8(&qword_94F6F0, &unk_7946A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F6F8);
  }

  return result;
}

void sub_55B788(void *a1)
{
  sub_55CB74();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 addSubview:Strong];
  }

  sub_55A7A8();
  [v1 setNeedsLayout];
}

uint64_t (*sub_55B818(uint64_t **a1))()
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
  v2[4] = sub_559700(v2);
  return sub_21028;
}

uint64_t sub_55B888(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_55B8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_55B948(uint64_t *a1, uint64_t a2))()
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

double *sub_55BABC(unint64_t a1, double *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v9 = sub_765750();
  if (v9 >> 62)
  {
    v24 = v9;
    v25 = sub_76A860();
    v9 = v24;
    if (v25)
    {
      goto LABEL_4;
    }
  }

  else if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_4:
    if ((v9 & 0xC000000000000001) != 0)
    {
      sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    sub_764BC0();

    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v5 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      sub_7694C0();
    }

    sub_769500();

LABEL_10:
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a1)
  {
LABEL_11:
    v10 = sub_7596A0();
    sub_10A1E8(v10);
  }

LABEL_12:
  v11 = _swiftEmptyArrayStorage;
  if (a4)
  {
    return v11;
  }

  a1 = _swiftEmptyArrayStorage >> 62;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (sub_76A860() <= a3)
    {
      return v11;
    }
  }

  else if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) <= a3)
  {
    return v11;
  }

  if (a3 < 0)
  {
    goto LABEL_49;
  }

  if (a1)
  {
    if (_swiftEmptyArrayStorage < 0)
    {
      a4 = _swiftEmptyArrayStorage;
    }

    else
    {
      a4 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_76A860() < 0)
    {
      goto LABEL_51;
    }

    v12 = sub_76A860();
  }

  else
  {
    v12 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  }

  if (v12 < a3)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0 || !a3)
  {

    if (!a1)
    {
      goto LABEL_29;
    }

LABEL_32:

    a4 = sub_76A870();
    a1 = v16;
    a3 = v17;
    if (v17)
    {
      goto LABEL_34;
    }

LABEL_33:
    sub_4A5FC4(a4, v15, a1, a3);
    v19 = v18;

LABEL_40:
    swift_unknownObjectRelease();
    return v19;
  }

  sub_765390();

  v13 = 0;
  do
  {
    v14 = v13 + 1;
    sub_76A750(v13);
    v13 = v14;
  }

  while (a3 != v14);
  if (a1)
  {
    goto LABEL_32;
  }

LABEL_29:
  a4 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
  v15 = (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 32;
  a3 = (2 * a3) | 1;
  if ((a3 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_34:
  v5 = v15;
  sub_76A970();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = _swiftEmptyArrayStorage;
  }

  v21 = *(v20 + 2);

  if (__OFSUB__(a3 >> 1, a1))
  {
    goto LABEL_52;
  }

  if (v21 != (a3 >> 1) - a1)
  {
LABEL_53:
    swift_unknownObjectRelease();
    v15 = v5;
    goto LABEL_33;
  }

  v22 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  v11 = v22;
  if (!v22)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  return v11;
}

uint64_t sub_55BE04(uint64_t a1)
{
  v2 = sub_758720();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_95AC30, &qword_7A4E70);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_BD88(&qword_95AC38, qword_7A4E78);
  __chkstk_darwin(v7 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = ASKDeviceTypeGetCurrent();
  v16 = sub_769240();
  v18 = v17;
  if (v16 == sub_769240() && v18 == v19)
  {

LABEL_9:
    v22 = 0;
    return v22 & 1;
  }

  v21 = sub_76A950();

  v22 = 0;
  if ((v21 & 1) == 0)
  {
    if (a1)
    {
      sub_75A300();
      v23 = v36;
      v24 = *(v36 + 56);
      v24(v14, 0, 1, v2);
    }

    else
    {
      v23 = v36;
      v24 = *(v36 + 56);
      v24(v14, 1, 1, v2);
    }

    (*(v23 + 104))(v11, enum case for AppPlatform.watch(_:), v2);
    v24(v11, 0, 1, v2);
    v26 = *(v4 + 48);
    sub_1ED18(v14, v6, &qword_95AC38, qword_7A4E78);
    sub_1ED18(v11, &v6[v26], &qword_95AC38, qword_7A4E78);
    v27 = *(v23 + 48);
    if (v27(v6, 1, v2) == 1)
    {
      sub_10A2C(v11, &qword_95AC38, qword_7A4E78);
      sub_10A2C(v14, &qword_95AC38, qword_7A4E78);
      if (v27(&v6[v26], 1, v2) == 1)
      {
        sub_10A2C(v6, &qword_95AC38, qword_7A4E78);
        goto LABEL_9;
      }
    }

    else
    {
      v28 = v35;
      sub_1ED18(v6, v35, &qword_95AC38, qword_7A4E78);
      if (v27(&v6[v26], 1, v2) != 1)
      {
        v29 = v34;
        (*(v23 + 32))(v34, &v6[v26], v2);
        sub_55CCB0(&qword_95AC40, &type metadata accessor for AppPlatform, &protocol conformance descriptor for AppPlatform);
        v30 = v28;
        v31 = sub_7691C0();
        v32 = *(v23 + 8);
        v32(v29, v2);
        sub_10A2C(v11, &qword_95AC38, qword_7A4E78);
        sub_10A2C(v14, &qword_95AC38, qword_7A4E78);
        v32(v30, v2);
        sub_10A2C(v6, &qword_95AC38, qword_7A4E78);
        v22 = v31 ^ 1;
        return v22 & 1;
      }

      sub_10A2C(v11, &qword_95AC38, qword_7A4E78);
      sub_10A2C(v14, &qword_95AC38, qword_7A4E78);
      (*(v23 + 8))(v28, v2);
    }

    sub_10A2C(v6, &qword_95AC30, &qword_7A4E70);
    v22 = 1;
  }

  return v22 & 1;
}

uint64_t sub_55C32C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_760770();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_95AC28, &unk_7A4E60);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = sub_BD88(&unk_94DF00, &unk_792100);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  if ((sub_55BE04(a1) & 1) == 0)
  {
    v20 = 0;
    return v20 & 1;
  }

  (*(v6 + 104))(v17, enum case for ScreenshotsDisplayStyle.fourScreenshots(_:), v5);
  (*(v6 + 56))(v17, 0, 1, v5);
  v18 = *(v9 + 48);
  sub_1ED18(a2, v11, &unk_94DF00, &unk_792100);
  sub_1ED18(v17, &v11[v18], &unk_94DF00, &unk_792100);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) != 1)
  {
    sub_1ED18(v11, v14, &unk_94DF00, &unk_792100);
    if (v19(&v11[v18], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v11[v18], v5);
      sub_55CCB0(&qword_954EE8, &type metadata accessor for ScreenshotsDisplayStyle, &protocol conformance descriptor for ScreenshotsDisplayStyle);
      v20 = sub_7691C0();
      v21 = *(v6 + 8);
      v21(v8, v5);
      sub_10A2C(v17, &unk_94DF00, &unk_792100);
      v21(v14, v5);
      sub_10A2C(v11, &unk_94DF00, &unk_792100);
      return v20 & 1;
    }

    sub_10A2C(v17, &unk_94DF00, &unk_792100);
    (*(v6 + 8))(v14, v5);
    goto LABEL_8;
  }

  sub_10A2C(v17, &unk_94DF00, &unk_792100);
  if (v19(&v11[v18], 1, v5) != 1)
  {
LABEL_8:
    sub_10A2C(v11, &qword_95AC28, &unk_7A4E60);
    v20 = 0;
    return v20 & 1;
  }

  sub_10A2C(v11, &unk_94DF00, &unk_792100);
  v20 = 1;
  return v20 & 1;
}

void sub_55C724(objc_class *a1, uint64_t a2)
{
  v4 = sub_5599F0();
  if (v4 >> 62)
  {
    v16 = v4;
    v17 = sub_76A860();
    v4 = v16;
    if (v17 > a2)
    {
LABEL_3:
      v5 = &v4[a2];
      v6 = v4 & 0xC000000000000001;
      if ((v4 & 0xC000000000000001) == 0)
      {
        if (a2 < 0)
        {
          __break(1u);
        }

        else if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) > a2)
        {
          v7 = *(v5 + 4);
          goto LABEL_7;
        }

        __break(1u);
        return;
      }

      v7 = sub_76A770();
LABEL_7:
      v18 = v7;
      type metadata accessor for VideoView(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;

        v10 = qword_940590;
        v11 = [*(v9 + qword_940590) layer];
        [v11 removeAllAnimations];

        [*(v9 + v10) setImage:a1];
      }

      else
      {

        if (v6)
        {
          v12 = sub_76A770();
        }

        else
        {
          v12 = *(v5 + 4);
        }

        v18 = v12;

        type metadata accessor for BorderedScreenshotView(0);
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          goto LABEL_15;
        }

        v10 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
        v9 = v13;
        v14 = *(v13 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        sub_7591D0(v20, v15);
      }

      [*(v9 + v10) setNeedsDisplay];
LABEL_15:

      return;
    }
  }

  else if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    goto LABEL_3;
  }
}

void sub_55C924()
{
  v1 = sub_BD88(&qword_94F6F0, &unk_7946A8);
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews) = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView(0);
  sub_7667C0();
  sub_55B714();
  sub_767480();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  if (qword_93D438 != -1)
  {
    swift_once();
  }

  v3 = sub_75C9A0();
  v4 = sub_BE38(v3, qword_95ABB8);
  (*(*(v3 - 8) + 16))(v0 + v2, v4, v3);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_93C258 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v7 = sub_BE38(v6, qword_99A2F0);
  sub_163C10(v7, v0 + v5);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform) = 0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  v9 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v10 = sub_760770();
  (*(*(v10 - 8) + 104))(v0 + v8, v9, v10);
  sub_76A840();
  __break(1u);
}

void sub_55CB74()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_55CCB0(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_2630C();
      v4 = v0;
      v5 = sub_76A1C0();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }
}

double sub_55CC98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_55CCB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_55CCF8()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_baseGradientView;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_baseGradientView] removeFromSuperview];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientView;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientView] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView] removeFromSuperview];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_bottomRightOverlayView;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_bottomRightOverlayView] removeFromSuperview];
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  [v2 setBackgroundColor:v7];

  v8 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors;
  v9 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors];
  if (!(v9 >> 62))
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10 <= 2)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        goto LABEL_42;
      }

      v6 = type metadata accessor for GradientView();
      v22 = [objc_allocWithZone(v6) init];
      v23 = *&v2[v3];
      *&v2[v3] = v22;
      v24 = v22;

      v5 = sub_BD88(&unk_93F5C0, &unk_77C600);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_77B6C0;
      v1 = *&v2[v8];
      if ((v1 & 0xC000000000000001) != 0)
      {

        v69 = sub_76A770();

        v26 = v69;
        v1 = *&v2[v8];
      }

      else
      {
        if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v26 = *(v1 + 32);
      }

      *(v25 + 32) = v26;
      if ((v1 & 0xC000000000000001) != 0)
      {

        v71 = sub_76A770();

        v27 = v71;
      }

      else
      {
        if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)) < 2uLL)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v27 = *(v1 + 40);
      }

      *(v25 + 40) = v27;
      *&v24[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v25;

      sub_4AC204();

      v28 = *&v2[v3];
      v1 = &selRef_absoluteDimension_;
      v29 = [v28 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

      v30 = *&v2[v3];
      v31 = [v30 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_77B6C0;
      v32 = *&v2[v8];
      if ((v32 & 0xC000000000000001) != 0)
      {
        goto LABEL_56;
      }

      if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
      {
        v33 = *(v32 + 48);
LABEL_28:
        *(v5 + 32) = v33;
        if ((v32 & 0xC000000000000001) != 0)
        {
LABEL_61:

          v74 = sub_76A770();

          v34 = v74;
          goto LABEL_31;
        }

        if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)) >= 4uLL)
        {
          v34 = *(v32 + 56);
LABEL_31:
          *(v5 + 40) = v34;
          v35 = [objc_allocWithZone(v6) init];
          *&v35[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v5;

          sub_4AC204();
          sub_4AC060(&off_87DBF0);
          v36 = v35;
          v37 = [v36 *(v1 + 8)];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

          v38 = [v36 *(v1 + 8)];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

          v39 = [v36 *(v1 + 8)];
          [v39 setMask:0];

          v40 = *&v2[v4];
          *&v2[v4] = v36;

          sub_55DA38();
          [v2 addSubview:*&v2[v3]];
          [v2 addSubview:{*&v2[v4], v75}];
          goto LABEL_42;
        }

LABEL_64:
        __break(1u);
        return;
      }

      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v77 = type metadata accessor for GradientView();
    v41 = [objc_allocWithZone(v77) init];
    v42 = *&v2[v3];
    *&v2[v3] = v41;
    v43 = v41;

    sub_BD88(&unk_93F5C0, &unk_77C600);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_77B6C0;
    v44 = *&v2[v8];
    if ((v44 & 0xC000000000000001) != 0)
    {

      v75 = sub_76A770();

      v45 = v75;
      v44 = *&v2[v8];
    }

    else
    {
      if (*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
LABEL_55:
        __break(1u);
LABEL_56:

        v73 = sub_76A770();

        v33 = v73;
        v32 = *&v2[v8];
        goto LABEL_28;
      }

      v45 = *(v44 + 40);
    }

    *(v1 + 32) = v45;
    if ((v44 & 0xC000000000000001) != 0)
    {

      v72 = sub_76A770();

      v46 = v72;
    }

    else
    {
      if (*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)) < 3uLL)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v46 = *(v44 + 48);
    }

    *(v1 + 40) = v46;
    *&v43[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v1;

    sub_4AC204();

    v47 = *&v2[v3];
    v48 = [v47 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

    v49 = *&v2[v3];
    v50 = [v49 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

    v51 = [objc_allocWithZone(v77) init];
    v52 = *&v2[v4];
    *&v2[v4] = v51;
    v53 = v51;

    v54 = *&v2[v8];
    if ((v54 & 0xC000000000000001) != 0)
    {

      v56 = sub_76A770();

      v57 = &selRef_absoluteDimension_;
      v55 = &selRef_setSpeed_;
    }

    else
    {
      v55 = &selRef_setSpeed_;
      if (!*(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_63;
      }

      v56 = *(v54 + 32);
      v57 = &selRef_absoluteDimension_;
    }

    [v53 v55[457]];

    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_77B6C0;
    *(v58 + 32) = [v6 clearColor];
    v59 = [v6 blackColor];
    v60 = [v59 colorWithAlphaComponent:0.2];

    *(v58 + 40) = v60;
    v61 = [objc_allocWithZone(v77) init];
    *&v61[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v58;

    sub_4AC204();
    sub_4AC060(&off_87DBC0);
    v62 = v61;
    v63 = [v62 v57[1]];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

    v64 = [v62 v57[1]];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

    v65 = [v62 v57[1]];
    [v65 setMask:0];

    v66 = *&v2[v5];
    *&v2[v5] = v62;

    v67 = *&v2[v4];
    [v67 addSubview:v62];

    sub_55DA38();
    [v2 addSubview:*&v2[v3]];
    [v2 addSubview:{*&v2[v4], v76}];
    goto LABEL_42;
  }

  v10 = sub_76A860();
  if (v10 > 2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v10 == 1)
  {
    v20 = *&v2[v8];
    if ((v20 & 0xC000000000000001) != 0)
    {

      v21 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v21 = *(v20 + 32);
    }

    [v2 setBackgroundColor:v21];

    goto LABEL_42;
  }

  if (v10 == 2)
  {
    v11 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
    v12 = *&v2[v3];
    *&v2[v3] = v11;
    v13 = v11;

    sub_BD88(&unk_93F5C0, &unk_77C600);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_77B6C0;
    v5 = *&v2[v8];
    if ((v5 & 0xC000000000000001) != 0)
    {

      v68 = sub_76A770();

      v14 = v68;
      v5 = *&v2[v8];
      goto LABEL_8;
    }

    if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) >= 2uLL)
    {
      v14 = *(v5 + 40);
LABEL_8:
      *(v6 + 32) = v14;
      if ((v5 & 0xC000000000000001) != 0)
      {

        v70 = sub_76A770();

        v15 = v70;
        goto LABEL_11;
      }

      if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        v15 = *(v5 + 32);
LABEL_11:
        *(v6 + 40) = v15;
        *&v13[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v6;

        sub_4AC204();

        v16 = *&v2[v3];
        v17 = [v16 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

        v18 = *&v2[v3];
        v19 = [v18 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

        [v2 addSubview:{*&v2[v3], v75}];
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_42:
  [v2 setNeedsLayout];

  [v2 setNeedsDisplay];
}

void sub_55D954(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors) = a1;

  v5 = sub_11724C(v4, v3);

  if ((v5 & 1) == 0)
  {
    v6 = *(v1 + v2);
    if (v6 >> 62)
    {
      if (!sub_76A860())
      {
        return;
      }
    }

    else if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      return;
    }

    v7 = *(&stru_B8.reloff + (swift_isaMask & *v1));

    v7();
  }
}

void sub_55DA38()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors);
  if (v2 >> 62)
  {
    if (sub_76A860() < 3)
    {
      return;
    }
  }

  else if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)) < 3)
  {
    return;
  }

  sub_BD88(&unk_93F5C0, &unk_77C600);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_77B6C0;
  v4 = objc_opt_self();
  *(v3 + 32) = [v4 clearColor];
  *(v3 + 40) = [v4 whiteColor];
  v5 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v3;

  sub_4AC204();
  sub_4AC060(&off_87DB90);
  v6 = v5;
  v7 = [v6 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

  v8 = [v6 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.0, 1.0}];

  v9 = [v6 layer];
  [v9 setMask:0];

  v10 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView;
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView) = v6;

  v12 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientView) layer];
  v13 = [*(v1 + v10) layer];
  [v12 setMask:v13];
}

id sub_55DCE0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors] = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_baseGradientView;
  v10 = type metadata accessor for GradientView();
  *&v4[v9] = [objc_allocWithZone(v10) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientView;
  *&v4[v11] = [objc_allocWithZone(v10) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView;
  *&v4[v12] = [objc_allocWithZone(v10) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_bottomRightOverlayView;
  *&v4[v13] = [objc_allocWithZone(v10) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for MultiCornerGradientView();
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 layer];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setRasterizationScale:v18];
  return v14;
}

void sub_55DEAC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MultiCornerGradientView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_baseGradientView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientView];
  [v0 bounds];
  [v2 setFrame:?];

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView];
  [v0 bounds];
  [v3 setFrame:?];

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_bottomRightOverlayView];
  [v0 bounds];
  [v4 setFrame:?];
}

id sub_55E000()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiCornerGradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_55E0D4()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_baseGradientView;
  v2 = type metadata accessor for GradientView();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientView;
  *(v0 + v3) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView;
  *(v0 + v4) = [objc_allocWithZone(v2) init];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_bottomRightOverlayView;
  *(v0 + v5) = [objc_allocWithZone(v2) init];
  sub_76A840();
  __break(1u);
}

uint64_t sub_55E1C8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_55E228(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C830();
  v9 = sub_7575D0();
  (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      if (a1)
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 8);
        v14 = a1;
        v15 = v13(ObjectType, v11);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
          v18 = [Strong view];

          if (!v18)
          {
            __break(1u);
            return;
          }

          v19 = [v18 safeAreaLayoutGuide];

          [v19 layoutFrame];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v39.origin.x = v21;
          v39.origin.y = v23;
          v39.size.width = v25;
          v39.size.height = v27;
          MinY = CGRectGetMinY(v39);
        }

        else
        {
          MinY = 0.0;
        }

        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v31 = *&v29[qword_99A4C0];
          if (v31)
          {
            v32 = v15 - MinY;

            if (v32 == *(v31 + 32))
            {

              return;
            }

            *(v31 + 32) = v32;
            [a3 _systemContentInset];
            v34 = v33;
            [a3 contentOffset];
            v36 = v35;
            [a3 contentInset];
            (*(v31 + 16))(v34 + v36 + v37 > *(v31 + 32));
          }

          else
          {
          }
        }
      }
    }
  }
}