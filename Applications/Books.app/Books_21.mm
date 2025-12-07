uint64_t REActionMenuState.makeChapterScrubbingState()()
{
  v1 = v0;
  sub_10033BD60();
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10079B9A4(&v19);

  v4 = v19;
  v5 = v20;
  if (v20 == 1)
  {

    sub_10033BFCC(v6, v3);
  }

  else
  {
    sub_100009864(v0 + 80, &v19);

    v7 = sub_1007A0C44();
    if (!v7 || (v8 = v7, v9 = [v7 snapshotViewAfterScreenUpdates:0], v8, !v9))
    {
      v9 = [objc_allocWithZone(UIView) init];
    }

    v10 = sub_10022569C(&v19, v21);
    v11 = __chkstk_darwin(v10);
    v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;

    v16 = sub_100342C24(v15, v1, v3, v9);
    sub_100342F4C(v4, v5);
    sub_1000074E0(&v19);

    return v16;
  }

  return v4;
}

uint64_t sub_100339CA0()
{
  v1 = v0;
  swift_getKeyPath();
  v19 = v0;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  v2 = *(v0 + 328);
  v19 = v2;
  v18[2] = &v19;
  sub_1002B6C38(v2);
  v3 = sub_1005802C4(sub_100343BF0, v18, &off_100A0C228);
  swift_arrayDestroy();
  sub_1002B6C54(v2);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_getKeyPath();
      v19 = v1;
      sub_100797A14();

      v6 = *(v1 + 328);
      v7 = *&v5[OBJC_IVAR___BKEngagementManager_eventController];
      sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
      inited = swift_initStackObject();
      v9 = inited;
      *(inited + 16) = xmmword_10080B690;
      *(inited + 32) = 0x6E6F69746341;
      v10 = inited + 32;
      v11 = 1852141679;
      if (v6 != 0x8000000000000008)
      {
        v11 = 0x65736F6C63;
      }

      v12 = 0xE500000000000000;
      if (v6 == 0x8000000000000008)
      {
        v12 = 0xE400000000000000;
      }

      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v11;
      *(inited + 56) = v12;
      v13 = v7;
      sub_100019158(v9);
      swift_setDeallocating();
      sub_100007840(v10, &unk_100ADD560, &unk_10080CDC0);
      sub_10079E994();
    }
  }

  swift_getKeyPath();
  v19 = v1;
  sub_100797A14();

  if (*(v1 + 248) <= 0xBFu)
  {
    swift_getKeyPath();
    v19 = v1;
    sub_100797A14();

    v15 = 0;
    v16 = *(v1 + 248) >> 6;
    if (v16 > 1)
    {
      if (v16 != 2)
      {
LABEL_15:
        v14 = (v15 & 1) == 0;
        goto LABEL_16;
      }
    }

    else if (!v16)
    {
      goto LABEL_15;
    }

    v15 = *(v1 + 248);
    goto LABEL_15;
  }

  swift_getKeyPath();
  v19 = v1;
  sub_100797A14();

  v14 = *(v1 + 328) == 0x8000000000000000;
LABEL_16:
  LOBYTE(v19) = v14;
  return sub_10079B914();
}

unint64_t REActionMenuState.state.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  v1 = *(v0 + 328);
  sub_1002B6C38(v1);
  return v1;
}

double sub_10033A0A4(unint64_t a1)
{
  v3 = *(v1 + 328);
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      if (a1 >> 62 == 1)
      {
        sub_1002B6C38(*(v1 + 328));
        v4 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        v5 = a1 & 0x3FFFFFFFFFFFFFFFLL;
        goto LABEL_7;
      }
    }

    else
    {
      v9 = __ROR8__(v3 ^ 0x8000000000000000, 3);
      if (v9 <= 1)
      {
        if (v9)
        {
          if (a1 == 0x8000000000000008)
          {
            goto LABEL_8;
          }
        }

        else if (a1 == 0x8000000000000000)
        {
          goto LABEL_8;
        }
      }

      else if (v9 == 2)
      {
        if (a1 == 0x8000000000000010)
        {
          goto LABEL_8;
        }
      }

      else if (v9 == 3)
      {
        if (a1 == 0x8000000000000018)
        {
          goto LABEL_8;
        }
      }

      else if (a1 == 0x8000000000000020)
      {
        goto LABEL_8;
      }
    }

LABEL_24:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A04();
    sub_1002B6C54(a1);

    return result;
  }

  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  sub_1002B6C38(*(v1 + 328));
  v4 = v3;
  v5 = a1;
LABEL_7:
  v6 = _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(v4, v5);
  sub_1002B6C54(v3);
  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_8:
  sub_1003394E8(a1);
  v7 = *(v1 + 328);
  *(v1 + 328) = a1;
  sub_1002B6C38(a1);
  sub_1002B6C54(v7);
  sub_100339CA0();

  return sub_1002B6C54(a1);
}

uint64_t sub_10033A2E0(uint64_t a1, unint64_t a2)
{
  sub_1003394E8(a2);
  v4 = *(a1 + 328);
  *(a1 + 328) = a2;
  sub_1002B6C38(a2);
  sub_1002B6C54(v4);
  return sub_100339CA0();
}

void REActionMenuState.isScrubbing.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 352) == v2)
  {
    *(v1 + 352) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A04();
  }
}

uint64_t sub_10033A45C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    v3 = *(v2 + 281);

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void REActionMenuState.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 336);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1007A35E4();
    sub_10079B884();
    sub_100342F78(&qword_100AE1500, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    sub_1007A2864();
    v4 = v20;
    v3 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_10004DC54(v4);

      *(v1 + 336) = &_swiftEmptySetSingleton;

      swift_unknownObjectRelease();
      sub_10002B130(v1 + 32);
      sub_10002B130(v1 + 48);
      sub_10002B130(v1 + 64);
      sub_1000074E0((v1 + 80));

      swift_unknownObjectWeakDestroy();
      sub_10002B130(v1 + 176);

      sub_100342F4C(*(v1 + 272), *(v1 + 280));

      sub_1002B6C54(*(v1 + 328));

      v17 = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
      v18 = sub_100797A54();
      (*(*(v18 - 8) + 8))(v1 + v17, v18);
      return;
    }

    while (1)
    {
      sub_10079B874();

      v6 = v14;
      v7 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1007A3654())
      {
        sub_10079B884();
        swift_dynamicCast();
        v14 = v6;
        v15 = v7;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t REActionMenuState.__deallocating_deinit()
{
  REActionMenuState.deinit();

  return swift_deallocClassInstance();
}

uint64_t REActionMenuState.isScrubbing.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  return *(v0 + 352);
}

uint64_t sub_10033A9A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  result = swift_beginAccess();
  *a2 = *(v3 + 352);
  return result;
}

uint64_t (*REActionMenuState.isScrubbing.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  *v4 = v1;
  swift_getKeyPath();
  sub_100797A34();

  v4[7] = sub_10033A8A4(v4);
  return sub_10033ABC4;
}

void sub_10033ABD0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_100797A24();

  free(v3);
}

Swift::Bool __swiftcall REActionMenuState.isPageScrubbing()()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  return *(v0 + 280) == 0;
}

uint64_t REActionMenuState.chapterScrubbingState.getter()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (*(v0 + 280) == 1)
  {
  }

  swift_getKeyPath();
  sub_100797A14();

  if (!(*(v0 + 328) >> 62))
  {
  }

  swift_getKeyPath();
  sub_100797A14();

  if (*(v0 + 328) >> 62 == 1)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10033AE54()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  v2 = *(v0 + 216);
  if (v2 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {
    return 0;
  }

  swift_getKeyPath();
  sub_100797A14();

  v3 = *(v0 + 256);
  if (v3 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {
    return 0;
  }

  sub_10000E3E8((v1 + 80), *(v1 + 104));
  return BookActionMenuDataSource.pagesRemainingInChapterString(afterPage:)(v2).value._countAndFlagsBits;
}

void REActionMenuState.transition(to:)(unint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  v4 = *(v1 + 328);
  if (v4 >> 62)
  {
    if (v4 >> 62 == 1)
    {
      if (a1 >> 62 == 1)
      {
        sub_1002B6C38(*(v2 + 328));
        v5 = v4 & 0x3FFFFFFFFFFFFFFFLL;
        v6 = a1 & 0x3FFFFFFFFFFFFFFFLL;
        goto LABEL_7;
      }
    }

    else
    {
      v8 = __ROR8__(v4 ^ 0x8000000000000000, 3);
      if (v8 <= 1)
      {
        if (v8)
        {
          if (a1 == 0x8000000000000008)
          {
            return;
          }
        }

        else if (a1 == 0x8000000000000000)
        {
          return;
        }
      }

      else if (v8 == 2)
      {
        if (a1 == 0x8000000000000010)
        {
          return;
        }
      }

      else if (v8 == 3)
      {
        if (a1 == 0x8000000000000018)
        {
          return;
        }
      }

      else if (a1 == 0x8000000000000020)
      {
        return;
      }
    }
  }

  else if (!(a1 >> 62))
  {
    sub_1002B6C38(*(v2 + 328));
    v5 = v4;
    v6 = a1;
LABEL_7:
    v7 = _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(v5, v6);
    sub_1002B6C54(v4);
    if (v7)
    {
      return;
    }

    goto LABEL_23;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v9 = 0;
LABEL_24:
    swift_getKeyPath();
    sub_100797A14();

    if (a1 == 0x8000000000000000 && *(v2 + 248) <= 0xBFu)
    {
      v10 = *(v2 + 240);
      swift_getKeyPath();
      sub_100797A14();

      v11 = *(v2 + 328);
      if (!(v11 >> 62) || (v11 & 0xC000000000000000) == 0x4000000000000000)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_100797A04();

        swift_beginAccess();
        if (*(v2 + 216) == v10)
        {
          sub_100334D1C();
        }

        else
        {
          v14 = swift_getKeyPath();
          __chkstk_darwin(v14);
          v35 = v2;
          sub_100797A04();
        }
      }
    }

    sub_1002B6C38(a1);
    sub_10033A0A4(a1);
    if (!v9)
    {
      goto LABEL_40;
    }

    v15 = __ROR8__(a1 & 0x7FFFFFFFFFFFFFFFLL, 3);
    if (v15 <= 1)
    {
      if (v15)
      {
        if (*(v2 + 280) >= 2u)
        {
          sub_100343518(0, 2);
        }

        else
        {
          v29 = swift_getKeyPath();
          __chkstk_darwin(v29);
          v35 = v2;
          sub_100797A04();
        }

        if (*(v2 + 304) != 0.0)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (*(v2 + 280) >= 2u)
        {
          sub_100343518(0, 2);
        }

        else
        {
          v28 = swift_getKeyPath();
          __chkstk_darwin(v28);
          v35 = v2;
          sub_100797A04();
        }

        if (*(v2 + 304) != 0.0)
        {
          goto LABEL_72;
        }
      }

      goto LABEL_48;
    }

    if (v15 == 2)
    {
LABEL_40:
      if (qword_100AD1440 != -1)
      {
        swift_once();
      }

      v17 = sub_10079ACE4();
      sub_100008B98(v17, qword_100ADC838);
      sub_1002B6C38(a1);
      v18 = sub_10079ACC4();
      v19 = sub_1007A29B4();
      sub_1002B6C54(a1);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v35 = v21;
        *v20 = 136315138;
        v22 = ActionMenuState.description.getter(a1);
        v24 = sub_1000070F4(v22, v23, &v35);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Cannot transition directly to %s", v20, 0xCu);
        sub_1000074E0(v21);
      }

      if (*(v2 + 280) >= 2u)
      {
        sub_100343518(0, 2);
      }

      else
      {
        v25 = swift_getKeyPath();
        __chkstk_darwin(v25);
        v35 = v2;
        sub_100797A04();
      }

      if (*(v2 + 304) != 0.0)
      {
        v27 = swift_getKeyPath();
        __chkstk_darwin(v27);
        v35 = v2;
LABEL_52:
        sub_100797A04();

        return;
      }

      goto LABEL_48;
    }

    if (v15 == 3)
    {
      v16 = REActionMenuState.makeChapterScrubbingState()();

      if (*(v2 + 280) == 1)
      {
        sub_100343518(v16, 1);
        sub_100342F4C(v16, 1);
      }

      else
      {
        v33 = swift_getKeyPath();
        __chkstk_darwin(v33);
        v35 = v2;
        sub_100797A04();
        sub_100342F4C(v16, 1);
      }

      if (*(v2 + 304) != 0.0)
      {
LABEL_72:
        v34 = swift_getKeyPath();
        __chkstk_darwin(v34);
        v35 = v2;
        goto LABEL_52;
      }

LABEL_48:
      *(v2 + 304) = 0;
      return;
    }

    goto LABEL_49;
  }

  if (__ROR8__(a1 & 0x7FFFFFFFFFFFFFFFLL, 3) < 4uLL)
  {
    v9 = 1;
    goto LABEL_24;
  }

  v13 = swift_getKeyPath();
  __chkstk_darwin(v13);
  sub_100797A04();

LABEL_49:
  if (*(v2 + 280) >= 2u)
  {
    sub_100343518(0, 2);
  }

  else
  {
    v26 = swift_getKeyPath();
    __chkstk_darwin(v26);
    v35 = v2;
    sub_100797A04();
  }

  if (*(v2 + 304) == 0.0)
  {
    *(v2 + 304) = 0;
  }

  else
  {
    v30 = swift_getKeyPath();
    __chkstk_darwin(v30);
    v35 = v2;
    sub_100797A04();
  }

  v31 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  (*(v31 + 24))(ObjectType, v31);
}

Swift::Int __swiftcall REActionMenuState.page(at:)(Swift::Double at)
{
  v2 = v1;
  swift_getKeyPath();
  v18 = v1;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  v4 = *(v1 + 256);
  if (v4 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {
    return 1;
  }

  sub_10000E3E8((v2 + 80), *(v2 + 104));
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = sub_10079F944();
    swift_unknownObjectRelease();
    v7 = __OFADD__(v6, 1);
    v5 = v6 + 1;
    if (!v7)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v5 = 0;
LABEL_8:
  if (qword_100AD1440 != -1)
  {
    swift_once();
  }

  v8 = sub_10079ACE4();
  sub_100008B98(v8, qword_100ADC838);
  v9 = sub_10079ACC4();
  v10 = sub_1007A29A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315394;
    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10080B690;
    *(v13 + 56) = &type metadata for Double;
    *(v13 + 64) = &protocol witness table for Double;
    *(v13 + 32) = at;
    v14 = sub_1007A2284();
    v16 = sub_1000070F4(v14, v15, &v18);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v9, v10, "scrubbing value %s is page %ld", v11, 0x16u);
    sub_1000074E0(v12);
  }

  return v5;
}

void sub_10033BD60()
{
  if (*(v0 + 168) != 1)
  {
    return;
  }

  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (*(v0 + 248) >= 0xC0u)
  {
    v1 = 0;
    goto LABEL_8;
  }

  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = __OFSUB__(v2, v3);
  v1 = v2 - v3;
  if (v4)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    v4 = __OFSUB__(0, v1);
    v1 = -v1;
    if (v4)
    {
      goto LABEL_19;
    }
  }

LABEL_8:
  v5 = v1 / 10;
  if (v5 >= 6)
  {
    v6 = 6;
  }

  else
  {
    v6 = v5;
  }

  swift_getKeyPath();
  sub_100797A14();

  v7 = (v0 + 216);
  swift_beginAccess();
  v8 = *(v0 + 216);
  swift_getKeyPath();
  sub_100797A14();

  if (*(v0 + 248) <= 0xBFu)
  {
    v7 = (v0 + 240);
  }

  else
  {
    swift_getKeyPath();
    sub_100797A14();
  }

  v9 = *v7;
  sub_10000E3E8((v0 + 80), *(v0 + 104));
  if (swift_weakLoadStrong())
  {
    sub_10079F714();
    swift_getObjectType();
    v10 = sub_10079F684();
    swift_unknownObjectRelease();

    v11 = v10 == 2;
  }

  else
  {
    v11 = 0;
  }

  sub_10000E3E8((v0 + 80), *(v0 + 104));
  v12 = BookActionMenuDataSource.isRightToLeft()();
  sub_100751F84(v8, v9, v6 + 1, v11, v12);
}

double sub_10033BFCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v51);

  v6 = v51[0];
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    sub_10033BD60();
    v7 = v8;
  }

  v9 = sub_1004A0FCC(v7, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v51[0] = v7;

  sub_10079B9B4();
  if (v9)
  {
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v10 = sub_10079ACE4();
    sub_100008B98(v10, qword_100ADC838);
    swift_retain_n();

    v11 = sub_10079ACC4();
    v12 = sub_1007A29A4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = -1;
      v14 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v51[0] = v48;
      *v14 = 136315906;
      v15 = sub_1007A25F4();
      v17 = v16;

      v18 = sub_1000070F4(v15, v17, v51);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2048;
      swift_getKeyPath();
      v52 = v3;
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A14();

      v19 = *(v3 + 232);
      LODWORD(v17) = *(v3 + 248);

      if (v17 >> 6 <= 2)
      {
        v13 = v19;
      }

      *(v14 + 14) = v13;

      *(v14 + 22) = 2048;
      swift_getKeyPath();
      v52 = v3;
      sub_100797A14();

      v20 = *(v3 + 240);
      v21 = *(v3 + 248);

      if (v21 >> 6 > 2)
      {
        v20 = -1;
      }

      *(v14 + 24) = v20;

      *(v14 + 32) = 2080;
      v22 = sub_1007A25F4();
      v24 = v23;

      v25 = sub_1000070F4(v22, v24, v51);

      *(v14 + 34) = v25;
      _os_log_impl(&_mh_execute_header, v11, v12, "reusing indeces: %s. start %ld endPage: %ld rejected newIndeces: %s", v14, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v27 = sub_10079ACE4();
    sub_100008B98(v27, qword_100ADC838);
    swift_retain_n();

    v28 = sub_10079ACC4();
    v29 = sub_1007A29A4();

    if (os_log_type_enabled(v28, v29))
    {
      LODWORD(v48) = v29;
      v30 = -1;
      v31 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51[0] = v47;
      *v31 = 136315906;
      v32 = sub_1007A25F4();
      v34 = v33;

      v35 = sub_1000070F4(v32, v34, v51);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2048;
      swift_getKeyPath();
      v52 = v3;
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A14();

      v36 = *(v3 + 232);
      LODWORD(v34) = *(v3 + 248);

      if (v34 >> 6 <= 2)
      {
        v30 = v36;
      }

      *(v31 + 14) = v30;

      *(v31 + 22) = 2048;
      swift_getKeyPath();
      v52 = v3;
      sub_100797A14();

      v37 = *(v3 + 240);
      v38 = *(v3 + 248);

      if (v38 >> 6 > 2)
      {
        v37 = -1;
      }

      *(v31 + 24) = v37;

      *(v31 + 32) = 2080;
      v39 = sub_1007A25F4();
      v41 = sub_1000070F4(v39, v40, v51);

      *(v31 + 34) = v41;
      _os_log_impl(&_mh_execute_header, v28, v48, "replacing indeces was: %s). start %ld endPage: %ld new: %s", v31, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v51[0] = v7;

    sub_10079B9B4();
    v42 = OBJC_IVAR____TtC5Books21ChapterScrubbingState_pageImageLoaders;
    swift_beginAccess();
    v43 = *(a1 + v42);
    v44 = *sub_10000E3E8((v3 + 80), *(v3 + 104));
    v51[3] = type metadata accessor for BookActionMenuDataSource();
    v51[4] = &off_100A19810;
    v50 = v43;
    v51[0] = v44;
    swift_bridgeObjectRetain_n();

    v49 = sub_100408F6C(v43);
    __chkstk_darwin(v49);
    v46[2] = &v50;
    v46[3] = &v49;
    v46[4] = v51;
    sub_1006D1368(sub_100343CC8, v46, v7);

    sub_100332178(v49, &v50);

    v45 = v50;
    sub_1000074E0(v51);

    *(a1 + v42) = v45;
  }

  return result;
}

uint64_t sub_10033C80C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v48) = a2;
  v57 = sub_1007A1C54();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1007A1CA4();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1007A1CC4();
  v51 = *(v58 - 8);
  __chkstk_darwin(v58);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v45 - v9;
  swift_getKeyPath();
  aBlock[0] = v2;
  v10 = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  v11 = *(v2 + 216);
  swift_getKeyPath();
  v59 = v10;
  aBlock[0] = v2;
  sub_100797A14();

  v12 = *(v2 + 256);
  v13 = 0.0;
  if (v12 >= 2 && a1 >= 1 && v12 >= a1)
  {
    v13 = (a1 - 1) / (v12 - 1);
  }

  swift_beginAccess();
  if (*(v2 + 320) != v13)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v45 - 2) = v2;
    *(&v45 - 1) = v13;
    aBlock[0] = v2;
    sub_100797A04();

    goto LABEL_11;
  }

  *(v2 + 320) = v13;
  if (qword_100AD1440 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v14 = sub_10079ACE4();
    sub_100008B98(v14, qword_100ADC838);

    v15 = sub_10079ACC4();
    v16 = sub_1007A29A4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      swift_getKeyPath();
      aBlock[0] = v2;
      sub_100797A14();

      *(v17 + 4) = *(v2 + 320);
      _os_log_impl(&_mh_execute_header, v15, v16, "Scrubber position set to %f", v17, 0xCu);
    }

LABEL_11:
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v20 = *(v2 + 56);
      ObjectType = swift_getObjectType();
      (*(v20 + 16))(a1, 1, ObjectType, v20);
      result = swift_unknownObjectRelease();
    }

    v22 = a1 - v11;
    if (!__OFSUB__(a1, v11))
    {
      break;
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  if (v22 < 0 && (v23 = __OFSUB__(0, v22), v22 = v11 - a1, v23))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    aBlock[0] = v2;
    sub_100797A14();

    v24 = *(v2 + 256);
    v25 = 0.0;
    if (v24 >= 2 && v22 >= 1 && v24 >= v22)
    {
      v25 = (v22 - 1) / (v24 - 1);
    }

    if (v11 <= a1)
    {
      v26 = v25;
    }

    else
    {
      v26 = -v25;
    }

    if (*(v2 + 304) == v26)
    {
      *(v2 + 304) = v26;
    }

    else
    {
      v27 = swift_getKeyPath();
      __chkstk_darwin(v27);
      *(&v45 - 2) = v2;
      *(&v45 - 1) = v26;
      aBlock[0] = v2;
      sub_100797A04();
    }

    swift_getKeyPath();
    aBlock[0] = v2;
    sub_100797A14();

    v28 = *(v2 + 304);
    if (*(v2 + 312) == v28)
    {
      *(v2 + 312) = v28;
    }

    else
    {
      v29 = swift_getKeyPath();
      __chkstk_darwin(v29);
      *(&v45 - 2) = v2;
      *(&v45 - 1) = v28;
      aBlock[0] = v2;
      sub_100797A04();
    }

    v47 = v48 & 1;
    v30 = v48 & 1 | 0x80;
    v31 = swift_getKeyPath();
    __chkstk_darwin(v31);
    *(&v45 - 4) = v3;
    *(&v45 - 3) = v11;
    v48 = v11;
    *(&v45 - 2) = a1;
    *(&v45 - 8) = v30;
    aBlock[0] = v3;
    sub_100797A04();

    sub_10033A0A4(0x8000000000000018);
    v32 = REActionMenuState.makeChapterScrubbingState()();
    v33 = v32;
    v35 = v34;
    if (*(v3 + 280) == 1)
    {
      sub_100343518(v32, 1);
      sub_100342F4C(v33, 1);
    }

    else
    {
      v36 = swift_getKeyPath();
      __chkstk_darwin(v36);
      *(&v45 - 4) = v3;
      *(&v45 - 3) = v33;
      *(&v45 - 16) = 1;
      aBlock[0] = v3;
      sub_100797A04();
      sub_100342F4C(v33, 1);
    }

    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);

    v46 = sub_1007A2D74();
    v37 = v49;
    sub_1007A1CB4();
    v38 = v50;
    sub_1007A1D24();
    v59 = *(v51 + 8);
    v59(v37, v58);
    v39 = swift_allocObject();
    *(v39 + 16) = v3;
    *(v39 + 24) = v35;
    *(v39 + 32) = v48;
    *(v39 + 40) = a1;
    *(v39 + 48) = v47;
    aBlock[4] = sub_100343A5C;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A165B0;
    v40 = _Block_copy(aBlock);

    v41 = v52;
    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
    v42 = v54;
    v43 = v57;
    sub_1007A3594();
    v44 = v46;
    sub_1007A2D04();

    _Block_release(v40);

    (*(v56 + 8))(v42, v43);
    (*(v53 + 8))(v41, v55);
    return (v59)(v38, v58);
  }

  return result;
}

double sub_10033D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_1007A1C54();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007A1CA4();
  v23 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10033A0A4(v17);
  if (a3 == a4)
  {
    sub_10033D64C(a5 & 1);
  }

  else
  {
    v22[1] = *(a1 + 192);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a2;
    *(v20 + 32) = a4;
    *(v20 + 40) = a5 & 1;
    aBlock[4] = sub_100343EB8;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A16600;
    v21 = _Block_copy(aBlock);

    sub_1007A1C74();
    v24 = _swiftEmptyArrayStorage;
    sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    v22[0] = v14;
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v21);
    (*(v11 + 8))(v13, v10);
    (*(v23 + 8))(v16, v22[0]);
  }

  return result;
}

void sub_10033D64C(char a1)
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A04();

  swift_getKeyPath();
  sub_100797A14();

  if (*(v1 + 328) != 0x8000000000000000)
  {
    if (a1)
    {
      v3 = 0x8000000000000008;
    }

    else
    {
      v3 = 0x8000000000000000;
    }

    sub_10033A0A4(v3);
  }

  if ((a1 & 1) == 0)
  {
    if (*(v1 + 280) >= 2u)
    {
      sub_100343518(0, 2);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100797A04();
    }
  }
}

uint64_t sub_10033D830(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v88 = sub_1007A1C54();
  v77 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1007A1CA4();
  v76 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10079EF54();
  v8 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A1CC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v69 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v69 = v13;
    v70 = v16;
    v71 = v11;
    v72 = v10;
    v73 = a3;
    v74 = a4;
    v19 = dispatch_group_create();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&aBlock);

    v75 = aBlock;
    v20 = aBlock[2];
    if (v20)
    {
      v21 = (v75 + 4);
      if (qword_100AD1440 != -1)
      {
        swift_once();
      }

      v95 = sub_10079ACE4();
      v81 = (v8 + 8);
      v80 = &v99;
      v79 = (v77 + 8);
      v78 = (v76 + 8);
      *&v22 = 134217984;
      v89 = v22;
      v82 = v18;
      v94 = v19;
      do
      {
        v25 = *v21++;
        v24 = v25;
        sub_100008B98(v95, qword_100ADC838);
        v26 = sub_10079ACC4();
        v27 = sub_1007A29A4();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = v89;
          *(v28 + 4) = v24;
          _os_log_impl(&_mh_execute_header, v26, v27, "Want snapshot for page %ld", v28, 0xCu);
        }

        dispatch_group_enter(v19);
        sub_100009864(v18 + 80, v103);
        v29 = sub_10000E3E8(v103, v103[3]);
        v30 = swift_allocObject();
        *(v30 + 16) = v24;
        *(v30 + 24) = v19;
        v31 = *v29;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v96 = v21;
          if (swift_weakLoadStrong())
          {
            sub_10000E3E8((v31 + 16), *(v31 + 40));
            v32 = v94;
            v92 = sub_10079ECA4();
            v91 = v33;
            swift_getObjectType();
            v34 = v83;
            sub_1007A1344();
            v35 = sub_10079ED24();
            (*v81)(v34, v84);
            sub_10079F714();
            swift_getObjectType();
            sub_10079F694();
            v37 = v36;
            v39 = v38;
            swift_unknownObjectRelease();
            sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
            v93 = sub_1007A2D74();
            v40 = swift_allocObject();
            v40[2] = v31;
            v40[3] = v35;
            v90 = v35;
            v41 = v91;
            v40[4] = v92;
            v40[5] = v41;
            v40[6] = v24;
            v40[7] = v37;
            v40[8] = v39;
            v40[9] = sub_100343B44;
            v40[10] = v30;
            v40[11] = BKAppDelegate.enableMetricsInspectorOnDebugMode();
            v40[12] = 0;
            v101 = sub_100343B58;
            v102 = v40;
            aBlock = _NSConcreteStackBlock;
            v98 = 1107296256;
            v99 = sub_1003323D0;
            v100 = &unk_100A16718;
            v42 = _Block_copy(&aBlock);

            v43 = v85;
            sub_1007A1C74();
            aBlock = _swiftEmptyArrayStorage;
            sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
            sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
            v44 = v86;
            v45 = v88;
            sub_1007A3594();
            v46 = v93;
            sub_1007A2D94();
            _Block_release(v42);

            swift_unknownObjectRelease();

            v47 = v45;
            v18 = v82;
            (*v79)(v44, v47);
            v48 = v43;
            v19 = v94;
            (*v78)(v48, v87);
          }

          else
          {
            v49 = v19;

            swift_unknownObjectRelease();
          }

          v21 = v96;
        }

        else
        {
          v23 = v19;
        }

        sub_1000074E0(v103);
        --v20;
      }

      while (v20);
    }

    v50 = v69;
    sub_1007A1CB4();
    v51 = v70;
    sub_1007A1D24();
    v52 = *(v71 + 8);
    v53 = v72;
    v52(v50, v72);
    sub_1007A2CA4();
    v52(v51, v53);
    if (sub_1007A1C34())
    {
      v54 = v74;
      v55 = v73;
      if (qword_100AD1440 != -1)
      {
        swift_once();
      }

      v56 = sub_10079ACE4();
      sub_100008B98(v56, qword_100ADC838);
      v57 = sub_10079ACC4();
      v58 = sub_1007A29A4();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        v60 = "Timeout waiting for snapshots";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v57, v58, v60, v59, 2u);
        v62 = v19;

LABEL_26:

        sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
        v63 = sub_1007A2D74();
        v64 = swift_allocObject();
        *(v64 + 16) = v18;
        *(v64 + 24) = v55;
        *(v64 + 32) = v54 & 1;
        v101 = sub_100343B4C;
        v102 = v64;
        aBlock = _NSConcreteStackBlock;
        v98 = 1107296256;
        v99 = sub_1003323D0;
        v100 = &unk_100A166C8;
        v65 = _Block_copy(&aBlock);

        v66 = v85;
        sub_1007A1C74();
        aBlock = _swiftEmptyArrayStorage;
        sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
        sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
        v67 = v86;
        v68 = v88;
        sub_1007A3594();
        sub_1007A2D94();
        _Block_release(v65);

        (*(v77 + 8))(v67, v68);
        return (*(v76 + 8))(v66, v87);
      }
    }

    else
    {
      v54 = v74;
      v55 = v73;
      if (qword_100AD1440 != -1)
      {
        swift_once();
      }

      v61 = sub_10079ACE4();
      sub_100008B98(v61, qword_100ADC838);
      v57 = sub_10079ACC4();
      v58 = sub_1007A29A4();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        v60 = "All snapshots ready";
        goto LABEL_24;
      }
    }

    v62 = v19;
    goto LABEL_26;
  }

  return result;
}

void sub_10033E47C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (qword_100AD1440 != -1)
  {
    swift_once();
  }

  v5 = sub_10079ACE4();
  sub_100008B98(v5, qword_100ADC838);
  v6 = sub_10079ACC4();
  v7 = sub_1007A29A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "Prepared snapshot for page %ld", v8, 0xCu);
  }

  dispatch_group_leave(a3);
}

void sub_10033E584(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1007A1C54();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1007A1CA4();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1007A1CC4();
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  swift_beginAccess();
  if (*(a1 + 216) == a2)
  {
    sub_100334D1C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v27 - 2) = a1;
    *(&v27 - 1) = a2;
    aBlock[0] = a1;
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A04();
  }

  UIAnimationDragCoefficient();
  UIAnimationDragCoefficient();
  swift_getKeyPath();
  aBlock[0] = a1;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (*(a1 + 248) >= 0xC0u)
  {
    goto LABEL_8;
  }

  v17 = *(a1 + 232);
  v16 = *(a1 + 240);
  v18 = __OFSUB__(v16, v17);
  v19 = v16 - v17;
  if (v18)
  {
    __break(1u);
  }

  else if ((v19 & 0x8000000000000000) == 0 || !__OFSUB__(0, v19))
  {
LABEL_8:
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v20 = sub_1007A2D74();
    sub_1007A1CB4();
    sub_1007A1D24();
    v28 = *(v9 + 8);
    v21 = v29;
    v28(v11, v29);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    *(v22 + 24) = a3 & 1;
    aBlock[4] = sub_100343B94;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A16768;
    v23 = _Block_copy(aBlock);

    v24 = v30;
    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
    v25 = v32;
    v26 = v35;
    sub_1007A3594();
    sub_1007A2D04();
    _Block_release(v23);

    (*(v34 + 8))(v25, v26);
    (*(v31 + 8))(v24, v33);
    v28(v14, v21);
    return;
  }

  __break(1u);
}

uint64_t sub_10033EB88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v30 = sub_1007A1C54();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007A1CA4();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A1CC4();
  v28 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  swift_getKeyPath();
  v34 = v3;
  v35 = a1;
  v36 = a2;
  v37 = 65;
  aBlock[0] = v3;
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A04();

  UIAnimationDragCoefficient();
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v17 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1007A1D24();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  aBlock[4] = sub_100343B3C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A16650;
  v22 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  v23 = v29;
  v24 = v30;
  sub_1007A3594();
  sub_1007A2D04();
  _Block_release(v22);

  (*(v33 + 8))(v23, v24);
  (*(v31 + 8))(v9, v32);
  return (v18)(v16, v28);
}

double sub_10033F054(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    if (*(v5 + 216) == a2)
    {
      sub_100334D1C();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A04();
    }

    swift_getKeyPath();
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    if (*(v5 + 328) == 0x8000000000000010)
    {
      sub_10033A0A4(0x8000000000000018);
    }
  }

  return result;
}

void REActionMenuState.scrubberChanged(state:event:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, double a4, double a5, double a6)
{
  v7 = v6;
  v149 = a1;
  v12 = a3;
  v146 = sub_1007A1C54();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v143 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1007A1CA4();
  v142 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10079FFF4();
  __chkstk_darwin(v147);
  v148 = (&v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v12 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = *(Strong + OBJC_IVAR___BKEngagementManager_manager);
      v19 = sub_1007999E4();

      if (v19)
      {
        type metadata accessor for SessionDonor(0);
        v20 = swift_dynamicCastClass();
        if (v20 && (v20[OBJC_IVAR___BKSessionDonor_everUsedReadingScrubber] & 1) == 0)
        {
          v20[OBJC_IVAR___BKSessionDonor_everUsedReadingScrubber] = 1;
          [v20 propertyDidChange:v20 propertyConfiguration:*&v20[OBJC_IVAR___BKSessionDonor_everUsedReadingScrubberAppConfig]];
        }

        swift_unknownObjectRelease();
      }
    }
  }

  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  aBlock[0] = v7;
  v22 = sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (a2)
  {
    v23 = 1;
  }

  else
  {
    v23 = *(v7 + 280) == 0;
  }

  v24 = !v23;
  LODWORD(v155) = v24;
  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  v25 = *(v7 + 272);
  v26 = *(v7 + 280);
  if (!*(v7 + 280) || a2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v25 = v149;
        v26 = a2;
      }

      else
      {
        v26 = *(v7 + 280);
      }
    }

    else
    {
      v25 = v149;
      v26 = a2;
    }
  }

  LODWORD(v156) = a2;
  v27 = a5 + a6;
  if (a5 + a6 < 0.0)
  {
    v27 = 0.0;
  }

  if (v27 <= 1.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1.0;
  }

  sub_100337314(v25, v26);
  if (qword_100AD1440 != -1)
  {
    swift_once();
  }

  v29 = v28 - a5;
  v30 = sub_10079ACE4();
  v154 = sub_100008B98(v30, qword_100ADC838);
  v31 = sub_10079ACC4();
  v32 = sub_1007A29A4();
  v33 = os_log_type_enabled(v31, v32);
  v158 = v22;
  v153 = v26;
  v151 = v25;
  v152 = v21;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    aBlock[0] = v150;
    *v34 = 134219010;
    *(v34 + 4) = a4;
    *(v34 + 12) = 2080;
    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v35 = swift_allocObject();
    v157 = xmmword_10080B690;
    *(v35 + 16) = xmmword_10080B690;
    *(v35 + 56) = &type metadata for Double;
    *(v35 + 64) = &protocol witness table for Double;
    *(v35 + 32) = a6;
    v36 = sub_1007A2284();
    v38 = sub_1000070F4(v36, v37, aBlock);

    *(v34 + 14) = v38;
    *(v34 + 22) = 2080;
    v39 = swift_allocObject();
    *(v39 + 16) = v157;
    *(v39 + 56) = &type metadata for Double;
    *(v39 + 64) = &protocol witness table for Double;
    *(v39 + 32) = a5;
    v40 = sub_1007A2284();
    v42 = sub_1000070F4(v40, v41, aBlock);

    *(v34 + 24) = v42;
    *(v34 + 32) = 2080;
    v43 = swift_allocObject();
    *(v43 + 16) = v157;
    *(v43 + 56) = &type metadata for Double;
    *(v43 + 64) = &protocol witness table for Double;
    *(v43 + 32) = v28;
    v44 = sub_1007A2284();
    v46 = sub_1000070F4(v44, v45, aBlock);

    *(v34 + 34) = v46;
    *(v34 + 42) = 2080;
    v47 = swift_allocObject();
    *(v47 + 16) = v157;
    *(v47 + 56) = &type metadata for Double;
    *(v47 + 64) = &protocol witness table for Double;
    v25 = v151;
    *(v47 + 32) = v29;
    v48 = sub_1007A2284();
    v50 = sub_1000070F4(v48, v49, aBlock);

    *(v34 + 44) = v50;
    _os_log_impl(&_mh_execute_header, v31, v32, "scrub received position %f delta %s value: %s producing targetValue %s snappedDelta: %s", v34, 0x34u);
    swift_arrayDestroy();
    v26 = v153;
  }

  if (v26 == 1)
  {
    swift_getKeyPath();
    aBlock[0] = v7;
    sub_100797A14();

    if (*(v7 + 280) >= 2u)
    {

      v52 = 1;
      v51 = v25;
    }

    else
    {
      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      v51 = *(v7 + 272);
      v52 = *(v7 + 280);
      sub_100337314(v51, *(v7 + 280));
    }

    v55 = sub_100341270(v51, v52, *&v28, 0);
    v54 = v51;
    v56 = v52;
  }

  else
  {
    sub_100337314(v25, v26);
    v53 = sub_100341270(v25, v26, *&a4, 0);
    v54 = v25;
    v55 = v53;
    v56 = v26;
  }

  sub_100342F4C(v54, v56);
  if (v155)
  {
    swift_getKeyPath();
    aBlock[0] = v7;
    sub_100797A14();

    swift_beginAccess();
    sub_1004C1944(v55, *(v7 + 320));
  }

  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  v57 = *(v7 + 328);
  swift_getKeyPath();
  aBlock[0] = v7;
  sub_1002B6C38(v57);
  sub_100797A14();

  v58 = *(v7 + 272);
  v59 = *(v7 + 280);
  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100337314(v58, v59);
  sub_100797A14();

  swift_beginAccess();
  v60 = *(v7 + 216);
  if (v156)
  {
    if (v156 == 1)
    {
      v61 = 0x8000000000000018;
    }

    else
    {
      v61 = 0x8000000000000008;
      if (v59 == 1 && v60 != v55)
      {
        sub_100337314(v58, 1);

        v61 = v58;
      }
    }
  }

  else if (v60 != v55 || (v61 = 0x8000000000000018, !v59) && v57 == 0x8000000000000010)
  {
    v61 = 0x8000000000000010;
  }

  sub_1002B6C38(v57);
  sub_1002B6C38(v61);
  v62 = sub_10079ACC4();
  v63 = sub_1007A29A4();
  sub_1002B6C54(v57);
  sub_1002B6C54(v61);
  v64 = os_log_type_enabled(v62, v63);
  *&v157 = v61;
  v150 = v55;
  if (v64)
  {
    v65 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v65 = 136315394;
    v66 = ActionMenuState.description.getter(v57);
    v68 = sub_1000070F4(v66, v67, aBlock);

    *(v65 + 4) = v68;
    *(v65 + 12) = 2080;
    v69 = ActionMenuState.description.getter(v157);
    v26 = v70;
    sub_1002B6C54(v157);
    v71 = sub_1000070F4(v69, v26, aBlock);
    LOBYTE(v26) = v153;

    *(v65 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v62, v63, "previousState: %s nextState: %s", v65, 0x16u);
    swift_arrayDestroy();
    v55 = v150;

    v61 = v157;
  }

  else
  {

    sub_1002B6C54(v61);
  }

  sub_100342F4C(v58, v59);
  sub_1002B6C54(v57);
  v72 = v156 != 0;
  if (!v26)
  {
    v72 = 0;
  }

  if (((v155 | v72) & 1) == 0)
  {
    swift_getKeyPath();
    aBlock[0] = v7;
    sub_100797A14();

    v93 = *(v7 + 216);
    if (v93 == v55)
    {
      sub_100334D1C();
      v155 = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v139 - 2) = v7;
      *(&v139 - 1) = v55;
      aBlock[0] = v7;
      sub_100797A04();
      v155 = 0;

      v61 = v157;
    }

    if (v61 >> 62 == 2 && (v61 | 8) == 0x8000000000000018)
    {
      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      if (*(v7 + 280) == 1)
      {
        swift_beginAccess();
        if (*(v7 + 320) == a4)
        {
          *(v7 + 320) = a4;
          goto LABEL_110;
        }

        v138 = swift_getKeyPath();
        __chkstk_darwin(v138);
        *(&v139 - 2) = v7;
        *(&v139 - 1) = a4;
        v162 = v7;
LABEL_88:
        v103 = v155;
        sub_100797A04();
        v155 = v103;

LABEL_113:
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v126 = *(v7 + 56);
          ObjectType = swift_getObjectType();
          swift_getKeyPath();
          v161 = v7;
          sub_100797A14();

          (*(v126 + 24))(*(v7 + 216), ObjectType, v126);
          swift_unknownObjectRelease();
        }

        sub_10034194C(v149, v156, 0, v29);
        if (v93 == v55)
        {
          v128 = swift_getKeyPath();
          __chkstk_darwin(v128);
          *(&v139 - 3) = 0;
          *(&v139 - 2) = 0;
          *(&v139 - 4) = v7;
          *(&v139 - 8) = -64;
          v161 = v7;
          v129 = v155;
          sub_100797A04();
          v155 = v129;

          swift_getKeyPath();
          v161 = v7;
          sub_100797A14();

          LOBYTE(v161) = *(v7 + 328) == 0x8000000000000000;
          sub_10079B914();
        }

        else
        {
          sub_10033EB88(v93, v55);
        }

        v112 = v153;
        v91 = v151;
        goto LABEL_119;
      }

      swift_beginAccess();
      if (*(v7 + 320) == v28)
      {
        *(v7 + 320) = v28;
LABEL_110:

        v100 = sub_10079ACC4();
        v101 = sub_1007A29A4();

        if (os_log_type_enabled(v100, v101))
        {
LABEL_111:
          v125 = swift_slowAlloc();
          *v125 = 134217984;
          swift_getKeyPath();
          v162 = v7;
          sub_100797A14();

          *(v125 + 4) = *(v7 + 320);
          _os_log_impl(&_mh_execute_header, v100, v101, "Scrubber position set to %f", v125, 0xCu);
        }

LABEL_112:

        goto LABEL_113;
      }
    }

    else
    {
      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      v98 = *(v7 + 216);
      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      v99 = *(v7 + 256);
      v28 = 0.0;
      if (v99 >= 2 && v98 >= 1 && v99 >= v98)
      {
        v28 = (v98 - 1) / (v99 - 1);
      }

      swift_beginAccess();
      if (*(v7 + 320) == v28)
      {
        *(v7 + 320) = v28;

        v100 = sub_10079ACC4();
        v101 = sub_1007A29A4();

        if (os_log_type_enabled(v100, v101))
        {
          goto LABEL_111;
        }

        goto LABEL_112;
      }
    }

    v102 = swift_getKeyPath();
    __chkstk_darwin(v102);
    *(&v139 - 2) = v7;
    *(&v139 - 1) = v28;
    v162 = v7;
    goto LABEL_88;
  }

  v73 = v61 & 0xC000000000000000;
  if ((v61 & 0xC000000000000000) != 0x8000000000000000 || (v74 = v155, (v61 | 8) != 0x8000000000000018))
  {
    v74 = 1;
  }

  v140 = v74;
  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  v75 = *(v7 + 216);
  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  v76 = *(v7 + 256);
  v77 = 0.0;
  if (v76 >= 2 && v75 >= 1 && v76 >= v75)
  {
    v77 = (v75 - 1) / (v76 - 1);
  }

  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  v78 = *(v7 + 216);
  v79 = sub_10079ACC4();
  v80 = sub_1007A29A4();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v81 = 136315906;
    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v82 = swift_allocObject();
    v139 = xmmword_10080B690;
    *(v82 + 16) = xmmword_10080B690;
    *(v82 + 56) = &type metadata for CGFloat;
    *(v82 + 64) = sub_100343784();
    *(v82 + 32) = v28;
    v83 = sub_1007A2284();
    v85 = sub_1000070F4(v83, v84, aBlock);

    *(v81 + 4) = v85;
    *(v81 + 12) = 2080;
    v86 = swift_allocObject();
    *(v86 + 16) = v139;
    *(v86 + 56) = &type metadata for Double;
    *(v86 + 64) = &protocol witness table for Double;
    *(v86 + 32) = vabdd_f64(v28, v77);
    v87 = sub_1007A2284();
    v89 = sub_1000070F4(v87, v88, aBlock);

    *(v81 + 14) = v89;
    v61 = v157;
    *(v81 + 22) = 2048;
    *(v81 + 24) = v78;
    *(v81 + 32) = 2048;
    *(v81 + 34) = v150;
    _os_log_impl(&_mh_execute_header, v79, v80, "scrub new position is %s for a delta of %s startPage: %ld animationTargetPageNumber: %ld", v81, 0x2Au);
    swift_arrayDestroy();
  }

  v90 = v156;
  if ((v73 != 0x8000000000000000 || (v61 | 8) != 0x8000000000000018) && v78 == v150)
  {
    sub_10033A0A4(0x8000000000000008);
    v91 = v151;
    if (*(v7 + 280) >= 2u)
    {
      sub_100343518(0, 2);
    }

    else
    {
      v92 = swift_getKeyPath();
      __chkstk_darwin(v92);
      *(&v139 - 4) = v7;
      *(&v139 - 3) = 0;
      *(&v139 - 16) = 2;
      aBlock[0] = v7;
      sub_100797A04();
    }

    v112 = v153;
    v120 = swift_getKeyPath();
    __chkstk_darwin(v120);
    *(&v139 - 3) = 0;
    *(&v139 - 2) = 0;
    *(&v139 - 4) = v7;
    *(&v139 - 8) = -64;
    aBlock[0] = v7;
    sub_100797A04();
    v121 = v157;
    goto LABEL_123;
  }

  swift_beginAccess();
  v91 = v151;
  if (*(v7 + 320) == v28)
  {
    *(v7 + 320) = v28;

    v94 = sub_10079ACC4();
    v95 = sub_1007A29A4();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 134217984;
      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      *(v96 + 4) = *(v7 + 320);
      _os_log_impl(&_mh_execute_header, v94, v95, "Scrubber position set to %f", v96, 0xCu);
    }
  }

  else
  {
    v104 = swift_getKeyPath();
    __chkstk_darwin(v104);
    *(&v139 - 2) = v7;
    *(&v139 - 1) = v28;
    aBlock[0] = v7;
    sub_100797A04();
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v105 = *(v7 + 56);
    v106 = swift_getObjectType();
    (*(v105 + 8))(v140, v106, v105, v28);
    swift_unknownObjectRelease();
  }

  sub_10034194C(v149, v90, v155, v28 - a5);
  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  v107 = *(v7 + 216);
  v108 = swift_getKeyPath();
  __chkstk_darwin(v108);
  *(&v139 - 4) = v7;
  *(&v139 - 3) = v107;
  *(&v139 - 2) = v150;
  *(&v139 - 8) = -127;
  aBlock[0] = v7;
  sub_100797A04();
  v155 = 0;

  v109 = v157;
  v110 = v157 >> 62;
  if (!(v157 >> 62))
  {

    sub_10033BFCC(v111, 0);
    sub_1002B6C54(v109);
  }

  swift_getKeyPath();
  aBlock[0] = v7;
  sub_100797A14();

  if (*(v7 + 280) >= 2u)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      v113 = *(v7 + 216);
      swift_getKeyPath();
      aBlock[0] = v7;
      v91 = v151;
      sub_100797A14();

      v114 = *(v7 + 256);
      v115 = v148;
      *v148 = v113;
      *(v115 + 8) = v150;
      *(v115 + 16) = v114;
      swift_storeEnumTagMultiPayload();
      sub_1007A1A94();
      v109 = v157;
      swift_unknownObjectRelease();
      sub_100343710(v115);
    }

    if (!v110)
    {
      swift_getKeyPath();
      aBlock[0] = v7;

      v116 = v109;
      sub_100797A14();

      v117 = v150;
      if (*(v7 + 216) != v150)
      {
        *&v157 = *(v7 + 192);
        v131 = swift_allocObject();
        swift_weakInit();
        v132 = swift_allocObject();
        *(v132 + 16) = v131;
        *(v132 + 24) = v109;
        v156 = v131;
        *(v132 + 32) = v117;
        *(v132 + 40) = 1;
        aBlock[4] = sub_10034376C;
        aBlock[5] = v132;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1003323D0;
        aBlock[3] = &unk_100A16478;
        v133 = _Block_copy(aBlock);
        sub_1002B6C38(v116);

        v134 = v141;
        sub_1007A1C74();
        v160 = _swiftEmptyArrayStorage;
        sub_100342F78(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
        v91 = v151;
        sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
        v135 = v143;
        v136 = v146;
        sub_1007A3594();
        sub_1007A2D94();
        _Block_release(v133);
        v137 = sub_1002B6C54(v116);
        (*(v145 + 8))(v135, v136, v137);
        (*(v142 + 8))(v134, v144);

        v112 = v153;
        v109 = v116;
        goto LABEL_120;
      }

      v118 = swift_getKeyPath();
      __chkstk_darwin(v118);
      *(&v139 - 3) = 0;
      *(&v139 - 2) = 0;
      *(&v139 - 4) = v7;
      *(&v139 - 8) = -64;
      aBlock[0] = v7;
      v119 = v155;
      sub_100797A04();
      v155 = v119;

      swift_getKeyPath();
      aBlock[0] = v7;
      sub_100797A14();

      if (*(v7 + 328) != 0x8000000000000000)
      {
        sub_10033A0A4(0x8000000000000008);
      }

      v109 = v157;
      sub_1002B6C54(v157);
      goto LABEL_95;
    }

    v122 = sub_10079ACC4();
    v123 = sub_1007A29B4();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&_mh_execute_header, v122, v123, "We must have the chapter scrubbing state here", v124, 2u);
    }

    v112 = v153;
LABEL_119:
    v109 = v157;
    goto LABEL_120;
  }

LABEL_95:
  v112 = v153;
LABEL_120:
  sub_1002B6C38(v109);
  sub_10033A0A4(v109);
  if (*(v7 + 312) == v29)
  {
    sub_1002B6C54(v109);
    sub_100342F4C(v91, v112);
    *(v7 + 312) = v29;
    return;
  }

  v130 = swift_getKeyPath();
  __chkstk_darwin(v130);
  *(&v139 - 2) = v7;
  *(&v139 - 1) = v29;
  v160 = v7;
  sub_100797A04();
  v121 = v109;
LABEL_123:
  sub_1002B6C54(v121);
  sub_100342F4C(v91, v112);
}

Swift::Int sub_100341270(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v8 = a2;
  v10 = a1;
  v11 = a2;
  if (a2 == 0xFF)
  {
    swift_getKeyPath();
    v43 = v4;
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    v10 = *(v4 + 272);
    v11 = *(v4 + 280);
    sub_100337314(v10, v11);
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else if (a4)
  {
LABEL_3:
    swift_getKeyPath();
    v43 = v4;
    sub_100343BC0(a1, v8);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    swift_beginAccess();
    v12 = *(v4 + 320);
    goto LABEL_6;
  }

  v12 = *&a3;
  sub_100343BC0(a1, v8);
LABEL_6:
  if (v11)
  {
    if (v11 != 1)
    {
      if (qword_100AD1440 != -1)
      {
        swift_once();
      }

      v13 = sub_10079ACE4();
      sub_100008B98(v13, qword_100ADC838);
      v14 = sub_10079ACC4();
      v15 = sub_1007A29B4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "We should not be in idle state while scrubbing. Treating as Chapter scrub", v16, 2u);
      }
    }

    v17 = REActionMenuState.page(at:)(v12);
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v18 = sub_10079ACE4();
    sub_100008B98(v18, qword_100ADC838);
    swift_retain_n();
    v19 = sub_10079ACC4();
    v20 = sub_1007A29A4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41[0] = v22;
      *v21 = 136315650;
      sub_1001F1160(&unk_100AD5090, &unk_100815670);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10080B690;
      *(v23 + 56) = &type metadata for Double;
      *(v23 + 64) = &protocol witness table for Double;
      *(v23 + 32) = v12;
      v24 = sub_1007A2284();
      v26 = sub_1000070F4(v24, v25, v41);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v17;
      *(v21 + 22) = 2048;
      swift_getKeyPath();
      v42 = v5;
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A14();

      v27 = *(v5 + 256);

      *(v21 + 24) = v27;

      _os_log_impl(&_mh_execute_header, v19, v20, "chapter scrub position %s produces page %ld (pageCount %ld)", v21, 0x20u);
      sub_1000074E0(v22);
    }

    else
    {
    }

    sub_100342F4C(v10, v11);
  }

  else
  {
    v28 = *(v4 + 144);
    sub_1004C1AC8(v12);
    v17 = v29;
    if (qword_100AD1440 != -1)
    {
      swift_once();
    }

    v30 = sub_10079ACE4();
    sub_100008B98(v30, qword_100ADC838);

    v31 = sub_10079ACC4();
    v32 = sub_1007A29A4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v33 = 136315906;
      sub_1001F1160(&unk_100AD5090, &unk_100815670);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_10080B690;
      *(v34 + 56) = &type metadata for Double;
      *(v34 + 64) = &protocol witness table for Double;
      *(v34 + 32) = v12;
      v35 = sub_1007A2284();
      v37 = sub_1000070F4(v35, v36, &v42);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      *(v33 + 14) = v17;
      *(v33 + 22) = 2080;
      v38 = *(v28 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange);
      v41[2] = *(v28 + OBJC_IVAR____TtC5Books24ScrubberMarkerController_markerPageRange + 8);
      v41[3] = v38;
      sub_1007A3894();
      v44._countAndFlagsBits = 3026478;
      v44._object = 0xE300000000000000;
      sub_1007A23D4(v44);
      sub_1007A3894();
      v39 = sub_1000070F4(0, 0xE000000000000000, &v42);

      *(v33 + 24) = v39;
      *(v33 + 32) = 2048;
      *(v33 + 34) = v10;
      _os_log_impl(&_mh_execute_header, v31, v32, "page scrub position %s produces page %ld (in range %s starting page %ld", v33, 0x2Au);
      swift_arrayDestroy();
    }
  }

  return v17;
}

void sub_10034194C(uint64_t a1, char a2, char a3, double a4)
{
  v5 = v4;
  v7 = *(v4 + 304);
  if (!a2)
  {
    if (v7 == a4)
    {
      *(v4 + 304) = a4;
      if (a3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A04();

      if (a3)
      {
LABEL_7:
        if (!*(v4 + 280) && *(v4 + 272) == a1)
        {
          v8 = a1;
LABEL_23:
          v17 = 0;
LABEL_30:
          sub_100343518(v8, v17);
          goto LABEL_31;
        }

        v9 = swift_getKeyPath();
        __chkstk_darwin(v9);
        sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
        sub_100797A04();
        goto LABEL_25;
      }
    }

    swift_getKeyPath();
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    v14 = *(v4 + 272);
    v15 = *(v4 + 280);
    swift_getKeyPath();
    sub_100337314(v14, v15);
    sub_100797A14();

    swift_beginAccess();
    if (v15)
    {
      v16 = *(v4 + 216);
      sub_100342F4C(v14, v15);
      v14 = v16;
    }

    if (!*(v5 + 280) && *(v5 + 272) == v14)
    {
      v8 = v14;
      goto LABEL_23;
    }

    v18 = swift_getKeyPath();
    __chkstk_darwin(v18);
    v32 = v5;
    sub_100797A04();
LABEL_25:

    goto LABEL_31;
  }

  if (a2 != 1)
  {
    if (v7 == 0.0)
    {
      *(v4 + 304) = 0;
    }

    else
    {
      v19 = swift_getKeyPath();
      __chkstk_darwin(v19);
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A04();
    }

    if (*(v4 + 280) < 2u)
    {
      v20 = swift_getKeyPath();
      __chkstk_darwin(v20);
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A04();

      goto LABEL_31;
    }

    v8 = 0;
    v17 = 2;
    goto LABEL_30;
  }

  if (v7 == a4)
  {
    *(v4 + 304) = a4;
  }

  else
  {
    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A04();
  }

  if (*(v4 + 280) == 1)
  {
    sub_100337314(a1, 1);
    sub_100343518(a1, 1);
    sub_100342F4C(a1, 1);
  }

  else
  {
    v11 = swift_getKeyPath();
    __chkstk_darwin(v11);
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);

    sub_100797A04();
    sub_100342F4C(a1, 1);
  }

LABEL_31:
  if (qword_100AD1440 != -1)
  {
    swift_once();
  }

  v21 = sub_10079ACE4();
  sub_100008B98(v21, qword_100ADC838);

  v22 = sub_10079ACC4();
  v23 = sub_1007A29A4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136315138;
    swift_getKeyPath();
    sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    v26 = *(v5 + 272);
    v27 = *(v5 + 280);
    sub_100337314(v26, v27);
    v28 = ScrubberState.description.getter(v26, v27);
    v30 = v29;
    sub_100342F4C(v26, v27);
    v31 = sub_1000070F4(v28, v30, &v32);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "updated scrubberState is %s", v24, 0xCu);
    sub_1000074E0(v25);
  }
}

Swift::Double __swiftcall REActionMenuState.scrubberStartingPosition()()
{
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  swift_beginAccess();
  v1 = *(v0 + 216);
  swift_getKeyPath();
  sub_100797A14();

  v2 = *(v0 + 256);
  result = 0.0;
  if (v2 >= 2 && v1 >= 1 && v2 >= v1)
  {
    return (v1 - 1) / (v2 - 1);
  }

  return result;
}

double REActionMenuState.setupMonitoring(safeAreaInsetsPublisher:annotationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  swift_weakInit();
  sub_1001F1160(&qword_100ADC880, qword_10082E4C0);
  sub_100005920(&qword_100ADC888, &qword_100ADC880, qword_10082E4C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  ObjectType = swift_getObjectType();
  sub_1003430E4(a2, v3, ObjectType, a3);
  return sub_10034249C();
}

double sub_10034249C()
{
  v1 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v12 = sub_1001F1160(&qword_100ADD120, &unk_10081C750);
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v11 - v5;
  v13 = *(v0 + 288);
  sub_1001F1160(&unk_100AD1E40, &unk_10080B800);
  sub_100005920(&qword_100AF2870, &unk_100AD1E40, &unk_10080B800, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v13 = sub_10079BA14();
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v7 = sub_1007A2D74();
  v14 = v7;
  v8 = sub_1007A2D24();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_1001F1160(&unk_100AF27D0, &qword_10081ED80);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0, &qword_10081ED80, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100017E1C();
  sub_10079BAB4();
  sub_100007840(v3, &qword_100AD7EB0, &qword_10080EFD0);

  swift_allocObject();
  swift_weakInit();
  sub_100005920(&unk_100AF27E0, &qword_100ADD120, &unk_10081C750, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v9 = v12;
  sub_10079BB04();

  (*(v4 + 8))(v6, v9);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  return result;
}

uint64_t sub_1003427EC(__int128 *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10079B9B4();
  }

  return result;
}

void sub_100342890(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_10079F284();
    v5 = sub_10079F294();
    if (__OFADD__(v4, v5))
    {
      __break(1u);
    }

    else
    {
      if (*(v3 + 136) != v4 + v5)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
        sub_100797A04();
      }
    }
  }
}

double sub_1003429E8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v2 == *(Strong + 281))
    {
      *(Strong + 281) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A04();
    }

    v6 = sub_10033AE54();
    sub_100334B58(v6, v7);
  }

  return result;
}

void sub_100342B34(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v4);

  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_100342BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_100337314(*a1, v7);
  return a5(v6, v7);
}

uint64_t sub_100342C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v21 = a2;
  v6 = type metadata accessor for BookActionMenuDataSource();
  v31[3] = v6;
  v31[4] = &off_100A19810;
  v31[0] = a1;
  type metadata accessor for ChapterScrubbingState(0);
  v7 = swift_allocObject();
  v8 = sub_10022569C(v31, v6);
  v9 = __chkstk_darwin(v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = *v11;
  v30[3] = v6;
  v30[4] = &off_100A19810;
  v30[0] = v13;
  v14 = OBJC_IVAR____TtC5Books21ChapterScrubbingState__pageIndeces;
  v28[0] = _swiftEmptyArrayStorage;
  sub_1001F1160(&unk_100AF23A0, &qword_100812D80);
  sub_10079B964();
  v15 = OBJC_IVAR____TtC5Books21ChapterScrubbingState_pageImageLoaders;
  *(v7 + v15) = sub_1001ED82C(_swiftEmptyArrayStorage);
  swift_beginAccess();

  v16 = sub_1001F1160(&qword_100ADD148, &qword_10081C7C0);
  (*(*(v16 - 8) + 8))(v7 + v14, v16);
  v29 = a3;
  sub_10079B964();
  swift_endAccess();
  v17 = sub_1001ED82C(_swiftEmptyArrayStorage);
  v18 = *sub_10000E3E8(v30, v6);
  v28[3] = v6;
  v28[4] = &off_100A19810;
  v28[0] = v18;
  v29 = v17;
  swift_bridgeObjectRetain_n();

  v27 = sub_100408F6C(v17);
  v24 = &v29;
  v25 = &v27;
  v26 = v28;
  sub_1006D1368(sub_100343E10, v23, a3);

  sub_100332178(v27, &v29);

  v19 = v29;
  sub_1000074E0(v28);

  sub_1000074E0(v30);
  swift_beginAccess();
  *(v7 + v15) = v19;

  *(v7 + OBJC_IVAR____TtC5Books21ChapterScrubbingState_currentContentSnapshotView) = v22;
  sub_1000074E0(v31);
  return v7;
}

double sub_100342F4C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_100342F78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100342FD8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 304) = result;
  return result;
}

BOOL sub_100342FE8(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 62))
  {
    if (!(v3 >> 62))
    {
      return _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(v2, v3) & 1;
    }

    return 0;
  }

  if (v2 >> 62 == 1)
  {
    if (v3 >> 62 == 1)
    {
      v2 &= 0x3FFFFFFFFFFFFFFFuLL;
      v3 &= 0x3FFFFFFFFFFFFFFFuLL;
      return _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(v2, v3) & 1;
    }

    return 0;
  }

  v5 = __ROR8__(v2 ^ 0x8000000000000000, 3);
  if (v5 <= 1)
  {
    if (!v5)
    {
      return v3 == 0x8000000000000000;
    }

    if (v3 == 0x8000000000000008)
    {
      return 1;
    }
  }

  else
  {
    if (v5 == 2)
    {
      return v3 == 0x8000000000000010;
    }

    if (v5 == 3)
    {
      return v3 == 0x8000000000000018;
    }

    if (v3 == 0x8000000000000020)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1003430E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_1001F1160(&qword_100ADD128, &qword_10081C760);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  sub_1007A0894();
  v11 = sub_10079F284();
  v12 = sub_10079F294();
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v19 = v8;
    if (*(a2 + 136) == v13)
    {

      *(a2 + 136) = v13;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v18 = &v18;
      __chkstk_darwin(KeyPath);
      *(&v18 - 2) = a2;
      *(&v18 - 1) = v13;
      v21 = a2;
      sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A04();
    }

    v21 = sub_1007A08D4();
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v15 = sub_1007A2D74();
    v22 = v15;
    v16 = sub_1007A2D24();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    sub_1001F1160(&qword_100ADD130, &qword_10081C768);
    sub_100005920(&qword_100ADD138, &qword_100ADD130, &qword_10081C768, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_100017E1C();
    sub_10079BAB4();
    sub_100007840(v7, &qword_100AD7EB0, &qword_10080EFD0);

    swift_allocObject();
    swift_weakInit();
    sub_100005920(&qword_100ADD140, &qword_100ADD128, &qword_10081C760, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v17 = v19;
    sub_10079BB04();

    (*(v20 + 8))(v10, v17);
    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();
  }
}

double sub_100343518(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = *(v2 + 272);
  *(v2 + 272) = a1;
  v5 = *(v2 + 280);
  *(v3 + 280) = a2;
  sub_100337314(a1, a2);
  sub_100342F4C(v4, v5);
  v6 = *(v3 + 128);
  swift_getKeyPath();
  sub_100342F78(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);

  sub_100797A14();

  v7 = *(v3 + 272);
  v8 = *(v3 + 280);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100337314(v7, v8);

  sub_100337314(v7, v8);
  sub_10079B9B4();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v9 = *(v6 + 32), v10 = swift_getObjectType(), v11 = (*(v9 + 24))(v10, v9), v13 = v12, swift_unknownObjectRelease(), v11))
  {
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
    sub_100342F4C(v7, v8);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_100342F4C(v7, v8);
  }

  return result;
}

double sub_100343700()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 312) = result;
  return result;
}

uint64_t sub_100343710(uint64_t a1)
{
  v2 = sub_10079FFF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100343784()
{
  result = qword_100AEB810;
  if (!qword_100AEB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB810);
  }

  return result;
}

void sub_100343808(uint64_t a1)
{
  sub_100343898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100343898(uint64_t a1)
{
  if (!qword_100ADC8C8)
  {
    type metadata accessor for UIEdgeInsets(255);
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100ADC8C8);
    }
  }
}

uint64_t sub_10034391C(uint64_t a1, __n128 a2)
{
  result = sub_100797A54();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100343A6C(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_100343BC0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100337314(result, a2);
  }

  return result;
}

uint64_t sub_100343C10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 352) = v2;
  return result;
}

double sub_100343C64()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100337314(v1, v2);
  sub_100343518(v1, v2);
  return sub_100342F4C(v1, v2);
}

double sub_100343CEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_100343CF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  *(v1 + 232) = *(v0 + 24);
  v5 = *(v1 + 248);
  *(v1 + 248) = v2;
  sub_100336064(v3, v4, v5);
}

void sub_100343D40()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 216) = v1;
  sub_100334D1C();
}

void *PalettePresentationInteraction.view.getter()
{
  v1 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PalettePresentationInteraction.view.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1003440FC(int a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___BKPalettePresentationInteraction_animationController;
    if (!*(Strong + OBJC_IVAR___BKPalettePresentationInteraction_animationController) || (type metadata accessor for AudiobookPaletteStyleAnimationController(), (v6 = swift_dynamicCastClass()) == 0))
    {

      return;
    }

    v7 = v6;
    swift_unknownObjectRetain();
    v8 = [v7 isReversed];
    if ([v7 isReversed])
    {
      if (!v8 || (a1 & 1) != 0)
      {
        goto LABEL_11;
      }
    }

    else if (((v8 | a1) & 1) == 0)
    {
LABEL_11:
      *&v4[v5] = 0;
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectWeakAssign();
    goto LABEL_11;
  }
}

uint64_t sub_100344208(uint64_t a1)
{
  *(v1 + OBJC_IVAR___BKPalettePresentationInteraction_animationController) = a1;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (a1)
  {
    type metadata accessor for AudiobookPaletteStyleAnimationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = sub_100345788;
      *(v7 + 24) = v6;
      v8 = OBJC_IVAR____TtC5Books40AudiobookPaletteStyleAnimationController_completionBlocks;
      swift_beginAccess();
      v9 = *(v5 + v8);
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + v8) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_10066AAA8(0, v9[2] + 1, 1, v9);
        *(v5 + v8) = v9;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_10066AAA8((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      v13 = &v9[2 * v12];
      v13[4] = sub_100345790;
      v13[5] = v7;
      *(v5 + v8) = v9;
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1003443D4(void (*a1)(id), uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v5 = [Strong transitionCoordinator];
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = a2;
      v7[4] = v11;
      aBlock[4] = sub_100345708;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100569BDC;
      aBlock[3] = &unk_100A16808;
      v8 = _Block_copy(aBlock);
      sub_1000260E8(a1, a2);
      v9 = v11;

      [v6 animateAlongsideTransition:0 completion:v8];

      _Block_release(v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = v11;
      if (a1)
      {
        a1(v11);
        v10 = v11;
      }
    }
  }

  else
  {

    sub_1003446C0(a1, a2);
  }
}

void sub_1003446C0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = [Strong presentedViewControllerFor:v2];
  swift_unknownObjectRelease();
  if (!v22)
  {
    return;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [v6 presentingViewControllerFor:v2];
  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [v7 presentedViewController];
  if (v8)
  {
    v9 = v8;
    sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
    v10 = v22;
    v11 = sub_1007A3184();

    if (v11)
    {
      v12 = sub_1007A29D4();
      sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
      v22 = sub_1007A33A4();
      sub_10079AB44(v12, &_mh_execute_header, v22, "Avoiding exception trying to modally present a view controller we're already presenting", 87, 2, _swiftEmptyArrayStorage);

LABEL_8:

      return;
    }
  }

  [v22 setTransitioningDelegate:{v2, v22}];
  [v23 setModalPresentationStyle:2];
  v13 = [v23 presentationController];
  if (v13)
  {
    v14 = v13;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      [v15 _setWantsFullScreen:1];
      [v16 _setAllowsInteractiveDismissWhenFullScreen:1];
      [v16 _setShouldDismissWhenTappedOutside:1];
      [v16 _setCornerRadiusForPresentationAndDismissal:0.0];
      v17 = OBJC_IVAR___BKPalettePresentationInteraction_view;
      swift_beginAccess();
      v18 = [*(v2 + v17) superview];
      [v16 setSourceView:v18];
    }

    else
    {
    }
  }

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v23;
  aBlock[4] = sub_100345708;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A167B8;
  v20 = _Block_copy(aBlock);
  v21 = v23;
  sub_1000260E8(a1, a2);

  [v7 presentViewController:v21 animated:1 completion:v20];

  _Block_release(v20);
  swift_unknownObjectWeakAssign();
}

id PalettePresentationInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PalettePresentationInteraction();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall PalettePresentationInteraction.willMove(to:)(UIView_optional to)
{
  v2 = v1;
  isa = to.value.super.super.isa;
  v4 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    if (!isa || (sub_10000A7C4(0, &qword_100AD7620, UIView_ptr), v6 = v5, v7 = isa, v8 = sub_1007A3184(), v6, v7, (v8 & 1) == 0) && (v5 = *(v2 + v4)) != 0)
    {
      [v5 removeGestureRecognizer:*(v2 + OBJC_IVAR___BKPalettePresentationInteraction_tapGestureRecognizer)];
      v9 = *(v2 + v4);
      if (v9)
      {
        [v9 removeGestureRecognizer:*(v2 + OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer)];
      }
    }
  }
}

Swift::Void __swiftcall PalettePresentationInteraction.didMove(to:)(UIView_optional to)
{
  v2 = v1;
  isa = to.value.super.super.isa;
  v4 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!isa)
    {
      return;
    }

    v9 = 0;
LABEL_7:
    *(v2 + v4) = isa;
    v10 = isa;

    [(objc_class *)v10 addGestureRecognizer:*(v2 + OBJC_IVAR___BKPalettePresentationInteraction_tapGestureRecognizer)];
    v11 = *(v2 + v4);
    if (!v11)
    {
      return;
    }

    goto LABEL_8;
  }

  if (isa)
  {
    sub_10000A7C4(0, &qword_100AD7620, UIView_ptr);
    v6 = v5;
    v7 = isa;
    v8 = sub_1007A3184();

    if (v8)
    {
      return;
    }

    v9 = *(v2 + v4);
    goto LABEL_7;
  }

  *(v1 + v4) = 0;
  v12 = 0;

  v11 = *(v1 + v4);
  if (!v11)
  {
    return;
  }

LABEL_8:
  [v11 addGestureRecognizer:*(v2 + OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer)];
}

Swift::Bool __swiftcall PalettePresentationInteraction.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = v1;
  sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
  v3 = OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer;
  v4 = *(v1 + OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer);
  v5 = sub_1007A3184();

  v6 = *(v2 + OBJC_IVAR___BKPalettePresentationInteraction_animationController);
  result = (v5 ^ 1) & (v6 == 0);
  if (((v5 ^ 1) & 1) == 0 && !v6)
  {
    v8 = *(v2 + v3);
    v9 = [v8 view];
    [v8 translationInView:v9];
    v11 = v10;
    v13 = v12;

    v14 = fabs(v13);
    return v14 > 2.22044605e-16 && fabs(v11 * 0.5) < v14 && v13 < 2.22044605e-16;
  }

  return result;
}

UIPresentationController_optional __swiftcall PalettePresentationInteraction.presentationController(forPresented:presenting:source:)(UIViewController forPresented, UIViewController_optional presenting, UIViewController source)
{
  isa = presenting.value.super.super.isa;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v6 = v4;
    v7 = type metadata accessor for AssetSheetPresentationController();
    v8.receiver = objc_allocWithZone(v7);
    v8.super_class = v7;
    v4 = objc_msgSendSuper2(&v8, "initWithPresentedViewController:presentingViewController:", v6, isa);
  }

  result.value.super.isa = v4;
  result.is_nil = v5;
  return result;
}

id PalettePresentationInteraction.animationController(forDismissed:)(void *a1)
{
  v2 = [a1 presentingViewController];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = [v4 finishedConsuming], sub_1003453A0(v3, v5, v17), (v18 & 1) == 0))
  {
    v7 = *v17;
    v8 = *&v17[1];
    v9 = *&v17[2];
    v10 = *&v17[3];
    v11 = [v3 traitCollection];
    if (((_UISolariumEnabled() | v5) & 1) != 0 || v11 && [v11 userInterfaceIdiom] == 1)
    {
      v12 = type metadata accessor for AudiobookPaletteStyleAnimationControllerPad();
    }

    else
    {
      v12 = type metadata accessor for AudiobookPaletteStyleAnimationControllerPhone();
    }

    v13 = objc_allocWithZone(v12);
    v14 = v1;
    v6 = sub_10025CE2C(v14);

    [v6 setIsReversed:1];
    [v6 setSourceFrame:{v7, v8, v9, v10}];
    v15 = v6;
    sub_100344208(v6);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1003453A0(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!v8)
  {
    v23 = 0uLL;
    v24 = 0uLL;
LABEL_11:
    *a3 = v23;
    *(a3 + 16) = v24;
    *(a3 + 32) = v8 == 0;
    return;
  }

  v9 = v8;
  if ((_UISolariumEnabled() & 1) != 0 || (a2 & 1) != 0 || (v10 = [a1 traitCollection], v11 = objc_msgSend(v10, "userInterfaceIdiom"), v10, v11 == 1))
  {
    v12 = [a1 view];
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = v12;
    [v12 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v44.origin.x = v15;
    v44.origin.y = v17;
    v44.size.width = v19;
    v44.size.height = v21;
    Height = CGRectGetHeight(v44);
    v45.origin.x = 0.0;
    v45.origin.y = 0.0;
    v45.size.width = 0.0;
    v45.size.height = 0.0;
    v46 = CGRectOffset(v45, 0.0, Height);
    y = v46.origin.y;
    x = v46.origin.x;
  }

  else
  {
    [v9 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [a1 view];
    [v9 convertRect:v33 toView:{v26, v28, v30, v32}];
    y = v35;
    x = v34;
  }

  v36 = [a1 view];
  if (v36)
  {
    v37 = v36;
    [v36 frame];
    v40 = v38;
    v41 = v39;

    *&v23 = x;
    *(&v23 + 1) = y;
    *&v24 = v40;
    *(&v24 + 1) = v41;
    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t _s5Books30PalettePresentationInteractionC17gestureRecognizer_33shouldRecognizeSimultaneouslyWithSbSo09UIGestureF0C_AGtF_0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer);
  sub_10000A7C4(0, &unk_100AEA0E0, UIGestureRecognizer_ptr);
  v3 = v2;
  v4 = sub_1007A3184();

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR___BKPalettePresentationInteraction_tapGestureRecognizer);
    v7 = sub_1007A3184();

    v5 = v7 ^ 1;
  }

  return v5 & 1;
}

id sub_10034565C(void *a1)
{
  v2 = [a1 traitCollection];
  if (_UISolariumEnabled() || v2 && [v2 userInterfaceIdiom] == 1)
  {
    v3 = type metadata accessor for AudiobookPaletteStyleAnimationControllerPad();
  }

  else
  {
    v3 = type metadata accessor for AudiobookPaletteStyleAnimationControllerPhone();
  }

  v4 = objc_allocWithZone(v3);
  v5 = v1;
  v6 = sub_10025CE2C(v5);

  v7 = v6;
  sub_100344208(v6);
  return v6;
}

uint64_t sub_100345708()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t sub_100345740()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1003457A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000077D8(a3, v25 - v10, &qword_100AD67D0, &qword_100814660);
  v12 = sub_1007A2744();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007840(v11, &qword_100AD67D0, &qword_100814660);
  }

  else
  {
    sub_1007A2734();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1007A2694();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1007A2304() + 32;
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

      sub_100007840(a3, &qword_100AD67D0, &qword_100814660);

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

  sub_100007840(a3, &qword_100AD67D0, &qword_100814660);
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

uint64_t sub_100345AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000077D8(a3, v25 - v10, &qword_100AD67D0, &qword_100814660);
  v12 = sub_1007A2744();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007840(v11, &qword_100AD67D0, &qword_100814660);
  }

  else
  {
    sub_1007A2734();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1007A2694();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1007A2304() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1001F1160(&qword_100ADD528, &qword_100833FA0);
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

      sub_100007840(a3, &qword_100AD67D0, &qword_100814660);

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

  sub_100007840(a3, &qword_100AD67D0, &qword_100814660);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1001F1160(&qword_100ADD528, &qword_100833FA0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100345DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000077D8(a3, v25 - v10, &qword_100AD67D0, &qword_100814660);
  v12 = sub_1007A2744();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007840(v11, &qword_100AD67D0, &qword_100814660);
  }

  else
  {
    sub_1007A2734();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1007A2694();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1007A2304() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1001F1160(&unk_100ADD530, &qword_10081C968);
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

      sub_100007840(a3, &qword_100AD67D0, &qword_100814660);

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

  sub_100007840(a3, &qword_100AD67D0, &qword_100814660);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1001F1160(&unk_100ADD530, &qword_10081C968);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1003460C8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      v19 = *(v2 + OBJC_IVAR___BKEngagementManager_eventController);
      sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
      inited = swift_initStackObject();
      v21 = inited;
      *(inited + 16) = xmmword_10080EFF0;
      *(inited + 32) = 0x746E6F436B6F6F62;
      *(inited + 40) = 0xEF65707954746E65;
      *(inited + 48) = a1;
      *(inited + 72) = &type metadata for Int16;
      *(inited + 80) = 0x746E657665;
      v22 = 6581861;
      if ((a1 & 0x10000) != 0)
      {
        v22 = 0x7472617473;
      }

      *(inited + 120) = &type metadata for String;
      v23 = 0xE300000000000000;
      if ((a1 & 0x10000) != 0)
      {
        v23 = 0xE500000000000000;
      }

      *(inited + 88) = 0xE500000000000000;
      *(inited + 96) = v22;
      *(inited + 104) = v23;
      v6 = v19;
      sub_100019158(v21);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
      swift_arrayDestroy();
    }

    else
    {
      v7 = *(v2 + OBJC_IVAR___BKEngagementManager_eventController);
      sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
      v8 = swift_initStackObject();
      v9 = v8;
      *(v8 + 32) = 0x6E6F69746341;
      v10 = v8 + 32;
      *(v8 + 16) = xmmword_10080B690;
      v11 = 1852141679;
      if ((a1 & 1) == 0)
      {
        v11 = 0x65736F6C63;
      }

      v12 = 0xE500000000000000;
      if (a1)
      {
        v12 = 0xE400000000000000;
      }

      *(v8 + 72) = &type metadata for String;
      *(v8 + 40) = 0xE600000000000000;
      *(v8 + 48) = v11;
      *(v8 + 56) = v12;
      v6 = v7;
      sub_100019158(v9);
      swift_setDeallocating();
      sub_100007840(v10, &unk_100ADD560, &unk_10080CDC0);
    }

    goto LABEL_22;
  }

  if (a2 == 2)
  {
    v13 = *(v2 + OBJC_IVAR___BKEngagementManager_eventController);
    sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
    v14 = swift_initStackObject();
    v15 = v14;
    *(v14 + 32) = 0x7463617265746E69;
    v16 = v14 + 32;
    *(v14 + 16) = xmmword_10080B690;
    v17 = 1970169197;
    if (a1)
    {
      v17 = 0x6154656C62756F64;
    }

    v18 = 0xE400000000000000;
    if (a1)
    {
      v18 = 0xE900000000000070;
    }

    *(v14 + 72) = &type metadata for String;
    *(v14 + 40) = 0xEB000000006E6F69;
    *(v14 + 48) = v17;
    *(v14 + 56) = v18;
    v6 = v13;
    sub_100019158(v15);
    swift_setDeallocating();
    sub_100007840(v16, &unk_100ADD560, &unk_10080CDC0);
    goto LABEL_22;
  }

  if (a2 == 3)
  {
    v4 = *(v2 + OBJC_IVAR___BKEngagementManager_eventController);
    sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_10080B690;
    strcpy((v5 + 32), "numberOfPage");
    *(v5 + 72) = &type metadata for Int;
    *(v5 + 45) = 0;
    *(v5 + 46) = -5120;
    *(v5 + 48) = a1;
    v6 = v4;
    sub_100019158(v5);
    swift_setDeallocating();
    sub_100007840(v5 + 32, &unk_100ADD560, &unk_10080CDC0);
LABEL_22:
    sub_10079E994();

    return;
  }

  v24 = *(v2 + OBJC_IVAR___BKEngagementManager_eventController);
  sub_10079E994();
}

id EngagementManager.metadata.getter()
{
  v1 = OBJC_IVAR___BKEngagementManager_metadata;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void EngagementManager.metadata.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BKEngagementManager_metadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *EngagementManager.analyticsHelper.getter()
{
  v1 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void EngagementManager.analyticsHelper.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *EngagementManager.init(configuration:configurationContainer:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10079ACE4();
  __chkstk_darwin(v6);
  v2[OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled] = 0;
  v7 = OBJC_IVAR___BKEngagementManager_metadata;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for EngagementManagerMetadata(0)) init];
  *&v3[OBJC_IVAR___BKEngagementManager_analyticsHelper] = 0;
  *&v3[OBJC_IVAR___BKEngagementManager_updateMetadataGeneration] = 0;
  v8 = OBJC_IVAR___BKEngagementManager____lazy_storage___iso8601DateFormatStyle;
  v9 = sub_100796AD4();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  *&v3[OBJC_IVAR___BKEngagementManager_eventController] = [objc_allocWithZone(sub_10079E9B4()) init];
  v10 = [a1 managerConfiguration];
  v11 = objc_allocWithZone(sub_100799A34());
  *&v3[OBJC_IVAR___BKEngagementManager_manager] = sub_1007998F4();
  *&v3[OBJC_IVAR___BKEngagementManager_remoteConfigurationContainer] = a2;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for EngagementManager(0);
  v12 = a2;
  v13 = objc_msgSendSuper2(&v23, "init");
  v14 = *&v13[OBJC_IVAR___BKEngagementManager_eventController];
  v15 = v13;
  v16 = v14;
  sub_10079E9A4();

  v17 = [objc_allocWithZone(type metadata accessor for SessionDonor(0)) init];
  v18 = *&v15[OBJC_IVAR___BKEngagementManager_manager];
  v19 = v17;
  sub_100799A04();

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v21 = result;
    [result addObserver:v15];

    v22 = [objc_opt_self() defaultCenter];
    [v22 addObserver:v15 selector:"onDidReceiveAppDidBackground:" name:UIApplicationWillResignActiveNotification object:0];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for EngagementManager(uint64_t a1)
{
  result = qword_100ADD310;
  if (!qword_100ADD310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall EngagementManager.setupSessionDonor()()
{
  v1 = v0;
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079AC84();
  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Setting up SessionDonor for engagement manager", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR___BKEngagementManager_manager;
  v10 = *(v1 + OBJC_IVAR___BKEngagementManager_manager);
  v11 = sub_1007999E4();

  if (v11)
  {
    type metadata accessor for SessionDonor(0);
    if (swift_dynamicCastClass())
    {
      v12 = *(v1 + v9);
      sub_1003741B4(v12);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t EngagementManager.setup(personalizationEventDonor:)(void *a1)
{
  v2 = v1;
  v4 = sub_10079ACE4();
  __chkstk_darwin(v4);
  v5 = sub_1007A1C54();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1007A1CA4();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v38 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = sub_1007A1CC4();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v35[-v12];
  v14 = *&v1[OBJC_IVAR___BKEngagementManager_manager];
  sub_100799A04();

  v15 = objc_allocWithZone(type metadata accessor for EngagementManagerAnalyticsHelper());
  v16 = v2;
  v17 = a1;
  v18 = sub_1004A6760(v16, v17);

  v19 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  swift_beginAccess();
  v20 = *&v16[v19];
  *&v16[v19] = v18;

  v21 = OBJC_IVAR___BKEngagementManager_remoteConfigurationContainer;
  v22 = *&v16[OBJC_IVAR___BKEngagementManager_remoteConfigurationContainer];
  sub_10034861C(v22, 0);

  v23 = [objc_opt_self() defaultCenter];
  v24 = sub_1007A2E44();
  [v23 addObserver:v16 selector:"onConfigurationChange:" name:v24 object:*&v16[v21]];

  sub_10000A7C4(0, &unk_100ADD210, NSDistributedNotificationCenter_ptr);
  v25 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v25 addObserver:v16 selector:"onCloudUpdate:" name:BDSSecureEngagementManagerChanged object:0];

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v26 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1007A1D24();
  v36 = *(v36 + 8);
  v27 = v10;
  v28 = v37;
  (v36)(v27, v37);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10035A430;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A168A8;
  v30 = _Block_copy(aBlock);

  v31 = v38;
  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000228AC(&qword_100ADA670, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  v32 = v41;
  v33 = v43;
  sub_1007A3594();
  sub_1007A2D04();
  _Block_release(v30);

  (*(v42 + 8))(v32, v33);
  (*(v39 + 8))(v31, v40);
  return (v36)(v13, v28);
}

Swift::Void __swiftcall EngagementManager.reportAppOpenEvent()()
{
  v1 = v0;
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079AC84();
  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Report appOpen event", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR___BKEngagementManager_eventController);
  sub_10079E994();

  v10 = *(v1 + OBJC_IVAR___BKEngagementManager_manager);
  sub_100799964();
}

double sub_100347ADC()
{
  v1 = v0;
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079AC84();
  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Syncing from CloudKit...", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *&v1[OBJC_IVAR___BKEngagementManager_manager];
  v13[1] = sub_10000A7C4(0, &qword_100ADD668, BDSSecureEngagementData_ptr);
  v10 = v9;
  sub_1001F1160(&unk_100ADD670, &unk_10081CA30);
  sub_1007A22E4();
  *(swift_allocObject() + 16) = v1;
  v11 = v1;
  sub_100799944();

  return result;
}

uint64_t EngagementManager.syncToCloudKit(completion:)(void (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v4 - 8);
  v42 = &v34 - v5;
  v39 = sub_100796AD4();
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v39);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = sub_10079ACE4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079AC84();
  v14 = sub_10079ACC4();
  v15 = sub_1007A29D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Updating CloudKit...", v16, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v17 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  swift_beginAccess();
  v18 = *&v3[v17];
  if (v18)
  {
    v35 = v18;
    v36 = v9;
    sub_100349EB4(v9);
    v19 = sub_1007A2744();
    (*(*(v19 - 8) + 56))(v42, 1, 1, v19);
    v20 = v37;
    v21 = v39;
    (*(v37 + 16))(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v39);
    v22 = (*(v20 + 80) + 56) & ~*(v20 + 80);
    v23 = (v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    v25 = v40;
    v26 = v41;
    *(v24 + 4) = v3;
    *(v24 + 5) = v25;
    *(v24 + 6) = v26;
    (*(v20 + 32))(&v24[v22], &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v27 = v35;
    *&v24[v23] = v35;
    *&v24[(v23 + 15) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
    v28 = v27;
    v29 = v3;

    sub_1003457A0(0, 0, v42, &unk_10081C828, v24);

    return (*(v20 + 8))(v36, v21);
  }

  else
  {
    v31 = sub_100799784();
    sub_1000228AC(&qword_100ADD220, 255, &type metadata accessor for PropertyError, &protocol conformance descriptor for PropertyError);
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, enum case for PropertyError.InvalidPropertyValue(_:), v31);
    v40(v32, 1);
  }
}

double EngagementManager.onCloudUpdate(_:)()
{
  if (*(v0 + OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled) == 1)
  {
    return sub_100347ADC();
  }

  return result;
}

uint64_t sub_100348448(uint64_t a1, char a2)
{
  v3 = sub_10079ACE4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  if (a2)
  {
    sub_10079AC84();
    v10 = sub_10079ACC4();
    v11 = sub_1007A29B4();
    if (!os_log_type_enabled(v10, v11))
    {
      v6 = v9;
      goto LABEL_8;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error while updating local storage for engagement collector", v12, 2u);
    v6 = v9;
    goto LABEL_6;
  }

  sub_10079AC84();
  v10 = sub_10079ACC4();
  v13 = sub_1007A29A4();
  if (os_log_type_enabled(v10, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v10, v13, "Engagement Collector updated local storage successfully", v14, 2u);
LABEL_6:
  }

LABEL_8:

  return (*(v4 + 8))(v6, v3);
}

void sub_10034861C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!a2)
  {
    sub_10079E764();
  }

  v4.super.isa = sub_1007A2024().super.isa;

  if ([(objc_class *)v4.super.isa valueForKeyPath:BRCBooksDefaultsKeyPersonalizationLocalSignalSyncEnabled])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  sub_1000077D8(v13, &v11, &unk_100AD5B40, &unk_100811300);
  if (!*(&v12 + 1))
  {
    sub_100007840(&v11, &unk_100AD5B40, &unk_100811300);
LABEL_13:
    if (*(v2 + OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled) == 1)
    {
      *(v2 + OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled) = 0;
    }

    goto LABEL_15;
  }

  sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = [v10 BOOLValue];

  v6 = OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled;
  if (v5 != *(v3 + OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled))
  {
    *(v3 + OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled) = v5;
    if (v5)
    {
      sub_100347ADC();
      if (*(v3 + v6) == 1)
      {
        v7 = [objc_allocWithZone(type metadata accessor for EngagementManagerMetadata(0)) init];
        v8 = OBJC_IVAR___BKEngagementManager_metadata;
        swift_beginAccess();
        v9 = *(v3 + v8);
        *(v3 + v8) = v7;

        sub_10034884C();
        sub_100007840(v13, &unk_100AD5B40, &unk_100811300);
        return;
      }
    }
  }

LABEL_15:
  sub_100007840(v13, &unk_100AD5B40, &unk_100811300);
}

void sub_10034884C()
{
  v1 = v0;
  v2 = sub_1007A1C54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A1CA4();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007A1CC4();
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v17 = *(v1 + OBJC_IVAR___BKEngagementManager_updateMetadataGeneration);
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR___BKEngagementManager_updateMetadataGeneration) = v18;
    v26 = v8;
    v19 = v13;
    v29 = v13;
    v20 = v14;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v30 = v6;
    v27 = sub_1007A2D74();
    sub_1007A1CB4();
    sub_1007A1D24();
    v28 = *(v20 + 8);
    v28(v11, v19);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v18;
    aBlock[4] = sub_10035A230;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A16E70;
    v23 = _Block_copy(aBlock);

    v24 = v26;
    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000228AC(&qword_100ADA670, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100234698();
    sub_1007A3594();
    v25 = v27;
    sub_1007A2D04();
    _Block_release(v23);

    (*(v3 + 8))(v5, v2);
    (*(v31 + 8))(v24, v30);
    v28(v16, v29);
  }
}

double sub_100348C40()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = *&v0[OBJC_IVAR___BKEngagementManager_manager];
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = sub_1003599A8;
  v4[4] = v2;
  v4[5] = ObjectType;
  v5 = v0;
  v6 = v3;

  sub_1007999C4();

  return result;
}

uint64_t sub_100348D24(double a1)
{
  v1 = sub_1007A1C54();
  v21 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1CA4();
  v19 = *(v4 - 8);
  v20 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007A1CC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v14 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1007A1D24();
  v18 = *(v8 + 8);
  v18(v10, v7);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100359A40;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A16A88;
  v16 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000228AC(&qword_100ADA670, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  sub_1007A3594();
  sub_1007A2D04();
  _Block_release(v16);

  (*(v21 + 8))(v3, v1);
  (*(v19 + 8))(v6, v20);
  return (v18)(v13, v7);
}

void sub_1003490E0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100348C40();
  }
}

uint64_t sub_100349134(uint64_t a1, void *a2, void (*a3)(void, double), uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a3;
  v35 = a4;
  v32 = a2;
  v6 = sub_1001F1160(&unk_100ADD540, &qword_10081C978);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_100796BB4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v32 - v18;
  v20 = *(v10 + 56);
  v20(&v32 - v18, 1, 1, v9, v17);
  sub_1000077D8(a1, v8, &unk_100ADD540, &qword_10081C978);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100007840(v8, &unk_100ADD540, &qword_10081C978);
  }

  else
  {
    v21 = *(v10 + 32);
    v21(v15, v8, v9);
    sub_100007840(v19, &unk_100ADB5C0, &unk_100816880);
    v21(v19, v15, v9);
    (v20)(v19, 0, 1, v9);
  }

  if ((*(v10 + 48))(v19, 1, v9) || ((*(v10 + 16))(v12, v19, v9), sub_100796B34(), v23 = v22, v24 = (*(v10 + 8))(v12, v9), v23 < -86400.0))
  {
    v25 = swift_allocObject();
    v26 = v32;
    v27 = v34;
    v28 = v35;
    v25[2] = v32;
    v25[3] = v27;
    v29 = v33;
    v25[4] = v28;
    v25[5] = v29;
    v30 = v26;

    EngagementManager.syncToCloudKit(completion:)(sub_1003599FC, v25);
  }

  else
  {
    v34(v24, v23 + 86400.0 + 10.0);
  }

  return sub_100007840(v19, &unk_100ADB5C0, &unk_100816880);
}

uint64_t sub_1003494BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100796BB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + OBJC_IVAR___BKEngagementManager_manager);
  sub_100796BA4();
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;

  sub_1007999D4();

  return (*(v11 + 8))(v13, v10);
}

Swift::Void __swiftcall EngagementManager.forcePurgeAll()()
{
  v1 = *(v0 + OBJC_IVAR___BKEngagementManager_manager);
  sub_1007999B4();
}

uint64_t EngagementManager.donor(type:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___BKEngagementManager_manager);
  v4 = sub_1007999E4();

  return v4;
}

double EngagementManager.engagementEventDataForEvent(eventName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR___BKEngagementManager_manager);
  sub_100799A14();

  sub_1007998B4();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_100799724();

  return result;
}

void sub_10034986C(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v6 = sub_100799734();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100ADD598, &qword_10081C988);
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  sub_1000077D8(a1, &v49 - v11, &qword_100ADD598, &qword_10081C988);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_1000228AC(&qword_100ADD5A0, 255, &type metadata accessor for CollectorError, &protocol conformance descriptor for CollectorError);
    v13 = swift_allocError();
    (*(v7 + 16))(v14, v9, v6);
    a2(0, v13);

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v50 = a2;
    v15 = *v12;
    v18 = *(*v12 + 64);
    v17 = *v12 + 64;
    v16 = v18;
    v19 = 1 << *(v15 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v16;
    v22 = (v19 + 63) >> 6;
    v53 = v15;

    v23 = 0;
    v24 = _swiftEmptyDictionarySingleton;
    v51 = v17;
    v52 = a3;
    while (v21)
    {
LABEL_13:
      v27 = __clz(__rbit64(v21)) | (v23 << 6);
      v28 = *(*(v53 + 48) + 8 * v27);
      v29 = (*(v53 + 56) + 48 * v27);
      v30 = *(v29 + 25);
      v31 = v29[1];
      v57 = *v29;
      v58[0] = v31;
      *(v58 + 9) = v30;
      v32 = v28;
      sub_100359B60(&v57, v56);
      v33 = sub_100799814();
      v35 = v34;
      sub_100799794();
      sub_1000076D4(v56, v55);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v24;
      v37 = sub_10000E53C(v33, v35);
      v39 = v24[2];
      v40 = (v38 & 1) == 0;
      v41 = __OFADD__(v39, v40);
      v42 = v39 + v40;
      if (v41)
      {
        goto LABEL_24;
      }

      v43 = v38;
      if (v24[3] >= v42)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = v37;
          sub_1002F0EA0();
          v37 = v48;
        }
      }

      else
      {
        sub_1003D4168(v42, isUniquelyReferenced_nonNull_native);
        v37 = sub_10000E53C(v33, v35);
        if ((v43 & 1) != (v44 & 1))
        {
          goto LABEL_26;
        }
      }

      v24 = v54;
      if (v43)
      {
        v25 = (v54[7] + 32 * v37);
        sub_1000074E0(v25);
        sub_1000076D4(v55, v25);
      }

      else
      {
        v54[(v37 >> 6) + 8] |= 1 << v37;
        v45 = (v24[6] + 16 * v37);
        *v45 = v33;
        v45[1] = v35;
        sub_1000076D4(v55, v24[7] + 32 * v37);
        v46 = v24[2];
        v41 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v41)
        {
          goto LABEL_25;
        }

        v24[2] = v47;
      }

      v21 &= v21 - 1;
      sub_100359BBC(&v57);
      v17 = v51;
    }

    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v22)
      {

        v50(v24, 0);

        return;
      }

      v21 = *(v17 + 8 * v26);
      ++v23;
      if (v21)
      {
        v23 = v26;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1007A3B24();
    __break(1u);
  }
}

void sub_100349E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = sub_1007A2024().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = sub_1007967C4();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_100349EB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&unk_100ADD550, &qword_1008424E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___BKEngagementManager____lazy_storage___iso8601DateFormatStyle;
  swift_beginAccess();
  sub_1000077D8(v1 + v9, v8, &unk_100ADD550, &qword_1008424E0);
  v10 = sub_100796AD4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_100007840(v8, &unk_100ADD550, &qword_1008424E0);
  sub_100796734();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1002391EC(v5, v1 + v9, &unk_100ADD550, &qword_1008424E0);
  return swift_endAccess();
}

id EngagementManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10034A1E4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t, __n128))
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v38 = a1;

  v11 = 0;
  v37 = v6;
  if (v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v15 >= v10)
    {

      (a4)(a3, a2);

      return;
    }

    v9 = *(v6 + 8 * v15);
    ++v11;
  }

  while (!v9);
  while (1)
  {
    v16 = __clz(__rbit64(v9)) | (v15 << 6);
    v17 = (*(v38 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*(v38 + 56) + 8 * v16);
    swift_bridgeObjectRetain_n();
    v21 = v20;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_10000E53C(v19, v18);
    v25 = a3[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (a3[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v23;
        sub_1002F158C();
        v23 = v34;
      }
    }

    else
    {
      sub_1003D4CE0(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_10000E53C(v19, v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_26;
      }
    }

    v9 &= v9 - 1;
    if (v29)
    {
      v12 = v23;

      v13 = a3[7];
      v14 = *(v13 + 8 * v12);
      *(v13 + 8 * v12) = v21;

      v11 = v15;
      v6 = v37;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      a3[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (a3[6] + 16 * v23);
      *v31 = v19;
      v31[1] = v18;
      *(a3[7] + 8 * v23) = v21;

      v32 = a3[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
        goto LABEL_25;
      }

      a3[2] = v33;
      v11 = v15;
      v6 = v37;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v15 = v11;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1007A3B24();
  __break(1u);
}

void sub_10034A550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A7C4(0, &qword_100AD7E98, AMSDialogRequest_ptr);
  v5.super.isa = sub_1007A2024().super.isa;
  if (a2)
  {
    v6 = sub_1007967C4();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_10034A608(void *a1, uint64_t a2, void (*a3)(__n128), uint64_t a4)
{
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_10079AC84();
    swift_errorRetain();
    v13 = sub_10079ACC4();
    v14 = sub_1007A29B4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v37 = a3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v36 = a1;
      v18 = v17;
      v39[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v19 = sub_1007A3B84();
      v21 = sub_1000070F4(v19, v20, v39);
      v35 = v8;
      v22 = a4;
      v23 = v21;

      *(v16 + 4) = v23;
      a4 = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed fetching request. %s", v16, 0xCu);
      sub_1000074E0(v18);
      a1 = v36;

      a3 = v37;

      (*(v9 + 8))(v12, v35);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }

  v40 = _swiftEmptyDictionarySingleton;
  if (a1)
  {
    v24 = [a1 messageActions];
    if (v24)
    {
      v25 = v24;
      sub_10000A7C4(0, &qword_100ADD588, AMSEngagementMessageEventServiceResponse_ptr);
      v26 = sub_1007A25E4();

      v38 = a4;
      if (v26 >> 62)
      {
        goto LABEL_19;
      }

      for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
      {
        v28 = 0;
        while (1)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v29 = sub_1007A3784();
          }

          else
          {
            if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v29 = *(v26 + 8 * v28 + 32);
          }

          v30 = v29;
          v31 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          v39[0] = v29;
          sub_10034A974(v39, &v40);

          ++v28;
          if (v31 == i)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        ;
      }

LABEL_20:
    }
  }

  swift_beginAccess();

  (a3)(v32, a2);
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_10034A974(id *a1, void *a2)
{
  v5 = sub_10079ACE4();
  v61 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*a1 placements];
  v62 = v8;
  if (!v9)
  {
LABEL_29:
    sub_10079AC84();
    v49 = sub_10079ACC4();
    v50 = sub_1007A29D4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v69 = v52;
      *v51 = 136315138;
      swift_beginAccess();
      sub_10000A7C4(0, &qword_100AD7E98, AMSDialogRequest_ptr);

      v53 = sub_1007A2054();
      v55 = v54;

      v56 = sub_1000070F4(v53, v55, &v69);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "requests: %s", v51, 0xCu);
      sub_1000074E0(v52);

      return (*(v61 + 8))(v62, v5);
    }

    else
    {

      return (*(v61 + 8))(v8, v5);
    }
  }

  v10 = v9;
  v59 = v5;
  v60 = v2;
  sub_10000A7C4(0, &qword_100ADD590, AMSEngagementMessageRequest_ptr);
  v11 = sub_1007A2044();

  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v63 = a2;
  v64 = v16;
  v65 = v11 + 64;
  if (v15)
  {
LABEL_9:
    while (1)
    {
      v19 = __clz(__rbit64(v15)) | (v17 << 6);
      v20 = (*(v11 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(v11 + 56) + 8 * v19);

      v68 = v23;
      v24 = v11;
      v25 = [v68 makeDialogRequest];
      swift_beginAccess();
      v67 = v25;
      if (v25)
      {
        break;
      }

      v37 = sub_10000E53C(v21, v22);
      v11 = v24;
      v12 = v65;
      if (v38)
      {
        v39 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *a2;
        v69 = *a2;
        *a2 = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002F158C();
          v41 = v69;
        }

        sub_1002F9CFC();
LABEL_25:
        *a2 = v41;
      }

      v15 &= v15 - 1;
      swift_endAccess();

      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *a2;
    v27 = v69;
    *a2 = 0x8000000000000000;
    v66 = v21;
    v28 = v22;
    v30 = sub_10000E53C(v21, v22);
    v31 = *(v27 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_33;
    }

    v34 = v29;
    if (*(v27 + 24) >= v33)
    {
      if ((v26 & 1) == 0)
      {
        sub_1002F158C();
      }
    }

    else
    {
      sub_1003D4CE0(v33, v26);
      v35 = sub_10000E53C(v66, v22);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_35;
      }

      v30 = v35;
    }

    v11 = v24;
    v41 = v69;
    v12 = v65;
    if (v34)
    {
      v42 = v69[7];
      v43 = *(v42 + 8 * v30);
      *(v42 + 8 * v30) = v67;

      v16 = v64;
    }

    else
    {
      v69[(v30 >> 6) + 8] |= 1 << v30;
      v44 = (v41[6] + 16 * v30);
      v45 = v67;
      *v44 = v66;
      v44[1] = v28;
      *(v41[7] + 8 * v30) = v45;
      v46 = v41[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      v16 = v64;
      if (v47)
      {
        goto LABEL_34;
      }

      v41[2] = v48;
    }

    a2 = v63;
    goto LABEL_25;
  }

LABEL_5:
  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      v5 = v59;
      v8 = v62;
      goto LABEL_29;
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

Swift::Void __swiftcall EngagementManager.sendReaderEventNewSectionViaToC()()
{
  v1 = *(v0 + OBJC_IVAR___BKEngagementManager_eventController);
  sub_10079E994();
}

uint64_t sub_10034B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v12;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_100796BB4();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_10034B124, 0, 0);
}

uint64_t sub_10034B124()
{
  v1 = *(v0[4] + OBJC_IVAR___BKEngagementManager_manager);
  v0[15] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_10034B1E0;
  v4 = v0[14];

  return sub_10034B718(v4, v2);
}

uint64_t sub_10034B1E0()
{

  return _swift_task_switch(sub_10034B2DC, 0, 0);
}

uint64_t sub_10034B2DC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_100796A94();
  v4 = sub_100796B14();
  v5 = *(v3 + 8);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (v4)
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    v12 = *(v0 + 72);
    v21 = *(v0 + 56);
    sub_100796BA4();
    (*(v11 + 16))(v9, v6, v10);
    v13 = sub_1001F1160(&qword_100ADD5A8, &qword_1008354D0);
    v14 = swift_task_alloc();
    *(v0 + 152) = v14;
    *(v14 + 16) = v9;
    *(v14 + 24) = v7;
    *(v14 + 32) = v21;
    *(v14 + 48) = v8;
    *(v14 + 56) = v12;
    v15 = swift_task_alloc();
    *(v0 + 160) = v15;
    *v15 = v0;
    v15[1] = sub_10034B508;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v13, v13, 0, 0, &unk_10081C9B8, v14, v13);
  }

  else
  {
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = *(v0 + 80);
    (*(v0 + 40))(0, 0);

    v5(v16, v18);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_10034B508()
{

  return _swift_task_switch(sub_10034B620, 0, 0);
}

uint64_t sub_10034B620()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v10 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  (*(v0 + 40))(v6, v7);

  sub_100359CEC(v6, v7);
  v1(v2, v5);
  v1(v4, v5);
  v1(v10, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10034B718(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[7] = v4;
  *v4 = v3;
  v4[1] = sub_10034B7FC;

  return Manager.getAllConfigurations()();
}

uint64_t sub_10034B7FC(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_10034B8FC, 0, 0);
}

uint64_t sub_10034B8FC()
{
  v33 = v0;
  v1 = v0[8];
  v32 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_1007A38D4();
    v3 = v0[8];
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
  }

  if (v2)
  {
    v4 = 0;
    v0 = (v1 & 0xC000000000000001);
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v3 + 32;
    while (1)
    {
      if (v0)
      {
        v7 = sub_1007A3784();
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v7 = *(v6 + 8 * v4);
        swift_unknownObjectRetain();
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v0 = v31;
          v9 = v32;

          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_31;
        }
      }

      if ([v7 shouldBeSynced])
      {
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        v1 = &v32;
        sub_1007A37E4();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v4;
      if (v8 == v2)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if ((v9 & 0x4000000000000000) != 0)
  {
LABEL_31:
    v10 = sub_1007A38D4();
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_32:

    v17 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_32;
  }

LABEL_20:
  v32 = _swiftEmptyArrayStorage;
  v11 = sub_1003BD0CC(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    return Manager.getEarliestTimestamp(propertyNames:assetIDs:earliestTimestampComparator:)(v11, v12, v13, v14, v15);
  }

  v16 = 0;
  v17 = v32;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v18 = sub_1007A3784();
    }

    else
    {
      v18 = *(v9 + 8 * v16 + 32);
      swift_unknownObjectRetain();
    }

    v19 = [v18 eventName];
    v20 = sub_1007A2254();
    v22 = v21;

    swift_unknownObjectRelease();
    v32 = v17;
    v24 = v17[2];
    v23 = v17[3];
    if (v24 >= v23 >> 1)
    {
      sub_1003BD0CC((v23 > 1), v24 + 1, 1);
      v17 = v32;
    }

    ++v16;
    v17[2] = v24 + 1;
    v25 = &v17[2 * v24];
    v25[4] = v20;
    v25[5] = v22;
  }

  while (v10 != v16);

  v0 = v31;
LABEL_33:
  v26 = v0[4];
  v27 = sub_10040E374(v17);
  v0[9] = v27;

  v28 = swift_task_alloc();
  v0[10] = v28;
  *(v28 + 16) = v26;
  v29 = swift_task_alloc();
  v0[11] = v29;
  *v29 = v0;
  v29[1] = sub_10034BC50;
  v11 = v0[6];
  v14 = sub_10035A180;
  v12 = v27;
  v13 = 0;
  v15 = v28;

  return Manager.getEarliestTimestamp(propertyNames:assetIDs:earliestTimestampComparator:)(v11, v12, v13, v14, v15);
}

uint64_t sub_10034BC50()
{

  return _swift_task_switch(sub_10034BD84, 0, 0);
}

uint64_t sub_10034BD84()
{
  v1 = v0[5];
  sub_1000077D8(v0[6], v1, &unk_100ADB5C0, &unk_100816880);
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[2];
  if (v5 == 1)
  {
    sub_100796A94();
    sub_100007840(v7, &unk_100ADB5C0, &unk_100816880);
    if (v4(v6, 1, v2) != 1)
    {
      sub_100007840(v0[5], &unk_100ADB5C0, &unk_100816880);
    }
  }

  else
  {
    sub_100007840(v0[6], &unk_100ADB5C0, &unk_100816880);
    (*(v3 + 32))(v8, v6, v2);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10034BF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = sub_1001F1160(&qword_100ADD5B0, &qword_10081C9C0);
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v10 = sub_100796AD4();
  v8[22] = v10;
  v11 = *(v10 - 8);
  v8[23] = v11;
  v8[24] = *(v11 + 64);
  v8[25] = swift_task_alloc();
  sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v12 = sub_100796BB4();
  v8[28] = v12;
  v8[29] = *(v12 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v13 = sub_100796544();
  v8[35] = v13;
  v14 = *(v13 - 8);
  v8[36] = v14;
  v8[37] = *(v14 + 64);
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();

  return _swift_task_switch(sub_10034C190, 0, 0);
}

uint64_t sub_10034C190()
{
  v1 = *(v0 + 232);
  v3 = *(v1 + 16);
  v1 += 16;
  v2 = v3;
  v4 = (v1 - 8);
  v38 = *(v0 + 296) + 7;
  v37 = *(v0 + 192) + 7;
  v41 = *(v0 + 184);
  v35 = (v1 + 24);
  v36 = (*(v0 + 288) + 8);
  v42 = *(v0 + 288);
  v43 = **(v0 + 96);
  v39 = (v1 - 8);
  v40 = v3;
  do
  {
    v45 = *(v0 + 312);
    v49 = *(v0 + 304);
    v12 = *(v0 + 272);
    v58 = *(v0 + 280);
    v54 = v12;
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 248);
    v46 = *(v0 + 240);
    v16 = *(v0 + 224);
    v59 = *(v0 + 216);
    v53 = *(v0 + 208);
    v56 = *(v0 + 176);
    v57 = *(v0 + 200);
    v50 = *(v0 + 144);
    v52 = *(v0 + 128);
    v48 = *(v0 + 120);
    v51 = *(v0 + 112);
    v2(v12, *(v0 + 104), v16);
    sub_100354B00(v12, v13);
    sub_100796AE4();
    sub_100354B00(v14, v15);
    v2(v46, v13, v16);
    sub_100796AA4();
    sub_100796524();
    v17 = *v4;
    (*v4)(v15, v16);
    v17(v14, v16);
    v17(v13, v16);
    v18 = v54;
    v55 = v17;
    v17(v18, v16);
    v44 = sub_1007A2744();
    v47 = *(v44 - 8);
    (*(v47 + 56))(v59, 1, 1, v44);
    (*(v42 + 16))(v49, v45, v58);
    (*(v41 + 16))(v57, v48, v56);
    v19 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v20 = (v38 + v19) & 0xFFFFFFFFFFFFFFF8;
    v21 = (*(v41 + 80) + v20 + 8) & ~*(v41 + 80);
    v22 = (v37 + v21) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    (*(v42 + 32))(v23 + v19, v49, v58);
    *(v23 + v20) = v51;
    (*(v41 + 32))(v23 + v21, v57, v56);
    *(v23 + v22) = v52;
    *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v50;
    sub_1000077D8(v59, v53, &qword_100AD67D0, &qword_100814660);
    LODWORD(v20) = (*(v47 + 48))(v53, 1, v44);
    v24 = v51;
    v25 = v52;
    v26 = *(v0 + 208);
    if (v20 == 1)
    {
      sub_100007840(*(v0 + 208), &qword_100AD67D0, &qword_100814660);
    }

    else
    {
      sub_1007A2734();
      (*(v47 + 8))(v26, v44);
    }

    if (*(v23 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v27 = sub_1007A2694();
      v29 = v28;
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = swift_allocObject();
    *(v30 + 16) = &unk_10081C9D0;
    *(v30 + 24) = v23;

    sub_1001F1160(&qword_100ADD5A8, &qword_1008354D0);
    v31 = v29 | v27;
    if (v29 | v27)
    {
      v31 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v27;
      *(v0 + 40) = v29;
    }

    v5 = *(v0 + 312);
    v6 = *(v0 + 272);
    v7 = *(v0 + 280);
    v8 = *(v0 + 216);
    v9 = *(v0 + 224);
    v10 = *(v0 + 104);
    *(v0 + 48) = 1;
    *(v0 + 56) = v31;
    *(v0 + 64) = v43;
    swift_task_create();

    sub_100007840(v8, &qword_100AD67D0, &qword_100814660);
    sub_100796514();
    (*v36)(v5, v7);
    (*v35)(v10, v6, v9);
    v2 = v40;
    v40(v6, v10, v9);
    v11 = sub_100796B14();
    v4 = v39;
    v55(v6, v9);
  }

  while ((v11 & 1) != 0);
  sub_1007A26C4();
  v32 = swift_task_alloc();
  *(v0 + 320) = v32;
  *v32 = v0;
  v32[1] = sub_10034C7D8;
  v33 = *(v0 + 152);

  return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v33);
}

uint64_t sub_10034C7D8()
{

  return _swift_task_switch(sub_10034C8D4, 0, 0);
}

uint64_t sub_10034C8D4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  if (v2 == 255)
  {
    v1 = 0;
  }

  else if ((v2 & 1) == 0)
  {
    v3 = swift_task_alloc();
    *(v0 + 320) = v3;
    *v3 = v0;
    v3[1] = sub_10034C7D8;
    v4 = *(v0 + 152);

    return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v4);
  }

  v5 = v2 != 255;
  v6 = *(v0 + 88);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  *v6 = v1;
  *(v6 + 8) = v5;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10034CAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  v9 = sub_10079ACE4();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_10034CB6C, 0, 0);
}

uint64_t sub_10034CB6C()
{
  v1 = *(v0 + 104);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  v3 = *(v0 + 88);
  *(v2 + 16) = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  v5 = sub_1001F1160(&qword_100ADD5A8, &qword_1008354D0);
  *v4 = v0;
  v4[1] = sub_10034CC88;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 40, 0, 0, 0xD00000000000003DLL, 0x80000001008CC7E0, sub_100359EAC, v2, v5);
}

uint64_t sub_10034CC88()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10034CE18;
  }

  else
  {

    v2 = sub_10034CDA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10034CDA4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  *v2 = *(v0 + 40);
  *(v2 + 8) = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10034CE18()
{
  v18 = v0;

  sub_10079AC84();
  swift_errorRetain();
  v1 = sub_10079ACC4();
  v2 = sub_1007A29B4();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1007A3B84();
    v10 = sub_1000070F4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error syncing bucket to CloudKit: %s", v6, 0xCu);
    sub_1000074E0(v7);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[8];
  *v14 = v0[19];
  *(v14 + 8) = 1;

  v15 = v0[1];

  return v15();
}

uint64_t sub_10034CFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v41 = a4;
  v6 = sub_100796AD4();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100796BB4();
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  sub_1000077D8(a2, &v35 - v21, &unk_100ADB5C0, &unk_100816880);
  if (*(a1 + 40) == 2 && (v23 = *(a1 + 32), *(v23 + 16)) && (v24 = sub_10000E53C(0x6D617473656D6974, 0xE900000000000070), (v25 & 1) != 0) && (sub_100007484(*(v23 + 56) + 32 * v24, v43), sub_1001F1160(&qword_100ADD660, &qword_10081CA28), (swift_dynamicCast() & 1) != 0))
  {
    v26 = v42;
    sub_100349EB4(v8);
    sub_100796AB4();
    v37 = v26;
    (*(v38 + 8))(v8, v6);
    v28 = v39;
    v29 = v40;
    v38 = *(v39 + 56);
    (v38)(v19, 0, 1, v40);
    v30 = *(v28 + 32);
    v30(v36, v19, v29);
    sub_1000077D8(v22, v16, &unk_100ADB5C0, &unk_100816880);
    v31 = *(v28 + 48);
    if (v31(v16, 1, v29) == 1)
    {

      sub_100007840(v16, &unk_100ADB5C0, &unk_100816880);
      v32 = v36;
      goto LABEL_13;
    }

    sub_100007840(v16, &unk_100ADB5C0, &unk_100816880);
    v29 = v40;
    sub_1000077D8(v22, v13, &unk_100ADB5C0, &unk_100816880);
    result = (v31)(v13, 1, v29);
    if (result != 1)
    {

      v32 = v36;
      v33 = sub_100796B84();
      v34 = *(v39 + 8);
      v34(v13, v29);
      if (v33 != -1)
      {
        v34(v32, v29);
        return sub_10020B3C8(v22, v41, &unk_100ADB5C0, &unk_100816880);
      }

LABEL_13:
      sub_100007840(v22, &unk_100ADB5C0, &unk_100816880);
      v30(v22, v32, v29);
      (v38)(v22, 0, 1, v29);
      return sub_10020B3C8(v22, v41, &unk_100ADB5C0, &unk_100816880);
    }

    __break(1u);
  }

  else
  {
    sub_100007840(v22, &unk_100ADB5C0, &unk_100816880);
    return sub_1000077D8(a2, v41, &unk_100ADB5C0, &unk_100816880);
  }

  return result;
}

double sub_10034D558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v52 = a6;
  v53 = a2;
  v48 = a5;
  v60 = a4;
  v51 = a1;
  v58 = sub_1001F1160(&qword_100ADD5B8, &unk_10081C9E0);
  v56 = *(v58 - 8);
  v50 = *(v56 + 64);
  __chkstk_darwin(v58);
  v59 = &v42 - v7;
  v57 = sub_100796544();
  v55 = *(v57 - 8);
  v49 = *(v55 + 64);
  __chkstk_darwin(v57);
  v54 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100796AD4();
  v9 = *(v45 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v45);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = [objc_opt_self() sharedManager];
  v47 = [v17 engagementManager];

  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyDictionarySingleton;
  v42 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = _swiftEmptyDictionarySingleton;
  v46 = v16;
  sub_100796534();
  v20 = sub_100796BB4();
  v21 = *(*(v20 - 8) + 56);
  v21(v16, 0, 1, v20);
  v44 = v13;
  sub_100796514();
  v21(v13, 0, 1, v20);
  v22 = v43;
  v23 = v45;
  (*(v9 + 16))(v43, v48, v45);
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v60;
  (*(v9 + 32))(v26 + v24, v22, v23);
  *(v26 + v25) = v18;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v27 = v19;
  v28 = v55;
  (*(v55 + 16))(v54, a3, v57);
  v29 = v56;
  (*(v56 + 16))(v59, v51, v58);
  v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v31 = (v49 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v29 + 80) + v32 + 8) & ~*(v29 + 80);
  v34 = (v50 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v55 + 32))(v36 + v30, v54, v57);
  *(v36 + v31) = v27;
  *(v36 + v32) = v42;
  (*(v56 + 32))(v36 + v33, v59, v58);
  *(v36 + v34) = v60;
  *(v36 + v35) = v47;
  v37 = v52;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v52;
  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain();
  v38 = v37;
  v39 = v46;
  v40 = v44;
  sub_100799A24();
  swift_unknownObjectRelease();

  sub_100007840(v40, &unk_100ADB5C0, &unk_100816880);
  sub_100007840(v39, &unk_100ADB5C0, &unk_100816880);

  return result;
}

id sub_10034DB0C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v92 = a5;
  v93 = a4;
  v88 = a3;
  v11 = sub_100796AD4();
  v86 = *(v11 - 8);
  v87 = v11;
  __chkstk_darwin(v11);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100ADD620, &unk_10081C9F0);
  __chkstk_darwin(v13 - 8);
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  v18 = sub_1001F1160(&qword_100ADD638, &qword_10081CA00);
  __chkstk_darwin(v18 - 8);
  v20 = &v82 - v19;
  v21 = sub_1007988C4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v89 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v94 = &v82 - v25;
  v26 = sub_100798B14();
  v95 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 shouldBeSynced];
  if (!result)
  {
    return result;
  }

  v82 = a6;
  v83 = a7;
  v91 = v26;
  sub_100798B04();
  [a1 ageToExpire];
  sub_100798AD4();
  [a1 countLimit];
  sub_100798A94();
  v31 = [a1 eventName];
  sub_1007A2254();
  v90 = v21;

  v32 = v90;
  sub_100798AF4();
  [a1 recordType];
  sub_100799774();
  sub_100798AB4();
  sub_10034E388(a2, v20);
  v33 = (*(v22 + 48))(v20, 1, v32);
  v93 = v22;
  if (v33 == 1)
  {
    (*(v95 + 8))(v29, v91);
    return sub_100007840(v20, &qword_100ADD638, &qword_10081CA00);
  }

  (*(v93 + 32))(v94, v20, v32);
  v34 = [a1 eventName];
  v35 = sub_1007A2254();
  v37 = v36;

  v38 = v82;
  swift_beginAccess();
  v39 = *(v38 + 16);
  if (*(v39 + 16))
  {
    v40 = sub_10000E53C(v35, v37);
    v42 = v41;

    v43 = v83;
    if (v42)
    {
      (*(v95 + 16))(v17, *(v39 + 56) + *(v95 + 72) * v40, v91);
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }
  }

  else
  {

    v44 = 1;
    v43 = v83;
  }

  v45 = v95;
  v46 = *(v95 + 56);
  v47 = v91;
  v46(v17, v44, 1, v91);
  swift_endAccess();
  LODWORD(v47) = (*(v45 + 48))(v17, 1, v47);
  sub_100007840(v17, &qword_100ADD620, &unk_10081C9F0);
  if (v47 == 1)
  {
    v48 = [a1 eventName];
    v49 = sub_1007A2254();
    v51 = v50;

    v52 = v84;
    v53 = v91;
    (*(v95 + 16))(v84, v29, v91);
    v46(v52, 0, 1, v53);
    swift_beginAccess();
    sub_1005E938C(v52, v49, v51);
    swift_endAccess();
  }

  v54 = [a1 eventName];
  v55 = sub_1007A2254();
  v57 = v56;

  swift_beginAccess();
  v58 = *(v43 + 16);
  v59 = v94;
  if (!*(v58 + 16))
  {

    goto LABEL_15;
  }

  v60 = sub_10000E53C(v55, v57);
  v62 = v61;

  if ((v62 & 1) == 0)
  {
LABEL_15:
    swift_endAccess();
    v63 = _swiftEmptyDictionarySingleton;
    goto LABEL_16;
  }

  v63 = *(*(v58 + 56) + 8 * v60);
  swift_endAccess();

LABEL_16:
  v64 = v85;
  sub_1007963F4();
  sub_1000228AC(&qword_100ADD570, 255, &type metadata accessor for Date.ISO8601FormatStyle, &protocol conformance descriptor for Date.ISO8601FormatStyle);
  v65 = v87;
  sub_100796B94();
  (*(v86 + 8))(v64, v65);
  v67 = v97;
  v66 = v98;
  if (sub_100798824())
  {
    v97 = sub_1007987F4();
    v98 = v68;

    v99._countAndFlagsBits = 124;
    v99._object = 0xE100000000000000;
    sub_1007A23D4(v99);

    v100._countAndFlagsBits = v67;
    v100._object = v66;
    sub_1007A23D4(v100);
  }

  else
  {
    v97 = 124;
    v98 = 0xE100000000000000;
    v101._countAndFlagsBits = v67;
    v101._object = v66;
    sub_1007A23D4(v101);
  }

  v70 = v97;
  v69 = v98;
  v71 = v93;
  v72 = v89;
  v73 = v59;
  v74 = v90;
  (*(v93 + 16))(v89, v73, v90);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97 = v63;
  sub_1002F52DC(v72, v70, v69, isUniquelyReferenced_nonNull_native);

  v76 = v97;
  v77 = [a1 eventName];
  v78 = sub_1007A2254();
  v80 = v79;

  swift_beginAccess();
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *(v43 + 16);
  *(v43 + 16) = 0x8000000000000000;
  sub_1002F52A0(v76, v78, v80, v81);

  *(v43 + 16) = v96;
  swift_endAccess();
  (*(v71 + 8))(v94, v74);
  return (*(v95 + 8))(v29, v91);
}

uint64_t sub_10034E388@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v113 = a1[1];
  v110 = v4;
  v5 = a1[4];
  v111 = a1[3];
  v112 = v5;
  v6 = sub_10079ACE4();
  v120 = *(v6 - 8);
  v121 = v6;
  __chkstk_darwin(v6);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100798574();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v88 - v11;
  v12 = sub_1001F1160(&unk_100ADD640, &qword_10081CA08);
  __chkstk_darwin(v12 - 8);
  v98 = &v88 - v13;
  v100 = sub_100798B24();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100798C34();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v109 = &v88 - v17;
  v104 = sub_100798BB4();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v101 = &v88 - v20;
  v108 = sub_100798534();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v105 = &v88 - v23;
  v24 = sub_10079AA74();
  __chkstk_darwin(v24 - 8);
  v25 = sub_1007988C4();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v116 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v28 - 8);
  v30 = &v88 - v29;
  v119 = sub_100796BB4();
  v31 = *(v119 - 8);
  __chkstk_darwin(v119);
  v33 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v34);
  v117 = v26;
  v118 = &v88 - v36;
  v37 = *(v26 + 56);
  v115 = v26 + 56;
  v114 = v37;
  (v37)(a2, 1, 1, v25, v35);
  sub_100799794();
  sub_100007484(&v125, &v124);
  sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  if (swift_dynamicCast())
  {
    v89 = a2;
    v38 = v122;
    v39 = *(v122 + 16);
    v88 = v25;
    if (v39)
    {
      v40 = sub_10000E53C(0x6D617473656D6974, 0xE900000000000070);
      if (v41)
      {
        sub_100007484(*(v38 + 56) + 32 * v40, &v124);
        swift_dynamicCast();
      }
    }

    sub_100796AB4();

    v42 = v31;
    v43 = *(v31 + 56);
    v44 = v119;
    v43(v30, 0, 1, v119);
    v45 = v118;
    (*(v42 + 32))(v118, v30, v44);
    sub_1007997B4();
    if (!v46 || (sub_10063F35C(), (v47 & 1) != 0))
    {
      (*(v42 + 8))(v45, v44);

      goto LABEL_8;
    }

    v56 = v116;
    sub_1007988B4();
    (*(v42 + 16))(v33, v45, v44);
    sub_10079AA64();
    sub_1007988A4();
    v57 = a1[1];
    v58 = *(a1 + 40);
    if (v58 == 1)
    {

      v59 = v88;
      if (!v57)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v59 = v88;
      if (v58 != 2 || (, , , , , !v57))
      {
LABEL_15:
        sub_100798884();
        v60 = v118;
        if (*(v38 + 16))
        {
          v61 = sub_10000E53C(0x73736572676F7270, 0xE800000000000000);
          if (v62)
          {
            sub_100007484(*(v38 + 56) + 32 * v61, &v124);
            if (swift_dynamicCast())
            {
              v63 = v105;
              sub_100798524();
              sub_100798514();
              if (*(v38 + 16) && (v64 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000), (v65 & 1) != 0))
              {
                sub_100007484(*(v38 + 56) + 32 * v64, &v124);

                if (swift_dynamicCast())
                {
                  sub_1007984F4();
                }
              }

              else
              {
              }

              v83 = v89;
              v84 = v107;
              v85 = v108;
              (*(v107 + 16))(v106, v63, v108);
              sub_100798834();
              (*(v84 + 8))(v63, v85);
              (*(v42 + 8))(v60, v119);
              sub_1000074E0(&v125);
              goto LABEL_44;
            }
          }
        }

        if (*(v38 + 16))
        {
          v66 = sub_10000E53C(0x676E69746172, 0xE600000000000000);
          if (v67)
          {
            sub_100007484(*(v38 + 56) + 32 * v66, &v124);
            if (swift_dynamicCast())
            {

              v68 = v101;
              sub_100798BA4();
              sub_100798B94();
              v69 = v103;
              v70 = v104;
              (*(v103 + 16))(v102, v68, v104);
              sub_1007987E4();
LABEL_42:
              (*(v69 + 8))(v68, v70);
              goto LABEL_43;
            }
          }
        }

        if (*(v38 + 16))
        {
          v71 = sub_10000E53C(0x73696E616863656DLL, 0xE90000000000006DLL);
          if (v72)
          {
            sub_100007484(*(v38 + 56) + 32 * v71, &v124);
            if (swift_dynamicCast())
            {

              v73 = v122;
              v74 = v123;
              sub_100798C24();
              v75._rawValue = &off_100A0CBA8;
              v126._countAndFlagsBits = v73;
              v126._object = v74;
              v76 = sub_1007A3964(v75, v126);

              if (v76 > 2)
              {
                v86 = v99;
                v87 = v100;
                (*(v99 + 56))(v98, 1, 1, v100);
                (*(v86 + 104))(v97, enum case for MarkedAsFinishedMechanism.unknown(_:), v87);
              }

              else
              {
                v77 = **(&off_100A16EC0 + v76);
                v78 = v99;
                v79 = v98;
                v80 = v100;
                (*(v99 + 104))(v98, v77, v100);
                (*(v78 + 56))(v79, 0, 1, v80);
                (*(v78 + 32))();
              }

              v68 = v109;
              sub_100798C14();
              v69 = v95;
              v70 = v96;
              (*(v95 + 16))(v94, v68, v96);
              sub_100798854();
              goto LABEL_42;
            }
          }
        }

        if (*(v38 + 16) && (v81 = sub_10000E53C(0x6D6D6F6365526577, 0xED00006465646E65), (v82 & 1) != 0))
        {
          sub_100007484(*(v38 + 56) + 32 * v81, &v124);

          if (swift_dynamicCast())
          {
            v68 = v90;
            sub_100798564();
            sub_100798554();
            v69 = v92;
            v70 = v93;
            (*(v92 + 16))(v91, v68, v93);
            sub_100798844();
            goto LABEL_42;
          }
        }

        else
        {
        }

LABEL_43:
        (*(v42 + 8))(v60, v119);
        sub_1000074E0(&v125);
        v83 = v89;
LABEL_44:
        sub_100007840(v83, &qword_100ADD638, &qword_10081CA00);
        (*(v117 + 32))(v83, v56, v59);
        return v114(v83, 0, 1, v59);
      }
    }

    sub_100798804();
    goto LABEL_15;
  }

LABEL_8:
  sub_10079AC84();
  sub_100359B60(a1, &v124);
  v48 = sub_10079ACC4();
  v49 = sub_1007A29B4();
  sub_100359BBC(a1);
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v124 = v51;
    *v50 = 136315138;
    v52 = sub_1007997A4();
    v54 = sub_1000070F4(v52, v53, &v124);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v48, v49, "Can't create protobuf for property %s", v50, 0xCu);
    sub_1000074E0(v51);
  }

  (*(v120 + 8))(v8, v121);
  return sub_1000074E0(&v125);
}

void sub_10034F3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v139 = a7;
  v136 = a6;
  v152 = a4;
  v163 = a3;
  v141 = sub_10079ACE4();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = &v133 - v11;
  v151 = sub_1001F1160(&qword_100ADD5B8, &unk_10081C9E0);
  v135 = *(v151 - 8);
  v133 = *(v135 + 64);
  __chkstk_darwin(v151);
  v134 = &v133 - v12;
  v13 = sub_1007988C4();
  v180 = *(v13 - 8);
  __chkstk_darwin(v13);
  v179 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v178 = &v133 - v16;
  v17 = sub_1001F1160(&qword_100ADD620, &unk_10081C9F0);
  __chkstk_darwin(v17 - 8);
  v162 = &v133 - v18;
  v167 = sub_100798924();
  v156 = *(v167 - 8);
  __chkstk_darwin(v167);
  v166 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v133 - v21;
  v147 = sub_100796AD4();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_100796BB4();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v25 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10079AA74();
  __chkstk_darwin(v26 - 8);
  v27 = sub_1007989C4();
  v150 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007989B4();
  v148 = a1;
  sub_100796534();
  v142 = v25;
  sub_10079AA64();
  sub_100798984();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v155 = v30 + 16;
  v149 = v30;
  *(v30 + 24) = 0xE000000000000000;
  swift_beginAccess();
  v164 = a2;
  v31 = *(*(a2 + 16) + 16);
  v176 = v22;
  if (v31)
  {
    v32 = sub_1005D6574(v31, 0);
    v177 = sub_1005D886C();
    countAndFlagsBits = aBlock._countAndFlagsBits;
    v175 = v184;
    swift_bridgeObjectRetain_n();
    sub_10004DC54(countAndFlagsBits);
    if (v177 != v31)
    {
      goto LABEL_54;
    }

    v22 = v176;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  aBlock._countAndFlagsBits = v32;
  sub_100357490(&aBlock);
  v170 = 0;

  v34 = aBlock._countAndFlagsBits;
  v35 = *(aBlock._countAndFlagsBits + 16);
  v161 = v27;
  v165 = v29;
  v160 = v35;
  if (!v35)
  {
LABEL_38:

    v94 = v142;
    sub_100796534();
    v95 = v144;
    sub_1007963F4();
    sub_1000228AC(&qword_100ADD570, 255, &type metadata accessor for Date.ISO8601FormatStyle, &protocol conformance descriptor for Date.ISO8601FormatStyle);
    v96 = v147;
    sub_100796B94();
    (*(v146 + 8))(v95, v96);
    (*(v143 + 8))(v94, v145);
    v98 = aBlock._countAndFlagsBits;
    object = aBlock._object;
    v99 = *(sub_1007989A4() + 16);

    if (v99)
    {
      v100 = objc_allocWithZone(BDSMutableSecureEngagementData);
      v101 = sub_1007A2214();
      v102 = [v100 initWithStartTimestampString:v101 durationInterval:86400.0];

      sub_1000228AC(&unk_100ADD628, 255, &type metadata accessor for PBPropertyTimeSlice, &protocol conformance descriptor for PBPropertyTimeSlice);
      v103 = v170;
      v104 = sub_10079AAB4();
      if (v103)
      {

        v106 = v138;
        sub_10079AC84();
        swift_errorRetain();
        v107 = sub_10079ACC4();
        v108 = sub_1007A29B4();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          aBlock._countAndFlagsBits = v110;
          *v109 = 136315138;
          swift_getErrorValue();
          v111 = sub_1007A3B84();
          v113 = sub_1000070F4(v111, v112, &aBlock._countAndFlagsBits);

          *(v109 + 4) = v113;
          _os_log_impl(&_mh_execute_header, v107, v108, "Could not convert property value to a valid JSON data object: %s", v109, 0xCu);
          sub_1000074E0(v110);
          v27 = v161;

          v29 = v165;
        }

        (*(v140 + 8))(v106, v141);
        swift_errorRetain();
        EngagementManagerAnalyticsHelper.registerSyncToCloudKitError(_:)(v103);
        aBlock._countAndFlagsBits = v103;
        LOBYTE(aBlock._object) = 1;
        sub_1007A26B4();

        (*(v150 + 8))(v29, v27);
      }

      else
      {
        v180 = v104;
        v120 = v105;
        isa = sub_1007969C4().super.isa;
        [v102 setValue:isa];

        v179 = v102;
        v122 = v135;
        v123 = v134;
        v124 = v151;
        (*(v135 + 16))(v134, v152, v151);
        v125 = (*(v122 + 80) + 40) & ~*(v122 + 80);
        v126 = (v133 + v125 + 7) & 0xFFFFFFFFFFFFFFF8;
        v127 = swift_allocObject();
        *(v127 + 2) = v98;
        *(v127 + 3) = object;
        v128 = v139;
        *(v127 + 4) = v139;
        (*(v122 + 32))(&v127[v125], v123, v124);
        *&v127[v126] = v149;
        v184 = sub_10035A0B8;
        v185 = v127;
        aBlock._countAndFlagsBits = _NSConcreteStackBlock;
        aBlock._object = 1107296256;
        v182 = sub_1006412EC;
        v183 = &unk_100A16D58;
        v129 = _Block_copy(&aBlock);
        v130 = v179;
        v131 = v128;

        [v136 setEngagementData:v130 completion:v129];
        sub_10000ADCC(v180, v120);
        _Block_release(v129);

        (*(v150 + 8))(v165, v161);
      }
    }

    else
    {
      v114 = v137;
      sub_10079AC84();

      v115 = sub_10079ACC4();
      v116 = sub_1007A29A4();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        aBlock._countAndFlagsBits = v118;
        *v117 = 136315138;
        v119 = sub_1000070F4(v98, object, &aBlock._countAndFlagsBits);

        *(v117 + 4) = v119;
        _os_log_impl(&_mh_execute_header, v115, v116, "Skipping syncing empty bucket %s to engagement data", v117, 0xCu);
        sub_1000074E0(v118);
        v29 = v165;
      }

      else
      {
      }

      (*(v140 + 8))(v114, v141);
      v132 = v150;
      aBlock._countAndFlagsBits = 0;
      LOBYTE(aBlock._object) = 0;
      sub_1007A26B4();
      (*(v132 + 8))(v29, v27);
    }

    return;
  }

  v36 = 0;
  v159 = aBlock._countAndFlagsBits + 32;
  v174 = v180 + 16;
  v173 = v180 + 32;
  v172 = v180 + 8;
  v154 = (v156 + 16);
  v153 = v156 + 32;
  v157 = (v156 + 8);
  v175 = v13;
  v158 = aBlock._countAndFlagsBits;
  while (v36 < *(v34 + 16))
  {
    v169 = v36;
    v37 = (v159 + 16 * v36);
    v38 = *v37;
    v39 = v37[1];
    v40 = v164;
    swift_beginAccess();
    v41 = *(v40 + 16);
    v42 = *(v41 + 16);

    if (!v42)
    {
      goto LABEL_55;
    }

    v43 = sub_10000E53C(v38, v39);
    if ((v44 & 1) == 0)
    {
      goto LABEL_55;
    }

    v171 = v38;
    v45 = *(*(v41 + 56) + 8 * v43);
    swift_endAccess();

    sub_100798914();
    v46 = v163;
    swift_beginAccess();
    v47 = *(v46 + 16);
    v48 = v162;
    if (*(v47 + 16) && (v49 = sub_10000E53C(v171, v39), (v50 & 1) != 0))
    {
      v51 = v49;
      v52 = *(v47 + 56);
      v53 = sub_100798B14();
      v54 = v39;
      v55 = *(v53 - 8);
      (*(v55 + 16))(v48, v52 + *(v55 + 72) * v51, v53);
      (*(v55 + 56))(v48, 0, 1, v53);
      v39 = v54;
    }

    else
    {
      v53 = sub_100798B14();
      (*(*(v53 - 8) + 56))(v48, 1, 1, v53);
    }

    swift_endAccess();
    sub_100798B14();
    if ((*(*(v53 - 8) + 48))(v48, 1, v53) == 1)
    {
      goto LABEL_56;
    }

    sub_1007988E4();
    v56 = *(v45 + 16);
    v168 = v39;
    if (v56)
    {
      v57 = sub_1005D6574(v56, 0);
      v58 = sub_1005D886C();
      v59 = aBlock._countAndFlagsBits;
      v177 = v184;
      swift_bridgeObjectRetain_n();
      sub_10004DC54(v59);
      if (v58 != v56)
      {
        goto LABEL_53;
      }

      v22 = v176;
    }

    else
    {

      v57 = _swiftEmptyArrayStorage;
    }

    aBlock._countAndFlagsBits = v57;
    v60 = v170;
    sub_100357490(&aBlock);
    v170 = v60;
    if (v60)
    {
      goto LABEL_57;
    }

    v61 = aBlock._countAndFlagsBits;
    v177 = *(aBlock._countAndFlagsBits + 16);
    if (v177)
    {
      v62 = 0;
      v63 = (aBlock._countAndFlagsBits + 40);
      while (v62 < *(v61 + 16))
      {
        if (!*(v45 + 16))
        {
          goto LABEL_50;
        }

        v64 = *(v63 - 1);
        v65 = *v63;

        v66 = sub_10000E53C(v64, v65);
        v68 = v67;

        if ((v68 & 1) == 0)
        {
          goto LABEL_51;
        }

        v69 = *(v180 + 72);
        v70 = *(v45 + 56) + v69 * v66;
        v71 = *(v180 + 16);
        v72 = v178;
        v71(v178, v70, v13);
        v71(v179, v72, v13);
        v73 = sub_1007988F4();
        v75 = v74;
        v76 = *v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v75 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v76 = sub_10066B24C(0, v76[2] + 1, 1, v76);
          *v75 = v76;
        }

        v79 = v76[2];
        v78 = v76[3];
        if (v79 >= v78 >> 1)
        {
          v76 = sub_10066B24C((v78 > 1), v79 + 1, 1, v76);
          *v75 = v76;
        }

        ++v62;
        v76[2] = v79 + 1;
        v80 = v180;
        v81 = v76 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + v79 * v69;
        v13 = v175;
        (*(v180 + 32))(v81, v179, v175);
        v73(&aBlock, 0);
        (*(v80 + 8))(v178, v13);
        v63 += 2;
        v22 = v176;
        if (v177 == v62)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      break;
    }

LABEL_32:

    v82 = *(sub_100798904() + 16);

    if (v82)
    {
      aBlock._countAndFlagsBits = v171;
      aBlock._object = v168;
      v187._countAndFlagsBits = 40;
      v187._object = 0xE100000000000000;
      sub_1007A23D4(v187);
      v83 = *(v45 + 16);

      v186 = v83;
      v188._countAndFlagsBits = sub_1007A3A74();
      sub_1007A23D4(v188);

      v189._countAndFlagsBits = 8233;
      v189._object = 0xE200000000000000;
      sub_1007A23D4(v189);
      sub_1007A23D4(aBlock);

      (*v154)(v166, v22, v167);
      v29 = v165;
      v84 = sub_100798994();
      v86 = v85;
      v87 = *v85;
      v88 = swift_isUniquelyReferenced_nonNull_native();
      *v86 = v87;
      v27 = v161;
      if ((v88 & 1) == 0)
      {
        v87 = sub_10066B224(0, v87[2] + 1, 1, v87);
        *v86 = v87;
      }

      v90 = v87[2];
      v89 = v87[3];
      if (v90 >= v89 >> 1)
      {
        v87 = sub_10066B224((v89 > 1), v90 + 1, 1, v87);
        *v86 = v87;
      }

      v34 = v158;
      v87[2] = v90 + 1;
      v91 = v156;
      v92 = v87 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v90;
      v93 = v167;
      (*(v156 + 32))(v92, v166, v167);
      v84(&aBlock, 0);
      (*(v91 + 8))(v22, v93);
    }

    else
    {
      (*v157)(v22, v167);

      v27 = v161;
      v29 = v165;
      v34 = v158;
    }

    v36 = v169 + 1;
    if (v169 + 1 == v160)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  swift_endAccess();
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:

  __break(1u);
}

uint64_t sub_100350818(int a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a4;
  v43 = a1;
  v14 = sub_10079ACE4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  if (a3)
  {
    v44 = v14;
    v21 = a2;
    swift_errorRetain();
    sub_10079AC84();
    swift_errorRetain();

    v22 = sub_10079ACC4();
    v23 = sub_1007A29B4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = a6;
      v26 = v25;
      v27 = swift_slowAlloc();
      v41 = a7;
      v28 = v27;
      v45 = v27;
      *v24 = 136315906;
      *(v24 + 4) = sub_1000070F4(v42, a5, &v45);
      *(v24 + 12) = 1024;
      *(v24 + 14) = v43 & 1;
      *(v24 + 18) = 1024;
      *(v24 + 20) = v21 & 1;
      *(v24 + 24) = 2112;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 26) = v29;
      *v26 = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "setEngagementData(%s) success=%{BOOL}d hasChanges=%{BOOL}d error=%@", v24, 0x22u);
      sub_100007840(v26, &unk_100AD9480, &qword_1008113B0);

      sub_1000074E0(v28);
    }

    (*(v15 + 8))(v20, v44);
    swift_errorRetain();
    EngagementManagerAnalyticsHelper.registerSyncToCloudKitError(_:)(a3);
    v45 = a3;
    v46 = 1;
    sub_1001F1160(&qword_100ADD5B8, &unk_10081C9E0);
    sub_1007A26B4();
  }

  else
  {
    sub_10079AC84();

    v31 = sub_10079ACC4();
    v32 = sub_1007A29D4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v44 = v14;
      v34 = a2;
      v35 = v33;
      v36 = swift_slowAlloc();
      v41 = a7;
      v47 = v36;
      *v35 = 136315906;
      *(v35 + 4) = sub_1000070F4(v42, a5, &v47);
      *(v35 + 12) = 2080;
      swift_beginAccess();
      v38 = *(a8 + 16);
      v37 = *(a8 + 24);

      v39 = sub_1000070F4(v38, v37, &v47);

      *(v35 + 14) = v39;
      *(v35 + 22) = 1024;
      *(v35 + 24) = v43 & 1;
      *(v35 + 28) = 1024;
      *(v35 + 30) = v34 & 1;
      _os_log_impl(&_mh_execute_header, v31, v32, "setEngagementData(%s) %ssuccess=%{BOOL}d hasChanges=%{BOOL}d", v35, 0x22u);
      swift_arrayDestroy();

      (*(v15 + 8))(v17, v44);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    EngagementManagerAnalyticsHelper.registerSyncToCloudKitSuccess()();
    v47 = 0;
    v48 = 0;
    sub_1001F1160(&qword_100ADD5B8, &unk_10081C9E0);
    return sub_1007A26B4();
  }
}

void sub_100350CC4(void *result, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v5 = objc_opt_self();
    v6 = result;
    v7 = [v5 sharedManager];
    v8 = [v7 engagementManager];

    v18 = sub_1007997E4();
    v19 = &protocol witness table for CDCloudSyncVersions;
    *&v16 = v6;
    type metadata accessor for CDCloudSyncVersionsAdaptor();
    v9 = swift_allocObject();
    sub_1000077C0(&v16, v9 + 16);
    v10 = objc_allocWithZone(BCMutableCloudSyncVersions);
    v11 = v6;
    v12 = [v10 initWithCloudSyncVersions:{v9, v16}];

    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      v19 = sub_10035A1A0;
      v20 = v13;
      *&v16 = _NSConcreteStackBlock;
      *(&v16 + 1) = 1107296256;
      v17 = sub_1003547B4;
      v18 = &unk_100A16DD0;
      v14 = _Block_copy(&v16);
      v15 = a3;

      [v8 getEngagementDataChangesSince:v12 completion:v14];
      _Block_release(v14);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_10035A194(result, 0);
  }
}

void sub_100350EA0(void *a1, void *a2, void *a3, uint64_t a4, int a5, char *a6)
{
  v52 = a6;
  v54 = a5;
  v9 = sub_10079ACE4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079AC84();

  v13 = a3;
  swift_errorRetain();
  v14 = sub_10079ACC4();
  v15 = sub_1007A2994();
  v53 = v13;

  v16 = v14;

  v17 = v15;
  v18 = os_log_type_enabled(v16, v15);
  v51 = a1;
  if (v18)
  {
    v48 = v10;
    v49 = v9;
    v50 = a3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55[0] = v47;
    *v19 = 136316162;
    if (!a1 && _swiftEmptyArrayStorage >> 62 && sub_1007A38D4())
    {
      sub_1001F2658(_swiftEmptyArrayStorage);
    }

    v46 = v16;
    sub_10000A7C4(0, &qword_100AD3C58, BCMutableCloudData_ptr);
    sub_10035A1A8();

    v21 = sub_1007A2844();
    v23 = v22;

    v24 = sub_1000070F4(v21, v23, v55);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;

    v25 = sub_1007A2844();
    v27 = v26;

    v28 = sub_1000070F4(v25, v27, v55);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2112;
    v29 = v53;
    *(v19 + 24) = v53;
    a3 = v50;
    *v20 = v50;
    *(v19 + 32) = 2112;
    v30 = v29;
    if (a4)
    {
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = v31;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v33 = v54;
    v34 = v48;
    *(v19 + 34) = v31;
    v20[1] = v32;
    *(v19 + 42) = 1024;
    *(v19 + 44) = v33 & 1;
    v35 = v17;
    v36 = v46;
    _os_log_impl(&_mh_execute_header, v46, v35, "updated: %s removed: %s) currentSyncVersions:%@ error=%@ fetchAgain=%{BOOL}d", v19, 0x30u);
    sub_1001F1160(&unk_100AD9480, &qword_1008113B0);
    swift_arrayDestroy();

    swift_arrayDestroy();

    (*(v34 + 8))(v12, v49);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v29 = v53;
    v33 = v54;
  }

  v37 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  v38 = v52;
  swift_beginAccess();
  v39 = *&v38[v37];
  if (v39)
  {
    v40 = v39;
    EngagementManagerAnalyticsHelper.registerSyncFromCloudKitError(_:)(a4);

    v41 = *&v38[OBJC_IVAR___BKEngagementManager_manager];
    v42 = swift_allocObject();
    *(v42 + 16) = v51;
    *(v42 + 24) = v38;
    *(v42 + 32) = a3;
    *(v42 + 40) = a4;
    *(v42 + 48) = v33 & 1;

    v43 = v29;
    swift_errorRetain();
    v44 = v41;
    v45 = v38;
    sub_100799974();
  }

  else
  {
    __break(1u);
  }
}

void sub_100351348(unint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v343 = a6;
  v344 = a5;
  v351 = a4;
  v414 = a3;
  v411 = a2;
  v7 = 0;
  v8 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v8 - 8);
  v360 = &v316 - v9;
  v398 = sub_1001F1160(&unk_100AE9030, &unk_10082EE90);
  v397 = *(v398 - 8);
  __chkstk_darwin(v398);
  v407 = &v316 - v10;
  v340 = sub_100798574();
  v11 = *(v340 - 8);
  __chkstk_darwin(v340);
  v339 = &v316 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = sub_100798B24();
  v13 = *(v342 - 8);
  __chkstk_darwin(v342);
  v341 = &v316 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = sub_100798C34();
  v403 = *(v356 - 8);
  __chkstk_darwin(v356);
  v355 = &v316 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = sub_100798BB4();
  v402 = *(v385 - 8);
  __chkstk_darwin(v385);
  v384 = &v316 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = sub_100798534();
  v401 = *(v368 - 8);
  __chkstk_darwin(v368);
  v371 = &v316 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001F1160(&qword_100ADD690, &qword_10081CA40);
  __chkstk_darwin(v18 - 8);
  v20 = &v316 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v316 - v22;
  v424 = sub_100796BB4();
  v399 = *(v424 - 8);
  __chkstk_darwin(v424);
  v423 = &v316 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v410 = &v316 - v26;
  v421 = sub_10079AA74();
  v406 = *(v421 - 8);
  __chkstk_darwin(v421);
  v420 = &v316 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = sub_100796AD4();
  v396 = *(v409 - 8);
  __chkstk_darwin(v409);
  v408 = &v316 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v418 = sub_1007988C4();
  v412 = *(v418 - 8);
  __chkstk_darwin(v418);
  v30 = (&v316 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v394 = sub_10079ACE4();
  v395 = *(v394 - 8);
  __chkstk_darwin(v394);
  v387 = &v316 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v361 = &v316 - v33;
  __chkstk_darwin(v34);
  v347 = &v316 - v35;
  __chkstk_darwin(v36);
  v38 = &v316 - v37;
  __chkstk_darwin(v39);
  v346 = &v316 - v40;
  v362 = sub_100798B14();
  v390 = *(v362 - 8);
  __chkstk_darwin(v362);
  v333 = (&v316 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v42);
  v345 = &v316 - v43;
  __chkstk_darwin(v44);
  v46 = &v316 - v45;
  __chkstk_darwin(v47);
  v382 = &v316 - v48;
  v49 = sub_100798924();
  v369 = *(v49 - 8);
  v370 = v49;
  __chkstk_darwin(v49);
  v380 = &v316 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = sub_1007989C4();
  v391 = *(v392 - 8);
  __chkstk_darwin(v392);
  v388 = &v316 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v326 = &v316 - v53;
  v54 = sub_10079AA94();
  __chkstk_darwin(v54 - 8);
  v379 = &v316 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1001F1160(&qword_100ADD698, &qword_10081CA48);
  __chkstk_darwin(v56 - 8);
  v377 = (&v316 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v58);
  v378 = &v316 - v59;
  __chkstk_darwin(v60);
  v389 = &v316 - v61;
  v405 = v11;
  v404 = v13;
  if (a1 >> 62)
  {
    goto LABEL_210;
  }

  v62 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v386 = v38;
  v425 = v30;
  v400 = v20;
  v63 = _swiftEmptyDictionarySingleton;
  v413 = v23;
  v332 = v46;
  if (v62)
  {
    v38 = 0;
    v419 = (a1 & 0xC000000000000001);
    v417 = a1 & 0xFFFFFFFFFFFFFF8;
    v416 = a1;
    v415 = v7;
    do
    {
      if (v419)
      {
        v23 = sub_1007A3784();
        v65 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          goto LABEL_201;
        }
      }

      else
      {
        if (v38 >= *(v417 + 16))
        {
          goto LABEL_202;
        }

        v23 = *(a1 + 8 * v38 + 32);
        swift_unknownObjectRetain();
        v65 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          goto LABEL_201;
        }
      }

      v422 = v65;
      v30 = v62;
      v66 = [v23 eventName];
      v46 = sub_1007A2254();
      v7 = v67;

      swift_unknownObjectRetain();
      v20 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v433[0] = v20;
      v70 = sub_10000E53C(v46, v7);
      v71 = *(v20 + 16);
      v72 = (v69 & 1) == 0;
      v73 = v71 + v72;
      if (__OFADD__(v71, v72))
      {
        goto LABEL_203;
      }

      a1 = v69;
      if (*(v20 + 24) >= v73)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v69)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v20 = v433;
          sub_1002F15A0();
          if (a1)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1003D4D58(v73, isUniquelyReferenced_nonNull_native);
        v20 = v433[0];
        v74 = sub_10000E53C(v46, v7);
        if ((a1 & 1) != (v75 & 1))
        {
          goto LABEL_223;
        }

        v70 = v74;
        if (a1)
        {
LABEL_5:

          v63 = v433[0];
          v64 = *(v433[0] + 56);
          v20 = *(v64 + 8 * v70);
          *(v64 + 8 * v70) = v23;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_6;
        }
      }

      v63 = v433[0];
      *(v433[0] + 8 * (v70 >> 6) + 64) |= 1 << v70;
      v76 = (v63[6] + 16 * v70);
      *v76 = v46;
      v76[1] = v7;
      *(v63[7] + 8 * v70) = v23;
      swift_unknownObjectRelease();
      v77 = v63[2];
      v78 = __OFADD__(v77, 1);
      v79 = v77 + 1;
      if (v78)
      {
        goto LABEL_206;
      }

      v63[2] = v79;
LABEL_6:
      ++v38;
      v62 = v30;
      v7 = v415;
      a1 = v416;
    }

    while (v422 != v30);
  }

  v38 = v411;
  if (!v411)
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_216;
    }

LABEL_26:
    v38 = &_swiftEmptySetSingleton;
  }

LABEL_27:
  v381 = v63;
  if ((v38 & 0xC000000000000001) != 0)
  {

    sub_1007A35E4();
    sub_10000A7C4(0, &qword_100AD3C58, BCMutableCloudData_ptr);
    sub_10035A1A8();
    sub_1007A2864();
    v38 = v433[0];
    v46 = v433[1];
    v20 = v433[2];
    v23 = v433[3];
    v30 = v433[4];
  }

  else
  {
    v81 = -1 << *(v38 + 32);
    v46 = v38 + 56;
    v20 = ~v81;
    v82 = -v81;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    else
    {
      v83 = -1;
    }

    v30 = (v83 & *(v38 + 56));

    v23 = 0;
  }

  v349 = v20;
  v84 = (v20 + 64) >> 6;
  a1 = v391 + 56;
  v358 = (v399 + 56);
  v393 = (v395 + 1);
  v422 = (v406 + 1);
  v419 = (v399 + 8);
  v406 = (v396 + 8);
  LODWORD(v396) = enum case for PBPropertyValue.OneOf_Params.noParams(_:);
  v325 = (v405 + 32);
  v323 = (v405 + 8);
  v337 = (v404 + 11);
  v338 = (v403 + 32);
  v383 = enum case for PBPropertyValue.OneOf_Params.floatParam(_:);
  v317 = (v404 + 1);
  v334 = (v403 + 8);
  v367 = enum case for PBPropertyValue.OneOf_Params.bookReadParams(_:);
  v353 = (v401 + 32);
  v350 = (v401 + 8);
  v352 = enum case for PBPropertyValue.OneOf_Params.markedAsFinishedParam(_:);
  v365 = (v402 + 8);
  v366 = (v402 + 32);
  v395 = (v399 + 16);
  *&v80 = 136315394;
  v327 = v80;
  *&v80 = 136315138;
  v322 = v80;
  *&v80 = 138412290;
  v354 = v80;
  v364 = v390 + 8;
  v348 = v390 + 16;
  v336 = enum case for PBPropertyValue.OneOf_Params.bookImpressionParam(_:);
  v335 = enum case for MarkedAsFinishedMechanism.UNRECOGNIZED(_:);
  v331 = enum case for MarkedAsFinishedMechanism.unknown(_:);
  v324 = enum case for MarkedAsFinishedMechanism.manually(_:);
  v321 = enum case for MarkedAsFinishedMechanism.automatically(_:);
  v375 = v38;
  v376 = (v391 + 48);
  v359 = v369 + 16;
  v405 = v412 + 16;
  v404 = (v412 + 8);
  v357 = (v369 + 8);
  v319 = (v391 + 16);
  v320 = (v391 + 32);
  v318 = (v391 + 8);
  v372 = v391 + 56;
  v373 = v84;
  v374 = v46;
  while ((v38 & 0x8000000000000000) == 0)
  {
    v85 = v23;
    v86 = v30;
    v87 = v23;
    if (!v30)
    {
      while (1)
      {
        v87 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          break;
        }

        if (v87 >= v84)
        {
          goto LABEL_197;
        }

        v86 = *(v46 + 8 * v87);
        ++v85;
        if (v86)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      v62 = sub_1007A38D4();
      goto LABEL_3;
    }

LABEL_40:
    v399 = (v86 - 1) & v86;
    v20 = *(*(v38 + 48) + ((v87 << 9) | (8 * __clz(__rbit64(v86)))));
    if (!v20)
    {
      goto LABEL_197;
    }

LABEL_44:
    objc_opt_self();
    v89 = swift_dynamicCastObjCClass();
    v90 = v20;
    if (v89)
    {
      v91 = v89;
      v390 = v90;
      v391 = v87;
      v92 = *a1;
      v63 = a1;
      a1 = v389;
      v46 = v392;
      v92(v389, 1, 1, v392);
      v93 = [v91 value];
      sub_1007969D4();

      v432 = 0;
      v430 = 0u;
      v431 = 0u;
      sub_10079AA84();
      sub_1000228AC(&unk_100ADD628, 255, &type metadata accessor for PBPropertyTimeSlice, &protocol conformance descriptor for PBPropertyTimeSlice);
      v94 = v378;
      sub_10079AAA4();
      if (v7)
      {
        v95 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
        v96 = v414;
        swift_beginAccess();
        v97 = *(v96 + v95);
        if (!v97)
        {
          goto LABEL_222;
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v99 = OBJC_IVAR___BKEngagementManager_metadata;
          v100 = Strong;
          swift_beginAccess();
          v101 = *&v100[v99];
          swift_errorRetain();
          swift_errorRetain();
          v102 = v97;
          v103 = v101;

          v104 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitError;
          swift_beginAccess();
          *&v103[v104] = v7;
          swift_errorRetain();
        }

        else
        {
          swift_errorRetain();
          swift_errorRetain();
          v106 = v97;
        }

        v107 = swift_unknownObjectWeakLoadStrong();
        if (v107)
        {
          v108 = OBJC_IVAR___BKEngagementManager_metadata;
          v109 = v107;
          swift_beginAccess();
          v110 = *&v109[v108];

          v111 = v360;
          sub_100796BA4();

          (*v358)(v111, 0, 1, v424);
          v112 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitErrorTimestamp;
          swift_beginAccess();
          sub_1002391EC(v111, v110 + v112, &unk_100ADB5C0, &unk_100816880);
          swift_endAccess();
        }

        else
        {
        }

        sub_10079AC84();
        swift_errorRetain();
        v113 = sub_10079ACC4();
        v114 = sub_1007A29B4();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *v115 = v354;
          swift_errorRetain();
          v117 = _swift_stdlib_bridgeErrorToNSError();
          *(v115 + 4) = v117;
          *v116 = v117;
          _os_log_impl(&_mh_execute_header, v113, v114, "Error while deserializing property time slice %@", v115, 0xCu);
          sub_100007840(v116, &unk_100AD9480, &qword_1008113B0);
        }

        else
        {
        }

        v38 = v425;
        v46 = v392;
        v105 = v388;
        v23 = v377;
        (*v393)(v387, v394);
        v7 = 0;
        a1 = v389;
        v20 = &qword_100ADD698;
        v30 = &qword_10081CA48;
      }

      else
      {
        v20 = &qword_100ADD698;
        v30 = &qword_10081CA48;
        sub_100007840(a1, &qword_100ADD698, &qword_10081CA48);
        v92(v94, 0, 1, v46);
        sub_10020B3C8(v94, a1, &qword_100ADD698, &qword_10081CA48);
        v38 = v425;
        v105 = v388;
        v23 = v377;
      }

      sub_1000077D8(a1, v23, &qword_100ADD698, &qword_10081CA48);
      if ((*v376)(v23, 1, v46) == 1)
      {
        sub_100007840(a1, &qword_100ADD698, &qword_10081CA48);

        sub_100007840(v23, &qword_100ADD698, &qword_10081CA48);
        v23 = v391;
        v30 = v399;
        v46 = v374;
        v38 = v375;
        a1 = v372;
        v84 = v373;
      }

      else
      {
        v20 = v326;
        (*v320)(v326, v23, v46);
        v428 = 0;
        v429 = 0xE000000000000000;
        v118 = sub_1007989A4();
        v330 = *(v118 + 16);
        if (v330)
        {
          v119 = 0;
          v120 = *(v369 + 80);
          v328 = v118;
          v329 = v118 + ((v120 + 32) & ~v120);
          v316 = OBJC_IVAR___BKEngagementManager_manager;
          while (1)
          {
            if (v119 >= *(v118 + 16))
            {
              goto LABEL_209;
            }

            v126 = *(v369 + 72);
            v363 = v119;
            (*(v369 + 16))(v380, v329 + v126 * v119, v370);
            sub_1007988D4();
            v127 = sub_100798AE4();
            v129 = v381[2];
            v415 = v7;
            if (v129)
            {
              v23 = v128;
              v130 = sub_10000E53C(v127, v128);
              v132 = v131;

              if (v132)
              {
                v411 = *(v381[7] + 8 * v130);
                swift_unknownObjectRetain();
                v30 = v413;
                goto LABEL_89;
              }
            }

            else
            {
            }

            v133 = v382;
            sub_100798AA4();
            sub_100799764();
            if ((v134 & 1) == 0)
            {
              sub_100798AE4();
              sub_100798AC4();
              sub_100798A84();
              v151 = objc_allocWithZone(sub_100799824());
              v411 = sub_100799804();
              v152 = sub_100798AE4();
              v23 = v153;
              v154 = v381;
              v155 = swift_isUniquelyReferenced_nonNull_native();
              *&v430 = v154;
              v156 = sub_10000E53C(v152, v23);
              v158 = v154[2];
              v159 = (v157 & 1) == 0;
              v78 = __OFADD__(v158, v159);
              v160 = v158 + v159;
              if (v78)
              {
LABEL_215:
                __break(1u);
LABEL_216:
                if (!sub_1007A38D4())
                {
                  goto LABEL_26;
                }

                sub_1001F2658(_swiftEmptyArrayStorage);
                v38 = v315;
                goto LABEL_27;
              }

              v161 = v157;
              if (v154[3] >= v160)
              {
                if (v155)
                {
                  goto LABEL_83;
                }

                v173 = v156;
                sub_1002F15A0();
                v156 = v173;
                if ((v161 & 1) == 0)
                {
                  goto LABEL_86;
                }

LABEL_84:
                v172 = v156;

                v381 = v430;
                *(*(v430 + 56) + 8 * v172) = v411;
                swift_unknownObjectRelease();
              }

              else
              {
                sub_1003D4D58(v160, v155);
                v156 = sub_10000E53C(v152, v23);
                if ((v161 & 1) != (v162 & 1))
                {
                  goto LABEL_223;
                }

LABEL_83:
                if (v161)
                {
                  goto LABEL_84;
                }

LABEL_86:
                v174 = v430;
                *(v430 + 8 * (v156 >> 6) + 64) |= 1 << v156;
                v175 = (v174[6] + 16 * v156);
                *v175 = v152;
                v175[1] = v23;
                *(v174[7] + 8 * v156) = v411;
                v176 = v174[2];
                v78 = __OFADD__(v176, 1);
                v177 = v176 + 1;
                if (v78)
                {
LABEL_220:
                  __break(1u);
LABEL_221:
                  __break(1u);
LABEL_222:
                  __break(1u);
LABEL_223:
                  sub_1007A3B24();
                  __break(1u);
                  return;
                }

                v381 = v174;
                v174[2] = v177;
              }

              v30 = v413;
              v38 = v425;
LABEL_89:
              v20 = v380;
              v178 = sub_100798904();
              v403 = *(v178 + 16);
              if (v403)
              {
                v46 = 0;
                v402 = v178 + ((*(v412 + 80) + 32) & ~*(v412 + 80));
                v416 = _swiftEmptyArrayStorage;
                v401 = v178;
                while (1)
                {
                  if (v46 >= *(v178 + 16))
                  {
                    goto LABEL_204;
                  }

                  (*(v412 + 16))(v38, v402 + *(v412 + 72) * v46, v418);
                  v180 = sub_100798874();
                  v417 = v46;
                  if (v180)
                  {
                    *&v430 = sub_100798874();
                    v7 = sub_1007A3A74();
                    v63 = v181;
                  }

                  else
                  {
                    v7 = 0;
                    v63 = 0;
                  }

                  v182 = v408;
                  sub_100349EB4(v408);
                  v183 = v420;
                  sub_100798894();
                  v46 = v410;
                  sub_10079AA54();
                  v184 = *v422;
                  (*v422)(v183, v421);
                  v185 = sub_100796AC4();
                  v187 = v186;
                  v38 = *v419;
                  (*v419)(v46, v424);
                  (*v406)(v182, v409);
                  *(&v431 + 1) = &type metadata for String;
                  *&v430 = v185;
                  *(&v430 + 1) = v187;
                  sub_1000076D4(&v430, v427);
                  v20 = _swiftEmptyDictionarySingleton;
                  v23 = swift_isUniquelyReferenced_nonNull_native();
                  v426 = _swiftEmptyDictionarySingleton;
                  a1 = 0x6D617473656D6974;
                  v188 = sub_10000E53C(0x6D617473656D6974, 0xE900000000000070);
                  v190 = _swiftEmptyDictionarySingleton[2];
                  v191 = (v189 & 1) == 0;
                  v78 = __OFADD__(v190, v191);
                  v192 = v190 + v191;
                  if (v78)
                  {
                    goto LABEL_205;
                  }

                  v46 = v189;
                  if (_swiftEmptyDictionarySingleton[3] < v192)
                  {
                    break;
                  }

                  if (v23)
                  {
                    goto LABEL_103;
                  }

                  v20 = &v426;
                  v195 = v188;
                  sub_1002F0EA0();
                  v188 = v195;
                  v23 = v426;
                  if (v46)
                  {
LABEL_104:
                    v194 = (*(v23 + 56) + 32 * v188);
                    sub_1000074E0(v194);
                    sub_1000076D4(v427, v194);
                    goto LABEL_108;
                  }

LABEL_106:
                  *(v23 + 8 * (v188 >> 6) + 64) |= 1 << v188;
                  v196 = (*(v23 + 48) + 16 * v188);
                  *v196 = 0x6D617473656D6974;
                  v196[1] = 0xE900000000000070;
                  sub_1000076D4(v427, *(v23 + 56) + 32 * v188);
                  v197 = *(v23 + 16);
                  v78 = __OFADD__(v197, 1);
                  v198 = (v197 + 1);
                  if (v78)
                  {
                    goto LABEL_207;
                  }

                  *(v23 + 16) = v198;
LABEL_108:
                  v199 = v420;
                  sub_100798894();
                  sub_10079AA54();
                  v184(v199, v421);
                  sub_100798864();
                  v20 = sub_100798814();
                  v200 = *(v20 - 8);
                  if ((*(v200 + 48))(v30, 1, v20) == 1)
                  {
                    a1 = v63;
                    goto LABEL_178;
                  }

                  v201 = v30;
                  v202 = v400;
                  sub_1000077D8(v201, v400, &qword_100ADD690, &qword_10081CA40);
                  v203 = (*(v200 + 88))(v202, v20);
                  a1 = v63;
                  if (v203 == v396)
                  {
                    (*(v200 + 8))(v202, v20);
LABEL_112:
                    v30 = v413;
                    goto LABEL_178;
                  }

                  if (v203 == v383)
                  {
                    v204 = *(v200 + 96);
                    v46 = v200 + 96;
                    v30 = v400;
                    v204(v400, v20);
                    (*v366)(v384, v30, v385);
                    sub_100798B84();
                    *(&v431 + 1) = &type metadata for Float;
                    LODWORD(v430) = v205;
                    sub_1000076D4(&v430, v427);
                    v206 = swift_isUniquelyReferenced_nonNull_native();
                    v426 = v23;
                    v20 = v23;
                    v207 = sub_10000E53C(0x676E69746172, 0xE600000000000000);
                    v209 = *(v23 + 16);
                    v210 = (v208 & 1) == 0;
                    v78 = __OFADD__(v209, v210);
                    v211 = v209 + v210;
                    if (v78)
                    {
                      goto LABEL_208;
                    }

                    v212 = v208;
                    if (*(v23 + 24) >= v211)
                    {
                      v30 = v413;
                      if (v206)
                      {
                        goto LABEL_129;
                      }

                      v20 = &v426;
                      v249 = v207;
                      sub_1002F0EA0();
                      v207 = v249;
                      v23 = v426;
                      if ((v212 & 1) == 0)
                      {
                        goto LABEL_155;
                      }

LABEL_130:
                      v20 = *(v23 + 56) + 32 * v207;
                      sub_1000074E0(v20);
                      sub_1000076D4(v427, v20);
                    }

                    else
                    {
                      sub_1003D4168(v211, v206);
                      v20 = v426;
                      v207 = sub_10000E53C(0x676E69746172, 0xE600000000000000);
                      v30 = v413;
                      if ((v212 & 1) != (v213 & 1))
                      {
                        goto LABEL_223;
                      }

LABEL_129:
                      v23 = v426;
                      if (v212)
                      {
                        goto LABEL_130;
                      }

LABEL_155:
                      *(v23 + 8 * (v207 >> 6) + 64) |= 1 << v207;
                      v250 = (*(v23 + 48) + 16 * v207);
                      *v250 = 0x676E69746172;
                      v250[1] = 0xE600000000000000;
                      sub_1000076D4(v427, *(v23 + 56) + 32 * v207);
                      v251 = *(v23 + 16);
                      v78 = __OFADD__(v251, 1);
                      v252 = (v251 + 1);
                      if (v78)
                      {
                        goto LABEL_212;
                      }

                      *(v23 + 16) = v252;
                    }

                    (*v365)(v384, v385);
                    goto LABEL_178;
                  }

                  if (v203 == v367)
                  {
                    v214 = v400;
                    (*(v200 + 96))(v400, v20);
                    (*v353)(v371, v214, v368);
                    sub_100798504();
                    *(&v431 + 1) = &type metadata for Float;
                    LODWORD(v430) = v215;
                    sub_1000076D4(&v430, v427);
                    v216 = swift_isUniquelyReferenced_nonNull_native();
                    v426 = v23;
                    v217 = sub_10000E53C(0x73736572676F7270, 0xE800000000000000);
                    v219 = *(v23 + 16);
                    v220 = (v218 & 1) == 0;
                    v78 = __OFADD__(v219, v220);
                    v221 = v219 + v220;
                    if (v78)
                    {
                      __break(1u);
LABEL_212:
                      __break(1u);
LABEL_213:
                      __break(1u);
LABEL_214:
                      __break(1u);
                      goto LABEL_215;
                    }

                    v222 = v218;
                    if (*(v23 + 24) >= v221)
                    {
                      v30 = v413;
                      if (v216)
                      {
                        goto LABEL_137;
                      }

                      v253 = v217;
                      sub_1002F0EA0();
                      v217 = v253;
                      v239 = v426;
                      if ((v222 & 1) == 0)
                      {
                        goto LABEL_159;
                      }

LABEL_138:
                      v240 = (v239[7].isa + 32 * v217);
                      sub_1000074E0(v240);
                      sub_1000076D4(v427, v240);
                    }

                    else
                    {
                      sub_1003D4168(v221, v216);
                      v217 = sub_10000E53C(0x73736572676F7270, 0xE800000000000000);
                      v30 = v413;
                      if ((v222 & 1) != (v223 & 1))
                      {
                        goto LABEL_223;
                      }

LABEL_137:
                      v239 = v426;
                      if (v222)
                      {
                        goto LABEL_138;
                      }

LABEL_159:
                      sub_1003DA920(v217, 0x73736572676F7270, 0xE800000000000000, v427, v239);
                    }

                    v254 = sub_1007984E4();
                    *(&v431 + 1) = &type metadata for Bool;
                    LOBYTE(v430) = v254 & 1;
                    sub_1000076D4(&v430, v427);
                    v255 = swift_isUniquelyReferenced_nonNull_native();
                    v426 = v239;
                    v20 = v239;
                    v256 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000);
                    isa = v239[2].isa;
                    v259 = (v257 & 1) == 0;
                    v78 = __OFADD__(isa, v259);
                    v260 = isa + v259;
                    if (v78)
                    {
                      goto LABEL_213;
                    }

                    v261 = v257;
                    if (v239[3].isa >= v260)
                    {
                      if (v255)
                      {
                        goto LABEL_165;
                      }

                      v20 = &v426;
                      v263 = v256;
                      sub_1002F0EA0();
                      v256 = v263;
                      v23 = v426;
                      if ((v261 & 1) == 0)
                      {
                        goto LABEL_168;
                      }

LABEL_166:
                      v20 = *(v23 + 56) + 32 * v256;
                      sub_1000074E0(v20);
                      sub_1000076D4(v427, v20);
                    }

                    else
                    {
                      sub_1003D4168(v260, v255);
                      v20 = v426;
                      v256 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000);
                      if ((v261 & 1) != (v262 & 1))
                      {
                        goto LABEL_223;
                      }

LABEL_165:
                      v23 = v426;
                      if (v261)
                      {
                        goto LABEL_166;
                      }

LABEL_168:
                      sub_1003DA920(v256, 0x656C706D61537369, 0xE800000000000000, v427, v23);
                    }

                    (*v350)(v371, v368);
                    goto LABEL_178;
                  }

                  if (v203 == v352)
                  {
                    v224 = v400;
                    (*(v200 + 96))(v400, v20);
                    (*v338)(v355, v224, v356);
                    v225 = v341;
                    sub_100798C04();
                    v226 = (*v337)(v225, v342);
                    v227 = 0xE700000000000000;
                    if (v226 == v335)
                    {
                      v228 = 0x6E776F6E6B6E75;
                      v30 = v413;
                    }

                    else
                    {
                      v228 = 0x6E776F6E6B6E75;
                      v30 = v413;
                      if (v226 != v331)
                      {
                        if (v226 == v324)
                        {
                          v227 = 0xE800000000000000;
                          v228 = 0x796C6C61756E616DLL;
                        }

                        else if (v226 == v321)
                        {
                          v228 = 0x6974616D6F747561;
                          v227 = 0xED0000796C6C6163;
                        }

                        else
                        {
                          (*v317)(v341, v342);
                          v227 = 0xE700000000000000;
                          v228 = 0x6E776F6E6B6E75;
                        }
                      }
                    }

                    *(&v431 + 1) = &type metadata for String;
                    *&v430 = v228;
                    *(&v430 + 1) = v227;
                    sub_1000076D4(&v430, v427);
                    v241 = swift_isUniquelyReferenced_nonNull_native();
                    v426 = v23;
                    v20 = v23;
                    v242 = sub_10000E53C(0x73696E616863656DLL, 0xE90000000000006DLL);
                    v244 = *(v23 + 16);
                    v245 = (v243 & 1) == 0;
                    v78 = __OFADD__(v244, v245);
                    v246 = v244 + v245;
                    if (v78)
                    {
                      goto LABEL_214;
                    }

                    v247 = v243;
                    if (*(v23 + 24) >= v246)
                    {
                      if (v241)
                      {
                        goto LABEL_152;
                      }

                      v20 = &v426;
                      v264 = v242;
                      sub_1002F0EA0();
                      v242 = v264;
                      v23 = v426;
                      if ((v247 & 1) == 0)
                      {
                        goto LABEL_171;
                      }

LABEL_153:
                      v20 = *(v23 + 56) + 32 * v242;
                      sub_1000074E0(v20);
                      sub_1000076D4(v427, v20);
                    }

                    else
                    {
                      sub_1003D4168(v246, v241);
                      v20 = v426;
                      v242 = sub_10000E53C(0x73696E616863656DLL, 0xE90000000000006DLL);
                      if ((v247 & 1) != (v248 & 1))
                      {
                        goto LABEL_223;
                      }

LABEL_152:
                      v23 = v426;
                      if (v247)
                      {
                        goto LABEL_153;
                      }

LABEL_171:
                      *(v23 + 8 * (v242 >> 6) + 64) |= 1 << v242;
                      v265 = (*(v23 + 48) + 16 * v242);
                      *v265 = 0x73696E616863656DLL;
                      v265[1] = 0xE90000000000006DLL;
                      sub_1000076D4(v427, *(v23 + 56) + 32 * v242);
                      v266 = *(v23 + 16);
                      v78 = __OFADD__(v266, 1);
                      v267 = (v266 + 1);
                      if (v78)
                      {
                        goto LABEL_219;
                      }

                      *(v23 + 16) = v267;
                    }

                    (*v334)(v355, v356);
                    goto LABEL_178;
                  }

                  if (v203 != v336)
                  {
                    (*(v200 + 8))(v400, v20);
                    goto LABEL_112;
                  }

                  v229 = v400;
                  (*(v200 + 96))(v400, v20);
                  (*v325)(v339, v229, v340);
                  v230 = sub_100798544();
                  *(&v431 + 1) = &type metadata for Bool;
                  LOBYTE(v430) = v230 & 1;
                  sub_1000076D4(&v430, v427);
                  v231 = swift_isUniquelyReferenced_nonNull_native();
                  v426 = v23;
                  v20 = v23;
                  v232 = sub_10000E53C(0x6D6D6F6365526577, 0xED00006465646E65);
                  v234 = *(v23 + 16);
                  v235 = (v233 & 1) == 0;
                  v78 = __OFADD__(v234, v235);
                  v236 = v234 + v235;
                  if (v78)
                  {
                    __break(1u);
LABEL_219:
                    __break(1u);
                    goto LABEL_220;
                  }

                  v237 = v233;
                  if (*(v23 + 24) < v236)
                  {
                    sub_1003D4168(v236, v231);
                    v20 = v426;
                    v232 = sub_10000E53C(0x6D6D6F6365526577, 0xED00006465646E65);
                    v30 = v413;
                    if ((v237 & 1) != (v238 & 1))
                    {
                      goto LABEL_223;
                    }

LABEL_144:
                    v23 = v426;
                    if ((v237 & 1) == 0)
                    {
                      goto LABEL_175;
                    }

                    goto LABEL_145;
                  }

                  v30 = v413;
                  if (v231)
                  {
                    goto LABEL_144;
                  }

                  v20 = &v426;
                  v268 = v232;
                  sub_1002F0EA0();
                  v232 = v268;
                  v23 = v426;
                  if ((v237 & 1) == 0)
                  {
LABEL_175:
                    *(v23 + 8 * (v232 >> 6) + 64) |= 1 << v232;
                    v269 = *(v23 + 48) + 16 * v232;
                    strcpy(v269, "weRecommended");
                    *(v269 + 14) = -4864;
                    sub_1000076D4(v427, *(v23 + 56) + 32 * v232);
                    v270 = *(v23 + 16);
                    v78 = __OFADD__(v270, 1);
                    v271 = (v270 + 1);
                    if (v78)
                    {
                      goto LABEL_221;
                    }

                    *(v23 + 16) = v271;
                    goto LABEL_177;
                  }

LABEL_145:
                  v20 = *(v23 + 56) + 32 * v232;
                  sub_1000074E0(v20);
                  sub_1000076D4(v427, v20);
LABEL_177:
                  (*v323)(v339, v340);
LABEL_178:
                  sub_100007840(v30, &qword_100ADD690, &qword_10081CA40);
                  v272 = [v411 recordType];
                  if (v272 == 2)
                  {
                    v275 = sub_1007987F4();
                    v277 = v281;
                    sub_100581680(v23);
                    v279 = v282;

                    v280 = 2;
                    goto LABEL_186;
                  }

                  if (v272 == 1)
                  {

                    v275 = sub_1007987F4();
                    v277 = v276;
                    sub_100581680(v23);
                    v7 = v278;

                    a1 = 0;
                    v279 = 0;
                    v280 = 1;
LABEL_186:
                    v283 = v407 + *(v398 + 48);
                    (*v395)();
                    *v283 = v275;
                    *(v283 + 8) = v277;
                    *(v283 + 16) = v7;
                    *(v283 + 24) = a1;
                    *(v283 + 32) = v279;
                    *(v283 + 40) = v280;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v416 = sub_10066B378(0, v416[2] + 1, 1, v416);
                    }

                    v179 = v417;
                    v23 = v416[2];
                    v284 = v416[3];
                    v20 = v23 + 1;
                    v30 = v413;
                    if (v23 >= v284 >> 1)
                    {
                      v416 = sub_10066B378((v284 > 1), v23 + 1, 1, v416);
                    }

                    (v38)(v423, v424);
                    v38 = v425;
                    (*v404)(v425, v418);
                    v285 = v416;
                    v416[2] = v20;
                    sub_10020B3C8(v407, v285 + ((*(v397 + 80) + 32) & ~*(v397 + 80)) + *(v397 + 72) * v23, &unk_100AE9030, &unk_10082EE90);
                    v178 = v401;
                    goto LABEL_93;
                  }

                  if (v272)
                  {

                    (v38)(v423, v424);
                    v38 = v425;
                    (*v404)(v425, v418);
                  }

                  else
                  {

                    v273 = v386;
                    sub_10079AC84();
                    v20 = sub_10079ACC4();
                    v23 = sub_1007A29B4();
                    if (os_log_type_enabled(v20, v23))
                    {
                      v274 = swift_slowAlloc();
                      *v274 = 0;
                      _os_log_impl(&_mh_execute_header, v20, v23, "Counter properties are not supported for sync at present", v274, 2u);
                      v30 = v413;
                    }

                    (*v393)(v273, v394);
                    (v38)(v423, v424);
                    v38 = v425;
                    (*v404)(v425, v418);
                  }

                  v178 = v401;
                  v179 = v417;
LABEL_93:
                  v46 = v179 + 1;
                  if (v403 == v46)
                  {
                    goto LABEL_63;
                  }
                }

                sub_1003D4168(v192, v23);
                v20 = v426;
                v188 = sub_10000E53C(0x6D617473656D6974, 0xE900000000000070);
                if ((v46 & 1) != (v193 & 1))
                {
                  goto LABEL_223;
                }

LABEL_103:
                v23 = v426;
                if (v46)
                {
                  goto LABEL_104;
                }

                goto LABEL_106;
              }

              v416 = _swiftEmptyArrayStorage;
LABEL_63:

              v63 = v411;
              v121 = [v411 eventName];
              v122 = sub_1007A2254();
              v124 = v123;

              *&v430 = v122;
              *(&v430 + 1) = v124;
              v434._countAndFlagsBits = 40;
              v434._object = 0xE100000000000000;
              sub_1007A23D4(v434);
              *&v427[0] = v416[2];
              v435._countAndFlagsBits = sub_1007A3A74();
              sub_1007A23D4(v435);

              v436._countAndFlagsBits = 8233;
              v436._object = 0xE200000000000000;
              sub_1007A23D4(v436);
              v30 = *(&v430 + 1);
              v23 = v430;
              swift_beginAccess();
              v437._countAndFlagsBits = v23;
              v437._object = v30;
              sub_1007A23D4(v437);
              swift_endAccess();

              v125 = *(v414 + v316);
              sub_100799934();
              swift_unknownObjectRelease();

              (*v364)(v382, v362);
              (*v357)(v380, v370);
              goto LABEL_64;
            }

            v135 = v346;
            sub_10079AC84();
            v136 = *v348;
            v137 = v332;
            v138 = v362;
            (*v348)(v332, v133, v362);
            v139 = v345;
            v136(v345, v133, v138);
            v140 = sub_10079ACC4();
            v141 = sub_1007A29B4();
            if (os_log_type_enabled(v140, v141))
            {
              v142 = swift_slowAlloc();
              v416 = swift_slowAlloc();
              *&v430 = v416;
              *v142 = v327;
              v143 = sub_100798AE4();
              v145 = v144;
              v417 = v136;
              v146 = *v364;
              (*v364)(v137, v138);
              v147 = sub_1000070F4(v143, v145, &v430);

              *(v142 + 4) = v147;
              *(v142 + 12) = 2048;
              v148 = v345;
              v149 = sub_100798AA4();
              v146(v148, v138);
              v136 = v417;
              *(v142 + 14) = v149;
              _os_log_impl(&_mh_execute_header, v140, v141, "Seeing a configuration %s in the cloud that has unknown record type %lld", v142, 0x16u);
              sub_1000074E0(v416);

              v150 = *v393;
              (*v393)(v346, v394);
            }

            else
            {
              v146 = *v364;
              (*v364)(v139, v138);

              v146(v137, v138);
              v163 = v135;
              v150 = *v393;
              (*v393)(v163, v394);
            }

            a1 = v347;
            v30 = v333;
            sub_10079AC84();
            v136(v30, v382, v138);
            v23 = sub_10079ACC4();
            v63 = v138;
            v164 = sub_1007A29B4();
            if (os_log_type_enabled(v23, v164))
            {
              v165 = v30;
              v30 = swift_slowAlloc();
              v166 = swift_slowAlloc();
              v417 = v150;
              v167 = v166;
              *&v430 = v166;
              *v30 = v322;
              v168 = sub_100798AE4();
              a1 = v169;
              v170 = v63;
              v63 = v364;
              v146(v165, v170);
              v171 = sub_1000070F4(v168, a1, &v430);

              *(v30 + 4) = v171;
              _os_log_impl(&_mh_execute_header, v23, v164, "Seeing a configuration %s in the cloud that is not available locally", v30, 0xCu);
              sub_1000074E0(v167);

              (v417)(v347, v394);
              v146(v382, v362);
            }

            else
            {

              v146(v30, v138);
              v150(a1, v394);
              v146(v382, v138);
            }

            (*v357)(v380, v370);
            v38 = v425;
LABEL_64:
            v20 = v361;
            v119 = v363 + 1;
            v7 = v415;
            v46 = v392;
            v105 = v388;
            v118 = v328;
            if (v363 + 1 == v330)
            {

              goto LABEL_193;
            }
          }
        }

        v20 = v361;
LABEL_193:
        sub_10079AC84();
        v286 = v326;
        (*v319)(v105, v326, v46);
        v287 = sub_10079ACC4();
        v288 = sub_1007A2994();
        v289 = v288;
        if (os_log_type_enabled(v287, v288))
        {
          v290 = swift_slowAlloc();
          v291 = v105;
          LODWORD(v416) = v289;
          v292 = v290;
          v417 = swift_slowAlloc();
          *&v430 = v417;
          *v292 = v327;
          v293 = v46;
          v294 = v420;
          sub_100798974();
          v295 = v410;
          sub_10079AA54();
          (*v422)(v294, v421);
          sub_1000228AC(&unk_100AE9A30, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v296 = v424;
          v297 = sub_1007A3A74();
          v299 = v298;
          (*v419)(v295, v296);
          v300 = *v318;
          (*v318)(v291, v293);
          v301 = sub_1000070F4(v297, v299, &v430);

          *(v292 + 4) = v301;
          *(v292 + 12) = 2080;
          swift_beginAccess();
          v302 = v428;
          v20 = v429;

          v303 = sub_1000070F4(v302, v20, &v430);

          *(v292 + 14) = v303;
          _os_log_impl(&_mh_execute_header, v287, v416, "syncFromCloudKit(%s) downloaded %s", v292, 0x16u);
          swift_arrayDestroy();

          (*v393)(v361, v394);
          v300(v326, v293);
        }

        else
        {

          v304 = *v318;
          (*v318)(v105, v46);
          (*v393)(v20, v394);
          v304(v286, v46);
        }

        sub_100007840(v389, &qword_100ADD698, &qword_10081CA48);

        v46 = v374;
        v38 = v375;
        a1 = v372;
        v84 = v373;
        v30 = v399;
        v23 = v391;
      }
    }

    else
    {

      v23 = v87;
      v30 = v399;
    }
  }

  v88 = sub_1007A3654();
  if (v88)
  {
    *&v427[0] = v88;
    sub_10000A7C4(0, &qword_100AD3C58, BCMutableCloudData_ptr);
    swift_dynamicCast();
    v20 = v430;
    v87 = v23;
    v399 = v30;
    if (v430)
    {
      goto LABEL_44;
    }
  }

LABEL_197:
  sub_10004DC54(v38);
  v305 = v351;
  if (v351)
  {
    v306 = *(v414 + OBJC_IVAR___BKEngagementManager_manager);
    v307 = type metadata accessor for BCCloudSyncVersionsAdaptor();
    v308 = swift_allocObject();
    *(v308 + 16) = v305;
    *(&v431 + 1) = v307;
    v432 = sub_1000228AC(&unk_100ADD6A0, v309, type metadata accessor for BCCloudSyncVersionsAdaptor, &unk_10081C8E8);
    *&v430 = v308;
    v310 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v311 = swift_allocObject();
    v312 = v344;
    *(v311 + 16) = v310;
    *(v311 + 24) = v312;
    *(v311 + 32) = v343 & 1;
    v313 = v305;
    v314 = v306;

    swift_errorRetain();
    sub_100799954();

    sub_1000074E0(&v430);
  }
}