uint64_t sub_1F908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_1FA34(unsigned __int8 a1)
{
  sub_107400();
  sub_107410(a1);
  return sub_107420();
}

Swift::Int sub_1FA98(uint64_t a1)
{
  sub_107400();
  sub_1FA0C(v3, *v1);
  return sub_107420();
}

uint64_t sub_1FB6C()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  sub_25E4(&qword_137880, &unk_108290);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_108210;
  *(v4 + 32) = 0x6C6562616CLL;
  *(v4 + 40) = 0xE500000000000000;
  sub_14994(v0, v3, &qword_137598, &unk_107EB0);
  v5 = sub_106160();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_16F70(v3, &qword_137598, &unk_107EB0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v5;
    v7 = sub_1A924((v4 + 48));
    (*(v6 + 32))(v7, v3, v5);
  }

  strcpy((v4 + 80), "noAlarmExists");
  *(v4 + 94) = -4864;
  found = type metadata accessor for ErrorNotFoundParameters(0);
  *(v4 + 96) = *(v0 + found[5]);
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0x6F43686372616573;
  *(v4 + 136) = 0xEF6E6F697469646ELL;
  v9 = *(v0 + found[6]);
  v10 = sub_25E4(&qword_137888, &unk_10A130);
  *(v4 + 144) = v9;
  *(v4 + 168) = v10;
  *(v4 + 176) = 1701669236;
  *(v4 + 184) = 0xE400000000000000;
  v11 = *(v0 + found[7]);
  if (v11)
  {
    v12 = sub_1060A0();
  }

  else
  {
    v12 = 0;
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  *(v4 + 192) = v11;
  *(v4 + 216) = v12;

  return v4;
}

uint64_t sub_1FDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_14994(a1, v11, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v12;
}

uint64_t sub_1FF98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1FFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_200C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_20184(uint64_t a1)
{
  sub_202B8(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_202B8(319, &qword_137900, &type metadata accessor for SpeakableString, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_202B8(319, &unk_137908, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_202B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2031C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137940);
  sub_135C4(v0, qword_137940);
  return sub_106A80();
}

uint64_t sub_20368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_104E10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v8 = sub_32658(0xD00000000000001CLL, 0x800000000010C530), (v9 & 1) != 0) && (sub_135FC(*(a1 + 56) + 32 * v8, v21), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v19;
    v10 = v20;
    sub_20680(v19, v20);
    sub_104E00();
    if (qword_136C70 != -1)
    {
      swift_once();
    }

    v14 = sub_106D20();
    sub_135C4(v14, qword_137940);
    v15 = sub_106D10();
    v16 = sub_106FC0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Followup PluginAction available.", v17, 2u);
    }

    sub_14DD8(v11, v10);

    (*(v5 + 32))(a2, v7, v4);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v5 + 56))(a2, v12, 1, v4);
}

uint64_t sub_20680(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2077C(uint64_t (*a1)(void))
{
  v3 = sub_25E4(&qword_137598, &unk_107EB0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  sub_25E4(&qword_137880, &unk_108290);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1082C0;
  *(v9 + 32) = 0xD000000000000016;
  *(v9 + 40) = 0x800000000010C590;
  sub_14994(v1, v8, &qword_137598, &unk_107EB0);
  v10 = sub_106160();
  v11 = *(v10 - 8);
  v26 = *(v11 + 48);
  if (v26(v8, 1, v10) == 1)
  {
    sub_16F70(v8, &qword_137598, &unk_107EB0);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    v12 = sub_1A924((v9 + 48));
    (*(v11 + 32))(v12, v8, v10);
  }

  *(v9 + 80) = 7368801;
  *(v9 + 88) = 0xE300000000000000;
  v13 = a1(0);
  v14 = *(v1 + v13[5]);
  v25 = v11;
  if (v14)
  {
    v15 = sub_106100();
    v16 = v14;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
  }

  *(v9 + 96) = v16;
  *(v9 + 120) = v15;
  strcpy((v9 + 128), "hideSleepAlarm");
  *(v9 + 143) = -18;
  *(v9 + 144) = *(v1 + v13[6]);
  *(v9 + 168) = &type metadata for Bool;
  strcpy((v9 + 176), "isMixedAlarms");
  *(v9 + 190) = -4864;
  *(v9 + 192) = *(v1 + v13[7]);
  *(v9 + 216) = &type metadata for Bool;
  *(v9 + 224) = 0xD000000000000010;
  *(v9 + 232) = 0x800000000010C5B0;
  *(v9 + 240) = *(v1 + v13[8]);
  *(v9 + 264) = &type metadata for Bool;
  *(v9 + 272) = 0xD000000000000018;
  *(v9 + 280) = 0x800000000010C5D0;
  *(v9 + 288) = *(v1 + v13[9]);
  *(v9 + 312) = &type metadata for Bool;
  *(v9 + 320) = 0xD000000000000012;
  *(v9 + 328) = 0x800000000010C5F0;
  *(v9 + 336) = *(v1 + v13[10]);
  *(v9 + 360) = &type metadata for Bool;
  *(v9 + 368) = 0xD000000000000016;
  *(v9 + 376) = 0x800000000010C610;
  *(v9 + 384) = *(v1 + v13[11]);
  *(v9 + 408) = &type metadata for Bool;
  *(v9 + 416) = 0xD000000000000016;
  *(v9 + 424) = 0x800000000010C630;
  *(v9 + 432) = *(v1 + v13[12]);
  *(v9 + 456) = &type metadata for Bool;
  *(v9 + 464) = 0xD000000000000017;
  *(v9 + 472) = 0x800000000010C650;
  *(v9 + 480) = *(v1 + v13[13]);
  *(v9 + 504) = &type metadata for Bool;
  *(v9 + 512) = 0x736D657469;
  *(v9 + 520) = 0xE500000000000000;
  v17 = *(v1 + v13[14]);
  *(v9 + 552) = sub_25E4(&qword_137B40, &unk_108390);
  *(v9 + 528) = v17;
  *(v9 + 560) = 0x616C417065656C73;
  *(v9 + 568) = 0xEA00000000006D72;
  v18 = *(v1 + v13[15]);
  if (v18)
  {
    v19 = type metadata accessor for AlarmAlarm(0);
    v20 = v18;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *(v9 + 584) = 0u;
  }

  *(v9 + 576) = v20;
  *(v9 + 600) = v19;
  *(v9 + 608) = 0xD000000000000012;
  *(v9 + 616) = 0x800000000010C670;
  sub_14994(v1 + v13[16], v6, &qword_137598, &unk_107EB0);
  if (v26(v6, 1, v10) == 1)
  {

    sub_16F70(v6, &qword_137598, &unk_107EB0);
    *(v9 + 624) = 0u;
    *(v9 + 640) = 0u;
  }

  else
  {
    *(v9 + 648) = v10;
    v21 = sub_1A924((v9 + 624));
    (*(v25 + 32))(v21, v6, v10);
  }

  *(v9 + 656) = 0xD000000000000011;
  *(v9 + 664) = 0x800000000010C690;
  v22 = *(v1 + v13[17]);
  if (v22)
  {
    v23 = sub_1060A0();
  }

  else
  {
    v23 = 0;
    *(v9 + 680) = 0u;
  }

  *(v9 + 672) = v22;
  *(v9 + 696) = v23;

  return v9;
}

uint64_t sub_20CD4(uint64_t (*a1)(void))
{
  v3 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  sub_25E4(&qword_137880, &unk_108290);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1082D0;
  strcpy((v6 + 32), "isMixedAlarms");
  *(v6 + 46) = -4864;
  *(v6 + 48) = *v1;
  *(v6 + 72) = &type metadata for Bool;
  *(v6 + 80) = 0xD000000000000010;
  *(v6 + 88) = 0x800000000010C5B0;
  *(v6 + 96) = v1[1];
  *(v6 + 120) = &type metadata for Bool;
  *(v6 + 128) = 0xD000000000000018;
  *(v6 + 136) = 0x800000000010C5D0;
  *(v6 + 144) = v1[2];
  *(v6 + 168) = &type metadata for Bool;
  *(v6 + 176) = 0xD000000000000012;
  *(v6 + 184) = 0x800000000010C5F0;
  *(v6 + 192) = v1[3];
  *(v6 + 216) = &type metadata for Bool;
  *(v6 + 224) = 0xD000000000000016;
  *(v6 + 232) = 0x800000000010C610;
  *(v6 + 240) = v1[4];
  *(v6 + 264) = &type metadata for Bool;
  *(v6 + 272) = 0xD000000000000016;
  *(v6 + 280) = 0x800000000010C630;
  *(v6 + 288) = v1[5];
  *(v6 + 312) = &type metadata for Bool;
  *(v6 + 320) = 0xD000000000000017;
  *(v6 + 328) = 0x800000000010C650;
  *(v6 + 336) = v1[6];
  *(v6 + 360) = &type metadata for Bool;
  *(v6 + 368) = 0xD000000000000012;
  *(v6 + 376) = 0x800000000010C670;
  v7 = a1(0);
  sub_14994(&v1[*(v7 + 44)], v5, &qword_137598, &unk_107EB0);
  v8 = sub_106160();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_16F70(v5, &qword_137598, &unk_107EB0);
    *(v6 + 384) = 0u;
    *(v6 + 400) = 0u;
  }

  else
  {
    *(v6 + 408) = v8;
    v10 = sub_1A924((v6 + 384));
    (*(v9 + 32))(v10, v5, v8);
  }

  *(v6 + 416) = 0xD000000000000011;
  *(v6 + 424) = 0x800000000010C690;
  v11 = *&v1[*(v7 + 48)];
  if (v11)
  {
    v12 = sub_1060A0();
  }

  else
  {
    v12 = 0;
    *(v6 + 440) = 0;
    *(v6 + 448) = 0;
  }

  *(v6 + 432) = v11;
  *(v6 + 456) = v12;

  return v6;
}

uint64_t sub_20FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_14994(a1, v11, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v12;
}

void sub_211D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 56));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2132C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

void sub_21410(uint64_t a1)
{
  sub_211D8(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_211D8(319, &qword_137A10, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_211D8(319, &qword_137A18, type metadata accessor for AlarmAlarm, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_211D8(319, &unk_137A20, type metadata accessor for AlarmAlarm, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_211D8(319, &unk_137908, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_21764(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 44);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48)) = a2;
  }

  return result;
}

void sub_2182C(uint64_t a1)
{
  sub_211D8(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_211D8(319, &unk_137908, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2194C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137CA8);
  sub_135C4(v0, qword_137CA8);
  return sub_106A80();
}

uint64_t sub_21998(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_25E4(&qword_137D80, &qword_108460);
    v2 = sub_107290();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_135FC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1F7A8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1F7A8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1F7A8(v31, v32);
    result = sub_107120(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1F7A8(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_21C94(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(SAUIAddViews) init];
  v5 = [objc_allocWithZone(SADialog) init];
  v6 = [objc_allocWithZone(SADialogText) init];
  v7 = sub_106E10();
  [v6 setText:v7];

  [v5 setContent:v6];
  v8 = [objc_allocWithZone(SAAlarmSnippet) init];
  v9 = [a1 title];
  [v8 setTitle:v9];

  v10 = v8;
  v11 = [a1 speakableText];
  [v10 setSpeakableText:v11];

  [v10 setDialog:v5];
  sub_16F28(0, &qword_137D88, SAAlarmObject_ptr);
  isa = sub_106ED0().super.isa;
  [v10 setAlarms:isa];

  v13 = [a1 alarms];
  if (!v13)
  {
LABEL_21:
    sub_106EC0();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_106F10();
    }

    sub_106F20();
    sub_16F28(0, &qword_1375B8, SAAceView_ptr);
    v35 = sub_106ED0().super.isa;

    [v4 setViews:v35];

    sub_104D30();
    v36 = sub_106E10();

    [v4 setDialogPhase:v36];

    return v4;
  }

  v37 = v6;
  v38 = v5;
  v39 = v4;
  v14 = v13;
  v15 = sub_106EE0();

  if (!(v15 >> 62))
  {
    v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

LABEL_19:
  v16 = sub_107270();
  if (!v16)
  {
LABEL_20:

    v4 = v39;
    v6 = v37;
    v5 = v38;
    goto LABEL_21;
  }

LABEL_4:
  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = sub_1071C0();
    }

    else
    {
      if (v17 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_18;
      }

      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = v19;
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v22 = [objc_allocWithZone(SAAlarmObject) init];
    v23 = [v20 hour];
    [v22 setHour:v23];

    v24 = [v20 minute];
    [v22 setMinute:v24];

    v25 = [v20 label];
    [v22 setLabel:v25];

    v26 = [v20 enabled];
    [v22 setEnabled:v26];

    v27 = [v20 frequency];
    [v22 setFrequency:v27];

    v28 = [v20 relativeOffsetMinutes];
    [v22 setRelativeOffsetMinutes:v28];

    v29 = [v20 firing];
    [v22 setFiring:v29];

    v30 = [v22 dataSourceInfo];
    [v22 setDataSourceInfo:v30];

    result = [v10 alarms];
    if (!result)
    {
      break;
    }

    v32 = result;
    v33 = sub_106EE0();

    v34 = v22;
    sub_106EC0();
    if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v33 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_106F10();
    }

    sub_106F20();
    if (v33)
    {
      v18.super.isa = sub_106ED0().super.isa;
    }

    else
    {
      v18.super.isa = 0;
    }

    [v10 setAlarms:v18.super.isa];

    ++v17;
    if (v21 == v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void sub_222B8(unint64_t a1)
{
  v2 = sub_104EC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_105060();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (!sub_107270())
    {
      goto LABEL_10;
    }
  }

  else if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_10;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = sub_1071C0();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_27;
    }

    v10 = *(a1 + 32);
  }

  v11 = v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = sub_105020();
    if (*(v14 + 16))
    {
      (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      sub_105050();
      (*(v7 + 8))(v9, v6);
      v15 = sub_104EB0();
      v17 = v16;
      (*(v3 + 8))(v5, v2);
    }

    else
    {

      v17 = 0x800000000010C6F0;
      v15 = 0xD000000000000013;
    }

    v22 = sub_21C94(v13, v15, v17);

    sub_25E4(&qword_137D68, &qword_108450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_107FC0;
    strcpy((inited + 32), "ClientFlowView");
    *(inited + 47) = -18;
    v24 = [v22 dictionary];
    if (v24)
    {
      v25 = v24;
      v33 = sub_16F28(0, &qword_137D78, NSMutableDictionary_ptr);
      *&v32 = v25;
      sub_1F7A8(&v32, (inited + 48));
    }

    else
    {
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = 7104878;
      *(inited + 56) = 0xE300000000000000;
    }

    v26 = sub_EA35C(inited);
    swift_setDeallocating();
    sub_227B8(inited + 32);
    v27 = [objc_opt_self() sharedAnalytics];
    if (v27)
    {
      v28 = v27;
      sub_21998(v26);

      isa = sub_106DC0().super.isa;

      [v28 logEventWithType:3700 context:isa];
    }

    else
    {
    }

    return;
  }

LABEL_10:
  if (qword_136C78 != -1)
  {
LABEL_27:
    swift_once();
  }

  v18 = sub_106D20();
  sub_135C4(v18, qword_137CA8);
  v31 = sub_106D10();
  v19 = sub_106FC0();
  if (os_log_type_enabled(v31, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v31, v19, "Snippet did not contain an alarm snippet.", v20, 2u);
  }

  v21 = v31;
}

uint64_t sub_227B8(uint64_t a1)
{
  v2 = sub_25E4(&qword_137D70, &qword_108458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22820(void *a1)
{
  v2 = v1;
  v4 = sub_25E4(&qword_137508, &qword_107E18);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - v5;
  v7 = sub_25E4(&qword_137510, &qword_107E20);
  __chkstk_darwin(v7 - 8);
  v9 = v31 - v8;
  v10 = sub_1045E0();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(v2) init];
  v14 = sub_1047D0();
  v15 = *(*(v14 - 8) + 56);
  v15(v9, 1, 1, v14);
  v16 = sub_1047F0();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = v13;
  sub_1045C0();
  sub_104590();
  sub_1045B0();
  sub_104790();
  v15(v9, 0, 1, v14);
  sub_1045D0();
  isa = sub_104560().super.isa;
  [v17 setTime:isa];

  v31[1] = a1[3];
  v19 = sub_106E10();
  [v17 setLabel:v19];

  v20 = a1[4];
  v35 = v20;
  v34 = _swiftEmptyArrayStorage;
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + 32;
    do
    {
      v22 += 8;
      v23 = sub_106BC0();
      if ((v24 & 1) == 0)
      {
        v25 = v23;
        sub_1069A0();
        v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v27 = sub_106E10();
        v28 = [v26 initWithIdentifier:0 displayString:v27];

        [v28 setRepeatSchedule:v25];
        sub_106EC0();
        if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v34 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_106F10();
        }

        sub_106F20();
      }

      --v21;
    }

    while (v21);
  }

  sub_16F70(&v35, &qword_137D90, &qword_108468);
  sub_1069A0();
  v29 = sub_106ED0().super.isa;

  [v17 setRepeatSchedule:v29];

  (*(v32 + 8))(v12, v33);
  return v17;
}

id sub_22C8C(uint64_t a1)
{
  v2 = sub_105700();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E4(&qword_13AFE0, &qword_10A320);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_25E4(&qword_137500, &qword_107E10);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = [objc_allocWithZone(v1) init];
  sub_B245C(v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_16F70(v8, &qword_13AFE0, &qword_10A320);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_16F70(v8, &qword_13AFE0, &qword_10A320);
    sub_105690();
    (*(v3 + 8))(v5, v2);
  }

  v13 = sub_106220();

  if (v13)
  {
    sub_105F40();

    v14 = sub_1045E0();
    v15 = *(v14 - 8);
    isa = 0;
    if ((*(v15 + 48))(v11, 1, v14) != 1)
    {
      isa = sub_104560().super.isa;
      (*(v15 + 8))(v11, v14);
    }
  }

  else
  {
    v17 = sub_1045E0();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    isa = 0;
  }

  [v12 setTime:isa];

  sub_B2290();
  if (v18)
  {
    sub_106E60();

    v19 = sub_106E10();
  }

  else
  {
    v19 = 0;
  }

  [v12 setLabel:v19];

  v20 = sub_B53C4();
  if (v20)
  {
    v21 = v20;
    INDateComponentsRange.alarmRepeatSchedule.getter();
  }

  sub_1069A0();
  v22 = sub_106ED0().super.isa;

  [v12 setRepeatSchedule:v22];

  return v12;
}

id sub_23088(uint64_t a1)
{
  v2 = sub_25E4(&qword_137500, &qword_107E10);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = [objc_allocWithZone(v1) init];
  v6 = sub_B68AC();
  [v5 setAlarmSearch:v6];

  [v5 setOperation:2 * (sub_B20AC() == 8)];
  sub_B5BA8(v4);
  v7 = sub_1045E0();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v4, 1, v7) != 1)
  {
    isa = sub_104560().super.isa;
    (*(v8 + 8))(v4, v7);
  }

  [v5 setProposedTime:isa];

  sub_B2324();
  if (v10)
  {
    v11 = sub_106E10();
  }

  else
  {
    v11 = 0;
  }

  [v5 setProposedLabel:v11];

  v12 = sub_B5620();
  if (v12)
  {
    v13 = sub_105F80();

    if (v13)
    {
      sub_1F7B8();
      v14 = sub_105F00();
      v12 = sub_107080(v14 & 1).super.super.isa;
    }

    else
    {
      v12 = 0;
    }
  }

  [v5 setProposedMeridiemSetByUser:v12];

  return v5;
}

id sub_232D4()
{
  v1 = [objc_allocWithZone(v0) init];
  v2 = sub_B68AC();
  [v1 setAlarmSearch:v2];

  if (sub_B3584() == 13)
  {
    v3 = 3;
  }

  else
  {
    v4 = sub_B20AC();
    v5 = 1;
    if (v4 == 4)
    {
      v5 = 2;
    }

    if (v4 == 7)
    {
      v5 = 4;
    }

    if (v4 == 11)
    {
      v3 = 1;
    }

    else
    {
      v3 = v5;
    }
  }

  [v1 setAlarmSearchType:v3];

  return v1;
}

__n128 sub_23398(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_233AC(uint64_t a1, int a2)
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

uint64_t sub_233F4(uint64_t result, int a2, int a3)
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

uint64_t sub_2344C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137D98);
  sub_135C4(v0, qword_137D98);
  return sub_106A80();
}

uint64_t sub_23498(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  sub_25E4(&qword_137DB8, &unk_1085B0);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v3 = sub_106D20();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = sub_106300();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v5 = sub_106320();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v6 = sub_104D60();
  v2[37] = v6;
  v2[38] = *(v6 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  sub_25E4(&qword_137DC0, &unk_10A0A0);
  v2[42] = swift_task_alloc();
  v7 = sub_106AE0();
  v2[43] = v7;
  v2[44] = *(v7 - 8);
  v2[45] = swift_task_alloc();
  v8 = sub_104670();
  v2[46] = v8;
  v2[47] = *(v8 - 8);
  v2[48] = swift_task_alloc();
  v9 = sub_106370();
  v2[49] = v9;
  v2[50] = *(v9 - 8);
  v2[51] = swift_task_alloc();
  v10 = sub_104FF0();
  v2[52] = v10;
  v2[53] = *(v10 - 8);
  v2[54] = swift_task_alloc();

  return _swift_task_switch(sub_23888, 0, 0);
}

uint64_t sub_23888()
{
  v81 = v0;
  if (qword_136C80 != -1)
  {
    swift_once();
  }

  v1 = sub_135C4(v0[26], qword_137D98);
  v0[55] = v1;
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UpdateAlarm.HandleIntentStrategy.makeIntentHandledResponse() called.", v4, 2u);
  }

  sub_25E4(&qword_137DC8, &unk_1085C0);
  v5 = sub_105150();
  v0[56] = v5;
  v6 = sub_105170();
  v0[57] = v6;
  v7 = [v5 updatedAlarm];
  v0[58] = v7;
  if (v7)
  {
    v8 = v7;
    v78 = v6;
    v9 = v0[54];
    v10 = v0[50];
    v11 = v0[51];
    v12 = v0[49];
    sub_25E4(&qword_137DD0, &unk_108920);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_108470;
    *(inited + 32) = v8;
    v14 = v8;
    sub_BD4A4(inited, v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_106360();
    LOBYTE(v9) = sub_106340();
    (*(v10 + 8))(v11, v12);
    if (v9)
    {
      v15 = v0[47];
      v16 = v0[48];
      v17 = v0[46];
      sub_106210();
      v18 = sub_75DD4(0, v16, 0);
      v0[59] = v18;
      (*(v15 + 8))(v16, v17);
      if (!v18)
      {
        v66 = sub_106D10();
        v67 = sub_106FB0();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_0, v66, v67, "Can NOT retrieve alarm data.", v68, 2u);
        }

        sub_25E4(&qword_137DD8, &unk_1085D0);
        sub_26E48();
        swift_allocError();
        *v69 = 3;
        swift_willThrow();

        goto LABEL_32;
      }

      v20 = v0[43];
      v19 = v0[44];
      v21 = v0[42];
      sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v21);
      if ((*(v19 + 48))(v21, 1, v20) == 1)
      {
        sub_16F70(v0[42], &qword_137DC0, &unk_10A0A0);
        v22 = sub_106D10();
        v23 = sub_106FB0();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_0, v22, v23, "Can NOT retrieve alarm snippet model.", v24, 2u);
        }

        sub_25E4(&qword_137DD8, &unk_1085D0);
        sub_26E48();
        swift_allocError();
        *v25 = 3;
        swift_willThrow();

LABEL_32:

        (*(v0[53] + 8))(v0[54], v0[52]);

        v70 = v0[1];

        return v70();
      }

      (*(v0[44] + 32))(v0[45], v0[42], v0[43]);
      if ([v78 operation] == &dword_0 + 2)
      {
        if (qword_136E88 != -1)
        {
          swift_once();
        }

        v71 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence;

        v72 = swift_task_alloc();
        v0[60] = v72;
        *v72 = v0;
        v72[1] = sub_246B0;

        return sub_7ED70(v18 + v71, v18);
      }

      else
      {
        if (qword_136E88 != -1)
        {
          swift_once();
        }

        sub_25E4(&qword_137880, &unk_108290);
        v73 = swift_allocObject();
        v0[64] = v73;
        *(v73 + 16) = xmmword_107FC0;
        *(v73 + 32) = 0x6D72616C61;
        *(v73 + 40) = 0xE500000000000000;
        *(v73 + 72) = type metadata accessor for AlarmAlarm(0);
        *(v73 + 48) = v18;
        v79 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

        v74 = swift_task_alloc();
        v0[65] = v74;
        *v74 = v0;
        v74[1] = sub_24D84;

        return v79(0xD00000000000002DLL, 0x800000000010C800, v73);
      }
    }

    else
    {
      v77 = v14;
      if ([v78 operation] == &dword_0 + 2)
      {
        v39 = v0[30];
        v40 = v0[31];
        v42 = v0[28];
        v41 = v0[29];
        v44 = v0[26];
        v43 = v0[27];
        sub_104CF0();
        (*(v39 + 104))(v40, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v41);
        (*(v43 + 16))(v42, v1, v44);
        mach_absolute_time();
        sub_106330();
        if (qword_136E90 != -1)
        {
          swift_once();
        }

        v45 = v0[23];
        v46 = swift_task_alloc();
        v0[69] = v46;
        v46[2] = v45;
        v46[3] = v77;
        v46[4] = v78;
        v47 = swift_task_alloc();
        v0[70] = v47;
        *v47 = v0;
        v47[1] = sub_255E0;

        return sub_A9BCC(sub_26E3C, v46);
      }

      else
      {
        v56 = v0[47];
        v55 = v0[48];
        v57 = v0[46];
        v59 = v0[30];
        v58 = v0[31];
        v60 = v0[28];
        v75 = v0[29];
        v61 = v0[27];
        v76 = v0[26];
        sub_106210();
        v62 = sub_75DD4(0, v55, 0);
        v0[75] = v62;
        (*(v56 + 8))(v55, v57);
        sub_104CF0();
        (*(v59 + 104))(v58, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v75);
        (*(v61 + 16))(v60, v1, v76);
        mach_absolute_time();
        sub_106330();
        if (qword_136E90 != -1)
        {
          swift_once();
        }

        v63 = v0[23];
        v64 = swift_task_alloc();
        v0[76] = v64;
        *(v64 + 16) = v63;
        *(v64 + 24) = v62;
        v65 = swift_task_alloc();
        v0[77] = v65;
        *v65 = v0;
        v65[1] = sub_25A6C;

        return sub_A9FD8(sub_26E34, v64);
      }
    }
  }

  else
  {
    v26 = v0[26];
    v27 = v0[27];
    v28 = v0[24];
    v29 = v0[25];
    v30 = sub_106750();
    v0[5] = v30;
    v0[6] = &protocol witness table for ABCReport;
    v31 = sub_1A924(v0 + 2);
    strcpy(v31, "Update Handled");
    v31[15] = -18;
    v32 = enum case for UnhandledAbortSubtype.expectedObject(_:);
    v33 = sub_106680();
    (*(*(v33 - 8) + 104))(v31, v32, v33);
    (*(*(v30 - 8) + 104))(v31, enum case for ABCReport.unhandledAbort(_:), v30);
    sub_1064D0();
    sub_2738(v0 + 2);
    sub_107190(96);
    v83._countAndFlagsBits = 0xD00000000000005ELL;
    v83._object = 0x800000000010C710;
    sub_106E80(v83);
    v34 = [v6 description];
    v35 = sub_106E20();
    v37 = v36;

    v84._countAndFlagsBits = v35;
    v84._object = v37;
    sub_106E80(v84);

    (*(v27 + 16))(v29, v1, v26);
    (*(v27 + 56))(v29, 0, 1, v26);
    sub_26DC4(v29, v28);
    v38 = (*(v27 + 48))(v28, 1, v26);

    if (v38 == 1)
    {
      sub_16F70(v0[24], &qword_137DB8, &unk_1085B0);
    }

    else
    {

      v49 = sub_106D10();
      v50 = sub_106FB0();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v80[0] = swift_slowAlloc();
        *v51 = 136315650;
        v52 = sub_1071A0();
        v54 = sub_722E8(v52, v53, v80);

        *(v51 + 4) = v54;
        *(v51 + 12) = 2048;
        *(v51 + 14) = 41;
        *(v51 + 22) = 2080;
        *(v51 + 24) = sub_722E8(0, 0xE000000000000000, v80);
        _os_log_impl(&dword_0, v49, v50, "FatalError at %s:%lu - %s", v51, 0x20u);
        swift_arrayDestroy();
      }

      (*(v0[27] + 8))(v0[24], v0[26]);
    }

    sub_104C90();
    return sub_107250();
  }
}

uint64_t sub_246B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 488) = v1;

  if (v1)
  {
    v5 = sub_25F00;
  }

  else
  {
    *(v4 + 496) = a1;
    v5 = sub_247F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_247F4(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[43];
  v21 = v1[55];
  v4 = v1[30];
  v17 = v1[45];
  v18 = v1[31];
  v5 = v1[28];
  v6 = v1[27];
  v19 = v1[29];
  v20 = v1[26];
  sub_104CF0();
  v7 = sub_106AF0();
  v1[20] = v7;
  v1[21] = sub_26EAC();
  v8 = sub_1A924(v1 + 17);
  sub_25E4(&qword_137DF0, qword_1085E0);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_107FC0;
  (*(v2 + 16))(v10 + v9, v17, v3);
  sub_106930();
  (*(*(v7 - 8) + 104))(v8, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v7);
  (*(v4 + 104))(v18, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v19);
  (*(v6 + 16))(v5, v21, v20);
  mach_absolute_time();
  sub_106330();
  v11 = swift_task_alloc();
  v1[63] = v11;
  *v11 = v1;
  v11[1] = sub_24A28;
  v12 = v1[54];
  v13 = v1[41];
  v14 = v1[36];
  v15 = v1[22];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v15, v13, v12, v1 + 17, v14, 0, 0, 0);
}

uint64_t sub_24A28()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 304);
  v4 = *(*v0 + 296);
  v5 = *(*v0 + 288);
  v6 = *(*v0 + 264);
  v7 = *(*v0 + 256);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_16F70(v1 + 136, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_24BFC, 0, 0);
}

uint64_t sub_24BFC()
{
  v1 = *(v0 + 464);
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);

  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 416);
  (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
  (*(v4 + 8))(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24D84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 528) = v1;

  if (v1)
  {
    v5 = sub_25450;
  }

  else
  {

    *(v4 + 536) = a1;
    v5 = sub_24EC0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_24EC0(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[43];
  v21 = v1[55];
  v4 = v1[30];
  v17 = v1[45];
  v18 = v1[31];
  v5 = v1[28];
  v6 = v1[27];
  v19 = v1[29];
  v20 = v1[26];
  sub_104CF0();
  v7 = sub_106AF0();
  v1[15] = v7;
  v1[16] = sub_26EAC();
  v8 = sub_1A924(v1 + 12);
  sub_25E4(&qword_137DF0, qword_1085E0);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_107FC0;
  (*(v2 + 16))(v10 + v9, v17, v3);
  sub_106930();
  (*(*(v7 - 8) + 104))(v8, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v7);
  (*(v4 + 104))(v18, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v19);
  (*(v6 + 16))(v5, v21, v20);
  mach_absolute_time();
  sub_106330();
  v11 = swift_task_alloc();
  v1[68] = v11;
  *v11 = v1;
  v11[1] = sub_250F4;
  v12 = v1[54];
  v13 = v1[41];
  v14 = v1[36];
  v15 = v1[22];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v15, v13, v12, v1 + 12, v14, 0, 0, 0);
}

uint64_t sub_250F4()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 304);
  v4 = *(*v0 + 296);
  v5 = *(*v0 + 288);
  v6 = *(*v0 + 264);
  v7 = *(*v0 + 256);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_16F70(v1 + 96, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_252C8, 0, 0);
}

uint64_t sub_252C8()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 464);
  v3 = *(v0 + 448);

  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 416);
  (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
  (*(v4 + 8))(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25450()
{
  v1 = v0[58];
  v3 = v0[56];
  v2 = v0[57];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[43];

  (*(v5 + 8))(v4, v6);
  (*(v0[53] + 8))(v0[54], v0[52]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_255E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[71] = a1;
  v3[72] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_26084, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[73] = v5;
    *v5 = v4;
    v5[1] = sub_257A0;
    v6 = v3[54];
    v7 = v3[40];
    v8 = v3[35];
    v9 = v3[22];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v6, v8, 0);
  }
}

uint64_t sub_257A0()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_26220;
  }

  else
  {
    v3 = sub_258D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_258D4()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 424);
  v7 = *(v0 + 432);
  v8 = *(v0 + 416);
  (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
  (*(v6 + 8))(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25A6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[78] = a1;
  v3[79] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_263BC, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[80] = v5;
    *v5 = v4;
    v5[1] = sub_25C2C;
    v6 = v3[54];
    v7 = v3[39];
    v8 = v3[34];
    v9 = v3[22];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v7, v6, v8, 0);
  }
}

uint64_t sub_25C2C()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = sub_26564;
  }

  else
  {
    v3 = sub_25D60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_25D60()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 256);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 424);
  v7 = *(v0 + 432);
  v8 = *(v0 + 416);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  (*(v6 + 8))(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25F00()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 344);

  (*(v4 + 8))(v3, v5);
  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26084()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 280);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26220()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 280);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_263BC()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 296);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 256);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26564()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 296);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 256);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2670C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_104670();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106100();
  sub_25E4(&qword_137DC8, &unk_1085C0);
  sub_105160();
  v13 = sub_1060F0();

  a1[1] = v13;
  sub_106210();
  v14 = sub_75DD4(0, v12, 0);
  (*(v10 + 8))(v12, v9);

  *a1 = v14;
  v15 = [a4 proposedLabel];
  if (v15)
  {
    v16 = v15;
    sub_106E20();

    sub_106E50();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_106160();
  (*(*(v18 - 8) + 56))(v8, v17, 1, v18);
  v19 = type metadata accessor for ModifyAlarmIntentHandledRenameParameters(0);
  return sub_1A814(v8, a1 + *(v19 + 24));
}

uint64_t sub_2694C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_106100();
  sub_25E4(&qword_137DC8, &unk_1085C0);
  sub_105160();
  v5 = sub_1060F0();

  a1[1] = v5;

  *a1 = a3;
  return result;
}

uint64_t sub_269D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CE64;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_26A94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CE64;

  return sub_23498(a1, a2);
}

uint64_t sub_26B34(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CA94;

  return sub_D4BFC(a1);
}

uint64_t sub_26BF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_25E4(&qword_1374F0, &qword_1080F0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_26C8C, 0, 0);
}

uint64_t sub_26C8C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_106630();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_169D8(v3, v1, v2);
  sub_16F70(v2, &qword_1374F0, &qword_1080F0);

  v6 = v0[1];

  return v6(v5);
}

unint64_t sub_26D70()
{
  result = qword_137DB0;
  if (!qword_137DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137DB0);
  }

  return result;
}

uint64_t sub_26DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137DB8, &unk_1085B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26E48()
{
  result = qword_137DE0;
  if (!qword_137DE0)
  {
    sub_14EB0(&qword_137DD8, &unk_1085D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137DE0);
  }

  return result;
}

unint64_t sub_26EAC()
{
  result = qword_137DE8;
  if (!qword_137DE8)
  {
    sub_106AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137DE8);
  }

  return result;
}

uint64_t sub_26F44(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  v5 = sub_106200();
  __chkstk_darwin(v5 - 8);
  a2(0);
  sub_1061E0();
  result = sub_1060D0();
  *a3 = result;
  return result;
}

uint64_t sub_26FE0(void *a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_106CC0();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v18 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s20HandleIntentStrategyVMa(0);
  __chkstk_darwin(v20);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s21ConfirmIntentStrategyVMa_0(0);
  __chkstk_darwin(v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106910();
  sub_1068F0();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  v16[1] = sub_25E4(&qword_13B190, &qword_10BC90);
  sub_104AC0();
  sub_262C(a1, v8);
  v17 = a1;
  v9 = *(v6 + 20);
  v10 = sub_106630();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v13 = &v8[v9];
  v14 = v22;
  v12(v13, v22, v10);
  sub_27424(&qword_137E00, _s21ConfirmIntentStrategyVMa_0, &unk_10AF90);
  sub_104A80();
  sub_104AD0();
  sub_262C(a1, v5);
  v12(&v5[*(v20 + 20)], v14, v10);
  (*(v19 + 104))(v18, enum case for ExecutionInfo.Action.alarmDismiss(_:), v21);
  sub_1063A0();
  sub_27424(&qword_137E08, _s20HandleIntentStrategyVMa, &unk_108058);
  sub_104A50();
  sub_104AB0();
  (*(v11 + 8))(v14, v10);
  sub_2738(v17);
  sub_2746C(v5, _s20HandleIntentStrategyVMa);
  return sub_2746C(v8, _s21ConfirmIntentStrategyVMa_0);
}

BOOL sub_273C0()
{
  sub_25E4(&qword_1376C8, &qword_10B020);
  v0 = sub_105150();
  sub_1068E0();

  v1 = sub_106900();
  return v1 == sub_106900();
}

uint64_t sub_27424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2746C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_274CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E4(&unk_1374A0, &qword_10BB30);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  sub_105E50();
  sub_106940();
  v5 = sub_106960();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_16F70(v4, &unk_1374A0, &qword_10BB30);
  if (qword_136C98 != -1)
  {
    swift_once();
  }

  v7 = sub_106D20();
  sub_135C4(v7, qword_137E10);

  v8 = sub_106D10();
  v9 = sub_106FB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_105E50();
    v14 = sub_722E8(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Unexpected alarm verb: %s", v10, 0xCu);
    sub_2738(v11);
  }

  return (*(v6 + 104))(a1, enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:), v5);
}

uint64_t sub_27744()
{
  v0 = sub_106960();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105940();
  sub_274CC(v3);
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:) || v4 == enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:) || v4 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
  {
    goto LABEL_9;
  }

  if (v4 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
  {
    sub_27B54(v13, v11);
    if (v12)
    {
      sub_105A40();
      goto LABEL_14;
    }

    goto LABEL_45;
  }

  if (v4 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:) || v4 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
  {
    goto LABEL_9;
  }

  if (v4 == enum case for AlarmNLv4Constants.AlarmVerb.read(_:))
  {
    sub_27B54(v13, v11);
    if (v12)
    {
      sub_1059A0();
      goto LABEL_14;
    }

    goto LABEL_45;
  }

  if (v4 == enum case for AlarmNLv4Constants.AlarmVerb.request(_:) || v4 == enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:) || v4 == enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:))
  {
    goto LABEL_9;
  }

  if (v4 == enum case for AlarmNLv4Constants.AlarmVerb.update(_:))
  {
    sub_27B54(v13, v11);
    if (v12)
    {
      sub_105AB0();
      if (swift_dynamicCast())
      {

        sub_105C60();
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    goto LABEL_45;
  }

  if (v4 != enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
  {
    if (v4 != enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
    {
      if (v4 == enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
      {
        sub_27B54(v13, v11);
        if (!v12)
        {
          goto LABEL_45;
        }

        sub_105A80();
      }

      else
      {
        if (v4 != enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
        {
          result = sub_107360();
          __break(1u);
          return result;
        }

        sub_27B54(v13, v11);
        if (!v12)
        {
          goto LABEL_45;
        }

        sub_1059B0();
      }

      if (swift_dynamicCast())
      {

        sub_105C80();
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_27B54(v13, v11);
    if (v12)
    {
      sub_1059D0();
LABEL_14:
      if (swift_dynamicCast())
      {

        sub_1059F0();
LABEL_16:

        sub_16F70(v13, &qword_137490, qword_108C80);
        return v11[0];
      }

      goto LABEL_9;
    }

LABEL_45:
    sub_16F70(v11, &qword_137490, qword_108C80);
  }

LABEL_9:
  sub_16F70(v13, &qword_137490, qword_108C80);
  return 0;
}

uint64_t sub_27B08()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137E10);
  sub_135C4(v0, qword_137E10);
  return sub_106A80();
}

uint64_t sub_27B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137490, qword_108C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SleepCATPatternsExecutor(uint64_t a1)
{
  result = qword_137E28;
  if (!qword_137E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t type metadata accessor for AlarmBaseCATsSimple(uint64_t a1)
{
  result = qword_137E78;
  if (!qword_137E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_106170();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t sub_27FF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_106200();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_106180();
  (*(v4 + 8))(a2, v3);
  return v7;
}

uint64_t sub_28104()
{
  sub_1061A0();

  return swift_deallocClassInstance();
}

uint64_t sub_2813C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137EC8);
  sub_135C4(v0, qword_137EC8);
  return sub_106A80();
}

uint64_t sub_28188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E4(&unk_1374C0, &unk_1087B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_25E4(&qword_1374F0, &qword_1080F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  if (qword_136CA0 != -1)
  {
    swift_once();
  }

  v10 = sub_106D20();
  sub_135C4(v10, qword_137EC8);
  v11 = sub_106D10();
  v12 = sub_106FC0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "CreateAlarm.NeedsValueStrategy.actionForInput() called)", v13, 2u);
  }

  v14 = sub_106630();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = enum case for DecideAction.PromptExpectation.slot(_:);
  v16 = sub_106450();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  sub_34434(a1, v9, 0, v6, a2);
  sub_16F70(v6, &unk_1374C0, &unk_1087B0);
  return sub_16F70(v9, &qword_1374F0, &qword_1080F0);
}

uint64_t sub_2841C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_104D60();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_106D20();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_106300();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_106320();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = sub_104FF0();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_2864C, 0, 0);
}

uint64_t sub_2864C()
{
  sub_25E4(&qword_137FA8, &qword_109DD0);
  v1 = sub_1051F0();
  v2 = [v1 label];

  v3 = sub_1051F0();
  v4 = [v3 repeatSchedule];

  if (qword_136CA0 != -1)
  {
    swift_once();
  }

  v5 = sub_135C4(v0[7], qword_137EC8);
  v6 = sub_106D10();
  v7 = sub_106FC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "CreateAlarm.NeedsValueStrategy.makePromptForValue() called", v8, 2u);
  }

  v9 = v0[18];

  sub_BD970(v9);
  v10 = sub_106D10();
  v11 = sub_106FC0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Calling alarm RF flow.", v12, 2u);
  }

  v14 = v0[11];
  v13 = v0[12];
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v18 = v0[8];

  (*(v14 + 104))(v13, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v15);
  (*(v18 + 16))(v16, v5, v17);
  mach_absolute_time();
  sub_106330();
  if (qword_136E78 != -1)
  {
    swift_once();
  }

  v19 = v0[3];
  v20 = swift_task_alloc();
  v0[19] = v20;
  *(v20 + 16) = v19;
  v21 = swift_task_alloc();
  v0[20] = v21;
  *v21 = v0;
  v21[1] = sub_28960;

  return sub_74B10(sub_2B428, v20);
}

uint64_t sub_28960(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_28DD0;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_28AAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_28AAC()
{
  sub_104D10();
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_28B60;
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[6];
  v5 = v0[2];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v4, v2, v3, 0);
}

uint64_t sub_28B60()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 192) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_28EB0;
  }

  else
  {
    v6 = sub_28CF0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_28CF0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_28DD0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_28EB0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_28F90(uint64_t a1)
{
  v2 = sub_25E4(&qword_137598, &unk_107EB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  sub_25E4(&qword_137FA8, &qword_109DD0);
  v5 = sub_1051F0();
  v6 = [v5 label];

  if (v6)
  {
    sub_106E20();

    sub_106E50();

    v7 = sub_106160();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  }

  else
  {
    v8 = sub_106160();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  }

  return sub_1A814(v4, a1);
}

uint64_t sub_290FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_105460();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_105410();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_105380();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_106290();
  v3[16] = swift_task_alloc();
  v7 = sub_1045E0();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v8 = sub_105E80();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v9 = sub_1053E0();
  v3[26] = v9;
  v3[27] = *(v9 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_29400, 0, 0);
}

uint64_t sub_29400()
{
  v220 = v0;
  v1 = v0;
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v1 + 208);
  sub_25E4(&qword_137FA8, &qword_109DD0);
  v5 = sub_1051F0();
  sub_105360();
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v7 = *(v1 + 232);
    v9 = *(v1 + 192);
    v8 = *(v1 + 200);
    v11 = *(v1 + 176);
    v10 = *(v1 + 184);
    (*(*(v1 + 216) + 96))(v7, *(v1 + 208));
    (*(v10 + 32))(v8, v7, v11);
    sub_106800();
    (*(v10 + 16))(v9, v8, v11);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    v12 = sub_B3800(v9);
    v13 = sub_22C8C(v12);
    v14 = [v13 time];
    if (v14)
    {
      v15 = *(v1 + 168);
      v17 = *(v1 + 136);
      v16 = *(v1 + 144);
      v18 = v14;
      sub_104570();

      v19.super.isa = sub_104560().super.isa;
      (*(v16 + 8))(v15, v17);
    }

    else
    {
      v19.super.isa = 0;
    }

    [v5 setTime:v19.super.isa];

    v48 = [v13 relativeOffsetInMinutes];
    [v5 setRelativeOffsetInMinutes:v48];

    if (qword_136CA0 != -1)
    {
      swift_once();
    }

    v49 = sub_106D20();
    sub_135C4(v49, qword_137EC8);
    v50 = v5;
    v51 = sub_106D10();
    v52 = sub_106FC0();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *&v218 = swift_slowAlloc();
      v54 = v218;
      *v53 = 136315138;
      v211 = v13;
      v55 = v50;
      v56 = v1;
      v57 = [v55 description];
      v58 = sub_106E20();
      v60 = v59;

      v1 = v56;
      v13 = v211;
      v61 = sub_722E8(v58, v60, &v218);

      *(v53 + 4) = v61;
      _os_log_impl(&dword_0, v51, v52, "Updated SK intent:%s", v53, 0xCu);
      sub_2738(v54);
    }

    v62 = *(v1 + 200);
    v63 = *(v1 + 176);
    v64 = *(v1 + 184);
    v65 = *(v1 + 16);
    v218 = 0u;
    v219 = 0u;
    sub_105070();

LABEL_21:
    (*(v64 + 8))(v62, v63);
    v66 = sub_25E4(&qword_137FB0, &qword_108798);
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    goto LABEL_22;
  }

  if (v6 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v20 = *(v1 + 232);
    v22 = *(v1 + 176);
    v21 = *(v1 + 184);
    v23 = *(v1 + 16);
    (*(*(v1 + 216) + 96))(v20, *(v1 + 208));
    sub_25E4(&qword_13B010, &unk_1087A0);
    v218 = 0u;
    v219 = 0u;
    sub_1053D0();
    sub_106800();
    swift_dynamicCastClassUnconditional();
    sub_105070();

    v24 = sub_25E4(&qword_137FB0, &qword_108798);
    (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    (*(v21 + 8))(v20, v22);
    goto LABEL_22;
  }

  if (v6 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(*(v1 + 216) + 96))(*(v1 + 232), *(v1 + 208));
    swift_getObjectType();
    v25 = sub_107000();
    if (v25)
    {
      v26 = v25;
      v27 = *(v1 + 128);
      sub_106800();

      sub_106280();
      v28 = sub_873D4(v26, v27);
      if (v28)
      {
        v29 = v28;
        if (qword_136CA0 != -1)
        {
          swift_once();
        }

        v30 = sub_106D20();
        sub_135C4(v30, qword_137EC8);
        v31 = v5;
        v32 = sub_106D10();
        v33 = sub_106FC0();

        v213 = v31;
        v208 = v1;
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *&v218 = v35;
          *v34 = 136315138;
          v36 = v31;
          v37 = [v36 description];
          v38 = sub_106E20();
          v40 = v39;

          v41 = sub_722E8(v38, v40, &v218);

          *(v34 + 4) = v41;
          _os_log_impl(&dword_0, v32, v33, "Current SK intent %s", v34, 0xCu);
          sub_2738(v35);

          v1 = v208;
        }

        v42 = [v29 time];
        if (v42)
        {
          v43 = *(v1 + 160);
          v44 = *(v1 + 136);
          v45 = *(v1 + 144);
          v46 = v42;
          sub_104570();

          v47.super.isa = sub_104560().super.isa;
          (*(v45 + 8))(v43, v44);
        }

        else
        {
          v47.super.isa = 0;
        }

        v137 = v213;
        [v213 setTime:v47.super.isa];

        v138 = [v29 relativeOffsetInMinutes];
        [v213 setRelativeOffsetInMinutes:v138];

        v139 = v29;
        v140 = sub_106D10();
        v141 = sub_106FC0();

        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          *&v218 = v143;
          *v142 = 136315138;
          v144 = v139;
          v145 = v139;
          v146 = [v145 description];
          v147 = sub_106E20();
          v149 = v148;

          v150 = sub_722E8(v147, v149, &v218);

          *(v142 + 4) = v150;
          v137 = v213;
          _os_log_impl(&dword_0, v140, v141, "This turn of createAlarmIntent:%s", v142, 0xCu);
          sub_2738(v143);
        }

        else
        {
          v144 = v139;
        }

        v151 = v137;
        v152 = sub_106D10();
        v153 = sub_106FC0();

        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          *&v218 = v155;
          *v154 = 136315138;
          v156 = v151;
          v157 = [v156 description];
          v158 = sub_106E20();
          v160 = v159;

          v161 = sub_722E8(v158, v160, &v218);

          *(v154 + 4) = v161;
          _os_log_impl(&dword_0, v152, v153, "Updated SK intent:%s", v154, 0xCu);
          sub_2738(v155);
        }

        v1 = v208;
        v162 = *(v208 + 16);
        v218 = 0u;
        v219 = 0u;
        sub_105070();

        swift_unknownObjectRelease();
        v163 = sub_25E4(&qword_137FB0, &qword_108798);
        (*(*(v163 - 8) + 56))(v162, 0, 1, v163);
        goto LABEL_22;
      }
    }

    if (qword_136CA0 != -1)
    {
      swift_once();
    }

    v119 = *(v1 + 120);
    v120 = *(v1 + 88);
    v121 = *(v1 + 96);
    v122 = *(v1 + 24);
    v123 = sub_106D20();
    sub_135C4(v123, qword_137EC8);
    (*(v121 + 16))(v119, v122, v120);
    v124 = sub_106D10();
    v125 = sub_106FB0();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = *(v1 + 120);
      v127 = *(v1 + 96);
      v216 = *(v1 + 88);
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *&v218 = v129;
      *v128 = 136315138;
      sub_105360();
      v130 = sub_106E30();
      v132 = v131;
      (*(v127 + 8))(v126, v216);
      v133 = sub_722E8(v130, v132, &v218);

      *(v128 + 4) = v133;
      _os_log_impl(&dword_0, v124, v125, "Failed to parse userDialogAct to CreateAlarmIntent: %s", v128, 0xCu);
      sub_2738(v129);
    }

    else
    {
      v134 = *(v1 + 120);
      v136 = *(v1 + 88);
      v135 = *(v1 + 96);

      (*(v135 + 8))(v134, v136);
    }

    *(v1 + 242) = 0;
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    sub_1064E0();
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  else
  {
    if (v6 == enum case for Parse.uso(_:))
    {
      v69 = *(v1 + 232);
      v71 = *(v1 + 72);
      v70 = *(v1 + 80);
      v73 = *(v1 + 56);
      v72 = *(v1 + 64);
      v74 = *(v1 + 40);
      v75 = *(v1 + 48);
      (*(*(v1 + 216) + 96))(v69, *(v1 + 208));
      (*(v71 + 32))(v70, v69, v72);
      sub_105400();
      v76 = sub_105440();
      (*(v75 + 8))(v73, v74);
      v214 = v76;
      if (v76)
      {
        v77 = *(v1 + 128);
        sub_106800();

        sub_106280();
        v78 = sub_873D4(v214, v77);
        if (v78)
        {
          v79 = v78;
          if (qword_136CA0 != -1)
          {
            swift_once();
          }

          v80 = sub_106D20();
          sub_135C4(v80, qword_137EC8);
          v81 = v5;
          v82 = sub_106D10();
          v83 = sub_106FC0();

          v212 = v81;
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v209 = v1;
            v85 = swift_slowAlloc();
            *&v218 = v85;
            *v84 = 136315138;
            v86 = v81;
            v87 = [v86 description];
            v88 = sub_106E20();
            v90 = v89;

            v91 = sub_722E8(v88, v90, &v218);

            *(v84 + 4) = v91;
            _os_log_impl(&dword_0, v82, v83, "Current SK intent %s", v84, 0xCu);
            sub_2738(v85);
            v1 = v209;
          }

          v92 = [v79 time];
          if (v92)
          {
            v94 = *(v1 + 144);
            v93 = *(v1 + 152);
            v95 = *(v1 + 136);
            v96 = v92;
            sub_104570();

            v97.super.isa = sub_104560().super.isa;
            (*(v94 + 8))(v93, v95);
          }

          else
          {
            v97.super.isa = 0;
          }

          v182 = v212;
          [v212 setTime:v97.super.isa];

          v183 = [v79 relativeOffsetInMinutes];
          [v212 setRelativeOffsetInMinutes:v183];

          v184 = v79;
          v185 = sub_106D10();
          v186 = sub_106FC0();

          v210 = v184;
          v187 = v1;
          if (os_log_type_enabled(v185, v186))
          {
            v188 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            *&v218 = v189;
            *v188 = 136315138;
            v190 = v184;
            v191 = [v190 description];
            v192 = sub_106E20();
            v194 = v193;

            v182 = v212;
            v195 = sub_722E8(v192, v194, &v218);

            *(v188 + 4) = v195;
            _os_log_impl(&dword_0, v185, v186, "This turn of createAlarmIntent:%s", v188, 0xCu);
            sub_2738(v189);
          }

          v196 = v182;
          v197 = sub_106D10();
          v198 = sub_106FC0();

          if (os_log_type_enabled(v197, v198))
          {
            v199 = swift_slowAlloc();
            v200 = swift_slowAlloc();
            *&v218 = v200;
            *v199 = 136315138;
            v201 = v196;
            v202 = [v201 description];
            v203 = sub_106E20();
            v205 = v204;

            v206 = sub_722E8(v203, v205, &v218);

            *(v199 + 4) = v206;
            _os_log_impl(&dword_0, v197, v198, "Updated SK intent:%s", v199, 0xCu);
            sub_2738(v200);
          }

          v1 = v187;
          v207 = v187 + 72;
          v64 = *(v187 + 72);
          v62 = *(v207 + 8);
          v63 = *(v1 + 64);
          v65 = *(v1 + 16);
          v218 = 0u;
          v219 = 0u;
          sub_105070();

          goto LABEL_21;
        }
      }

      if (qword_136CA0 != -1)
      {
        swift_once();
      }

      v164 = *(v1 + 112);
      v165 = *(v1 + 88);
      v166 = *(v1 + 96);
      v167 = *(v1 + 24);
      v168 = sub_106D20();
      sub_135C4(v168, qword_137EC8);
      (*(v166 + 16))(v164, v167, v165);
      v169 = sub_106D10();
      v170 = sub_106FB0();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = *(v1 + 112);
        v172 = *(v1 + 96);
        v217 = *(v1 + 88);
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        *&v218 = v174;
        *v173 = 136315138;
        sub_105360();
        v175 = sub_106E30();
        v177 = v176;
        (*(v172 + 8))(v171, v217);
        v178 = sub_722E8(v175, v177, &v218);

        *(v173 + 4) = v178;
        _os_log_impl(&dword_0, v169, v170, "Failed to parse userDialogAct to CreateAlarmIntent: %s", v173, 0xCu);
        sub_2738(v174);
      }

      else
      {
        v179 = *(v1 + 112);
        v181 = *(v1 + 88);
        v180 = *(v1 + 96);

        (*(v180 + 8))(v179, v181);
      }

      v117 = *(v1 + 72);
      v116 = *(v1 + 80);
      v118 = *(v1 + 64);
      *(v1 + 241) = 0;
      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_26E48();
      swift_allocError();
    }

    else
    {
      if (qword_136CA0 != -1)
      {
        swift_once();
      }

      v99 = *(v1 + 96);
      v98 = *(v1 + 104);
      v100 = *(v1 + 88);
      v101 = *(v1 + 24);
      v102 = sub_106D20();
      sub_135C4(v102, qword_137EC8);
      (*(v99 + 16))(v98, v101, v100);
      v103 = sub_106D10();
      v104 = sub_106FB0();
      if (os_log_type_enabled(v103, v104))
      {
        v106 = *(v1 + 96);
        v105 = *(v1 + 104);
        v215 = *(v1 + 88);
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        *&v218 = v108;
        *v107 = 136315138;
        sub_105360();
        v109 = sub_106E30();
        v111 = v110;
        (*(v106 + 8))(v105, v215);
        v112 = sub_722E8(v109, v111, &v218);

        *(v107 + 4) = v112;
        _os_log_impl(&dword_0, v103, v104, "Received unsupported parse: %s", v107, 0xCu);
        sub_2738(v108);
      }

      else
      {
        v114 = *(v1 + 96);
        v113 = *(v1 + 104);
        v115 = *(v1 + 88);

        (*(v114 + 8))(v113, v115);
      }

      v116 = *(v1 + 232);
      v118 = *(v1 + 208);
      v117 = *(v1 + 216);
      *(v1 + 240) = 0;
      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_26E48();
      swift_allocError();
    }

    sub_1064E0();
    swift_willThrow();

    (*(v117 + 8))(v116, v118);
  }

LABEL_22:

  v67 = *(v1 + 8);

  return v67();
}

uint64_t sub_2AB38()
{
  sub_2738((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2ABAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CE64;

  return sub_290FC(a1, a2, a3);
}

uint64_t sub_2AC5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_2841C(a1, a2);
}

uint64_t sub_2ACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = _s18NeedsValueStrategyCMa();
  *v8 = v4;
  v8[1] = sub_1CE64;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_2ADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = _s18NeedsValueStrategyCMa();
  *v8 = v4;
  v8[1] = sub_1CE64;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_2AE84(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_104FF0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_104D60();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_2AFA0, 0, 0);
}

uint64_t sub_2AFA0()
{
  sub_104D40();
  sub_104FE0();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_2B050;
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[2];

  return sub_19708(v4, v2, v3);
}

uint64_t sub_2B050()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_2B27C, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9();
  }
}

uint64_t sub_2B27C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2B2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = _s18NeedsValueStrategyCMa();
  *v14 = v7;
  v14[1] = sub_1CE64;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v15, a7);
}

unint64_t sub_2B3D4()
{
  result = qword_137FA0;
  if (!qword_137FA0)
  {
    _s18NeedsValueStrategyCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137FA0);
  }

  return result;
}

double sub_2B430@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_32658(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_135FC(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_2B494()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137FB8);
  sub_135C4(v0, qword_137FB8);
  return sub_106A80();
}

uint64_t sub_2B530(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_14930(v6, a3);
  v7 = sub_135C4(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t RecreateDeletedAlarmsFlow.__allocating_init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_2B610(a1, v3);
  v6 = sub_32DB0(v5, v1, v3, v4);
  sub_2738(a1);
  return v6;
}

uint64_t sub_2B610(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t RecreateDeletedAlarmsFlow.init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_2B610(a1, v3);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_32C34(v7, v1, v3, v4);
  sub_2738(a1);
  return v9;
}

uint64_t RecreateDeletedAlarmsFlow.__allocating_init()()
{
  sub_106AC0();
  v0 = sub_106AB0();
  type metadata accessor for RecreateDeletedAlarmsFlow(0);
  v1 = swift_allocObject();

  return sub_32AEC(v0, v1);
}

uint64_t RecreateDeletedAlarmsFlow.on(input:)()
{
  v0 = sub_25E4(&qword_137FD0, &unk_1087C0);
  __chkstk_darwin(v0 - 8);
  v82 = &v79 - v1;
  v2 = sub_1065E0();
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v83 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E4(&unk_1374A0, &qword_10BB30);
  __chkstk_darwin(v4 - 8);
  v89 = &v79 - v5;
  v6 = sub_106960();
  v7 = *(v6 - 8);
  v91 = v6;
  v92 = v7;
  v8 = __chkstk_darwin(v6);
  v86 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v90 = &v79 - v10;
  v11 = sub_1065A0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v88 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v79 - v15;
  v17 = sub_1053C0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1053E0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105360();
  if ((*(v22 + 88))(v24, v21) != enum case for Parse.directInvocation(_:))
  {
    (*(v22 + 8))(v24, v21);
    return 0;
  }

  (*(v22 + 96))(v24, v21);
  (*(v18 + 32))(v20, v24, v17);
  v25 = sub_1053B0();
  v26 = v17;
  v27 = v20;
  if (!v25)
  {
    (*(v18 + 8))(v20, v26);
    return 0;
  }

  v28 = v25;
  v80 = v18;
  v81 = v26;
  v29 = *(v12 + 104);
  v29(v16, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v11);
  v30 = sub_106590();
  v32 = v31;
  v33 = *(v12 + 8);
  v33(v16, v11);
  if (!*(v28 + 16))
  {

    goto LABEL_11;
  }

  v34 = sub_32658(v30, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_11:

    (*(v80 + 8))(v27, v81);
    return 0;
  }

  sub_135FC(*(v28 + 56) + 32 * v34, v95);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v80 + 8))(v27, v81);

    return 0;
  }

  v79 = v28;
  v37 = v89;
  sub_106940();
  v39 = v91;
  v38 = v92;
  if ((*(v92 + 48))(v37, 1, v91) == 1)
  {
    (*(v80 + 8))(v27, v81);

    sub_16F70(v37, &unk_1374A0, &qword_10BB30);
    return 0;
  }

  (*(v38 + 32))(v90, v37, v39);
  v41 = v88;
  v29(v88, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmSnapshotsJson(_:), v11);
  v42 = sub_106590();
  v44 = v43;
  v33(v41, v11);
  v45 = v79;
  if (!*(v79 + 16))
  {

    v55 = v80;
    v56 = v81;
LABEL_20:
    (*(v92 + 8))(v90, v39);
    (*(v55 + 8))(v27, v56);
    return 0;
  }

  v46 = sub_32658(v42, v44);
  v48 = v47;

  if ((v48 & 1) == 0)
  {

    v55 = v80;
    v56 = v81;
    v39 = v91;
    goto LABEL_20;
  }

  sub_135FC(*(v45 + 56) + 32 * v46, v95);
  v49 = swift_dynamicCast();
  v51 = v80;
  v50 = v81;
  v52 = v27;
  if ((v49 & 1) == 0)
  {
LABEL_21:

    (*(v92 + 8))(v90, v91);
    (*(v51 + 8))(v27, v50);
    return 0;
  }

  v54 = v93;
  v53 = v94;
  sub_1044D0();
  swift_allocObject();
  sub_1044C0();
  sub_25E4(&qword_137530, &qword_1087D0);
  sub_14E2C();
  sub_1044B0();

  if (!*(v95[0] + 16))
  {
    sub_14DD8(v54, v53);

    goto LABEL_21;
  }

  v88 = v54;
  v89 = v53;
  *(v87 + 40) = v95[0];

  v57 = sub_1053A0();
  v59 = v58;
  v60 = v83;
  v61 = v84;
  v62 = v85;
  (*(v84 + 104))(v83, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v85);
  v63 = sub_1065D0();
  v65 = v64;
  (*(v61 + 8))(v60, v62);
  if (v57 == v63 && v59 == v65)
  {

    v66 = v86;
  }

  else
  {
    v67 = sub_107370();

    v66 = v86;
    if ((v67 & 1) == 0)
    {
      sub_14DD8(v88, v89);

      v70 = *(v92 + 8);
      goto LABEL_40;
    }
  }

  (*(v92 + 104))(v66, enum case for AlarmNLv4Constants.AlarmVerb.create(_:), v91);
  sub_33370(&unk_13AFF0, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
  sub_106EB0();
  sub_106EB0();
  v68 = v89;
  if (v95[0] == v93 && v95[1] == v94)
  {
    v69 = 1;
  }

  else
  {
    v69 = sub_107370();
  }

  v70 = *(v92 + 8);
  v70(v66, v91);

  if ((v69 & 1) == 0)
  {
    sub_14DD8(v88, v68);

LABEL_40:
    v70(v90, v91);
    (*(v51 + 8))(v52, v81);
    return 0;
  }

  v71 = v88;
  if (qword_136CA8 != -1)
  {
    swift_once();
  }

  v72 = sub_106D20();
  sub_135C4(v72, qword_137FB8);
  v73 = sub_106D10();
  v74 = sub_106FC0();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_0, v73, v74, "RecreateDeletedAlarmsFlow accepting input.", v75, 2u);
  }

  v76 = v82;
  sub_20368(v79, v82);
  sub_14DD8(v71, v68);

  v70(v90, v91);
  (*(v51 + 8))(v52, v81);
  v77 = OBJC_IVAR____TtC15AlarmFlowPlugin25RecreateDeletedAlarmsFlow_followupPluginAction;
  v78 = v87;
  swift_beginAccess();
  sub_32EEC(v76, v78 + v77);
  swift_endAccess();
  return 1;
}

uint64_t RecreateDeletedAlarmsFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecreateDeletedAlarmsFlow(0);
  sub_33370(&qword_137FE0, type metadata accessor for RecreateDeletedAlarmsFlow, &protocol conformance descriptor for RecreateDeletedAlarmsFlow);
  return sub_104B50();
}

uint64_t RecreateDeletedAlarmsFlow.execute()(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  sub_25E4(&qword_137FD0, &unk_1087C0);
  v2[19] = swift_task_alloc();
  v3 = sub_104E10();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v4 = sub_1062D0();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v5 = sub_106D00();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  sub_25E4(&qword_137FE8, &unk_1087E0);
  v2[29] = swift_task_alloc();
  sub_25E4(&qword_137FF0, &unk_10C0F0);
  v2[30] = swift_task_alloc();
  sub_25E4(&qword_137FF8, &qword_1087F0);
  v2[31] = swift_task_alloc();
  v6 = sub_104DE0();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_2C638, 0, 0);
}

uint64_t sub_2C638()
{
  if (qword_136CA8 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_137FB8);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "In RecreateDeletedAlarmsFlow async execute()", v4, 2u);
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);

  v8 = enum case for ActivityType.correction(_:);
  v9 = *(v5 + 104);
  *(v0 + 280) = v9;
  *(v0 + 288) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v6, v8, v7);
  if (qword_136CB0 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 248);
  v11 = sub_1062E0();
  *(v0 + 296) = sub_135C4(v11, qword_13B670);
  v12 = sub_104C40();
  *(v0 + 304) = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  *(v0 + 312) = v14;
  *(v0 + 320) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v10, 1, 1, v12);
  if (qword_136CB8 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 264);
  v15 = *(v0 + 272);
  v17 = *(v0 + 248);
  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v66 = *(v0 + 144);
  v67 = *(v0 + 256);
  v22 = sub_1062F0();
  *(v0 + 328) = v22;
  v23 = sub_135C4(v22, qword_13B688);
  *(v0 + 336) = v23;
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  *(v0 + 344) = v25;
  *(v0 + 352) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v18, v23, v22);
  v26 = *(v24 + 56);
  *(v0 + 360) = v26;
  *(v0 + 368) = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v26(v18, 0, 1, v22);
  v27 = *(v20 + 56);
  *(v0 + 376) = v27;
  *(v0 + 384) = (v20 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v27(v19, 1, 1, v21);
  sub_1062C0();
  sub_16F70(v19, &qword_137FE8, &unk_1087E0);
  sub_16F70(v18, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v17, &qword_137FF8, &qword_1087F0);
  v28 = *(v16 + 8);
  *(v0 + 392) = v28;
  *(v0 + 400) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v15, v67);
  if (*(*(v66 + 40) + 16))
  {
    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    v31 = *(v0 + 208);
    v32 = *(v0 + 144);
    v33 = swift_allocObject();
    *(v0 + 408) = v33;
    *(v33 + 16) = 0;
    sub_106FF0();
    *(v0 + 416) = *(v32 + 32);
    sub_106CF0();
    sub_106CE0();
    v34 = *(v30 + 8);
    *(v0 + 424) = v34;
    *(v0 + 432) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v29, v31);
    v35 = *(v66 + 40);
    *(v0 + 440) = v35;
    v36 = *(v35 + 16);
    *(v0 + 448) = v36;
    if (v36)
    {
      *(v0 + 456) = sub_106800();
      *(v0 + 464) = 0;
      v38 = *(v35 + 48);
      v37 = *(v35 + 56);
      v39 = *(v35 + 64);
      v40 = *(v35 + 72);
      *(v0 + 16) = *(v35 + 32);
      *(v0 + 32) = v38;
      *(v0 + 40) = v37;
      *(v0 + 48) = v39;
      *(v0 + 56) = v40;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v41 = sub_22820((v0 + 16));
      *(v0 + 472) = v41;
      v42 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v42 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        *(*(v0 + 144) + 96) = 1;
      }

      v43 = *(v0 + 408);
      v44 = *(v0 + 144);

      v45 = swift_task_alloc();
      *(v0 + 480) = v45;
      *(v45 + 16) = v44;
      *(v45 + 24) = v41;
      *(v45 + 32) = v40 ^ 1;
      *(v45 + 40) = v43;
      v46 = swift_task_alloc();
      *(v0 + 488) = v46;
      *v46 = v0;
      v46[1] = sub_2CE74;

      return withCheckedContinuation<A>(isolation:function:_:)(v46, 0, 0, 0x2865747563657865, 0xE900000000000029, sub_32F6C, v45, &type metadata for () + 8);
    }

    v57 = *(v0 + 424);
    v58 = *(v0 + 224);
    v59 = *(v0 + 208);
    v60 = *(v0 + 144);
    sub_106FE0();
    sub_106CF0();
    sub_106CE0();
    v57(v58, v59);
    swift_beginAccess();
    v61 = *(v60 + 48);
    if (v61 >> 62)
    {
      if (sub_107270())
      {
        goto LABEL_26;
      }
    }

    else if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_26:
      v62 = *(v0 + 408);
      swift_beginAccess();
      v63 = *(v62 + 16);
      v64 = swift_task_alloc();
      *(v0 + 504) = v64;
      *v64 = v0;
      v64[1] = sub_2D548;

      return sub_31CF4(v63);
    }

    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for SiriTimeEventSender.ReasonDescription.noAlarmsCreated(_:), *(v0 + 184));
    v53 = swift_task_alloc();
    *(v0 + 496) = v53;
    *v53 = v0;
    v54 = sub_2D324;
  }

  else
  {
    v47 = sub_106D10();
    v48 = sub_106FB0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "The alarm snapshots are empty! RecreateDeletedAlarmsFlow execute() has no alarms to recreate.", v49, 2u);
    }

    v51 = *(v0 + 192);
    v50 = *(v0 + 200);
    v52 = *(v0 + 184);

    (*(v51 + 104))(v50, enum case for SiriTimeEventSender.ReasonDescription.noAlarmsToCreate(_:), v52);
    v53 = swift_task_alloc();
    *(v0 + 520) = v53;
    *v53 = v0;
    v54 = sub_2D954;
  }

  v53[1] = v54;
  v55 = *(v0 + 200);
  v56 = *(v0 + 136);

  return sub_2EFC4(v56, v55);
}

uint64_t sub_2CE74()
{

  return _swift_task_switch(sub_2CF8C, 0, 0);
}

uint64_t sub_2CF8C()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);

  if (v1 + 1 == v2)
  {

    v3 = *(v0 + 424);
    v4 = *(v0 + 224);
    v5 = *(v0 + 208);
    v6 = *(v0 + 144);
    sub_106FE0();
    sub_106CF0();
    sub_106CE0();
    v3(v4, v5);
    swift_beginAccess();
    v7 = *(v6 + 48);
    if (v7 >> 62)
    {
      if (sub_107270())
      {
        goto LABEL_4;
      }
    }

    else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_4:
      v8 = *(v0 + 408);
      swift_beginAccess();
      v9 = *(v8 + 16);
      v10 = swift_task_alloc();
      *(v0 + 504) = v10;
      *v10 = v0;
      v10[1] = sub_2D548;

      return sub_31CF4(v9);
    }

    (*(*(v0 + 192) + 104))(*(v0 + 200), enum case for SiriTimeEventSender.ReasonDescription.noAlarmsCreated(_:), *(v0 + 184));
    v24 = swift_task_alloc();
    *(v0 + 496) = v24;
    *v24 = v0;
    v24[1] = sub_2D324;
    v25 = *(v0 + 200);
    v26 = *(v0 + 136);

    return sub_2EFC4(v26, v25);
  }

  else
  {
    v12 = *(v0 + 464);
    *(v0 + 464) = v12 + 1;
    v13 = *(v0 + 440) + 48 * v12;
    v15 = *(v13 + 96);
    v14 = *(v13 + 104);
    v16 = *(v13 + 112);
    v17 = *(v13 + 120);
    *(v0 + 16) = *(v13 + 80);
    *(v0 + 32) = v15;
    *(v0 + 40) = v14;
    *(v0 + 48) = v16;
    *(v0 + 56) = v17;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v18 = sub_22820((v0 + 16));
    *(v0 + 472) = v18;
    v19 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v19 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      *(*(v0 + 144) + 96) = 1;
    }

    v20 = *(v0 + 408);
    v21 = *(v0 + 144);

    v22 = swift_task_alloc();
    *(v0 + 480) = v22;
    *(v22 + 16) = v21;
    *(v22 + 24) = v18;
    *(v22 + 32) = v17 ^ 1;
    *(v22 + 40) = v20;
    v23 = swift_task_alloc();
    *(v0 + 488) = v23;
    *v23 = v0;
    v23[1] = sub_2CE74;

    return withCheckedContinuation<A>(isolation:function:_:)(v23, 0, 0, 0x2865747563657865, 0xE900000000000029, sub_32F6C, v22, &type metadata for () + 8);
  }
}

uint64_t sub_2D324()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_2D47C, 0, 0);
}

uint64_t sub_2D47C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2D548()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_2DB80;
  }

  else
  {
    v2 = sub_2D65C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2D65C()
{
  v22 = *(v0 + 392);
  v18 = *(v0 + 376);
  v17 = *(v0 + 360);
  v16 = *(v0 + 344);
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 304);
  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v19 = *(v0 + 256);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v15 = *(v0 + 184);
  v23 = *(v0 + 168);
  v24 = *(v0 + 160);
  v20 = *(v0 + 144);
  v21 = *(v0 + 152);
  (*(v0 + 280))(v5, enum case for ActivityType.completed(_:));
  v3(v6, 1, 1, v4);
  v16(v8, v1, v2);
  v17(v8, 0, 1, v2);
  v18(v7, 1, 1, v15);
  sub_1062C0();
  sub_16F70(v7, &qword_137FE8, &unk_1087E0);
  sub_16F70(v8, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v6, &qword_137FF8, &qword_1087F0);
  v22(v5, v19);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin25RecreateDeletedAlarmsFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v20 + v9, v21, &qword_137FD0, &unk_1087C0);
  if ((*(v23 + 48))(v21, 1, v24) == 1)
  {
    sub_16F70(*(v0 + 152), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 160);
    (*(v11 + 32))(v10, *(v0 + 152), v12);
    sub_104F10();
    (*(v11 + 8))(v10, v12);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2D954()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *v0;

  (*(v2 + 8))(v1, v3);

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_2DB80()
{
  (*(v0[24] + 104))(v0[25], enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v0[23]);
  v1 = swift_task_alloc();
  v0[66] = v1;
  *v1 = v0;
  v1[1] = sub_2DC3C;
  v2 = v0[25];
  v3 = v0[17];

  return sub_2EFC4(v3, v2);
}

uint64_t sub_2DC3C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_2DD94, 0, 0);
}

uint64_t sub_2DD94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2DE6C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v20 = a5;
  v21 = a3;
  v19 = a4;
  v18 = a1;
  v6 = sub_25E4(&qword_1381B0, &qword_108910);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_106D00();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FF0();
  sub_106CF0();
  sub_106CE0();
  (*(v11 + 8))(v13, v10);
  sub_262C(a2 + 56, v22);
  sub_1A8E0(v22, v22[3]);
  (*(v7 + 16))(v9, v18, v6);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v19;
  *(v15 + 32) = v20;
  (*(v7 + 32))(v15 + v14, v9, v6);

  sub_106B30();

  return sub_2738(v22);
}

void sub_2E0F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v48 = a4;
  LODWORD(v50) = a3;
  v52 = a1;
  v6 = sub_106990();
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_25E4(&qword_1381B0, &qword_108910);
  v47 = *(v53 - 8);
  v45[1] = *(v47 + 64);
  __chkstk_darwin(v53);
  v46 = v45 - v9;
  v10 = sub_25E4(&qword_1381B8, &qword_108918);
  __chkstk_darwin(v10);
  v12 = (v45 - v11);
  v13 = sub_106D00();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v51 = a2;
  sub_106CF0();
  sub_106CE0();
  v17 = *(v14 + 8);
  v17(v16, v13);
  sub_14994(v52, v12, &qword_1381B8, &qword_108918);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v49;
    (*(v49 + 32))(v8, v12, v6);
    v19 = v8;
    if (qword_136CA8 != -1)
    {
      swift_once();
    }

    v20 = sub_106D20();
    sub_135C4(v20, qword_137FB8);
    v21 = sub_106D10();
    v22 = sub_106FC0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Failed to create alarm", v23, 2u);
    }

    sub_106F60();
    v24 = sub_106750();
    v56 = v24;
    v57 = &protocol witness table for ABCReport;
    v25 = sub_1A924(v55);
    sub_33370(&qword_1381C0, &type metadata accessor for AlarmOperationError, &protocol conformance descriptor for AlarmOperationError);
    swift_allocError();
    (*(v18 + 16))(v26, v19, v6);
    *v25 = sub_1045F0();
    v27 = enum case for ErrorSubType.managerReturnedError(_:);
    v28 = sub_106460();
    (*(*(v28 - 8) + 104))(v25, v27, v28);
    (*(*(v24 - 8) + 104))(v25, enum case for ABCReport.alarmUndoHandle(_:), v24);
    sub_1064D0();
    (*(v18 + 8))(v19, v6);
    sub_2738(v55);
  }

  else
  {
    v29 = *v12;
    if (qword_136CA8 != -1)
    {
      swift_once();
    }

    v30 = sub_106D20();
    sub_135C4(v30, qword_137FB8);
    v31 = sub_106D10();
    v32 = sub_106FC0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Successfully created", v33, 2u);
    }

    if (v50)
    {
      sub_106FF0();
      sub_106CF0();
      sub_106CE0();
      v17(v16, v13);
      v34 = v51;
      sub_262C(v51 + 56, v55);
      v52 = v57;
      v50 = sub_1A8E0(v55, v56);
      sub_25E4(&qword_137DD0, &unk_108920);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_108470;
      *(v35 + 32) = v29;
      v36 = v46;
      v37 = v47;
      v38 = v53;
      (*(v47 + 16))(v46, v54, v53);
      v39 = (*(v37 + 80) + 40) & ~*(v37 + 80);
      v40 = swift_allocObject();
      v41 = v48;
      *(v40 + 2) = v34;
      *(v40 + 3) = v41;
      *(v40 + 4) = v29;
      (*(v37 + 32))(&v40[v39], v36, v38);
      v42 = v29;

      sub_106B70();

      sub_2738(v55);
    }

    else
    {
      v43 = v51;
      swift_beginAccess();
      v44 = v29;
      sub_106EC0();
      if (*(&dword_10 + (*(v43 + 48) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v43 + 48) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_106F10();
      }

      sub_106F20();
      swift_endAccess();
      sub_106F60();
    }
  }
}

uint64_t sub_2E89C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v48 = a5;
  v45 = a3;
  v46 = a4;
  v7 = sub_106990();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&qword_1381C8, &qword_109640);
  __chkstk_darwin(v10);
  v12 = (&v43 - v11);
  v13 = sub_106D00();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v47 = a2;
  sub_106CF0();
  sub_106CE0();
  (*(v14 + 8))(v16, v13);
  sub_14994(a1, v12, &qword_1381C8, &qword_109640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v44;
    (*(v44 + 32))(v9, v12, v7);
    if (qword_136CA8 != -1)
    {
      swift_once();
    }

    v18 = sub_106D20();
    sub_135C4(v18, qword_137FB8);
    v19 = sub_106D10();
    v20 = sub_106FC0();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v47;
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v19, v20, "Failed to disable", v23, 2u);
    }

    swift_beginAccess();
    v24 = v46;
    sub_106EC0();
    if (*(&dword_10 + (*(v22 + 48) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v22 + 48) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_106F10();
    }

    sub_106F20();
    swift_endAccess();
    v25 = sub_106750();
    v49[3] = v25;
    v49[4] = &protocol witness table for ABCReport;
    v26 = sub_1A924(v49);
    sub_33370(&qword_1381C0, &type metadata accessor for AlarmOperationError, &protocol conformance descriptor for AlarmOperationError);
    swift_allocError();
    (*(v17 + 16))(v27, v9, v7);
    *v26 = sub_1045F0();
    v28 = enum case for ErrorSubType.managerReturnedError(_:);
    v29 = sub_106460();
    (*(*(v29 - 8) + 104))(v26, v28, v29);
    (*(*(v25 - 8) + 104))(v26, enum case for ABCReport.alarmUndoHandle(_:), v25);
    sub_1064D0();
    (*(v17 + 8))(v9, v7);
    sub_2738(v49);

    goto LABEL_24;
  }

  v30 = *v12;
  if (qword_136CA8 != -1)
  {
    swift_once();
  }

  v31 = sub_106D20();
  sub_135C4(v31, qword_137FB8);
  v32 = sub_106D10();
  v33 = sub_106FC0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "Successfully disabled", v34, 2u);
  }

  v35 = v45;
  swift_beginAccess();
  *(v35 + 16) = 1;
  if (!(v30 >> 62))
  {
    if (*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_15;
    }

LABEL_22:

    v40 = v47;
    swift_beginAccess();
    v41 = v46;
    sub_106EC0();
    if (*(&dword_10 + (*(v40 + 48) & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (*(v40 + 48) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_23:
      sub_106F20();
      swift_endAccess();
      goto LABEL_24;
    }

LABEL_27:
    sub_106F10();
    goto LABEL_23;
  }

  if (!sub_107270())
  {
    goto LABEL_22;
  }

LABEL_15:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v36 = sub_1071C0();
    goto LABEL_18;
  }

  if (!*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    goto LABEL_27;
  }

  v36 = *(v30 + 32);
LABEL_18:
  v37 = v36;

  v38 = v47;
  swift_beginAccess();
  v39 = v37;
  sub_106EC0();
  if (*(&dword_10 + (*(v38 + 48) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v38 + 48) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_106F10();
  }

  sub_106F20();
  swift_endAccess();

LABEL_24:
  sub_25E4(&qword_1381B0, &qword_108910);
  return sub_106F60();
}

uint64_t sub_2EFC4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_104FF0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_104D60();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_106D20();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_106300();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_106320();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  sub_25E4(&qword_137FE8, &unk_1087E0);
  v3[20] = swift_task_alloc();
  sub_25E4(&qword_137FF0, &unk_10C0F0);
  v3[21] = swift_task_alloc();
  sub_25E4(&qword_137FF8, &qword_1087F0);
  v3[22] = swift_task_alloc();
  v9 = sub_104DE0();
  v3[23] = v9;
  v3[24] = *(v9 - 8);
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_2F2FC, 0, 0);
}

uint64_t sub_2F2FC()
{
  (*(v0[24] + 104))(v0[25], enum case for ActivityType.failed(_:), v0[23]);
  if (qword_136CB0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_1062E0();
  sub_135C4(v2, qword_13B670);
  v3 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v4 = sub_104C40();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  if (qword_136CB8 != -1)
  {
    swift_once();
  }

  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[3];
  v13 = sub_1062F0();
  v14 = sub_135C4(v13, qword_13B688);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v10, v14, v13);
  (*(v15 + 56))(v10, 0, 1, v13);
  v16 = sub_1062D0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, v12, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  sub_1062C0();
  sub_16F70(v11, &qword_137FE8, &unk_1087E0);
  sub_16F70(v10, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v9, &qword_137FF8, &qword_1087F0);
  (*(v7 + 8))(v6, v8);
  if (qword_136CA8 != -1)
  {
    swift_once();
  }

  v18 = sub_135C4(v0[11], qword_137FB8);
  v0[26] = v18;
  v19 = sub_106D10();
  v20 = sub_106FC0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "Hitting alarm RF codepath for RecreateDeletedAlarmsFlow error case.", v21, 2u);
  }

  v23 = v0[15];
  v22 = v0[16];
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[11];
  v27 = v0[12];

  (*(v23 + 104))(v22, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v24);
  (*(v27 + 16))(v25, v18, v26);
  mach_absolute_time();
  sub_106330();
  v30 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v28 = swift_task_alloc();
  v0[27] = v28;
  *v28 = v0;
  v28[1] = sub_2F7A0;

  return v30(0xD000000000000017, 0x800000000010CAA0, _swiftEmptyArrayStorage);
}

uint64_t sub_2F7A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_2FC40;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_2F8C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2F8C8(uint64_t a1)
{
  sub_104D20();
  sub_104FE0();
  v2 = swift_task_alloc();
  v1[30] = v2;
  *v2 = v1;
  v2[1] = sub_2F984;
  v3 = v1[19];
  v4 = v1[10];
  v5 = v1[7];
  v6 = v1[2];

  return PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(v6, v4, v5, v3);
}

uint64_t sub_2F984()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 40);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_2FB58, 0, 0);
}

uint64_t sub_2FB58()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2FC40()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = sub_106D10();
  v2 = sub_106FB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Failed to produce Incomplete response.", v3, 2u);
  }

  sub_104F00();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2FDB0(uint64_t a1, char a2)
{
  *(v3 + 372) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = sub_104D60();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = type metadata accessor for CreateAlarmCreateMultipleParameters(0);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_104670();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  v6 = sub_106D20();
  *(v3 + 136) = v6;
  *(v3 + 144) = *(v6 - 8);
  *(v3 + 152) = swift_task_alloc();
  v7 = sub_106300();
  *(v3 + 160) = v7;
  *(v3 + 168) = *(v7 - 8);
  *(v3 + 176) = swift_task_alloc();
  v8 = sub_106320();
  *(v3 + 184) = v8;
  *(v3 + 192) = *(v8 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  v9 = sub_104FF0();
  *(v3 + 216) = v9;
  *(v3 + 224) = *(v9 - 8);
  *(v3 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_30088, 0, 0);
}

uint64_t sub_30088()
{
  v2 = *(v0 + 56);
  swift_beginAccess();
  v3 = *(v2 + 48);
  if (v3 >> 62)
  {
LABEL_71:
    if (!sub_107270())
    {
      goto LABEL_74;
    }
  }

  else if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_74;
  }

  v4 = *(v2 + 48);
  if (!(v4 >> 62))
  {
    if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_5;
    }

LABEL_74:
    sub_331BC();
    swift_allocError();
    *v71 = 0;
    swift_willThrow();

    v72 = *(v0 + 8);

    return v72();
  }

  if (!sub_107270())
  {
    goto LABEL_74;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_1071C0();
  }

  else
  {
    if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_80;
    }

    v5 = *(v4 + 32);
  }

  *(v0 + 240) = v5;
  v6 = *(v0 + 232);
  v7 = *(v0 + 372);

  sub_BD4A4(v8, v6);

  v1 = &selRef_undoable;
  if (v7 == 1)
  {
    if (qword_136CA8 == -1)
    {
LABEL_10:
      sub_135C4(*(v0 + 136), qword_137FB8);
      v9 = sub_106D10();
      v10 = sub_106FC0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_0, v9, v10, "Producing dialog for creating a disabled alarm.", v11, 2u);
      }

      goto LABEL_13;
    }

LABEL_80:
    swift_once();
    goto LABEL_10;
  }

LABEL_13:
  if (v1[405] != -1)
  {
    swift_once();
  }

  v12 = sub_135C4(*(v0 + 136), qword_137FB8);
  *(v0 + 248) = v12;

  v13 = sub_106D10();
  v14 = sub_106FC0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    v16 = *(v2 + 48);
    if (v16 >> 62)
    {
      v17 = sub_107270();
    }

    else
    {
      v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    }

    *(v15 + 4) = v17;

    _os_log_impl(&dword_0, v13, v14, "Restored %ld alarms.", v15, 0xCu);
  }

  else
  {
  }

  v18 = sub_106D10();
  v19 = sub_106FC0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "Hitting alarm RF codepath for RecreateDeletedAlarms flow.", v20, 2u);
  }

  v21 = *(v2 + 48);
  if (v21 >> 62)
  {
    v22 = sub_107270();
  }

  else
  {
    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  }

  v23 = *(v0 + 152);
  v24 = *(v0 + 136);
  v25 = *(v0 + 144);
  (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 160));
  (*(v25 + 16))(v23, v12, v24);
  mach_absolute_time();
  if (v22 < 2)
  {
    v32 = *(v0 + 120);
    v31 = *(v0 + 128);
    v33 = *(v0 + 112);
    v34 = *(v0 + 56);
    sub_106330();
    v35 = *(v34 + 96);
    *(v0 + 368) = 0;
    *(v0 + 370) = v35;
    *(v0 + 371) = 0;
    sub_106210();
    v36 = sub_75DD4(0, v31, 0);
    *(v0 + 304) = v36;
    (*(v32 + 8))(v31, v33);
    sub_106100();
    if (qword_136E48 != -1)
    {
      swift_once();
    }

    v37 = sub_1060F0();
    *(v0 + 312) = v37;
    if (*(v0 + 369))
    {
      v38 = 256;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38 | *(v0 + 368);
    if (*(v0 + 370))
    {
      v40 = 0x10000;
    }

    else
    {
      v40 = 0;
    }

    if (*(v0 + 371))
    {
      v41 = 0x1000000;
    }

    else
    {
      v41 = 0;
    }

    v42 = sub_74804(v36, v37, v39 | v40 | v41, 0);
    *(v0 + 320) = v42;
    v77 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v43 = swift_task_alloc();
    *(v0 + 328) = v43;
    *v43 = v0;
    v43[1] = sub_311D4;
    v44 = 0xD000000000000021;
    v45 = 0x800000000010CA50;
    v46 = v42;
  }

  else
  {
    sub_106330();
    v26 = *(v2 + 48);
    if (v26 >> 62)
    {
      v74 = sub_107270();
    }

    else
    {
      v74 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    }

    v27 = 0;
    while (1)
    {
      v1 = v27;
      if (v74 == v27)
      {
        break;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v28 = sub_1071C0();
      }

      else
      {
        if (v27 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_70;
        }

        v28 = *(v26 + 8 * v27 + 32);
      }

      v29 = v28;
      if (__OFADD__(v1, 1))
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v30 = [v28 sleepAlarmAttribute];

      v27 = (v1 + 1);
      if (v30)
      {

        break;
      }
    }

    v73 = *(*(v0 + 56) + 96);
    v47 = *(v2 + 48);
    v75 = v47 & 0xFFFFFFFFFFFFFF8;
    if (v47 >> 62)
    {
      v78 = sub_107270();
    }

    else
    {
      v78 = *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8));
    }

    v76 = v47 & 0xC000000000000001;
    v48 = (*(v0 + 120) + 8);

    v49 = 0;
    while (v78 != v49)
    {
      v2 = v0;
      if (v76)
      {
        v50 = sub_1071C0();
      }

      else
      {
        if (v49 >= *(v75 + 16))
        {
          goto LABEL_68;
        }

        v50 = *(v47 + 8 * v49 + 32);
      }

      v51 = v50;
      v52 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v53 = v47;
      v54 = *(v0 + 128);
      v55 = *(v0 + 112);
      sub_106210();
      v56 = sub_75DD4(0, v54, 0);

      v57 = v54;
      v47 = v53;
      (*v48)(v57, v55);
      ++v49;
      if (v56)
      {
        sub_106EC0();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_106F10();
        }

        sub_106F20();
        v49 = v52;
      }
    }

    v58 = v74 == v1;
    v59 = v0;
    v60 = *(v0 + 128);
    v61 = *(v0 + 104);
    v62 = *(v0 + 112);
    v63 = *(v0 + 96);

    v64 = sub_106160();
    (*(*(v64 - 8) + 56))(v61, 1, 1, v64);
    v65 = v63[5];
    *(v61 + v65) = 0;
    v66 = v63[6];
    *(v61 + v66) = 0;
    *(v61 + v63[7]) = 0;
    *(v61 + v63[8]) = 0;
    *(v61 + v63[9]) = v58;
    *(v61 + v63[10]) = v73;
    *(v61 + v63[11]) = _swiftEmptyArrayStorage;
    *(v61 + v63[12]) = 1;
    *(v61 + v63[13]) = 0;
    sub_106210();
    v67 = sub_75DD4(0, v60, 0);
    (*v48)(v60, v62);
    *(v61 + v65) = v67;
    sub_106100();
    if (qword_136E48 != -1)
    {
      swift_once();
    }

    *(v61 + v66) = sub_1060F0();
    v68 = sub_74468();
    *(v59 + 256) = v68;
    v77 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v69 = swift_task_alloc();
    *(v59 + 264) = v69;
    *v69 = v59;
    v69[1] = sub_30B0C;
    v45 = 0x800000000010CA80;
    v44 = 0xD00000000000001ALL;
    v46 = v68;
  }

  return v77(v44, v45, v46);
}

uint64_t sub_30B0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_30E88;
  }

  else
  {
    v4 = sub_30C48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_30C48()
{
  sub_33160(v0[13]);
  sub_104CF0();
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_30D08;
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[11];
  v5 = v0[6];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v4, v2, v3, 0);
}

uint64_t sub_30D08()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = v2[34];
  (*(v2[9] + 8))(v2[11], v2[8]);

  if (v0)
  {
    v4 = sub_318AC;
  }

  else
  {
    v4 = sub_310BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_30E88()
{
  v19 = v0;
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  sub_33160(v0[13]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[35];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v0[5] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Failure while attempting to use RF: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[29];
  v13 = v0[30];
  v14 = v0[27];
  v15 = v0[28];
  swift_willThrow();

  (*(v15 + 8))(v12, v14);

  v16 = v0[1];

  return v16();
}

uint64_t sub_310BC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_311D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_31558;
  }

  else
  {
    v4 = sub_31310;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_31310()
{

  sub_104CF0();
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_313D8;
  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[10];
  v5 = v0[6];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v4, v2, v3, 0);
}

uint64_t sub_313D8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = v2[42];
  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {
    v4 = sub_31AD0;
  }

  else
  {
    v4 = sub_31794;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_31558()
{
  v19 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  (*(v2 + 8))(v1, v3);
  v4 = v0[43];
  swift_errorRetain();
  v5 = sub_106D10();
  v6 = sub_106FB0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v0[5] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v9 = sub_106E30();
    v11 = sub_722E8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Failure while attempting to use RF: %s", v7, 0xCu);
    sub_2738(v8);
  }

  v12 = v0[29];
  v13 = v0[30];
  v14 = v0[27];
  v15 = v0[28];
  swift_willThrow();

  (*(v15 + 8))(v12, v14);

  v16 = v0[1];

  return v16();
}

uint64_t sub_31794()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_318AC()
{
  v16 = v0;
  (*(v0[24] + 8))(v0[26], v0[23]);
  v1 = v0[37];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v0[5] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Failure while attempting to use RF: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[29];
  v10 = v0[30];
  v11 = v0[27];
  v12 = v0[28];
  swift_willThrow();

  (*(v12 + 8))(v9, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_31AD0()
{
  v16 = v0;
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[45];
  swift_errorRetain();
  v2 = sub_106D10();
  v3 = sub_106FB0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v0[5] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Failure while attempting to use RF: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = v0[29];
  v10 = v0[30];
  v11 = v0[27];
  v12 = v0[28];
  swift_willThrow();

  (*(v12 + 8))(v9, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_31CF4(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 96) = v3;
  *v3 = v1;
  v3[1] = sub_31D90;

  return sub_2FDB0(v1 + 16, a1);
}

uint64_t sub_31D90()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_320E8;
  }

  else
  {
    v2 = sub_31EA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_31EA4()
{
  sub_105180();
  v1 = v0[10];
  v2 = v0[11];
  sub_1A8E0(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_31F68;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

uint64_t sub_31F68()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_32100;
  }

  else
  {
    v2 = sub_3207C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3207C()
{
  sub_2738(v0 + 2);
  sub_2738(v0 + 7);
  v1 = v0[1];

  return v1();
}

uint64_t sub_32100()
{
  sub_2738(v0 + 2);
  sub_2738(v0 + 7);
  v1 = v0[1];

  return v1();
}

Swift::Int sub_32184()
{
  v1 = *v0;
  sub_107400();
  sub_107410(v1);
  return sub_107420();
}

Swift::Int sub_321F8(uint64_t a1)
{
  v2 = *v1;
  sub_107400();
  sub_107410(v2);
  return sub_107420();
}

uint64_t RecreateDeletedAlarmsFlow.deinit()
{

  sub_2738((v0 + 56));
  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin25RecreateDeletedAlarmsFlow_followupPluginAction, &qword_137FD0, &unk_1087C0);
  return v0;
}

uint64_t RecreateDeletedAlarmsFlow.__deallocating_deinit()
{

  sub_2738((v0 + 56));
  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin25RecreateDeletedAlarmsFlow_followupPluginAction, &qword_137FD0, &unk_1087C0);

  return swift_deallocClassInstance();
}

uint64_t sub_32370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_32420;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_32420(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_3257C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA94;

  return RecreateDeletedAlarmsFlow.execute()(a1);
}

uint64_t sub_32618(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecreateDeletedAlarmsFlow(0);

  return sub_104B80();
}

unint64_t sub_32658(uint64_t a1, uint64_t a2)
{
  sub_107400();
  sub_106E70();
  v4 = sub_107420();

  return sub_327AC(a1, a2, v4);
}

unint64_t sub_326D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_107120(*(v2 + 40));

  return sub_32864(a1, v4);
}

unint64_t sub_32714(uint64_t a1)
{
  sub_105F50();
  sub_33370(&qword_1381A0, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange, &protocol conformance descriptor for DateTime.DateTimeRange.DefinedDateTimeRange);
  v2 = sub_106DE0();

  return sub_3292C(a1, v2);
}

unint64_t sub_327AC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_107370())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_32864(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_330B0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_107130();
      sub_3310C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_3292C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_105F50();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_33370(&qword_1381A8, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange, &protocol conformance descriptor for DateTime.DateTimeRange.DefinedDateTimeRange);
      v15 = sub_106E00();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_32AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_106200();
  __chkstk_darwin(v4 - 8);
  v9 = sub_106AC0();
  v10 = &protocol witness table for SiriAlarmManagerImpl;
  *&v8 = a1;
  type metadata accessor for CreateAlarmCATs_Async(0);
  sub_1061E0();
  *(a2 + 16) = sub_1060D0();
  type metadata accessor for CreateAlarmCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 24) = sub_1060D0();
  *(a2 + 32) = _s15AlarmFlowPlugin010UndoCreateaB0C11osLogObject33_795FD7BF22B6045B20B59C9797DF7ED4LLSo03OS_F4_logCvpfi_0();
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 96) = 0;
  v5 = OBJC_IVAR____TtC15AlarmFlowPlugin25RecreateDeletedAlarmsFlow_followupPluginAction;
  v6 = sub_104E10();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  sub_1AD44(&v8, a2 + 56);
  return a2;
}

uint64_t sub_32C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_106200();
  __chkstk_darwin(v8 - 8);
  v14 = a3;
  v15 = a4;
  v9 = sub_1A924(&v13);
  (*(*(a3 - 8) + 32))(v9, a1, a3);
  type metadata accessor for CreateAlarmCATs_Async(0);
  sub_1061E0();
  *(a2 + 16) = sub_1060D0();
  type metadata accessor for CreateAlarmCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 24) = sub_1060D0();
  *(a2 + 32) = _s15AlarmFlowPlugin010UndoCreateaB0C11osLogObject33_795FD7BF22B6045B20B59C9797DF7ED4LLSo03OS_F4_logCvpfi_0();
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 96) = 0;
  v10 = OBJC_IVAR____TtC15AlarmFlowPlugin25RecreateDeletedAlarmsFlow_followupPluginAction;
  v11 = sub_104E10();
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  sub_1AD44(&v13, a2 + 56);
  return a2;
}

uint64_t sub_32DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecreateDeletedAlarmsFlow(0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  return sub_32C34(v9, v10, a3, a4);
}

uint64_t type metadata accessor for RecreateDeletedAlarmsFlow(uint64_t a1)
{
  result = qword_138028;
  if (!qword_138028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_32EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137FD0, &unk_1087C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_32F84(uint64_t a1)
{
  sub_33058(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_33058(uint64_t a1)
{
  if (!qword_138038)
  {
    sub_104E10();
    v1 = sub_1070E0();
    if (!v2)
    {
      atomic_store(v1, &qword_138038);
    }
  }
}

uint64_t sub_33160(uint64_t a1)
{
  MultipleParameters = type metadata accessor for CreateAlarmCreateMultipleParameters(0);
  (*(*(MultipleParameters - 8) + 8))(a1, MultipleParameters);
  return a1;
}

unint64_t sub_331BC()
{
  result = qword_138198;
  if (!qword_138198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_138198);
  }

  return result;
}

uint64_t sub_33210()
{
  v1 = sub_25E4(&qword_1381B0, &qword_108910);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_332E8(uint64_t a1)
{
  v3 = *(sub_25E4(&qword_1381B0, &qword_108910) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_2E0F0(a1, v4, v5, v6, v7);
}

uint64_t sub_33370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_333B8()
{
  v1 = sub_25E4(&qword_1381B0, &qword_108910);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_33498(uint64_t a1)
{
  v3 = *(sub_25E4(&qword_1381B0, &qword_108910) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_2E89C(a1, v4, v5, v6, v7);
}

uint64_t getEnumTagSinglePayload for RecreateDeletedAlarmsFlow.RecreateAlarmError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecreateDeletedAlarmsFlow.RecreateAlarmError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_3367C()
{
  result = qword_1381D0;
  if (!qword_1381D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1381D0);
  }

  return result;
}

uint64_t sub_336E0()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_1381D8);
  sub_135C4(v0, qword_1381D8);
  return sub_106A80();
}

uint64_t sub_3372C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_3374C, 0, 0);
}

uint64_t sub_3374C()
{
  sub_25E4(&qword_1381F0, &qword_108A90);
  v1 = sub_1051F0();
  v0[10] = v1;
  v2 = sub_105200();
  v0[11] = v2;
  if (qword_136CC0 != -1)
  {
    swift_once();
  }

  v3 = sub_106D20();
  v0[12] = sub_135C4(v3, qword_1381D8);
  v4 = v2;
  v5 = sub_106D10();
  v6 = sub_106FC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = [v4 unsupportedReason];

    _os_log_impl(&dword_0, v5, v6, "DeleteAlarm.makeUnsupportedValueOutput() called with unsupportedReason: %ld", v7, 0xCu);
  }

  else
  {

    v5 = v4;
  }

  v8 = [v1 alarmSearch];
  v0[13] = v8;
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_33940;
  v10 = v0[8];

  return sub_17218(v10, v8, v4);
}

uint64_t sub_33940()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_33AC4;
  }

  else
  {

    v3 = sub_33A5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_33A5C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_33AC4()
{
  v18 = v0;

  swift_errorRetain();
  v1 = sub_106D10();
  v2 = sub_106FB0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 120);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v0 + 56) = v3;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v6 = sub_106E30();
    v8 = sub_722E8(v6, v7, &v17);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v1, v2, "Error in legacy path: %s", v4, 0xCu);
    sub_2738(v5);
  }

  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = sub_106750();
  *(v0 + 40) = v11;
  *(v0 + 48) = &protocol witness table for ABCReport;
  v12 = sub_1A924((v0 + 16));
  *v12 = sub_1045F0();
  v13 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v14 = sub_106690();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  (*(*(v11 - 8) + 104))(v12, enum case for ABCReport.dialog(_:), v11);
  sub_1064D0();
  sub_2738((v0 + 16));
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_33D1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_3372C(a1, a2);
}

uint64_t sub_33DDC()
{
  sub_25E4(&qword_1381F0, &qword_108A90);
  v1 = sub_1051F0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_33E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CE64;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t type metadata accessor for SearchAlarmCATPatternsExecutor(uint64_t a1)
{
  result = qword_1381F8;
  if (!qword_1381F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_33FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t type metadata accessor for UpdateAlarmCATs_Async(uint64_t a1)
{
  result = qword_138248;
  if (!qword_138248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_341C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t sub_34350()
{
  sub_106440();
  sub_4CD70(&qword_138410, 255, &type metadata accessor for ButtonOption, &protocol conformance descriptor for ButtonOption);
  sub_106EB0();
  sub_106EB0();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_107370();
  }

  return v1 & 1;
}

void sub_34434(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v552 = a4;
  v482 = a3;
  v512 = a2;
  v554 = a1;
  v550 = a5;
  v5 = sub_25E4(&unk_1383C0, &qword_107DF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v455 - v6;
  v491 = sub_106440();
  v490 = *(v491 - 8);
  v8 = __chkstk_darwin(v491);
  v481 = &v455 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v484 = &v455 - v10;
  v496 = sub_1065A0();
  v495 = *(v496 - 8);
  __chkstk_darwin(v496);
  v494 = &v455 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = sub_106960();
  v478 = *(v475 - 8);
  __chkstk_darwin(v475);
  v461 = &v455 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v474 = sub_25E4(&qword_137498, &unk_108C50);
  v13 = __chkstk_darwin(v474);
  v476 = &v455 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v466 = &v455 - v15;
  v16 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v17 = __chkstk_darwin(v16 - 8);
  v462 = &v455 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v455 - v20;
  v22 = __chkstk_darwin(v19);
  v469 = &v455 - v23;
  v24 = __chkstk_darwin(v22);
  v459 = &v455 - v25;
  v26 = __chkstk_darwin(v24);
  v472 = &v455 - v27;
  __chkstk_darwin(v26);
  v526 = &v455 - v28;
  v489 = sub_105380();
  v488 = *(v489 - 8);
  v29 = __chkstk_darwin(v489);
  v31 = &v455 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v464 = &v455 - v33;
  __chkstk_darwin(v32);
  v485 = &v455 - v34;
  v35 = sub_25E4(&unk_137460, &unk_108C60);
  __chkstk_darwin(v35 - 8);
  v506 = &v455 - v36;
  v508 = sub_1050D0();
  v507 = *(v508 - 8);
  v37 = __chkstk_darwin(v508);
  v500 = &v455 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v501 = &v455 - v39;
  v510 = sub_1053C0();
  v514 = *(v510 - 8);
  __chkstk_darwin(v510);
  v509 = &v455 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = sub_105520();
  v520 = *(v493 - 8);
  v41 = __chkstk_darwin(v493);
  v487 = &v455 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v517 = &v455 - v43;
  v497 = sub_105460();
  v502 = *(v497 - 8);
  v44 = __chkstk_darwin(v497);
  v468 = &v455 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v486 = &v455 - v47;
  __chkstk_darwin(v46);
  v492 = &v455 - v48;
  v498 = sub_105410();
  v499 = *(v498 - 8);
  v49 = __chkstk_darwin(v498);
  v465 = &v455 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v463 = &v455 - v52;
  v53 = __chkstk_darwin(v51);
  v460 = &v455 - v54;
  __chkstk_darwin(v53);
  v503 = &v455 - v55;
  v528 = sub_1053E0();
  v527 = *(v528 - 8);
  v56 = __chkstk_darwin(v528);
  v513 = &v455 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v524 = &v455 - v58;
  v533 = sub_105E80();
  v532 = *(v533 - 8);
  v59 = __chkstk_darwin(v533);
  v521 = &v455 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v531 = &v455 - v61;
  v540 = sub_104E70();
  v543 = *(v540 - 8);
  __chkstk_darwin(v540);
  v516 = &v455 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v538 = sub_25E4(&unk_1383D0, &qword_107DF8);
  __chkstk_darwin(v538);
  v547 = &v455 - v63;
  v64 = sub_25E4(&unk_1374B0, &unk_108C70);
  v65 = __chkstk_darwin(v64 - 8);
  v523 = &v455 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v542 = &v455 - v68;
  __chkstk_darwin(v67);
  v548 = &v455 - v69;
  v553 = sub_106450();
  v551 = *(v553 - 8);
  v70 = __chkstk_darwin(v553);
  v479 = &v455 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __chkstk_darwin(v70);
  v480 = &v455 - v73;
  v74 = __chkstk_darwin(v72);
  v470 = &v455 - v75;
  v76 = __chkstk_darwin(v74);
  v471 = &v455 - v77;
  v78 = __chkstk_darwin(v76);
  v504 = &v455 - v79;
  v80 = __chkstk_darwin(v78);
  v505 = &v455 - v81;
  __chkstk_darwin(v80);
  v544 = &v455 - v82;
  v83 = sub_25E4(&unk_1383E0, &qword_107E00);
  v84 = __chkstk_darwin(v83);
  v519 = &v455 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __chkstk_darwin(v84);
  v546 = &v455 - v87;
  v88 = __chkstk_darwin(v86);
  v90 = &v455 - v89;
  __chkstk_darwin(v88);
  v92 = &v455 - v91;
  v93 = sub_25E4(&unk_1374C0, &unk_1087B0);
  v94 = __chkstk_darwin(v93 - 8);
  v483 = &v455 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __chkstk_darwin(v94);
  v477 = &v455 - v97;
  v98 = __chkstk_darwin(v96);
  v511 = &v455 - v99;
  v100 = __chkstk_darwin(v98);
  v515 = &v455 - v101;
  v102 = __chkstk_darwin(v100);
  v518 = &v455 - v103;
  v104 = __chkstk_darwin(v102);
  v530 = &v455 - v105;
  v106 = __chkstk_darwin(v104);
  v549 = &v455 - v107;
  v108 = __chkstk_darwin(v106);
  v529 = &v455 - v109;
  v110 = __chkstk_darwin(v108);
  v545 = &v455 - v111;
  v112 = __chkstk_darwin(v110);
  v114 = &v455 - v113;
  __chkstk_darwin(v112);
  v116 = &v455 - v115;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v117 = sub_106D20();
  v541 = sub_135C4(v117, qword_137440);
  v118 = sub_106D10();
  v119 = sub_106FA0();
  v120 = os_log_type_enabled(v118, v119);
  v467 = v31;
  v473 = v21;
  v525 = v7;
  if (v120)
  {
    v121 = swift_slowAlloc();
    v522 = v83;
    v122 = v121;
    v123 = swift_slowAlloc();
    *&v557 = v123;
    *v122 = 136315138;
    v555 = sub_106800();
    sub_25E4(&qword_138430, &qword_108CB8);
    v124 = sub_106E30();
    v126 = v114;
    v127 = v90;
    v128 = sub_722E8(v124, v125, &v557);

    *(v122 + 4) = v128;
    v90 = v127;
    v114 = v126;
    _os_log_impl(&dword_0, v118, v119, "AlarmFlowUtils.decideActionForInput with intent type: %s", v122, 0xCu);
    sub_2738(v123);

    v83 = v522;
  }

  v129 = sub_13AA4(v554);
  v130 = v553;
  if ((v129 & 1) == 0)
  {
    goto LABEL_60;
  }

  v131 = v551;
  v132 = *(v551 + 104);
  v457 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v535 = v551 + 104;
  v534 = v132;
  v132(v116);
  v133 = *(v131 + 56);
  v537 = v131 + 56;
  v536 = v133;
  v133(v116, 0, 1, v130);
  v134 = *(v83 + 48);
  sub_14994(v552, v92, &unk_1374C0, &unk_1087B0);
  sub_14994(v116, &v92[v134], &unk_1374C0, &unk_1087B0);
  v136 = v131 + 48;
  v135 = *(v131 + 48);
  v137 = v135(v92, 1, v130);
  v539 = v135;
  if (v137 == 1)
  {
    sub_16F70(v116, &unk_1374C0, &unk_1087B0);
    v138 = v135(&v92[v134], 1, v130);
    v139 = v549;
    if (v138 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  sub_14994(v92, v114, &unk_1374C0, &unk_1087B0);
  if (v135(&v92[v134], 1, v130) == 1)
  {
    sub_16F70(v116, &unk_1374C0, &unk_1087B0);
    (*(v551 + 8))(v114, v130);
    v139 = v549;
LABEL_11:
    sub_16F70(v92, &unk_1383E0, &qword_107E00);
    goto LABEL_12;
  }

  v154 = v551;
  v155 = &v92[v134];
  v156 = v544;
  (*(v551 + 32))(v544, v155, v130);
  sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v157 = sub_106E00();
  v158 = v154;
  v159 = v83;
  v160 = v90;
  v161 = *(v158 + 8);
  v161(v156, v553);
  sub_16F70(v116, &unk_1374C0, &unk_1087B0);
  v161(v114, v553);
  v90 = v160;
  v130 = v553;
  v83 = v159;
  sub_16F70(v92, &unk_1374C0, &unk_1087B0);
  v139 = v549;
  if (v157)
  {
    goto LABEL_30;
  }

LABEL_12:
  v140 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v534(v139, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v130);
  v536(v139, 0, 1, v130);
  v141 = *(v83 + 48);
  v142 = v546;
  sub_14994(v552, v546, &unk_1374C0, &unk_1087B0);
  sub_14994(v139, v142 + v141, &unk_1374C0, &unk_1087B0);
  v143 = v539;
  if (v539(v142, 1, v130) == 1)
  {
    sub_16F70(v139, &unk_1374C0, &unk_1087B0);
    if (v143(v142 + v141, 1, v130) == 1)
    {
      v92 = v142;
LABEL_15:
      sub_16F70(v92, &unk_1374C0, &unk_1087B0);
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  v144 = v530;
  sub_14994(v142, v530, &unk_1374C0, &unk_1087B0);
  if (v143(v142 + v141, 1, v130) == 1)
  {
    sub_16F70(v549, &unk_1374C0, &unk_1087B0);
    (*(v551 + 8))(v144, v130);
LABEL_18:
    v456 = v140;
    sub_16F70(v142, &unk_1383E0, &qword_107E00);
    v145 = v540;
    goto LABEL_19;
  }

  v456 = v140;
  v458 = v136;
  v169 = v551;
  v170 = v544;
  (*(v551 + 32))(v544, v142 + v141, v130);
  sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v171 = sub_106E00();
  v172 = *(v169 + 8);
  v172(v170, v130);
  sub_16F70(v549, &unk_1374C0, &unk_1087B0);
  v172(v144, v130);
  v136 = v458;
  v145 = v540;
  sub_16F70(v142, &unk_1374C0, &unk_1087B0);
  if (v171)
  {
LABEL_30:
    v173 = v545;
    v534(v545, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v130);
    v536(v173, 0, 1, v130);
    v174 = *(v83 + 48);
    sub_14994(v552, v90, &unk_1374C0, &unk_1087B0);
    sub_14994(v173, &v90[v174], &unk_1374C0, &unk_1087B0);
    v175 = v539;
    if (v539(v90, 1, v130) == 1)
    {
      sub_16F70(v173, &unk_1374C0, &unk_1087B0);
      if (v175(&v90[v174], 1, v130) == 1)
      {
        sub_16F70(v90, &unk_1374C0, &unk_1087B0);
        v176 = 1;
LABEL_37:
        sub_A570(v554, v176 & 1, v550);
        return;
      }
    }

    else
    {
      v177 = v529;
      sub_14994(v90, v529, &unk_1374C0, &unk_1087B0);
      if (v175(&v90[v174], 1, v130) != 1)
      {
        v178 = v551;
        v179 = &v90[v174];
        v180 = v544;
        (*(v551 + 32))(v544, v179, v130);
        sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v176 = sub_106E00();
        v181 = *(v178 + 8);
        v181(v180, v130);
        sub_16F70(v173, &unk_1374C0, &unk_1087B0);
        v181(v177, v130);
        sub_16F70(v90, &unk_1374C0, &unk_1087B0);
        goto LABEL_37;
      }

      sub_16F70(v173, &unk_1374C0, &unk_1087B0);
      (*(v551 + 8))(v177, v130);
    }

    sub_16F70(v90, &unk_1383E0, &qword_107E00);
    v176 = 0;
    goto LABEL_37;
  }

LABEL_19:
  v458 = v136;
  v146 = v548;
  sub_99E8(v548);
  v147 = v542;
  sub_104E40();
  v148 = v543;
  (*(v543 + 56))(v147, 0, 1, v145);
  v149 = *(v538 + 48);
  v150 = v146;
  v151 = v547;
  sub_14994(v150, v547, &unk_1374B0, &unk_108C70);
  sub_14994(v147, v151 + v149, &unk_1374B0, &unk_108C70);
  v152 = *(v148 + 48);
  if (v152(v151, 1, v145) == 1)
  {
    sub_16F70(v147, &unk_1374B0, &unk_108C70);
    v153 = v547;
    sub_16F70(v548, &unk_1374B0, &unk_108C70);
    if (v152(v153 + v149, 1, v145) == 1)
    {
      sub_16F70(v153, &unk_1374B0, &unk_108C70);
      goto LABEL_47;
    }
  }

  else
  {
    v162 = v523;
    sub_14994(v151, v523, &unk_1374B0, &unk_108C70);
    if (v152(v151 + v149, 1, v145) != 1)
    {
      v198 = v543;
      v199 = v151 + v149;
      v200 = v516;
      (*(v543 + 32))(v516, v199, v145);
      sub_4CD70(&qword_1374E8, 255, &type metadata accessor for ActionForInput, &protocol conformance descriptor for ActionForInput);
      v522 = v83;
      v201 = sub_106E00();
      v202 = *(v198 + 8);
      v202(v200, v145);
      sub_16F70(v542, &unk_1374B0, &unk_108C70);
      sub_16F70(v548, &unk_1374B0, &unk_108C70);
      v83 = v522;
      v202(v162, v145);
      sub_16F70(v151, &unk_1374B0, &unk_108C70);
      v163 = v525;
      v164 = v526;
      if (v201)
      {
LABEL_47:
        v203 = v518;
        v534(v518, enum case for DecideAction.PromptExpectation.slot(_:), v130);
        v536(v203, 0, 1, v130);
        v204 = *(v83 + 48);
        v205 = v519;
        sub_14994(v552, v519, &unk_1374C0, &unk_1087B0);
        sub_14994(v203, v205 + v204, &unk_1374C0, &unk_1087B0);
        v206 = v539;
        if (v539(v205, 1, v130) == 1)
        {
          sub_16F70(v203, &unk_1374C0, &unk_1087B0);
          if (v206(v205 + v204, 1, v130) == 1)
          {
            sub_16F70(v205, &unk_1374C0, &unk_1087B0);
LABEL_75:
            v246 = sub_106D10();
            v247 = sub_106FC0();
            if (os_log_type_enabled(v246, v247))
            {
              v248 = swift_slowAlloc();
              *v248 = 0;
              _os_log_impl(&dword_0, v246, v247, "Received cancel input slow prompt input – .cancel()", v248, 2u);
            }

            sub_104E40();
            return;
          }
        }

        else
        {
          v211 = v515;
          sub_14994(v205, v515, &unk_1374C0, &unk_1087B0);
          if (v206(v205 + v204, 1, v130) != 1)
          {
            v241 = v551;
            v242 = v205 + v204;
            v243 = v544;
            (*(v551 + 32))(v544, v242, v130);
            sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
            v244 = sub_106E00();
            v245 = *(v241 + 8);
            v245(v243, v130);
            sub_16F70(v203, &unk_1374C0, &unk_1087B0);
            v245(v211, v130);
            sub_16F70(v205, &unk_1374C0, &unk_1087B0);
            if (v244)
            {
              goto LABEL_75;
            }

            goto LABEL_57;
          }

          sub_16F70(v203, &unk_1374C0, &unk_1087B0);
          (*(v551 + 8))(v211, v130);
        }

        sub_16F70(v205, &unk_1383E0, &qword_107E00);
LABEL_57:
        v212 = sub_106D10();
        v213 = sub_106FC0();
        if (os_log_type_enabled(v212, v213))
        {
          v214 = swift_slowAlloc();
          *v214 = 0;
          _os_log_impl(&dword_0, v212, v213, "Received cancel input on non-confirmation, non-slot prompt input – .ignore()", v214, 2u);
        }

LABEL_60:
        sub_104E60();
        return;
      }

      goto LABEL_27;
    }

    sub_16F70(v542, &unk_1374B0, &unk_108C70);
    v153 = v547;
    sub_16F70(v548, &unk_1374B0, &unk_108C70);
    (*(v543 + 8))(v162, v145);
  }

  sub_16F70(v153, &unk_1383D0, &qword_107DF8);
  v163 = v525;
  v164 = v526;
LABEL_27:
  v165 = v524;
  sub_105360();
  v166 = v527;
  v167 = v528;
  v168 = (*(v527 + 88))(v165, v528);
  if (v168 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v166 + 96))(v165, v167);
LABEL_40:
    v182 = v532;
    v183 = v531;
    v184 = v533;
    (*(v532 + 32))(v531, v165, v533);
    v185 = v521;
    (*(v182 + 16))(v521, v183, v184);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    v186 = sub_B3800(v185);

    v187 = sub_106D10();
    v188 = sub_106FC0();

    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      *&v557 = v190;
      *v189 = 136315138;
      v555 = v186;
      sub_4CD70(&qword_137480, 255, type metadata accessor for AlarmNLIntent, &unk_10A860);
      v191 = sub_105620();
      v193 = sub_722E8(v191, v192, &v557);

      *(v189 + 4) = v193;
      _os_log_impl(&dword_0, v187, v188, "alarmNLIntent: %s", v189, 0xCu);
      sub_2738(v190);
      v130 = v553;
    }

    v194 = sub_B372C();
    if ((v194 - 1) < 2)
    {
      (*(v532 + 8))(v531, v533);
      v195 = sub_106D10();
      v196 = sub_106FC0();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        *v197 = 0;
        _os_log_impl(&dword_0, v195, v196, "User cancel the alarm request.", v197, 2u);
      }

      sub_104E40();
      goto LABEL_89;
    }

    if (v194)
    {
      (*(v532 + 8))(v531, v533);
      v235 = v513;
      sub_105360();
      v236 = sub_579C(v235, v512);
      (*(v527 + 8))(v235, v528);
      if (v236)
      {
        sub_106800();
        v237 = swift_dynamicCastClass();

        if (v237)
        {
          v238 = sub_106D10();
          v239 = sub_106FC0();
          if (os_log_type_enabled(v238, v239))
          {
            v240 = swift_slowAlloc();
            *v240 = 0;
            _os_log_impl(&dword_0, v238, v239, "Request was not cancelled by user. Proceed.", v240, 2u);
          }

          sub_104E50();
          goto LABEL_89;
        }
      }

      v208 = sub_106D10();
      v253 = sub_106FB0();
      if (!os_log_type_enabled(v208, v253))
      {
        goto LABEL_88;
      }

      v254 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      *&v557 = v255;
      *v254 = 136315138;
      *(v254 + 4) = sub_722E8(0xD000000000000011, 0x800000000010CC40, &v557);
      _os_log_impl(&dword_0, v208, v253, "Flows stack receives unexpected intent type. Expecting: %s", v254, 0xCu);
      sub_2738(v255);

      goto LABEL_87;
    }

    v207 = v511;
    sub_14994(v552, v511, &unk_1374C0, &unk_1087B0);
    if (v539(v207, 1, v130) == 1)
    {
      (*(v532 + 8))(v531, v533);
      sub_16F70(v207, &unk_1374C0, &unk_1087B0);
      v208 = sub_106D10();
      v209 = sub_106FC0();
      if (!os_log_type_enabled(v208, v209))
      {
LABEL_88:

        sub_104E60();
LABEL_89:

        return;
      }

      v210 = swift_slowAlloc();
      *v210 = 0;
      _os_log_impl(&dword_0, v208, v209, "User returned accepted for non-prompt input. Ignoring.", v210, 2u);
LABEL_87:

      goto LABEL_88;
    }

    v256 = v551;
    v257 = v505;
    (*(v551 + 32))(v505, v207, v130);
    v258 = v504;
    (*(v256 + 16))(v504, v257, v130);
    v259 = (*(v256 + 88))(v258, v130);
    if (v259 == v457)
    {
      goto LABEL_114;
    }

    if (v259 == enum case for DecideAction.PromptExpectation.slot(_:))
    {
      (*(v532 + 8))(v531, v533);
      v260 = sub_106D10();
      v261 = sub_106FC0();
      if (os_log_type_enabled(v260, v261))
      {
        v262 = swift_slowAlloc();
        *v262 = 0;
        _os_log_impl(&dword_0, v260, v261, "User returned accepted for non-binary input. Ignoring.", v262, 2u);
      }

      sub_104E60();
LABEL_117:

LABEL_118:
      (*(v551 + 8))(v257, v130);
      return;
    }

    if (v259 == v456)
    {
LABEL_114:
      (*(v532 + 8))(v531, v533);
      v295 = sub_106D10();
      v296 = sub_106FC0();
      if (os_log_type_enabled(v295, v296))
      {
        v297 = swift_slowAlloc();
        *v297 = 0;
        _os_log_impl(&dword_0, v295, v296, "User accepted the task, will handle.", v297, 2u);
      }

      sub_104E50();
      goto LABEL_117;
    }

LABEL_223:
    sub_107360();
    __break(1u);
    goto LABEL_224;
  }

  if (v168 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v166 + 96))(v165, v167);
    sub_25E4(&qword_13B010, &unk_1087A0);

    goto LABEL_40;
  }

  if (v168 == enum case for Parse.directInvocation(_:))
  {
    (*(v166 + 96))(v165, v167);
    v215 = v509;
    v216 = v510;
    (*(v514 + 32))(v509, v165, v510);
    v217 = v506;
    sub_106580();
    v218 = v507;
    v219 = v508;
    if ((*(v507 + 48))(v217, 1, v508) == 1)
    {
      sub_16F70(v217, &unk_137460, &unk_108C60);
      goto LABEL_64;
    }

    v263 = v501;
    (*(v218 + 32))(v501, v217, v219);
    v264 = v500;
    (*(v218 + 16))(v500, v263, v219);
    v265 = (*(v218 + 88))(v264, v219);
    if (v265 == enum case for ConfirmationResponse.confirmed(_:))
    {
      sub_104E50();
    }

    else
    {
      if (v265 != enum case for ConfirmationResponse.rejected(_:))
      {
        v307 = *(v218 + 8);
        v307(v263, v219);
        v307(v264, v219);
LABEL_64:
        v220 = sub_1053B0();
        if (v220)
        {
          v221 = v220;
          v222 = v495;
          v223 = v494;
          v224 = v496;
          (*(v495 + 104))(v494, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v496);
          v225 = sub_106590();
          v227 = v226;
          (*(v222 + 8))(v223, v224);
          sub_2B430(v225, v227, v221, &v557);

          if (!v558)
          {
            v232 = &qword_137490;
            v233 = qword_108C80;
            v234 = &v557;
LABEL_120:
            sub_16F70(v234, v232, v233);
            goto LABEL_121;
          }

          if (swift_dynamicCast())
          {
            v229 = v555;
            v228 = v556;

            sub_106420();
            v230 = v490;
            v231 = v491;
            if ((*(v490 + 48))(v163, 1, v491) != 1)
            {
              (*(v230 + 32))(v484, v163, v231);

              v325 = sub_106D10();
              v326 = sub_106FC0();

              if (os_log_type_enabled(v325, v326))
              {
                v327 = swift_slowAlloc();
                v328 = swift_slowAlloc();
                *&v557 = v328;
                *v327 = 136315138;
                v329 = sub_722E8(v229, v228, &v557);

                *(v327 + 4) = v329;
                _os_log_impl(&dword_0, v325, v326, "Received confirmation directInvocation, buttonPressed: %s", v327, 0xCu);
                sub_2738(v328);
              }

              else
              {
              }

              v345 = v490;
              v346 = v481;
              v347 = v491;
              (*(v490 + 104))(v481, enum case for ButtonOption.yes(_:), v491);
              v348 = v484;
              v349 = sub_34350();
              v350 = *(v345 + 8);
              v350(v346, v347);
              v351 = (v514 + 8);
              if (v349)
              {
                sub_104E50();
              }

              else
              {
                sub_104E40();
              }

              v350(v348, v347);
              (*v351)(v215, v216);
              return;
            }

            v232 = &unk_1383C0;
            v233 = &qword_107DF0;
            v234 = v163;
            goto LABEL_120;
          }
        }

LABEL_121:
        v298 = sub_106D10();
        v299 = sub_106FC0();
        if (os_log_type_enabled(v298, v299))
        {
          v300 = swift_slowAlloc();
          *v300 = 0;
          _os_log_impl(&dword_0, v298, v299, "Request was not cancelled by user. Proceed.", v300, 2u);
        }

        sub_104E50();
        goto LABEL_124;
      }

      sub_104E40();
    }

    (*(v218 + 8))(v263, v219);
LABEL_124:
    (*(v514 + 8))(v215, v216);
    return;
  }

  if (v168 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v166 + 96))(v165, v167);
    v249 = *v165;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v250 = sub_106D10();
      v251 = sub_106FC0();
      if (os_log_type_enabled(v250, v251))
      {
        v252 = swift_slowAlloc();
        *v252 = 0;
        _os_log_impl(&dword_0, v250, v251, "User cancelled the task.", v252, 2u);
      }

      sub_104E40();
      goto LABEL_84;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v321 = v477;
      sub_14994(v552, v477, &unk_1374C0, &unk_1087B0);
      if (v539(v321, 1, v130) == 1)
      {
        sub_16F70(v321, &unk_1374C0, &unk_1087B0);
        v322 = sub_106D10();
        v323 = sub_106FC0();
        if (os_log_type_enabled(v322, v323))
        {
          v324 = swift_slowAlloc();
          *v324 = 0;
          _os_log_impl(&dword_0, v322, v323, "User returned accepted for non-prompt input. Ignoring.", v324, 2u);
        }

        goto LABEL_215;
      }

      v353 = v551;
      v257 = v471;
      (*(v551 + 32))(v471, v321, v130);
      v354 = v470;
      (*(v353 + 16))(v470, v257, v130);
      v355 = (*(v353 + 88))(v354, v130);
      if (v355 != v457)
      {
        if (v355 == enum case for DecideAction.PromptExpectation.slot(_:))
        {
          v356 = sub_106D10();
          v357 = sub_106FC0();
          if (os_log_type_enabled(v356, v357))
          {
            v358 = swift_slowAlloc();
            *v358 = 0;
            _os_log_impl(&dword_0, v356, v357, "User returned accepted for non-binary input. Ignoring.", v358, 2u);
          }

          sub_104E60();
LABEL_193:
          swift_unknownObjectRelease();
          goto LABEL_118;
        }

        if (v355 != v456)
        {
          goto LABEL_223;
        }
      }

      v401 = sub_106D10();
      v402 = sub_106FC0();
      if (os_log_type_enabled(v401, v402))
      {
        v403 = swift_slowAlloc();
        *v403 = 0;
        _os_log_impl(&dword_0, v401, v402, "User accepted the task, will handle.", v403, 2u);
      }

      sub_104E50();
      goto LABEL_193;
    }

    if ((v482 & 1) == 0)
    {
LABEL_208:
      v425 = v513;
      sub_105360();
      v426 = sub_579C(v425, v512);
      (*(v527 + 8))(v425, v528);
      if (!v426 || (sub_106800(), v427 = swift_dynamicCastClass(), v426, !v427))
      {
        v436 = v488;
        v437 = v464;
        v438 = v489;
        (*(v488 + 16))(v464, v554, v489);
        v439 = sub_106D10();
        v440 = sub_106FB0();
        if (os_log_type_enabled(v439, v440))
        {
          v441 = swift_slowAlloc();
          *&v557 = swift_slowAlloc();
          *v441 = 136315394;
          *(v441 + 4) = sub_722E8(0xD000000000000011, 0x800000000010CC40, &v557);
          *(v441 + 12) = 2080;
          sub_4CD70(&unk_1374D0, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
          v442 = sub_107340();
          v443 = v437;
          v445 = v444;
          (*(v436 + 8))(v443, v438);
          v446 = sub_722E8(v442, v445, &v557);

          *(v441 + 14) = v446;
          _os_log_impl(&dword_0, v439, v440, "Intent from parse does not match IntentType. Expected %s, received %s", v441, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v436 + 8))(v437, v438);
        }

LABEL_215:
        sub_104E60();
LABEL_84:
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRetain();
      v428 = sub_106D10();
      v429 = sub_106FC0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v428, v429))
      {
        v430 = swift_slowAlloc();
        v431 = swift_slowAlloc();
        *&v557 = v431;
        *v430 = 136315138;
        v555 = v249;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v432 = sub_106E30();
        v434 = sub_722E8(v432, v433, &v557);

        *(v430 + 4) = v434;
        v435 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_219:
        _os_log_impl(&dword_0, v428, v429, v435, v430, 0xCu);
        sub_2738(v431);

        goto LABEL_220;
      }

      goto LABEL_220;
    }

    swift_getObjectType();
    if (sub_107000())
    {
      sub_274CC(v164);

      v352 = 0;
    }

    else
    {
      v352 = 1;
    }

    v414 = v475;
    v415 = v478;
    v416 = *(v478 + 56);
    v416(v164, v352, 1, v475);
    v417 = v472;
    (*(v415 + 104))(v472, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v414);
    v416(v417, 0, 1, v414);
    v418 = *(v474 + 48);
    v419 = v164;
    v420 = v466;
    sub_14994(v419, v466, &unk_1374A0, &qword_10BB30);
    sub_14994(v417, v420 + v418, &unk_1374A0, &qword_10BB30);
    v421 = *(v415 + 48);
    if (v421(v420, 1, v414) == 1)
    {
      sub_16F70(v472, &unk_1374A0, &qword_10BB30);
      sub_16F70(v526, &unk_1374A0, &qword_10BB30);
      v422 = v421(v420 + v418, 1, v414) == 1;
      v423 = v420;
      if (!v422)
      {
        goto LABEL_207;
      }

      sub_16F70(v420, &unk_1374A0, &qword_10BB30);
    }

    else
    {
      v424 = v459;
      sub_14994(v420, v459, &unk_1374A0, &qword_10BB30);
      if (v421(v420 + v418, 1, v414) == 1)
      {
        sub_16F70(v472, &unk_1374A0, &qword_10BB30);
        sub_16F70(v526, &unk_1374A0, &qword_10BB30);
        (*(v478 + 8))(v424, v414);
        v423 = v466;
LABEL_207:
        sub_16F70(v423, &qword_137498, &unk_108C50);
        goto LABEL_208;
      }

      v447 = v478;
      v448 = v466;
      v449 = v461;
      (*(v478 + 32))(v461, v466 + v418, v414);
      sub_4CD70(&qword_138400, 255, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
      v450 = sub_106E00();
      v451 = *(v447 + 8);
      v451(v449, v414);
      sub_16F70(v472, &unk_1374A0, &qword_10BB30);
      sub_16F70(v526, &unk_1374A0, &qword_10BB30);
      v451(v424, v414);
      sub_16F70(v448, &unk_1374A0, &qword_10BB30);
      if ((v450 & 1) == 0)
      {
        goto LABEL_208;
      }
    }

    swift_unknownObjectRetain();
    v428 = sub_106D10();
    v429 = sub_106FC0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v428, v429))
    {
      v430 = swift_slowAlloc();
      v431 = swift_slowAlloc();
      *&v557 = v431;
      *v430 = 136315138;
      v555 = v249;
      swift_unknownObjectRetain();
      sub_25E4(&unk_137470, &unk_10BC40);
      v452 = sub_106E30();
      v454 = sub_722E8(v452, v453, &v557);

      *(v430 + 4) = v454;
      v435 = "decideActionForInput decide handle disambiguation userDialogAct: %s";
      goto LABEL_219;
    }

LABEL_220:

    sub_104E50();
    goto LABEL_84;
  }

  if (v168 != enum case for Parse.uso(_:))
  {
    if (v168 == enum case for Parse.ifClientAction(_:))
    {
      v283 = *(v166 + 8);
      v283(v165, v167);
      v284 = v513;
      sub_105360();
      v285 = sub_579C(v284, v512);
      v283(v284, v167);
      v286 = v285;
      v287 = sub_106D10();
      v288 = sub_106FC0();

      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        v290 = swift_slowAlloc();
        *&v557 = v290;
        *v289 = 136315138;
        v555 = v285;
        v291 = v286;
        sub_25E4(&unk_1383F0, &qword_107E08);
        v292 = sub_106E30();
        v294 = sub_722E8(v292, v293, &v557);

        *(v289 + 4) = v294;
        _os_log_impl(&dword_0, v287, v288, "Handling ifClientAction for intent: %s", v289, 0xCu);
        sub_2738(v290);
      }

      sub_104E50();
    }

    else
    {
      v308 = v488;
      v309 = v485;
      v310 = v489;
      (*(v488 + 16))(v485, v554, v489);
      v311 = sub_106D10();
      v312 = sub_106FB0();
      if (os_log_type_enabled(v311, v312))
      {
        v313 = v309;
        v314 = swift_slowAlloc();
        v315 = swift_slowAlloc();
        *&v557 = v315;
        *v314 = 136315138;
        sub_105360();
        v316 = v528;
        v317 = sub_106E30();
        v319 = v318;
        (*(v308 + 8))(v313, v310);
        v320 = sub_722E8(v317, v319, &v557);

        *(v314 + 4) = v320;
        _os_log_impl(&dword_0, v311, v312, "Received an unsupported parse: %s", v314, 0xCu);
        sub_2738(v315);
      }

      else
      {

        (*(v308 + 8))(v309, v310);
        v316 = v528;
      }

      sub_104E60();
      (*(v527 + 8))(v524, v316);
    }

    return;
  }

  (*(v166 + 96))(v165, v167);
  (*(v499 + 32))(v503, v165, v498);
  v266 = v492;
  sub_105400();
  v267 = sub_105450();
  v268 = *(v502 + 8);
  v502 += 8;
  v268(v266, v497);
  v269 = 0;
  v270 = *(v267 + 16);
  v271 = (v520 + 8);
  v272 = v493;
  v273 = v520;
  while (v270 != v269)
  {
    if (v269 >= *(v267 + 16))
    {
      __break(1u);
LABEL_222:
      __break(1u);
      goto LABEL_223;
    }

    v274 = v517;
    (*(v273 + 16))(v517, v267 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + *(v273 + 72) * v269++, v272);
    v275 = sub_1054C0();
    (*(v273 + 8))(v274, v272);
    if (v275)
    {

      v276 = v483;
      sub_14994(v552, v483, &unk_1374C0, &unk_1087B0);
      v277 = v553;
      if (v539(v276, 1, v553) == 1)
      {
        sub_16F70(v276, &unk_1374C0, &unk_1087B0);
        v278 = sub_106D10();
        v279 = sub_106FC0();
        v280 = os_log_type_enabled(v278, v279);
        v281 = v499;
        if (v280)
        {
          v282 = swift_slowAlloc();
          *v282 = 0;
          _os_log_impl(&dword_0, v278, v279, "User returned accepted for non-prompt input. Ignoring.", v282, 2u);
        }

        sub_104E60();
        goto LABEL_173;
      }

      v330 = v551;
      v331 = v480;
      (*(v551 + 32))(v480, v276, v277);
      v332 = v479;
      (*(v330 + 16))(v479, v331, v277);
      v333 = (*(v330 + 88))(v332, v277);
      v281 = v499;
      if (v333 == v457)
      {
        goto LABEL_169;
      }

      if (v333 == enum case for DecideAction.PromptExpectation.slot(_:))
      {
        v334 = sub_106D10();
        v335 = sub_106FC0();
        if (os_log_type_enabled(v334, v335))
        {
          v336 = swift_slowAlloc();
          *v336 = 0;
          _os_log_impl(&dword_0, v334, v335, "User returned accepted for non-binary input. Ignoring.", v336, 2u);
        }

        sub_104E60();
LABEL_172:
        (*(v551 + 8))(v331, v277);
LABEL_173:
        (*(v281 + 8))(v503, v498);
        return;
      }

      if (v333 == v456)
      {
LABEL_169:
        v359 = sub_106D10();
        v360 = sub_106FC0();
        if (os_log_type_enabled(v359, v360))
        {
          v361 = swift_slowAlloc();
          *v361 = 0;
          _os_log_impl(&dword_0, v359, v360, "User accepted the task, will handle.", v361, 2u);
        }

        sub_104E50();
        goto LABEL_172;
      }

LABEL_224:
      sub_107360();
      __break(1u);
      return;
    }
  }

  v301 = v486;
  sub_105400();
  v302 = sub_105450();
  v268(v301, v497);
  v303 = 0;
  v304 = *(v302 + 16);
  v305 = v487;
  while (1)
  {
    if (v304 == v303)
    {

      if (v482)
      {
        v337 = v468;
        sub_105400();
        v338 = sub_105440();
        v268(v337, v497);
        if (v338)
        {
          v339 = v469;
          sub_274CC(v469);

          v340 = 0;
          v341 = v474;
        }

        else
        {
          v340 = 1;
          v341 = v474;
          v339 = v469;
        }

        v362 = v478;
        v363 = *(v478 + 56);
        v364 = v475;
        v363(v339, v340, 1, v475);
        v365 = v473;
        (*(v362 + 104))(v473, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v364);
        v363(v365, 0, 1, v364);
        v366 = *(v341 + 48);
        v367 = v476;
        sub_14994(v339, v476, &unk_1374A0, &qword_10BB30);
        v368 = v367;
        sub_14994(v365, v367 + v366, &unk_1374A0, &qword_10BB30);
        v369 = *(v362 + 48);
        if (v369(v368, 1, v364) == 1)
        {
          sub_16F70(v365, &unk_1374A0, &qword_10BB30);
          v370 = v476;
          sub_16F70(v339, &unk_1374A0, &qword_10BB30);
          if (v369(v370 + v366, 1, v364) == 1)
          {
            sub_16F70(v370, &unk_1374A0, &qword_10BB30);
            goto LABEL_195;
          }

          goto LABEL_180;
        }

        v371 = v462;
        sub_14994(v368, v462, &unk_1374A0, &qword_10BB30);
        if (v369(v368 + v366, 1, v364) == 1)
        {
          sub_16F70(v473, &unk_1374A0, &qword_10BB30);
          v370 = v476;
          sub_16F70(v339, &unk_1374A0, &qword_10BB30);
          (*(v478 + 8))(v371, v364);
LABEL_180:
          sub_16F70(v370, &qword_137498, &unk_108C50);
          goto LABEL_181;
        }

        v404 = v478;
        v405 = v368 + v366;
        v406 = v461;
        (*(v478 + 32))(v461, v405, v364);
        sub_4CD70(&qword_138400, 255, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
        v407 = sub_106E00();
        v408 = *(v404 + 8);
        v408(v406, v364);
        sub_16F70(v473, &unk_1374A0, &qword_10BB30);
        sub_16F70(v339, &unk_1374A0, &qword_10BB30);
        v408(v371, v364);
        sub_16F70(v368, &unk_1374A0, &qword_10BB30);
        if (v407)
        {
LABEL_195:
          v375 = v499;
          v409 = *(v499 + 16);
          v377 = v460;
          v378 = v498;
          v409(v460, v503, v498);
          v379 = sub_106D10();
          v380 = sub_106FC0();
          if (os_log_type_enabled(v379, v380))
          {
            v381 = swift_slowAlloc();
            v382 = swift_slowAlloc();
            *&v557 = v382;
            *v381 = 136315138;
            v409(v463, v377, v378);
            v410 = sub_106E30();
            v412 = v411;
            v386 = *(v375 + 8);
            v386(v377, v378);
            v413 = sub_722E8(v410, v412, &v557);

            *(v381 + 4) = v413;
            v388 = "decideActionForInput decide handle disambiguation UsoParse: %s";
            goto LABEL_197;
          }

          goto LABEL_198;
        }
      }

LABEL_181:
      v372 = v513;
      sub_105360();
      v373 = sub_579C(v372, v512);
      (*(v527 + 8))(v372, v528);
      if (!v373 || (sub_106800(), v374 = swift_dynamicCastClass(), v373, !v374))
      {
        v389 = v488;
        v390 = v467;
        v391 = v489;
        (*(v488 + 16))(v467, v554, v489);
        v392 = sub_106D10();
        v393 = sub_106FB0();
        if (os_log_type_enabled(v392, v393))
        {
          v394 = v390;
          v395 = swift_slowAlloc();
          *&v557 = swift_slowAlloc();
          *v395 = 136315394;
          *(v395 + 4) = sub_722E8(0xD000000000000011, 0x800000000010CC40, &v557);
          *(v395 + 12) = 2080;
          sub_4CD70(&unk_1374D0, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
          v396 = sub_107340();
          v398 = v397;
          (*(v389 + 8))(v394, v391);
          v399 = sub_722E8(v396, v398, &v557);

          *(v395 + 14) = v399;
          _os_log_impl(&dword_0, v392, v393, "Intent from parse does not match IntentType. Expected %s, received %s", v395, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v389 + 8))(v390, v391);
        }

        v400 = v498;
        sub_104E60();
        (*(v499 + 8))(v503, v400);
        return;
      }

      v375 = v499;
      v376 = *(v499 + 16);
      v377 = v465;
      v378 = v498;
      v376(v465, v503, v498);
      v379 = sub_106D10();
      v380 = sub_106FC0();
      if (os_log_type_enabled(v379, v380))
      {
        v381 = swift_slowAlloc();
        v382 = swift_slowAlloc();
        *&v557 = v382;
        *v381 = 136315138;
        v376(v463, v377, v378);
        v383 = sub_106E30();
        v385 = v384;
        v386 = *(v375 + 8);
        v386(v377, v378);
        v387 = sub_722E8(v383, v385, &v557);

        *(v381 + 4) = v387;
        v388 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_197:
        _os_log_impl(&dword_0, v379, v380, v388, v381, 0xCu);
        sub_2738(v382);

LABEL_199:
        sub_104E50();
        v386(v503, v378);
        return;
      }

LABEL_198:

      v386 = *(v375 + 8);
      v386(v377, v378);
      goto LABEL_199;
    }

    if (v303 >= *(v302 + 16))
    {
      goto LABEL_222;
    }

    (*(v520 + 16))(v305, v302 + ((*(v520 + 80) + 32) & ~*(v520 + 80)) + *(v520 + 72) * v303, v272);
    if (sub_1054D0())
    {
      break;
    }

    ++v303;
    v306 = sub_1054E0();
    (*v271)(v305, v272);
    if (v306)
    {
      goto LABEL_152;
    }
  }

  (*v271)(v305, v272);
LABEL_152:

  v342 = sub_106D10();
  v343 = sub_106FC0();
  if (os_log_type_enabled(v342, v343))
  {
    v344 = swift_slowAlloc();
    *v344 = 0;
    _os_log_impl(&dword_0, v342, v343, "User cancelled/rejected the task, will cancel the request.", v344, 2u);
  }

  sub_104E40();
  (*(v499 + 8))(v503, v498);
}

void sub_38E38(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v552 = a4;
  v482 = a3;
  v512 = a2;
  v554 = a1;
  v550 = a5;
  v5 = sub_25E4(&unk_1383C0, &qword_107DF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v455 - v6;
  v491 = sub_106440();
  v490 = *(v491 - 8);
  v8 = __chkstk_darwin(v491);
  v481 = &v455 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v484 = &v455 - v10;
  v496 = sub_1065A0();
  v495 = *(v496 - 8);
  __chkstk_darwin(v496);
  v494 = &v455 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = sub_106960();
  v478 = *(v475 - 8);
  __chkstk_darwin(v475);
  v461 = &v455 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v474 = sub_25E4(&qword_137498, &unk_108C50);
  v13 = __chkstk_darwin(v474);
  v476 = &v455 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v466 = &v455 - v15;
  v16 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v17 = __chkstk_darwin(v16 - 8);
  v462 = &v455 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v455 - v20;
  v22 = __chkstk_darwin(v19);
  v469 = &v455 - v23;
  v24 = __chkstk_darwin(v22);
  v459 = &v455 - v25;
  v26 = __chkstk_darwin(v24);
  v472 = &v455 - v27;
  __chkstk_darwin(v26);
  v526 = &v455 - v28;
  v489 = sub_105380();
  v488 = *(v489 - 8);
  v29 = __chkstk_darwin(v489);
  v31 = &v455 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v464 = &v455 - v33;
  __chkstk_darwin(v32);
  v485 = &v455 - v34;
  v35 = sub_25E4(&unk_137460, &unk_108C60);
  __chkstk_darwin(v35 - 8);
  v506 = &v455 - v36;
  v508 = sub_1050D0();
  v507 = *(v508 - 8);
  v37 = __chkstk_darwin(v508);
  v500 = &v455 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v501 = &v455 - v39;
  v510 = sub_1053C0();
  v514 = *(v510 - 8);
  __chkstk_darwin(v510);
  v509 = &v455 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = sub_105520();
  v520 = *(v493 - 8);
  v41 = __chkstk_darwin(v493);
  v487 = &v455 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v517 = &v455 - v43;
  v497 = sub_105460();
  v502 = *(v497 - 8);
  v44 = __chkstk_darwin(v497);
  v468 = &v455 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v486 = &v455 - v47;
  __chkstk_darwin(v46);
  v492 = &v455 - v48;
  v498 = sub_105410();
  v499 = *(v498 - 8);
  v49 = __chkstk_darwin(v498);
  v465 = &v455 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v463 = &v455 - v52;
  v53 = __chkstk_darwin(v51);
  v460 = &v455 - v54;
  __chkstk_darwin(v53);
  v503 = &v455 - v55;
  v528 = sub_1053E0();
  v527 = *(v528 - 8);
  v56 = __chkstk_darwin(v528);
  v513 = &v455 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v524 = &v455 - v58;
  v533 = sub_105E80();
  v532 = *(v533 - 8);
  v59 = __chkstk_darwin(v533);
  v521 = &v455 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v531 = &v455 - v61;
  v540 = sub_104E70();
  v543 = *(v540 - 8);
  __chkstk_darwin(v540);
  v516 = &v455 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v538 = sub_25E4(&unk_1383D0, &qword_107DF8);
  __chkstk_darwin(v538);
  v547 = &v455 - v63;
  v64 = sub_25E4(&unk_1374B0, &unk_108C70);
  v65 = __chkstk_darwin(v64 - 8);
  v523 = &v455 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v542 = &v455 - v68;
  __chkstk_darwin(v67);
  v548 = &v455 - v69;
  v553 = sub_106450();
  v551 = *(v553 - 8);
  v70 = __chkstk_darwin(v553);
  v479 = &v455 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __chkstk_darwin(v70);
  v480 = &v455 - v73;
  v74 = __chkstk_darwin(v72);
  v470 = &v455 - v75;
  v76 = __chkstk_darwin(v74);
  v471 = &v455 - v77;
  v78 = __chkstk_darwin(v76);
  v504 = &v455 - v79;
  v80 = __chkstk_darwin(v78);
  v505 = &v455 - v81;
  __chkstk_darwin(v80);
  v544 = &v455 - v82;
  v83 = sub_25E4(&unk_1383E0, &qword_107E00);
  v84 = __chkstk_darwin(v83);
  v519 = &v455 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __chkstk_darwin(v84);
  v546 = &v455 - v87;
  v88 = __chkstk_darwin(v86);
  v90 = &v455 - v89;
  __chkstk_darwin(v88);
  v92 = &v455 - v91;
  v93 = sub_25E4(&unk_1374C0, &unk_1087B0);
  v94 = __chkstk_darwin(v93 - 8);
  v483 = &v455 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __chkstk_darwin(v94);
  v477 = &v455 - v97;
  v98 = __chkstk_darwin(v96);
  v511 = &v455 - v99;
  v100 = __chkstk_darwin(v98);
  v515 = &v455 - v101;
  v102 = __chkstk_darwin(v100);
  v518 = &v455 - v103;
  v104 = __chkstk_darwin(v102);
  v530 = &v455 - v105;
  v106 = __chkstk_darwin(v104);
  v549 = &v455 - v107;
  v108 = __chkstk_darwin(v106);
  v529 = &v455 - v109;
  v110 = __chkstk_darwin(v108);
  v545 = &v455 - v111;
  v112 = __chkstk_darwin(v110);
  v114 = &v455 - v113;
  __chkstk_darwin(v112);
  v116 = &v455 - v115;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v117 = sub_106D20();
  v541 = sub_135C4(v117, qword_137440);
  v118 = sub_106D10();
  v119 = sub_106FA0();
  v120 = os_log_type_enabled(v118, v119);
  v467 = v31;
  v473 = v21;
  v525 = v7;
  if (v120)
  {
    v121 = swift_slowAlloc();
    v522 = v83;
    v122 = v121;
    v123 = swift_slowAlloc();
    *&v557 = v123;
    *v122 = 136315138;
    v555 = sub_106840();
    sub_25E4(&qword_138418, &qword_108CA0);
    v124 = sub_106E30();
    v126 = v114;
    v127 = v90;
    v128 = sub_722E8(v124, v125, &v557);

    *(v122 + 4) = v128;
    v90 = v127;
    v114 = v126;
    _os_log_impl(&dword_0, v118, v119, "AlarmFlowUtils.decideActionForInput with intent type: %s", v122, 0xCu);
    sub_2738(v123);

    v83 = v522;
  }

  v129 = sub_13AA4(v554);
  v130 = v553;
  if ((v129 & 1) == 0)
  {
    goto LABEL_60;
  }

  v131 = v551;
  v132 = *(v551 + 104);
  v457 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v535 = v551 + 104;
  v534 = v132;
  v132(v116);
  v133 = *(v131 + 56);
  v537 = v131 + 56;
  v536 = v133;
  v133(v116, 0, 1, v130);
  v134 = *(v83 + 48);
  sub_14994(v552, v92, &unk_1374C0, &unk_1087B0);
  sub_14994(v116, &v92[v134], &unk_1374C0, &unk_1087B0);
  v136 = v131 + 48;
  v135 = *(v131 + 48);
  v137 = v135(v92, 1, v130);
  v539 = v135;
  if (v137 == 1)
  {
    sub_16F70(v116, &unk_1374C0, &unk_1087B0);
    v138 = v135(&v92[v134], 1, v130);
    v139 = v549;
    if (v138 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  sub_14994(v92, v114, &unk_1374C0, &unk_1087B0);
  if (v135(&v92[v134], 1, v130) == 1)
  {
    sub_16F70(v116, &unk_1374C0, &unk_1087B0);
    (*(v551 + 8))(v114, v130);
    v139 = v549;
LABEL_11:
    sub_16F70(v92, &unk_1383E0, &qword_107E00);
    goto LABEL_12;
  }

  v154 = v551;
  v155 = &v92[v134];
  v156 = v544;
  (*(v551 + 32))(v544, v155, v130);
  sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v157 = sub_106E00();
  v158 = v154;
  v159 = v83;
  v160 = v90;
  v161 = *(v158 + 8);
  v161(v156, v553);
  sub_16F70(v116, &unk_1374C0, &unk_1087B0);
  v161(v114, v553);
  v90 = v160;
  v130 = v553;
  v83 = v159;
  sub_16F70(v92, &unk_1374C0, &unk_1087B0);
  v139 = v549;
  if (v157)
  {
    goto LABEL_30;
  }

LABEL_12:
  v140 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v534(v139, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v130);
  v536(v139, 0, 1, v130);
  v141 = *(v83 + 48);
  v142 = v546;
  sub_14994(v552, v546, &unk_1374C0, &unk_1087B0);
  sub_14994(v139, v142 + v141, &unk_1374C0, &unk_1087B0);
  v143 = v539;
  if (v539(v142, 1, v130) == 1)
  {
    sub_16F70(v139, &unk_1374C0, &unk_1087B0);
    if (v143(v142 + v141, 1, v130) == 1)
    {
      v92 = v142;
LABEL_15:
      sub_16F70(v92, &unk_1374C0, &unk_1087B0);
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  v144 = v530;
  sub_14994(v142, v530, &unk_1374C0, &unk_1087B0);
  if (v143(v142 + v141, 1, v130) == 1)
  {
    sub_16F70(v549, &unk_1374C0, &unk_1087B0);
    (*(v551 + 8))(v144, v130);
LABEL_18:
    v456 = v140;
    sub_16F70(v142, &unk_1383E0, &qword_107E00);
    v145 = v540;
    goto LABEL_19;
  }

  v456 = v140;
  v458 = v136;
  v169 = v551;
  v170 = v544;
  (*(v551 + 32))(v544, v142 + v141, v130);
  sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v171 = sub_106E00();
  v172 = *(v169 + 8);
  v172(v170, v130);
  sub_16F70(v549, &unk_1374C0, &unk_1087B0);
  v172(v144, v130);
  v136 = v458;
  v145 = v540;
  sub_16F70(v142, &unk_1374C0, &unk_1087B0);
  if (v171)
  {
LABEL_30:
    v173 = v545;
    v534(v545, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v130);
    v536(v173, 0, 1, v130);
    v174 = *(v83 + 48);
    sub_14994(v552, v90, &unk_1374C0, &unk_1087B0);
    sub_14994(v173, &v90[v174], &unk_1374C0, &unk_1087B0);
    v175 = v539;
    if (v539(v90, 1, v130) == 1)
    {
      sub_16F70(v173, &unk_1374C0, &unk_1087B0);
      if (v175(&v90[v174], 1, v130) == 1)
      {
        sub_16F70(v90, &unk_1374C0, &unk_1087B0);
        v176 = 1;
LABEL_37:
        sub_A570(v554, v176 & 1, v550);
        return;
      }
    }

    else
    {
      v177 = v529;
      sub_14994(v90, v529, &unk_1374C0, &unk_1087B0);
      if (v175(&v90[v174], 1, v130) != 1)
      {
        v178 = v551;
        v179 = &v90[v174];
        v180 = v544;
        (*(v551 + 32))(v544, v179, v130);
        sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v176 = sub_106E00();
        v181 = *(v178 + 8);
        v181(v180, v130);
        sub_16F70(v173, &unk_1374C0, &unk_1087B0);
        v181(v177, v130);
        sub_16F70(v90, &unk_1374C0, &unk_1087B0);
        goto LABEL_37;
      }

      sub_16F70(v173, &unk_1374C0, &unk_1087B0);
      (*(v551 + 8))(v177, v130);
    }

    sub_16F70(v90, &unk_1383E0, &qword_107E00);
    v176 = 0;
    goto LABEL_37;
  }

LABEL_19:
  v458 = v136;
  v146 = v548;
  sub_99E8(v548);
  v147 = v542;
  sub_104E40();
  v148 = v543;
  (*(v543 + 56))(v147, 0, 1, v145);
  v149 = *(v538 + 48);
  v150 = v146;
  v151 = v547;
  sub_14994(v150, v547, &unk_1374B0, &unk_108C70);
  sub_14994(v147, v151 + v149, &unk_1374B0, &unk_108C70);
  v152 = *(v148 + 48);
  if (v152(v151, 1, v145) == 1)
  {
    sub_16F70(v147, &unk_1374B0, &unk_108C70);
    v153 = v547;
    sub_16F70(v548, &unk_1374B0, &unk_108C70);
    if (v152(v153 + v149, 1, v145) == 1)
    {
      sub_16F70(v153, &unk_1374B0, &unk_108C70);
      goto LABEL_47;
    }
  }

  else
  {
    v162 = v523;
    sub_14994(v151, v523, &unk_1374B0, &unk_108C70);
    if (v152(v151 + v149, 1, v145) != 1)
    {
      v198 = v543;
      v199 = v151 + v149;
      v200 = v516;
      (*(v543 + 32))(v516, v199, v145);
      sub_4CD70(&qword_1374E8, 255, &type metadata accessor for ActionForInput, &protocol conformance descriptor for ActionForInput);
      v522 = v83;
      v201 = sub_106E00();
      v202 = *(v198 + 8);
      v202(v200, v145);
      sub_16F70(v542, &unk_1374B0, &unk_108C70);
      sub_16F70(v548, &unk_1374B0, &unk_108C70);
      v83 = v522;
      v202(v162, v145);
      sub_16F70(v151, &unk_1374B0, &unk_108C70);
      v163 = v525;
      v164 = v526;
      if (v201)
      {
LABEL_47:
        v203 = v518;
        v534(v518, enum case for DecideAction.PromptExpectation.slot(_:), v130);
        v536(v203, 0, 1, v130);
        v204 = *(v83 + 48);
        v205 = v519;
        sub_14994(v552, v519, &unk_1374C0, &unk_1087B0);
        sub_14994(v203, v205 + v204, &unk_1374C0, &unk_1087B0);
        v206 = v539;
        if (v539(v205, 1, v130) == 1)
        {
          sub_16F70(v203, &unk_1374C0, &unk_1087B0);
          if (v206(v205 + v204, 1, v130) == 1)
          {
            sub_16F70(v205, &unk_1374C0, &unk_1087B0);
LABEL_75:
            v246 = sub_106D10();
            v247 = sub_106FC0();
            if (os_log_type_enabled(v246, v247))
            {
              v248 = swift_slowAlloc();
              *v248 = 0;
              _os_log_impl(&dword_0, v246, v247, "Received cancel input slow prompt input – .cancel()", v248, 2u);
            }

            sub_104E40();
            return;
          }
        }

        else
        {
          v211 = v515;
          sub_14994(v205, v515, &unk_1374C0, &unk_1087B0);
          if (v206(v205 + v204, 1, v130) != 1)
          {
            v241 = v551;
            v242 = v205 + v204;
            v243 = v544;
            (*(v551 + 32))(v544, v242, v130);
            sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
            v244 = sub_106E00();
            v245 = *(v241 + 8);
            v245(v243, v130);
            sub_16F70(v203, &unk_1374C0, &unk_1087B0);
            v245(v211, v130);
            sub_16F70(v205, &unk_1374C0, &unk_1087B0);
            if (v244)
            {
              goto LABEL_75;
            }

            goto LABEL_57;
          }

          sub_16F70(v203, &unk_1374C0, &unk_1087B0);
          (*(v551 + 8))(v211, v130);
        }

        sub_16F70(v205, &unk_1383E0, &qword_107E00);
LABEL_57:
        v212 = sub_106D10();
        v213 = sub_106FC0();
        if (os_log_type_enabled(v212, v213))
        {
          v214 = swift_slowAlloc();
          *v214 = 0;
          _os_log_impl(&dword_0, v212, v213, "Received cancel input on non-confirmation, non-slot prompt input – .ignore()", v214, 2u);
        }

LABEL_60:
        sub_104E60();
        return;
      }

      goto LABEL_27;
    }

    sub_16F70(v542, &unk_1374B0, &unk_108C70);
    v153 = v547;
    sub_16F70(v548, &unk_1374B0, &unk_108C70);
    (*(v543 + 8))(v162, v145);
  }

  sub_16F70(v153, &unk_1383D0, &qword_107DF8);
  v163 = v525;
  v164 = v526;
LABEL_27:
  v165 = v524;
  sub_105360();
  v166 = v527;
  v167 = v528;
  v168 = (*(v527 + 88))(v165, v528);
  if (v168 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v166 + 96))(v165, v167);
LABEL_40:
    v182 = v532;
    v183 = v531;
    v184 = v533;
    (*(v532 + 32))(v531, v165, v533);
    v185 = v521;
    (*(v182 + 16))(v521, v183, v184);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    v186 = sub_B3800(v185);

    v187 = sub_106D10();
    v188 = sub_106FC0();

    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      *&v557 = v190;
      *v189 = 136315138;
      v555 = v186;
      sub_4CD70(&qword_137480, 255, type metadata accessor for AlarmNLIntent, &unk_10A860);
      v191 = sub_105620();
      v193 = sub_722E8(v191, v192, &v557);

      *(v189 + 4) = v193;
      _os_log_impl(&dword_0, v187, v188, "alarmNLIntent: %s", v189, 0xCu);
      sub_2738(v190);
      v130 = v553;
    }

    v194 = sub_B372C();
    if ((v194 - 1) < 2)
    {
      (*(v532 + 8))(v531, v533);
      v195 = sub_106D10();
      v196 = sub_106FC0();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        *v197 = 0;
        _os_log_impl(&dword_0, v195, v196, "User cancel the alarm request.", v197, 2u);
      }

      sub_104E40();
      goto LABEL_89;
    }

    if (v194)
    {
      (*(v532 + 8))(v531, v533);
      v235 = v513;
      sub_105360();
      v236 = sub_579C(v235, v512);
      (*(v527 + 8))(v235, v528);
      if (v236)
      {
        sub_106840();
        v237 = swift_dynamicCastClass();

        if (v237)
        {
          v238 = sub_106D10();
          v239 = sub_106FC0();
          if (os_log_type_enabled(v238, v239))
          {
            v240 = swift_slowAlloc();
            *v240 = 0;
            _os_log_impl(&dword_0, v238, v239, "Request was not cancelled by user. Proceed.", v240, 2u);
          }

          sub_104E50();
          goto LABEL_89;
        }
      }

      v208 = sub_106D10();
      v253 = sub_106FB0();
      if (!os_log_type_enabled(v208, v253))
      {
        goto LABEL_88;
      }

      v254 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      *&v557 = v255;
      *v254 = 136315138;
      *(v254 + 4) = sub_722E8(0xD000000000000011, 0x800000000010CC20, &v557);
      _os_log_impl(&dword_0, v208, v253, "Flows stack receives unexpected intent type. Expecting: %s", v254, 0xCu);
      sub_2738(v255);

      goto LABEL_87;
    }

    v207 = v511;
    sub_14994(v552, v511, &unk_1374C0, &unk_1087B0);
    if (v539(v207, 1, v130) == 1)
    {
      (*(v532 + 8))(v531, v533);
      sub_16F70(v207, &unk_1374C0, &unk_1087B0);
      v208 = sub_106D10();
      v209 = sub_106FC0();
      if (!os_log_type_enabled(v208, v209))
      {
LABEL_88:

        sub_104E60();
LABEL_89:

        return;
      }

      v210 = swift_slowAlloc();
      *v210 = 0;
      _os_log_impl(&dword_0, v208, v209, "User returned accepted for non-prompt input. Ignoring.", v210, 2u);
LABEL_87:

      goto LABEL_88;
    }

    v256 = v551;
    v257 = v505;
    (*(v551 + 32))(v505, v207, v130);
    v258 = v504;
    (*(v256 + 16))(v504, v257, v130);
    v259 = (*(v256 + 88))(v258, v130);
    if (v259 == v457)
    {
      goto LABEL_114;
    }

    if (v259 == enum case for DecideAction.PromptExpectation.slot(_:))
    {
      (*(v532 + 8))(v531, v533);
      v260 = sub_106D10();
      v261 = sub_106FC0();
      if (os_log_type_enabled(v260, v261))
      {
        v262 = swift_slowAlloc();
        *v262 = 0;
        _os_log_impl(&dword_0, v260, v261, "User returned accepted for non-binary input. Ignoring.", v262, 2u);
      }

      sub_104E60();
LABEL_117:

LABEL_118:
      (*(v551 + 8))(v257, v130);
      return;
    }

    if (v259 == v456)
    {
LABEL_114:
      (*(v532 + 8))(v531, v533);
      v295 = sub_106D10();
      v296 = sub_106FC0();
      if (os_log_type_enabled(v295, v296))
      {
        v297 = swift_slowAlloc();
        *v297 = 0;
        _os_log_impl(&dword_0, v295, v296, "User accepted the task, will handle.", v297, 2u);
      }

      sub_104E50();
      goto LABEL_117;
    }

LABEL_223:
    sub_107360();
    __break(1u);
    goto LABEL_224;
  }

  if (v168 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v166 + 96))(v165, v167);
    sub_25E4(&qword_13B010, &unk_1087A0);

    goto LABEL_40;
  }

  if (v168 == enum case for Parse.directInvocation(_:))
  {
    (*(v166 + 96))(v165, v167);
    v215 = v509;
    v216 = v510;
    (*(v514 + 32))(v509, v165, v510);
    v217 = v506;
    sub_106580();
    v218 = v507;
    v219 = v508;
    if ((*(v507 + 48))(v217, 1, v508) == 1)
    {
      sub_16F70(v217, &unk_137460, &unk_108C60);
      goto LABEL_64;
    }

    v263 = v501;
    (*(v218 + 32))(v501, v217, v219);
    v264 = v500;
    (*(v218 + 16))(v500, v263, v219);
    v265 = (*(v218 + 88))(v264, v219);
    if (v265 == enum case for ConfirmationResponse.confirmed(_:))
    {
      sub_104E50();
    }

    else
    {
      if (v265 != enum case for ConfirmationResponse.rejected(_:))
      {
        v307 = *(v218 + 8);
        v307(v263, v219);
        v307(v264, v219);
LABEL_64:
        v220 = sub_1053B0();
        if (v220)
        {
          v221 = v220;
          v222 = v495;
          v223 = v494;
          v224 = v496;
          (*(v495 + 104))(v494, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v496);
          v225 = sub_106590();
          v227 = v226;
          (*(v222 + 8))(v223, v224);
          sub_2B430(v225, v227, v221, &v557);

          if (!v558)
          {
            v232 = &qword_137490;
            v233 = qword_108C80;
            v234 = &v557;
LABEL_120:
            sub_16F70(v234, v232, v233);
            goto LABEL_121;
          }

          if (swift_dynamicCast())
          {
            v229 = v555;
            v228 = v556;

            sub_106420();
            v230 = v490;
            v231 = v491;
            if ((*(v490 + 48))(v163, 1, v491) != 1)
            {
              (*(v230 + 32))(v484, v163, v231);

              v325 = sub_106D10();
              v326 = sub_106FC0();

              if (os_log_type_enabled(v325, v326))
              {
                v327 = swift_slowAlloc();
                v328 = swift_slowAlloc();
                *&v557 = v328;
                *v327 = 136315138;
                v329 = sub_722E8(v229, v228, &v557);

                *(v327 + 4) = v329;
                _os_log_impl(&dword_0, v325, v326, "Received confirmation directInvocation, buttonPressed: %s", v327, 0xCu);
                sub_2738(v328);
              }

              else
              {
              }

              v345 = v490;
              v346 = v481;
              v347 = v491;
              (*(v490 + 104))(v481, enum case for ButtonOption.yes(_:), v491);
              v348 = v484;
              v349 = sub_34350();
              v350 = *(v345 + 8);
              v350(v346, v347);
              v351 = (v514 + 8);
              if (v349)
              {
                sub_104E50();
              }

              else
              {
                sub_104E40();
              }

              v350(v348, v347);
              (*v351)(v215, v216);
              return;
            }

            v232 = &unk_1383C0;
            v233 = &qword_107DF0;
            v234 = v163;
            goto LABEL_120;
          }
        }

LABEL_121:
        v298 = sub_106D10();
        v299 = sub_106FC0();
        if (os_log_type_enabled(v298, v299))
        {
          v300 = swift_slowAlloc();
          *v300 = 0;
          _os_log_impl(&dword_0, v298, v299, "Request was not cancelled by user. Proceed.", v300, 2u);
        }

        sub_104E50();
        goto LABEL_124;
      }

      sub_104E40();
    }

    (*(v218 + 8))(v263, v219);
LABEL_124:
    (*(v514 + 8))(v215, v216);
    return;
  }

  if (v168 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v166 + 96))(v165, v167);
    v249 = *v165;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v250 = sub_106D10();
      v251 = sub_106FC0();
      if (os_log_type_enabled(v250, v251))
      {
        v252 = swift_slowAlloc();
        *v252 = 0;
        _os_log_impl(&dword_0, v250, v251, "User cancelled the task.", v252, 2u);
      }

      sub_104E40();
      goto LABEL_84;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v321 = v477;
      sub_14994(v552, v477, &unk_1374C0, &unk_1087B0);
      if (v539(v321, 1, v130) == 1)
      {
        sub_16F70(v321, &unk_1374C0, &unk_1087B0);
        v322 = sub_106D10();
        v323 = sub_106FC0();
        if (os_log_type_enabled(v322, v323))
        {
          v324 = swift_slowAlloc();
          *v324 = 0;
          _os_log_impl(&dword_0, v322, v323, "User returned accepted for non-prompt input. Ignoring.", v324, 2u);
        }

        goto LABEL_215;
      }

      v353 = v551;
      v257 = v471;
      (*(v551 + 32))(v471, v321, v130);
      v354 = v470;
      (*(v353 + 16))(v470, v257, v130);
      v355 = (*(v353 + 88))(v354, v130);
      if (v355 != v457)
      {
        if (v355 == enum case for DecideAction.PromptExpectation.slot(_:))
        {
          v356 = sub_106D10();
          v357 = sub_106FC0();
          if (os_log_type_enabled(v356, v357))
          {
            v358 = swift_slowAlloc();
            *v358 = 0;
            _os_log_impl(&dword_0, v356, v357, "User returned accepted for non-binary input. Ignoring.", v358, 2u);
          }

          sub_104E60();
LABEL_193:
          swift_unknownObjectRelease();
          goto LABEL_118;
        }

        if (v355 != v456)
        {
          goto LABEL_223;
        }
      }

      v401 = sub_106D10();
      v402 = sub_106FC0();
      if (os_log_type_enabled(v401, v402))
      {
        v403 = swift_slowAlloc();
        *v403 = 0;
        _os_log_impl(&dword_0, v401, v402, "User accepted the task, will handle.", v403, 2u);
      }

      sub_104E50();
      goto LABEL_193;
    }

    if ((v482 & 1) == 0)
    {
LABEL_208:
      v425 = v513;
      sub_105360();
      v426 = sub_579C(v425, v512);
      (*(v527 + 8))(v425, v528);
      if (!v426 || (sub_106840(), v427 = swift_dynamicCastClass(), v426, !v427))
      {
        v436 = v488;
        v437 = v464;
        v438 = v489;
        (*(v488 + 16))(v464, v554, v489);
        v439 = sub_106D10();
        v440 = sub_106FB0();
        if (os_log_type_enabled(v439, v440))
        {
          v441 = swift_slowAlloc();
          *&v557 = swift_slowAlloc();
          *v441 = 136315394;
          *(v441 + 4) = sub_722E8(0xD000000000000011, 0x800000000010CC20, &v557);
          *(v441 + 12) = 2080;
          sub_4CD70(&unk_1374D0, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
          v442 = sub_107340();
          v443 = v437;
          v445 = v444;
          (*(v436 + 8))(v443, v438);
          v446 = sub_722E8(v442, v445, &v557);

          *(v441 + 14) = v446;
          _os_log_impl(&dword_0, v439, v440, "Intent from parse does not match IntentType. Expected %s, received %s", v441, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v436 + 8))(v437, v438);
        }

LABEL_215:
        sub_104E60();
LABEL_84:
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRetain();
      v428 = sub_106D10();
      v429 = sub_106FC0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v428, v429))
      {
        v430 = swift_slowAlloc();
        v431 = swift_slowAlloc();
        *&v557 = v431;
        *v430 = 136315138;
        v555 = v249;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v432 = sub_106E30();
        v434 = sub_722E8(v432, v433, &v557);

        *(v430 + 4) = v434;
        v435 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_219:
        _os_log_impl(&dword_0, v428, v429, v435, v430, 0xCu);
        sub_2738(v431);

        goto LABEL_220;
      }

      goto LABEL_220;
    }

    swift_getObjectType();
    if (sub_107000())
    {
      sub_274CC(v164);

      v352 = 0;
    }

    else
    {
      v352 = 1;
    }

    v414 = v475;
    v415 = v478;
    v416 = *(v478 + 56);
    v416(v164, v352, 1, v475);
    v417 = v472;
    (*(v415 + 104))(v472, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v414);
    v416(v417, 0, 1, v414);
    v418 = *(v474 + 48);
    v419 = v164;
    v420 = v466;
    sub_14994(v419, v466, &unk_1374A0, &qword_10BB30);
    sub_14994(v417, v420 + v418, &unk_1374A0, &qword_10BB30);
    v421 = *(v415 + 48);
    if (v421(v420, 1, v414) == 1)
    {
      sub_16F70(v472, &unk_1374A0, &qword_10BB30);
      sub_16F70(v526, &unk_1374A0, &qword_10BB30);
      v422 = v421(v420 + v418, 1, v414) == 1;
      v423 = v420;
      if (!v422)
      {
        goto LABEL_207;
      }

      sub_16F70(v420, &unk_1374A0, &qword_10BB30);
    }

    else
    {
      v424 = v459;
      sub_14994(v420, v459, &unk_1374A0, &qword_10BB30);
      if (v421(v420 + v418, 1, v414) == 1)
      {
        sub_16F70(v472, &unk_1374A0, &qword_10BB30);
        sub_16F70(v526, &unk_1374A0, &qword_10BB30);
        (*(v478 + 8))(v424, v414);
        v423 = v466;
LABEL_207:
        sub_16F70(v423, &qword_137498, &unk_108C50);
        goto LABEL_208;
      }

      v447 = v478;
      v448 = v466;
      v449 = v461;
      (*(v478 + 32))(v461, v466 + v418, v414);
      sub_4CD70(&qword_138400, 255, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
      v450 = sub_106E00();
      v451 = *(v447 + 8);
      v451(v449, v414);
      sub_16F70(v472, &unk_1374A0, &qword_10BB30);
      sub_16F70(v526, &unk_1374A0, &qword_10BB30);
      v451(v424, v414);
      sub_16F70(v448, &unk_1374A0, &qword_10BB30);
      if ((v450 & 1) == 0)
      {
        goto LABEL_208;
      }
    }

    swift_unknownObjectRetain();
    v428 = sub_106D10();
    v429 = sub_106FC0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v428, v429))
    {
      v430 = swift_slowAlloc();
      v431 = swift_slowAlloc();
      *&v557 = v431;
      *v430 = 136315138;
      v555 = v249;
      swift_unknownObjectRetain();
      sub_25E4(&unk_137470, &unk_10BC40);
      v452 = sub_106E30();
      v454 = sub_722E8(v452, v453, &v557);

      *(v430 + 4) = v454;
      v435 = "decideActionForInput decide handle disambiguation userDialogAct: %s";
      goto LABEL_219;
    }

LABEL_220:

    sub_104E50();
    goto LABEL_84;
  }

  if (v168 != enum case for Parse.uso(_:))
  {
    if (v168 == enum case for Parse.ifClientAction(_:))
    {
      v283 = *(v166 + 8);
      v283(v165, v167);
      v284 = v513;
      sub_105360();
      v285 = sub_579C(v284, v512);
      v283(v284, v167);
      v286 = v285;
      v287 = sub_106D10();
      v288 = sub_106FC0();

      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        v290 = swift_slowAlloc();
        *&v557 = v290;
        *v289 = 136315138;
        v555 = v285;
        v291 = v286;
        sub_25E4(&unk_1383F0, &qword_107E08);
        v292 = sub_106E30();
        v294 = sub_722E8(v292, v293, &v557);

        *(v289 + 4) = v294;
        _os_log_impl(&dword_0, v287, v288, "Handling ifClientAction for intent: %s", v289, 0xCu);
        sub_2738(v290);
      }

      sub_104E50();
    }

    else
    {
      v308 = v488;
      v309 = v485;
      v310 = v489;
      (*(v488 + 16))(v485, v554, v489);
      v311 = sub_106D10();
      v312 = sub_106FB0();
      if (os_log_type_enabled(v311, v312))
      {
        v313 = v309;
        v314 = swift_slowAlloc();
        v315 = swift_slowAlloc();
        *&v557 = v315;
        *v314 = 136315138;
        sub_105360();
        v316 = v528;
        v317 = sub_106E30();
        v319 = v318;
        (*(v308 + 8))(v313, v310);
        v320 = sub_722E8(v317, v319, &v557);

        *(v314 + 4) = v320;
        _os_log_impl(&dword_0, v311, v312, "Received an unsupported parse: %s", v314, 0xCu);
        sub_2738(v315);
      }

      else
      {

        (*(v308 + 8))(v309, v310);
        v316 = v528;
      }

      sub_104E60();
      (*(v527 + 8))(v524, v316);
    }

    return;
  }

  (*(v166 + 96))(v165, v167);
  (*(v499 + 32))(v503, v165, v498);
  v266 = v492;
  sub_105400();
  v267 = sub_105450();
  v268 = *(v502 + 8);
  v502 += 8;
  v268(v266, v497);
  v269 = 0;
  v270 = *(v267 + 16);
  v271 = (v520 + 8);
  v272 = v493;
  v273 = v520;
  while (v270 != v269)
  {
    if (v269 >= *(v267 + 16))
    {
      __break(1u);
LABEL_222:
      __break(1u);
      goto LABEL_223;
    }

    v274 = v517;
    (*(v273 + 16))(v517, v267 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + *(v273 + 72) * v269++, v272);
    v275 = sub_1054C0();
    (*(v273 + 8))(v274, v272);
    if (v275)
    {

      v276 = v483;
      sub_14994(v552, v483, &unk_1374C0, &unk_1087B0);
      v277 = v553;
      if (v539(v276, 1, v553) == 1)
      {
        sub_16F70(v276, &unk_1374C0, &unk_1087B0);
        v278 = sub_106D10();
        v279 = sub_106FC0();
        v280 = os_log_type_enabled(v278, v279);
        v281 = v499;
        if (v280)
        {
          v282 = swift_slowAlloc();
          *v282 = 0;
          _os_log_impl(&dword_0, v278, v279, "User returned accepted for non-prompt input. Ignoring.", v282, 2u);
        }

        sub_104E60();
        goto LABEL_173;
      }

      v330 = v551;
      v331 = v480;
      (*(v551 + 32))(v480, v276, v277);
      v332 = v479;
      (*(v330 + 16))(v479, v331, v277);
      v333 = (*(v330 + 88))(v332, v277);
      v281 = v499;
      if (v333 == v457)
      {
        goto LABEL_169;
      }

      if (v333 == enum case for DecideAction.PromptExpectation.slot(_:))
      {
        v334 = sub_106D10();
        v335 = sub_106FC0();
        if (os_log_type_enabled(v334, v335))
        {
          v336 = swift_slowAlloc();
          *v336 = 0;
          _os_log_impl(&dword_0, v334, v335, "User returned accepted for non-binary input. Ignoring.", v336, 2u);
        }

        sub_104E60();
LABEL_172:
        (*(v551 + 8))(v331, v277);
LABEL_173:
        (*(v281 + 8))(v503, v498);
        return;
      }

      if (v333 == v456)
      {
LABEL_169:
        v359 = sub_106D10();
        v360 = sub_106FC0();
        if (os_log_type_enabled(v359, v360))
        {
          v361 = swift_slowAlloc();
          *v361 = 0;
          _os_log_impl(&dword_0, v359, v360, "User accepted the task, will handle.", v361, 2u);
        }

        sub_104E50();
        goto LABEL_172;
      }

LABEL_224:
      sub_107360();
      __break(1u);
      return;
    }
  }

  v301 = v486;
  sub_105400();
  v302 = sub_105450();
  v268(v301, v497);
  v303 = 0;
  v304 = *(v302 + 16);
  v305 = v487;
  while (1)
  {
    if (v304 == v303)
    {

      if (v482)
      {
        v337 = v468;
        sub_105400();
        v338 = sub_105440();
        v268(v337, v497);
        if (v338)
        {
          v339 = v469;
          sub_274CC(v469);

          v340 = 0;
          v341 = v474;
        }

        else
        {
          v340 = 1;
          v341 = v474;
          v339 = v469;
        }

        v362 = v478;
        v363 = *(v478 + 56);
        v364 = v475;
        v363(v339, v340, 1, v475);
        v365 = v473;
        (*(v362 + 104))(v473, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v364);
        v363(v365, 0, 1, v364);
        v366 = *(v341 + 48);
        v367 = v476;
        sub_14994(v339, v476, &unk_1374A0, &qword_10BB30);
        v368 = v367;
        sub_14994(v365, v367 + v366, &unk_1374A0, &qword_10BB30);
        v369 = *(v362 + 48);
        if (v369(v368, 1, v364) == 1)
        {
          sub_16F70(v365, &unk_1374A0, &qword_10BB30);
          v370 = v476;
          sub_16F70(v339, &unk_1374A0, &qword_10BB30);
          if (v369(v370 + v366, 1, v364) == 1)
          {
            sub_16F70(v370, &unk_1374A0, &qword_10BB30);
            goto LABEL_195;
          }

          goto LABEL_180;
        }

        v371 = v462;
        sub_14994(v368, v462, &unk_1374A0, &qword_10BB30);
        if (v369(v368 + v366, 1, v364) == 1)
        {
          sub_16F70(v473, &unk_1374A0, &qword_10BB30);
          v370 = v476;
          sub_16F70(v339, &unk_1374A0, &qword_10BB30);
          (*(v478 + 8))(v371, v364);
LABEL_180:
          sub_16F70(v370, &qword_137498, &unk_108C50);
          goto LABEL_181;
        }

        v404 = v478;
        v405 = v368 + v366;
        v406 = v461;
        (*(v478 + 32))(v461, v405, v364);
        sub_4CD70(&qword_138400, 255, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
        v407 = sub_106E00();
        v408 = *(v404 + 8);
        v408(v406, v364);
        sub_16F70(v473, &unk_1374A0, &qword_10BB30);
        sub_16F70(v339, &unk_1374A0, &qword_10BB30);
        v408(v371, v364);
        sub_16F70(v368, &unk_1374A0, &qword_10BB30);
        if (v407)
        {
LABEL_195:
          v375 = v499;
          v409 = *(v499 + 16);
          v377 = v460;
          v378 = v498;
          v409(v460, v503, v498);
          v379 = sub_106D10();
          v380 = sub_106FC0();
          if (os_log_type_enabled(v379, v380))
          {
            v381 = swift_slowAlloc();
            v382 = swift_slowAlloc();
            *&v557 = v382;
            *v381 = 136315138;
            v409(v463, v377, v378);
            v410 = sub_106E30();
            v412 = v411;
            v386 = *(v375 + 8);
            v386(v377, v378);
            v413 = sub_722E8(v410, v412, &v557);

            *(v381 + 4) = v413;
            v388 = "decideActionForInput decide handle disambiguation UsoParse: %s";
            goto LABEL_197;
          }

          goto LABEL_198;
        }
      }

LABEL_181:
      v372 = v513;
      sub_105360();
      v373 = sub_579C(v372, v512);
      (*(v527 + 8))(v372, v528);
      if (!v373 || (sub_106840(), v374 = swift_dynamicCastClass(), v373, !v374))
      {
        v389 = v488;
        v390 = v467;
        v391 = v489;
        (*(v488 + 16))(v467, v554, v489);
        v392 = sub_106D10();
        v393 = sub_106FB0();
        if (os_log_type_enabled(v392, v393))
        {
          v394 = v390;
          v395 = swift_slowAlloc();
          *&v557 = swift_slowAlloc();
          *v395 = 136315394;
          *(v395 + 4) = sub_722E8(0xD000000000000011, 0x800000000010CC20, &v557);
          *(v395 + 12) = 2080;
          sub_4CD70(&unk_1374D0, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
          v396 = sub_107340();
          v398 = v397;
          (*(v389 + 8))(v394, v391);
          v399 = sub_722E8(v396, v398, &v557);

          *(v395 + 14) = v399;
          _os_log_impl(&dword_0, v392, v393, "Intent from parse does not match IntentType. Expected %s, received %s", v395, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v389 + 8))(v390, v391);
        }

        v400 = v498;
        sub_104E60();
        (*(v499 + 8))(v503, v400);
        return;
      }

      v375 = v499;
      v376 = *(v499 + 16);
      v377 = v465;
      v378 = v498;
      v376(v465, v503, v498);
      v379 = sub_106D10();
      v380 = sub_106FC0();
      if (os_log_type_enabled(v379, v380))
      {
        v381 = swift_slowAlloc();
        v382 = swift_slowAlloc();
        *&v557 = v382;
        *v381 = 136315138;
        v376(v463, v377, v378);
        v383 = sub_106E30();
        v385 = v384;
        v386 = *(v375 + 8);
        v386(v377, v378);
        v387 = sub_722E8(v383, v385, &v557);

        *(v381 + 4) = v387;
        v388 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_197:
        _os_log_impl(&dword_0, v379, v380, v388, v381, 0xCu);
        sub_2738(v382);

LABEL_199:
        sub_104E50();
        v386(v503, v378);
        return;
      }

LABEL_198:

      v386 = *(v375 + 8);
      v386(v377, v378);
      goto LABEL_199;
    }

    if (v303 >= *(v302 + 16))
    {
      goto LABEL_222;
    }

    (*(v520 + 16))(v305, v302 + ((*(v520 + 80) + 32) & ~*(v520 + 80)) + *(v520 + 72) * v303, v272);
    if (sub_1054D0())
    {
      break;
    }

    ++v303;
    v306 = sub_1054E0();
    (*v271)(v305, v272);
    if (v306)
    {
      goto LABEL_152;
    }
  }

  (*v271)(v305, v272);
LABEL_152:

  v342 = sub_106D10();
  v343 = sub_106FC0();
  if (os_log_type_enabled(v342, v343))
  {
    v344 = swift_slowAlloc();
    *v344 = 0;
    _os_log_impl(&dword_0, v342, v343, "User cancelled/rejected the task, will cancel the request.", v344, 2u);
  }

  sub_104E40();
  (*(v499 + 8))(v503, v498);
}

void sub_3D83C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v552 = a4;
  v482 = a3;
  v512 = a2;
  v554 = a1;
  v550 = a5;
  v5 = sub_25E4(&unk_1383C0, &qword_107DF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v455 - v6;
  v491 = sub_106440();
  v490 = *(v491 - 8);
  v8 = __chkstk_darwin(v491);
  v481 = &v455 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v484 = &v455 - v10;
  v496 = sub_1065A0();
  v495 = *(v496 - 8);
  __chkstk_darwin(v496);
  v494 = &v455 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = sub_106960();
  v478 = *(v475 - 8);
  __chkstk_darwin(v475);
  v461 = &v455 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v474 = sub_25E4(&qword_137498, &unk_108C50);
  v13 = __chkstk_darwin(v474);
  v476 = &v455 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v466 = &v455 - v15;
  v16 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v17 = __chkstk_darwin(v16 - 8);
  v462 = &v455 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v455 - v20;
  v22 = __chkstk_darwin(v19);
  v469 = &v455 - v23;
  v24 = __chkstk_darwin(v22);
  v459 = &v455 - v25;
  v26 = __chkstk_darwin(v24);
  v472 = &v455 - v27;
  __chkstk_darwin(v26);
  v526 = &v455 - v28;
  v489 = sub_105380();
  v488 = *(v489 - 8);
  v29 = __chkstk_darwin(v489);
  v31 = &v455 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v464 = &v455 - v33;
  __chkstk_darwin(v32);
  v485 = &v455 - v34;
  v35 = sub_25E4(&unk_137460, &unk_108C60);
  __chkstk_darwin(v35 - 8);
  v506 = &v455 - v36;
  v508 = sub_1050D0();
  v507 = *(v508 - 8);
  v37 = __chkstk_darwin(v508);
  v500 = &v455 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v501 = &v455 - v39;
  v510 = sub_1053C0();
  v514 = *(v510 - 8);
  __chkstk_darwin(v510);
  v509 = &v455 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = sub_105520();
  v520 = *(v493 - 8);
  v41 = __chkstk_darwin(v493);
  v487 = &v455 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v517 = &v455 - v43;
  v497 = sub_105460();
  v502 = *(v497 - 8);
  v44 = __chkstk_darwin(v497);
  v468 = &v455 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v486 = &v455 - v47;
  __chkstk_darwin(v46);
  v492 = &v455 - v48;
  v498 = sub_105410();
  v499 = *(v498 - 8);
  v49 = __chkstk_darwin(v498);
  v465 = &v455 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v463 = &v455 - v52;
  v53 = __chkstk_darwin(v51);
  v460 = &v455 - v54;
  __chkstk_darwin(v53);
  v503 = &v455 - v55;
  v528 = sub_1053E0();
  v527 = *(v528 - 8);
  v56 = __chkstk_darwin(v528);
  v513 = &v455 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v524 = &v455 - v58;
  v533 = sub_105E80();
  v532 = *(v533 - 8);
  v59 = __chkstk_darwin(v533);
  v521 = &v455 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v531 = &v455 - v61;
  v540 = sub_104E70();
  v543 = *(v540 - 8);
  __chkstk_darwin(v540);
  v516 = &v455 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v538 = sub_25E4(&unk_1383D0, &qword_107DF8);
  __chkstk_darwin(v538);
  v547 = &v455 - v63;
  v64 = sub_25E4(&unk_1374B0, &unk_108C70);
  v65 = __chkstk_darwin(v64 - 8);
  v523 = &v455 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v542 = &v455 - v68;
  __chkstk_darwin(v67);
  v548 = &v455 - v69;
  v553 = sub_106450();
  v551 = *(v553 - 8);
  v70 = __chkstk_darwin(v553);
  v479 = &v455 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __chkstk_darwin(v70);
  v480 = &v455 - v73;
  v74 = __chkstk_darwin(v72);
  v470 = &v455 - v75;
  v76 = __chkstk_darwin(v74);
  v471 = &v455 - v77;
  v78 = __chkstk_darwin(v76);
  v504 = &v455 - v79;
  v80 = __chkstk_darwin(v78);
  v505 = &v455 - v81;
  __chkstk_darwin(v80);
  v544 = &v455 - v82;
  v83 = sub_25E4(&unk_1383E0, &qword_107E00);
  v84 = __chkstk_darwin(v83);
  v519 = &v455 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __chkstk_darwin(v84);
  v546 = &v455 - v87;
  v88 = __chkstk_darwin(v86);
  v90 = &v455 - v89;
  __chkstk_darwin(v88);
  v92 = &v455 - v91;
  v93 = sub_25E4(&unk_1374C0, &unk_1087B0);
  v94 = __chkstk_darwin(v93 - 8);
  v483 = &v455 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __chkstk_darwin(v94);
  v477 = &v455 - v97;
  v98 = __chkstk_darwin(v96);
  v511 = &v455 - v99;
  v100 = __chkstk_darwin(v98);
  v515 = &v455 - v101;
  v102 = __chkstk_darwin(v100);
  v518 = &v455 - v103;
  v104 = __chkstk_darwin(v102);
  v530 = &v455 - v105;
  v106 = __chkstk_darwin(v104);
  v549 = &v455 - v107;
  v108 = __chkstk_darwin(v106);
  v529 = &v455 - v109;
  v110 = __chkstk_darwin(v108);
  v545 = &v455 - v111;
  v112 = __chkstk_darwin(v110);
  v114 = &v455 - v113;
  __chkstk_darwin(v112);
  v116 = &v455 - v115;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v117 = sub_106D20();
  v541 = sub_135C4(v117, qword_137440);
  v118 = sub_106D10();
  v119 = sub_106FA0();
  v120 = os_log_type_enabled(v118, v119);
  v467 = v31;
  v473 = v21;
  v525 = v7;
  if (v120)
  {
    v121 = swift_slowAlloc();
    v522 = v83;
    v122 = v121;
    v123 = swift_slowAlloc();
    *&v557 = v123;
    *v122 = 136315138;
    v555 = sub_1068B0();
    sub_25E4(&qword_138438, &qword_108CC0);
    v124 = sub_106E30();
    v126 = v114;
    v127 = v90;
    v128 = sub_722E8(v124, v125, &v557);

    *(v122 + 4) = v128;
    v90 = v127;
    v114 = v126;
    _os_log_impl(&dword_0, v118, v119, "AlarmFlowUtils.decideActionForInput with intent type: %s", v122, 0xCu);
    sub_2738(v123);

    v83 = v522;
  }

  v129 = sub_13AA4(v554);
  v130 = v553;
  if ((v129 & 1) == 0)
  {
    goto LABEL_60;
  }

  v131 = v551;
  v132 = *(v551 + 104);
  v457 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v535 = v551 + 104;
  v534 = v132;
  v132(v116);
  v133 = *(v131 + 56);
  v537 = v131 + 56;
  v536 = v133;
  v133(v116, 0, 1, v130);
  v134 = *(v83 + 48);
  sub_14994(v552, v92, &unk_1374C0, &unk_1087B0);
  sub_14994(v116, &v92[v134], &unk_1374C0, &unk_1087B0);
  v136 = v131 + 48;
  v135 = *(v131 + 48);
  v137 = v135(v92, 1, v130);
  v539 = v135;
  if (v137 == 1)
  {
    sub_16F70(v116, &unk_1374C0, &unk_1087B0);
    v138 = v135(&v92[v134], 1, v130);
    v139 = v549;
    if (v138 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  sub_14994(v92, v114, &unk_1374C0, &unk_1087B0);
  if (v135(&v92[v134], 1, v130) == 1)
  {
    sub_16F70(v116, &unk_1374C0, &unk_1087B0);
    (*(v551 + 8))(v114, v130);
    v139 = v549;
LABEL_11:
    sub_16F70(v92, &unk_1383E0, &qword_107E00);
    goto LABEL_12;
  }

  v154 = v551;
  v155 = &v92[v134];
  v156 = v544;
  (*(v551 + 32))(v544, v155, v130);
  sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v157 = sub_106E00();
  v158 = v154;
  v159 = v83;
  v160 = v90;
  v161 = *(v158 + 8);
  v161(v156, v553);
  sub_16F70(v116, &unk_1374C0, &unk_1087B0);
  v161(v114, v553);
  v90 = v160;
  v130 = v553;
  v83 = v159;
  sub_16F70(v92, &unk_1374C0, &unk_1087B0);
  v139 = v549;
  if (v157)
  {
    goto LABEL_30;
  }

LABEL_12:
  v140 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v534(v139, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v130);
  v536(v139, 0, 1, v130);
  v141 = *(v83 + 48);
  v142 = v546;
  sub_14994(v552, v546, &unk_1374C0, &unk_1087B0);
  sub_14994(v139, v142 + v141, &unk_1374C0, &unk_1087B0);
  v143 = v539;
  if (v539(v142, 1, v130) == 1)
  {
    sub_16F70(v139, &unk_1374C0, &unk_1087B0);
    if (v143(v142 + v141, 1, v130) == 1)
    {
      v92 = v142;
LABEL_15:
      sub_16F70(v92, &unk_1374C0, &unk_1087B0);
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  v144 = v530;
  sub_14994(v142, v530, &unk_1374C0, &unk_1087B0);
  if (v143(v142 + v141, 1, v130) == 1)
  {
    sub_16F70(v549, &unk_1374C0, &unk_1087B0);
    (*(v551 + 8))(v144, v130);
LABEL_18:
    v456 = v140;
    sub_16F70(v142, &unk_1383E0, &qword_107E00);
    v145 = v540;
    goto LABEL_19;
  }

  v456 = v140;
  v458 = v136;
  v169 = v551;
  v170 = v544;
  (*(v551 + 32))(v544, v142 + v141, v130);
  sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
  v171 = sub_106E00();
  v172 = *(v169 + 8);
  v172(v170, v130);
  sub_16F70(v549, &unk_1374C0, &unk_1087B0);
  v172(v144, v130);
  v136 = v458;
  v145 = v540;
  sub_16F70(v142, &unk_1374C0, &unk_1087B0);
  if (v171)
  {
LABEL_30:
    v173 = v545;
    v534(v545, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v130);
    v536(v173, 0, 1, v130);
    v174 = *(v83 + 48);
    sub_14994(v552, v90, &unk_1374C0, &unk_1087B0);
    sub_14994(v173, &v90[v174], &unk_1374C0, &unk_1087B0);
    v175 = v539;
    if (v539(v90, 1, v130) == 1)
    {
      sub_16F70(v173, &unk_1374C0, &unk_1087B0);
      if (v175(&v90[v174], 1, v130) == 1)
      {
        sub_16F70(v90, &unk_1374C0, &unk_1087B0);
        v176 = 1;
LABEL_37:
        sub_A570(v554, v176 & 1, v550);
        return;
      }
    }

    else
    {
      v177 = v529;
      sub_14994(v90, v529, &unk_1374C0, &unk_1087B0);
      if (v175(&v90[v174], 1, v130) != 1)
      {
        v178 = v551;
        v179 = &v90[v174];
        v180 = v544;
        (*(v551 + 32))(v544, v179, v130);
        sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
        v176 = sub_106E00();
        v181 = *(v178 + 8);
        v181(v180, v130);
        sub_16F70(v173, &unk_1374C0, &unk_1087B0);
        v181(v177, v130);
        sub_16F70(v90, &unk_1374C0, &unk_1087B0);
        goto LABEL_37;
      }

      sub_16F70(v173, &unk_1374C0, &unk_1087B0);
      (*(v551 + 8))(v177, v130);
    }

    sub_16F70(v90, &unk_1383E0, &qword_107E00);
    v176 = 0;
    goto LABEL_37;
  }

LABEL_19:
  v458 = v136;
  v146 = v548;
  sub_99E8(v548);
  v147 = v542;
  sub_104E40();
  v148 = v543;
  (*(v543 + 56))(v147, 0, 1, v145);
  v149 = *(v538 + 48);
  v150 = v146;
  v151 = v547;
  sub_14994(v150, v547, &unk_1374B0, &unk_108C70);
  sub_14994(v147, v151 + v149, &unk_1374B0, &unk_108C70);
  v152 = *(v148 + 48);
  if (v152(v151, 1, v145) == 1)
  {
    sub_16F70(v147, &unk_1374B0, &unk_108C70);
    v153 = v547;
    sub_16F70(v548, &unk_1374B0, &unk_108C70);
    if (v152(v153 + v149, 1, v145) == 1)
    {
      sub_16F70(v153, &unk_1374B0, &unk_108C70);
      goto LABEL_47;
    }
  }

  else
  {
    v162 = v523;
    sub_14994(v151, v523, &unk_1374B0, &unk_108C70);
    if (v152(v151 + v149, 1, v145) != 1)
    {
      v198 = v543;
      v199 = v151 + v149;
      v200 = v516;
      (*(v543 + 32))(v516, v199, v145);
      sub_4CD70(&qword_1374E8, 255, &type metadata accessor for ActionForInput, &protocol conformance descriptor for ActionForInput);
      v522 = v83;
      v201 = sub_106E00();
      v202 = *(v198 + 8);
      v202(v200, v145);
      sub_16F70(v542, &unk_1374B0, &unk_108C70);
      sub_16F70(v548, &unk_1374B0, &unk_108C70);
      v83 = v522;
      v202(v162, v145);
      sub_16F70(v151, &unk_1374B0, &unk_108C70);
      v163 = v525;
      v164 = v526;
      if (v201)
      {
LABEL_47:
        v203 = v518;
        v534(v518, enum case for DecideAction.PromptExpectation.slot(_:), v130);
        v536(v203, 0, 1, v130);
        v204 = *(v83 + 48);
        v205 = v519;
        sub_14994(v552, v519, &unk_1374C0, &unk_1087B0);
        sub_14994(v203, v205 + v204, &unk_1374C0, &unk_1087B0);
        v206 = v539;
        if (v539(v205, 1, v130) == 1)
        {
          sub_16F70(v203, &unk_1374C0, &unk_1087B0);
          if (v206(v205 + v204, 1, v130) == 1)
          {
            sub_16F70(v205, &unk_1374C0, &unk_1087B0);
LABEL_75:
            v246 = sub_106D10();
            v247 = sub_106FC0();
            if (os_log_type_enabled(v246, v247))
            {
              v248 = swift_slowAlloc();
              *v248 = 0;
              _os_log_impl(&dword_0, v246, v247, "Received cancel input slow prompt input – .cancel()", v248, 2u);
            }

            sub_104E40();
            return;
          }
        }

        else
        {
          v211 = v515;
          sub_14994(v205, v515, &unk_1374C0, &unk_1087B0);
          if (v206(v205 + v204, 1, v130) != 1)
          {
            v241 = v551;
            v242 = v205 + v204;
            v243 = v544;
            (*(v551 + 32))(v544, v242, v130);
            sub_4CD70(&qword_1374E0, 255, &type metadata accessor for DecideAction.PromptExpectation, &protocol conformance descriptor for DecideAction.PromptExpectation);
            v244 = sub_106E00();
            v245 = *(v241 + 8);
            v245(v243, v130);
            sub_16F70(v203, &unk_1374C0, &unk_1087B0);
            v245(v211, v130);
            sub_16F70(v205, &unk_1374C0, &unk_1087B0);
            if (v244)
            {
              goto LABEL_75;
            }

            goto LABEL_57;
          }

          sub_16F70(v203, &unk_1374C0, &unk_1087B0);
          (*(v551 + 8))(v211, v130);
        }

        sub_16F70(v205, &unk_1383E0, &qword_107E00);
LABEL_57:
        v212 = sub_106D10();
        v213 = sub_106FC0();
        if (os_log_type_enabled(v212, v213))
        {
          v214 = swift_slowAlloc();
          *v214 = 0;
          _os_log_impl(&dword_0, v212, v213, "Received cancel input on non-confirmation, non-slot prompt input – .ignore()", v214, 2u);
        }

LABEL_60:
        sub_104E60();
        return;
      }

      goto LABEL_27;
    }

    sub_16F70(v542, &unk_1374B0, &unk_108C70);
    v153 = v547;
    sub_16F70(v548, &unk_1374B0, &unk_108C70);
    (*(v543 + 8))(v162, v145);
  }

  sub_16F70(v153, &unk_1383D0, &qword_107DF8);
  v163 = v525;
  v164 = v526;
LABEL_27:
  v165 = v524;
  sub_105360();
  v166 = v527;
  v167 = v528;
  v168 = (*(v527 + 88))(v165, v528);
  if (v168 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v166 + 96))(v165, v167);
LABEL_40:
    v182 = v532;
    v183 = v531;
    v184 = v533;
    (*(v532 + 32))(v531, v165, v533);
    v185 = v521;
    (*(v182 + 16))(v521, v183, v184);
    type metadata accessor for AlarmNLIntent(0);
    swift_allocObject();
    v186 = sub_B3800(v185);

    v187 = sub_106D10();
    v188 = sub_106FC0();

    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      *&v557 = v190;
      *v189 = 136315138;
      v555 = v186;
      sub_4CD70(&qword_137480, 255, type metadata accessor for AlarmNLIntent, &unk_10A860);
      v191 = sub_105620();
      v193 = sub_722E8(v191, v192, &v557);

      *(v189 + 4) = v193;
      _os_log_impl(&dword_0, v187, v188, "alarmNLIntent: %s", v189, 0xCu);
      sub_2738(v190);
      v130 = v553;
    }

    v194 = sub_B372C();
    if ((v194 - 1) < 2)
    {
      (*(v532 + 8))(v531, v533);
      v195 = sub_106D10();
      v196 = sub_106FC0();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        *v197 = 0;
        _os_log_impl(&dword_0, v195, v196, "User cancel the alarm request.", v197, 2u);
      }

      sub_104E40();
      goto LABEL_89;
    }

    if (v194)
    {
      (*(v532 + 8))(v531, v533);
      v235 = v513;
      sub_105360();
      v236 = sub_579C(v235, v512);
      (*(v527 + 8))(v235, v528);
      if (v236)
      {
        sub_1068B0();
        v237 = swift_dynamicCastClass();

        if (v237)
        {
          v238 = sub_106D10();
          v239 = sub_106FC0();
          if (os_log_type_enabled(v238, v239))
          {
            v240 = swift_slowAlloc();
            *v240 = 0;
            _os_log_impl(&dword_0, v238, v239, "Request was not cancelled by user. Proceed.", v240, 2u);
          }

          sub_104E50();
          goto LABEL_89;
        }
      }

      v208 = sub_106D10();
      v253 = sub_106FB0();
      if (!os_log_type_enabled(v208, v253))
      {
        goto LABEL_88;
      }

      v254 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      *&v557 = v255;
      *v254 = 136315138;
      *(v254 + 4) = sub_722E8(0xD000000000000014, 0x800000000010CC60, &v557);
      _os_log_impl(&dword_0, v208, v253, "Flows stack receives unexpected intent type. Expecting: %s", v254, 0xCu);
      sub_2738(v255);

      goto LABEL_87;
    }

    v207 = v511;
    sub_14994(v552, v511, &unk_1374C0, &unk_1087B0);
    if (v539(v207, 1, v130) == 1)
    {
      (*(v532 + 8))(v531, v533);
      sub_16F70(v207, &unk_1374C0, &unk_1087B0);
      v208 = sub_106D10();
      v209 = sub_106FC0();
      if (!os_log_type_enabled(v208, v209))
      {
LABEL_88:

        sub_104E60();
LABEL_89:

        return;
      }

      v210 = swift_slowAlloc();
      *v210 = 0;
      _os_log_impl(&dword_0, v208, v209, "User returned accepted for non-prompt input. Ignoring.", v210, 2u);
LABEL_87:

      goto LABEL_88;
    }

    v256 = v551;
    v257 = v505;
    (*(v551 + 32))(v505, v207, v130);
    v258 = v504;
    (*(v256 + 16))(v504, v257, v130);
    v259 = (*(v256 + 88))(v258, v130);
    if (v259 == v457)
    {
      goto LABEL_114;
    }

    if (v259 == enum case for DecideAction.PromptExpectation.slot(_:))
    {
      (*(v532 + 8))(v531, v533);
      v260 = sub_106D10();
      v261 = sub_106FC0();
      if (os_log_type_enabled(v260, v261))
      {
        v262 = swift_slowAlloc();
        *v262 = 0;
        _os_log_impl(&dword_0, v260, v261, "User returned accepted for non-binary input. Ignoring.", v262, 2u);
      }

      sub_104E60();
LABEL_117:

LABEL_118:
      (*(v551 + 8))(v257, v130);
      return;
    }

    if (v259 == v456)
    {
LABEL_114:
      (*(v532 + 8))(v531, v533);
      v295 = sub_106D10();
      v296 = sub_106FC0();
      if (os_log_type_enabled(v295, v296))
      {
        v297 = swift_slowAlloc();
        *v297 = 0;
        _os_log_impl(&dword_0, v295, v296, "User accepted the task, will handle.", v297, 2u);
      }

      sub_104E50();
      goto LABEL_117;
    }

LABEL_223:
    sub_107360();
    __break(1u);
    goto LABEL_224;
  }

  if (v168 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v166 + 96))(v165, v167);
    sub_25E4(&qword_13B010, &unk_1087A0);

    goto LABEL_40;
  }

  if (v168 == enum case for Parse.directInvocation(_:))
  {
    (*(v166 + 96))(v165, v167);
    v215 = v509;
    v216 = v510;
    (*(v514 + 32))(v509, v165, v510);
    v217 = v506;
    sub_106580();
    v218 = v507;
    v219 = v508;
    if ((*(v507 + 48))(v217, 1, v508) == 1)
    {
      sub_16F70(v217, &unk_137460, &unk_108C60);
      goto LABEL_64;
    }

    v263 = v501;
    (*(v218 + 32))(v501, v217, v219);
    v264 = v500;
    (*(v218 + 16))(v500, v263, v219);
    v265 = (*(v218 + 88))(v264, v219);
    if (v265 == enum case for ConfirmationResponse.confirmed(_:))
    {
      sub_104E50();
    }

    else
    {
      if (v265 != enum case for ConfirmationResponse.rejected(_:))
      {
        v307 = *(v218 + 8);
        v307(v263, v219);
        v307(v264, v219);
LABEL_64:
        v220 = sub_1053B0();
        if (v220)
        {
          v221 = v220;
          v222 = v495;
          v223 = v494;
          v224 = v496;
          (*(v495 + 104))(v494, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v496);
          v225 = sub_106590();
          v227 = v226;
          (*(v222 + 8))(v223, v224);
          sub_2B430(v225, v227, v221, &v557);

          if (!v558)
          {
            v232 = &qword_137490;
            v233 = qword_108C80;
            v234 = &v557;
LABEL_120:
            sub_16F70(v234, v232, v233);
            goto LABEL_121;
          }

          if (swift_dynamicCast())
          {
            v229 = v555;
            v228 = v556;

            sub_106420();
            v230 = v490;
            v231 = v491;
            if ((*(v490 + 48))(v163, 1, v491) != 1)
            {
              (*(v230 + 32))(v484, v163, v231);

              v325 = sub_106D10();
              v326 = sub_106FC0();

              if (os_log_type_enabled(v325, v326))
              {
                v327 = swift_slowAlloc();
                v328 = swift_slowAlloc();
                *&v557 = v328;
                *v327 = 136315138;
                v329 = sub_722E8(v229, v228, &v557);

                *(v327 + 4) = v329;
                _os_log_impl(&dword_0, v325, v326, "Received confirmation directInvocation, buttonPressed: %s", v327, 0xCu);
                sub_2738(v328);
              }

              else
              {
              }

              v345 = v490;
              v346 = v481;
              v347 = v491;
              (*(v490 + 104))(v481, enum case for ButtonOption.yes(_:), v491);
              v348 = v484;
              v349 = sub_34350();
              v350 = *(v345 + 8);
              v350(v346, v347);
              v351 = (v514 + 8);
              if (v349)
              {
                sub_104E50();
              }

              else
              {
                sub_104E40();
              }

              v350(v348, v347);
              (*v351)(v215, v216);
              return;
            }

            v232 = &unk_1383C0;
            v233 = &qword_107DF0;
            v234 = v163;
            goto LABEL_120;
          }
        }

LABEL_121:
        v298 = sub_106D10();
        v299 = sub_106FC0();
        if (os_log_type_enabled(v298, v299))
        {
          v300 = swift_slowAlloc();
          *v300 = 0;
          _os_log_impl(&dword_0, v298, v299, "Request was not cancelled by user. Proceed.", v300, 2u);
        }

        sub_104E50();
        goto LABEL_124;
      }

      sub_104E40();
    }

    (*(v218 + 8))(v263, v219);
LABEL_124:
    (*(v514 + 8))(v215, v216);
    return;
  }

  if (v168 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v166 + 96))(v165, v167);
    v249 = *v165;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v250 = sub_106D10();
      v251 = sub_106FC0();
      if (os_log_type_enabled(v250, v251))
      {
        v252 = swift_slowAlloc();
        *v252 = 0;
        _os_log_impl(&dword_0, v250, v251, "User cancelled the task.", v252, 2u);
      }

      sub_104E40();
      goto LABEL_84;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v321 = v477;
      sub_14994(v552, v477, &unk_1374C0, &unk_1087B0);
      if (v539(v321, 1, v130) == 1)
      {
        sub_16F70(v321, &unk_1374C0, &unk_1087B0);
        v322 = sub_106D10();
        v323 = sub_106FC0();
        if (os_log_type_enabled(v322, v323))
        {
          v324 = swift_slowAlloc();
          *v324 = 0;
          _os_log_impl(&dword_0, v322, v323, "User returned accepted for non-prompt input. Ignoring.", v324, 2u);
        }

        goto LABEL_215;
      }

      v353 = v551;
      v257 = v471;
      (*(v551 + 32))(v471, v321, v130);
      v354 = v470;
      (*(v353 + 16))(v470, v257, v130);
      v355 = (*(v353 + 88))(v354, v130);
      if (v355 != v457)
      {
        if (v355 == enum case for DecideAction.PromptExpectation.slot(_:))
        {
          v356 = sub_106D10();
          v357 = sub_106FC0();
          if (os_log_type_enabled(v356, v357))
          {
            v358 = swift_slowAlloc();
            *v358 = 0;
            _os_log_impl(&dword_0, v356, v357, "User returned accepted for non-binary input. Ignoring.", v358, 2u);
          }

          sub_104E60();
LABEL_193:
          swift_unknownObjectRelease();
          goto LABEL_118;
        }

        if (v355 != v456)
        {
          goto LABEL_223;
        }
      }

      v401 = sub_106D10();
      v402 = sub_106FC0();
      if (os_log_type_enabled(v401, v402))
      {
        v403 = swift_slowAlloc();
        *v403 = 0;
        _os_log_impl(&dword_0, v401, v402, "User accepted the task, will handle.", v403, 2u);
      }

      sub_104E50();
      goto LABEL_193;
    }

    if ((v482 & 1) == 0)
    {
LABEL_208:
      v425 = v513;
      sub_105360();
      v426 = sub_579C(v425, v512);
      (*(v527 + 8))(v425, v528);
      if (!v426 || (sub_1068B0(), v427 = swift_dynamicCastClass(), v426, !v427))
      {
        v436 = v488;
        v437 = v464;
        v438 = v489;
        (*(v488 + 16))(v464, v554, v489);
        v439 = sub_106D10();
        v440 = sub_106FB0();
        if (os_log_type_enabled(v439, v440))
        {
          v441 = swift_slowAlloc();
          *&v557 = swift_slowAlloc();
          *v441 = 136315394;
          *(v441 + 4) = sub_722E8(0xD000000000000014, 0x800000000010CC60, &v557);
          *(v441 + 12) = 2080;
          sub_4CD70(&unk_1374D0, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
          v442 = sub_107340();
          v443 = v437;
          v445 = v444;
          (*(v436 + 8))(v443, v438);
          v446 = sub_722E8(v442, v445, &v557);

          *(v441 + 14) = v446;
          _os_log_impl(&dword_0, v439, v440, "Intent from parse does not match IntentType. Expected %s, received %s", v441, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v436 + 8))(v437, v438);
        }

LABEL_215:
        sub_104E60();
LABEL_84:
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRetain();
      v428 = sub_106D10();
      v429 = sub_106FC0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v428, v429))
      {
        v430 = swift_slowAlloc();
        v431 = swift_slowAlloc();
        *&v557 = v431;
        *v430 = 136315138;
        v555 = v249;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v432 = sub_106E30();
        v434 = sub_722E8(v432, v433, &v557);

        *(v430 + 4) = v434;
        v435 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_219:
        _os_log_impl(&dword_0, v428, v429, v435, v430, 0xCu);
        sub_2738(v431);

        goto LABEL_220;
      }

      goto LABEL_220;
    }

    swift_getObjectType();
    if (sub_107000())
    {
      sub_274CC(v164);

      v352 = 0;
    }

    else
    {
      v352 = 1;
    }

    v414 = v475;
    v415 = v478;
    v416 = *(v478 + 56);
    v416(v164, v352, 1, v475);
    v417 = v472;
    (*(v415 + 104))(v472, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v414);
    v416(v417, 0, 1, v414);
    v418 = *(v474 + 48);
    v419 = v164;
    v420 = v466;
    sub_14994(v419, v466, &unk_1374A0, &qword_10BB30);
    sub_14994(v417, v420 + v418, &unk_1374A0, &qword_10BB30);
    v421 = *(v415 + 48);
    if (v421(v420, 1, v414) == 1)
    {
      sub_16F70(v472, &unk_1374A0, &qword_10BB30);
      sub_16F70(v526, &unk_1374A0, &qword_10BB30);
      v422 = v421(v420 + v418, 1, v414) == 1;
      v423 = v420;
      if (!v422)
      {
        goto LABEL_207;
      }

      sub_16F70(v420, &unk_1374A0, &qword_10BB30);
    }

    else
    {
      v424 = v459;
      sub_14994(v420, v459, &unk_1374A0, &qword_10BB30);
      if (v421(v420 + v418, 1, v414) == 1)
      {
        sub_16F70(v472, &unk_1374A0, &qword_10BB30);
        sub_16F70(v526, &unk_1374A0, &qword_10BB30);
        (*(v478 + 8))(v424, v414);
        v423 = v466;
LABEL_207:
        sub_16F70(v423, &qword_137498, &unk_108C50);
        goto LABEL_208;
      }

      v447 = v478;
      v448 = v466;
      v449 = v461;
      (*(v478 + 32))(v461, v466 + v418, v414);
      sub_4CD70(&qword_138400, 255, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
      v450 = sub_106E00();
      v451 = *(v447 + 8);
      v451(v449, v414);
      sub_16F70(v472, &unk_1374A0, &qword_10BB30);
      sub_16F70(v526, &unk_1374A0, &qword_10BB30);
      v451(v424, v414);
      sub_16F70(v448, &unk_1374A0, &qword_10BB30);
      if ((v450 & 1) == 0)
      {
        goto LABEL_208;
      }
    }

    swift_unknownObjectRetain();
    v428 = sub_106D10();
    v429 = sub_106FC0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v428, v429))
    {
      v430 = swift_slowAlloc();
      v431 = swift_slowAlloc();
      *&v557 = v431;
      *v430 = 136315138;
      v555 = v249;
      swift_unknownObjectRetain();
      sub_25E4(&unk_137470, &unk_10BC40);
      v452 = sub_106E30();
      v454 = sub_722E8(v452, v453, &v557);

      *(v430 + 4) = v454;
      v435 = "decideActionForInput decide handle disambiguation userDialogAct: %s";
      goto LABEL_219;
    }

LABEL_220:

    sub_104E50();
    goto LABEL_84;
  }

  if (v168 != enum case for Parse.uso(_:))
  {
    if (v168 == enum case for Parse.ifClientAction(_:))
    {
      v283 = *(v166 + 8);
      v283(v165, v167);
      v284 = v513;
      sub_105360();
      v285 = sub_579C(v284, v512);
      v283(v284, v167);
      v286 = v285;
      v287 = sub_106D10();
      v288 = sub_106FC0();

      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        v290 = swift_slowAlloc();
        *&v557 = v290;
        *v289 = 136315138;
        v555 = v285;
        v291 = v286;
        sub_25E4(&unk_1383F0, &qword_107E08);
        v292 = sub_106E30();
        v294 = sub_722E8(v292, v293, &v557);

        *(v289 + 4) = v294;
        _os_log_impl(&dword_0, v287, v288, "Handling ifClientAction for intent: %s", v289, 0xCu);
        sub_2738(v290);
      }

      sub_104E50();
    }

    else
    {
      v308 = v488;
      v309 = v485;
      v310 = v489;
      (*(v488 + 16))(v485, v554, v489);
      v311 = sub_106D10();
      v312 = sub_106FB0();
      if (os_log_type_enabled(v311, v312))
      {
        v313 = v309;
        v314 = swift_slowAlloc();
        v315 = swift_slowAlloc();
        *&v557 = v315;
        *v314 = 136315138;
        sub_105360();
        v316 = v528;
        v317 = sub_106E30();
        v319 = v318;
        (*(v308 + 8))(v313, v310);
        v320 = sub_722E8(v317, v319, &v557);

        *(v314 + 4) = v320;
        _os_log_impl(&dword_0, v311, v312, "Received an unsupported parse: %s", v314, 0xCu);
        sub_2738(v315);
      }

      else
      {

        (*(v308 + 8))(v309, v310);
        v316 = v528;
      }

      sub_104E60();
      (*(v527 + 8))(v524, v316);
    }

    return;
  }

  (*(v166 + 96))(v165, v167);
  (*(v499 + 32))(v503, v165, v498);
  v266 = v492;
  sub_105400();
  v267 = sub_105450();
  v268 = *(v502 + 8);
  v502 += 8;
  v268(v266, v497);
  v269 = 0;
  v270 = *(v267 + 16);
  v271 = (v520 + 8);
  v272 = v493;
  v273 = v520;
  while (v270 != v269)
  {
    if (v269 >= *(v267 + 16))
    {
      __break(1u);
LABEL_222:
      __break(1u);
      goto LABEL_223;
    }

    v274 = v517;
    (*(v273 + 16))(v517, v267 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + *(v273 + 72) * v269++, v272);
    v275 = sub_1054C0();
    (*(v273 + 8))(v274, v272);
    if (v275)
    {

      v276 = v483;
      sub_14994(v552, v483, &unk_1374C0, &unk_1087B0);
      v277 = v553;
      if (v539(v276, 1, v553) == 1)
      {
        sub_16F70(v276, &unk_1374C0, &unk_1087B0);
        v278 = sub_106D10();
        v279 = sub_106FC0();
        v280 = os_log_type_enabled(v278, v279);
        v281 = v499;
        if (v280)
        {
          v282 = swift_slowAlloc();
          *v282 = 0;
          _os_log_impl(&dword_0, v278, v279, "User returned accepted for non-prompt input. Ignoring.", v282, 2u);
        }

        sub_104E60();
        goto LABEL_173;
      }

      v330 = v551;
      v331 = v480;
      (*(v551 + 32))(v480, v276, v277);
      v332 = v479;
      (*(v330 + 16))(v479, v331, v277);
      v333 = (*(v330 + 88))(v332, v277);
      v281 = v499;
      if (v333 == v457)
      {
        goto LABEL_169;
      }

      if (v333 == enum case for DecideAction.PromptExpectation.slot(_:))
      {
        v334 = sub_106D10();
        v335 = sub_106FC0();
        if (os_log_type_enabled(v334, v335))
        {
          v336 = swift_slowAlloc();
          *v336 = 0;
          _os_log_impl(&dword_0, v334, v335, "User returned accepted for non-binary input. Ignoring.", v336, 2u);
        }

        sub_104E60();
LABEL_172:
        (*(v551 + 8))(v331, v277);
LABEL_173:
        (*(v281 + 8))(v503, v498);
        return;
      }

      if (v333 == v456)
      {
LABEL_169:
        v359 = sub_106D10();
        v360 = sub_106FC0();
        if (os_log_type_enabled(v359, v360))
        {
          v361 = swift_slowAlloc();
          *v361 = 0;
          _os_log_impl(&dword_0, v359, v360, "User accepted the task, will handle.", v361, 2u);
        }

        sub_104E50();
        goto LABEL_172;
      }

LABEL_224:
      sub_107360();
      __break(1u);
      return;
    }
  }

  v301 = v486;
  sub_105400();
  v302 = sub_105450();
  v268(v301, v497);
  v303 = 0;
  v304 = *(v302 + 16);
  v305 = v487;
  while (1)
  {
    if (v304 == v303)
    {

      if (v482)
      {
        v337 = v468;
        sub_105400();
        v338 = sub_105440();
        v268(v337, v497);
        if (v338)
        {
          v339 = v469;
          sub_274CC(v469);

          v340 = 0;
          v341 = v474;
        }

        else
        {
          v340 = 1;
          v341 = v474;
          v339 = v469;
        }

        v362 = v478;
        v363 = *(v478 + 56);
        v364 = v475;
        v363(v339, v340, 1, v475);
        v365 = v473;
        (*(v362 + 104))(v473, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v364);
        v363(v365, 0, 1, v364);
        v366 = *(v341 + 48);
        v367 = v476;
        sub_14994(v339, v476, &unk_1374A0, &qword_10BB30);
        v368 = v367;
        sub_14994(v365, v367 + v366, &unk_1374A0, &qword_10BB30);
        v369 = *(v362 + 48);
        if (v369(v368, 1, v364) == 1)
        {
          sub_16F70(v365, &unk_1374A0, &qword_10BB30);
          v370 = v476;
          sub_16F70(v339, &unk_1374A0, &qword_10BB30);
          if (v369(v370 + v366, 1, v364) == 1)
          {
            sub_16F70(v370, &unk_1374A0, &qword_10BB30);
            goto LABEL_195;
          }

          goto LABEL_180;
        }

        v371 = v462;
        sub_14994(v368, v462, &unk_1374A0, &qword_10BB30);
        if (v369(v368 + v366, 1, v364) == 1)
        {
          sub_16F70(v473, &unk_1374A0, &qword_10BB30);
          v370 = v476;
          sub_16F70(v339, &unk_1374A0, &qword_10BB30);
          (*(v478 + 8))(v371, v364);
LABEL_180:
          sub_16F70(v370, &qword_137498, &unk_108C50);
          goto LABEL_181;
        }

        v404 = v478;
        v405 = v368 + v366;
        v406 = v461;
        (*(v478 + 32))(v461, v405, v364);
        sub_4CD70(&qword_138400, 255, &type metadata accessor for AlarmNLv4Constants.AlarmVerb, &protocol conformance descriptor for AlarmNLv4Constants.AlarmVerb);
        v407 = sub_106E00();
        v408 = *(v404 + 8);
        v408(v406, v364);
        sub_16F70(v473, &unk_1374A0, &qword_10BB30);
        sub_16F70(v339, &unk_1374A0, &qword_10BB30);
        v408(v371, v364);
        sub_16F70(v368, &unk_1374A0, &qword_10BB30);
        if (v407)
        {
LABEL_195:
          v375 = v499;
          v409 = *(v499 + 16);
          v377 = v460;
          v378 = v498;
          v409(v460, v503, v498);
          v379 = sub_106D10();
          v380 = sub_106FC0();
          if (os_log_type_enabled(v379, v380))
          {
            v381 = swift_slowAlloc();
            v382 = swift_slowAlloc();
            *&v557 = v382;
            *v381 = 136315138;
            v409(v463, v377, v378);
            v410 = sub_106E30();
            v412 = v411;
            v386 = *(v375 + 8);
            v386(v377, v378);
            v413 = sub_722E8(v410, v412, &v557);

            *(v381 + 4) = v413;
            v388 = "decideActionForInput decide handle disambiguation UsoParse: %s";
            goto LABEL_197;
          }

          goto LABEL_198;
        }
      }

LABEL_181:
      v372 = v513;
      sub_105360();
      v373 = sub_579C(v372, v512);
      (*(v527 + 8))(v372, v528);
      if (!v373 || (sub_1068B0(), v374 = swift_dynamicCastClass(), v373, !v374))
      {
        v389 = v488;
        v390 = v467;
        v391 = v489;
        (*(v488 + 16))(v467, v554, v489);
        v392 = sub_106D10();
        v393 = sub_106FB0();
        if (os_log_type_enabled(v392, v393))
        {
          v394 = v390;
          v395 = swift_slowAlloc();
          *&v557 = swift_slowAlloc();
          *v395 = 136315394;
          *(v395 + 4) = sub_722E8(0xD000000000000014, 0x800000000010CC60, &v557);
          *(v395 + 12) = 2080;
          sub_4CD70(&unk_1374D0, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
          v396 = sub_107340();
          v398 = v397;
          (*(v389 + 8))(v394, v391);
          v399 = sub_722E8(v396, v398, &v557);

          *(v395 + 14) = v399;
          _os_log_impl(&dword_0, v392, v393, "Intent from parse does not match IntentType. Expected %s, received %s", v395, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v389 + 8))(v390, v391);
        }

        v400 = v498;
        sub_104E60();
        (*(v499 + 8))(v503, v400);
        return;
      }

      v375 = v499;
      v376 = *(v499 + 16);
      v377 = v465;
      v378 = v498;
      v376(v465, v503, v498);
      v379 = sub_106D10();
      v380 = sub_106FC0();
      if (os_log_type_enabled(v379, v380))
      {
        v381 = swift_slowAlloc();
        v382 = swift_slowAlloc();
        *&v557 = v382;
        *v381 = 136315138;
        v376(v463, v377, v378);
        v383 = sub_106E30();
        v385 = v384;
        v386 = *(v375 + 8);
        v386(v377, v378);
        v387 = sub_722E8(v383, v385, &v557);

        *(v381 + 4) = v387;
        v388 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_197:
        _os_log_impl(&dword_0, v379, v380, v388, v381, 0xCu);
        sub_2738(v382);

LABEL_199:
        sub_104E50();
        v386(v503, v378);
        return;
      }

LABEL_198:

      v386 = *(v375 + 8);
      v386(v377, v378);
      goto LABEL_199;
    }

    if (v303 >= *(v302 + 16))
    {
      goto LABEL_222;
    }

    (*(v520 + 16))(v305, v302 + ((*(v520 + 80) + 32) & ~*(v520 + 80)) + *(v520 + 72) * v303, v272);
    if (sub_1054D0())
    {
      break;
    }

    ++v303;
    v306 = sub_1054E0();
    (*v271)(v305, v272);
    if (v306)
    {
      goto LABEL_152;
    }
  }

  (*v271)(v305, v272);
LABEL_152:

  v342 = sub_106D10();
  v343 = sub_106FC0();
  if (os_log_type_enabled(v342, v343))
  {
    v344 = swift_slowAlloc();
    *v344 = 0;
    _os_log_impl(&dword_0, v342, v343, "User cancelled/rejected the task, will cancel the request.", v344, 2u);
  }

  sub_104E40();
  (*(v499 + 8))(v503, v498);
}