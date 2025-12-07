id sub_100001550(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 != 2)
  {
    return (v4 & 1);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v7 = result;
    LOBYTE(v4) = a2();

    *(v2 + v3) = v4;
    return (v4 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000015C0()
{
  v1 = OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isSDPAvailable;
  v2 = *(v0 + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isSDPAvailable);
  if (v2 == 2)
  {
    v3 = [objc_opt_self() sharedInstance];
    LOBYTE(v2) = [v3 isFeatureAvailable];

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t sub_100001638(char a1)
{
  *(v2 + 384) = v1;
  *(v2 + 505) = a1;
  v3 = sub_100002960(&qword_100014298, qword_100008E88);
  *(v2 + 392) = v3;
  *(v2 + 400) = *(v3 - 8);
  *(v2 + 408) = swift_task_alloc();
  sub_1000089EC();
  *(v2 + 416) = sub_1000089DC();
  v5 = sub_1000089AC();
  *(v2 + 424) = v5;
  *(v2 + 432) = v4;

  return _swift_task_switch(sub_10000173C, v5, v4);
}

uint64_t sub_10000173C()
{
  LODWORD(v1) = *(v0 + 505);
  if (v1 > 7)
  {
    if (*(v0 + 505) < 0xCu)
    {

      v21 = sub_1000089FC();
      sub_100008A1C(16);
      *(v0 + 320) = 0;
      *(v0 + 328) = 0xE000000000000000;
      v71._countAndFlagsBits = 544370502;
      v71._object = 0xE400000000000000;
      sub_10000898C(v71);
      *(v0 + 501) = v1;
      sub_100008A3C();
      v72._countAndFlagsBits = 8250;
      v72._object = 0xE200000000000000;
      sub_10000898C(v72);
      v22 = sub_100001510();
      v23 = (v22 & 1) == 0;
      if (v22)
      {
        v24._countAndFlagsBits = 1702195828;
      }

      else
      {
        v24._countAndFlagsBits = 0x65736C6166;
      }

      if (v23)
      {
        v25 = 0xE500000000000000;
      }

      else
      {
        v25 = 0xE400000000000000;
      }

      v24._object = v25;
      sub_10000898C(v24);

      v73._countAndFlagsBits = 539371040;
      v73._object = 0xE400000000000000;
      sub_10000898C(v73);
      v26 = objc_opt_self();
      v8 = [v26 sharedConnection];
      if (v8)
      {
        v27 = v8;
        v28 = *(v0 + 384);
        v29 = [v8 isFingerprintModificationAllowed];

        if (v29)
        {
          v30._countAndFlagsBits = 1702195828;
        }

        else
        {
          v30._countAndFlagsBits = 0x65736C6166;
        }

        if (v29)
        {
          v31 = 0xE400000000000000;
        }

        else
        {
          v31 = 0xE500000000000000;
        }

        v30._object = v31;
        sub_10000898C(v30);

        sub_100003694(v21, *(v0 + 320), *(v0 + 328), 0xD000000000000017, 0x8000000100009BB0, 62);

        if ((*(v28 + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isFaceIDAvailable) & 1) == 0)
        {
          goto LABEL_75;
        }

        v8 = [v26 sharedConnection];
        if (v8)
        {
          goto LABEL_48;
        }

LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      __break(1u);
    }

    else
    {
      if (*(v0 + 505) > 0xEu)
      {
        if (v1 != 15)
        {
          v49 = *(v0 + 400);
          v48 = *(v0 + 408);
          v50 = *(v0 + 392);
          v51 = objc_opt_self();
          *(v0 + 440) = v51;
          v52 = [v51 sharedInstance];
          *(v0 + 448) = v52;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 496;
          *(v0 + 24) = sub_100002240;
          swift_continuation_init();
          *(v0 + 200) = v50;
          v53 = sub_1000029A8((v0 + 176));
          sub_1000089BC();
          v54 = *(v49 + 32);
          *(v0 + 456) = v54;
          *(v0 + 464) = (v49 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
          v54(v53, v48, v50);
          *(v0 + 144) = _NSConcreteStackBlock;
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_1000027D4;
          *(v0 + 168) = &unk_100010C08;
          [v52 canUseWatchToUnlockWithCompletionHandler:v0 + 144];
          v55 = *(v49 + 8);
          *(v0 + 472) = v55;
          *(v0 + 480) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v55(v53, v50);
          v8 = (v0 + 16);

          return _swift_continuation_await(v8);
        }

LABEL_51:

        v33 = sub_1000089FC();
        sub_100008A1C(16);
        *(v0 + 368) = 0;
        *(v0 + 376) = 0xE000000000000000;
        v74._countAndFlagsBits = 544370502;
        v74._object = 0xE400000000000000;
        sub_10000898C(v74);
        *(v0 + 504) = v1;
        sub_100008A3C();
        v75._countAndFlagsBits = 0x737961776C41203ALL;
        v75._object = 0xEA00000000003120;
        sub_10000898C(v75);
        sub_100003694(v33, *(v0 + 368), *(v0 + 376), 0xD000000000000017, 0x8000000100009BB0, 50);

        v32 = 1;
        goto LABEL_86;
      }

      if ((v1 - 12) >= 2)
      {

        v64 = sub_1000089FC();
        sub_100008A1C(24);
        *(v0 + 288) = 0;
        *(v0 + 296) = 0xE000000000000000;
        v76._countAndFlagsBits = 544370502;
        v76._object = 0xE400000000000000;
        sub_10000898C(v76);
        *(v0 + 499) = 14;
        sub_100008A3C();
        v77._countAndFlagsBits = 2629690;
        v77._object = 0xE300000000000000;
        sub_10000898C(v77);
        v34 = sub_100001510();
        v35 = (v34 & 1) == 0;
        if (v34)
        {
          v36._countAndFlagsBits = 1702195828;
        }

        else
        {
          v36._countAndFlagsBits = 0x65736C6166;
        }

        if (v35)
        {
          v37 = 0xE500000000000000;
        }

        else
        {
          v37 = 0xE400000000000000;
        }

        v36._object = v37;
        sub_10000898C(v36);

        v78._countAndFlagsBits = 545029152;
        v78._object = 0xE400000000000000;
        sub_10000898C(v78);
        v38 = sub_100001530();
        v39 = (v38 & 1) == 0;
        if (v38)
        {
          v40._countAndFlagsBits = 1702195828;
        }

        else
        {
          v40._countAndFlagsBits = 0x65736C6166;
        }

        if (v39)
        {
          v41 = 0xE500000000000000;
        }

        else
        {
          v41 = 0xE400000000000000;
        }

        v40._object = v41;
        sub_10000898C(v40);

        v79._countAndFlagsBits = 0x2026262029;
        v79._object = 0xE500000000000000;
        sub_10000898C(v79);
        v42 = objc_opt_self();
        v8 = [v42 sharedConnection];
        if (!v8)
        {
          goto LABEL_93;
        }

        v43 = v8;
        v44 = *(v0 + 384);
        v45 = [v8 isFingerprintModificationAllowed];

        if (v45)
        {
          v46._countAndFlagsBits = 1702195828;
        }

        else
        {
          v46._countAndFlagsBits = 0x65736C6166;
        }

        if (v45)
        {
          v47 = 0xE400000000000000;
        }

        else
        {
          v47 = 0xE500000000000000;
        }

        v46._object = v47;
        sub_10000898C(v46);

        sub_100003694(v64, *(v0 + 288), *(v0 + 296), 0xD000000000000017, 0x8000000100009BB0, 69);

        if (*(v44 + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isFaceIDAvailable) & 1) != 0 || (*(*(v0 + 384) + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isTouchIDAvailable))
        {
          v8 = [v42 sharedConnection];
          if (!v8)
          {
LABEL_95:
            __break(1u);
            return _swift_continuation_await(v8);
          }

          goto LABEL_48;
        }

LABEL_75:
        v32 = 0;
        goto LABEL_86;
      }

      v2 = sub_1000089FC();
      sub_100008A1C(16);
      *(v0 + 304) = 0;
      *(v0 + 312) = 0xE000000000000000;
      v66._countAndFlagsBits = 544370502;
      v66._object = 0xE400000000000000;
      sub_10000898C(v66);
      *(v0 + 500) = v1;
      sub_100008A3C();
      v67._countAndFlagsBits = 8250;
      v67._object = 0xE200000000000000;
      sub_10000898C(v67);
      v3 = sub_100001530();
      v4 = (v3 & 1) == 0;
      if (v3)
      {
        v5._countAndFlagsBits = 1702195828;
      }

      else
      {
        v5._countAndFlagsBits = 0x65736C6166;
      }

      if (v4)
      {
        v6 = 0xE500000000000000;
      }

      else
      {
        v6 = 0xE400000000000000;
      }

      v5._object = v6;
      sub_10000898C(v5);

      v68._countAndFlagsBits = 539371040;
      v68._object = 0xE400000000000000;
      sub_10000898C(v68);
      v7 = objc_opt_self();
      v8 = [v7 sharedConnection];
      if (v8)
      {
        v9 = v8;
        v10 = *(v0 + 384);
        v11 = [v8 isFingerprintModificationAllowed];

        if (v11)
        {
          v12._countAndFlagsBits = 1702195828;
        }

        else
        {
          v12._countAndFlagsBits = 0x65736C6166;
        }

        if (v11)
        {
          v1 = 0xE400000000000000;
        }

        else
        {
          v1 = 0xE500000000000000;
        }

        v12._object = v1;
        sub_10000898C(v12);

        sub_100003694(v2, *(v0 + 304), *(v0 + 312), 0xD000000000000017, 0x8000000100009BB0, 66);

        if (*(v10 + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isTouchIDAvailable))
        {
          v8 = [v7 sharedConnection];
          if (!v8)
          {
            __break(1u);
            goto LABEL_21;
          }

LABEL_48:
          v19 = v8;
          v20 = [v8 isFingerprintModificationAllowed];
          goto LABEL_49;
        }

        goto LABEL_75;
      }
    }

    __break(1u);
    goto LABEL_91;
  }

LABEL_21:
  if (v1 <= 3 || (v1 - 5) < 2)
  {
    goto LABEL_51;
  }

  if (v1 != 4)
  {
    v56 = *(v0 + 384);

    v57 = sub_1000089FC();
    *(v0 + 336) = 0;
    *(v0 + 344) = 0xE000000000000000;
    v58 = 0xE400000000000000;
    v80._countAndFlagsBits = 544370502;
    v80._object = 0xE400000000000000;
    sub_10000898C(v80);
    *(v0 + 502) = 7;
    sub_100008A3C();
    v81._countAndFlagsBits = 8250;
    v81._object = 0xE200000000000000;
    sub_10000898C(v81);
    v59 = sub_1000015C0();
    v60 = (v59 & 1) == 0;
    if (v59)
    {
      v61._countAndFlagsBits = 1702195828;
    }

    else
    {
      v61._countAndFlagsBits = 0x65736C6166;
    }

    if (v60)
    {
      v58 = 0xE500000000000000;
    }

    v61._object = v58;
    sub_10000898C(v61);

    sub_100003694(v57, *(v0 + 336), *(v0 + 344), 0xD000000000000017, 0x8000000100009BB0, 56);

    v32 = *(v56 + OBJC_IVAR____TtC48PasscodeAndBiometricsSettingsAppIntentsExtension26IntentAvailabilityProvider____lazy_storage___isSDPAvailable);
    goto LABEL_86;
  }

  v13 = sub_1000089FC();
  *(v0 + 352) = 0;
  *(v0 + 360) = 0xE000000000000000;
  v69._countAndFlagsBits = 544370502;
  v69._object = 0xE400000000000000;
  sub_10000898C(v69);
  *(v0 + 503) = 4;
  sub_100008A3C();
  v70._countAndFlagsBits = 8250;
  v70._object = 0xE200000000000000;
  sub_10000898C(v70);
  v14 = objc_opt_self();
  v8 = [v14 sharedConnection];
  if (!v8)
  {
    goto LABEL_92;
  }

  v15 = v8;
  v16 = [v8 recoveryPasscodeAvailable];

  if (v16)
  {
    v17._countAndFlagsBits = 1702195828;
  }

  else
  {
    v17._countAndFlagsBits = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  v17._object = v18;
  sub_10000898C(v17);

  sub_100003694(v13, *(v0 + 352), *(v0 + 360), 0xD000000000000017, 0x8000000100009BB0, 53);

  v8 = [v14 sharedConnection];
  if (!v8)
  {
    goto LABEL_94;
  }

  v19 = v8;
  v20 = [v8 recoveryPasscodeAvailable];
LABEL_49:
  v32 = v20;

LABEL_86:

  v62 = *(v0 + 8);

  return v62(v32 & 1);
}

uint64_t sub_100002240()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 424);

  return _swift_task_switch(sub_100002348, v2, v1);
}

uint64_t sub_100002348()
{
  v9 = *(v0 + 472);
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 408);
  v5 = *(v0 + 392);
  *(v0 + 506) = *(v0 + 496);

  v6 = [v3 sharedInstance];
  *(v0 + 488) = v6;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 497;
  *(v0 + 88) = sub_100002514;
  swift_continuation_init();
  *(v0 + 264) = v5;
  v7 = sub_1000029A8((v0 + 240));
  sub_1000089BC();
  v1(v7, v4, v5);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1000027D4;
  *(v0 + 232) = &unk_100010C30;
  [v6 canUseVisionToUnlockWithCompletionHandler:v0 + 208];
  v9(v7, v5);

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_100002514()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 424);

  return _swift_task_switch(sub_10000261C, v2, v1);
}

uint64_t sub_10000261C()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 506);

  v3 = *(v0 + 497);

  v4 = sub_1000089FC();
  sub_100008A1C(16);
  *(v0 + 272) = 0;
  *(v0 + 280) = 0xE000000000000000;
  v12._countAndFlagsBits = 544370502;
  v12._object = 0xE400000000000000;
  sub_10000898C(v12);
  *(v0 + 498) = 16;
  sub_100008A3C();
  v13._countAndFlagsBits = 8250;
  v13._object = 0xE200000000000000;
  sub_10000898C(v13);
  if (v2)
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_10000898C(v5);

  v14._countAndFlagsBits = 545029152;
  v14._object = 0xE400000000000000;
  sub_10000898C(v14);
  if (v3)
  {
    v7._countAndFlagsBits = 1702195828;
  }

  else
  {
    v7._countAndFlagsBits = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v7._object = v8;
  sub_10000898C(v7);

  sub_100003694(v4, *(v0 + 272), *(v0 + 280), 0xD000000000000017, 0x8000000100009BB0, 74);

  v9 = *(v0 + 8);

  return v9((v2 | v3) & 1);
}

uint64_t sub_1000027D4(uint64_t a1, char a2)
{
  sub_100002ACC((a1 + 32), *(a1 + 56));
  sub_100002960(&qword_100014298, qword_100008E88);
  return sub_1000089CC();
}

id sub_100002908(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IntentAvailabilityProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100002960(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_1000029A8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100002A1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002A80(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_100002ACC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002B18()
{
  v0 = sub_100002960(&qword_1000142C0, &qword_100008F40);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  sub_100003020();
  sub_10000879C();
  v4 = sub_10000875C();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_10000879C();
  v6 = sub_10000875C();
  v5(v3, v0);
  sub_100002960(&qword_1000142C8, &qword_100008F48);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100008EA0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_10000874C();

  return v8;
}

uint64_t sub_100002CDC()
{
  v0 = sub_10000877C();
  sub_100002960(&qword_1000142B0, &qword_100008F30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100008EB0;
  *(v1 + 32) = v0;
  v2 = sub_10000876C();

  return v2;
}

uint64_t sub_100002D68()
{
  v0 = sub_1000087CC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_100007BD0();
  sub_100003020();
  sub_1000087DC();
  v4 = sub_1000087BC();
  (*(v1 + 8))(v3, v0);
  sub_100002960(&qword_1000142B8, &qword_100008F38);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100008EB0;
  *(v5 + 32) = v4;
  v6 = sub_1000087AC();

  return v6;
}

uint64_t sub_100002ED0()
{
  v0 = sub_10000873C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003020();
  sub_10000872C();
  v4 = sub_10000871C();
  (*(v1 + 8))(v3, v0);
  sub_100002960(&qword_1000142A8, &qword_100008F28);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100008EB0;
  *(v5 + 32) = v4;
  v6 = sub_10000870C();

  return v6;
}

unint64_t sub_100003020()
{
  result = qword_1000142A0;
  if (!qword_1000142A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142A0);
  }

  return result;
}

uint64_t sub_100003074()
{
  v0 = sub_10000896C();
  sub_100003880(v0, qword_1000142D0);
  sub_100003844(v0, qword_1000142D0);
  return sub_10000895C();
}

unint64_t sub_1000030EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000031B8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100002A1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002A80(v11);
  return v7;
}

unint64_t sub_1000031B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000032C4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100008A2C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1000032C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003310(a1, a2);
  sub_100003440(&off_1000109F0);
  return v3;
}

void *sub_100003310(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000352C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100008A2C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000899C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000352C(v10, 0);
        result = sub_100008A0C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003440(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000035A0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000352C(uint64_t a1, uint64_t a2)
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

  sub_100002960(&qword_1000142E8, &unk_100008F58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000035A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002960(&qword_1000142E8, &unk_100008F58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_100003694(os_log_type_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (qword_100014230 != -1)
  {
    swift_once();
  }

  v12 = sub_10000896C();
  sub_100003844(v12, qword_1000142D0);

  oslog = sub_10000894C();

  if (os_log_type_enabled(oslog, a1))
  {
    v13 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000030EC(a4, a5, &v15);
    *(v13 + 12) = 2048;
    *(v13 + 14) = a6;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_1000030EC(a2, a3, &v15);
    _os_log_impl(&_mh_execute_header, oslog, a1, "%{public}s:%ld - %{public}s", v13, 0x20u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100003844(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003880(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000038E8()
{
  result = qword_1000142F0;
  if (!qword_1000142F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142F0);
  }

  return result;
}

unint64_t sub_100003940()
{
  result = qword_1000142F8;
  if (!qword_1000142F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142F8);
  }

  return result;
}

unint64_t sub_100003A00()
{
  result = qword_100014300;
  if (!qword_100014300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014300);
  }

  return result;
}

uint64_t sub_100003AA8()
{
  sub_1000086BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003B10(uint64_t a1)
{
  v2 = sub_100003A00();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100003B60()
{
  result = qword_100014308;
  if (!qword_100014308)
  {
    sub_100003BC4(&qword_100014310, &qword_100009088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014308);
  }

  return result;
}

uint64_t sub_100003BC4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003C10()
{
  result = qword_100014318;
  if (!qword_100014318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014318);
  }

  return result;
}

unint64_t sub_100003C68()
{
  result = qword_100014320;
  if (!qword_100014320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014320);
  }

  return result;
}

unint64_t sub_100003CC0()
{
  result = qword_100014328;
  if (!qword_100014328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014328);
  }

  return result;
}

uint64_t sub_100003D14@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_100002960(&qword_100014420, &qword_1000098B8);
  __chkstk_darwin(v3 - 8);
  v5 = v68 - v4;
  v6 = sub_100002960(&qword_1000143F8, &qword_1000098A8);
  __chkstk_darwin(v6 - 8);
  v8 = v68 - v7;
  v9 = sub_10000893C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v71 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = sub_10000882C();
  v14 = __chkstk_darwin(v13);
  v16 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v68 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v68 - v21;
  v23 = __chkstk_darwin(v20);
  v26 = v68 - v25;
  switch(a1)
  {
    case 1:
      v53 = v24;
      v70 = v23;
      v54 = [objc_opt_self() sharedConnection];
      if (!v54)
      {
        goto LABEL_58;
      }

      v55 = v54;
      [v54 isPasscodeSet];

      sub_10000892C();
      sub_100005958();
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_100005888();
      v56 = sub_1000087FC();
      (*(*(v56 - 8) + 56))(v5, 0, 1, v56);
      sub_10000892C();
      sub_10000880C();
      return (*(v53 + 32))(v72, v22, v70);
    case 2:
    case 4:
    case 5:
      sub_10000892C();
      sub_100005958();
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_100005888();
      v57 = sub_1000087FC();
      (*(*(v57 - 8) + 56))(v5, 0, 1, v57);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      *(swift_allocObject() + 16) = xmmword_100008EB0;
      sub_10000892C();
      goto LABEL_49;
    case 3:
    case 7:
      sub_10000892C();
      sub_100005958();
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_100005888();
      v52 = sub_1000087FC();
      (*(*(v52 - 8) + 56))(v5, 0, 1, v52);
      goto LABEL_49;
    case 6:
      v69 = v24;
      v70 = v23;
      v59 = [objc_opt_self() sharedConnection];
      if (!v59)
      {
        goto LABEL_59;
      }

      v60 = v59;
      [v59 effectiveBoolValueForSetting:MCFeatureAllowVoiceDialing];

      sub_10000892C();
      sub_100005958();
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_100005888();
      v61 = sub_1000087FC();
      (*(*(v61 - 8) + 56))(v5, 0, 1, v61);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      *(swift_allocObject() + 16) = xmmword_100008EB0;
      sub_10000892C();
      sub_10000892C();
      sub_10000880C();
      return (*(v69 + 32))(v72, v19, v70);
    case 8:
    case 10:
    case 11:
    case 12:
      sub_10000892C();
      sub_100005958();
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_1000087EC();
      v62 = sub_1000087FC();
      (*(*(v62 - 8) + 56))(v5, 0, 1, v62);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      *(swift_allocObject() + 16) = xmmword_100008EB0;
      sub_10000892C();
      goto LABEL_49;
    case 9:
      sub_10000892C();
      sub_100005958();
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_1000087EC();
      v50 = sub_1000087FC();
      (*(*(v50 - 8) + 56))(v5, 0, 1, v50);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      *(swift_allocObject() + 16) = xmmword_100008EA0;
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      return sub_10000880C();
    case 13:
      sub_10000892C();
      sub_100005958();
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_1000087EC();
      v58 = sub_1000087FC();
      (*(*(v58 - 8) + 56))(v5, 0, 1, v58);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      *(swift_allocObject() + 16) = xmmword_1000090B0;
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      return sub_10000880C();
    case 14:
      v69 = v24;
      v70 = v23;
      v33 = MobileGestalt_get_current_device();
      if (!v33)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        JUMPOUT(0x100005844);
      }

      v34 = v33;
      touchIDCapability = MobileGestalt_get_touchIDCapability();

      if (touchIDCapability)
      {
        v36 = "com.apple.graphic-icon.touch-id";
      }

      else
      {
        v36 = "com.apple.graphic-icon.face-id";
      }

      v68[1] = v36;
      v37 = 0x100000000000001ELL;
      if (touchIDCapability)
      {
        v37 = 0x100000000000001FLL;
      }

      v68[0] = v37;
      if (touchIDCapability)
      {
        v38 = "Use Touch ID for iPhone Unlock";
      }

      else
      {
        v38 = "Use Face ID for iPhone Unlock";
      }

      v68[2] = v38;
      v39 = 0x1000000000000023;
      if (touchIDCapability)
      {
        v40 = "r iTunes & App Store";
      }

      else
      {
        v40 = " iTunes & App Store";
      }

      v68[3] = v40;
      if (touchIDCapability)
      {
        v41 = "r Wallet & Apple Pay";
      }

      else
      {
        v41 = " Wallet & Apple Pay";
      }

      v68[5] = v41;
      v42 = 0x1000000000000027;
      if (touchIDCapability)
      {
        v42 = 0x1000000000000028;
      }

      v68[4] = v42;
      if (touchIDCapability)
      {
        v43 = "r Contactless & Payments";
      }

      else
      {
        v43 = " Contactless & Payments";
      }

      v68[7] = v43;
      if (!touchIDCapability)
      {
        v39 = 0x1000000000000022;
      }

      v68[6] = v39;
      if (touchIDCapability)
      {
        v44 = "r Password AutoFill";
      }

      else
      {
        v44 = " Password AutoFill";
      }

      v68[10] = v44;
      v45 = 0x100000000000001BLL;
      if (touchIDCapability)
      {
        v45 = 0x100000000000001CLL;
      }

      v68[8] = v45;
      if (touchIDCapability)
      {
        v46 = "Use Touch ID for Other Apps";
      }

      else
      {
        v46 = "Use Face ID for Other Apps";
      }

      v68[11] = v46;
      v47 = 0x10000000000000C6;
      if (!touchIDCapability)
      {
        v47 = 0x10000000000000C5;
      }

      v68[9] = v47;
      sub_10000892C();
      sub_100005958();
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_1000087EC();
      v48 = sub_1000087FC();
      (*(*(v48 - 8) + 56))(v5, 0, 1, v48);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      *(swift_allocObject() + 16) = xmmword_1000090A0;
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000880C();
      result = (*(v69 + 32))(v72, v16, v70);
      break;
    case 15:
      sub_10000892C();
      sub_100005958();
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_100005888();
      v51 = sub_1000087FC();
      (*(*(v51 - 8) + 56))(v5, 0, 1, v51);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      *(swift_allocObject() + 16) = xmmword_100009090;
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      sub_10000892C();
      goto LABEL_49;
    case 16:
      sub_10000892C();
      sub_100005958();
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_100005888();
      v32 = sub_1000087FC();
      (*(*(v32 - 8) + 56))(v5, 0, 1, v32);
      sub_100002960(&qword_100014428, &qword_1000098C0);
      *(swift_allocObject() + 16) = xmmword_100008EA0;
      sub_10000892C();
      sub_10000892C();
LABEL_49:
      sub_10000892C();
      return sub_10000880C();
    default:
      v27 = v24;
      v28 = v23;
      v29 = MobileGestalt_get_current_device();
      if (!v29)
      {
        goto LABEL_57;
      }

      v30 = v29;
      v31 = MobileGestalt_get_touchIDCapability();

      if (v31)
      {
        goto LABEL_53;
      }

      v63 = MobileGestalt_get_current_device();
      if (!v63)
      {
        goto LABEL_60;
      }

      v64 = v63;
      pearlIDCapability = MobileGestalt_get_pearlIDCapability();

      if (pearlIDCapability)
      {
LABEL_53:
        sub_10000892C();
        (*(v10 + 56))(v8, 1, 1, v9);
        sub_100005888();
        v66 = sub_1000087FC();
        (*(*(v66 - 8) + 56))(v5, 0, 1, v66);
        sub_10000892C();
        sub_10000880C();
      }

      else
      {
        sub_10000892C();
        (*(v10 + 56))(v8, 1, 1, v9);
        sub_100005888();
        v67 = sub_1000087FC();
        (*(*(v67 - 8) + 56))(v5, 0, 1, v67);
        sub_10000881C();
      }

      result = (*(v27 + 32))(v72, v26, v28);
      break;
  }

  return result;
}

id sub_100005888()
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = result;
  touchIDCapability = MobileGestalt_get_touchIDCapability();

  if ((touchIDCapability & 1) == 0)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v3 = result;
      MobileGestalt_get_pearlIDCapability();

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

LABEL_5:

  return sub_1000087EC();
}

id sub_100005958()
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = result;
  touchIDCapability = MobileGestalt_get_touchIDCapability();

  if (!touchIDCapability)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v3 = result;
      MobileGestalt_get_pearlIDCapability();

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

LABEL_5:

  return sub_10000892C();
}

uint64_t sub_100005A3C()
{
  v0 = sub_100002960(&qword_1000143F8, &qword_1000098A8);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10000893C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1000088FC();
  sub_100003880(v5, qword_1000154D0);
  sub_100003844(v5, qword_1000154D0);
  sub_10000892C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000088EC();
}

uint64_t sub_100005BAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000085C8;

  return sub_100007FC8();
}

uint64_t sub_100005C4C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000085A4;

  return sub_100007FC8();
}

uint64_t sub_100005CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005DB0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100005DB0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100005EB4()
{
  result = qword_100014330;
  if (!qword_100014330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014330);
  }

  return result;
}

uint64_t sub_100005F08(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005FAC;

  return sub_10000842C();
}

uint64_t sub_100005FAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_1000060C4()
{
  result = qword_100014338;
  if (!qword_100014338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014338);
  }

  return result;
}

unint64_t sub_10000611C()
{
  result = qword_100014340;
  if (!qword_100014340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014340);
  }

  return result;
}

unint64_t sub_100006174()
{
  result = qword_100014348;
  if (!qword_100014348)
  {
    sub_100003BC4(&qword_100014350, qword_100009178);
    sub_10000611C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014348);
  }

  return result;
}

uint64_t sub_1000061F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100005EB4();
  *v5 = v2;
  v5[1] = sub_1000062AC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000062AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000063E8()
{
  result = qword_100014358;
  if (!qword_100014358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014358);
  }

  return result;
}

uint64_t sub_10000643C(uint64_t a1)
{
  v1 = sub_100002960(&qword_100014430, &qword_1000098C8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100002960(&qword_100014438, &qword_1000098D0);
  __chkstk_darwin(v5);
  sub_100003CC0();
  sub_1000088AC();
  v8._object = 0x800000010000B200;
  v8._countAndFlagsBits = 0xD000000000000031;
  sub_10000889C(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_10000888C();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_10000889C(v9);
  return sub_1000088BC();
}

unint64_t sub_10000661C()
{
  result = qword_100014360;
  if (!qword_100014360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014360);
  }

  return result;
}

unint64_t sub_100006674()
{
  result = qword_100014368;
  if (!qword_100014368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014368);
  }

  return result;
}

unint64_t sub_1000066CC()
{
  result = qword_100014370;
  if (!qword_100014370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014370);
  }

  return result;
}

unint64_t sub_100006724()
{
  result = qword_100014378;
  if (!qword_100014378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014378);
  }

  return result;
}

uint64_t sub_100006778(uint64_t a1)
{
  sub_100007F74();
  v2 = sub_10000885C();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000067E8()
{
  result = qword_100014380;
  if (!qword_100014380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014380);
  }

  return result;
}

unint64_t sub_100006840()
{
  result = qword_100014388;
  if (!qword_100014388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014388);
  }

  return result;
}

unint64_t sub_100006898()
{
  result = qword_100014390;
  if (!qword_100014390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014390);
  }

  return result;
}

unint64_t sub_1000068F0()
{
  result = qword_100014398;
  if (!qword_100014398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014398);
  }

  return result;
}

uint64_t sub_1000069CC(uint64_t a1)
{
  v2 = sub_100003CC0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100006A1C()
{
  result = qword_1000143B0;
  if (!qword_1000143B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143B0);
  }

  return result;
}

uint64_t sub_100006A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000062AC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100006B3C(uint64_t a1)
{
  v2 = sub_100006898();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100006B88(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
      return 0xD000000000000010;
    case 2:
      return 0xD000000000000010;
    case 3:
      return 0x444F435353415023;
    case 4:
      v3 = 11;
      goto LABEL_10;
    case 5:
      return 0x45445F4550495723;
    case 6:
      return 0x445F4543494F5623;
    case 7:
      return 0xD000000000000014;
    case 8:
    case 9:
      return 0xD000000000000012;
    case 10:
      return 0xD000000000000020;
    case 11:
      return 0x414C475F44444123;
    case 12:
      return 0xD000000000000010;
    case 13:
      return 0xD000000000000013;
    case 14:
    case 16:
      v3 = 10;
      goto LABEL_10;
    case 15:
      v3 = 9;
LABEL_10:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100006DB0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100006B88(*a1);
  v5 = v4;
  if (v3 == sub_100006B88(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008A4C();
  }

  return v8 & 1;
}

unint64_t sub_100006E3C()
{
  result = qword_1000143B8;
  if (!qword_1000143B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143B8);
  }

  return result;
}

Swift::Int sub_100006E90()
{
  v1 = *v0;
  sub_100008A6C();
  sub_100006B88(v1);
  sub_10000897C();

  return sub_100008A7C();
}

uint64_t sub_100006EF4(uint64_t a1)
{
  sub_100006B88(*v1);
  sub_10000897C();
}

Swift::Int sub_100006F48(uint64_t a1)
{
  v2 = *v1;
  sub_100008A6C();
  sub_100006B88(v2);
  sub_10000897C();

  return sub_100008A7C();
}

unint64_t sub_100006FA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000854C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100006FD8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100006B88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100007048(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003BC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000070BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000854C(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100007108()
{
  result = qword_1000143D0;
  if (!qword_1000143D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143D0);
  }

  return result;
}

uint64_t sub_100007160()
{
  v0 = sub_10000893C();
  sub_100003880(v0, qword_1000154E8);
  sub_100003844(v0, qword_1000154E8);
  return sub_10000892C();
}

void *sub_1000071C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000086DC();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100007238(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000086CC();
  return sub_1000072AC;
}

void sub_1000072AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000072F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007ECC();
  v5 = sub_100007F74();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100007370()
{
  result = qword_1000143D8;
  if (!qword_1000143D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143D8);
  }

  return result;
}

unint64_t sub_1000073C8()
{
  result = qword_1000143E0;
  if (!qword_1000143E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143E0);
  }

  return result;
}

unint64_t sub_100007420()
{
  result = qword_1000143E8;
  if (!qword_1000143E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143E8);
  }

  return result;
}

uint64_t sub_1000074FC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100003844(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000075A4(uint64_t a1)
{
  v2 = sub_100007ECC();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1000075E8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100007ECC();
  v6 = sub_100007F20();
  v7 = sub_100007F74();
  *v4 = v2;
  v4[1] = sub_1000076B4;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000076B4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000077BC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100007BD0();
  *a2 = result;
  return result;
}

uint64_t sub_1000077E4(uint64_t a1)
{
  v2 = sub_100003020();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100007868(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000078F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_1000079C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002960(&unk_100014440, &qword_1000098E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_100007ABC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007ADC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100007ADC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002960(&unk_100014440, &qword_1000098E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100007BD0()
{
  v17 = sub_1000088CC();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002960(&qword_1000143F0, &qword_1000098A0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100002960(&qword_1000143F8, &qword_1000098A8);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_10000893C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100002960(&qword_100014400, &qword_1000098B0);
  sub_10000892C();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 17;
  v14 = sub_1000086AC();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100003CC0();
  return sub_1000086FC();
}

unint64_t sub_100007ECC()
{
  result = qword_100014408;
  if (!qword_100014408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014408);
  }

  return result;
}

unint64_t sub_100007F20()
{
  result = qword_100014410;
  if (!qword_100014410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014410);
  }

  return result;
}

unint64_t sub_100007F74()
{
  result = qword_100014418;
  if (!qword_100014418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014418);
  }

  return result;
}

uint64_t sub_100007FE4()
{
  sub_1000089EC();
  *(v0 + 16) = sub_1000089DC();
  v2 = sub_1000089AC();

  return _swift_task_switch(sub_100008078, v2, v1);
}

uint64_t sub_100008078()
{

  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for IntentAvailabilityProvider()) init];

  return _swift_task_switch(sub_1000080FC, 0, 0);
}

uint64_t sub_1000080FC()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  *(v0 + 56) = 0;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000081A8;

  return sub_100001638(0);
}

uint64_t sub_1000081A8(char a1)
{
  *(*v1 + 57) = a1;

  return _swift_task_switch(sub_1000082A8, 0, 0);
}

uint64_t sub_1000082A8()
{
  v1 = *(v0 + 40);
  if (*(v0 + 57))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 40);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = sub_1000079C8(0, *(v1 + 2) + 1, 1, *(v0 + 40));
    }

    v4 = *(v1 + 2);
    v3 = *(v1 + 3);
    if (v4 >= v3 >> 1)
    {
      v1 = sub_1000079C8((v3 > 1), v4 + 1, 1, v1);
    }

    v5 = *(v0 + 56);
    *(v1 + 2) = v4 + 1;
    v1[v4 + 32] = v5;
  }

  v6 = *(v0 + 32) + 1;
  if (*(v0 + 32) == 16)
  {

    v7 = *(v0 + 8);

    return v7(v1);
  }

  else
  {
    *(v0 + 32) = v6;
    *(v0 + 40) = v1;
    v9 = *(&off_100010A18 + v6 + 32);
    *(v0 + 56) = v9;
    v10 = swift_task_alloc();
    *(v0 + 48) = v10;
    *v10 = v0;
    v10[1] = sub_1000081A8;

    return sub_100001638(v9);
  }
}

uint64_t sub_100008448()
{
  sub_100007ABC(0, 17, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_100010A18 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100007ABC((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 17);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_10000854C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100008A5C();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}