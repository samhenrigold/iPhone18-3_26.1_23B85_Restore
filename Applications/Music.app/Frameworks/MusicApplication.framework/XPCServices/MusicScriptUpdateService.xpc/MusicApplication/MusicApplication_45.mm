uint64_t sub_10044DFE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10044E02C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Int sub_10044E090(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003ABC(&qword_100615658, &qword_1004EB258);
    v3 = sub_1004BD3E4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1004BDBA4();
      sub_1004BDBB4(v10);
      result = sub_1004BDBF4();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10044E204()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 28);
  v4 = sub_1004B6E44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10044E40C()
{
  v1 = *(type metadata accessor for Lyrics.Transliteration(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1004B6E44();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_10044E56C()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

void sub_10044E5F0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1004BD6A4())
    {
LABEL_3:
      sub_100003ABC(&qword_1006156E0, &qword_1004EB2F0);
      v3 = sub_1004BD3E4();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1004BD6A4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_1004BD484();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1004BCF94(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for SyncedLyricsLineView(0);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_1004BCFA4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_1004BCF94(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for SyncedLyricsLineView(0);
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_1004BCFA4();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_10044E8BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10044E924()
{

  return swift_deallocObject();
}

unint64_t sub_10044E95C()
{
  result = qword_100615768;
  if (!qword_100615768)
  {
    sub_100009130(255, &qword_100615108, MSVLyricsAgent_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100615768);
  }

  return result;
}

id sub_10044EA34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

uint64_t sub_10044EA7C()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10044EAC0()
{

  return swift_deallocObject();
}

uint64_t sub_10044EB18()
{

  return swift_deallocObject();
}

uint64_t sub_10044EB80()
{

  return swift_deallocObject();
}

uint64_t *LyricsOptionsManager.shared.unsafeMutableAddressor()
{
  if (qword_100614E78 != -1)
  {
    swift_once();
  }

  return &static LyricsOptionsManager.shared;
}

Swift::Int sub_10044ED3C()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(qword_1004EB5E0[v1]);
  return sub_1004BDBF4();
}

Swift::Int sub_10044EDC4()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(qword_1004EB5E0[v1]);
  return sub_1004BDBF4();
}

uint64_t sub_10044EE10@<X0>(Swift::Int *a1@<X0>, LyricsX::LyricsOptionsManager::Option_optional *a2@<X8>)
{
  result = _s7LyricsX0A14OptionsManagerC6OptionO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t LyricsOptionsManager.Observer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_10044EEAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LyricsOptionsManager(a1, a2);
  v2 = swift_allocObject();
  result = sub_10044F71C(v2, v3);
  static LyricsOptionsManager.shared = v2;
  return result;
}

uint64_t static LyricsOptionsManager.shared.getter()
{
  if (qword_100614E78 != -1)
  {
    swift_once();
  }
}

double sub_10044EF44()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = [v2 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1004BBC44();

      sub_1004BD3A4();
      if (*(v5 + 16) && (v6 = v0, v7 = sub_100034774(v22), (v8 & 1) != 0))
      {
        sub_100004DE4(*(v5 + 56) + 32 * v7, &v23);
        sub_10003D090(v22);

        sub_100003ABC(&qword_100615810, &qword_1004EB488);
        if (swift_dynamicCast())
        {
          if (!sub_10043EA2C(6, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v9 = sub_1003740CC(0xD00000000000001CLL, 0x800000010050D600);
              if (v10)
              {
                sub_10003D034(MEMORY[0xD00000000000004D] + 40 * v9, v22);
                if (swift_dynamicCast())
                {
                  v22[0] = *(v0 + 40);
                  if (v23)
                  {

                    sub_100451060(&v23, 0);
                  }

                  else
                  {

                    sub_100453B58(0);
                  }

                  v11 = *(v0 + 40);
                  *(v0 + 40) = v22[0];
                  sub_10044F4B8(v11);
                }
              }
            }
          }

          if (!sub_10043EA2C(7, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v12 = sub_1003740CC(0xD000000000000020, 0x800000010050D620);
              if (v13)
              {
                sub_10003D034(MEMORY[0xD00000000000004D] + 40 * v12, v22);
                if (swift_dynamicCast())
                {
                  v22[0] = *(v0 + 40);
                  if (v23)
                  {

                    sub_100451060(&v23, 1);
                  }

                  else
                  {

                    sub_100453B58(1);
                  }

                  v14 = *(v0 + 40);
                  *(v0 + 40) = v22[0];
                  sub_10044F4B8(v14);
                }
              }
            }
          }

          if (sub_10043EA2C(8, *(v0 + 40)))
          {
            goto LABEL_35;
          }

          if (!MEMORY[0xD000000000000025])
          {
            goto LABEL_35;
          }

          v15 = sub_1003740CC(0xD000000000000018, 0x800000010050D650);
          if ((v16 & 1) == 0)
          {
            goto LABEL_35;
          }

          sub_10003D034(MEMORY[0xD00000000000004D] + 40 * v15, v22);

          if (swift_dynamicCast())
          {
            v18 = v23;
            v17 = v24;
            if (v23 == 0x73636972796CLL && v24 == 0xE600000000000000)
            {

              v19 = v6;
LABEL_33:
              v22[0] = *(v19 + 40);

              sub_100453B58(3);
LABEL_34:
              v20 = *(v19 + 40);
              *(v19 + 40) = v22[0];
              sub_10044F4B8(v20);
LABEL_35:

              return result;
            }

            v19 = v6;
            if (sub_1004BD9C4())
            {

              goto LABEL_33;
            }

            if (v18 == 0x74696C736E617274 && v17 == 0xEF6E6F6974617265)
            {

LABEL_40:
              v22[0] = *(v19 + 40);

              sub_100451060(&v23, 3);
              goto LABEL_34;
            }

            v21 = sub_1004BD9C4();

            if (v21)
            {
              goto LABEL_40;
            }
          }
        }
      }

      else
      {

        sub_10003D090(v22);
      }
    }
  }

  return result;
}

void LyricsOptionsManager.bag.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;

  sub_10044EF44();
}

double (*LyricsOptionsManager.bag.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10044F484;
}

double sub_10044F484(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_10044EF44();
  }

  return result;
}

void sub_10044F4B8(uint64_t a1)
{
  if ((sub_100450AD0(*(v1 + 40), a1) & 1) == 0)
  {
    v2 = *(v1 + 40);
    v5 = *(v2 + 56);
    v4 = v2 + 56;
    v3 = v5;
    v6 = 1 << *(*(v1 + 40) + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v3;
    v9 = (v6 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    if (v8)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        sub_100003ABC(&qword_1006157C8, &qword_1004EB490);
        sub_100454F4C();
        sub_1004BBD34();

        v19 = [objc_opt_self() standardUserDefaults];
        v20 = sub_1004BBE24();

        v21 = sub_1004BBE24();
        [v19 setObject:v20 forKey:v21];

        return;
      }

      v8 = *(v4 + 8 * v12);
      ++v10;
      if (v8)
      {
        v10 = v12;
        do
        {
LABEL_9:
          v13 = sub_1004BD934();
          v15 = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1004411F0(0, *(v11 + 2) + 1, 1, v11);
          }

          v17 = *(v11 + 2);
          v16 = *(v11 + 3);
          if (v17 >= v16 >> 1)
          {
            v11 = sub_1004411F0((v16 > 1), v17 + 1, 1, v11);
          }

          v8 &= v8 - 1;
          *(v11 + 2) = v17 + 1;
          v18 = &v11[16 * v17];
          *(v18 + 4) = v13;
          *(v18 + 5) = v15;
        }

        while (v8);
      }
    }

    __break(1u);
  }
}

void *sub_10044F71C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = 0;
  v4 = type metadata accessor for LyricsOptionsManager.Observer(a1, a2);
  v2[3] = WeakArray.init(_:)(_swiftEmptyArrayStorage, v4);
  v2[4] = 0;
  v2[5] = &_swiftEmptySetSingleton;
  sub_100009130(0, &qword_100615A30, NSUserDefaults_ptr);
  strcpy(v11, "lyricsOptions");
  v11[7] = -4864;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = sub_10044CAE0();

  v7 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v11, 0, 0, sub_100454FE8, v5, &type metadata for String, v6);

  v3[4] = v7;

  sub_10044F998(v8, v9);
  return v3;
}

double sub_10044F868(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 40);

    sub_10044F998(v6, v7);
    v8 = swift_beginAccess();
    v9 = *(v4 + 24);
    v11 = type metadata accessor for LyricsOptionsManager.Observer(v8, v10);

    v14 = static MPMediaLibraryFilteringOptions.none.getter();
    while (v14 != WeakArray.endIndex.getter(v9, v11, v12, v13))
    {
      v16 = WeakArray.subscript.getter(v14, v9, v11, v15);
      v14 = WeakArray.index(after:)(v14);
      if (v16)
      {
        v17 = *(v16 + 16);

        v17(v5);
      }
    }
  }

  return result;
}

void sub_10044F998(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1004BBE24();
  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    v5 = sub_1004BBE64();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v47 = v5;
  v48 = v7;
  sub_10044CAE0();
  v8 = sub_1004BD1D4();

  v9 = *(v8 + 16);
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_100:

    v44 = sub_10046E390(v11);

    v45 = *(v46 + 40);
    *(v46 + 40) = v44;
    sub_10044F4B8(v45);

    return;
  }

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (v10 < *(v8 + 16))
  {
    v12 = (v8 + 32 + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    ++v10;
    v15 = HIBYTE(v14) & 0xF;
    v16 = v13 & 0xFFFFFFFFFFFFLL;
    if ((v14 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v17 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      goto LABEL_7;
    }

    if ((v14 & 0x1000000000000000) == 0)
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        v47 = v13;
        v48 = v14 & 0xFFFFFFFFFFFFFFLL;
        if (v13 == 43)
        {
          if (!v15)
          {
            goto LABEL_102;
          }

          if (--v15)
          {
            v20 = 0;
            v30 = &v47 + 1;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                break;
              }

              v32 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                break;
              }

              ++v30;
              if (!--v15)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v13 == 45)
        {
          if (!v15)
          {
            goto LABEL_104;
          }

          if (--v15)
          {
            v20 = 0;
            v24 = &v47 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v26 - v25;
              if (__OFSUB__(v26, v25))
              {
                break;
              }

              ++v24;
              if (!--v15)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v15)
        {
          v20 = 0;
          v35 = &v47;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            v35 = (v35 + 1);
            if (!--v15)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else
      {
        if ((v13 & 0x1000000000000000) != 0)
        {
          v18 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v18 = sub_1004BD4C4();
        }

        v19 = *v18;
        if (v19 == 43)
        {
          if (v16 < 1)
          {
            goto LABEL_105;
          }

          v15 = v16 - 1;
          if (v16 != 1)
          {
            v20 = 0;
            if (!v18)
            {
              goto LABEL_61;
            }

            v27 = v18 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v15)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v19 == 45)
        {
          if (v16 < 1)
          {
            goto LABEL_103;
          }

          v15 = v16 - 1;
          if (v16 != 1)
          {
            v20 = 0;
            if (v18)
            {
              v21 = v18 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  goto LABEL_69;
                }

                v23 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  goto LABEL_69;
                }

                v20 = v23 - v22;
                if (__OFSUB__(v23, v22))
                {
                  goto LABEL_69;
                }

                ++v21;
                if (!--v15)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_61:
            LOBYTE(v15) = 0;
LABEL_70:
            if (v15)
            {
              goto LABEL_7;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (!v16)
          {
            goto LABEL_69;
          }

          v20 = 0;
          if (!v18)
          {
            goto LABEL_61;
          }

          while (1)
          {
            v33 = *v18 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++v18;
            if (!--v16)
            {
              goto LABEL_61;
            }
          }
        }
      }

LABEL_69:
      v20 = 0;
      LOBYTE(v15) = 1;
      goto LABEL_70;
    }

    sub_1004546BC(v13, v14, 10);
    v20 = v41;
    v43 = v42;

    if (v43)
    {
      goto LABEL_7;
    }

LABEL_71:
    if (v20 > 4)
    {
      if (v20 <= 6)
      {
        if (v20 == 5)
        {
          v38 = 5;
        }

        else
        {
          v38 = 6;
        }

        goto LABEL_92;
      }

      switch(v20)
      {
        case 7:
          v38 = 7;
          goto LABEL_92;
        case 8:
          v38 = 8;
          goto LABEL_92;
        case 1000:
          v38 = 9;
LABEL_92:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1004412FC(0, *(v11 + 2) + 1, 1, v11);
          }

          v40 = *(v11 + 2);
          v39 = *(v11 + 3);
          if (v40 >= v39 >> 1)
          {
            v11 = sub_1004412FC((v39 > 1), v40 + 1, 1, v11);
          }

          *(v11 + 2) = v40 + 1;
          v11[v40 + 32] = v38;
          break;
      }
    }

    else
    {
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v38 = 2;
        }

        else if (v20 == 3)
        {
          v38 = 3;
        }

        else
        {
          v38 = 4;
        }

        goto LABEL_92;
      }

      if (!v20)
      {
        v38 = 0;
        goto LABEL_92;
      }

      if (v20 == 1)
      {
        v38 = 1;
        goto LABEL_92;
      }
    }

LABEL_7:
    if (v10 == v9)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}

uint64_t LyricsOptionsManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LyricsOptionsManager.Observer(a1, a2);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();

  v5 = sub_100003ABC(&qword_100615808, &qword_1004EB480);
  WeakArray.append(_:)(v4, v5);
  swift_endAccess();
  return v4;
}

Swift::Void __swiftcall LyricsOptionsManager.insert(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  v2 = a1;
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    sub_100451060(&v8, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    sub_10044F4B8(v5);
  }

  v6 = *(v1 + 40);

  sub_100451060(&v8, v2);
  v3 = *(v1 + 40);
  *(v1 + 40) = v6;
  sub_10044F4B8(v3);
}

Swift::Void __swiftcall LyricsOptionsManager.remove(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    sub_100451060(&v6, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    sub_10044F4B8(v5);
  }

  v7 = *(v1 + 40);

  sub_100453B58(a1);
  v3 = *(v1 + 40);
  *(v1 + 40) = v7;
  sub_10044F4B8(v3);
}

Swift::Bool __swiftcall LyricsOptionsManager.contains(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 >= LyricsX_LyricsOptionsManager_Option_debugMode)
  {
    v2 = a1;
    has_internal_content = os_variant_has_internal_content();
    a1 = v2;
    if (!has_internal_content)
    {
      return 0;
    }
  }

  v4 = *(v1 + 40);

  return sub_10043EA2C(a1, v4);
}

uint64_t LyricsOptionsManager.isDefaultScriptSupported(for:)(uint64_t a1)
{
  sub_100003ABC(&qword_100615070, &qword_1004EA8B0);
  __chkstk_darwin();
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v47 - v5;
  sub_100003ABC(&qword_100615040, &unk_1004EA880);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v47 - v9;
  v11 = sub_1004B6E44();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(v1 + 16);
  if (!v15)
  {
    return 1;
  }

  v16 = [v15 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
  if (!v16)
  {
    return 1;
  }

  v56 = v4;
  v57 = a1;
  v17 = v16;
  v18 = sub_1004BBC44();

  v58 = 0xD000000000000015;
  v59 = 0x800000010050D530;
  sub_1004BD3A4();
  if (*(v18 + 16) && (v19 = sub_100034774(&v60), (v20 & 1) != 0))
  {
    sub_100004DE4(*(v18 + 56) + 32 * v19, v62);
    sub_10003D090(&v60);

    sub_100003ABC(&qword_100615810, &qword_1004EB488);
    if (swift_dynamicCast())
    {
      v21 = v58;
      if (!*(v58 + 16) || (v22 = sub_1003740CC(0xD000000000000021, 0x800000010050D550), (v23 & 1) == 0))
      {
LABEL_42:

        return 1;
      }

      sub_10003D034(*(v21 + 56) + 40 * v22, &v60);

      sub_100003ABC(&qword_1006157C8, &qword_1004EB490);
      if (swift_dynamicCast())
      {
        result = v62[0];
        v49 = *(v62[0] + 16);
        if (v49)
        {
          v25 = 0;
          v47 = (v12 + 8);
          v26 = v62[0] + 40;
          v48 = v62[0];
          while (1)
          {
            v27 = *(result + 16);
            v54 = v25;
            if (v25 >= v27)
            {
              __break(1u);
              return result;
            }

            v53 = v26;

            sub_1004B6E04();
            sub_1004B6E14();
            v28 = sub_1004B6D64();
            v29 = *(v28 - 8);
            v55 = *(v29 + 48);
            v30 = v55(v10, 1, v28);
            v50 = v29;
            if (v30 == 1)
            {
              sub_100007214(v10, &qword_100615040, &unk_1004EA880);
              v52 = 0;
              v31 = 0;
            }

            else
            {
              v32 = sub_1004B6D44();
              v31 = v33;
              (*(v29 + 8))(v10, v28);
              v52 = v32;
              if (v32 == 26746 && v31 == 0xE200000000000000 || (sub_1004BD9C4() & 1) != 0)
              {
                v51 = v31;
                sub_1004B6E34();
                v34 = sub_1004B6DD4();
                v35 = *(v34 - 8);
                if ((*(v35 + 48))(v6, 1, v34) == 1)
                {
                  sub_100007214(v6, &qword_100615070, &qword_1004EA8B0);
                  v31 = v51;
                }

                else
                {

                  v37 = sub_1004B6DC4();
                  v51 = v38;
                  v52 = v37;
                  (*(v35 + 8))(v6, v34);
                  v60 = 2975866;
                  v61 = 0xE300000000000000;
                  v63._countAndFlagsBits = v52;
                  v63._object = v51;
                  sub_1004BC024(v63);

                  v31 = v61;
                  v52 = v60;
                }
              }
            }

            sub_1004B6E14();
            if (v55(v8, 1, v28) == 1)
            {
              break;
            }

            v39 = sub_1004B6D44();
            v36 = v40;
            (*(v50 + 8))(v8, v28);
            if (v39 == 26746 && v36 == 0xE200000000000000 || (sub_1004BD9C4() & 1) != 0)
            {
              v55 = v39;
              v51 = v31;
              v41 = v56;
              sub_1004B6E34();
              v42 = sub_1004B6DD4();
              v43 = *(v42 - 8);
              if ((*(v43 + 48))(v41, 1, v42) == 1)
              {
                sub_100007214(v41, &qword_100615070, &qword_1004EA8B0);
                v31 = v51;
                v39 = v55;
              }

              else
              {

                v55 = sub_1004B6DC4();
                v45 = v44;
                (*(v43 + 8))(v41, v42);
                v60 = 2975866;
                v61 = 0xE300000000000000;
                v64._countAndFlagsBits = v55;
                v64._object = v45;
                sub_1004BC024(v64);

                v39 = v60;
                v36 = v61;
                v31 = v51;
              }
            }

            if (!v31)
            {
              goto LABEL_40;
            }

            if (!v36)
            {
LABEL_15:

              (*v47)(v14, v11);
              goto LABEL_16;
            }

            if (v52 == v39 && v31 == v36)
            {

              (*v47)(v14, v11);
LABEL_44:

              return 0;
            }

            v46 = sub_1004BD9C4();

            (*v47)(v14, v11);
            if (v46)
            {
              goto LABEL_44;
            }

LABEL_16:
            v25 = v54 + 1;
            v26 = v53 + 16;
            result = v48;
            if (v49 == v54 + 1)
            {
              goto LABEL_42;
            }
          }

          sub_100007214(v8, &qword_100615040, &unk_1004EA880);
          if (v31)
          {
            goto LABEL_15;
          }

          v36 = 0;
LABEL_40:
          (*v47)(v14, v11);
          if (!v36)
          {
            goto LABEL_44;
          }

          goto LABEL_16;
        }

        goto LABEL_42;
      }
    }
  }

  else
  {

    sub_10003D090(&v60);
  }

  return 1;
}

uint64_t LyricsOptionsManager.deinit()
{

  return v0;
}

uint64_t LyricsOptionsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_100450AD0(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1004BDBA4();
    v14 = qword_1004EB5E0[v13];
    sub_1004BDBB4(v14);
    result = sub_1004BDBF4();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (qword_1004EB5E0[*(*(a2 + 48) + v16)] != v14)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *sub_100450C54(uint64_t a1, uint64_t a2)
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

  sub_100003ABC(&qword_100615760, &qword_1004EB370);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100450CC8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1004BDBA4();
  sub_1004BBF84();
  v8 = sub_1004BDBF4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1004BD9C4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100452620(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100450E18(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1004BD344();

    if (v9)
    {

      sub_100009130(0, &qword_100615108, MSVLyricsAgent_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1004BD334();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1004515A4(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1004522D4(v20 + 1, &qword_100615710, &qword_1004EB320);
    }

    v18 = v8;
    sub_10045259C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009130(0, &qword_100615108, MSVLyricsAgent_ptr);
  v11 = sub_1004BCF94(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1004527A0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1004BCFA4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_100451060(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1004BDBA4();
  v6 = qword_1004EB5E0[a2];
  sub_1004BDBB4(v6);
  v7 = sub_1004BDBF4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (qword_1004EB5E0[*(*(v5 + 48) + v9)] != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_100452940(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100451178(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1004BD344();

    if (v8)
    {

      _s4WordCMa(0, v9);
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
      return result;
    }

    result = sub_1004BD334();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v17 = sub_1004517B4(v7, result + 1);
    v18 = *(v17 + 16);
    if (*(v17 + 24) <= v18)
    {
      sub_100452084(v18 + 1);
    }

    sub_1004524F8(v19, v17);

    *v3 = v17;
    goto LABEL_16;
  }

  sub_1004BDBA4();
  sub_1004BDBB4(a2);
  v11 = sub_1004BDBF4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;

    sub_100452AA8(v16, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(v6 + 48) + 8 * v13) != a2)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_10045137C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1004BD344();

    if (v9)
    {

      type metadata accessor for SyncedLyricsLineView(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1004BD334();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1004519B4(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1004522D4(v20 + 1, &qword_1006156E0, &qword_1004EB2F0);
    }

    v18 = v8;
    sub_10045259C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for SyncedLyricsLineView(0);
  v11 = sub_1004BCF94(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100452C04(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1004BCFA4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_1004515A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003ABC(&qword_100615710, &qword_1004EB320);
    v2 = sub_1004BD3D4();
    v15 = v2;
    sub_1004BD324();
    if (sub_1004BD354())
    {
      sub_100009130(0, &qword_100615108, MSVLyricsAgent_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1004522D4(v9 + 1, &qword_100615710, &qword_1004EB320);
        }

        v2 = v15;
        result = sub_1004BCF94(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1004BD354());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1004517B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003ABC(&qword_100615A20, &unk_1004EB5B0);
    v2 = sub_1004BD3D4();
    v16 = v2;
    sub_1004BD324();
    if (sub_1004BD354())
    {
      _s4WordCMa(0, v3);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_100452084(v10 + 1);
        }

        v2 = v16;
        sub_1004BDBA4();
        sub_1004BDBB4(v15);
        result = sub_1004BDBF4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1004BD354());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1004519B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003ABC(&qword_1006156E0, &qword_1004EB2F0);
    v2 = sub_1004BD3D4();
    v15 = v2;
    sub_1004BD324();
    if (sub_1004BD354())
    {
      type metadata accessor for SyncedLyricsLineView(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1004522D4(v9 + 1, &qword_1006156E0, &qword_1004EB2F0);
        }

        v2 = v15;
        result = sub_1004BCF94(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1004BD354());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_100451BB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003ABC(&qword_100615A38, &unk_1004EB5D0);
  v4 = sub_1004BD3C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1004BDBA4();
      sub_1004BBF84();
      v21 = sub_1004BDBF4();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100451E28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003ABC(&qword_100615A28, &unk_1004EB5C0);
  v4 = sub_1004BD3C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1004BDBA4();
      sub_1004BDBB4(qword_1004EB5E0[v17]);
      v18 = sub_1004BDBF4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100452084(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003ABC(&qword_100615A20, &unk_1004EB5B0);
  v4 = sub_1004BD3C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1004BDBA4();
      sub_1004BDBB4(v17);
      v18 = sub_1004BDBF4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1004522D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100003ABC(a2, a3);
  v6 = sub_1004BD3C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_1004BCF94(*(v7 + 40));
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t sub_1004524F8(Swift::UInt a1, uint64_t a2)
{
  sub_1004BDBA4();
  sub_1004BDBB4(a1);
  sub_1004BDBF4();
  result = sub_1004BD314();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10045259C(uint64_t a1, void *a2)
{
  sub_1004BCF94(a2[5]);
  result = sub_1004BD314();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100452620(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100451BB4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100452D94();
      goto LABEL_16;
    }

    sub_1004532C0(v8 + 1);
  }

  v10 = *v4;
  sub_1004BDBA4();
  sub_1004BBF84();
  v11 = sub_1004BDBF4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1004BD9C4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1004BDA94();
  __break(1u);
}

void sub_1004527A0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1004522D4(v6 + 1, &qword_100615710, &qword_1004EB320);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100453180(&qword_100615710, &qword_1004EB320);
      goto LABEL_12;
    }

    sub_10045394C(v6 + 1, &qword_100615710, &qword_1004EB320);
  }

  v8 = *v3;
  v9 = sub_1004BCF94(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009130(0, &qword_100615108, MSVLyricsAgent_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1004BCFA4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004BDA94();
  __break(1u);
}

void sub_100452940(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100451E28(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100452EF0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1004534F8(v5 + 1);
  }

  v8 = *v3;
  sub_1004BDBA4();
  v9 = qword_1004EB5E0[v4];
  sub_1004BDBB4(v9);
  v10 = sub_1004BDBF4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (qword_1004EB5E0[*(*(v8 + 48) + a2)] != v9)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004BDA94();
  __break(1u);
}

void sub_100452AA8(Swift::UInt result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100452084(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100453030();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100453724(v5 + 1);
  }

  v8 = *v3;
  sub_1004BDBA4();
  sub_1004BDBB4(result);
  v9 = sub_1004BDBF4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    _s4WordCMa(0, a2);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004BDA94();
  __break(1u);
}

void sub_100452C04(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1004522D4(v6 + 1, &qword_1006156E0, &qword_1004EB2F0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100453180(&qword_1006156E0, &qword_1004EB2F0);
      goto LABEL_12;
    }

    sub_10045394C(v6 + 1, &qword_1006156E0, &qword_1004EB2F0);
  }

  v8 = *v3;
  v9 = sub_1004BCF94(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for SyncedLyricsLineView(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1004BCFA4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004BDA94();
  __break(1u);
}

void sub_100452D94()
{
  v1 = v0;
  sub_100003ABC(&qword_100615A38, &unk_1004EB5D0);
  v2 = *v0;
  v3 = sub_1004BD3B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_100452EF0()
{
  v1 = v0;
  sub_100003ABC(&qword_100615A28, &unk_1004EB5C0);
  v2 = *v0;
  v3 = sub_1004BD3B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_100453030()
{
  v1 = v0;
  sub_100003ABC(&qword_100615A20, &unk_1004EB5B0);
  v2 = *v0;
  v3 = sub_1004BD3B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_100453180(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100003ABC(a1, a2);
  v4 = *v2;
  v5 = sub_1004BD3B4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1004532C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003ABC(&qword_100615A38, &unk_1004EB5D0);
  v4 = sub_1004BD3C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1004BDBA4();

      sub_1004BBF84();
      v20 = sub_1004BDBF4();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1004534F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003ABC(&qword_100615A28, &unk_1004EB5C0);
  v4 = sub_1004BD3C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1004BDBA4();
      sub_1004BDBB4(qword_1004EB5E0[v16]);
      v17 = sub_1004BDBF4();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_100453724(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003ABC(&qword_100615A20, &unk_1004EB5B0);
  v4 = sub_1004BD3C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1004BDBA4();
      sub_1004BDBB4(v16);
      v17 = sub_1004BDBF4();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_10045394C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100003ABC(a2, a3);
  v6 = sub_1004BD3C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v20 = sub_1004BCF94(v18);
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v28;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

uint64_t sub_100453B58(char a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1004BDBA4();
  v5 = qword_1004EB5E0[a1];
  sub_1004BDBB4(v5);
  v6 = sub_1004BDBF4();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 10;
  }

  v9 = ~v7;
  while (qword_1004EB5E0[*(*(v4 + 48) + v8)] != v5)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 10;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100452EF0();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v8);
  sub_1004541C4(v8);
  result = v13;
  *v2 = v14;
  return result;
}

Swift::Int sub_100453C70(Swift::UInt a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_1004BD364();

    if (v5)
    {
      v6 = sub_100453F78(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1004BDBA4();
  sub_1004BDBB4(a1);
  v8 = sub_1004BDBF4();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (*(*(v3 + 48) + 8 * v10) != a1)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100453030();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_100454374(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_100453DE0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1004BD364();

    if (v6)
    {
      v7 = sub_10045406C(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for SyncedLyricsLineView(0);
  v10 = sub_1004BCF94(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1004BCFA4();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100453180(&qword_1006156E0, &qword_1004EB2F0);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10045451C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

Swift::Int sub_100453F78(uint64_t a1, Swift::UInt a2)
{

  v4 = sub_1004BD334();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1004517B4(v5, v4);
  v14 = v6;
  sub_1004BDBA4();
  sub_1004BDBB4(a2);
  v7 = sub_1004BDBF4();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 48);
    while (1)
    {
      v6 = *(v12 + 8 * v10);
      if (v6 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  sub_100454374(v10);
  *v2 = v14;
  return v6;
}

uint64_t sub_10045406C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1004BD334();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1004519B4(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = sub_1004BCF94(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for SyncedLyricsLineView(0);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1004BCFA4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_10045451C(v10);
  result = sub_1004BCFA4();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004541C4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1004BD2F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_1004BDBA4();
        sub_1004BDBB4(qword_1004EB5E0[v10]);
        v11 = sub_1004BDBF4() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_100454374(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1004BD2F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1004BDBA4();
        sub_1004BDBB4(v10);
        v11 = sub_1004BDBF4() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_10045451C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1004BD2F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_1004BCF94(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_1004546BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1004BC104();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100454C48(v4, v5);
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
      v7 = sub_1004BD4C4();
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

uint64_t sub_100454C48(uint64_t a1, unint64_t a2)
{
  v2 = sub_1004BC114();
  v6 = sub_100454CC8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100454CC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1004BD194();
    if (!v9 || (v10 = v9, v11 = sub_100450C54(v9, 0), v12 = sub_100290530(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1004BBF74();

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
      return sub_1004BBF74();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1004BD4C4();
LABEL_4:

  return sub_1004BBF74();
}

uint64_t _s7LyricsX0A14OptionsManagerC6OptionO8rawValueAESgSi_tcfC_0(uint64_t result)
{
  if (result <= 4)
  {
    if (result >= 0)
    {
      return result;
    }

    return 10;
  }

  if (result > 8)
  {
    if (result == 1000)
    {
      return 9;
    }

    return 10;
  }

  return result;
}

unint64_t sub_100454EC4()
{
  result = qword_100615818;
  if (!qword_100615818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100615818);
  }

  return result;
}

unint64_t sub_100454F4C()
{
  result = qword_1006157D0;
  if (!qword_1006157D0)
  {
    sub_100003B68(&qword_1006157C8, &qword_1004EB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006157D0);
  }

  return result;
}

uint64_t sub_100454FB0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_100454FF0(double *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_100442BFC(a1);
    if (v2)
    {
    }
  }
}

uint64_t sub_100455040(double *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100442BFC(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

void sub_100455098(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100445200(a1, a2, isUniquelyReferenced_nonNull_native);
    v15 = *(a2 + 16);
    sub_1001B4A3C(&v15);
    v14 = *(a2 + 32);
    sub_100007214(&v14, &qword_100615690, &unk_1004EB2A0);
    *v2 = v12;
  }

  else
  {
    v7 = sub_100442BFC(a2);
    v9 = v8;
    v15 = *(a2 + 16);
    sub_1001B4A3C(&v15);
    v14 = *(a2 + 32);
    sub_100007214(&v14, &qword_100615690, &unk_1004EB2A0);
    if (v9)
    {
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v13 = *v3;
      if (!v10)
      {
        sub_100445FE8();
        v11 = v13;
      }

      sub_100468560(v7, v11);
      *v3 = v11;
    }
  }
}

id sub_1004551D8(unsigned __int8 *a1)
{
  memcpy(__dst, &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], 0x2B0uLL);
  sub_10046E570(__dst, v6);
  LOBYTE(a1) = _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(__dst, a1);
  result = sub_10046E5CC(__dst);
  if ((a1 & 1) == 0)
  {
    v4 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer;
    v5 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
    if (v5)
    {
      if (*(v5 + 96))
      {
        [*(v5 + 96) removeFromSuperview];
      }
    }

    *&v1[v4] = 0;

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_100455284(uint64_t a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) != (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = a1 & 1;
    v3 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (v3)
    {
      v5 = a1;
      v6 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
      v85 = a1 & 1;
      if (v6 && (v7 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel)) != 0)
      {
        v8 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);

        v9 = v7;
        v10 = sub_1004601D8(v8, v6);

        [v9 setAttributedText:v10];
      }

      else
      {
      }

      v11 = v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v12 = 360;
      if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind))
      {
        v12 = 384;
      }

      v13 = *(v11 + 368);
      v14 = *(v11 + v12);
      v15 = v13;
      v16 = sub_1004BBE24();
      v17 = [objc_opt_self() animationWithKeyPath:v16];

      v77 = v11;
      CASpringAnimation.springParameters.setter([objc_allocWithZone(UISpringTimingParameters) initWithMass:*(v11 + 664) stiffness:*(v11 + 672) damping:*(v11 + 680) initialVelocity:{0.0, 0.0}]);
      v18 = v17;
      if (v5)
      {
        v19 = v15;
      }

      else
      {
        v19 = v14;
      }

      if (v5)
      {
        v20 = v14;
      }

      else
      {
        v20 = v15;
      }

      v21 = [v19 CGColor];
      [v18 setFromValue:v21];

      v89 = v20;
      v22 = [v20 CGColor];
      [v18 setToValue:v22];
      v73 = v18;

      v23 = swift_allocObject();
      *(v23 + 16) = _swiftEmptyArrayStorage;
      v24 = (v23 + 16);
      v25 = *(v3 + 56);
      v75 = v14;
      v76 = v15;
      v88 = v23;
      v83 = *(v25 + 16);
      if (v83)
      {
        v81 = v25 + 32;
        if (v5)
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.0;
        }

        v27 = 0;
        v79 = v25;
        v74 = a2;
        while (1)
        {
          if (v27 >= *(v25 + 16))
          {
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v28 = *(v81 + 8 * v27);
          if ((a2 & 1) != 0 && (v29 = *(v28 + 112)) != 0 && (v30 = *(v29 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer)) != 0)
          {

            v31 = v30;
            v32 = sub_1004BBE24();
            [v31 addAnimation:v73 forKey:v32];

            v33 = *(v28 + 112);
            if (!v33)
            {
              goto LABEL_31;
            }
          }

          else
          {

            v33 = *(v28 + 112);
            if (!v33)
            {
              goto LABEL_31;
            }
          }

          v34 = *(v33 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer);
          if (v34)
          {
            v35 = v34;
            v36 = [v89 CGColor];
            [v35 setBackgroundColor:v36];
          }

LABEL_31:
          v5 = swift_allocObject();
          *(v5 + 16) = v28;
          *(v5 + 24) = v85;
          *(v5 + 32) = v23;
          *(v5 + 40) = v14;
          *(v5 + 48) = v15;
          v87 = v27;
          if (a2)
          {
            sub_100009130(0, &qword_100615B60, UIView_ptr);
            v37 = v77[83];
            v38 = v77[84];
            v39 = v77[85];
            v40 = objc_allocWithZone(UISpringTimingParameters);
            v41 = v14;
            v42 = v15;

            v43 = [v40 initWithMass:v37 stiffness:v38 damping:v39 initialVelocity:{0.0, 0.0}];
            v44 = swift_allocObject();
            *(v44 + 16) = sub_100470B04;
            *(v44 + 24) = v5;

            static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v43, 0, sub_1000081FC, v44, 0, 0, 0.0);
          }

          else
          {
            v45 = *(v28 + 112);
            if (v45 && (v46 = *(v45 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
            {
              v47 = v14;
              v48 = v15;

              [v46 setAlpha:v26];
            }

            else
            {
              v49 = v14;
              v50 = v15;
            }

            swift_beginAccess();
            v51 = *(v28 + 16);
            if (v51 >> 62)
            {
              v52 = sub_1004BD6A4();
              if (v52)
              {
LABEL_39:
                if (v52 < 1)
                {
                  goto LABEL_87;
                }

                for (i = 0; i != v52; ++i)
                {
                  if ((v51 & 0xC000000000000001) != 0)
                  {
                    v54 = sub_1004BD484();
                  }

                  else
                  {
                    v54 = *(v51 + 8 * i + 32);
                  }

                  swift_beginAccess();

                  sub_1004BC274();
                  if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1004BC2E4();
                  }

                  sub_1004BC334();
                  swift_endAccess();
                  v55 = *(v54 + 208);
                  if (v55)
                  {
                    v56 = *(v55 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView);
                    [v56 setBackgroundColor:v89];
                  }
                }

                v14 = v75;
                v15 = v76;
                a2 = v74;
                goto LABEL_21;
              }
            }

            else
            {
              v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v52)
              {
                goto LABEL_39;
              }
            }
          }

LABEL_21:
          v23 = v88;
          v27 = v87 + 1;
          v25 = v79;
          if (v87 + 1 == v83)
          {

            break;
          }
        }
      }

      swift_beginAccess();
      v5 = *v24;
      if (*v24 >> 62)
      {
        goto LABEL_88;
      }

      v57 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57)
      {
        while (1)
        {
          v86 = v5 & 0xC000000000000001;
          v78 = v5 + 32;
          v80 = v5 & 0xFFFFFFFFFFFFFF8;
          v14 = &v92;

          v58 = 0;
          v82 = v57;
          v84 = v5;
          while (1)
          {
            if (v86)
            {
              v59 = sub_1004BD484();
              v60 = __OFADD__(v58++, 1);
              if (v60)
              {
                goto LABEL_84;
              }
            }

            else
            {
              if (v58 >= *(v80 + 16))
              {
                goto LABEL_86;
              }

              v59 = *(v78 + 8 * v58);

              v60 = __OFADD__(v58++, 1);
              if (v60)
              {
                goto LABEL_84;
              }
            }

            sub_100476E94();
            v61 = *(v59 + 104);
            if (!(v61 >> 62))
            {
              v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v62)
              {
                break;
              }

              goto LABEL_81;
            }

            v62 = sub_1004BD6A4();
            if (v62)
            {
              break;
            }

LABEL_81:

LABEL_56:
            if (v58 == v57)
            {

              goto LABEL_90;
            }
          }

          if (v62 >= 1)
          {
            break;
          }

LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v57 = sub_1004BD6A4();
          if (!v57)
          {
            goto LABEL_89;
          }
        }

        v63 = 0;
        while (1)
        {
          if ((v61 & 0xC000000000000001) != 0)
          {
            v69 = sub_1004BD484();
          }

          else
          {
            v69 = *(v61 + 8 * v63 + 32);
          }

          v70 = *(v69 + 136);
          v71 = *(v69 + 144);
          if (v71 == 1)
          {
            if (!v70)
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (*(v69 + 144))
            {
              v72 = 1;
            }

            else
            {
              v72 = v70 == 0;
            }

            if (v72)
            {
LABEL_79:
              sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
              v70 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}]).super.isa;
              goto LABEL_69;
            }
          }

          sub_100470B28(*(v69 + 136), *(v69 + 144));
          sub_100470B28(v70, v71);
          [(objc_class *)v70 stopAnimation:1];
LABEL_69:
          ++v63;
          v94 = sub_100470B18;
          v95 = v69;
          aBlock = _NSConcreteStackBlock;
          v91 = 1107296256;
          v92 = sub_1000D6C80;
          v93 = &unk_1005D3818;
          v64 = _Block_copy(&aBlock);

          [(objc_class *)v70 addAnimations:v64];
          _Block_release(v64);
          v94 = sub_100470B20;
          v95 = v69;
          aBlock = _NSConcreteStackBlock;
          v91 = 1107296256;
          v92 = sub_10013ABCC;
          v93 = &unk_1005D3840;
          v65 = _Block_copy(&aBlock);

          v66 = v70;

          [(objc_class *)v66 addCompletion:v65];
          _Block_release(v65);
          v67 = *(v69 + 136);
          *(v69 + 136) = v66;
          v68 = *(v69 + 144);
          *(v69 + 144) = 1;
          sub_100470954(v67, v68);
          [(objc_class *)v66 startAnimation];

          if (v62 == v63)
          {

            v57 = v82;
            v5 = v84;
            goto LABEL_56;
          }
        }
      }

LABEL_89:

LABEL_90:
    }
  }
}

void sub_100455D58(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 112);
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
    if (v11)
    {
      v12 = 0.0;
      if (a2)
      {
        v12 = 1.0;
      }

      [v11 setAlpha:v12];
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 16);
  if (v13 >> 62)
  {
    v14 = sub_1004BD6A4();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      a4 = a5;
    }

    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = sub_1004BD484();
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      swift_beginAccess();

      sub_1004BC274();
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004BC2E4();
      }

      sub_1004BC334();
      swift_endAccess();
      v17 = *(v16 + 208);
      if (v17)
      {
        v18 = *(v17 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView);
        [v18 setBackgroundColor:a4];
      }
    }
  }
}

void sub_100455F48(char a1, uint64_t a2, double a3)
{
  v4 = v3;
  if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] == 1)
  {
    if (a1)
    {
      v6 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
      if (!v6)
      {
        return;
      }

      v7 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 448];
      memcpy(__dst, &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], 0x2B0uLL);
      v8 = *(v6 + 56);
      v9 = *(v8 + 16);
      if (!v9)
      {
        return;
      }

      v10 = v7 + a3;

      sub_10046E570(__dst, v59);

      v11 = 0;
      while (v11 < *(v8 + 16))
      {
        ++v11;

        sub_100472CC8(__dst, v10);

        if (v9 == v11)
        {

          sub_10046E5CC(__dst);
          return;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {
      v46 = objc_opt_self();
      v47 = swift_allocObject();
      *(v47 + 16) = v4;
      *(v47 + 24) = a3;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_100470A20;
      *(v48 + 24) = v47;
      __dst[4] = sub_1000E639C;
      __dst[5] = v48;
      __dst[0] = _NSConcreteStackBlock;
      __dst[1] = 1107296256;
      __dst[2] = sub_100008224;
      __dst[3] = &unk_1005D37A0;
      v49 = _Block_copy(__dst);
      v50 = v4;

      [v46 performWithoutAnimation:v49];
      _Block_release(v49);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
    return;
  }

  v12 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  if (!v12)
  {
    sub_10045D6B0(_swiftEmptyArrayStorage);
    v13 = v52;
    v14 = *(v52 + 16);
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_43:

    return;
  }

  v13 = *(v12 + 56);

  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_43;
  }

LABEL_11:
  sub_100009130(0, &qword_100616B70, OS_dispatch_queue_ptr);
  v15 = 0;
  v16 = v13 + 32;
  v17 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v55 = v13;
  v56 = v3;
  v54 = v14;
  v53 = v13 + 32;
  v57 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  while (1)
  {
    v18 = *(v16 + 8 * v15++);
    memcpy(__dst, &v4[v17], 0x2B0uLL);
    *(v18 + 120) = 1;

    sub_10046E570(__dst, v59);
    v19 = sub_1004BCB44();
    v20 = *&__dst[80];
    v21 = swift_allocObject();
    swift_weakInit();

    OS_dispatch_queue.asyncAfter(_:block:)(sub_1004709A0, v21, v20);

    if ((*(v18 + 57) & 1) == 0)
    {
      break;
    }

    swift_beginAccess();
    v22 = *(v18 + 16);
    if (v22 >> 62)
    {
      v23 = sub_1004BD6A4();
      if (!v23)
      {
LABEL_36:
        sub_10046E5CC(__dst);

        v17 = v57;
        if (v15 == v14)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_36;
      }
    }

    if (v23 < 1)
    {
      goto LABEL_47;
    }

    v58 = v15;

    for (i = 0; i != v23; ++i)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = *(sub_1004BD484() + 208);
        if (!v25)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v26 = *(v22 + 8 * i + 32);

        v25 = *(v26 + 208);
        if (!v25)
        {
          goto LABEL_17;
        }
      }

      v27 = *&v25[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
      if (v27)
      {
        v28 = *&v25[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
        v29 = *&v25[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
        v30 = v25;
        sub_1004709A8(v27, v28);
        v31 = v29;
        v32 = v27;
        [v31 setBackgroundColor:v32];
      }

LABEL_17:
    }

    sub_10046E5CC(__dst);

    v13 = v55;
    v4 = v56;
    v14 = v54;
    v17 = v57;
    v15 = v58;
    v16 = v53;
    if (v58 == v54)
    {
      goto LABEL_39;
    }

LABEL_37:
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }
  }

  v33 = *(v18 + 112);
  if (v33 && (v34 = *(v33 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
  {
    v35 = __dst[25];
    v36 = v34;
    [v35 lineHeight];
    v38 = vabdd_f64(v37 * *&__dst[32] + *&__dst[58] + *&__dst[58], CGRectGetHeight(*(v18 + 80))) * 0.5;
    if (*(v18 + 58))
    {
      v39 = v38 + CGRectGetWidth(*(v18 + 80));
      v40 = -v38;
    }

    else
    {
      v40 = -v38;
      v39 = -v38;
    }

    v41 = *(v18 + 80);
    v42 = *(v18 + 88);
    v43 = *(v18 + 96);
    v44 = *(v18 + 104);
    v45 = v36;
    v62.origin.x = v41;
    v62.origin.y = v42;
    v62.size.width = v43;
    v62.size.height = v44;
    [v45 setFrame:{v39, v40, v38, v38 + v38 + CGRectGetHeight(v62)}];
    sub_10046E5CC(__dst);

    if (v15 != v14)
    {
      goto LABEL_37;
    }
  }

  else
  {
    sub_10046E5CC(__dst);

    if (v15 != v14)
    {
      goto LABEL_37;
    }
  }

LABEL_39:
}

void sub_100456600(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v2)
  {
    v4 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 448);
    memcpy(__dst, (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs), sizeof(__dst));
    v5 = *(v2 + 56);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v4 + a2;

      sub_10046E570(__dst, &v9);

      v8 = 0;
      while (v8 < *(v5 + 16))
      {
        ++v8;

        sub_100472CC8(__dst, v7);

        if (v6 == v8)
        {

          sub_10046E5CC(__dst);
          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_100456738(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v2)
  {
    if (vabdd_f64(a1, *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth)) < 1.0)
    {
      return 0;
    }

    v4 = v2[8];
    v5 = v2[9];
    v6 = v2[10];
    v7 = v2[11];

    v21.origin.x = v4;
    v21.origin.y = v5;
    v21.size.width = v6;
    v21.size.height = v7;
    if (vabdd_f64(a1, CGRectGetWidth(v21)) < 1.0)
    {

      return 0;
    }

    v8 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
    if (!v8)
    {

      return 1;
    }

    v9 = (v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    if (*(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate) >= 3uLL)
    {
      v16 = v9[3];
      v15 = v9[4];
      v18 = v9[1];
      v17 = v9[2];
      v19 = v8;
      v10 = v18;
      v11 = v17;
      v12 = v16;
      v13 = v15;
    }

    else
    {
      [v8 frame];
    }

    Width = CGRectGetWidth(*&v10);

    if (vabdd_f64(a1, Width) < 1.0)
    {
      return 0;
    }
  }

  return 1;
}

double sub_100456878(double a1, double a2)
{
  v4 = 0.0;
  if (a1 != 0.0 || a2 != 0.0)
  {
    v6 = sub_100456738(a1);
    if (v6)
    {
      v7 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
      sub_10044CAE0();
      *v7 = sub_1004BD224();
      v7[1] = v8;

      *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = a1;
    }

    sub_10045CAA4(v6 & 1, 0, a1, a2);
    v9 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    v10 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    v11 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
    if (v11)
    {
      v12 = v10 == 1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
      if (v13)
      {
        return *(v13 + 80);
      }
    }

    else
    {
      v14 = v9[1];
      v15 = v9[2];
      v4 = v9[3];
      v16 = v9[4];
      v17 = v11;
      v18 = v17;
      if (v10 <= 2)
      {
        [v17 frame];
        v14 = v19;
        v15 = v20;
        v4 = v21;
        v16 = v22;
      }

      v24.origin.x = v14;
      v24.origin.y = v15;
      v24.size.width = v4;
      v24.size.height = v16;
      CGRectGetMaxY(v24);
    }
  }

  return v4;
}

void sub_100456A88()
{
  v11.receiver = v0;
  v11.super_class = _s14descr1005A2689C8TextViewCMa(0);
  objc_msgSendSuper2(&v11, "layoutSubviews");
  [v0 bounds];
  v2 = sub_100456738(v1);
  if (v2)
  {
    v3 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
    v9 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
    v10 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
    v8 = sub_10044CAE0();
    *v3 = sub_1004BD224();
    v3[1] = v4;

    [v0 bounds];
    *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = CGRectGetWidth(v12);
  }

  [v0 bounds];
  sub_10045CAA4(v2 & 1, 0, v5, v6);
  sub_100456C0C();
  sub_100455F48(0, v7, *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress]);
}

void sub_100456C0C()
{
  v3 = v0;
  [v0 bounds];
  if (v4 <= 0.0 || !*&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer])
  {
    return;
  }

  v128 = v0;
  v129 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  v6 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  v5 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8];
  v7 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  swift_beginAccess();
  v8 = *(v7 + 48);
  v147[2] = *(v7 + 32);
  v147[3] = v8;
  v9 = *(v7 + 80);
  v147[4] = *(v7 + 64);
  v147[5] = v9;
  v10 = *(v7 + 16);
  v147[0] = *v7;
  v147[1] = v10;
  v11 = *(&v9 + 1);
  v12 = v9;
  if (*(&v147[0] + 1))
  {

    v13 = v12;
    v14 = v11;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v144[0] = v147[0];
  v15 = *(v7 + 32);
  v144[1] = *(v7 + 16);
  v144[2] = v15;
  v16 = *(v7 + 64);
  v144[3] = *(v7 + 48);
  v144[4] = v16;
  v145 = v12;
  v146 = v11;

  v17 = v129;

  sub_10000F778(v147, __dst, &qword_100615B30, &unk_1004EB860);
  sub_100007214(v144, &qword_100615B30, &unk_1004EB860);
  v18 = &selRef_values;
  v19 = &qword_100615000;
  if (!v5)
  {
    if (!v14)
    {
      goto LABEL_46;
    }

    goto LABEL_12;
  }

  if (!v14)
  {
LABEL_12:
    v20 = v128;

    goto LABEL_13;
  }

  if (v6 == v13 && v5 == v14)
  {

LABEL_46:
    LODWORD(rect) = 1;
    v20 = v128;
    goto LABEL_49;
  }

  v89 = sub_1004BD9C4();

  v20 = v128;
  if ((v89 & 1) == 0)
  {
LABEL_13:
    v21 = *(v7 + 16);
    __dst[0] = *v7;
    __dst[1] = v21;
    v22 = *(v7 + 48);
    __dst[2] = *(v7 + 32);
    __dst[3] = v22;
    v23 = *(v7 + 80);
    __dst[4] = *(v7 + 64);
    __dst[5] = v23;
    if (*(&__dst[0] + 1))
    {
      v130 = *(&__dst[1] + 1);
      v24 = *&__dst[1];
      v25 = *(&__dst[2] + 1);
      v118 = __dst[4];
      v119 = __dst[3];
      v26 = objc_opt_self();
      v140 = __dst[2];
      v141 = __dst[3];
      v142 = __dst[4];
      v143 = __dst[5];
      v138 = __dst[0];
      v139 = __dst[1];
      sub_10047044C(&v138, &aBlock);
      if ([v26 _isInAnimationBlockWithAnimationsEnabled] && v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] == 1 && *&v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] == 2)
      {
        v123 = *(v25 + 16);
        v117 = v7;
        if (!v123)
        {
          goto LABEL_77;
        }

        v122 = v25 + 32;

        v27 = 0.0;
        v120 = v25;
        v121 = v24;
        while (1)
        {
          if (*&v27 >= *(v25 + 16))
          {
            goto LABEL_95;
          }

          v7 = *(v122 + 8 * *&v27);
          recta = v27;
          if (v24[2] && (v28 = sub_1003FB2EC(v7), (v29 & 1) != 0))
          {
            v24 = *(v24[7] + 8 * v28);
          }

          else
          {
            v24 = &_swiftEmptySetSingleton;
          }

          swift_beginAccess();

          v33 = sub_10046E404(v30, v32, v31);

          v34 = sub_100457A50(v33, v24);

          if ((v34 & 0xC000000000000001) != 0)
          {
            v24 = sub_1004BD324();
            _s4WordCMa(0, v35);
            sub_1004701D0(&qword_100615B20, _s4WordCMa, &unk_1004EBEC8);
            sub_1004BC6A4();
            v34 = v148;
            v36 = v149;
            v37 = v150;
            v19 = v151;
            v38 = v152;
          }

          else
          {
            v19 = 0;
            v39 = -1 << *(v34 + 32);
            v36 = v34 + 56;
            v37 = ~v39;
            v40 = -v39;
            v41 = v40 < 64 ? ~(-1 << v40) : -1;
            v38 = v41 & *(v34 + 56);
          }

          *&rect = *&recta + 1;
          v18 = ((v37 + 64) >> 6);
          while (1)
          {
            v17 = v19;
            if ((v34 & 0x8000000000000000) == 0)
            {
              break;
            }

            v24 = (v34 & 0x7FFFFFFFFFFFFFFFLL);
            v45 = sub_1004BD354();
            if (!v45)
            {
              goto LABEL_19;
            }

            *&v131[0] = v45;
            _s4WordCMa(0, v46);
            swift_dynamicCast();
            v44 = aBlock;
            if (!aBlock)
            {
              goto LABEL_19;
            }

LABEL_42:
            if (v130[2])
            {
              v24 = v130;
              v47 = sub_1003FB2EC(v7);
              if (v48)
              {
                v49 = *(v44 + 208);
                if (v49)
                {
                  v50 = v130[7] + 32 * v47;
                  v52 = *(v50 + 16);
                  v51 = *(v50 + 24);
                  v2 = *v50;
                  v1 = *(v50 + 8);
                  v24 = v49;
                  v155.origin.x = v2;
                  v155.origin.y = v1;
                  v155.size.width = v52;
                  v155.size.height = v51;
                  Width = CGRectGetWidth(v155);
                  v54 = Width - CGRectGetWidth(*(v7 + 80));
                  [v24 frame];
                  [v24 setFrame:v55 - v54];
                }
              }
            }
          }

          v42 = v19;
          v43 = v38;
          if (v38)
          {
            break;
          }

          while (1)
          {
            v19 = (v42 + 1);
            if (__OFADD__(v42, 1))
            {
              __break(1u);
              goto LABEL_93;
            }

            if (v19 >= v18)
            {
              break;
            }

            v43 = *(v36 + 8 * v19);
            v42 = (v42 + 1);
            if (v43)
            {
              goto LABEL_38;
            }
          }

LABEL_19:
          sub_1001A43F8(v34);

          v27 = rect;
          v17 = v129;
          v18 = &selRef_values;
          v25 = v120;
          v24 = v121;
          if (*&rect == v123)
          {

            v7 = v117;
LABEL_77:
            v96 = *(v17 + 8);
            v97 = v17[9];
            v98 = v17[10];
            v99 = v17[11];
            *(v17 + 4) = v119;
            *(v17 + 5) = v118;
            v24 = swift_allocObject();
            v24[2] = v17;
            v130 = v96;
            v24[3] = v96;
            *(v24 + 4) = v97;
            rect = v97;
            v1 = v98;
            *(v24 + 5) = v98;
            *(v24 + 6) = v99;
            v2 = v99;

            v19 = _swiftEmptyArrayStorage;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_78;
            }

            goto LABEL_96;
          }
        }

LABEL_38:
        v38 = (v43 - 1) & v43;
        v44 = *(*(v34 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v43)))));

        if (!v44)
        {
          goto LABEL_19;
        }

        goto LABEL_42;
      }

      sub_100007214(__dst, &qword_100615B30, &unk_1004EB860);
    }

    LODWORD(rect) = 0;
    goto LABEL_49;
  }

  LODWORD(rect) = 1;
LABEL_49:
  v56 = *&v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment];
  if (v56 == 1)
  {
    [v20 bounds];
    v57 = (CGRectGetMaxX(v157) - v129[10]) * 0.5;
    goto LABEL_53;
  }

  if (v56 == 2)
  {
    [v20 bounds];
    v57 = CGRectGetMaxX(v156) - v129[10];
LABEL_53:
    v129[8] = v57;
  }

  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
LABEL_55:
    if (v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] == 1)
    {
      v58 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v59 = (v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] & 1) != 0;
      if (v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
      {
        v60 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 384];
      }

      else
      {
        v60 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 360];
      }
    }

    else
    {
      v58 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v60 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 368];
      v59 = v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind];
    }

    v61 = *v60;
    memcpy(__dst, &v20[v58], 0x2B0uLL);
    v62 = v61;
    sub_10046E570(__dst, &v138);
    sub_100476114(v62, v59, __dst);
    v64 = v63;
    sub_10046E5CC(__dst);

    [v20 addSubview:v64];
    v130 = objc_opt_self();
    if (![v130 v18[242]])
    {

      goto LABEL_68;
    }

    v65 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v66 = v65 + 8;
    v67 = *v65;
    if (*v65 != 2)
    {
      v129 = v19;
      v124 = v64;
      v69 = *(v65 + 3);
      v68 = *(v65 + 4);
      v70 = v7;
      v71 = *(v65 + 1);
      v72 = *(v65 + 2);
      v153[0] = *v65;
      v153[1] = v71;
      v153[2] = v72;
      v153[3] = v69;
      v153[4] = v68;
      sub_1004708E8(v67);
      sub_10045876C(v153, v73);
      v7 = v70;
      v64 = v124;
      v19 = v129;
      sub_100470218(v67);
      v74 = *v65;
      *v65 = 2;
      *v66 = 0u;
      *(v65 + 24) = 0u;
      sub_100470218(v74);
    }

    v75 = *(v7 + 16);
    aBlock = *v7;
    v76 = *(v7 + 32);
    v77 = *(v7 + 64);
    v78 = *(v7 + 80);
    v135 = *(v7 + 48);
    v136 = v77;
    v137 = v78;
    v133 = v75;
    v134 = v76;
    if (*(&aBlock + 1))
    {
      v138 = aBlock;
      v79 = *(v7 + 64);
      v141 = *(v7 + 48);
      v142 = v79;
      v143 = *(v7 + 80);
      v80 = *(v7 + 32);
      v139 = *(v7 + 16);
      v140 = v80;
      if ((LOBYTE(rect) & 1) == 0)
      {
        break;
      }
    }

    if (v67 != 2)
    {

      goto LABEL_74;
    }

    v20 = v128;
LABEL_68:
    v24 = swift_allocObject();
    v24[2] = v20;
    v24[3] = v17;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_100470898;
    *(v81 + 24) = v24;
    *&v134 = sub_1000E639C;
    *(&v134 + 1) = v81;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v133 = sub_100008224;
    *(&v133 + 1) = &unk_1005D3688;
    v82 = _Block_copy(&aBlock);
    v18 = *(&v134 + 1);

    v17 = v20;

    [v130 performWithoutAnimation:v82];

    _Block_release(v82);
    LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

    if ((v82 & 1) == 0)
    {
      v83 = v17 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
      v84 = *(v17 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
      *v83 = 2;
      *(v83 + 8) = 0u;
      *(v83 + 24) = 0u;
      sub_100470218(v84);
      v85 = *(v7 + 32);
      v86 = *(v7 + 64);
      v87 = *(v7 + 80);
      v135 = *(v7 + 48);
      v136 = v86;
      v137 = v87;
      v88 = *(v7 + 16);
      aBlock = *v7;
      v133 = v88;
      v134 = v85;
      *v7 = 0u;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      sub_100007214(&aBlock, &qword_100615B30, &unk_1004EB860);

      return;
    }

    while (1)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      v19 = sub_100441A58(0, v19[2] + 1, 1, v19);
LABEL_78:
      v101 = v19[2];
      v100 = v19[3];
      if (v101 >= v100 >> 1)
      {
        v19 = sub_100441A58((v100 > 1), v101 + 1, 1, v19);
      }

      v19[2] = v101 + 1;
      v102 = &v19[2 * v101];
      v102[4] = sub_100470930;
      v102[5] = v24;
      v24 = *(v17 + 7);
      v103 = v24[2];
      if (!v103)
      {
        break;
      }

      v125 = Int.seconds.getter(0);

      v7 = 0;
      while (v7 < v24[2])
      {
        v18 = v24[v7 + 4];
        v104 = *(v18 + 10);
        v105 = *(v18 + 11);
        v107 = *(v18 + 12);
        v106 = *(v18 + 13);

        v158.origin.x = v104;
        v158.origin.y = v105;
        v158.size.width = v107;
        v158.size.height = v106;
        MaxX = CGRectGetMaxX(v158);
        *&v159.origin.x = v130;
        v159.origin.y = rect;
        v159.size.width = v1;
        v159.size.height = v2;
        v109 = v125;
        if (CGRectGetWidth(v159) < MaxX)
        {
          v110 = CGRectGetMaxX(*(v18 + 10));
          *&v160.origin.x = v130;
          v160.origin.y = rect;
          v160.size.width = v1;
          v160.size.height = v2;
          v109 = v110 - CGRectGetWidth(v160);
        }

        v111 = CGRectGetWidth(*(v17 + 8));
        v161.origin.x = v109 + v111 - CGRectGetWidth(*(v18 + 10));
        *&v161.size.width = v18[12];
        *&v161.size.height = v18[13];
        *&v162.origin.x = v18[10];
        *&v161.origin.y = v18[11];
        v18[10] = *&v161.origin.x;
        v162.origin.y = v161.origin.y;
        v162.size.width = v161.size.width;
        v162.size.height = v161.size.height;
        if (!CGRectEqualToRect(v161, v162))
        {
          v18[16] = 0;
        }

        v112 = swift_allocObject();
        *(v112 + 2) = v18;
        v112[3] = v104;
        v112[4] = v105;
        v112[5] = v107;
        v112[6] = v106;
        v113 = v19[2];
        v114 = v19[3];
        v115 = v19;

        if (v113 >= v114 >> 1)
        {
          v115 = sub_100441A58((v114 > 1), v113 + 1, 1, v19);
        }

        ++v7;

        v115[2] = v113 + 1;
        v19 = v115;
        v116 = &v115[2 * v113];
        v116[4] = sub_100470944;
        v116[5] = v112;
        v17 = v129;
        if (v103 == v7)
        {

          sub_100007214(__dst, &qword_100615B30, &unk_1004EB860);
          LODWORD(rect) = 0;
          v7 = v117;
          v20 = v128;
          v18 = &selRef_values;
          goto LABEL_55;
        }
      }

LABEL_93:
      __break(1u);
    }

    sub_100007214(__dst, &qword_100615B30, &unk_1004EB860);
    LODWORD(rect) = 0;
    v20 = v128;
  }

  v90 = swift_allocObject();
  *(v90 + 16) = v19;
  *(v90 + 24) = v128;
  sub_10000F778(&aBlock, v131, &qword_100615B30, &unk_1004EB860);
  v91 = v128;
  sub_100459458(&v138, sub_1004708E0, v90);

  sub_100007214(&aBlock, &qword_100615B30, &unk_1004EB860);
LABEL_74:
  v92 = *v65;
  *v65 = 2;
  *v66 = 0u;
  *(v65 + 24) = 0u;
  sub_100470218(v92);
  v93 = *(v7 + 48);
  v131[2] = *(v7 + 32);
  v131[3] = v93;
  v94 = *(v7 + 80);
  v131[4] = *(v7 + 64);
  v131[5] = v94;
  v95 = *(v7 + 16);
  v131[0] = *v7;
  v131[1] = v95;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  sub_100007214(v131, &qword_100615B30, &unk_1004EB860);
}

void *sub_100457A50(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004BD334();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_10046A2AC(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1004BD334() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1004BD334();
  v2 = sub_1004517B4(v5, v6);
LABEL_10:

  return sub_10046A4E4(a1, v2);
}

double sub_100457B44(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = *(a1 + 80);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = a4;
  *(a1 + 104) = a5;
  if (!CGRectEqualToRect(*&a2, v8))
  {
    *(a1 + 128) = 0;
  }

  return result;
}

void sub_100457BA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v2;
    }

    while (v2);
    sub_100456C0C();
    v7 = [a2 superview];
    [v7 setNeedsLayout];
  }
}

void sub_100457C68(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata);
  swift_beginAccess();
  v4 = v3[1];
  v132 = *v3;
  v133 = v4;
  v5 = v3[3];
  v134 = v3[2];
  v135 = v5;
  v6 = v3[5];
  v136 = v3[4];
  v137 = v6;
  v7 = *(&v132 + 1);
  if (*(&v132 + 1))
  {
    v8 = v132;
    v10 = *(&v134 + 1);
    v9 = v134;
    v108 = *(*(&v134 + 1) + 16);
    if (!v108)
    {

      goto LABEL_62;
    }

    v105 = v132;
    v109 = *(&v134 + 1) + 32;
    v111 = v133;
    sub_10000F778(&v132, v131, &qword_100615B30, &unk_1004EB860);
    v104 = v9;

    v11 = 0;
    v107 = v10;
LABEL_5:
    if (v11 >= *(v10 + 16))
    {
      goto LABEL_129;
    }

    v115 = v11;
    v12 = *(v109 + 8 * v11);
    swift_beginAccess();

    v16 = sub_10046E404(v13, v15, v14);

    if (*(v111 + 16) && (sub_1003FB2EC(v12), (v17 & 1) != 0))
    {
    }

    else
    {
      v18 = &_swiftEmptySetSingleton;
    }

    v19 = sub_100457A50(v16, v18);

    if ((v19 & 0xC000000000000001) != 0)
    {
      sub_1004BD324();
      _s4WordCMa(0, v20);
      sub_1004701D0(&qword_100615B20, _s4WordCMa, &unk_1004EBEC8);
      sub_1004BC6A4();
      v19 = v131[0];
      v21 = v131[1];
      v22 = v131[2];
      v23 = v131[3];
      v24 = v131[4];
    }

    else
    {
      v23 = 0;
      v25 = -1 << *(v19 + 32);
      v21 = v19 + 56;
      v22 = ~v25;
      v26 = -v25;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v24 = v27 & *(v19 + 56);
    }

    v28 = (v22 + 64) >> 6;
    v119 = v19;
    v120 = v21;
    v116 = v115 + 1;
    for (i = v28; ; v28 = i)
    {
      if (v19 < 0)
      {
        if (!sub_1004BD354() || (_s4WordCMa(0, v35), swift_dynamicCast(), v34 = v130, v124 = v24, v126 = v23, !v130))
        {
LABEL_4:
          sub_1001A43F8(v19);

          v10 = v107;
          v11 = v116;
          if (v116 == v108)
          {
            goto LABEL_61;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v31 = v23;
        v32 = v24;
        for (j = v23; !v32; ++v31)
        {
          j = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_128;
          }

          if (j >= v28)
          {
            goto LABEL_4;
          }

          v32 = *(v21 + 8 * j);
        }

        v124 = (v32 - 1) & v32;
        v126 = j;

        if (!v34)
        {
          goto LABEL_4;
        }
      }

      v122 = v34;
      v36 = *(v34 + 104);
      v128 = v36;
      if (v36 >> 62)
      {
        break;
      }

      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_29;
      }

LABEL_53:
      v52 = *(v122 + 208);
      if (v52)
      {
        [v52 removeFromSuperview];
        v53 = *(v122 + 208);
      }

      else
      {
        v53 = 0;
      }

      v19 = v119;
      *(v122 + 208) = 0;

      if (!*(v122 + 208))
      {
        v54 = *(v122 + 128);
        *(v122 + 128) = 0;
        v55 = *(v122 + 136);
        *(v122 + 136) = 2;
        sub_100470954(v54, v55);
      }

      v29 = *(v122 + 128);
      *(v122 + 128) = 0;
      v30 = *(v122 + 136);
      *(v122 + 136) = 2;
      sub_100470954(v29, v30);

      v24 = v124;
      v23 = v126;
      v21 = v120;
    }

    v37 = sub_1004BD6A4();
    if (!v37)
    {
      goto LABEL_53;
    }

LABEL_29:
    v38 = 0;
    v39 = v128 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v128 & 0xC000000000000001) != 0)
      {
        v44 = sub_1004BD484();
        v45 = __OFADD__(v38++, 1);
        if (v45)
        {
          break;
        }

        goto LABEL_39;
      }

      if (v38 >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_120;
      }

      v44 = *(v128 + 32 + 8 * v38);

      v45 = __OFADD__(v38++, 1);
      if (v45)
      {
        break;
      }

LABEL_39:
      v46 = *(v44 + 88);
      if (!(v46 >> 62))
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v47)
        {
          goto LABEL_41;
        }

        goto LABEL_30;
      }

      v47 = sub_1004BD6A4();
      if (v47)
      {
LABEL_41:
        if (v47 < 1)
        {
          goto LABEL_60;
        }

        v48 = 0;
        while (2)
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            v49 = sub_1004BD484();
            v50 = *(v49 + 96);
            if (!v50)
            {
LABEL_48:
              v51 = 0;
LABEL_45:
              ++v48;
              *(v49 + 96) = 0;

              if (v47 == v48)
              {
                goto LABEL_30;
              }

              continue;
            }
          }

          else
          {
            v49 = *(v46 + 8 * v48 + 32);

            v50 = *(v49 + 96);
            if (!v50)
            {
              goto LABEL_48;
            }
          }

          break;
        }

        [v50 removeFromSuperview];
        v51 = *(v49 + 96);
        goto LABEL_45;
      }

LABEL_30:
      v40 = *(v44 + 184);
      if (v40)
      {
        [v40 removeFromSuperview];
        v41 = *(v44 + 184);
      }

      else
      {
        v41 = 0;
      }

      *(v44 + 184) = 0;

      v42 = *(v44 + 136);
      *(v44 + 136) = 0;
      v43 = *(v44 + 144);
      *(v44 + 144) = 2;
      sub_100470954(v42, v43);

      if (v38 == v37)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:

    v7 = *(&v105 + 1);
    v8 = v105;
LABEL_62:
    v56 = *(a2 + 48);
    v57 = *(a2 + 56);

    sub_10046ADDC(v56, v57, v8, v7);
    v59 = v58;

    v113 = *(v59 + 16);
    if (v113)
    {
      v60 = 0;
      v114 = v59 + 32;
      v112 = v59;
      while (1)
      {
        if (v60 >= *(v59 + 16))
        {
          goto LABEL_130;
        }

        v117 = v60;
        v61 = *(v114 + 8 * v60);
        swift_beginAccess();
        v62 = v61;
        v63 = *(v61 + 16);
        if (!(v63 >> 62))
        {
          v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v64)
          {
            break;
          }

          goto LABEL_105;
        }

        v87 = *(v61 + 16);
        v88 = sub_1004BD6A4();
        v63 = v87;
        v64 = v88;
        v62 = v61;
        if (v64)
        {
          break;
        }

LABEL_105:
        v86 = v62;

LABEL_106:
        v89 = *(v86 + 112);
        v90 = v86;
        if (v89)
        {
          [v89 removeFromSuperview];
          v90 = v86;
          v91 = *(v86 + 112);
        }

        else
        {
          v91 = 0;
        }

        *(v90 + 112) = 0;

        v60 = v117 + 1;
        v59 = v112;
        if (v117 + 1 == v113)
        {
          goto LABEL_110;
        }
      }

      if (v64 < 1)
      {
LABEL_131:
        __break(1u);
        return;
      }

      v123 = v63 & 0xC000000000000001;
      v110 = v62;

      v65 = 0;
      v121 = v64;
      while (2)
      {
        if (v123)
        {
          v68 = sub_1004BD484();
        }

        else
        {
        }

        v69 = *(v68 + 104);
        v129 = v69;
        v125 = v68;
        v127 = v65;
        if (!(v69 >> 62))
        {
          v37 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v37)
          {
            goto LABEL_75;
          }

LABEL_98:
          v82 = *(v125 + 208);
          if (v82)
          {
            [v82 removeFromSuperview];
            v83 = *(v125 + 208);
          }

          else
          {
            v83 = 0;
          }

          *(v125 + 208) = 0;

          if (!*(v125 + 208))
          {
            v84 = *(v125 + 128);
            *(v125 + 128) = 0;
            v85 = *(v125 + 136);
            *(v125 + 136) = 2;
            sub_100470954(v84, v85);
          }

          v65 = v127 + 1;
          v66 = *(v125 + 128);
          *(v125 + 128) = 0;
          v67 = *(v125 + 136);
          *(v125 + 136) = 2;
          sub_100470954(v66, v67);

          if (v127 + 1 == v121)
          {

            v86 = v110;
            goto LABEL_106;
          }

          continue;
        }

        break;
      }

      v37 = sub_1004BD6A4();
      if (!v37)
      {
        goto LABEL_98;
      }

LABEL_75:
      v70 = 0;
      while (2)
      {
        if ((v129 & 0xC000000000000001) != 0)
        {
          v74 = sub_1004BD484();
          v45 = __OFADD__(v70++, 1);
          if (v45)
          {
            goto LABEL_118;
          }

LABEL_84:
          v75 = *(v74 + 88);
          if (!(v75 >> 62))
          {
            v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v76)
            {
              goto LABEL_86;
            }

LABEL_95:
            v81 = *(v74 + 184);
            if (v81)
            {
              [v81 removeFromSuperview];
              v71 = *(v74 + 184);
            }

            else
            {
              v71 = 0;
            }

            *(v74 + 184) = 0;

            v72 = *(v74 + 136);
            *(v74 + 136) = 0;
            v73 = *(v74 + 144);
            *(v74 + 144) = 2;
            sub_100470954(v72, v73);

            if (v70 == v37)
            {
              goto LABEL_98;
            }

            continue;
          }

          v76 = sub_1004BD6A4();
          if (!v76)
          {
            goto LABEL_95;
          }

LABEL_86:
          if (v76 >= 1)
          {
            v77 = 0;
            while (1)
            {
              if ((v75 & 0xC000000000000001) != 0)
              {
                v78 = sub_1004BD484();
                v79 = *(v78 + 96);
                if (!v79)
                {
LABEL_93:
                  v80 = 0;
                  goto LABEL_90;
                }
              }

              else
              {
                v78 = *(v75 + 8 * v77 + 32);

                v79 = *(v78 + 96);
                if (!v79)
                {
                  goto LABEL_93;
                }
              }

              [v79 removeFromSuperview];
              v80 = *(v78 + 96);
LABEL_90:
              ++v77;
              *(v78 + 96) = 0;

              if (v76 == v77)
              {
                goto LABEL_95;
              }
            }
          }
        }

        else
        {
          if (v70 >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          v74 = *(v129 + 32 + 8 * v70);

          v45 = __OFADD__(v70++, 1);
          if (!v45)
          {
            goto LABEL_84;
          }

LABEL_118:
          __break(1u);
        }

        break;
      }

      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

LABEL_110:

    sub_100007214(&v132, &qword_100615B30, &unk_1004EB860);
  }

  v39 = a1;
  v92 = (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
  v93 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
  if (v93)
  {
    if (v93 == 1)
    {
      v37 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
      v100 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
      if (v100)
      {
        [v100 removeFromSuperview];
        v39 = a1;
        v101 = *(a1 + v37);
LABEL_122:
        *(v39 + v37) = 0;

        return;
      }

LABEL_121:
      v101 = 0;
      goto LABEL_122;
    }

    if (v93 != 2)
    {
      v94 = v92[1];
      v95 = v92[2];
      v96 = v92[3];
      v97 = v92[4];
      v98 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
      v99 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
      sub_1004708E8(*(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate));
      if (v99)
      {
        [v99 setAttributedText:v93];
      }

      v102 = *(a1 + v98);
      if (v102)
      {
        v103 = v102;
        [v103 setFrame:{v94, v95, v96, v97}];
        sub_100470218(v93);
      }

      else
      {
        sub_100470218(v93);
      }
    }
  }
}

void sub_10045876C(double *a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (v3)
  {
    v4 = *a1;
    if (*a1 == 1)
    {
      v20 = objc_allocWithZone(UISpringTimingParameters);
      v21 = v3;
      v22 = [v20 initWithMass:1.0 stiffness:130.0 damping:30.0 initialVelocity:{0.0, 0.0}];
      sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
      v23 = v22;
      v24 = v2;
      isa = UIViewPropertyAnimator.init(springTimingParameters:)(v23).super.isa;
      v26 = swift_allocObject();
      *(v26 + 16) = v21;
      v61 = sub_100470754;
      v62 = v26;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_1000D6C80;
      v60 = &unk_1005D3458;
      v27 = _Block_copy(&aBlock);
      v28 = v21;

      [(objc_class *)isa addAnimations:v27];
      _Block_release(v27);
      v29 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.14 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      v61 = sub_10047075C;
      v62 = v30;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_1000D6C80;
      v60 = &unk_1005D34A8;
      v31 = _Block_copy(&aBlock);
      v32 = v28;

      [v29 addAnimations:v31];
      _Block_release(v31);
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = v24;
      v61 = sub_1004707B0;
      v62 = v33;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_10013ABCC;
      v60 = &unk_1005D34F8;
      v34 = _Block_copy(&aBlock);
      v19 = v32;
      v35 = v24;

      [(objc_class *)isa addCompletion:v34];
      _Block_release(v34);
      [(objc_class *)isa startAnimation];
      [v29 startAnimation];

LABEL_11:
      return;
    }

    if (!v4)
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      *(v6 + 16) = v3;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_1004707FC;
      *(v7 + 24) = v6;
      v61 = sub_1000E639C;
      v62 = v7;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100008224;
      v60 = &unk_1005D3570;
      v8 = _Block_copy(&aBlock);
      v9 = v3;

      [v5 performWithoutAnimation:v8];
      _Block_release(v8);
      LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

      if ((v5 & 1) == 0)
      {
        v10 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}];
        sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
        v11 = v10;
        v12.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)(v11).super.isa;
        v13 = swift_allocObject();
        *(v13 + 16) = v9;
        v61 = sub_100470804;
        v62 = v13;
        aBlock = _NSConcreteStackBlock;
        v58 = 1107296256;
        v59 = sub_1000D6C80;
        v60 = &unk_1005D35C0;
        v14 = _Block_copy(&aBlock);
        v15 = v9;

        [(objc_class *)v12.super.isa addAnimations:v14];
        _Block_release(v14);
        v16 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v17 = swift_allocObject();
        *(v17 + 16) = v15;
        v61 = sub_100470844;
        v62 = v17;
        aBlock = _NSConcreteStackBlock;
        v58 = 1107296256;
        v59 = sub_1000D6C80;
        v60 = &unk_1005D3610;
        v18 = _Block_copy(&aBlock);
        v19 = v15;

        [v16 addAnimations:v18];
        _Block_release(v18);
        [(objc_class *)v12.super.isa startAnimation];
        [v16 startAnimation];
LABEL_10:

        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_17;
    }

    v37 = a1[1];
    v36 = a1[2];
    v39 = a1[3];
    v38 = a1[4];
    v55 = v3;
    v41 = [v55 snapshotViewAfterScreenUpdates:0];
    if (v41)
    {
      v42 = v41;
      v43 = objc_opt_self();
      v44 = swift_allocObject();
      *(v44 + 2) = v42;
      *(v44 + 3) = v55;
      *(v44 + 4) = v2;
      *(v44 + 5) = v4;
      v44[6] = v37;
      v44[7] = v36;
      v44[8] = v39;
      v44[9] = v38;
      v45 = swift_allocObject();
      *(v45 + 16) = sub_100470708;
      *(v45 + 24) = v44;
      v61 = sub_1000E639C;
      v62 = v45;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100008224;
      v60 = &unk_1005D3368;
      v46 = _Block_copy(&aBlock);
      v47 = v55;
      v48 = v2;
      v49 = v42;
      sub_10047071C(a1, v56);

      [v43 performWithoutAnimation:v46];
      _Block_release(v46);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        [v49 frame];
        [v49 setFrame:?];
        [v47 setFrame:{v37, v36, v39, v38}];

        v12.super.isa = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.15 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v16 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.15 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v51 = swift_allocObject();
        *(v51 + 16) = v49;
        v61 = sub_100470F78;
        v62 = v51;
        aBlock = _NSConcreteStackBlock;
        v58 = 1107296256;
        v59 = sub_1000D6C80;
        v60 = &unk_1005D33B8;
        v52 = _Block_copy(&aBlock);
        v11 = v49;

        [(objc_class *)v12.super.isa addAnimations:v52];
        _Block_release(v52);
        v53 = swift_allocObject();
        *(v53 + 16) = v47;
        v61 = sub_100470F7C;
        v62 = v53;
        aBlock = _NSConcreteStackBlock;
        v58 = 1107296256;
        v59 = sub_1000D6C80;
        v60 = &unk_1005D3408;
        v54 = _Block_copy(&aBlock);
        v19 = v47;

        [v16 addAnimations:v54];
        _Block_release(v54);
        [(objc_class *)v12.super.isa startAnimation];
        [v16 startAnimationAfterDelay:0.1];
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      return;
    }

    [v55 setAttributedText:v4];
    [v55 setFrame:{v37, v36, v39, v38}];
  }
}

id sub_100459220(void *a1)
{
  CGAffineTransformMakeTranslation(&v3, 0.0, -20.0);
  [a1 setTransform:&v3];
  return [a1 setAlpha:0.0];
}

id sub_1004592EC(void *a1, id a2, void *a3, uint64_t a4)
{
  [a2 frame];
  [a1 setFrame:?];
  [a3 addSubview:a1];
  [a2 setAlpha:0.0];
  [a2 setAttributedText:a4];
  [a2 frame];

  return [a2 setFrame:?];
}

void sub_1004593C0(uint64_t a1, void *a2)
{
  isa = sub_1004BC284().super.isa;
  [a2 setFilters:isa];

  v4 = sub_1004BBE24();
  [a2 removeAnimationForKey:v4];
}

void sub_100459458(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (!v4)
  {
    return;
  }

  v208 = a2;
  v209 = a3;
  if (a1[11])
  {
    v217 = 0;
  }

  else
  {
    v217 = v4[5] != 0;
  }

  sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
  v6 = objc_allocWithZone(UISpringTimingParameters);

  isa = UIViewPropertyAnimator.init(springTimingParameters:)([v6 initWithMass:1.0 stiffness:120.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
  v226 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
  v231 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.32 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  v7 = v4[6];
  v8 = v4[7];
  v9 = *a1;
  v10 = a1[1];

  sub_10046ADDC(v9, v10, v7, v8);
  v213 = v11;
  v12 = v4[6];
  v13 = v4[7];

  sub_10046ADDC(v12, v13, v9, v10);
  v214 = v14;

  v15 = a1[5];
  v16 = &off_1005F2000;
  v212 = *(v15 + 16);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (!v212)
  {
    goto LABEL_54;
  }

  v20 = 0;
  v211 = v15 + 32;
  v225 = a1;
  v21 = a1[2];
  v224 = kCAFilterGaussianBlur;
  v222 = kCAFilterInputRadius;
  v210 = v21;
LABEL_8:
  v218 = v20;
  v22 = *(v211 + 8 * v20);
  swift_beginAccess();

  v26 = sub_10046E404(v23, v25, v24);

  if (*(v21 + 16) && (v27 = sub_1003FB2EC(v22), (v28 & 1) != 0))
  {
    v29 = *(*(v21 + 56) + 8 * v27);
  }

  else
  {
    v29 = &_swiftEmptySetSingleton;
  }

  v30 = sub_100457A50(v29, v26);
  v235 = sub_100457A50(v26, v29);

  if ((v30 & 0xC000000000000001) != 0)
  {
    sub_1004BD324();
    _s4WordCMa(0, v31);
    sub_1004701D0(&qword_100615B20, _s4WordCMa, &unk_1004EBEC8);
    sub_1004BC6A4();
    v30 = v254;
    v32 = v255;
    v33 = v256;
    v34 = v257;
    v35 = v258;
  }

  else
  {
    v34 = 0;
    v36 = -1 << *(v30 + 32);
    v32 = v30 + 56;
    v33 = ~v36;
    v37 = -v36;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v35 = v38 & *(v30 + 56);
  }

  v219 = v218 + 1;
  v39 = (v33 + 64) >> 6;
  v232 = v32;
  v227 = v39;
  v230 = v30;
  while ((v30 & 0x8000000000000000) == 0)
  {
    v40 = v34;
    v41 = v35;
    v42 = v34;
    if (!v35)
    {
      while (1)
      {
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v42 >= v39)
        {
          goto LABEL_33;
        }

        v41 = *(v32 + 8 * v42);
        ++v40;
        if (v41)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_123;
    }

LABEL_25:
    v43 = (v41 - 1) & v41;
    v44 = *(*(v30 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));

    if (!v44)
    {
      goto LABEL_33;
    }

LABEL_29:
    v240 = v43;
    v47 = objc_opt_self();
    v48 = swift_allocObject();
    *(v48 + 16) = v44;
    *(v48 + 24) = v243;
    v49 = *(v225 + 3);
    *(v48 + 64) = *(v225 + 2);
    *(v48 + 80) = v49;
    v50 = *(v225 + 5);
    *(v48 + 96) = *(v225 + 4);
    *(v48 + 112) = v50;
    v51 = *(v225 + 1);
    *(v48 + 32) = *v225;
    *(v48 + 48) = v51;
    *(v48 + 128) = v22;
    v52 = v243;
    v53 = v22;

    sub_10047044C(v225, &aBlock);
    sub_10003CC4C(v17, v18);
    v54 = swift_allocObject();
    *(v54 + 16) = sub_10047043C;
    *(v54 + 24) = v48;
    v251 = sub_1000E639C;
    v252 = v54;
    aBlock = _NSConcreteStackBlock;
    v248 = 1107296256;
    v249 = sub_100008224;
    v250 = &unk_1005D3278;
    v55 = _Block_copy(&aBlock);

    [v47 performWithoutAnimation:v55];
    _Block_release(v55);
    LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

    if (v47)
    {
      goto LABEL_125;
    }

    v251 = sub_100470484;
    v252 = v44;
    aBlock = _NSConcreteStackBlock;
    v248 = 1107296256;
    v249 = sub_1000D6C80;
    v250 = &unk_1005D32A0;
    v56 = _Block_copy(&aBlock);

    [(objc_class *)isa addAnimations:v56];
    _Block_release(v56);
    v57 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.23 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v251 = sub_1004704CC;
    v252 = v44;
    aBlock = _NSConcreteStackBlock;
    v248 = 1107296256;
    v249 = sub_1000D6C80;
    v250 = &unk_1005D32C8;
    v58 = _Block_copy(&aBlock);

    [v57 addAnimations:v58];
    _Block_release(v58);
    v59 = v44[26];
    if (v59)
    {
      v60 = [v59 layer];
      if (v60)
      {
        v61 = v60;
        v62 = [objc_allocWithZone(CAFilter) initWithType:v224];
        v63 = sub_1004B7194().super.super.isa;
        [v62 setValue:v63 forKey:v222];

        sub_100003ABC(&qword_100615758, &qword_1004ECB50);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1004C50A0;
        *(v64 + 56) = sub_100009130(0, &qword_100615B68, CAFilter_ptr);
        *(v64 + 32) = v62;
        v65 = v62;
        v66 = sub_1004BC284().super.isa;

        [v61 setFilters:v66];

        v67 = sub_1004BBE24();
        v68 = [objc_opt_self() animationWithKeyPath:v67];

        v69 = v68;
        [v69 setDuration:0.23];
        [v69 setBeginTime:CACurrentMediaTime() + 0.15];
        [v69 setFillMode:kCAFillModeBoth];
        v70 = sub_1004B7194().super.super.isa;
        [v69 setFromValue:v70];

        v71 = sub_1004B7194().super.super.isa;
        [v69 setToValue:v71];

        [v69 setRemovedOnCompletion:0];
        v72 = objc_allocWithZone(CAMediaTimingFunction);
        LODWORD(v73) = 1051260355;
        LODWORD(v74) = 1059816735;
        LODWORD(v75) = 1.0;
        v76 = [v72 initWithControlPoints:v73 :0.0 :v74 :v75];
        [v69 setTimingFunction:v76];

        v77 = swift_allocObject();
        *(v77 + 16) = v61;
        v78 = v61;
        CAAnimation.completion.setter(sub_10047100C, v77);

        v79 = sub_1004BBE24();
        [v78 addAnimation:v69 forKey:v79];
      }
    }

    [v57 startAnimationAfterDelay:{0.1, v208, v209}];

    v19 = 1;
    v17 = sub_10047043C;
    v18 = v48;
    v34 = v42;
    v35 = v240;
    v22 = v53;
    v39 = v227;
    v30 = v230;
    v32 = v232;
  }

  v45 = sub_1004BD354();
  if (v45)
  {
    v253 = v45;
    _s4WordCMa(0, v46);
    swift_dynamicCast();
    v44 = aBlock;
    v42 = v34;
    v43 = v35;
    if (aBlock)
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v228 = v17;
  sub_1001A43F8(v30);
  v80 = v235;
  v215 = v18;
  v81 = v19;
  if ((v235 & 0xC000000000000001) != 0)
  {
    sub_1004BD324();
    _s4WordCMa(0, v82);
    sub_1004701D0(&qword_100615B20, _s4WordCMa, &unk_1004EBEC8);
    sub_1004BC6A4();
    v80 = v259;
    v83 = v260;
    v84 = v261;
    v85 = v262;
    v86 = v263;
  }

  else
  {
    v85 = 0;
    v87 = -1 << *(v235 + 32);
    v83 = (v235 + 56);
    v84 = ~v87;
    v88 = -v87;
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    else
    {
      v89 = -1;
    }

    v86 = v89 & *(v235 + 56);
  }

  v236 = v80;
  v90 = (v84 + 64) >> 6;
  while (2)
  {
    if (v80 < 0)
    {
      v96 = sub_1004BD354();
      if (v96)
      {
        v253 = v96;
        _s4WordCMa(0, v97);
        swift_dynamicCast();
        v95 = aBlock;
        v93 = v85;
        v94 = v86;
        if (aBlock)
        {
LABEL_51:
          v241 = v94;
          v98 = swift_allocObject();
          *(v98 + 16) = v243;
          *(v98 + 24) = v95;
          v251 = sub_100470394;
          v252 = v98;
          aBlock = _NSConcreteStackBlock;
          v248 = 1107296256;
          v249 = sub_1000D6C80;
          v250 = &unk_1005D3188;
          v99 = _Block_copy(&aBlock);
          v100 = v243;

          [(objc_class *)v226 addAnimations:v99];
          _Block_release(v99);
          v251 = sub_10047039C;
          v252 = v95;
          aBlock = _NSConcreteStackBlock;
          v248 = 1107296256;
          v249 = sub_10013ABCC;
          v250 = &unk_1005D31B0;
          v101 = _Block_copy(&aBlock);

          [(objc_class *)v226 addCompletion:v101];
          _Block_release(v101);
          v251 = sub_1004703A0;
          v252 = v95;
          aBlock = _NSConcreteStackBlock;
          v248 = 1107296256;
          v249 = sub_1000D6C80;
          v250 = &unk_1005D31D8;
          v102 = _Block_copy(&aBlock);

          [v231 addAnimations:v102];
          _Block_release(v102);
          v103 = v95[26];
          if (v103 && (v104 = [v103 layer]) != 0)
          {
            v105 = v104;
            v106 = [objc_allocWithZone(CAFilter) initWithType:v224];
            v107 = sub_1004B7194().super.super.isa;
            [v106 setValue:v107 forKey:v222];

            sub_100003ABC(&qword_100615758, &qword_1004ECB50);
            v108 = swift_allocObject();
            *(v108 + 16) = xmmword_1004C50A0;
            *(v108 + 56) = sub_100009130(0, &qword_100615B68, CAFilter_ptr);
            *(v108 + 32) = v106;
            v109 = v106;
            v110 = sub_1004BC284().super.isa;

            [v105 setFilters:v110];

            v111 = sub_1004BBE24();
            v112 = [objc_opt_self() animationWithKeyPath:v111];

            v113 = v112;
            [v113 setDuration:0.32];
            [v113 setBeginTime:CACurrentMediaTime() + 0.15];
            [v113 setFillMode:kCAFillModeBoth];
            v114 = sub_1004B7194().super.super.isa;
            [v113 setFromValue:v114];

            v115 = sub_1004B7194().super.super.isa;
            [v113 setToValue:v115];

            [v113 setRemovedOnCompletion:0];
            v116 = objc_allocWithZone(CAMediaTimingFunction);
            LODWORD(v117) = 1051260355;
            LODWORD(v118) = 1059816735;
            LODWORD(v119) = 1.0;
            v120 = [v116 initWithControlPoints:v117 :0.0 :v118 :v119];
            [v113 setTimingFunction:v120];

            v121 = swift_allocObject();
            *(v121 + 16) = v105;
            v122 = v105;
            CAAnimation.completion.setter(sub_10047100C, v121);

            v123 = sub_1004BBE24();
            [v122 addAnimation:v113 forKey:v123];
          }

          else
          {
          }

          v81 = 1;
          v85 = v93;
          v86 = v241;
          v80 = v236;
          continue;
        }
      }

LABEL_7:
      sub_1001A43F8(v236);
      v20 = v219;
      v16 = &off_1005F2000;
      v17 = v228;
      v19 = v81;
      v21 = v210;
      v18 = v215;
      if (v219 != v212)
      {
        goto LABEL_8;
      }

LABEL_54:
      v216 = v18;
      v229 = v17;
      v233 = *(v213 + 16);
      if (v233)
      {
        v244 = objc_opt_self();
        v124 = *(v213 + 16);

        if (!v124)
        {
          goto LABEL_126;
        }

        v125 = 0;
        v126 = 0;
        v237 = 0;
        v127 = 0;
        v128 = 0;
        v221 = kCAFilterGaussianBlur;
        v220 = kCAFilterInputRadius;
        v242 = v19;
        while (1)
        {
          v129 = *(v213 + 32 + 8 * v125);
          v239 = v125;
          if (*(v129 + 56) == 1)
          {
            if (v19)
            {

              v242 = 1;
            }

            else
            {
              swift_beginAccess();
              v130 = *(v129 + 16);
              if (v130 >> 62)
              {
                v131 = sub_1004BD6A4();
                if (v131)
                {
LABEL_63:
                  if (v131 < 1)
                  {
                    goto LABEL_129;
                  }

                  v132 = 0;
                  do
                  {
                    if ((v130 & 0xC000000000000001) != 0)
                    {
                      v133 = sub_1004BD484();
                    }

                    else
                    {
                      v133 = *(v130 + 8 * v132 + 32);
                    }

                    sub_10003CC4C(v128, v127);
                    v134 = swift_allocObject();
                    *(v134 + 16) = sub_100470388;
                    *(v134 + 24) = v133;
                    v251 = sub_1000E639C;
                    v252 = v134;
                    aBlock = _NSConcreteStackBlock;
                    v248 = 1107296256;
                    v249 = sub_100008224;
                    v250 = &unk_1005D3110;
                    v135 = _Block_copy(&aBlock);

                    [v244 performWithoutAnimation:v135];
                    _Block_release(v135);
                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    if (isEscapingClosureAtFileLocation)
                    {
                      goto LABEL_124;
                    }

                    ++v132;
                    v251 = sub_100470F5C;
                    v252 = v133;
                    aBlock = _NSConcreteStackBlock;
                    v248 = 1107296256;
                    v249 = sub_1000D6C80;
                    v250 = &unk_1005D3138;
                    v137 = _Block_copy(&aBlock);

                    [(objc_class *)isa addAnimations:v137];
                    _Block_release(v137);

                    v128 = sub_100470388;
                    v127 = v133;
                  }

                  while (v131 != v132);

                  v242 = 0;
                  v128 = sub_100470388;
                  v127 = v133;
                  v16 = &off_1005F2000;
                  goto LABEL_73;
                }
              }

              else
              {
                v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v131)
                {
                  goto LABEL_63;
                }
              }

              v242 = 0;
            }
          }

          else
          {
          }

LABEL_73:
          v138 = swift_allocObject();
          *(v138 + 16) = v217;
          *(v138 + 24) = v129;

          sub_10003CC4C(v237, v126);
          v139 = swift_allocObject();
          *(v139 + 16) = sub_100470228;
          *(v139 + 24) = v138;
          v251 = sub_1000E6038;
          v252 = v139;
          aBlock = _NSConcreteStackBlock;
          v248 = 1107296256;
          v249 = sub_100008224;
          v250 = &unk_1005D2E90;
          v140 = v129;
          v141 = _Block_copy(&aBlock);

          [v244 performWithoutAnimation:v141];
          _Block_release(v141);
          LOBYTE(v141) = swift_isEscapingClosureAtFileLocation();

          if (v141)
          {
            goto LABEL_128;
          }

          v125 = v239 + 1;
          v251 = sub_10047025C;
          v252 = v140;
          aBlock = _NSConcreteStackBlock;
          v248 = 1107296256;
          v249 = sub_1000D6C80;
          v250 = &unk_1005D2EB8;
          v142 = _Block_copy(&aBlock);

          [isa v16[290]];
          _Block_release(v142);
          v251 = sub_1004702A0;
          v252 = v140;
          aBlock = _NSConcreteStackBlock;
          v248 = 1107296256;
          v249 = sub_1000D6C80;
          v250 = &unk_1005D2EE0;
          v143 = _Block_copy(&aBlock);

          [v231 v16[290]];
          _Block_release(v143);
          if ((v242 & 1) == 0)
          {
            goto LABEL_86;
          }

          v144 = v140[14];
          if (!v144)
          {
            goto LABEL_86;
          }

          v145 = [v144 maskView];
          if (v145)
          {
            goto LABEL_77;
          }

          v165 = v140[14];
          if (!v165)
          {
            goto LABEL_86;
          }

          v166 = [v165 subviews];
          sub_100009130(0, &qword_100615B60, UIView_ptr);
          v167 = sub_1004BC2A4();

          if (v167 >> 62)
          {
            if (sub_1004BD6A4())
            {
LABEL_82:
              if ((v167 & 0xC000000000000001) != 0)
              {
                v168 = sub_1004BD484();
              }

              else
              {
                if (!*((v167 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_131;
                }

                v168 = *(v167 + 32);
              }

              v145 = v168;

LABEL_77:
              v146 = [v145 layer];

              if (v146)
              {
                v147 = [objc_allocWithZone(CAFilter) initWithType:v221];
                v148 = sub_1004B7194().super.super.isa;
                [v147 setValue:v148 forKey:v220];

                sub_100003ABC(&qword_100615758, &qword_1004ECB50);
                v149 = swift_allocObject();
                *(v149 + 16) = xmmword_1004C50A0;
                *(v149 + 56) = sub_100009130(0, &qword_100615B68, CAFilter_ptr);
                *(v149 + 32) = v147;
                v150 = v147;
                v151 = sub_1004BC284().super.isa;

                [v146 setFilters:v151];

                v152 = sub_1004BBE24();
                v153 = [objc_opt_self() animationWithKeyPath:v152];

                v154 = v153;
                [v154 setDuration:0.32];
                [v154 setBeginTime:CACurrentMediaTime() + 0.15];
                [v154 setFillMode:kCAFillModeBoth];
                v155 = sub_1004B7194().super.super.isa;
                [v154 setFromValue:v155];

                v156 = sub_1004B7194().super.super.isa;
                [v154 setToValue:v156];

                [v154 setRemovedOnCompletion:0];
                v157 = objc_allocWithZone(CAMediaTimingFunction);
                LODWORD(v158) = 1051260355;
                LODWORD(v159) = 1059816735;
                LODWORD(v160) = 1.0;
                v161 = [v157 initWithControlPoints:v158 :0.0 :v159 :v160];
                [v154 setTimingFunction:v161];

                v162 = swift_allocObject();
                *(v162 + 16) = v146;
                v163 = v146;
                CAAnimation.completion.setter(sub_10047100C, v162);

                v164 = sub_1004BBE24();
                [v163 addAnimation:v154 forKey:v164];

                v125 = v239 + 1;

                goto LABEL_87;
              }

LABEL_86:

              goto LABEL_87;
            }
          }

          else if (*((v167 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_82;
          }

LABEL_87:
          if (v125 == v233)
          {

            v223 = sub_100470228;
            goto LABEL_96;
          }

          v237 = sub_100470228;
          v126 = v138;
          if (v125 >= *(v213 + 16))
          {
            goto LABEL_126;
          }
        }
      }

      v128 = 0;
      v127 = 0;
      v223 = 0;
      v138 = 0;
      v242 = v19;
LABEL_96:
      v245 = *(v214 + 16);
      if (!v245)
      {
LABEL_120:
        v203 = swift_allocObject();
        *(v203 + 16) = 0;
        v204 = swift_allocObject();
        v204[2] = v203;
        v204[3] = v208;
        v204[4] = v209;
        v251 = sub_1004702FC;
        v252 = v204;
        aBlock = _NSConcreteStackBlock;
        v248 = 1107296256;
        v249 = sub_10013ABCC;
        v250 = &unk_1005D2FD0;
        v205 = _Block_copy(&aBlock);

        [(objc_class *)isa addCompletion:v205];
        _Block_release(v205);
        [(objc_class *)isa startAnimation];
        v206 = swift_allocObject();
        v206[2] = v203;
        v206[3] = v208;
        v206[4] = v209;
        v251 = sub_100470F80;
        v252 = v206;
        aBlock = _NSConcreteStackBlock;
        v248 = 1107296256;
        v249 = sub_10013ABCC;
        v250 = &unk_1005D3020;
        v207 = _Block_copy(&aBlock);

        [(objc_class *)v226 addCompletion:v207];
        _Block_release(v207);
        [(objc_class *)v226 startAnimation];
        [v231 startAnimationAfterDelay:0.1];

        sub_10003CC4C(v229, v216);
        sub_10003CC4C(v128, v127);
        sub_10003CC4C(v223, v138);
        return;
      }

      v238 = kCAFilterGaussianBlur;
      v234 = kCAFilterInputRadius;

      v169 = 0;
      while (1)
      {
        if (v169 >= *(v214 + 16))
        {
          goto LABEL_127;
        }

        v170 = *(v214 + 8 * v169 + 32);
        if (v217)
        {
          v251 = sub_100470364;
          v252 = v170;
          aBlock = _NSConcreteStackBlock;
          v248 = 1107296256;
          v249 = sub_1000D6C80;
          v250 = &unk_1005D3070;
          v171 = _Block_copy(&aBlock);
          swift_retain_n();

          v172 = isa;
          [isa v16[290]];
          _Block_release(v171);
          v251 = sub_100470384;
          v252 = v170;
          aBlock = _NSConcreteStackBlock;
          v248 = 1107296256;
          v249 = sub_10013ABCC;
          v173 = &unk_1005D3098;
        }

        else
        {
          v251 = sub_1004702BC;
          v252 = v170;
          aBlock = _NSConcreteStackBlock;
          v248 = 1107296256;
          v249 = sub_1000D6C80;
          v250 = &unk_1005D2F08;
          v174 = _Block_copy(&aBlock);
          swift_retain_n();

          v172 = v226;
          [v226 v16[290]];
          _Block_release(v174);
          v251 = sub_100471008;
          v252 = v170;
          aBlock = _NSConcreteStackBlock;
          v248 = 1107296256;
          v249 = sub_10013ABCC;
          v173 = &unk_1005D2F30;
        }

        v250 = v173;
        v175 = _Block_copy(&aBlock);

        [(objc_class *)v172 addCompletion:v175];
        _Block_release(v175);
        v176 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.23 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v251 = sub_1004702DC;
        v252 = v170;
        aBlock = _NSConcreteStackBlock;
        v248 = 1107296256;
        v249 = sub_1000D6C80;
        v250 = &unk_1005D2F58;
        v177 = _Block_copy(&aBlock);

        [v176 v16[290]];
        _Block_release(v177);
        if (v242)
        {
          v178 = v170[14];
          if (v178)
          {
            v179 = [v178 maskView];
            if (v179)
            {
              goto LABEL_107;
            }

            v199 = v170[14];
            if (v199)
            {
              v200 = [v199 subviews];
              sub_100009130(0, &qword_100615B60, UIView_ptr);
              v201 = sub_1004BC2A4();

              if (v201 >> 62)
              {
                if (sub_1004BD6A4())
                {
LABEL_112:
                  if ((v201 & 0xC000000000000001) != 0)
                  {
                    v202 = sub_1004BD484();
                  }

                  else
                  {
                    if (!*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_130;
                    }

                    v202 = *(v201 + 32);
                  }

                  v179 = v202;

LABEL_107:
                  v180 = [v179 layer];

                  if (v180)
                  {
                    v181 = [objc_allocWithZone(CAFilter) initWithType:v238];
                    v182 = sub_1004B7194().super.super.isa;
                    [v181 setValue:v182 forKey:v234];

                    sub_100003ABC(&qword_100615758, &qword_1004ECB50);
                    v183 = swift_allocObject();
                    *(v183 + 16) = xmmword_1004C50A0;
                    *(v183 + 56) = sub_100009130(0, &qword_100615B68, CAFilter_ptr);
                    *(v183 + 32) = v181;
                    v184 = v181;
                    v185 = sub_1004BC284().super.isa;

                    [v180 setFilters:v185];

                    v186 = sub_1004BBE24();
                    v187 = [objc_opt_self() animationWithKeyPath:v186];

                    v188 = v187;
                    [v188 setDuration:0.23];
                    [v188 setBeginTime:CACurrentMediaTime() + 0.0];
                    [v188 setFillMode:kCAFillModeBoth];
                    v189 = sub_1004B7194().super.super.isa;
                    [v188 setFromValue:v189];

                    v190 = sub_1004B7194().super.super.isa;
                    [v188 setToValue:v190];

                    [v188 setRemovedOnCompletion:0];
                    v191 = objc_allocWithZone(CAMediaTimingFunction);
                    LODWORD(v192) = 1051260355;
                    LODWORD(v193) = 1059816735;
                    LODWORD(v194) = 1.0;
                    v195 = [v191 initWithControlPoints:v192 :0.0 :v193 :v194];
                    [v188 setTimingFunction:v195];

                    v196 = swift_allocObject();
                    *(v196 + 16) = v180;
                    v197 = v180;
                    CAAnimation.completion.setter(sub_10047035C, v196);

                    v198 = sub_1004BBE24();
                    [v197 addAnimation:v188 forKey:v198];

                    v16 = &off_1005F2000;
                  }

                  goto LABEL_99;
                }
              }

              else if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_112;
              }
            }
          }
        }

LABEL_99:
        ++v169;
        [v176 startAnimation];

        if (v245 == v169)
        {

          goto LABEL_120;
        }
      }
    }

    break;
  }

  v91 = v85;
  v92 = v86;
  v93 = v85;
  if (v86)
  {
LABEL_47:
    v94 = (v92 - 1) & v92;
    v95 = *(*(v80 + 48) + ((v93 << 9) | (8 * __clz(__rbit64(v92)))));

    if (!v95)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

  while (1)
  {
    v93 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      break;
    }

    if (v93 >= v90)
    {
      goto LABEL_7;
    }

    v92 = *&v83[8 * v93];
    ++v91;
    if (v92)
    {
      goto LABEL_47;
    }
  }

LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

void sub_10045B8D0(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  Width = CGRectGetWidth(*(a1 + 176));
  if (*(a2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == 1)
  {
    v9 = *(a3 + 24);
    if (*(v9 + 16))
    {
      v10 = Width;
      v11 = sub_1003FB2EC(a4);
      Width = v10;
      if (v12)
      {
        v13 = CGRectGetWidth(*(*(v9 + 56) + 32 * v11));
        Width = v10 + vabdd_f64(v13, CGRectGetWidth(*(a4 + 80)));
      }
    }

    Width = -Width;
  }

  v14 = *(a1 + 208);
  if (v14)
  {
    CGAffineTransformMakeTranslation(&v16, Width, 0.0);
    [v14 setTransform:&v16];
    v15 = *(a1 + 208);
    if (v15)
    {
      [v15 setAlpha:0.0];
    }
  }
}

void sub_10045B9D4(uint64_t a1, uint64_t a2)
{
  v4 = Int.seconds.getter(50);
  v5 = *(a2 + 208);
  if (v5)
  {
    if (*(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction))
    {
      v4 = -v4;
    }

    CGAffineTransformMakeTranslation(&v6, v4, 0.0);
    [v5 setTransform:&v6];
  }
}

void sub_10045BA58(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    v2 = *(a1 + 144);
    v3 = *(a1 + 152);
    v4 = *(a1 + 160);
    v5 = *(a1 + 168);
    v7 = v1;
    v11.origin.x = v2;
    v11.origin.y = v3;
    v11.size.width = v4;
    v11.size.height = v5;
    MinX = CGRectGetMinX(v11);
    v9 = CGRectGetMinX(*(a1 + 176));
    CGAffineTransformMakeTranslation(&v10, MinX - v9, 0.0);
    [v7 setTransform:&v10];
  }
}

id sub_10045BB08(char a1, double *a2)
{
  v3 = *(a2 + 14);
  if (a1)
  {
    if (v3)
    {
      v4 = a2[10];
      v5 = a2[11];
      v6 = a2[12];
      v7 = a2[13];
      v8 = v3;
      v12.origin.x = v4;
      v12.origin.y = v5;
      v12.size.width = v6;
      v12.size.height = v7;
      Height = CGRectGetHeight(v12);
      CGAffineTransformMakeTranslation(&v11, 0.0, -Height);
      [v8 setTransform:&v11];
    }
  }

  else if (v3)
  {
    CGAffineTransformMakeTranslation(&v11, 0.0, 20.0);
    [v3 setTransform:&v11];
  }

  result = *(a2 + 14);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

void *sub_10045BBFC(void *result, CGFloat a2)
{
  v2 = result[14];
  if (v2)
  {
    CGAffineTransformMakeTranslation(&v3, 0.0, a2);
    return [v2 setTransform:&v3];
  }

  return result;
}

void sub_10045BC5C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = swift_beginAccess();
    *(a2 + 16) = 1;
    a3(v5);
  }
}

void *sub_10045BCD4(double a1, double a2)
{
  v3 = v2;
  sub_100003ABC(&qword_100615040, &unk_1004EA880);
  __chkstk_darwin();
  v103 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v101 - v7;
  sub_100003ABC(&qword_100615070, &qword_1004EA8B0);
  __chkstk_darwin();
  v9 = &v101 - v8;
  sub_100003ABC(&qword_100615038, &qword_1004EA878);
  __chkstk_darwin();
  v109 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = (&v101 - v11);
  __chkstk_darwin();
  v13 = &v101 - v12;
  v14 = sub_1004B6E44();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v102 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v101 - v17;
  __chkstk_darwin();
  v111 = &v101 - v18;
  v19 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v19 setAlignment:*&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];
  v112 = v19;
  [v19 setLineBreakStrategy:3];
  v20 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
  v21 = v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 216];
  v104 = v15;
  if ((v21 & 1) == 0)
  {
    v22 = *(v20 + 26);
    v23 = v14;
    v24 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind;
    if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
    {
      v25 = 224;
    }

    else
    {
      v25 = 200;
    }

    [*&v20[v25] ascender];
    v27 = v3[v24];
    v14 = v23;
    v15 = v104;
    if (v27)
    {
      v28 = 224;
    }

    else
    {
      v28 = 200;
    }

    v29 = v22 - v26;
    [*&v20[v28] descender];
    [v112 setLineSpacing:v29 + v30];
  }

  v31 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v33 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v32 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];

  LOBYTE(v33) = String.containsExcessiveHeightCharacters.getter(v33, v32);

  if (v33)
  {
    v114 = Int.seconds.getter(0);
    v113[0] = v114;
    CTFontGetLanguageAwareOutsets();
    v34 = v114 + v113[0];
    v35 = v112;
    [v112 lineSpacing];
    [v35 setLineSpacing:v34 + v36];
  }

  v37 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  swift_beginAccess();
  sub_10000F778(&v3[v37], v13, &qword_100615038, &qword_1004EA878);
  v110 = *(v15 + 48);
  v38 = v110(v13, 1, v14);
  v108 = v37;
  v107 = v15 + 48;
  if (v38 == 1)
  {
    v39 = &qword_100615038;
    v40 = &qword_1004EA878;
    v41 = v13;
LABEL_17:
    sub_100007214(v41, v39, v40);
    goto LABEL_20;
  }

  v42 = v111;
  (*(v15 + 32))(v111, v13, v14);
  sub_1004B6E34();
  v43 = sub_1004B6DD4();
  if ((*(*(v43 - 8) + 48))(v9, 1, v43) != 1)
  {
    (*(v15 + 8))(v42, v14);
    v39 = &qword_100615070;
    v40 = &qword_1004EA8B0;
    v41 = v9;
    goto LABEL_17;
  }

  sub_100007214(v9, &qword_100615070, &qword_1004EA8B0);
  v44 = v106;
  sub_10000F778(&v3[v37], v106, &qword_100615038, &qword_1004EA878);
  if (v110(v44, 1, v14))
  {
    sub_100007214(v44, &qword_100615038, &qword_1004EA878);
    (*(v15 + 8))(v42, v14);
LABEL_20:
    v49 = v14;
    goto LABEL_21;
  }

  v45 = v101;
  (*(v15 + 16))(v101, v44, v14);
  sub_100007214(v44, &qword_100615038, &qword_1004EA878);
  v46 = v105;
  sub_1004B6E14();
  v47 = *(v15 + 8);
  (v47)(v45, v14);
  v48 = sub_1004B6D64();
  v49 = v14;
  v50 = *(v48 - 8);
  if ((*(v50 + 48))(v46, 1, v48) == 1)
  {
    sub_100007214(v46, &qword_100615040, &unk_1004EA880);
    v14 = v49;
    (v47)(v42, v49);
    goto LABEL_20;
  }

  v106 = v47;
  sub_1004B6D44();
  (*(v50 + 8))(v46, v48);

  (v106)(v42, v49);
LABEL_21:
  v106 = *v31;
  sub_100003ABC(&unk_100616F00, &unk_1004EC1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50B0;
  *(inited + 32) = NSFontAttributeName;
  v105 = (inited + 32);
  v52 = 200;
  if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
  {
    v52 = 224;
  }

  v53 = *&v20[v52];
  v54 = sub_100009130(0, &qword_100616F10, UIFont_ptr);
  *(inited + 40) = v53;
  v111 = v3;
  *(inited + 64) = v54;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v55 = sub_100009130(0, &qword_100615B50, NSMutableParagraphStyle_ptr);
  v56 = v112;
  *(inited + 80) = v112;
  *(inited + 104) = v55;
  *(inited + 112) = NSForegroundColorAttributeName;
  v57 = objc_opt_self();
  v58 = v53;

  v59 = NSFontAttributeName;
  v60 = NSParagraphStyleAttributeName;
  v61 = v111;
  v112 = v56;
  v62 = NSForegroundColorAttributeName;
  v63 = [v57 whiteColor];
  v64 = sub_100009130(0, &unk_1006169D0, UIColor_ptr);
  *(inited + 120) = v63;
  *(inited + 144) = v64;
  *(inited + 152) = NSLanguageIdentifierAttributeName;
  v65 = v109;
  sub_10000F778(&v61[v108], v109, &qword_100615038, &qword_1004EA878);
  if (v110(v65, 1, v49))
  {
    v66 = NSLanguageIdentifierAttributeName;
    v67 = &qword_100615038;
    v68 = &qword_1004EA878;
LABEL_27:
    sub_100007214(v65, v67, v68);
    v74 = (inited + 160);
    *(inited + 184) = &type metadata for String;
LABEL_28:
    *v74 = 0;
    v75 = 0xE000000000000000;
    goto LABEL_29;
  }

  v69 = v104;
  v70 = v102;
  (*(v104 + 16))(v102, v65, v49);
  v71 = NSLanguageIdentifierAttributeName;
  sub_100007214(v65, &qword_100615038, &qword_1004EA878);
  v65 = v103;
  sub_1004B6E14();
  (*(v69 + 8))(v70, v49);
  v72 = sub_1004B6D64();
  v73 = *(v72 - 8);
  if ((*(v73 + 48))(v65, 1, v72) == 1)
  {
    v67 = &qword_100615040;
    v68 = &unk_1004EA880;
    goto LABEL_27;
  }

  v99 = sub_1004B6D44();
  v75 = v100;
  (*(v73 + 8))(v65, v72);
  v74 = (inited + 160);
  *(inited + 184) = &type metadata for String;
  if (!v75)
  {
    goto LABEL_28;
  }

  *v74 = v99;
LABEL_29:
  *(inited + 168) = v75;
  sub_100447ACC(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100615670, &unk_1004EB270);
  swift_arrayDestroy();
  v76 = objc_allocWithZone(NSAttributedString);
  v77 = sub_1004BBE24();

  _s3__C3KeyVMa_1(0);
  sub_1004701D0(&qword_100616F20, _s3__C3KeyVMa_1, &unk_1004EA7A0);
  isa = sub_1004BBC24().super.isa;

  v79 = [v76 initWithString:v77 attributes:isa];

  v81 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager;
  v82 = *&v61[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager];
  if (v82)
  {
    v83 = v82[3];

    v84 = [v83 attributedString];
    if (!v84 || (v85 = v84, sub_100009130(0, &qword_100615B58, NSAttributedString_ptr), v86 = v79, v87 = sub_1004BCFA4(), v85, v86, v88 = v82, (v87 & 1) == 0))
    {
      v88 = v82;
      (*(*v82 + 176))(v79);
    }
  }

  else
  {
    type metadata accessor for TextKitManager(0, v80);
    swift_allocObject();
    TextKitManager.init(text:size:)(v79, a1);
    v88 = v89;
    *&v61[v81] = v89;
    swift_retain_n();
  }

  v90 = *(*v88 + 112);

  v92 = v90(v91);

  [v92 size];
  v94 = v93;

  if (v94 == a1)
  {
  }

  else
  {
    (*(*v88 + 184))(a1, a2);
    v95 = sub_100447BF4(_swiftEmptyArrayStorage);

    v96 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v97 = v111;
    swift_beginAccess();
    *&v97[v96] = v95;
  }

  return v88;
}

void sub_10045CAA4(char a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer;
  v11 = *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v11)
  {
    v12 = *(v11 + 48);
    v13 = *(v11 + 56);
  }

  else
  {
    v13 = sub_10046DE30(_swiftEmptyArrayStorage, sub_10046DECC);
    v12 = 0;
  }

  v152 = v12;
  v153 = v13;
  v150 = 0;
  v151 = sub_10046DE30(_swiftEmptyArrayStorage, sub_10046DECC);
  v131 = v10;
  if (a2)
  {
    goto LABEL_48;
  }

  v14 = *(v5 + v10);
  if (!v14)
  {
    goto LABEL_48;
  }

  v15 = v14[3];
  *&v136[0] = v14[2];
  *(&v136[0] + 1) = v15;
  v139 = 10;
  v140 = 0xE100000000000000;
  v137 = 0;
  v138 = 0xE000000000000000;
  sub_10044CAE0();

  if (sub_1004BD224() == *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text) && v16 == *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8))
  {
  }

  else
  {
    v17 = sub_1004BD9C4();

    if ((v17 & 1) == 0)
    {
      v21 = sub_100447BF4(_swiftEmptyArrayStorage);
      v22 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
      swift_beginAccess();
      *(v5 + v22) = v21;

      sub_1004766B4();

      *(v5 + v10) = 0;

      v152 = 0;
      v153 = _swiftEmptyArrayStorage;
      goto LABEL_48;
    }
  }

  v18 = v14[5];
  v19 = *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8);
  if (v18)
  {
    if (!v19 || (v14[4] != *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText) || v18 != v19) && (sub_1004BD9C4() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    if ((a1 & 1) == 0)
    {
      sub_1004607B8(a1 & 1, a3);

      goto LABEL_84;
    }

    goto LABEL_19;
  }

  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_19:
  v20 = v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata;
  swift_beginAccess();
  if (*(v20 + 8))
  {

    goto LABEL_48;
  }

  v125 = v20;
  v126 = v13;
  v127 = v12;
  v23 = sub_100447BF4(_swiftEmptyArrayStorage);
  v128 = v14;
  v24 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  swift_beginAccess();
  *(v5 + v24) = v23;
  v25 = v128;

  v26 = sub_100447E6C(_swiftEmptyArrayStorage);
  v27 = sub_100447F90(_swiftEmptyArrayStorage);
  v28 = v128[7];
  v129 = *(v28 + 16);
  if (!v129)
  {
    goto LABEL_47;
  }

  v124 = v5;

  v30 = 0;
  while (1)
  {
    if (v30 >= *(v28 + 16))
    {
      goto LABEL_87;
    }

    v31 = *(v28 + 8 * v30 + 32);
    swift_beginAccess();
    swift_retain_n();

    v35 = sub_10046E404(v32, v34, v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v136[0] = v26;
    v37 = sub_1003FB2EC(v31);
    v38 = v26[2];
    v39 = (v29 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      break;
    }

    v41 = v29;
    if (v26[3] >= v40)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = *&v136[0];
        if ((v29 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_1004462F0();
        v26 = *&v136[0];
        if ((v41 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_100444664(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_1003FB2EC(v31);
      if ((v41 & 1) != (v29 & 1))
      {
        goto LABEL_91;
      }

      v37 = v42;
      v26 = *&v136[0];
      if ((v41 & 1) == 0)
      {
LABEL_31:
        sub_1004455E0(v37, v31, v35, v26);
        goto LABEL_35;
      }
    }

    *(v26[7] + 8 * v37) = v35;

LABEL_35:
    v132 = *(v31 + 80);
    v134 = *(v31 + 96);

    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v136[0] = v27;
    v44 = sub_1003FB2EC(v31);
    v45 = v27[2];
    v46 = (v29 & 1) == 0;
    v47 = __OFADD__(v45, v46);
    v48 = v45 + v46;
    if (v47)
    {
      goto LABEL_89;
    }

    v49 = v29;
    if (v27[3] < v48)
    {
      sub_1004443D0(v48, v43);
      v44 = sub_1003FB2EC(v31);
      if ((v49 & 1) != (v29 & 1))
      {
        goto LABEL_91;
      }

LABEL_40:
      v27 = *&v136[0];
      if (v49)
      {
        goto LABEL_41;
      }

      goto LABEL_24;
    }

    if (v43)
    {
      goto LABEL_40;
    }

    v51 = v44;
    sub_100446188();
    v44 = v51;
    v27 = *&v136[0];
    if (v49)
    {
LABEL_41:
      v50 = (v27[7] + 32 * v44);
      *v50 = v132;
      v50[1] = v134;

      goto LABEL_25;
    }

LABEL_24:
    sub_100445594(v44, v31, v27, *&v132, *(&v132 + 1), *&v134, *(&v134 + 1));
LABEL_25:
    ++v30;

    if (v129 == v30)
    {

      v5 = v124;
      v25 = v128;
LABEL_47:

      v52 = sub_10046DE30(_swiftEmptyArrayStorage, sub_10046DECC);
      v53 = v25[5];
      v135 = v25[4];

      v133 = *(v25 + 5);
      v130 = *(v25 + 4);

      v54 = *(v125 + 48);
      v136[2] = *(v125 + 32);
      v136[3] = v54;
      v55 = *(v125 + 80);
      v136[4] = *(v125 + 64);
      v136[5] = v55;
      v56 = *(v125 + 16);
      v136[0] = *v125;
      v136[1] = v56;
      *v125 = v127;
      *(v125 + 8) = v126;
      *(v125 + 16) = v26;
      *(v125 + 24) = v27;
      *(v125 + 32) = 0;
      *(v125 + 40) = v52;
      *(v125 + 48) = v130;
      *(v125 + 64) = v133;
      *(v125 + 80) = v135;
      *(v125 + 88) = v53;
      sub_100007214(v136, &qword_100615B30, &unk_1004EB860);
LABEL_48:
      v149 = 0;
      v147 = Int.seconds.getter(0);
      v148 = v147;
      v145 = 0;
      v146 = 0;
      if (*(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords))
      {

        sub_10045DDE0(v57);
        v145 = v58;
        v146 = v59;
      }

      v144 = 0;
      v60 = sub_10046DE30(_swiftEmptyArrayStorage, sub_10046DECC);
      v142 = 0;
      v143 = v60;
      v141 = _swiftEmptyArrayStorage;
      v61 = v5;
      v62 = sub_10045BCD4(a3, a4);
      v63 = [v62[2] usageBoundsForTextContainer];
      v65 = v64;
      MaxY = v66;
      v68 = (*(*v62 + 24))(v63);
      v69 = (v68 + 80);
      v70 = -*(v68 + 16);
      v71 = -1;
      while (v70 + v71 != -1)
      {
        if (++v71 >= *(v68 + 16))
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v72 = *(v69 - 5);
        v73 = *(v69 - 4);
        v74 = *(v69 - 3);
        v75 = *(v69 - 2);
        v76 = *(v69 - 1);
        v77 = *v69;
        v78 = *(v69 - 6);
        v79 = [v78 lineRef];
        if (!v79)
        {
          goto LABEL_90;
        }

        v80 = v79;
        v69 += 7;
        sub_10045DFF0(v78, v79, v76, v77, 0, &v148, v61, &v152, v72, v73, v74, v75, a3, a4, &v142, &v149, &v141, &v145, &v147, &v144, &v150);
        v82 = v81;

        if ((v82 & 1) == 0)
        {

          sub_1003013BC(v145, v146);

          goto LABEL_84;
        }
      }

      v83 = v61;
      v84 = (v61 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
      if (*(v61 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
      {
        swift_beginAccess();
        if (v147 > v65)
        {
          v85 = v147;
        }

        else
        {
          v85 = v65;
        }

        v86 = v131;
        if (*(v61 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) == 2)
        {
          swift_beginAccess();
          v87 = v143;
          v88 = v143[2];
          if (v88)
          {
            v89 = 0;
            v90 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
            do
            {
              if (v89 >= v87[2])
              {
                goto LABEL_86;
              }

              v91 = v87[v89 + 4];
              if (*(v91 + 56) == 1)
              {
                v92 = *(v91 + 58) ^ v83[v90];
                v93 = *(v91 + 104);
                if (!v83[v90])
                {
                  goto LABEL_71;
                }
              }

              else
              {
                v92 = 0;
                v93 = *(v91 + 104);
                if (!v83[v90])
                {
                  goto LABEL_71;
                }
              }

              if (v92)
              {
LABEL_71:
                v94 = *(v91 + 88);
                v96 = *(v91 + 96);
                v97 = v85 - v96;
                v95 = *(v91 + 80);
                goto LABEL_72;
              }

              v95 = *(v91 + 80);
              v94 = *(v91 + 88);
              v96 = *(v91 + 96);
              v97 = v85 - v65 + v95;
LABEL_72:
              *(v91 + 80) = v97;
              v98 = v94;
              v99 = v96;
              v100 = v93;
              if (!CGRectEqualToRect(*(&v93 - 3), *&v95))
              {
                *(v91 + 128) = 0;
              }

              ++v89;
            }

            while (v88 != v89);
          }
        }

        swift_beginAccess();
        v101 = v143[2];
        if (v101)
        {
          v102 = v143[v101 + 3];

          if (v102)
          {
            MaxY = CGRectGetMaxY(*(v102 + 80));

            v65 = v85;
          }
        }

        v103 = *&v83[v131];
        if (v103)
        {
LABEL_78:
          v104 = v103[8];
          v105 = v103[9];
          v106 = v103[10];
          v107 = v103[11];
          v108 = *&v83[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
          v103[2] = *&v83[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
          *(v103 + 3) = v108;

          v109 = *(v84 + 1);
          v103[4] = *v84;
          *(v103 + 5) = v109;

          swift_beginAccess();
          v110 = v143;
          *(v103 + 6) = v142;
          *(v103 + 7) = v110;

          v103[8] = 0.0;
          v103[9] = 0.0;
          v103[10] = v65;
          v103[11] = MaxY;
          v155.origin.x = 0.0;
          v155.origin.y = 0.0;
          v154.origin.x = v104;
          v154.origin.y = v105;
          v154.size.width = v106;
          v154.size.height = v107;
          v155.size.width = v65;
          v155.size.height = MaxY;
          v111 = CGRectEqualToRect(v154, v155);
          sub_1004607B8(!v111, a3);

          goto LABEL_81;
        }
      }

      else
      {
        v86 = v131;
        v103 = *(v61 + v131);
        if (v103)
        {
          goto LABEL_78;
        }
      }

      v112 = *&v83[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
      v113 = *&v83[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
      v114 = *v84;
      v115 = *(v84 + 1);
      swift_beginAccess();
      v116 = v142;
      v117 = v143;
      _s13TextContainerCMa(0, v118);
      v119 = swift_allocObject();
      *(v119 + 96) = 0;
      *(v119 + 16) = v112;
      *(v119 + 24) = v113;
      *(v119 + 32) = v114;
      *(v119 + 40) = v115;
      *(v119 + 48) = v116;
      *(v119 + 56) = v117;
      *(v119 + 64) = 0;
      *(v119 + 72) = 0;
      *(v119 + 80) = v65;
      *(v119 + 88) = MaxY;
      *&v83[v86] = v119;

      sub_1004607B8(1, a3);
LABEL_81:
      v121 = sub_10045CA44(v136);
      if (*(v120 + 8))
      {
        v122 = v120;
        swift_beginAccess();
        v123 = v151;
        *(v122 + 32) = v150;
        *(v122 + 40) = v123;
      }

      (v121)(v136, 0);
      [v83 setNeedsLayout];

      sub_1003013BC(v145, v146);

LABEL_84:

      return;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  _s4LineCMa(0, v29);
  sub_1004BDAA4();
  __break(1u);
}