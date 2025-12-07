uint64_t sub_10016ACC8()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1888) = *(v3 + 432);
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_10016ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000AF64();
  sub_100002E38();
  v16 = *(v15 + 1608);

  v17 = *(v15 + 1872);
  v18 = *(v15 + 1864);
  if (v16)
  {
    v19 = *(v15 + 1744);
    *(v15 + 1480) = sub_100003AE0(0, &qword_1002DA6C8, NSNumber_ptr);
    *(v15 + 1456) = v16;
    sub_1001514B8((v15 + 1456), (v15 + 1520));
    v20 = v16;
    sub_1001706B8();
    *(v15 + 1600) = v19;
    v21 = sub_100003EC4();
    sub_10014EB30(v21, v22);
    sub_1001703D0();
    if (v31)
    {
      __break(1u);
    }

    else
    {
      sub_10017054C();
      sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
      if (sub_1001706A0())
      {
        sub_10014EB30(*(v15 + 1864), *(v15 + 1872));
        sub_100170474();
        if (!v70)
        {
          sub_1000041E0();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v18 = v32;
      }

      v41 = *(v15 + 1600);
      if (v17)
      {
        sub_1001704E0();
        sub_1000035E4((v15 + 1520));
LABEL_17:

        sub_1000028F4();
        v40 = v41;
        goto LABEL_18;
      }

      sub_10000A2C0(*(v15 + 1864));
      v23 = sub_100170518((v15 + 1520), v42);
      if (!v31)
      {
        *(v41 + 16) = v43;
        goto LABEL_17;
      }
    }

    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }

  v35 = *(v15 + 1776);
  v36 = sub_100003EC4();
  sub_10014EB30(v36, v37);
  sub_100170484();
  if (v35)
  {
    sub_100170638();
    sub_100170650();
    sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_100170618();
    sub_100004FF8();
    v38 = sub_1001704A0();
    sub_100008BE0(v38, v39, &type metadata for String);
    sub_1000028F4();
    v40 = a9;
  }

  else
  {
    sub_1001704D4();
    v40 = *(v15 + 1792);
    v17 = *(v15 + 1784);
    v18 = *(v15 + 1776);
  }

  sub_100009DF4(v15 + 1488);
LABEL_18:
  sub_100008AF8();
  *(v15 + 1792) = v40;
  *(v15 + 1784) = v17;
  *(v15 + 1776) = v18;
  *(v15 + 1768) = v18;
  *(v15 + 1760) = v18;
  sub_100170398(v44);
  if (!v70)
  {
    v53 = sub_100004C74();
    v54(v53);
    v55 = sub_1001703C0();
    if (v56(v55) == v18)
    {
      v57 = sub_10000F0F4();
      v58(v57);
      v59 = sub_10000DC1C();
      v60 = sub_100170534(v59, "arrayForKey:");

      sub_1001705E8([v60 valuePromise]);
      sub_100170468();
      *(v15 + 272) = v61;
      sub_100170364();
      v62 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
      sub_1000039E8(v62);
      sub_100003D30(COERCE_DOUBLE(1107296256));
      *(v15 + 680) = &unk_1002BB360;
LABEL_43:
      sub_100170600(v63, "resultWithCompletion:");
      sub_1000041E0();

      return _swift_continuation_await(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14);
    }

    sub_100002ED4();
    if (v70)
    {
      v64 = sub_10000B098();
      v65(v64);
      v66 = sub_10000BD1C();
      v67 = sub_100170534(v66, "BOOLForKey:");

      sub_1001705A0([v67 valuePromise]);
      sub_100170468();
      *(v15 + 208) = v68;
      sub_100170330();
      v69 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_10000C0D0(v69);
      *(v15 + 472) = 1107296256;
      sub_1000083E8(&unk_1002BB338);
      goto LABEL_43;
    }

    sub_1001704C8();
    if (v70)
    {
      v71 = sub_100004668();
      v72(v71);
      v73 = sub_1001703E4();
      v74 = sub_100170534(v73, "doubleForKey:");

      sub_1001705B8([v74 valuePromise]);
      sub_100170468();
      *(v15 + 400) = v75;
      sub_10000B49C();
      v76 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_100007D7C(v76);
      sub_100007794(COERCE_DOUBLE(1107296256));
      *(v15 + 808) = &unk_1002BB310;
      goto LABEL_43;
    }

    sub_1000040E8();
    if (v77)
    {
      v78 = sub_100170300();
      v79(v78);
      v80 = sub_100170424();
      v81 = sub_100170534(v80, "integerForKey:");

      sub_100170588([v81 valuePromise]);
      sub_100170468();
      *(v15 + 336) = v82;
      sub_10000B8D4();
      v83 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_1000067C0(v83);
      sub_10000329C(COERCE_DOUBLE(1107296256));
      *(v15 + 872) = &unk_1002BB2E8;
      goto LABEL_43;
    }

    sub_1001704BC();
    if (v84)
    {
      v85 = sub_1000053C8();
      v86(v85);
      v87 = sub_100170404();
      v88 = sub_100170534(v87, "stringForKey:");

      sub_100003ED0([v88 valuePromise]);
      sub_100170468();
      *(v15 + 144) = v89;
      sub_10000D0C8();
      v90 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      sub_100006F30(v90);
      sub_1000073F0(COERCE_DOUBLE(1107296256));
      *(v15 + 744) = &unk_1002BB2C0;
      goto LABEL_43;
    }

    sub_100002AB8();
    if (v91)
    {
      v92 = sub_10000ABFC();
      v93(v92);
      v94 = sub_100005D64();
      v95 = sub_100170534(v94, "URLForKey:");

      sub_1001705D0([v95 valuePromise]);
      sub_100170468();
      *(v15 + 80) = v96;
      sub_100008E74();
      v97 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
      sub_100008134(v97);
      sub_10000BB90(COERCE_DOUBLE(1107296256));
      *(v15 + 616) = &unk_1002BB298;
      goto LABEL_43;
    }

    sub_100004944();
    if (v98)
    {
      v99 = sub_10000EECC();
      v100(v99);
      v101 = sub_100010E90();
      v102 = sub_100170534(v101, "dictionaryForKey:");

      sub_100170570([v102 valuePromise]);
      sub_100170468();
      *(v15 + 16) = v103;
      sub_100013CE8();
      v104 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
      sub_100006B24(v104);
      sub_10000A658(COERCE_DOUBLE(1107296256));
      *(v15 + 552) = &unk_1002BB270;
      goto LABEL_43;
    }

    sub_10000AE84();
    sub_1000041E0();

    return _diagnoseUnexpectedEnumCase<A>(type:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }

  sub_1001706D0();
  sub_100010FA8();

  sub_10000DF84();
  sub_1000041E0();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
}

uint64_t sub_10016B504()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1920) = *(v3 + 368);
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_10016B600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000AF64();
  sub_100002E38();
  v18 = *(v15 + 1624);

  v19 = *(v15 + 1904);
  v20 = *(v15 + 1896);
  if (v18)
  {
    v17 = *(v15 + 1744);
    *(v15 + 1256) = sub_100003AE0(0, &qword_1002DA6C8, NSNumber_ptr);
    *(v15 + 1232) = v18;
    sub_1001514B8((v15 + 1232), (v15 + 1296));
    v21 = v18;
    sub_1001706B8();
    *(v15 + 1616) = v17;
    v22 = sub_100003EC4();
    sub_10014EB30(v22, v23);
    sub_1001703D0();
    if (v32)
    {
      __break(1u);
    }

    else
    {
      sub_10017054C();
      sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
      if (sub_1001706A0())
      {
        sub_10014EB30(*(v15 + 1896), *(v15 + 1904));
        sub_100170474();
        if (!v70)
        {
          sub_1000041E0();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v20 = v33;
      }

      v41 = *(v15 + 1616);
      v16 = *(v15 + 1904);
      if (v19)
      {
        sub_1001704E0();
        sub_1000035E4((v15 + 1296));
LABEL_17:

        sub_1001703AC();
        goto LABEL_18;
      }

      sub_10000A2C0(*(v15 + 1896));
      v24 = sub_100170518((v15 + 1296), v42);
      if (!v32)
      {
        *(v41 + 16) = v43;
        goto LABEL_17;
      }
    }

    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }

  v36 = *(v15 + 1768);
  v37 = sub_100003EC4();
  sub_10014EB30(v37, v38);
  sub_100170484();
  if (v36)
  {
    sub_100170638();
    sub_100170650();
    sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_100170618();
    sub_100004FF8();
    v39 = sub_1001704A0();
    sub_100008BE0(v39, v40, &type metadata for String);
    sub_1001703AC();
  }

  else
  {
    sub_1001704D4();
    v17 = *(v15 + 1792);
    v16 = *(v15 + 1784);
    v19 = *(v15 + 1776);
    v20 = *(v15 + 1768);
  }

  sub_100009DF4(v15 + 1264);
LABEL_18:
  sub_100008AF8();
  *(v15 + 1792) = v17;
  *(v15 + 1784) = v16;
  *(v15 + 1776) = v19;
  *(v15 + 1768) = v20;
  *(v15 + 1760) = v20;
  sub_100170398(v44);
  if (!v70)
  {
    v53 = sub_100004C74();
    v54(v53);
    v55 = sub_1001703C0();
    if (v56(v55) == v20)
    {
      v57 = sub_10000F0F4();
      v58(v57);
      v59 = sub_10000DC1C();
      v60 = sub_100170534(v59, "arrayForKey:");

      sub_1001705E8([v60 valuePromise]);
      sub_100170468();
      *(v15 + 272) = v61;
      sub_100170364();
      v62 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
      sub_1000039E8(v62);
      sub_100003D30(COERCE_DOUBLE(1107296256));
      *(v15 + 680) = &unk_1002BB360;
LABEL_43:
      sub_100170600(v63, "resultWithCompletion:");
      sub_1000041E0();

      return _swift_continuation_await(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14);
    }

    sub_100002ED4();
    if (v70)
    {
      v64 = sub_10000B098();
      v65(v64);
      v66 = sub_10000BD1C();
      v67 = sub_100170534(v66, "BOOLForKey:");

      sub_1001705A0([v67 valuePromise]);
      sub_100170468();
      *(v15 + 208) = v68;
      sub_100170330();
      v69 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_10000C0D0(v69);
      *(v15 + 472) = 1107296256;
      sub_1000083E8(&unk_1002BB338);
      goto LABEL_43;
    }

    sub_1001704C8();
    if (v70)
    {
      v71 = sub_100004668();
      v72(v71);
      v73 = sub_1001703E4();
      v74 = sub_100170534(v73, "doubleForKey:");

      sub_1001705B8([v74 valuePromise]);
      sub_100170468();
      *(v15 + 400) = v75;
      sub_10000B49C();
      v76 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_100007D7C(v76);
      sub_100007794(COERCE_DOUBLE(1107296256));
      *(v15 + 808) = &unk_1002BB310;
      goto LABEL_43;
    }

    sub_1000040E8();
    if (v77)
    {
      v78 = sub_100170300();
      v79(v78);
      v80 = sub_100170424();
      v81 = sub_100170534(v80, "integerForKey:");

      sub_100170588([v81 valuePromise]);
      sub_100170468();
      *(v15 + 336) = v82;
      sub_10000B8D4();
      v83 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
      sub_1000067C0(v83);
      sub_10000329C(COERCE_DOUBLE(1107296256));
      *(v15 + 872) = &unk_1002BB2E8;
      goto LABEL_43;
    }

    sub_1001704BC();
    if (v84)
    {
      v85 = sub_1000053C8();
      v86(v85);
      v87 = sub_100170404();
      v88 = sub_100170534(v87, "stringForKey:");

      sub_100003ED0([v88 valuePromise]);
      sub_100170468();
      *(v15 + 144) = v89;
      sub_10000D0C8();
      v90 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
      sub_100006F30(v90);
      sub_1000073F0(COERCE_DOUBLE(1107296256));
      *(v15 + 744) = &unk_1002BB2C0;
      goto LABEL_43;
    }

    sub_100002AB8();
    if (v91)
    {
      v92 = sub_10000ABFC();
      v93(v92);
      v94 = sub_100005D64();
      v95 = sub_100170534(v94, "URLForKey:");

      sub_1001705D0([v95 valuePromise]);
      sub_100170468();
      *(v15 + 80) = v96;
      sub_100008E74();
      v97 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
      sub_100008134(v97);
      sub_10000BB90(COERCE_DOUBLE(1107296256));
      *(v15 + 616) = &unk_1002BB298;
      goto LABEL_43;
    }

    sub_100004944();
    if (v98)
    {
      v99 = sub_10000EECC();
      v100(v99);
      v101 = sub_100010E90();
      v102 = sub_100170534(v101, "dictionaryForKey:");

      sub_100170570([v102 valuePromise]);
      sub_100170468();
      *(v15 + 16) = v103;
      sub_100013CE8();
      v104 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
      sub_100006B24(v104);
      sub_10000A658(COERCE_DOUBLE(1107296256));
      *(v15 + 552) = &unk_1002BB270;
      goto LABEL_43;
    }

    sub_10000AE84();
    sub_1000041E0();

    return _diagnoseUnexpectedEnumCase<A>(type:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }

  sub_1001706D0();
  sub_100010FA8();

  sub_10000DF84();
  sub_1000041E0();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
}

uint64_t sub_10016BD3C()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1952) = *(v3 + 176);
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_10016C560()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1984) = *(v3 + 112);
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_10016CD84()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2016) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_10016D5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000051E0();
  v15 = *(v14 + 1816);
  swift_willThrow();

  v16 = *(v14 + 1808);
  v17 = sub_10014EB30(*(v14 + 1800), v16);
  v19 = v18;

  if (v19)
  {
    LODWORD(v16) = sub_100170638();
    v20 = *(v19 + 24);
    sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v16, v20);

    sub_1001514B8((*(v19 + 56) + 32 * v17), (v14 + 944));
    _NativeDictionary._delete(at:)();
    v17 = v19;
  }

  else
  {
    sub_100170700();
  }

  sub_100009DF4(v14 + 944);
  sub_100008AF8();
  *(v14 + 1792) = v17;
  *(v14 + 1784) = v17;
  *(v14 + 1776) = v17;
  *(v14 + 1768) = v17;
  *(v14 + 1760) = v17;
  sub_100170398(v21);
  if (v41)
  {
    Dictionary._bridgeToObjectiveC()();
    sub_1001706E8();

    sub_10000F404();
    sub_100170688();

    __asm { BRAA            X2, X16 }
  }

  v24 = sub_100004C74();
  v25(v24);
  v26 = sub_1001703C0();
  if (v27(v26) == v16)
  {
    v28 = sub_10000F0F4();
    v29(v28);
    v30 = sub_10000DC1C();
    v31 = sub_100170534(v30, "arrayForKey:");

    sub_1001705E8([v31 valuePromise]);
    sub_100170468();
    *(v14 + 272) = v32;
    sub_100170364();
    v33 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v33);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    *(v14 + 680) = &unk_1002BB360;
LABEL_29:
    sub_100170600(v34, "resultWithCompletion:");
    sub_100170688();

    return _swift_continuation_await(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14);
  }

  sub_100002ED4();
  if (v41)
  {
    v35 = sub_10000B098();
    v36(v35);
    v37 = sub_10000BD1C();
    v38 = sub_100170534(v37, "BOOLForKey:");

    sub_1001705A0([v38 valuePromise]);
    sub_100170468();
    *(v14 + 208) = v39;
    sub_100170330();
    v40 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v40);
    *(v14 + 472) = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v41)
  {
    v42 = sub_100004668();
    v43(v42);
    v44 = sub_1001703E4();
    v45 = sub_100170534(v44, "doubleForKey:");

    sub_1001705B8([v45 valuePromise]);
    sub_100170468();
    *(v14 + 400) = v46;
    sub_10000B49C();
    v47 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v47);
    sub_100007794(COERCE_DOUBLE(1107296256));
    *(v14 + 808) = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v48)
  {
    v49 = sub_100170300();
    v50(v49);
    v51 = sub_100170424();
    v52 = sub_100170534(v51, "integerForKey:");

    sub_100170588([v52 valuePromise]);
    sub_100170468();
    *(v14 + 336) = v53;
    sub_10000B8D4();
    v54 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v54);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    *(v14 + 872) = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v55)
  {
    v56 = sub_1000053C8();
    v57(v56);
    v58 = sub_100170404();
    v59 = sub_100170534(v58, "stringForKey:");

    sub_100003ED0([v59 valuePromise]);
    sub_100170468();
    *(v14 + 144) = v60;
    sub_10000D0C8();
    v61 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v61);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    *(v14 + 744) = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v62)
  {
    v63 = sub_10000ABFC();
    v64(v63);
    v65 = sub_100005D64();
    v66 = sub_100170534(v65, "URLForKey:");

    sub_1001705D0([v66 valuePromise]);
    sub_100170468();
    *(v14 + 80) = v67;
    sub_100008E74();
    v68 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v68);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    *(v14 + 616) = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v69)
  {
    v70 = sub_10000EECC();
    v71(v70);
    v72 = sub_100010E90();
    v73 = sub_100170534(v72, "dictionaryForKey:");

    sub_100170570([v73 valuePromise]);
    sub_100170468();
    *(v14 + 16) = v74;
    sub_100013CE8();
    v75 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v75);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    *(v14 + 552) = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170688();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10);
}

uint64_t sub_10016DC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000051E0();
  v15 = v14[231];
  v16 = v14[232];
  swift_willThrow();

  v17 = v14[230];
  v18 = v14[223];
  sub_10014EB30(v14[229], v17);
  sub_100170484();
  if (v18)
  {
    sub_100170638();
    sub_10000BF48();
    v19 = sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_100006B48(v19, v20, v21, v22, v23, v24, v25, v26, v101, v102);
    sub_100004FF8();
    v27 = sub_1001704A0();
    sub_1001704FC(v27, v28, &type metadata for String);
    sub_1000028F4();
  }

  else
  {
    sub_1001704D4();
    v17 = v14[224];
    v16 = v14[223];
  }

  sub_100009DF4((v14 + 166));
  sub_100008AF8();
  v14[224] = v17;
  v14[223] = v16;
  v14[222] = v16;
  v14[221] = v16;
  v14[220] = v16;
  sub_100170398(v29);
  if (v49)
  {
    Dictionary._bridgeToObjectiveC()();
    sub_100010FA8();

    sub_10000DF84();
    sub_100170688();

    __asm { BRAA            X2, X16 }
  }

  v32 = sub_100004C74();
  v33(v32);
  v34 = sub_1001703C0();
  if (v35(v34) == v16)
  {
    v36 = sub_10000F0F4();
    v37(v36);
    v38 = sub_10000DC1C();
    v39 = sub_100170534(v38, "arrayForKey:");

    sub_1001705E8([v39 valuePromise]);
    sub_100170468();
    v14[34] = v40;
    sub_100170364();
    v41 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v41);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    v14[85] = &unk_1002BB360;
LABEL_29:
    sub_100170600(v42, "resultWithCompletion:");
    sub_100170688();

    return _swift_continuation_await(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14);
  }

  sub_100002ED4();
  if (v49)
  {
    v43 = sub_10000B098();
    v44(v43);
    v45 = sub_10000BD1C();
    v46 = sub_100170534(v45, "BOOLForKey:");

    sub_1001705A0([v46 valuePromise]);
    sub_100170468();
    v14[26] = v47;
    sub_100170330();
    v48 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v48);
    v14[59] = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v49)
  {
    v50 = sub_100004668();
    v51(v50);
    v52 = sub_1001703E4();
    v53 = sub_100170534(v52, "doubleForKey:");

    sub_1001705B8([v53 valuePromise]);
    sub_100170468();
    v14[50] = v54;
    sub_10000B49C();
    v55 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v55);
    sub_100007794(COERCE_DOUBLE(1107296256));
    v14[101] = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v56)
  {
    v57 = sub_100170300();
    v58(v57);
    v59 = sub_100170424();
    v60 = sub_100170534(v59, "integerForKey:");

    sub_100170588([v60 valuePromise]);
    sub_100170468();
    v14[42] = v61;
    sub_10000B8D4();
    v62 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v62);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    v14[109] = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v63)
  {
    v64 = sub_1000053C8();
    v65(v64);
    v66 = sub_100170404();
    v67 = sub_100170534(v66, "stringForKey:");

    sub_100003ED0([v67 valuePromise]);
    sub_100170468();
    v14[18] = v68;
    sub_10000D0C8();
    v69 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v69);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    v14[93] = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v70)
  {
    v71 = sub_10000ABFC();
    v72(v71);
    v73 = sub_100005D64();
    v74 = sub_100170534(v73, "URLForKey:");

    sub_1001705D0([v74 valuePromise]);
    sub_100170468();
    v14[10] = v75;
    sub_100008E74();
    v76 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v76);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    v14[77] = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v77)
  {
    v78 = sub_10000EECC();
    v79(v78);
    v80 = sub_100010E90();
    v81 = sub_100170534(v80, "dictionaryForKey:");

    sub_100170570([v81 valuePromise]);
    sub_100170468();
    v14[2] = v82;
    sub_100013CE8();
    v83 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v83);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    v14[69] = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170688();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10);
}

uint64_t sub_10016E270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[117].i64[1];
  swift_willThrow();

  v16 = v14[111].i64[0];
  sub_10014EB30(v14[116].i64[1], v14[117].i64[0]);
  sub_100170484();
  if (v16)
  {
    sub_100170638();
    v17 = sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_100170714(v17, v18, v19, v20, v21, v22, v23, v24, v100, v102, v103, v16);
    sub_100004FF8();
    v25 = sub_1001704A0();
    sub_1001704FC(v25, v26, &type metadata for String);
    v101 = vdupq_n_s64(v104);
    v27 = v104;
  }

  else
  {
    sub_1001704D4();
    v27 = v14[112].u64[0];
    v101 = v14[111];
  }

  sub_100009DF4(v14[93].i64);
  sub_100008AF8();
  v14[112].i64[0] = v27;
  v14[111] = v101;
  v14[110] = vdupq_lane_s64(v101.i64[0], 0);
  sub_100170398(v28);
  if (v48)
  {
    Dictionary._bridgeToObjectiveC()();

    sub_10000F404();
    sub_100170670();

    __asm { BRAA            X2, X16 }
  }

  v31 = sub_100004C74();
  v32(v31);
  v33 = sub_1001703C0();
  if (v34(v33) == v27)
  {
    v35 = sub_10000F0F4();
    v36(v35);
    v37 = sub_10000DC1C();
    v38 = sub_100170534(v37, "arrayForKey:");

    sub_1001705E8([v38 valuePromise]);
    sub_100170468();
    v14[17].i64[0] = v39;
    sub_100170364();
    v40 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v40);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    v14[42].i64[1] = &unk_1002BB360;
LABEL_29:
    sub_100170600(v41, "resultWithCompletion:");
    sub_100170670();

    return _swift_continuation_await(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14);
  }

  sub_100002ED4();
  if (v48)
  {
    v42 = sub_10000B098();
    v43(v42);
    v44 = sub_10000BD1C();
    v45 = sub_100170534(v44, "BOOLForKey:");

    sub_1001705A0([v45 valuePromise]);
    sub_100170468();
    v14[13].i64[0] = v46;
    sub_100170330();
    v47 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v47);
    v14[29].i64[1] = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v48)
  {
    v49 = sub_100004668();
    v50(v49);
    v51 = sub_1001703E4();
    v52 = sub_100170534(v51, "doubleForKey:");

    sub_1001705B8([v52 valuePromise]);
    sub_100170468();
    v14[25].i64[0] = v53;
    sub_10000B49C();
    v54 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v54);
    sub_100007794(COERCE_DOUBLE(1107296256));
    v14[50].i64[1] = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v55)
  {
    v56 = sub_100170300();
    v57(v56);
    v58 = sub_100170424();
    v59 = sub_100170534(v58, "integerForKey:");

    sub_100170588([v59 valuePromise]);
    sub_100170468();
    v14[21].i64[0] = v60;
    sub_10000B8D4();
    v61 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v61);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    v14[54].i64[1] = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v62)
  {
    v63 = sub_1000053C8();
    v64(v63);
    v65 = sub_100170404();
    v66 = sub_100170534(v65, "stringForKey:");

    sub_100003ED0([v66 valuePromise]);
    sub_100170468();
    v14[9].i64[0] = v67;
    sub_10000D0C8();
    v68 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v68);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    v14[46].i64[1] = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v69)
  {
    v70 = sub_10000ABFC();
    v71(v70);
    v72 = sub_100005D64();
    v73 = sub_100170534(v72, "URLForKey:");

    sub_1001705D0([v73 valuePromise]);
    sub_100170468();
    v14[5].i64[0] = v74;
    sub_100008E74();
    v75 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v75);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    v14[38].i64[1] = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v76)
  {
    v77 = sub_10000EECC();
    v78(v77);
    v79 = sub_100010E90();
    v80 = sub_100170534(v79, "dictionaryForKey:");

    sub_100170570([v80 valuePromise]);
    sub_100170468();
    v14[1].i64[0] = v81;
    sub_100013CE8();
    v82 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v82);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    v14[34].i64[1] = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170670();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10);
}

uint64_t sub_10016E8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[119].i64[1];
  v16 = v14[120].i64[0];
  swift_willThrow();

  v17 = v14[110].i64[1];
  sub_10014EB30(v14[118].i64[1], v14[119].i64[0]);
  sub_100170484();
  if (v17)
  {
    v18 = sub_100170638();
    v19 = sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_100170714(v19, v20, v21, v22, v23, v24, v25, v26, v101, v103, v104, v17);
    sub_100004FF8();
    v27 = sub_1001704A0();
    sub_1001704FC(v27, v28, &type metadata for String);
    v102 = vdupq_n_s64(v105);
    sub_1000028F4();
  }

  else
  {
    sub_1001704D4();
    v18 = v14[112].i64[0];
    v102 = v14[111];
    v16 = v14[110].i64[1];
  }

  sub_100009DF4(v14[79].i64);
  sub_100008AF8();
  v14[112].i64[0] = v18;
  v14[111] = v102;
  v14[110].i64[1] = v16;
  v14[110].i64[0] = v16;
  sub_100170398(v29);
  if (v49)
  {
    Dictionary._bridgeToObjectiveC()();
    sub_100010FA8();

    sub_10000DF84();
    sub_100170670();

    __asm { BRAA            X2, X16 }
  }

  v32 = sub_100004C74();
  v33(v32);
  v34 = sub_1001703C0();
  if (v35(v34) == v16)
  {
    v36 = sub_10000F0F4();
    v37(v36);
    v38 = sub_10000DC1C();
    v39 = sub_100170534(v38, "arrayForKey:");

    sub_1001705E8([v39 valuePromise]);
    sub_100170468();
    v14[17].i64[0] = v40;
    sub_100170364();
    v41 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v41);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    v14[42].i64[1] = &unk_1002BB360;
LABEL_29:
    sub_100170600(v42, "resultWithCompletion:");
    sub_100170670();

    return _swift_continuation_await(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14);
  }

  sub_100002ED4();
  if (v49)
  {
    v43 = sub_10000B098();
    v44(v43);
    v45 = sub_10000BD1C();
    v46 = sub_100170534(v45, "BOOLForKey:");

    sub_1001705A0([v46 valuePromise]);
    sub_100170468();
    v14[13].i64[0] = v47;
    sub_100170330();
    v48 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v48);
    v14[29].i64[1] = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v49)
  {
    v50 = sub_100004668();
    v51(v50);
    v52 = sub_1001703E4();
    v53 = sub_100170534(v52, "doubleForKey:");

    sub_1001705B8([v53 valuePromise]);
    sub_100170468();
    v14[25].i64[0] = v54;
    sub_10000B49C();
    v55 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v55);
    sub_100007794(COERCE_DOUBLE(1107296256));
    v14[50].i64[1] = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v56)
  {
    v57 = sub_100170300();
    v58(v57);
    v59 = sub_100170424();
    v60 = sub_100170534(v59, "integerForKey:");

    sub_100170588([v60 valuePromise]);
    sub_100170468();
    v14[21].i64[0] = v61;
    sub_10000B8D4();
    v62 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v62);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    v14[54].i64[1] = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v63)
  {
    v64 = sub_1000053C8();
    v65(v64);
    v66 = sub_100170404();
    v67 = sub_100170534(v66, "stringForKey:");

    sub_100003ED0([v67 valuePromise]);
    sub_100170468();
    v14[9].i64[0] = v68;
    sub_10000D0C8();
    v69 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v69);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    v14[46].i64[1] = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v70)
  {
    v71 = sub_10000ABFC();
    v72(v71);
    v73 = sub_100005D64();
    v74 = sub_100170534(v73, "URLForKey:");

    sub_1001705D0([v74 valuePromise]);
    sub_100170468();
    v14[5].i64[0] = v75;
    sub_100008E74();
    v76 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v76);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    v14[38].i64[1] = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v77)
  {
    v78 = sub_10000EECC();
    v79(v78);
    v80 = sub_100010E90();
    v81 = sub_100170534(v80, "dictionaryForKey:");

    sub_100170570([v81 valuePromise]);
    sub_100170468();
    v14[1].i64[0] = v82;
    sub_100013CE8();
    v83 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v83);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    v14[34].i64[1] = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170670();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10);
}

uint64_t sub_10016EF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 1944);
  v16 = *(v14 + 1952);
  swift_willThrow();

  v17 = *(v14 + 1760);
  sub_10014EB30(*(v14 + 1928), *(v14 + 1936));
  sub_100170484();
  if (v17)
  {
    sub_100170638();
    sub_100003044();
    v18 = sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_10000AD84(v18, v19, v20, v21, v22, v23, v24, v25, v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103);
    sub_100004FF8();
    v26 = sub_1001704A0();
    sub_1001704FC(v26, v27, &type metadata for String);
    sub_100170660();
  }

  else
  {
    sub_10000A880();
  }

  sub_100009DF4(v14 + 1104);
  sub_100008AF8();
  *(v14 + 1792) = v16;
  *(v14 + 1776) = v100;
  *(v14 + 1760) = v101;
  sub_100170398(v28);
  if (v48)
  {
    Dictionary._bridgeToObjectiveC()();
    sub_1001706E8();

    sub_10000F404();
    sub_100170558();

    __asm { BRAA            X2, X16 }
  }

  v31 = sub_100004C74();
  v32(v31);
  v33 = sub_1001703C0();
  if (v34(v33) == v16)
  {
    v35 = sub_10000F0F4();
    v36(v35);
    v37 = sub_10000DC1C();
    v38 = sub_100170534(v37, "arrayForKey:");

    sub_1001705E8([v38 valuePromise]);
    sub_100170468();
    *(v14 + 272) = v39;
    sub_100170364();
    v40 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v40);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    *(v14 + 680) = &unk_1002BB360;
LABEL_29:
    sub_100170600(v41, "resultWithCompletion:");
    sub_100170558();

    return _swift_continuation_await(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14);
  }

  sub_100002ED4();
  if (v48)
  {
    v42 = sub_10000B098();
    v43(v42);
    v44 = sub_10000BD1C();
    v45 = sub_100170534(v44, "BOOLForKey:");

    sub_1001705A0([v45 valuePromise]);
    sub_100170468();
    *(v14 + 208) = v46;
    sub_100170330();
    v47 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v47);
    *(v14 + 472) = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v48)
  {
    v49 = sub_100004668();
    v50(v49);
    v51 = sub_1001703E4();
    v52 = sub_100170534(v51, "doubleForKey:");

    sub_1001705B8([v52 valuePromise]);
    sub_100170468();
    *(v14 + 400) = v53;
    sub_10000B49C();
    v54 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v54);
    sub_100007794(COERCE_DOUBLE(1107296256));
    *(v14 + 808) = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v55)
  {
    v56 = sub_100170300();
    v57(v56);
    v58 = sub_100170424();
    v59 = sub_100170534(v58, "integerForKey:");

    sub_100170588([v59 valuePromise]);
    sub_100170468();
    *(v14 + 336) = v60;
    sub_10000B8D4();
    v61 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v61);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    *(v14 + 872) = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v62)
  {
    v63 = sub_1000053C8();
    v64(v63);
    v65 = sub_100170404();
    v66 = sub_100170534(v65, "stringForKey:");

    sub_100003ED0([v66 valuePromise]);
    sub_100170468();
    *(v14 + 144) = v67;
    sub_10000D0C8();
    v68 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v68);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    *(v14 + 744) = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v69)
  {
    v70 = sub_10000ABFC();
    v71(v70);
    v72 = sub_100005D64();
    v73 = sub_100170534(v72, "URLForKey:");

    sub_1001705D0([v73 valuePromise]);
    sub_100170468();
    *(v14 + 80) = v74;
    sub_100008E74();
    v75 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v75);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    *(v14 + 616) = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v76)
  {
    v77 = sub_10000EECC();
    v78(v77);
    v79 = sub_100010E90();
    v80 = sub_100170534(v79, "dictionaryForKey:");

    sub_100170570([v80 valuePromise]);
    sub_100170468();
    *(v14 + 16) = v81;
    sub_100013CE8();
    v82 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v82);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    *(v14 + 552) = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170558();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10);
}

uint64_t sub_10016F574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 1976);
  v16 = *(v14 + 1984);
  swift_willThrow();

  v17 = *(v14 + 1760);
  sub_10014EB30(*(v14 + 1960), *(v14 + 1968));
  sub_100170484();
  if (v17)
  {
    sub_100170638();
    sub_100003044();
    v18 = sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_10000AD84(v18, v19, v20, v21, v22, v23, v24, v25, v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103);
    sub_100004FF8();
    v26 = sub_1001704A0();
    sub_1001704FC(v26, v27, &type metadata for String);
    sub_100170660();
  }

  else
  {
    sub_10000A880();
  }

  sub_100009DF4(v14 + 1008);
  sub_100008AF8();
  *(v14 + 1792) = v16;
  *(v14 + 1776) = v100;
  *(v14 + 1760) = v101;
  sub_100170398(v28);
  if (v48)
  {
    Dictionary._bridgeToObjectiveC()();
    sub_1001706E8();

    sub_10000F404();
    sub_100170558();

    __asm { BRAA            X2, X16 }
  }

  v31 = sub_100004C74();
  v32(v31);
  v33 = sub_1001703C0();
  if (v34(v33) == v16)
  {
    v35 = sub_10000F0F4();
    v36(v35);
    v37 = sub_10000DC1C();
    v38 = sub_100170534(v37, "arrayForKey:");

    sub_1001705E8([v38 valuePromise]);
    sub_100170468();
    *(v14 + 272) = v39;
    sub_100170364();
    v40 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v40);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    *(v14 + 680) = &unk_1002BB360;
LABEL_29:
    sub_100170600(v41, "resultWithCompletion:");
    sub_100170558();

    return _swift_continuation_await(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14);
  }

  sub_100002ED4();
  if (v48)
  {
    v42 = sub_10000B098();
    v43(v42);
    v44 = sub_10000BD1C();
    v45 = sub_100170534(v44, "BOOLForKey:");

    sub_1001705A0([v45 valuePromise]);
    sub_100170468();
    *(v14 + 208) = v46;
    sub_100170330();
    v47 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v47);
    *(v14 + 472) = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v48)
  {
    v49 = sub_100004668();
    v50(v49);
    v51 = sub_1001703E4();
    v52 = sub_100170534(v51, "doubleForKey:");

    sub_1001705B8([v52 valuePromise]);
    sub_100170468();
    *(v14 + 400) = v53;
    sub_10000B49C();
    v54 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v54);
    sub_100007794(COERCE_DOUBLE(1107296256));
    *(v14 + 808) = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v55)
  {
    v56 = sub_100170300();
    v57(v56);
    v58 = sub_100170424();
    v59 = sub_100170534(v58, "integerForKey:");

    sub_100170588([v59 valuePromise]);
    sub_100170468();
    *(v14 + 336) = v60;
    sub_10000B8D4();
    v61 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v61);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    *(v14 + 872) = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v62)
  {
    v63 = sub_1000053C8();
    v64(v63);
    v65 = sub_100170404();
    v66 = sub_100170534(v65, "stringForKey:");

    sub_100003ED0([v66 valuePromise]);
    sub_100170468();
    *(v14 + 144) = v67;
    sub_10000D0C8();
    v68 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v68);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    *(v14 + 744) = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v69)
  {
    v70 = sub_10000ABFC();
    v71(v70);
    v72 = sub_100005D64();
    v73 = sub_100170534(v72, "URLForKey:");

    sub_1001705D0([v73 valuePromise]);
    sub_100170468();
    *(v14 + 80) = v74;
    sub_100008E74();
    v75 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v75);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    *(v14 + 616) = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v76)
  {
    v77 = sub_10000EECC();
    v78(v77);
    v79 = sub_100010E90();
    v80 = sub_100170534(v79, "dictionaryForKey:");

    sub_100170570([v80 valuePromise]);
    sub_100170468();
    *(v14 + 16) = v81;
    sub_100013CE8();
    v82 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v82);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    *(v14 + 552) = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170558();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10);
}

uint64_t sub_10016FBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 2008);
  v16 = *(v14 + 2016);
  swift_willThrow();

  v17 = *(v14 + 1760);
  sub_10014EB30(*(v14 + 1992), *(v14 + 2000));
  sub_100170484();
  if (v17)
  {
    sub_100170638();
    sub_100003044();
    v18 = sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
    sub_10000AD84(v18, v19, v20, v21, v22, v23, v24, v25, v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103);
    sub_100004FF8();
    v26 = sub_1001704A0();
    sub_1001704FC(v26, v27, &type metadata for String);
    sub_100170660();
  }

  else
  {
    sub_10000A880();
  }

  sub_100009DF4(v14 + 1392);
  sub_100008AF8();
  *(v14 + 1792) = v16;
  *(v14 + 1776) = v100;
  *(v14 + 1760) = v101;
  sub_100170398(v28);
  if (v48)
  {
    Dictionary._bridgeToObjectiveC()();
    sub_1001706E8();

    sub_10000F404();
    sub_100170558();

    __asm { BRAA            X2, X16 }
  }

  v31 = sub_100004C74();
  v32(v31);
  v33 = sub_1001703C0();
  if (v34(v33) == v16)
  {
    v35 = sub_10000F0F4();
    v36(v35);
    v37 = sub_10000DC1C();
    v38 = sub_100170534(v37, "arrayForKey:");

    sub_1001705E8([v38 valuePromise]);
    sub_100170468();
    *(v14 + 272) = v39;
    sub_100170364();
    v40 = sub_100099DF4(&qword_1002DF180, &qword_10023EF48);
    sub_1000039E8(v40);
    sub_100003D30(COERCE_DOUBLE(1107296256));
    *(v14 + 680) = &unk_1002BB360;
LABEL_29:
    sub_100170600(v41, "resultWithCompletion:");
    sub_100170558();

    return _swift_continuation_await(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14);
  }

  sub_100002ED4();
  if (v48)
  {
    v42 = sub_10000B098();
    v43(v42);
    v44 = sub_10000BD1C();
    v45 = sub_100170534(v44, "BOOLForKey:");

    sub_1001705A0([v45 valuePromise]);
    sub_100170468();
    *(v14 + 208) = v46;
    sub_100170330();
    v47 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_10000C0D0(v47);
    *(v14 + 472) = 1107296256;
    sub_1000083E8(&unk_1002BB338);
    goto LABEL_29;
  }

  sub_1001704C8();
  if (v48)
  {
    v49 = sub_100004668();
    v50(v49);
    v51 = sub_1001703E4();
    v52 = sub_100170534(v51, "doubleForKey:");

    sub_1001705B8([v52 valuePromise]);
    sub_100170468();
    *(v14 + 400) = v53;
    sub_10000B49C();
    v54 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_100007D7C(v54);
    sub_100007794(COERCE_DOUBLE(1107296256));
    *(v14 + 808) = &unk_1002BB310;
    goto LABEL_29;
  }

  sub_1000040E8();
  if (v55)
  {
    v56 = sub_100170300();
    v57(v56);
    v58 = sub_100170424();
    v59 = sub_100170534(v58, "integerForKey:");

    sub_100170588([v59 valuePromise]);
    sub_100170468();
    *(v14 + 336) = v60;
    sub_10000B8D4();
    v61 = sub_100099DF4(&unk_1002DF170, &unk_10023B6A8);
    sub_1000067C0(v61);
    sub_10000329C(COERCE_DOUBLE(1107296256));
    *(v14 + 872) = &unk_1002BB2E8;
    goto LABEL_29;
  }

  sub_1001704BC();
  if (v62)
  {
    v63 = sub_1000053C8();
    v64(v63);
    v65 = sub_100170404();
    v66 = sub_100170534(v65, "stringForKey:");

    sub_100003ED0([v66 valuePromise]);
    sub_100170468();
    *(v14 + 144) = v67;
    sub_10000D0C8();
    v68 = sub_100099DF4(&unk_1002DF160, &unk_10023FB50);
    sub_100006F30(v68);
    sub_1000073F0(COERCE_DOUBLE(1107296256));
    *(v14 + 744) = &unk_1002BB2C0;
    goto LABEL_29;
  }

  sub_100002AB8();
  if (v69)
  {
    v70 = sub_10000ABFC();
    v71(v70);
    v72 = sub_100005D64();
    v73 = sub_100170534(v72, "URLForKey:");

    sub_1001705D0([v73 valuePromise]);
    sub_100170468();
    *(v14 + 80) = v74;
    sub_100008E74();
    v75 = sub_100099DF4(&qword_1002DF150, &qword_10023EF40);
    sub_100008134(v75);
    sub_10000BB90(COERCE_DOUBLE(1107296256));
    *(v14 + 616) = &unk_1002BB298;
    goto LABEL_29;
  }

  sub_100004944();
  if (v76)
  {
    v77 = sub_10000C6B8();
    v78(v77);
    v79 = sub_100010E90();
    v80 = sub_100170534(v79, "dictionaryForKey:");

    sub_100170570([v80 valuePromise]);
    sub_100170468();
    *(v14 + 16) = v81;
    sub_100013CE8();
    v82 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
    sub_100006B24(v82);
    sub_10000A658(COERCE_DOUBLE(1107296256));
    *(v14 + 552) = &unk_1002BB270;
    goto LABEL_29;
  }

  sub_10000AE84();
  sub_100170558();

  return _diagnoseUnexpectedEnumCase<A>(type:)(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10);
}

uint64_t *sub_100170220(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_10000C4FC((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_100170330()
{
  *(v0 + 248) = v1;
  *(v0 + 216) = sub_10016A498;

  return swift_continuation_init();
}

uint64_t sub_100170364()
{
  *(v0 + 312) = v1;
  *(v0 + 280) = sub_100169C20;

  return swift_continuation_init();
}

NSString sub_1001703E4()
{
  *(v1 + 1864) = *v0;
  *(v1 + 1872) = v0[1];

  return String._bridgeToObjectiveC()();
}

NSString sub_100170404()
{
  *(v1 + 1928) = *v0;
  *(v1 + 1936) = v0[1];

  return String._bridgeToObjectiveC()();
}

NSString sub_100170424()
{
  *(v1 + 1896) = *v0;
  *(v1 + 1904) = v0[1];

  return String._bridgeToObjectiveC()();
}

double sub_100170444()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_100170484()
{
}

_OWORD *sub_1001704A0()
{
  v4 = (*(v1 + 56) + 32 * v2);

  return sub_1001514B8(v4, v0);
}

double sub_1001704D4()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_1001704E0()
{
  v3 = (*(v0 + 56) + 32 * v1);

  return sub_100004118(v3);
}

uint64_t sub_1001704FC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _NativeDictionary._delete(at:)();
}

id sub_100170534(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_100170570(uint64_t a1)
{
  *(v1 + 2008) = a1;
}

void sub_100170588(uint64_t a1)
{
  *(v1 + 1912) = a1;
}

void sub_1001705A0(uint64_t a1)
{
  *(v1 + 1848) = a1;
}

void sub_1001705B8(uint64_t a1)
{
  *(v1 + 1880) = a1;
}

void sub_1001705D0(uint64_t a1)
{
  *(v1 + 1976) = a1;
}

void sub_1001705E8(uint64_t a1)
{
  *(v1 + 1816) = a1;
}

id sub_100170600(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

BOOL sub_100170618()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_100170638()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

BOOL sub_1001706A0()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_1001706B8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

NSDictionary sub_1001706D0()
{

  return Dictionary._bridgeToObjectiveC()();
}

uint64_t sub_1001706E8()
{
}

double sub_100170700()
{
  result = 0.0;
  *(v0 + 944) = 0u;
  *(v0 + 960) = 0u;
  return result;
}

BOOL sub_100170714(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
}

uint64_t sub_100170734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v116 = a5;
  v16 = v15;
  v119 = a6;
  v120 = a7;
  *&v113 = a2;
  v112 = a1;
  v121 = a15;
  v122 = a14;
  v118 = a12;
  v114 = a9;
  v115 = a10;
  v100 = type metadata accessor for URL();
  sub_100003724();
  v99 = v20;
  __chkstk_darwin(v21);
  sub_1000030E4();
  sub_100008280(v22);
  v109 = type metadata accessor for FileStoreError();
  sub_100003724();
  v101 = v23;
  __chkstk_darwin(v24);
  sub_1000030E4();
  sub_100008280(v25);
  v26 = type metadata accessor for LogInterpolation.StringInterpolation();
  v27 = sub_1000030B8(v26);
  __chkstk_darwin(v27);
  sub_1000030E4();
  sub_100008280(v28);
  v110 = type metadata accessor for Log();
  sub_100003724();
  v111 = v29;
  __chkstk_darwin(v30);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v31);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v32);
  sub_10000D478();
  v34 = sub_100008280(v33);
  v35 = type metadata accessor for TSDataSyncDeviceState(v34);
  sub_10000307C();
  __chkstk_darwin(v36);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v37);
  v39 = (&v98 - v38);
  __chkstk_darwin(v40);
  v42 = &v98 - v41;
  swift_defaultActor_initialize();
  v43 = (v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_store);
  *v43 = a3;
  v43[1] = a4;
  v106 = v43;
  v44 = (v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_requester);
  v45 = v113;
  *v44 = v112;
  v44[1] = v45;
  v46 = (v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_accountFinder);
  v48 = v119;
  v47 = v120;
  *v46 = v116;
  v46[1] = v48;
  v49 = (v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_transactionStore);
  *v49 = v47;
  v49[1] = a8;
  v50 = (v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_deviceInformation);
  v51 = v115;
  *v50 = v114;
  v50[1] = v51;
  v116 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_defaults;
  v120 = a11;
  sub_1001512EC(a11, v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_defaults);
  v52 = v118;
  v114 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_bag;
  *(v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_bag) = v118;
  v115 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_generator;
  v119 = a13;
  sub_1001512EC(a13, v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_generator);
  *&v113 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_coordinator;
  sub_1001512EC(v122, v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_coordinator);
  v112 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics;
  sub_1001512EC(v121, v16 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics);
  v53 = *(a4 + 8);
  v118 = v52;
  v54 = v117;
  v53(a3, a4);
  if (v54)
  {
    v127 = v54;
    swift_errorRetain();
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    v55 = v108;
    v56 = v109;
    if (swift_dynamicCast())
    {
      v57 = v101;
      v58 = (*(v101 + 88))(v55, v56);
      if (v58 == enum case for FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:))
      {
        v59 = v58;

        (*(v57 + 96))(v55, v56);
        v60 = v99;
        v61 = v100;
        (*(v99 + 32))(v102, v55, v100);
        sub_100177164(&qword_1002DB900, &type metadata accessor for FileStoreError, &protocol conformance descriptor for FileStoreError);
        sub_100004950();
        v117 = swift_allocError();
        v63 = v62;
        v64 = *(sub_100099DF4(&qword_1002DB908, &unk_100232B00) + 48);
        v65 = v102;
        (*(v60 + 16))(v63, v102, v61);
        *(v63 + v64) = default argument 1 of FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:)();
        (*(v57 + 104))(v63, v59, v56);
        swift_willThrow();
        (*(v60 + 8))(v65, v61);

        sub_100004118((v16 + v116));

        sub_100004118((v16 + v115));
        sub_100004118((v16 + v113));
        sub_100004118((v16 + v112));
        type metadata accessor for TSDataSyncConfigAccessActor(0);
        swift_defaultActor_destroy();

        sub_10000AC2C();
        sub_1000050CC();
        swift_deallocPartialClassInstance();
        return v16;
      }

      (*(v57 + 8))(v55, v56);
    }

    v71 = v35[6];
    v72 = type metadata accessor for Date();
    sub_100002728(v39 + v71, 1, 1, v72);
    static Date.distantPast.getter();
    sub_100177478(v35[8]);
    sub_100177478(v35[9]);
    sub_100177478(v35[15]);
    sub_100177478(v35[16]);
    v39[1] = 0;
    v39[2] = 0;
    *v39 = &_swiftEmptySetSingleton;
    *(v39 + v35[10]) = 0;
    *(v39 + v35[11]) = 0;
    *(v39 + v35[12]) = 2;
    *(v39 + v35[13]) = 0;
    *(v39 + v35[14]) = 0;
    *(v39 + v35[17]) = 0;
    v73 = (v39 + v35[18]);
    *v73 = xmmword_100234820;
    v73[1] = 0u;
    v73[2] = 0u;
    v73[3] = 0u;
    v74 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
    sub_10000F124();
    sub_10017710C(v39, v16 + v74);
    v75 = *v106;
    v76 = v106[1];
    sub_1000109B8();
    swift_beginAccess();
    sub_100008158();
    v77 = v16 + v74;
    v78 = v107;
    sub_1001771AC(v77, v107);
    (*(v76 + 16))(v78, v75, v76);
    sub_100004CB4();
    sub_100177204();
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v79 = type metadata accessor for LogInterpolation();
    sub_100003B78(v79);
    v81 = *(v80 + 72);
    v83 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v116 = v75;
    v117 = v81;
    v114 = v83 + 2 * v81;
    v84 = swift_allocObject();
    v113 = xmmword_1002329F0;
    *(v84 + 16) = xmmword_1002329F0;
    v115 = v83;
    v112 = type metadata accessor for TSDataSyncConfigAccessActor(0);
    v126 = v112;
    v125 = v16;

    v85 = AMSLogKey();
    if (v85)
    {
      v86 = v85;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v125);
    sub_100177554();
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v87._countAndFlagsBits = 0xD000000000000017;
    v87._object = 0x8000000100274BE0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v87);
    swift_getErrorValue();
    v89 = v123;
    v88 = v124;
    v126 = v124;
    v90 = sub_100007914(&v125);
    (*(*(v88 - 8) + 16))(v90, v89, v88);
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(&v125, &unk_1002DFC10, &qword_10022E6D0);
    v91._countAndFlagsBits = sub_10000286C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v91);
    LogInterpolation.init(stringInterpolation:)();
    v92 = v103;
    Log.error(_:)();

    v93 = *(v111 + 8);
    v111 += 8;
    v93(v92, v110);
    static Log.tsDataSync.getter();
    *(swift_allocObject() + 16) = v113;
    v126 = v112;
    v125 = v16;

    v94 = AMSLogKey();
    if (v94)
    {
      v95 = v94;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v125);
    LogInterpolation.init(stringLiteral:)();
    v96 = v104;
    Log.default(_:)();

    sub_10000AC2C();
    v93(v96, v110);
  }

  else
  {
    sub_10000F124();
    sub_10017710C(v42, v16 + v66);
    v67 = v105;
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v68 = type metadata accessor for LogInterpolation();
    sub_100003B78(v68);
    sub_10000A1F0();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v126 = type metadata accessor for TSDataSyncConfigAccessActor(0);
    v125 = v16;

    v69 = AMSLogKey();
    if (v69)
    {
      v70 = v69;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v125);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    sub_10000AC2C();
    (*(v111 + 8))(v67, v110);
  }

  return v16;
}

uint64_t sub_10017139C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = type metadata accessor for TSDataSyncConfigScheduleAction(0);
  v9 = sub_1000030B8(v8);
  __chkstk_darwin(v9);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v10);
  sub_10000D478();
  v12 = sub_100008280(v11);
  v96 = type metadata accessor for TSDataSyncConfigSchedule(v12);
  sub_10000307C();
  __chkstk_darwin(v13);
  sub_1000030E4();
  v99 = v14;
  v15 = sub_100099DF4(&qword_1002DF3C0, &qword_10023F058);
  v16 = sub_1000030B8(v15);
  __chkstk_darwin(v16);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v17);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v18);
  sub_10000D478();
  sub_100008280(v19);
  v20 = type metadata accessor for LogInterpolation.StringInterpolation();
  v21 = sub_1000030B8(v20);
  __chkstk_darwin(v21);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v22);
  sub_10000D478();
  sub_100008280(v23);
  v109 = type metadata accessor for Log();
  sub_100003724();
  v98 = v24;
  __chkstk_darwin(v25);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v26);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v27);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v28);
  sub_10000D478();
  v30 = sub_100008280(v29);
  v31 = type metadata accessor for TSDataSyncDeviceState(v30);
  v32 = (v31 - 8);
  __chkstk_darwin(v31);
  sub_10000306C();
  v35 = (v34 - v33);
  v36 = type metadata accessor for TSDataSyncConfigScheduleInput(0);
  sub_10000307C();
  __chkstk_darwin(v37);
  sub_10000306C();
  v40 = v39 - v38;
  v41 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
  v117 = v6;
  sub_1000109B8();
  swift_beginAccess();
  sub_100008158();
  sub_1001771AC(v6 + v41, v35);
  v104 = *(a3 + 8);
  v42 = *(a3 + 24);
  v43 = *(a3 + 32);
  v44 = *(a3 + 40);
  v45 = *(a3 + 64);
  v113 = *(a3 + 48);
  v114 = v45;
  *v115 = *(a3 + 80);
  v92 = a3;
  *&v115[16] = *(a3 + 96);
  v46 = sub_1000102EC(0xD000000000000028, 0x8000000100273D30);
  v48 = v47;
  sub_100177560(v32[8]);
  sub_100177560(v32[11]);
  v49 = v32[9];
  v50 = v36[12];
  v51 = type metadata accessor for Date();
  v91 = *(v51 - 8);
  v102 = v51;
  (*(v91 + 16))(v40 + v50, &v35[v49]);
  v52 = *&v35[v32[12]];
  v53 = *(v35 + 1);
  v54 = *(v35 + 2);
  v116 = *&v115[8];
  v55 = *(*v35 + 16) == 0;
  *v40 = v46;
  *(v40 + 8) = v48;
  *(v40 + 16) = v104;
  *(v40 + 32) = v42;
  *(v40 + 40) = v43;
  *(v40 + 48) = v44;
  *(v40 + v36[13]) = v52;
  v56 = (v40 + v36[14]);
  *v56 = v53;
  v56[1] = v54;
  v57 = (v40 + v36[15]);
  *v57 = a1;
  v57[1] = a2;
  *(v40 + v36[16]) = *&v115[8];
  *(v40 + v36[17]) = v55;

  sub_1000C68A8(&v116, &v111, &qword_1002DCC48, &qword_100238200);
  sub_100004CB4();
  sub_100177204();
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v58 = type metadata accessor for LogInterpolation();
  sub_100003B78(v58);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  *(&v112 + 1) = type metadata accessor for TSDataSyncConfigAccessActor(0);
  *&v111 = v117;

  v59 = AMSLogKey();
  if (v59)
  {
    v60 = v59;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000F414();
  }

  else
  {
    sub_100013E48();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v111);
  sub_100177554();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v61._object = 0xEF207475706E6920;
  v61._countAndFlagsBits = 0x656C756465686353;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v61);
  *(&v112 + 1) = v36;
  v62 = sub_100007914(&v111);
  sub_1001771AC(v40, v62);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v111, &unk_1002DFC10, &qword_10022E6D0);
  v63._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v63);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v64 = *(v98 + 8);
  v64(v108, v109);
  sub_1000AC40C(v40, a5, v110);
  static Log.tsDataSync.getter();
  v65 = sub_1000140E4();
  sub_100004698(v65);
  sub_10000A2F4();
  v66 = AMSLogKey();
  if (v66)
  {
    v67 = v66;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000F414();
  }

  else
  {
    sub_100013E48();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v111);
  sub_100177554();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v68._countAndFlagsBits = 0x656C756465686353;
  v68._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
  sub_1000C68A8(v110, v95, &qword_1002DF3C0, &qword_10023F058);
  if (sub_100004DFC(v95, 1, v96) == 1)
  {
    sub_100004E24(v95, &qword_1002DF3C0, &qword_10023F058);
    v111 = 0u;
    v112 = 0u;
  }

  else
  {
    *(&v112 + 1) = v96;
    sub_100007914(&v111);
    sub_100013D1C();
    sub_10017710C(v95, v69);
  }

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(&v111, &unk_1002DFC10, &qword_10022E6D0);
  v70._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v70);
  sub_100002AC4();
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v71 = sub_1001774E8();
  (v64)(v71);
  sub_1000C68A8(v110, v97, &qword_1002DF3C0, &qword_10023F058);
  if (sub_100004DFC(v97, 1, v96) == 1)
  {
    sub_100004E24(v110, &qword_1002DF3C0, &qword_10023F058);
    sub_100008400();
    sub_100004E24(v97, &qword_1002DF3C0, &qword_10023F058);
    v72 = 1;
LABEL_12:
    v73 = v102;
    return sub_100002728(a6, v72, 1, v73);
  }

  sub_100013D1C();
  sub_10017710C(v97, v99);
  sub_100177164(&qword_1002DB968, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v74 = v100;
    sub_1000040F4();
    v75();
    v76 = 0;
  }

  else
  {
    v76 = 1;
    v74 = v100;
  }

  v77 = sub_100099DF4(&qword_1002DB1C0, &unk_100231900);
  sub_100002728(v74, v76, 1, v77);
  sub_1001771AC(v74, v94);
  v78 = sub_100099DF4(&qword_1002DB1C0, &unk_100231900);
  if (sub_100004DFC(v94, 1, v78) != 1)
  {
    (*(v91 + 32))(a6, v94, v102);
    static Log.tsDataSync.getter();
    v82 = sub_1000140E4();
    sub_100004698(v82);
    sub_10000A2F4();
    v83 = AMSLogKey();
    if (v83)
    {
      v84 = v83;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000F414();
    }

    else
    {
      sub_100013E48();
    }

    sub_100177538(&v111);

    sub_100004118(&v111);
    sub_100177554();
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100002860();
    v87._countAndFlagsBits = 0xD000000000000013;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v87);
    v73 = v102;
    *(&v112 + 1) = v102;
    sub_100007914(&v111);
    sub_1000040F4();
    v88();
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(&v111, &unk_1002DFC10, &qword_10022E6D0);
    v89._countAndFlagsBits = 0xD000000000000014;
    v89._object = 0x8000000100272D40;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v89);
    sub_100002AC4();
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v90 = sub_1001774E8();
    (v64)(v90);
    sub_10000D0FC();
    sub_100008EA8();
    sub_100004E24(v110, &qword_1002DF3C0, &qword_10023F058);
    sub_100008400();
    v72 = 0;
    return sub_100002728(a6, v72, 1, v73);
  }

  static Log.tsDataSync.getter();
  v79 = sub_1000140E4();
  sub_100004698(v79);
  sub_10000A2F4();
  v80 = AMSLogKey();
  if (v80)
  {
    v81 = v80;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v111);
  sub_100002AC4();
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v85 = sub_1001774E8();
  (v64)(v85);
  sub_1001720BC(v92, a4, a5, 0);
  sub_10000D0FC();
  sub_100008EA8();
  sub_100004E24(v110, &qword_1002DF3C0, &qword_10023F058);
  result = sub_100008400();
  if (!v101)
  {
    v72 = 1;
    goto LABEL_12;
  }

  return result;
}

void sub_1001720BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  type metadata accessor for Log();
  sub_100003724();
  v16 = v8;
  v17 = v7;
  __chkstk_darwin(v7);
  sub_1000030E4();
  v20 = v9;
  if (dispatch thunk of static DeviceInformation.deviceIsRunningInternalBuild()() & 1) != 0 && (sub_10000C4FC((v4 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_defaults), *(v4 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_defaults + 24)), v10 = dispatch thunk of TSDataSyncDefaults.autoSyncDisabledForTSDataSync.getter(), (v10) && (a4 & 1) == 0)
  {
    v11 = v10;
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v12 = type metadata accessor for LogInterpolation();
    sub_100003B78(v12);
    sub_10000A1F0();
    *(swift_allocObject() + 16) = xmmword_10023EF50;
    v19 = type metadata accessor for TSDataSyncConfigAccessActor(0);
    v18[0] = v5;

    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v18);
    LogInterpolation.init(stringLiteral:)();
    v19 = &type metadata for Bool;
    LOBYTE(v18[0]) = 1;
    static LogInterpolation.safe(_:)();
    sub_10017751C();
    LogInterpolation.init(stringLiteral:)();
    v19 = &type metadata for Bool;
    LOBYTE(v18[0]) = v11 & 1;
    static LogInterpolation.safe(_:)();
    sub_10017751C();
    LogInterpolation.init(stringLiteral:)();
    v19 = &type metadata for Bool;
    LOBYTE(v18[0]) = 0;
    static LogInterpolation.safe(_:)();
    sub_10017751C();
    v15 = v20;
    Log.default(_:)();

    (*(v16 + 8))(v15, v17);
  }

  else
  {
    sub_1001723F4();
  }
}

void sub_1001723F4()
{
  sub_100002A08();
  v147 = v1;
  v145 = v0;
  v140 = v3;
  v141 = v4;
  v139 = v5;
  type metadata accessor for Date();
  sub_100003724();
  v142 = v7;
  v143 = v6;
  __chkstk_darwin(v6);
  v127 = v8;
  v131 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v9);
  sub_100003774();
  __chkstk_darwin(v10);
  v132 = &v118 - v11;
  v12 = sub_100013FAC();
  v13 = type metadata accessor for TSDataSyncConfigServerRequest(v12);
  v14 = sub_100003B78(v13);
  v128 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v129 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  sub_10000D478();
  v130 = v19;
  sub_100013FAC();
  v138 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003724();
  v136 = v20;
  __chkstk_darwin(v21);
  sub_1000037D4();
  v133 = v22;
  __chkstk_darwin(v23);
  sub_10000D478();
  v134 = v24;
  sub_100013FAC();
  v137 = type metadata accessor for Log();
  sub_100003724();
  v135 = v25;
  __chkstk_darwin(v26);
  sub_1000030E4();
  v144 = v27;
  v28 = sub_100013FAC();
  v29 = type metadata accessor for TSDataSyncDeviceState(v28);
  sub_10000307C();
  __chkstk_darwin(v30);
  sub_10000308C();
  v33 = (v31 - v32);
  __chkstk_darwin(v34);
  v36 = &v118 - v35;
  v37 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v37);
  sub_100003774();
  __chkstk_darwin(v38);
  v40 = &v118 - v39;
  v41 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v146 = v42;
  __chkstk_darwin(v43);
  sub_10000308C();
  sub_10000DE68();
  __chkstk_darwin(v44);
  sub_10000D478();
  v46 = v45;
  v47 = v147;
  sub_100172FD8(v148);
  if (!v47)
  {
    v125 = v40;
    v126 = v36;
    v121 = v2;
    v122 = v17;
    v123 = v29;
    v124 = v33;
    v48 = sub_10000C4FC(v148, v149);
    v49 = v146;
    v50 = v146 + 16;
    v51 = *(v146 + 16);
    v52 = v46;
    v51(v46, v48, v41);
    sub_100172FD8(v150);
    v147 = 0;
    v53 = v49;
    v119 = v51;
    v120 = v50;
    sub_10000C4FC(v150, v151);
    v54 = v125;
    sub_10009B8B0();
    v55 = v145 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
    sub_1000109B8();
    swift_beginAccess();
    sub_100008158();
    v56 = v126;
    sub_1001771AC(v55, v126);
    v57 = sub_100123DD0(v52, v54, v56);
    sub_100004CB4();
    sub_100177204();
    sub_100004E24(v54, &qword_1002DA970, &qword_1002318B0);
    v58 = *(v53 + 8);
    v125 = v41;
    v58(v52, v41);
    sub_100004118(v150);
    sub_100004118(v148);
    if (v57)
    {
      static Log.tsDataSync.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      sub_100003F9C();
      v59 = type metadata accessor for LogInterpolation();
      sub_100003724();
      v61 = v60;
      v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1002329F0;
      v64 = v63 + v62;
      v149 = type metadata accessor for TSDataSyncConfigAccessActor(0);
      v148[0] = v145;

      v65 = AMSLogKey();
      if (v65)
      {
        v66 = v65;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v90 = v138;
      static LogInterpolation.prefix(_:_:)();

      sub_100004118(v148);
      v91 = v134;
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      sub_100002860();
      v92._countAndFlagsBits = 0xD000000000000019;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v92);
      v93 = v147;
      sub_100172FD8(v148);
      if (v93)
      {
        (*(v136 + 8))(v91, v90);
        (*(v135 + 8))(v144, v137);
        (*(v61 + 8))(v64, v59);
        *(v63 + 16) = 0;
      }

      else
      {
        v95 = sub_10000C4FC(v148, v149);
        v96 = v125;
        v151 = v125;
        v97 = sub_100007914(v150);
        v119(v97, v95, v96);
        LogInterpolation.StringInterpolation.appendInterpolation(_:)();
        sub_100004E24(v150, &unk_1002DFC10, &qword_10022E6D0);
        sub_100004118(v148);
        v98._countAndFlagsBits = 0xD000000000000012;
        v98._object = 0x8000000100274DB0;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v98);
        (*(v136 + 32))(v133, v91, v90);
        LogInterpolation.init(stringInterpolation:)();
        v99 = v144;
        Log.default(_:)();

        (*(v135 + 8))(v99, v137);
      }
    }

    else
    {
      sub_100008158();
      sub_1001771AC(v55, v56);
      v67 = v123;
      v68 = v124;
      v69 = v123[9];
      v71 = v142 + 16;
      v70 = *(v142 + 16);
      v72 = v143;
      v70(v124 + v69, v141, v143);
      sub_100002728(v68 + v69, 0, 1, v72);
      v73 = *v56;
      v144 = v56[1];
      v74 = v56[2];
      v137 = v73;
      v138 = v74;
      v75 = v67[6];
      v135 = v55;
      sub_1001774AC(v75);
      v76 = v67[7];
      v134 = v70;
      v70(v68 + v76, v56 + v76, v72);
      sub_1001774AC(v67[8]);
      v77 = *(v56 + v67[10]);
      v78 = *(v56 + v67[11]);
      v79 = v67[13];
      v136 = *(v56 + v67[12]);
      v80 = *(v56 + v79);
      v81 = *(v56 + v67[14]);
      sub_1000C68A8(v56 + v67[15], v68 + v67[15], &qword_1002DA970, &qword_1002318B0);
      sub_1001774AC(v67[16]);
      v82 = *(v56 + v67[17]);
      sub_100177498(v56 + v67[18]);

      v83 = v137;

      v84 = v138;

      sub_1000C68A8(v150, v148, &qword_1002DB2E0, &unk_10023F030);
      sub_100004CB4();
      sub_100177204();
      v85 = v144;
      *v68 = v83;
      v68[1] = v85;
      v68[2] = v84;
      *(v68 + v67[10]) = v77;
      *(v68 + v67[11]) = v78;
      *(v68 + v67[12]) = v136;
      *(v68 + v67[13]) = v80;
      *(v68 + v67[14]) = v81;
      *(v68 + v67[17]) = v82;
      sub_100002EE0(v68 + v67[18]);
      v87 = v139;
      v86 = v140;
      v88 = v145;
      v89 = v147;
      sub_100175464(v68, 0xD000000000000019, 0x8000000100274D70, v139, v140);
      if (!v89)
      {
        v144 = v71;
        v94 = v135;
        (*(*(v88 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_transactionStore + 8) + 8))(11);
        sub_100172FD8(v148);
        v147 = 0;
        v100 = sub_10000C4FC(v148, v149);
        v101 = v121;
        v102 = v125;
        v119(v121, v100, v125);
        v103 = *(v94 + v123[10]);
        v104 = v130;
        (*(v146 + 32))(v130, v101, v102);
        *(v104 + *(type metadata accessor for TSDataSyncConfigServerRequest.Get(0) + 20)) = v103;
        sub_100004118(v148);
        v105 = type metadata accessor for TaskPriority();
        sub_100002728(v132, 1, 1, v105);
        sub_1000032B4();
        sub_1001771AC(v104, v129);
        v134(v131, v141, v143);
        v144 = sub_100177164(&qword_1002DF3B0, type metadata accessor for TSDataSyncConfigAccessActor, byte_10023EFE0);
        v106 = (*(v128 + 80) + 40) & ~*(v128 + 80);
        v107 = v86;
        v108 = (v122 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
        v109 = v87;
        v146 = (v108 + 199) & 0xFFFFFFFFFFFFFFF8;
        v110 = v88;
        v111 = v142;
        v112 = (*(v142 + 80) + v146 + 64) & ~*(v142 + 80);
        v113 = swift_allocObject();
        v114 = v144;
        *(v113 + 2) = v110;
        *(v113 + 3) = v114;
        *(v113 + 4) = v110;
        sub_10017710C(v129, &v113[v106]);
        memcpy(&v113[v108], v109, 0xC0uLL);
        v115 = &v113[v146];
        v116 = v107[1];
        *v115 = *v107;
        *(v115 + 1) = v116;
        v117 = v107[3];
        *(v115 + 2) = v107[2];
        *(v115 + 3) = v117;
        (*(v111 + 32))(&v113[v112], v131, v143);
        swift_retain_n();
        sub_10009FF70(v109, v148);
        sub_1000C68A8(v107, v148, &qword_1002DF3B8, &qword_10023F050);
        sub_10013ABD4(0, 0, v132, &unk_10023F048, v113);

        sub_100177204();
      }

      sub_100004CB4();
      sub_100177204();
    }
  }

  sub_1000048F8();
}

void sub_100172FD8(uint64_t *a1@<X8>)
{
  v2 = sub_100099DF4(&qword_1002DA6C0, &unk_100232C60);
  sub_1000030B8(v2);
  sub_100003774();
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  v6 = [objc_opt_self() ams_sharedAccountStore];
  v7 = [v6 ams_activeiTunesAccount];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  sub_100176D64(v8);
  if (!v9)
  {
    goto LABEL_5;
  }

  sub_10009AB58();
  v10 = type metadata accessor for AMPAccount(0);
  if (sub_100004DFC(v5, 1, v10) == 1)
  {
    sub_100004E24(v5, &qword_1002DA6C0, &unk_100232C60);
LABEL_5:
    sub_100176D10();
    sub_100004950();
    swift_allocError();
    *v11 = 1;
    *(v11 + 8) = 0;
    swift_willThrow();

    return;
  }

  a1[3] = v10;
  a1[4] = &off_1002B4510;
  v12 = sub_100007914(a1);
  sub_10017710C(v5, v12);
}

uint64_t sub_100173160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[14] = a4;
  v11 = type metadata accessor for MetricsEvent();
  v7[17] = v11;
  v7[18] = *(v11 - 8);
  v7[19] = swift_task_alloc();
  v12 = type metadata accessor for FlagKeys();
  v7[20] = v12;
  v7[21] = *(v12 - 8);
  v7[22] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v7[23] = v13;
  v7[24] = *(v13 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v14 = type metadata accessor for Log();
  v7[27] = v14;
  v7[28] = *(v14 - 8);
  v7[29] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[30] = v15;
  *v15 = v7;
  v15[1] = sub_1001733A0;

  return sub_100173978(a5, a6, a7);
}

uint64_t sub_1001733A0()
{
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100173500);
  }

  else
  {

    sub_100002E08();

    return v7();
  }
}

uint64_t sub_100173500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = v3;
  v4 = v3[14];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  sub_10000A1F0();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v6 = type metadata accessor for TSDataSyncConfigAccessActor(0);
  v3[2] = v4;
  v3[5] = v6;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = v3[28];
  v33 = v3[27];
  v10 = v3[21];
  v34 = v3[20];
  v36 = v3[22];
  v31 = v3[29];
  v32 = v3[15];
  v30 = v3[14];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v3 + 2);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v11 = v3[10];
  v12 = v3[11];
  v3[9] = v12;
  v13 = sub_100007914(v3 + 6);
  (*(*(v12 - 8) + 16))(v13, v11, v12);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24((v3 + 6), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  (*(v9 + 8))(v31, v33);
  v14 = *(v32 + 184);
  v15 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics;
  static Date.now.getter();
  (*(v10 + 104))(v36, enum case for FlagKeys.TSDataSyncMetricsErrorEnhancements(_:), v34);
  v16 = FlagKeys.isEnabled.getter();
  (*(v10 + 8))(v36, v34);
  if (v16)
  {
    static Date.now.getter();
    if (v14)
    {
      v17 = (v30 + v15);
      v19 = v3[24];
      v18 = v3[25];
      v21 = v3[18];
      v20 = v3[19];
      v35 = v3[17];
      v37 = v3[23];
      sub_10011DE50();
      v38[3] = &type metadata for String;
      v38[0] = 0xD000000000000011;
      v38[1] = 0x8000000100274DF0;
      sub_100006F54();
      sub_1001A8ED8(v38, v22, v23);
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      sub_10000C4FC(v17, v17[3]);
      dispatch thunk of MetricsQueue.enqueue(event:)();
      (*(v21 + 8))(v20, v35);
      v24 = *(v19 + 8);
      v24(v18, v37);
      v24(v3[26], v3[23]);
    }

    else
    {
      v25 = *(v3[24] + 8);
      v25(v3[25], v3[23]);
      v25(v3[26], v3[23]);
    }
  }

  else
  {
    (*(v3[24] + 8))(v3[26], v3[23]);
  }

  v26 = sub_10000DC3C();
  v27(v26);

  sub_100002E08();

  return v28();
}

uint64_t sub_100173978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Date();
  v4[6] = v5;
  sub_100003B78(v5);
  v4[7] = v6;
  v4[8] = sub_100003FA8();
  v7 = sub_100099DF4(&qword_1002DF3A8, &qword_10023F1F0);
  sub_1000030B8(v7);
  v4[9] = sub_100003FA8();
  v8 = swift_task_alloc();
  v4[10] = v8;
  *v8 = v4;
  v8[1] = sub_100173AB8;

  return sub_100173ED4();
}

uint64_t sub_100173AB8()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  v3 = sub_10000AA8C();

  return _swift_task_switch(v3);
}

uint64_t sub_100173BB0()
{
  sub_100004194();
  static Date.now.getter();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100173C50;

  return sub_1001748C8();
}

uint64_t sub_100173C50()
{
  v2 = *v1;
  sub_10000452C();
  *v4 = v3;
  v5 = v2[8];
  v6 = v2[7];
  v7 = v2[6];
  *v4 = *v1;
  *(v3 + 96) = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v8 = sub_100173E54;
  }

  else
  {
    v8 = sub_100173DD4;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_100173DD4()
{
  sub_100004194();
  sub_100004E24(*(v0 + 72), &qword_1002DF3A8, &qword_10023F1F0);

  sub_100002E08();

  return v1();
}

uint64_t sub_100173E54()
{
  sub_100004194();
  sub_100004E24(*(v0 + 72), &qword_1002DF3A8, &qword_10023F1F0);

  sub_100002E08();

  return v1();
}

uint64_t sub_100173ED4()
{
  sub_100004194();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v1[21] = v5;
  v6 = type metadata accessor for MetricsEvent();
  v1[26] = v6;
  sub_100003B78(v6);
  v1[27] = v7;
  v1[28] = sub_100003FA8();
  v8 = type metadata accessor for Date();
  v1[29] = v8;
  sub_100003B78(v8);
  v1[30] = v9;
  v1[31] = sub_100003FA8();
  v10 = type metadata accessor for TSDataSyncDeviceState(0);
  v1[32] = v10;
  sub_1000030B8(v10);
  v1[33] = sub_100003FA8();
  v11 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v11);
  v1[34] = sub_100003FA8();
  v12 = type metadata accessor for Log();
  v1[35] = v12;
  sub_100003B78(v12);
  v1[36] = v13;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v14 = sub_10000AA8C();

  return _swift_task_switch(v14);
}

uint64_t sub_100174070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = v3;
  v4 = *(v3 + 200);
  static Log.tsDataSync.getter();
  *(v3 + 312) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  *(v3 + 320) = *(v6 + 72);
  *(v3 + 360) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v8 = type metadata accessor for TSDataSyncConfigAccessActor(0);
  *(v3 + 16) = v4;
  *(v3 + 328) = v8;
  *(v3 + 40) = v8;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = *(v3 + 288);
  v39 = *(v3 + 304);
  v40 = *(v3 + 280);
  v42 = *(v3 + 264);
  v41 = *(v3 + 200);
  v13 = *(v3 + 176);
  v12 = *(v3 + 184);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v3 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100002860();
  v14._countAndFlagsBits = 0xD000000000000011;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  *(v3 + 72) = type metadata accessor for TSDataSyncConfigServerRequest(0);
  sub_100007914((v3 + 48));
  sub_1000032B4();
  sub_1001771AC(v13, v15);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v3 + 48, &unk_1002DFC10, &qword_10022E6D0);
  v16._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v17 = *(v11 + 8);
  *(v3 + 336) = v17;
  *(v3 + 344) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v39, v40);
  v18 = *(v12 + 184);
  v19 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100008158();
  sub_1001771AC(v41 + v19, v42);
  v20 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics;
  static Date.now.getter();
  if (v18)
  {
    v21 = (v41 + v20);
    v22 = *(v3 + 264);
    sub_10011DE50();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(*(v3 + 264) + 8);
      v47 = &type metadata for String;
      v46[0] = v24;
      v46[1] = v23;

      sub_1001A8ED8(v46, 0x65566769666E6F63, 0xED00006E6F697372);
    }

    v25 = *(v3 + 240);
    v26 = *(v3 + 224);
    v43 = *(v3 + 232);
    v44 = *(v3 + 248);
    v28 = *(v3 + 208);
    v27 = *(v3 + 216);
    v29 = *(*(v3 + 264) + *(*(v3 + 256) + 40));
    v47 = &type metadata for UInt64;
    v46[0] = v29;
    sub_1001A8ED8(v46, 0xD000000000000011, 0x8000000100273BE0);
    static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

    sub_10000C4FC(v21, v21[3]);
    dispatch thunk of MetricsQueue.enqueue(event:)();
    (*(v27 + 8))(v26, v28);
    (*(v25 + 8))(v44, v43);
  }

  else
  {
    (*(*(v3 + 240) + 8))(*(v3 + 248), *(v3 + 232));
  }

  sub_100177204();
  v30 = *(v3 + 200);
  v32 = *(v30 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_requester);
  v31 = *(v30 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_requester + 8);
  v33 = *(v30 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_bag);
  v45 = (*(v31 + 8) + **(v31 + 8));
  v34 = swift_task_alloc();
  *(v3 + 352) = v34;
  *v34 = v3;
  v34[1] = sub_1001745A0;
  v35 = *(v3 + 176);
  v36 = *(v3 + 184);
  v37 = *(v3 + 168);

  return v45(v37, v35, v36, v33, v32, v31);
}

uint64_t sub_1001745A0()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  v3 = sub_10000AA8C();

  return _swift_task_switch(v3);
}

void sub_100174698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[41];
  v5 = v3[25];
  static Log.tsDataSync.getter();
  v6 = swift_allocObject();
  v3[10] = v5;
  *(v6 + 16) = xmmword_1002329D0;
  v3[13] = v4;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = v3[42];
  v9 = v3[37];
  v10 = v3[35];
  v11 = v3[21];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v3 + 10);
  LogInterpolation.init(stringLiteral:)();
  v3[17] = sub_100099DF4(&qword_1002DF3A8, &qword_10023F1F0);
  v12 = sub_100007914(v3 + 14);
  sub_1000C68A8(v11, v12, &qword_1002DF3A8, &qword_10023F1F0);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24((v3 + 14), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v15(v9, v10);

  sub_100002E08();
  sub_100008A70();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1001748C8()
{
  sub_100004194();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = type metadata accessor for MetricsEvent();
  v1[11] = v7;
  sub_100003B78(v7);
  v1[12] = v8;
  v1[13] = sub_100003FA8();
  v9 = type metadata accessor for Date();
  v1[14] = v9;
  sub_100003B78(v9);
  v1[15] = v10;
  v1[16] = sub_100003FA8();
  v11 = type metadata accessor for TSDataSyncConfigServerResponse(0);
  sub_1000030B8(v11);
  v1[17] = sub_100003FA8();
  v12 = sub_100099DF4(&qword_1002DF3A8, &qword_10023F1F0);
  v1[18] = v12;
  sub_1000030B8(v12);
  v1[19] = sub_100003FA8();
  v13 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  sub_1000030B8(v13);
  v1[20] = sub_100003FA8();
  v14 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  sub_1000030B8(v14);
  v1[21] = sub_100003FA8();
  v15 = type metadata accessor for AccountIdentity();
  v1[22] = v15;
  sub_100003B78(v15);
  v1[23] = v16;
  v1[24] = sub_100003FA8();
  v17 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_1000030B8(v17);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v18 = sub_10000AA8C();

  return _swift_task_switch(v18);
}

uint64_t sub_100174AF4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v34 = *(v0 + 176);
  v35 = *(v0 + 192);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 80);
  v7 = *(v0 + 48);
  v33 = *(v0 + 40);
  v8 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100008158();
  v32 = v6;
  sub_1001771AC(v6 + v8, v1);
  sub_1000032B4();
  sub_1001771AC(v7, v3);
  sub_10017710C(v3, v5);
  (*(v2 + 32))(v35, v5, v34);
  sub_1000C68A8(v33, v4, &qword_1002DF3A8, &qword_10023F1F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v0 + 232);
  v11 = *(v0 + 224);
  if (EnumCaseMultiPayload == 1)
  {
    sub_1000AF1EC(**(v0 + 152), *(v0 + 224), *(v0 + 192), *(v0 + 72), *(v0 + 232));
  }

  else
  {
    v12 = *(v0 + 136);
    v13 = *(v0 + 72);
    sub_10017710C(*(v0 + 152), v12);
    sub_1000B0098(v12, v11, v13, v10);
    sub_10000B0C8();
    sub_100177204();
  }

  v14 = *(v0 + 232);
  v15 = *(v0 + 216);
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  sub_100004CB4();
  sub_100177204();
  sub_100175328(v14, v15);
  sub_100175464(v15, 0x7220726576726573, 0xEF65736E6F707365, v17, v16);
  v18 = *(*(v0 + 56) + 184);
  sub_100008158();
  sub_1001771AC(v32 + v8, v19);
  v20 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics;
  static Date.now.getter();
  if (v18)
  {
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    v23 = *(v0 + 88);
    v24 = (*(v0 + 80) + v20);
    sub_10011E324();
    sub_10000C4FC(v24, v24[3]);
    dispatch thunk of MetricsQueue.enqueue(event:)();
    (*(v22 + 8))(v21, v23);
  }

  v25 = *(v0 + 200);
  v26 = *(v0 + 80);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  sub_100004CB4();
  sub_100177204();
  v27 = sub_10000DC3C();
  v28(v27);
  sub_10000C4FC((v26 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_coordinator), *(v26 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_coordinator + 24));
  sub_100008158();
  sub_1001771AC(v32 + v8, v25);
  v29 = swift_task_alloc();
  *(v0 + 240) = v29;
  *v29 = v0;
  v29[1] = sub_100174F7C;
  sub_100008A70();

  return sub_100189088();
}

uint64_t sub_100174F7C()
{
  sub_10000452C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v0;

  sub_100177204();
  if (v0)
  {
    v4 = sub_1001751F8;
  }

  else
  {
    v4 = sub_1001750D4;
  }

  return _swift_task_switch(v4);
}

uint64_t sub_1001750D4()
{
  sub_100177204();
  sub_1000050CC();
  sub_100177204();

  sub_100002E08();

  return v0();
}

uint64_t sub_1001751F8()
{
  sub_100177204();
  sub_100177204();

  sub_100002E08();

  return v0();
}

void sub_100175328(char *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for TSDataSyncDeviceState(0);
  v6 = *&a1[*(v5 + 44)];
  if (*&a1[*(v5 + 52)] != v6 && v6 != 0.0)
  {
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -1.0)
    {
      if (v6 < 1.84467441e19)
      {
        v7 = v2 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_generator;
        swift_beginAccess();
        sub_100008494(v7, *(v7 + 24));
        sub_100176EEC();
        sub_100176F40();
        RandomNumberGenerator.next<A>(upperBound:)();
        swift_endAccess();
        sub_1000B1778(a1, a2, v8);
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  sub_100008158();
  sub_1001771AC(a1, a2);
}

uint64_t sub_100175464(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v86 = a5;
  v91 = a4;
  v94 = a2;
  v95 = a3;
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = sub_1000030B8(v8);
  __chkstk_darwin(v9);
  sub_1000030E4();
  v96 = v10;
  sub_100013FAC();
  type metadata accessor for Log();
  sub_100003724();
  v97 = v12;
  v98 = v11;
  __chkstk_darwin(v11);
  sub_1000037D4();
  v99 = v13;
  __chkstk_darwin(v14);
  sub_10000D478();
  v93 = v15;
  sub_100013FAC();
  v87 = type metadata accessor for MetricsEvent();
  sub_100003724();
  v85 = v16;
  __chkstk_darwin(v17);
  sub_1000030E4();
  v84 = v18;
  sub_100013FAC();
  type metadata accessor for FlagKeys();
  sub_100003724();
  v89 = v19;
  v90 = v20;
  __chkstk_darwin(v19);
  sub_1000030E4();
  v88 = v21;
  sub_100013FAC();
  v22 = type metadata accessor for Date();
  sub_100003724();
  v92 = v23;
  __chkstk_darwin(v24);
  sub_10000308C();
  sub_10000DE68();
  __chkstk_darwin(v25);
  v27 = v78 - v26;
  v28 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_10000307C();
  __chkstk_darwin(v29);
  sub_10000306C();
  v32 = (v31 - v30);
  v33 = v5;
  v34 = v5 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_store;
  v35 = *(v5 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_store);
  v36 = *(v34 + 8);
  v37 = v100;
  result = (*(v36 + 16))(a1, v35, v36);
  if (!v37)
  {
    v80 = v6;
    v82 = v27;
    v81 = v22;
    v83 = a1;
    v100 = v33;
    (*(v36 + 8))(v35, v36);
    v78[2] = 0;
    v39 = sub_1000B4B58(v32, v83);
    v40 = &unk_100232000;
    v41 = v100;
    v79 = v32;
    if (!v39)
    {
      v42 = *(v91 + 184);
      v78[0] = *(v91 + 176);
      v78[1] = v42;
      sub_100176D10();
      sub_100004950();
      v91 = swift_allocError();
      *v43 = 2;
      *(v43 + 8) = 1;
      v44 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics;
      v45 = v82;
      static Date.now.getter();
      v46 = v89;
      v47 = v90;
      v48 = v88;
      (*(v90 + 104))(v88, enum case for FlagKeys.TSDataSyncMetricsErrorEnhancements(_:), v89);
      v49 = FlagKeys.isEnabled.getter();
      (*(v47 + 8))(v48, v46);
      if (v49)
      {
        v50 = v80;
        static Date.now.getter();
        sub_100002AC4();
        if (v51)
        {
          sub_10011DE50();
          v104 = v52;
          v103 = &type metadata for String;
          v101 = 0xD000000000000014;
          v102 = 0x8000000100274D30;
          sub_100006F54();
          sub_1001A8ED8(&v101, v53, v54);
          v55 = v84;
          static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

          sub_10000C4FC((v41 + v44), *(v41 + v44 + 24));
          dispatch thunk of MetricsQueue.enqueue(event:)();
          (*(v85 + 8))(v55, v87);
          v56 = *(v92 + 8);
          v57 = v81;
          v56(v80, v81);
          v58 = v82;
        }

        else
        {
          v56 = *(v92 + 8);
          v57 = v81;
          v56(v50, v81);
          v58 = v45;
        }

        v56(v58, v57);
        v60 = v97;
        v59 = v98;
      }

      else
      {
        (*(v92 + 8))(v45, v81);
        v60 = v97;
        v59 = v98;
      }

      static Log.tsDataSync.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      sub_100002834();
      v61 = type metadata accessor for LogInterpolation();
      sub_100003B78(v61);
      sub_10000A1F0();
      *(sub_1001774F8() + 16) = xmmword_1002329D0;
      v103 = type metadata accessor for TSDataSyncConfigAccessActor(0);
      v101 = v41;

      v62 = AMSLogKey();
      if (v62)
      {
        v63 = v62;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000F414();
      }

      else
      {
        sub_100013E48();
      }

      sub_100177538(&v101);

      sub_100004118(&v101);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v64._countAndFlagsBits = 0xD00000000000001DLL;
      v64._object = 0x8000000100274D50;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v64);
      v103 = &type metadata for String;
      v101 = v94;
      v102 = v95;

      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      sub_1001774CC();
      v65._countAndFlagsBits = 58;
      v65._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v65);
      LogInterpolation.init(stringInterpolation:)();
      v103 = v28;
      sub_100007914(&v101);
      sub_100008158();
      sub_1001771AC(v83, v66);
      static LogInterpolation.sensitive(_:)();
      sub_1001774CC();
      v67 = v93;
      Log.fault(_:)();

      (*(v60 + 8))(v67, v59);
      v41 = v100;
      sub_1001765AC();
      v32 = v79;
      v40 = &unk_100232000;
    }

    v68 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
    swift_beginAccess();
    sub_100176E88(v32, v41 + v68);
    swift_endAccess();
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100002834();
    v69 = type metadata accessor for LogInterpolation();
    sub_100003B78(v69);
    sub_10000A1F0();
    *(sub_1001774F8() + 16) = v40[157];
    v103 = type metadata accessor for TSDataSyncConfigAccessActor(0);
    v101 = v41;

    v70 = AMSLogKey();
    if (v70)
    {
      v71 = v70;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000F414();
    }

    else
    {
      sub_100013E48();
    }

    v73 = v97;
    v72 = v98;
    sub_100177538(&v101);

    sub_100004118(&v101);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v74._countAndFlagsBits = 0x61206465726F7453;
    v74._object = 0xED00002072657466;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v74);
    v103 = &type metadata for String;
    v101 = v94;
    v102 = v95;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_1001774CC();
    v75._countAndFlagsBits = 58;
    v75._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v75);
    LogInterpolation.init(stringInterpolation:)();
    v103 = v28;
    sub_100007914(&v101);
    sub_100008158();
    sub_1001771AC(v79, v76);
    static LogInterpolation.sensitive(_:)();
    sub_1001774CC();
    v77 = v99;
    Log.default(_:)();

    (*(v73 + 8))(v77, v72);
    sub_100004CB4();
    return sub_100177204();
  }

  return result;
}

void sub_100175DA4()
{
  sub_100002A08();
  v36 = v4;
  v35 = v5;
  v7 = v6;
  v34 = v8;
  v9 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_10000307C();
  __chkstk_darwin(v10);
  sub_10000308C();
  v13 = (v11 - v12);
  __chkstk_darwin(v14);
  v16 = (&v32 - v15);
  v17 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100008158();
  sub_1001771AC(v0 + v17, v13);
  if (v7)
  {
    v18 = *v13;
    v33 = v13[1];
    v19 = v13[2];
    sub_100003D48(v9[6]);
    v20 = v9[7];
    type metadata accessor for Date();
    sub_10000307C();
    (*(v21 + 16))(v16 + v20, v13 + v20);
    sub_100003D48(v9[8]);
    sub_100003D48(v9[9]);
    sub_10000B4D0();
    v23 = sub_1000C68A8(v13 + v22, v16 + v22, &qword_1002DA970, &qword_1002318B0);
    sub_100177580(v23, v16 + v9[16]);
    v24 = *(v13 + v9[17]);
    sub_100177498(v13 + v9[18]);

    sub_1000C68A8(v38, v37, &qword_1002DB2E0, &unk_10023F030);
    sub_100004CB4();
    sub_100177204();
    v25 = v33;
    *v16 = v18;
    v16[1] = v25;
    v16[2] = v19;
  }

  else
  {
    v26 = *v13;
    v33 = v13[1];
    v27 = v13[2];
    sub_100003D48(v9[6]);
    v20 = v9[7];
    type metadata accessor for Date();
    sub_10000307C();
    (*(v28 + 16))(v16 + v20, v13 + v20);
    sub_100003D48(v9[8]);
    sub_100003D48(v9[9]);
    sub_10000B4D0();
    sub_100177580(v30, v16 + v29);
    sub_100003D48(v9[16]);
    v24 = *(v13 + v9[17]);
    sub_100177498(v13 + v9[18]);

    sub_1000C68A8(v38, v37, &qword_1002DB2E0, &unk_10023F030);
    sub_100004CB4();
    sub_100177204();
    v31 = v33;
    *v16 = v26;
    v16[1] = v31;
    v16[2] = v27;
  }

  *(v16 + v9[10]) = v32;
  *(v16 + v9[11]) = v1;
  *(v16 + v9[12]) = v20;
  *(v16 + v9[13]) = v2;
  *(v16 + v9[14]) = v3;
  *(v16 + v9[17]) = v24;
  sub_100002EE0(v16 + v9[18]);
  sub_100175464(v16, 0xD000000000000015, 0x8000000100274D10, v35, v36);
  sub_100004CB4();
  sub_100177204();
  sub_1000048F8();
}

void sub_1001760F0()
{
  sub_100002A08();
  v40 = v0;
  v42 = v2;
  v41 = v3;
  v5 = v4;
  v38 = v4;
  v7 = v6;
  v39 = v6;
  v8 = type metadata accessor for TSDataSyncDeviceState(0);
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  sub_10000308C();
  sub_10000DE68();
  __chkstk_darwin(v10);
  v12 = (&v35 - v11);
  v13 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100008158();
  sub_1001771AC(v0 + v13, v1);
  v37 = sub_1000B1018(*(v1 + v9[19]), v7, v5);
  v14 = v1[1];
  v35 = *v1;
  v36 = v14;
  v15 = v1[2];
  sub_100177458(v9[8]);
  v16 = v9[9];
  v17 = type metadata accessor for Date();
  sub_10000307C();
  (*(v18 + 16))(v12 + v16, v1 + v16, v17);
  sub_100177458(v9[10]);
  sub_100177458(v9[11]);
  v19 = *(v1 + v9[12]);
  v20 = *(v1 + v9[13]);
  v21 = *(v1 + v9[14]);
  v22 = *(v1 + v9[15]);
  v23 = *(v1 + v9[16]);
  sub_1000C68A8(v1 + v9[17], v12 + v9[17], &qword_1002DA970, &qword_1002318B0);
  sub_100177458(v9[18]);
  v24 = (v1 + v9[20]);
  v25 = v24[1];
  v26 = v24[3];
  v46 = v24[2];
  v27 = v46;
  v47 = v26;
  v28 = v24[1];
  v45[0] = *v24;
  v29 = v45[0];
  v45[1] = v28;
  v30 = v36;
  *v12 = v35;
  v12[1] = v30;
  v12[2] = v15;
  *(v12 + v9[12]) = v19;
  *(v12 + v9[13]) = v20;
  *(v12 + v9[14]) = v21;
  *(v12 + v9[15]) = v22;
  *(v12 + v9[16]) = v23;
  *(v12 + v9[19]) = v37;
  v31 = (v12 + v9[20]);
  *v31 = v29;
  v31[1] = v25;
  v32 = v24[3];
  v31[2] = v27;
  v31[3] = v32;

  sub_1000C68A8(v45, &v43, &qword_1002DB2E0, &unk_10023F030);
  sub_100177204();
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  sub_100002860();
  v33._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v33);
  DefaultStringInterpolation.appendInterpolation<A>(optional:)();
  v34._countAndFlagsBits = 0x20726F6620;
  v34._object = 0xE500000000000000;
  String.append(_:)(v34);
  type metadata accessor for AccountIdentity();
  _print_unlocked<A, B>(_:_:)();
  sub_100175464(v12, v43, v44, v41, v42);
  sub_100177204();

  sub_1000048F8();
}

uint64_t sub_100176484(uint64_t a1)
{
  v2 = sub_1001772FC();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001764C0(uint64_t a1)
{
  v2 = sub_1001772FC();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100176518(uint64_t a1)
{
  v2 = sub_100177400();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_100176554(uint64_t a1)
{
  v2 = sub_100177400();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001765AC()
{
  v1 = v0;
  v2 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v2);
  sub_100003774();
  __chkstk_darwin(v3);
  v5 = v21 - v4;
  v6 = type metadata accessor for Log();
  sub_100003724();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000306C();
  v12 = v11 - v10;
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v13 = type metadata accessor for LogInterpolation();
  sub_100003B78(v13);
  sub_10000A1F0();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v21[3] = type metadata accessor for TSDataSyncConfigAccessActor(0);
  v21[0] = v1;

  v14 = AMSLogKey();
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v21);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v8 + 8))(v12, v6);
  v16 = objc_allocWithZone(type metadata accessor for AutoBugCaptureReport());
  AutoBugCaptureReport.init(domain:type:subtype:subtypeContext:process:thresholdValues:)();
  sub_100003F9C();
  v17 = type metadata accessor for TaskPriority();
  sub_100002728(v5, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v19 = v16;
  sub_10018C610(0, 0, v5, &unk_10023F020, v18);

  return sub_100004E24(v5, &qword_1002DB950, &qword_100232E50);
}

uint64_t sub_1001768F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001769A4;
  v2.n128_u64[0] = 0;

  return __s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKF(_swiftEmptyArrayStorage, 0, 0, v2);
}

uint64_t sub_1001769A4()
{
  sub_100004194();
  v3 = v2;
  sub_1000030F8();
  sub_10000452C();
  *v5 = v4;
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 24) = v3;

  if (v0)
  {

    return _swift_task_switch(sub_100176AC8);
  }

  else
  {

    sub_100002E08();

    return v9();
  }
}

uint64_t sub_100176AC8()
{
  sub_100004194();
  v1 = *(v0 + 24);
  sub_10013D194();
  sub_100004950();
  swift_allocError();
  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100176B40()
{
  sub_100004CB4();
  sub_100177204();
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_defaults));

  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_generator));
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_coordinator));
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100176BC4()
{
  sub_100176B40();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for TSDataSyncConfigAccessActor(uint64_t a1)
{
  result = qword_1002DF218;
  if (!qword_1002DF218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100176C44(uint64_t a1)
{
  result = type metadata accessor for TSDataSyncDeviceState(319);
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

unint64_t sub_100176D10()
{
  result = qword_1002DF390;
  if (!qword_1002DF390)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for TSDataSyncConfigAccessActor.Errors, v0, v1);
    atomic_store(result, &qword_1002DF390);
  }

  return result;
}

uint64_t sub_100176D64(void *a1)
{
  v2 = [a1 ams_altDSID];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100176DD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C6A64;

  return sub_1001768F8();
}

uint64_t sub_100176E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDeviceState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100176EEC()
{
  result = qword_1002DF398;
  if (!qword_1002DF398)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt64, &type metadata for UInt64, v0, v1);
    atomic_store(result, &qword_1002DF398);
  }

  return result;
}

unint64_t sub_100176F40()
{
  result = qword_1002DF3A0;
  if (!qword_1002DF3A0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt64, &type metadata for UInt64, v0, v1);
    atomic_store(result, &qword_1002DF3A0);
  }

  return result;
}

uint64_t sub_100176F94(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  sub_100003B78(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for Date();
  sub_1000030B8(v10);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000C6A64;

  return sub_100173160(a1, v11, v12, v13, v1 + v7, v1 + v9, v1 + ((v9 + 199) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_10017710C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v4(v3);
  sub_10000307C();
  v5 = sub_1000050CC();
  v6(v5);
  return a2;
}

uint64_t sub_100177164(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1001771AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v4(v3);
  sub_10000307C();
  v5 = sub_1000050CC();
  v6(v5);
  return a2;
}

uint64_t sub_100177204()
{
  v1 = sub_100002834();
  v2(v1);
  sub_10000307C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t getEnumTagSinglePayload for TSDataSyncConfigAccessActor.Errors(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TSDataSyncConfigAccessActor.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1001772FC()
{
  result = qword_1002DF3C8;
  if (!qword_1002DF3C8)
  {
    result = swift_getWitnessTable(a9_0, &type metadata for TSDataSyncConfigAccessActor.Errors, v0, v1);
    atomic_store(result, &qword_1002DF3C8);
  }

  return result;
}

unint64_t sub_100177354()
{
  result = qword_1002DF3D0;
  if (!qword_1002DF3D0)
  {
    result = swift_getWitnessTable(aQ_7, &type metadata for TSDataSyncConfigAccessActor.Errors, v0, v1);
    atomic_store(result, &qword_1002DF3D0);
  }

  return result;
}

unint64_t sub_1001773AC()
{
  result = qword_1002DF3D8;
  if (!qword_1002DF3D8)
  {
    result = swift_getWitnessTable(byte_10023F068, &type metadata for TSDataSyncConfigAccessActor.Errors, v0, v1);
    atomic_store(result, &qword_1002DF3D8);
  }

  return result;
}

unint64_t sub_100177400()
{
  result = qword_1002DF3E0;
  if (!qword_1002DF3E0)
  {
    result = swift_getWitnessTable(asc_10023F118, &type metadata for TSDataSyncConfigAccessActor.Errors, v0, v1);
    atomic_store(result, &qword_1002DF3E0);
  }

  return result;
}

uint64_t sub_100177458@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v2 + a1, v3 + a1, v4, v1);
}

uint64_t sub_100177478@<X0>(uint64_t a1@<X8>)
{

  return sub_100002728(v2 + a1, 1, 1, v1);
}

__n128 sub_100177498@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 - 192) = *a1;
  *(v1 - 176) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 - 160) = result;
  *(v1 - 144) = v4;
  return result;
}

uint64_t sub_1001774AC@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v2 + a1, v4 + a1, v3, v1);
}

uint64_t sub_1001774CC()
{

  return sub_100004E24(v2 - 120, v0, v1);
}

uint64_t sub_1001774F8()
{

  return swift_allocObject();
}

uint64_t sub_10017751C()
{

  return sub_100004E24(v2 - 112, v0, v1);
}

uint64_t sub_100177538(uint64_t a1)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100177560@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v5 + a1, v4 + v1, v2, v3);
}

uint64_t sub_100177580(uint64_t a1, uint64_t a2)
{
  v6 = *(v4 - 288);

  return sub_1000C68A8(v6, a2, v2, v3);
}

uint64_t sub_1001775B0()
{
  sub_100004194();
  v0[21] = v1;
  v0[22] = v2;
  v0[19] = v3;
  v0[20] = v4;
  v5 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  sub_1000030B8(v5);
  v0[23] = sub_100003FA8();
  v6 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  sub_1000030B8(v6);
  v0[24] = sub_100003FA8();
  v7 = type metadata accessor for AccountIdentity();
  v0[25] = v7;
  sub_100003B78(v7);
  v0[26] = v8;
  v0[27] = sub_100003FA8();
  v9 = type metadata accessor for TSDataSyncConfigServerResponse(0);
  v0[28] = v9;
  sub_1000030B8(v9);
  v0[29] = sub_100003FA8();
  v10 = sub_100099DF4(&qword_1002DF3A8, &qword_10023F1F0);
  v0[30] = v10;
  sub_1000030B8(v10);
  v0[31] = sub_100003FA8();
  sub_10000381C();

  return _swift_task_switch(v11);
}

uint64_t sub_1001776F0()
{
  sub_100004194();
  v1 = objc_allocWithZone(type metadata accessor for MetricsActivity());
  *(v0 + 256) = MetricsActivity.init(label:)();
  dispatch thunk of MetricsActivity.activate()();
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  *v2 = v0;
  v2[1] = sub_1001777A8;

  return sub_1001780A4();
}

uint64_t sub_1001777A8()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[34] = v6;
  v3[35] = v0;

  if (v0)
  {
    sub_10000381C();

    return _swift_task_switch(v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[36] = v8;
    *v8 = v5;
    v8[1] = sub_100177908;

    return sub_1001787CC();
  }
}

uint64_t sub_100177908()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 296) = v4;
  *(v2 + 304) = v0;

  sub_10000381C();

  return _swift_task_switch(v5);
}

uint64_t sub_100177A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000AF64();
  sub_100002E38();
  v15 = v14[37];
  v16 = v14[34];
  v17 = [objc_allocWithZone(type metadata accessor for AuthURLDelegate()) init];
  v14[39] = v17;
  [v15 setDelegate:v17];
  v18 = v16;
  v19 = [v15 dataTaskPromiseWithRequest:v18 activity:dispatch thunk of MetricsActivity.nwActivity.getter()];
  v14[40] = v19;
  swift_unknownObjectRelease();

  v14[2] = v14;
  v14[7] = v14 + 18;
  v14[3] = sub_100177BA0;
  v20 = swift_continuation_init();
  v14[17] = sub_100099DF4(&qword_1002DB9E0, &qword_10023F930);
  v14[10] = _NSConcreteStackBlock;
  v14[11] = 1107296256;
  v14[12] = sub_1000C5D24;
  v14[13] = &unk_1002BB498;
  v14[14] = v20;
  [v19 resultWithCompletion:v14 + 10];
  sub_1000041E0();

  return _swift_continuation_await(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100177BA0()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_100177CA0()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 144);

  sub_1000A1B24(v8, v6);
  v10 = sub_100008170();
  sub_1001796A4(v10, v7, v11);
  (*(v4 + 32))(v3, v7, v5);
  sub_100178E28(v9, v3, v2);
  v12 = *(v0 + 312);
  v13 = *(v0 + 296);
  v14 = *(v0 + 272);
  if (v1)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    **(v0 + 248) = v1;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = *(v0 + 248);
    v15 = *(v0 + 232);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    sub_1001796A4(v15, v2, type metadata accessor for TSDataSyncConfigServerResponse);
    swift_storeEnumTagMultiPayload();
  }

  sub_100004CCC();
  sub_10000F13C();

  sub_100004E24(v2, &qword_1002DF3A8, &qword_10023F1F0);

  sub_100002E08();

  return v16();
}

uint64_t sub_100177E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  sub_10000AC68(*(v12 + 280));
  sub_100004CCC();
  sub_10000F13C();

  sub_100004E24(v10, &qword_1002DF3A8, &qword_10023F1F0);

  sub_100002E08();
  sub_1000041E0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100177F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();

  sub_10000AC68(*(v12 + 304));
  sub_100004CCC();
  sub_10000F13C();

  sub_100004E24(v10, &qword_1002DF3A8, &qword_10023F1F0);

  sub_100002E08();
  sub_1000041E0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100177FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  v11 = v10[40];
  v12 = v10[39];
  v13 = v10[37];
  v14 = v10[34];
  swift_willThrow();

  sub_10000AC68(v10[41]);
  sub_100004CCC();
  sub_10000F13C();

  sub_100004E24(v12, &qword_1002DF3A8, &qword_10023F1F0);

  sub_100002E08();
  sub_1000041E0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1001780A4()
{
  sub_100004194();
  v0[11] = v1;
  v0[12] = v2;
  v0[10] = v3;
  v4 = type metadata accessor for URL();
  v0[13] = v4;
  sub_100003B78(v4);
  v0[14] = v5;
  v0[15] = sub_100003FA8();
  sub_10000381C();

  return _swift_task_switch(v6);
}

uint64_t sub_100178150()
{
  v1 = v0[10];
  v2 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v0[12]];
  v0[16] = v2;
  [v2 setRequestEncoding:3];
  v3 = sub_10017919C(v1);
  v4 = v0[15];
  v5 = v0[11];
  [v2 setAccount:v3];

  v6 = v2;
  sub_1001793F8(v5, v4);
  v7 = v0[10];

  sub_100099DF4(&qword_1002DB9E8, &unk_10023F950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  *(inited + 32) = 0x646975472D58;
  *(inited + 40) = 0xE600000000000000;
  v9 = [objc_opt_self() deviceGUID];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v13 = Dictionary.init(dictionaryLiteral:)();
  result = sub_1000A199C(v7);
  v15 = 0;
  v16 = result + 64;
  v51 = v0;
  v52 = result;
  v17 = -1;
  v18 = -1 << *(result + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(result + 64);
  v20 = (63 - v18) >> 6;
  v49 = v20;
  v50 = result + 64;
  while (1)
  {
    v0[17] = v13;
    if (!v19)
    {
      break;
    }

LABEL_9:
    v22 = (v15 << 10) | (16 * __clz(__rbit64(v19)));
    v23 = (*(v52 + 48) + v22);
    v25 = *v23;
    v24 = v23[1];
    v26 = (*(v52 + 56) + v22);
    v27 = v26[1];
    v53 = *v26;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_10014EB30(v25, v24);
    v30 = v13[2];
    v31 = (v29 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v33 = result;
    v34 = v29;
    sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
    result = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v32);
    if (result)
    {
      result = sub_10014EB30(v25, v24);
      if ((v34 & 1) != (v35 & 1))
      {
        sub_1000D3404();

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v33 = result;
    }

    if (v34)
    {

      v36 = (v13[7] + 16 * v33);
      *v36 = v53;
      v36[1] = v27;
    }

    else
    {
      v13[(v33 >> 6) + 8] |= 1 << v33;
      v37 = (v13[6] + 16 * v33);
      *v37 = v25;
      v37[1] = v24;
      v38 = (v13[7] + 16 * v33);
      *v38 = v53;
      v38[1] = v27;
      v39 = v13[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_26;
      }

      v13[2] = v41;
    }

    v19 &= v19 - 1;
    v16 = v50;
    v0 = v51;
    v20 = v49;
  }

  while (1)
  {
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v15;
    if (v19)
    {
      v15 = v21;
      goto LABEL_9;
    }
  }

  v42 = swift_task_alloc();
  v0[18] = v42;
  *v42 = v0;
  v42[1] = sub_100178570;
  sub_1000D3404();

  return sub_1001A833C(v43, v44, v45, v46);
}

uint64_t sub_100178570(uint64_t a1)
{
  v4 = *v2;
  sub_10000452C();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 152) = v1;

  if (!v1)
  {
    *(v4 + 160) = a1;
  }

  sub_10000381C();

  return _swift_task_switch(v6);
}

uint64_t sub_1001786AC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 160);

  return v4(v5);
}

uint64_t sub_100178740()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  sub_100002E08();

  return v4();
}

uint64_t sub_1001787CC()
{
  sub_100004194();
  v0[21] = v1;
  v2 = type metadata accessor for IndexSet();
  v0[22] = v2;
  sub_100003B78(v2);
  v0[23] = v3;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_100178888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = [objc_allocWithZone(AMSURLResponseDecoder) init];
  v14[26] = v15;
  sub_1001797AC(&qword_1002DB9D8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  dispatch thunk of SetAlgebra.init()();
  for (i = 200; i != 300; ++i)
  {
    v14[19] = i;
    dispatch thunk of SetAlgebra.insert(_:)();
  }

  v17 = v14[25];
  v18 = v14[22];
  v19 = v14[23];
  v20 = v14[21];
  (*(v19 + 32))(v17, v14[24], v18);
  IndexSet.insert(_:)(304);
  IndexSet.insert(_:)(429);
  IndexSet._bridgeToObjectiveC()(v21);
  v23 = v22;
  (*(v19 + 8))(v17, v18);
  [v15 setAllowedStatusCodes:v23];

  v24 = objc_opt_self();
  v14[27] = v24;
  v25 = [objc_opt_self() currentProcess];
  v26 = [v24 ams_configurationWithClientInfo:v25 bag:v20];
  v14[28] = v26;

  v14[2] = v14;
  v14[7] = v14 + 20;
  v14[3] = sub_100178B28;
  v27 = swift_continuation_init();
  v14[17] = sub_100099DF4(&qword_1002DB918, &unk_100232B20);
  v14[10] = _NSConcreteStackBlock;
  v14[11] = 1107296256;
  v14[12] = sub_1000C5C90;
  v14[13] = &unk_1002BB4C0;
  v14[14] = v27;
  [v26 resultWithCompletion:v14 + 10];

  return _swift_continuation_await(v14 + 2, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100178B28()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_100178C28()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
  }

  else
  {
    v3 = *(v0 + 216);
    swift_unknownObjectRelease();
    v2 = [v3 defaultSessionConfiguration];
  }

  v4 = *(v0 + 208);
  [v2 set_systemClientOfPrivateAccessTokens:1];
  [v2 setUsesClassicLoadingMode:0];
  v5 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v2];

  v6 = v4;
  [v5 setResponseDecoder:v6];

  swift_unknownObjectRelease();

  v7 = *(v0 + 8);

  return v7(v5);
}

uint64_t sub_100178D98(uint64_t a1)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 208);
  swift_willThrow();

  sub_100002E08();

  return v4();
}

uint64_t sub_100178E28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  type metadata accessor for Date();
  sub_10000C0F0();
  v9 = v8;
  __chkstk_darwin(v10);
  v36 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  static Date.now.getter();
  v15 = sub_10019A1E0(a1);
  if (!v15 || (v16 = sub_100197EB0(v15), , !v16))
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  [a1 responseStatusCode];
  static HTTPHelpers.throwForRetryAfter(statusCode:headers:now:)();
  if (v3)
  {
    v17 = sub_100007408();
    v18(v17);
  }

  else
  {
    v33 = a2;
    v34 = a3;
    v19 = [a1 data];
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    sub_1000A1894(v35);
    sub_10000D170(v20, v22);
    v24 = v36;
    static HTTPHelpers.responseTimestamp(from:)();

    v25 = type metadata accessor for TSDataSyncConfigServerResponse(0);
    v26 = v25[5];
    v27 = v34;
    Date.addingTimeInterval(_:)();
    sub_100002728(&v27[v26], 0, 1, v4);
    sub_100002728(&v27[v25[6]], 1, 1, v4);
    (*(v9 + 16))(&v27[v25[7]], v24, v4);
    v28 = v25[8];
    type metadata accessor for AccountIdentity();
    sub_10000307C();
    (*(v29 + 16))(&v27[v28], v33);
    v30 = [a1 responseStatusCode];
    v31 = *(v9 + 8);
    v31(v24, v4);
    result = (v31)(v14, v4);
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v32 = v35[1];
      *v27 = v35[0];
      *(v27 + 1) = v32;
      *(v27 + 2) = v35[2];
      *&v27[v25[9]] = v30;
    }
  }

  return result;
}

id sub_10017919C(uint64_t a1)
{
  v3 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  v4 = sub_1000030B8(v3);
  __chkstk_darwin(v4);
  sub_10000306C();
  v7 = v6 - v5;
  v8 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  v9 = sub_1000030B8(v8);
  __chkstk_darwin(v9);
  sub_10000306C();
  v12 = v11 - v10;
  type metadata accessor for AccountIdentity.DSID();
  sub_10000C0F0();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000306C();
  v18 = v17 - v16;
  sub_1000A1B24(a1, v12);
  v19 = sub_100008170();
  sub_1001796A4(v19, v7, v20);
  AccountIdentity.dsid.getter();
  sub_1000A1BEC(v7);
  v21 = [objc_opt_self() ams_sharedAccountStore];
  AccountIdentity.DSID.value.getter();
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v23 = [v21 ams_iTunesAccountWithDSID:isa];

  if (!v23)
  {
    type metadata accessor for TSDataSyncNetworkingCore.Errors(0);
    sub_100006F78();
    sub_1001797AC(v24, v25, byte_1002384C4);
    swift_allocError();
    v27 = v26;
    v28 = *(sub_100099DF4(&qword_1002DD680, &qword_100238510) + 48);
    (*(v14 + 16))(v27, v18, v1);
    *(v27 + v28) = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  (*(v14 + 8))(v18, v1);
  return v23;
}

uint64_t sub_1001793F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  v5 = sub_1000030B8(v4);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  URL.init(string:)();
  v10 = type metadata accessor for URL();
  if (sub_100004DFC(v7, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a2, v7, v10);
  }

  sub_100004E24(v7, &qword_1002DB318, &qword_10023F230);
  type metadata accessor for TSDataSyncNetworkingCore.Errors(0);
  sub_100006F78();
  sub_1001797AC(v11, v12, byte_1002384C4);
  swift_allocError();
  *v13 = v9;
  v13[1] = v8;
  v13[2] = 2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t sub_10017957C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000CA15C;

  return sub_1001775B0();
}

uint64_t sub_100179634(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DF3A8, &qword_10023F1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001796A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000307C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001797AC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1001797FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  type metadata accessor for TSDataSyncConfigFileSystemStore.Errors(0);
  sub_10000307C();
  __chkstk_darwin(v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v36 - v15);
  v17 = sub_100099DF4(&qword_1002DF4C8, &qword_10023F388);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - v18;
  v21 = (&v36 + *(v20 + 56) - v18);
  sub_10017A5AC(a1, &v36 - v18);
  sub_10017A5AC(a2, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10017A5AC(v19, v16);
    v29 = *v16;
    v28 = v16[1];
    v30 = v16[2];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = v21[2];
      if (v29 == *v21 && v28 == v21[1])
      {
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v27 = v30 == v31;
      goto LABEL_18;
    }

LABEL_8:
    sub_100004E24(v19, &qword_1002DF4C8, &qword_10023F388);
    return 0;
  }

  sub_10017A5AC(v19, v13);
  v22 = *(sub_100099DF4(&qword_1002DF4D0, &unk_10023F390) + 48);
  v23 = *&v13[v22];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v6 + 8))(v13, v4);
    goto LABEL_8;
  }

  v24 = *(v21 + v22);
  (*(v6 + 32))(v10, v21, v4);
  v25 = static AccountIdentity.== infix(_:_:)();
  v26 = *(v6 + 8);
  v26(v10, v4);
  v26(v13, v4);
  if ((v25 & 1) == 0)
  {
LABEL_14:
    sub_10017A610(v19, type metadata accessor for TSDataSyncConfigFileSystemStore.Errors);
    return 0;
  }

  v27 = v23 == v24;
LABEL_18:
  v34 = v27;
  sub_10017A610(v19, type metadata accessor for TSDataSyncConfigFileSystemStore.Errors);
  return v34;
}

uint64_t sub_100179B38(uint64_t a1)
{
  v2 = sub_10017A568(&qword_1002DF4A8, aA_0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100179B90(uint64_t a1)
{
  v2 = sub_10017A568(&qword_1002DF4A8, aA_0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100179C04(uint64_t a1)
{
  v2 = sub_10017A568(&qword_1002DF4C0, asc_10023F310);

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_100179C5C(uint64_t a1)
{
  v2 = sub_10017A568(&qword_1002DF4C0, asc_10023F310);

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100179CB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for URL();
  sub_100003724();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000306C();
  v14 = v13 - v12;
  v15 = [objc_opt_self() ams_dataVaultDirectory];
  if (v15)
  {
    v16 = v15;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_100002728(v4, v17, 1, v8);
  sub_1000CAE2C(v4, v7);
  if (sub_100004DFC(v7, 1, v8) == 1)
  {
    sub_100004E24(v7, &qword_1002DB318, &qword_10023F230);
    type metadata accessor for TSDataSyncConfigFileSystemStore.Errors(0);
    sub_100007DA0();
    sub_10017A568(v18, v19);
    swift_allocError();
    *v20 = 0xD000000000000016;
    v20[1] = 0x8000000100272EB0;
    v20[2] = 1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    (*(v10 + 8))(v7, v8);
    return (*(v10 + 32))(a1, v14, v8);
  }
}

uint64_t sub_100179F2C()
{
  type metadata accessor for URL();
  sub_100003724();
  __chkstk_darwin(v2);
  sub_10000306C();
  type metadata accessor for TSDataSyncConfigStoreCore(0);
  sub_10000307C();
  __chkstk_darwin(v3);
  sub_10000306C();
  result = sub_100006B68();
  if (!v0)
  {
    v1[3] = type metadata accessor for LiveFileStore();
    v1[4] = &protocol witness table for LiveFileStore;
    sub_100007914(v1);
    LiveFileStore.init()();
    v5 = sub_100003A0C();
    v6(v5);
    sub_1000BB314();
    sub_100004CF4();
    return sub_10017A610(v1, v7);
  }

  return result;
}

uint64_t sub_10017A064(uint64_t a1)
{
  type metadata accessor for URL();
  sub_100003724();
  __chkstk_darwin(v4);
  sub_10000306C();
  type metadata accessor for TSDataSyncConfigStoreCore(0);
  sub_10000307C();
  __chkstk_darwin(v5);
  sub_10000306C();
  result = sub_100006B68();
  if (!v1)
  {
    v2[3] = type metadata accessor for LiveFileStore();
    v2[4] = &protocol witness table for LiveFileStore;
    sub_100007914(v2);
    LiveFileStore.init()();
    v7 = sub_100003A0C();
    v8(v7);
    sub_1000BB4C0(a1);
    sub_100004CF4();
    return sub_10017A610(v2, v9);
  }

  return result;
}

uint64_t sub_10017A19C()
{
  v1 = type metadata accessor for URL();
  sub_100003724();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000306C();
  v7 = v6 - v5;
  v8 = type metadata accessor for TSDataSyncConfigStoreCore(0);
  sub_10000307C();
  __chkstk_darwin(v9);
  sub_10000306C();
  v12 = (v11 - v10);
  result = sub_100179CB8(v7);
  if (!v0)
  {
    v12[3] = type metadata accessor for LiveFileStore();
    v12[4] = &protocol witness table for LiveFileStore;
    sub_100007914(v12);
    LiveFileStore.init()();
    (*(v3 + 32))(v12 + *(v8 + 20), v7, v1);
    sub_1000BB8D0();
    sub_100004CF4();
    return sub_10017A610(v12, v14);
  }

  return result;
}

uint64_t type metadata accessor for TSDataSyncConfigFileSystemStore.Errors(uint64_t a1)
{
  result = qword_1002DF460;
  if (!qword_1002DF460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017A378(uint64_t a1)
{
  sub_10017A3EC();
  if (v1 <= 0x3F)
  {
    sub_10017A450(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10017A3EC()
{
  if (!qword_1002DF470)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1002DF470);
    }
  }
}

void sub_10017A450(uint64_t a1)
{
  if (!qword_1002DF478)
  {
    type metadata accessor for AccountIdentity();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1002DF478);
    }
  }
}

uint64_t sub_10017A568(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for TSDataSyncConfigFileSystemStore.Errors(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017A5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncConfigFileSystemStore.Errors(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017A610(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_10017A66C(uint64_t a1)
{
  v10 = 0;
  v2 = [objc_opt_self() dataWithJSONObject:a1 options:0 error:&v10];
  v3 = v10;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = type metadata accessor for JSONDecoder();
    sub_10018C398(v7);
    JSONDecoder.init()();
    sub_10018B370();
    sub_10018C320(&type metadata for AccountDataNetworkingBag);
    sub_10000D170(v4, v6);

    if (!v1)
    {
      return v10;
    }
  }

  else
  {
    v9 = v3;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

id sub_10017A790(uint64_t a1)
{
  v10 = 0;
  v2 = [objc_opt_self() dataWithJSONObject:a1 options:0 error:&v10];
  v3 = v10;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = type metadata accessor for JSONDecoder();
    sub_10018C398(v7);
    JSONDecoder.init()();
    sub_10018A514();
    sub_10018C320(&unk_1002B7C88);
    sub_10000D170(v4, v6);

    if (!v1)
    {
      return v10;
    }
  }

  else
  {
    v9 = v3;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

void *sub_10017A8B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __src[0] = 0;
  v4 = [objc_opt_self() dataWithJSONObject:a1 options:0 error:__src];
  v5 = __src[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10018A4C0();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10000D170(v6, v8);

    if (!v2)
    {
      return memcpy(a2, __src, 0xC0uLL);
    }
  }

  else
  {
    v10 = v5;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

void *sub_10017AA10(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_defaultActor_initialize();
  v8[26] = 0;
  v8[14] = a1;
  type metadata accessor for TSDataSyncDatasetGroupActorCollection();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  type metadata accessor for TSDataSyncDatasetGroupAccessActor(0);
  sub_10018BA54();
  sub_10018ADEC(v17, v18, byte_10023679C);
  *(v16 + 112) = Dictionary.init(dictionaryLiteral:)();
  v8[27] = v16;
  v8[15] = a2;
  v8[16] = a3;
  sub_1000D3298(a4, (v8 + 17));
  v8[22] = a5;
  v8[23] = a6;
  v8[24] = a7;
  v8[25] = a8;
  return v8;
}

uint64_t sub_10017AB18()
{
  sub_100004194();
  v3 = v2;
  v1[26] = v0;
  v4 = type metadata accessor for Log();
  v1[27] = v4;
  sub_100003B78(v4);
  v1[28] = v5;
  v1[29] = sub_100003FA8();
  swift_task_alloc();
  sub_10000DEA0();
  v1[30] = v6;
  *v6 = v7;
  v6[1] = sub_10017ABFC;

  return sub_10017AECC((v1 + 2), v3);
}

uint64_t sub_10017ABFC()
{
  sub_100007F3C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7(0);
  }

  else
  {

    return _swift_task_switch(sub_10017AD34);
  }
}

uint64_t sub_10017AD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  sub_10018A46C(v14 + 16);
  if ((*(v14 + 16) & 1) == 0)
  {
    v15 = *(v14 + 224);
    v16 = *(v14 + 232);
    a10 = *(v14 + 208);
    a11 = *(v14 + 216);
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v17 = type metadata accessor for LogInterpolation();
    sub_100003B78(v17);
    sub_10018BFE0();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v18 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for TSDataSyncCoordinatorActor();
    sub_10018BDCC();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    (*(v15 + 8))(v16, a11);
  }

  sub_100003BBC();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10017AECC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100007620(sub_10017AEE8);
}

uint64_t sub_10017AEE8()
{
  sub_100004194();
  v1 = sub_10009F6A8();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_10017AF88;

  return SendableBag.cachedCodableDictionary(for:)(v1);
}

uint64_t sub_10017AF88()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    v9 = sub_10017B130;
  }

  else
  {
    *(v5 + 56) = v3;

    v9 = sub_10017B0A0;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_10017B0A0()
{
  v6 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  sub_10017A8B0(v1, __src);

  if (v2)
  {
    sub_100002E08();
  }

  else
  {
    memcpy(*(v0 + 16), __src, 0xC0uLL);
    sub_100003844();
  }

  return v3();
}

uint64_t sub_10017B130()
{
  sub_100004194();

  sub_100002E08();

  return v0();
}

uint64_t sub_10017B18C()
{
  sub_100004194();
  v1[41] = v2;
  v1[42] = v0;
  v1[39] = v3;
  v1[40] = v4;
  sub_10018C0D8();
  v1[43] = v5;
  v6 = type metadata accessor for TSDataSyncEntryPoint(0);
  v1[44] = v6;
  sub_1000030B8(v6);
  v1[45] = sub_100003FA8();
  v7 = type metadata accessor for TSDataSyncExternalEvent(0);
  sub_1000030B8(v7);
  v1[46] = sub_100003FA8();
  v8 = type metadata accessor for AccountIdentity();
  v1[47] = v8;
  sub_100003B78(v8);
  v1[48] = v9;
  v1[49] = sub_100003FA8();
  v10 = sub_10000AA8C();

  return _swift_task_switch(v10);
}

uint64_t sub_10017B29C()
{
  sub_100004194();
  v0[50] = *(v0[42] + 112);
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_10017B334;

  return sub_10017AB18();
}

uint64_t sub_10017B334()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v7 = *v1;
  sub_100004504();
  *v8 = v7;

  if (v0)
  {

    sub_100002E08();
LABEL_8:

    return v9();
  }

  if ((v3 & 1) == 0)
  {

    sub_100003844();
    goto LABEL_8;
  }

  swift_task_alloc();
  sub_10000DEA0();
  *(v5 + 416) = v10;
  *v10 = v11;
  v10[1] = sub_10017B4D0;
  v12 = *(v5 + 400);

  return sub_10017AECC(v5 + 16, v12);
}

uint64_t sub_10017B4D0()
{
  sub_100007F3C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;
  *(v3 + 424) = v0;

  if (v0)
  {

    sub_100002E08();

    return v7();
  }

  else
  {
    v9 = sub_10018C344();

    return _swift_task_switch(v9);
  }
}

uint64_t sub_10017B60C()
{
  sub_100007F3C();
  v1 = v0[53];
  type metadata accessor for TSDataSyncConfigAccessActor(0);
  sub_100172FD8(v0 + 34);
  if (v1)
  {
    sub_10018A46C((v0 + 2));

    sub_100002E08();

    return v2();
  }

  else
  {
    sub_10000C4FC(v0 + 34, v0[37]);
    v4 = sub_10018C3DC();
    v5(v4);
    swift_task_alloc();
    sub_10000DEA0();
    v0[54] = v6;
    *v6 = v7;
    v6[1] = sub_10017B73C;

    return sub_10019C724();
  }
}

uint64_t sub_10017B73C()
{
  sub_10000DB4C();
  sub_1000030F8();
  v2 = v1;
  sub_1000077D8();
  *v3 = v2;
  v4 = *v0;
  sub_100004504();
  *v5 = v4;

  v6 = sub_100008780();
  v7(v6);
  sub_100004118((v2 + 272));
  sub_10000AD14();

  return _swift_task_switch(v8);
}

uint64_t sub_10017B898()
{
  sub_100007F3C();
  sub_10018B17C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      sub_10018B1D8();
      v1 = swift_task_alloc();
      v0[58] = v1;
      *v1 = v0;
      v1[1] = sub_10017BC68;
      sub_100005040(v0[46]);

      result = sub_100182110();
      break;
    case 3u:
    case 4u:
      v3 = swift_task_alloc();
      v0[60] = v3;
      *v3 = v0;
      sub_10018B454(v3);
      sub_100005040(v0[40]);

      result = sub_10017C0F8();
      break;
    default:
      v0[55] = *(v0[45] + 8);
      v4 = swift_task_alloc();
      v0[56] = v4;
      *v4 = v0;
      v4[1] = sub_10017BA9C;

      result = sub_100180740();
      break;
  }

  return result;
}

uint64_t sub_10017BA9C()
{
  sub_100007F3C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (v0)
  {
    sub_100004E7C(v3 + 208, &qword_1002DF3B8, &qword_10023F050);
    sub_10018A46C(v3 + 16);

    v7 = sub_10017BF90;
  }

  else
  {

    v7 = sub_10017BBE4;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_10017BBE4()
{
  sub_100004194();
  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  sub_10018B454(v1);
  sub_100005040(*(v0 + 320));

  return sub_10017C0F8();
}

uint64_t sub_10017BC68()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;
  v3[59] = v0;

  if (v0)
  {
    sub_10018BACC();
    sub_10018A46C((v3 + 2));
    sub_100004E7C((v3 + 26), &qword_1002DF3B8, &qword_10023F050);
    v7 = sub_10000AA8C();

    return _swift_task_switch(v7);
  }

  else
  {
    sub_10018BACC();
    v8 = swift_task_alloc();
    v3[60] = v8;
    *v8 = v5;
    sub_10018B454(v8);
    sub_100005040(v3[40]);

    return sub_10017C0F8();
  }
}

uint64_t sub_10017BDE0()
{
  sub_100007F3C();
  v2 = *v1;
  sub_100004504();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 488) = v0;

  sub_10018A46C(v2 + 16);
  sub_100004E7C(v2 + 208, &qword_1002DF3B8, &qword_10023F050);
  if (v0)
  {
    v4 = sub_10017C080;
  }

  else
  {
    v4 = sub_10017BF24;
  }

  return _swift_task_switch(v4);
}

uint64_t sub_10017BF24()
{
  sub_100004194();

  sub_100003844();

  return v0();
}

uint64_t sub_10017BF90()
{
  sub_100007F3C();

  sub_100002E08();

  return v0();
}

uint64_t sub_10017C008()
{
  sub_100007F3C();

  sub_100002E08();

  return v0();
}

uint64_t sub_10017C080()
{
  sub_100007F3C();

  sub_100002E08();

  return v0();
}

uint64_t sub_10017C0F8()
{
  sub_100004194();
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  *(v1 + 128) = v3;
  *(v1 + 136) = v4;
  *(v1 + 232) = v5;
  *(v1 + 120) = v6;
  v7 = type metadata accessor for AccountIdentity();
  *(v1 + 160) = v7;
  sub_100003B78(v7);
  *(v1 + 168) = v8;
  *(v1 + 176) = sub_100003FA8();
  v9 = sub_10000AA8C();

  return _swift_task_switch(v9);
}

uint64_t sub_10017C1A8()
{
  sub_100004194();
  v1 = v0[19];
  type metadata accessor for TSDataSyncCoordinatorActor();
  v0[23] = *(v1 + 112);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_10017C248;

  return sub_10017AB18();
}

uint64_t sub_10017C248()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v5 + 200) = v0;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 233) = v3 & 1;
    v11 = sub_10018C414();

    return _swift_task_switch(v11);
  }
}

uint64_t sub_10017C388()
{
  sub_100007F3C();
  if (*(v0 + 233) != 1)
  {

    sub_100003844();
LABEL_7:

    return v3();
  }

  if (*(*(v0 + 144) + 8))
  {
    v1 = swift_task_alloc();
    *(v0 + 216) = v1;
    *v1 = v0;
    sub_10018B9E4(v1);
    sub_100005040(*(v0 + 120));

    return sub_10017C970();
  }

  v4 = *(v0 + 200);
  type metadata accessor for TSDataSyncConfigAccessActor(0);
  sub_100172FD8((v0 + 80));
  if (v4)
  {

    sub_100002E08();
    goto LABEL_7;
  }

  sub_10000C4FC((v0 + 80), *(v0 + 104));
  v5 = sub_10018C3DC();
  v6(v5);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 208) = v7;
  *v7 = v8;
  v7[1] = sub_10017C524;

  return sub_10019C724();
}

uint64_t sub_10017C524()
{
  sub_10000DB4C();
  v1 = *v0;
  v2 = *v0;
  sub_100004504();
  *v3 = v2;
  v4 = v1[22];
  v5 = v1[21];
  v6 = v1[20];
  v7 = *v0;
  *v3 = *v0;

  sub_100004E7C((v2 + 2), &qword_1002DF3B8, &qword_10023F050);
  (*(v5 + 8))(v4, v6);
  sub_100004118(v2 + 10);
  v8 = swift_task_alloc();
  v2[27] = v8;
  *v8 = v7;
  sub_10018B9E4(v8);
  sub_100005040(v1[15]);

  return sub_10017C970();
}

uint64_t sub_10017C710()
{
  sub_100007F3C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;

  if (v0)
  {

    sub_10018BB68();

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v3 + 224) = v9;
    *v9 = v5;
    v9[1] = sub_10017C874;

    return sub_10017E01C();
  }
}

uint64_t sub_10017C874()
{
  sub_100007F3C();
  sub_10018BD24();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  sub_10018BD60();

  sub_10018BB68();

  return v3();
}

uint64_t sub_10017C970()
{
  sub_100004194();
  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  *(v1 + 468) = v5;
  *(v1 + 176) = v6;
  v7 = type metadata accessor for MetricsEvent();
  *(v1 + 216) = v7;
  sub_100003B78(v7);
  *(v1 + 224) = v8;
  *(v1 + 232) = sub_100003FA8();
  v9 = type metadata accessor for FlagKeys();
  *(v1 + 240) = v9;
  sub_100003B78(v9);
  *(v1 + 248) = v10;
  *(v1 + 256) = sub_100003FA8();
  v11 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_1000030B8(v11);
  *(v1 + 264) = sub_100003FA8();
  v12 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v12);
  *(v1 + 272) = sub_100003FA8();
  v13 = type metadata accessor for Date();
  *(v1 + 280) = v13;
  sub_100003B78(v13);
  *(v1 + 288) = v14;
  *(v1 + 296) = sub_1000C70D8();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  v15 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v15);
  *(v1 + 320) = sub_100003FA8();
  v16 = type metadata accessor for Log();
  *(v1 + 328) = v16;
  sub_100003B78(v16);
  *(v1 + 336) = v17;
  *(v1 + 344) = sub_1000C70D8();
  *(v1 + 352) = swift_task_alloc();
  v18 = sub_10000AA8C();

  return _swift_task_switch(v18);
}

uint64_t sub_10017CB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 208);
  static Log.tsDataSync.getter();
  *(v3 + 360) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  *(v3 + 368) = *(v6 + 72);
  *(v3 + 464) = *(v7 + 80);
  sub_100013DAC();
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v8 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v3 + 16) = v4;
  *(v3 + 376) = v8;
  *(v3 + 40) = v8;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = *(v3 + 184);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v3 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0xD000000000000030;
  v12._object = 0x8000000100275470;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  if (v11)
  {
    v13 = *(v3 + 176);
    v14 = &type metadata for String;
    v15 = *(v3 + 184);
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v14 = 0;
    *(v3 + 64) = 0;
  }

  v16 = *(v3 + 336);
  *(v3 + 48) = v13;
  *(v3 + 56) = v15;
  *(v3 + 72) = v14;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v3 + 48, &unk_1002DFC10, &qword_10022E6D0);
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  *(v3 + 384) = *(v16 + 8);
  *(v3 + 392) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18 = sub_1000DBA50();
  v19(v18);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  *(v3 + 400) = qword_1003106E8;
  sub_100008F38(0xD000000000000017, 0x80000001002754B0);
  static Date.now.getter();
  *(v3 + 408) = sub_100188CF8();
  *(v3 + 416) = 0;
  sub_10018C344();
  sub_1000D3590();

  return _swift_task_switch(v20);
}

uint64_t sub_10017D258()
{
  sub_100007F3C();
  v1 = v0[52];
  sub_10017139C(v0[22], v0[23], v0[24], v0[25], v0[39], v0[34]);
  v0[53] = v1;
  if (v1)
  {

    v2 = sub_10000AA8C();

    return _swift_task_switch(v2);
  }

  else
  {

    swift_task_alloc();
    sub_10000DEA0();
    v0[54] = v3;
    *v3 = v4;
    v3[1] = sub_10017D354;
    v5 = v0[33];

    return sub_100188E9C(v5);
  }
}

uint64_t sub_10017D354()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;
  v3[55] = v0;

  if (v0)
  {
    v7 = sub_10018C344();

    return _swift_task_switch(v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[56] = v8;
    *v8 = v5;
    v8[1] = sub_10017D4BC;
    sub_100005040(v3[34]);

    return sub_10017F43C();
  }
}

uint64_t sub_10017D4BC()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_1000077D8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 456) = v0;

  sub_10018BD60();
  sub_10018BF74();

  return _swift_task_switch(v4);
}

uint64_t sub_10017D5D0()
{
  v1 = v0[36];
  v2 = v0[34];
  sub_1000067E4();
  sub_10018B234();
  sub_100004E7C(v2, &qword_1002DA970, &qword_1002318B0);
  (*(v1 + 8))(v0[39], v0[35]);
  sub_10018BF40(23, 0x80000001002754B0);

  sub_100003844();

  return v3();
}

uint64_t sub_10017D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(uint64_t), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_10018BA04();
  a33 = v39;
  a34 = v40;
  sub_10018B944();
  a32 = v35;
  v41 = sub_100010EB0();
  v38(v41);
  static Log.tsDataSync.getter();
  sub_100005170();
  sub_10018BDC0();
  *(v34 + 80) = v36;
  v42 = (v34 + 80);
  sub_10018BE4C(v43, xmmword_1002329D0);
  v44 = AMSLogKey();
  if (v44)
  {
    LOBYTE(v36) = v44;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C168();
  }

  else
  {
    sub_1000C72E0();
  }

  sub_10018B474();

  sub_100004118(v42);
  sub_10018B6E4();
  sub_10018C0CC();
  LogInterpolation.init(stringLiteral:)();
  sub_10018B628();
  v45 = a18;
  swift_getErrorValue();
  sub_10018BEEC();
  sub_10000B4FC();
  sub_10018BDD8();
  v46();
  sub_10018C150();
  sub_100004E7C((v42 + 4), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v47 = sub_10018B754();
  v48(v47);
  v49 = *(v37 + 184);
  static Date.now.getter();
  v50 = sub_100002AD0();
  v51(v50);
  FlagKeys.isEnabled.getter();
  v52 = sub_100004108();
  v53(v52, a16);
  if (v36)
  {
    static Date.now.getter();
    v54 = *(v35 + 280);
    if (v49)
    {
      sub_100002900();
      a19 = v55;
      a23 = &type metadata for String;
      sub_10018BD0C();
      a20 = v56 + 2;
      a21 = v54;
      sub_100006F54();
      sub_1001A8ED8(&a20, v57, v58);
      sub_10000B908();
      sub_10018B638();
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      sub_10018B434(a10);
      sub_100008A98();
      dispatch thunk of MetricsQueue.enqueue(event:)();

      v59 = sub_10018BF98();
      v60(v59);
      v61 = sub_10018B560();
      v62 = a16;
    }

    else
    {

      v61 = sub_10018B560();
      v62 = v54;
    }

    v45 = v38;
    (v38)(v61, v62);
  }

  else
  {

    sub_10018BFA8();
  }

  sub_10018B5B4();
  v63 = sub_10018BAF0();
  v45(v63);
  sub_10018BB04();

  sub_100003844();
  sub_10000F438();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, v38, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_10017DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(uint64_t), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t *a32, uint64_t a33, uint64_t a34)
{
  sub_10018BA04();
  a33 = v39;
  a34 = v40;
  sub_10018B944();
  a32 = v35;
  sub_100004E7C(v35[34], &qword_1002DA970, &qword_1002318B0);
  v41 = sub_100010EB0();
  v38(v41);
  static Log.tsDataSync.getter();
  sub_100005170();
  sub_10018BDC0();
  *(v34 + 80) = v36;
  v42 = (v34 + 80);
  sub_10018BE4C(v43, xmmword_1002329D0);
  v44 = AMSLogKey();
  if (v44)
  {
    LOBYTE(v36) = v44;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C168();
  }

  else
  {
    sub_1000C72E0();
  }

  sub_10018B474();

  sub_100004118(v42);
  sub_10018B6E4();
  sub_10018C0CC();
  LogInterpolation.init(stringLiteral:)();
  sub_10018B628();
  v45 = a18;
  swift_getErrorValue();
  sub_10018BEEC();
  sub_10000B4FC();
  sub_10018BDD8();
  v46();
  sub_10018C150();
  sub_100004E7C((v42 + 4), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v47 = sub_10018B754();
  v48(v47);
  v49 = *(v37 + 184);
  static Date.now.getter();
  v50 = sub_100002AD0();
  v51(v50);
  FlagKeys.isEnabled.getter();
  v52 = sub_100004108();
  v53(v52, a16);
  if (v36)
  {
    static Date.now.getter();
    v54 = v35[35];
    if (v49)
    {
      sub_100002900();
      a19 = v55;
      a23 = &type metadata for String;
      sub_10018BD0C();
      a20 = v56 + 2;
      a21 = v54;
      sub_100006F54();
      sub_1001A8ED8(&a20, v57, v58);
      sub_10000B908();
      sub_10018B638();
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      sub_10018B434(a10);
      sub_100008A98();
      dispatch thunk of MetricsQueue.enqueue(event:)();

      v59 = sub_10018BF98();
      v60(v59);
      v61 = sub_10018B560();
      v62 = a16;
    }

    else
    {

      v61 = sub_10018B560();
      v62 = v54;
    }

    v45 = v38;
    (v38)(v61, v62);
  }

  else
  {

    sub_10018BFA8();
  }

  sub_10018B5B4();
  v63 = sub_10018BAF0();
  v45(v63);
  sub_10018BB04();

  sub_100003844();
  sub_10000F438();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, v38, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_10017DD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(uint64_t), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  sub_10018BA04();
  a33 = v38;
  a34 = v39;
  sub_10018B944();
  a32 = v34;
  v40 = v34[34];
  sub_1000067E4();
  sub_10018B234();
  sub_100004E7C(v40, &qword_1002DA970, &qword_1002318B0);
  v41 = sub_100010EB0();
  v37(v41);
  static Log.tsDataSync.getter();
  sub_100005170();
  sub_10018BDC0();
  *(v40 + 80) = v35;
  v42 = (v40 + 80);
  sub_10018BE4C(v43, xmmword_1002329D0);
  v44 = AMSLogKey();
  if (v44)
  {
    LOBYTE(v35) = v44;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C168();
  }

  else
  {
    sub_1000C72E0();
  }

  sub_10018B474();

  sub_100004118(v42);
  sub_10018B6E4();
  sub_10018C0CC();
  LogInterpolation.init(stringLiteral:)();
  sub_10018B628();
  v45 = a18;
  swift_getErrorValue();
  sub_10018BEEC();
  sub_10000B4FC();
  sub_10018BDD8();
  v46();
  sub_10018C150();
  sub_100004E7C((v42 + 4), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v47 = sub_10018B754();
  v48(v47);
  v49 = *(v36 + 184);
  static Date.now.getter();
  v50 = sub_100002AD0();
  v51(v50);
  FlagKeys.isEnabled.getter();
  v52 = sub_100004108();
  v53(v52, a16);
  if (v35)
  {
    static Date.now.getter();
    v54 = v34[35];
    if (v49)
    {
      sub_100002900();
      a19 = v55;
      a23 = &type metadata for String;
      sub_10018BD0C();
      a20 = v56 + 2;
      a21 = v54;
      sub_100006F54();
      sub_1001A8ED8(&a20, v57, v58);
      sub_10000B908();
      sub_10018B638();
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      sub_10018B434(a10);
      sub_100008A98();
      dispatch thunk of MetricsQueue.enqueue(event:)();

      v59 = sub_10018BF98();
      v60(v59);
      v61 = sub_10018B560();
      v62 = a16;
    }

    else
    {

      v61 = sub_10018B560();
      v62 = v54;
    }

    v45 = v37;
    (v37)(v61, v62);
  }

  else
  {

    sub_10018BFA8();
  }

  sub_10018B5B4();
  v63 = sub_10018BAF0();
  v45(v63);
  sub_10018BB04();

  sub_100003844();
  sub_10000F438();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, v37, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_10017E01C()
{
  sub_100004194();
  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  *(v1 + 144) = v3;
  *(v1 + 428) = v4;
  v5 = type metadata accessor for MetricsEvent();
  *(v1 + 168) = v5;
  sub_100003B78(v5);
  *(v1 + 176) = v6;
  *(v1 + 184) = sub_100003FA8();
  v7 = type metadata accessor for FlagKeys();
  *(v1 + 192) = v7;
  sub_100003B78(v7);
  *(v1 + 200) = v8;
  *(v1 + 208) = sub_100003FA8();
  v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v9);
  *(v1 + 216) = sub_100003FA8();
  v10 = sub_100099DF4(&qword_1002DC208, &qword_100234830);
  sub_1000030B8(v10);
  *(v1 + 224) = sub_1000C70D8();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v1 + 248) = v11;
  sub_100003B78(v11);
  *(v1 + 256) = v12;
  *(v1 + 264) = sub_1000C70D8();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  v13 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_1000030B8(v13);
  *(v1 + 288) = sub_100003FA8();
  v14 = type metadata accessor for Log();
  *(v1 + 296) = v14;
  sub_100003B78(v14);
  *(v1 + 304) = v15;
  *(v1 + 312) = sub_1000C70D8();
  *(v1 + 320) = swift_task_alloc();
  v16 = sub_10000AA8C();

  return _swift_task_switch(v16);
}

uint64_t sub_10017E260()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = *(v0 + 160);
  static Log.tsDataSync.getter();
  *(v0 + 328) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v2 = type metadata accessor for LogInterpolation();
  sub_100003B78(v2);
  *(v0 + 336) = *(v3 + 72);
  *(v0 + 424) = *(v4 + 80);
  sub_100013DAC();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v5 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 16) = v1;
  *(v0 + 344) = v5;
  *(v0 + 40) = v5;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000C726C();
  }

  else
  {
    sub_1000033C0();
  }

  v8 = *(v0 + 320);
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  sub_10018BD48();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 16));
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v11 = *(v10 + 8);
  *(v0 + 352) = v11;
  *(v0 + 360) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  *(v0 + 368) = qword_1003106E8;
  sub_100008F38(0xD00000000000001DLL, 0x8000000100275410);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 376) = v12;
  *v12 = v13;
  v12[1] = sub_10017E4A8;
  sub_100003128();

  return sub_100188E9C(v14);
}

uint64_t sub_10017E4A8()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_1000077D8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 384) = v0;

  sub_10018BD60();
  sub_10018BF74();

  return _swift_task_switch(v4);
}

uint64_t sub_10017E5BC()
{
  sub_100004194();
  static Date.now.getter();
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 392) = v1;
  *v1 = v2;
  v1[1] = sub_10017E65C;

  return sub_10018398C();
}

uint64_t sub_10017E65C()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_1000077D8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 400) = v0;

  sub_10018BD60();
  sub_10018BF74();

  return _swift_task_switch(v4);
}

uint64_t sub_10017E770()
{
  sub_100007F3C();
  sub_10018AE78();
  v1 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  v2 = sub_100013DDC();
  if (sub_100004DFC(v2, v3, v1) == 1)
  {
    v4 = v0[31];
    sub_100004E7C(v0[29], &qword_1002DC208, &qword_100234830);
    sub_100007B78();
    sub_100002728(v5, v6, v7, v4);
  }

  else
  {
    sub_10018AE78();
    sub_10018BA6C();
    sub_10018B234();
  }

  sub_10018AE78();
  v8 = sub_100013DDC();
  if (sub_100004DFC(v8, v9, v1) == 1)
  {
    sub_100004E7C(v0[28], &qword_1002DC208, &qword_100234830);
  }

  else
  {
    sub_10018BA6C();
    sub_10018B234();
  }

  v10 = swift_task_alloc();
  v0[51] = v10;
  *v10 = v0;
  v10[1] = sub_10017E924;
  sub_100005040(v0[27]);

  return sub_10017F43C();
}

uint64_t sub_10017E924()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_1000077D8();
  *v4 = v3;
  v5 = *(v1 + 216);
  *v4 = *v2;
  *(v3 + 416) = v0;

  sub_100004E7C(v5, &qword_1002DA970, &qword_1002318B0);
  sub_10018BD60();
  sub_10018BF74();

  return _swift_task_switch(v6);
}

uint64_t sub_10017EA64()
{
  sub_100004E7C(*(v0 + 240), &qword_1002DC208, &qword_100234830);
  v1 = sub_100008780();
  v2(v1);
  sub_1000067E4();
  sub_10018B234();
  sub_10000DC58();
  sub_10018BF40(29, 0x8000000100275410);

  sub_100003844();

  return v3();
}

uint64_t sub_10017F43C()
{
  sub_100004194();
  *(v1 + 618) = v2;
  *(v1 + 496) = v3;
  *(v1 + 504) = v0;
  *(v1 + 480) = v4;
  *(v1 + 488) = v5;
  *(v1 + 617) = v6;
  *(v1 + 616) = v7;
  *(v1 + 464) = v8;
  *(v1 + 472) = v9;
  v10 = type metadata accessor for Date();
  *(v1 + 512) = v10;
  sub_100003B78(v10);
  *(v1 + 520) = v11;
  *(v1 + 528) = sub_100003FA8();
  v12 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v12);
  *(v1 + 536) = sub_1000C70D8();
  *(v1 + 544) = swift_task_alloc();
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v13);
  *(v1 + 552) = sub_100003FA8();
  v14 = type metadata accessor for Log();
  *(v1 + 560) = v14;
  sub_100003B78(v14);
  *(v1 + 568) = v15;
  *(v1 + 576) = sub_1000C70D8();
  *(v1 + 584) = swift_task_alloc();
  *(v1 + 592) = swift_task_alloc();
  v16 = sub_10000AA8C();

  return _swift_task_switch(v16);
}

uint64_t sub_10017FCD8()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_1000077D8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 608) = v0;

  sub_10018BD60();
  sub_10018BF74();

  return _swift_task_switch(v4);
}

uint64_t sub_10017FDEC()
{
  (*(v0[65] + 8))(v0[66], v0[64]);

  sub_100003844();

  return v1();
}

uint64_t sub_10017FEC8(uint64_t a1, uint64_t a2)
{
  sub_10018BDA0();
  (*(*(v2 + 520) + 8))(v3, *(v2 + 512));

  sub_100002E08();

  return v4();
}

uint64_t sub_10017FF90()
{
  sub_100004194();
  *(v1 + 312) = v2;
  *(v1 + 320) = v0;
  *(v1 + 69) = v3;
  *(v1 + 68) = v4;
  *(v1 + 296) = v5;
  *(v1 + 304) = v6;
  v7 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v7);
  *(v1 + 328) = sub_100003FA8();
  v8 = type metadata accessor for Date();
  *(v1 + 336) = v8;
  sub_100003B78(v8);
  *(v1 + 344) = v9;
  *(v1 + 352) = sub_100003FA8();
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v10);
  *(v1 + 360) = sub_100003FA8();
  v11 = type metadata accessor for Log();
  *(v1 + 368) = v11;
  sub_100003B78(v11);
  *(v1 + 376) = v12;
  *(v1 + 384) = sub_100003FA8();
  v13 = sub_10000AA8C();

  return _swift_task_switch(v13);
}

uint64_t sub_1001800D8()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 68);
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  *(v0 + 128) = 0u;
  v35 = sub_10012370C(v0 + 128, v2);
  v34 = v3;
  sub_100004E7C(v0 + 128, &qword_1002DB958, &qword_100232B60);
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  *(sub_10018BFC8() + 16) = xmmword_100232A10;
  v5 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 168) = v1;
  *(v0 + 192) = v5;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = *(v0 + 344);
  v31 = *(v0 + 368);
  v29 = *(v0 + 336);
  v30 = *(v0 + 384);
  v33 = *(v0 + 320);
  v32 = *(v0 + 69);
  v25 = *(v0 + 68);
  v27 = *(v0 + 296);
  v28 = *(v0 + 376);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 168));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 224) = &unk_1002BC148;
  *(v0 + 200) = v35;
  *(v0 + 208) = v34;

  static LogInterpolation.safe(_:)();
  sub_100004E7C(v0 + 200, &unk_1002DFC10, &qword_10022E6D0);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x8000000100275330;
  v9._countAndFlagsBits = 0xD000000000000014;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 256) = &type metadata for Bool;
  *(v0 + 232) = v25;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v0 + 232, &unk_1002DFC10, &qword_10022E6D0);
  v10._countAndFlagsBits = 0x3A7461202C29;
  v10._object = 0xE600000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  LogInterpolation.init(stringInterpolation:)();
  *(v0 + 288) = v29;
  v11 = sub_100007914((v0 + 264));
  v26 = *(v8 + 16);
  v26(v11, v27, v29);
  static LogInterpolation.safe(_:)();
  sub_100004E7C(v0 + 264, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v28 + 8))(v30, v31);
  static Date.now.getter();
  Date.distance(to:)();
  v13 = v12;
  v14 = sub_100008780();
  v15(v14);
  sub_100123858(v32, v0 + 72, v13);
  v16 = *(v0 + 120);
  v17 = *(v33 + 128);
  v18 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v18;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 64) = v16;
  (*(v17 + 8))(v35, v34, v0 + 16);

  *(v0 + 392) = sub_100188CF8();
  *(v0 + 400) = 0;
  v19 = *(v0 + 336);
  v26(*(v0 + 328), *(v0 + 296), v19);
  sub_10000B7B0();
  sub_100002728(v20, v21, v22, v19);
  v23 = sub_10000AA8C();

  return _swift_task_switch(v23);
}

uint64_t sub_100180598()
{
  sub_10000DB4C();
  v1 = v0[50];
  sub_100175DA4();
  v0[51] = v1;
  if (!v1)
  {
    sub_100004E7C(v0[41], &qword_1002DA970, &qword_1002318B0);

    sub_100003844();
    sub_10000AD14();

    __asm { BRAA            X1, X16 }
  }

  sub_100004E7C(v0[41], &qword_1002DA970, &qword_1002318B0);

  sub_10000AD14();

  return _swift_task_switch(v2);
}

uint64_t sub_1001806BC()
{
  sub_100007F3C();

  sub_100002E08();

  return v0();
}

uint64_t sub_100180740()
{
  sub_100004194();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[22] = v5;
  v6 = type metadata accessor for MetricsEvent();
  v1[27] = v6;
  sub_100003B78(v6);
  v1[28] = v7;
  v1[29] = sub_100003FA8();
  v8 = type metadata accessor for FlagKeys();
  v1[30] = v8;
  sub_100003B78(v8);
  v1[31] = v9;
  v1[32] = sub_100003FA8();
  v10 = type metadata accessor for Date();
  v1[33] = v10;
  sub_100003B78(v10);
  v1[34] = v11;
  v1[35] = sub_1000C70D8();
  v1[36] = swift_task_alloc();
  v12 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v12);
  v1[37] = sub_100003FA8();
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v13);
  v1[38] = sub_100003FA8();
  v14 = type metadata accessor for Log();
  v1[39] = v14;
  sub_100003B78(v14);
  v1[40] = v15;
  v1[41] = sub_1000C70D8();
  v1[42] = swift_task_alloc();
  v16 = sub_10000AA8C();

  return _swift_task_switch(v16);
}

uint64_t sub_100180934()
{
  sub_10018BA04();
  sub_10018B944();
  v1 = *(v0 + 208);
  static Log.tsDataSync.getter();
  *(v0 + 344) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v2 = type metadata accessor for LogInterpolation();
  sub_100003B78(v2);
  *(v0 + 352) = *(v3 + 72);
  *(v0 + 416) = *(v4 + 80);
  sub_100013DAC();
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v5 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 16) = v1;
  *(v0 + 360) = v5;
  *(v0 + 40) = v5;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C084();
  }

  else
  {
    sub_10018BD30();
  }

  v6 = *(v0 + 320);
  v25 = *(v0 + 312);
  v7 = *(v0 + 304);
  v8 = *(v0 + 176);
  v9 = *(v0 + 184);
  sub_10018BB5C();
  static LogInterpolation.prefix(_:_:)();

  sub_10018BF80((v0 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD000000000000016;
  v10._object = 0x8000000100275290;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  *(v0 + 72) = &type metadata for String;
  *(v0 + 48) = v8;
  *(v0 + 56) = v9;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v0 + 48, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14();
  LogInterpolation.init(stringInterpolation:)();
  sub_10018C3F0();
  Log.default(_:)();

  v11 = *(v6 + 8);
  *(v0 + 368) = v11;
  *(v0 + 376) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v25);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  v13 = *(v0 + 176);
  v12 = *(v0 + 184);
  *(v0 + 384) = qword_1003106E8;
  v14 = sub_10018BD54();
  sub_100008F38(v14, v15);
  if (v13 == 0xD000000000000028 && 0x8000000100273D30 == v12)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v0 + 420) = v17 & 1;
  *(v0 + 392) = sub_100188CF8();
  *(v0 + 400) = 0;
  sub_100007B78();
  sub_100002728(v18, v19, v20, v21);
  sub_10000AA8C();
  sub_10000F438();

  return _swift_task_switch(v22);
}

uint64_t sub_100180F78()
{
  sub_100007F3C();
  v1 = v0[50];
  sub_100175DA4();
  v0[51] = v1;
  sub_100004E7C(v0[37], &qword_1002DA970, &qword_1002318B0);

  sub_100003054();

  return _swift_task_switch(v2);
}

uint64_t sub_10018102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  sub_10018B92C();
  v12 = sub_10018BC64();
  sub_1001AC540(v12, v13, 2);

  sub_100003844();
  sub_100003128();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_1001813FC()
{
  sub_100004194();
  v1[54] = v2;
  v1[55] = v0;
  sub_10018C0D8();
  v1[56] = v3;
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v4);
  v1[57] = sub_100003FA8();
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v5);
  v1[58] = sub_100003FA8();
  v6 = type metadata accessor for Log();
  v1[59] = v6;
  sub_100003B78(v6);
  v1[60] = v7;
  v1[61] = sub_1000C70D8();
  v1[62] = swift_task_alloc();
  v8 = sub_10000AA8C();

  return _swift_task_switch(v8);
}

uint64_t sub_10018151C()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = *(v0 + 440);
  static Log.tsDataSync.getter();
  *(v0 + 504) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v2 = type metadata accessor for LogInterpolation();
  sub_100003B78(v2);
  *(v0 + 512) = *(v3 + 72);
  *(v0 + 608) = *(v4 + 80);
  sub_10018BCAC();
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v5 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 520) = v5;
  *(v0 + 296) = v5;
  *(v0 + 272) = v1;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = *(v0 + 496);
  v9 = *(v0 + 480);
  v22 = *(v0 + 472);
  static LogInterpolation.prefix(_:_:)();

  sub_10018BF80((v0 + 272));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD000000000000019;
  v10._object = 0x8000000100275230;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  *(v0 + 328) = type metadata accessor for AccountIdentity();
  sub_100007914((v0 + 304));
  sub_10000B7EC();
  (*(v11 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v0 + 304, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14();
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v12 = *(v9 + 8);
  *(v0 + 528) = v12;
  *(v0 + 536) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v22);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  v13 = *(v0 + 440);
  *(v0 + 544) = qword_1003106E8;
  v14 = sub_100003324();
  sub_100008F38(v14, v15);
  *(v0 + 552) = *(v13 + 112);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 560) = v16;
  *v16 = v17;
  sub_10000BFD4(v16);
  sub_100003128();

  return sub_10017AECC(v18, v19);
}

uint64_t sub_1001817E0()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;
  *(v3 + 568) = v0;

  if (v0)
  {
    v7 = sub_10018C344();

    return _swift_task_switch(v7);
  }

  else
  {
    swift_task_alloc();
    sub_10000DEA0();
    *(v3 + 576) = v8;
    *v8 = v9;
    v8[1] = sub_100181938;

    return sub_10019C724();
  }
}

uint64_t sub_100181938()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  v3 = sub_10000AA8C();

  return _swift_task_switch(v3);
}

uint64_t sub_100181A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  v15 = v14[71];
  v14[73] = sub_100188CF8();
  v14[74] = v15;
  if (v15)
  {
    sub_100004E7C((v14 + 26), &qword_1002DF3B8, &qword_10023F050);
    sub_10018A46C((v14 + 2));
    v16 = v14[63];
    v17 = v14[55];
    static Log.tsDataSync.getter();
    v18 = swift_allocObject();
    sub_10018BE8C(v18, xmmword_1002329D0);
    v19 = AMSLogKey();
    if (v19)
    {
      v16 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10018C5C8();
    }

    else
    {
      sub_10018C3D0();
    }

    v38 = v14[67];
    v25 = v14[66];
    sub_10018B96C();

    sub_100004118(v14 + 42);
    sub_10018BFB8();
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    sub_10018C294();
    sub_10000B7EC();
    (*(v26 + 16))();
    static LogInterpolation.sensitive(_:)();
    sub_100004E7C((v14 + 46), &unk_1002DFC10, &qword_10022E6D0);
    Log.error(_:)();

    v25(v16, v17);
    sub_10018BBD4();
    v27 = sub_100003324();
    sub_1001AC540(v27, v28, 2);

    sub_100003844();
    sub_100003BBC();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, a11, a12, a13, a14);
  }

  else
  {
    type metadata accessor for Date();
    v20 = sub_100013DDC();
    sub_100002728(v20, v21, 1, v22);
    sub_10000AA8C();
    sub_100003BBC();

    return _swift_task_switch(v23);
  }
}

uint64_t sub_100181C88()
{
  sub_100007F3C();
  v1 = v0[74];
  sub_1001760F0();
  v0[75] = v1;
  sub_100004E7C(v0[57], &qword_1002DA970, &qword_1002318B0);

  sub_100004E7C((v0 + 26), &qword_1002DF3B8, &qword_10023F050);
  sub_10018A46C((v0 + 2));
  sub_100003054();

  return _swift_task_switch(v2);
}

void sub_100181D64()
{
  sub_10000DB4C();
  sub_10018BBD4();
  v0 = sub_100003324();
  sub_1001AC540(v0, v1, 2);

  sub_100003844();
  sub_10000AD14();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100182110()
{
  sub_100004194();
  v1[48] = v2;
  v1[49] = v0;
  v1[46] = v3;
  v1[47] = v4;
  sub_10018C0D8();
  v1[50] = v5;
  v6 = type metadata accessor for MetricsEvent();
  v1[51] = v6;
  sub_100003B78(v6);
  v1[52] = v7;
  v1[53] = sub_100003FA8();
  v8 = type metadata accessor for FlagKeys();
  v1[54] = v8;
  sub_100003B78(v8);
  v1[55] = v9;
  v1[56] = sub_100003FA8();
  v10 = type metadata accessor for Date();
  v1[57] = v10;
  sub_100003B78(v10);
  v1[58] = v11;
  v1[59] = sub_1000C70D8();
  v1[60] = swift_task_alloc();
  v12 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_1000030B8(v12);
  v1[61] = sub_100003FA8();
  v13 = sub_100099DF4(&qword_1002DD528, &qword_100238250);
  v1[62] = v13;
  sub_1000030B8(v13);
  v1[63] = sub_1000C70D8();
  v1[64] = swift_task_alloc();
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v14);
  v1[65] = sub_100003FA8();
  v15 = type metadata accessor for Log();
  v1[66] = v15;
  sub_100003B78(v15);
  v1[67] = v16;
  v1[68] = sub_1000C70D8();
  v1[69] = swift_task_alloc();
  v17 = sub_10000AA8C();

  return _swift_task_switch(v17);
}

uint64_t sub_100182354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  v15 = *(v14 + 392);
  static Log.tsDataSync.getter();
  *(v14 + 560) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v16 = type metadata accessor for LogInterpolation();
  sub_100003B78(v16);
  *(v14 + 568) = *(v17 + 72);
  *(v14 + 704) = *(v18 + 80);
  sub_10018BCAC();
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v19 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v14 + 208) = v15;
  *(v14 + 576) = v19;
  *(v14 + 232) = v19;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C084();
  }

  else
  {
    sub_10018BD30();
  }

  v20 = *(v14 + 552);
  v21 = *(v14 + 536);
  v53 = *(v14 + 528);
  sub_100003F40(v14 + 208);

  sub_10018BF80((v14 + 208));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0xD000000000000011;
  v22._object = 0x80000001002751B0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  v23 = type metadata accessor for TSDataSyncExternalEvent(0);
  *(v14 + 264) = v23;
  sub_100007914((v14 + 240));
  sub_10018B17C();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v14 + 240, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14();
  LogInterpolation.init(stringInterpolation:)();
  sub_10018C538();

  v24 = *(v21 + 8);
  *(v14 + 584) = v24;
  *(v14 + 592) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v20, v53);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  v25 = *(v14 + 368);
  *(v14 + 600) = qword_1003106E8;
  sub_100008F38(0xD000000000000016, 0x80000001002751D0);
  v26 = *(v25 + *(v23 + 32));
  *(v14 + 608) = v26;
  v27 = *(v26 + 32);
  *(v14 + 708) = v27;
  v28 = -1;
  v29 = -1 << v27;
  if (-(-1 << v27) < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v26 + 64);

  if (v30)
  {
    v31 = 0;
LABEL_13:
    *(v14 + 624) = v31;
    *(v14 + 616) = v30;
    v33 = *(v14 + 504);
    v34 = *(v14 + 496);
    v35 = __clz(__rbit64(v30)) | (v31 << 6);
    v36 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    sub_1000030B8(v36);
    sub_100004D10();
    sub_10018B17C();
    v37 = *(*(v26 + 56) + 8 * v35);
    v38 = *(v34 + 48);
    sub_100006B88();
    sub_100008780();
    sub_10018B1D8();
    *(v33 + v38) = v37;

    swift_task_alloc();
    sub_10000DEA0();
    *(v14 + 632) = v39;
    *v39 = v40;
    sub_10018B8F0(v39);
    sub_100003BBC();

    return sub_100188E9C(v41);
  }

  else
  {
    v32 = 0;
    while (((63 - v29) >> 6) - 1 != v32)
    {
      v31 = v32 + 1;
      v30 = *(v26 + 8 * v32++ + 72);
      if (v30)
      {
        goto LABEL_13;
      }
    }

    v52 = *(v14 + 472);
    v54 = *(v14 + 448);
    v55 = *(v14 + 424);
    sub_10018BF40(22, 0x80000001002751D0);

    sub_100003844();
    sub_100003BBC();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, a12, a13, a14);
  }
}

uint64_t sub_100182794()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_1000077D8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 640) = v0;

  sub_10018BD60();
  sub_10018BF74();

  return _swift_task_switch(v4);
}

uint64_t sub_1001828A8()
{
  sub_100004194();
  v0[81] = *(v0[49] + 112);
  swift_task_alloc();
  sub_10000DEA0();
  v0[82] = v1;
  *v1 = v2;
  v3 = sub_10000BFD4(v1);

  return sub_10017AECC(v3, v4);
}

uint64_t sub_100182938()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v5 = *v1;
  sub_100004504();
  *v6 = v5;
  v3[83] = v0;

  if (v0)
  {
    v7 = sub_10018C344();

    return _swift_task_switch(v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[84] = v8;
    *v8 = v5;
    v8[1] = sub_100182A90;
    v9 = sub_100005040(v3[63]);

    return sub_100188C2C(v9, v10, v11);
  }
}

uint64_t sub_100182A90()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v5 + 680) = v3;
  *(v5 + 688) = v0;

  if (v0)
  {
    sub_10018A46C(v5 + 16);
  }

  v9 = sub_10018C408();

  return _swift_task_switch(v9);
}

uint64_t sub_100182BB0()
{
  sub_100007F3C();
  v1 = *(v0 + 688);
  sub_10018D3CC();
  *(v0 + 696) = v1;
  sub_10018A46C(v0 + 16);
  sub_100003054();

  return _swift_task_switch(v2);
}

uint64_t sub_100182C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  v15 = *(v14 + 504);

  sub_1000067E4();
  sub_10018B234();
  result = sub_100004E7C(v15, &qword_1002DD528, &qword_100238250);
  v17 = *(v14 + 624);
  v18 = (*(v14 + 616) - 1) & *(v14 + 616);
  if (v18)
  {
    v19 = *(v14 + 608);
LABEL_7:
    *(v14 + 624) = v17;
    *(v14 + 616) = v18;
    v21 = *(v14 + 504);
    v22 = *(v14 + 496);
    v23 = __clz(__rbit64(v18)) | (v17 << 6);
    v24 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    sub_1000030B8(v24);
    sub_100004D10();
    sub_10018B17C();
    v25 = *(*(v19 + 56) + 8 * v23);
    v26 = *(v22 + 48);
    sub_100006B88();
    sub_10018B1D8();
    *(v21 + v26) = v25;

    swift_task_alloc();
    sub_10000DEA0();
    *(v14 + 632) = v27;
    *v27 = v28;
    sub_10018B8F0(v27);
    sub_100003BBC();

    return sub_100188E9C(v29);
  }

  else
  {
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v20 >= (((1 << *(v14 + 708)) + 63) >> 6))
      {
        break;
      }

      v19 = *(v14 + 608);
      v18 = *(v19 + 8 * v20 + 64);
      ++v17;
      if (v18)
      {
        v17 = v20;
        goto LABEL_7;
      }
    }

    sub_100008428();
    v40 = *(v14 + 424);
    v41 = v31;
    sub_10018BF40(22, 0x80000001002751D0);

    sub_100003844();
    sub_100003BBC();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v40, v41, a12, a13, a14);
  }
}

uint64_t sub_10018398C()
{
  sub_100004194();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[27] = v5;
  v6 = sub_100099DF4(&qword_1002DC208, &qword_100234830);
  sub_1000030B8(v6);
  v1[32] = sub_1000C70D8();
  v1[33] = swift_task_alloc();
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v7);
  v1[34] = sub_1000C70D8();
  v1[35] = swift_task_alloc();
  v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v8);
  v1[36] = sub_100003FA8();
  v9 = type metadata accessor for AccountIdentity();
  v1[37] = v9;
  sub_100003B78(v9);
  v1[38] = v10;
  v1[39] = sub_1000C70D8();
  v1[40] = swift_task_alloc();
  v11 = type metadata accessor for Log();
  v1[41] = v11;
  sub_100003B78(v11);
  v1[42] = v12;
  v1[43] = sub_1000C70D8();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v13 = sub_10000AA8C();

  return _swift_task_switch(v13);
}

void sub_100183B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 248);
  static Log.tsDataSync.getter();
  *(v3 + 368) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  *(v3 + 376) = *(v6 + 72);
  *(v3 + 472) = *(v7 + 80);
  sub_100013DAC();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v8 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v3 + 56) = v4;
  *(v3 + 384) = v8;
  *(v3 + 80) = v8;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = *(v3 + 360);
  v13 = *(v3 + 328);
  v12 = *(v3 + 336);
  sub_1000DBA50();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v3 + 56));
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v14 = *(v12 + 8);
  *(v3 + 392) = v14;
  *(v3 + 400) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v13);
  sub_10009AD10();
  v16 = v15;
  *(v3 + 408) = v15;
  *(v3 + 416) = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_100007B78();
  sub_100002728(v17, v18, v19, v20);
  v21 = *(v16 + 16);
  *(v3 + 424) = v21;
  if (v21)
  {
    v22 = 0;
    v67 = (v3 + 16);
    while (1)
    {
      sub_10018C3BC(v22);
      if (v25)
      {
        __break(1u);
        return;
      }

      v26 = *(v3 + 320);
      v28 = *(v3 + 296);
      v27 = *(v3 + 304);
      v29 = *(v3 + 288);
      v30 = *(v3 + 224);
      sub_100007974(v24 + 40 * v23 + 32, v67);
      v31 = sub_10000C4FC(v67, *(v3 + 40));
      v32 = *(v27 + 16);
      v32(v26, v31, v28);
      sub_10000C4FC(v67, *(v3 + 40));
      sub_10009B8B0();
      v33 = sub_100123DD0(v26, v29, v30);
      sub_100004E7C(v29, &qword_1002DA970, &qword_1002318B0);
      v34 = sub_10018C460(*(v27 + 8));
      v35(v34);
      if ((v33 & 1) == 0)
      {
        break;
      }

      v36 = *(v3 + 384);
      sub_10018C3B0();
      v37 = *(v3 + 248);
      static Log.tsDataSync.getter();
      sub_10018C114();
      *(swift_allocObject() + 16) = xmmword_1002329F0;
      *(v3 + 176) = v36;
      *(v3 + 152) = v37;

      v38 = AMSLogKey();
      if (v38)
      {
        v39 = v38;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000C726C();
      }

      else
      {
        sub_1000033C0();
      }

      v66 = *(v3 + 392);
      v40 = *(v3 + 352);
      v65 = *(v3 + 328);
      sub_10018BD48();
      static LogInterpolation.prefix(_:_:)();

      sub_10018BF80((v3 + 152));
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      sub_10018BD0C();
      v42._countAndFlagsBits = v41 + 8;
      v42._object = 0x8000000100275190;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v42);
      v43 = *(v3 + 40);
      sub_10000C4FC(v67, v43);
      *(v3 + 208) = v43;
      sub_100007914((v3 + 184));
      sub_10000B7EC();
      sub_10018BD48();
      v44();
      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      sub_100004E7C(v3 + 184, &unk_1002DFC10, &qword_10022E6D0);
      v45._countAndFlagsBits = sub_10018C0CC();
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
      LogInterpolation.init(stringInterpolation:)();
      Log.default(_:)();

      v66(v40, v65);
      v46 = *(v3 + 424);
      v47 = *(v3 + 432) + 1;
      sub_100004118(v67);
      if (v47 == v46)
      {
        goto LABEL_12;
      }

      v22 = *(v3 + 432) + 1;
    }

    v52 = *(v3 + 312);
    v53 = *(v3 + 296);
    v54 = sub_10000C4FC(v67, *(v3 + 40));
    v32(v52, v54, v53);
    swift_task_alloc();
    sub_10000DEA0();
    *(v3 + 456) = v55;
    *v55 = v56;
    sub_10018B890(v55);

    sub_100184AF0();
  }

  else
  {
LABEL_12:
    v48 = *(v3 + 384);
    sub_10018C3B0();
    v49 = *(v3 + 248);

    static Log.tsDataSync.getter();
    sub_10018C114();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    *(v3 + 112) = v48;
    *(v3 + 88) = v49;

    v50 = AMSLogKey();
    if (v50)
    {
      v51 = v50;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v57 = *(v3 + 416);
    v58 = *(v3 + 256);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v3 + 88));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v59._countAndFlagsBits = sub_10018C120();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v59);
    sub_10018AE78();
    if (sub_100004DFC(v58, 1, v57) == 1)
    {
      sub_100004E7C(*(v3 + 256), &qword_1002DC208, &qword_100234830);
      *(v3 + 120) = 0u;
      *(v3 + 136) = 0u;
    }

    else
    {
      *(v3 + 144) = *(v3 + 416);
      v60 = sub_100007914((v3 + 120));
      sub_10000BBA8(v60);
    }

    v61 = *(v3 + 392);
    v62 = *(v3 + 344);
    v63 = *(v3 + 328);
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E7C(v3 + 120, &unk_1002DFC10, &qword_10022E6D0);
    sub_10018BE14();
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v61(v62, v63);

    sub_100003844();

    v64();
  }
}

uint64_t sub_1001842B8()
{
  sub_100007F3C();
  v2 = *v1;
  v3 = *v1;
  sub_100004504();
  *v4 = v3;
  *v4 = *v1;
  v3[58] = v0;

  (v2[55])(v3[39], v3[37]);
  if (v0)
  {
  }

  v5 = sub_10018C414();

  return _swift_task_switch(v5);
}

void sub_100184420()
{
  v1 = sub_100008780();
  sub_100004E7C(v1, v2, &qword_100234830);
  sub_1000114E8();
  while (1)
  {
    v3 = *(v0 + 424);
    v4 = *(v0 + 432) + 1;
    sub_100004118((v0 + 16));
    if (v4 == v3)
    {
      break;
    }

    sub_10018C3BC(*(v0 + 432) + 1);
    if (v7)
    {
      __break(1u);
      return;
    }

    v8 = *(v0 + 320);
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 224);
    sub_100007974(v6 + 40 * v5 + 32, v0 + 16);
    v13 = sub_10000C4FC((v0 + 16), *(v0 + 40));
    v14 = *(v10 + 16);
    v14(v8, v13, v9);
    sub_10000C4FC((v0 + 16), *(v0 + 40));
    sub_10009B8B0();
    v15 = sub_100123DD0(v8, v11, v12);
    sub_100004E7C(v11, &qword_1002DA970, &qword_1002318B0);
    v16 = sub_10018C460(*(v10 + 8));
    v17(v16);
    if ((v15 & 1) == 0)
    {
      v32 = *(v0 + 312);
      v33 = *(v0 + 296);
      v34 = sub_10000C4FC((v0 + 16), *(v0 + 40));
      v14(v32, v34, v33);
      swift_task_alloc();
      sub_10000DEA0();
      *(v0 + 456) = v35;
      *v35 = v36;
      sub_10018B890(v35);

      sub_100184AF0();
      return;
    }

    v18 = *(v0 + 384);
    sub_10018C3B0();
    v19 = *(v0 + 248);
    static Log.tsDataSync.getter();
    sub_10018C114();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    *(v0 + 176) = v18;
    *(v0 + 152) = v19;

    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v22 = *(v0 + 392);
    v23 = *(v0 + 352);
    v24 = *(v0 + 328);
    static LogInterpolation.prefix(_:_:)();

    sub_10018BF80((v0 + 152));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_10018BD0C();
    v26._countAndFlagsBits = v25 + 8;
    v26._object = 0x8000000100275190;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
    v27 = *(v0 + 40);
    sub_10000C4FC((v0 + 16), v27);
    *(v0 + 208) = v27;
    sub_100007914((v0 + 184));
    sub_10000B7EC();
    (*(v28 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E7C(v0 + 184, &unk_1002DFC10, &qword_10022E6D0);
    v29._countAndFlagsBits = sub_10018C0CC();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v22(v23, v24);
  }

  v30 = *(v0 + 384);
  sub_10018C3B0();
  v31 = *(v0 + 248);

  static Log.tsDataSync.getter();
  sub_10018C114();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  *(v0 + 112) = v30;
  *(v0 + 88) = v31;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  v37 = *(v0 + 416);
  v38 = *(v0 + 256);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 88));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v39._countAndFlagsBits = sub_10018C120();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v39);
  sub_10018AE78();
  if (sub_100004DFC(v38, 1, v37) == 1)
  {
    sub_100004E7C(*(v0 + 256), &qword_1002DC208, &qword_100234830);
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0u;
  }

  else
  {
    *(v0 + 144) = *(v0 + 416);
    v40 = sub_100007914((v0 + 120));
    sub_10000BBA8(v40);
  }

  v41 = *(v0 + 392);
  v42 = *(v0 + 344);
  v43 = *(v0 + 328);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v0 + 120, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14();
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v41(v42, v43);

  sub_100003844();

  v44();
}

uint64_t sub_100184A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v22 = v12[32];
  sub_100004E7C(v12[27], &qword_1002DC208, &qword_100234830);
  sub_100004118(v12 + 2);

  sub_100002E08();
  sub_100003128();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_100184AF0()
{
  sub_100004194();
  v1[88] = v0;
  v1[87] = v2;
  v1[86] = v3;
  v1[85] = v4;
  v1[84] = v5;
  v1[83] = v6;
  v1[82] = v7;
  v8 = type metadata accessor for MetricsEvent();
  v1[89] = v8;
  sub_100003B78(v8);
  v1[90] = v9;
  v1[91] = sub_100003FA8();
  v10 = type metadata accessor for FlagKeys();
  v1[92] = v10;
  sub_100003B78(v10);
  v1[93] = v11;
  v1[94] = sub_100003FA8();
  v12 = type metadata accessor for Date();
  v1[95] = v12;
  sub_100003B78(v12);
  v1[96] = v13;
  v1[97] = sub_1000C70D8();
  v1[98] = swift_task_alloc();
  v14 = sub_100099DF4(&qword_1002DC208, &qword_100234830);
  sub_1000030B8(v14);
  v1[99] = sub_1000C70D8();
  v1[100] = swift_task_alloc();
  v15 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v1[101] = v15;
  sub_1000030B8(v15);
  v1[102] = sub_100003FA8();
  v16 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v1[103] = v16;
  sub_100003B78(v16);
  v1[104] = v17;
  v1[105] = sub_1000C70D8();
  v1[106] = swift_task_alloc();
  v18 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v18);
  v1[107] = sub_1000C70D8();
  v1[108] = swift_task_alloc();
  v19 = type metadata accessor for Log();
  v1[109] = v19;
  sub_100003B78(v19);
  v1[110] = v20;
  v1[111] = sub_1000C70D8();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v21 = sub_10000AA8C();

  return _swift_task_switch(v21);
}

uint64_t sub_100184DAC()
{
  sub_100004194();
  v0[116] = *(v0[88] + 112);
  swift_task_alloc();
  sub_10000DEA0();
  v0[117] = v1;
  *v1 = v2;
  v1[1] = sub_100184E4C;

  return sub_10019C724();
}

uint64_t sub_100184E4C()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  v3 = sub_10000AA8C();

  return _swift_task_switch(v3);
}

uint64_t sub_100184F44()
{
  v1 = *(v0 + 704);
  sub_10018AE78();
  static Log.tsDataSync.getter();
  *(v0 + 944) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v2 = type metadata accessor for LogInterpolation();
  sub_100003B78(v2);
  *(v0 + 952) = *(v3 + 72);
  *(v0 + 140) = *(v4 + 80);
  sub_10018BCAC();
  v72 = xmmword_1002329F0;
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v5 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 208) = v1;
  v70 = v0 + 16;
  *(v0 + 960) = v5;
  *(v0 + 232) = v5;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = *(v0 + 920);
  v9 = *(v0 + 880);
  v74 = *(v0 + 872);
  v77 = *(v0 + 672);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 208));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD000000000000020;
  v10._object = 0x8000000100275050;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  v11 = type metadata accessor for AccountIdentity();
  *(v0 + 968) = v11;
  *(v0 + 264) = v11;
  sub_100007914((v0 + 240));
  sub_10000B7EC();
  v13 = *(v12 + 16);
  *(v0 + 976) = v13;
  *(v0 + 984) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v0 + 240, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14();
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v14 = *(v9 + 8);
  *(v0 + 992) = v14;
  *(v0 + 1000) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v74);
  v15 = *v77;
  *(v0 + 1008) = *v77;
  v16 = *(v15 + 32);
  *(v0 + 137) = v16;
  v17 = 1 << v16;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v15 + 56);
  v71 = "ets for account ";
  *(v0 + 204) = enum case for FlagKeys.TSDataSyncMetricsErrorEnhancements(_:);

  v21 = 0;
  if (v19)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return result;
    }

    if (v22 >= (((1 << *(v0 + 137)) + 63) >> 6))
    {
      break;
    }

    v19 = *(*(v0 + 1008) + 8 * v22 + 56);
    ++v21;
    if (v19)
    {
      v21 = v22;
      do
      {
LABEL_12:
        *(v0 + 1024) = v21;
        *(v0 + 1016) = v19;
        sub_10018B91C();
        sub_10018B8E0();
        sub_10000818C();
        sub_10018B17C();
        sub_1000077AC();
        static Log.tsDataSync.getter();
        v23 = swift_allocObject();
        sub_10018B670(v23, v24, v25, v26, v27, v28, v29, v30, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
        v31 = AMSLogKey();
        if (v31)
        {
          v32 = v31;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_1000C726C();
        }

        else
        {
          sub_1000033C0();
        }

        v33 = *(v0 + 912);
        v73 = *(v0 + 872);
        v75 = *(v0 + 992);
        v34 = *(v0 + 840);
        v35 = *(v0 + 824);
        sub_10018BD48();
        static LogInterpolation.prefix(_:_:)();

        sub_10018BF80((v0 + 272));
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v36._countAndFlagsBits = sub_10000DF94();
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
        *(v0 + 328) = v35;
        sub_100007914((v0 + 304));
        sub_10000818C();
        sub_10018B17C();
        LogInterpolation.StringInterpolation.appendInterpolation(_:)();
        sub_100004E7C(v0 + 304, &unk_1002DFC10, &qword_10022E6D0);
        sub_10018BE14();
        LogInterpolation.init(stringInterpolation:)();
        Log.default(_:)();

        v75(v33, v73);
        v37 = *(v34 + *(v35 + 24));
        *(v0 + 1032) = v37;
        v38 = *(v37 + 16);
        *(v0 + 1040) = v38;
        if (v38)
        {
          v51 = *(v0 + 840);
          v52 = *(v0 + 704);
          *(v0 + 138) = *(v51 + 16);
          *(v0 + 1048) = *(v51 + 24);
          *(v0 + 1056) = *(v51 + 32);
          *(v0 + 1064) = v52[24];
          v53 = v52[25];
          *(v0 + 1072) = v53;
          *(v0 + 1080) = v52[22];
          *(v0 + 1088) = v52[23];
          *(v0 + 1096) = *(v53 + 8);
          *(v0 + 1104) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x96B9000000000000;
          *(v0 + 1112) = 0;
          v55 = *(v37 + 48);
          v54 = *(v37 + 64);
          v56 = *(v37 + 32);
          *(v0 + 121) = *(v37 + 73);
          *(v0 + 96) = v55;
          *(v0 + 112) = v54;
          *(v0 + 80) = v56;
          sub_1000BA2CC(v0 + 80, v0 + 144);
          sub_10018C0E4();
          v57 = swift_task_alloc();
          v58 = sub_10018C108(v57);
          *v58 = v59;
          sub_100007DB8(v58);
          sub_1000D3590();

          __asm { BRAA            X8, X9 }
        }

        result = sub_10000C108();
        v21 = *(v0 + 1024);
        v19 = (*(v0 + 1016) - 1) & *(v0 + 1016);
      }

      while (v19);
      continue;
    }
  }

  v39 = *(v0 + 960);
  v40 = *(v0 + 704);
  sub_100004E7C(v70, &qword_1002DF3B8, &qword_10023F050);

  static Log.tsDataSync.getter();
  *(swift_allocObject() + 16) = v72;
  *(v0 + 584) = v39;
  *(v0 + 560) = v40;

  v41 = AMSLogKey();
  if (v41)
  {
    v42 = v41;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v43 = *(v0 + 792);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 560));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v44._countAndFlagsBits = sub_10000DF94();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
  sub_10018AE78();
  v45 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  if (sub_100004DFC(v43, 1, v45) == 1)
  {
    sub_100004E7C(*(v0 + 792), &qword_1002DC208, &qword_100234830);
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
  }

  else
  {
    *(v0 + 616) = v45;
    v46 = sub_100007914((v0 + 592));
    sub_10000BBA8(v46);
  }

  v47 = *(v0 + 992);
  v48 = *(v0 + 896);
  v49 = *(v0 + 872);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v0 + 592, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14();
  LogInterpolation.init(stringInterpolation:)();
  sub_10018C538();

  v47(v48, v49);

  sub_100003844();

  return v50();
}

uint64_t sub_10018584C()
{
  sub_10000DB4C();
  v3 = v2;
  v5 = v4;
  sub_1000030F8();
  v7 = v6;
  sub_1000077D8();
  *v8 = v7;
  v9 = *v1;
  sub_100004504();
  *v10 = v9;
  v7[141] = v0;

  if (v0)
  {
    sub_1000BA304((v7 + 10));
    sub_10018C414();
  }

  else
  {
    v7[142] = v3;
    v7[143] = v5;
  }

  sub_10000AD14();

  return _swift_task_switch(v11);
}

uint64_t sub_10018597C()
{
  v26 = *(v0 + 1136);
  v27 = *(v0 + 1144);
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 138);
  v29 = *(v0 + 960);
  v4 = *(v0 + 840);
  v5 = *(v0 + 816);
  v6 = *(v0 + 704);
  v7 = *v4;
  v8 = v4[1];
  (*(v0 + 976))(v5 + *(*(v0 + 808) + 32), *(v0 + 664), *(v0 + 968));
  *v5 = v7;
  *(v5 + 8) = v8;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v27;
  *(v5 + 48) = v26;

  static Log.tsDataSync.getter();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  *(v0 + 488) = v29;
  *(v0 + 464) = v6;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C084();
  }

  else
  {
    sub_10018BD30();
  }

  v30 = *(v0 + 992);
  v9 = *(v0 + 904);
  v28 = *(v0 + 872);
  v10 = *(v0 + 808);
  sub_100003F40(v0 + 464);

  sub_10018BF80((v0 + 464));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x80000001002750F0;
  v11._countAndFlagsBits = 0xD000000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 520) = &type metadata for TSDataSyncDatasetConfig;
  v12 = swift_allocObject();
  *(v0 + 496) = v12;
  v13 = *(v0 + 96);
  v12[1] = *(v0 + 80);
  v12[2] = v13;
  v12[3] = *(v0 + 112);
  *(v12 + 57) = *(v0 + 121);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10018BDCC();
  sub_100004E7C(v14, v15, v16);
  v17._countAndFlagsBits = 544106784;
  v17._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  *(v0 + 552) = v10;
  sub_100007914((v0 + 528));
  sub_100004D10();
  sub_10018B17C();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10018BDCC();
  sub_100004E7C(v18, v19, v20);
  sub_10018BE14();
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v30(v9, v28);
  v21 = swift_task_alloc();
  *(v0 + 1152) = v21;
  *v21 = v0;
  v21[1] = sub_100185C80;
  v22 = sub_100005040(*(v0 + 816));

  return sub_100188C2C(v22, v23, v24);
}

uint64_t sub_100185C80()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v5 + 1160) = v3;
  *(v5 + 1168) = v0;

  v9 = sub_10018C408();

  return _swift_task_switch(v9);
}

uint64_t sub_100185D94()
{
  sub_100007F3C();
  v1 = *(v0 + 1168);
  sub_10018D694();
  *(v0 + 1176) = v1;
  if (v1)
  {
    v2 = sub_100186F9C;
  }

  else
  {
    v2 = sub_100185E3C;
  }

  return _swift_task_switch(v2);
}

void sub_100185E3C()
{
  sub_10018C068();
  sub_10018B944();
  v2 = v0[82];

  sub_100003A24();
  sub_10018B234();
  v3 = &qword_100234830;
  sub_100004E7C(v2, &qword_1002DC208, &qword_100234830);
  sub_100008780();
  sub_1000114E8();
  sub_100008CC4();
  if (!v4)
  {
    sub_10018BCFC();
    goto LABEL_16;
  }

  sub_10018C474();
  while (1)
  {
    sub_10000C108();
    sub_10018B764();
    if (v4)
    {
      break;
    }

LABEL_11:
    sub_10018BBE4(v5);
    v29 = v10;
    sub_10018B91C();
    v11 = v0[88];
    sub_10018B8E0();
    sub_10000818C();
    sub_10018B17C();
    sub_1000077AC();
    static Log.tsDataSync.getter();
    sub_10018BB5C();
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_1002329F0;
    v0[37] = v29;
    v0[34] = v11;

    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10018C0B4();
    }

    else
    {
      sub_10018BD18();
    }

    v1 = v0[114];
    v27 = v0[109];
    v28 = v0[124];
    v2 = v0[103];
    static LogInterpolation.prefix(_:_:)();

    sub_10018BB28();
    v12._countAndFlagsBits = sub_10000DF94();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
    sub_10018C4D8();
    sub_10000818C();
    sub_10018B17C();
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E7C((v0 + 38), &unk_1002DFC10, &qword_10022E6D0);
    sub_10018BE14();
    sub_10018C4C0();
    sub_10018C580();

    v28(v1, v27);
    sub_10000F420();
    if (v13)
    {
      sub_1000032CC();
LABEL_16:
      sub_10000A318(v14);
      sub_10018C0E4();
      v15 = swift_task_alloc();
      v16 = sub_10018C108(v15);
      *v16 = v17;
      sub_100007DB8(v16);
      sub_10000F438();

      __asm { BRAA            X8, X9 }
    }
  }

  while (1)
  {
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    sub_10000A8A0();
    if (v6 == v7)
    {
      break;
    }

    sub_10018BABC();
    if (v9)
    {
      v5 = v8;
      goto LABEL_11;
    }
  }

  sub_10000EEFC();
  sub_100004E7C((v0 + 2), &qword_1002DF3B8, &qword_10023F050);

  static Log.tsDataSync.getter();
  *(sub_10018BF58() + 16) = xmmword_1002329F0;
  v0[73] = v1;
  v0[70] = v3;

  v20 = AMSLogKey();
  if (v20)
  {
    v3 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  sub_100005014();

  sub_10018BCC8();
  v21._countAndFlagsBits = sub_10000DF94();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  sub_10018C568();
  v22 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_100008B04(v22);
  if (v4)
  {
    sub_100004E7C(v3, &qword_1002DC208, &qword_100234830);
    sub_10018C454();
  }

  else
  {
    v23 = sub_10018C5F8();
    sub_10000BBA8(v23);
  }

  sub_100007418();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C((v0 + 74), &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14();
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v24 = sub_10018C420();
  v2(v24);

  sub_100003844();
  sub_10018BAA4();

  v25();
}

void sub_100186310()
{
  sub_10018C068();
  sub_10018B944();
  sub_10000495C(*(v0 + 1128));
  v3 = sub_10018BD88();
  sub_10018BB9C(v3, xmmword_1002329D0);
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  sub_10018B3F4();
  sub_10018B9BC();

  sub_10018BC18();
  sub_10018BC88();
  sub_10018BECC();
  sub_10000B7EC();
  sub_10018BDCC();
  v7();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C(v0 + 368, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018C3F0();
  Log.error(_:)();

  v8 = sub_10018C030();
  v9(v8);
  v10 = *(v2 + 184);
  static Date.now.getter();
  v11 = sub_100006338();
  v12(v11);
  FlagKeys.isEnabled.getter();
  v13 = sub_10018BBC0();
  v14(v13);
  if (v1)
  {
    static Date.now.getter();
    sub_10018BC74();
    if (v10)
    {
      sub_100008BFC();
      sub_10018B994();
      v16 = v15;
      sub_10018B698(&type metadata for String);
      sub_10000D454();
      sub_100003FA8();
      sub_10018B8C8();
      v17();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10018C2CC();
      sub_100013E54();

      sub_10018C368();
      sub_10000B908();
      sub_10018B7F8(v18, v19, v20, v21, v22, v23);

      v24 = *(v1 + 160);
      v3 = *(v1 + 168);
      sub_10018B5D8((v1 + 136));
      dispatch thunk of MetricsQueue.enqueue(event:)();

      v25 = sub_10018C000();
      v27 = v26(v25);
      v35 = sub_10018BBF4(v27, v28, v29, v30, v31, v32, v33, v34, v80, v81, v82, v83, v84, v85, v86, v87, v6);
      v16(v35);
      (v16)(v91, v24);
    }

    else
    {

      v38 = sub_10018BFF0();
      (v1)(v38);
      v39 = sub_100008780();
      (v1)(v39, v40);
    }
  }

  else
  {
    sub_10018BEAC();
    v36 = sub_100014108();
    v37(v36);
  }

  sub_100008CC4();
  if (!v41)
  {
    sub_10018BCFC();
    goto LABEL_24;
  }

  sub_10018C474();
  v90 = xmmword_1002329F0;
  while (1)
  {
    sub_10000C108();
    sub_10018B764();
    if (v41)
    {
      break;
    }

LABEL_19:
    sub_10018BBE4(v42);
    v47 = *(v0 + 140);
    sub_10018B91C();
    v3 = ((v47 + 32) & ~v47);
    sub_10018B8E0();
    sub_10000818C();
    sub_10018B17C();
    sub_1000077AC();
    static Log.tsDataSync.getter();
    sub_10018BB5C();
    v1 = swift_allocObject();
    sub_10018B670(v1, v48, v49, v50, v51, v52, v53, v54, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10018C0B4();
    }

    else
    {
      sub_10018BD18();
    }

    sub_10000BD3C();

    sub_10018BB28();
    v55._countAndFlagsBits = sub_10000DF94();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
    sub_10018C4D8();
    sub_10000818C();
    sub_10018B17C();
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E7C(v0 + 304, &unk_1002DFC10, &qword_10022E6D0);
    sub_10018BE14();
    sub_10018C4C0();
    sub_10018C580();

    v56 = sub_10018C010();
    v57(v56);
    sub_10000F420();
    if (v58)
    {
      sub_1000032CC();
LABEL_24:
      sub_10000A318(v59);
      sub_10018C0E4();
      v60 = swift_task_alloc();
      v61 = sub_10018C108(v60);
      *v61 = v62;
      sub_100007DB8(v61);
      sub_10000F438();

      __asm { BRAA            X8, X9 }
    }
  }

  while (1)
  {
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      return;
    }

    sub_10000A8A0();
    if (v43 == v44)
    {
      break;
    }

    sub_10018BABC();
    if (v46)
    {
      v42 = v45;
      goto LABEL_19;
    }
  }

  sub_10000EEFC();
  sub_100004E7C(v0 + 16, &qword_1002DF3B8, &qword_10023F050);

  static Log.tsDataSync.getter();
  v65 = sub_10018BF58();
  sub_10000ADA4(v65, v66, v67, v68, v69, v70, v71, v72, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
  v73 = AMSLogKey();
  if (v73)
  {
    v1 = v73;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  sub_100005014();

  sub_10018BCC8();
  v74._countAndFlagsBits = sub_10000DF94();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v74);
  sub_10018C568();
  v75 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_100008B04(v75);
  if (v41)
  {
    sub_100004E7C(v1, &qword_1002DC208, &qword_100234830);
    sub_10018C454();
  }

  else
  {
    v76 = sub_10018C5F8();
    sub_10000BBA8(v76);
  }

  sub_100007418();
  sub_10018C2E8();
  sub_100004E7C(v0 + 592, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14();
  sub_10018C278();
  sub_10018C25C();

  v77 = sub_10018C420();
  (v3)(v77);

  sub_100003844();
  sub_10018BAA4();

  v78();
}

void sub_100186950()
{
  sub_10018C068();
  sub_10018B944();
  sub_100003A24();
  sub_10018B234();
  sub_10000495C(*(v0 + 1168));
  v3 = sub_10018BD88();
  sub_10018BB9C(v3, xmmword_1002329D0);
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  sub_10018B3F4();
  sub_10018B9BC();

  sub_10018BC18();
  sub_10018BC88();
  sub_10018BECC();
  sub_10000B7EC();
  sub_10018BDCC();
  v7();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C(v0 + 368, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018C3F0();
  Log.error(_:)();

  v8 = sub_10018C030();
  v9(v8);
  v10 = *(v2 + 184);
  static Date.now.getter();
  v11 = sub_100006338();
  v12(v11);
  FlagKeys.isEnabled.getter();
  v13 = sub_10018BBC0();
  v14(v13);
  if (v1)
  {
    static Date.now.getter();
    sub_10018BC74();
    if (v10)
    {
      sub_100008BFC();
      sub_10018B994();
      v16 = v15;
      sub_10018B698(&type metadata for String);
      sub_10000D454();
      sub_100003FA8();
      sub_10018B8C8();
      v17();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10018C2CC();
      sub_100013E54();

      sub_10018C368();
      sub_10000B908();
      sub_10018B7F8(v18, v19, v20, v21, v22, v23);

      v24 = *(v1 + 160);
      v3 = *(v1 + 168);
      sub_10018B5D8((v1 + 136));
      dispatch thunk of MetricsQueue.enqueue(event:)();

      v25 = sub_10018C000();
      v27 = v26(v25);
      v35 = sub_10018BBF4(v27, v28, v29, v30, v31, v32, v33, v34, v80, v81, v82, v83, v84, v85, v86, v87, v6);
      v16(v35);
      (v16)(v91, v24);
    }

    else
    {

      v38 = sub_10018BFF0();
      (v1)(v38);
      v39 = sub_100008780();
      (v1)(v39, v40);
    }
  }

  else
  {
    sub_10018BEAC();
    v36 = sub_100014108();
    v37(v36);
  }

  sub_100008CC4();
  if (!v41)
  {
    sub_10018BCFC();
    goto LABEL_24;
  }

  sub_10018C474();
  v90 = xmmword_1002329F0;
  while (1)
  {
    sub_10000C108();
    sub_10018B764();
    if (v41)
    {
      break;
    }

LABEL_19:
    sub_10018BBE4(v42);
    v47 = *(v0 + 140);
    sub_10018B91C();
    v3 = ((v47 + 32) & ~v47);
    sub_10018B8E0();
    sub_10000818C();
    sub_10018B17C();
    sub_1000077AC();
    static Log.tsDataSync.getter();
    sub_10018BB5C();
    v1 = swift_allocObject();
    sub_10018B670(v1, v48, v49, v50, v51, v52, v53, v54, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10018C0B4();
    }

    else
    {
      sub_10018BD18();
    }

    sub_10000BD3C();

    sub_10018BB28();
    v55._countAndFlagsBits = sub_10000DF94();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
    sub_10018C4D8();
    sub_10000818C();
    sub_10018B17C();
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E7C(v0 + 304, &unk_1002DFC10, &qword_10022E6D0);
    sub_10018BE14();
    sub_10018C4C0();
    sub_10018C580();

    v56 = sub_10018C010();
    v57(v56);
    sub_10000F420();
    if (v58)
    {
      sub_1000032CC();
LABEL_24:
      sub_10000A318(v59);
      sub_10018C0E4();
      v60 = swift_task_alloc();
      v61 = sub_10018C108(v60);
      *v61 = v62;
      sub_100007DB8(v61);
      sub_10000F438();

      __asm { BRAA            X8, X9 }
    }
  }

  while (1)
  {
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      return;
    }

    sub_10000A8A0();
    if (v43 == v44)
    {
      break;
    }

    sub_10018BABC();
    if (v46)
    {
      v42 = v45;
      goto LABEL_19;
    }
  }

  sub_10000EEFC();
  sub_100004E7C(v0 + 16, &qword_1002DF3B8, &qword_10023F050);

  static Log.tsDataSync.getter();
  v65 = sub_10018BF58();
  sub_10000ADA4(v65, v66, v67, v68, v69, v70, v71, v72, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
  v73 = AMSLogKey();
  if (v73)
  {
    v1 = v73;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  sub_100005014();

  sub_10018BCC8();
  v74._countAndFlagsBits = sub_10000DF94();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v74);
  sub_10018C568();
  v75 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_100008B04(v75);
  if (v41)
  {
    sub_100004E7C(v1, &qword_1002DC208, &qword_100234830);
    sub_10018C454();
  }

  else
  {
    v76 = sub_10018C5F8();
    sub_10000BBA8(v76);
  }

  sub_100007418();
  sub_10018C2E8();
  sub_100004E7C(v0 + 592, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14();
  sub_10018C278();
  sub_10018C25C();

  v77 = sub_10018C420();
  (v3)(v77);

  sub_100003844();
  sub_10018BAA4();

  v78();
}

void sub_100186F9C()
{
  sub_10018C068();
  sub_10018B944();

  sub_100003A24();
  sub_10018B234();
  sub_10000495C(*(v0 + 1176));
  v3 = sub_10018BD88();
  sub_10018BB9C(v3, xmmword_1002329D0);
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  sub_10018B3F4();
  sub_10018B9BC();

  sub_10018BC18();
  sub_10018BC88();
  sub_10018BECC();
  sub_10000B7EC();
  sub_10018BDCC();
  v7();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C(v0 + 368, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018C3F0();
  Log.error(_:)();

  v8 = sub_10018C030();
  v9(v8);
  v10 = *(v2 + 184);
  static Date.now.getter();
  v11 = sub_100006338();
  v12(v11);
  FlagKeys.isEnabled.getter();
  v13 = sub_10018BBC0();
  v14(v13);
  if (v1)
  {
    static Date.now.getter();
    sub_10018BC74();
    if (v10)
    {
      sub_100008BFC();
      sub_10018B994();
      v16 = v15;
      sub_10018B698(&type metadata for String);
      sub_10000D454();
      sub_100003FA8();
      sub_10018B8C8();
      v17();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10018C2CC();
      sub_100013E54();

      sub_10018C368();
      sub_10000B908();
      sub_10018B7F8(v18, v19, v20, v21, v22, v23);

      v24 = *(v1 + 160);
      v3 = *(v1 + 168);
      sub_10018B5D8((v1 + 136));
      dispatch thunk of MetricsQueue.enqueue(event:)();

      v25 = sub_10018C000();
      v27 = v26(v25);
      v35 = sub_10018BBF4(v27, v28, v29, v30, v31, v32, v33, v34, v80, v81, v82, v83, v84, v85, v86, v87, v6);
      v16(v35);
      (v16)(v91, v24);
    }

    else
    {

      v38 = sub_10018BFF0();
      (v1)(v38);
      v39 = sub_100008780();
      (v1)(v39, v40);
    }
  }

  else
  {
    sub_10018BEAC();
    v36 = sub_100014108();
    v37(v36);
  }

  sub_100008CC4();
  if (!v41)
  {
    sub_10018BCFC();
    goto LABEL_24;
  }

  sub_10018C474();
  v90 = xmmword_1002329F0;
  while (1)
  {
    sub_10000C108();
    sub_10018B764();
    if (v41)
    {
      break;
    }

LABEL_19:
    sub_10018BBE4(v42);
    v47 = *(v0 + 140);
    sub_10018B91C();
    v3 = ((v47 + 32) & ~v47);
    sub_10018B8E0();
    sub_10000818C();
    sub_10018B17C();
    sub_1000077AC();
    static Log.tsDataSync.getter();
    sub_10018BB5C();
    v1 = swift_allocObject();
    sub_10018B670(v1, v48, v49, v50, v51, v52, v53, v54, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10018C0B4();
    }

    else
    {
      sub_10018BD18();
    }

    sub_10000BD3C();

    sub_10018BB28();
    v55._countAndFlagsBits = sub_10000DF94();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
    sub_10018C4D8();
    sub_10000818C();
    sub_10018B17C();
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E7C(v0 + 304, &unk_1002DFC10, &qword_10022E6D0);
    sub_10018BE14();
    sub_10018C4C0();
    sub_10018C580();

    v56 = sub_10018C010();
    v57(v56);
    sub_10000F420();
    if (v58)
    {
      sub_1000032CC();
LABEL_24:
      sub_10000A318(v59);
      sub_10018C0E4();
      v60 = swift_task_alloc();
      v61 = sub_10018C108(v60);
      *v61 = v62;
      sub_100007DB8(v61);
      sub_10000F438();

      __asm { BRAA            X8, X9 }
    }
  }

  while (1)
  {
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      return;
    }

    sub_10000A8A0();
    if (v43 == v44)
    {
      break;
    }

    sub_10018BABC();
    if (v46)
    {
      v42 = v45;
      goto LABEL_19;
    }
  }

  sub_10000EEFC();
  sub_100004E7C(v0 + 16, &qword_1002DF3B8, &qword_10023F050);

  static Log.tsDataSync.getter();
  v65 = sub_10018BF58();
  sub_10000ADA4(v65, v66, v67, v68, v69, v70, v71, v72, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
  v73 = AMSLogKey();
  if (v73)
  {
    v1 = v73;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  sub_100005014();

  sub_10018BCC8();
  v74._countAndFlagsBits = sub_10000DF94();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v74);
  sub_10018C568();
  v75 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_100008B04(v75);
  if (v41)
  {
    sub_100004E7C(v1, &qword_1002DC208, &qword_100234830);
    sub_10018C454();
  }

  else
  {
    v76 = sub_10018C5F8();
    sub_10000BBA8(v76);
  }

  sub_100007418();
  sub_10018C2E8();
  sub_100004E7C(v0 + 592, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14();
  sub_10018C278();
  sub_10018C25C();

  v77 = sub_10018C420();
  (v3)(v77);

  sub_100003844();
  sub_10018BAA4();

  v78();
}