id *sub_100071CF8(id *result, int64_t a2, char a3, uint64_t a4)
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
    sub_10000FEB8(&qword_100118638, &qword_1000D0F68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100071DEC(uint64_t a1, uint64_t a2)
{
  sub_1000C7464();
  sub_1000C6DD4();
  v4 = sub_1000C7494();

  return sub_100071FC4(a1, a2, v4);
}

unint64_t sub_100071E64(uint64_t a1)
{
  v1 = a1;
  sub_1000C7464();
  sub_10009D2CC(v1);
  sub_1000C6DD4();

  v2 = sub_1000C7494();

  return sub_10007207C(v1, v2);
}

unint64_t sub_100071EEC(uint64_t a1)
{
  v1 = a1;
  sub_1000C7464();
  sub_1000C7474(v1);
  v2 = sub_1000C7494();

  return sub_100072508(v1, v2);
}

unint64_t sub_100071F58(uint64_t a1)
{
  v1 = a1;
  sub_1000C7464();
  sub_1000C7484(v1 & 1);
  v2 = sub_1000C7494();

  return sub_100072578(v1, v2);
}

unint64_t sub_100071FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000C73A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10007207C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x7265646C6F66;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE800000000000000;
          v8 = 0x746E656D75636F64;
          break;
        case 2:
          v8 = 0x6873646165727073;
          v9 = 7628133;
          goto LABEL_17;
        case 3:
          v8 = 0x61746E6573657270;
          v7 = 0xEC0000006E6F6974;
          break;
        case 4:
          v7 = 0xE500000000000000;
          v8 = 0x6567616D69;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x6569766F6DLL;
          break;
        case 6:
          v7 = 0xE300000000000000;
          v8 = 6710384;
          break;
        case 7:
          v7 = 0xE400000000000000;
          v8 = 1702129518;
          break;
        case 8:
          v8 = 0x6C6F467365746F6ELL;
          v9 = 7497060;
LABEL_17:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 9:
          v7 = 0xE400000000000000;
          v8 = 1953720684;
          break;
        case 0xA:
          v7 = 0xE800000000000000;
          v8 = 0x70756F7247626174;
          break;
        case 0xB:
          v8 = 0x6D726F6665657266;
          v7 = 0xED00006472616F42;
          break;
        case 0xC:
          v8 = 0x43636972656E6567;
          v7 = 0xEF74694B64756F6CLL;
          break;
        case 0xD:
          v7 = 0xE500000000000000;
          v8 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v10 = 0xE600000000000000;
      v11 = 0x7265646C6F66;
      switch(a1)
      {
        case 1:
          v10 = 0xE800000000000000;
          if (v8 == 0x746E656D75636F64)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v12 = 0x6873646165727073;
          v13 = 7628133;
          goto LABEL_47;
        case 3:
          v10 = 0xEC0000006E6F6974;
          if (v8 != 0x61746E6573657270)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v10 = 0xE500000000000000;
          if (v8 != 0x6567616D69)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v10 = 0xE500000000000000;
          if (v8 != 0x6569766F6DLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          v10 = 0xE300000000000000;
          if (v8 != 6710384)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v10 = 0xE400000000000000;
          if (v8 != 1702129518)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v12 = 0x6C6F467365746F6ELL;
          v13 = 7497060;
LABEL_47:
          v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v12)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v10 = 0xE400000000000000;
          if (v8 != 1953720684)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v10 = 0xE800000000000000;
          v11 = 0x70756F7247626174;
          goto LABEL_41;
        case 11:
          v10 = 0xED00006472616F42;
          if (v8 != 0x6D726F6665657266)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v10 = 0xEF74694B64756F6CLL;
          if (v8 != 0x43636972656E6567)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v10 = 0xE500000000000000;
          if (v8 != 0x726568746FLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v8 != v11)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_43:
          v14 = sub_1000C73A4();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_100072508(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100072578(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void (*sub_1000725E8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000C7254();
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
    return sub_100072668;
  }

  __break(1u);
  return result;
}

uint64_t sub_100072670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_10000FEB8(&unk_100118600, &qword_1000D0C10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - v10;
  sub_100017574(a1, &v15 - v10, &unk_100118600, &qword_1000D0C10);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  sub_100020D0C(v11, v13 + v12, &unk_100118600, &qword_1000D0C10);
  sub_10000FEB8(&qword_100118520, &qword_1000D0BC0);
  swift_allocObject();

  result = sub_1000C6044();
  *a4 = result;
  return result;
}

unint64_t sub_1000727E4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1000C72F4();
    if (result)
    {
LABEL_3:
      sub_10000FEB8(&qword_1001185E0, &unk_1000D0BE8);
      result = sub_1000C7224();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1000C72F4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_1000C7254();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_1000C6014();
    sub_1000799C8(&qword_1001185E8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = sub_1000C6D14();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1000799C8(&unk_1001185F0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = sub_1000C6D34();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

char *sub_100072A78(uint64_t a1)
{
  v2 = v1;
  v491 = a1;
  v414 = *v1;
  v435 = sub_10000FEB8(&qword_1001182F0, &qword_1000D0A48);
  v434 = *(v435 - 8);
  __chkstk_darwin(v435);
  v433 = &v305 - v3;
  v438 = sub_10000FEB8(&qword_1001182F8, &qword_1000D0A50);
  v437 = *(v438 - 8);
  __chkstk_darwin(v438);
  v436 = &v305 - v4;
  v441 = sub_10000FEB8(&qword_100118300, &qword_1000D0A58);
  v440 = *(v441 - 8);
  __chkstk_darwin(v441);
  v439 = &v305 - v5;
  v428 = sub_10000FEB8(&qword_100118308, &qword_1000D0A60);
  v427 = *(v428 - 8);
  __chkstk_darwin(v428);
  v425 = &v305 - v6;
  v429 = sub_10000FEB8(&qword_100118310, &qword_1000D0A68);
  __chkstk_darwin(v429);
  v426 = &v305 - v7;
  v465 = sub_10000FEB8(&qword_100116998, &unk_1000CC910);
  v430 = *(v465 - 8);
  v8 = __chkstk_darwin(v465);
  v431 = &v305 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v432 = &v305 - v10;
  v419 = sub_10000FEB8(&qword_100117710, &qword_1000CEEB0);
  __chkstk_darwin(v419);
  v417 = &v305 - v11;
  v422 = sub_10000FEB8(&qword_100118318, &qword_1000D0A70);
  v420 = *(v422 - 8);
  __chkstk_darwin(v422);
  v418 = &v305 - v12;
  v424 = sub_10000FEB8(&unk_100118320, &unk_1000D0A78);
  v423 = *(v424 - 8);
  __chkstk_darwin(v424);
  v421 = &v305 - v13;
  v416 = sub_10000FEB8(&qword_100116EA0, &qword_1000CD270);
  v415 = *(v416 - 8);
  v14 = __chkstk_darwin(v416);
  v412 = &v305 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v413 = &v305 - v16;
  v409 = sub_10000FEB8(&qword_100118330, &qword_1000D0A88);
  v408 = *(v409 - 8);
  __chkstk_darwin(v409);
  v406 = &v305 - v17;
  v402 = sub_10000FEB8(&qword_100118338, &qword_1000D0A90);
  v400 = *(v402 - 8);
  __chkstk_darwin(v402);
  v398 = &v305 - v18;
  v401 = sub_10000FEB8(&qword_100118340, &qword_1000D0A98);
  v19 = __chkstk_darwin(v401);
  v399 = &v305 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v397 = &v305 - v21;
  v405 = sub_10000FEB8(&qword_100118348, &qword_1000D0AA0);
  v404 = *(v405 - 8);
  __chkstk_darwin(v405);
  v403 = &v305 - v22;
  v411 = sub_10000FEB8(&unk_100118350, &qword_1000D0AA8);
  v410 = *(v411 - 8);
  __chkstk_darwin(v411);
  v407 = &v305 - v23;
  v396 = sub_10000FEB8(&qword_100116EC8, &qword_1000D0AB0);
  v395 = *(v396 - 8);
  __chkstk_darwin(v396);
  v394 = &v305 - v24;
  v393 = sub_10000FEB8(&qword_100118360, &qword_1000D0AB8);
  v392 = *(v393 - 8);
  __chkstk_darwin(v393);
  v391 = &v305 - v25;
  v390 = sub_10000FEB8(&qword_100118368, &qword_1000D0AC0);
  v389 = *(v390 - 8);
  __chkstk_darwin(v390);
  v388 = &v305 - v26;
  v387 = sub_10000FEB8(&unk_100118370, &qword_1000D0AC8);
  v386 = *(v387 - 8);
  __chkstk_darwin(v387);
  v385 = &v305 - v27;
  v384 = sub_10000FEB8(&qword_1001169A8, &qword_1000D0AD0);
  v383 = *(v384 - 8);
  __chkstk_darwin(v384);
  v382 = &v305 - v28;
  v375 = sub_10000FEB8(&qword_100116E60, &qword_1000CD230);
  v374 = *(v375 - 8);
  __chkstk_darwin(v375);
  v373 = &v305 - v29;
  v370 = sub_10000FEB8(&qword_1001177C0, &qword_1000CEF60);
  v369 = *(v370 - 8);
  __chkstk_darwin(v370);
  v368 = &v305 - v30;
  v376 = sub_10000FEB8(&qword_100118380, &qword_1000D0AD8);
  __chkstk_darwin(v376);
  v377 = &v305 - v31;
  v380 = sub_10000FEB8(&qword_100118388, &qword_1000D0AE0);
  v379 = *(v380 - 8);
  __chkstk_darwin(v380);
  v378 = &v305 - v32;
  v454 = sub_10000FEB8(&qword_1001177A0, &qword_1000CEF40);
  v372 = *(v454 - 8);
  v33 = __chkstk_darwin(v454);
  v367 = &v305 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v371 = &v305 - v35;
  v456 = sub_10000FEB8(&qword_100116EC0, &unk_1000CC930);
  v381 = *(v456 - 8);
  __chkstk_darwin(v456);
  v455 = &v305 - v36;
  v362 = sub_10000FEB8(&qword_100118390, &qword_1000D0AE8);
  v361 = *(v362 - 8);
  __chkstk_darwin(v362);
  v360 = &v305 - v37;
  v365 = sub_10000FEB8(&unk_100118398, &unk_1000D0AF0);
  v364 = *(v365 - 8);
  __chkstk_darwin(v365);
  v363 = &v305 - v38;
  v39 = sub_10000FEB8(&unk_100117770, &unk_1000CEF10);
  __chkstk_darwin(v39 - 8);
  v490 = &v305 - v40;
  v470 = sub_10000FEB8(&qword_100117728, &unk_1000D0B00);
  v486 = *(v470 - 8);
  __chkstk_darwin(v470);
  v366 = &v305 - v41;
  v359 = sub_10000FEB8(&qword_100117730, &qword_1000CEED0);
  v356 = *(v359 - 1);
  __chkstk_darwin(v359);
  v358 = &v305 - v42;
  v447 = sub_10000FEB8(&qword_1001183A8, &qword_1000D0B10);
  v357 = *(v447 - 8);
  __chkstk_darwin(v447);
  v355 = &v305 - v43;
  v473 = sub_10000FEB8(&qword_1001183B0, &qword_1000D0B18);
  v487 = *(v473 - 8);
  v44 = __chkstk_darwin(v473);
  v466 = &v305 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v471 = &v305 - v46;
  v462 = sub_10000FEB8(&unk_100116EE0, &unk_1000CD2A0);
  v475 = *(v462 - 8);
  __chkstk_darwin(v462);
  v461 = &v305 - v47;
  v464 = sub_10000FEB8(&qword_100117760, &qword_1000CEF00);
  __chkstk_darwin(v464);
  v476 = &v305 - v48;
  v352 = sub_10000FEB8(&qword_1001183B8, &qword_1000D0B20);
  v351 = *(v352 - 1);
  __chkstk_darwin(v352);
  v350 = &v305 - v49;
  v449 = sub_10000FEB8(&qword_1001183C0, &qword_1000D0B28);
  v50 = __chkstk_darwin(v449);
  v446 = &v305 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v482 = (&v305 - v52);
  v459 = sub_10000FEB8(&qword_1001183C8, &qword_1000D0B30);
  v474 = *(v459 - 8);
  __chkstk_darwin(v459);
  v458 = &v305 - v53;
  v460 = sub_10000FEB8(&qword_1001183D0, &qword_1000D0B38);
  __chkstk_darwin(v460);
  v488 = (&v305 - v54);
  v443 = sub_10000FEB8(&qword_1001183D8, &qword_1000D0B40);
  v442 = *(v443 - 1);
  __chkstk_darwin(v443);
  v353 = &v305 - v55;
  v448 = sub_10000FEB8(&qword_1001183E0, &qword_1000D0B48);
  v445 = *(v448 - 1);
  __chkstk_darwin(v448);
  v444 = &v305 - v56;
  v467 = sub_10000FEB8(&qword_1001182E8, &qword_1000D0698);
  v349 = *(v467 - 1);
  __chkstk_darwin(v467);
  v348 = &v305 - v57;
  v347 = sub_10000FEB8(&qword_1001182E0, &qword_1000D0690);
  v346 = *(v347 - 8);
  __chkstk_darwin(v347);
  v343 = &v305 - v58;
  v345 = sub_10000FEB8(&qword_100116E40, &qword_1000CD210);
  v344 = *(v345 - 8);
  __chkstk_darwin(v345);
  v342 = &v305 - v59;
  v457 = sub_10000FEB8(&unk_1001182D0, &unk_1000D0680);
  v341 = *(v457 - 8);
  __chkstk_darwin(v457);
  v340 = &v305 - v60;
  v463 = sub_10000FEB8(&qword_100116E48, &qword_1000CD218);
  v339 = *(v463 - 8);
  __chkstk_darwin(v463);
  v338 = &v305 - v61;
  v484 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  v354 = *(v484 - 8);
  __chkstk_darwin(v484);
  v337 = &v305 - v62;
  v472 = sub_10000FEB8(&qword_1001182B8, &qword_1000D0678);
  v336 = *(v472 - 8);
  __chkstk_darwin(v472);
  v335 = &v305 - v63;
  v334 = sub_10000FEB8(&qword_1001182B0, &qword_1000D0670);
  v333 = *(v334 - 8);
  __chkstk_darwin(v334);
  v332 = &v305 - v64;
  v477 = sub_10000FEB8(&qword_100116988, &qword_1000CC8A8);
  v331 = *(v477 - 8);
  __chkstk_darwin(v477);
  v330 = &v305 - v65;
  v329 = sub_10000FEB8(&unk_1001182A0, &unk_1000D0660);
  v327 = *(v329 - 8);
  __chkstk_darwin(v329);
  v326 = &v305 - v66;
  v451 = sub_10000FEB8(&qword_100118298, &qword_1000D0658);
  v325 = *(v451 - 8);
  __chkstk_darwin(v451);
  v324 = &v305 - v67;
  v481 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v68 = __chkstk_darwin(v481);
  v323 = &v305 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __chkstk_darwin(v68);
  v478 = (&v305 - v71);
  __chkstk_darwin(v70);
  v328 = &v305 - v72;
  v322 = sub_10000FEB8(&qword_100118290, &qword_1000D0650);
  v321 = *(v322 - 8);
  __chkstk_darwin(v322);
  v320 = &v305 - v73;
  v319 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v74 = __chkstk_darwin(v319);
  v318 = &v305 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v317 = &v305 - v76;
  v453 = sub_10000FEB8(&qword_100116F30, &qword_1000CD630);
  v316 = *(v453 - 8);
  __chkstk_darwin(v453);
  v315 = &v305 - v77;
  v452 = sub_10000FEB8(&unk_100118280, &unk_1000D0640);
  v314 = *(v452 - 8);
  __chkstk_darwin(v452);
  v313 = &v305 - v78;
  v450 = sub_10000FEB8(&qword_100118278, &qword_1000D0638);
  v312 = *(v450 - 8);
  __chkstk_darwin(v450);
  v311 = &v305 - v79;
  v310 = sub_10000FEB8(&qword_100118270, &qword_1000D0630);
  v309 = *(v310 - 8);
  __chkstk_darwin(v310);
  v308 = &v305 - v80;
  v307 = sub_10000FEB8(&qword_100118268, &qword_1000D0628);
  v306 = *(v307 - 8);
  __chkstk_darwin(v307);
  v305 = &v305 - v81;
  v485 = sub_10000FEB8(&qword_100118260, &qword_1000D0620);
  v82 = *(v485 - 8);
  __chkstk_darwin(v485);
  v84 = &v305 - v83;
  v479 = sub_10000FEB8(&qword_1001178A8, &unk_1000CF2C0);
  v85 = *(v479 - 8);
  __chkstk_darwin(v479);
  v87 = &v305 - v86;
  v88 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v91 = &v305 - v90;
  if (_swiftEmptyArrayStorage >> 62 && sub_1000C72F4())
  {
    v92 = sub_1000727E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v92 = &_swiftEmptySetSingleton;
  }

  v2[4] = v92;
  v468 = v2 + 4;
  v2[6] = 0;
  swift_unknownObjectWeakInit();
  v2[7] = swift_getKeyPath();
  *(v2 + 64) = 0;
  v93 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isDelegateInitialized;
  LOBYTE(v492) = 0;
  sub_1000C6054();
  v489 = *(v89 + 32);
  v489(v2 + v93, v91, v88);
  v94 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__executionMode;
  LOBYTE(v492) = 0;
  sub_1000C6054();
  (*(v85 + 32))(v2 + v94, v87, v479);
  v95 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingType;
  LOBYTE(v492) = 8;
  sub_1000C6054();
  (*(v82 + 32))(v2 + v95, v84, v485);
  v96 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingStage;
  LOBYTE(v492) = 0;
  v97 = v305;
  sub_1000C6054();
  (*(v306 + 32))(v2 + v96, v97, v307);
  v98 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__addedAddresses;
  v492 = _swiftEmptyArrayStorage;
  sub_10000FEB8(&qword_100117FC8, &unk_1000D0028);
  v99 = v308;
  sub_1000C6054();
  (*(v309 + 32))(v2 + v98, v99, v310);
  v100 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__createOrLoadStage;
  LOBYTE(v492) = 0;
  v101 = v311;
  sub_1000C6054();
  (*(v312 + 32))(v2 + v100, v101, v450);
  v102 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__addingAddressesStage;
  LOBYTE(v492) = 0;
  v103 = v313;
  sub_1000C6054();
  (*(v314 + 32))(v2 + v102, v103, v452);
  v104 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__savingStage;
  LOBYTE(v492) = 2;
  v105 = v315;
  sub_1000C6054();
  (*(v316 + 32))(v2 + v104, v105, v453);
  v106 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__alertNowShowing;
  v107 = type metadata accessor for AlertViewModel(0);
  v108 = v317;
  (*(*(v107 - 8) + 56))(v317, 1, 1, v107);
  sub_100017574(v108, v318, &qword_100116C80, &unk_1000CE870);
  v109 = v320;
  sub_1000C6054();
  sub_100010F24(v108, &qword_100116C80, &unk_1000CE870);
  (*(v321 + 32))(v2 + v106, v109, v322);
  v110 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isShowingAlert;
  LOBYTE(v492) = 0;
  v483 = v91;
  sub_1000C6054();
  v480 = v88;
  v111 = v489;
  v489(v2 + v110, v91, v88);
  v112 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isFolderShare;
  LOBYTE(v492) = 0;
  sub_1000C6054();
  v111(v2 + v112, v91, v88);
  v469 = (v89 + 32);
  v113 = v111;
  v319 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL;
  v321 = sub_1000C5D84();
  v114 = *(v321 - 8);
  v320 = *(v114 + 56);
  v322 = v114 + 56;
  v115 = v328;
  (v320)(v328, 1, 1, v321);
  sub_10000FEB8(&qword_1001183E8, &qword_1000D0B80);
  v116 = swift_allocObject();
  v117 = (v116 + *(*v116 + 104));
  *v117 = 0;
  v117[1] = 0;
  v118 = v478;
  sub_100017574(v115, v478, &qword_100116260, &qword_1000CD940);
  swift_beginAccess();
  sub_100017574(v118, v323, &qword_100116260, &qword_1000CD940);
  sub_1000C6054();
  sub_100010F24(v118, &qword_100116260, &qword_1000CD940);
  swift_endAccess();
  v119 = v115;
  sub_100010F24(v115, &qword_100116260, &qword_1000CD940);
  *(v2 + v319) = v116;
  v120 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isFolderSubshare;
  LOBYTE(v492) = 0;
  v121 = v483;
  sub_1000C6054();
  v122 = v121;
  v123 = v480;
  v113(v2 + v120, v122, v480);
  v124 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderTitle;
  sub_10000FEB8(&qword_1001183F0, &qword_1000D0B88);
  v125 = swift_allocObject();
  v126 = (v125 + *(*v125 + 104));
  *v126 = 0;
  v126[1] = 0;
  swift_beginAccess();
  v496 = 0;
  v497 = 0;
  v127 = sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
  sub_1000C6054();
  swift_endAccess();
  *(v2 + v124) = v125;
  v128 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckFolderSubitemName;
  v129 = swift_allocObject();
  v130 = (v129 + *(*v129 + 104));
  *v130 = 0;
  v130[1] = 0;
  swift_beginAccess();
  v496 = 0;
  v497 = 0;
  v323 = v127;
  sub_1000C6054();
  swift_endAccess();
  *(v2 + v128) = v129;
  v131 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__folderSharingStage;
  LOBYTE(v492) = 4;
  sub_10000FEB8(&qword_100117FF0, &qword_1000D0038);
  v132 = v324;
  sub_1000C6054();
  (*(v325 + 32))(v2 + v131, v132, v451);
  v133 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__shareSaveStatus;
  LOBYTE(v492) = 0;
  v134 = v326;
  sub_1000C6054();
  (*(v327 + 32))(v2 + v133, v134, v329);
  v135 = (v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_lastServicesData);
  *v135 = 0;
  v135[1] = 0;
  v136 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingOptionsAllowedFromSPI;
  v492 = 15;
  v137 = v330;
  sub_1000C6054();
  (*(v331 + 32))(v2 + v136, v137, v477);
  v138 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__yourNameAndEmail;
  v492 = 0;
  v493 = 0xE000000000000000;
  v494 = 0;
  v495 = 0xE000000000000000;
  sub_10000FEB8(&qword_100118010, &unk_1000D0058);
  v139 = v332;
  sub_1000C6054();
  (*(v333 + 32))(v2 + v138, v139, v334);
  v140 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharedFileOrFolderURL;
  (v320)(v119, 1, 1, v321);
  sub_100017574(v119, v478, &qword_100116260, &qword_1000CD940);
  v141 = v335;
  sub_1000C6054();
  sub_100010F24(v119, &qword_100116260, &qword_1000CD940);
  (*(v336 + 32))(v2 + v140, v141, v472);
  v142 = v2;
  *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_shouldStopAccessingSharedFileOrFolderURL) = 0;
  v143 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__itemUTI;
  v492 = 0;
  v493 = 0;
  v144 = v337;
  sub_1000C6054();
  v481 = *(v354 + 32);
  v481(v2 + v143, v144, v484);
  v145 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isShareRoot;
  LOBYTE(v492) = 1;
  v146 = v483;
  sub_1000C6054();
  v489(&v142[v145], v146, v123);
  v147 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__thumbnail;
  v492 = [objc_allocWithZone(UIImage) init];
  v354 = sub_100010778(0, &qword_100118020, UIImage_ptr);
  v148 = v338;
  sub_1000C6054();
  (*(v339 + 32))(&v142[v147], v148, v463);
  v149 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__thumbnailFromCloudKitSPI;
  v492 = 0;
  sub_10000FEB8(&unk_100118030, &qword_1000D0088);
  v150 = v340;
  sub_1000C6054();
  v151 = *(v341 + 32);
  v152 = v457;
  v151(&v142[v149], v150, v457);
  v153 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__thumbnailFromDocumentSPI;
  v492 = 0;
  sub_1000C6054();
  v151(&v142[v153], v150, v152);
  v154 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__itemTitle;
  v492 = 0;
  v493 = 0xE000000000000000;
  v155 = v342;
  sub_1000C6054();
  v156 = *(v344 + 4);
  v157 = &v142[v154];
  v158 = v142;
  v159 = v345;
  v156(v157, v155, v345);
  v160 = v156;
  v161 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sourceAppBundleID;
  v492 = 0;
  v493 = 0;
  sub_1000C6054();
  v481(&v158[v161], v144, v484);
  v162 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sectionTitleForAuxiliaryToggles;
  v492 = 0;
  v493 = 0xE000000000000000;
  sub_1000C6054();
  v160(&v158[v162], v155, v159);
  v163 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__primaryCheckboxTitle;
  v492 = 0;
  v493 = 0xE000000000000000;
  sub_1000C6054();
  v160(&v158[v163], v155, v159);
  v478 = v160;
  v164 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__secondaryCheckboxTitle;
  v492 = 0;
  v493 = 0xE000000000000000;
  sub_1000C6054();
  v160(&v158[v164], v155, v159);
  v165 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__primaryCheckboxState;
  LOBYTE(v492) = 0;
  v166 = v483;
  sub_1000C6054();
  v167 = v480;
  v168 = v489;
  v489(&v158[v165], v166, v480);
  v169 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__secondaryCheckboxState;
  LOBYTE(v492) = 0;
  sub_1000C6054();
  v168(&v158[v169], v166, v167);
  v170 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckContainerIdentifier;
  v492 = [objc_allocWithZone(CKContainerID) init];
  sub_100010778(0, &qword_100118048, CKContainerID_ptr);
  v171 = v343;
  sub_1000C6054();
  v346[4](&v158[v170], v171, v347);
  v172 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__helpAnchor;
  v492 = 0;
  v493 = 0xE000000000000000;
  sub_1000C6054();
  v478(&v158[v172], v155, v159);
  v173 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__participantDetails;
  v492 = sub_100078D40(_swiftEmptyArrayStorage, &qword_100118628, &qword_1000D0F08);
  sub_10000FEB8(&unk_100118058, &qword_1000D0090);
  v174 = v348;
  sub_1000C6054();
  (*(v349 + 32))(&v158[v173], v174, v467);
  v175 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_networkMonitor;
  type metadata accessor for NetworkMonitor(0);
  swift_allocObject();
  *&v158[v175] = sub_10008F180(0);
  *&v158[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_ckMetadata] = 0;
  v176 = v491;
  *(v158 + 2) = v491;
  *(v158 + 3) = *(v176 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_ckShareModel);
  v177 = v158;
  swift_weakAssign();
  v349 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharedFileOrFolderURL;
  swift_beginAccess();

  v178 = v458;
  sub_1000C6064();
  swift_endAccess();
  v348 = sub_10001E490(&qword_1001183F8, &qword_1001183C8, &qword_1000D0B30, &protocol conformance descriptor for Published<A>.Publisher);
  v347 = sub_1000106C0();
  v179 = v459;
  sub_1000C6114();
  v180 = *(v474 + 8);
  v474 += 8;
  v346 = v180;
  (v180)(v178, v179);
  swift_beginAccess();
  v181 = v350;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100118410, &qword_1001183B8, &qword_1000D0B20, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000105A8();
  v182 = v352;
  sub_1000C6114();
  v183 = *(v351 + 8);
  v183(v181, v182);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6114();
  v183(v181, v182);
  swift_beginAccess();
  v184 = v461;
  sub_1000C6064();
  swift_endAccess();
  v489 = &protocol conformance descriptor for Published<A>.Publisher;
  v345 = sub_10001E490(&unk_100116F20, &unk_100116EE0, &unk_1000CD2A0, &protocol conformance descriptor for Published<A>.Publisher);
  v185 = v462;
  sub_1000C6114();
  v186 = *(v475 + 8);
  v475 += 8;
  v344 = v186;
  v186(v184, v185);
  v350 = sub_10001E490(&qword_100118418, &qword_1001183D0, &qword_1000D0B38, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_10001E490(&unk_100118420, &qword_1001183C0, &qword_1000D0B28, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v469 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  v351 = sub_10001E490(&qword_100117890, &qword_100117760, &qword_1000CEF00, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v187 = v353;
  sub_1000C5FC4();
  v188 = swift_allocObject();
  *(v188 + 16) = sub_100079A10;
  *(v188 + 24) = v177;
  v352 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  sub_10001E490(&qword_100118430, &qword_1001183D8, &qword_1000D0B40, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);

  v189 = v444;
  v190 = v443;
  sub_1000C60E4();

  (*(v442 + 8))(v187, v190);
  v191 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingType;
  swift_beginAccess();
  v192 = v471;
  sub_1000C6064();
  swift_endAccess();
  v449 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10001E490(&unk_100118438, &qword_1001183E0, &qword_1000D0B48, &protocol conformance descriptor for Publishers.Map<A, B>);
  v193 = v448;
  sub_1000C6134();
  (*(v445 + 8))(v189, v193);
  v194 = v487;
  v195 = v473;
  (*(v487 + 16))(v466, v192, v473);
  v446 = v191;
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v196 = *(v194 + 8);
  v487 = v194 + 8;
  v448 = v196;
  (v196)(v192, v195);
  v442 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__executionMode;
  swift_beginAccess();
  v197 = v366;
  sub_1000C6064();
  swift_endAccess();
  v445 = sub_10001E490(&qword_1001178B0, &qword_100117728, &unk_1000D0B00, &protocol conformance descriptor for Published<A>.Publisher);
  v444 = sub_100048D84();
  v198 = v358;
  v199 = v470;
  sub_1000C6114();
  v200 = *(v486 + 8);
  v486 += 8;
  v443 = v200;
  (v200)(v197, v199);
  v478 = objc_opt_self();
  v201 = [v478 mainRunLoop];
  v492 = v201;
  v483 = sub_1000C71A4();
  v202 = *(v483 - 8);
  v482 = *(v202 + 56);
  v484 = v202 + 56;
  v203 = v490;
  v482(v490, 1, 1, v483);
  v466 = sub_100010778(0, &qword_100116F80, NSRunLoop_ptr);
  sub_10001E490(&qword_1001178C0, &qword_100117730, &qword_1000CEED0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v481 = sub_10003515C(&qword_100116F90, &qword_100116F80, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  v204 = v355;
  v205 = v359;
  sub_1000C6104();
  sub_100010F24(v203, &unk_100117770, &unk_1000CEF10);

  (*(v356 + 8))(v198, v205);
  v467 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001E490(&qword_100118448, &qword_1001183A8, &qword_1000D0B10, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v206 = v447;
  sub_1000C6124();

  (*(v357 + 8))(v204, v206);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v207 = v470;
  sub_1000C6114();
  (v443)(v197, v207);
  swift_beginAccess();

  v447 = sub_10000FEB8(&unk_100118450, &qword_1000CC940);
  sub_1000C6064();
  swift_endAccess();

  v357 = sub_10001E490(&qword_100116F60, &qword_100116EC0, &unk_1000CC930, v489);
  v208 = v360;
  sub_1000C5F84();
  v209 = swift_allocObject();
  swift_weakInit();
  v210 = swift_allocObject();
  *(v210 + 16) = sub_100079A98;
  *(v210 + 24) = v209;
  v359 = &protocol conformance descriptor for Publishers.CombineLatest<A, B>;
  sub_10001E490(&unk_100118460, &qword_100118390, &qword_1000D0AE8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v211 = v363;
  v212 = v362;
  sub_1000C60E4();

  (*(v361 + 8))(v208, v212);
  swift_beginAccess();

  v213 = sub_10000FEB8(&qword_100116990, &unk_1000CF2A0);
  v214 = v371;
  v362 = v213;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100118470, &unk_100118398, &unk_1000D0AF0, v449);
  v215 = v365;
  sub_1000C6134();
  (*(v364 + 8))(v211, v215);
  v216 = v372;
  v217 = v454;
  (*(v372 + 16))(v367, v214, v454);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();

  v372 = *(v216 + 8);
  (v372)(v214, v217);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v218 = v377;
  v219 = v470;
  sub_1000C6114();
  (v443)(v197, v219);
  swift_beginAccess();
  v220 = v471;
  sub_1000C6064();
  swift_endAccess();
  v221 = v489;
  v486 = sub_10001E490(&qword_100118478, &qword_1001183B0, &qword_1000D0B18, v489);
  sub_100079AD8();
  v222 = v473;
  sub_1000C6114();
  (v448)(v220, v222);
  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  swift_beginAccess();
  sub_10000FEB8(&unk_100117800, &unk_1000D0B90);
  v223 = v368;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100118490, &qword_1001177C0, &qword_1000CEF60, v221);
  sub_100048C1C();
  v224 = v370;
  sub_1000C6114();
  (*(v369 + 8))(v223, v224);
  swift_beginAccess();
  sub_10000FEB8(&unk_1001184A0, &qword_1000CC8A0);
  v225 = v373;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100116FD0, &qword_100116E60, &qword_1000CD230, v221);
  sub_100035290();
  v226 = v375;
  sub_1000C6114();
  (*(v374 + 8))(v225, v226);
  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  sub_10001E490(&unk_100117830, &qword_1001177A0, &qword_1000CEF40, v221);
  sub_100048C70();
  v227 = v454;
  sub_1000C6114();
  (v372)(v214, v227);
  v228 = [v478 mainRunLoop];
  v492 = v228;
  v229 = v490;
  v482(v490, 1, 1, v483);
  sub_10001E490(&qword_1001184C8, &qword_100118380, &qword_1000D0AD8, &protocol conformance descriptor for Publishers.CSCombineLatest6<A, B, C, D, E, F>);
  v230 = v378;
  sub_1000C6104();
  sub_100010F24(v229, &unk_100117770, &unk_1000CEF10);

  sub_100010F24(v218, &qword_100118380, &qword_1000D0AD8);
  v231 = swift_allocObject();
  swift_weakInit();
  v232 = swift_allocObject();
  v233 = v491;
  *(v232 + 16) = v231;
  *(v232 + 24) = v233;
  v234 = swift_allocObject();
  *(v234 + 16) = sub_100079B6C;
  *(v234 + 24) = v232;
  v235 = v467;
  sub_10001E490(&unk_1001184D0, &qword_100118388, &qword_1000D0AE0, v467);

  v236 = v380;
  sub_1000C6124();

  (*(v379 + 8))(v230, v236);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();

  v237 = v455;
  sub_1000C6064();
  swift_endAccess();

  v238 = [v478 mainRunLoop];
  v492 = v238;
  v239 = v490;
  v482(v490, 1, 1, v483);
  v240 = v382;
  v241 = v456;
  sub_1000C6104();
  sub_100010F24(v239, &unk_100117770, &unk_1000CEF10);

  (*(v381 + 8))(v237, v241);
  swift_allocObject();
  swift_weakInit();
  sub_10001E490(&qword_1001169B0, &qword_1001169A8, &qword_1000D0AD0, v235);
  v242 = v384;
  sub_1000C6124();

  (*(v383 + 8))(v240, v242);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v243 = v471;
  sub_1000C6064();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v244 = v473;
  sub_1000C6124();

  (v448)(v243, v244);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v245 = v385;
  sub_1000C6064();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v246 = v489;
  sub_10001E490(&qword_1001184E0, &unk_100118370, &qword_1000D0AC8, v489);
  v247 = v387;
  sub_1000C6124();

  (*(v386 + 8))(v245, v247);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v248 = v388;
  sub_1000C6064();
  swift_endAccess();
  v249 = swift_allocObject();
  swift_weakInit();
  v250 = swift_allocObject();
  *(v250 + 16) = sub_100079BCC;
  *(v250 + 24) = v249;
  sub_10001E490(&qword_1001184E8, &qword_100118368, &qword_1000D0AC0, v246);
  v251 = v390;
  sub_1000C6124();

  (*(v389 + 8))(v248, v251);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v252 = v391;
  sub_1000C6064();
  swift_endAccess();
  v253 = swift_allocObject();
  swift_weakInit();
  v254 = swift_allocObject();
  *(v254 + 16) = sub_100079C00;
  *(v254 + 24) = v253;
  sub_10001E490(&unk_1001184F0, &qword_100118360, &qword_1000D0AB8, v246);
  v255 = v393;
  sub_1000C6124();

  (*(v392 + 8))(v252, v255);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v256 = v394;
  sub_1000C6064();
  swift_endAccess();
  v257 = swift_allocObject();
  swift_weakInit();
  v258 = swift_allocObject();
  *(v258 + 16) = sub_100079C34;
  *(v258 + 24) = v257;
  sub_10001E490(&qword_100116F38, &qword_100116EC8, &qword_1000D0AB0, v246);
  v259 = v396;
  sub_1000C6124();

  (*(v395 + 8))(v256, v259);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v260 = v458;
  sub_1000C6064();
  swift_endAccess();
  v261 = v459;
  sub_1000C6114();
  (v346)(v260, v261);
  swift_beginAccess();
  v262 = v461;
  sub_1000C6064();
  swift_endAccess();
  v263 = v462;
  sub_1000C6114();
  v344(v262, v263);
  swift_beginAccess();
  v264 = v398;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100118500, &qword_100118338, &qword_1000D0A90, v246);
  sub_100079C68();
  v265 = v402;
  sub_1000C6114();
  v266 = *(v400 + 8);
  v266(v264, v265);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6114();
  v266(v264, v265);
  sub_10001E490(&qword_100118518, &qword_100118340, &qword_1000D0A98, v469);
  v267 = v403;
  sub_1000C5FC4();
  v268 = swift_allocObject();
  swift_weakInit();
  v269 = swift_allocObject();
  *(v269 + 16) = v268;
  *(v269 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v269 + 40) = v414;
  v270 = swift_allocObject();
  *(v270 + 16) = &unk_1000D0BA8;
  *(v270 + 24) = v269;
  v271 = swift_allocObject();
  *(v271 + 16) = &unk_1000D0BB8;
  *(v271 + 24) = v270;

  sub_1000C5FF4();
  sub_10000FEB8(&qword_100118520, &qword_1000D0BC0);
  sub_10001E490(&qword_100118528, &qword_100118348, &qword_1000D0AA0, v352);
  sub_10001E490(&qword_100118530, &qword_100118520, &qword_1000D0BC0, &protocol conformance descriptor for Future<A, B>);
  v272 = v406;
  v273 = v405;
  v274 = v267;
  sub_1000C60F4();

  sub_10001E490(&qword_100118538, &qword_100118330, &qword_1000D0A88, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v275 = v409;
  v276 = sub_1000C60C4();

  (*(v408 + 8))(v272, v275);
  (*(v404 + 8))(v274, v273);
  v492 = v276;
  v277 = [v478 mainRunLoop];
  v496 = v277;
  v278 = v490;
  v482(v490, 1, 1, v483);
  sub_10000FEB8(&qword_100118540, &qword_1000D0BC8);
  sub_10001E490(&qword_100118548, &qword_100118540, &qword_1000D0BC8, &protocol conformance descriptor for AnyPublisher<A, B>);
  v279 = v407;
  sub_1000C6104();
  sub_100010F24(v278, &unk_100117770, &unk_1000CEF10);

  swift_beginAccess();
  v280 = v413;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100118550, &unk_100118350, &qword_1000D0AA8, v467);
  v281 = v411;
  sub_1000C6134();
  (*(v410 + 8))(v279, v281);
  v282 = v415;
  v283 = v416;
  (*(v415 + 16))(v412, v280, v416);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  (*(v282 + 8))(v280, v283);
  swift_beginAccess();
  v284 = v432;
  sub_1000C6064();
  swift_endAccess();
  v285 = v489;
  sub_10001E490(&unk_1001178E0, &qword_100116998, &unk_1000CC910, v489);
  sub_10001E3FC();
  v286 = v465;
  sub_1000C6114();
  v287 = v430;
  v488 = *(v430 + 8);
  v488(v284, v286);
  swift_beginAccess();

  sub_10000FEB8(&qword_100118568, &unk_1000D0BD0);
  v288 = v425;
  sub_1000C6064();
  swift_endAccess();

  sub_10001E490(&qword_100118570, &qword_100118308, &qword_1000D0A60, v285);
  sub_100079FFC();
  v289 = v428;
  sub_1000C6114();
  (*(v427 + 8))(v288, v289);
  v290 = v469;
  sub_10001E490(&qword_1001178F0, &qword_100117710, &qword_1000CEEB0, v469);
  sub_10001E490(&qword_1001185A0, &qword_100118310, &qword_1000D0A68, v290);
  v291 = v418;
  sub_1000C5F84();
  sub_10001E490(&qword_1001185A8, &qword_100118318, &qword_1000D0A70, v359);
  v292 = v421;
  v293 = v422;
  sub_1000C60E4();
  (*(v420 + 8))(v291, v293);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_1001185B0, &unk_100118320, &unk_1000D0A78, v449);
  v294 = v424;
  sub_1000C6134();
  (*(v423 + 8))(v292, v294);
  v295 = v465;
  (*(v287 + 16))(v431, v284, v465);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v488(v284, v295);
  swift_beginAccess();

  sub_10000FEB8(&qword_1001185B8, &qword_1000D0BE0);
  v296 = v433;
  sub_1000C6064();
  swift_endAccess();

  sub_10001E490(&qword_1001185C0, &qword_1001182F0, &qword_1000D0A48, v489);
  sub_10007A0AC();
  v297 = v436;
  v298 = v435;
  sub_1000C6114();
  (*(v434 + 8))(v296, v298);
  v299 = [v478 mainRunLoop];
  v492 = v299;
  v300 = v490;
  v482(v490, 1, 1, v483);
  sub_10001E490(&qword_1001185D0, &qword_1001182F8, &qword_1000D0A50, v469);
  v301 = v439;
  v302 = v438;
  sub_1000C6104();
  sub_100010F24(v300, &unk_100117770, &unk_1000CEF10);

  (*(v437 + 8))(v297, v302);
  swift_allocObject();
  swift_weakInit();

  sub_10001E490(&qword_1001185D8, &qword_100118300, &qword_1000D0A58, v467);
  v303 = v441;
  sub_1000C6124();

  (*(v440 + 8))(v301, v303);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  return v177;
}

void *sub_1000782B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000FEB8(&unk_100118640, &qword_1000D0F70);
    v3 = sub_1000C7224();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1000C6D84();
      sub_1000C7464();
      v27 = v7;
      sub_1000C6DD4();
      v8 = sub_1000C7494();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1000C6D84();
        v18 = v17;
        if (v16 == sub_1000C6D84() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1000C73A4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t type metadata accessor for SharingModel(uint64_t a1)
{
  result = qword_100117F90;
  if (!qword_100117F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100078500(uint64_t a1)
{
  sub_10001D1A8(319, &qword_100117460, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_10001D1A8(319, &qword_100117FA8, &type metadata for ExecutionMode);
    if (v2 <= 0x3F)
    {
      sub_10001D1A8(319, &qword_100117FB0, &type metadata for SharingType);
      if (v3 <= 0x3F)
      {
        sub_10001D1A8(319, &qword_100117FB8, &type metadata for SharingStage);
        if (v4 <= 0x3F)
        {
          sub_10002F0A0(319, &qword_100117FC0, &qword_100117FC8, &unk_1000D0028);
          if (v5 <= 0x3F)
          {
            sub_10001D1A8(319, &qword_100117FD0, &type metadata for CreateOrLoadStage);
            if (v6 <= 0x3F)
            {
              sub_10001D1A8(319, &qword_100117FD8, &type metadata for AddAddressesStage);
              if (v7 <= 0x3F)
              {
                sub_10001D1A8(319, &qword_100117FE0, &type metadata for SaveStage);
                if (v8 <= 0x3F)
                {
                  sub_10002F0A0(319, &unk_100117450, &qword_100116C80, &unk_1000CE870);
                  if (v9 <= 0x3F)
                  {
                    sub_10002F0A0(319, &qword_100117FE8, &qword_100117FF0, &qword_1000D0038);
                    if (v10 <= 0x3F)
                    {
                      sub_10001D1A8(319, &qword_100117FF8, &type metadata for ShareSaveStatus);
                      if (v11 <= 0x3F)
                      {
                        sub_10001D1A8(319, &qword_100118000, &type metadata for SharingOptions);
                        if (v12 <= 0x3F)
                        {
                          sub_10002F0A0(319, &qword_100118008, &qword_100118010, &unk_1000D0058);
                          if (v13 <= 0x3F)
                          {
                            sub_10002F0A0(319, &qword_100118018, &qword_100116260, &qword_1000CD940);
                            if (v14 <= 0x3F)
                            {
                              sub_10002F0A0(319, &qword_1001179F8, &qword_100116310, &qword_1000CBBC0);
                              if (v15 <= 0x3F)
                              {
                                sub_100078C1C(319, qword_100116C90, &qword_100118020, UIImage_ptr);
                                if (v16 <= 0x3F)
                                {
                                  sub_10002F0A0(319, &qword_100118028, &unk_100118030, &qword_1000D0088);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_10001D1A8(319, &qword_100116C88, &type metadata for String);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_100078C1C(319, &qword_100118040, &qword_100118048, CKContainerID_ptr);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_10002F0A0(319, &qword_100118050, &unk_100118058, &qword_1000D0090);
                                        if (v20 <= 0x3F)
                                        {
                                          swift_updateClassMetadata2();
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100078C1C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_100010778(255, a3, a4);
    v5 = sub_1000C60B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100078D40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000FEB8(a2, a3);
    v5 = sub_1000C7324();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100071DEC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100078E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000FEB8(&unk_1001170A0, &qword_1000CDD38);
    v3 = sub_1000C7324();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_100071E64(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100078F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000FEB8(&unk_100118650, &qword_1000D0F90);
  v3 = sub_1000C7324();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_100071EEC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_100071EEC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100079048()
{
  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CFF90;
  *(inited + 32) = 7;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v69._countAndFlagsBits = 0x80000001000DAEC0;
  v82._object = 0x80000001000DAE60;
  v82._countAndFlagsBits = 0xD00000000000005DLL;
  v95.value._countAndFlagsBits = 0;
  v95.value._object = 0;
  v3.super.isa = v2;
  v108._countAndFlagsBits = 0;
  v108._object = 0xE000000000000000;
  v4 = sub_1000C5B74(v82, v95, v3, v108, 0xD00000000000002BLL, v69);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 8;
  v7 = [v1 mainBundle];
  v70._countAndFlagsBits = 0x80000001000DAF50;
  v83._countAndFlagsBits = 0xD00000000000005FLL;
  v83._object = 0x80000001000DAEF0;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v8.super.isa = v7;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  v9 = sub_1000C5B74(v83, v96, v8, v109, 0xD000000000000033, v70);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 9;
  v12 = [v1 mainBundle];
  v71._countAndFlagsBits = 0x80000001000DAFF0;
  v84._object = 0x80000001000DAF90;
  v84._countAndFlagsBits = 0xD00000000000005DLL;
  v97.value._countAndFlagsBits = 0;
  v97.value._object = 0;
  v13.super.isa = v12;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  v14 = sub_1000C5B74(v84, v97, v13, v110, 0xD00000000000002BLL, v71);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 10;
  v17 = [v1 mainBundle];
  v72._countAndFlagsBits = 0x80000001000DB090;
  v85._countAndFlagsBits = 0xD000000000000062;
  v85._object = 0x80000001000DB020;
  v98.value._countAndFlagsBits = 0;
  v98.value._object = 0;
  v18.super.isa = v17;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v19 = sub_1000C5B74(v85, v98, v18, v111, 0xD000000000000030, v72);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 11;
  v22 = [v1 mainBundle];
  v73._countAndFlagsBits = 0x80000001000DB130;
  v86._countAndFlagsBits = 0xD00000000000005ELL;
  v86._object = 0x80000001000DB0D0;
  v99.value._countAndFlagsBits = 0;
  v99.value._object = 0;
  v23.super.isa = v22;
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  v24 = sub_1000C5B74(v86, v99, v23, v112, 0xD00000000000002CLL, v73);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  *(inited + 152) = 0;
  v27 = [v1 mainBundle];
  v74._countAndFlagsBits = 0x80000001000DB160;
  v87._countAndFlagsBits = 0xD00000000000005FLL;
  v87._object = 0x80000001000DAEF0;
  v100.value._countAndFlagsBits = 0;
  v100.value._object = 0;
  v28.super.isa = v27;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  v29 = sub_1000C5B74(v87, v100, v28, v113, 0xD00000000000002DLL, v74);
  v31 = v30;

  *(inited + 160) = v29;
  *(inited + 168) = v31;
  *(inited + 176) = 1;
  v32 = [v1 mainBundle];
  v75._countAndFlagsBits = 0x80000001000DB200;
  v88._countAndFlagsBits = 0xD000000000000061;
  v88._object = 0x80000001000DB190;
  v101.value._countAndFlagsBits = 0;
  v101.value._object = 0;
  v33.super.isa = v32;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v34 = sub_1000C5B74(v88, v101, v33, v114, 0xD00000000000002FLL, v75);
  v36 = v35;

  *(inited + 184) = v34;
  *(inited + 192) = v36;
  *(inited + 200) = 2;
  v37 = [v1 mainBundle];
  v76._countAndFlagsBits = 0x80000001000DB2A0;
  v89._countAndFlagsBits = 0xD000000000000064;
  v89._object = 0x80000001000DB230;
  v102.value._countAndFlagsBits = 0;
  v102.value._object = 0;
  v38.super.isa = v37;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  v39 = sub_1000C5B74(v89, v102, v38, v115, 0xD000000000000032, v76);
  v41 = v40;

  *(inited + 208) = v39;
  *(inited + 216) = v41;
  *(inited + 224) = 3;
  v42 = [v1 mainBundle];
  v77._countAndFlagsBits = 0x80000001000DB350;
  v90._countAndFlagsBits = 0xD000000000000065;
  v90._object = 0x80000001000DB2E0;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v43.super.isa = v42;
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  v44 = sub_1000C5B74(v90, v103, v43, v116, 0xD000000000000033, v77);
  v46 = v45;

  *(inited + 232) = v44;
  *(inited + 240) = v46;
  *(inited + 248) = 4;
  v47 = [v1 mainBundle];
  v78._countAndFlagsBits = 0x80000001000DB3F0;
  v91._countAndFlagsBits = 0xD00000000000005ELL;
  v91._object = 0x80000001000DB390;
  v104.value._countAndFlagsBits = 0;
  v104.value._object = 0;
  v48.super.isa = v47;
  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  v49 = sub_1000C5B74(v91, v104, v48, v117, 0xD00000000000002DLL, v78);
  v51 = v50;

  *(inited + 256) = v49;
  *(inited + 264) = v51;
  *(inited + 272) = 5;
  v52 = [v1 mainBundle];
  v79._countAndFlagsBits = 0x80000001000DB480;
  v92._countAndFlagsBits = 0xD00000000000005ELL;
  v92._object = 0x80000001000DB420;
  v105.value._countAndFlagsBits = 0;
  v105.value._object = 0;
  v53.super.isa = v52;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  v54 = sub_1000C5B74(v92, v105, v53, v118, 0xD00000000000002CLL, v79);
  v56 = v55;

  *(inited + 280) = v54;
  *(inited + 288) = v56;
  *(inited + 296) = 6;
  v57 = [v1 mainBundle];
  v93._countAndFlagsBits = 0xD00000000000005CLL;
  v80._countAndFlagsBits = 0x80000001000DB510;
  v93._object = 0x80000001000DB4B0;
  v106.value._countAndFlagsBits = 0;
  v106.value._object = 0;
  v58.super.isa = v57;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v59 = sub_1000C5B74(v93, v106, v58, v119, 0xD00000000000002ALL, v80);
  v61 = v60;

  *(inited + 304) = v59;
  *(inited + 312) = v61;
  *(inited + 320) = 13;
  v62 = [v1 mainBundle];
  v81._countAndFlagsBits = 0x80000001000DB5A0;
  v94._object = 0x80000001000DB540;
  v94._countAndFlagsBits = 0xD00000000000005DLL;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v63.super.isa = v62;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v64 = sub_1000C5B74(v94, v107, v63, v120, 0xD000000000000032, v81);
  v66 = v65;

  *(inited + 328) = v64;
  *(inited + 336) = v66;
  v67 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  return v67;
}

uint64_t sub_10007982C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011080;

  return sub_100012B38(a1, v4);
}

uint64_t sub_1000798F4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1000799C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100079A18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100079A60()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100079AA0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1));
  *a2 = result;
  return result;
}

unint64_t sub_100079AD8()
{
  result = qword_100118480;
  if (!qword_100118480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118480);
  }

  return result;
}

uint64_t sub_100079B2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100079C68()
{
  result = qword_100118508;
  if (!qword_100118508)
  {
    sub_100010624(&unk_100118030, &qword_1000D0088);
    sub_10003515C(&qword_100116F70, &qword_100118020, UIImage_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118508);
  }

  return result;
}

uint64_t sub_100079D18()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100079D50(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 2);
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_100079E30;

  return sub_10005F358(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_100079E30(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100079F2C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100017CBC;

  return sub_10006001C(a1, a2, v6);
}

unint64_t sub_100079FFC()
{
  result = qword_100118578;
  if (!qword_100118578)
  {
    sub_100010624(&qword_100118580, &qword_1000D1B40);
    sub_10003515C(&qword_100118588, &unk_100118590, CKContainerSetupInfo_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118578);
  }

  return result;
}

unint64_t sub_10007A0AC()
{
  result = qword_1001185C8;
  if (!qword_1001185C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001185C8);
  }

  return result;
}

uint64_t sub_10007A110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011080;

  return sub_100060614(a1, v4, v5, v6);
}

uint64_t sub_10007A1C4()
{
  v1 = sub_10000FEB8(&unk_100118600, &qword_1000D0C10);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  v6 = sub_1000C5D84();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007A310(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10000FEB8(&unk_100118600, &qword_1000D0C10) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100070E44(a1, a2, v6, v7, v8);
}

uint64_t sub_10007A3A0()
{
  v1 = sub_10000FEB8(&unk_100118600, &qword_1000D0C10);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_1000C5D84();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10007A50C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000FEB8(&unk_100118600, &qword_1000D0C10) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100017CBC;

  return sub_100071054(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_10007A668(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 176) = a3;
  *(v4 + 184) = a4;
  *(v4 + 168) = a2;
  *(v4 + 160) = a1;
  v5 = sub_1000C5F74();
  *(v4 + 192) = v5;
  *(v4 + 200) = *(v5 - 8);
  *(v4 + 208) = swift_task_alloc();
  sub_1000C6F14();
  *(v4 + 216) = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  *(v4 + 224) = v7;
  *(v4 + 232) = v6;

  return _swift_task_switch(sub_10007A764, v7, v6);
}

uint64_t sub_10007A764(uint64_t a1)
{
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  v4 = *(v1 + 168);
  *(v1 + 264) = sub_1000C5D54();
  v5 = objc_allocWithZone(QLThumbnailGenerationRequest);
  sub_1000C5D24(v6);
  v8 = v7;
  v9 = [v5 initWithFileAtURL:v7 size:-1 scale:v4 representationTypes:{v3, v2}];
  *(v1 + 240) = v9;

  v10 = [objc_opt_self() sharedGenerator];
  *(v1 + 248) = v10;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_10007A920;
  v11 = swift_continuation_init();
  *(v1 + 136) = sub_10000FEB8(&qword_100118610, &qword_1000D0C78);
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_10007B980;
  *(v1 + 104) = &unk_100109340;
  *(v1 + 112) = v11;
  [v10 generateBestRepresentationForRequest:v9 completionHandler:v1 + 80];

  return _swift_continuation_await(v1 + 16);
}

uint64_t sub_10007A920()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_10007AB10;
  }

  else
  {
    v5 = sub_10007AA50;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10007AA50()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 264);

  v4 = *(v0 + 144);
  v5 = [v4 UIImage];

  if (v3 == 1)
  {
    sub_1000C5D34();
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10007AB10()
{
  v21 = v0;

  swift_willThrow();
  sub_1000C5F54();
  swift_errorRetain();
  v1 = sub_1000C5F64();
  v2 = sub_1000C6FD4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 256);
    v5 = *(v0 + 200);
    v19 = *(v0 + 208);
    v17 = *(v0 + 240);
    v18 = *(v0 + 192);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    *(v0 + 152) = v4;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v8 = sub_1000C6D94();
    v10 = sub_100071844(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "generateBestRepresentation throws error: %s", v6, 0xCu);
    sub_100010544(v7);

    (*(v5 + 8))(v19, v18);
  }

  else
  {
    v11 = *(v0 + 240);
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);
    v14 = *(v0 + 192);

    (*(v13 + 8))(v12, v14);
  }

  if (*(v0 + 264) == 1)
  {
    sub_1000C5D34();
  }

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_10007AD40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100017CBC;

  return sub_10006F230(a1, v4, v5, v6);
}

uint64_t sub_10007ADF4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v3)
  {
    v0 = [v3 _copyWithoutPersonalInfo];
    sub_100059520();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1000100B0();
    swift_allocError();
    *v2 = 0xD000000000000024;
    *(v2 + 8) = 0x80000001000DAAC0;
    *(v2 + 16) = xmmword_1000CFF50;
    *(v2 + 32) = 0x80000001000DAAF0;
    *(v2 + 40) = 11;
    return swift_willThrow();
  }
}

uint64_t sub_10007AF28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_10005F084(a1, v4, v5, v6, v7);
}

uint64_t sub_10007B0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100017CBC;

  return sub_10005E28C(a1, v4, v5, v6);
}

uint64_t sub_10007B190()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100017CBC;

  return sub_10005D5C0();
}

uint64_t sub_10007B244()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100017CBC;

  return sub_10005B98C();
}

uint64_t sub_10007B2F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100017CBC;

  return sub_1000A1CA0(a1, v4, v5, v6);
}

uint64_t sub_10007B438()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100017CBC;

  return sub_10006A7BC();
}

uint64_t sub_10007B510()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007B558(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_10006A4D4(a1, v4, v5, v7, v6);
}

uint64_t sub_10007B620()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007B658()
{
  v1 = sub_10000FEB8(&qword_100118670, &qword_1000D1068);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10007B730(uint64_t a1, void *a2, char a3)
{
  sub_10000FEB8(&qword_100118670, &qword_1000D1068);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  sub_100064A70(a1, a2, a3 & 1, v7, v8);
}

uint64_t sub_10007B7C8()
{
  v1 = sub_10000FEB8(&qword_100118670, &qword_1000D1068);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10007B898(uint64_t a1, char a2)
{
  sub_10000FEB8(&qword_100118670, &qword_1000D1068);
  v5 = *(v2 + 16);

  return sub_100064B48(a1, a2 & 1, v5);
}

uint64_t sub_10007B984()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10007B9F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10007BA94@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_10007BB14(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10007BBB0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_10007BCD8()
{

  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19PersonInfoViewModel__readWritePermissions;
  v2 = sub_10000FEB8(&qword_100117658, &qword_1000CEDF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19PersonInfoViewModel__readWritePermissionSelected;
  v4 = sub_10000FEB8(&qword_100117660, &qword_1000CEE00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19PersonInfoViewModel__personHasAddPeopleToggle;
  v6 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19PersonInfoViewModel__savingInProgress, v6);
  v7(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19PersonInfoViewModel__shouldShowRemoveAccess, v6);
  v7(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing19PersonInfoViewModel__shouldShowRemoveMe, v6);
  return v0;
}

uint64_t sub_10007BE8C()
{
  sub_10007BCD8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonInfoViewModel(uint64_t a1)
{
  result = qword_1001186D8;
  if (!qword_1001186D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007BF38(uint64_t a1)
{
  sub_10007C09C(319);
  if (v1 <= 0x3F)
  {
    sub_10001D1A8(319, &qword_100117490, &type metadata for GlobalPermissionViewModel.CanMakeChangesOrViewOnly);
    if (v2 <= 0x3F)
    {
      sub_10001D1A8(319, &qword_100117460, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10007C09C(uint64_t a1)
{
  if (!qword_100117480)
  {
    sub_100010624(&qword_100117488, &qword_1000CE880);
    v1 = sub_1000C60B4();
    if (!v2)
    {
      atomic_store(v1, &qword_100117480);
    }
  }
}

uint64_t sub_10007C100(uint64_t a1, void *a2, uint64_t a3)
{
  v81 = a3;
  v6 = sub_10000FEB8(&unk_100117770, &unk_1000CEF10);
  __chkstk_darwin(v6 - 8);
  v72 = v58 - v7;
  v77 = sub_10000FEB8(&unk_100116EE0, &unk_1000CD2A0);
  v80 = *(v77 - 8);
  v8 = __chkstk_darwin(v77);
  v75 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = v58 - v10;
  v79 = sub_10000FEB8(&qword_100117760, &qword_1000CEF00);
  v73 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = v58 - v11;
  v62 = sub_10000FEB8(&qword_1001177B8, &qword_1000CEF58);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = v58 - v12;
  v64 = sub_10000FEB8(&qword_1001187D0, &qword_1000D1150);
  __chkstk_darwin(v64);
  v63 = v58 - v13;
  v14 = sub_10000FEB8(&qword_1001187D8, &qword_1000D1158);
  v66 = *(v14 - 8);
  v67 = v14;
  __chkstk_darwin(v14);
  v65 = v58 - v15;
  v16 = sub_10000FEB8(&qword_1001187E0, &qword_1000D1160);
  v70 = *(v16 - 8);
  v71 = v16;
  __chkstk_darwin(v16);
  v69 = v58 - v17;
  if (_swiftEmptyArrayStorage >> 62 && sub_1000C72F4())
  {
    v18 = sub_1000727E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
  }

  v74 = v3;
  *(v3 + 112) = v18;
  v19 = v3 + 112;
  *(v19 - 96) = a2;
  *(v19 - 88) = v81;
  *(v19 - 80) = a1;
  v20 = a2[3];
  *(v19 - 72) = a2[2];
  *(v19 - 64) = v20;
  v21 = a2[5];
  *(v19 - 56) = a2[4];
  *(v19 - 48) = v21;
  v22 = a2[14];
  *(v19 - 40) = a2[13];
  *(v19 - 32) = v22;
  v23 = a2[12];
  *(v19 - 24) = a2[11];
  *(v19 - 16) = v23;
  v24 = *(a2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_contact);
  v68 = v19;
  *(v19 - 8) = v24;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();

  v25 = v24;

  sub_1000C6094();

  v26 = a2;

  v27 = v83[0];
  v28 = *(a2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_role);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v29 = v83[0];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  LOBYTE(v22) = v83[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LODWORD(v24) = v83[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v30 = _swiftEmptyArrayStorage;
  if ((v29 & v24 & ((~v22 & 0xC) == 0)) != 0)
  {
    v30 = &off_1001074A8;
  }

  if ((v83[0] & 0xFE) == 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = &off_100107480;
  }

  if (!v28 || (swift_getKeyPath(), swift_getKeyPath(), , sub_1000C6094(), , , , v83[0] != 2))
  {

    v31 = _swiftEmptyArrayStorage;
  }

  v32 = v74;
  swift_beginAccess();
  v82 = v31;
  sub_10000FEB8(&qword_100117488, &qword_1000CE880);
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v83[0] == 3)
  {
    v33 = 1;
  }

  else
  {
    v33 = v83[0];
  }

  swift_beginAccess();
  LOBYTE(v82) = v33;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v34 = 0;
  if (v83[0] == 1 && v28 && !v33)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v34 = v83[0];
  }

  swift_beginAccess();
  LOBYTE(v82) = v34;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v35 = v83[0];
  swift_beginAccess();
  LOBYTE(v82) = v35;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v36 = 0;
  if (v83[0] == 1 && v28)
  {
    if ((*(v26 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), , sub_1000C6094(), , , , v83[0] == 2))
    {
      v36 = 0;
    }

    else
    {
      v36 = v83[0] & (v27 != 1);
    }
  }

  swift_beginAccess();
  LOBYTE(v82) = v36;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v83[0] == 1)
  {
    if (v28)
    {
      v37 = *(v26 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  swift_beginAccess();
  LOBYTE(v82) = v37;
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  sub_10000FEB8(&qword_100117660, &qword_1000CEE00);
  v38 = v60;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117910, &qword_1001177B8, &qword_1000CEF58, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100042288();
  v39 = v62;
  sub_1000C6114();
  (*(v61 + 8))(v38, v39);
  swift_beginAccess();

  v62 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v40 = v76;
  sub_1000C6064();
  swift_endAccess();

  v61 = sub_10001E490(&unk_100116F20, &unk_100116EE0, &unk_1000CD2A0, &protocol conformance descriptor for Published<A>.Publisher);
  v41 = v77;
  sub_1000C6114();
  v58[0] = a1;
  v42 = *(v80 + 8);
  KeyPath = v80 + 8;
  v60 = v42;
  (v42)(v40, v41);
  sub_10001E490(&qword_1001187E8, &qword_1001187D0, &qword_1000D1150, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v58[1] = sub_10001E490(&qword_100117890, &qword_100117760, &qword_1000CEF00, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v43 = v65;
  sub_1000C5F84();
  v44 = [objc_opt_self() mainRunLoop];
  *v83 = v44;
  v45 = sub_1000C71A4();
  v46 = v72;
  (*(*(v45 - 8) + 56))(v72, 1, 1, v45);
  sub_10007D210();
  sub_10001E490(&qword_1001187F0, &qword_1001187D8, &qword_1000D1158, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  sub_10001E2AC();
  v47 = v69;
  v48 = v67;
  sub_1000C6104();
  sub_10001E314(v46);

  (*(v66 + 8))(v43, v48);
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  v51 = v58[0];
  *(v50 + 16) = v49;
  *(v50 + 24) = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_10007D2D4;
  *(v52 + 24) = v50;
  sub_10001E490(qword_1001187F8, &qword_1001187E0, &qword_1000D1160, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v53 = v71;
  sub_1000C6124();

  (*(v70 + 8))(v47, v53);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v54 = v78;
  sub_1000C6114();
  v55 = v60;
  (v60)(v40, v41);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v56 = v79;
  sub_1000C6134();
  (*(v73 + 8))(v54, v56);
  (*(v80 + 16))(v75, v40, v41);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v55(v40, v41);
  return v32;
}

unint64_t sub_10007D210()
{
  result = qword_100116F80;
  if (!qword_100116F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100116F80);
  }

  return result;
}

uint64_t sub_10007D25C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007D294()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007D2DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t Publishers.CSCombineLatest5.init(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v24[0] = a6;
  v24[1] = a7;
  v24[2] = a8;
  v24[3] = a10;
  v24[4] = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v21 = type metadata accessor for Publishers.CSCombineLatest5(0, v24);
  (*(*(a7 - 8) + 32))(a9 + v21[25], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v21[26], a3, a8);
  (*(*(a10 - 8) + 32))(a9 + v21[27], a4, a10);
  return (*(*(a11 - 8) + 32))(a9 + v21[28], a5, a11);
}

uint64_t Publishers.CSCombineLatest6.init(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v27[0] = a7;
  v27[1] = a8;
  v27[2] = a10;
  v27[3] = a11;
  v27[4] = a12;
  v27[5] = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v21 = type metadata accessor for Publishers.CSCombineLatest6(0, v27);
  (*(*(a8 - 8) + 32))(a9 + v21[29], a2, a8);
  (*(*(a10 - 8) + 32))(a9 + v21[30], a3, a10);
  (*(*(a11 - 8) + 32))(a9 + v21[31], a4, a11);
  (*(*(a12 - 8) + 32))(a9 + v21[32], a5, a12);
  return (*(*(a13 - 8) + 32))(a9 + v21[33], a6, a13);
}

uint64_t Publishers.CSCombineLatest5.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a3;
  v78 = a4;
  v79 = a1;
  v87 = *(a2 + 32);
  AssociatedTypeWitness = v87;
  v92 = *(a2 + 72);
  v84 = v92;
  v85 = *(a2 + 16);
  v56[1] = *(&v85 + 1);
  v63 = v85;
  v89 = v85;
  v86 = *(a2 + 56);
  v68 = v86;
  v91 = v86;
  v65 = *(&v86 + 1);
  v88 = sub_1000C5F94();
  v5 = *(a2 + 40);
  v81 = *(a2 + 48);
  v82 = &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>;
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 80);
  v92 = *(a2 + 88);
  v70 = v6;
  v67 = v92;
  v83 = sub_1000C5F94();
  *&v89 = swift_getAssociatedTypeWitness();
  v7 = *(&v85 + 1);
  *(&v89 + 1) = swift_getAssociatedTypeWitness();
  v8 = v87;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = v5;
  *&v91 = swift_getAssociatedTypeWitness();
  *(&v91 + 1) = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9 = v83;
  v72 = swift_getWitnessTable();
  v74 = sub_1000C5FE4();
  v75 = *(v74 - 8);
  v10 = __chkstk_darwin(v74);
  v69 = v56 - v11;
  v64 = *(v81 - 8);
  v12 = __chkstk_darwin(v10);
  v62 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(v5 - 8);
  v14 = __chkstk_darwin(v12);
  v59 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v9 - 8);
  v16 = __chkstk_darwin(v14);
  v82 = v56 - v17;
  v18 = *(v8 - 8);
  v19 = __chkstk_darwin(v16);
  v58 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v7;
  v22 = *(v7 - 8);
  v23 = __chkstk_darwin(v19);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v63;
  v27 = __chkstk_darwin(v23);
  v29 = v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v88 - 8);
  v30 = __chkstk_darwin(v27);
  v32 = v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = v56 - v33;
  v36 = v71;
  (*(v35 + 16))(v29, v71, v26);
  (*(v22 + 16))(v25, v36 + *(a2 + 100), v21);
  (*(v18 + 16))(v58, v36 + *(a2 + 104), v87);
  v57 = v34;
  sub_1000C5FA4();
  (*(v80 + 16))(v32, v34, v88);
  v37 = v61;
  (*(v60 + 16))(v59, v36 + *(a2 + 108), v61);
  v38 = v36 + *(a2 + 112);
  v39 = v81;
  (*(v64 + 16))(v62, v38, v81);
  v40 = v67;
  v41 = v37;
  v42 = v70;
  sub_1000C5FA4();
  v43 = swift_allocObject();
  v44 = v87;
  *&v45 = v87;
  *(&v45 + 1) = v41;
  *(v43 + 32) = v45;
  *(v43 + 16) = v85;
  v47 = v77;
  v46 = v78;
  *(v43 + 48) = v39;
  *(v43 + 56) = v47;
  v48 = v84;
  *&v45 = v84;
  *(&v45 + 1) = v42;
  *(v43 + 80) = v45;
  *(v43 + 64) = v86;
  *(v43 + 96) = v40;
  *(v43 + 104) = v46;
  v49 = swift_allocObject();
  v50 = v86;
  *(v49 + 16) = v85;
  *(v49 + 32) = v44;
  *(v49 + 40) = v41;
  *(v49 + 48) = v39;
  *(v49 + 56) = v47;
  *(v49 + 64) = v50;
  *(v49 + 80) = v48;
  *(v49 + 88) = v42;
  *(v49 + 96) = v40;
  *(v49 + 104) = v46;
  *(v49 + 112) = sub_10007E5E4;
  *(v49 + 120) = v43;
  v51 = v69;
  v53 = v82;
  v52 = v83;
  sub_1000C60E4();

  v54 = v74;
  sub_1000C5FD4();
  (*(v75 + 8))(v51, v54);
  (*(v66 + 8))(v53, v52);
  return (*(v80 + 8))(v57, v88);
}

uint64_t sub_10007E0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v65 = a7;
  v66 = a8;
  v67 = a1;
  v68 = a2;
  v75 = a21;
  v73 = a4;
  v74 = a15;
  v76 = a10;
  v77 = a5;
  v71 = a3;
  v72 = a9;
  v69 = a14;
  v70 = a20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v26 = *(TupleTypeMetadata3 - 8);
  v27 = __chkstk_darwin(TupleTypeMetadata3);
  v63 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v78 = &v60 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v60 - v32;
  __chkstk_darwin(v31);
  v35 = &v60 - v34;
  v36 = *(AssociatedTypeWitness - 8);
  v37 = *(v36 + 16);
  v62 = AssociatedTypeWitness;
  v37(&v60 - v34, a6, AssociatedTypeWitness);
  v38 = *(TupleTypeMetadata3 + 48);
  v60 = v23;
  v39 = *(v23 - 8);
  (*(v39 + 16))(&v35[v38], v65, v23);
  v40 = *(TupleTypeMetadata3 + 64);
  v61 = v24;
  v41 = *(v24 - 8);
  (*(v41 + 16))(&v35[v40], v66, v24);
  v42 = *(v26 + 16);
  v64 = v33;
  v42(v33, v35, TupleTypeMetadata3);
  v43 = *(TupleTypeMetadata3 + 48);
  v65 = *(TupleTypeMetadata3 + 64);
  v66 = v43;
  (*(v36 + 32))(v67, v33, AssociatedTypeWitness);
  v44 = v78;
  v42(v78, v35, TupleTypeMetadata3);
  v45 = *(TupleTypeMetadata3 + 48);
  v67 = *(TupleTypeMetadata3 + 64);
  v46 = v60;
  (*(v39 + 32))(v68, &v44[v45], v60);
  v47 = v63;
  (*(v26 + 32))(v63, v35, TupleTypeMetadata3);
  v48 = *(TupleTypeMetadata3 + 48);
  v49 = v61;
  (*(v41 + 32))(v71, &v47[*(TupleTypeMetadata3 + 64)], v61);
  v50 = swift_getAssociatedTypeWitness();
  (*(*(v50 - 8) + 16))(v73, v72, v50);
  v51 = swift_getAssociatedTypeWitness();
  (*(*(v51 - 8) + 16))(v77, v76, v51);
  v52 = *(v39 + 8);
  v53 = v46;
  v52(&v47[v48], v46);
  v54 = *(v36 + 8);
  v55 = v62;
  v54(v47, v62);
  v56 = *(v41 + 8);
  v57 = v78;
  v56(&v78[v67], v49);
  v54(v57, v55);
  v58 = v64;
  v56(&v64[v65], v49);
  return (v52)(&v58[v66], v53);
}

uint64_t sub_10007E62C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = *(TupleTypeMetadata3 + 48);
  v23 = *(TupleTypeMetadata3 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v18 = swift_getTupleTypeMetadata3();
  v19 = a1 + *(v18 + 48);
  v20 = a1 + *(v18 + 64);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a8, a8 + TupleTypeMetadata[12], a8 + TupleTypeMetadata[16], a8 + TupleTypeMetadata[20], a8 + TupleTypeMetadata[24], a1, a1 + v17, a1 + v23, v19, v20);
}

uint64_t sub_10007E7F4()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t Publishers.CSCombineLatest6.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v81 = a3;
  v83 = a1;
  v91 = *(a2 + 16);
  v68 = v91;
  v94 = v91;
  v58[1] = *(&v91 + 1);
  v84 = *(a2 + 32);
  AssociatedTypeWitness = v84;
  v90 = *(a2 + 64);
  v72 = v90;
  v96 = v90;
  v71 = *(&v90 + 1);
  v97 = *(a2 + 80);
  *&v89 = v97;
  v88 = sub_1000C5F94();
  v5 = *(a2 + 40);
  v93 = *(a2 + 48);
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  *v86 = v93;
  v74 = v6;
  v92 = v7;
  v98 = v7;
  v85 = *(&v7 + 1);
  v87 = sub_1000C5FB4();
  *&v94 = swift_getAssociatedTypeWitness();
  v8 = *(&v91 + 1);
  *(&v94 + 1) = swift_getAssociatedTypeWitness();
  v9 = v84;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v5;
  v64 = v5;
  *&v96 = swift_getAssociatedTypeWitness();
  v11 = v93;
  *(&v96 + 1) = swift_getAssociatedTypeWitness();
  v97 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = v87;
  v76 = swift_getWitnessTable();
  v78 = sub_1000C5FE4();
  v79 = *(v78 - 8);
  v13 = __chkstk_darwin(v78);
  v73 = v58 - v14;
  v69 = *(*(&v93 + 1) - 8);
  v15 = __chkstk_darwin(v13);
  v67 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v11 - 8);
  v17 = __chkstk_darwin(v15);
  v65 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v10 - 8);
  v19 = __chkstk_darwin(v17);
  v62 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(v12 - 8);
  v21 = __chkstk_darwin(v19);
  v85 = v58 - v22;
  v23 = *(v9 - 8);
  v24 = __chkstk_darwin(v21);
  v59 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v8;
  v27 = *(v8 - 8);
  v28 = __chkstk_darwin(v24);
  v30 = v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v68;
  v32 = __chkstk_darwin(v28);
  v34 = v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(v88 - 8);
  v35 = v61;
  v36 = __chkstk_darwin(v32);
  v58[0] = v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = v58 - v38;
  v41 = v75;
  (*(v40 + 16))(v34, v75, v31);
  (*(v27 + 16))(v30, v41 + *(a2 + 116), v26);
  v42 = v84;
  (*(v23 + 16))(v59, v41 + *(a2 + 120), v84);
  v60 = v39;
  sub_1000C5FA4();
  v43 = v88;
  (*(v35 + 16))(v58[0], v39, v88);
  v44 = v64;
  (*(v63 + 16))(v62, v41 + *(a2 + 124), v64);
  (*(v66 + 16))(v65, v41 + *(a2 + 128), *v86);
  (*(v69 + 16))(v67, v41 + *(a2 + 132), *&v86[8]);
  v45 = v74;
  v46 = v44;
  sub_1000C5FC4();
  v47 = swift_allocObject();
  *&v48 = v42;
  *(&v48 + 1) = v46;
  *&v86[8] = v48;
  *(v47 + 32) = v48;
  *(v47 + 16) = v91;
  *(v47 + 48) = v93;
  v49 = v81;
  *(v47 + 64) = v81;
  *&v48 = v89;
  *(&v48 + 1) = v45;
  v89 = v48;
  *(v47 + 88) = v48;
  *(v47 + 72) = v90;
  *(v47 + 104) = v92;
  v50 = v82;
  *(v47 + 120) = v82;
  v51 = swift_allocObject();
  v52 = v93;
  *(v51 + 16) = v91;
  *(v51 + 32) = *&v86[8];
  *(v51 + 48) = v52;
  *(v51 + 64) = v49;
  *(v51 + 72) = v90;
  *(v51 + 104) = v92;
  *(v51 + 88) = v89;
  *(v51 + 120) = v50;
  *(v51 + 128) = sub_10007F98C;
  *(v51 + 136) = v47;
  v53 = v73;
  v54 = v87;
  v55 = v85;
  sub_1000C60E4();

  v56 = v78;
  sub_1000C5FD4();
  (*(v79 + 8))(v53, v56);
  (*(v70 + 8))(v55, v54);
  return (*(v61 + 8))(v60, v43);
}

uint64_t sub_10007F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v71 = a8;
  v72 = a1;
  v73 = a2;
  v85 = a12;
  v86 = a6;
  v80 = a4;
  v81 = a11;
  v83 = a25;
  v84 = a5;
  v82 = a18;
  v78 = a17;
  v79 = a24;
  v76 = a3;
  v77 = a10;
  v70 = a9;
  v74 = a16;
  v75 = a23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v30 = *(TupleTypeMetadata3 - 8);
  v31 = __chkstk_darwin(TupleTypeMetadata3);
  v67 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v66 = &v64 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v64 - v36;
  __chkstk_darwin(v35);
  v39 = &v64 - v38;
  v40 = AssociatedTypeWitness;
  v41 = *(AssociatedTypeWitness - 8);
  v42 = *(v41 + 16);
  v68 = v40;
  v42(&v64 - v38, a7, v40);
  v43 = *(TupleTypeMetadata3 + 48);
  v64 = v27;
  v44 = *(v27 - 8);
  (*(v44 + 16))(&v39[v43], v71, v27);
  v45 = *(TupleTypeMetadata3 + 64);
  v65 = v28;
  v46 = *(v28 - 8);
  (*(v46 + 16))(&v39[v45], v70, v28);
  v47 = *(v30 + 16);
  v69 = v37;
  v47(v37, v39, TupleTypeMetadata3);
  v48 = *(TupleTypeMetadata3 + 48);
  v70 = *(TupleTypeMetadata3 + 64);
  v71 = v48;
  (*(v41 + 32))(v72, v37, v40);
  v49 = v66;
  v47(v66, v39, TupleTypeMetadata3);
  v50 = *(TupleTypeMetadata3 + 48);
  v72 = *(TupleTypeMetadata3 + 64);
  v51 = v64;
  (*(v44 + 32))(v73, &v49[v50], v64);
  v52 = v67;
  (*(v30 + 32))(v67, v39, TupleTypeMetadata3);
  v73 = *(TupleTypeMetadata3 + 48);
  v53 = v65;
  (*(v46 + 32))(v76, &v52[*(TupleTypeMetadata3 + 64)], v65);
  v54 = swift_getAssociatedTypeWitness();
  (*(*(v54 - 8) + 16))(v80, v77, v54);
  v55 = swift_getAssociatedTypeWitness();
  (*(*(v55 - 8) + 16))(v84, v81, v55);
  v56 = swift_getAssociatedTypeWitness();
  (*(*(v56 - 8) + 16))(v86, v85, v56);
  v57 = *(v44 + 8);
  v58 = v51;
  v57(&v52[v73], v51);
  v59 = *(v41 + 8);
  v60 = v68;
  v59(v52, v68);
  v61 = *(v46 + 8);
  v61(&v49[v72], v53);
  v59(v49, v60);
  v62 = v69;
  v61(&v69[v70], v53);
  return (v57)(&v62[v71], v58);
}

uint64_t sub_10007F9DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v25 = a1 + *(TupleTypeMetadata3 + 64);
  v26 = *(TupleTypeMetadata3 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = a1 + TupleTypeMetadata[12];
  v21 = a1 + TupleTypeMetadata[16];
  v22 = a1 + TupleTypeMetadata[20];
  v23 = swift_getTupleTypeMetadata();
  return a2(a8, a8 + v23[12], a8 + v23[16], a8 + v23[20], a8 + v23[24], a8 + v23[28], a1, a1 + v26, v25, v20, v21, v22);
}

uint64_t sub_10007FBF0()
{

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t Publishers.CSCombineLatest7.init(_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v29[0] = a8;
  v29[1] = a10;
  v29[2] = a11;
  v29[3] = a12;
  v29[4] = a13;
  v29[5] = a14;
  v29[6] = a15;
  v30 = a16;
  v31 = a17;
  v32 = a18;
  v33 = a19;
  v22 = type metadata accessor for Publishers.CSCombineLatest7(0, v29);
  (*(*(a10 - 8) + 32))(a9 + v22[33], a2, a10);
  (*(*(a11 - 8) + 32))(a9 + v22[34], a3, a11);
  (*(*(a12 - 8) + 32))(a9 + v22[35], a4, a12);
  (*(*(a13 - 8) + 32))(a9 + v22[36], a5, a13);
  (*(*(a14 - 8) + 32))(a9 + v22[37], a6, a14);
  return (*(*(a15 - 8) + 32))(a9 + v22[38], a7, a15);
}

uint64_t Publishers.CSCombineLatest7.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97 = a4;
  v96 = a3;
  v98 = a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v115 = *(a2 + 88);
  v116 = v7;
  v114 = v11;
  v117 = v6;
  AssociatedTypeWitness = v6;
  v119 = v5;
  v120 = v7;
  v110 = v5;
  v121 = v8;
  v122 = v9;
  v107 = v9;
  v108 = v8;
  v123 = v10;
  v124 = v115;
  v106 = v10;
  v125 = v11;
  v12 = sub_1000C5FB4();
  v13 = *(a2 + 56);
  v109 = *(a2 + 48);
  v111 = v13;
  v112 = *(a2 + 64);
  v113 = v12;
  v102 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  v88 = *(a2 + 104);
  v125 = v15;
  v105 = v14;
  v104 = v15;
  v103 = sub_1000C5FB4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = swift_getAssociatedTypeWitness();
  v16 = v116;
  v120 = swift_getAssociatedTypeWitness();
  v17 = v108;
  v121 = swift_getAssociatedTypeWitness();
  v18 = v109;
  v122 = swift_getAssociatedTypeWitness();
  v123 = swift_getAssociatedTypeWitness();
  v124 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = v103;
  v91 = swift_getWitnessTable();
  v93 = sub_1000C5FE4();
  v94 = *(v93 - 8);
  v20 = __chkstk_darwin(v93);
  v89 = &v79 - v21;
  v86 = *(v112 - 8);
  v22 = __chkstk_darwin(v20);
  v85 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v13 - 8);
  v24 = __chkstk_darwin(v22);
  v83 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v18 - 8);
  v26 = __chkstk_darwin(v24);
  v81 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = *(v19 - 8);
  v28 = __chkstk_darwin(v26);
  v102 = &v79 - v29;
  v79 = *(v17 - 8);
  v30 = __chkstk_darwin(v28);
  v80 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v16 - 8);
  v33 = __chkstk_darwin(v30);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v110;
  v37 = *(v110 - 8);
  v38 = __chkstk_darwin(v33);
  v40 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v38);
  v43 = &v79 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *(v113 - 8);
  v44 = __chkstk_darwin(v41);
  v99 = &v79 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v100 = &v79 - v46;
  v48 = v90;
  (*(v47 + 16))(v43, v90);
  (*(v37 + 16))(v40, v48 + *(a2 + 132), v36);
  (*(v32 + 16))(v35, v48 + *(a2 + 136), v116);
  (*(v79 + 16))(v80, v48 + *(a2 + 140), v108);
  v49 = v100;
  sub_1000C5FC4();
  (*(v101 + 16))(v99, v49, v113);
  v50 = v109;
  (*(v82 + 16))(v81, v48 + *(a2 + 144), v109);
  v51 = v111;
  (*(v84 + 16))(v83, v48 + *(a2 + 148), v111);
  v52 = v48 + *(a2 + 152);
  v53 = v112;
  (*(v86 + 16))(v85, v52, v112);
  v54 = v104;
  v55 = v105;
  v56 = v88;
  v57 = v50;
  v58 = v51;
  v59 = v53;
  sub_1000C5FC4();
  v60 = swift_allocObject();
  v61 = v110;
  v60[2] = v117;
  v60[3] = v61;
  v62 = v115;
  v63 = v108;
  v60[4] = v116;
  v60[5] = v63;
  v60[6] = v57;
  v60[7] = v58;
  v64 = v96;
  v60[8] = v59;
  v60[9] = v64;
  v66 = v106;
  v65 = v107;
  v60[10] = v107;
  v60[11] = v66;
  v67 = v114;
  v60[12] = v62;
  v60[13] = v67;
  v60[14] = v56;
  v60[15] = v55;
  v60[16] = v54;
  v68 = v97;
  v60[17] = v97;
  v69 = swift_allocObject();
  v70 = v110;
  v69[2] = v117;
  v69[3] = v70;
  v69[4] = v116;
  v69[5] = v63;
  v72 = v111;
  v71 = v112;
  v69[6] = v109;
  v69[7] = v72;
  v69[8] = v71;
  v69[9] = v64;
  v69[10] = v65;
  v69[11] = v66;
  v69[12] = v62;
  v69[13] = v67;
  v73 = v105;
  v69[14] = v56;
  v69[15] = v73;
  v69[16] = v104;
  v69[17] = v68;
  v69[18] = sub_1000813CC;
  v69[19] = v60;
  v74 = v89;
  v75 = v103;
  v76 = v102;
  sub_1000C60E4();

  v77 = v93;
  sub_1000C5FD4();
  (*(v94 + 8))(v74, v77);
  (*(v87 + 8))(v76, v75);
  return (*(v101 + 8))(v100, v113);
}

uint64_t sub_100080B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t), void (*a7)(char *, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v117 = a8;
  v110 = a7;
  v108 = a6;
  v104 = a5;
  v100 = a4;
  v97 = a3;
  v96 = a2;
  v95 = a1;
  v106 = a21;
  v107 = a29;
  v109 = a14;
  v105 = a13;
  v103 = a28;
  v99 = a27;
  v102 = a20;
  v98 = a19;
  v101 = a12;
  v94 = a11;
  v93 = a10;
  v91 = a9;
  v90 = a26;
  v87 = a25;
  v89 = a18;
  v86 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = swift_getAssociatedTypeWitness();
  v120 = swift_getAssociatedTypeWitness();
  v121 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v88 = *(TupleTypeMetadata - 1);
  v30 = __chkstk_darwin(TupleTypeMetadata);
  v92 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v112 = &v85 - v33;
  v34 = __chkstk_darwin(v32);
  v111 = &v85 - v35;
  v36 = __chkstk_darwin(v34);
  v113 = &v85 - v37;
  __chkstk_darwin(v36);
  v39 = &v85 - v38;
  v40 = swift_getAssociatedTypeWitness();
  v41 = *(v40 - 8);
  v114 = v40;
  v115 = v41;
  (*(v41 + 16))(v39, v117, v40);
  v42 = TupleTypeMetadata[12];
  v43 = swift_getAssociatedTypeWitness();
  v44 = *(v43 - 8);
  v116 = v43;
  v117 = v44;
  (*(v44 + 16))(&v39[v42], v91, v43);
  v45 = TupleTypeMetadata[16];
  v46 = swift_getAssociatedTypeWitness();
  v47 = *(v46 - 8);
  v48 = &v39[v45];
  v49 = v46;
  (*(v47 + 16))(v48, v93);
  v50 = TupleTypeMetadata[20];
  v51 = swift_getAssociatedTypeWitness();
  v52 = *(v51 - 8);
  v87 = v52;
  v53 = *(v52 + 16);
  v86 = v51;
  v53(&v39[v50], v94, v51);
  v54 = v88;
  v55 = *(v88 + 16);
  v56 = v113;
  v55(v113, v39, TupleTypeMetadata);
  v94 = TupleTypeMetadata[12];
  v93 = TupleTypeMetadata[16];
  v91 = TupleTypeMetadata[20];
  (*(v115 + 32))(v95, v56, v114);
  v57 = v111;
  v55(v111, v39, TupleTypeMetadata);
  v58 = TupleTypeMetadata[12];
  v95 = TupleTypeMetadata[16];
  v90 = TupleTypeMetadata[20];
  (*(v117 + 32))(v96, &v57[v58], v116);
  v59 = v112;
  v55(v112, v39, TupleTypeMetadata);
  v96 = TupleTypeMetadata[12];
  v60 = TupleTypeMetadata[16];
  v89 = TupleTypeMetadata[20];
  v61 = *(v47 + 32);
  v85 = v49;
  v61(v97, &v59[v60], v49);
  v62 = v92;
  (*(v54 + 32))(v92, v39, TupleTypeMetadata);
  v63 = TupleTypeMetadata[12];
  v64 = TupleTypeMetadata[16];
  (*(v52 + 32))(v100, &v62[TupleTypeMetadata[20]], v51);
  v65 = swift_getAssociatedTypeWitness();
  (*(*(v65 - 8) + 16))(v104, v101, v65);
  v66 = swift_getAssociatedTypeWitness();
  (*(*(v66 - 8) + 16))(v108, v105, v66);
  v67 = swift_getAssociatedTypeWitness();
  (*(*(v67 - 8) + 16))(v110, v109, v67);
  v68 = *(v47 + 8);
  v109 = v47 + 8;
  v110 = v68;
  v68(&v62[v64], v49);
  v69 = v116;
  v71 = v117 + 8;
  v70 = *(v117 + 8);
  v70(&v62[v63], v116);
  v72 = v70;
  v108 = v70;
  v117 = v71;
  v73 = v114;
  v74 = *(v115 + 8);
  v74(v62, v114);
  v75 = *(v87 + 8);
  v76 = v112;
  v77 = v86;
  v75(&v112[v89], v86);
  v72(&v76[v96], v69);
  v78 = v76;
  v79 = v73;
  v74(v78, v73);
  v80 = v111;
  v75(&v111[v90], v77);
  v81 = v85;
  v82 = v110;
  v110(&v80[v95], v85);
  v74(v80, v79);
  v83 = v113;
  v75(&v113[v91], v77);
  v82(&v83[v93], v81);
  return v108(&v83[v94], v116);
}

uint64_t sub_100081424@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v29 = a1 + TupleTypeMetadata[12];
  v28 = a1 + TupleTypeMetadata[16];
  v27 = a1 + TupleTypeMetadata[20];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v21 = swift_getTupleTypeMetadata();
  v22 = a1 + v21[12];
  v23 = a1 + v21[16];
  v24 = a1 + v21[20];
  v25 = swift_getTupleTypeMetadata();
  return a2(a8, a8 + v25[12], a8 + v25[16], a8 + v25[20], a8 + v25[24], a8 + v25[28], a8 + v25[32], a1, v29, v28, v27, v22, v23, v24);
}

uint64_t sub_100081690()
{

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10008179C(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10008187C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v42 = *(a3[2] - 8);
  v4 = *(v42 + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v42 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3[6] - 8);
  v16 = *(v15 + 84);
  v17 = *(v5 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(*(a3[4] - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  if (v16 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(*(a3[2] - 8) + 64) + v17;
  v25 = *(*(v8 - 8) + 64) + v22;
  v26 = a2 - v23;
  if (a2 > v23)
  {
    v27 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
    v28 = 8 * v27;
    if (v27 <= 3)
    {
      v30 = ((v26 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v30))
      {
        v29 = *(a1 + v27);
        if (!v29)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 > 0xFF)
      {
        v29 = *(a1 + v27);
        if (!*(a1 + v27))
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 < 2)
      {
LABEL_36:
        if (v23)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    v29 = *(a1 + v27);
    if (!*(a1 + v27))
    {
      goto LABEL_36;
    }

LABEL_23:
    v31 = (v29 - 1) << v28;
    if (v27 > 3)
    {
      v31 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v32 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
      }

      else
      {
        v32 = 4;
      }

      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v33 = *a1;
        }
      }

      else if (v32 == 1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a1;
      }
    }

    else
    {
      v33 = 0;
    }

    return v23 + (v33 | v31) + 1;
  }

LABEL_37:
  if (v4 == v23)
  {
    v34 = *(v42 + 48);

    return v34();
  }

  v36 = (a1 + v24) & ~v17;
  if (v6 == v23)
  {
    v37 = *(v5 + 48);
    v38 = *(v5 + 84);
    v39 = a3[3];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v10 == v23)
  {
    v37 = *(v9 + 48);
    v38 = *(v9 + 84);
    v39 = a3[4];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v13 == v23)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = a3[5];

    return v37(v36, v38, v39);
  }

  v40 = *(v15 + 48);
  v41 = (v25 + v36) & ~v22;

  return v40(v41, v16);
}

char *sub_100081D1C(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v42 = a4[3];
  v43 = *(a4[2] - 8);
  v5 = *(v43 + 84);
  v6 = *(v42 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v43 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a4[5];
  v41 = a4[4];
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4[6] - 8);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v6 + 80);
  v19 = *(*(v42 - 8) + 64);
  v20 = *(v10 + 80);
  v21 = *(*(v41 - 8) + 64);
  v22 = *(v13 + 80);
  v23 = *(*(v9 - 8) + 64);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  v26 = v23 + v24;
  v27 = ((v23 + v24 + ((v21 + v22 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20)) & ~v22)) & ~v24) + *(*(a4[6] - 8) + 64);
  v28 = a3 >= v25;
  v29 = a3 - v25;
  if (v29 != 0 && v28)
  {
    if (v27 <= 3)
    {
      v34 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v34))
      {
        v30 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v30 = v35;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if (v25 < a2)
  {
    v31 = ~v25 + a2;
    if (v27 < 4)
    {
      v33 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v36 = v31 & ~(-1 << (8 * v27));
        v37 = result;
        bzero(result, v27);
        result = v37;
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v37 = v36;
            if (v30 > 1)
            {
LABEL_60:
              if (v30 == 2)
              {
                *&result[v27] = v33;
              }

              else
              {
                *&result[v27] = v33;
              }

              return result;
            }
          }

          else
          {
            *v37 = v31;
            if (v30 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v37 = v36;
        v37[2] = BYTE2(v36);
      }

      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v32 = result;
      bzero(result, v27);
      result = v32;
      *v32 = v31;
      v33 = 1;
      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v30)
    {
      result[v27] = v33;
    }

    return result;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&result[v27] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    }

    *&result[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!v30)
  {
    goto LABEL_39;
  }

  result[v27] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_40:
  if (v5 == v25)
  {
    v38 = *(v43 + 56);

    return v38();
  }

  else
  {
    v39 = &result[v17 + v18] & ~v18;
    if (v7 == v25)
    {
      v40 = *(v6 + 56);
    }

    else
    {
      v39 = (v39 + v19 + v20) & ~v20;
      if (v11 == v25)
      {
        v40 = *(v10 + 56);
      }

      else
      {
        v39 = (v39 + v21 + v22) & ~v22;
        if (v14 == v25)
        {
          v40 = *(v13 + 56);
        }

        else
        {
          v40 = *(v16 + 56);
          v39 = (v26 + v39) & ~v24;
        }
      }
    }

    return v40(v39);
  }
}

uint64_t sub_10008223C(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100082338(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v58 = a3[3];
  v59 = v4;
  v5 = *(v4 + 84);
  v6 = *(v58 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a3[5];
  v56 = v9;
  v57 = a3[4];
  v10 = *(v57 - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v15 = a3[6];
  v14 = a3[7];
  v55 = v14;
  v16 = *(v15 - 8);
  if (v13 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = *(v16 + 84);
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = *(v16 + 84);
  }

  v20 = *(v14 - 8);
  v21 = *(v20 + 84);
  v22 = *(v4 + 64);
  v23 = *(v6 + 80);
  v24 = *(*(v58 - 8) + 64);
  v25 = *(v10 + 80);
  v26 = *(*(v57 - 8) + 64);
  v27 = *(v12 + 80);
  v28 = *(*(v9 - 8) + 64);
  v29 = *(v16 + 80);
  v30 = *(v16 + 64);
  v31 = *(v20 + 80);
  v32 = *(v20 + 64);
  if (v21 <= v19)
  {
    v33 = v19;
  }

  else
  {
    v33 = *(v20 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v34 = v22 + v23;
  v35 = v28 + v29;
  v36 = v30 + v31;
  v37 = a2 - v33;
  if (a2 > v33)
  {
    v38 = (v36 + ((v35 + ((v26 + v27 + ((v24 + v25 + (v34 & ~v23)) & ~v25)) & ~v27)) & ~v29)) & ~v31;
    v39 = v38 + v32;
    v40 = 8 * (v38 + v32);
    if (v39 <= 3)
    {
      v42 = ((v37 + ~(-1 << v40)) >> v40) + 1;
      if (HIWORD(v42))
      {
        v41 = *(a1 + v39);
        if (!v41)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v42 > 0xFF)
      {
        v41 = *(a1 + v39);
        if (!*(a1 + v39))
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v42 < 2)
      {
LABEL_38:
        if (v33)
        {
          goto LABEL_39;
        }

        return 0;
      }
    }

    v41 = *(a1 + v39);
    if (!*(a1 + v39))
    {
      goto LABEL_38;
    }

LABEL_25:
    v43 = (v41 - 1) << v40;
    if (v39 > 3)
    {
      v43 = 0;
    }

    if (v39)
    {
      if (v39 <= 3)
      {
        v44 = v39;
      }

      else
      {
        v44 = 4;
      }

      if (v44 > 2)
      {
        if (v44 == 3)
        {
          v45 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v45 = *a1;
        }
      }

      else if (v44 == 1)
      {
        v45 = *a1;
      }

      else
      {
        v45 = *a1;
      }
    }

    else
    {
      v45 = 0;
    }

    return v33 + (v45 | v43) + 1;
  }

LABEL_39:
  if (v5 == v33)
  {
    v46 = *(v59 + 48);

    return v46(a1);
  }

  v48 = (a1 + v34) & ~v23;
  if (v7 == v33)
  {
    v49 = *(v6 + 48);
    v50 = (a1 + v34) & ~v23;
    v51 = *(v6 + 84);
    v52 = v58;

    return v49(v50, v51, v52);
  }

  if (v11 == v33)
  {
    v49 = *(v10 + 48);
    v50 = (v48 + v24 + v25) & ~v25;
    v51 = *(v10 + 84);
    v52 = v57;

    return v49(v50, v51, v52);
  }

  v50 = (((v48 + v24 + v25) & ~v25) + v26 + v27) & ~v27;
  if (v13 == v33)
  {
    v49 = *(v12 + 48);
    v51 = *(v12 + 84);
    v52 = v56;

    return v49(v50, v51, v52);
  }

  v50 = (v35 + v50) & ~v29;
  if (v18 == v33)
  {
    v49 = *(*(v15 - 8) + 48);
    v51 = v18;
    v52 = v15;

    return v49(v50, v51, v52);
  }

  v53 = *(v20 + 48);
  v54 = (v36 + v50) & ~v31;

  return v53(v54, v21, v55);
}

unsigned int *sub_10008289C(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v54 = v6;
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = a4[5];
  v52 = a4[4];
  v13 = *(v52 - 8);
  v53 = *(v13 + 84);
  if (v53 > v11)
  {
    v11 = *(v13 + 84);
  }

  v14 = *(v12 - 8);
  v51 = *(v14 + 84);
  if (v51 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v50 = a4[6];
  v16 = *(v50 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(a4[7] - 8);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v13 + 80);
  v24 = *(*(v52 - 8) + 64);
  v25 = *(v14 + 80);
  v26 = *(*(v12 - 8) + 64);
  v27 = *(v16 + 80);
  v28 = *(*(v50 - 8) + 64);
  v29 = *(v19 + 80);
  v30 = v26 + v27;
  v31 = v28 + v29;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v19 + 64);
  if (*(v19 + 84) <= v18)
  {
    v33 = v18;
  }

  else
  {
    v33 = *(v19 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  if (v33 < a2)
  {
    v35 = ~v33 + a2;
    if (v32 >= 4)
    {
      v36 = result;
      bzero(result, v32);
      result = v36;
      *v36 = v35;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_22;
      }

      goto LABEL_59;
    }

    v37 = (v35 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v35 & ~(-1 << (8 * v32));
      v41 = result;
      bzero(result, v32);
      result = v41;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *v41 = v40;
          if (v34 > 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *v41 = v35;
          if (v34 > 1)
          {
LABEL_22:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_59:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *v41 = v40;
      *(v41 + 2) = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(result + v32) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v32) = 0;
  }

  else if (v34)
  {
    *(result + v32) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v33)
  {
    v42 = v54;
LABEL_45:
    v43 = *(v42 + 56);
LABEL_48:

    return v43();
  }

  v44 = (result + v20 + v21) & ~v21;
  if (v10 == v33)
  {
    v43 = *(v9 + 56);
    goto LABEL_48;
  }

  v45 = (v44 + v22 + v23) & ~v23;
  if (v53 == v33)
  {
    v42 = v13;
    goto LABEL_45;
  }

  v46 = (v45 + v24 + v25) & ~v25;
  if (v51 == v33)
  {
    v47 = *(v14 + 56);

    return v47(v46);
  }

  v46 = (v30 + v46) & ~v27;
  if (v17 == v33)
  {
    v47 = *(v16 + 56);

    return v47(v46);
  }

  v48 = *(v19 + 56);
  v49 = (v31 + v46) & ~v29;

  return v48(v49);
}

uint64_t sub_100082E1C(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              result = swift_checkMetadataState();
              if (v8 <= 0x3F)
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

  return result;
}

uint64_t sub_100082F34(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v53 = a3[2];
  v52 = a3[3];
  v5 = *(*(v53 - 8) + 84);
  v6 = *(v52 - 8);
  v7 = *(v6 + 84);
  v8 = a3[5];
  v50 = a3[4];
  v9 = *(v50 - 8);
  if (v7 <= v5)
  {
    v10 = *(*(v53 - 8) + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v51 = *(v9 + 84);
  if (v51 > v10)
  {
    v10 = *(v9 + 84);
  }

  v49 = *(*(v8 - 8) + 84);
  if (v49 > v10)
  {
    v10 = *(*(v8 - 8) + 84);
  }

  v11 = *(a3[6] - 8);
  if (*(v11 + 84) <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v11 + 84);
  }

  v48 = a3[7];
  v13 = *(v48 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v47 = a3[8];
  v16 = *(v47 - 8);
  v17 = *(v6 + 80);
  v54 = *(*(v52 - 8) + 64);
  v18 = *(v9 + 80);
  v19 = *(v8 - 8);
  v20 = *(v9 + 64);
  v21 = *(v19 + 80);
  v22 = *(v11 + 80);
  v23 = *(v13 + 80);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v26 = *(*(v53 - 8) + 64) + v17;
  v27 = *(v19 + 64) + v22;
  v28 = *(v11 + 64) + v23;
  v29 = *(*(v48 - 8) + 64) + v24;
  v30 = a2 >= v25;
  v31 = a2 - v25;
  if (v31 == 0 || !v30)
  {
    goto LABEL_42;
  }

  v32 = ((v29 + ((v28 + ((v27 + ((v20 + v21 + ((v54 + v18 + (v26 & ~v17)) & ~v18)) & ~v21)) & ~v22)) & ~v23)) & ~v24) + *(*(v47 - 8) + 64);
  v33 = 8 * v32;
  if (v32 > 3)
  {
    goto LABEL_21;
  }

  v35 = ((v31 + ~(-1 << v33)) >> v33) + 1;
  if (HIWORD(v35))
  {
    v34 = *(a1 + v32);
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v35 > 0xFF)
  {
    v34 = *(a1 + v32);
    if (!*(a1 + v32))
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v35 >= 2)
  {
LABEL_21:
    v34 = *(a1 + v32);
    if (!*(a1 + v32))
    {
      goto LABEL_41;
    }

LABEL_28:
    v36 = (v34 - 1) << v33;
    if (v32 > 3)
    {
      v36 = 0;
    }

    if (v32)
    {
      if (v32 <= 3)
      {
        v37 = ((v29 + ((v28 + ((v27 + ((v20 + v21 + ((v54 + v18 + (v26 & ~v17)) & ~v18)) & ~v21)) & ~v22)) & ~v23)) & ~v24) + *(*(v47 - 8) + 64);
      }

      else
      {
        v37 = 4;
      }

      if (v37 > 2)
      {
        if (v37 == 3)
        {
          v38 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v38 = *a1;
        }
      }

      else if (v37 == 1)
      {
        v38 = *a1;
      }

      else
      {
        v38 = *a1;
      }
    }

    else
    {
      v38 = 0;
    }

    return v25 + (v38 | v36) + 1;
  }

LABEL_41:
  if (!v25)
  {
    return 0;
  }

LABEL_42:
  if (v5 == v25)
  {
    v40 = *(v53 - 8);
    v39 = v53;
LABEL_44:
    v41 = *(v40 + 48);
    goto LABEL_48;
  }

  if (v7 == v25)
  {
    v39 = v52;
    v41 = *(*(v52 - 8) + 48);
    a1 = ((a1 + v26) & ~v17);
    v5 = v7;
LABEL_48:

    return v41(a1, v5, v39);
  }

  a1 = ((((a1 + v26) & ~v17) + v54 + v18) & ~v18);
  v5 = v51;
  if (v51 == v25)
  {
    v40 = *(v50 - 8);
    v39 = v50;
    goto LABEL_44;
  }

  v43 = (a1 + v20 + v21) & ~v21;
  if (v49 == v25)
  {
    v44 = *(v19 + 48);

    return v44(v43);
  }

  else
  {
    v45 = (v27 + v43) & ~v22;
    if (*(v11 + 84) != v25)
    {
      a1 = ((v28 + v45) & ~v23);
      if (v14 == v25)
      {
        v41 = *(v13 + 48);
        v5 = *(v13 + 84);
        v39 = v48;
      }

      else
      {
        v41 = *(v16 + 48);
        a1 = ((a1 + v29) & ~v24);
        v5 = *(v16 + 84);
        v39 = v47;
      }

      return v41(a1, v5, v39);
    }

    v46 = *(v11 + 48);

    return v46(v45);
  }
}

_BYTE *sub_100083518(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v51 = *(a4[2] - 8);
  v4 = *(v51 + 84);
  v5 = *(a4[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v51 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a4[5];
  v9 = *(a4[4] - 8);
  v49 = *(v9 + 84);
  if (v49 > v7)
  {
    v7 = *(v9 + 84);
  }

  v10 = *(v8 - 8);
  v47 = *(v10 + 84);
  if (v47 > v7)
  {
    v7 = *(v10 + 84);
  }

  v11 = a4[7];
  v12 = *(a4[6] - 8);
  v45 = *(v12 + 84);
  if (v45 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(a4[8] - 8);
  v18 = *(*(a4[2] - 8) + 64);
  v50 = *(a4[3] - 8);
  v19 = *(v5 + 80);
  v20 = *(v50 + 64);
  v48 = *(a4[4] - 8);
  v21 = *(v9 + 80);
  v22 = *(v48 + 64);
  v46 = *(v8 - 8);
  v23 = *(v10 + 80);
  v24 = *(v46 + 64);
  v25 = *(v12 + 80);
  v26 = *(*(a4[6] - 8) + 64);
  v27 = *(v14 + 80);
  v28 = *(*(v11 - 8) + 64);
  v29 = *(v17 + 80);
  v30 = v18 + v19;
  v31 = v26 + v27;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v17 + 64);
  if (*(v17 + 84) <= v16)
  {
    v33 = v16;
  }

  else
  {
    v33 = *(v17 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  result = a1;
  if (v33 < a2)
  {
    v36 = ~v33 + a2;
    if (v32 >= 4)
    {
      bzero(a1, v32);
      result = a1;
      *a1 = v36;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_24;
      }

      goto LABEL_57;
    }

    v37 = (v36 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v36 & ~(-1 << (8 * v32));
      bzero(a1, v32);
      result = a1;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *a1 = v40;
          if (v34 > 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *a1 = v36;
          if (v34 > 1)
          {
LABEL_24:
            if (v34 == 2)
            {
              *&result[v32] = v37;
            }

            else
            {
              *&result[v32] = v37;
            }

            return result;
          }
        }

LABEL_57:
        if (v34)
        {
          result[v32] = v37;
        }

        return result;
      }

      *a1 = v40;
      a1[2] = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_45;
    }

    *&a1[v32] = 0;
  }

  else if (v34)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return result;
  }

LABEL_45:
  if (v4 == v33)
  {
    v41 = *(v51 + 56);
    goto LABEL_65;
  }

  if (v6 == v33)
  {
    v41 = *(v50 + 56);
    result = (&a1[v30] & ~v19);
    goto LABEL_65;
  }

  result = (((&a1[v30] & ~v19) + v20 + v21) & ~v21);
  if (v49 == v33)
  {
    v42 = v48;
LABEL_64:
    v41 = *(v42 + 56);
LABEL_65:

    return v41(result);
  }

  result = (&result[v22 + v23] & ~v23);
  if (v47 == v33)
  {
    v42 = v46;
    goto LABEL_64;
  }

  v43 = &result[v24 + v25] & ~v25;
  if (v45 != v33)
  {
    result = ((v31 + v43) & ~v27);
    if (v15 == v33)
    {
      v41 = *(v14 + 56);
    }

    else
    {
      v41 = *(v17 + 56);
      result = (&result[v28 + v29] & ~v29);
    }

    return v41(result);
  }

  v44 = *(v12 + 56);

  return v44(v43);
}

uint64_t sub_100083B40(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100083B58(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100083B6C(uint64_t *a1, int a2)
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

uint64_t sub_100083BB4(uint64_t result, int a2, int a3)
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

unint64_t sub_100083C08()
{
  result = qword_100118980;
  if (!qword_100118980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118980);
  }

  return result;
}

void sub_100083C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(_UIShareInvitationModalAddParticipantController);
  isa = sub_1000C6E84().super.isa;
  v8 = [v6 initWithCurrentAddresses:isa];

  if (v8)
  {
    v9 = v8;
    v10 = sub_1000C6D44();
    [v9 setContinueActionTitle:v10];

    if (a3)
    {
      v14[4] = a3;
      v14[5] = a4;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_100083DC8;
      v14[3] = &unk_100109810;
      v11 = _Block_copy(v14);
      v12 = v9;
      sub_1000229B4(a3, a4);
    }

    else
    {
      v13 = v9;
      v11 = 0;
    }

    [v9 setCompletion:v11];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100083DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1000C6E94();
  }

  else
  {
    v5 = 0;
  }

  v4(a2, v5);
}

uint64_t sub_100083E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100083F44();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100083EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100083F44();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100083F1C(uint64_t a1)
{
  sub_100083F44();
  sub_1000C6724();
  __break(1u);
}

unint64_t sub_100083F44()
{
  result = qword_100118988;
  if (!qword_100118988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118988);
  }

  return result;
}

uint64_t sub_100083F98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100083FB0()
{
  v0 = sub_1000C5F74();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v39 - v5;
  v7 = objc_allocWithZone(ISIcon);
  v8 = sub_1000C6D44();
  v9 = [v7 initWithType:v8];

  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = [objc_allocWithZone(ISImageDescriptor) initWithSize:128.0 scale:{128.0, v12}];
  v14 = [v9 imageForDescriptor:v13];
  if (!v14)
  {

    return 0;
  }

  v15 = v14;
  v16 = v15;
  if ([v15 placeholder])
  {
    v17 = [v9 prepareImageForDescriptor:v13];
    v18 = v15;
    if (v17)
    {
      v19 = v17;

      v18 = v19;
    }

    sub_1000C5F54();
    v16 = v18;
    v20 = sub_1000C5F64();
    v21 = sub_1000C6FF4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v40 = v0;
      v23 = v22;
      *v22 = 67109120;
      *(v22 + 1) = [v16 placeholder];

      _os_log_impl(&_mh_execute_header, v20, v21, "iOS appIcon placeholder;  did prepareImage(forDescriptor:), is still placeHolder: %{BOOL}d", v23, 8u);
      v0 = v40;
    }

    else
    {

      v20 = v16;
    }

    (*(v1 + 8))(v6, v0);
  }

  sub_1000C5F54();
  v25 = v16;
  v26 = sub_1000C5F64();
  v27 = sub_1000C6FF4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v4;
    v30 = v15;
    v31 = v13;
    v32 = v9;
    v33 = v1;
    v34 = v0;
    v35 = v29;
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v36 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "iOS appIcon image: %@", v28, 0xCu);
    sub_10003BBA0(v35);
    v0 = v34;
    v1 = v33;
    v9 = v32;
    v13 = v31;
    v15 = v30;
    v4 = v40;
  }

  (*(v1 + 8))(v4, v0);
  result = [v25 CGImage];
  if (result)
  {
    v38 = result;
    v24 = [objc_allocWithZone(UIImage) initWithCGImage:result];

    return v24;
  }

  __break(1u);
  return result;
}

BOOL sub_10008440C(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = *(result + 32);
  if (v3 == 1)
  {
    if (v2 == 1)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (*(result + 33) == 1)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v5 = 0;
  }

  else
  {
    if (v2 == 1)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v5 = *(result + 33);
  }

  v6 = v3 == v5;
  v4 = 1;
  if (!v6)
  {
    v4 = 2;
  }

LABEL_11:
  v7 = *(a2 + 16);
  if (!v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(a2 + 32);
  if ((v8 & 1) == 0)
  {
    if (v7 != 1)
    {
      v10 = *(a2 + 33);
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v7 != 1)
  {
    if (*(a2 + 33) == 1)
    {
      v9 = 0;
      return v4 == v9;
    }

    v10 = 0;
LABEL_19:
    v6 = v8 == v10;
    v9 = 1;
    if (!v6)
    {
      v9 = 2;
    }

    return v4 == v9;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1000844DC(uint64_t a1)
{
  sub_100084744(319);
  if (v1 <= 0x3F)
  {
    sub_10008479C();
    if (v2 <= 0x3F)
    {
      sub_1000847EC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10008458C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
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

uint64_t sub_100084668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000FEB8(qword_100118990, &unk_1000D1890);
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

void sub_100084744(uint64_t a1)
{
  if (!qword_100118A18)
  {
    sub_1000C61F4();
    v1 = sub_1000C71C4();
    if (!v2)
    {
      atomic_store(v1, &qword_100118A18);
    }
  }
}

unint64_t sub_10008479C()
{
  result = qword_100118A20;
  if (!qword_100118A20)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100118A20);
  }

  return result;
}

void sub_1000847EC()
{
  if (!qword_100118A28)
  {
    v0 = sub_1000C6B14();
    if (!v1)
    {
      atomic_store(v0, &qword_100118A28);
    }
  }
}

uint64_t sub_100084880@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v31 = &v31 - v7;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = sub_1000C6B44();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v32 = &v31 - v12;
  sub_100010624(&qword_100117CD0, &qword_1000CFDD0);
  v13 = sub_1000C6384();
  v34 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v33 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v35 = &v31 - v16;
  sub_100085254(v2, v8);
  (*(v4 + 16))(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v10;
  (*(v4 + 32))(v18 + v17, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v19 = v32;
  sub_1000C6B24();
  v20 = v2 + *(a1 + 44);
  v21 = *v20;
  v22 = *(v20 + 8);
  v40 = v21;
  v41 = v22;
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  sub_1000C6AE4();
  WitnessTable = swift_getWitnessTable();
  v24 = v33;
  sub_1000C69E4();
  (*(v36 + 8))(v19, v11);
  v25 = sub_10008549C();
  v38 = WitnessTable;
  v39 = v25;
  swift_getWitnessTable();
  v27 = v34;
  v26 = v35;
  v28 = *(v34 + 16);
  v28(v35, v24, v13);
  v29 = *(v27 + 8);
  v29(v24, v13);
  v28(v37, v26, v13);
  return (v29)(v26, v13);
}

uint64_t sub_100084C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AsyncMainActorButton(0, a2, a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-v9];
  v11 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v11 - 8);
  v13 = &v22[-v12];
  v14 = (a1 + *(v7 + 44));
  v15 = *v14;
  v16 = *(v14 + 1);
  v22[16] = v15;
  v23 = v16;
  v22[15] = 1;
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  sub_1000C6AF4();
  v17 = sub_1000C6F44();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  (*(v8 + 16))(v10, a1, v7);
  sub_1000C6F14();
  v18 = sub_1000C6F04();
  v19 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  (*(v8 + 32))(&v20[v19], v10, v7);
  sub_1000B8860(0, 0, v13, &unk_1000D1938, v20);
}

uint64_t sub_100084EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_1000C6F14();
  v6[7] = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_100084F80, v8, v7);
}

uint64_t sub_100084F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  v6 = type metadata accessor for AsyncMainActorButton(0, v4[5], v4[6], a4);
  v4[10] = v6;
  v9 = (*(v5 + *(v6 + 36)) + **(v5 + *(v6 + 36)));
  v7 = swift_task_alloc();
  v4[11] = v7;
  *v7 = v4;
  v7[1] = sub_100085084;

  return v9();
}

uint64_t sub_100085084()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1000851A4, v3, v2);
}

uint64_t sub_1000851A4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);

  v3 = (v2 + *(v1 + 44));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 96) = 0;
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  sub_1000C6AF4();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100085254(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000852C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for AsyncMainActorButton(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1000C61F4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v7, 1, v9))
  {
    (*(v10 + 8))(v4 + v7, v9);
  }

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_100085418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for AsyncMainActorButton(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100084C9C(v9, v5, v6, v7);
}

unint64_t sub_10008549C()
{
  result = qword_100117CC8;
  if (!qword_100117CC8)
  {
    sub_100010624(&qword_100117CD0, &qword_1000CFDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117CC8);
  }

  return result;
}

uint64_t sub_100085500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for AsyncMainActorButton(0, *(v4 + 32), *(v4 + 40), a4) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 48) & ~v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();
  v9 = sub_1000C61F4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v7, 1, v9))
  {
    (*(v10 + 8))(v4 + v7, v9);
  }

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_10008565C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for AsyncMainActorButton(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_100011080;

  return sub_100084EE4(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t sub_100085798(void *a1)
{
  sub_1000C6B44();
  sub_100010624(&qword_100117CD0, &qword_1000CFDD0);
  sub_1000C6384();
  swift_getWitnessTable();
  sub_10008549C();
  return swift_getWitnessTable();
}

uint64_t sub_10008583C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100085898(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100085914@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v4 = v24;
    v5 = (v26._object >> 56) & 0xF;
    if ((v26._object & 0x2000000000000000) == 0)
    {
      v5 = v26._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v27._countAndFlagsBits = 10272;
      v27._object = 0xE200000000000000;
      sub_1000C6E04(v27);
      sub_1000C6E04(v26);

      v28._countAndFlagsBits = 41;
      v28._object = 0xE100000000000000;
      sub_1000C6E04(v28);
      v4 = v24;
    }

    else
    {
    }

    v25 = v4;
    sub_1000383C8();
    v6 = sub_1000C68D4();
    v8 = v7;
    v10 = v9;
    v21 = v11;
    KeyPath = swift_getKeyPath();
    v13 = swift_getKeyPath();
    v14 = v10 & 1;
    LOBYTE(v25) = v10 & 1;
    v23[0] = 0;
    v15 = swift_getKeyPath();
    v16 = (a3 + *(sub_10000FEB8(&qword_100118A38, &qword_1000D1AA0) + 36));
    v17 = *(sub_10000FEB8(&qword_100118A40, &qword_1000D1AA8) + 28);
    v18 = enum case for Text.TruncationMode.tail(_:);
    v19 = sub_1000C6874();
    (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
    result = swift_getKeyPath();
    *v16 = result;
    *a3 = v6;
    *(a3 + 8) = v8;
    *(a3 + 16) = v14;
    *(a3 + 17) = v25;
    *(a3 + 20) = *(&v25 + 3);
    *(a3 + 24) = v21;
    *(a3 + 32) = KeyPath;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    *(a3 + 49) = *v23;
    *(a3 + 52) = *&v23[3];
    *(a3 + 56) = v13;
    *(a3 + 64) = 1;
    *(a3 + 65) = *v22;
    *(a3 + 68) = *&v22[3];
    *(a3 + 72) = v15;
    *(a3 + 80) = 0x3FEB333333333333;
  }

  else
  {
    type metadata accessor for SharingModel(0);
    sub_100085BA0();
    result = sub_1000C63F4();
    __break(1u);
  }

  return result;
}

unint64_t sub_100085BA0()
{
  result = qword_100117158;
  if (!qword_100117158)
  {
    type metadata accessor for SharingModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117158);
  }

  return result;
}

uint64_t sub_100085C08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C6494();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100085CD8(uint64_t a1)
{
  v2 = sub_1000C6874();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000C6464();
}

unint64_t sub_100085DA8()
{
  result = qword_100118A48;
  if (!qword_100118A48)
  {
    sub_100010624(&qword_100118A38, &qword_1000D1AA0);
    sub_100085E4C();
    sub_100086038(&qword_100118AB0, &qword_100118A40, &qword_1000D1AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A48);
  }

  return result;
}

unint64_t sub_100085E4C()
{
  result = qword_100118A50;
  if (!qword_100118A50)
  {
    sub_100010624(&qword_100118A58, &qword_1000D1AE0);
    sub_100085EF0();
    sub_100086038(&qword_100118AA0, &qword_100118AA8, &qword_1000D1B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A50);
  }

  return result;
}

unint64_t sub_100085EF0()
{
  result = qword_100118A60;
  if (!qword_100118A60)
  {
    sub_100010624(&qword_100118A68, &qword_1000D1AE8);
    sub_100085F94();
    sub_100086038(&qword_100118A90, &qword_100118A98, &qword_1000D1B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A60);
  }

  return result;
}

unint64_t sub_100085F94()
{
  result = qword_100118A70;
  if (!qword_100118A70)
  {
    sub_100010624(&qword_100118A78, &qword_1000D1AF0);
    sub_100086038(&qword_100118A80, &qword_100118A88, &qword_1000D1AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A70);
  }

  return result;
}

uint64_t sub_100086038(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000860A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000C5F74();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  if (!a1)
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v40 = a1;
  v13 = a1;

  sub_1000C60A4();
  v14 = (v3 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_accountID);
  if (*(v3 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_accountID + 8))
  {
    goto LABEL_12;
  }

  v37 = v6;
  v38 = v7;
  v39 = v13;
  v15 = [v39 containerIdentifier];
  v16 = sub_1000C6D84();
  v18 = v17;

  sub_1000C6D84();
  v19 = sub_1000C6DA4();
  v21 = v20;

  if (v16 == v19 && v18 == v21)
  {

    goto LABEL_7;
  }

  v22 = sub_1000C73A4();

  if (v22)
  {
LABEL_7:
    if (swift_weakLoadStrong())
    {
      v23 = sub_100087238();
      v25 = v24;

      v26 = v38;
      if (v25)
      {
        *v14 = v23;
        v14[1] = v25;

        sub_1000C5F54();
        v27 = sub_1000C5F64();
        v28 = sub_1000C6FF4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "found accountID for URL", v29, 2u);
        }

        (*(v26 + 8))(v12, v37);
LABEL_12:
        if (!a2)
        {
          return;
        }

        goto LABEL_13;
      }

      if (a2)
      {

LABEL_13:
        swift_getKeyPath();
        swift_getKeyPath();
        v40 = a2;
        v30 = a2;

        sub_1000C60A4();
        return;
      }

      if (swift_weakLoadStrong())
      {

        v31 = sub_100016C68();
        v33 = v37;
        if (v32)
        {
          *v14 = v31;
          v14[1] = v32;

          sub_1000C5F54();
          v34 = sub_1000C5F64();
          v35 = sub_1000C6FF4();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&_mh_execute_header, v34, v35, "found accountID for an EDS account", v36, 2u);
          }

          (*(v26 + 8))(v10, v33);
        }

        else
        {
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a2)
  {
    goto LABEL_13;
  }
}

uint64_t sub_1000864B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100086528(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v2 = v1;

      sub_1000C6094();

      LODWORD(v3) = v24;
      v4 = &selRef_constraintEqualToConstant_;
      if ([v2 publicPermission] == 1)
      {
        v5 = &selRef_constraintEqualToConstant_;
        v6 = [v2 participants];
        sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
        v7 = sub_1000C6E94();

        if (v7 >> 62)
        {
          goto LABEL_47;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C72F4())
        {

          if (!i)
          {
            break;
          }

          v9 = [v2 v5[66]];
          v10 = sub_1000C6E94();

          v21 = v3;
          if (v10 >> 62)
          {
            v11 = sub_1000C72F4();
          }

          else
          {
            v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v12 = &unk_100113000;
          v22 = v2;
          if (v11)
          {
            v2 = 0;
            v3 = v10 & 0xC000000000000001;
            v4 = (v10 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v3)
              {
                v13 = sub_1000C7254();
              }

              else
              {
                if (v2 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_44;
                }

                v13 = *(v10 + 8 * v2 + 32);
              }

              v5 = v13;
              v14 = (v2 + 1);
              if (__OFADD__(v2, 1))
              {
                break;
              }

              if (-[SEL role](v13, "role") == 1 || [v5 v12[352]] != 2)
              {
              }

              else
              {
                sub_1000C7284();
                sub_1000C72B4();
                v12 = &unk_100113000;
                sub_1000C72C4();
                sub_1000C7294();
              }

              ++v2;
              if (v14 == v11)
              {
                v2 = v22;
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_44:
            __break(1u);
          }

          else
          {
LABEL_26:

            if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
            {
              v23 = sub_1000C72F4();
            }

            else
            {
              v23 = _swiftEmptyArrayStorage[2];
            }

            v16 = [v2 participants];
            v3 = sub_1000C6E94();

            if (v3 >> 62)
            {
              v17 = sub_1000C72F4();
              if (!v17)
              {
LABEL_50:

                if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
                {
                  v20 = sub_1000C72F4();
                }

                else
                {
                  v20 = _swiftEmptyArrayStorage[2];
                }

                if (v23 <= 0)
                {

                  if (v20 > 0)
                  {
                    return 1;
                  }

                  else
                  {
                    return v21;
                  }
                }

                else if (v20 < 1)
                {

                  return 2;
                }

                else
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_1000C6094();

                  if (_swiftEmptyArrayStorage == 3)
                  {
                    return 2;
                  }

                  else
                  {
                    return 3;
                  }
                }
              }
            }

            else
            {
              v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v17)
              {
                goto LABEL_50;
              }
            }

            v2 = 0;
            v4 = (v3 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v18 = sub_1000C7254();
              }

              else
              {
                if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_46;
                }

                v18 = *(v3 + 8 * v2 + 32);
              }

              v5 = v18;
              v19 = (v2 + 1);
              if (__OFADD__(v2, 1))
              {
                break;
              }

              if (-[SEL role](v18, "role") == 1 || [v5 v12[352]] != 3)
              {
              }

              else
              {
                sub_1000C7284();
                sub_1000C72B4();
                v12 = &unk_100113000;
                sub_1000C72C4();
                sub_1000C7294();
              }

              ++v2;
              if (v19 == v17)
              {
                v2 = v22;
                goto LABEL_50;
              }
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          ;
        }
      }

      v15 = [v2 v4[80]];

      if (v15 == 2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100086A5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

void sub_100086B10()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1000C5F74();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v45 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v11 = v53;
  if (v53)
  {
    v12 = [objc_allocWithZone(CKContainer) initWithContainerSetupInfo:v53];
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v12;

    v13 = v12;
    sub_1000C60A4();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v14 = v53;
    if (v53)
    {
      if (*(v3 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_accountID + 8))
      {
        v51 = v5;
        v15 = objc_allocWithZone(CKContainerOptions);

        v16 = [v15 init];
        v52 = v14;
        v17 = v16;
        v18 = objc_allocWithZone(CKAccountOverrideInfo);
        v19 = sub_1000C6D44();

        v20 = v18;
        v21 = v17;
        v22 = [v20 initWithAccountID:v19];

        [v21 setAccountOverrideInfo:v22];
        v23 = objc_allocWithZone(CKContainer);
        v24 = [v23 initWithContainerID:v52 options:v21];
        swift_getKeyPath();
        swift_getKeyPath();
        v53 = v24;

        sub_1000C60A4();
        sub_1000C5F54();

        v25 = sub_1000C5F64();
        v26 = sub_1000C6FF4();

        if (os_log_type_enabled(v25, v26))
        {
          v46 = v22;
          v47 = v2;
          v48 = v26;
          v49 = v25;
          v50 = v21;
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v55 = v28;
          v29 = v27;
          *v27 = 136315138;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000C6094();

          v30 = v53;
          v5 = v51;
          if (v53 && (v31 = [v53 options], v30, v30 = objc_msgSend(v31, "accountOverrideInfo"), v31, v30))
          {
            v32 = [v30 accountID];

            if (v32)
            {
              v30 = sub_1000C6D84();
              v34 = v33;
            }

            else
            {
              v30 = 0;
              v34 = 0;
            }

            v5 = v51;
          }

          else
          {
            v34 = 0;
          }

          v53 = v30;
          v54 = v34;
          sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
          v37 = sub_1000C6D94();
          v39 = sub_100071844(v37, v38, &v55);

          *(v29 + 1) = v39;
          v40 = v49;
          _os_log_impl(&_mh_execute_header, v49, v48, "replaceContainer container.options.accountOverrideInfo.accountID: %s", v29, 0xCu);
          sub_100010544(v28);

          (*(v5 + 8))(v10, v4);
        }

        else
        {

          v5 = v51;
          (*(v51 + 8))(v10, v4);
        }
      }

      else
      {
        v35 = [objc_allocWithZone(CKContainer) initWithContainerID:v53];
        swift_getKeyPath();
        swift_getKeyPath();
        v53 = v35;

        v36 = v35;
        sub_1000C60A4();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (v53)
    {
    }

    else
    {
      sub_1000C5F54();
      v41 = sub_1000C5F64();
      v42 = sub_1000C6FD4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "replaceContainer throwing as it didn't build a container", v43, 2u);
      }

      (*(v5 + 8))(v8, v4);
      sub_1000100B0();
      swift_allocError();
      *v44 = 0xD000000000000012;
      *(v44 + 8) = 0x80000001000DB990;
      *(v44 + 16) = xmmword_1000D1B10;
      *(v44 + 32) = 0x80000001000D8E80;
      *(v44 + 40) = 10;
      swift_willThrow();
    }
  }
}

uint64_t sub_100087238()
{
  v28 = sub_1000C5F74();
  v0 = *(v28 - 8);
  v1 = __chkstk_darwin(v28);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v27 - v4;
  v6 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1000C5D84();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100010F24(v8, &qword_100116260, &qword_1000CD940);
    sub_1000C5F54();
    v13 = sub_1000C5F64();
    v14 = sub_1000C6FD4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "can't get the user iCloud account ID without a document/folder sharing URL--may get here from SPI with no fileURL, will try userICloudEDSAccountID then fall back on signed-in account w. accountID == nil", v15, 2u);
    }

    (*(v0 + 8))(v3, v28);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_1000C5D24(v16);
    v18 = v17;
    v19 = [objc_opt_self() accountDescriptorForURL:v17 mustBeLoggedIn:1];

    if (v19)
    {
      v20 = [v19 accountIdentifier];
      if (v20)
      {
        v21 = v20;
        v22 = sub_1000C6D84();

        (*(v10 + 8))(v12, v9);
        return v22;
      }
    }

    sub_1000C5F54();
    v24 = sub_1000C5F64();
    v25 = sub_1000C6FD4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "accountID must be non-nil for document/folder sharing", v26, 2u);
    }

    (*(v0 + 8))(v5, v28);
    (*(v10 + 8))(v12, v9);
  }

  return 0;
}

uint64_t sub_10008765C()
{
  v1 = v0;
  v2 = sub_10000FEB8(&qword_100118C60, &qword_1000D1E38);
  v109 = *(v2 - 8);
  v110 = v2;
  v3 = __chkstk_darwin(v2);
  v107 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v108 = &v70 - v5;
  v103 = sub_10000FEB8(&qword_100118308, &qword_1000D0A60);
  v100 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v70 - v6;
  v104 = sub_10000FEB8(&qword_100118310, &qword_1000D0A68);
  __chkstk_darwin(v104);
  v98 = &v70 - v7;
  v93 = sub_10000FEB8(&qword_100118C68, &qword_1000D1E40);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v70 - v8;
  v95 = sub_10000FEB8(&qword_100118C70, &qword_1000D1E48);
  __chkstk_darwin(v95);
  v94 = &v70 - v9;
  v102 = sub_10000FEB8(&qword_100118C78, &qword_1000D1E50);
  v99 = *(v102 - 8);
  __chkstk_darwin(v102);
  v96 = &v70 - v10;
  v11 = sub_10000FEB8(&qword_100118C80, &unk_1000D1E58);
  v105 = *(v11 - 8);
  v106 = v11;
  __chkstk_darwin(v11);
  v101 = &v70 - v12;
  v90 = sub_10000FEB8(&qword_100116EC0, &unk_1000CC930);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v70 - v13;
  v113 = sub_10000FEB8(&qword_100118C58, &qword_1000D1DA0);
  v87 = *(v113 - 8);
  __chkstk_darwin(v113);
  v86 = &v70 - v14;
  v85 = sub_10000FEB8(&qword_100118C50, &qword_1000D1D98);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v70 - v15;
  v112 = sub_10000FEB8(&qword_100118568, &unk_1000D0BD0);
  v82 = *(v112 - 8);
  __chkstk_darwin(v112);
  v81 = &v70 - v16;
  v111 = sub_10000FEB8(&qword_100118C48, &unk_1000D1D88);
  v78 = *(v111 - 8);
  __chkstk_darwin(v111);
  v77 = &v70 - v17;
  v76 = sub_10000FEB8(&qword_100116990, &unk_1000CF2A0);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - v18;
  v73 = sub_10000FEB8(&qword_1001182B8, &qword_1000D0678);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v70 - v19;
  v70 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v20 = __chkstk_darwin(v70);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v70 - v23;
  v25 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v70 - v27;
  v29 = sub_10000FEB8(&unk_100118450, &qword_1000CC940);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v70 - v31;
  v33 = v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__ckShare;
  v114 = 0;
  sub_10000FEB8(&qword_100118B40, &qword_1000D31C0);
  sub_1000C6054();
  v34 = *(v30 + 32);
  v79 = v33;
  v80 = v29;
  v34(v33, v32, v29);
  v35 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__currentUserIsOwner;
  LOBYTE(v114) = 1;
  sub_1000C6054();
  (*(v26 + 32))(v1 + v35, v28, v25);
  v36 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__sharingURL;
  v37 = sub_1000C5D84();
  (*(*(v37 - 8) + 56))(v24, 1, 1, v37);
  sub_10000FF70(v24, v22);
  v38 = v71;
  sub_1000C6054();
  sub_100010F24(v24, &qword_100116260, &qword_1000CD940);
  (*(v72 + 32))(v1 + v36, v38, v73);
  v39 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__ckShareParticipantsCoOwnersState;
  v114 = &off_100106FD0;
  v40 = v74;
  sub_1000C6054();
  (*(v75 + 32))(v1 + v39, v40, v76);
  v41 = v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__containerID;
  v114 = 0;
  sub_10000FEB8(&qword_100118B50, &qword_1000D1B38);
  v42 = v77;
  sub_1000C6054();
  (*(v78 + 32))(v41, v42, v111);
  v43 = v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__containerSetupInfo;
  v114 = 0;
  sub_10000FEB8(&qword_100118580, &qword_1000D1B40);
  v44 = v81;
  sub_1000C6054();
  (*(v82 + 32))(v43, v44, v112);
  v45 = (v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_accountID);
  *v45 = 0;
  v45[1] = 0;
  v46 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__container;
  v114 = 0;
  sub_10000FEB8(&qword_100118B68, &qword_1000D1B60);
  v47 = v83;
  sub_1000C6054();
  v48 = v1 + v46;
  v49 = v1;
  (*(v84 + 32))(v48, v47, v85);
  v50 = v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__ckSystemSharingUIObserver;
  v114 = 0;
  v51 = sub_10000FEB8(&unk_100118B78, &qword_1000D1B68);
  v52 = v86;
  v85 = v51;
  sub_1000C6054();
  (*(v87 + 32))(v50, v52, v113);
  swift_weakInit();
  if (_swiftEmptyArrayStorage >> 62 && sub_1000C72F4())
  {
    v53 = sub_1000727E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v53 = &_swiftEmptySetSingleton;
  }

  *(v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel_store) = v53;
  swift_beginAccess();
  v54 = v88;
  sub_1000C6064();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_10001E490(&qword_100116F60, &qword_100116EC0, &unk_1000CC930, &protocol conformance descriptor for Published<A>.Publisher);

  v55 = v90;
  sub_1000C6124();

  (*(v89 + 8))(v54, v55);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v56 = v91;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100118C88, &qword_100118C68, &qword_1000D1E40, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10008AC2C();
  v57 = v93;
  sub_1000C6114();
  (*(v92 + 8))(v56, v57);
  swift_beginAccess();
  v58 = v97;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100118570, &qword_100118308, &qword_1000D0A60, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100079FFC();
  v59 = v103;
  sub_1000C6114();
  (*(v100 + 8))(v58, v59);
  sub_10001E490(&qword_100118CA0, &qword_100118C70, &qword_1000D1E48, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_10001E490(&qword_1001185A0, &qword_100118310, &qword_1000D0A68, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v60 = v96;
  sub_1000C5F84();
  v61 = swift_allocObject();
  swift_weakInit();

  v62 = swift_allocObject();
  *(v62 + 16) = sub_10008AD18;
  *(v62 + 24) = v61;
  sub_10001E490(&qword_100118CA8, &qword_100118C78, &qword_1000D1E50, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v64 = v101;
  v63 = v102;
  sub_1000C60E4();

  (*(v99 + 8))(v60, v63);
  swift_beginAccess();
  v65 = v108;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100118CB0, &qword_100118C80, &unk_1000D1E58, &protocol conformance descriptor for Publishers.Map<A, B>);
  v66 = v106;
  sub_1000C6134();
  (*(v105 + 8))(v64, v66);
  v68 = v109;
  v67 = v110;
  (*(v109 + 16))(v107, v65, v110);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  (*(v68 + 8))(v65, v67);
  return v49;
}

void sub_1000887E4(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (!v2)
    {

      return;
    }

    v3 = v2;
    v4 = [v3 currentUserParticipant];
    v5 = [v3 owner];
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
        sub_1000C7184();
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      v4 = v5;
    }

LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C60A4();
  }
}

id sub_100088924(id a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      v5 = &selRef_initWithContainerSetupInfo_;
      a1 = a2;
    }

    else
    {
      if (!a1)
      {
        goto LABEL_9;
      }

      v5 = &selRef_initWithContainerID_;
    }

    a1 = [objc_allocWithZone(CKContainer) *v5];
    if (a1)
    {
      v6 = objc_allocWithZone(CKSystemSharingUIObserver);
      v7 = a1;
      a1 = [v6 initWithContainer:v7];
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = a2;
      v10 = a2;

      sub_1000C70E4();

      swift_allocObject();
      swift_weakInit();

      sub_1000C70F4();

      return a1;
    }

LABEL_9:

    return a1;
  }

  return 0;
}

uint64_t sub_100088AFC(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  v8 = sub_1000C5F74();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v12 - 8);
  v14 = v28 - v13;
  if (a3)
  {
    sub_1000C5F54();
    swift_errorRetain();
    v15 = sub_1000C5F64();
    v16 = sub_1000C6FD4();
    sub_10008AEFC(a2, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136315138;
      v28[3] = a2;
      swift_errorRetain();
      sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
      v19 = sub_1000C6D94();
      v21 = sub_100071844(v19, v20, v28);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "ckShareModel systemSharingUIDidSaveShareBlock error: %s", v17, 0xCu);
      sub_100010544(v18);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v23 = sub_1000C6F44();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    v24 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_1000C6F14();

    sub_10008AF08(a2, 0);
    v25 = a5;
    v26 = sub_1000C6F04();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = &protocol witness table for MainActor;
    v27[4] = v24;
    v27[5] = a2;
    v27[6] = a5;

    sub_1000B8860(0, 0, v14, &unk_1000D1E88, v27);
  }
}

uint64_t sub_100088E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_1000C5F74();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v8 = sub_1000C5D84();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = sub_1000C6F14();
  v6[21] = sub_1000C6F04();
  v10 = sub_1000C6ED4();
  v6[22] = v10;
  v6[23] = v9;

  return _swift_task_switch(sub_100088FCC, v10, v9);
}

uint64_t sub_100088FCC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (!Strong)
  {
    goto LABEL_20;
  }

  v2 = swift_weakLoadStrong();
  *(v0 + 200) = v2;
  if (!v2)
  {
LABEL_19:

LABEL_20:

    goto LABEL_21;
  }

  v3 = [*(v0 + 72) recordID];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v4 = *(v0 + 40);
  if (!v4)
  {
    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v5 = [*(v0 + 40) recordID];

  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

LABEL_21:

    v15 = *(v0 + 8);

    return v15();
  }

  if (!v5)
  {
LABEL_11:

    goto LABEL_21;
  }

  sub_100010778(0, &qword_100118CB8, CKRecordID_ptr);
  v6 = sub_1000C7184();

  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v7 = [*(v0 + 72) URL];
  if (!v7)
  {
LABEL_18:

    goto LABEL_19;
  }

  v8 = *(v0 + 152);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v11 = *(v0 + 128);
  v12 = v7;
  sub_1000C5D44();

  (*(v10 + 32))(v8, v9, v11);
  *(v0 + 208) = sub_1000C6F04();
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v13[1] = sub_1000892BC;

  return sub_100064C74();
}

uint64_t sub_1000892BC()
{
  *(*v1 + 224) = v0;

  v3 = sub_1000C6ED4();
  if (v0)
  {
    v4 = sub_1000895E4;
  }

  else
  {
    v4 = sub_100089418;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100089418()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_10008947C, v1, v2);
}

uint64_t sub_10008947C(uint64_t a1)
{
  sub_1000C5F54();
  v2 = sub_1000C5F64();
  v3 = sub_1000C6FF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ckShareModel calling notifyClientShareDidChange()", v4, 2u);
  }

  v5 = v1[15];
  v6 = v1[11];
  v7 = v1[12];

  v8 = *(v7 + 8);
  v1[29] = v8;
  v8(v5, v6);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10000B5CC();
    swift_unknownObjectRelease();
  }

  v9 = swift_task_alloc();
  v1[30] = v9;
  *v9 = v1;
  v9[1] = sub_1000898CC;
  v10 = v1[19];
  v11 = v1[10];

  return sub_1000658E8(v10, v11);
}

uint64_t sub_1000895E4()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_100089648, v1, v2);
}

uint64_t sub_100089648()
{
  v24 = v0;

  sub_1000C5F54();
  swift_errorRetain();
  v1 = sub_1000C5F64();
  v2 = sub_1000C6FD4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[28];
    v4 = v0[17];
    v21 = v0[16];
    v22 = v0[19];
    v5 = v0[12];
    v19 = v0[11];
    v20 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    v0[6] = v3;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v8 = sub_1000C6D94();
    v10 = sub_100071844(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "ckShareModel systemSharingUIDidSaveShareBlock failed to refetch share: %s", v6, 0xCu);
    sub_100010544(v7);

    (*(v5 + 8))(v20, v19);
    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v11 = v0[19];
    v12 = v0[16];
    v13 = v0[17];
    v14 = v0[14];
    v15 = v0[11];
    v16 = v0[12];

    (*(v16 + 8))(v14, v15);
    (*(v13 + 8))(v11, v12);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000898CC()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_100089ADC;
  }

  else
  {
    v5 = sub_100089A08;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100089A08()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100089ADC()
{
  v24 = v0;

  sub_1000C5F54();
  swift_errorRetain();
  v1 = sub_1000C5F64();
  v2 = sub_1000C6FD4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[31];
    v21 = v0[19];
    v4 = v0[17];
    v18 = v0[29];
    v19 = v0[16];
    v16 = v0[11];
    v17 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    v0[7] = v3;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v7 = sub_1000C6D94();
    v9 = sub_100071844(v7, v8, &v23);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "ckShareModel systemSharingUIDidSaveShareBlock failed to fetch share metadata: %s", v5, 0xCu);
    sub_100010544(v6);

    v18(v17, v16);
    (*(v4 + 8))(v21, v19);
  }

  else
  {
    v10 = v0[29];
    v11 = v0[17];
    v20 = v0[16];
    v22 = v0[19];
    v12 = v0[13];
    v13 = v0[11];

    v10(v12, v13);
    (*(v11 + 8))(v22, v20);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100089D74(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v7 - 8);
  v9 = v36 - v8;
  v10 = sub_1000C5F74();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v36 - v15;
  if (a3)
  {
    sub_1000C5F54();
    swift_errorRetain();
    v17 = sub_1000C5F64();
    v18 = sub_1000C6FD4();
    sub_10008ADE8(a2, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36[0] = v20;
      *v19 = 136315138;
      v36[3] = a2;
      swift_errorRetain();
      sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
      v21 = sub_1000C6D94();
      v23 = sub_100071844(v21, v22, v36);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "ckShareModel systemSharingUIDidStopSharingBlock error: %s", v19, 0xCu);
      sub_100010544(v20);
    }

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    sub_1000C5F54();
    v25 = a1;
    v26 = sub_1000C5F64();
    v27 = sub_1000C6FF4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "ckShareModel systemSharingUIDidStopSharingBlock stopped sharing: %@", v28, 0xCu);
      sub_100010F24(v29, &qword_100117080, &unk_1000CC350);
    }

    (*(v11 + 8))(v16, v10);
    v31 = sub_1000C6F44();
    (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
    v32 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_1000C6F14();
    v33 = v25;

    v34 = sub_1000C6F04();
    v35 = swift_allocObject();
    v35[2] = v34;
    v35[3] = &protocol witness table for MainActor;
    v35[4] = v32;
    v35[5] = v33;

    sub_1000B8860(0, 0, v9, &unk_1000D1E70, v35);
  }
}

uint64_t sub_10008A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1000C5F74();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_1000C6F14();
  v5[11] = sub_1000C6F04();
  v8 = sub_1000C6ED4();

  return _swift_task_switch(sub_10008A2B8, v8, v7);
}

uint64_t sub_10008A2B8()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v1 = *(v0 + 40);
      if (v1)
      {
        v2 = [*(v0 + 40) recordID];

        if (v2)
        {
          v3 = *(v0 + 56);
          sub_100010778(0, &qword_100118CB8, CKRecordID_ptr);
          v4 = v3;
          v5 = sub_1000C7184();

          if (v5)
          {
            sub_1000C5F54();
            v6 = sub_1000C5F64();
            v7 = sub_1000C6FF4();
            if (os_log_type_enabled(v6, v7))
            {
              v8 = swift_slowAlloc();
              *v8 = 0;
              _os_log_impl(&_mh_execute_header, v6, v7, "ckShareModel systemSharingUIDidStopSharingBlock dismissing", v8, 2u);
            }

            v10 = *(v0 + 72);
            v9 = *(v0 + 80);
            v11 = *(v0 + 64);

            (*(v10 + 8))(v9, v11);
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_10000816C();
              v12 = sub_1000077D8();
              if (v12)
              {
                [v12 _shareWasMadePrivate];
                swift_unknownObjectRelease();
              }

              v13 = sub_1000077D8();
              if (v13)
              {
                [v13 _dismissViewControllerWithError:0];
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                goto LABEL_16;
              }

              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }

LABEL_16:

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10008A544()
{
  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__ckShare;
  v2 = sub_10000FEB8(&unk_100118450, &qword_1000CC940);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__currentUserIsOwner;
  v4 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__sharingURL;
  v6 = sub_10000FEB8(&qword_1001182B8, &qword_1000D0678);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__ckShareParticipantsCoOwnersState;
  v8 = sub_10000FEB8(&qword_100116990, &unk_1000CF2A0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__containerID;
  v10 = sub_10000FEB8(&qword_100118C48, &unk_1000D1D88);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__containerSetupInfo;
  v12 = sub_10000FEB8(&qword_100118568, &unk_1000D0BD0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  v13 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__container;
  v14 = sub_10000FEB8(&qword_100118C50, &qword_1000D1D98);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12CKShareModel__ckSystemSharingUIObserver;
  v16 = sub_10000FEB8(&qword_100118C58, &qword_1000D1DA0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  swift_weakDestroy();

  return v0;
}

uint64_t sub_10008A7F8()
{
  sub_10008A544();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CKShareModel(uint64_t a1)
{
  result = qword_100118B28;
  if (!qword_100118B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008A8A4(uint64_t a1)
{
  sub_10002F0A0(319, &qword_100118B38, &qword_100118B40, &qword_1000D31C0);
  if (v1 <= 0x3F)
  {
    sub_10001D1A8(319, &qword_100117460, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_10002F0A0(319, &qword_100118018, &qword_100116260, &qword_1000CD940);
      if (v3 <= 0x3F)
      {
        sub_10001D1A8(319, &qword_1001168A0, &type metadata for TriStateBool);
        if (v4 <= 0x3F)
        {
          sub_10002F0A0(319, &qword_100118B48, &qword_100118B50, &qword_1000D1B38);
          if (v5 <= 0x3F)
          {
            sub_10002F0A0(319, &qword_100118B58, &qword_100118580, &qword_1000D1B40);
            if (v6 <= 0x3F)
            {
              sub_10002F0A0(319, &qword_100118B60, &qword_100118B68, &qword_1000D1B60);
              if (v7 <= 0x3F)
              {
                sub_10002F0A0(319, &qword_100118B70, &unk_100118B78, &qword_1000D1B68);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10008ABEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10008AC2C()
{
  result = qword_100118C90;
  if (!qword_100118C90)
  {
    sub_100010624(&qword_100118B50, &qword_1000D1B38);
    sub_10008ACC8(&qword_100118C98, &qword_100118048, CKContainerID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C90);
  }

  return result;
}

uint64_t sub_10008ACC8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010778(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008AD20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008AD58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10008AD90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008ADE8(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10008ADF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008AE3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_10008A1C4(a1, v4, v5, v7, v6);
}

void sub_10008AEFC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_10008AF08(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10008AF14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008AF64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100011080;

  return sub_100088E50(a1, v4, v5, v6, v7, v8);
}

id sub_10008B0F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComposeMessageView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10008B164(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10008B188@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = type metadata accessor for ComposeMessageView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing18ComposeMessageView11Coordinator_completion];
  *v7 = v4;
  v7[1] = v3;
  sub_1000229B4(v4, v3);
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10008B208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008B808();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10008B26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008B808();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10008B2D0(uint64_t a1)
{
  sub_10008B808();
  sub_1000C6724();
  __break(1u);
}

uint64_t sub_10008B2F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000FEB8(&qword_100118D78, &qword_1000D2050);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v28 = sub_1000C6A84();
  v5 = sub_1000C67F4();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v27 = sub_1000C6824();
  sub_100010F24(v4, &qword_100118D78, &qword_1000D2050);
  KeyPath = swift_getKeyPath();
  v25 = sub_1000C6A14();
  v24 = swift_getKeyPath();
  sub_1000C65D4();
  v7 = sub_1000C68C4();
  v9 = v8;
  v11 = v10;
  v6(v4, 1, 1, v5);
  sub_1000C6824();
  sub_100010F24(v4, &qword_100118D78, &qword_1000D2050);
  v12 = sub_1000C68B4();
  v14 = v13;
  LOBYTE(v6) = v15;
  v17 = v16;

  sub_1000500D8(v7, v9, v11 & 1);

  LOBYTE(v7) = v6 & 1;
  v29 = v6 & 1;
  v18 = v27;
  v20 = v25;
  v19 = KeyPath;
  *a1 = v28;
  *(a1 + 8) = v19;
  v21 = v24;
  *(a1 + 16) = v18;
  *(a1 + 24) = v21;
  *(a1 + 32) = v20;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;
  *(a1 + 56) = v7;
  *(a1 + 64) = v17;

  sub_100050DE0(v12, v14, v7);

  sub_1000500D8(v12, v14, v7);
}

double sub_10008B5E8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C65F4();
  v14 = 1;
  sub_10008B2F8(&v8);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v15 = v8;
  v20[1] = v9;
  v20[2] = v10;
  v20[3] = v11;
  v21 = v12;
  v20[0] = v8;
  sub_10008B9C4(&v15, v7);
  sub_100010F24(v20, &qword_100118D70, &qword_1000D2048);
  *&v13[7] = v15;
  *&v13[71] = v19;
  *&v13[55] = v18;
  *&v13[39] = v17;
  *&v13[23] = v16;
  v3 = *v13;
  *(a1 + 33) = *&v13[16];
  v4 = *&v13[48];
  *(a1 + 49) = *&v13[32];
  *(a1 + 65) = v4;
  result = *&v13[63];
  *(a1 + 80) = *&v13[63];
  v6 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 17) = v3;
  return result;
}

uint64_t sub_10008B6E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10008B744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10008B7B4()
{
  result = qword_100118D50;
  if (!qword_100118D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118D50);
  }

  return result;
}

unint64_t sub_10008B808()
{
  result = qword_100118D58;
  if (!qword_100118D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118D58);
  }

  return result;
}

id sub_10008B85C(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4)
{
  if ([objc_opt_self() canSendText])
  {
    v6 = [objc_allocWithZone(MFMessageComposeViewController) init];
    sub_10000FEB8(&qword_100118D68, &qword_1000D1FD8);
    sub_1000C6754();
    [v6 setMessageComposeDelegate:v10];

    if (a2)
    {
      v7.super.isa = sub_1000C6E84().super.isa;
    }

    else
    {
      v7.super.isa = 0;
    }

    [v6 setRecipients:v7.super.isa];

    if (a4)
    {
      a4 = sub_1000C6D44();
    }

    [v6 setBody:a4];

    return v6;
  }

  else
  {
    v8 = objc_allocWithZone(sub_10000FEB8(&qword_100118D60, &qword_1000D1FD0));
    return sub_1000C6614();
  }
}

uint64_t sub_10008B9C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100118D70, &qword_1000D2048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008BA48()
{
  result = qword_100118D80;
  if (!qword_100118D80)
  {
    sub_100010624(&qword_100118D88, &qword_1000D20B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118D80);
  }

  return result;
}

uint64_t sub_10008BAB0()
{
  v1 = [v0 allowedParticipantAccessOptions];
  if (v1 == 3)
  {
    return 7958081;
  }

  if (v1 == 2)
  {
    return 0x6E65697069636552;
  }

  if (v1 == 1)
  {
    return 0xD000000000000010;
  }

  sub_1000C7244(17);

  strcpy(v3, "Unknown (raw: ");
  [v0 allowedParticipantAccessOptions];
  v4._countAndFlagsBits = sub_1000C7374();
  sub_1000C6E04(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1000C6E04(v5);
  return v3[0];
}

uint64_t sub_10008BBE8()
{
  v1 = [v0 allowedParticipantPermissionOptions];
  if (v1 == 1)
  {
    return 0x6C6E4F2064616552;
  }

  if (v1 == 3)
  {
    return 7958081;
  }

  if (v1 == 2)
  {
    return 0x6972572F64616552;
  }

  sub_1000C7244(17);

  strcpy(v3, "Unknown (raw: ");
  [v0 allowedParticipantPermissionOptions];
  v4._countAndFlagsBits = sub_1000C7374();
  sub_1000C6E04(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1000C6E04(v5);
  return v3[0];
}

uint64_t sub_10008BD18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10008BD60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008BDC8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  type metadata accessor for GlobalPermissionViewModel(0);
  sub_10008D374();
  sub_1000C6344();
  swift_getKeyPath();
  sub_1000C6354();

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  sub_1000C6344();
  swift_getKeyPath();
  sub_1000C6354();

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  sub_1000C6F14();

  v4 = sub_1000C6F04();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = a2;
  v6 = swift_allocObject();
  swift_weakInit();

  v7 = sub_1000C6F04();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  sub_1000C6BC4();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_1000C6344();
  swift_getKeyPath();
  sub_1000C6354();

  sub_1000C6BD4();
  sub_1000C6BD4();
  sub_1000C6344();
  swift_getKeyPath();
  sub_1000C6354();

  sub_1000C6334();
  sub_10000FEB8(&qword_100118D90, &qword_1000D2358);
  sub_100010624(&qword_100118D98, &qword_1000D2360);
  sub_10008D558();
  swift_getOpaqueTypeConformance2();
  sub_10008D63C();
  return sub_1000C6324();
}

uint64_t sub_10008C518(char a1, uint64_t a2, uint64_t a3)
{
  sub_1000C6F14();

  v4 = sub_1000C6F04();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = a3;

  v6 = sub_1000C6F04();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a3;
  sub_1000C6BC4();
  sub_10000FEB8(&qword_100117138, &unk_1000CE1D0);
  sub_1000C6B94();
}

uint64_t sub_10008C650@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_10008C6D0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10008C744(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_1000C6F24();
  v9 = sub_1000C6F44();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_1000C6F14();

  v10 = sub_1000C6F04();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 48) = a1;
  sub_1000B8860(0, 0, v8, &unk_1000D2420, v11);
}

uint64_t sub_10008C884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 16) = a5;
  *(v6 + 24) = sub_1000C6F14();
  *(v6 + 32) = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_10008C924, v8, v7);
}

uint64_t sub_10008C924(uint64_t a1)
{
  v1[7] = sub_1000C6F04();
  v3 = sub_1000C6ED4();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_10008C9B0, v3, v2);
}

uint64_t sub_10008C9B0()
{
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 16) + 16);
  *(v0 + 80) = *(v2 + 16);

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_10008CA7C;

  return sub_100019FA8(v1 + 1, v2, 1, 1);
}

uint64_t sub_10008CA7C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_10008CB98;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_10003E4A4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10008CB98()
{
  v1 = v0[12];

  sub_1000401D8(v1, 0xD000000000000029, 0x80000001000DBA70);

  v2 = v0[5];
  v3 = v0[6];

  return _swift_task_switch(sub_10003E5B0, v2, v3);
}

uint64_t sub_10008CC40(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v5 - 8);
  v7 = &v12[-v6];
  swift_getKeyPath();
  swift_getKeyPath();
  v12[15] = a1;

  sub_1000C60A4();
  sub_1000C6F24();
  v8 = sub_1000C6F44();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_1000C6F14();

  v9 = sub_1000C6F04();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  *(v10 + 32) = a1;
  *(v10 + 40) = a3;
  sub_1000B8860(0, 0, v7, &unk_1000D2410, v10);
}

uint64_t sub_10008CDC0(char a1, uint64_t a2, uint64_t a3)
{
  sub_1000C6F14();

  v4 = sub_1000C6F04();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = a3;
  v6 = swift_allocObject();
  swift_weakInit();

  v7 = sub_1000C6F04();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  sub_1000C6BC4();
  sub_10000FEB8(&qword_100117148, &qword_1000CE1E0);
  sub_1000C6B94();
}

uint64_t sub_10008CF50(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000C6604();
  sub_10008D0F4(v13);
  *&v12[7] = v13[0];
  *&v12[23] = v13[1];
  *&v12[39] = v13[2];
  *&v12[55] = v13[3];
  v3 = [objc_opt_self() labelColor];
  v4 = sub_1000C6A64();
  v9 = v2;
  v10[0] = 1;
  *&v10[17] = *&v12[16];
  *&v10[33] = *&v12[32];
  *&v10[49] = *&v12[48];
  *&v10[1] = *v12;
  *&v10[64] = *&v12[63];
  *&v10[72] = swift_getKeyPath();
  v11 = v4;
  if (!swift_unknownObjectWeakLoadStrong() || (v5 = sub_10000B7A8(), swift_unknownObjectRelease(), !v5))
  {
    [objc_allocWithZone(UIImage) init];
  }

  sub_1000C6A74();
  sub_10000FEB8(&qword_100118D98, &qword_1000D2360);
  sub_10008D558();
  sub_1000C6914();

  v7[4] = *&v10[48];
  v7[5] = *&v10[64];
  v8 = v11;
  v7[0] = v9;
  v7[1] = *v10;
  v7[2] = *&v10[16];
  v7[3] = *&v10[32];
  return sub_10008D698(v7);
}

uint64_t sub_10008D0F4@<X0>(uint64_t a2@<X8>)
{
  sub_1000C65D4();
  v3 = sub_1000C68C4();
  v5 = v4;
  v7 = v6;
  v8 = sub_1000C68A4();
  v30 = v9;
  v31 = v8;
  v29 = v10;
  v32 = v11;
  sub_1000500D8(v3, v5, v7 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  sub_1000383C8();
  v12 = sub_1000C68D4();
  v14 = v13;
  LOBYTE(v5) = v15;
  sub_1000C67D4();
  v16 = sub_1000C68B4();
  v18 = v17;
  v20 = v19;

  sub_1000500D8(v12, v14, v5 & 1);

  sub_1000C6A54();
  v21 = sub_1000C6884();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_1000500D8(v16, v18, v20 & 1);

  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v32;
  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  *(a2 + 48) = v25 & 1;
  *(a2 + 56) = v27;
  sub_100050DE0(v31, v30, v29 & 1);

  sub_100050DE0(v21, v23, v25 & 1);

  sub_1000500D8(v21, v23, v25 & 1);

  sub_1000500D8(v31, v30, v29 & 1);
}

unint64_t sub_10008D374()
{
  result = qword_100117130;
  if (!qword_100117130)
  {
    type metadata accessor for GlobalPermissionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117130);
  }

  return result;
}

uint64_t sub_10008D41C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008D4A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10008D558()
{
  result = qword_100118DA0;
  if (!qword_100118DA0)
  {
    sub_100010624(&qword_100118D98, &qword_1000D2360);
    sub_10001E490(&qword_100118DA8, &qword_100118DB0, &qword_1000D2368, &protocol conformance descriptor for VStack<A>);
    sub_10001E490(&qword_100117D30, &qword_100117D38, &qword_1000D2370, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118DA0);
  }

  return result;
}

unint64_t sub_10008D63C()
{
  result = qword_100118DB8;
  if (!qword_100118DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118DB8);
  }

  return result;
}

uint64_t sub_10008D698(uint64_t a1)
{
  v2 = sub_10000FEB8(&qword_100118D98, &qword_1000D2360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008D710(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011080;

  return sub_10004077C(a1, v4, v5, v7, v6);
}

uint64_t sub_10008D7DC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10008D828(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100017CBC;

  return sub_10008C884(a1, v4, v5, v6, v7, v8);
}

void sub_10008D974(uint64_t *a2@<X8>)
{
  v3 = sub_1000C6A34();
  sub_1000C62F4();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
}

double sub_10008D9D0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10008D9E4()
{
  type metadata accessor for NetworkMonitor(0);
  swift_allocObject();
  return sub_10008F180(1);
}

uint64_t sub_10008DA20()
{
  type metadata accessor for ActivitiesModelData(0);
  v0 = swift_allocObject();
  type metadata accessor for ActivityType(0);
  v1 = UIActivityTypeMail;
  sub_1000C6054();
  return v0;
}

uint64_t sub_10008DAA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_10000FEB8(&qword_100118DE0, &qword_1000D2678);
  __chkstk_darwin(v3);
  v5 = (v57 - v4);
  v6 = sub_10000FEB8(&qword_100118DE8, &qword_1000D2680);
  __chkstk_darwin(v6);
  v65 = v57 - v7;
  v72 = sub_10000FEB8(&qword_100118DF0, &qword_1000D2688);
  __chkstk_darwin(v72);
  v74 = v57 - v8;
  v69 = sub_10000FEB8(&qword_100118DF8, &qword_1000D2690);
  __chkstk_darwin(v69);
  v68 = (v57 - v9);
  v73 = sub_10000FEB8(&qword_100118E00, &qword_1000D2698);
  __chkstk_darwin(v73);
  v71 = v57 - v10;
  v70 = type metadata accessor for PeopleView(0);
  __chkstk_darwin(v70);
  v66 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000FEB8(&qword_100118E08, &qword_1000D26A0);
  __chkstk_darwin(v12);
  v75 = v57 - v13;
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 16);
  type metadata accessor for NetworkMonitor(0);
  sub_10008E930(&qword_100118E10, type metadata accessor for NetworkMonitor, &unk_1000D284C);
  v63 = v15;
  v64 = v14;
  v62 = v16;
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (v78)
  {
    type metadata accessor for SharingModel(0);
    sub_10008E930(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
    *v5 = sub_1000C6404();
    v5[1] = v17;
    swift_storeEnumTagMultiPayload();
    sub_10008E7E8();
    sub_10008EA84();
    return sub_1000C6624();
  }

  v59 = v12;
  v60 = v6;
  v61 = v3;
  v67 = v5;
  v19 = a1[3];
  v20 = a1[4];
  v21 = *(a1 + 40);
  type metadata accessor for SharingModel(0);
  sub_10008E930(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v22 = v78;
  v58 = v20;
  v57[1] = v21;
  v23 = *(sub_1000C6224() + 16);

  if (*(v23 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();
  }

  v24 = v67;
  if (v22 <= 1)
  {
    if (!v22)
    {
      v25 = v65;
      sub_1000C6274();
      sub_1000C6C74();
      v26 = v25 + *(v60 + 36);
      __asm { FMOV            V2.2D, #1.0 }

      *v26 = _Q2;
      *(v26 + 16) = v32;
      *(v26 + 24) = v33;
      v34 = &qword_100118DE8;
      v35 = &qword_1000D2680;
      sub_100017574(v25, v74, &qword_100118DE8, &qword_1000D2680);
      swift_storeEnumTagMultiPayload();
      sub_10008E874();
      sub_10008E9CC();
      v36 = v75;
      sub_1000C6624();
      v37 = v25;
LABEL_11:
      sub_100010F24(v37, v34, v35);
      goto LABEL_12;
    }

LABEL_10:
    sub_10009619C(0, &v78);
    v50 = v87;
    v51 = v68;
    v68[8] = v86;
    v51[9] = v50;
    v51[10] = v88;
    v52 = v83;
    v51[4] = v82;
    v51[5] = v52;
    v53 = v85;
    v51[6] = v84;
    v51[7] = v53;
    v54 = v79;
    *v51 = v78;
    v51[1] = v54;
    v55 = v81;
    v51[2] = v80;
    v51[3] = v55;
    swift_storeEnumTagMultiPayload();
    sub_10008EAE8(&v78, v77);
    sub_10008E930(&qword_100118E28, type metadata accessor for PeopleView, &unk_1000D3FDC);
    sub_10008E978();
    v56 = v71;
    sub_1000C6624();
    v34 = &qword_100118E00;
    v35 = &qword_1000D2698;
    sub_100017574(v56, v74, &qword_100118E00, &qword_1000D2698);
    swift_storeEnumTagMultiPayload();
    sub_10008E874();
    sub_10008E9CC();
    v36 = v75;
    sub_1000C6624();
    sub_10008EB44(&v78);
    v37 = v56;
    goto LABEL_11;
  }

  if (v22 != 2)
  {
    goto LABEL_10;
  }

  v78 = *(a1 + 3);
  LOBYTE(v79) = *(a1 + 64);
  v38 = swift_allocObject();
  v39 = *(a1 + 3);
  *(v38 + 48) = *(a1 + 2);
  *(v38 + 64) = v39;
  *(v38 + 80) = *(a1 + 64);
  v40 = *(a1 + 1);
  *(v38 + 16) = *a1;
  *(v38 + 32) = v40;
  v41 = swift_allocObject();
  v42 = *(a1 + 3);
  *(v41 + 48) = *(a1 + 2);
  *(v41 + 64) = v42;
  *(v41 + 80) = *(a1 + 64);
  v43 = *(a1 + 1);
  *(v41 + 16) = *a1;
  *(v41 + 32) = v43;
  v45 = v63;
  v44 = v64;
  sub_10008EC78(v64, v63);
  v46 = v58;
  sub_10008EC78(v19, v58);
  sub_100017574(&v78, v77, &qword_100118E58, &qword_1000D2788);
  sub_10008EC78(v44, v45);
  sub_10008EC78(v19, v46);
  sub_100017574(&v78, v77, &qword_100118E58, &qword_1000D2788);
  v47 = v66;
  v48 = v41;
  v24 = v67;
  sub_1000A38E0(sub_10008EB9C, v38, sub_10008EC34, v48, v66);
  sub_10008EC80(v47, v68);
  swift_storeEnumTagMultiPayload();
  sub_10008E930(&qword_100118E28, type metadata accessor for PeopleView, &unk_1000D3FDC);
  sub_10008E978();
  v49 = v71;
  sub_1000C6624();
  sub_100017574(v49, v74, &qword_100118E00, &qword_1000D2698);
  swift_storeEnumTagMultiPayload();
  sub_10008E874();
  sub_10008E9CC();
  v36 = v75;
  sub_1000C6624();
  sub_100010F24(v49, &qword_100118E00, &qword_1000D2698);
  sub_10008ECE4(v47);
LABEL_12:
  sub_100017574(v36, v24, &qword_100118E08, &qword_1000D26A0);
  swift_storeEnumTagMultiPayload();
  sub_10008E7E8();
  sub_10008EA84();
  sub_1000C6624();
  return sub_100010F24(v36, &qword_100118E08, &qword_1000D26A0);
}

uint64_t sub_10008E480(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  type metadata accessor for SharingModel(0);
  sub_10008E930(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
  v5 = sub_1000C6224();
  a2(0);
  swift_allocObject();
  v6 = a3(v5);

  return v6;
}

uint64_t sub_10008E550@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v3;
  v13 = *(v1 + 64);
  v4 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v4;
  sub_10008DAA0(v12, a1);
  type metadata accessor for SharingModel(0);
  sub_10008E930(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
  v5 = sub_1000C6224();
  v6 = sub_1000C6024();
  v7 = (a1 + *(sub_10000FEB8(&qword_100118DD0, &qword_1000D2668) + 36));
  *v7 = v6;
  v7[1] = v5;
  type metadata accessor for ActivitiesModelData(0);
  sub_10008E930(&qword_100116750, type metadata accessor for ActivitiesModelData, &unk_1000CC440);
  v8 = sub_1000C6224();
  v9 = sub_1000C6024();
  result = sub_10000FEB8(&qword_100118DD8, &qword_1000D2670);
  v11 = (a1 + *(result + 36));
  *v11 = v9;
  v11[1] = v8;
  return result;
}

__n128 sub_10008E6F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10008E714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10008E75C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_10008E7E8()
{
  result = qword_100118E18;
  if (!qword_100118E18)
  {
    sub_100010624(&qword_100118E08, &qword_1000D26A0);
    sub_10008E874();
    sub_10008E9CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E18);
  }

  return result;
}

unint64_t sub_10008E874()
{
  result = qword_100118E20;
  if (!qword_100118E20)
  {
    sub_100010624(&qword_100118E00, &qword_1000D2698);
    sub_10008E930(&qword_100118E28, type metadata accessor for PeopleView, &unk_1000D3FDC);
    sub_10008E978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E20);
  }

  return result;
}

uint64_t sub_10008E930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10008E978()
{
  result = qword_100118E30;
  if (!qword_100118E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E30);
  }

  return result;
}

unint64_t sub_10008E9CC()
{
  result = qword_100118E38;
  if (!qword_100118E38)
  {
    sub_100010624(&qword_100118DE8, &qword_1000D2680);
    sub_10001E490(&qword_100118E40, &qword_100118E48, &qword_1000D26F0, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E38);
  }

  return result;
}

unint64_t sub_10008EA84()
{
  result = qword_100118E50;
  if (!qword_100118E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E50);
  }

  return result;
}

uint64_t sub_10008EBE0()
{
  sub_100050264(v0[2], v0[3]);
  sub_100050264(v0[5], v0[6]);
  sub_100050264(v0[8], v0[9]);

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_10008EC80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008ECE4(uint64_t a1)
{
  v2 = type metadata accessor for PeopleView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10008ED44()
{
  result = qword_100118E60;
  if (!qword_100118E60)
  {
    sub_100010624(&qword_100118DD8, &qword_1000D2670);
    sub_10008EDFC();
    sub_10001E490(&qword_100118EA0, &qword_100118EA8, &qword_1000D27A8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E60);
  }

  return result;
}

unint64_t sub_10008EDFC()
{
  result = qword_100118E68;
  if (!qword_100118E68)
  {
    sub_100010624(&qword_100118DD0, &qword_1000D2668);
    sub_10008EEB4();
    sub_10001E490(&qword_100118E90, &qword_100118E98, &qword_1000D27A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E68);
  }

  return result;
}

unint64_t sub_10008EEB4()
{
  result = qword_100118E70;
  if (!qword_100118E70)
  {
    sub_100010624(&qword_100118E78, &qword_1000D2790);
    sub_10008EF38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E70);
  }

  return result;
}

unint64_t sub_10008EF38()
{
  result = qword_100118E80;
  if (!qword_100118E80)
  {
    sub_100010624(&qword_100118E88, &qword_1000D2798);
    sub_10008E7E8();
    sub_10008EA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118E80);
  }

  return result;
}

uint64_t sub_10008EFD4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10008F018()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_10008F08C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}