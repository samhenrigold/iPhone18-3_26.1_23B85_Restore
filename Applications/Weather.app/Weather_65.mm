void sub_1006EA538(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  v16 = 8;
  if (v15 > 8)
  {
    v16 = v15;
  }

  v17 = *(v12 + 80);
  v18 = ((v17 + ((v16 + 10) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v17) + *(v12 + 64);
  v19 = 8 * v18;
  if (a3 <= v14)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v23 = ((a3 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v14 >= a2)
  {
    switch(v20)
    {
      case 1:
        a1[v18] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v18] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_49:
        __break(1u);
        break;
      case 4:
        *&a1[v18] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v26 = &a1[v16 + 10] & 0xFFFFFFFFFFFFFFF8;
          if ((v13 & 0x80000000) != 0)
          {

            sub_10001B350((v26 + v17 + 40) & ~v17, a2, v13, v11);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(v26 + 8) = 0u;
            *(v26 + 24) = 0u;
            *v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v26 + 24) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v14 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> v19) + 1;
      if (v18)
      {
        v25 = v21 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v18 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
    }

    switch(v20)
    {
      case 1:
        a1[v18] = v22;
        break;
      case 2:
        *&a1[v18] = v22;
        break;
      case 3:
        goto LABEL_49;
      case 4:
        *&a1[v18] = v22;
        break;
      default:
        return;
    }
  }
}

double sub_1006EA810(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2548 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2558 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2550 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2540 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2538 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_1006EA97C(char a1, char a2, uint64_t a3)
{
  v80 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v77 = &v73 - v10;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for LocationComponentViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v73 - v32;
  __chkstk_darwin(v34);
  v36 = &v73 - v35;
  sub_1006EA810(a1, a2);
  v38 = v37;
  v39 = OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v39, v14, &qword_100CA5008, &unk_100A2F7B0);
  v40 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v14, 1, v40) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v41], v24, v42);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v43);
    sub_100566A5C(v38, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v46);
      v44 = 0;
      v45 = v80;
      v47 = &v33[*(v80 + 20)];
      v48 = v82[1];
      *v47 = v82[0];
      *(v47 + 1) = v48;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v44 = 1;
  v45 = v80;
LABEL_7:
  sub_10001B350(v33, v44, 1, v45);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v38, v84);
  sub_100924AFC(v3, v84, v81);
  sub_10031694C(*(a3 + 16) + *(v40 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v38, v85);
  v49 = v75;
  if (v86 & 1) != 0 || (sub_100011474(), v50 = v77, sub_1001B6FB0(v20, v77, v51), v52 = (v50 + *(v45 + 20)), v53 = v85[1], *v52 = v85[0], v52[1] = v53, sub_100035AD0(v36, v49, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v56 = v74, sub_10031694C(v54 + v55, v74, v57), sub_100566AB0(v38, v87), v58 = v78, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v56, v58, v59);
    v60 = (v58 + *(v45 + 20));
    v61 = v87[1];
    *v60 = v87[0];
    v60[1] = v61;
    sub_10001BD64();
    v64 = v76;
    sub_10031694C(v62 + v63, v76, v65);
    sub_100566AE8(v38, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v66 = v64;
      v67 = v79;
      sub_1001B6FB0(v66, v79, v68);
      v69 = (v67 + *(v45 + 20));
      v70 = v89[1];
      *v69 = v89[0];
      v69[1] = v70;
      v71 = sub_100924C14(v81, v50, v49, v58, v67);
      sub_1000180EC(v36, &qword_100CAC7F8, &qword_100A65EA0);
      return v71;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1006EB000(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v122 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v126 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_airQuality, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v123 = (v13 + 2 * v14);
    v124 = v14;
    v30 = v14;
    v31 = v15;
    v32 = swift_allocObject();
    v33 = sub_10001361C(v32, xmmword_100A2D320) + v13;
    v34 = a1;
    v35 = *(a1 + 16);
    v36 = v34;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v35 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v33[v30], v7);
    *(v12 + 128) = sub_1001B38A0(v32);
    *(v12 + 136) = v37;
    *(v12 + 144) = v38;
    v125 = v31;
    v39 = swift_allocObject();
    sub_1000056EC(v39);
    v41 = v40 + v13;
    v42 = *(v36 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v42 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v41 + v124, v7);
    *(v12 + 152) = sub_1001B38A0(v32);
    *(v12 + 160) = v43;
    *(v12 + 168) = v44;
    v45 = swift_allocObject();
    sub_1000056EC(v45);
    v47 = v46 + v13;
    v48 = v126;
    v49 = *(v126 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v50 = v124;
    sub_10031694C(v49 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v47 + v124, v7);
    *(v12 + 176) = sub_1001B38A0(v32);
    *(v12 + 184) = v51;
    *(v12 + 192) = v52;
    v53 = swift_allocObject();
    sub_1000056EC(v53);
    v55 = v54 + v13;
    v56 = *(v48 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v57 = v55 + v50;
    v58 = v50;
    sub_10031694C(v56 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v57, v7);
    v59 = sub_1001B38A0(v32);
    sub_10000CDFC(v59, v60, v61);
    v62 = swift_allocObject();
    sub_100003E18(v62);
    v64 = v63 + v13;
    v65 = *(v48 + 16);
    sub_10031694C(v65 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v63 + v13, v7);
    sub_10031694C(v65 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v64 + v58, v7);
    *(v12 + 224) = sub_1001B38A0(v62);
    *(v12 + 232) = v66;
    *(v12 + 240) = v67;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v68 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v69 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v70 = *(v7 + 72);
    v71 = *(v7 + 80);
    v72 = v68;
    v73 = swift_allocObject();
    sub_10001361C(v73, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v74, v73 + v69, v75);
    *(v12 + 32) = sub_1001B38A0(v73);
    *(v12 + 40) = v76;
    *(v12 + 48) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v73 + v69, v7);
    *(v12 + 56) = sub_1001B38A0(v73);
    *(v12 + 64) = v79;
    *(v12 + 72) = v80;
    sub_100016B54();
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v73 + v69, v7);
    *(v12 + 80) = sub_1001B38A0(v73);
    *(v12 + 88) = v82;
    *(v12 + 96) = v83;
    sub_100016B54();
    v84 = swift_allocObject();
    sub_1000056EC(v84);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_airQuality, v73 + v69, v7);
    *(v12 + 104) = sub_1001B38A0(v73);
    *(v12 + 112) = v85;
    *(v12 + 120) = v86;
    sub_100016B54();
    v122[1] = v72;
    v87 = swift_allocObject();
    sub_1000056EC(v87);
    sub_10031694C(v9, v88 + v69, v7);
    *(v12 + 128) = sub_1001B38A0(v73);
    *(v12 + 136) = v89;
    *(v12 + 144) = v90;
    v91 = v70;
    v124 = v70;
    v92 = swift_allocObject();
    v93 = sub_10001361C(v92, xmmword_100A2D320);
    v123 = v9;
    v94 = v93 + v69;
    v95 = a1;
    v96 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v94[v91], v7);
    *(v12 + 152) = sub_1001B38A0(v92);
    *(v12 + 160) = v97;
    *(v12 + 168) = v98;
    v125 = v71;
    v99 = swift_allocObject();
    sub_100003E18(v99);
    v101 = v100 + v69;
    v102 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v102 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v101 + v124, v7);
    *(v12 + 176) = sub_1001B38A0(v99);
    *(v12 + 184) = v103;
    *(v12 + 192) = v104;
    v105 = swift_allocObject();
    sub_100003E18(v105);
    v107 = v106 + v69;
    v108 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v109 = v124;
    sub_10031694C(v108 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v107 + v124, v7);
    v110 = sub_1001B38A0(v105);
    sub_10000CDFC(v110, v111, v112);
    v113 = swift_allocObject();
    *(v113 + 16) = 2;
    *(v113 + 24) = 4;
    v114 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v114 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v113 + v69 + v109, v7);
    *(v12 + 224) = sub_1001B38A0(v113);
    *(v12 + 232) = v115;
    *(v12 + 240) = v116;
    v117 = swift_allocObject();
    *(v117 + 16) = 2;
    *(v117 + 24) = 4;
    v118 = *(v126 + 16);
    sub_10031694C(v118 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v117 + v69, v7);
    sub_10031694C(v118 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v117 + v69 + v109, v7);
    *(v12 + 248) = sub_1001B38A0(v117);
    *(v12 + 256) = v119;
    *(v12 + 264) = v120;
    sub_1003169AC(v123, v7);
  }

  return v12;
}

void sub_1006EB8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BC50;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BBF0;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3AEB0;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BC00;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A2C3F0;
  v17[0] = xmmword_100A2C3F0;
  v17[1] = xmmword_100A3BC00;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A41B80;
  v15[0] = xmmword_100A3BBB0;
  v15[1] = xmmword_100A3BBF0;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BBB0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BBC0;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BC10;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC20;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v35 = v10;
  v36 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 0);
  qword_100D90810 = v8;
}

void sub_1006EB9CC()
{
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A3BC50;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v15 = v14;
  v16 = v13;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3AEB0;
  v11[0] = xmmword_100A3BBB0;
  v11[1] = xmmword_100A3BC20;
  v17 = v12;
  v18 = v11;
  v10[0] = xmmword_100A3BB70;
  v10[1] = xmmword_100A2C3F0;
  v9[0] = xmmword_100A2C3F0;
  v9[1] = xmmword_100A3BC20;
  v19 = v10;
  v20 = v9;
  v8[0] = xmmword_100A3BBB0;
  v8[1] = xmmword_100A3BC00;
  v7[0] = xmmword_100A3BB70;
  v7[1] = xmmword_100A3BBB0;
  v21 = v8;
  v22 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC10;
  v5[0] = xmmword_100A2C3F0;
  v5[1] = xmmword_100A3BC30;
  v23 = v6;
  v24 = v5;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BB80;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BB80;
  v25 = v4;
  v26 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC10;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC30;
  v27 = v2;
  v28 = v1;
  sub_100557528();
  qword_100D90818 = v0;
}

void sub_1006EBADC()
{
  v35[0] = xmmword_100A2D320;
  v35[1] = xmmword_100A3BBD0;
  v34[0] = xmmword_100A3BC40;
  v34[1] = xmmword_100A3BB80;
  v36 = v35;
  v37 = v34;
  v33[0] = xmmword_100A3BB70;
  v33[1] = xmmword_100A3AEB0;
  v32[0] = xmmword_100A3BBD0;
  v32[1] = xmmword_100A3BC50;
  v38 = v33;
  v39 = v32;
  v31[0] = xmmword_100A3BB70;
  v31[1] = xmmword_100A2C3F0;
  v30[0] = xmmword_100A2C3F0;
  v30[1] = xmmword_100A3BB80;
  v40 = v31;
  v41 = v30;
  v29[0] = xmmword_100A2D320;
  v29[1] = xmmword_100A3BB70;
  v28[0] = xmmword_100A3BB70;
  v28[1] = xmmword_100A3BC50;
  v42 = v29;
  v43 = v28;
  v27[0] = xmmword_100A3BB70;
  v27[1] = xmmword_100A3BBB0;
  v26[0] = xmmword_100A3BBD0;
  v26[1] = xmmword_100A3BB80;
  v44 = v27;
  v45 = v26;
  v25[0] = xmmword_100A3BC40;
  v25[1] = xmmword_100A3BC50;
  *(&v23 + 1) = 4;
  v24 = xmmword_100A3BC60;
  sub_10000CA80(v25, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, 3);
  v17 = v1;
  v18 = v0;
  v46 = v2;
  v47 = &v17;
  sub_10004E984(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  qword_100D90820 = v12;
}

void sub_1006EBBE0()
{
  v16[0] = xmmword_100A2D320;
  v16[1] = xmmword_100A2C3F0;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v17 = v16;
  v18 = v15;
  v13 = 1;
  v14 = 4;
  v11[0] = xmmword_100A3BBD0;
  v11[1] = xmmword_100A3BC60;
  v12 = xmmword_100A3BB70;
  v19 = &v12;
  v20 = v11;
  v10[0] = xmmword_100A2D320;
  v10[1] = xmmword_100A3BBB0;
  v9[0] = xmmword_100A3BBD0;
  v9[1] = xmmword_100A3BC50;
  v21 = v10;
  v22 = v9;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A3BC60;
  v7[0] = xmmword_100A3BB70;
  v7[1] = xmmword_100A3BBB0;
  v23 = v8;
  v24 = v7;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC50;
  v5[0] = xmmword_100A3BC40;
  v5[1] = xmmword_100A3BC60;
  v25 = v6;
  v26 = v5;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC40;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC40;
  v27 = v4;
  v28 = v3;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC50;
  v1[0] = xmmword_100A2D320;
  v1[1] = xmmword_100A3BBD0;
  v29 = v2;
  v30 = v1;
  sub_100557528();
  qword_100D90828 = v0;
}

void sub_1006EBCEC()
{
  v35[0] = xmmword_100A2D320;
  v35[1] = xmmword_100A2C3F0;
  v34[0] = xmmword_100A3BC50;
  v34[1] = xmmword_100A3BC60;
  v36 = v35;
  v37 = v34;
  v33[0] = xmmword_100A3BB70;
  v33[1] = xmmword_100A3F970;
  v32[0] = xmmword_100A3BC60;
  v32[1] = xmmword_100A3BC40;
  v38 = v33;
  v39 = v32;
  v31[0] = xmmword_100A41B90;
  v31[1] = xmmword_100A3BBB0;
  v30[0] = xmmword_100A3BBD0;
  v30[1] = xmmword_100A3BC60;
  v40 = v31;
  v41 = v30;
  v29[0] = xmmword_100A3BC90;
  v29[1] = xmmword_100A3BD20;
  v28[0] = xmmword_100A3BB70;
  v28[1] = xmmword_100A3BC60;
  v42 = v29;
  v43 = v28;
  v27[0] = xmmword_100A3BB70;
  v27[1] = xmmword_100A3BBB0;
  v26[0] = xmmword_100A3BC60;
  v26[1] = xmmword_100A3BC60;
  v44 = v27;
  v45 = v26;
  v25[0] = xmmword_100A3BC40;
  v25[1] = xmmword_100A3BC40;
  *(&v23 + 1) = 3;
  v24 = xmmword_100A3BC40;
  sub_10000CA80(v25, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, 2);
  v17 = v1;
  v18 = v0;
  v46 = v2;
  v47 = &v17;
  sub_10004E984(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  qword_100D90830 = v12;
}

uint64_t sub_1006EBE00(uint64_t a1, void (*a2)(char *))
{
  v5 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v34 = v7;
  __chkstk_darwin(v8);
  sub_100003878();
  v33 = v9;
  __chkstk_darwin(v10);
  sub_100013628();
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for LocationViewComponent(0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v31 - v23;

  sub_1005D71C4(v25, a2);
  v32 = v26;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather32LocationDefaultNewsConfiguration8_Storage_map, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10001B350(v24, 0, 1, v5);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather32LocationDefaultNewsConfiguration8_Storage_airQuality, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather32LocationDefaultNewsConfiguration8_Storage_newsArticle, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v24, v21, &qword_100CA5008, &unk_100A2F7B0);
  v27 = v33;
  sub_10031694C(v13, v33, type metadata accessor for LocationComponentContainerViewModel);
  v28 = v34;
  sub_10031694C(v2, v34, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for DefaultNewsContent._Storage(0);
  swift_allocObject();
  v29 = sub_1002BDFC0(v32, v21, v27, v28);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v24, &qword_100CA5008, &unk_100A2F7B0);
  return v29;
}

uint64_t sub_1006EC13C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleComponentViewModel(0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1006EC184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NewsArticleComponentViewModel(0);

  return sub_10001B350(a1, a2, a3, v6);
}

uint64_t sub_1006EC1DC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100ADBAB0;
  v1._object = 0x8000000100ADBA80;
  v5._countAndFlagsBits = 0xD000000000000030;
  v1._countAndFlagsBits = 0xD000000000000022;
  v2._countAndFlagsBits = 1937204558;
  v2._object = 0xE400000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1006EC294(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD3278, &qword_100A79E78);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v8 = *(v7 + 56);
  sub_1006EC354(a1, &v10 - v5);
  sub_1006EC354(a2, &v6[v8]);
  LOBYTE(a2) = sub_1003545AC(v6, &v6[v8]);
  sub_1006EC3B8(&v6[v8]);
  sub_1006EC3B8(v6);
  return a2 & 1;
}

uint64_t sub_1006EC354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailComponentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006EC3B8(uint64_t a1)
{
  v2 = type metadata accessor for NewsArticleComponentViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006EC444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t, uint64_t))
{

  sub_1000C9450(a3);
}

uint64_t sub_1006EC488()
{

  sub_100006F14((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalendarHeaderView(uint64_t a1)
{
  result = qword_100CD3428;
  if (!qword_100CD3428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006EC568(uint64_t a1)
{
  sub_1000077F0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1002B3B88();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1006EC634@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v3 = sub_10022C350(&qword_100CD3478, &qword_100A79FE8);
  return sub_1006EC684(v1, a1 + *(v3 + 36));
}

uint64_t sub_1006EC684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v148 = type metadata accessor for AccessibilityChildBehavior();
  v144 = *(v148 - 8);
  __chkstk_darwin(v148);
  v142 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for Font.TextStyle();
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_10022C350(&qword_100CD3480, &qword_100A79FF0);
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v141 = &v122 - v5;
  v147 = sub_10022C350(&qword_100CD3488, &qword_100A79FF8);
  __chkstk_darwin(v147);
  v157 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v156 = &v122 - v8;
  v9 = type metadata accessor for EnvironmentValues();
  v125 = *(v9 - 8);
  __chkstk_darwin(v9);
  v124 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CalendarHeaderView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_10022C350(&qword_100CD3490, &qword_100A7A000);
  __chkstk_darwin(v14);
  v149 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v122 - v17;
  v155 = sub_10022C350(&qword_100CD3498, &qword_100A7A008);
  v159 = *(v155 - 8);
  __chkstk_darwin(v155);
  v150 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v122 - v21;
  v23 = sub_10022C350(&qword_100CD34A0, &qword_100A7A010);
  __chkstk_darwin(v23 - 8);
  v152 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v153 = &v122 - v26;
  __chkstk_darwin(v27);
  v151 = &v122 - v28;
  __chkstk_darwin(v29);
  v160 = &v122 - v30;
  sub_1006ED800(a1, &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v12 + 80);
  v32 = (v31 + 16) & ~v31;
  v137 = v31;
  v135 = v32 + v13;
  v33 = swift_allocObject();
  v139 = v32;
  v140 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006ED864(v140, v33 + v32);
  v138 = sub_1006ED8E0();
  Button.init(action:label:)();
  v146 = v11;
  LODWORD(v11) = *(a1 + *(v11 + 32));
  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v11;
  v158 = v14;
  v36 = &v18[*(v14 + 36)];
  *v36 = KeyPath;
  v36[1] = sub_100168F20;
  v36[2] = v35;
  v123 = v9;
  if (v11 == 1)
  {
    v37 = *a1;
    if (*(a1 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v38 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v39 = v124;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v37, 0);
      (*(v125 + 8))(v39, v9);
    }
  }

  v40 = sub_1006EDB28();
  v41 = v158;
  View.isHidden(_:defaultAccessibilityHidden:)();
  sub_1000180EC(v18, &qword_100CD3490, &qword_100A7A000);
  v42 = LocalizedStringKey.init(stringLiteral:)();
  v46 = Text.init(_:tableName:bundle:comment:)(v42, v44, v43 & 1, v45, 0, 0, 0, "Accessibility label for the previous month button found in a calendar header view", 81, 2);
  v48 = v47;
  v50 = v49;
  __dst[0] = v41;
  __dst[1] = v40;
  v133 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v155;
  v131 = OpaqueTypeConformance2;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v46, v48, v50 & 1);

  v53 = *(v159 + 8);
  v159 += 8;
  v130 = v53;
  v53(v22, v52);
  v54 = *(a1 + 16);
  v55 = *(a1 + 24);
  v127 = a1;
  v128 = v54;
  v126 = v55;
  __dst[0] = v54;
  __dst[1] = v55;
  v129 = sub_10002D5A4();
  swift_bridgeObjectRetain_n();
  v56 = Text.init<A>(_:)();
  v58 = v57;
  v60 = v59;
  v61 = v134;
  v62 = v132;
  v63 = v136;
  (*(v134 + 104))(v132, enum case for Font.TextStyle.body(_:), v136);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v61 + 8))(v62, v63);
  v64 = Text.font(_:)();
  v66 = v65;
  LOBYTE(v63) = v67;

  sub_10010CD64(v56, v58, v60 & 1);

  static Color.primary.getter();
  v68 = Text.foregroundColor(_:)();
  v70 = v69;
  v72 = v71;
  v74 = v73;

  sub_10010CD64(v64, v66, v63 & 1);

  LOBYTE(v56) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  LOBYTE(__dst[0]) = v72 & 1;
  LOBYTE(v163[0]) = 0;
  v83 = swift_getKeyPath();
  LOBYTE(__dst[0]) = 0;
  v163[0] = v68;
  v163[1] = v70;
  LOBYTE(v163[2]) = v72 & 1;
  v163[3] = v74;
  LOBYTE(v163[4]) = v56;
  v163[5] = v76;
  v163[6] = v78;
  v163[7] = v80;
  v163[8] = v82;
  LOBYTE(v163[9]) = 0;
  v163[10] = 0xBFF0000000000000;
  v163[11] = v83;
  v163[12] = 1;
  LOBYTE(v163[13]) = 0;
  v163[14] = 5;
  LOBYTE(v163[15]) = 0;
  v84 = v142;
  static AccessibilityChildBehavior.ignore.getter();
  v85 = sub_10022C350(&qword_100CD34C8, &qword_100A7A088);
  v86 = sub_1006EDC0C();
  v87 = v141;
  View.accessibilityElement(children:)();
  (*(v144 + 8))(v84, v148);
  memcpy(__dst, v163, 0x79uLL);
  sub_1000180EC(__dst, &qword_100CD34C8, &qword_100A7A088);
  v163[0] = v128;
  v163[1] = v126;
  v161 = v85;
  v162 = v86;
  swift_getOpaqueTypeConformance2();
  v88 = v157;
  v89 = v145;
  View.accessibilityValue<A>(_:)();

  (*(v143 + 8))(v87, v89);
  v90 = v127;
  v91 = v140;
  sub_1006ED800(v127, v140);
  v92 = swift_allocObject();
  v93 = v139;
  sub_1006ED864(v91, v92 + v139);
  ModifiedContent<>.accessibilityAdjustableAction(_:)();

  sub_1000180EC(v88, &qword_100CD3488, &qword_100A79FF8);
  sub_1006ED800(v90, v91);
  v94 = swift_allocObject();
  sub_1006ED864(v91, v94 + v93);
  v95 = v149;
  Button.init(action:label:)();
  LODWORD(v89) = *(v90 + *(v146 + 36));
  v96 = swift_getKeyPath();
  v97 = swift_allocObject();
  *(v97 + 16) = v89;
  v98 = (v95 + *(v158 + 36));
  *v98 = v96;
  v98[1] = sub_1002B09C4;
  v98[2] = v97;
  if (v89 == 1)
  {
    v99 = *v90;
    if (*(v90 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v100 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v101 = v124;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v99, 0);
      (*(v125 + 8))(v101, v123);
    }
  }

  v102 = v150;
  View.isHidden(_:defaultAccessibilityHidden:)();
  sub_1000180EC(v95, &qword_100CD3490, &qword_100A7A000);
  v103 = LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v121) = 2;
  v107 = Text.init(_:tableName:bundle:comment:)(v103, v105, v104 & 1, v106, 0, 0, 0, "Accessibility label for the next month button found in a calendar header view", 77, v121);
  v109 = v108;
  v111 = v110;
  v112 = v151;
  v113 = v155;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v107, v109, v111 & 1);

  v130(v102, v113);
  v114 = v153;
  sub_100035AD0(v160, v153, &qword_100CD34A0, &qword_100A7A010);
  v115 = v156;
  v116 = v157;
  sub_100035AD0(v156, v157, &qword_100CD3488, &qword_100A79FF8);
  v117 = v152;
  sub_100035AD0(v112, v152, &qword_100CD34A0, &qword_100A7A010);
  v118 = v154;
  sub_100035AD0(v114, v154, &qword_100CD34A0, &qword_100A7A010);
  v119 = sub_10022C350(&qword_100CD3500, &qword_100A7A0A8);
  sub_100035AD0(v116, v118 + *(v119 + 48), &qword_100CD3488, &qword_100A79FF8);
  sub_100035AD0(v117, v118 + *(v119 + 64), &qword_100CD34A0, &qword_100A7A010);
  sub_1000180EC(v112, &qword_100CD34A0, &qword_100A7A010);
  sub_1000180EC(v115, &qword_100CD3488, &qword_100A79FF8);
  sub_1000180EC(v160, &qword_100CD34A0, &qword_100A7A010);
  sub_1000180EC(v117, &qword_100CD34A0, &qword_100A7A010);
  sub_1000180EC(v116, &qword_100CD3488, &qword_100A79FF8);
  return sub_1000180EC(v114, &qword_100CD34A0, &qword_100A7A010);
}

uint64_t sub_1006ED584(uint64_t a1)
{
  v2 = type metadata accessor for CalendarHeaderView(0);
  sub_1000161C0((a1 + *(v2 + 40)), *(a1 + *(v2 + 40) + 24));
  return sub_1008C9750(a1 + *(v2 + 24));
}

int *sub_1006ED5F0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for AccessibilityAdjustmentDirection();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for AccessibilityAdjustmentDirection.increment(_:))
  {
    result = type metadata accessor for CalendarHeaderView(0);
    if (*(a2 + result[9]))
    {
      return result;
    }

    v12 = result;
    sub_1000161C0((a2 + result[10]), *(a2 + result[10] + 24));
    v13 = v12[7];
    return sub_1008C9750(a2 + v13);
  }

  if (v10 == enum case for AccessibilityAdjustmentDirection.decrement(_:))
  {
    result = type metadata accessor for CalendarHeaderView(0);
    if (*(a2 + result[8]))
    {
      return result;
    }

    v14 = result;
    sub_1000161C0((a2 + result[10]), *(a2 + result[10] + 24));
    v13 = v14[6];
    return sub_1008C9750(a2 + v13);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1006ED788(uint64_t a1)
{
  v2 = type metadata accessor for CalendarHeaderView(0);
  sub_1000161C0((a1 + *(v2 + 40)), *(a1 + *(v2 + 40) + 24));
  return sub_1008C9750(a1 + *(v2 + 28));
}

uint64_t sub_1006ED800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006ED864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006ED8E0()
{
  result = qword_100CD34A8;
  if (!qword_100CD34A8)
  {
    result = swift_getWitnessTable(byte_100A7A0DC, &type metadata for ButtonImage, v0, v1);
    atomic_store(result, &qword_100CD34A8);
  }

  return result;
}

uint64_t sub_1006ED934@<X0>(uint64_t *a3@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = Image.init(systemName:)();
  (*(v5 + 104))(v7, enum case for Font.TextStyle.body(_:), v4);
  static Font.Weight.semibold.getter();
  v9 = static Font.system(_:weight:)();
  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  v11 = static Color.secondary.getter();
  v12 = swift_getKeyPath();
  v13 = a3 + *(sub_10022C350(&qword_100CD3510, &unk_100A7A190) + 36);
  v14 = *(sub_10022C350(&qword_100CAF750, &qword_100A57BC0) + 28);
  v15 = enum case for Image.Scale.small(_:);
  v16 = type metadata accessor for Image.Scale();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  result = swift_getKeyPath();
  *v13 = result;
  *a3 = v8;
  a3[1] = KeyPath;
  a3[2] = v9;
  a3[3] = v12;
  a3[4] = v11;
  return result;
}

unint64_t sub_1006EDB28()
{
  result = qword_100CD34B0;
  if (!qword_100CD34B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD3490, &qword_100A7A000);
    v4[0] = sub_100006F64(&qword_100CD34B8, &qword_100CD34C0, &unk_100A7A048, &protocol conformance descriptor for Button<A>);
    v4[1] = sub_100006F64(&qword_100CA6F10, &qword_100CA6F18, &qword_100A31E90, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD34B0);
  }

  return result;
}

unint64_t sub_1006EDC0C()
{
  result = qword_100CD34D0;
  if (!qword_100CD34D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD34C8, &qword_100A7A088);
    v4[0] = sub_1006EDC98();
    v4[1] = sub_1006EDE08();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD34D0);
  }

  return result;
}

unint64_t sub_1006EDC98()
{
  result = qword_100CD34D8;
  if (!qword_100CD34D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD34E0, &qword_100A7A090);
    v4[0] = sub_1006EDD50();
    v4[1] = sub_100006F64(&qword_100CADEA0, &qword_100CADEA8, &qword_100A490C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD34D8);
  }

  return result;
}

unint64_t sub_1006EDD50()
{
  result = qword_100CD34E8;
  if (!qword_100CD34E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD34F0, &unk_100A7A098);
    v4[0] = sub_100287740();
    v4[1] = sub_100006F64(&qword_100CA47C8, &qword_100CA47D0, &qword_100A2EA00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD34E8);
  }

  return result;
}

unint64_t sub_1006EDE08()
{
  result = qword_100CD34F8;
  if (!qword_100CD34F8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for _GridCellSizeModifier, &type metadata for _GridCellSizeModifier, v0, v1);
    atomic_store(result, &qword_100CD34F8);
  }

  return result;
}

int *sub_1006EDE5C(uint64_t a1)
{
  v3 = *(type metadata accessor for CalendarHeaderView(0) - 8);
  v5 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1006ED5F0(a1, v5, v4);
}

uint64_t sub_1006EDEE4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CalendarHeaderView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1006EDF84()
{
  result = qword_100CD3518;
  if (!qword_100CD3518)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD3510, &unk_100A7A190);
    v4[0] = sub_100270BC8();
    v4[1] = sub_100006F64(&unk_100CE1690, &qword_100CAF750, &qword_100A57BC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3518);
  }

  return result;
}

uint64_t sub_1006EE03C(void *a1)
{
  v2 = sub_10022C350(&qword_100CD3528, &unk_100A7A2F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000161C0(a1, a1[3]);
  sub_1006EE378();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1006EE178(uint64_t a1)
{
  v2 = sub_1006EE378();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006EE1B4(uint64_t a1)
{
  v2 = sub_1006EE378();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006EE238@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD3538, &qword_100A7A320);
  a1[4] = sub_1006EE3CC();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1006EE2E4(uint64_t a1)
{
  sub_1006EE430();

  return ShortDescribable.description.getter();
}

unint64_t sub_1006EE324()
{
  result = qword_100CD3520;
  if (!qword_100CD3520)
  {
    result = swift_getWitnessTable(byte_100A7A1D0, &type metadata for UnitsConfigurationViewState, v0, v1);
    atomic_store(result, &qword_100CD3520);
  }

  return result;
}

unint64_t sub_1006EE378()
{
  result = qword_100CD3530;
  if (!qword_100CD3530)
  {
    result = swift_getWitnessTable(aE_67, &type metadata for UnitsConfigurationViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD3530);
  }

  return result;
}

unint64_t sub_1006EE3CC()
{
  result = qword_100CD3540;
  if (!qword_100CD3540)
  {
    v3 = sub_10022E824(&qword_100CD3538, &qword_100A7A320);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD3540);
  }

  return result;
}

unint64_t sub_1006EE430()
{
  result = qword_100CD3548;
  if (!qword_100CD3548)
  {
    result = swift_getWitnessTable(byte_100A7A1F8, &type metadata for UnitsConfigurationViewState, v0, v1);
    atomic_store(result, &qword_100CD3548);
  }

  return result;
}

unint64_t sub_1006EE4A8()
{
  result = qword_100CD3550;
  if (!qword_100CD3550)
  {
    result = swift_getWitnessTable(byte_100A7A33C, &type metadata for UnitsConfigurationViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD3550);
  }

  return result;
}

unint64_t sub_1006EE500()
{
  result = qword_100CD3558;
  if (!qword_100CD3558)
  {
    result = swift_getWitnessTable(aM_73, &type metadata for UnitsConfigurationViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD3558);
  }

  return result;
}

uint64_t sub_1006EE598@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v39 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v37 = v5 - v4;
  v36 = type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v34 = v6;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CD35F0, &qword_100A7A488);
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = v33 - v13;
  v15 = sub_10022C350(&qword_100CD35F8, &qword_100A7A490);
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  v20 = v33 - v19;
  v35 = sub_10022C350(&qword_100CD3600, &qword_100A7A498);
  sub_1000037E8();
  __chkstk_darwin(v21);
  v23 = v33 - v22;
  sub_1006EE97C(v2, v14);
  static AccessibilityChildBehavior.ignore.getter();
  v24 = sub_1006F3CAC(&qword_100CD3608, &qword_100CD35F0, &qword_100A7A488, sub_1006EEEC0);
  View.accessibilityElement(children:)();
  (*(v34 + 8))(v10, v36);
  sub_10003FDA0(v14, &qword_100CD35F0);
  v40 = v11;
  v41 = v24;
  swift_getOpaqueTypeConformance2();
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v17 + 8))(v20, v15);
  v25 = (v33[1] + *(type metadata accessor for PressureComponentViewModel(0) + 36));
  v27 = *v25;
  v26 = v25[1];
  v40 = v27;
  v41 = v26;
  sub_10002D5A4();
  v28 = v38;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_10003FDA0(v23, &qword_100CD3600);
  type metadata accessor for AutomationCellInfo(0);
  v29 = v37;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v30 = v28 + *(sub_10022C350(&qword_100CD3630, &qword_100A7A4A8) + 36);
  v31 = type metadata accessor for AutomationInfoProperty(0);
  sub_1006EF034(v29, v30 + *(v31 + 24), type metadata accessor for AutomationInfo);
  sub_1006EF090();
  *v30 = 0;
  *(v30 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v30 + 16) = result;
  *(v30 + 24) = 0;
  return result;
}

uint64_t sub_1006EE97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for PressureComponentContentView(0);
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CD3638, &qword_100A7A4D8);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v36 = type metadata accessor for SimplePressureComponentContentView(0);
  __chkstk_darwin(v36);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContentSizeCategory();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  type metadata accessor for PressureComponentView(0);
  sub_10009ECC8();
  (*(v11 + 32))(v13, v16, v10);
  v17 = (*(v11 + 88))(v13, v10);
  if (v17 == enum case for ContentSizeCategory.extraSmall(_:) || v17 == enum case for ContentSizeCategory.small(_:) || v17 == enum case for ContentSizeCategory.medium(_:) || v17 == enum case for ContentSizeCategory.large(_:) || v17 == enum case for ContentSizeCategory.extraLarge(_:) || v17 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v17 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    goto LABEL_35;
  }

  if (v17 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v17 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v17 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v17 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v17 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (*(v11 + 8))(v13, v10);
LABEL_35:
    sub_1006EF034(a1, v5, type metadata accessor for PressureComponentViewModel);
    v30 = &v5[*(v3 + 20)];
    *v30 = swift_getKeyPath();
    v30[8] = 0;
    v31 = &v5[*(v3 + 24)];
    *v31 = swift_getKeyPath();
    v31[8] = 0;
    sub_1006EF034(v5, v8, type metadata accessor for PressureComponentContentView);
    swift_storeEnumTagMultiPayload();
    sub_1006EEFCC(&qword_100CD3620, type metadata accessor for SimplePressureComponentContentView, byte_100A7A5C4);
    sub_1006EEFCC(&qword_100CD3628, type metadata accessor for PressureComponentContentView, byte_100A7A574);
    _ConditionalContent<>.init(storage:)();
    return sub_1006EF090();
  }

  v28 = a1;
  v29 = v34;
  sub_1006EF034(v28, v34, type metadata accessor for PressureComponentViewModel);
  sub_1006EF034(v29, v8, type metadata accessor for SimplePressureComponentContentView);
  swift_storeEnumTagMultiPayload();
  sub_1006EEFCC(&qword_100CD3620, type metadata accessor for SimplePressureComponentContentView, byte_100A7A5C4);
  sub_1006EEFCC(&qword_100CD3628, type metadata accessor for PressureComponentContentView, byte_100A7A574);
  _ConditionalContent<>.init(storage:)();
  return sub_1006EF090();
}

unint64_t sub_1006EEEC0()
{
  result = qword_100CD3610;
  if (!qword_100CD3610)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD3618, &qword_100A7A4A0);
    v4[0] = sub_1006EEFCC(&qword_100CD3620, type metadata accessor for SimplePressureComponentContentView, byte_100A7A5C4);
    v4[1] = sub_1006EEFCC(&qword_100CD3628, type metadata accessor for PressureComponentContentView, byte_100A7A574);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3610);
  }

  return result;
}

uint64_t sub_1006EEFCC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006EF034(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1006EF090()
{
  v1 = sub_100017580();
  v2(v1);
  sub_1000037E8();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1006EF10C(uint64_t a1)
{
  type metadata accessor for PressureComponentViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_10009BE44(319, &qword_100CE0E20, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_10009BE44(319, &qword_100CACE80, &type metadata for SizingBehavior);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1006EF1F0(uint64_t a1)
{
  result = type metadata accessor for PressureComponentViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1006EF25C()
{
  result = qword_100CD3768;
  if (!qword_100CD3768)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD3630, &qword_100A7A4A8);
    v4[0] = sub_1006EF318();
    v4[1] = sub_1006EEFCC(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3768);
  }

  return result;
}

unint64_t sub_1006EF318()
{
  result = qword_100CD3770;
  if (!qword_100CD3770)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CD3600, &qword_100A7A498);
    v4[2] = sub_10022E824(&qword_100CD35F0, &qword_100A7A488);
    v4[3] = sub_1006F3CAC(&qword_100CD3608, &qword_100CD35F0, &qword_100A7A488, sub_1006EEEC0);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1006EEFCC(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3770);
  }

  return result;
}

uint64_t sub_1006EF460@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = sub_10022C350(&qword_100CD37F8, &qword_100A7A6F0);
  return sub_1006EF4AC(v2, a1 + *(v5 + 44));
}

uint64_t sub_1006EF4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_10022C350(&qword_100CD3800, &qword_100A7A6F8);
  __chkstk_darwin(v3 - 8);
  v76 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = sub_10022C350(&qword_100CD3808, &qword_100A7A700);
  __chkstk_darwin(v8 - 8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = (&v70 - v12);
  v13 = sub_10022C350(&qword_100CD3810, &qword_100A7A708);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = (&v70 - v15);
  v72 = sub_10022C350(&qword_100CD3818, &qword_100A7A710);
  __chkstk_darwin(v72);
  v18 = &v70 - v17;
  v71 = sub_10022C350(&qword_100CD3820, &qword_100A7A718);
  __chkstk_darwin(v71);
  v73 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v70 - v21;
  __chkstk_darwin(v23);
  v78 = &v70 - v24;
  *v16 = static Alignment.top.getter();
  v16[1] = v25;
  v26 = sub_10022C350(&qword_100CD3828, &qword_100A7A720);
  sub_1006EFB48(a1, v16 + *(v26 + 44));
  v27 = static Alignment.center.getter();
  v29 = v28;
  v30 = v16 + *(sub_10022C350(&qword_100CD3830, &qword_100A7A728) + 36);
  *v30 = static HorizontalAlignment.center.getter();
  *(v30 + 1) = 0;
  v30[16] = 1;
  v31 = sub_10022C350(&qword_100CD3838, &qword_100A7A730);
  sub_1006F1768(&v30[*(v31 + 44)]);
  v32 = *(type metadata accessor for PressureComponentViewModel(0) + 32);
  v74 = a1;
  v33 = *(a1 + v32) * 0.0174532925;
  static UnitPoint.center.getter();
  v35 = v34;
  v37 = v36;
  v38 = &v30[*(sub_10022C350(&qword_100CD3840, &qword_100A7A738) + 36)];
  *v38 = v33;
  *(v38 + 1) = v35;
  *(v38 + 2) = v37;
  v39 = &v30[*(sub_10022C350(&qword_100CD3848, &unk_100A7A740) + 36)];
  *v39 = v27;
  v39[1] = v29;
  LOBYTE(v27) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v40 = v16 + *(v14 + 44);
  *v40 = v27;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v30) = static Edge.Set.leading.getter();
  *(inited + 32) = v30;
  v46 = static Edge.Set.trailing.getter();
  *(inited + 33) = v46;
  v47 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v47 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v46)
  {
    v47 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_10011C0F0(v16, v18, &qword_100CD3810, &qword_100A7A708);
  v56 = &v18[*(v72 + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  sub_10011C0F0(v18, v22, &qword_100CD3818, &qword_100A7A710);
  *&v22[*(v71 + 36)] = 0xBFF0000000000000;
  v57 = v78;
  sub_10011C0F0(v22, v78, &qword_100CD3820, &qword_100A7A718);
  v58 = static HorizontalAlignment.center.getter();
  v59 = v75;
  *v75 = v58;
  *(v59 + 8) = 0;
  *(v59 + 16) = 1;
  v60 = sub_10022C350(&qword_100CD3850, &qword_100A7A750);
  v61 = v74;
  sub_1006EFDFC(v74, v59 + *(v60 + 44));
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v62 = sub_10022C350(&qword_100CD3858, &qword_100A7A758);
  sub_1006F0D1C(v61, &v7[*(v62 + 44)]);
  v63 = v73;
  sub_1000302D8(v57, v73, &qword_100CD3820, &qword_100A7A718);
  sub_1000302D8(v59, v10, &qword_100CD3808, &qword_100A7A700);
  v64 = v76;
  sub_1000302D8(v7, v76, &qword_100CD3800, &qword_100A7A6F8);
  v65 = v7;
  v66 = v10;
  v67 = v77;
  sub_1000302D8(v63, v77, &qword_100CD3820, &qword_100A7A718);
  v68 = sub_10022C350(&qword_100CD3860, &qword_100A7A760);
  sub_1000302D8(v66, v67 + *(v68 + 48), &qword_100CD3808, &qword_100A7A700);
  sub_1000302D8(v64, v67 + *(v68 + 64), &qword_100CD3800, &qword_100A7A6F8);
  sub_10003FDA0(v65, &qword_100CD3800);
  sub_10003FDA0(v59, &qword_100CD3808);
  sub_10003FDA0(v78, &qword_100CD3820);
  sub_10003FDA0(v64, &qword_100CD3800);
  sub_10003FDA0(v66, &qword_100CD3808);
  return sub_10003FDA0(v63, &qword_100CD3820);
}

uint64_t sub_1006EFB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GradientArcView(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for PressureComponentGaugeView(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = *(v12 + 28);
  *&v17[v18] = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  swift_storeEnumTagMultiPayload();
  v19 = *(a1 + *(type metadata accessor for PressureComponentViewModel(0) + 32));
  v20 = *(v5 + 28);
  v21 = type metadata accessor for PressureTrend();
  (*(*(v21 - 8) + 16))(&v10[v20], a1, v21);
  *v10 = v19;
  v22 = &v10[*(v5 + 32)];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  sub_1006EF034(v17, v14, type metadata accessor for PressureComponentGaugeView);
  sub_1006EF034(v10, v7, type metadata accessor for GradientArcView);
  sub_1006EF034(v14, a2, type metadata accessor for PressureComponentGaugeView);
  v23 = sub_10022C350(&qword_100CD3938, &qword_100A7A878);
  sub_1006EF034(v7, a2 + *(v23 + 48), type metadata accessor for GradientArcView);
  sub_1006EF090();
  sub_1006EF090();
  sub_1006EF090();
  return sub_1006EF090();
}

uint64_t sub_1006EFDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v3 - 8);
  v125 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v126 = &v107 - v6;
  v123 = sub_10022C350(&qword_100CBB8B0, &qword_100A7A7C0);
  __chkstk_darwin(v123);
  v116 = &v107 - v7;
  v122 = sub_10022C350(&qword_100CD38D8, &qword_100A7A7C8);
  __chkstk_darwin(v122);
  v127 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v139 = &v107 - v10;
  v11 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v12 = *(v11 - 8);
  v142 = v11;
  v143 = v12;
  __chkstk_darwin(v11);
  v141 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for EnvironmentValues();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Font.TextStyle();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CD38E0, &qword_100A7A7D0);
  __chkstk_darwin(v20);
  v22 = &v107 - v21;
  v114 = sub_10022C350(&qword_100CD38E8, &qword_100A7A7D8);
  __chkstk_darwin(v114);
  v138 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v140 = &v107 - v25;
  sub_1006F2B50(a1, &v147);
  v135 = v147;
  LODWORD(v113) = v148;
  LODWORD(v112) = BYTE1(v148);
  v26 = *(v17 + 104);
  LODWORD(v119) = enum case for Font.TextStyle.title3(_:);
  v26(v19);
  static Font.Weight.bold.getter();
  v117 = static Font.system(_:weight:)();
  v27 = *(v17 + 8);
  v27(v19, v16);
  v118 = enum case for Font.TextStyle.body(_:);
  v121 = v26;
  v26(v19);
  static Font.Weight.bold.getter();
  v111 = static Font.system(_:weight:)();
  v120 = v27;
  v115 = v17 + 8;
  v27(v19, v16);
  v28 = *(type metadata accessor for PressureComponentContentView(0) + 20);
  v137 = a1;
  v29 = a1 + v28;
  v30 = *v29;
  LODWORD(v134) = *(v29 + 8);
  v136 = v30;
  v124 = v15;
  if (v134 != 1)
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v30, 0);
    (*(v129 + 8))(v15, v130);
    LOBYTE(v30) = v147;
  }

  v32 = &v22[*(v20 + 36)];
  v33 = type metadata accessor for FontWithSmallVariantModifier(0);
  v34 = *(v33 + 24);
  v35 = enum case for Font.Leading.tight(_:);
  v36 = type metadata accessor for Font.Leading();
  v37 = *(v36 - 8);
  v38 = *(v37 + 104);
  LODWORD(v133) = v35;
  v39 = v35;
  v40 = v36;
  v132 = v38;
  v131 = v37 + 104;
  v38(v32 + v34, v39, v36);
  sub_10001B350(v32 + v34, 0, 1, v40);
  v41 = v111;
  *v32 = v117;
  v32[1] = v41;
  v117 = v33;
  *(v32 + *(v33 + 28)) = v30 & 1;
  *v22 = v135;
  v22[8] = v113;
  v22[9] = v112;
  v42 = v141;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  sub_1006F3BC4();
  v43 = v140;
  View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v44 = *(v143 + 8);
  v143 += 8;
  v135 = v44;
  v44(v42, v142);
  sub_10003FDA0(v22, &qword_100CD38E0);
  *(v43 + *(v114 + 36)) = 257;
  v113 = type metadata accessor for PressureComponentViewModel(0);
  v45 = (v137 + *(v113 + 24));
  v46 = v45[1];
  v147 = *v45;
  v148 = v46;
  v47 = sub_10002D5A4();

  v114 = v47;
  v111 = Text.init<A>(_:)();
  v110 = v48;
  v109 = v49;
  v112 = v50;
  KeyPath = swift_getKeyPath();
  v51 = v121;
  (v121)(v19, v119, v16);
  static Font.Weight.bold.getter();
  v119 = static Font.system(_:weight:)();
  v52 = v120;
  v120(v19, v16);
  (v51)(v19, v118, v16);
  static Font.Weight.bold.getter();
  v53 = static Font.system(_:weight:)();
  v52(v19, v16);
  if (v134)
  {
    v54 = v136;
    v55 = v124;
  }

  else
  {
    v56 = v136;

    static os_log_type_t.fault.getter();
    v57 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v55 = v124;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v56, 0);
    (*(v129 + 8))(v55, v130);
    v54 = v147;
  }

  v58 = v116;
  v59 = &v116[*(v123 + 36)];
  v60 = v117;
  v61 = *(v117 + 24);
  v132(v59 + v61, v133, v40);
  sub_10001B350(v59 + v61, 0, 1, v40);
  *v59 = v119;
  v59[1] = v53;
  *(v59 + *(v60 + 28)) = v54 & 1;
  v62 = v110;
  *v58 = v111;
  *(v58 + 8) = v62;
  *(v58 + 16) = v109 & 1;
  v63 = KeyPath;
  *(v58 + 24) = v112;
  *(v58 + 32) = v63;
  *(v58 + 40) = 1;
  *(v58 + 48) = 0;
  v64 = v141;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  sub_1001CC7B8();
  v65 = v139;
  View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v135(v64, v142);
  sub_10003FDA0(v58, &qword_100CBB8B0);
  *(v65 + *(v122 + 36)) = 257;
  v66 = (v137 + *(v113 + 28));
  v67 = v66[1];
  v147 = *v66;
  v148 = v67;

  v68 = Text.init<A>(_:)();
  v70 = v69;
  v72 = v71;
  v137 = v73;
  v74 = static Font.subheadline.getter();
  v123 = static Font.footnote.getter();
  if (v134)
  {
    v75 = v136;
    v156 = v136 & 1;
  }

  else
  {
    v76 = v136;

    static os_log_type_t.fault.getter();
    v77 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v76, 0);
    (*(v129 + 8))(v55, v130);
    v75 = v156;
  }

  v78 = v126;
  v132(v126, v133, v40);
  sub_10001B350(v78, 0, 1, v40);
  v79 = v125;
  sub_1000302D8(v78, v125, &qword_100CACFF0, &unk_100A48000);

  v80 = v123;

  sub_1001C987C(v74, v80, v75 & 1, v79);
  v81 = Text.font(_:)();
  v134 = v82;
  v84 = v83;
  v133 = v85;

  sub_10010CD64(v68, v70, v72 & 1);

  sub_10003FDA0(v78, &qword_100CACFF0);
  v86 = v141;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v87 = v134;
  v88 = Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  v136 = v89;
  v91 = v90;
  v137 = v92;
  sub_10010CD64(v81, v87, v84 & 1);

  v135(v86, v142);
  v93 = swift_getKeyPath();
  v91 &= 1u;
  v159 = v91;
  v157 = 0;
  v94 = v138;
  sub_1000302D8(v140, v138, &qword_100CD38E8, &qword_100A7A7D8);
  v95 = v139;
  v96 = v127;
  sub_1000302D8(v139, v127, &qword_100CD38D8, &qword_100A7A7C8);
  v97 = v94;
  v98 = v128;
  sub_1000302D8(v97, v128, &qword_100CD38E8, &qword_100A7A7D8);
  v99 = sub_10022C350(&qword_100CD3918, &qword_100A7A7F0);
  sub_1000302D8(v96, v98 + *(v99 + 48), &qword_100CD38D8, &qword_100A7A7C8);
  v100 = v98 + *(v99 + 64);
  v101 = v136;
  *&v144 = v88;
  *(&v144 + 1) = v136;
  LOBYTE(v145) = v91;
  *(&v145 + 1) = *v158;
  DWORD1(v145) = *&v158[3];
  v102 = v137;
  *(&v145 + 1) = v137;
  *v146 = v93;
  *&v146[8] = 1;
  v146[16] = 0;
  *&v146[17] = 257;
  v103 = v144;
  v104 = v145;
  v105 = *v146;
  *(v100 + 47) = *&v146[15];
  *(v100 + 16) = v104;
  *(v100 + 32) = v105;
  *v100 = v103;
  sub_1000302D8(&v144, &v147, &qword_100CACF40, &unk_100A3C2F0);
  sub_10003FDA0(v95, &qword_100CD38D8);
  sub_10003FDA0(v140, &qword_100CD38E8);
  v147 = v88;
  v148 = v101;
  v149 = v91;
  *v150 = *v158;
  *&v150[3] = *&v158[3];
  v151 = v102;
  v152 = v93;
  v153 = 1;
  v154 = 0;
  v155 = 257;
  sub_10003FDA0(&v147, &qword_100CACF40);
  sub_10003FDA0(v96, &qword_100CD38D8);
  return sub_10003FDA0(v138, &qword_100CD38E8);
}

uint64_t sub_1006F0D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v42 = a1;
  v47 = a2;
  v41 = type metadata accessor for Font.TextStyle();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10022C350(&qword_100CD3868, &qword_100A7A768);
  __chkstk_darwin(v43);
  v6 = &v38 - v5;
  v45 = sub_10022C350(&qword_100CD3870, &qword_100A7A770);
  v40 = *(v45 - 8);
  __chkstk_darwin(v45);
  v39 = &v38 - v7;
  v8 = sub_10022C350(&qword_100CD3878, &qword_100A7A778);
  __chkstk_darwin(v8 - 8);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v38 - v11;
  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v54._object = 0x8000000100ADBC20;
  v14._countAndFlagsBits = 0x736572705F776F4CLL;
  v14._object = 0xEC00000065727573;
  v15._countAndFlagsBits = 7827276;
  v15._object = 0xE300000000000000;
  v54._countAndFlagsBits = 0xD00000000000002ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v54);

  v16 = [v12 mainBundle];
  v55._object = 0x8000000100ADBC50;
  v17._countAndFlagsBits = 0x6572705F68676948;
  v17._object = 0xED00006572757373;
  v55._countAndFlagsBits = 0xD00000000000002FLL;
  v18._countAndFlagsBits = 1751607624;
  v18._object = 0xE400000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v55);

  v19 = String.count.getter();

  if (v19 > 4)
  {

    goto LABEL_5;
  }

  v20 = String.count.getter();

  if (v20 >= 5)
  {
LABEL_5:
    v27 = static VerticalAlignment.lastTextBaseline.getter();
    v51 = 1;
    sub_1006F1CA8(v42, v49);
    memcpy(v52, v49, 0x69uLL);
    memcpy(__dst, v49, 0x69uLL);
    sub_1000302D8(v52, &v48, &qword_100CD3880, &qword_100A7A780);
    sub_10003FDA0(__dst, &qword_100CD3880);
    memcpy(&v50[7], v52, 0x69uLL);
    v28 = v51;
    v29 = v41;
    (*(v2 + 104))(v4, enum case for Font.TextStyle.subheadline(_:), v41);
    static Font.Weight.semibold.getter();
    v30 = static Font.system(_:weight:)();
    (*(v2 + 8))(v4, v29);
    KeyPath = swift_getKeyPath();
    *v6 = v27;
    *(v6 + 1) = 0;
    v6[16] = v28;
    memcpy(v6 + 17, v50, 0x70uLL);
    *(v6 + 17) = KeyPath;
    *(v6 + 18) = v30;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CD3888, &qword_100A7A788);
    v32 = sub_10022E824(&qword_100CD3890, &qword_100A7A790);
    v33 = sub_1006F39F8();
    v49[0] = v32;
    v49[1] = v33;
    swift_getOpaqueTypeConformance2();
    sub_1006F3AE0();
    v26 = v44;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_6;
  }

  v21 = v39;
  sub_1006F1388(v39);
  v22 = v40;
  v23 = v45;
  (*(v40 + 16))(v6, v21, v45);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CD3888, &qword_100A7A788);
  v24 = sub_10022E824(&qword_100CD3890, &qword_100A7A790);
  v25 = sub_1006F39F8();
  __dst[0] = v24;
  __dst[1] = v25;
  swift_getOpaqueTypeConformance2();
  sub_1006F3AE0();
  v26 = v44;
  _ConditionalContent<>.init(storage:)();
  (*(v22 + 8))(v21, v23);
LABEL_6:
  v34 = v46;
  sub_1000302D8(v26, v46, &qword_100CD3878, &qword_100A7A778);
  v35 = v47;
  *v47 = 0;
  *(v35 + 8) = 1;
  v36 = sub_10022C350(&qword_100CD38C8, &qword_100A7A7B0);
  sub_1000302D8(v34, v35 + *(v36 + 48), &qword_100CD3878, &qword_100A7A778);
  sub_10003FDA0(v26, &qword_100CD3878);
  return sub_10003FDA0(v34, &qword_100CD3878);
}

uint64_t sub_1006F1388@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CD3890, &qword_100A7A790);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v26 = static VerticalAlignment.lastTextBaseline.getter();
  v33 = 1;
  sub_1006F1974(v31);
  memcpy(v34, v31, 0xC9uLL);
  memcpy(v35, v31, 0xC9uLL);
  sub_1000302D8(v34, &v30, &qword_100CD38D0, &qword_100A7A7B8);
  sub_10003FDA0(v35, &qword_100CD38D0);
  memcpy(&v32[7], v34, 0xC9uLL);
  v25 = v33;
  v24 = static Font.subheadline.getter();
  v23 = static Font.footnote.getter();
  v11 = v1 + *(type metadata accessor for PressureComponentContentView(0) + 20);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = v5;
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v12, 0);
    (*(v13 + 8))(v7, v4);
    LOBYTE(v12) = v31[0];
  }

  v15 = &v10[*(v8 + 36)];
  v16 = type metadata accessor for FontWithSmallVariantModifier(0);
  v17 = *(v16 + 24);
  v18 = enum case for Font.Leading.tight(_:);
  v19 = type metadata accessor for Font.Leading();
  (*(*(v19 - 8) + 104))(v15 + v17, v18, v19);
  sub_10001B350(v15 + v17, 0, 1, v19);
  v20 = v23;
  *v15 = v24;
  v15[1] = v20;
  *(v15 + *(v16 + 28)) = v12 & 1;
  *v10 = v26;
  *(v10 + 1) = 0;
  v10[16] = v25;
  memcpy(v10 + 17, v32, 0xD0uLL);
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  sub_1006F39F8();
  View.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  (*(v27 + 8))(v3, v29);
  return sub_10003FDA0(v10, &qword_100CD3890);
}

uint64_t sub_1006F1768@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CD3920, &unk_100A7A7F8);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = *(type metadata accessor for RoundedRectangle() + 20);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = type metadata accessor for RoundedCornerStyle();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #2.0 }

  *v8 = _Q0;
  v17 = static Color.white.getter();
  v18 = sub_10022C350(&qword_100CBDCE8, &qword_100A554E0);
  *&v8[*(v18 + 52)] = v17;
  *&v8[*(v18 + 56)] = 256;
  KeyPath = swift_getKeyPath();
  v20 = &v8[*(sub_10022C350(&qword_100CD3928, &qword_100A7A830) + 36)];
  *v20 = xmmword_100A7A3F0;
  *(v20 + 1) = xmmword_100A7A400;
  *(v20 + 4) = KeyPath;
  v20[40] = 0;
  *&v8[*(v3 + 44)] = xmmword_100A7A410;
  sub_1000302D8(v8, v5, &qword_100CD3920, &unk_100A7A7F8);
  sub_1000302D8(v5, a1, &qword_100CD3920, &unk_100A7A7F8);
  v21 = a1 + *(sub_10022C350(&qword_100CD3930, &qword_100A7A838) + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_10003FDA0(v8, &qword_100CD3920);
  return sub_10003FDA0(v5, &qword_100CD3920);
}

uint64_t sub_1006F1974@<X0>(uint64_t a1@<X8>)
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v54._object = 0x8000000100ADBC20;
  v3._countAndFlagsBits = 0x736572705F776F4CLL;
  v3._object = 0xEC00000065727573;
  v4._countAndFlagsBits = 7827276;
  v4._object = 0xE300000000000000;
  v54._countAndFlagsBits = 0xD00000000000002ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v54);

  sub_10002D5A4();
  v5 = Text.init<A>(_:)();
  v20 = v6;
  v21 = v5;
  v8 = v7;
  v19 = v9;
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v49 = 1;
  v48 = v42;
  v47 = v44;
  v10 = [v1 mainBundle];
  v55._object = 0x8000000100ADBC50;
  v11._countAndFlagsBits = 0x6572705F68676948;
  v11._object = 0xED00006572757373;
  v55._countAndFlagsBits = 0xD00000000000002FLL;
  v12._countAndFlagsBits = 1751607624;
  v12._object = 0xE400000000000000;
  object = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v55)._object;

  v29 = object;
  LOBYTE(v52[0]) = 0;
  v39 = 0;
  v40 = 1;
  *&v36 = v21;
  *(&v36 + 1) = v20;
  LOBYTE(v37) = v8 & 1;
  *(&v37 + 1) = v19;
  *v38 = KeyPath;
  *&v38[8] = 1;
  v38[16] = 0;
  *&v38[17] = 257;
  v41[0] = &v39;
  v41[1] = &v36;
  v28 = 0;
  LOBYTE(v29) = 1;
  v30 = v41[5];
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v35 = v46;
  *&v25 = Text.init<A>(_:)();
  *(&v25 + 1) = v14;
  LOBYTE(v26) = v15 & 1;
  *(&v26 + 1) = v16;
  *v27 = swift_getKeyPath();
  *&v27[8] = 1;
  v27[16] = 0;
  *&v27[17] = 257;
  v41[2] = &v28;
  v41[3] = &v25;
  v23 = 0;
  v24 = 1;
  v41[4] = &v23;
  sub_1003E9560(v41, a1);
  v50[0] = v25;
  v50[1] = v26;
  v51[0] = *v27;
  *(v51 + 15) = *&v27[15];
  sub_10003FDA0(v50, &qword_100CACF40);
  v52[0] = v36;
  v52[1] = v37;
  v53[0] = *v38;
  *(v53 + 15) = *&v38[15];
  return sub_10003FDA0(v52, &qword_100CACF40);
}

uint64_t sub_1006F1CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Image.init(systemName:)();
  v9 = a1 + *(type metadata accessor for PressureComponentContentView(0) + 20);
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v10, 0);
    (*(v5 + 8))(v7, v4);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = v36;
  v13 = v38;
  v14 = v40;
  v15 = v41;
  v35 = 1;
  v34 = v37;
  v33 = v39;
  v16 = Image.init(systemName:)();
  v29 = v8;
  v30 = 0;
  v31 = 1;
  v32[0] = &v30;
  v32[1] = &v29;
  v21 = 0;
  v22 = v35;
  v23 = v12;
  v24 = v34;
  v25 = v13;
  v26 = v33;
  v27 = v14;
  v28 = v15;
  v20 = v16;
  v32[2] = &v21;
  v32[3] = &v20;
  v18 = 0;
  v19 = 1;
  v32[4] = &v18;
  sub_1003E96A0(v32, a2);
}

void *sub_1006F1F5C@<X0>(uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v10 = 0;
  sub_1006F2030(v2, __src);
  memcpy(__dst, __src, 0x161uLL);
  memcpy(v12, __src, 0x161uLL);
  sub_1000302D8(__dst, &v7, &qword_100CD3778, &unk_100A7A618);
  sub_10003FDA0(v12, &qword_100CD3778);
  memcpy(&v9[7], __dst, 0x161uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x168uLL);
}

uint64_t sub_1006F2030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    sub_10022C350(&qword_100CB59A8, &qword_100A4D640);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100A2D320;
    v7 = static Axis.Set.horizontal.getter();
    *(v6 + 32) = v7;
    v8 = static Axis.Set.vertical.getter();
    *(v6 + 33) = v8;
    v9 = Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v7)
    {
      v9 = Axis.Set.init(rawValue:)();
    }

    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v8)
    {
      v9 = Axis.Set.init(rawValue:)();
    }

    sub_1006F2398(a1, __src);
    memcpy(__dst, __src, 0x140uLL);
    memcpy(v14, __src, 0x140uLL);
    sub_1000302D8(__dst, v18, &qword_100CD3780, &qword_100A7A628);
    sub_10003FDA0(v14, &qword_100CD3780);
    memcpy(&v17[7], __dst, 0x140uLL);
    LOBYTE(__src[0]) = v9;
    memcpy(__src + 1, v17, 0x147uLL);
    __src[41] = 0x3FF0000000000000;
    sub_1006F3814(__src);
  }

  else
  {
    v10 = static HorizontalAlignment.leading.getter();
    v16[0] = 1;
    sub_1006F2920(a1, __src);
    memcpy(__dst, __src, 0x90uLL);
    memcpy(v14, __src, 0x90uLL);
    sub_1000302D8(__dst, v18, &qword_100CD37D0, &qword_100A7A660);
    sub_10003FDA0(v14, &qword_100CD37D0);
    memcpy(&v12[7], __dst, 0x90uLL);
    __src[0] = v10;
    __src[1] = 0;
    LOBYTE(__src[2]) = v16[0];
    memcpy(&__src[2] + 1, v12, 0x97uLL);
    __src[21] = 0x3FF0000000000000;
    sub_1006F39E8(__src);
  }

  memcpy(v16, __src, 0x151uLL);
  sub_10022C350(&qword_100CD3788, &qword_100A7A630);
  sub_10022C350(&qword_100CD3790, &qword_100A7A638);
  sub_1006F3820();
  sub_1006F3904();
  _ConditionalContent<>.init(storage:)();
  memcpy(v16, v18, 0x151uLL);
  memcpy(v14, v18, 0x151uLL);
  memcpy(__src, v18, 0x151uLL);
  __dst[344] = 0;
  memcpy(a2, __src, 0x158uLL);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  sub_1000302D8(v14, __dst, &qword_100CD37C8, &qword_100A7A658);
  return sub_10003FDA0(v16, &qword_100CD37C8);
}

uint64_t sub_1006F2398@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = static VerticalAlignment.lastTextBaseline.getter();
  sub_1006F2614(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  sub_1000302D8(__dst, v20, &qword_100CD37E0, &qword_100A7A6D8);
  sub_10003FDA0(v16, &qword_100CD37E0);
  memcpy(&v14[7], __dst, 0x78uLL);
  v6 = static HorizontalAlignment.leading.getter();
  LOBYTE(v8[0]) = 1;
  sub_1006F2920(a1, __src);
  memcpy(v17, __src, sizeof(v17));
  memcpy(v18, __src, sizeof(v18));
  sub_1000302D8(v17, v20, &qword_100CD37D0, &qword_100A7A660);
  sub_10003FDA0(v18, &qword_100CD37D0);
  memcpy(&v13[7], v17, 0x90uLL);
  v19[0] = v5;
  v19[1] = 0x4030000000000000;
  LOBYTE(v19[2]) = 0;
  memcpy(&v19[2] + 1, v14, 0x7FuLL);
  LOWORD(v19[18]) = 257;
  memcpy(v12, v19, 0x92uLL);
  v20[0] = v6;
  v20[1] = 0;
  LOBYTE(v20[2]) = 1;
  memcpy(&v20[2] + 1, v13, 0x97uLL);
  memcpy(&v12[152], v20, 0xA8uLL);
  memcpy(a2, v12, 0x140uLL);
  __src[0] = v6;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v13, 0x97uLL);
  sub_1000302D8(v19, v8, &qword_100CD37E8, &qword_100A7A6E0);
  sub_1000302D8(v20, v8, &qword_100CD37A8, &unk_100A7A640);
  sub_10003FDA0(__src, &qword_100CD37A8);
  v8[0] = v5;
  v8[1] = 0x4030000000000000;
  v9 = 0;
  memcpy(v10, v14, sizeof(v10));
  v11 = 257;
  return sub_10003FDA0(v8, &qword_100CD37E8);
}

uint64_t sub_1006F2614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1006F27CC(a1, __src);
  v20 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(type metadata accessor for PressureComponentViewModel(0) + 28));
  v5 = v4[1];
  v23[0] = *v4;
  v23[1] = v5;
  sub_10002D5A4();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.subheadline.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10010CD64(v6, v8, v10 & 1);

  memcpy(__dst, __src, 0x48uLL);
  __dst[9] = KeyPath;
  __dst[10] = v20;
  memcpy(a2, __dst, 0x58uLL);
  *(a2 + 88) = v11;
  *(a2 + 96) = v13;
  *(a2 + 104) = v15 & 1;
  *(a2 + 112) = v17;
  sub_1000302D8(__dst, v23, &qword_100CD37F0, &qword_100A7A6E8);
  sub_10010CD54(v11, v13, v15 & 1);

  sub_10010CD64(v11, v13, v15 & 1);

  memcpy(v23, __src, 0x48uLL);
  v23[9] = KeyPath;
  v23[10] = v20;
  return sub_10003FDA0(v23, &qword_100CD37F0);
}

uint64_t sub_1006F27CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1006F2B50(a1, &v19);
  v5 = v19;
  v6 = BYTE1(v20);
  v7 = v20;
  v8 = (a1 + *(type metadata accessor for PressureComponentViewModel(0) + 24));
  v9 = v8[1];
  v19 = *v8;
  v20 = v9;
  sub_10002D5A4();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  LOBYTE(v19) = v6;
  v14 &= 1u;
  v22 = v14;
  v21 = 0;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 9) = v6;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  j__swift_retain_1();
  sub_10010CD54(v10, v12, v14);

  sub_10010CD64(v10, v12, v14);

  return j__swift_release();
}

uint64_t sub_1006F2920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = static VerticalAlignment.center.getter();
  LOBYTE(v27) = 1;
  sub_1006F27CC(a1, __src);
  memcpy(&v23[7], __src, 0x41uLL);
  v19 = v27;
  v21 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(type metadata accessor for PressureComponentViewModel(0) + 28));
  v5 = v4[1];
  v27 = *v4;
  v28 = v5;
  sub_10002D5A4();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.subheadline.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10010CD64(v6, v8, v10 & 1);

  v26[0] = v22;
  v26[1] = 0;
  LOBYTE(v26[2]) = v19;
  memcpy(&v26[2] + 1, v23, 0x48uLL);
  *(&v26[11] + 1) = *v25;
  HIDWORD(v26[11]) = *&v25[3];
  v26[12] = KeyPath;
  v26[13] = v21;
  memcpy(a2, v26, 0x70uLL);
  *(a2 + 112) = v11;
  *(a2 + 120) = v13;
  *(a2 + 128) = v15 & 1;
  *(a2 + 136) = v17;
  sub_1000302D8(v26, &v27, &qword_100CD37D8, &qword_100A7A698);
  sub_10010CD54(v11, v13, v15 & 1);

  sub_10010CD64(v11, v13, v15 & 1);

  v27 = v22;
  v28 = 0;
  v29 = v19;
  memcpy(v30, v23, sizeof(v30));
  *v31 = *v25;
  *&v31[3] = *&v25[3];
  v32 = KeyPath;
  v33 = v21;
  return sub_10003FDA0(&v27, &qword_100CD37D8);
}

uint64_t sub_1006F2B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PressureTrend();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, a1, v4);
  v11 = (*(v6 + 88))(v10, v4);
  if (v11 == enum case for PressureTrend.rising(_:) || v11 == enum case for PressureTrend.falling(_:))
  {
    Image.init(systemName:)();

    _ConditionalContent<>.init(storage:)();
    sub_10022C350(&qword_100CBFAD8, &qword_100A7A6D0);
    sub_1004DCAA0();
    _ConditionalContent<>.init(storage:)();

LABEL_6:
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 9) = v15;
    return result;
  }

  if (v11 == enum case for PressureTrend.steady(_:))
  {
    Image.init(systemName:)();
    sub_10022C350(&qword_100CBFAD8, &qword_100A7A6D0);
    sub_1004DCAA0();
    result = _ConditionalContent<>.init(storage:)();
    goto LABEL_6;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1006F2DCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorRenderingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GradientArcView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_1006EF034(v2, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GradientArcView);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_1006F3EB8(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  (*(v5 + 104))(v7, enum case for ColorRenderingMode.nonLinear(_:), v4);
  Canvas<>.init(opaque:colorMode:rendersAsynchronously:renderer:)();
  sub_10022C350(&qword_100CBD8C8, &unk_100A550D0);
  Canvas.rendersAsynchronously.setter();
  Canvas.rendersFirstFrameAsynchronously.setter();
  v13 = a1 + *(sub_10022C350(&qword_100CD39F8, &qword_100A7A8F8) + 36);
  *v13 = 0x3FF0000000000000;
  *(v13 + 8) = 0;
  result = sub_10022C350(&qword_100CD3A00, &unk_100A7A900);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1006F300C(uint64_t *a1, double *a2, double a3, double a4)
{
  v18 = type metadata accessor for EnvironmentValues();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GraphicsContext.Shading();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006F3344(a2);
  Path.init(ellipseIn:)();
  static GraphicsContext.Shading.conicGradient(_:center:angle:options:)();

  GraphicsContext.fill(_:with:style:)();
  sub_1001A8674(v19);
  v12 = *(v9 + 8);
  v12(v11, v8);
  GraphicsContext.blendMode.setter();
  v13 = a2 + *(type metadata accessor for GradientArcView(0) + 24);
  v14 = *v13;
  if (v13[8] != 1)
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v14, 0);
    (*(v5 + 8))(v7, v18);
  }

  Path.init(ellipseIn:)();
  static Color.clear.getter();
  static GraphicsContext.Shading.color(_:)();

  GraphicsContext.fill(_:with:style:)();
  sub_1001A8674(v20);
  return (v12)(v11, v8);
}

void sub_1006F3344(uint64_t a1)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PressureTrend();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GradientArcView(0);
  (*(v7 + 16))(v9, a1 + *(v10 + 20), v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == enum case for PressureTrend.rising(_:))
  {
    sub_10022C350(&qword_100CAC3F8, &qword_100A3B368);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BBA0;
    v13 = enum case for Color.RGBColorSpace.sRGB(_:);
    v14 = *(v3 + 104);
    v14(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
    Color.init(_:white:opacity:)();
    *(v12 + 32) = Gradient.Stop.init(color:location:)();
    *(v12 + 40) = v15;
    v14(v5, v13, v2);
    Color.init(_:white:opacity:)();
    *(v12 + 48) = Gradient.Stop.init(color:location:)();
    *(v12 + 56) = v16;
    v14(v5, v13, v2);
LABEL_5:
    Color.init(_:white:opacity:)();
    *(v12 + 64) = Gradient.Stop.init(color:location:)();
    *(v12 + 72) = v21;
LABEL_8:
    Gradient.init(stops:)();
    return;
  }

  if (v11 == enum case for PressureTrend.falling(_:))
  {
    sub_10022C350(&qword_100CAC3F8, &qword_100A3B368);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BBA0;
    v17 = enum case for Color.RGBColorSpace.sRGB(_:);
    v18 = *(v3 + 104);
    v18(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
    Color.init(_:white:opacity:)();
    *(v12 + 32) = Gradient.Stop.init(color:location:)();
    *(v12 + 40) = v19;
    v18(v5, v17, v2);
    Color.init(_:white:opacity:)();
    *(v12 + 48) = Gradient.Stop.init(color:location:)();
    *(v12 + 56) = v20;
    v18(v5, v17, v2);
    goto LABEL_5;
  }

  if (v11 == enum case for PressureTrend.steady(_:))
  {
    sub_10022C350(&qword_100CAC3F8, &qword_100A3B368);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100A3B020;
    v23 = enum case for Color.RGBColorSpace.sRGB(_:);
    v24 = *(v3 + 104);
    v24(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
    Color.init(_:white:opacity:)();
    *(v22 + 32) = Gradient.Stop.init(color:location:)();
    *(v22 + 40) = v25;
    v24(v5, v23, v2);
    Color.init(_:white:opacity:)();
    *(v22 + 48) = Gradient.Stop.init(color:location:)();
    *(v22 + 56) = v26;
    v24(v5, v23, v2);
    Color.init(_:white:opacity:)();
    *(v22 + 64) = Gradient.Stop.init(color:location:)();
    *(v22 + 72) = v27;
    v24(v5, v23, v2);
    Color.init(_:white:opacity:)();
    *(v22 + 80) = Gradient.Stop.init(color:location:)();
    *(v22 + 88) = v28;
    goto LABEL_8;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

unint64_t sub_1006F3820()
{
  result = qword_100CD3798;
  if (!qword_100CD3798)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD3788, &qword_100A7A630);
    v4[0] = sub_10023FBF4(&qword_100CD37A0, &qword_100CD37A8, &unk_100A7A640, &protocol conformance descriptor for VStack<A>);
    v4[1] = sub_10023FBF4(&qword_100CA47C8, &qword_100CA47D0, &qword_100A2EA00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3798);
  }

  return result;
}

unint64_t sub_1006F3904()
{
  result = qword_100CD37B0;
  if (!qword_100CD37B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD3790, &qword_100A7A638);
    v4[0] = sub_10023FBF4(&qword_100CD37B8, &unk_100CD37C0, &unk_100A7A650, &protocol conformance descriptor for ViewThatFits<A>);
    v4[1] = sub_10023FBF4(&qword_100CA47C8, &qword_100CA47D0, &qword_100A2EA00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD37B0);
  }

  return result;
}

unint64_t sub_1006F39F8()
{
  result = qword_100CD3898;
  if (!qword_100CD3898)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD3890, &qword_100A7A790);
    v4[0] = sub_10023FBF4(&qword_100CD38A0, &unk_100CD38A8, &unk_100A7A798, &protocol conformance descriptor for HStack<A>);
    v4[1] = sub_1006EEFCC(&qword_100CBB8D0, type metadata accessor for FontWithSmallVariantModifier, a9x);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3898);
  }

  return result;
}

unint64_t sub_1006F3AE0()
{
  result = qword_100CD38B0;
  if (!qword_100CD38B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD3888, &qword_100A7A788);
    v4[0] = sub_10023FBF4(&qword_100CD38B8, &unk_100CD38C0, &unk_100A7A7A0, &protocol conformance descriptor for HStack<A>);
    v4[1] = sub_10023FBF4(&qword_100CA53B8, &qword_100CA53C0, &unk_100A2F5E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD38B0);
  }

  return result;
}

unint64_t sub_1006F3BC4()
{
  result = qword_100CD38F0;
  if (!qword_100CD38F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD38E0, &qword_100A7A7D0);
    v4[0] = sub_1006F3CAC(&qword_100CD38F8, &unk_100CD3900, &unk_100A7A7E0, sub_1006F3D24);
    v4[1] = sub_1006EEFCC(&qword_100CBB8D0, type metadata accessor for FontWithSmallVariantModifier, a9x);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD38F0);
  }

  return result;
}

uint64_t sub_1006F3CAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    v9 = sub_10022E824(v7, v8);
    v10 = a4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006F3D24()
{
  result = qword_100CD3908;
  if (!qword_100CD3908)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD3910, &qword_100A7A7E8);
    v4[0] = sub_1004DCAA0();
    v4[1] = &protocol witness table for Image;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3908);
  }

  return result;
}

void sub_1006F3DF8(uint64_t a1)
{
  type metadata accessor for PressureTrend();
  if (v1 <= 0x3F)
  {
    sub_10009BE44(319, &qword_100CE0E20, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1006F3EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GradientArcView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006F3F1C(double a1, double a2)
{
  v6 = sub_100017580();
  v7 = *(type metadata accessor for GradientArcView(v6) - 8);
  v8 = (v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)));

  return sub_1006F300C(v2, v8, a1, a2);
}

unint64_t sub_1006F3FA0()
{
  result = qword_100CD3A08;
  if (!qword_100CD3A08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD3A00, &unk_100A7A900);
    v4[0] = sub_1006F402C();
    v4[1] = sub_1006F40E4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3A08);
  }

  return result;
}

unint64_t sub_1006F402C()
{
  result = qword_100CD3A10;
  if (!qword_100CD3A10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD39F8, &qword_100A7A8F8);
    v4[0] = sub_10023FBF4(&qword_100CBD8F0, &qword_100CBD8C8, &unk_100A550D0, &protocol conformance descriptor for Canvas<A>);
    v4[1] = &protocol witness table for _AspectRatioLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3A10);
  }

  return result;
}

unint64_t sub_1006F40E4()
{
  result = qword_100CD3A18;
  if (!qword_100CD3A18)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for _FlipForRTLEffect, &type metadata for _FlipForRTLEffect, v0, v1);
    atomic_store(result, &qword_100CD3A18);
  }

  return result;
}

uint64_t sub_1006F4148@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  v4 = a1[7];
  v18 = a1[5];
  v19 = v4;
  v5 = *(&v18 + 1);
  *a2 = v18;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  memcpy((a2 + v6[5]), a1, 0x70uLL);
  type metadata accessor for LocationComponentViewModel(0);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v6[8];
  v8 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
  v9 = enum case for DetailCondition.precipitationTotal(_:);
  v10 = type metadata accessor for DetailCondition();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  *(v7 + v8) = 0;
  v11 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  v12 = sub_100019DBC();
  sub_10001B350(v12, v13, v14, v11);
  sub_100428584(__dst, v16);
  sub_100358150(&v18, v16);
  sub_100358150(&v19, v16);
  sub_10013D288();
  result = Dictionary.init(dictionaryLiteral:)();
  *(a2 + v6[6]) = 256;
  *(a2 + v6[7]) = result;
  return result;
}

uint64_t sub_1006F4338()
{
  v1 = v0;
  v2 = type metadata accessor for DateInterval();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v4 - 8);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v32 - v7;
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  v24 = *(type metadata accessor for TrackExposureModifier(0) + 28);
  sub_10022C350(&qword_100CBB758, &unk_100A51060);
  v37 = v24;
  State.wrappedValue.getter();
  if (sub_100024D10(v10, 1, v11) == 1)
  {
    return sub_1001AEDF4(v10);
  }

  (*(v12 + 32))(v23, v10, v11);
  Date.init()();
  Date.distance(to:)();
  if (*(v1 + 8) <= v26)
  {
    v27 = *(v1 + 16);
    v32 = *(v1 + 24);
    v33 = v27;
    v28 = *(v12 + 16);
    v28(v17, v23, v11);
    v28(v14, v20, v11);
    v29 = v34;
    DateInterval.init(start:end:)();
    v33(v29);
    (*(v35 + 8))(v29, v36);
  }

  v30 = v38;
  sub_10001B350(v38, 1, 1, v11);
  sub_1000D47CC(v30, v39);
  State.wrappedValue.setter();
  sub_1001AEDF4(v30);
  v31 = *(v12 + 8);
  v31(v20, v11);
  return (v31)(v23, v11);
}

void sub_1006F46F4(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v16[-v6];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  v11 = (a1 + *(type metadata accessor for TrackExposureModifier(0) + 32));
  v12 = *v11;
  v13 = *(v11 + 1);
  v16[16] = v12;
  v17 = v13;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  if (v16[15] == 1)
  {
    sub_10022C350(&qword_100CBB758, &unk_100A51060);
    State.wrappedValue.getter();
    v14 = type metadata accessor for Date();
    v15 = sub_100024D10(v10, 1, v14);
    sub_1001AEDF4(v10);
    if (v15 == 1)
    {
      Date.init()();
      sub_10001B350(v7, 0, 1, v14);
      sub_1000D47CC(v7, v4);
      State.wrappedValue.setter();
      sub_1001AEDF4(v7);
    }
  }
}

void sub_1006F48AC()
{
  v1 = *(type metadata accessor for TrackExposureModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1006F46F4(v2);
}

unint64_t sub_1006F4968()
{
  result = qword_100CD3B90;
  if (!qword_100CD3B90)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CD3B88, &qword_100A7AAA8);
    v4[2] = sub_10022E824(&qword_100CD3B78, &qword_100A7AAA0);
    v4[3] = sub_1001CF210();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100636EA4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3B90);
  }

  return result;
}

uint64_t sub_1006F4A3C(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1006F4A5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 97))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 96) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 96) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_1006F4AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 96) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1006F4B34(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 96) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0;
    v2 = 0x80;
  }

  *(result + 96) = v2;
  return result;
}

uint64_t sub_1006F4B84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1) | (a1[3] << 16);
  v4 = a1[96];
  if (v4 >> 6)
  {
    v5 = *(a1 + 1);
    v6 = *(a1 + 1);
    v8 = *(a1 + 1);
    v7 = *(a1 + 2);
    v10 = *(a1 + 3);
    v9 = *(a1 + 4);
    v11 = *(a1 + 5);
    if (v4 >> 6 != 1)
    {
      v24 = v2 | (v3 << 8) | (v5 << 32);
      if (v4 != 128 || (v25 = vorrq_s8(vorrq_s8(v11, v10), vorrq_s8(v9, v7)), v24 | *&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | v8 | v6 | *(&v8 + 1)))
      {
        v28 = a2[96];
        if ((v28 & 0xC0) != 0x80)
        {
          return 0;
        }

        if (v28 != 128 || *a2 != 1)
        {
          return 0;
        }

        v30 = vorrq_s8(vorrq_s8(*(a2 + 2), *(a2 + 4)), vorrq_s8(*(a2 + 3), *(a2 + 5)));
        if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | *(a2 + 3) | *(a2 + 2) | *(a2 + 1))
        {
          return 0;
        }
      }

      else
      {
        v26 = a2[96];
        if ((v26 & 0xC0) != 0x80)
        {
          return 0;
        }

        if (v26 != 128)
        {
          return 0;
        }

        v27 = vorrq_s8(vorrq_s8(vorrq_s8(*(a2 + 2), *(a2 + 4)), vorrq_s8(*(a2 + 3), *(a2 + 5))), vorrq_s8(*a2, *(a2 + 1)));
        if (vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)))
        {
          return 0;
        }
      }

      return 1;
    }

    v12 = a2[96];
    if ((v12 & 0xC0) == 0x40)
    {
      v14 = *a2;
      v13 = *(a2 + 1);
      v15 = *(a2 + 2);
      v16 = *(a2 + 3);
      v18 = *(a2 + 4);
      v17 = *(a2 + 5);
      v20 = *(a2 + 6);
      v19 = *(a2 + 7);
      v21 = *(a2 + 4);
      if (v4)
      {
        v22 = *(a2 + 5);
        LOBYTE(v49) = v2;
        *(&v49 + 1) = v3;
        BYTE3(v49) = BYTE2(v3);
        HIDWORD(v49) = v5;
        v50 = v6;
        v51 = v8;
        v52 = v7;
        v53 = v10;
        v54 = v9;
        v55 = v11;
        if ((v12 & 1) == 0)
        {
          return 0;
        }

        v39 = v14;
        v40 = v13;
        v41 = v15;
        v42 = v16;
        v43 = v18;
        v44 = v17;
        v45 = v20;
        v46 = v19;
        v47 = v21;
        v48 = v22;
        if ((sub_1005F7E98(&v49, &v39) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        LOBYTE(v49) = v2;
        *(&v49 + 1) = v3;
        BYTE3(v49) = BYTE2(v3);
        HIDWORD(v49) = v5;
        v50 = v6;
        v51 = v8;
        v52 = v7;
        v53 = v10;
        v54.i64[0] = v9.i64[0];
        if (v12)
        {
          return 0;
        }

        v39 = v14;
        v40 = v13;
        v41 = v15;
        v42 = v16;
        v43 = v18;
        v44 = v17;
        v45 = v20;
        v46 = v19;
        *&v47 = v21;
        if ((sub_1006F4F30(&v49, &v39) & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    if (a2[96] > 0x3Fu || ((v2 ^ *a2) & 1) != 0)
    {
      return 0;
    }

    v23 = *(a2 + 1) | (a2[3] << 16);
    if (*(a1 + 1) == 2)
    {
      if (*(a2 + 1) == 2)
      {
        return 1;
      }
    }

    else if (*(a1 + 1) == 3)
    {
      if (*(a2 + 1) == 3)
      {
        return 1;
      }
    }

    else
    {
      if (*(a2 + 1) & 0xFE) == 2 || ((v23 ^ v3) & 1) != 0 || (((v23 ^ v3) >> 8))
      {
        return 0;
      }

      v32 = a2[3];
      v33 = PredictedLocationsAuthorizationState.rawValue.getter(a1[3]);
      v35 = v34;
      if (v33 == PredictedLocationsAuthorizationState.rawValue.getter(v32) && v35 == v36)
      {

        return 1;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1006F4E90(void *__src, _BYTE *a2)
{
  if (*(__src + 96))
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (a2[96])
    {
      memcpy(v5, a2, sizeof(v5));
      v3 = sub_1005F7E98(__dst, v5);
      return v3 & 1;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if (a2[96])
  {
    goto LABEL_5;
  }

  return sub_1006F4F30(__src, a2);
}

uint64_t sub_1006F4F30(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 33);
  v37 = *(a2 + 34);
  v38 = *(a1 + 34);
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  v35 = *(a2 + 35);
  v36 = *(a1 + 35);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v5 == v9;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((v6 ^ v10))
  {
    return 0;
  }

  if ((v7 ^ v11))
  {
    return 0;
  }

  if ((v38 ^ v37))
  {
    return 0;
  }

  if ((v36 ^ v35))
  {
    return 0;
  }

  sub_1009EA0D4();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v16 == 2 || ((v16 ^ v15) & 1) != 0)
    {
      return result;
    }
  }

  v18 = *(a2 + 49);
  v19 = PredictedLocationsAuthorizationState.rawValue.getter(*(a1 + 49));
  v21 = v20;
  v22 = PredictedLocationsAuthorizationState.rawValue.getter(v18);
  if (v19 == v22 && v21 == v23)
  {
  }

  else
  {
    v25 = sub_10001F23C(v22);

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = *(a2 + 50);
  v27 = LocationAuthorizationState.rawValue.getter(*(a1 + 50));
  v29 = v28;
  v30 = LocationAuthorizationState.rawValue.getter(v26);
  if (v27 == v30 && v29 == v31)
  {
  }

  else
  {
    v33 = sub_10001F23C(v30);

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_1000BA238() & 1) == 0 || ((*(a1 + 52) ^ *(a2 + 52)) & 1) != 0 || ((*(a1 + 53) ^ *(a2 + 53)))
  {
    return 0;
  }

  if (a1[7] == *(a2 + 56) && a1[8] == *(a2 + 64))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1006F51A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 97))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 96);
      if (v3 <= 1)
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

uint64_t sub_1006F51E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

void sub_1006F52B4(uint64_t a1)
{
  sub_10010F3E4(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

BOOL sub_1006F5368()
{
  v1 = *(v0 + 8);
  result = 0;
  if (*(v1 + 16))
  {
    v2 = *(type metadata accessor for ComparisonCapsuleViewModel.Row(0) - 8);
    if (*(v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 24))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1006F53E0@<X0>(uint64_t a1@<X8>)
{
  v34[3] = a1;
  v34[2] = sub_10022C350(&qword_100CD3C28, &qword_100A7ADD8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = v34 - v4;
  v34[0] = sub_10022C350(&qword_100CD3C30, &qword_100A7ADE0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = v34 - v7;
  v34[1] = sub_10022C350(&qword_100CD3C38, &qword_100A7ADE8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000249D0();
  v10 = type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v34 - v17;
  type metadata accessor for ComparisonCapsuleView(0);
  v19 = v1;
  sub_10011A1CC();
  (*(v12 + 104))(v15, enum case for DynamicTypeSize.accessibility1(_:), v10);
  v20 = static DynamicTypeSize.< infix(_:_:)();
  v21 = *(v12 + 8);
  v21(v15, v10);
  v21(v18, v10);
  v22 = static Axis.Set.horizontal.getter();
  if (v20)
  {
    *v2 = v22;
    v23 = sub_10022C350(&qword_100CD3C58, &qword_100A7ADF8);
    sub_1006F5770(v19, &v2[*(v23 + 44)]);
    v24 = &qword_100CD3C38;
    sub_1000302D8(v2, v8, &qword_100CD3C38, &qword_100A7ADE8);
    swift_storeEnumTagMultiPayload();
    sub_100008D38();
    sub_10023FBF4(v25, &qword_100CD3C38, &qword_100A7ADE8, v26);
    sub_10023FBF4(&qword_100CD3C50, &qword_100CD3C28, &qword_100A7ADD8, v18);
    sub_10003C770();
    _ConditionalContent<>.init(storage:)();
    v27 = v2;
  }

  else
  {
    *v5 = v22;
    v28 = sub_10022C350(&qword_100CD3C40, &qword_100A7ADF0);
    sub_1006F5B18(v19, &v5[*(v28 + 44)]);
    v24 = &qword_100CD3C28;
    sub_1000302D8(v5, v8, &qword_100CD3C28, &qword_100A7ADD8);
    swift_storeEnumTagMultiPayload();
    sub_100008D38();
    sub_10023FBF4(v29, v30, v31, v32);
    sub_10023FBF4(&qword_100CD3C50, &qword_100CD3C28, &qword_100A7ADD8, v18);
    sub_10003C770();
    _ConditionalContent<>.init(storage:)();
    v27 = v5;
  }

  return sub_10003FDA0(v27, v24);
}

uint64_t sub_1006F5770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ComparisonCapsuleCompactGridView(0);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_10022C350(&qword_100CD3C60, &qword_100A7AE00);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  if (sub_1006F5368())
  {
    v25 = 0x3FF0000000000000;
    v26 = 0x4010000000000000;
    sub_10014AB54();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    ScaledValue.init(wrappedValue:step:)();
    v21 = &v9[*(v4 + 20)];
    *v21 = v16;
    *(v21 + 1) = v17;
    *(v21 + 2) = v18;
    *(v21 + 3) = v19;
    *(v21 + 4) = v20;
    v9[*(v4 + 24)] = 1;
    sub_1006FB734(v9, v15, type metadata accessor for ComparisonCapsuleCompactGridView);
    sub_10001B350(v15, 0, 1, v4);
  }

  else
  {
    sub_10001B350(v15, 1, 1, v4);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
  }

  v25 = 0x3FF0000000000000;
  v26 = 0x4010000000000000;
  sub_10014AB54();

  ScaledValue.init(wrappedValue:step:)();
  v22 = &v9[*(v4 + 20)];
  *v22 = v16;
  *(v22 + 1) = v17;
  *(v22 + 2) = v18;
  *(v22 + 3) = v19;
  *(v22 + 4) = v20;
  v9[*(v4 + 24)] = 0;
  sub_1000302D8(v15, v12, &qword_100CD3C60, &qword_100A7AE00);
  sub_1006FB638(v9, v6, type metadata accessor for ComparisonCapsuleCompactGridView);
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = 0;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = v18;
  *(a2 + 72) = v19;
  *(a2 + 80) = v20;
  *(a2 + 88) = 1;
  v23 = sub_10022C350(&qword_100CD3C68, &qword_100A7AE08);
  sub_1000302D8(v12, a2 + *(v23 + 64), &qword_100CD3C60, &qword_100A7AE00);
  sub_1006FB638(v6, a2 + *(v23 + 80), type metadata accessor for ComparisonCapsuleCompactGridView);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1006FB6DC(v9, type metadata accessor for ComparisonCapsuleCompactGridView);
  sub_10003FDA0(v15, &qword_100CD3C60);
  sub_1006FB6DC(v6, type metadata accessor for ComparisonCapsuleCompactGridView);
  sub_10003FDA0(v12, &qword_100CD3C60);
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1006F5B18@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for ComparisonCapsuleCompactGridView(0);
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v43 - v7;
  v8 = sub_10022C350(&qword_100CD3C60, &qword_100A7AE00);
  __chkstk_darwin(v8 - 8);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  v13 = 1;
  if (sub_1006F5368())
  {
    v14 = v12;
    v15 = *a1;
    v16 = *(a1 + 1);
    v17 = *(a1 + 2);
    v18 = *(a1 + 3);
    v19 = *(a1 + 4);
    v53 = 0x3FF0000000000000;
    v54 = 0x4010000000000000;
    sub_10014AB54();

    v20 = v52;
    ScaledValue.init(wrappedValue:step:)();
    v21 = v20 + *(v3 + 20);
    *v21 = v15;
    v12 = v14;
    *(v21 + 8) = v16;
    *(v21 + 16) = v17;
    *(v21 + 24) = v18;
    *(v21 + 32) = v19;
    *(v20 + *(v3 + 24)) = 1;
    sub_1006FB734(v20, v14, type metadata accessor for ComparisonCapsuleCompactGridView);
    v13 = 0;
  }

  sub_10001B350(v12, v13, 1, v3);
  v22 = *a1;
  v23 = *(a1 + 1);
  v24 = *(a1 + 2);
  v25 = *(a1 + 3);
  v26 = *(a1 + 4);
  v53 = 0x3FF0000000000000;
  v54 = 0x4010000000000000;
  sub_10014AB54();

  ScaledValue.init(wrappedValue:step:)();
  v27 = &v5[*(v3 + 20)];
  *v27 = v22;
  *(v27 + 1) = v23;
  *(v27 + 2) = v24;
  *(v27 + 3) = v25;
  *(v27 + 4) = v26;
  v28 = *(v3 + 24);
  v50 = v5;
  v5[v28] = 0;
  v29 = sub_1006F5368();
  v44 = v22;
  if (v29)
  {
    v47 = v26;
    v48 = v25;

    v46 = 1;
    v30 = v22;
    v31 = v23;
    v32 = v24;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v47 = 0;
    v48 = 0;
    v46 = 0;
  }

  v33 = v51;
  sub_1000302D8(v12, v51, &qword_100CD3C60, &qword_100A7AE00);
  v45 = v12;
  v34 = v52;
  sub_1006FB638(v50, v52, type metadata accessor for ComparisonCapsuleCompactGridView);
  v35 = v33;
  v36 = v49;
  sub_1000302D8(v35, v49, &qword_100CD3C60, &qword_100A7AE00);
  v37 = sub_10022C350(&qword_100CD3C70, &qword_100A7AE10);
  sub_1006FB638(v34, v36 + v37[12], type metadata accessor for ComparisonCapsuleCompactGridView);
  v38 = v36 + v37[16];
  *v38 = v30;
  *(v38 + 8) = v31;
  v43 = v32;
  v40 = v47;
  v39 = v48;
  *(v38 + 16) = v32;
  *(v38 + 24) = v39;
  *(v38 + 32) = v40;
  *(v38 + 40) = v46;
  v41 = v36 + v37[20];
  *v41 = v44;
  *(v41 + 8) = v23;
  *(v41 + 16) = v24;
  *(v41 + 24) = v25;
  *(v41 + 32) = v26;
  *(v41 + 40) = 0;

  sub_1006F5F84(v30, v31);

  sub_1006FB6DC(v50, type metadata accessor for ComparisonCapsuleCompactGridView);
  sub_10003FDA0(v45, &qword_100CD3C60);

  sub_1006F5FC8(v30, v31);
  sub_1006FB6DC(v52, type metadata accessor for ComparisonCapsuleCompactGridView);
  return sub_10003FDA0(v51, &qword_100CD3C60);
}

double sub_1006F5F84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1006F5FC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1006F6044(uint64_t a1)
{
  sub_1001BA110(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1006F60C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006F6108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1006F6164()
{
  result = qword_100CD3D10;
  if (!qword_100CD3D10)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CD3D18, qword_100A7AEB0);
    v4[0] = sub_10023FBF4(&qword_100CD3C48, &qword_100CD3C38, &qword_100A7ADE8, &protocol conformance descriptor for ViewThatFits<A>);
    v4[1] = sub_10023FBF4(&qword_100CD3C50, &qword_100CD3C28, &qword_100A7ADD8, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3D10);
  }

  return result;
}

uint64_t sub_1006F6260@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v12[0] = sub_10022C350(&qword_100CD3E38, &qword_100A7B110);
  __chkstk_darwin(v12[0]);
  v3 = v12 - v2;
  v4 = v1[1];
  v19 = *v1;
  v20 = v4;
  v21 = *(v1 + 4);
  sub_10064E920(v16);
  v5 = v17;
  v6 = v18;
  sub_1000161C0(v16, v17);
  v7 = (*(v6 + 64))(v5, v6);
  *v3 = static Alignment.center.getter();
  *(v3 + 1) = v8;
  *(v3 + 2) = 0;
  v3[24] = 0;
  *(v3 + 4) = v7;
  v3[40] = 0;
  sub_10022C350(&qword_100CD3E40, &qword_100A7B118);
  v22 = v20;
  v23 = *(&v19 + 1);
  v15 = *(&v19 + 1);
  v9 = swift_allocObject();
  v10 = v1[1];
  v9[1] = *v1;
  v9[2] = v10;
  *(v9 + 41) = *(v1 + 25);

  sub_1000302D8(&v23, v14, &qword_100CD3D28, &qword_100A7AFB0);
  sub_1006FB5BC(&v22, v14);
  sub_10022C350(&qword_100CD3D28, &qword_100A7AFB0);
  sub_10022C350(&qword_100CD3E48, &qword_100A7B120);
  sub_10023FBF4(&qword_100CD3D38, &qword_100CD3D28, &qword_100A7AFB0, &protocol conformance descriptor for [A]);
  sub_10023FBF4(&qword_100CD3E50, &qword_100CD3E48, &qword_100A7B120, &protocol conformance descriptor for TupleView<A>);
  sub_1006FB694(&qword_100CD3D48, type metadata accessor for ComparisonCapsuleViewModel.Row, byte_100A6F398);
  ForEach<>.init(_:content:)();
  sub_100006F14(v16);
  v13 = v1;
  sub_10022C350(&qword_100CD3DA0, &unk_100A7B030);
  sub_10023FBF4(&qword_100CD3E58, &qword_100CD3E38, &qword_100A7B110, &protocol conformance descriptor for Grid<A>);
  sub_1006FB818();
  View.accessibilityChildren<A>(children:)();
  return sub_10003FDA0(v3, &qword_100CD3E38);
}

uint64_t sub_1006F6598@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v59 = type metadata accessor for Divider();
  v53 = *(v59 - 8);
  __chkstk_darwin(v59);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  __chkstk_darwin(v56);
  v50 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10022C350(&qword_100CD3D50, &unk_100A7AFC0);
  __chkstk_darwin(v54);
  v8 = &v50 - v7;
  v9 = sub_10022C350(&qword_100CD3D58, &qword_100A7EC00);
  __chkstk_darwin(v9 - 8);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = sub_10022C350(&qword_100CB4B90, &qword_100A7AFD0);
  __chkstk_darwin(v17 - 8);
  v58 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  v22 = type metadata accessor for ComparisonCapsuleRowView(0);
  v23 = (v22 - 8);
  __chkstk_darwin(v22);
  v57 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = (&v50 - v26);
  v28 = a2[1];
  v66 = *a2;
  v67 = v28;
  v68 = *(a2 + 4);
  v29 = *(&v66 + 1);
  v69 = v28;
  v30 = &v50 + v23[10] - v26;
  v55 = a1;
  sub_1006FB638(a1, v30, type metadata accessor for ComparisonCapsuleViewModel.Row);
  LOBYTE(a1) = *(a2 + 40);
  *v27 = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  *(v27 + v23[7]) = swift_getKeyPath();
  sub_10022C350(&qword_100CA72A8, &qword_100AA1B70);
  swift_storeEnumTagMultiPayload();
  v61[0] = 0x4010000000000000;
  v65 = 0x3FF0000000000000;

  sub_1006FB5BC(&v69, v64);
  sub_10014AB54();
  ScaledValue.init(wrappedValue:step:)();
  v31 = v27 + v23[9];
  v32 = a2[1];
  *v31 = *a2;
  *(v31 + 1) = v32;
  *(v31 + 4) = *(a2 + 4);
  *(v27 + v23[11]) = a1;
  sub_10064E920(v61);
  v34 = v62;
  v33 = v63;
  sub_1000161C0(v61, v62);
  if (((*(v33 + 104))(v34, v33) & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1006FB638(v55, v16, type metadata accessor for ComparisonCapsuleViewModel.Row);
  v35 = v56;
  sub_10001B350(v16, 0, 1, v56);
  sub_1002F558C(v29);
  v36 = *(v54 + 48);
  sub_1000302D8(v16, v8, &qword_100CD3D58, &qword_100A7EC00);
  sub_1000302D8(v13, &v8[v36], &qword_100CD3D58, &qword_100A7EC00);
  if (sub_100024D10(v8, 1, v35) != 1)
  {
    v39 = v51;
    sub_1000302D8(v8, v51, &qword_100CD3D58, &qword_100A7EC00);
    if (sub_100024D10(&v8[v36], 1, v35) != 1)
    {
      v46 = &v8[v36];
      v47 = v50;
      sub_1006FB734(v46, v50, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_10064E7C8();
      v49 = v48;
      sub_1006FB6DC(v47, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_10003FDA0(v13, &qword_100CD3D58);
      sub_10003FDA0(v16, &qword_100CD3D58);
      sub_1006FB6DC(v39, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_10003FDA0(v8, &qword_100CD3D58);
      sub_100006F14(v61);
      v38 = v59;
      if (v49)
      {
        v37 = 1;
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_10003FDA0(v13, &qword_100CD3D58);
    sub_10003FDA0(v16, &qword_100CD3D58);
    sub_1006FB6DC(v39, type metadata accessor for ComparisonCapsuleViewModel.Row);
LABEL_8:
    sub_10003FDA0(v8, &qword_100CD3D50);
    sub_100006F14(v61);
    v38 = v59;
LABEL_9:
    v40 = v52;
    Divider.init()();
    (*(v53 + 32))(v21, v40, v38);
    v37 = 0;
    goto LABEL_10;
  }

  sub_10003FDA0(v13, &qword_100CD3D58);
  sub_10003FDA0(v16, &qword_100CD3D58);
  if (sub_100024D10(&v8[v36], 1, v35) != 1)
  {
    goto LABEL_8;
  }

  sub_10003FDA0(v8, &qword_100CD3D58);
LABEL_5:
  sub_100006F14(v61);
  v37 = 1;
  v38 = v59;
LABEL_10:
  sub_10001B350(v21, v37, 1, v38);
  v41 = v57;
  sub_1006FB638(v27, v57, type metadata accessor for ComparisonCapsuleRowView);
  v42 = v58;
  sub_1000302D8(v21, v58, &qword_100CB4B90, &qword_100A7AFD0);
  v43 = v60;
  sub_1006FB638(v41, v60, type metadata accessor for ComparisonCapsuleRowView);
  v44 = sub_10022C350(&qword_100CD3E60, &unk_100A7B190);
  sub_1000302D8(v42, v43 + *(v44 + 48), &qword_100CB4B90, &qword_100A7AFD0);
  sub_10003FDA0(v21, &qword_100CB4B90);
  sub_1006FB6DC(v27, type metadata accessor for ComparisonCapsuleRowView);
  sub_10003FDA0(v42, &qword_100CB4B90);
  return sub_1006FB6DC(v41, type metadata accessor for ComparisonCapsuleRowView);
}

uint64_t sub_1006F6D64(uint64_t a1)
{

  sub_10022C350(&qword_100CD3D28, &qword_100A7AFB0);
  sub_10022C350(&qword_100CB90B0, &qword_100A4D630);
  sub_10023FBF4(&qword_100CD3D38, &qword_100CD3D28, &qword_100A7AFB0, &protocol conformance descriptor for [A]);
  sub_100433B9C();
  sub_1006FB694(&qword_100CD3D48, type metadata accessor for ComparisonCapsuleViewModel.Row, byte_100A6F398);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1006F6E88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1000302D8(v2, &v13 - v9, &qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10011C0F0(v10, a1, &qword_100CA6028, &qword_100A40610);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1006F7068@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA72A8, &qword_100AA1B70);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ComparisonCapsuleRowView(0);
  sub_1000302D8(v1 + *(v10 + 20), v9, &qword_100CA72A8, &qword_100AA1B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Locale();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1006F72C8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v3 = sub_10022C350(&qword_100CD4088, &qword_100A7B358);
  return sub_1006F7318(v1, (a1 + *(v3 + 36)));
}

uint64_t sub_1006F7318@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v185 = a2;
  v184 = sub_10022C350(&qword_100CD4090, &unk_100A7B360);
  __chkstk_darwin(v184);
  v207 = &v173[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v210 = &v173[-v5];
  v209 = type metadata accessor for Locale.Language();
  v206 = *(v209 - 1);
  __chkstk_darwin(v209);
  v205 = &v173[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  v203 = *(v7 - 8);
  v204 = v7;
  __chkstk_darwin(v7);
  v202 = &v173[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UserInterfaceSizeClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v189 = &v173[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  __chkstk_darwin(v12);
  v195 = &v173[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v173[-v15];
  v17 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v17 - 8);
  v188 = &v173[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v196 = &v173[-v20];
  __chkstk_darwin(v21);
  v194 = &v173[-v22];
  __chkstk_darwin(v23);
  v25 = &v173[-v24];
  __chkstk_darwin(v26);
  v28 = &v173[-v27];
  __chkstk_darwin(v29);
  v31 = &v173[-v30];
  v208 = a1;
  sub_1006F6E88(&v173[-v30]);
  v197 = v10;
  v32 = *(v10 + 104);
  LODWORD(v191) = enum case for UserInterfaceSizeClass.regular(_:);
  v192 = v10 + 104;
  v190 = v32;
  v32(v28);
  sub_10001B350(v28, 0, 1, v9);
  v193 = v12;
  v33 = *(v12 + 48);
  sub_1000302D8(v31, v16, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v28, &v16[v33], &qword_100CA6028, &qword_100A40610);
  v34 = sub_100024D10(v16, 1, v9);
  v198 = v9;
  if (v34 == 1)
  {
    sub_10003FDA0(v28, &qword_100CA6028);
    sub_10003FDA0(v31, &qword_100CA6028);
    if (sub_100024D10(&v16[v33], 1, v9) == 1)
    {
      sub_10003FDA0(v16, &qword_100CA6028);
LABEL_10:
      v36 = v208;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_1000302D8(v16, v25, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v16[v33], 1, v9) == 1)
  {
    sub_10003FDA0(v28, &qword_100CA6028);
    sub_10003FDA0(v31, &qword_100CA6028);
    (*(v197 + 8))(v25, v9);
LABEL_6:
    sub_10003FDA0(v16, &qword_100CA64E8);
    goto LABEL_7;
  }

  v40 = v197;
  v41 = v189;
  (*(v197 + 32))(v189, &v16[v33], v9);
  sub_1006FB694(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  LODWORD(KeyPath) = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v40 + 8);
  v42(v41, v9);
  sub_10003FDA0(v28, &qword_100CA6028);
  sub_10003FDA0(v31, &qword_100CA6028);
  v42(v25, v198);
  sub_10003FDA0(v16, &qword_100CA6028);
  if (KeyPath)
  {
    goto LABEL_10;
  }

LABEL_7:
  v35 = v202;
  v36 = v208;
  sub_1006F7068(v202);
  v37 = v205;
  Locale.language.getter();
  (*(v203 + 8))(v35, v204);
  v38 = Locale.Language.isUrdu.getter();
  (*(v206 + 8))(v37, v209);
  if ((v38 & 1) == 0)
  {
    v209 = type metadata accessor for ComparisonCapsuleRowView(0);
    v39 = (v36 + v209[8]);
    goto LABEL_13;
  }

LABEL_11:
  v209 = type metadata accessor for ComparisonCapsuleRowView(0);
  v39 = (v36 + v209[8]);
  if (v39[3])
  {
    v43 = v39[2];
    goto LABEL_14;
  }

LABEL_13:
  v43 = *v39;
LABEL_14:

  v228 = v43;
  v229 = v44;
  sub_10002D5A4();
  v45 = Text.init<A>(_:)();
  v47 = v46;
  v49 = v48;
  type metadata accessor for ComparisonCapsuleRowView(0);
  v50 = v36 + v209[7];
  *&v263[32] = *(v50 + 32);
  v51 = *(v50 + 16);
  *v263 = *v50;
  *&v263[16] = v51;
  sub_10064E920(&v228);
  v52 = v232;
  v53 = v233;
  sub_1000161C0(&v228, v232);
  (*(v53 + 32))(v52, v53);
  v54 = Text.font(_:)();
  v56 = v55;
  v58 = v57;
  sub_10010CD64(v45, v47, v49 & 1);

  sub_100006F14(&v228);
  sub_10064E920(&v228);
  v59 = v232;
  v60 = v233;
  sub_1000161C0(&v228, v232);
  v211[0] = (*(v60 + 8))(v59, v60);
  v61 = Text.foregroundStyle<A>(_:)();
  v204 = v62;
  v205 = v61;
  LOBYTE(v59) = v63;
  v206 = v64;
  v65 = v58 & 1;
  v66 = v208;
  sub_10010CD64(v54, v56, v65);

  sub_100006F14(&v228);
  KeyPath = swift_getKeyPath();
  static UnitPoint.leading.getter();
  v202 = v68;
  v203 = v67;
  v199 = v59 & 1;
  v256 = v59 & 1;
  v254 = 0;
  v200 = static Edge.Set.trailing.getter();
  v183 = *(v66 + v209[9]);
  if (v183 == 1)
  {
    sub_10064E920(&v228);
    v69 = v232;
    v70 = v233;
    sub_1000161C0(&v228, v232);
    (*(v70 + 72))(v69, v70);
    sub_100006F14(&v228);
    v71 = 0x3FF0000000000000;
    goto LABEL_26;
  }

  v72 = v194;
  sub_1006F6E88(v194);
  v73 = v196;
  v74 = v198;
  (v190)(v196, v191, v198);
  sub_10001B350(v73, 0, 1, v74);
  v75 = *(v193 + 48);
  v76 = v195;
  sub_1000302D8(v72, v195, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v73, &v76[v75], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v76, 1, v74) == 1)
  {
    sub_10003FDA0(v73, &qword_100CA6028);
    sub_10003FDA0(v72, &qword_100CA6028);
    if (sub_100024D10(&v76[v75], 1, v74) == 1)
    {
      sub_10003FDA0(v76, &qword_100CA6028);
LABEL_24:
      sub_10064E920(&v228);
      v83 = v232;
      v84 = v233;
      sub_1000161C0(&v228, v232);
      (*(v84 + 88))(v83, v84);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v77 = v188;
  sub_1000302D8(v76, v188, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v76[v75], 1, v74) == 1)
  {
    sub_10003FDA0(v73, &qword_100CA6028);
    sub_10003FDA0(v72, &qword_100CA6028);
    (*(v197 + 8))(v77, v74);
LABEL_21:
    sub_10003FDA0(v76, &qword_100CA64E8);
    goto LABEL_22;
  }

  v80 = v197;
  v81 = v189;
  (*(v197 + 32))(v189, &v76[v75], v74);
  sub_1006FB694(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  LODWORD(v193) = dispatch thunk of static Equatable.== infix(_:_:)();
  v82 = *(v80 + 8);
  v82(v81, v74);
  sub_10003FDA0(v196, &qword_100CA6028);
  sub_10003FDA0(v72, &qword_100CA6028);
  v82(v77, v74);
  sub_10003FDA0(v76, &qword_100CA6028);
  if (v193)
  {
    goto LABEL_24;
  }

LABEL_22:
  sub_10064E920(&v228);
  v78 = v232;
  v79 = v233;
  sub_1000161C0(&v228, v232);
  (*(v79 + 80))(v78, v79);
LABEL_25:
  sub_100006F14(&v228);
  v71 = 0;
LABEL_26:
  EdgeInsets.init(_all:)();
  v181 = v86;
  v182 = v85;
  v197 = v88;
  v198 = v87;
  v257 = 0;
  v260 = v263[0];
  v261 = *&v263[8];
  v262 = *&v263[24];
  v89 = v66 + v209[8];
  sub_10064EA98();
  v186 = v71;
  if (v93)
  {
    v94 = v90;
    v95 = v91;
    v96 = v92;
    v97 = v93;
    sub_10064E920(&v228);
    v98 = v232;
    v176 = v89;
    v99 = v233;
    sub_1000161C0(&v228, v232);
    (*(v99 + 40))(v98, v99);
    v193 = v96 & 1;
    LOBYTE(v211[0]) = v96 & 1;
    v100 = Text.font(_:)();
    v102 = v101;
    v192 = v97;
    LOBYTE(v97) = v103;

    sub_100006F14(&v228);
    sub_10064E920(&v228);
    v104 = v232;
    v105 = v233;
    sub_1000161C0(&v228, v232);
    v211[0] = (*(v105 + 16))(v104, v105);
    v106 = Text.foregroundStyle<A>(_:)();
    v108 = v107;
    v190 = v94;
    v191 = v95;
    LOBYTE(v95) = v109;
    v110 = v102;
    v66 = v208;
    sub_10010CD64(v100, v110, v97 & 1);

    sub_100006F14(&v228);
    v209 = Text.monospacedDigit()();
    v195 = v112;
    v196 = v111;
    LOBYTE(v98) = v113;
    sub_10010CD64(v106, v108, v95 & 1);

    v194 = swift_getKeyPath();
    LOBYTE(v100) = static Edge.Set.trailing.getter();
    sub_10064E920(&v228);
    v114 = v232;
    v115 = v233;
    sub_1000161C0(&v228, v232);
    (*(v115 + 56))(v114, v115);
    EdgeInsets.init(_all:)();
    v179 = v117;
    v180 = v116;
    v177 = v119;
    v178 = v118;
    sub_10010CD64(v190, v191, v193);

    LOBYTE(v211[0]) = v98 & 1;
    LOBYTE(v226[0]) = 0;
    LOBYTE(v212[0]) = 0;
    sub_100006F14(&v228);
    v191 = LOBYTE(v211[0]);
    v192 = LOBYTE(v226[0]);
    LODWORD(v193) = 257;
    v189 = 1;
    v190 = v100;
    v187 = LOBYTE(v212[0]);
    v188 = v186;
  }

  else
  {
    v209 = 0;
    v195 = 0;
    v196 = 0;
    v194 = 0;
    v188 = 0;
    v189 = 0;
    LODWORD(v193) = 0;
    v187 = 0;
    v190 = 0;
    v191 = 0;
    v192 = 0;
    v179 = 0;
    v180 = 0;
    v177 = 0;
    v178 = 0;
  }

  v120 = v210;
  sub_1006F88C4(v66, v210);
  v120[*(sub_10022C350(&qword_100CD4098, &qword_100A7B370) + 36)] = 1;
  v121 = static Edge.Set.trailing.getter();
  sub_10064E920(&v228);
  v122 = v232;
  v123 = v233;
  sub_1000161C0(&v228, v232);
  (*(v123 + 56))(v122, v123);
  EdgeInsets.init(_all:)();
  v124 = &v120[*(v184 + 36)];
  *v124 = v121;
  *(v124 + 1) = v125;
  *(v124 + 2) = v126;
  *(v124 + 3) = v127;
  *(v124 + 4) = v128;
  v124[40] = 0;
  sub_100006F14(&v228);
  sub_10064EEBC();
  v130 = v129;
  v132 = v131;
  v134 = v133;
  sub_10064E920(&v228);
  v135 = v232;
  v136 = v233;
  sub_1000161C0(&v228, v232);
  (*(v136 + 48))(v135, v136);
  v137 = Text.font(_:)();
  v139 = v138;
  v141 = v140;
  sub_10010CD64(v130, v132, v134 & 1);

  sub_100006F14(&v228);
  sub_10064E920(&v228);
  v142 = v232;
  v143 = v233;
  sub_1000161C0(&v228, v232);
  v211[0] = (*(v143 + 24))(v142, v143);
  v144 = Text.foregroundStyle<A>(_:)();
  v146 = v145;
  v148 = v147;
  sub_10010CD64(v137, v139, v141 & 1);

  sub_100006F14(&v228);
  v149 = Text.monospacedDigit()();
  v176 = v149;
  v184 = v150;
  LOBYTE(v137) = v151;
  v208 = v152;
  sub_10010CD64(v144, v146, v148 & 1);

  v153 = swift_getKeyPath();
  v175 = v153;
  static UnitPoint.trailing.getter();
  v155 = v154;
  v157 = v156;
  v252 = v137 & 1;
  v158 = v137 & 1;
  v174 = v137 & 1;
  v250 = 0;
  v159 = v207;
  sub_1000302D8(v210, v207, &qword_100CD4090, &unk_100A7B360);
  v211[0] = v205;
  v211[1] = v204;
  LOBYTE(v211[2]) = v199;
  *(&v211[2] + 1) = *v255;
  HIDWORD(v211[2]) = *&v255[3];
  v211[3] = v206;
  v211[4] = KeyPath;
  v211[5] = 1;
  LOBYTE(v211[6]) = 0;
  *(&v211[6] + 1) = *v253;
  HIDWORD(v211[6]) = *&v253[3];
  v211[7] = v203;
  v211[8] = v202;
  LOBYTE(v211[9]) = v200;
  HIDWORD(v211[9]) = *&v258[3];
  *(&v211[9] + 1) = *v258;
  v161 = v181;
  v160 = v182;
  v211[10] = v182;
  v211[11] = v181;
  v211[12] = v198;
  v211[13] = v197;
  LOBYTE(v211[14]) = 0;
  *(&v211[14] + 1) = *v259;
  HIDWORD(v211[14]) = *&v259[3];
  v162 = v185;
  v163 = v186;
  v211[15] = v186;
  LOWORD(v211[16]) = 257;
  memcpy(v185, v211, 0x82uLL);
  v162[17] = 0;
  *(v162 + 144) = 0;
  *(v162 + 145) = v183 ^ 1;
  v212[0] = v209;
  v212[1] = v196;
  v212[2] = v191;
  v212[3] = v195;
  v212[4] = v194;
  v212[5] = v189;
  v212[6] = v192;
  v212[7] = v190;
  v165 = v179;
  v164 = v180;
  v212[8] = v180;
  v212[9] = v179;
  v167 = v177;
  v166 = v178;
  v212[10] = v178;
  v212[11] = v177;
  v212[12] = v187;
  v212[13] = v188;
  LOWORD(v212[14]) = v193;
  memcpy(v162 + 19, v212, 0x72uLL);
  v168 = sub_10022C350(&qword_100CD40A0, &qword_100A7B378);
  sub_1000302D8(v159, v162 + *(v168 + 80), &qword_100CD4090, &unk_100A7B360);
  v169 = *(v168 + 96);
  v213[0] = v149;
  v170 = v184;
  v213[1] = v184;
  LOBYTE(v213[2]) = v158;
  *(&v213[2] + 1) = *v251;
  HIDWORD(v213[2]) = *&v251[3];
  v171 = v208;
  v213[3] = v208;
  v213[4] = v153;
  v213[5] = 1;
  LOBYTE(v213[6]) = 0;
  *(&v213[6] + 1) = *v249;
  HIDWORD(v213[6]) = *&v249[3];
  v213[7] = v155;
  v213[8] = v157;
  v213[9] = v163;
  LOWORD(v213[10]) = 257;
  memcpy(v162 + v169, v213, 0x52uLL);
  sub_1000302D8(v211, &v228, &qword_100CD40A8, &qword_100A7B380);
  sub_1000302D8(v212, &v228, &qword_100CD40B0, &qword_100A7B388);
  sub_1000302D8(v213, &v228, &qword_100CD40B8, &qword_100A7B390);
  sub_10003FDA0(v210, &qword_100CD4090);
  v214[0] = v176;
  v214[1] = v170;
  v215 = v174;
  *v216 = *v251;
  *&v216[3] = *&v251[3];
  v217 = v171;
  v218 = v175;
  v219 = 1;
  v220 = 0;
  *v221 = *v249;
  *&v221[3] = *&v249[3];
  v222 = v155;
  v223 = v157;
  v224 = v163;
  v225 = 257;
  sub_10003FDA0(v214, &qword_100CD40B8);
  sub_10003FDA0(v207, &qword_100CD4090);
  v226[0] = v209;
  v226[1] = v196;
  v226[2] = v191;
  v226[3] = v195;
  v226[4] = v194;
  v226[5] = v189;
  v226[6] = v192;
  v226[7] = v190;
  v226[8] = v164;
  v226[9] = v165;
  v226[10] = v166;
  v226[11] = v167;
  v226[12] = v187;
  v226[13] = v188;
  v227 = v193;
  sub_10003FDA0(v226, &qword_100CD40B0);
  v228 = v205;
  v229 = v204;
  v230 = v199;
  *v231 = *v255;
  *&v231[3] = *&v255[3];
  v232 = v206;
  v233 = KeyPath;
  v234 = 1;
  v235 = 0;
  *v236 = *v253;
  *&v236[3] = *&v253[3];
  v237 = v203;
  v238 = v202;
  v239 = v200;
  *&v240[3] = *&v258[3];
  *v240 = *v258;
  v241 = v160;
  v242 = v161;
  v243 = v198;
  v244 = v197;
  v245 = 0;
  *v246 = *v259;
  *&v246[3] = *&v259[3];
  v247 = v163;
  v248 = 257;
  return sub_10003FDA0(&v228, &qword_100CD40A8);
}

uint64_t sub_1006F88C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for CapsuleView(0);
  __chkstk_darwin(v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10022C350(&qword_100CD40C0, &qword_100A7B398);
  __chkstk_darwin(v42);
  v44 = &v38 - v6;
  v7 = sub_10022C350(&qword_100CD40C8, &qword_100A7B3A0);
  __chkstk_darwin(v7);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = sub_10022C350(&qword_100CD40D0, &qword_100A7B3A8);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CD40D8, &qword_100A7B3B0);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = type metadata accessor for ComparisonCapsuleRowView(0);
  v19 = (a1 + v18[7]);
  if (*(a1 + v18[9]) == 1)
  {
    v20 = v19[1];
    v47 = *v19;
    v48 = v20;
    *&v49 = *(v19 + 4);
    v53 = *(&v47 + 1);
    v54 = v20;
    sub_1006FB638(a1 + v18[8], &v17[*(v3 + 20)], type metadata accessor for ComparisonCapsuleViewModel.Row);
    v21 = v48;
    *v17 = v47;
    *(v17 + 1) = v21;
    *(v17 + 4) = v49;
    sub_1000302D8(&v53, __src, &qword_100CD3D28, &qword_100A7AFB0);
    sub_1006FB5BC(&v54, __src);
    sub_10064E920(&v50);
    v22 = *(&v51 + 1);
    v23 = v52;
    sub_1000161C0(&v50, *(&v51 + 1));
    (*(v23 + 96))(v22, v23);
    sub_10022C350(&qword_100CBB750, &unk_100A51050);
    ScaledValue.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v24 = &v17[*(v15 + 36)];
    v25 = __src[1];
    *v24 = __src[0];
    *(v24 + 1) = v25;
    *(v24 + 2) = __src[2];
    sub_100006F14(&v50);
    v26 = &qword_100CD40D8;
    sub_1000302D8(v17, v14, &qword_100CD40D8, &qword_100A7B3B0);
    swift_storeEnumTagMultiPayload();
    sub_1006FD894(&qword_100CD40E0, &qword_100CD40D8, &qword_100A7B3B0, &protocol witness table for _FrameLayout);
    sub_1006FD7E8();
    _ConditionalContent<>.init(storage:)();
    v27 = v17;
  }

  else
  {
    v39 = v11;
    v40 = v12;
    v41 = v15;
    v28 = v19[1];
    v50 = *v19;
    v51 = v28;
    v52 = *(v19 + 4);
    v53 = *(&v50 + 1);
    v54 = v28;
    sub_1006FB638(a1 + v18[8], &v5[*(v3 + 20)], type metadata accessor for ComparisonCapsuleViewModel.Row);
    v29 = v51;
    *v5 = v50;
    *(v5 + 1) = v29;
    *(v5 + 4) = v52;
    sub_1000302D8(&v53, __src, &qword_100CD3D28, &qword_100A7AFB0);
    sub_1006FB5BC(&v54, __src);
    sub_10064E920(&v47);
    v30 = *(&v48 + 1);
    v31 = v49;
    sub_1000161C0(&v47, *(&v48 + 1));
    (*(v31 + 96))(v30, v31);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v32 = v44;
    sub_1006FB734(v5, v44, type metadata accessor for CapsuleView);
    memcpy((v32 + *(v42 + 36)), __src, 0x70uLL);
    sub_100006F14(&v47);
    sub_10022C350(&qword_100CBB750, &unk_100A51050);
    ScaledValue.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v33 = v43;
    sub_10011C0F0(v32, v43, &qword_100CD40C0, &qword_100A7B398);
    v34 = (v33 + *(v7 + 36));
    v35 = v48;
    *v34 = v47;
    v34[1] = v35;
    v34[2] = v49;
    v26 = &qword_100CD40C8;
    v36 = v39;
    sub_10011C0F0(v33, v39, &qword_100CD40C8, &qword_100A7B3A0);
    sub_1000302D8(v36, v14, &qword_100CD40C8, &qword_100A7B3A0);
    swift_storeEnumTagMultiPayload();
    sub_1006FD894(&qword_100CD40E0, &qword_100CD40D8, &qword_100A7B3B0, &protocol witness table for _FrameLayout);
    sub_1006FD7E8();
    _ConditionalContent<>.init(storage:)();
    v27 = v36;
  }

  return sub_10003FDA0(v27, v26);
}

uint64_t sub_1006F8FC8@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = type metadata accessor for ComparisonCapsuleCompactGridView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v12[0] = sub_10022C350(&qword_100CD3D80, &qword_100A7B018);
  __chkstk_darwin(v12[0]);
  v7 = v12 - v6;
  *v7 = static Alignment.center.getter();
  *(v7 + 1) = v8;
  *(v7 + 2) = 0;
  v7[24] = 0;
  *(v7 + 4) = 0x4020000000000000;
  v7[40] = 0;
  sub_10022C350(&qword_100CD3D88, &qword_100A7B020);
  v14 = *(v1 + *(v3 + 28) + 8);
  sub_1006FB638(v1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComparisonCapsuleCompactGridView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1006FB734(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ComparisonCapsuleCompactGridView);

  sub_10022C350(&qword_100CD3D28, &qword_100A7AFB0);
  sub_10022C350(&qword_100CD3D90, &qword_100A7B028);
  sub_10023FBF4(&qword_100CD3D38, &qword_100CD3D28, &qword_100A7AFB0, &protocol conformance descriptor for [A]);
  sub_10023FBF4(&qword_100CD3D98, &qword_100CD3D90, &qword_100A7B028, &protocol conformance descriptor for TupleView<A>);
  sub_1006FB694(&qword_100CD3D48, type metadata accessor for ComparisonCapsuleViewModel.Row, byte_100A6F398);
  ForEach<>.init(_:content:)();
  v13 = v1;
  sub_10022C350(&qword_100CD3DA0, &unk_100A7B030);
  sub_10023FBF4(&qword_100CD3DA8, &qword_100CD3D80, &qword_100A7B018, &protocol conformance descriptor for Grid<A>);
  sub_1006FB818();
  View.accessibilityChildren<A>(children:)();
  return sub_10003FDA0(v7, &qword_100CD3D80);
}

uint64_t sub_1006F9338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v60 = a3;
  v59 = type metadata accessor for Divider();
  v53 = *(v59 - 8);
  __chkstk_darwin(v59);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  __chkstk_darwin(v55);
  v51 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CD3D50, &unk_100A7AFC0);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = sub_10022C350(&qword_100CD3D58, &qword_100A7EC00);
  __chkstk_darwin(v10 - 8);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = sub_10022C350(&qword_100CB4B90, &qword_100A7AFD0);
  __chkstk_darwin(v18 - 8);
  v58 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v61 = &v51 - v21;
  v22 = sub_10022C350(&qword_100CD3DB8, &qword_100A7B040);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v57 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  __src[0] = 0;
  LOBYTE(__src[1]) = 1;
  sub_1006F9AAC(a2, a1, &__src[2]);
  *v27 = 0;
  v27[8] = 1;
  v28 = *(v23 + 44);
  v56 = v27;
  sub_1006F9CD0(a2, a1, &v27[v28]);
  v29 = (a2 + *(type metadata accessor for ComparisonCapsuleCompactGridView(0) + 20));
  v67 = *(v29 + 4);
  v30 = v29[1];
  v65 = *v29;
  v66 = v30;
  sub_10064E920(v63);
  v31 = v63[3];
  v32 = v63[4];
  sub_1000161C0(v63, v63[3]);
  if (((*(v32 + 104))(v31, v32) & 1) == 0)
  {
    goto LABEL_5;
  }

  v33 = *(&v65 + 1);
  sub_1006FB638(a1, v17, type metadata accessor for ComparisonCapsuleViewModel.Row);
  v34 = v55;
  sub_10001B350(v17, 0, 1, v55);
  sub_1002F558C(v33);
  v35 = *(v7 + 48);
  sub_1000302D8(v17, v9, &qword_100CD3D58, &qword_100A7EC00);
  sub_1000302D8(v14, &v9[v35], &qword_100CD3D58, &qword_100A7EC00);
  if (sub_100024D10(v9, 1, v34) != 1)
  {
    v38 = v52;
    sub_1000302D8(v9, v52, &qword_100CD3D58, &qword_100A7EC00);
    if (sub_100024D10(&v9[v35], 1, v34) != 1)
    {
      v48 = v51;
      sub_1006FB734(&v9[v35], v51, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_10064E7C8();
      v50 = v49;
      sub_1006FB6DC(v48, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_10003FDA0(v14, &qword_100CD3D58);
      sub_10003FDA0(v17, &qword_100CD3D58);
      sub_1006FB6DC(v38, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_10003FDA0(v9, &qword_100CD3D58);
      sub_100006F14(v63);
      if (v50)
      {
        goto LABEL_6;
      }

LABEL_10:
      v39 = v54;
      Divider.init()();
      v40 = v39;
      v37 = v59;
      (*(v53 + 32))(v61, v40, v59);
      v36 = 0;
      goto LABEL_11;
    }

    sub_10003FDA0(v14, &qword_100CD3D58);
    sub_10003FDA0(v17, &qword_100CD3D58);
    sub_1006FB6DC(v38, type metadata accessor for ComparisonCapsuleViewModel.Row);
LABEL_9:
    sub_10003FDA0(v9, &qword_100CD3D50);
    sub_100006F14(v63);
    goto LABEL_10;
  }

  sub_10003FDA0(v14, &qword_100CD3D58);
  sub_10003FDA0(v17, &qword_100CD3D58);
  if (sub_100024D10(&v9[v35], 1, v34) != 1)
  {
    goto LABEL_9;
  }

  sub_10003FDA0(v9, &qword_100CD3D58);
LABEL_5:
  sub_100006F14(v63);
LABEL_6:
  v36 = 1;
  v37 = v59;
LABEL_11:
  v41 = v61;
  sub_10001B350(v61, v36, 1, v37);
  v42 = v56;
  v43 = v57;
  sub_1000302D8(v56, v57, &qword_100CD3DB8, &qword_100A7B040);
  v44 = v58;
  sub_1000302D8(v41, v58, &qword_100CB4B90, &qword_100A7AFD0);
  memcpy(v62, __src, sizeof(v62));
  v45 = v60;
  memcpy(v60, __src, 0x68uLL);
  v46 = sub_10022C350(&qword_100CD3DC0, &qword_100A7B048);
  sub_1000302D8(v43, v45 + *(v46 + 48), &qword_100CD3DB8, &qword_100A7B040);
  sub_1000302D8(v44, v45 + *(v46 + 64), &qword_100CB4B90, &qword_100A7AFD0);
  sub_1000302D8(v62, v63, &qword_100CD3DC8, &qword_100A7B050);
  sub_10003FDA0(v41, &qword_100CB4B90);
  sub_10003FDA0(v42, &qword_100CD3DB8);
  sub_10003FDA0(v44, &qword_100CB4B90);
  sub_10003FDA0(v43, &qword_100CD3DB8);
  memcpy(v63, __src, sizeof(v63));
  return sub_10003FDA0(v63, &qword_100CD3DC8);
}

void sub_1006F9AAC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(type metadata accessor for ComparisonCapsuleCompactGridView(0) + 24));
  v31[1] = a2;
  if (v10 == 1 && a2[3])
  {
    v11 = a2[2];
  }

  else
  {
    v11 = *a2;
  }

  v32 = v11;
  v33 = v12;
  sub_10002D5A4();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  (*(v7 + 104))(v9, enum case for Font.TextStyle.title3(_:), v6);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v7 + 8))(v9, v6);
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_10010CD64(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  sub_10064D998();
  if (v26)
  {

    v27 = 3;
  }

  else
  {
    v27 = 2;
  }

  v28 = v22 & 1;
  LOBYTE(v32) = v28;
  v34 = 0;
  static UnitPoint.leading.getter();
  *a3 = v18;
  *(a3 + 8) = v20;
  *(a3 + 16) = v28;
  *(a3 + 24) = v24;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  *(a3 + 56) = v27;
  *(a3 + 64) = 0;
  *(a3 + 72) = v29;
  *(a3 + 80) = v30;
}

uint64_t sub_1006F9CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a3;
  v111 = sub_10022C350(&qword_100CD3DD0, &qword_100A7B058);
  __chkstk_darwin(v111);
  v115 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v102 - v7;
  v109 = sub_10022C350(&qword_100CD3DD8, &qword_100A7B060);
  __chkstk_darwin(v109);
  v113 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v118 = &v102 - v10;
  v11 = sub_10022C350(&qword_100CD3DE0, &qword_100A7B068);
  __chkstk_darwin(v11);
  v13 = &v102 - v12;
  v14 = sub_10022C350(&qword_100CD3DE8, &qword_100A7B070);
  __chkstk_darwin(v14 - 8);
  v110 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v117 = &v102 - v17;
  v18 = a1 + *(type metadata accessor for ComparisonCapsuleCompactGridView(0) + 20);
  *&v126[32] = *(v18 + 32);
  v19 = *(v18 + 16);
  *v126 = *v18;
  *&v126[16] = v19;
  sub_10064EA98();
  if (v23)
  {
    v24 = v20;
    v25 = v22;
    v26 = v23;
    v27 = v21;
    v104 = v21;
    KeyPath = swift_getKeyPath();
    v107 = v25 & 1;
    sub_10010CD54(v24, v27, v25 & 1);

    sub_10064E920(v121);
    *&v116 = a2;
    v28 = v121[3];
    v29 = v121[4];
    sub_1000161C0(v121, v121[3]);
    v102 = (*(v29 + 40))(v28, v29);
    v30 = swift_getKeyPath();
    LOBYTE(v119[0]) = v25 & 1;
    LOBYTE(v122) = 0;
    sub_100006F14(v121);
    v31 = v119[0];
    v103 = v13;
    v32 = v122;
    sub_10064E920(v121);
    v33 = v24;
    v106 = v24;
    v108 = v11;
    v35 = v121[3];
    v34 = v121[4];
    sub_1000161C0(v121, v121[3]);
    v36 = (*(v34 + 16))(v35, v34);
    sub_100006F14(v121);
    v37 = v104;
    v119[0] = v33;
    v119[1] = v104;
    LOBYTE(v119[2]) = v31;
    v119[3] = v26;
    v119[4] = KeyPath;
    v119[5] = 1;
    LOBYTE(v119[6]) = v32;
    v119[7] = v30;
    v119[8] = v102;
    v119[9] = v36;
    sub_10022C350(&qword_100CD3DF8, &qword_100A7B0E0);
    sub_1006FD144();
    v38 = v103;
    View.monospacedDigit()();
    memcpy(v121, v119, sizeof(v121));
    sub_10003FDA0(v121, &qword_100CD3DF8);
    LOBYTE(v33) = static Edge.Set.trailing.getter();
    sub_10064E920(v119);
    v39 = v119[3];
    v40 = v119[4];
    sub_1000161C0(v119, v119[3]);
    (*(v40 + 56))(v39, v40);
    EdgeInsets.init(_all:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_10010CD64(v106, v37, v107);

    v49 = v38 + *(sub_10022C350(&qword_100CD3E30, &qword_100A7B108) + 36);
    *v49 = v33;
    a2 = v116;
    *(v49 + 8) = v42;
    *(v49 + 16) = v44;
    *(v49 + 24) = v46;
    *(v49 + 32) = v48;
    *(v49 + 40) = 0;
    sub_100006F14(v119);
    v50 = v108;
    *(v38 + *(v108 + 36)) = 257;
    v51 = v117;
    sub_10020B8F4(v38, v117);
    v52 = v51;
    v53 = 0;
    v54 = v50;
  }

  else
  {
    v52 = v117;
    v53 = 1;
    v54 = v11;
  }

  sub_10001B350(v52, v53, 1, v54);
  v116 = *&v126[8];
  v125[0] = v126[0];
  *&v125[8] = *&v126[8];
  *&v125[24] = *&v126[24];
  v55 = type metadata accessor for CapsuleView(0);
  v56 = v118;
  sub_1006FB638(a2, v118 + *(v55 + 20), type metadata accessor for ComparisonCapsuleViewModel.Row);
  v57 = *&v125[16];
  *v56 = *v125;
  *(v56 + 16) = v57;
  *(v56 + 32) = *&v125[32];
  *(v56 + *(sub_10022C350(&qword_100CD3DF0, &qword_100A7B078) + 36)) = 1;

  sub_10022C350(&qword_100CBB750, &unk_100A51050);
  ScaledValue.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v58 = (v56 + *(v109 + 36));
  v59 = v123;
  *v58 = v122;
  v58[1] = v59;
  v58[2] = v124;
  sub_10064EEBC();
  *&v116 = v60;
  v109 = v61;
  v63 = v62;
  v65 = v64;
  v66 = swift_getKeyPath();
  sub_10064E920(v121);
  v67 = v121[3];
  v68 = v121[4];
  sub_1000161C0(v121, v121[3]);
  v69 = (*(v68 + 48))(v67, v68);
  v70 = swift_getKeyPath();
  LOBYTE(v119[0]) = v63 & 1;
  v120 = 0;
  sub_100006F14(v121);
  v71 = v119[0];
  v72 = v120;
  sub_10064E920(v121);
  v74 = v121[3];
  v73 = v121[4];
  sub_1000161C0(v121, v121[3]);
  v75 = (*(v73 + 24))(v74, v73);
  sub_100006F14(v121);
  v119[0] = v116;
  v119[1] = v109;
  LOBYTE(v119[2]) = v71;
  v119[3] = v65;
  v119[4] = v66;
  v119[5] = 1;
  LOBYTE(v119[6]) = v72;
  v119[7] = v70;
  v119[8] = v69;
  v119[9] = v75;
  sub_10022C350(&qword_100CD3DF8, &qword_100A7B0E0);
  sub_1006FD144();
  v76 = v112;
  View.monospacedDigit()();
  memcpy(v121, v119, sizeof(v121));
  sub_10003FDA0(v121, &qword_100CD3DF8);
  static UnitPoint.trailing.getter();
  v78 = v77;
  v80 = v79;
  v81 = (v76 + *(sub_10022C350(&qword_100CD3E18, &qword_100A7B0F0) + 36));
  *v81 = v78;
  v81[1] = v80;
  v82 = static Edge.Set.leading.getter();
  sub_10064E920(v119);
  v83 = v119[3];
  v84 = v119[4];
  sub_1000161C0(v119, v119[3]);
  (*(v84 + 56))(v83, v84);
  EdgeInsets.init(_all:)();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v76 + *(sub_10022C350(&qword_100CD3E20, &qword_100A7B0F8) + 36);
  *v93 = v82;
  *(v93 + 8) = v86;
  *(v93 + 16) = v88;
  *(v93 + 24) = v90;
  *(v93 + 32) = v92;
  *(v93 + 40) = 0;
  sub_100006F14(v119);
  v94 = v110;
  *(v76 + *(v111 + 36)) = 257;
  v95 = v117;
  sub_1000302D8(v117, v94, &qword_100CD3DE8, &qword_100A7B070);
  v96 = v118;
  v97 = v113;
  sub_1000302D8(v118, v113, &qword_100CD3DD8, &qword_100A7B060);
  v98 = v115;
  sub_1000302D8(v76, v115, &qword_100CD3DD0, &qword_100A7B058);
  v99 = v114;
  sub_1000302D8(v94, v114, &qword_100CD3DE8, &qword_100A7B070);
  v100 = sub_10022C350(&qword_100CD3E28, &qword_100A7B100);
  sub_1000302D8(v97, v99 + *(v100 + 48), &qword_100CD3DD8, &qword_100A7B060);
  sub_1000302D8(v98, v99 + *(v100 + 64), &qword_100CD3DD0, &qword_100A7B058);
  sub_10003FDA0(v76, &qword_100CD3DD0);
  sub_10003FDA0(v96, &qword_100CD3DD8);
  sub_10003FDA0(v95, &qword_100CD3DE8);
  sub_10003FDA0(v98, &qword_100CD3DD0);
  sub_10003FDA0(v97, &qword_100CD3DD8);
  return sub_10003FDA0(v94, &qword_100CD3DE8);
}

uint64_t sub_1006FA63C(uint64_t a1)
{
  type metadata accessor for ComparisonCapsuleCompactGridView(0);

  sub_10022C350(&qword_100CD3D28, &qword_100A7AFB0);
  sub_10022C350(&qword_100CB90B0, &qword_100A4D630);
  sub_10023FBF4(&qword_100CD3D38, &qword_100CD3D28, &qword_100A7AFB0, &protocol conformance descriptor for [A]);
  sub_100433B9C();
  sub_1006FB694(&qword_100CD3D48, type metadata accessor for ComparisonCapsuleViewModel.Row, byte_100A6F398);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1006FA774()
{
  v0 = type metadata accessor for RoundedRectangle();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = (v3 - v2);
  sub_10022C350(&qword_100CB90B0, &qword_100A4D630);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = *(v0 + 20);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  type metadata accessor for RoundedCornerStyle();
  sub_1000037E8();
  (*(v10 + 104))(&v4[v8], v9);
  __asm { FMOV            V0.2D, #5.0 }

  *v4 = _Q0;
  sub_10064DEA4();
  v19[0] = v16;
  v19[1] = v17;
  sub_1006FB694(&qword_100CA47B8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  sub_10002D5A4();
  View.accessibilityLabel<A>(_:)();

  sub_1006FB6DC(v4, &type metadata accessor for RoundedRectangle);
  ModifiedContent<>.accessibilityRespondsToUserInteraction(_:)();
  return sub_10003FDA0(v7, &qword_100CB90B0);
}

uint64_t sub_1006FA96C@<X0>(uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v5 = v2[1];
  v17 = *v2;
  v18 = v5;
  v19 = *(v2 + 4);
  sub_10064E920(v14);
  v6 = v15;
  v7 = v16;
  sub_1000161C0(v14, v15);
  v8 = (*(v7 + 64))(v6, v7);
  *a2 = v4;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  sub_10022C350(&qword_100CD3D20, &qword_100A7AFA8);
  v20 = v18;
  v21 = *(&v17 + 1);
  v13 = *(&v17 + 1);
  v9 = swift_allocObject();
  v10 = v2[1];
  v9[1] = *v2;
  v9[2] = v10;
  *(v9 + 41) = *(v2 + 25);

  sub_1000302D8(&v21, v12, &qword_100CD3D28, &qword_100A7AFB0);
  sub_1006FB5BC(&v20, v12);
  sub_10022C350(&qword_100CD3D28, &qword_100A7AFB0);
  sub_10022C350(&qword_100CD3D30, &qword_100A7AFB8);
  sub_10023FBF4(&qword_100CD3D38, &qword_100CD3D28, &qword_100A7AFB0, &protocol conformance descriptor for [A]);
  sub_10023FBF4(&qword_100CD3D40, &qword_100CD3D30, &qword_100A7AFB8, &protocol conformance descriptor for TupleView<A>);
  sub_1006FB694(&qword_100CD3D48, type metadata accessor for ComparisonCapsuleViewModel.Row, byte_100A6F398);
  ForEach<>.init(_:content:)();
  return sub_100006F14(v14);
}

uint64_t sub_1006FABA0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v82 = type metadata accessor for Divider();
  v67 = *(v82 - 8);
  __chkstk_darwin(v82);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  __chkstk_darwin(v77);
  v65 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10022C350(&qword_100CD3D50, &unk_100A7AFC0) - 8;
  __chkstk_darwin(v78);
  v74 = &v65 - v7;
  v8 = sub_10022C350(&qword_100CD3D58, &qword_100A7EC00);
  __chkstk_darwin(v8 - 8);
  v68 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v65 - v11;
  __chkstk_darwin(v12);
  v75 = &v65 - v13;
  v14 = sub_10022C350(&qword_100CB4B90, &qword_100A7AFD0);
  __chkstk_darwin(v14 - 8);
  v81 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = &v65 - v17;
  v73 = type metadata accessor for AccessibilityChildBehavior();
  v18 = *(v73 - 8);
  __chkstk_darwin(v73);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ComparisonCapsuleStackRowView(0);
  __chkstk_darwin(v21);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10022C350(&qword_100CD3D60, &qword_100A7AFD8);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v25 = &v65 - v24;
  v26 = sub_10022C350(&qword_100CD3D68, &qword_100A7AFE0);
  __chkstk_darwin(v26 - 8);
  v79 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v65 - v29;
  v31 = a2[1];
  v89 = *a2;
  v90 = v31;
  v91 = *(a2 + 4);
  v69 = *(&v89 + 1);
  v92 = v31;
  v32 = *(v21 + 24);
  v70 = type metadata accessor for ComparisonCapsuleViewModel.Row;
  sub_1006FB638(a1, &v23[v32], type metadata accessor for ComparisonCapsuleViewModel.Row);
  v33 = *(a2 + 40);
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v34 = a2[1];
  *(v23 + 1) = *a2;
  *(v23 + 2) = v34;
  *(v23 + 6) = *(a2 + 4);
  v23[*(v21 + 28)] = v33;

  sub_1006FB5BC(&v92, v84);
  static AccessibilityChildBehavior.ignore.getter();
  v35 = sub_1006FB694(&qword_100CD3D70, type metadata accessor for ComparisonCapsuleStackRowView, byte_100A7B2A0);
  View.accessibilityElement(children:)();
  (*(v18 + 8))(v20, v73);
  sub_1006FB6DC(v23, type metadata accessor for ComparisonCapsuleStackRowView);
  v36 = a1;
  sub_10064DEA4();
  v84[0] = v37;
  v84[1] = v38;
  v87 = v21;
  v88 = v35;
  v39 = v30;
  v40 = v74;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v41 = v72;
  View.accessibilityLabel<A>(_:)();
  v42 = v77;

  v43 = v25;
  v44 = v76;
  (*(v71 + 8))(v43, v41);
  v45 = v75;
  sub_1006FB638(v36, v75, v70);
  sub_10001B350(v45, 0, 1, v42);
  sub_1002F558C(v69);
  v46 = *(v78 + 56);
  sub_1000302D8(v45, v40, &qword_100CD3D58, &qword_100A7EC00);
  sub_1000302D8(v44, v40 + v46, &qword_100CD3D58, &qword_100A7EC00);
  if (sub_100024D10(v40, 1, v42) == 1)
  {
    sub_10003FDA0(v44, &qword_100CD3D58);
    sub_10003FDA0(v45, &qword_100CD3D58);
    v47 = sub_100024D10(v40 + v46, 1, v42);
    v48 = v80;
    if (v47 == 1)
    {
      sub_10003FDA0(v40, &qword_100CD3D58);
LABEL_10:
      v55 = 1;
      v54 = v82;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v49 = v68;
  sub_1000302D8(v40, v68, &qword_100CD3D58, &qword_100A7EC00);
  if (sub_100024D10(v40 + v46, 1, v42) == 1)
  {
    sub_10003FDA0(v44, &qword_100CD3D58);
    sub_10003FDA0(v45, &qword_100CD3D58);
    sub_1006FB6DC(v49, type metadata accessor for ComparisonCapsuleViewModel.Row);
    v48 = v80;
LABEL_6:
    sub_10003FDA0(v40, &qword_100CD3D50);
    goto LABEL_7;
  }

  v56 = v40 + v46;
  v57 = v65;
  sub_1006FB734(v56, v65, type metadata accessor for ComparisonCapsuleViewModel.Row);
  sub_10064E7C8();
  v59 = v58;
  sub_1006FB6DC(v57, type metadata accessor for ComparisonCapsuleViewModel.Row);
  sub_10003FDA0(v44, &qword_100CD3D58);
  sub_10003FDA0(v45, &qword_100CD3D58);
  sub_1006FB6DC(v49, type metadata accessor for ComparisonCapsuleViewModel.Row);
  sub_10003FDA0(v40, &qword_100CD3D58);
  v48 = v80;
  if (v59)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_10064E920(v84);
  v50 = v85;
  v51 = v86;
  sub_1000161C0(v84, v85);
  LOBYTE(v50) = (*(v51 + 104))(v50, v51);
  sub_100006F14(v84);
  if ((v50 & 1) == 0)
  {
    goto LABEL_10;
  }

  v52 = v66;
  Divider.init()();
  v53 = v52;
  v54 = v82;
  (*(v67 + 32))(v48, v53, v82);
  v55 = 0;
LABEL_11:
  sub_10001B350(v48, v55, 1, v54);
  v60 = v79;
  sub_1000302D8(v39, v79, &qword_100CD3D68, &qword_100A7AFE0);
  v61 = v81;
  sub_1000302D8(v48, v81, &qword_100CB4B90, &qword_100A7AFD0);
  v62 = v83;
  sub_1000302D8(v60, v83, &qword_100CD3D68, &qword_100A7AFE0);
  v63 = sub_10022C350(&qword_100CD3D78, &qword_100A7B010);
  sub_1000302D8(v61, v62 + *(v63 + 48), &qword_100CB4B90, &qword_100A7AFD0);
  sub_10003FDA0(v48, &qword_100CB4B90);
  sub_10003FDA0(v39, &qword_100CD3D68);
  sub_10003FDA0(v61, &qword_100CB4B90);
  return sub_10003FDA0(v60, &qword_100CD3D68);
}

uint64_t sub_1006FB638(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1006FB694(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1006FB6DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1006FB734(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1006FB790@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for ComparisonCapsuleCompactGridView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1006F9338(a1, v6, a2);
}

unint64_t sub_1006FB818()
{
  result = qword_100CD3DB0;
  if (!qword_100CD3DB0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD3DA0, &unk_100A7B030);
    v4[0] = sub_100433B9C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CD3DB0);
  }

  return result;
}

void *sub_1006FB8BC@<X0>(uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v10 = 0;
  sub_1006FB990(v2, __src);
  memcpy(__dst, __src, 0x7BuLL);
  memcpy(v12, __src, 0x7BuLL);
  sub_1000302D8(__dst, &v7, &qword_100CD4040, &unk_100A7B2F0);
  sub_10003FDA0(v12, &qword_100CD4040);
  memcpy(&v9[7], __dst, 0x7BuLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x82uLL);
}

uint64_t sub_1006FB990@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v226 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v215 = v210 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  __chkstk_darwin(v220);
  v227 = v210 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v6 - 8);
  v228 = v210 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v210 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v224 = *(v11 - 8);
  v225 = v11;
  __chkstk_darwin(v11);
  v223 = v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Font.TextStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v210 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ComparisonCapsuleStackRowView(0);
  v19 = *(v17 + 24);
  v18 = *(v17 + 28);
  v219 = v17;
  v20 = *(a1 + v18);
  v21 = (a1 + v19);
  v229 = v20;
  if (v20 == 1 && v21[3])
  {
    v22 = v21[2];
  }

  else
  {
    v22 = *v21;
  }

  __src[0] = v22;
  __src[1] = v23;
  sub_10002D5A4();
  v221 = Text.init<A>(_:)();
  KeyPath = v24;
  v217 = v25;
  LODWORD(v216) = v26;
  v27 = *(v14 + 104);
  v27(v16, enum case for Font.TextStyle.title3(_:), v13);
  static Font.Weight.medium.getter();
  v28 = static Font.system(_:weight:)();
  v29 = *(v14 + 8);
  v29(v16, v13);
  v27(v16, enum case for Font.TextStyle.body(_:), v13);
  static Font.Weight.medium.getter();
  v30 = static Font.system(_:weight:)();
  v29(v16, v13);
  v31 = *a1;
  v32 = *(a1 + 8);
  v218 = a1;
  if (v32 != 1)
  {

    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v34 = v223;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v31, 0);
    (*(v224 + 8))(v34, v225);
    LOBYTE(v31) = __src[0];
  }

  v35 = enum case for Font.Leading.tight(_:);
  v36 = type metadata accessor for Font.Leading();
  (*(*(v36 - 8) + 104))(v10, v35, v36);
  sub_10001B350(v10, 0, 1, v36);
  v37 = v228;
  sub_1000302D8(v10, v228, &qword_100CACFF0, &unk_100A48000);

  sub_1001C987C(v28, v30, v31 & 1, v37);
  LOBYTE(v36) = v216;
  v38 = v221;
  v39 = v10;
  v40 = v217;
  v41 = Text.font(_:)();
  v223 = v42;
  v224 = v41;
  LOBYTE(v37) = v43;
  v225 = v44;

  sub_10010CD64(v38, v40, v36 & 1);

  sub_10003FDA0(v39, &qword_100CACFF0);
  KeyPath = swift_getKeyPath();
  LODWORD(v228) = v37 & 1;
  v240 = v37 & 1;
  LODWORD(v221) = v229 ^ 1;
  v238 = v229 ^ 1;
  v45 = v218;
  v46 = v218 + *(v219 + 24);
  v47 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  v48 = v227;
  sub_1006FB638(v46 + *(v47 + 20), v227, type metadata accessor for ComparisonCapsuleViewModel.Row.Body);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1006FB6DC(v48, type metadata accessor for ComparisonCapsuleViewModel.Row.Body);
    v49 = *(v45 + 32);
    v241 = *(v45 + 16);
    v242 = v49;
    v243 = *(v45 + 48);
    sub_10064EA98();
    if (v53)
    {
      v54 = v50;
      v55 = v51;
      v56 = v52;
      v57 = v53;
      sub_10064E920(__src);
      v58 = __src[3];
      v59 = __src[4];
      sub_1000161C0(__src, __src[3]);
      v236[0] = (*(v59 + 16))(v58, v59);
      v227 = v56 & 1;
      v235[0] = v56 & 1;
      v60 = Text.foregroundStyle<A>(_:)();
      v218 = v55;
      v219 = v54;
      v62 = v61;
      LOBYTE(v55) = v63;
      v220 = v57;

      sub_100006F14(__src);
      v64 = static Text.+ infix(_:_:)();
      v216 = v65;
      v217 = v64;
      v212 = v66;
      v215 = v67;
      sub_10010CD64(v60, v62, v55 & 1);

      sub_10064EEBC();
      v69 = v68;
      v71 = v70;
      LOBYTE(v62) = v72;
      sub_10064E920(__src);
      v73 = __src[3];
      v74 = __src[4];
      sub_1000161C0(__src, __src[3]);
      v236[0] = (*(v74 + 24))(v73, v74);
      v75 = Text.foregroundStyle<A>(_:)();
      v213 = v76;
      v214 = v75;
      v78 = v77;
      sub_10010CD64(v69, v71, v62 & 1);

      sub_100006F14(__src);
      v79 = v216;
      v80 = v217;
      v81 = v214;
      v82 = v213;
      v83 = static Text.+ infix(_:_:)();
      v210[1] = v84;
      v211 = v83;
      v86 = v85;
      LOBYTE(v71) = v87;
      sub_10010CD64(v81, v82, v78 & 1);

      sub_10010CD64(v80, v79, v212 & 1);

      v88 = v211;
      v89 = Text.monospacedDigit()();
      v91 = v90;
      v93 = v92;
      v95 = v94;
      sub_10010CD64(v88, v86, v71 & 1);

      v96 = swift_getKeyPath();
      v97 = swift_getKeyPath();
      v235[0] = 0;
      v230[0] = v89;
      v230[1] = v91;
      LOBYTE(v230[2]) = v93 & 1;
      *(&v230[2] + 1) = __src[0];
      HIDWORD(v230[2]) = *(__src + 3);
      v230[3] = v95;
      v230[4] = v96;
      v230[5] = 0x3FE0000000000000;
      v230[6] = v97;
      v230[7] = 1;
      LOBYTE(v230[8]) = 0;
      memcpy(v236, v230, 0x41uLL);
      LOBYTE(v232) = 0;
      BYTE1(v236[8]) = 0;
      sub_1000302D8(v230, __src, &qword_100CD4048, &qword_100A7B330);
      sub_1000302D8(v230, __src, &qword_100CD4048, &qword_100A7B330);
      sub_10022C350(&qword_100CD4048, &qword_100A7B330);
      sub_1006FD658();
      _ConditionalContent<>.init(storage:)();
      sub_10010CD64(v219, v218, v227);

      sub_10003FDA0(v230, &qword_100CD4048);
      sub_10003FDA0(v230, &qword_100CD4048);
      memcpy(v235, __src, 0x42uLL);
    }

    else
    {
      sub_10064EEBC();
      v161 = v160;
      v163 = v162;
      v165 = v164;
      sub_10064E920(__src);
      v166 = __src[3];
      v167 = __src[4];
      sub_1000161C0(__src, __src[3]);
      v236[0] = (*(v167 + 24))(v166, v167);
      v168 = Text.foregroundStyle<A>(_:)();
      v170 = v169;
      v172 = v171;
      sub_10010CD64(v161, v163, v165 & 1);

      sub_100006F14(__src);
      v173 = Text.monospacedDigit()();
      v175 = v174;
      LOBYTE(v161) = v176;
      v178 = v177;
      sub_10010CD64(v168, v170, v172 & 1);

      v179 = swift_getKeyPath();
      v180 = swift_getKeyPath();
      LOBYTE(v236[0]) = 1;
      __src[0] = v173;
      __src[1] = v175;
      LOBYTE(__src[2]) = v161 & 1;
      __src[3] = v178;
      __src[4] = v179;
      __src[5] = 0x3FE0000000000000;
      __src[6] = v180;
      __src[7] = 1;
      LOWORD(__src[8]) = 256;
      sub_10022C350(&qword_100CD4048, &qword_100A7B330);
      sub_1006FD658();
      _ConditionalContent<>.init(storage:)();
    }

    memcpy(v236, v235, 0x42uLL);
    LOBYTE(v230[0]) = 1;
    BYTE2(v236[8]) = 1;
    sub_10022C350(&qword_100CD4058, &unk_100A7B338);
    sub_1006FD710();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_10064D998();
    v100 = v99;
    if (v98)
    {
      v101 = v98;
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v102._countAndFlagsBits = 14924;
      v102._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v102);
      v103._countAndFlagsBits = v100;
      v103._object = v101;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v103);

      v104._countAndFlagsBits = 0;
      v104._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v104);
      v105 = LocalizedStringKey.init(stringInterpolation:)();
      v109 = Text.init(_:tableName:bundle:comment:)(v105, v107, v106 & 1, v108, 0, 0, 0, "The day's low temperature", 25, 2);
      v111 = v110;
      v216 = v46;
      v113 = v112;
      v114 = *(v45 + 32);
      v241 = *(v45 + 16);
      v242 = v114;
      v243 = *(v45 + 48);
      sub_10064E920(__src);
      v115 = __src[3];
      v116 = __src[4];
      sub_1000161C0(__src, __src[3]);
      v236[0] = (*(v116 + 16))(v115, v116);
      v117 = Text.foregroundStyle<A>(_:)();
      v119 = v118;
      LOBYTE(v115) = v120;
      v214 = v121;
      sub_10010CD64(v109, v111, v113 & 1);

      sub_100006F14(__src);
      v122 = static Text.+ infix(_:_:)();
      v218 = v123;
      v219 = v122;
      LODWORD(v220) = v124;
      v217 = v125;
      sub_10010CD64(v117, v119, v115 & 1);

      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v126._countAndFlagsBits = 14920;
      v126._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v126);
      sub_10064DC10();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v127);

      v128._countAndFlagsBits = 0;
      v128._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v128);
      v129 = LocalizedStringKey.init(stringInterpolation:)();
      LOWORD(v209) = 2;
      v133 = Text.init(_:tableName:bundle:comment:)(v129, v131, v130 & 1, v132, 0, 0, 0, "The day's high temperature", 26, v209);
      v135 = v134;
      LOBYTE(v117) = v136;
      sub_10064E920(__src);
      v137 = __src[3];
      v138 = __src[4];
      sub_1000161C0(__src, __src[3]);
      v236[0] = (*(v138 + 24))(v137, v138);
      v139 = Text.foregroundStyle<A>(_:)();
      v215 = v140;
      v216 = v139;
      LOBYTE(v111) = v141;
      sub_10010CD64(v133, v135, v117 & 1);

      sub_100006F14(__src);
      v142 = v218;
      v143 = v219;
      v144 = v216;
      v145 = v215;
      v146 = static Text.+ infix(_:_:)();
      v213 = v147;
      v214 = v146;
      v149 = v148;
      LOBYTE(v135) = v150;
      sub_10010CD64(v144, v145, v111 & 1);

      sub_10010CD64(v143, v142, v220 & 1);

      v151 = v214;
      v152 = Text.monospacedDigit()();
      v154 = v153;
      LOBYTE(v111) = v155;
      v157 = v156;
      sub_10010CD64(v151, v149, v135 & 1);

      v158 = swift_getKeyPath();
      v159 = swift_getKeyPath();
      LOBYTE(v236[0]) = 0;
      __src[0] = v152;
      __src[1] = v154;
      LOBYTE(__src[2]) = v111 & 1;
      __src[3] = v157;
      __src[4] = v158;
      __src[5] = 0x3FE0000000000000;
      __src[6] = v159;
      __src[7] = 1;
      LOWORD(__src[8]) = 0;
    }

    else
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v181._countAndFlagsBits = 14920;
      v181._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v181);
      sub_10064DC10();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v182);

      v183._countAndFlagsBits = 0;
      v183._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v183);
      v184 = LocalizedStringKey.init(stringInterpolation:)();
      v188 = Text.init(_:tableName:bundle:comment:)(v184, v186, v185 & 1, v187, v100, 0, 0, "The day's high temperature", 26, 2);
      v190 = v189;
      v192 = v191;
      v193 = Text.monospacedDigit()();
      v195 = v194;
      v197 = v196;
      v199 = v198;
      sub_10010CD64(v188, v190, v192 & 1);

      v200 = swift_getKeyPath();
      v201 = swift_getKeyPath();
      LOBYTE(v236[0]) = 1;
      __src[0] = v193;
      __src[1] = v195;
      LOBYTE(__src[2]) = v197 & 1;
      __src[3] = v199;
      __src[4] = v200;
      __src[5] = 0x3FE0000000000000;
      __src[6] = v201;
      __src[7] = 1;
      LOWORD(__src[8]) = 256;
    }

    sub_10022C350(&qword_100CD4048, &qword_100A7B330);
    sub_1006FD658();
    _ConditionalContent<>.init(storage:)();
    memcpy(__src, v235, 0x42uLL);
    LOBYTE(v230[0]) = 0;
    BYTE2(__src[8]) = 0;
    sub_10022C350(&qword_100CD4058, &unk_100A7B338);
    sub_1006FD710();
    _ConditionalContent<>.init(storage:)();
    sub_1006FB6DC(v227, type metadata accessor for ComparisonCapsuleViewModel.Row.Body);
    memcpy(__src, v236, 0x43uLL);
  }

  memcpy(v236, __src, 0x43uLL);
  v203 = v223;
  v202 = v224;
  *&v232 = v224;
  *(&v232 + 1) = v223;
  LOBYTE(v233) = v228;
  *(&v233 + 1) = *v239;
  DWORD1(v233) = *&v239[3];
  v204 = v225;
  *(&v233 + 1) = v225;
  v205 = KeyPath;
  *v234 = KeyPath;
  v206 = v229;
  *&v234[8] = v229;
  v207 = v221;
  v234[16] = v221;
  *&v234[17] = 257;
  *(&v231[2] + 15) = *&v234[15];
  v231[2] = *v234;
  v231[1] = v233;
  v231[0] = v232;
  memcpy(v235, __src, 0x43uLL);
  memcpy(&v231[3] + 8, __src, 0x43uLL);
  memcpy(v226, v231, 0x7BuLL);
  sub_1000302D8(&v232, v230, &qword_100CACF40, &unk_100A3C2F0);
  sub_1000302D8(v235, v230, &qword_100CD4068, &qword_100A7B348);
  sub_10003FDA0(v236, &qword_100CD4068);
  v230[0] = v202;
  v230[1] = v203;
  LOBYTE(v230[2]) = v228;
  *(&v230[2] + 1) = *v239;
  HIDWORD(v230[2]) = *&v239[3];
  v230[3] = v204;
  v230[4] = v205;
  v230[5] = v206;
  LOBYTE(v230[6]) = v207;
  *(&v230[6] + 1) = 257;
  return sub_10003FDA0(v230, &qword_100CACF40);
}

uint64_t sub_1006FCBDC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v3 = sub_10022C350(&qword_100CD4070, &qword_100A7B350);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = (&v35 - v5);
  sub_10022C350(qword_100CA5418, &qword_100A2F670);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000249D0();
  v8 = type metadata accessor for WeatherDayVarianceView();
  sub_1000037C4();
  v37 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v36 = v12 - v11;
  v13 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = (v20 - v19);
  v22 = v1 + *(type metadata accessor for CapsuleView(0) + 20);
  v23 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_1006FB638(v22 + *(v23 + 20), v21, type metadata accessor for ComparisonCapsuleViewModel.Row.Body);
  sub_100003940();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v21;
    v25 = v21[1];

    *v6 = v25;
    v6[1] = v24;
    swift_storeEnumTagMultiPayload();
    sub_1000065C4();
    sub_1006FB694(v26, v27, &protocol conformance descriptor for WeatherDayVarianceView);
    sub_1006FD794();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v35 = v3;
    sub_1006FB734(v21, v17, type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature);
    v29 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
    Measurement.value.getter();
    Measurement.value.getter();
    sub_1000302D8(v17 + *(v13 + 24), v2, qword_100CA5418, &qword_100A2F670);
    if (sub_100024D10(v2, 1, v29) == 1)
    {
      sub_10003FDA0(v2, qword_100CA5418);
    }

    else
    {
      Measurement.value.getter();
      (*(*(v29 - 8) + 8))(v2, v29);
    }

    sub_10018CA78(v30);
    v31 = v36;
    WeatherDayVarianceView.init(weekMaxTemp:weekMinTemp:dayHighTemp:dayLowTemp:currentTemp:isDaylight:temperatureGradient:)();
    v32 = v37;
    (*(v37 + 16))(v6, v31, v8);
    swift_storeEnumTagMultiPayload();
    sub_1000065C4();
    sub_1006FB694(v33, v34, &protocol conformance descriptor for WeatherDayVarianceView);
    sub_1006FD794();
    _ConditionalContent<>.init(storage:)();
    (*(v32 + 8))(v31, v8);
    return sub_1006FB6DC(v17, type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature);
  }
}

uint64_t sub_1006FD090(uint64_t a1)
{
  type metadata accessor for Locale();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000037D8();
  (*(v5 + 16))(v4 - v3, a1);
  return EnvironmentValues.locale.setter();
}

unint64_t sub_1006FD144()
{
  result = qword_100CD3E00;
  if (!qword_100CD3E00)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD3DF8, &qword_100A7B0E0);
    v4[0] = sub_1006FD1FC();
    v4[1] = sub_10023FBF4(&qword_100CAF708, &qword_100CAF710, &qword_100A6E3E0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3E00);
  }

  return result;
}

unint64_t sub_1006FD1FC()
{
  result = qword_100CD3E08;
  if (!qword_100CD3E08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD3E10, &qword_100A7B0E8);
    v4[0] = sub_10033CBA4();
    v4[1] = sub_10023FBF4(&qword_100CA53B8, &qword_100CA53C0, &unk_100A2F5E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD3E08);
  }

  return result;
}

void sub_1006FD30C(uint64_t a1)
{
  sub_1000077F0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ComparisonCapsuleViewModel.Row(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1006FD3C8(uint64_t a1)
{
  result = type metadata accessor for ComparisonCapsuleViewModel.Row(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1006FD46C(uint64_t a1)
{
  sub_1000612C8(319);
  if (v1 <= 0x3F)
  {
    sub_10010F3E4(319, &qword_100CBEF38, &type metadata accessor for Locale);
    if (v2 <= 0x3F)
    {
      sub_1001BA110(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ComparisonCapsuleViewModel.Row(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1006FD54C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = sub_100003A24(a1, a2);
  sub_10022E824(v7, v8);
  sub_10022E824(&qword_100CD3DA0, &unk_100A7B030);
  sub_10023FBF4(a4, a2, a3, &protocol conformance descriptor for Grid<A>);
  sub_1006FB818();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1006FD658()
{
  result = qword_100CD4050;
  if (!qword_100CD4050)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4048, &qword_100A7B330);
    v4[0] = sub_10043721C();
    v4[1] = sub_10023FBF4(&qword_100CADEA0, &qword_100CADEA8, &qword_100A490C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD4050);
  }

  return result;
}

unint64_t sub_1006FD710()
{
  result = qword_100CD4060;
  if (!qword_100CD4060)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4058, &unk_100A7B338);
    v4[0] = sub_1006FD658();
    v4[1] = v4[0];
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD4060);
  }

  return result;
}

unint64_t sub_1006FD794()
{
  result = qword_100CD4080;
  if (!qword_100CD4080)
  {
    result = swift_getWitnessTable(aM_74, &type metadata for ComparisonBarView, v0, v1);
    atomic_store(result, &qword_100CD4080);
  }

  return result;
}

unint64_t sub_1006FD7E8()
{
  result = qword_100CD40F0;
  if (!qword_100CD40F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD40C8, &qword_100A7B3A0);
    v4[0] = sub_1006FD894(&qword_100CD40F8, &qword_100CD40C0, &qword_100A7B398, &protocol witness table for _FlexFrameLayout);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD40F0);
  }

  return result;
}

uint64_t sub_1006FD894(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    v9 = sub_10022E824(v7, v8);
    v10[0] = sub_1006FB694(&qword_100CD40E8, type metadata accessor for CapsuleView, byte_100A7B250);
    v10[1] = a4;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006FD938()
{
  result = qword_100CD4110;
  if (!qword_100CD4110)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD4118, qword_100A7B3C0);
    v4[0] = sub_1006FB694(&qword_100CD4078, &type metadata accessor for WeatherDayVarianceView, &protocol conformance descriptor for WeatherDayVarianceView);
    v4[1] = sub_1006FD794();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD4110);
  }

  return result;
}

uint64_t sub_1006FDA00@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WeatherClock.date.getter();
  v6 = [objc_opt_self() mainBundle];
  if (!sub_1006FDB90(v6))
  {
    v12 = 0u;
    v13 = 0u;
    goto LABEL_6;
  }

  sub_100879D00();

  if (!*(&v13 + 1))
  {
LABEL_6:
    sub_1003C1574(&v12);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_8;
  }

  v7 = v11[0];
  v8 = v11[1];
LABEL_8:
  (*(v3 + 32))(a1, v5, v2);
  result = type metadata accessor for MainStateProcessingContext(0);
  v10 = (a1 + *(result + 20));
  *v10 = v7;
  v10[1] = v8;
  return result;
}

uint64_t sub_1006FDB90(void *a1)
{
  v2 = [a1 infoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1006FDC70(uint64_t a1)
{
  result = type metadata accessor for UnitsConfigurationViewModel.Representation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1006FDCDC(uint64_t a1)
{
  sub_1006FDDB4(319);
  if (v1 <= 0x3F)
  {
    sub_1006FDE60(319);
    if (v2 <= 0x3F)
    {
      sub_1006FDF3C(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(319);
        if (v4 <= 0x3F)
        {
          sub_1006FDFF0(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for UnitsConfigurationViewModel.Representation.Full(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1006FDDB4(uint64_t a1)
{
  if (!qword_100CD4238)
  {
    v2 = type metadata accessor for UnitConfiguration.Distance();
    v3 = sub_1006FDEF4(&qword_100CD4240, &type metadata accessor for UnitConfiguration.Distance, byte_100A64000);
    v5 = type metadata accessor for UnitsConfigurationViewModel.Configuration(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100CD4238);
    }
  }
}

void sub_1006FDE60(uint64_t a1)
{
  if (!qword_100CD4248)
  {
    v2 = type metadata accessor for UnitConfiguration.Precipitation();
    v3 = sub_1006FDEF4(&qword_100CD4250, &type metadata accessor for UnitConfiguration.Precipitation, byte_100A6401C);
    v5 = type metadata accessor for UnitsConfigurationViewModel.Configuration(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100CD4248);
    }
  }
}

uint64_t sub_1006FDEF4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1006FDF3C(uint64_t a1)
{
  if (!qword_100CD4258)
  {
    v2 = type metadata accessor for UnitConfiguration.Pressure();
    v3 = sub_1006FDEF4(&qword_100CD4260, &type metadata accessor for UnitConfiguration.Pressure, aQ_61);
    v5 = type metadata accessor for UnitsConfigurationViewModel.Configuration(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100CD4258);
    }
  }
}

void sub_1006FDFF0(uint64_t a1)
{
  if (!qword_100CD4268)
  {
    v2 = type metadata accessor for UnitConfiguration.WindSpeed();
    v3 = sub_1006FDEF4(&unk_100CD4270, &type metadata accessor for UnitConfiguration.WindSpeed, a9_24);
    v5 = type metadata accessor for UnitsConfigurationViewModel.Configuration(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100CD4268);
    }
  }
}

void sub_1006FE0EC(uint64_t a1)
{
  sub_1006FDDB4(319);
  if (v1 <= 0x3F)
  {
    sub_1006FDE60(319);
    if (v2 <= 0x3F)
    {
      sub_1006FDF3C(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(319);
        if (v4 <= 0x3F)
        {
          sub_1006FDFF0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1006FE1F0(uint64_t a1)
{
  sub_10002C0CC(319, &qword_100CD43B0, &qword_100CB6058, &unk_100A7B460);
  if (v1 <= 0x3F)
  {
    sub_10002C0CC(319, &qword_100CD43B8, &qword_100CB6038, &qword_100A64140);
    if (v2 <= 0x3F)
    {
      sub_10002C0CC(319, &qword_100CD43C0, &qword_100CB6028, &unk_100A7B470);
      if (v3 <= 0x3F)
      {
        sub_1006FE420(319, &qword_100CD43C8, type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature);
        if (v4 <= 0x3F)
        {
          sub_10002C0CC(319, &unk_100CD43D0, &qword_100CB5FF0, &qword_100A49AB0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1006FE360(uint64_t a1)
{
  sub_1003FFB64(319);
  if (v1 <= 0x3F)
  {
    sub_1006FE420(319, &qword_100CB65D8, &type metadata accessor for UnitConfiguration.Temperature);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1006FE420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1006FE49C(uint64_t a1)
{
  v1 = type metadata accessor for UnitConfiguration.Temperature();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1006FE4F4(uint64_t a1)
{
  result = type metadata accessor for Array();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006FE584(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_100024D10((a1 + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1006FE704(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 8] & ~v10;

            sub_10001B350(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1006FE94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_1000037D8();
  sub_100019530();
  v27 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_1000037D8();
  sub_10000CC9C();
  v29 = sub_10022C350(&qword_100CD4610, &qword_100A7B800);
  sub_100003810(v29);
  sub_100003828();
  __chkstk_darwin(v30);
  v32 = &a9 - v31;
  v34 = *(v33 + 56);
  sub_1007030AC();
  sub_1007030AC();
  sub_10000554C(v32);
  if (!v35)
  {
    sub_10000493C();
    sub_1000B0C38();
    sub_1007030AC();
    sub_10000554C(&v32[v34]);
    if (!v35)
    {
      (*(v25 + 32))(v20, &v32[v34], v23);
      v38 = sub_100003984();
      sub_100747534(v38, v39);
      v40 = *(v25 + 8);
      v40(v20, v23);
      v41 = sub_1000046B4();
      (v40)(v41);
      sub_100011780();
      goto LABEL_10;
    }

    v36 = sub_1000046B4();
    v37(v36);
LABEL_9:
    sub_1000180EC(v32, &qword_100CD4610, &qword_100A7B800);
    goto LABEL_10;
  }

  sub_10000554C(&v32[v34]);
  if (!v35)
  {
    goto LABEL_9;
  }

  sub_100011780();
LABEL_10:
  sub_10000536C();
}

uint64_t sub_1006FEB64(void *a1, void *a2)
{
  sub_1009EA2A4();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnitConfiguration.Precipitation();
  sub_10022C350(&qword_100CB6038, &qword_100A64140);
  sub_1006FDEF4(&qword_100CD4600, &type metadata accessor for UnitConfiguration.Precipitation, &protocol conformance descriptor for UnitConfiguration.Precipitation);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1006FEC1C(void *a1, void *a2)
{
  sub_1009EA25C();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnitConfiguration.Pressure();
  sub_10022C350(&qword_100CB6028, &unk_100A7B470);
  sub_1006FDEF4(&qword_100CD45F8, &type metadata accessor for UnitConfiguration.Pressure, &protocol conformance descriptor for UnitConfiguration.Pressure);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1006FECD4(void *a1, void *a2)
{
  sub_1009EA214();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnitConfiguration.WindSpeed();
  sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
  sub_1006FDEF4(&qword_100CD45F0, &type metadata accessor for UnitConfiguration.WindSpeed, &protocol conformance descriptor for UnitConfiguration.WindSpeed);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1006FED8C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((static Array<A>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnitsConfigurationViewModel.Configuration(0, a3, a4, v6);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void sub_1006FEE18()
{
  sub_10000C778();
  v77 = v0;
  v78 = v1;
  v2 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000038E4();
  v75 = v4;
  v5 = sub_1000038CC();
  v6 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(v5);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000038E4();
  v73 = v8;
  v70[3] = sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v74 = v10;
  v11 = sub_1000038CC();
  v12 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(v11);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_1000038E4();
  v71 = v14;
  v70[2] = sub_10022C350(&qword_100CB6028, &unk_100A7B470);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v72 = v16;
  v70[1] = sub_10022C350(&qword_100CB6038, &qword_100A64140);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v70[5] = v18;
  v70[0] = sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000039BC();
  v70[4] = v20;
  v21 = sub_1000038CC();
  type metadata accessor for UnitsConfigurationViewModel.Representation(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003C38();
  v25 = (v23 - v24);
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  v76 = v70 - v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  v31 = v70 - v30;
  __chkstk_darwin(v32);
  v34 = v70 - v33;
  __chkstk_darwin(v35);
  v37 = v70 - v36;
  __chkstk_darwin(v38);
  v40 = v70 - v39;
  v41 = sub_10022C350(&qword_100CD45E8, &unk_100A7B7F0);
  sub_100003810(v41);
  sub_100003828();
  __chkstk_darwin(v42);
  v44 = v70 - v43;
  sub_1007030AC();
  sub_1007030AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10001CB60();
      sub_1007030AC();
      if (sub_100087E24() != 1)
      {
        v45 = &qword_100CB6038;
        v46 = &qword_100A64140;
        v59 = v37;
        goto LABEL_25;
      }

      sub_100051BBC();
      sub_1009EA2A4();
      if (v55)
      {
        type metadata accessor for UnitConfiguration.Precipitation();
        sub_1000065DC();
        sub_1006FDEF4(v56, v57, &protocol conformance descriptor for UnitConfiguration.Precipitation);
        dispatch thunk of static Equatable.== infix(_:_:)();
      }

      goto LABEL_33;
    case 2u:
      sub_10001CB60();
      sub_1007030AC();
      if (sub_100087E24() != 2)
      {
        v45 = &qword_100CB6028;
        v46 = &unk_100A7B470;
        v59 = v34;
        goto LABEL_25;
      }

      sub_100051BBC();
      sub_1009EA25C();
      if (v51)
      {
        type metadata accessor for UnitConfiguration.Pressure();
        sub_100008D50();
        sub_1006FDEF4(v52, v53, &protocol conformance descriptor for UnitConfiguration.Pressure);
        dispatch thunk of static Equatable.== infix(_:_:)();
      }

      goto LABEL_33;
    case 3u:
      sub_10001CB60();
      sub_1007030AC();
      if (sub_100087E24() == 3)
      {
        sub_10002304C();
        v54 = v71;
        sub_100703054();
        sub_1007004E0(v31, v54);
        sub_100018690();
        sub_100703000();
        goto LABEL_19;
      }

      sub_100019DCC();
      goto LABEL_27;
    case 4u:
      sub_10001CB60();
      v40 = v76;
      sub_1007030AC();
      if (sub_100087E24() != 4)
      {
        v45 = &qword_100CB5FF0;
        v46 = &qword_100A49AB0;
        goto LABEL_21;
      }

      sub_100051BBC();
      sub_1009EA214();
      if (v47)
      {
        type metadata accessor for UnitConfiguration.WindSpeed();
        sub_100014D34();
        v50 = sub_1006FDEF4(v48, v49, &protocol conformance descriptor for UnitConfiguration.WindSpeed);
        sub_100120110(v50);
      }

      goto LABEL_33;
    case 5u:
      sub_10001CB60();
      sub_100003940();
      sub_1007030AC();
      if (sub_100087E24() == 5)
      {
        sub_100031770();
        sub_100703054();
        sub_1006FF820();
        sub_100703000();
        sub_1000B0C38();
LABEL_19:
        sub_100703000();
        sub_1000698E4();
        goto LABEL_34;
      }

      sub_100052050();
LABEL_27:
      sub_100703000();
      goto LABEL_28;
    case 6u:
      sub_10001CB60();
      sub_1007030AC();
      if (sub_100087E24() != 6)
      {
        goto LABEL_27;
      }

      sub_100037CC0();
      v58 = v75;
      sub_100703054();
      sub_1006FF704(v25, v58);
      sub_100703000();
      goto LABEL_19;
    default:
      sub_10001CB60();
      sub_1007030AC();
      if (sub_100087E24())
      {
        v45 = &qword_100CB6058;
        v46 = &unk_100A7B460;
LABEL_21:
        v59 = v40;
LABEL_25:
        sub_1000180EC(v59, v45, v46);
LABEL_28:
        sub_1000180EC(v44, &qword_100CD45E8, &unk_100A7B7F0);
      }

      else
      {
        sub_100051BBC();
        sub_1009EA2EC();
        if (v60)
        {
          type metadata accessor for UnitConfiguration.Distance();
          sub_100010950();
          v63 = sub_1006FDEF4(v61, v62, &protocol conformance descriptor for UnitConfiguration.Distance);
          sub_100120110(v63);
        }

LABEL_33:
        sub_10000FEC4();
        sub_1000180EC(v64, v65, v66);
        sub_10000FEC4();
        sub_1000180EC(v67, v68, v69);
        sub_1000698E4();
      }

LABEL_34:
      sub_10000536C();
      return;
  }
}

uint64_t sub_1006FF704(void *a1, void *a2)
{
  sub_1009EA2EC();
  if (v4 & 1) != 0 && (type metadata accessor for UnitConfiguration.Distance(), sub_10022C350(&qword_100CB6058, &unk_100A7B460), sub_100010950(), sub_1006FDEF4(v5, v6, &protocol conformance descriptor for UnitConfiguration.Distance), (dispatch thunk of static Equatable.== infix(_:_:)()) && (v7 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0), v8 = sub_10001136C(v7[5]), (sub_1006FEB64(v8, v9)) && (v10 = sub_10001136C(v7[6]), (sub_1006FEC1C(v10, v11)) && (v12 = sub_10001136C(v7[7]), (sub_1007004E0(v12, v13)) && (v14 = sub_10001136C(v7[8]), (sub_1006FECD4(v14, v15)) && *(a1 + v7[9]) == *(a2 + v7[9]))
  {
    v16 = *(a1 + v7[10]) ^ *(a2 + v7[10]) ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_1006FF820()
{
  sub_10000C778();
  v155 = v3;
  v5 = v4;
  v140 = sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v136[1] = v7;
  v8 = sub_10022C350(&qword_100CB63F0, &unk_100A64110);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v137 = v10;
  v139 = sub_10022C350(&qword_100CD4618, &qword_100A7B808);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v141 = v12;
  v13 = sub_1000038CC();
  v145 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v138 = v15;
  v16 = sub_10022C350(&qword_100CB6418, &unk_100A7B4A0);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v142 = v18;
  v144 = sub_10022C350(&qword_100CD4620, &qword_100A7B810);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000039BC();
  v146 = v20;
  v150 = sub_10022C350(&qword_100CB6028, &unk_100A7B470);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  v143 = v22;
  v23 = sub_10022C350(&qword_100CB63D0, &unk_100A64120);
  sub_100003810(v23);
  sub_100003828();
  __chkstk_darwin(v24);
  sub_1000039BC();
  v147 = v25;
  v149 = sub_10022C350(&qword_100CD4628, &qword_100A7B818);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  v151 = v27;
  v153 = sub_10022C350(&qword_100CB6038, &qword_100A64140);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  v148 = v29;
  v30 = sub_10022C350(&qword_100CB63E0, &unk_100A7B490);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  v152 = v32;
  v33 = sub_10022C350(&qword_100CD4630, &qword_100A7B820);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v34);
  sub_10000CC9C();
  v35 = sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v36);
  sub_100019530();
  v37 = sub_10022C350(&qword_100CB63C0, &unk_100A64130);
  sub_100003810(v37);
  sub_100003828();
  __chkstk_darwin(v38);
  sub_10001320C();
  v39 = sub_10022C350(&qword_100CD4638, &qword_100A7B828);
  sub_100003810(v39);
  sub_100003828();
  __chkstk_darwin(v40);
  v42 = v136 - v41;
  v44 = *(v43 + 56);
  v154 = v5;
  sub_100095588();
  sub_100095588();
  sub_1000038B4(v42, 1, v35);
  if (v59)
  {
    sub_1000038B4(&v42[v44], 1, v35);
    if (v59)
    {
      sub_1000180EC(v42, &qword_100CB63C0, &unk_100A64130);
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  sub_100095588();
  sub_1000038B4(&v42[v44], 1, v35);
  if (v59)
  {
    sub_1000180EC(v2, &qword_100CB6058, &unk_100A7B460);
LABEL_24:
    v60 = &qword_100CD4638;
    v61 = &qword_100A7B828;
LABEL_25:
    v62 = v42;
LABEL_43:
    sub_1000180EC(v62, v60, v61);
    goto LABEL_44;
  }

  sub_100051BBC();
  sub_1009EA2EC();
  if ((v63 & 1) == 0)
  {
    sub_1000164CC();
    sub_1000180EC(v69, v70, v71);
    sub_1000164CC();
    sub_1000180EC(v72, v73, v74);
    v60 = &qword_100CB63C0;
    v61 = &unk_100A64130;
    goto LABEL_25;
  }

  type metadata accessor for UnitConfiguration.Distance();
  sub_100010950();
  sub_1006FDEF4(v64, v65, &protocol conformance descriptor for UnitConfiguration.Distance);
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1000180EC(v0, &qword_100CB6058, &unk_100A7B460);
  sub_1000180EC(v2, &qword_100CB6058, &unk_100A7B460);
  sub_1000180EC(v42, &qword_100CB63C0, &unk_100A64130);
  if ((v66 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_6:
  v45 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  v46 = *(v33 + 48);
  sub_100095588();
  v47 = v155;
  sub_100095588();
  sub_100013710(v1, 1);
  if (v59)
  {
    sub_10000554C(v1 + v46);
    if (v59)
    {
      sub_1000180EC(v1, &qword_100CB63E0, &unk_100A7B490);
      goto LABEL_11;
    }

LABEL_32:
    v60 = &qword_100CD4630;
    v61 = &qword_100A7B820;
    goto LABEL_33;
  }

  v67 = v152;
  sub_100095588();
  sub_10000554C(v1 + v46);
  if (v68)
  {
    sub_1000180EC(v67, &qword_100CB6038, &qword_100A64140);
    goto LABEL_32;
  }

  sub_100051BBC();
  sub_1009EA2A4();
  if ((v75 & 1) == 0)
  {
    sub_1000164CC();
    sub_1000180EC(v87, v88, v89);
    sub_1000164CC();
    sub_1000180EC(v90, v91, v92);
    v60 = &qword_100CB63E0;
    v61 = &unk_100A7B490;
    goto LABEL_33;
  }

  type metadata accessor for UnitConfiguration.Precipitation();
  sub_1000065DC();
  sub_1006FDEF4(v76, v77, &protocol conformance descriptor for UnitConfiguration.Precipitation);
  v78 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10000FEC4();
  sub_1000180EC(v79, v80, v81);
  sub_10000FEC4();
  sub_1000180EC(v82, v83, v84);
  sub_1000180EC(v1, &qword_100CB63E0, &unk_100A7B490);
  if ((v78 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_11:
  v48 = v45[6];
  v49 = *(v149 + 48);
  v50 = v151;
  sub_1000D42AC();
  sub_100095588();
  sub_1000717E8(v47 + v48);
  v51 = sub_1000162A4();
  sub_100013710(v51, v52);
  if (v59)
  {
    sub_10000554C(v50 + v49);
    if (v59)
    {
      sub_1000180EC(v50, &qword_100CB63D0, &unk_100A64120);
      goto LABEL_16;
    }

    goto LABEL_41;
  }

  v85 = v147;
  sub_100095588();
  sub_10000554C(v50 + v49);
  if (v86)
  {
    sub_1000180EC(v85, &qword_100CB6028, &unk_100A7B470);
LABEL_41:
    v60 = &qword_100CD4628;
    v61 = &qword_100A7B818;
LABEL_42:
    v62 = v50;
    goto LABEL_43;
  }

  sub_100051BBC();
  sub_1009EA25C();
  if ((v93 & 1) == 0)
  {
    sub_1000164CC();
    sub_1000180EC(v105, v106, v107);
    sub_1000164CC();
    sub_1000180EC(v108, v109, v110);
    v60 = &qword_100CB63D0;
    v61 = &unk_100A64120;
    goto LABEL_42;
  }

  type metadata accessor for UnitConfiguration.Pressure();
  sub_100008D50();
  sub_1006FDEF4(v94, v95, &protocol conformance descriptor for UnitConfiguration.Pressure);
  v96 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10000FEC4();
  sub_1000180EC(v97, v98, v99);
  sub_10000FEC4();
  sub_1000180EC(v100, v101, v102);
  sub_1000180EC(v50, &qword_100CB63D0, &unk_100A64120);
  if ((v96 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_16:
  v53 = v45[7];
  v54 = *(v144 + 48);
  v55 = v146;
  sub_1000D42AC();
  sub_100095588();
  v56 = v47 + v53;
  v1 = v55;
  sub_1000717E8(v56);
  v57 = sub_1000162A4();
  sub_100013710(v57, v58);
  if (v59)
  {
    sub_10000554C(v55 + v54);
    if (v59)
    {
      sub_1000180EC(v55, &qword_100CB6418, &unk_100A7B4A0);
LABEL_55:
      v113 = v45[8];
      v114 = *(v139 + 48);
      v115 = v141;
      sub_1000D42AC();
      sub_100095588();
      v116 = v47 + v113;
      v1 = v115;
      sub_1000717E8(v116);
      v117 = sub_1000162A4();
      sub_100013710(v117, v118);
      if (v59)
      {
        sub_10000554C(v115 + v114);
        if (v59)
        {
          sub_1000180EC(v115, &qword_100CB63F0, &unk_100A64110);
          goto LABEL_44;
        }
      }

      else
      {
        v119 = v137;
        sub_100095588();
        sub_10000554C(v115 + v114);
        if (!v120)
        {
          sub_100051BBC();
          sub_1009EA214();
          if (v121)
          {
            type metadata accessor for UnitConfiguration.WindSpeed();
            sub_100014D34();
            sub_1006FDEF4(v122, v123, &protocol conformance descriptor for UnitConfiguration.WindSpeed);
            dispatch thunk of static Equatable.== infix(_:_:)();
            sub_10000FEC4();
            sub_1000180EC(v124, v125, v126);
            sub_10000FEC4();
            sub_1000180EC(v127, v128, v129);
            sub_1000180EC(v115, &qword_100CB63F0, &unk_100A64110);
            goto LABEL_44;
          }

          sub_1000164CC();
          sub_1000180EC(v130, v131, v132);
          sub_1000164CC();
          sub_1000180EC(v133, v134, v135);
          v60 = &qword_100CB63F0;
          v61 = &unk_100A64110;
          goto LABEL_33;
        }

        sub_1000180EC(v119, &qword_100CB5FF0, &qword_100A49AB0);
      }

      v60 = &qword_100CD4618;
      v61 = &qword_100A7B808;
LABEL_33:
      v62 = v1;
      goto LABEL_43;
    }

LABEL_52:
    v60 = &qword_100CD4620;
    v61 = &qword_100A7B810;
    goto LABEL_33;
  }

  v103 = v142;
  sub_100095588();
  sub_10000554C(v1 + v54);
  if (v104)
  {
    sub_100019DCC();
    sub_100703000();
    goto LABEL_52;
  }

  sub_10002304C();
  v111 = v138;
  sub_100703054();
  v112 = sub_1007004E0(v103, v111);
  sub_100018690();
  sub_100703000();
  sub_100703000();
  sub_1000180EC(v1, &qword_100CB6418, &unk_100A7B4A0);
  if (v112)
  {
    goto LABEL_55;
  }

LABEL_44:
  sub_10000536C();
}

void sub_1007007DC(uint64_t a1)
{
  v1 = type metadata accessor for UnitConfiguration.Temperature();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005FF37C();
  sub_10022C350(&qword_100CB6170, &unk_100A7B4C0);
  sub_1007030AC();
  if (sub_100024D10(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(0);
    sub_1006FDEF4(&qword_100CC75E0, &type metadata accessor for UnitConfiguration.Temperature, &protocol conformance descriptor for UnitConfiguration.Temperature);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }
}

Swift::Int sub_100700A28(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1007009C4(v3, a1);
  return Hasher._finalize()();
}

void sub_100700A70()
{
  sub_10000C778();
  v179 = v0;
  v180 = v2;
  v168 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000038E4();
  v167 = v4;
  v5 = sub_10022C350(&qword_100CB63F0, &unk_100A64110);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v164 = v7;
  v8 = sub_10022C350(&qword_100CB6418, &unk_100A7B4A0);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v163 = v10;
  v11 = sub_10022C350(&qword_100CB63D0, &unk_100A64120);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v161 = v13;
  v14 = sub_10022C350(&qword_100CB63E0, &unk_100A7B490);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v165 = v16;
  v17 = sub_10022C350(&qword_100CB63C0, &unk_100A64130);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v158 - v19;
  v169 = type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000038E4();
  v172 = v22;
  v178 = sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v23);
  sub_1000039BC();
  v171 = v24;
  v25 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100003C38();
  v166 = v27 - v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  v159 = &v158 - v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  v160 = &v158 - v32;
  sub_1000038CC();
  v177 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v174 = v33;
  __chkstk_darwin(v34);
  sub_1000038E4();
  v173 = v35;
  v36 = sub_1000038CC();
  v37 = type metadata accessor for UnitsConfigurationViewModel.Temperature(v36);
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  sub_100003C38();
  v41 = v39 - v40;
  __chkstk_darwin(v42);
  v158 = &v158 - v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  v46 = (&v158 - v45);
  v175 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_100003C38();
  v162 = v48 - v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  v176 = sub_10022C350(&qword_100CB6028, &unk_100A7B470);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v51);
  sub_1000039BC();
  v170 = v52;
  sub_10022C350(&qword_100CB6038, &qword_100A64140);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v53);
  sub_10000CC9C();
  v54 = sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v55);
  v57 = (&v158 - v56);
  type metadata accessor for UnitsConfigurationViewModel.Representation(0);
  sub_1000037E8();
  __chkstk_darwin(v58);
  sub_1000037D8();
  sub_10001CB60();
  sub_1007030AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000B0C38();
      sub_100052420();
      v76 = v180;
      Hasher._combine(_:)(1uLL);
      sub_1005FF618(v76, *v1);
      type metadata accessor for UnitConfiguration.Precipitation();
      sub_1000065DC();
      sub_1006FDEF4(v77, v78, &protocol conformance descriptor for UnitConfiguration.Precipitation);
      dispatch thunk of Hashable.hash(into:)();
      v64 = sub_100003984();
      v72 = &qword_100A64140;
      goto LABEL_11;
    case 2u:
      v59 = &qword_100CB6028;
      v60 = &unk_100A7B470;
      v65 = v170;
      sub_100051BBC();
      v70 = v180;
      Hasher._combine(_:)(2uLL);
      sub_1005FF5D0(v70, *v65);
      type metadata accessor for UnitConfiguration.Pressure();
      sub_100008D50();
      v69 = &protocol conformance descriptor for UnitConfiguration.Pressure;
      goto LABEL_5;
    case 3u:
      sub_10002304C();
      sub_100703054();
      Hasher._combine(_:)(3uLL);
      sub_1005FF37C();
      sub_10022C350(&qword_100CB6170, &unk_100A7B4C0);
      sub_10000493C();
      sub_1007030AC();
      v73 = sub_1000162A4();
      v74 = v177;
      sub_1000038B4(v73, v75, v177);
      if (v127)
      {
        Hasher._combine(_:)(1uLL);
      }

      else
      {
        v95 = v173;
        v94 = v174;
        sub_10007956C();
        v96(v95, v46, v74);
        Hasher._combine(_:)(0);
        sub_10001F5F0();
        sub_1006FDEF4(v97, v98, &protocol conformance descriptor for UnitConfiguration.Temperature);
        sub_100021118();
        dispatch thunk of Hashable.hash(into:)();
        (*(v94 + 8))(v95, v74);
      }

      sub_100095588();
      v99 = sub_10000C7F0();
      sub_1000038B4(v99, v100, v74);
      if (v127)
      {
        sub_100020320();
      }

      else
      {
        v102 = v173;
        v101 = v174;
        sub_10007956C();
        sub_10000FEC4();
        v103();
        sub_100016DB8();
        sub_10001F5F0();
        sub_1006FDEF4(v104, v105, &protocol conformance descriptor for UnitConfiguration.Temperature);
        sub_100021118();
        dispatch thunk of Hashable.hash(into:)();
        (*(v101 + 8))(v102, v74);
      }

      sub_100019DCC();
      goto LABEL_45;
    case 4u:
      v59 = &qword_100CB5FF0;
      v60 = &qword_100A49AB0;
      v65 = v171;
      sub_100051BBC();
      v66 = v180;
      Hasher._combine(_:)(4uLL);
      sub_1005FF334(v66, *v65);
      type metadata accessor for UnitConfiguration.WindSpeed();
      sub_100014D34();
      v69 = &protocol conformance descriptor for UnitConfiguration.WindSpeed;
LABEL_5:
      sub_1006FDEF4(v67, v68, v69);
      sub_100014268();
      dispatch thunk of Hashable.hash(into:)();
      v64 = v65;
      goto LABEL_6;
    case 5u:
      sub_100031770();
      sub_100703054();
      v79 = v180;
      Hasher._combine(_:)(5uLL);
      sub_100095588();
      sub_1000038B4(v20, 1, v54);
      if (v127)
      {
        sub_1000865DC();
      }

      else
      {
        v46 = &unk_100A7B460;
        sub_100052420();
        sub_100043A54();
        sub_1005FF660(v79, *v57);
        type metadata accessor for UnitConfiguration.Distance();
        sub_100010950();
        sub_1006FDEF4(v106, v107, &protocol conformance descriptor for UnitConfiguration.Distance);
        dispatch thunk of Hashable.hash(into:)();
        sub_1000180EC(v57, &qword_100CB6058, &unk_100A7B460);
      }

      v109 = v164;
      v108 = v165;
      v110 = v175;
      sub_1000C8A40();
      sub_10000554C(v108);
      if (v127)
      {
        sub_1000865DC();
      }

      else
      {
        v46 = &qword_100A64140;
        sub_1000B0C38();
        sub_100052420();
        sub_100043A54();
        sub_1005FF618(v79, *v1);
        type metadata accessor for UnitConfiguration.Precipitation();
        sub_1000065DC();
        sub_1006FDEF4(v111, v112, &protocol conformance descriptor for UnitConfiguration.Precipitation);
        dispatch thunk of Hashable.hash(into:)();
        v113 = sub_100003984();
        sub_1000180EC(v113, v114, &qword_100A64140);
      }

      v115 = v176;
      sub_1000C8A40();
      v116 = sub_10000C7F0();
      sub_1000038B4(v116, v117, v115);
      if (v127)
      {
        sub_1000865DC();
      }

      else
      {
        v46 = v170;
        sub_1000D42AC();
        sub_100051BBC();
        sub_100043A54();
        sub_1005FF5D0(v79, *v46);
        type metadata accessor for UnitConfiguration.Pressure();
        sub_100008D50();
        v120 = sub_1006FDEF4(v118, v119, &protocol conformance descriptor for UnitConfiguration.Pressure);
        sub_100052710(v120);
        sub_1000180EC(v46, &qword_100CB6028, &unk_100A7B470);
      }

      v121 = v177;
      v122 = v178;
      sub_1000C8A40();
      v123 = sub_10000C7F0();
      sub_1000038B4(v123, v124, v110);
      if (v127)
      {
        sub_1000865DC();
      }

      else
      {
        sub_10002304C();
        v125 = v162;
        sub_100703054();
        sub_100043A54();
        sub_1005FF37C();
        sub_10022C350(&qword_100CB6170, &unk_100A7B4C0);
        sub_10000493C();
        v126 = v158;
        sub_1007030AC();
        sub_10000554C(v126);
        if (v127)
        {
          Hasher._combine(_:)(1uLL);
        }

        else
        {
          v143 = sub_100021630();
          v144(v143);
          Hasher._combine(_:)(0);
          sub_10001F5F0();
          v147 = sub_1006FDEF4(v145, v146, &protocol conformance descriptor for UnitConfiguration.Temperature);
          sub_1000C83C0(v147);
          (*(v125 + 8))(v46, v121);
        }

        v148 = v159;
        sub_100095588();
        sub_10000554C(v148);
        if (v127)
        {
          sub_1000865DC();
        }

        else
        {
          v149 = sub_100021630();
          v150(v149);
          sub_100043A54();
          sub_10001F5F0();
          v153 = sub_1006FDEF4(v151, v152, &protocol conformance descriptor for UnitConfiguration.Temperature);
          sub_1000C83C0(v153);
          (*(v125 + 8))(v46, v121);
        }

        sub_100019DCC();
        sub_100703000();
      }

      sub_100095588();
      sub_1000038B4(v109, 1, v122);
      if (v127)
      {
        sub_1000865DC();
LABEL_45:
        sub_100703000();
      }

      else
      {
        v59 = &qword_100CB5FF0;
        v60 = &qword_100A49AB0;
        v154 = v171;
        sub_1000D42AC();
        sub_100051BBC();
        sub_100043A54();
        sub_1005FF334(v79, *v154);
        type metadata accessor for UnitConfiguration.WindSpeed();
        sub_100014D34();
        v157 = sub_1006FDEF4(v155, v156, &protocol conformance descriptor for UnitConfiguration.WindSpeed);
        sub_100052710(v157);
        sub_100052050();
        sub_100703000();
        v64 = v154;
LABEL_6:
        v71 = v59;
        v72 = v60;
LABEL_11:
        sub_1000180EC(v64, v71, v72);
      }

      sub_10000536C();
      return;
    case 6u:
      sub_100037CC0();
      v80 = v167;
      sub_100703054();
      v81 = v180;
      Hasher._combine(_:)(6uLL);
      sub_1005FF660(v81, *v80);
      type metadata accessor for UnitConfiguration.Distance();
      sub_100010950();
      sub_1006FDEF4(v82, v83, &protocol conformance descriptor for UnitConfiguration.Distance);
      sub_100003984();
      dispatch thunk of Hashable.hash(into:)();
      v84 = v168;
      v85 = sub_10006A8A0();
      sub_1005FF618(v85, v86);
      type metadata accessor for UnitConfiguration.Precipitation();
      sub_1000065DC();
      sub_1006FDEF4(v87, v88, &protocol conformance descriptor for UnitConfiguration.Precipitation);
      sub_1000046B4();
      dispatch thunk of Hashable.hash(into:)();
      v89 = sub_10006A8A0();
      sub_1005FF5D0(v89, v90);
      type metadata accessor for UnitConfiguration.Pressure();
      sub_100008D50();
      sub_1006FDEF4(v91, v92, &protocol conformance descriptor for UnitConfiguration.Pressure);
      sub_1000046B4();
      dispatch thunk of Hashable.hash(into:)();
      sub_1005FF37C();
      sub_10022C350(&qword_100CB6170, &unk_100A7B4C0);
      sub_10000493C();
      sub_1007030AC();
      v93 = v177;
      sub_1000038B4(v41, 1, v177);
      if (v127)
      {
        Hasher._combine(_:)(1uLL);
      }

      else
      {
        (*(v174 + 32))(v173, v41, v93);
        Hasher._combine(_:)(0);
        sub_10001F5F0();
        sub_1006FDEF4(v128, v129, &protocol conformance descriptor for UnitConfiguration.Temperature);
        dispatch thunk of Hashable.hash(into:)();
        v130 = sub_10008672C();
        v131(v130);
      }

      sub_100095588();
      v132 = sub_10000C7F0();
      sub_1000038B4(v132, v133, v93);
      if (v127)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v135 = v173;
        v134 = v174;
        sub_10000FEC4();
        v136();
        Hasher._combine(_:)(1u);
        sub_10001F5F0();
        sub_1006FDEF4(v137, v138, &protocol conformance descriptor for UnitConfiguration.Temperature);
        dispatch thunk of Hashable.hash(into:)();
        (*(v134 + 8))(v135, v93);
      }

      v139 = sub_10006A8A0();
      sub_1005FF334(v139, v140);
      type metadata accessor for UnitConfiguration.WindSpeed();
      sub_100014D34();
      sub_1006FDEF4(v141, v142, &protocol conformance descriptor for UnitConfiguration.WindSpeed);
      sub_1000046B4();
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v80 + *(v84 + 36)));
      Hasher._combine(_:)(*(v80 + *(v84 + 40)));
      goto LABEL_45;
    default:
      v59 = &qword_100CB6058;
      v60 = &unk_100A7B460;
      sub_100051BBC();
      v61 = v180;
      Hasher._combine(_:)(0);
      sub_1005FF660(v61, *v57);
      type metadata accessor for UnitConfiguration.Distance();
      sub_100010950();
      sub_1006FDEF4(v62, v63, &protocol conformance descriptor for UnitConfiguration.Distance);
      sub_100014268();
      dispatch thunk of Hashable.hash(into:)();
      v64 = v57;
      goto LABEL_6;
  }
}

void sub_100701BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v22;
  a20 = v23;
  sub_100017580();
  v24 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = v29 - v28;
  v31 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  sub_100003810(v31);
  sub_100003828();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  sub_1005FF660(v20, *v21);
  sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  type metadata accessor for UnitConfiguration.Distance();
  sub_100010950();
  sub_1006FDEF4(v35, v36, &protocol conformance descriptor for UnitConfiguration.Distance);
  dispatch thunk of Hashable.hash(into:)();
  v37 = type metadata accessor for UnitsConfigurationViewModel.Representation.Full(0);
  v38 = sub_10003BB74();
  sub_1005FF618(v38, v39);
  sub_10022C350(&qword_100CB6038, &qword_100A64140);
  type metadata accessor for UnitConfiguration.Precipitation();
  sub_1000065DC();
  v42 = sub_1006FDEF4(v40, v41, &protocol conformance descriptor for UnitConfiguration.Precipitation);
  sub_1000F0014(v42);
  v43 = sub_10003BB74();
  sub_1005FF5D0(v43, v44);
  sub_10022C350(&qword_100CB6028, &unk_100A7B470);
  type metadata accessor for UnitConfiguration.Pressure();
  sub_100008D50();
  v47 = sub_1006FDEF4(v45, v46, &protocol conformance descriptor for UnitConfiguration.Pressure);
  sub_1000F0014(v47);
  sub_1007007DC(v20);
  type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_100095588();
  sub_1000038B4(v34, 1, v24);
  if (v48)
  {
    sub_100020320();
  }

  else
  {
    (*(v26 + 32))(v30, v34, v24);
    sub_100016DB8();
    sub_10001F5F0();
    sub_1006FDEF4(v49, v50, &protocol conformance descriptor for UnitConfiguration.Temperature);
    sub_100021118();
    dispatch thunk of Hashable.hash(into:)();
    v51 = sub_100014268();
    v52(v51);
  }

  v53 = sub_10003BB74();
  sub_1005FF334(v53, v54);
  sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
  type metadata accessor for UnitConfiguration.WindSpeed();
  sub_100014D34();
  sub_1006FDEF4(v55, v56, &protocol conformance descriptor for UnitConfiguration.WindSpeed);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v21 + *(v37 + 36)));
  Hasher._combine(_:)(*(v21 + *(v37 + 40)));
  sub_10000536C();
}

void sub_100701EF8()
{
  sub_10000C778();
  v90 = v0;
  v98 = sub_10022C350(&qword_100CB5FF0, &qword_100A49AB0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_1000039BC();
  v89 = v2;
  v3 = sub_10022C350(&qword_100CB63F0, &unk_100A64110);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v97 = v5;
  v6 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v86 = v8;
  sub_1000038CC();
  v96 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v88 = v9;
  __chkstk_darwin(v10);
  sub_1000038E4();
  v87 = v11;
  v12 = sub_1000038CC();
  v13 = type metadata accessor for UnitsConfigurationViewModel.Temperature(v12);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_1000038E4();
  v85 = v15;
  v16 = sub_1000038CC();
  v94 = type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v95 = v18;
  v19 = sub_10022C350(&qword_100CB6418, &unk_100A7B4A0);
  sub_100003810(v19);
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  v93 = v21;
  v92 = sub_10022C350(&qword_100CB6028, &unk_100A7B470);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v84 = v23;
  v24 = sub_10022C350(&qword_100CB63D0, &unk_100A64120);
  sub_100003810(v24);
  sub_100003828();
  __chkstk_darwin(v25);
  sub_1000039BC();
  v91 = v26;
  v27 = sub_10022C350(&qword_100CB6038, &qword_100A64140);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v28);
  v30 = (&v83 - v29);
  v31 = sub_10022C350(&qword_100CB63E0, &unk_100A7B490);
  sub_100003810(v31);
  sub_100003828();
  __chkstk_darwin(v32);
  sub_10001320C();
  v33 = sub_10022C350(&qword_100CB6058, &unk_100A7B460);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v34);
  v36 = (&v83 - v35);
  v37 = sub_10022C350(&qword_100CB63C0, &unk_100A64130);
  sub_100003810(v37);
  sub_100003828();
  __chkstk_darwin(v38);
  v40 = &v83 - v39;
  sub_100095588();
  sub_1000038B4(v40, 1, v33);
  if (v63)
  {
    v41 = v90;
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100051BBC();
    v41 = v90;
    Hasher._combine(_:)(1u);
    sub_1005FF660(v41, *v36);
    type metadata accessor for UnitConfiguration.Distance();
    sub_100010950();
    sub_1006FDEF4(v42, v43, &protocol conformance descriptor for UnitConfiguration.Distance);
    dispatch thunk of Hashable.hash(into:)();
    sub_1000180EC(v36, &qword_100CB6058, &unk_100A7B460);
  }

  type metadata accessor for UnitsConfigurationViewModel.Representation.MultipleRows(0);
  sub_100095588();
  v44 = sub_1000162A4();
  sub_1000038B4(v44, v45, v27);
  if (v63)
  {
    sub_100020320();
  }

  else
  {
    sub_100051BBC();
    sub_100016DB8();
    sub_1005FF618(v41, *v30);
    type metadata accessor for UnitConfiguration.Precipitation();
    sub_1000065DC();
    sub_1006FDEF4(v46, v47, &protocol conformance descriptor for UnitConfiguration.Precipitation);
    dispatch thunk of Hashable.hash(into:)();
    sub_1000180EC(v30, &qword_100CB6038, &qword_100A64140);
  }

  v48 = v94;
  v49 = v92;
  sub_1000C8A40();
  v50 = sub_10000C7F0();
  sub_1000038B4(v50, v51, v49);
  if (v63)
  {
    sub_100020320();
  }

  else
  {
    v52 = v84;
    sub_100052420();
    sub_100016DB8();
    sub_1005FF5D0(v41, *v52);
    type metadata accessor for UnitConfiguration.Pressure();
    sub_100008D50();
    sub_1006FDEF4(v53, v54, &protocol conformance descriptor for UnitConfiguration.Pressure);
    dispatch thunk of Hashable.hash(into:)();
    v55 = sub_10008672C();
    sub_1000180EC(v55, v56, &unk_100A7B470);
  }

  v57 = v98;
  v58 = v96;
  sub_100095588();
  v59 = sub_10000C7F0();
  sub_1000038B4(v59, v60, v48);
  if (v63)
  {
    sub_100020320();
  }

  else
  {
    sub_10002304C();
    sub_100703054();
    sub_100016DB8();
    sub_1005FF37C();
    sub_10022C350(&qword_100CB6170, &unk_100A7B4C0);
    sub_10000493C();
    sub_1007030AC();
    v61 = sub_10000C7F0();
    sub_1000038B4(v61, v62, v58);
    if (v63)
    {
      Hasher._combine(_:)(1uLL);
    }

    else
    {
      sub_10007956C();
      sub_10000FEC4();
      v64();
      Hasher._combine(_:)(0);
      sub_10001F5F0();
      sub_1006FDEF4(v65, v66, &protocol conformance descriptor for UnitConfiguration.Temperature);
      sub_100021118();
      dispatch thunk of Hashable.hash(into:)();
      v67 = sub_10008672C();
      v68(v67);
    }

    sub_100095588();
    v69 = sub_10000C7F0();
    sub_1000038B4(v69, v70, v58);
    if (v63)
    {
      sub_100020320();
    }

    else
    {
      sub_10007956C();
      sub_10000FEC4();
      v71();
      sub_100016DB8();
      sub_10001F5F0();
      sub_1006FDEF4(v72, v73, &protocol conformance descriptor for UnitConfiguration.Temperature);
      sub_100021118();
      dispatch thunk of Hashable.hash(into:)();
      v74 = sub_10008672C();
      v75(v74);
    }

    sub_100019DCC();
    sub_100703000();
  }

  sub_100095588();
  v76 = sub_10000C7F0();
  sub_1000038B4(v76, v77, v57);
  if (v63)
  {
    sub_100020320();
  }

  else
  {
    v78 = v89;
    sub_100051BBC();
    sub_100016DB8();
    sub_1005FF334(v41, *v78);
    type metadata accessor for UnitConfiguration.WindSpeed();
    sub_100014D34();
    sub_1006FDEF4(v79, v80, &protocol conformance descriptor for UnitConfiguration.WindSpeed);
    dispatch thunk of Hashable.hash(into:)();
    v81 = sub_10008672C();
    sub_1000180EC(v81, v82, &qword_100A49AB0);
  }

  sub_10000536C();
}

void sub_1007027B8()
{
  sub_100017580();
  v3 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_10000CC9C();
  v7 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  sub_10001320C();
  sub_1007007DC(v0);
  type metadata accessor for UnitsConfigurationViewModel.Representation.Temperature(0);
  sub_100095588();
  v9 = sub_1000162A4();
  sub_1000038B4(v9, v10, v3);
  if (v11)
  {
    sub_100020320();
  }

  else
  {
    (*(v5 + 32))(v1, v2, v3);
    sub_100016DB8();
    sub_10001F5F0();
    sub_1006FDEF4(v12, v13, &protocol conformance descriptor for UnitConfiguration.Temperature);
    sub_100021118();
    dispatch thunk of Hashable.hash(into:)();
    v14 = sub_100003984();
    v15(v14);
  }
}

void sub_100702940()
{
  v2 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100019530();
  v6 = type metadata accessor for UnitsConfigurationViewModel.Temperature(0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_10000CC9C();
  sub_10000493C();
  sub_100014268();
  sub_1007030AC();
  sub_10000554C(v1);
  if (v8)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    (*(v4 + 32))(v0, v1, v2);
    Hasher._combine(_:)(0);
    sub_10001F5F0();
    sub_1006FDEF4(v9, v10, &protocol conformance descriptor for UnitConfiguration.Temperature);
    sub_1000251E0();
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v0, v2);
  }
}

Swift::Int sub_100702AA4(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_100702B14(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_1007009C4(v4, a2);
  return Hasher._finalize()();
}

Swift::Int sub_100702CC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100702D04@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD4640, &unk_100A7B830);
  a1[4] = sub_100703104();
  sub_100042FB0(a1);
  v2 = sub_100017580();
  type metadata accessor for UnitsConfigurationViewModel(v2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100702DC8(uint64_t a1)
{
  sub_1006FDEF4(&qword_100CD4650, type metadata accessor for UnitsConfigurationViewModel, aQ_62);

  return ShortDescribable.description.getter();
}

uint64_t sub_100703000()
{
  v1 = sub_100017580();
  v2(v1);
  sub_1000037E8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100703054()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1007030AC()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_100703104()
{
  result = qword_100CD4648;
  if (!qword_100CD4648)
  {
    v3 = sub_10022E824(&qword_100CD4640, &unk_100A7B830);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD4648);
  }

  return result;
}

uint64_t sub_100703168@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Calendar();
  sub_100007FD0();
  v34 = v4;
  v35 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v7 = v6 - v5;
  v33 = type metadata accessor for Date();
  sub_100007FD0();
  v37 = v8;
  __chkstk_darwin(v9);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v31 = type metadata accessor for WeatherConditionGradientModel();
  sub_100007FD0();
  v30 = v14;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = type metadata accessor for VFXTestViewModel(0);
  __chkstk_darwin(v19 - 8);
  sub_1000037D8();
  v22 = v21 - v20;
  sub_100035B30(v1 + 16, v40);
  sub_100035B30(v1 + 64, v39);
  v36 = *(v1 + 104);
  sub_100035B30(v1 + 120, v38);
  *(a1 + 56) = sub_100319FB8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;

  sub_10022C350(&qword_100CA4A38, &unk_100A7B8A0);
  sub_1007037CC();
  *a1 = ObservedObject.init(wrappedValue:)();
  *(a1 + 8) = v23;
  sub_100035B30(v40, a1 + 16);
  *(a1 + 80) = v36;
  sub_100035B30(v38, a1 + 96);
  sub_1000161C0(v39, v39[3]);
  swift_unknownObjectRetain();
  sub_100988268();
  sub_10079821C();
  sub_10031ADBC(v22);
  type metadata accessor for VFXTestView(0);
  dispatch thunk of WeatherConditionGradientManagerType.load(for:)();
  (*(v30 + 8))(v18, v31);
  v24 = v32;
  static WeatherClock.date.getter();
  Date.startOfDay.getter();
  v25 = *(v37 + 8);
  v37 += 8;
  v26 = v33;
  v25(v24, v33);
  static Calendar.current.getter();
  Date.wc_addHours(_:calendar:)();
  v27 = v35;
  v28 = *(v34 + 8);
  v28(v7, v35);
  static Calendar.current.getter();
  Date.wc_addHours(_:calendar:)();
  v28(v7, v27);
  static Calendar.current.getter();
  Date.wc_addHours(_:calendar:)();
  v28(v7, v27);
  Elevation.init(_:isPM:)();
  v25(v13, v26);
  sub_100006F14(v38);
  sub_100006F14(v40);
  return sub_100006F14(v39);
}

void *sub_1007035B8()
{
  sub_100006F14(v0 + 2);

  sub_100006F14(v0 + 8);
  swift_unknownObjectRelease();
  sub_100006F14(v0 + 15);
  return v0;
}

uint64_t sub_1007035F8()
{
  sub_1007035B8();

  return swift_deallocClassInstance();
}

void *sub_100703650(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a7;
  v27 = a9;
  v16 = sub_100042FB0(v25);
  (*(*(a7 - 8) + 32))(v16, a1, a7);
  v17 = swift_allocObject();
  sub_10002D7F8(v25, v26);
  sub_100007FD0();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v21;
  v17[5] = type metadata accessor for VFXTestInteractor();
  v17[6] = &off_100C4ADB0;
  v17[2] = v23;
  v17[7] = a2;
  sub_100013188(a3, (v17 + 8));
  v17[13] = a4;
  v17[14] = a10;
  sub_100013188(a5, (v17 + 15));
  sub_100006F14(v25);
  return v17;
}

unint64_t sub_1007037CC()
{
  result = qword_100CA4A40;
  if (!qword_100CA4A40)
  {
    v3 = sub_10022E824(&qword_100CA4A38, &unk_100A7B8A0);
    result = swift_getWitnessTable(asc_100AA1480, v3, v0, v1);
    atomic_store(result, &qword_100CA4A40);
  }

  return result;
}

uint64_t sub_100703874()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = *(type metadata accessor for LocationGridView(0) + 56);
  memcpy(__dst, (v0 + v5), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v9, (v0 + v5), sizeof(v9));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v2 + 8))(v4, v1);
  }

  return v9[48];
}

double sub_1007039F0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for LocationGridView(0) + 56);
  memcpy(__dst, (v0 + v5), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v9, (v0 + v5), sizeof(v9));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v2 + 8))(v4, v1);
  }

  return *&v9[5];
}

double sub_100703B6C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(type metadata accessor for LocationGridView(0) + 56);
  memcpy(__dst, (v0 + v5), 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, (v0 + v5), sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v14, __src, sizeof(v14));
  v7 = *&v14[1];
  if (v14[4])
  {
    v8 = sub_1000FDB68();
    v9 = 20.0;
    if (BYTE1(v14[6]) - 3 < 2)
    {
      v9 = 0.0;
    }

    v10 = v7 - (*&v14[7] + *&v14[7]) - v8 - v9;
    v11 = sub_1000FDE84();
    if (*&v14[8] >= v10 / dbl_100A7BE08[v11])
    {
      return v10 / dbl_100A7BE08[v11];
    }

    else
    {
      return *&v14[8];
    }
  }

  return v7;
}

BOOL sub_100703D6C()
{
  v1 = v0;
  v59 = type metadata accessor for EnvironmentValues();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for LocationGridView(0);
  __chkstk_darwin(v61);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000703C(v17, qword_100D90A90);
  sub_10015CE24(v1, v16);
  sub_10015CE24(v1, v13);
  sub_10015CE24(v1, v10);
  v60 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v55 = v7;
    v56 = v4;
    v21 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v62 = v54;
    *v21 = 141558787;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    v22 = Location.Identifier.name.getter();
    v24 = v23;
    sub_1007090A0(v16, type metadata accessor for LocationGridView);
    v25 = sub_100078694(v22, v24, &v62);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2082;
    v26 = type metadata accessor for LocationViewModel(0);
    if (v13[*(v26 + 64)])
    {
      v27 = 1702195828;
    }

    else
    {
      v27 = 0x65736C6166;
    }

    if (v13[*(v26 + 64)])
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    sub_1007090A0(v13, type metadata accessor for LocationGridView);
    v29 = sub_100078694(v27, v28, &v62);

    *(v21 + 24) = v29;
    *(v21 + 32) = 2082;
    v30 = *(v61 + 56);
    memcpy(__dst, &v10[v30], 0x49uLL);
    if (__dst[9])
    {
      memcpy(v63, &v10[v30], sizeof(v63));
    }

    else
    {

      static os_log_type_t.fault.getter();
      v31 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v32 = v57;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
      (*(v58 + 8))(v32, v59);
    }

    v4 = v56;
    v7 = v55;
    v63[0] = v63[49];
    sub_1006BBE20();
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    sub_1007090A0(v10, type metadata accessor for LocationGridView);
    v36 = sub_100078694(v33, v35, &v62);

    *(v21 + 34) = v36;
    _os_log_impl(&_mh_execute_header, v19, v20, "LocationGridView: location=%{private,mask.hash}s determining wantsMapCell. model.shouldShowAnyMap=%{public}s, mapPresentationStyle=%{public}s", v21, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_1007090A0(v13, type metadata accessor for LocationGridView);
    sub_1007090A0(v16, type metadata accessor for LocationGridView);
    sub_1007090A0(v10, type metadata accessor for LocationGridView);
  }

  sub_10015CE24(v1, v7);
  sub_10015CE24(v1, v4);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    __dst[0] = swift_slowAlloc();
    *v39 = 141558531;
    *(v39 + 4) = 1752392040;
    *(v39 + 12) = 2081;
    v40 = Location.Identifier.name.getter();
    v41 = v4;
    v43 = v42;
    sub_1007090A0(v7, type metadata accessor for LocationGridView);
    v44 = sub_100078694(v40, v43, __dst);

    *(v39 + 14) = v44;
    *(v39 + 22) = 2082;
    type metadata accessor for DisplayMetrics(0);
    sub_1000814E4(&qword_100CD1C20, type metadata accessor for DisplayMetrics, byte_100A9EBB8);
    v45 = ShortDescribable.description.getter();
    v47 = v46;
    sub_1007090A0(v41, type metadata accessor for LocationGridView);
    v48 = sub_100078694(v45, v47, __dst);

    *(v39 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v37, v38, "LocationGridView: location=%{private,mask.hash}s determining wantsMapCell. displayMetrics=%{public}s", v39, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1007090A0(v4, type metadata accessor for LocationGridView);
    sub_1007090A0(v7, type metadata accessor for LocationGridView);
  }

  if (*(v1 + *(type metadata accessor for LocationViewModel(0) + 64)) != 1)
  {
    return 0;
  }

  v49 = *(v61 + 56);
  memcpy(__dst, (v1 + v49), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v63, (v1 + v49), sizeof(v63));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v51 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v52 = v57;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v58 + 8))(v52, v59);
  }

  return v63[49] == 3;
}

uint64_t sub_1007045F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = type metadata accessor for LocationGridView(0);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v79 = v7;
  v80 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for DisplayMetrics(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v74 = type metadata accessor for LocationViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v24 = type metadata accessor for LocationDynamicContentConfiguration(0);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000037D8();
  v73 = v27 - v26;
  v77 = sub_10022C350(&qword_100CD47D0, &qword_100A7B918);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v28);
  v75 = &v67 - v29;
  sub_10022C350(&qword_100CD47D8, &unk_100A7B920);
  sub_1000037C4();
  v68 = v31;
  v69 = v30;
  sub_100003828();
  __chkstk_darwin(v32);
  v78 = &v67 - v33;
  sub_10015CE24(v2, v23);
  v34 = v2 + *(v3 + 40);
  v72 = v19;
  sub_10015CE24(v34, v19);
  v76 = v3;
  v35 = *(v3 + 56);
  memcpy(__dst, (v2 + v35), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v88, (v2 + v35), sizeof(v88));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v36 = v8;
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v10 + 8))(v14, v36);
  }

  v81 = v2;
  memcpy(v89, v88, sizeof(v89));
  v38 = v73;
  sub_1006BB580(v23, v72, v89, v73);
  sub_1000289B4();
  v72 = v39;
  v40 = v80;
  sub_10015CE24(v2, v80);
  v41 = *(v5 + 80);
  v42 = (v41 + 16) & ~v41;
  v43 = swift_allocObject();
  sub_100023064();
  v71 = v44;
  sub_1007090F4(v40, v45 + v42);
  v46 = v77;
  v47 = v75;
  v48 = &v75[*(v77 + 40)];
  KeyPath = swift_getKeyPath();
  v87 = 0;
  *v48 = KeyPath;
  v48[72] = 0;
  sub_1007090F4(v38, v47);
  v50 = (v47 + *(v46 + 36));
  *v50 = sub_100707F3C;
  v50[1] = v43;
  v82 = *(v81 + *(v74 + 28));
  sub_10015CE24(v81, v40);
  v72 = v41;
  v51 = swift_allocObject();
  sub_1007090F4(v40, v51 + v42);

  v52 = sub_10022C350(&qword_100CD47E0, &qword_100A83D20);
  sub_100004954();
  v55 = sub_100006F64(v53, &qword_100CD47D0, &qword_100A7B918, v54);
  v56 = sub_100708038();
  v73 = v55;
  v74 = v52;
  v57 = v56;
  View.onChange<A>(of:initial:_:)();

  v58 = v81;

  sub_100018144(v47, &qword_100CD47D0, &qword_100A7B918);
  if (*(v58 + *(v76 + 44)))
  {
    type metadata accessor for TipCoordinator(0);

    ObservableResolver.resolve<A>(_:)();

    if (v82)
    {
      v61 = sub_10014A168(v59, v60);

      v86 = v61 & 1;
      sub_1000289B4();
      v62 = v80;
      sub_10015CE24(v58, v80);
      swift_allocObject();
      sub_100023064();
      sub_1007090F4(v62, v63 + v42);
      v82 = v77;
      v83 = v74;
      v84 = v73;
      v85 = v57;
      sub_100010558();
      swift_getOpaqueTypeConformance2();
      v64 = v69;
      v65 = v78;
      View.onChange<A>(of:initial:_:)();

      return (*(v68 + 8))(v65, v64);
    }

    __break(1u);
  }

  type metadata accessor for ObservableResolver();
  sub_1000814E4(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100704D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v111 = a6;
  v12 = type metadata accessor for EnvironmentValues();
  v105 = *(v12 - 8);
  v106 = v12;
  __chkstk_darwin(v12);
  v104 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for LocationGridView(0);
  v117 = *(v129 - 8);
  __chkstk_darwin(v129);
  v130 = v14;
  v118 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocationComponentContainerViewModel(0);
  v114 = *(v15 - 8);
  __chkstk_darwin(v15);
  v115 = v16;
  v116 = (&v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v119 = sub_10022C350(&qword_100CD4800, &qword_100A7B960);
  __chkstk_darwin(v119);
  v121 = &v103 - v17;
  v123 = sub_10022C350(&qword_100CD4808, &qword_100A7B968);
  __chkstk_darwin(v123);
  v122 = &v103 - v18;
  v19 = sub_10022C350(&qword_100CD4810, &qword_100A7B970);
  v125 = *(v19 - 8);
  v126 = v19;
  __chkstk_darwin(v19);
  v124 = &v103 - v20;
  v120 = sub_10022C350(&qword_100CD4818, &qword_100A7B978);
  __chkstk_darwin(v120);
  v127 = &v103 - v21;
  v109 = sub_10022C350(&qword_100CD4820, &qword_100A7B980);
  __chkstk_darwin(v109);
  v110 = &v103 - v22;
  v108 = sub_10022C350(&qword_100CD4828, &unk_100A7B988);
  __chkstk_darwin(v108);
  v128 = &v103 - v23;
  v113 = type metadata accessor for LocationComponentViewModel(0);
  __chkstk_darwin(v113);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a5;
  v27 = a1;
  v28 = sub_100705C58(v6, a2, a3, a4, v26);
  v134 = v30;
  v136 = v31;
  v32 = v31 - v28;
  if (__OFSUB__(v31, v28))
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v33 = v28;
  v135 = v29;
  v34 = sub_100703B6C();
  v35 = sub_1007039F0();
  v36 = v6;
  if (!v32)
  {
    goto LABEL_6;
  }

  v37 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    __break(1u);
LABEL_6:
    v37 = 0;
  }

  v133 = *(v15 + 20);
  v38 = sub_100706120(v33, v136, v134, v135, v27 + v133);
  v39 = sub_100703B6C();
  v40 = sub_1007039F0();
  if (!v38)
  {
LABEL_11:
    v41 = 0;
    goto LABEL_12;
  }

  v41 = v38 - 1;
  if (__OFSUB__(v38, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  v132 = v33;
  v131 = sub_1007063D4(v6, v33, v136, v134, v135, v27);
  if (!*(v6 + *(v129 + 44)))
  {
LABEL_55:
    type metadata accessor for ObservableResolver();
    sub_1000814E4(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  type metadata accessor for TipCoordinator(0);

  ObservableResolver.resolve<A>(_:)();

  if (!v140[0])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v112 = v32;
  v42 = v34 * v32 + v35 * v37;
  v43 = v39 * v38 + v40 * v41;
  v44 = v133;
  v107 = sub_1001C9644(v27 + v133);

  sub_10015CE24(v27 + v44, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v46 = EnumCaseMultiPayload == 3;
  }

  else
  {
    v46 = 1;
  }

  v47 = !v46;
  LODWORD(v113) = v47;
  sub_1007090A0(v25, type metadata accessor for LocationComponentViewModel);
  v48 = v116;
  sub_10015CE24(v27, v116);
  v49 = v118;
  sub_10015CE24(v6, v118);
  v50 = (*(v114 + 80) + 16) & ~*(v114 + 80);
  v51 = (v115 + *(v117 + 80) + v50) & ~*(v117 + 80);
  v52 = (v130 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = (v52 + 55) & 0xFFFFFFFFFFFFFFF8;
  v130 = v27;
  v53 = swift_allocObject();
  sub_1007090F4(v48, v53 + v50);
  v54 = sub_1007090F4(v49, v53 + v51);
  v116 = &v103;
  v55 = (v53 + v52);
  v56 = v135;
  v57 = v136;
  *v55 = v132;
  v55[1] = v57;
  v58 = v134;
  v55[2] = v134;
  v55[3] = v56;
  v59 = v53 + ((v52 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v59 = v42;
  LODWORD(v117) = v131 & 1;
  *(v59 + 8) = v131 & 1;
  v60 = v53 + v115;
  *v60 = v43;
  *(v60 + 8) = v113;
  *(v53 + ((v52 + 71) & 0xFFFFFFFFFFFFFFF8)) = v112;
  __chkstk_darwin(v54);
  __chkstk_darwin(v61);
  v118 = v36;
  sub_10022C350(&qword_100CD4830, &qword_100A7B998);
  sub_10022C350(&qword_100CD4838, &qword_100A7B9A0);
  sub_100708824();
  sub_100708878();
  sub_100708CA0();
  v62 = v121;
  v63 = v58;
  StaticIf<>.init(_:then:else:)();

  v140[0] = 0x6E656E6F706D6F63;
  v140[1] = 0xEA00000000002D74;
  v64._countAndFlagsBits = sub_1001B3DAC();
  String.append(_:)(v64);

  v65 = v140[0];
  v66 = v140[1];
  type metadata accessor for ExtendedAppLaunchState(0);
  sub_1000814E4(&qword_100CB84D0, type metadata accessor for ExtendedAppLaunchState, asc_100A4C40C);
  v67 = Environment.init<A>(_:)();
  LOBYTE(v49) = v68;
  __dst[0] = 0;
  State.init(wrappedValue:)();
  v69 = v140[0];
  v70 = v140[1];
  v71 = v62 + *(v119 + 36);
  *v71 = v67;
  *(v71 + 8) = v49 & 1;
  *(v71 + 16) = v69;
  *(v71 + 24) = v70;
  *(v71 + 32) = v65;
  *(v71 + 40) = v66;
  if (v63)
  {
    sub_10022C350(&qword_100CCB7A0, qword_100A6AE00);
    v72 = Dictionary.init(dictionaryLiteral:)();
    v73 = v128;
    v74 = v136;
  }

  else
  {
    sub_10022C350(&qword_100CD4930, &unk_100A7BA20);
    inited = swift_initStackObject();
    v119 = xmmword_100A2C3F0;
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = 0;
    sub_10022C350(&qword_100CAC480, &qword_100A76580);
    v76 = swift_allocObject();
    *(v76 + 16) = v119;
    v74 = v136;
    *(v76 + 32) = v132;
    *(v76 + 40) = v74;
    *(inited + 40) = v76;
    sub_10022C350(&qword_100CCB7A0, qword_100A6AE00);
    v72 = Dictionary.init(dictionaryLiteral:)();
    v73 = v128;
  }

  v77 = v122;
  sub_10011C0F0(v62, v122, &qword_100CD4800, &qword_100A7B960);
  *(v77 + *(v123 + 36)) = v72;
  sub_100708E68();
  v78 = v124;
  View.navigationDestinationScope()();
  sub_100018144(v77, &qword_100CD4808, &qword_100A7B968);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v79 = v127;
  (*(v125 + 32))(v127, v78, v126);
  v80 = &v79[*(v120 + 36)];
  v81 = v142;
  *v80 = v141;
  *(v80 + 1) = v81;
  *(v80 + 2) = v143;
  v82 = v132;
  v83 = v118;
  if (v132 > 0x7FFFFFFF)
  {
    goto LABEL_47;
  }

  if (v74 > 0x7FFFFFFF)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v74 < v132)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v63 > 0x7FFFFFFF)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v84 = v135;
  if (v135 < 0xFFFFFFFF80000000 || v63 < 0xFFFFFFFF80000000 || v132 < 0xFFFFFFFF80000000 || v74 < 0xFFFFFFFF80000000)
  {
    goto LABEL_51;
  }

  if (v135 > 0x7FFFFFFF)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v135 < v63)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v88 = v79;
  v89 = v110;
  sub_10011C0F0(v88, v110, &qword_100CD4818, &qword_100A7B978);
  v90 = (v89 + *(v109 + 36));
  *v90 = v82;
  v90[1] = v74;
  v90[2] = v63;
  v90[3] = v84;
  if (v107)
  {
    v91 = 1.0;
  }

  else
  {
    v91 = 0.0;
  }

  sub_10011C0F0(v89, v73, &qword_100CD4820, &qword_100A7B980);
  *(v73 + *(v108 + 36)) = v91;
  v138 = sub_1001B3DAC();
  v139 = v92;
  v93._countAndFlagsBits = 45;
  v93._object = 0xE100000000000000;
  String.append(_:)(v93);
  v94 = *(v129 + 56);
  memcpy(v140, (v83 + v94), 0x49uLL);
  if (v140[9])
  {
    memcpy(v137, (v83 + v94), sizeof(v137));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v95 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v96 = v104;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(v140, &qword_100CB71A8, &unk_100A4C930);
    (*(v105 + 8))(v96, v106);
  }

  v97 = v111;
  memcpy(__dst, v137, sizeof(__dst));
  sub_100894558();
  v98._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v98);

  v99 = v138;
  v100 = v139;
  sub_10011C0F0(v73, v97, &qword_100CD4828, &unk_100A7B988);
  result = sub_10022C350(&qword_100CD4928, &qword_100A7BA18);
  v102 = (v97 + *(result + 52));
  *v102 = v99;
  v102[1] = v100;
  return result;
}