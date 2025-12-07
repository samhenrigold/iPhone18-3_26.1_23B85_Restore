uint64_t sub_100090F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  sub_10001AE68((a1 + 56), *(a1 + 80));
  v6[2] = &v7;
  v6[3] = a2;
  v6[4] = a3;
  sub_1001E5114(sub_10009922C, v6);
  return v7;
}

uint64_t sub_100090F7C(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_10001AE68(a1, a1[3]);
  *a2 = sub_1000D37DC(a3, a4);

  return _objc_release_x1();
}

uint64_t sub_100090FDC(char a1, uint64_t a2, uint64_t a3)
{
  switch(a1)
  {
    case 1:
      v13 = 3;
      goto LABEL_10;
    case 2:
      v13 = 0;
LABEL_10:
      result = sub_10009065C(v13, a2, a3);
      break;
    case 3:
      result = sub_100090C88();
      break;
    default:
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v3 = sub_1001F6688();
      sub_10009951C(v3, qword_1002E6180);
      v4 = sub_1001F6668();
      v5 = sub_1001F7298();
      if (sub_100099534(v5))
      {
        sub_100099504();
        v6 = swift_slowAlloc();
        *v6 = 134217984;
        *(v6 + 4) = 1;
        sub_100099494();
        _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
        sub_100021754();
      }

      result = _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
      break;
  }

  return result;
}

uint64_t sub_1000910F8(__CFString **a1, unint64_t a2)
{
  v4 = v2;
  v7 = _swiftEmptyArrayStorage;
  v75 = _swiftEmptyArrayStorage;
  v76[0] = _swiftEmptyArrayStorage;
  sub_100099694();
  v64 = a1;
  v65 = a2;
  v66 = v76;
  v67 = &v75;
  sub_1001E5114(sub_1000991BC, v63);
  if (qword_1002AC510 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    sub_1000216F8();
    swift_once();
LABEL_2:
    v8 = sub_1001F6688();
    sub_100019C94(v8, qword_1002E6180);

    v9 = sub_1001F6668();
    sub_1001F7278();
    sub_1000998E0();
    if (os_log_type_enabled(v9, v3))
    {
      v10 = sub_10003A894();
      v11 = sub_10003A894();
      v70[0] = v11;
      *v10 = 134218498;
      sub_100037C40(v76, v69);
      *(v10 + 4) = sub_10001A07C();
      sub_100099984();
      v12 = sub_1000E4544(a1, a2, v70);
      sub_1000997B8(v12);
      sub_100037C40(&v75, v68);
      *(v10 + 24) = sub_10001A07C();
      _os_log_impl(&_mh_execute_header, v9, v3, "Will start renewing %ld active subscriptions for %s. %ld subscriptions expired and need to be caught up.", v10, 0x20u);
      sub_100019CCC(v11);
      sub_100021754();

      sub_100021754();
    }

    sub_100037C40(v76, v74);
    v13 = v76[0];
    v14 = sub_10013B560();
    if (!v14)
    {
      goto LABEL_12;
    }

    a1 = v14;
    if (v14 < 1)
    {
      break;
    }

    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        sub_1000999A8();
        v16 = sub_1001F7808();
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v15 = (v15 + 1);
      sub_10009531C(v16);
    }

    while (a1 != v15);

LABEL_12:
    sub_100037C40(&v75, v73);
    a2 = v75;
    if (!sub_10013B560())
    {
      goto LABEL_48;
    }

    v18 = sub_1001F6668();
    v19 = sub_1001F72B8();
    if (os_log_type_enabled(v18, v19))
    {
      sub_100099504();
      v20 = swift_slowAlloc();
      v21 = sub_10003A894();
      v70[0] = v21;
      *v20 = 136315138;
      type metadata accessor for Transaction();

      sub_1001F6F48();
      a1 = v4;

      v22 = sub_100099718();
      v25 = sub_1000E4544(v22, v23, v24);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Catching up %s subscriptions", v20, 0xCu);
      sub_100019CCC(v21);
      sub_100021754();

      sub_100099474();
    }

    v72 = v7;
    v71 = &_swiftEmptySetSingleton;
    v26 = sub_10013B560();
    v62 = (a2 & 0xC000000000000001);
    v27 = a2 & 0xFFFFFFFFFFFFFF8;

    v3 = 0;
    v61 = a2;
    while (v26 != v3)
    {
      if (v62)
      {
        v28 = sub_1001F7808();
      }

      else
      {
        if (v3 >= *(v27 + 16))
        {
          goto LABEL_51;
        }

        v28 = *(a2 + 8 * v3 + 32);
      }

      v35 = v28;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_50;
      }

      a1 = v4;
      sub_10009208C(v28, v29, v30, v31, v32, v33, v34);
      v37 = v36;
      v39 = v38;
      sub_1001F6F08();
      v40 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v40 >> 1)
      {
        sub_10005669C(v40);
        sub_1001F6F58();
      }

      sub_1001F6F98();
      v7 = v72;
      if (v37)
      {
        v41 = v39;
        v42 = sub_1000BFC24();
        v44 = v43;

        v45 = v44;
        a2 = v61;
        sub_1001D1564(v70, v42, v45);
      }

      else
      {
      }

      v4 = a1;
      ++v3;
    }

    a1 = v71;
    v46 = sub_1000183C4(&qword_1002AC7D0, &unk_1001FE650);
    v70[3] = v46;
    v70[4] = sub_1000991C8();
    v70[0] = v7;
    sub_10001AE68(v70, v46);
    sub_10001A07C();

    v72 = sub_1001F70C8();
    sub_100019CCC(v70);
    v47 = sub_10013B560();
    v3 = 0;
    a2 = v7 & 0xC000000000000001;
    while (v47 != v3)
    {
      sub_1001C19A8();
      if (a2)
      {
        v48 = sub_1001F7808();
      }

      else
      {
        v48 = *(v7 + 8 * v3 + 32);
      }

      v49 = v48;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_52;
      }

      v50 = sub_1000BFC24();
      sub_1001D1564(v70, v50, v51);

      ++v3;
    }

    v62 = a1;

    v7 = v72;
    a1 = (v72 + 56);
    v52 = 1 << *(v72 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & *(v72 + 56);
    v55 = (v52 + 63) >> 6;

    v56 = 0;
    v4 = &off_1002AC000;
    while (v54)
    {
LABEL_42:
      v58 = (*(v7 + 48) + ((v56 << 10) | (16 * __clz(__rbit64(v54)))));
      a2 = *v58;
      v3 = v58[1];
      v59 = qword_1002AC478;

      if (v59 != -1)
      {
        sub_10007B910();
        swift_once();
      }

      v54 &= v54 - 1;
      sub_100130A24(a2, v3);
    }

    while (1)
    {
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v57 >= v55)
      {

        if (qword_1002AC478 != -1)
        {
          goto LABEL_55;
        }

        goto LABEL_47;
      }

      v54 = a1[v57];
      ++v56;
      if (v54)
      {
        v56 = v57;
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  __break(1u);
LABEL_55:
  sub_10007B910();
  swift_once();
LABEL_47:
  sub_1000FC1F0(0, v7, 0xD000000000000020, 0x8000000100226790);

  sub_1000FC1F0(1, v62, 0xD000000000000020, 0x8000000100226790);

LABEL_48:
}

uint64_t sub_1000917E0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v30 = a5;
  v32 = sub_1001F6508();
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AE68(a1, a1[3]);
  sub_1000CBB7C(a2, a3, v12, v13, v14, v15, v16, v17, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  v19 = v18;
  result = sub_10013B560();
  if (result)
  {
    v21 = result;
    if (result >= 1)
    {
      v22 = 0;
      v31 = v19 & 0xC000000000000001;
      v23 = (v9 + 8);
      while (1)
      {
        if (v31)
        {
          v24 = sub_1001F7808();
        }

        else
        {
          v24 = *(v19 + 8 * v22 + 32);
        }

        v25 = v24;
        sub_1001F64E8();
        v26 = sub_1000C18DC();
        (*v23)(v11, v32);
        if (v26 & 1) != 0 || (v27 = sub_1000C1760(), (v27))
        {
          v25;
          sub_1001F6F08();
          if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1001F6F58();
          }
        }

        else
        {
          if ((sub_1000C2C60(v27) & 1) == 0)
          {
            goto LABEL_12;
          }

          v25;
          v28 = v30;
          sub_1001F6F08();
          if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1001F6F58();
          }
        }

        sub_1001F6F98();
LABEL_12:
        ++v22;

        if (v21 == v22)
        {
        }
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_100091A58(uint64_t a1)
{
  sub_100099694();
  v1 = sub_100099568();
  sub_1001E5114(v1, v2);
  return 0;
}

void sub_100091AE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v29 = a8;
  v15 = sub_1001F6508();
  v31 = *(v15 - 8);
  __chkstk_darwin(v15);
  v30 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  sub_10001AE68(a1, a1[3]);
  sub_1000D1C9C(a2, a3, a4, a5, a6, a7, 0, v20, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  if (v21)
  {
    v22 = v21;
    sub_1000BFDA8();
    sub_1001F6418();
    sub_1000990C8(&qword_1002AD110, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if (sub_1001F6A88())
    {
      sub_1000183C4(&qword_1002B2008, &unk_1002081F0);
      v23 = sub_1001F6A98();
      v24 = *(v31 + 8);
      v24(v19, v15);
      if (v23)
      {

LABEL_10:
        *v29 = 1;
        return;
      }
    }

    else
    {
      v24 = *(v31 + 8);
      v24(v19, v15);
    }

    sub_1000C5464(4);
    if (v25)
    {

      return;
    }

    v26 = v30;
    sub_1001F6418();
    if (sub_1001F6A88())
    {
      sub_1000183C4(&qword_1002B2008, &unk_1002081F0);
      v27 = sub_1001F6A98();

      v24(v26, v15);
      if ((v27 & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    v24(v26, v15);
  }
}

void sub_100091DC8()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v17 = 0;
  v16[2] = &v17;
  v16[3] = v2;
  v16[4] = v0;
  v16[5] = v6;
  v16[6] = v4;
  sub_100099694();
  sub_1001E5114(sub_100099180, v16);
  v8 = v17;
  if (v17)
  {
    v9 = sub_100099B14();
    __chkstk_darwin(v9);
    v15[2] = v3;
    v15[3] = v1;
    v15[4] = v7;
    v15[5] = v5;
    v15[6] = v8;
    v10 = v8;
    sub_1001E524C(sub_100099198, v15);
    sub_10009994C();
    sub_1000C1DE8(v11, v12);
    sub_1000C1DF0(0, 1);
    sub_100099978();
    sub_10008EA08(v13, v14);
  }

  sub_100037B00();
}

uint64_t sub_100091EDC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000CA54C();
  *a2 = v7;

  return _objc_release_x1();
}

uint64_t sub_100091F58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1001F6508();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AE68(a1, a1[3]);
  v14 = sub_1000C1A68();
  sub_1000BFDA8();
  sub_1001F6418();
  LOBYTE(a5) = sub_1001D0A84(a2, a3, a4, a5, v14, v13);
  (*(v11 + 8))(v13, v10);
  return a5 & 1;
}

void sub_10009208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100099620();
  v9 = v8;
  v10 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v11 = sub_100056658(v10);
  __chkstk_darwin(v11);
  sub_100099484();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = v115 - v16;
  v18 = sub_1001F6508();
  sub_10001A278();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100099484();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  sub_100099918();
  __chkstk_darwin(v26);
  v28 = v115 - v27;
  __chkstk_darwin(v29);
  v31 = v115 - v30;
  sub_1000C5464(4);
  if (v32)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v33 = sub_1001F6688();
    sub_100019C94(v33, qword_1002E6180);
    v34 = v9;
    v35 = sub_1001F6668();
    v36 = sub_1001F72A8();

    if (os_log_type_enabled(v35, v36))
    {
      sub_100099504();
      swift_slowAlloc();
      v37 = sub_100099598();
      v121 = v37;
      *v28 = 136315138;
      v38 = sub_1000BFC14();
      v40 = sub_100099AB4(v38, v39);

      *(v28 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v35, v36, "Can't catch up transaction for %s because it has no expiration date.", v28, 0xCu);
      sub_100019CCC(v37);
      sub_100099474();

      sub_100021754();
    }

    v34;
  }

  else
  {
    v116 = v14;
    v117 = v17;
    sub_1001F6418();
    v41 = sub_1000999A8();
    v42(v41);
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v43 = sub_1001F6688();
    v44 = sub_100019C94(v43, qword_1002E6180);
    v45 = *(v20 + 16);
    v119 = v31;
    v45(v7, v31, v18);
    v46 = v9;
    v115[1] = v44;
    v47 = sub_1001F6668();
    v48 = sub_1001F7278();

    if (os_log_type_enabled(v47, v48))
    {
      sub_1000996CC();
      v118 = v20;
      v115[0] = sub_100099894();
      v121 = v115[0];
      *v20 = 136315394;
      v49 = sub_1000BFC14();
      v51 = sub_100099AB4(v49, v50);

      *(v20 + 4) = v51;
      *(v20 + 12) = 2080;
      sub_100099550();
      sub_1000990C8(v52, v53, &protocol conformance descriptor for Date);
      sub_1001F7E28();
      sub_100099864();
      v118 += 8;
      v54 = sub_100099700();
      v120 = v55;
      (v55)(v54);
      v56 = sub_10009967C();
      sub_1000E4544(v56, v57, v58);
      sub_10009958C();

      *(v20 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v47, v48, "Catching up %s, latest transaction expired: %s", v20, 0x16u);
      swift_arrayDestroy();
      sub_100021754();

      v59 = v118;
      sub_100021754();
    }

    else
    {

      v59 = v20 + 8;
      v60 = sub_100099700();
      v120 = v61;
      (v61)(v60);
    }

    v62 = v117;
    sub_1000995D4();
    sub_100018460(v63, v64, v65, v18);
    v66 = sub_100099B14();
    __chkstk_darwin(v66);
    sub_100099808();
    v67 = v119;
    *(v68 - 32) = v46;
    *(v68 - 24) = v67;
    *(v68 - 16) = v62;
    sub_1001E5114(sub_1000990BC, v69);
    v70 = v46;
    for (i = 0; ; i |= v83)
    {
      v72 = COERCE_DOUBLE(sub_1000C5464(4));
      v74 = v73;

      if (v74)
      {
        break;
      }

      v75 = sub_1001F6438();
      if (v76 <= v72)
      {
        break;
      }

      v75 = sub_1000C2C60(v75);
      if ((v75 & 1) == 0)
      {
        break;
      }

      sub_100099B2C();
      sub_1000BFC24();
      v77 = sub_10007AB88();

      if (v77)
      {
        v84 = v70;
        sub_10008EF68(v84, v85, v86, v87, v88, v89, v90);

        sub_1000374B8(v62, &unk_1002B3450, &qword_100202EE0);
        v120(v119, v18);
        goto LABEL_30;
      }

      sub_1001F6418();
      sub_1000929DC(v70, 0, 0, v24, v62, v78, v79);
      v81 = v80;
      v83 = v82;
      v120(v24, v18);
      if (!v81)
      {
        v118 = v59;
        v91 = v116;
        sub_100098F84(v62, v116, &unk_1002B3450, &qword_100202EE0);
        v92 = sub_10001C990(v91, 1, v18);
        sub_1000374B8(v91, &unk_1002B3450, &qword_100202EE0);
        v93 = v70;
        v94 = sub_1001F6668();
        if (v92 == 1)
        {
          v95 = sub_1001F72A8();

          if (os_log_type_enabled(v94, v95))
          {
            sub_100099504();
            v96 = swift_slowAlloc();
            v97 = sub_10003A894();
            v121 = v97;
            *v96 = 136315138;
            v98 = sub_1000BFC14();
            v100 = sub_100099AB4(v98, v99);

            *(v96 + 4) = v100;
            sub_100099A74(&_mh_execute_header, v101, v102, "Failed to create renewal transaction when catching up %s");
            sub_100019CCC(v97);
            sub_100021754();

            v62 = v117;
            sub_100021754();
          }
        }

        else
        {
          v103 = sub_1001F7288();

          if (os_log_type_enabled(v94, v103))
          {
            sub_100099504();
            v104 = swift_slowAlloc();
            v105 = sub_10003A894();
            v121 = v105;
            *v104 = 136315138;
            v106 = sub_1000BFC14();
            v108 = sub_100099AB4(v106, v107);

            *(v104 + 4) = v108;
            sub_100099A74(&_mh_execute_header, v109, v110, "Auto-cancelling latest transaction for %s because it would overlap an existing transaction.");
            sub_100019CCC(v105);
            sub_100021754();

            v62 = v117;
            sub_100021754();
          }

          v111 = _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
          sub_1000C1ACC(v111, v112);
          sub_100099978();
          v75 = sub_10008EA08(v113, v114);
        }

        break;
      }

      v70 = v81;
    }

    if (sub_1000C2C60(v75))
    {
      sub_10009531C(v70);
    }

    sub_1000374B8(v62, &unk_1002B3450, &qword_100202EE0);
    v120(v119, v18);
  }

LABEL_30:
  sub_1000995E0();
}

uint64_t sub_100092868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  __chkstk_darwin(v7 - 8);
  v9 = v24 - v8;
  result = sub_1000C5388(15);
  if (v11)
  {
    v12 = result;
    v13 = v11;
    sub_10001AE68(a1, a1[3]);
    v14 = sub_1000BFC24();
    v16 = v15;
    v17 = sub_1000C1A68();
    sub_1000D1C9C(v12, v13, v14, v16, a3, v17, 0, v18, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11]);
    v20 = v19;

    if (v20)
    {
      v21 = v20;
      sub_1000BFDA8();

      sub_1001F6418();
      v22 = sub_1001F6508();
      v23 = 0;
    }

    else
    {
      v22 = sub_1001F6508();
      v23 = 1;
    }

    sub_100018460(v9, v23, 1, v22);
    return sub_100099110(v9, a4);
  }

  return result;
}

void sub_1000929DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100099620();
  v284 = v8;
  v10 = v9;
  v281 = v11;
  LODWORD(v294) = v12;
  v14 = v13;
  v277 = *v7;
  v276 = sub_1000183C4(&qword_1002B2000, &unk_1002087D0);
  sub_100023520();
  __chkstk_darwin(v15);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v16);
  sub_100099A14(&v266 - v17);
  v272 = sub_1000183C4(&qword_1002B2008, &unk_1002081F0);
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v18);
  sub_100099A14(&v266 - v19);
  v20 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v21 = sub_100056658(v20);
  __chkstk_darwin(v21);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v22);
  sub_100099A14(&v266 - v23);
  v285 = sub_1001F6578();
  sub_10001A278();
  v279 = v24;
  __chkstk_darwin(v25);
  sub_100023510();
  sub_100099A14(v27 - v26);
  v28 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  sub_100056658(v28);
  sub_10001E844();
  __chkstk_darwin(v29);
  v31 = &v266 - v30;
  v289 = sub_1001F6508();
  sub_10001A278();
  v291 = v32;
  __chkstk_darwin(v33);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v34);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v35);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v36);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v37);
  v39 = &v266 - v38;
  KeyPath = swift_getKeyPath();
  v41 = sub_100094D64(KeyPath);

  v42 = sub_1000BFC24();
  v44 = v43;
  v45 = v7[5];
  v293 = v7;
  sub_10001AE68(v7 + 2, v45);
  v295 = sub_1000795A8(v42, v44);
  v292 = v39;
  sub_1000C2CD8(v10, v39);
  sub_1000183C4(&qword_1002B2010, &qword_100208228);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100207F40;
  v47 = type metadata for String;
  *(v46 + 32) = 0;
  *(v46 + 64) = type metadata for String;
  *(v46 + 40) = 0x77656E6552;
  *(v46 + 48) = 0xE500000000000000;
  *(v46 + 72) = 2;
  *(v46 + 104) = type metadata for String;
  v280 = v42;
  *(v46 + 80) = v42;
  *(v46 + 88) = v44;
  *(v46 + 112) = 7;
  *(v46 + 144) = &type metadata for UInt;
  *(v46 + 120) = v41;
  *(v46 + 152) = 8;
  v287 = v44;

  v48 = sub_1000C5458(8);
  *(v46 + 184) = &type metadata for UInt;
  if (v49)
  {
    v48 = sub_1000C1A68();
  }

  *(v46 + 160) = v48;
  *(v46 + 192) = 11;
  sub_1001F6428();
  *(v46 + 224) = &type metadata for Double;
  *(v46 + 200) = v50;
  *(v46 + 232) = 9;
  v51 = sub_1000BFC14();
  *(v46 + 264) = type metadata for String;
  *(v46 + 240) = v51;
  *(v46 + 248) = v52;
  *(v46 + 272) = 12;
  v53 = COERCE_DOUBLE(sub_1000C5464(12));
  *(v46 + 304) = &type metadata for Double;
  if (v54)
  {
    v53 = sub_1000BFDA8();
  }

  *(v46 + 280) = v53;
  *(v46 + 312) = 13;
  v55 = sub_1000C2550();
  *(v46 + 344) = &type metadata for Int;
  *(v46 + 320) = v55;
  *(v46 + 352) = 14;
  sub_10009992C();
  v198 = (v57 & 1) == 0;
  v58 = 3;
  if (v198)
  {
    v58 = 1;
  }

  *(v46 + 384) = v56;
  *(v46 + 360) = v58;
  *(v46 + 392) = 16;
  v59 = sub_1000C257C();
  v60 = 0xEA0000000000656CLL;
  v61 = 0x62616D75736E6F43;
  v296 = v14;
  switch(v59)
  {
    case 1:
      sub_1000999EC();
      sub_100099A00();
      break;
    case 2:
      sub_100099818();
      v61 = v62 | 2;
      break;
    case 3:
      v61 = 0xD000000000000015;
      v60 = 0x8000000100221B90;
      break;
    default:
      break;
  }

  *(v46 + 424) = type metadata for String;
  *(v46 + 400) = v61;
  *(v46 + 408) = v60;
  *(v46 + 432) = 17;
  *(v46 + 464) = &type metadata for Bool;
  *(v46 + 440) = 0;
  *(v46 + 472) = 20;
  sub_100099840();
  sub_10001AE68(v41 + 2, v41[5]);
  sub_1000792D8(v301);
  v63 = v301[0];
  v64 = v301[1];

  sub_10001C7E4(v301);
  *(v46 + 504) = type metadata for String;
  *(v46 + 480) = v63;
  *(v46 + 488) = v64;
  *(v46 + 512) = 26;
  v65 = v296;
  v66 = sub_1000C2D8C();
  v67 = 3157553;
  if (v66)
  {
    v67 = 3157554;
  }

  *(v46 + 544) = type metadata for String;
  *(v46 + 520) = v67;
  *(v46 + 528) = 0xE300000000000000;
  sub_100098F08();
  v300 = sub_1001F69B8();
  sub_10009992C();
  if (v68)
  {
    v69 = sub_1000C5458(25);
    if (v70)
    {
      v69 = 0;
      v71 = 0;
      *(&v302 + 1) = 0;
      *&v303 = 0;
    }

    else
    {
      v71 = &type metadata for UInt;
    }

    v41 = v293;
    v74 = v285;
    *&v302 = v69;
    *(&v303 + 1) = v71;
    v75 = sub_100099688();
    sub_100145028(v75, 25);
  }

  else
  {
    v72 = swift_getKeyPath();
    sub_100094D64(v72);
    sub_10009958C();
    v65 = v296;

    *(&v303 + 1) = &type metadata for UInt;
    *&v302 = v41;
    v73 = sub_100099688();
    sub_100145028(v73, 25);
    v74 = v285;
  }

  sub_1000C2DBC(v31);
  if (sub_10001C990(v31, 1, v74))
  {
    sub_1000374B8(v31, &qword_1002AFA30, &unk_10020FA10);
  }

  else
  {
    v76 = v279;
    v77 = v278;
    (*(v279 + 16))(v278, v31, v74);
    sub_1000374B8(v31, &qword_1002AFA30, &unk_10020FA10);
    sub_1001F6528();
    sub_100099864();
    (*(v76 + 8))(v77, v74);
    *(&v303 + 1) = type metadata for String;
    *&v302 = v77;
    *(&v302 + 1) = v65;
    v65 = v296;
    v78 = sub_100099688();
    sub_100145028(v78, 22);
  }

  sub_10009990C();
  v79 = &v65[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID];
  v80 = *&v65[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID + 8];
  v285 = v79;

  v81 = sub_10009967C();
  v83 = sub_1000EE5B8(v81, v82);

  if (v83)
  {

    sub_1001E84A8();
    sub_100099864();
    v85 = v84;

    type metadata accessor for Decimal(0);
    *(&v303 + 1) = v86;
    *&v302 = v83;
    *(&v302 + 1) = v80;
    LODWORD(v303) = v85;
    v87 = sub_100099688();
    sub_100145028(v87, 21);
  }

  v88 = v288;
  v89 = v296;
  sub_1000C1AC4(v288);
  if (sub_10001C990(v88, 1, type metadata for String))
  {
    sub_1000374B8(v88, &unk_1002B3450, &qword_100202EE0);
    v90 = 0;
    *(&v302 + 1) = 0;
    *&v303 = 0;
    v91 = 0;
  }

  else
  {
    v92 = v291;
    v93 = v282;
    v94 = sub_10009967C();
    v95(v94);
    sub_1000374B8(v88, &unk_1002B3450, &qword_100202EE0);
    sub_1001F6428();
    v91 = v96;
    (*(v92 + 8))(v93, type metadata for String);
    v90 = &type metadata for Double;
  }

  v97 = v290;
  *(&v303 + 1) = v90;
  *&v302 = v91;
  v98 = sub_100099688();
  sub_100145028(v98, 33);
  v99 = sub_1000C2E3C();
  if (v99)
  {
    v100 = v99;
    v101 = v99[2];
    if (v101)
    {
      *&v308[0] = _swiftEmptyArrayStorage;
      sub_1000375CC(0, v101, 0);
      v88 = (v100 + 8);
      v102 = *&v308[0];
      v89 = 0xE600000000000000;
      do
      {
        v104 = *(v88 - 2);
        v103 = *(v88 - 1);
        v105 = *v88;
        v88 += 40;
        switch(v105)
        {
          case 1:
            *&v302 = 0x3A636F686461;
            *(&v302 + 1) = 0xE600000000000000;
            v128 = sub_10009944C();
            sub_10008A298(v128, v129, v130, v131, 1u);
            v316._countAndFlagsBits = sub_1000994F8();
            sub_1001F6CA8(v316);
            sub_1000998B0();
            v317._countAndFlagsBits = v104;
            v317._object = v103;
            sub_1001F6CA8(v317);
            v110 = sub_10009944C();
            v114 = 1;
            break;
          case 2:
            *&v302 = 0x3A65646F63;
            *(&v302 + 1) = 0xE500000000000000;
            v119 = sub_10009944C();
            sub_10008A298(v119, v120, v121, v122, 2u);
            v312._countAndFlagsBits = sub_1000994F8();
            sub_1001F6CA8(v312);
            sub_1000998B0();
            v313._countAndFlagsBits = v104;
            v313._object = v103;
            sub_1001F6CA8(v313);
            v110 = sub_10009944C();
            v114 = 2;
            break;
          case 3:
            sub_1000999B4();
            *&v302 = v123;
            *(&v302 + 1) = 0xE800000000000000;
            v124 = sub_10009944C();
            sub_10008A298(v124, v125, v126, v127, 3u);
            v314._countAndFlagsBits = sub_1000994F8();
            sub_1001F6CA8(v314);
            sub_1000998B0();
            v315._countAndFlagsBits = v104;
            v315._object = v103;
            sub_1001F6CA8(v315);
            v110 = sub_10009944C();
            v114 = 3;
            break;
          case 4:
            *&v302 = 979661939;
            *(&v302 + 1) = 0xE400000000000000;
            v115 = sub_10009944C();
            sub_10008A298(v115, v116, v117, v118, 4u);
            v311._countAndFlagsBits = sub_1000994F8();
            sub_1001F6CA8(v311);
            v110 = sub_10009944C();
            v114 = 4;
            break;
          default:
            *&v302 = 0x3A6F72746E69;
            *(&v302 + 1) = 0xE600000000000000;
            v106 = sub_10009944C();
            sub_10008A298(v106, v107, v108, v109, 0);
            v310._countAndFlagsBits = sub_1000994F8();
            sub_1001F6CA8(v310);
            v110 = sub_10009944C();
            v114 = 0;
            break;
        }

        sub_100099050(v110, v111, v112, v113, v114);
        v41 = *(&v302 + 1);
        v47 = v302;
        *&v308[0] = v102;
        v46 = v102[2];
        v132 = v102[3];
        if (v46 >= v132 >> 1)
        {
          v134 = sub_10005669C(v132);
          sub_1000375CC(v134, v46 + 1, 1);
          v102 = *&v308[0];
        }

        v102[2] = v46 + 1;
        v133 = &v102[2 * v46];
        v133[4] = v47;
        v133[5] = v41;
        --v101;
      }

      while (v101);

      sub_100099828();
      sub_100099840();
      sub_10009990C();
      v97 = v290;
    }

    else
    {

      v102 = _swiftEmptyArrayStorage;
    }

    *(&v303 + 1) = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
    *&v302 = v102;
  }

  else
  {
    v302 = 0u;
    v303 = 0u;
  }

  sub_1000999E0();
  v135 = sub_100099688();
  sub_100145028(v135, 19);
  v136 = sub_1000C5388(15);
  if (v137)
  {
    v138 = type metadata for String;
  }

  else
  {
    v136 = 0;
    v138 = 0;
    *&v303 = 0;
  }

  *&v302 = v136;
  *(&v302 + 1) = v137;
  *(&v303 + 1) = v138;
  v139 = sub_100099688();
  sub_100145028(v139, 15);
  sub_10009992C();
  if (v140)
  {
LABEL_48:

    v141 = sub_10009967C();
    v142 = v295;
    sub_1000EE5B8(v141, v143);
    sub_10009958C();

    if (v142)
    {
      v144 = *(v142 + 176);
      v145 = *(v142 + 184);

      sub_10009987C();
    }

    else
    {
      sub_10009987C();
      v144 = 0;
      v145 = 7;
    }

    sub_100099828();
    goto LABEL_91;
  }

  sub_1000C3010(&v302);
  v146 = v306;
  if (!v306)
  {
    if ((v281 & 1) == 0)
    {
      sub_10009987C();
      v144 = 0;
      v145 = 7;
      goto LABEL_91;
    }

    goto LABEL_48;
  }

  v89 = v304;
  v147 = v305;
  v148 = v307;
  v270 = v302;
  v308[0] = v302;
  v271 = v303;
  v308[1] = v303;
  v288 = *(&v303 + 1);
  v309 = v304;
  sub_1000946F0(v306, v305);
  v278 = v149;
  LODWORD(v279) = v150;
  v151 = *(v146 + 88);
  sub_1000994B8(*(v146 + 80));
  *(&v298 + 1) = v151;

  v152 = sub_100099574();
  sub_100145028(v152, 9);
  sub_1001E84A8();
  sub_100099864();
  v154 = v153;
  type metadata accessor for Decimal(0);
  v267 = v155;
  *(&v299 + 1) = v155;
  *&v298 = v146;
  *(&v298 + 1) = v88;
  v156 = v148;
  LODWORD(v299) = v154;
  v157 = sub_100099574();
  sub_100145028(v157, 21);
  v158 = *(v148 + 16);
  if (v158)
  {
    v269 = v89;
    v277 = v147;
    v297 = _swiftEmptyArrayStorage;
    sub_1000375CC(0, v158, 0);
    v268 = v156;
    v159 = (v156 + 64);
    v160 = v297;
    do
    {
      v161 = *v159;
      v159 += 40;
      switch(v161)
      {
        case 1:
          sub_100099580(0x3A636F686461);
          sub_10009984C(0xE600000000000000);
          v184 = sub_100099460();
          sub_10008A298(v184, v185, v186, v187, 1u);
          v324._countAndFlagsBits = sub_1000994EC();
          sub_1001F6CA8(v324);
          sub_1000998B0();
          v325._countAndFlagsBits = sub_100099718();
          sub_1001F6CA8(v325);
          v166 = sub_100099460();
          v170 = 1;
          break;
        case 2:
          sub_100099580(0x3A65646F63);
          sub_10009984C(0xE500000000000000);
          v175 = sub_100099460();
          sub_10008A298(v175, v176, v177, v178, 2u);
          v320._countAndFlagsBits = sub_1000994EC();
          sub_1001F6CA8(v320);
          sub_1000998B0();
          v321._countAndFlagsBits = sub_100099718();
          sub_1001F6CA8(v321);
          v166 = sub_100099460();
          v170 = 2;
          break;
        case 3:
          sub_1000999B4();
          sub_100099580(v179);
          sub_10009984C(0xE800000000000000);
          v180 = sub_100099460();
          sub_10008A298(v180, v181, v182, v183, 3u);
          v322._countAndFlagsBits = sub_1000994EC();
          sub_1001F6CA8(v322);
          sub_1000998B0();
          v323._countAndFlagsBits = sub_100099718();
          sub_1001F6CA8(v323);
          v166 = sub_100099460();
          v170 = 3;
          break;
        case 4:
          sub_100099580(979661939);
          *(&v298 + 1) = 0xE400000000000000;
          v171 = sub_100099460();
          sub_10008A298(v171, v172, v173, v174, 4u);
          v319._countAndFlagsBits = sub_1000994EC();
          sub_1001F6CA8(v319);
          v166 = sub_100099460();
          v170 = 4;
          break;
        default:
          sub_100099580(0x3A6F72746E69);
          sub_10009984C(0xE600000000000000);
          v162 = sub_100099460();
          sub_10008A298(v162, v163, v164, v165, 0);
          v318._countAndFlagsBits = sub_1000994EC();
          sub_1001F6CA8(v318);
          v166 = sub_100099460();
          v170 = 0;
          break;
      }

      sub_100099050(v166, v167, v168, v169, v170);
      v41 = *(&v298 + 1);
      v47 = v298;
      v297 = v160;
      v46 = v160[2];
      v188 = v160[3];
      if (v46 >= v188 >> 1)
      {
        v190 = sub_10005669C(v188);
        sub_1000375CC(v190, v46 + 1, 1);
        v160 = v297;
      }

      v160[2] = v46 + 1;
      v189 = &v160[2 * v46];
      v189[4] = v47;
      v189[5] = v41;
      --v158;
    }

    while (v158);

    sub_100099840();
    sub_10009990C();
    sub_1000999E0();
    v147 = v277;
    v89 = v269;
  }

  else
  {

    v160 = _swiftEmptyArrayStorage;
  }

  *(&v299 + 1) = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  *&v298 = v160;
  v191 = sub_100099574();
  sub_100145028(v191, 19);
  v97 = v290;
  if (v147)
  {

    sub_1000C5C28();
    sub_100099864();
    sub_10009963C();
    sub_1000997E8(type metadata for String);
    *(v192 - 256) = v308;
    *(&v298 + 1) = v160;
    v193 = sub_100099574();
    sub_100145028(v193, 18);
    v194 = 0xE400000000000000;
    v195 = 1701736302;
    switch(*(v147 + 57))
    {
      case 1:
        v195 = 1701147238;
        break;
      case 2:
        v195 = 0x756F597341796170;
        v194 = 0xEA00000000006F47;
        break;
      case 3:
        v195 = 0x6F72467055796170;
        v194 = 0xEA0000000000746ELL;
        break;
      default:
        break;
    }

    *(&v299 + 1) = type metadata for String;
    *&v298 = v195;
    sub_10009984C(v194);
    sub_100145028(&v298, 35);
    switch(*(v147 + 57))
    {
      case 1:

        goto LABEL_83;
      default:
        v200 = sub_1001F7EA8();

        if (v200)
        {
LABEL_83:
          sub_1000997E8(&type metadata for Int);
          *(v201 - 256) = 0;
        }

        else
        {
          v202 = sub_100161AA0();
          if ((v204 & 0x100000000) != 0)
          {
            goto LABEL_87;
          }

          *(&v299 + 1) = v267;
          *&v298 = v202;
          *(&v298 + 1) = v203;
          LODWORD(v299) = v204;
        }

        v205 = sub_100099574();
        sub_100145028(v205, 21);
LABEL_87:

        sub_100099828();
        v144 = v278;
        if (*v147 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription9CodeOffer)
        {
          sub_1000994B8(*(v147 + 80));
          *(&v298 + 1) = v206;

          v207 = sub_100099574();
          sub_100145028(v207, 28);
        }

        LODWORD(v288) = 1;
        break;
    }
  }

  else
  {
    sub_10009963C();
    v197 = *(v146 + 80);
    v196 = *(v146 + 88);

    v198 = v197 == *v285 && *(v285 + 8) == v196;
    if (v198)
    {

      sub_10009987C();
    }

    else
    {
      v199 = sub_1001F7EA8();

      LODWORD(v288) = v199 ^ 1;
    }

    sub_100099828();
    v144 = v278;
  }

  v145 = v279;
LABEL_91:
  v208 = sub_1000C3610();
  if (v209)
  {
    sub_1000994B8(1);
    v210 = sub_100099574();
    sub_100145028(v210, 34);
  }

  else
  {
    v211 = v208;
    if (__OFADD__(v208, 1))
    {
      __break(1u);
      goto LABEL_129;
    }

    sub_1000994B8(v208 + 1);
    v212 = sub_100099574();
    sub_100145028(v212, 34);
    if (v211 >= 99)
    {
      LODWORD(v279) = v145;
      if (qword_1002AC510 == -1)
      {
        goto LABEL_96;
      }

      goto LABEL_130;
    }
  }

  while (1)
  {
    sub_10009992C();
    if ((v227 & 1) != 0 || v145 == 7)
    {
      v228 = COERCE_DOUBLE(sub_1000C5464(4));
      if (v229)
      {
        v299 = 0u;
        v298 = 0u;
        v230 = 1;
        goto LABEL_108;
      }
    }

    else
    {
      v231 = v282;
      sub_100094788(v89, v292, v144, v145);
      sub_1001F6428();
      v233 = v232;
      (*(v46 + 8))(v231, v47);
      v228 = v233;
    }

    v230 = 0;
    sub_1000997E8(&type metadata for Double);
    *(v234 - 256) = v228;
LABEL_108:
    v235 = sub_100099574();
    sub_100145028(v235, 4);
    v236 = v283;
    sub_100098F84(v284, v283, &unk_1002B3450, &qword_100202EE0);
    if (sub_10001C990(v236, 1, v47) == 1)
    {
      sub_1000374B8(v236, &unk_1002B3450, &qword_100202EE0);
    }

    else
    {
      (*(v46 + 32))(v97, v236, v47);
      if (v230 & 1) != 0 || (v281)
      {
        (*(v46 + 8))(v97, v47);
      }

      else
      {
        sub_1001F6428();
        v263 = v262;
        v264 = *(v46 + 8);
        (v264)(v97, v47);
        if (v263 < v228)
        {
          v265 = sub_10009979C(v308 + 8);
          v264(v265);

          goto LABEL_126;
        }
      }
    }

    *&v298 = 0;
    v237 = sub_10001AE68(v41 + 7, v41[10]);
    __chkstk_darwin(v237);
    sub_1000997F8();
    *(v238 - 16) = &v298;
    *(v238 - 8) = &v300;
    sub_1001E524C(sub_100098F64, v239);
    v240 = v298;
    if (!v298)
    {
      __break(1u);
      JUMPOUT(0x100094540);
    }

    v241 = sub_1000BFC14();
    v243 = sub_1000EE5B8(v241, v242);

    v89 = v286;
    if (!v243)
    {
      goto LABEL_121;
    }

    sub_1000C5464(4);
    if (v244)
    {
      break;
    }

    v245 = v46;
    sub_1000BFDA8();
    sub_1001F6418();
    sub_1001F6418();
    v46 = *(v243 + 192);
    v97 = *(v243 + 200);
    sub_100099550();
    v144 = sub_1000990C8(v246, v247, &protocol conformance descriptor for Date);

    if (sub_1001F6A98())
    {
      v294 = v243;
      v248 = v245[2];
      v290 = v46;
      v46 = v273;
      v249 = sub_100099700();
      v248(v249);
      v250 = v276;
      (v248)(v46 + *(v276 + 48), v89, v47);
      v289 = v97;
      v251 = v275;
      sub_100098F84(v46, v275, &qword_1002B2000, &unk_1002087D0);
      v285 = *(v250 + 48);
      v252 = v245[4];
      v253 = v274;
      v252(v274, v251, v47);
      v254 = v245[1];
      (v254)(v251 + v285, v47);
      sub_100098FE0(v46, v251);
      v252(v253 + *(v272 + 36), v251 + *(v250 + 48), v47);
      sub_100099840();
      (v254)(v251, v47);
      sub_1000C1A68();
      LOBYTE(v248) = sub_100091A58(v290);

      sub_1000374B8(v253, &qword_1002B2008, &unk_1002081F0);
      if ((v248 & 1) == 0)
      {

        v259 = sub_10009979C(&v303 + 8);
        v254(v259);
        v260 = sub_10009979C(&v304);
        v254(v260);
        sub_1000999E0();
        goto LABEL_121;
      }

      sub_10008CBB0(v240);

      v255 = sub_10009979C(&v303 + 8);
      v254(v255);
      v256 = sub_10009979C(&v304);
      v254(v256);
      v257 = sub_10009979C(v308 + 8);
      v254(v257);

      v258 = v296;
LABEL_126:
      sub_10009987C();
      goto LABEL_127;
    }

LABEL_129:
    __break(1u);
LABEL_130:
    sub_1000216F8();
    swift_once();
LABEL_96:
    v213 = sub_1001F6688();
    sub_10009951C(v213, qword_1002E6180);
    v214 = v287;

    v41 = v89;
    v215 = sub_1001F6668();
    sub_1001F7288();

    if (sub_100099AE4())
    {
      v216 = sub_10003A894();
      v47 = swift_slowAlloc();
      *&v298 = v47;
      *v216 = 136315650;
      v217 = sub_1000C5388(15);
      if (v218)
      {
        v219 = v218;
      }

      else
      {
        v217 = 0x6E776F6E6B6E753CLL;
        v219 = 0xE90000000000003ELL;
      }

      v89 = v144;
      v220 = sub_1000E4544(v217, v219, &v298);

      *(v216 + 4) = v220;
      v144 = v89;
      sub_100099828();
      sub_100099858();
      *(v216 + 14) = sub_1000E4544(v280, v214, &v298);
      *(v216 + 22) = 2048;
      *(v216 + 24) = 99;
      sub_100099610();
      _os_log_impl(v221, v222, v223, v224, v225, 0x20u);
      swift_arrayDestroy();
      sub_10009990C();
      sub_100021754();

      v97 = v290;
      sub_100021754();
    }

    sub_1000999E0();
    v145 = v279;
    sub_100099840();
    *(&v299 + 1) = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
    sub_100099580(_swiftEmptyArrayStorage);
    v226 = sub_100099574();
    sub_100145028(v226, 19);
    LODWORD(v288) = 1;
  }

LABEL_121:
  if (qword_1002AC478 != -1)
  {
    sub_10007B910();
    swift_once();
  }

  v261 = v240;

  sub_100131590();

  (*(v46 + 8))(v292, v47);

LABEL_127:

  sub_1000995E0();
}

double sub_100094598@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);

  return result;
}

uint64_t sub_1000945E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
}

double sub_100094644@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 104);

  return result;
}

uint64_t sub_100094690(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 104) = v2;
}

void sub_1000946F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100161BA8();
  }
}

uint64_t sub_100094728(void *a1, void **a2, void *a3)
{
  v4 = *sub_10001AE68(a1, a1[3]);

  sub_1001CFEB8();
  sub_100013EFC();

  v5 = *a2;
  *a2 = v4;

  return 1;
}

uint64_t sub_100094788(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_1000997D8();
  sub_10001AE68((v4 + 16), *(v4 + 40));
  sub_1000BFC24();
  v8 = sub_10007A5F0();

  sub_10004B73C(v5, a4, v6, v8);

  return sub_1001F6418();
}

void sub_100094820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1001F6508();
  sub_10001A278();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100023510();
  v30 = v29 - v28;
  v31 = sub_100099718();
  v33 = sub_1000183C4(v31, v32);
  sub_100056658(v33);
  sub_10001E844();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  sub_1000995D4();
  sub_100018460(v37, v38, v39, v24);
  sub_1001F64E8();
  sub_100099784();
  sub_1000929DC(v40, v41, v42, v30, v36, v43, v44);
  v46 = v45;
  v48 = v47;
  (*(v26 + 8))(v30, v24);
  sub_1000374B8(v36, &unk_1002B3450, &qword_100202EE0);
  if (v46)
  {
    v49 = v46;
    sub_10009531C(v49);
  }

  v50 = sub_1000C1760();
  v51 = &off_1002AC000;
  if (v50)
  {
    sub_1000995D4();
    v53 = v52;
    sub_100018460(v54, v55, v56, v24);
    sub_1000C2A1C(v36);
    sub_1000995D4();
    sub_100018460(v57, v58, v59, v24);
    sub_1000C2A14(v36);
    sub_10009994C();
    sub_10008EA08(v60, v61);
    v51 = v53;
  }

  else if (v48)
  {
    if (qword_1002AC478 != -1)
    {
      sub_10007B910();
      swift_once();
    }

    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    sub_100047958();
    v62 = swift_allocObject();
    v63 = sub_1000998C8(v62, xmmword_1001FE9E0);
    sub_1000997A8(v63, v64);
    sub_10009999C();
    sub_1000FBFE4(v65, v66, v67, v68);

    v51 = &off_1002AC000;
  }

  if (v51[143] != -1)
  {
    sub_10007B910();
    swift_once();
  }

  v69 = sub_1000BFC24();
  sub_100130A24(v69, v70);

  sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
  sub_100047958();
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1001FE9E0;
  v72 = *(v23 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID + 8);
  *(v71 + 32) = *(v23 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID);
  *(v71 + 40) = v72;

  sub_10009999C();
  sub_1000FBFE4(v73, v74, v75, v76);

  sub_100037B00();
}

unint64_t sub_100094D64(uint64_t a1)
{

  swift_getAtKeyPath();

  v2 = sub_10004BB20(v7);

  v6 = v1;

  v3 = swift_modifyAtReferenceWritableKeyPath();
  sub_1001D193C(&v7, v2);
  v3(v5, 0);

  return v2;
}

void sub_100094E2C()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = v1;
    return;
  }

  sub_1000999C8();
  items = 0;
  sub_1000183C4(&qword_1002B1FF0, &unk_1002081D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FEBE0;
  *(inited + 32) = kSecImportExportPassphrase;
  *(inited + 40) = 0x74694B65726F7453;
  *(inited + 48) = 0xE800000000000000;
  *(inited + 64) = type metadata for String;
  *(inited + 72) = kSecAttrAccessible;
  type metadata accessor for CFString(0);
  *(inited + 104) = v4;
  *(inited + 80) = kSecAttrAccessibleAlways;
  sub_1000990C8(&qword_1002AC8D0, type metadata accessor for CFString, &unk_1001FE938);
  v5 = kSecImportExportPassphrase;
  v6 = kSecAttrAccessible;
  v7 = kSecAttrAccessibleAlways;
  sub_100099964();
  sub_1001F69B8();
  sub_10005053C();
  isa = sub_1001F63A8().super.isa;
  sub_100099964();
  v9 = sub_1001F6988().super.isa;
  v10 = SecPKCS12Import(isa, v9, &items);

  if (v10)
  {

    v11 = SecCopyErrorMessageString(v10, 0);
    if (v11)
    {
      v12 = v11;
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v13 = sub_1001F6688();
      sub_10009951C(v13, qword_1002E6180);
      v14 = v12;
      v15 = sub_1001F6668();
      v16 = sub_1001F7298();

      if (os_log_type_enabled(v15, v16))
      {
        sub_100099504();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v14;
        *v18 = v12;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "Error importing .p12 data: %@", v17, 0xCu);
        sub_1000374B8(v18, &unk_1002BA650, &unk_100203AA0);
        sub_100099474();

        sub_100021754();

        v15 = v19;
      }

      else
      {
      }

      goto LABEL_22;
    }

    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v22 = sub_1001F6688();
    sub_10009951C(v22, qword_1002E6180);
    v15 = sub_1001F6668();
    v23 = sub_1001F7298();
    if (!sub_100099534(v23))
    {
      goto LABEL_22;
    }

    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v15, v0, "Error importing .p12 data: %d", v24, 8u);
  }

  else
  {
    v20 = items;
    if (items)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v21 = v20;
        sub_1000183C4(&qword_1002B1FF8, &unk_1002081E0);
        sub_1001F6F28();
      }
    }

    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v25 = sub_1001F6688();
    sub_10009951C(v25, qword_1002E6180);
    v15 = sub_1001F6668();
    v26 = sub_1001F7298();
    if (!sub_100099534(v26))
    {
      goto LABEL_22;
    }

    v27 = sub_10003A87C();
    sub_100099888(v27);
    sub_100099494();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
  }

  sub_100021754();

LABEL_22:
}

uint64_t sub_10009531C(void *a1)
{
  v3 = sub_1000183C4(&qword_1002ADF60, &qword_100202600);
  sub_100056658(v3);
  sub_10001E844();
  __chkstk_darwin(v4);
  sub_1001F7038();
  sub_1001F7058();
  sub_100099784();
  sub_100018460(v5, v6, v7, v8);
  sub_100047958();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = a1;

  v10 = a1;
  _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
  sub_100182130();
}

uint64_t sub_1000953FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10009541C, 0, 0);
}

uint64_t sub_10009541C()
{
  sub_10003E794();
  v1 = v0[2];
  v0[4] = sub_10001AE68(v1 + 2, v1[5]);
  v0[5] = v1[15];

  v2 = sub_100037A2C();

  return _swift_task_switch(v2, v3, 0);
}

uint64_t sub_10009549C()
{
  sub_10003E794();
  sub_1000955BC(*(v0 + 24), **(v0 + 32), *(v0 + 16));

  sub_10003E824();

  return v1();
}

uint64_t sub_100095504()
{
  sub_100019CCC((v0 + 16));
  sub_100019CCC((v0 + 56));

  sub_100099404(*(v0 + 152), *(v0 + 160));
  return v0;
}

uint64_t sub_100095564()
{
  sub_100095504();

  return swift_deallocClassInstance();
}

void sub_1000955BC(void *a1, uint64_t a2, id a3)
{
  v4 = v3;
  v8 = sub_1001F79E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  if (sub_1000C2C60(v15))
  {
    v44 = v14;
    v45 = v11;
    v46 = v9;
    swift_beginAccess();
    v16 = sub_1000985C0((v3 + 112));
    if (sub_10013B560() < v16)
    {
      __break(1u);
    }

    else
    {
      v43 = v8;
      sub_1000372D0(v16);
      swift_endAccess();
      v17 = sub_1000C1A68();
      v14 = sub_1000BFC24();
      v16 = v18;
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = v17;
      v42 = v17;
      v20[4] = v14;
      v20[5] = v16;
      v20[6] = a2;
      v20[7] = a3;
      type metadata accessor for SubscriptionRenewalCoordinator.RenewalTask(0);
      swift_allocObject();

      a3 = a1;
      v21 = sub_100096E0C(a3, &unk_100208198, v20);
      if (!v21)
      {

        return;
      }

      v22 = v21;
      swift_beginAccess();

      v23 = sub_1000987DC((v4 + 112), v22);
      if (sub_10013B560() >= v23)
      {
        sub_1000372D0(v23);

        sub_1001F6F08();
        sub_1000375FC();
        sub_1001F6F98();
        swift_endAccess();
        if (qword_1002AC510 == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
LABEL_6:
    v24 = sub_1001F6688();
    sub_100019C94(v24, qword_1002E6180);

    v25 = a3;

    v26 = sub_1001F6668();
    v27 = sub_1001F7288();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47[0] = v41;
      *v28 = 136315906;
      v29 = sub_1000BFC14();
      v31 = sub_1000E4544(v29, v30, v47);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = sub_1000E4544(v14, v16, v47);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2048;
      *(v28 + 24) = v42;
      *(v28 + 32) = 2080;
      v33 = v44;
      sub_100095D1C();
      v34 = v45;
      sub_1001F79B8();
      sub_1001F79D8();
      v35 = *(v46 + 8);
      v36 = v34;
      v37 = v43;
      v35(v36, v43);
      v35(v33, v37);
      v38 = sub_1001F81B8();
      v40 = sub_1000E4544(v38, v39, v47);

      *(v28 + 34) = v40;
      _os_log_impl(&_mh_execute_header, v26, v27, "Scheduled subscription renewal of %s for %s (transactionID: %lu). The renewal will occur in %s.", v28, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  sub_100095E20(a1);
}

uint64_t sub_100095AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return _swift_task_switch(sub_100095AFC, 0, 0);
}

uint64_t sub_100095AFC()
{
  sub_10003E794();
  sub_100037C40(v0[5] + 16, (v0 + 2));
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_100095BE4;
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[8];
    v7 = v0[6];

    return sub_100096040(v7, v5, v6, v3, v4);
  }

  else
  {
    sub_10003E824();

    return v9();
  }
}

uint64_t sub_100095BE4()
{
  sub_10003E794();
  sub_10003E7AC();
  v1 = *v0;
  sub_10003E72C();
  *v2 = v1;

  sub_10003E824();

  return v3();
}

uint64_t sub_100095CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return sub_1001F7EA8();
  }
}

uint64_t sub_100095D1C()
{
  v0 = sub_1001F79E8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F6428();
  sub_1001F6438();
  sub_1001F79B8();
  sub_1001F81D8();
  sub_1001F79C8();
  return (*(v1 + 8))(v3, v0);
}

void sub_100095E20(void *a1)
{
  swift_beginAccess();
  v3 = a1;
  v4 = sub_1000982F0((v1 + 112), v3);
  if (sub_10013B560() < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1000372D0(v4);
    swift_endAccess();
    if (qword_1002AC510 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = sub_1001F6688();
  sub_100019C94(v5, qword_1002E6180);
  v6 = v3;
  v7 = sub_1001F6668();
  v8 = sub_1001F7288();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v9 = 136315650;
    v10 = sub_1000BFC14();
    v12 = sub_1000E4544(v10, v11, v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_1000BFC24();
    v15 = sub_1000E4544(v13, v14, v17);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2048;
    v16 = sub_1000C1A68();

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Cancelled subscription renewal of %s for %s (transactionID: %lu)", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100096040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = sub_1001F6508();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_100096140, v5, 0);
}

uint64_t sub_100096140()
{
  v140 = v0;
  v2 = v0;
  v3 = sub_10008E840();
  if (!v3)
  {
LABEL_6:
    if (qword_1002AC510 == -1)
    {
LABEL_7:
      v7 = sub_1001F6688();
      sub_10009951C(v7, qword_1002E6180);

      v8 = sub_1001F6668();
      v9 = sub_1001F7298();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v2 + 96);
        v11 = *(v2 + 104);
        v12 = *(v2 + 88);
        sub_1000996CC();
        v13 = sub_100099598();
        v139 = v13;
        *v1 = 134349314;
        *(v1 + 4) = v12;
        *(v1 + 12) = 2082;
        *(v1 + 14) = sub_1000E4544(v10, v11, &v139);
        sub_100099870();
        _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
        sub_100019CCC(v13);
        sub_100099474();

        sub_100021754();
      }

      goto LABEL_83;
    }

LABEL_92:
    sub_1000216F8();
    swift_once();
    goto LABEL_7;
  }

  v4 = v3;
  sub_1000C257C();
  sub_1000998F8();
  switch(v5)
  {
    case 1:
      sub_100099938();
      sub_1000995FC();
      goto LABEL_4;
    case 3:

      goto LABEL_11;
    default:
LABEL_4:
      v6 = sub_1001F7EA8();

      if ((v6 & 1) == 0)
      {

        goto LABEL_6;
      }

LABEL_11:
      v19 = sub_1000C5388(15);
      if (!v20)
      {
        goto LABEL_18;
      }

      v21 = v19;
      v22 = v20;
      sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001FE9E0;
      *(inited + 32) = v21;
      *(inited + 40) = v22;
      sub_10008B3C8();
      v1 = v24;
      swift_setDeallocating();
      sub_1001E56B4();
      if (sub_10013B560())
      {
        sub_100099A54();
        if (inited)
        {
          v25 = sub_1001F7808();
        }

        else
        {
          v25 = *(v1 + 32);
        }

        v26 = v25;

        v27 = sub_1000C1A68();
        if (v27 == sub_1000C1A68())
        {

          goto LABEL_18;
        }

        v68 = *(v2 + 128);
        sub_100037C40(v68 + 112, v2 + 64);
        v69 = *(v68 + 112);
        v70 = sub_10013B560();
        v132 = OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___id;
        v136 = v69 & 0xC000000000000001;
        v137 = v70;
        v135 = v69 & 0xFFFFFFFFFFFFFF8;
        v138 = v69;

        v71 = 0;
        v133 = v2;
        v134 = v4;
        while (1)
        {
          if (v137 == v71)
          {
            v95 = *(v2 + 120);
            v96 = *(v2 + 112);

            sub_1000955BC(v26, v96, v95);

            goto LABEL_83;
          }

          if (v136)
          {
            v72 = sub_1001F7808();
          }

          else
          {
            if (v71 >= *(v135 + 16))
            {
              goto LABEL_91;
            }

            v72 = *(v138 + 8 * v71 + 32);
          }

          if (__OFADD__(v71, 1))
          {
            break;
          }

          v73 = v72[2];
          v74 = v72[3];
          v75 = v72[4];
          v1 = *&v26[v132];
          v76 = v26;
          v77 = v26;
          v78 = sub_1000BFC24();
          v80 = v79;

          if (v73 == v1)
          {
            if (v74 == v78 && v75 == v80)
            {

LABEL_60:
              v2 = v133;

              goto LABEL_81;
            }

            v82 = sub_1001F7EA8();

            if (v82)
            {
              goto LABEL_60;
            }
          }

          else
          {
          }

          ++v71;
          v2 = v133;
          v4 = v134;
          v26 = v76;
        }

        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

LABEL_18:
      *&v28 = COERCE_DOUBLE(sub_1000C5464(4));
      if (v29)
      {
        if (qword_1002AC510 != -1)
        {
          sub_1000216F8();
          swift_once();
        }

        v30 = sub_1001F6688();
        sub_10009951C(v30, qword_1002E6180);
        v31 = v4;
        v32 = sub_1001F6668();
        v33 = sub_1001F7298();

        if (!os_log_type_enabled(v32, v33))
        {
          goto LABEL_24;
        }

        v34 = *(v2 + 88);
        v35 = sub_1000996CC();
        v36 = sub_10003A894();
        v139 = v36;
        *v35 = 134349314;
        *(v35 + 4) = v34;
        *(v35 + 12) = 2082;
        v37 = sub_1000BFC14();
        v39 = sub_1000E4544(v37, v38, &v139);

        *(v35 + 14) = v39;
        v40 = "Missing expiration date in transaction %{public}lu for subscription %{public}s";
        v41 = v33;
        v42 = v32;
        v43 = v35;
        v44 = 22;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v42, v41, v40, v43, v44);
        sub_100019CCC(v36);
        sub_100021754();

        sub_100099474();

LABEL_24:

        goto LABEL_83;
      }

      v45 = *&v28;
      sub_1001F6438();
      v47 = v46;
      v48 = sub_1000C36D4();
      if (v48)
      {
        goto LABEL_26;
      }

      if (v47 <= v45)
      {
        if (qword_1002AC510 != -1)
        {
          sub_1000216F8();
          swift_once();
        }

        v83 = sub_1001F6688();
        sub_10009951C(v83, qword_1002E6180);

        v84 = sub_1001F6668();
        v85 = sub_1001F7298();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = *(v2 + 96);
          v87 = *(v2 + 104);
          v88 = *(v2 + 88);
          sub_1000996CC();
          v89 = sub_100099598();
          v139 = v89;
          *v1 = 136315394;
          *(v1 + 4) = sub_1000E4544(v86, v87, &v139);
          *(v1 + 12) = 2048;
          *(v1 + 14) = v88;
          sub_100099870();
          _os_log_impl(v90, v91, v92, v93, v94, 0x16u);
          sub_100019CCC(v89);
          sub_100099474();

          sub_100021754();
        }

        sub_1000955BC(v4, *(v2 + 112), *(v2 + 120));
        goto LABEL_82;
      }

      if (sub_1000C2C60(v48))
      {
        if (!sub_10007AB88())
        {
          if (qword_1002AC420 != -1)
          {
            swift_once();
          }

          v102 = *(v2 + 152);
          v103 = *(v2 + 160);
          v104 = *(v2 + 136);
          v105 = *(v2 + 144);
          sub_10004EBCC(v4);
          sub_1000995D4();
          sub_100018460(v106, v107, v108, v104);
          sub_1001F64E8();
          sub_1000929DC(v4, 0, 0, v102, v103, v109, v110);
          v112 = v111;
          (*(v105 + 8))(v102, v104);
          sub_1000374B8(v103, &unk_1002B3450, &qword_100202EE0);
          if (!v112)
          {
            if (qword_1002AC510 != -1)
            {
              sub_1000216F8();
              swift_once();
            }

            v126 = sub_1001F6688();
            sub_10009951C(v126, qword_1002E6180);
            v31 = v4;
            v32 = sub_1001F6668();
            v127 = sub_1001F7298();

            if (!os_log_type_enabled(v32, v127))
            {
              goto LABEL_24;
            }

            sub_100099504();
            v128 = swift_slowAlloc();
            v36 = sub_10003A894();
            v139 = v36;
            *v128 = 136446210;
            v129 = sub_1000BFC14();
            v131 = sub_1000E4544(v129, v130, &v139);

            *(v128 + 4) = v131;
            v40 = "No renewal transaction created for %{public}s";
            v41 = v127;
            v42 = v32;
            v43 = v128;
            v44 = 12;
            goto LABEL_23;
          }

          sub_1000955BC(v112, *(v2 + 112), *(v2 + 120));

LABEL_26:
          v49 = 1;
          goto LABEL_72;
        }

        if (qword_1002AC510 != -1)
        {
          sub_1000216F8();
          swift_once();
        }

        v50 = sub_1001F6688();
        sub_10009951C(v50, qword_1002E6180);

        v51 = sub_1001F6668();
        v52 = sub_1001F72B8();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = *(v2 + 96);
          v54 = *(v2 + 104);
          v55 = *(v2 + 88);
          sub_1000996CC();
          v56 = sub_100099598();
          v139 = v56;
          *v1 = 134218242;
          *(v1 + 4) = v55;
          *(v1 + 12) = 2080;
          *(v1 + 14) = sub_1000E4544(v53, v54, &v139);
          sub_100099870();
          _os_log_impl(v57, v58, v59, v60, v61, 0x16u);
          sub_100019CCC(v56);
          sub_100099474();

          sub_100021754();
        }

        sub_10008EF68(v4, v62, v63, v64, v65, v66, v67);
      }

      else
      {
        v97 = sub_1000C36DC();
        v98 = sub_1000C36E4();
        v99 = sub_1000C3888();
        if (v100)
        {
          v101 = 1;
        }

        else
        {
          v113 = 3;
          if ((v97 & 1) == 0)
          {
            v113 = 1;
          }

          if (v98)
          {
            v113 |= 4uLL;
          }

          v99 |= v113;
          v101 = 0;
        }

        sub_1000C38B4(v99, v101);
        sub_10008EA08(v4, 0);
      }

      v49 = 0;
LABEL_72:
      if ((sub_1000C1760() & 1) == 0)
      {
        v114 = sub_1000C2E3C();
        if (v114)
        {
          v115 = v114[2];

          if (v115)
          {
            v116 = _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
            sub_1000C1ACC(v116, v117);
          }
        }

        v49 = 1;
      }

      if (qword_1002AC478 != -1)
      {
        sub_10007B910();
        swift_once();
      }

      v119 = *(v2 + 96);
      v118 = *(v2 + 104);
      sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
      sub_100047958();
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1001FE9E0;
      *(v120 + 32) = v119;
      *(v120 + 40) = v118;

      sub_1000FBFE4(1, v120, 0xD000000000000049, 0x8000000100226710);

      if (!v49)
      {
LABEL_82:

        goto LABEL_83;
      }

      v121 = *(v2 + 96);
      v122 = *(v2 + 104);
      sub_100130A24(v121, v122);
      sub_100047958();
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_1001FE9E0;
      *(v123 + 32) = v121;
      *(v123 + 40) = v122;

      sub_1000FBFE4(0, v123, 0xD000000000000049, 0x8000000100226710);

LABEL_81:

LABEL_83:

      v124 = *(v2 + 8);

      return v124();
  }
}

uint64_t sub_100096CB8(uint64_t a1, Swift::UInt a2, uint64_t a3, uint64_t a4)
{
  sub_1001F8088(a2);

  return sub_1001F6C28();
}

Swift::Int sub_100096D0C(Swift::UInt a1, uint64_t a2, uint64_t a3)
{
  sub_1001F8068();
  sub_1001F8088(a1);
  sub_1001F6C28();
  return sub_1001F80D8();
}

Swift::Int sub_100096D90()
{
  v1 = *v0;
  sub_1001F8068();
  sub_1001F8088(v1);
  sub_1001F6C28();
  return sub_1001F80D8();
}

void *sub_100096E0C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a2;
  v60 = *v4;
  v61 = a3;
  v6 = sub_1000183C4(&qword_1002ADF60, &qword_100202600);
  __chkstk_darwin(v6 - 8);
  v58 = &v55 - v7;
  v8 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  v14 = sub_1001F6508();
  v57 = *(v14 - 8);
  __chkstk_darwin(v14);
  v56 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  *(v4 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_isComplete) = 0;
  *(v4 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_task) = 0;
  v22 = a1;
  v23 = sub_1000C1A68();
  v24 = sub_1000BFC24();
  v26 = v25;

  v4[2] = v23;
  v4[3] = v24;
  v4[4] = v26;
  sub_1000C5464(4);
  if (v27)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v28 = sub_1001F6688();
    sub_100019C94(v28, qword_1002E6180);
    v29 = v22;
    v30 = sub_1001F6668();
    v31 = sub_1001F72A8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v32 = 136446722;
      v33 = sub_1000BFC14();
      v35 = sub_1000E4544(v33, v34, &v62);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2050;
      v36 = *&v29[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___id];

      *(v32 + 14) = v36;
      *(v32 + 22) = 2082;
      v37 = *&v29[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID];
      v38 = *&v29[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID + 8];

      v39 = sub_1000E4544(v37, v38, &v62);

      *(v32 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "No expiration date for %{public}s transaction %{public}lu in %{public}s. Cannot schedule renewal!", v32, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_1001F6418();
    sub_1000C390C(v13);
    if (sub_10001C990(v13, 1, v14) == 1)
    {
      sub_1000374B8(v13, &unk_1002B3450, &qword_100202EE0);
      v40 = v57;
    }

    else
    {
      v40 = v57;
      v41 = *(v57 + 32);
      v41(v18, v13, v14);
      v42 = sub_1001F6498();
      v43 = *(v40 + 8);
      if (v42)
      {
        v43(v21, v14);
        v41(v21, v18, v14);
      }

      else
      {
        v43(v18, v14);
      }
    }

    sub_1000C3984(v10);
    v44 = sub_10001C990(v10, 1, v14);
    v45 = v56;
    if (v44 == 1)
    {
      sub_1000374B8(v10, &unk_1002B3450, &qword_100202EE0);
    }

    else
    {
      v46 = *(v40 + 32);
      v46(v56, v10, v14);
      v47 = sub_1001F6498();
      v48 = *(v40 + 8);
      if (v47)
      {
        v48(v21, v14);
        v46(v21, v45, v14);
      }

      else
      {
        v48(v45, v14);
      }
    }

    (*(v40 + 16))(v4 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_expirationDate, v21, v14);
    v49 = v58;
    sub_1001F7038();
    v50 = sub_1001F7058();
    sub_100018460(v49, 0, 1, v50);
    v51 = swift_allocObject();
    v51[2] = 0;
    v51[3] = 0;
    v52 = v59;
    v51[4] = v4;
    v51[5] = v52;
    v51[6] = v61;

    v53 = sub_100097BC4(0, 0, v49, &unk_1002081B0, v51);

    (*(v40 + 8))(v21, v14);
    *(v4 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_task) = v53;
  }

  return v4;
}

uint64_t sub_1000974C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_1001F79F8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_1001F79E8();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000975E4, 0, 0);
}

uint64_t sub_1000975E4()
{
  sub_10003E794();
  sub_100095D1C();
  *(v0 + 16) = sub_1001F81C8();
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  sub_1001F7FD8();
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = sub_1000990C8(&qword_1002B1FE8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v2 = v0;
  v2[1] = sub_1000976E8;
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v4, v0 + 16, v5, v6, v3);
}

uint64_t sub_1000976E8()
{
  sub_10003E7AC();
  v3 = v2[13];
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  v8 = v2[8];
  v9 = *v1;
  sub_10003E72C();
  *v10 = v9;
  *(v11 + 120) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v12 = sub_100097B50;
  }

  else
  {
    v12 = sub_1000978B0;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1000978B0()
{
  sub_10003E794();
  if (sub_1001F7078())
  {
    sub_1000997C8();
    *(v1 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_isComplete) = 1;

    sub_10003E824();

    return v2();
  }

  else
  {
    v5 = (*(v0 + 48) + **(v0 + 48));
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_1000979F0;

    return v5();
  }
}

uint64_t sub_1000979F0()
{
  sub_10003E794();
  sub_10003E7AC();
  v1 = *v0;
  sub_10003E72C();
  *v2 = v1;

  return _swift_task_switch(sub_100097ADC, 0, 0);
}

uint64_t sub_100097ADC()
{
  sub_10003E794();
  sub_1000997C8();
  *(v0 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_isComplete) = 1;

  sub_10003E824();

  return v1();
}

uint64_t sub_100097B50()
{
  sub_10003E794();
  sub_1000997C8();
  *(v0 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_isComplete) = 1;

  sub_10003E824();

  return v1();
}

uint64_t sub_100097BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000183C4(&qword_1002ADF60, &qword_100202600);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  sub_100098F84(a3, v21 - v9, &qword_1002ADF60, &qword_100202600);
  v11 = sub_1001F7058();
  v12 = sub_10001C990(v10, 1, v11);

  if (v12 == 1)
  {
    sub_1000374B8(v10, &qword_1002ADF60, &qword_100202600);
  }

  else
  {
    sub_1001F7048();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1001F7008();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1001F6BD8() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1000374B8(a3, &qword_1002ADF60, &qword_100202600);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000374B8(a3, &qword_1002ADF60, &qword_100202600);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100097E54()
{
  if (*(v0 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_task))
  {

    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    sub_1001F7068();
  }

  v1 = OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_expirationDate;
  v2 = sub_1001F6508();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100097F20()
{
  sub_100097E54();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SubscriptionRenewalCoordinator.RenewalTask(uint64_t a1)
{
  result = qword_1002B1F38;
  if (!qword_1002B1F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100097FC8(uint64_t a1)
{
  result = sub_1001F6508();
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

uint64_t sub_100098078(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1000980B8(uint64_t result, int a2, int a3)
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

unint64_t sub_10009810C()
{
  result = qword_1002B1FD8;
  if (!qword_1002B1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1FD8);
  }

  return result;
}

unint64_t sub_100098164()
{
  result = qword_1002B1FE0;
  if (!qword_1002B1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1FE0);
  }

  return result;
}

double sub_1000981B8@<D0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = *(*v1 + 16);
  *(a1 + 16) = v2;

  return result;
}

id sub_1000981D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_1001F6B48();

  v9 = sub_1001F6B48();

  v10 = sub_1001F6B48();

  sub_1000183C4(&qword_1002ADCA8, &unk_100208260);
  isa = sub_1001F6F18().super.isa;

  v12 = [v7 initWithBundleID:v8 bundleVersion:v9 deviceID:v10 transactions:isa];

  return v12;
}

uint64_t sub_1000982C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000982F0(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  result = sub_10008A49C(v4, v5);
  v8 = result;
  if (v2)
  {
    goto LABEL_47;
  }

  if (v7)
  {
    v8 = sub_10013B560();
LABEL_47:

    return v8;
  }

  v25 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      if (v4 >> 62)
      {
        result = sub_1001F7B48();
      }

      else
      {
        result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == result)
      {
        goto LABEL_47;
      }

      v27 = v4;
      v26 = v4 & 0xC000000000000001;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = sub_1001F7808();
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v10 = *(v4 + 8 * v9 + 32);
      }

      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];
      v14 = sub_1000C1A68();
      v15 = sub_1000BFC24();
      if (v11 == v14)
      {
        if (v12 == v15 && v13 == v16)
        {

LABEL_24:
          v4 = v27;
          goto LABEL_40;
        }

        v18 = sub_1001F7EA8();

        if (v18)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      v4 = v27;
      if (v8 != v9)
      {
        if (v26)
        {
          v19 = sub_1001F7808();
          v20 = sub_1001F7808();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_53;
          }

          v21 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v21)
          {
            goto LABEL_54;
          }

          if (v9 >= v21)
          {
            goto LABEL_55;
          }

          v19 = *(v27 + 32 + 8 * v8);
          v20 = *(v27 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v27 < 0 || (v27 & 0x4000000000000000) != 0)
        {
          v4 = sub_100191254(v27);
          v22 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v22) = 0;
        }

        v23 = v4 & 0xFFFFFFFFFFFFFF8;
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v20;

        if ((v4 & 0x8000000000000000) != 0 || v22)
        {
          result = sub_100191254(v4);
          v4 = result;
          v23 = result & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v9 >= *(v23 + 16))
        {
          goto LABEL_52;
        }

        *(v23 + 8 * v9 + 32) = v19;

        *v25 = v4;
      }

      v24 = __OFADD__(v8++, 1);
      if (v24)
      {
        goto LABEL_51;
      }

LABEL_40:
      v24 = __OFADD__(v9++, 1);
      if (v24)
      {
        goto LABEL_50;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000985C0(unint64_t *a1)
{
  v3 = *a1;
  result = sub_10008A73C(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    return sub_10013B560();
  }

  v7 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      result = v3 >> 62 ? sub_1001F7B48() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 == result)
      {
        return v6;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = sub_1001F7808();
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
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
          break;
        }

        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }
      }

      v9 = *(v8 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_isComplete);

      if ((v9 & 1) == 0)
      {
        if (v6 != v7)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v10 = sub_1001F7808();
            v11 = sub_1001F7808();
          }

          else
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v6 >= v12)
            {
              goto LABEL_45;
            }

            if (v7 >= v12)
            {
              goto LABEL_46;
            }

            v10 = *(v3 + 32 + 8 * v6);
            v11 = *(v3 + 32 + 8 * v7);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
          {
            v3 = sub_100191254(v3);
            v13 = (v3 >> 62) & 1;
          }

          else
          {
            LODWORD(v13) = 0;
          }

          v14 = v3 & 0xFFFFFFFFFFFFFF8;
          *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v11;

          if ((v3 & 0x8000000000000000) != 0 || v13)
          {
            result = sub_100191254(v3);
            v3 = result;
            v14 = result & 0xFFFFFFFFFFFFFF8;
            if ((v7 & 0x8000000000000000) != 0)
            {
LABEL_37:
              __break(1u);
              return v6;
            }
          }

          else if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v7 >= *(v14 + 16))
          {
            goto LABEL_43;
          }

          *(v14 + 8 * v7 + 32) = v10;

          *a1 = v3;
        }

        v15 = __OFADD__(v6++, 1);
        if (v15)
        {
          goto LABEL_42;
        }
      }

      v15 = __OFADD__(v7++, 1);
      if (v15)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000987DC(unint64_t *a1, void *a2)
{
  v5 = *a1;

  result = sub_10008A60C(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_46;
  }

  if (v7)
  {
    v8 = sub_10013B560();
LABEL_46:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      if (v5 >> 62)
      {
        result = sub_1001F7B48();
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == result)
      {
        goto LABEL_46;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = sub_1001F7808();
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          break;
        }

        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      if (v10[2] == a2[2])
      {
        if (v10[3] == a2[3] && v10[4] == a2[4])
        {

          goto LABEL_39;
        }

        v12 = sub_1001F7EA8();

        if (v12)
        {
          goto LABEL_39;
        }
      }

      else
      {
      }

      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v13 = sub_1001F7808();
          v14 = sub_1001F7808();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v15)
          {
            goto LABEL_53;
          }

          if (v9 >= v15)
          {
            goto LABEL_54;
          }

          v13 = *(v5 + 32 + 8 * v8);
          v14 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_100191254(v5);
          v16 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v17 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

        if ((v5 & 0x8000000000000000) != 0 || v16)
        {
          result = sub_100191254(v5);
          v5 = result;
          v17 = result & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v9 >= *(v17 + 16))
        {
          goto LABEL_51;
        }

        *(v17 + 8 * v9 + 32) = v13;

        *a1 = v5;
      }

      v18 = __OFADD__(v8++, 1);
      if (v18)
      {
        goto LABEL_50;
      }

LABEL_39:
      v18 = __OFADD__(v9++, 1);
      if (v18)
      {
        goto LABEL_49;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100098A5C()
{
  swift_unknownObjectRelease();

  sub_100047958();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100098AA0()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_1000996E4(v3);

  return sub_1000953FC(v4, v5, v6, v7, v2);
}

uint64_t sub_100098B4C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100098B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1001F6B48();

  v7 = sub_1001F6B48();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_100098C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v12 = *a5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10003C108;

  return sub_100095AD4(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_100098CE4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100098D34()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003E6F4;
  v6 = sub_100013F08();

  return v7(v6, v2, v3, v4);
}

uint64_t sub_100098E04()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100098E4C()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_1000996E4(v4);

  return sub_1000974C4(v5, v6, v7, v8, v2, v3);
}

unint64_t sub_100098F08()
{
  result = qword_1002B2018;
  if (!qword_1002B2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2018);
  }

  return result;
}

uint64_t sub_100098F84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000183C4(a3, a4);
  sub_100023520();
  v5 = sub_100037A2C();
  v6(v5);
  return a2;
}

uint64_t sub_100098FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B2000, &unk_1002087D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100099050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = a2;
  if (a5 - 1 < 3)
  {
  }

  if (!a5 || a5 == 4)
  {
  }

  return result;
}

uint64_t sub_1000990C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100099110(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000991C8()
{
  result = qword_1002AC7D8;
  if (!qword_1002AC7D8)
  {
    sub_100019BC4(&qword_1002AC7D0, &unk_1001FE650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC7D8);
  }

  return result;
}

uint64_t sub_100099404(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_10003A36C(result, a2);
  }

  return result;
}

uint64_t sub_100099418(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_100040C5C(a1, a2);
  }

  return a1;
}

BOOL sub_100099534(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100099598()
{

  return swift_slowAlloc();
}

uint64_t sub_10009963C()
{
  v3 = *(v1 - 592);
  v4 = *(v1 - 584);
  v5 = *(v1 - 576);
  v6 = *(v1 - 432);

  return sub_100099050(v3, v4, v5, v6, v0);
}

void *sub_100099694()
{
  v2 = *(v0 + 80);

  return sub_10001AE68((v0 + 56), v2);
}

uint64_t sub_1000996AC()
{
  v2 = *(v0 - 328);
  v3 = *(v0 - 320);

  return sub_10003A36C(v2, v3);
}

uint64_t sub_1000996CC()
{

  return swift_slowAlloc();
}

uint64_t sub_100099724()
{
  sub_10003708C((v0 - 152), (v0 - 184));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100099754()
{
  sub_10003708C((v0 - 152), (v0 - 184));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000997A8(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1000997B8(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2048;
  return result;
}

uint64_t sub_100099894()
{

  return swift_slowAlloc();
}

void sub_1000998B0()
{
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;

  sub_1001F6CA8(v1);
}

uint64_t sub_1000998C8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1000BFC24();
}

uint64_t sub_1000998E0()
{
}

void sub_100099A34(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1000FBFE4(a1, v5, 0xD00000000000002CLL, a5);
}

uint64_t sub_100099A54()
{

  return sub_1001C19A8();
}

void sub_100099A74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t *sub_100099A94()
{
  *(v1 - 128) = v0;

  return sub_1000629FC((v1 - 152));
}

unint64_t sub_100099AB4(uint64_t a1, unint64_t a2)
{

  return sub_1000E4544(a1, a2, (v2 - 104));
}

uint64_t sub_100099ACC(uint64_t a1)
{

  return sub_1001F6418();
}

BOOL sub_100099AE4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100099AFC(void *a1)
{

  return sub_10008EA08(a1, 1);
}

void *sub_100099B14()
{
  v2 = *(v0 + 80);

  return sub_10001AE68((v0 + 56), v2);
}

void *sub_100099B2C()
{
  v2 = *(v0 + 40);

  return sub_10001AE68((v0 + 16), v2);
}

uint64_t ChannelPipeline.__allocating_init(channel:)()
{
  sub_100037B94();
  swift_getObjectType();
  v0 = sub_1000A41E0();

  return sub_1000A205C(v0, v1, v2, v3);
}

uint64_t ChannelPipeline.SynchronousOperations.fireErrorCaught(_:)(uint64_t a1, uint64_t a2)
{
  sub_1000A3F18(a1, a2);
  sub_10002E170();
  debugOnly(_:)();
  result = sub_10009D370();
  if (result)
  {
    sub_100013EFC();
    sub_10009E508();
  }

  return result;
}

void ChannelHandlerContext.close(mode:promise:)()
{
  sub_1000A41F4();
  if (v1)
  {
    v3 = v2;

    sub_10009D39C(v3, v0);
  }

  else if (v0)
  {
    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    *v4 = 3;
    *(v4 + 8) = 3;
    swift_errorRetain();
    sub_1000A3C24();
    sub_1000A3D24(v5, v6, v7, v8, v9, sub_1000477E8, sub_1000A3B0C);
  }
}

uint64_t ChannelHandlerContext.fireChannelRead(_:)()
{
  if (*(v0 + 16))
  {
    sub_1000A3FB8();

    sub_10009E13C();
  }

  return result;
}

uint64_t ChannelHandlerContext.fireErrorCaught(_:)()
{
  if (*(v0 + 16))
  {
    sub_1000A3FB8();

    sub_10009E508();
  }

  return result;
}

uint64_t ChannelHandlerContext.fireUserInboundEventTriggered(_:)()
{
  if (*(v1 + 16))
  {
    sub_1000A3FB8();

    sub_10009E3E8(v0);
  }

  return result;
}

void sub_10009A000()
{
  sub_1000A41F4();
  if (v1)
  {
    v3 = v2;
    sub_1000A3E8C();

    v4 = sub_10007B9A4();
    v3(v4);
  }

  else if (v0)
  {
    sub_10002D678();
    sub_10002E0D8();
    v5 = swift_allocError();
    sub_1000A3C90(v5, v6);
    sub_1000A3C24();
    sub_1000A3D24(v7, v8, v9, v10, v11, sub_1000477E8, sub_1000A3B0C);
  }
}

void ChannelPipeline.addHandler(_:name:position:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100037AEC();
  v35 = v25;
  swift_getObjectType();
  sub_1000999A8();
  sub_100037A50();

  sub_1000A2380(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, v24, v35, a19, a20, a21, a22, a23, a24);
}

void sub_10009A198()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v0 + 56);
  swift_getObjectType();
  sub_1000A40D0();
  v16 = EventLoop.makePromise<A>(of:file:line:)(v10, v11, v12, v13, v4, v14, v15, v9);

  v2(v8, v6, v16);

  sub_100037A50();
}

void ChannelPipeline.context(handler:)()
{
  sub_100037C08();
  v4 = sub_1000A4040();
  type metadata accessor for ChannelHandlerContext();
  sub_1000A40D0();
  v9 = EventLoop.makePromise<A>(of:file:line:)(v5, v6, v7, v8, 441, v4, v5, v0);
  sub_1000A3F74();
  if (v10(v4, v0))
  {
    swift_getObjectType();
    v11 = sub_1000A228C();
    v13 = v12;
    sub_1000A3D88();
    sub_1000A15B0(v15, v14 & 1, v9, v16, v17, sub_1000A3778, v18, v19);
    sub_1000A3C58();
    sub_1000A3878(v11, v13 & 1, v20);
  }

  else
  {
    sub_100047958();
    v21 = swift_allocObject();
    v21[2] = v9;
    v21[3] = v2;
    v21[4] = v1;
    v21[5] = v3;
    v22 = *(v0 + 24);

    swift_unknownObjectRetain();
    v23 = sub_1000A4174();
    v22(v23);
  }

  sub_100037B00();
}

void ChannelPipeline.context(name:)()
{
  sub_100037C08();
  v3 = v0;
  v5 = v4;
  v6 = sub_1000A4200();
  type metadata accessor for ChannelHandlerContext();
  sub_1000A40D0();
  v11 = EventLoop.makePromise<A>(of:file:line:)(v7, v8, v9, v10, 470, v6, v7, v2);
  if ((*(v2 + 16))(v6, v2))
  {
    sub_10002E170();
    debugOnly(_:)();
    v12 = *(v0 + 16);
    if (v12)
    {
      v13 = *(v12 + 16);

      sub_1000A41D4();
      swift_bridgeObjectRetain_n();
      if (v13)
      {
        while (v13 != *(v3 + 24))
        {
          v14 = v13[5] == v1 && v13[6] == v5;
          if (v14 || (sub_1001F7EA8() & 1) != 0)
          {
            sub_1000A41D4();
            swift_bridgeObjectRelease_n();
            v19 = 0;
            goto LABEL_17;
          }

          v15 = v13[2];

          v13 = v15;
          if (!v15)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
      }
    }

    else
    {
    }

    sub_1000A25AC();
    sub_10002E0D8();
    v13 = swift_allocError();
    v19 = 1;
    *v20 = 1;

LABEL_17:
    sub_1000A3D88();
    sub_1000A15B0(v13, v19, v11, v21, v22, sub_1000A3778, v23, v24);
    sub_1000A3C58();
    sub_1000A3878(v13, v19, v25);
  }

  else
  {
    sub_100047958();
    v16 = swift_allocObject();
    v16[2] = v11;
    v16[3] = v0;
    v16[4] = v1;
    v16[5] = v5;
    v17 = *(v2 + 24);

    v18 = sub_1000A4174();
    v17(v18);
  }

  sub_100037B00();
}

void ChannelPipeline.context<A>(handlerType:)()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  type metadata accessor for ChannelHandlerContext();
  sub_1000A40D0();
  v13 = EventLoop.makePromise<A>(of:file:line:)(v9, v10, v11, v12, 503, ObjectType, v9, v7);
  sub_1000A3F74();
  if (v14(ObjectType, v7))
  {
    v15 = ChannelPipeline._contextSync<A>(handlerType:)();
    v17 = v16;
    sub_1000A15B0(v15, v16 & 1, v13, sub_1001DBFE8, &unk_100286660, sub_1000A3778, v18, v19);
    sub_1000A3C58();
    sub_1000A3878(v15, v17 & 1, v20);
  }

  else
  {
    sub_1000A3FC4();
    v21 = swift_allocObject();
    v21[2] = v4;
    v21[3] = v2;
    v21[4] = v13;
    v21[5] = v0;
    v21[6] = v6;
    v22 = *(v7 + 24);

    v22(sub_1000A263C, v21, ObjectType, v7);
  }

  sub_100037B00();
}

void sub_10009A988()
{
  sub_100037C08();
  v5 = v4;
  v7 = v6;
  v8 = sub_1000A4040();
  sub_1000A3F74();
  if (v9())
  {
    sub_10009D02C(v1, v3, v7);
    sub_100037B00();
  }

  else
  {
    sub_1000A41C8();
    v10 = swift_allocObject();
    v10[2] = v2;
    v10[3] = v1;
    v10[4] = v3;
    v11 = *(v0 + 24);

    v11(v5, v10, v8, v0);
    sub_100037B00();
  }
}

uint64_t sub_10009AB18(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 56);
  ObjectType = swift_getObjectType();
  sub_1000A4000();
  if (v12())
  {
    return sub_10009CF3C(a1, a2, a3);
  }

  sub_10002EE44(a1, v24);
  v14 = swift_allocObject();
  sub_1000A3E34(v14, v15, v16, v17, v18, v19, v20, v21, v24[0], v24[1], v24[2], v25, v26);
  *(v22 + 88) = a2;
  v23 = *(v10 + 24);

  v23(a5, v14, ObjectType, v10);
}

uint64_t ChannelPipeline.close(mode:promise:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100037AEC();
  v12 = v11;
  v14 = v13;
  v15 = *(v10 + 56);
  swift_getObjectType();
  sub_100070228();
  if (v16())
  {
    sub_100037A50();

    return sub_10009CDC4(v17, v18);
  }

  else
  {
    sub_1000A41C8();
    v21 = swift_allocObject();
    *(v21 + 16) = v10;
    *(v21 + 24) = v14;
    *(v21 + 32) = v12;
    v22 = *(v15 + 24);

    sub_1000A3E74();
    v22();
    sub_100037A50();
  }
}

uint64_t ChannelPipeline.register(promise:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100037AEC();
  sub_1000A3DC8();
  sub_100070228();
  if (v13())
  {
    sub_100037A50();

    return sub_10009D11C(v14);
  }

  else
  {
    sub_10004794C();
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    *(v17 + 24) = v12;
    v18 = *(v10 + 24);

    sub_1000A4168();
    sub_1000A3E74();
    v18();
    sub_100037A50();
  }
}

void ChannelPipeline.triggerUserOutboundEvent(_:promise:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  swift_getObjectType();
  sub_100070228();
  if (v6())
  {
    sub_10002E36C();

    sub_10009D224(v7, v8);
  }

  else
  {
    sub_10002F9B0(a1, v12);
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    sub_10003708C(v12, (v10 + 24));
    *(v10 + 56) = a2;
    v11 = *(v5 + 24);

    sub_1000A4168();
    sub_1000A3E74();
    v11();

    sub_10002E36C();
  }
}

uint64_t sub_10009AF34()
{
  sub_1000A3EF8();
  sub_10002E170();
  debugOnly(_:)();
  v1 = *(v0 + 16);
  if (v1)
  {

    while (*(v1 + 16))
    {

      sub_10009C594();
    }

    if (!*(v0 + 16))
    {
      __break(1u);
      return result;
    }

    sub_10009C594();
  }

  *(v0 + 16) = 0;

  *(v0 + 24) = 0;

  *(v0 + 40) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;

  return swift_unknownObjectRelease();
}

uint64_t ChannelHandlerContext.leavePipeline(removalToken:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10002E170();
  EventLoop.preconditionInEventLoop(file:line:)(v2, v3, v4, 1858, ObjectType);
  swift_unknownObjectRelease();
  return sub_10009C594();
}

void sub_10009B138()
{
  if (*(v1 + 24))
  {
    sub_1000A3FB8();

    v0(v2);
  }
}

void ChannelPipeline.removeHandler(context:promise:)()
{
  sub_100037AEC();
  v3 = v1;
  sub_100037B94();
  v4 = ChannelHandlerContext.handler.getter();
  ObjectType = swift_getObjectType();
  v6 = sub_1000A29F0(v4, ObjectType, &protocol descriptor for RemovableChannelHandler);
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = *(v3 + 56);
    swift_getObjectType();
    sub_1000A4000();
    if (v8())
    {
      sub_10009BFB4();
LABEL_8:
      sub_100037A50();
      return;
    }

    sub_10004794C();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v0;
    v17 = *(v7 + 24);

    v18 = sub_1000A4168();
    v17(v18);
    sub_100037A50();
  }

  else
  {
    if (!v0)
    {
      goto LABEL_8;
    }

    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    *v9 = 13;
    *(v9 + 8) = 3;
    swift_errorRetain();
    sub_1000A3C24();
    sub_1000A3D24(v10, v11, v12, v13, v14, sub_1000477E8, sub_1000A3B0C);

    sub_100037A50();
  }
}

uint64_t sub_10009B39C()
{
  sub_1000A3EF8();
  sub_10002E170();
  debugOnly(_:)();
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    type metadata accessor for DeadChannel();
    swift_allocObject();
    v2 = sub_100013EFC();
    sub_100085AF0(v2);
    sub_100013EFC();
  }

  swift_unknownObjectRetain();
  return v1;
}

void sub_10009B42C()
{
  sub_1000A3E10();
  swift_getObjectType();
  v4 = sub_1000A3FD0();
  sub_1000A2DA0(v4, v5, v6, v1, v0, v3, v7, v2);
  if (v8)
  {
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    swift_willThrowTypedImpl();
  }
}

uint64_t sub_10009B4CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t sub_10009B59C()
{
  sub_1000A3F38();
  sub_10002E170();
  debugOnly(_:)();
  v2 = *(v1 + 16);
  *(v0 + 24) = v1;

  *(v0 + 16) = v2;

  *(v1 + 16) = v0;

  if (v2)
  {
    *(v2 + 24) = v0;
    sub_1000A3FAC();
    swift_retain_n();
  }

  else
  {
  }
}

uint64_t sub_10009B6A4()
{
  sub_1000A3F38();
  sub_10002E170();
  debugOnly(_:)();
  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  swift_retain_n();

  *(v0 + 16) = v1;

  *(v1 + 24) = v0;

  if (v2)
  {
    *(v2 + 16) = v0;
    sub_1000A3FAC();
    swift_retain_n();
  }

  else
  {
  }
}

uint64_t ChannelHandlerContext.handler.getter()
{
  result = *(v0 + 56);
  if (result)
  {
    v2 = *(v0 + 56);
LABEL_5:
    swift_unknownObjectRetain();
    return v2;
  }

  v2 = *(v0 + 72);
  if (v2)
  {
    swift_unknownObjectRetain();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009B808(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 16);

  if (v4)
  {
    while (v4 != *(v1 + 24))
    {
      if ((a1(v4) & 1) == 0)
      {
        v5 = *(v4 + 16);

        v4 = v5;
        if (v5)
        {
          continue;
        }
      }

      return v4;
    }

    return 0;
  }

  return v4;
}

uint64_t sub_10009B8A4()
{
  sub_1000A3EF8();
  sub_10002E170();
  debugOnly(_:)();
  v5._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v5);

  v2 = *(v0 + 32);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    result = 0x72656C646E6168;
    *(v0 + 32) = v4;
  }

  return result;
}

uint64_t sub_10009B954()
{
  sub_1000A3CC4();
  sub_10002E170();
  debugOnly(_:)();
  ChannelHandlerContext.handler.getter();
  sub_1000A40F4();
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(v0, ObjectType, v1);

  return swift_unknownObjectRelease();
}

void ChannelPipeline.removeHandler(_:promise:)()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 56);
  swift_getObjectType();
  sub_100070228();
  if (v8())
  {
    sub_10009BD00(v0, v6, v4, v2);
    sub_100037B00();
  }

  else
  {
    sub_100047958();
    v9 = swift_allocObject();
    v9[2] = v0;
    v9[3] = v6;
    v9[4] = v4;
    v9[5] = v2;
    v10 = *(v7 + 24);

    swift_unknownObjectRetain();
    sub_1000A4174();
    sub_1000A3E74();
    v10();
    sub_100037B00();
  }
}

uint64_t ChannelPipeline.removeHandler(name:promise:)()
{
  sub_100037C08();
  v5 = v1;
  sub_1000A3DBC();
  v6 = sub_1000A4200();
  if ((*(v4 + 16))(v6, v4))
  {
    sub_10002E170();
    debugOnly(_:)();
    v7 = *(v1 + 16);
    if (v7)
    {
      v8 = *(v7 + 16);

      sub_1000A41D4();
      swift_bridgeObjectRetain_n();
      if (v8)
      {
        while (v8 != *(v5 + 24))
        {
          v9 = v8[5] == v3 && v8[6] == v2;
          if (v9 || (sub_1001F7EA8() & 1) != 0)
          {
            sub_1000A41D4();
            swift_bridgeObjectRelease_n();
            ChannelPipeline.removeHandler(context:promise:)();
            goto LABEL_15;
          }

          v10 = v8[2];

          v8 = v10;
          if (!v10)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
      }
    }

    else
    {
    }

    sub_1000A25AC();
    sub_10002E0D8();
    v16 = swift_allocError();
    sub_1000A4020(v16, v17);

    if (v0)
    {
      sub_1000A3C24();
      sub_1000A3D24(v18, v19, v20, v21, v22, sub_1000477E8, sub_1000A3B0C);
    }

    sub_100037B00();
  }

  else
  {
    sub_100047958();
    v11 = swift_allocObject();
    v11[2] = v1;
    v11[3] = v3;
    v11[4] = v2;
    v11[5] = v0;
    v12 = *(v4 + 24);

    v13 = sub_1000A4174();
    v12(v13);
LABEL_15:
    sub_100037B00();
  }
}

uint64_t sub_10009BD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000A3DBC();
  swift_getObjectType();
  v5 = sub_1000A228C();
  v7 = v6;
  if (v6)
  {
    if (a4)
    {
      sub_1000A3C24();
      sub_1000A1440(v5, 1, a4, v8, v9, sub_1000477E8, sub_1000A3B0C);
    }
  }

  else
  {
    ChannelPipeline.removeHandler(context:promise:)();
  }

  return sub_1000A3878(v5, v7 & 1, &_swift_release);
}

uint64_t sub_10009BDD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  debugOnly(_:)();
  v8 = a1[2];
  if (!v8)
  {

    goto LABEL_16;
  }

  v9 = *(v8 + 16);

  swift_bridgeObjectRetain_n();
  if (!v9)
  {
LABEL_10:

LABEL_16:
    sub_1000A25AC();
    v13 = swift_allocError();
    *v14 = 1;

    if (a4)
    {
      sub_1000A1440(v13, 1, a4, sub_1001DBFE4, &unk_1002866D8, sub_1000477E8, sub_1000A3B0C);
    }
  }

  while (1)
  {
    if (v9 == a1[3])
    {

      goto LABEL_16;
    }

    v10 = v9[5] == a2 && v9[6] == a3;
    if (v10 || (sub_1001F7EA8() & 1) != 0)
    {
      break;
    }

    v11 = v9[2];

    v9 = v11;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  swift_bridgeObjectRelease_n();
  ChannelPipeline.removeHandler(context:promise:)();
}

void sub_10009BFB4()
{
  sub_1000A3DEC();
  sub_10002E170();
  debugOnly(_:)();
  if (*(v1 + 89))
  {
    if (v0)
    {
      sub_1000A3AA0();
      sub_10002E0D8();
      swift_allocError();
      swift_errorRetain();
      sub_1000A3C24();
      sub_1000A3D24(v2, v3, v4, v5, v6, sub_1000477E8, sub_1000A3B0C);
    }
  }

  else
  {
    *(v1 + 89) = 1;
    v7 = ChannelHandlerContext.handler.getter();
    ObjectType = swift_getObjectType();
    sub_1000A3A58(v7, ObjectType, &protocol descriptor for RemovableChannelHandler);
    swift_getObjectType();
    sub_1000A4100();
    v9 = sub_100037B7C();
    v10(v9);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10009C110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v5 = sub_1000A228C();
  v7 = v6;
  sub_1000A15B0(v5, v6 & 1, a1, sub_1001DBFE8, &unk_100286688, sub_1000A3778, v8, v9);
  return sub_1000A3878(v5, v7 & 1, &_swift_release);
}

BOOL sub_10009C1C4(uint64_t a1, uint64_t a2)
{
  v3 = ChannelHandlerContext.handler.getter();
  swift_unknownObjectRelease();
  return v3 == a2;
}

uint64_t ChannelPipeline._contextSync(_:)(uint64_t (*a1)(uint64_t))
{
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  result = sub_10009B808(a1);
  if (!result)
  {
    sub_1000A25AC();
    sub_10002E0D8();
    result = swift_allocError();
    *v3 = 1;
  }

  return result;
}

uint64_t sub_10009C2A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  debugOnly(_:)();
  v8 = a2[2];
  if (v8)
  {
    v9 = *(v8 + 16);

    swift_bridgeObjectRetain_n();
    if (v9)
    {
      while (v9 != a2[3])
      {
        v10 = v9[5] == a3 && v9[6] == a4;
        if (v10 || (sub_1001F7EA8() & 1) != 0)
        {
          swift_bridgeObjectRelease_n();
          v14 = 0;
          goto LABEL_15;
        }

        v11 = v9[2];

        v9 = v11;
        if (!v11)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
    }
  }

  else
  {
  }

  sub_1000A25AC();
  v9 = swift_allocError();
  v14 = 1;
  *v15 = 1;

LABEL_15:
  sub_1000A15B0(v9, v14, a1, sub_1001DBFE8, &unk_100286688, sub_1000A3778, v12, v13);
  return sub_1000A3878(v9, v14, &_swift_release);
}

uint64_t sub_10009C484(uint64_t a1)
{
  v2 = ChannelPipeline._contextSync<A>(handlerType:)();
  v4 = v3;
  sub_1000A15B0(v2, v3 & 1, a1, sub_1001DBFE8, &unk_100286660, sub_1000A3778, v5, v6);
  return sub_1000A3878(v2, v4 & 1, &_swift_release);
}

uint64_t sub_10009C520(uint64_t a1, uint64_t a2)
{
  ChannelHandlerContext.handler.getter();
  sub_1000183C4(&unk_1002BCD10, &qword_100200B90);
  v2 = swift_dynamicCast();
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_10009C594()
{
  sub_1000A3F38();
  sub_10002E170();
  debugOnly(_:)();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2)
  {
    *(v2 + 16) = v3;
    swift_retain_n();

    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    *(v3 + 24) = v2;
  }

LABEL_4:
  sub_10009C6E0();
  if (v1)
  {
    sub_1000A3C24();
    sub_1000A1440(0, 0, v1, v4, v5, sub_1000477E8, sub_1000A3B0C);
  }

  *(v0 + 16) = 0;

  *(v0 + 24) = 0;
}

void sub_10009C6E0()
{
  swift_getObjectType();
  debugOnly(_:)();
  if ((*(v0 + 88) & 1) == 0)
  {
    *(v0 + 88) = 1;
    ChannelHandlerContext.handler.getter();
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t ChannelPipeline.fireChannelRead(_:)()
{
  sub_1000A3DC8();
  sub_100070228();
  if (v2())
  {
    result = sub_10009D370();
    if (result)
    {
      sub_10009E13C();
    }
  }

  else
  {
    sub_10002EE44(v1, v13);
    v4 = swift_allocObject();
    sub_1000A3E34(v4, v5, v6, v7, v8, v9, v10, v11, v13[0], v13[1], v13[2], v14, v15);
    v12 = *(v0 + 24);

    sub_1000A3E74();
    v12();
  }

  return result;
}

uint64_t sub_10009C9A4(uint64_t a1, uint64_t a2)
{
  result = sub_10009D370();
  if (result)
  {
    sub_10009E13C();
  }

  return result;
}

void sub_10009CA3C()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  if ((*(v5 + 16))(ObjectType, v5))
  {
    if (!v4())
    {
      sub_100037A50();
      return;
    }

    v2();
  }

  else
  {
    v7 = *(v5 + 24);

    v8 = sub_10007B9A4();
    v7(v8);
  }

  sub_100037A50();
}

void ChannelPipeline.fireUserInboundEventTriggered(_:)()
{
  sub_1000A3DC8();
  sub_100070228();
  if ((v3() & 1) == 0)
  {
    sub_10002F9B0(v2, v7);
    sub_1000A3FC4();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    sub_10003708C(v7, (v5 + 24));
    v6 = *(v0 + 24);

    sub_1000A3E74();
    v6();

    goto LABEL_7;
  }

  if (!sub_10009D370())
  {
LABEL_7:
    sub_10002E36C();
    return;
  }

  sub_10009E3E8(v2);
  sub_10002E36C();
}

uint64_t sub_10009CC18(uint64_t a1, uint64_t a2)
{
  result = sub_10009D370();
  if (result)
  {
    sub_10009E3E8(a2);
  }

  return result;
}

void ChannelPipeline.fireErrorCaught(_:)()
{
  sub_100037AEC();
  v2 = v1;
  v3 = *(v0 + 56);
  swift_getObjectType();
  sub_1000A3F74();
  if (v4())
  {
    if (!sub_10009D370())
    {
      sub_100037A50();
      return;
    }

    sub_100013EFC();
    sub_10009E508();
  }

  else
  {
    sub_10004794C();
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    *(v5 + 24) = v2;
    v6 = *(v3 + 24);

    swift_errorRetain();
    v7 = sub_1000A4168();
    v6(v7);
  }

  sub_100037A50();
}

uint64_t sub_10009CD6C(uint64_t a1, uint64_t a2)
{
  result = sub_10009D370();
  if (result)
  {
    sub_10009E508();
  }

  return result;
}

uint64_t sub_10009CDC4(uint64_t a1, uint64_t a2)
{
  result = sub_10009D344();
  if (result)
  {
    sub_10009D39C(a1, a2);
  }

  else if (a2)
  {
    sub_10002D678();
    v5 = swift_allocError();
    *v6 = 3;
    *(v6 + 8) = 3;
    swift_errorRetain();
    sub_1000A1440(v5, 1, a2, sub_1001DBFE4, &unk_1002866D8, sub_1000477E8, sub_1000A3B0C);
  }

  return result;
}

uint64_t sub_10009CEE0(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void))
{
  result = a2();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10009CF3C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = sub_10009D344();
  if (result)
  {
    v6 = sub_10007B9A4();
    a3(v6);
  }

  else if (a2)
  {
    sub_10002D678();
    sub_10002E0D8();
    v7 = swift_allocError();
    sub_1000A3C90(v7, v8);
    sub_1000A3C24();
    sub_1000A3D24(v9, v10, v11, v12, v13, sub_1000477E8, sub_1000A3B0C);
  }

  return result;
}

uint64_t sub_10009D02C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = sub_10009D344();
  if (result)
  {
    v6 = sub_10007B9A4();
    a3(v6);
  }

  else if (a2)
  {
    sub_10002D678();
    sub_10002E0D8();
    v7 = swift_allocError();
    sub_1000A3C90(v7, v8);
    sub_1000A3C24();
    sub_1000A3D24(v9, v10, v11, v12, v13, sub_1000477E8, sub_1000A3B0C);
  }

  return result;
}

uint64_t sub_10009D11C(uint64_t a1)
{
  result = sub_10009D344();
  if (result)
  {
    sub_10009DB80(a1);
  }

  else if (a1)
  {
    sub_10002D678();
    v3 = swift_allocError();
    *v4 = 2;
    *(v4 + 8) = 3;
    swift_errorRetain();
    sub_1000A1440(v3, 1, a1, sub_1001DBFE4, &unk_1002866D8, sub_1000477E8, sub_1000A3B0C);
  }

  return result;
}

uint64_t sub_10009D224(uint64_t a1, uint64_t a2)
{
  result = sub_10009D344();
  if (result)
  {
    sub_10009DCA0(a1, a2);
  }

  else if (a2)
  {
    sub_10002D678();
    v5 = swift_allocError();
    *v6 = 2;
    *(v6 + 8) = 3;
    swift_errorRetain();
    sub_1000A1440(v5, 1, a2, sub_1001DBFE4, &unk_1002866D8, sub_1000477E8, sub_1000A3B0C);
  }

  return result;
}

uint64_t sub_10009D344()
{
  if (*(v0 + 24))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009D370()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    return 0;
  }
}

void sub_10009D39C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  debugOnly(_:)();
  if (v2[9])
  {
    v5 = v2[10];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 64);
    swift_unknownObjectRetain();
    v7(v2, a1, a2, ObjectType, v5);

    swift_unknownObjectRelease();
  }

  else if (v2[3])
  {

    sub_10009D39C(a1, a2);
  }
}

void sub_10009D4C8()
{
  swift_getObjectType();
  debugOnly(_:)();
  if (v0[9])
  {
    v1 = v0[10];
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 48);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);

    swift_unknownObjectRelease();
  }

  else if (v0[3])
  {

    sub_10009D4C8();
  }
}

void sub_10009D5CC()
{
  sub_1000A3CC4();
  sub_10002E170();
  debugOnly(_:)();
  if (*(v0 + 72))
  {
    swift_getObjectType();
    sub_1000A3E80();
    v2 = *(v1 + 56);
    swift_unknownObjectRetain();
    v3 = sub_1000A3CB4();
    v2(v3);

    swift_unknownObjectRelease();
  }

  else if (*(v0 + 24))
  {

    sub_10009D5CC();
  }
}

void sub_10009D6B0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  debugOnly(_:)();
  if (v2[9])
  {
    v5 = v2[10];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 40);
    swift_unknownObjectRetain();
    v7(v2, a1, a2, ObjectType, v5);

    swift_unknownObjectRelease();
  }

  else if (v2[3])
  {

    sub_10009D6B0(a1, a2);
  }
}

void sub_10009D7DC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  debugOnly(_:)();
  if (v2[9])
  {
    v5 = v2[10];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 40);
    swift_unknownObjectRetain();
    v7(v2, a1, a2, ObjectType, v5);
    (*(v5 + 48))(v2, ObjectType, v5);

    swift_unknownObjectRelease();
  }

  else if (v2[3])
  {

    sub_10009D7DC(a1, a2);
  }
}

void sub_10009D928(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  debugOnly(_:)();
  if (v2[9])
  {
    v5 = v2[10];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    swift_unknownObjectRetain();
    v7(v2, a1, a2, ObjectType, v5);

    swift_unknownObjectRelease();
  }

  else if (v2[3])
  {

    sub_10009D928(a1, a2);
  }
}

void sub_10009DA54(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  debugOnly(_:)();
  if (v2[9])
  {
    v5 = v2[10];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 32);
    swift_unknownObjectRetain();
    v7(v2, a1, a2, ObjectType, v5);

    swift_unknownObjectRelease();
  }

  else if (v2[3])
  {

    sub_10009DA54(a1, a2);
  }
}

void sub_10009DB80(uint64_t a1)
{
  swift_getObjectType();
  debugOnly(_:)();
  if (v1[9])
  {
    v3 = v1[10];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v5(v1, a1, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  else if (v1[3])
  {

    sub_10009DB80(a1);
  }
}

void sub_10009DCA0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  debugOnly(_:)();
  if (v2[9])
  {
    v5 = v2[10];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 72);
    swift_unknownObjectRetain();
    v7(v2, a1, a2, ObjectType, v5);

    swift_unknownObjectRelease();
  }

  else if (v2[3])
  {

    sub_10009DCA0(a1, a2);
  }
}

void sub_10009DDCC()
{
  sub_1000A3CC4();
  sub_10002E170();
  debugOnly(_:)();
  if (*(v0 + 56))
  {
    sub_1000A4118();
    sub_1000A3E80();
    v2 = *(v1 + 16);
    swift_unknownObjectRetain();
    v3 = sub_1000A3CB4();
    v2(v3);

    swift_unknownObjectRelease();
  }

  else if (*(v0 + 16))
  {

    sub_10009DDCC();
  }
}

void sub_10009DEA8()
{
  sub_1000A3CC4();
  sub_10002E170();
  debugOnly(_:)();
  if (*(v0 + 56))
  {
    sub_1000A4118();
    sub_1000A3E80();
    v2 = *(v1 + 24);
    swift_unknownObjectRetain();
    v3 = sub_1000A3CB4();
    v2(v3);

    swift_unknownObjectRelease();
  }

  else if (*(v0 + 16))
  {

    sub_10009DEA8();
  }
}

void sub_10009DF84()
{
  sub_1000A3CC4();
  sub_10002E170();
  debugOnly(_:)();
  if (*(v0 + 56))
  {
    sub_1000A4118();
    sub_1000A3E80();
    v2 = *(v1 + 40);
    swift_unknownObjectRetain();
    v3 = sub_1000A3CB4();
    v2(v3);

    swift_unknownObjectRelease();
  }

  else if (*(v0 + 16))
  {

    sub_10009DF84();
  }
}

void sub_10009E060()
{
  sub_1000A3CC4();
  sub_10002E170();
  debugOnly(_:)();
  if (*(v0 + 56))
  {
    sub_1000A4118();
    sub_1000A3E80();
    v2 = *(v1 + 32);
    swift_unknownObjectRetain();
    v3 = sub_1000A3CB4();
    v2(v3);

    swift_unknownObjectRelease();
  }

  else if (*(v0 + 16))
  {

    sub_10009E060();
  }
}

void sub_10009E13C()
{
  sub_100037AEC();
  sub_1000A3DEC();
  sub_10002E170();
  debugOnly(_:)();
  if (v0[7])
  {
    v1 = v0[8];
    swift_getObjectType();
    v2 = *(v1 + 48);
    swift_unknownObjectRetain();
    v3 = sub_100037B7C();
    v2(v3);
    sub_100037A50();

    swift_unknownObjectRelease();
  }

  else if (v0[2])
  {

    sub_10009E13C();
    sub_100037A50();
  }

  else
  {
    sub_100037A50();
  }
}

void sub_10009E230()
{
  sub_1000A3CC4();
  sub_10002E170();
  debugOnly(_:)();
  if (*(v0 + 56))
  {
    sub_1000A4118();
    sub_1000A3E80();
    v2 = *(v1 + 56);
    swift_unknownObjectRetain();
    v3 = sub_1000A3CB4();
    v2(v3);

    swift_unknownObjectRelease();
  }

  else if (*(v0 + 16))
  {

    sub_10009E230();
  }
}

void sub_10009E30C()
{
  sub_1000A3CC4();
  sub_10002E170();
  debugOnly(_:)();
  if (*(v0 + 56))
  {
    sub_1000A4118();
    sub_1000A3E80();
    v2 = *(v1 + 64);
    swift_unknownObjectRetain();
    v3 = sub_1000A3CB4();
    v2(v3);

    swift_unknownObjectRelease();
  }

  else if (*(v0 + 16))
  {

    sub_10009E30C();
  }
}

void sub_10009E3E8(uint64_t a1)
{
  swift_getObjectType();
  debugOnly(_:)();
  if (v1[7])
  {
    v3 = v1[8];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 72);
    swift_unknownObjectRetain();
    v5(v1, a1, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  else if (v1[2])
  {

    sub_10009E3E8(a1);
  }
}

void sub_10009E508()
{
  sub_100037AEC();
  sub_1000A3DEC();
  sub_10002E170();
  debugOnly(_:)();
  if (v0[7])
  {
    v1 = v0[8];
    swift_getObjectType();
    v2 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3 = sub_100037B7C();
    v2(v3);
    sub_100037A50();

    swift_unknownObjectRelease();
  }

  else if (v0[2])
  {

    sub_10009E508();
    sub_100037A50();
  }

  else
  {
    sub_100037A50();
  }
}

uint64_t ChannelPipeline.init(channel:)()
{
  sub_100037B94();
  swift_getObjectType();
  v0 = sub_1000A41E0();

  return sub_1000A20EC(v0, v1, v2, v3);
}

uint64_t ChannelPipeline.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ChannelPipeline.__deallocating_deinit()
{
  ChannelPipeline.deinit();

  return swift_deallocClassInstance();
}

void sub_10009E95C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62 && (a4 >> 62 == 1 || !(a3 | a4 ^ 0x8000000000000000)))
  {
    sub_10009EA08(a2, a3, a4);
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    sub_10009EAFC();
    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  swift_willThrowTypedImpl();
}

uint64_t sub_10009EA08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  debugOnly(_:)();
  v8 = *(a1 + 16);
  v9 = (a1 + 16 * v8 + 24);
  v10 = v8 + 1;
  while (--v10)
  {
    v11 = v9 - 2;
    v12 = *v9;
    ObjectType = swift_getObjectType();
    v14 = swift_unknownObjectRetain();
    sub_1000A2DA0(v14, 0, 0, a2, a3, v4, ObjectType, v12);
    v16 = v15;
    LOBYTE(ObjectType) = v17;
    swift_unknownObjectRelease();
    v9 = v11;
    if (ObjectType)
    {
      return v16;
    }
  }

  return 0;
}

void sub_10009EAFC()
{
  sub_100037AEC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  v8 = (v7 + 40);
  v9 = *(v7 + 16) + 1;
  do
  {
    if (!--v9)
    {
      break;
    }

    v10 = v8 + 2;
    v11 = *v8;
    ObjectType = swift_getObjectType();
    v13 = swift_unknownObjectRetain();
    sub_1000A2DA0(v13, 0, 0, v5, v3, v1, ObjectType, v11);
    LOBYTE(ObjectType) = v14;
    swift_unknownObjectRelease();
    v8 = v10;
  }

  while ((ObjectType & 1) == 0);
  sub_100037A50();
}

void ChannelPipeline.SynchronousOperations.addHandler(_:name:position:)()
{
  sub_1000A3E10();
  ObjectType = swift_getObjectType();
  sub_1000A2DA0(v6, v4, v3, v2, v1, v0, ObjectType, v5);
  if (v8)
  {
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    swift_willThrowTypedImpl();
  }
}

void ChannelPipeline.SynchronousOperations.addHandlers(_:position:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_10009EC9C(a1, a2, a3);
}

{
  ChannelPipeline.SynchronousOperations.addHandlers(_:position:)(a1, a2, a3);
}

void sub_10009EC9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 && (a3 >> 62 == 1 || !(a2 | a3 ^ 0x8000000000000000)))
  {
    sub_10009EA08(a1, a2, a3);
    if ((v3 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    sub_10009EAFC();
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  swift_willThrowTypedImpl();
}

uint64_t ChannelPipeline.SynchronousOperations.context(handler:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[6];
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  v6 = a3[2];
  if (!v6)
  {
    swift_unknownObjectRetain();
    goto LABEL_9;
  }

  v5 = *(v6 + 16);

  sub_1000A3FAC();
  swift_unknownObjectRetain_n();
  if (!v5)
  {
LABEL_6:
    swift_unknownObjectRelease();
LABEL_9:
    sub_1000A25AC();
    sub_10002E0D8();
    v9 = swift_allocError();
    sub_1000A4020(v9, v10);
    swift_unknownObjectRelease();
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    swift_willThrowTypedImpl();
    return v5;
  }

  while (1)
  {
    if (v5 == a3[3])
    {
      swift_unknownObjectRelease();

      goto LABEL_9;
    }

    v7 = ChannelHandlerContext.handler.getter();
    swift_unknownObjectRelease();
    if (v7 == a1)
    {
      break;
    }

    v8 = *(v5 + 16);

    v5 = v8;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  sub_1000A3FAC();
  swift_unknownObjectRelease_n();
  return v5;
}

void *ChannelPipeline.SynchronousOperations.context(name:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[6];
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  v7 = a3[2];
  if (v7)
  {
    v6 = *(v7 + 16);

    sub_1000A3FAC();
    swift_bridgeObjectRetain_n();
    if (v6)
    {
      while (v6 != a3[3])
      {
        v8 = v6[5] == a1 && v6[6] == a2;
        if (v8 || (sub_1001F7EA8() & 1) != 0)
        {
          sub_1000A3FAC();
          swift_bridgeObjectRelease_n();
          return v6;
        }

        v9 = v6[2];

        v6 = v9;
        if (!v9)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
    }
  }

  else
  {
  }

  sub_1000A25AC();
  sub_10002E0D8();
  v10 = swift_allocError();
  sub_1000A4020(v10, v11);

  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  swift_willThrowTypedImpl();
  return v6;
}

uint64_t ChannelPipeline.SynchronousOperations.context<A>(handlerType:)()
{
  v0 = ChannelPipeline._contextSync<A>(handlerType:)();
  if (v1)
  {
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    swift_willThrowTypedImpl();
  }

  return v0;
}

uint64_t ChannelPipeline.SynchronousOperations.handler<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[1] = ChannelPipeline._handlerSync<A>(type:)();
  v9 = v5 & 1;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v6 = sub_1001F8158();
  result = sub_10009B4CC(v6, v8, &v10);
  if (!v4)
  {
    return v10;
  }

  return result;
}

uint64_t ChannelPipeline._handlerSync<A>(type:)()
{
  sub_1000A3DBC();
  v2 = ChannelPipeline._contextSync<A>(handlerType:)();
  v4 = v3 & 1;
  LOBYTE(v13) = v3 & 1;
  v5 = sub_1000183C4(&qword_1002B2038, &qword_1002082F8);
  sub_1000A118C(sub_1000A2FBC, v12, v5, v1, v6, v7, v8, v9, v12[0], v12[1], v1, v0, v2, v13, v14, v15, v16, v17, v18, v19);
  sub_1000A3C58();
  sub_1000A3878(v2, v4, v10);
  return v14;
}

uint64_t ChannelPipeline.SynchronousOperations.fireChannelRead(_:)(uint64_t a1, uint64_t a2)
{
  sub_1000A3F18(a1, a2);
  sub_10002E170();
  debugOnly(_:)();
  result = sub_10009D370();
  if (result)
  {
    sub_100013EFC();
    sub_10009E13C();
  }

  return result;
}

uint64_t ChannelPipeline.SynchronousOperations.fireUserInboundEventTriggered(_:)(uint64_t a1, uint64_t a2)
{
  sub_1000A3F18(a1, a2);
  sub_10002E170();
  debugOnly(_:)();
  result = sub_10009D370();
  if (result)
  {
    v3 = sub_100013EFC();
    sub_10009E3E8(v3);
  }

  return result;
}

uint64_t ChannelPipeline.SynchronousOperations.close(mode:promise:)()
{
  sub_1000A3DBC();
  v2 = v1;
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  return sub_10009CDC4(v2, v0);
}

uint64_t sub_10009F338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  result = a3();
  if (result)
  {
    a4();
  }

  return result;
}

void sub_10009F41C()
{
  sub_100037AEC();
  sub_1000A3F80(v0, v1, v2);
  sub_10002E170();
  debugOnly(_:)();
  v3 = sub_1000A4180();
  sub_10009CF3C(v3, v4, v5);
  sub_100037A50();
}

void sub_10009F4AC()
{
  sub_100037AEC();
  sub_1000A3F80(v0, v1, v2);
  sub_10002E170();
  debugOnly(_:)();
  v3 = sub_1000A4180();
  sub_10009D02C(v3, v4, v5);
  sub_100037A50();
}

uint64_t ChannelPipeline.SynchronousOperations.register(promise:)()
{
  sub_100037B94();
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  return sub_10009D11C(v0);
}

uint64_t ChannelPipeline.SynchronousOperations.triggerUserOutboundEvent(_:promise:)()
{
  sub_1000A3DBC();
  v2 = v1;
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  return sub_10009D224(v2, v0);
}

uint64_t sub_10009F5CC(uint64_t a1)
{
  sub_10009B39C();
  sub_1000A40F4();
  swift_getObjectType();
  sub_1000A3FE0();
  v1();
  sub_1000A410C();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v2 = sub_1000A4010();
  v3(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F658()
{
  sub_1000A3DBC();
  sub_10009B39C();
  sub_100099864();
  swift_getObjectType();
  sub_1000A3D14();
  v0();
  sub_1000A3E58();
  swift_getObjectType();
  sub_1000A4100();
  v1 = sub_1000A3D00();
  v2(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F6E0()
{
  sub_1000A3DBC();
  sub_10009B39C();
  sub_100099864();
  swift_getObjectType();
  sub_1000A3D14();
  v0();
  sub_1000A3E58();
  swift_getObjectType();
  sub_1000A4100();
  v1 = sub_1000A3D00();
  v2(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F768()
{
  sub_1000A3DBC();
  sub_10009B39C();
  sub_100099864();
  swift_getObjectType();
  sub_1000A3D14();
  v0();
  sub_1000A3E58();
  swift_getObjectType();
  sub_1000A4100();
  v1 = sub_1000A3D00();
  v2(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F7F0(uint64_t a1)
{
  v2 = sub_10009B39C();
  v3 = sub_1000A4220(v2);
  (*(v1 + 96))(v3, v1);
  v5 = v4;
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  (*(v5 + 64))(ObjectType, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F880()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  sub_10009B39C();
  sub_100099864();
  swift_getObjectType();
  sub_1000A3D14();
  v5();
  sub_1000A3E58();
  v6 = qword_1002086E0[v4];
  ObjectType = swift_getObjectType();
  sub_10002D678();
  sub_10002E0D8();
  v8 = swift_allocError();
  *v9 = v6;
  *(v9 + 8) = 3;
  (*(v0 + 80))(v8, v4, v2, ObjectType, v0);

  sub_100037A50();

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F960(uint64_t a1)
{
  v2 = sub_10009B39C();
  v3 = sub_1000A4220(v2);
  (*(v1 + 96))(v3, v1);
  v5 = v4;
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  (*(v5 + 72))(ObjectType, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F9F0()
{
  sub_1000A3DBC();
  sub_10009B39C();
  sub_100099864();
  swift_getObjectType();
  sub_1000A3D14();
  v0();
  sub_1000A3E58();
  swift_getObjectType();
  sub_1000A4100();
  v1 = sub_1000A3D00();
  v2(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009FB38(uint64_t a1)
{
  sub_10009B39C();
  sub_1000A40F4();
  swift_getObjectType();
  sub_1000A3FE0();
  v1();
  sub_1000A410C();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v2 = sub_1000A4010();
  v3(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009FBC4(uint64_t a1)
{
  sub_10009B39C();
  sub_1000A40F4();
  swift_getObjectType();
  sub_1000A3FE0();
  v1();
  sub_1000A410C();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v2 = sub_1000A4010();
  v3(v2);

  return swift_unknownObjectRelease();
}

uint64_t ChannelHandlerContext.remoteAddress.getter()
{
  sub_10009B39C();
  sub_1000A410C();
  swift_getObjectType();
  sub_1000A41B4();
  v1();
  sub_100099864();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  (*(v0 + 16))(ObjectType, v0);
  sub_1000A3E8C();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ChannelHandlerContext.localAddress.getter()
{
  sub_10009B39C();
  sub_1000A410C();
  swift_getObjectType();
  sub_1000A41B4();
  v1();
  sub_100099864();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  (*(v0 + 8))(ObjectType, v0);
  sub_1000A3E8C();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ChannelHandlerContext.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_10009FF70()
{
  if (*(v1 + 16))
  {
    sub_1000A3FB8();

    v0(v2);
  }
}

uint64_t ChannelHandlerContext.register(promise:)(uint64_t result)
{
  v2 = result;
  if (*(v1 + 24))
  {

    sub_10009DB80(v2);
  }

  else if (result)
  {
    sub_10002D678();
    sub_10002E0D8();
    v3 = swift_allocError();
    sub_1000A3C90(v3, v4);
    sub_1000A3C24();
    sub_1000A3D24(v5, v6, v7, v8, v9, sub_1000477E8, sub_1000A3B0C);
  }

  return result;
}

void sub_1000A00CC()
{
  sub_1000A41F4();
  if (v1)
  {
    v3 = v2;
    sub_1000A3E8C();

    v4 = sub_10007B9A4();
    v3(v4);
  }

  else if (v0)
  {
    sub_10002D678();
    sub_10002E0D8();
    v5 = swift_allocError();
    sub_1000A3C90(v5, v6);
    sub_1000A3C24();
    sub_1000A3D24(v7, v8, v9, v10, v11, sub_1000477E8, sub_1000A3B0C);
  }
}

void ChannelHandlerContext.triggerUserOutboundEvent(_:promise:)()
{
  sub_1000A41F4();
  if (v1)
  {

    v2 = sub_100037B7C();
    sub_10009DCA0(v2, v3);
  }

  else if (v0)
  {
    sub_10002D678();
    sub_10002E0D8();
    v4 = swift_allocError();
    sub_1000A3C90(v4, v5);
    sub_1000A3C24();
    sub_1000A3D24(v6, v7, v8, v9, v10, sub_1000477E8, sub_1000A3B0C);
  }
}

uint64_t ChannelHandlerContext.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ChannelHandlerContext.__deallocating_deinit()
{
  ChannelHandlerContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t *ChannelPipeline.debugDescription.getter()
{
  v2 = v0;
  sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
  sub_100047958();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001FE9E0;
  v117 = 0;
  v118 = 0xE000000000000000;
  sub_1001F77B8(20);
  v119._object = 0x8000000100226890;
  v119._countAndFlagsBits = 0xD000000000000010;
  sub_1001F6CA8(v119);
  sub_1001F7A28();
  v120._countAndFlagsBits = 14941;
  v120._object = 0xE200000000000000;
  sub_1001F6CA8(v120);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v116 = v3;
  v4 = sub_1000A0F14();
  v5 = 0;
  v6 = v4[2];
  v7 = &protocol descriptor for _ChannelInboundHandler;
  v8 = _swiftEmptyArrayStorage;
  v112 = v4;
LABEL_2:
  v9 = 32 * v5;
  while (v6 != v5)
  {
    if (v5 >= v4[2])
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    ++v5;
    v2 = v9 + 32;
    v10 = v4 + v9;
    v11 = *(v10 + 6);
    v1 = *(v10 + 7);
    v113 = *(v10 + 2);
    v0 = *(v10 + 4);
    ObjectType = swift_getObjectType();
    v13 = sub_1000A29F0(v0, ObjectType, &protocol descriptor for _ChannelInboundHandler);
    v9 = v2;
    if (v13)
    {
      swift_unknownObjectRetain();

      v117 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1000A41A8();
        sub_10003452C(v14, v15, 1);
        v8 = v117;
      }

      v16 = v113;
      v2 = v8[2];
      v17 = v8[3];
      if (v2 >= v17 >> 1)
      {
        sub_10005669C(v17);
        sub_1000A3FF0();
        sub_10003452C(v19, v20, v21);
        v16 = v113;
        v8 = v117;
      }

      v8[2] = v2 + 1;
      v18 = &v8[4 * v2];
      *(v18 + 2) = v16;
      v18[6] = v11;
      v18[7] = v1;
      v4 = v112;
      goto LABEL_2;
    }
  }

  v22 = v8[2];
  if (v22)
  {
    v117 = _swiftEmptyArrayStorage;
    v23 = sub_1000A41A8();
    sub_1000375D0(v23, v22, 0);
    v0 = _swiftEmptyArrayStorage;
    v24 = v8 + 7;
    do
    {
      v25 = *(v24 - 3);
      v26 = *v24;
      swift_getObjectType();
      swift_unknownObjectRetain();

      sub_1001F8218();
      v27 = sub_1001F6C38();

      swift_unknownObjectRelease();

      sub_1000A4194();
      if (v29)
      {
        sub_10005669C(v28);
        sub_1000A3FF0();
        sub_1000375D0(v30, v31, v32);
        v0 = v117;
      }

      *(v0 + 16) = v25;
      *(v0 + 8 * v26 + 32) = v27;
      v24 += 4;
      --v22;
    }

    while (v22);
  }

  else
  {

    v0 = _swiftEmptyArrayStorage;
  }

  v8 = sub_1000A103C(v0);
  v34 = v33;

  v35 = 0;
  if (v34)
  {
    v36 = 0;
  }

  else
  {
    v36 = v8;
  }

  v111 = v36;
  v1 = &protocol descriptor for _ChannelOutboundHandler;
  v7 = _swiftEmptyArrayStorage;
LABEL_22:
  v9 = 32 * v35;
  while (v6 != v35)
  {
    if (v35 >= v112[2])
    {
      goto LABEL_78;
    }

    ++v35;
    v2 = v9 + 32;
    v37 = (v112 + v9);
    v39 = v37[6];
    v38 = v37[7];
    v114 = *(v37 + 2);
    v0 = v37[4];
    v40 = swift_getObjectType();
    v41 = sub_1000A29F0(v0, v40, &protocol descriptor for _ChannelOutboundHandler);
    v9 = v2;
    if (v41)
    {
      swift_unknownObjectRetain();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_1000A41A8();
        sub_10003452C(v43, v44, 1);
        v7 = v117;
      }

      v45 = v114;
      v2 = *(v7 + 16);
      v46 = *(v7 + 24);
      v8 = (v2 + 1);
      if (v2 >= v46 >> 1)
      {
        v48 = sub_10005669C(v46);
        v0 = &v117;
        sub_10003452C(v48, v2 + 1, 1);
        v45 = v114;
        v7 = v117;
      }

      *(v7 + 16) = v8;
      v47 = v7 + 32 * v2;
      *(v47 + 32) = v45;
      *(v47 + 48) = v39;
      *(v47 + 56) = v38;
      goto LABEL_22;
    }
  }

  v49 = *(v7 + 16);
  if (v49)
  {
    v117 = _swiftEmptyArrayStorage;
    v50 = sub_1000A41A8();
    sub_1000375D0(v50, v49, 0);
    v0 = v117;
    v51 = (v7 + 56);
    do
    {
      v52 = *(v51 - 3);
      v53 = *v51;
      swift_getObjectType();
      swift_unknownObjectRetain();

      sub_1001F8218();
      v54 = sub_1001F6C38();

      swift_unknownObjectRelease();

      sub_1000A4194();
      if (v29)
      {
        sub_10005669C(v55);
        sub_1000A3FF0();
        sub_1000375D0(v56, v57, v58);
        v0 = v117;
      }

      *(v0 + 16) = v52;
      *(v0 + 8 * v53 + 32) = v54;
      v51 += 4;
      --v49;
    }

    while (v49);
  }

  else
  {

    v0 = _swiftEmptyArrayStorage;
  }

  v8 = sub_1000A103C(v0);
  v7 = v59;

  if (v7)
  {
    v60 = 0;
  }

  else
  {
    v60 = v8;
  }

  v110 = v60;
  v61 = v116;
  v1 = v112;
  if (!v6)
  {

    v105 = *(v116 + 16);
    v104 = *(v116 + 24);
    if (v105 >= v104 >> 1)
    {
      sub_10004B2F4(v104);
      sub_100032370();
      v61 = v109;
    }

    *(v61 + 16) = v105 + 1;
    v106 = v61 + 16 * v105;
    strcpy((v106 + 32), " <no handlers>");
    *(v106 + 47) = -18;
    goto LABEL_76;
  }

  v9 = v111;
  if (__OFSUB__(v111, 2))
  {
    goto LABEL_81;
  }

  v121._countAndFlagsBits = sub_1000A40B8();
  v117 = sub_1001F6D78(v121, v62);
  v118 = v63;

  v122._countAndFlagsBits = 0xE29386E2205D495BLL;
  v122._object = 0xAE005D4F5B209186;
  sub_1001F6CA8(v122);

  v8 = v117;
  v7 = v118;
  v2 = *(v116 + 16);
  v9 = *(v116 + 24);
  v0 = v2 + 1;
  if (v2 < v9 >> 1)
  {
    goto LABEL_44;
  }

LABEL_82:
  sub_10004B2F4(v9);
  sub_100032370();
  v61 = v108;
LABEL_44:
  *(v61 + 16) = v0;
  v64 = v61 + 16 * v2;
  *(v64 + 32) = v8;
  *(v64 + 40) = v7;
  p_Name = &v1[2].Name;
  do
  {
    v1 = *(p_Name - 3);
    v66 = *p_Name;
    v115 = *(p_Name - 1);
    swift_unknownObjectRetain();

    sub_100032370();
    v68 = v67;
    v2 = *(v67 + 16);
    v69 = *(v67 + 24);
    v0 = v2 + 1;
    if (v2 >= v69 >> 1)
    {
      sub_10004B2F4(v69);
      sub_100032370();
      v68 = v95;
    }

    *(v68 + 16) = v0;
    sub_1000A4154(v68 + 16 * v2);
    v70 = swift_getObjectType();
    if (sub_1000A29F0(v1, v70, &protocol descriptor for _ChannelInboundHandler))
    {
      v0 = swift_getObjectType();
      sub_1001F8218();
      v8 = v71;
      v7 = sub_1001F6C38();

      v9 = v111;
      if (__OFSUB__(v111, v7))
      {
        goto LABEL_79;
      }

      v123._countAndFlagsBits = sub_1000A40B8();
      sub_1001F6D78(v123, v72);
      sub_1000A40DC();
      if (v29)
      {
        sub_10005669C(v73);
        sub_1000A4068();
        v68 = v103;
      }

      sub_1000A4130();
    }

    else
    {
      v124._countAndFlagsBits = sub_1000A40B8();
      sub_1001F6D78(v124, v111);
    }

    v8 = v74;
    sub_1000A4030();
    if (v29)
    {
      sub_10004B2F4(v75);
      sub_100032370();
      v68 = v97;
    }

    sub_1000A3F58();
    if (v29)
    {
      sub_10005669C(v76);
      sub_1000A4068();
      v68 = v96;
    }

    *(v68 + 16) = v8;
    v77 = v68 + 16 * v0;
    *(v77 + 32) = 0x209186E29386E220;
    *(v77 + 40) = 0xA800000000000000;
    v78 = swift_getObjectType();
    if (sub_1000A29F0(v1, v78, &protocol descriptor for _ChannelOutboundHandler))
    {
      swift_getObjectType();
      sub_1001F8218();
      sub_1000A40DC();
      if (v29)
      {
        sub_10005669C(v79);
        sub_1000A4068();
        v68 = v102;
      }

      sub_1000A4130();
      v0 = v80;
      sub_1001F6C38();
      sub_1000A3E8C();

      v9 = v110;
      if (__OFSUB__(v110, v8))
      {
        goto LABEL_80;
      }

      v81._countAndFlagsBits = sub_1000A40B8();
    }

    else
    {
      v81._countAndFlagsBits = sub_1000A40B8();
      v82 = v110;
    }

    sub_1001F6D78(v81, v82);
    v84 = v83;
    sub_1000A4030();
    if (v29)
    {
      sub_10004B2F4(v85);
      sub_100032370();
      v68 = v98;
    }

    sub_1000A3F58();
    if (v29)
    {
      sub_10005669C(v86);
      sub_1000A4068();
      v68 = v99;
    }

    *(v68 + 16) = v84;
    sub_1000A4154(v68 + 16 * v0);
    v117 = 91;
    v118 = v87;

    v125._countAndFlagsBits = v115;
    v125._object = v66;
    sub_1001F6CA8(v125);

    v126._countAndFlagsBits = 93;
    v126._object = 0xE100000000000000;
    sub_1001F6CA8(v126);
    v88 = v117;
    v89 = v118;
    sub_1000A4030();
    if (v29)
    {
      sub_10004B2F4(v90);
      sub_100032370();
      v68 = v100;
    }

    *(v68 + 16) = &v117;
    v91 = v68 + 16 * v7;
    *(v91 + 32) = v88;
    *(v91 + 40) = v89;
    v117 = v68;
    v92 = sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
    sub_10003A2B4();
    sub_1001F6A68();
    sub_100099864();

    v7 = *(v61 + 16);
    v93 = *(v61 + 24);
    if (v7 >= v93 >> 1)
    {
      sub_10005669C(v93);
      sub_100032370();
      v61 = v101;
    }

    swift_unknownObjectRelease();
    *(v61 + 16) = v7 + 1;
    v94 = v61 + 16 * v7;
    *(v94 + 32) = &v117;
    *(v94 + 40) = v92;
    p_Name += 4;
    --v6;
  }

  while (v6);

LABEL_76:
  v117 = v61;
  sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  sub_10003A2B4();
  sub_1001F6A68();
  sub_1000A40F4();

  return &v117;
}

void *sub_1000A0F14()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v0;
  v3 = *(v1 + 16);

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    while (v3 != *(v2 + 24))
    {
      v5 = ChannelHandlerContext.handler.getter();
      v7 = v6;
      v9 = v3[5];
      v8 = v3[6];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100033474();
        v4 = v13;
      }

      v10 = v4[2];
      if (v10 >= v4[3] >> 1)
      {
        sub_100033474();
        v4 = v14;
      }

      v4[2] = v10 + 1;
      v11 = &v4[4 * v10];
      v11[4] = v5;
      v11[5] = v7;
      v11[6] = v9;
      v11[7] = v8;
      v12 = v3[2];

      v3 = v12;
      if (!v12)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_1000A103C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t ChannelPipeline.handler<A>(type:)()
{
  sub_1000A3DBC();
  ChannelPipeline.context<A>(handlerType:)();
  sub_10004794C();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  sub_10002E170();
  EventLoopFuture.map<A>(file:line:_:)(v3, v4, v5, 1932, v6, v2, v1);
  sub_1000A3FB8();

  return v0;
}

uint64_t sub_1000A1110@<X0>(void *a2@<X8>)
{
  ChannelHandlerContext.handler.getter();
  sub_1000183C4(&unk_1002BCD10, &qword_100200B90);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000A118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *(v22 + 16);
  v29 = *(v28 - 8);
  __chkstk_darwin(v24);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v35 = &a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35, v37, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(*(v23 + 24) - 8) + 32))(v27, v35, *(v23 + 24));
  }

  else
  {
    (*(v29 + 32))(v31, v35, v28);
    v25(v31);
    v38 = sub_1000999A8();
    v39(v38);
  }

  sub_1001F8158();
  swift_storeEnumTagMultiPayload();
  sub_100037B00();
}

uint64_t sub_1000A1440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1000A4080();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(v13 + 40);
  ObjectType = swift_getObjectType();
  sub_1000A4000();
  if (v21())
  {
    v12(v18, v16 & 1);
    sub_1000A3D50();
    sub_1000A3C70();
    sub_1000A3DA0();
  }

  else
  {
    sub_1000A40C4();
    v24 = swift_allocObject();
    *(v24 + 16) = v14;
    *(v24 + 24) = v18;
    *(v24 + 32) = v16 & 1;
    v26 = *(v19 + 24);

    v10(v18, v16 & 1);
    v26(v8, v24, ObjectType, v19);
    sub_1000A3DA0();
  }
}

uint64_t sub_1000A15B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000A4080();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *(v12 + 40);
  ObjectType = swift_getObjectType();
  sub_1000A3F74();
  if (v20())
  {
    v11(v17, v15 & 1);
    sub_1000A3D50();
    sub_1000A3C70();
    sub_1000A3DA0();
  }

  else
  {
    sub_1000A40C4();
    v23 = swift_allocObject();
    *(v23 + 16) = v13;
    *(v23 + 24) = v17;
    *(v23 + 32) = v15 & 1;
    v24 = *(v18 + 24);

    sub_1000A3B30(v17, v15 & 1);
    v24(v9, v23, ObjectType, v18);
    sub_1000A3DA0();
  }
}

uint64_t sub_1000A175C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000A409C();
  v5 = v4;
  v25 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v9 + 48);
  ObjectType = swift_getObjectType();
  if ((*(v17 + 16))(ObjectType, v17))
  {
    v8(v16, v14, v12 & 1);
    sub_1000A3D50();
    sub_1000A3C70();
    sub_1000814C0();
  }

  else
  {
    v21 = v12 & 1;
    v22 = swift_allocObject();
    *(v22 + 16) = v10;
    *(v22 + 24) = v16;
    *(v22 + 32) = v14;
    *(v22 + 40) = v21;
    v24 = *(v17 + 24);

    v25(v16, v14, v21);
    v24(v5, v22, ObjectType, v17);
    sub_1000814C0();
  }
}

uint64_t sub_1000A18A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000A4080();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *(v8 + 48);
  ObjectType = swift_getObjectType();
  if ((*(v16 + 16))(ObjectType, v16))
  {
    sub_1001D6750(v15, v13, v11 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v11) & 1) << 56));
    sub_1000A3D50();
    sub_1000A3C70();
    sub_1000A3DA0();
  }

  else
  {
    sub_100047958();
    v20 = swift_allocObject();
    *(v20 + 16) = v9;
    *(v20 + 24) = v15;
    *(v20 + 32) = v13;
    *(v20 + 46) = BYTE6(v11);
    *(v20 + 44) = WORD2(v11);
    *(v20 + 40) = v11;
    *(v20 + 47) = HIBYTE(v11) & 1;
    v22 = *(v16 + 24);

    sub_1000A3A44(v15, v13, v11, HIBYTE(v11) & 1);
    v22(sub_1000A3A38, v20, ObjectType, v16);
    sub_1000A3DA0();
  }
}

uint64_t sub_1000A1A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000A409C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(v4 + 56);
  ObjectType = swift_getObjectType();
  if ((*(v14 + 16))(ObjectType, v14))
  {
    sub_1000999A8();
    sub_1001D6830();
    sub_1000A3D50();
    sub_1000A3C70();
    sub_1000814C0();
  }

  else
  {
    sub_1000A3FC4();
    v18 = swift_allocObject();
    *(v18 + 16) = v5;
    *(v18 + 24) = v13;
    *(v18 + 32) = v11;
    *(v18 + 40) = v9;
    *(v18 + 54) = BYTE6(v7);
    *(v18 + 52) = WORD2(v7);
    *(v18 + 48) = v7;
    *(v18 + 55) = HIBYTE(v7) & 1;
    v22 = *(v14 + 24);

    v19 = sub_1000999A8();
    sub_1000A3938(v19, v20, v9, v7, HIBYTE(v7) & 1);
    v22(sub_1000A392C, v18, ObjectType, v14);
    sub_1000814C0();
  }
}

uint64_t sub_1000A1C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000A4080();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(v8 + 40);
  swift_getObjectType();
  sub_100070228();
  if (v15())
  {
    sub_1001DBFE8(v13, v11 & 1);
    sub_1000A3D50();
    sub_1000A3C70();
    sub_1000A3DA0();
  }

  else
  {
    sub_1000A40C4();
    v18 = swift_allocObject();
    *(v18 + 16) = v9;
    *(v18 + 24) = v13;
    *(v18 + 32) = v11 & 1;
    v19 = *(v14 + 24);
    sub_1000A3B30(v13, v11 & 1);

    sub_1000A3E74();
    v19();
    sub_1000A3DA0();
  }
}

uint64_t sub_1000A1D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, void))
{
  a5(a2, a3, a4 & 1);
  sub_1000A3D50();
  sub_1000A3C70();
}

uint64_t sub_1000A1D94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_1001D6750(a2, a3, a4 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(a4) & 1) << 56));
  v6 = v5;
  CallbackList._run()();
  sub_100037408(v4, v6);
}

uint64_t sub_1000A1E10(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001D6830();
  v4 = v3;
  CallbackList._run()();
  sub_100037408(v2, v4);
}

uint64_t sub_1000A1E90(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, void))
{
  a4(a2, a3 & 1);
  sub_1000A3D50();
  sub_1000A3C70();
}

uint64_t sub_1000A1F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();

  return sub_1000A1F9C(a1, a2, a3, a4, v11);
}

uint64_t sub_1000A1F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 88) = 0;
  *(a5 + 40) = a1;
  *(a5 + 48) = a2;
  *(a5 + 32) = a4;
  ObjectType = swift_getObjectType();
  v9 = sub_1000A29F0(a3, ObjectType, &protocol descriptor for _ChannelInboundHandler);
  if (v9)
  {
    v10 = v8;
    swift_unknownObjectRetain();
  }

  else
  {
    v10 = 0;
  }

  *(a5 + 56) = v9;
  *(a5 + 64) = v10;
  v11 = swift_getObjectType();
  result = sub_1000A29F0(a3, v11, &protocol descriptor for _ChannelOutboundHandler);
  if (!result)
  {
    swift_unknownObjectRelease();
    result = 0;
    v13 = 0;
  }

  *(a5 + 72) = result;
  *(a5 + 80) = v13;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  if (*(a5 + 56) | result)
  {
    return a5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A205C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();

  return sub_1000A20EC(a1, v7, a3, a4);
}

uint64_t sub_1000A20EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 64) = a1;
  *(a2 + 72) = a4;
  ObjectType = swift_getObjectType();
  *(a2 + 48) = (*(*(a4 + 8) + 80))(ObjectType);
  *(a2 + 56) = v7;
  type metadata accessor for HeadChannelHandler();
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  inited = swift_initStaticObject();
  type metadata accessor for ChannelHandlerContext();
  v9 = swift_allocObject();
  *(a2 + 16) = sub_1001DB688(1684104552, 0xE400000000000000, inited, a2, v9);

  type metadata accessor for TailChannelHandler();
  swift_initStaticObject();
  swift_allocObject();
  *(a2 + 24) = sub_1001DBFC0();

  if (*(a2 + 16))
  {
    *(*(a2 + 16) + 16) = *(a2 + 24);
  }

  v10 = *(a2 + 24);
  if (v10)
  {
    *(v10 + 24) = *(a2 + 16);
  }

  return a2;
}

uint64_t sub_1000A2528()
{

  swift_unknownObjectRelease();
  v0 = sub_1000A3D40();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_1000A25AC()
{
  result = qword_1002B2030;
  if (!qword_1002B2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2030);
  }

  return result;
}

uint64_t sub_1000A2600()
{

  sub_1000A3FC4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000A264C()
{

  sub_10006F21C(*(v0 + 32), *(v0 + 40));
  v1 = sub_1000A3D40();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000A26E0()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000A27C0()
{

  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    sub_100019CCC((v0 + 24));
  }

  else if (v1 == 1)
  {

    if (*(v0 + 56) != 4 && (~*(v0 + 64) & 0xF000000000000007) != 0)
    {
    }
  }

  else if (!*(v0 + 80))
  {
    v2 = sub_1000A3CE4();
    sub_100034300(v2);
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000A28CC()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000A2978()
{

  sub_100019CCC((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A29F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A2A88()
{
  sub_100037B94();

  v2(*(v1 + 24));
  v0(*(v1 + 40));
  v3 = sub_1000A3D40();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000A2B04()
{

  v0 = sub_1000A3D40();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000A2C18()
{

  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    sub_100019CCC((v0 + 24));
  }

  else if (v1 == 1)
  {

    if (*(v0 + 56) != 4 && (~*(v0 + 64) & 0xF000000000000007) != 0)
    {
    }
  }

  else if (!*(v0 + 80))
  {
    v2 = sub_1000A3CE4();
    sub_100034300(v2);
  }

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_1000A2CF4()
{

  sub_100019CCC((v0 + 24));
  sub_1000A3FC4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000A2D54()
{
  sub_1000A4238();
  v0(*(v1 + 24));
  sub_10004794C();

  return _swift_deallocObject(v2, v3, v4);
}

void sub_1000A2DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getObjectType();
  debugOnly(_:)();
  if (*(a6 + 40) == 1)
  {
    sub_10002D678();
    swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 3;
    return;
  }

  if (!(a5 >> 62))
  {

    sub_1000A33A8(a2, a3, a1, a4, a5, sub_1000A3C1C, a6, a6, a7, a8);
    goto LABEL_13;
  }

  if (a5 >> 62 == 1)
  {

    sub_1000A33A8(a2, a3, a1, a4, a5 & 0x3FFFFFFFFFFFFFFFLL, sub_1000A3A50, a6, a6, a7, a8);
LABEL_13:

    return;
  }

  if (a4 | a5 ^ 0x8000000000000000)
  {
    v18 = *(a6 + 24);
    if (v18)
    {

      sub_1000A356C(a2, a3, a1, v18, sub_1000A3A54, a6, a6, a7, a8);
      goto LABEL_12;
    }
  }

  else
  {
    v17 = *(a6 + 16);
    if (v17)
    {

      sub_1000A356C(a2, a3, a1, v17, sub_1000A3C20, a6, a6, a7, a8);
LABEL_12:

      goto LABEL_13;
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1000A2FF8()
{
  result = qword_1002B2040;
  if (!qword_1002B2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2040);
  }

  return result;
}

unint64_t sub_1000A307C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1000A3098(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 16))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
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

uint64_t sub_1000A30EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1000A314C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChannelPipelineError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000A3294);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000A32C8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A331C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000A339C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1000A33A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_getObjectType();
  debugOnly(_:)();
  if (*(a8 + 40) == 1)
  {
    sub_10002D678();
    v17 = swift_allocError();
    *v18 = 2;
    *(v18 + 8) = 3;
    return v17;
  }

  v19 = *(a8 + 16);
  if (!v19)
  {
LABEL_10:
    sub_1000A25AC();
    v17 = swift_allocError();
    *v23 = 1;
    return v17;
  }

  v20 = *(v19 + 16);

  swift_unknownObjectRetain();
  if (!v20)
  {
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  while (1)
  {
    if (v20 == *(a8 + 24))
    {
      swift_unknownObjectRelease();

      goto LABEL_10;
    }

    v21 = ChannelHandlerContext.handler.getter();
    swift_unknownObjectRelease();
    if (v21 == a4)
    {
      break;
    }

    v22 = *(v20 + 16);

    v20 = v22;
    if (!v22)
    {
      goto LABEL_8;
    }
  }

  swift_unknownObjectRelease();
  v17 = sub_1000A356C(a1, a2, a3, v20, a6, a7, a8, a9, a10);

  return v17;
}

uint64_t sub_1000A356C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getObjectType();
  debugOnly(_:)();
  if (*(a7 + 40) == 1)
  {
    sub_10002D678();
    result = swift_allocError();
    *v17 = 2;
    *(v17 + 8) = 3;
  }

  else
  {
    v22 = a5;
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      a1 = sub_10009B8A4();
      v18 = v19;
    }

    v20 = type metadata accessor for ChannelHandlerContext();

    swift_unknownObjectRetain();

    v21 = sub_1000A1F1C(a1, v18, a3, a7, v20, a8, a9);
    v22(v21, a4);
    sub_10009B954();

    return 0;
  }

  return result;
}

uint64_t sub_1000A379C()
{
  sub_1000A4238();
  sub_1000A3878(*(v1 + 24), *(v1 + 32), v0);
  sub_1000A40C4();

  return _swift_deallocObject(v2, v3, v4);
}

double sub_1000A37F0(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000A3814()
{
  sub_1000A4238();
  v0(*(v1 + 24), *(v1 + 32), *(v1 + 40));

  return _swift_deallocObject(v1, 41, 7);
}

uint64_t sub_1000A386C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_10003742C(a1, a2);
  }
}

uint64_t sub_1000A3878(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
  }

  else
  {
    return a3(a1);
  }
}

uint64_t sub_1000A3888()
{

  sub_1000A38E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48) | ((*(v0 + 52) | (*(v0 + 54) << 16)) << 32), *(v0 + 55));
  sub_1000A3FC4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000A38E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_1000A3938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000A399C()
{
  sub_1000A4238();
  v0(*(v1 + 24), *(v1 + 32));
  sub_1000A40C4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000A39F0()
{

  v1 = sub_1000A3CE4();
  sub_1000A3A2C(v1, v2, v3, *(v0 + 47));
  v4 = sub_1000A3D40();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_1000A3A2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1000A3A44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000A3A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A3AA0()
{
  result = qword_1002B2318[0];
  if (!qword_1002B2318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002B2318);
  }

  return result;
}

uint64_t sub_1000A3B30(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000A3B44()
{

  swift_unknownObjectRelease();

  sub_10006F21C(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000A3C90(uint64_t a1, uint64_t a2)
{
  *a2 = 2;
  *(a2 + 8) = 3;

  return swift_errorRetain();
}

uint64_t sub_1000A3CC4()
{

  return swift_getObjectType();
}

uint64_t sub_1000A3D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1000A1440(v8, 1, v7, a4, a5, a6, a7);
}

void sub_1000A3D50()
{

  CallbackList._run()();
}

uint64_t sub_1000A3DC8()
{

  return swift_getObjectType();
}

uint64_t sub_1000A3DEC()
{

  return swift_getObjectType();
}

__n128 sub_1000A3E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a13, char a14)
{
  *(a1 + 16) = v13;
  *(a1 + 24) = a9;
  *(a1 + 40) = a10;
  *(a1 + 56) = a11;
  result = *(&a11 + 9);
  *(a1 + 65) = *(&a11 + 9);
  return result;
}

uint64_t sub_1000A3E58()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1000A3EF8()
{

  return swift_getObjectType();
}

uint64_t sub_1000A3F18(uint64_t a1, uint64_t a2)
{

  return swift_getObjectType();
}

uint64_t sub_1000A3F38()
{

  return swift_getObjectType();
}

void sub_1000A3F58()
{
  *(v3 + 16) = v0;
  v5 = v3 + 16 * v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = v1;
}

uint64_t sub_1000A3F80(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getObjectType();
}

uint64_t sub_1000A4040()
{

  return swift_getObjectType();
}

void sub_1000A4068()
{

  sub_100032370();
}

uint64_t sub_1000A4118()
{

  return swift_getObjectType();
}

uint64_t sub_1000A4130()
{
  *(v3 + 16) = v2;
  v6 = v3 + 16 * v0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v4;

  return sub_1001F8218();
}

uint64_t sub_1000A4200()
{

  return swift_getObjectType();
}

uint64_t sub_1000A4220(uint64_t a1)
{

  return swift_getObjectType();
}

uint64_t sub_1000A4238()
{
}

uint64_t sub_1000A4294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a4;
  v12 = type metadata accessor for InAppBuyRoute.AdditionalBuyOptions(0, a5, a6, a4);
  v13 = v12[11];
  v14 = sub_1001F6508();
  sub_100018460(a7 + v13, 1, 1, v14);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 24) = a3;

  sub_1000374B8(a7 + v13, &unk_1002B3450, &qword_100202EE0);
  sub_100018460(a7 + v13, 1, 1, v14);
  type metadata accessor for OctaneSubscription();
  v15 = swift_dynamicCastClass() != 0;

  *(a7 + v12[12]) = v15;
  *(a7 + v12[13]) = 0;
  return result;
}

__n128 sub_1000A4388(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  sub_1000A6070(v1);
  memcpy(v34, __src, sizeof(v34));
  memcpy(__dst, __src, 0x379uLL);
  if (sub_1000AC5DC(__dst) == 1)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v5 = sub_1001F6688();
    sub_100019C94(v5, qword_1002E6180);
    v6 = sub_1001F6668();
    v7 = sub_1001F7298();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      sub_1000AD6C4();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_1000AD4AC();
    }

    sub_1000B738C(0x7571657220646142, 0xEB00000000747365, 6, v33);
    v22 = v33[0];
    v23 = v33[1];
    v13 = LODWORD(v33[2]) | ((WORD2(v33[2]) | (BYTE6(v33[2]) << 16)) << 32);
    v14 = type metadata accessor for HTTPResponseHead._Storage();
    v15 = sub_100021728(v14);
    v16 = sub_1000AD71C(v15);
    sub_10002170C(v16, 21);
  }

  else
  {
    memcpy(v33, __dst, 0x379uLL);
    sub_1000A4A78();
    v6 = v28;
    sub_1000374B8(__src, &qword_1002B23A0, &unk_100208790);
    v17 = sub_10001AE68(&v24, v25);
    memcpy(v26, v17, 0xD1uLL);
    sub_1001A7288(v28, v26, v2);
    v22 = v28[0];
    v23 = v28[1];
    v13 = v29 | ((v30 | (v31 << 16)) << 32);
    v18 = type metadata accessor for HTTPResponseHead._Storage();
    v19 = sub_100021728(v18);
    v20 = sub_1000AD71C(v19);
    sub_10002170C(v20, 3);
    sub_100019CCC(&v24);
  }

  *v4 = v6;
  *(v4 + 8) = _swiftEmptyArrayStorage;
  *(v4 + 16) = 2;
  result = v23;
  *(v4 + 24) = v22;
  *(v4 + 40) = v23;
  *(v4 + 56) = v13;
  *(v4 + 62) = BYTE6(v13);
  *(v4 + 60) = WORD2(v13);
  return result;
}

void sub_1000A4A78()
{
  sub_10001E850();
  v3 = v2;
  v5 = v4;
  v98 = *(*v0 + 152);
  v99 = *(*v0 + 144);
  v7 = type metadata accessor for InAppBuyRoute.AdditionalBuyOptions(0, v99, v98, v6);
  sub_10001A278();
  v9 = v8;
  sub_10001E844();
  __chkstk_darwin(v10);
  sub_1000AD8B4();
  v100 = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v31 = sub_1000AC650();
    sub_1000276A0(&type metadata for InAppBuyRouteError, v31);
    *v32 = 0;
    swift_willThrow();
    goto LABEL_35;
  }

  v13 = Strong;
  v92 = v9;
  v93 = v7;
  v94 = v5;
  sub_10001AE68(v0 + 6, v0[9]);
  v15 = *(v3 + 64);
  v14 = *(v3 + 72);
  swift_bridgeObjectRetain_n();
  sub_10007B9BC();
  v97 = sub_10007961C();
  v95 = v0;
  sub_1000AD62C(v0 + 6, v0[9]);
  v16 = v15;
  v110 = v14;
  sub_1000795A8(v15, v14);
  v17 = *(v3 + 544);
  if (v17 != 2)
  {
    v108 = *(v3 + 552);
    v18 = *(&v108 + 1);
    if (*(&v108 + 1))
    {
      v101 = v108;
      swift_bridgeObjectRelease_n();
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v19 = sub_1001F6688();
      sub_10009951C(v19, qword_1002E6180);
      sub_1000ACFAC();
      sub_1000AD7A0();
      v20 = sub_1001F6668();
      v21 = sub_1001F72B8();
      sub_1000374B8(&v108, &qword_1002AEBE0, &qword_100203700);
      sub_1000ACE5C(v3);
      v22 = sub_1000AD6D4();
      if (os_log_type_enabled(v22, v23))
      {
        sub_1000AD5E8();
        v24 = swift_slowAlloc();
        sub_1000AD68C();
        *&v103[0] = swift_slowAlloc();
        *v24 = 136315394;
        v25 = v101;
        *(v24 + 4) = sub_1000E4544(v101, v18, v103);
        *(v24 + 12) = 2080;
        v26 = v110;
        *(v24 + 14) = sub_1000E4544(v16, v110, v103);
        _os_log_impl(&_mh_execute_header, v20, v21, "Handling did consent to price increase for subscription group: %s; app: %s.", v24, 0x16u);
        swift_arrayDestroy();
        sub_1000AD4AC();

        sub_100021754();
      }

      else
      {

        v26 = v110;
        v25 = v101;
      }

      sub_1000AA580(v17 & 1, v25, v16, v26, v97, v94);
      goto LABEL_17;
    }
  }

  v107 = *(v3 + 136);
  if (!*(&v107 + 1))
  {

    goto LABEL_14;
  }

  v27 = v107;
  v28 = sub_1000EDE14(v107, *(&v107 + 1));

  if (!v28)
  {
LABEL_14:

    v33 = sub_1000AC650();
    sub_1000276A0(&type metadata for InAppBuyRouteError, v33);
    *v34 = 1;
    swift_willThrow();
LABEL_17:
    swift_unknownObjectRelease();
LABEL_18:

    goto LABEL_35;
  }

  v29 = *(v3 + 96);
  if (v29 == 2)
  {
    v30 = v0;
LABEL_24:
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v42 = sub_1001F6688();
    sub_10009951C(v42, qword_1002E6180);
    sub_1000AD7A0();
    sub_1000AD6F8();
    sub_1000ACFAC();
    v43 = sub_1001F6668();
    sub_1001F72B8();
    sub_1000AD8D8();
    sub_1000ACE5C(v3);
    v44 = sub_1000AD6D4();
    if (os_log_type_enabled(v44, v45))
    {
      sub_1000AD5E8();
      v46 = swift_slowAlloc();
      sub_1000AD68C();
      *&v103[0] = swift_slowAlloc();
      *v46 = 136315394;
      v47 = sub_1000E4544(v27, *(&v27 + 1), v103);
      v48 = sub_1000AD6E0(v47);
      *(v46 + 14) = sub_1000E4544(v48, v14, v49);
      _os_log_impl(&_mh_execute_header, v43, &off_1002AC000, "Received confirmed in-app buy request of %s for %s", v46, 0x16u);
      sub_1000AD574();
      swift_arrayDestroy();
      sub_100021754();

      sub_100021754();
    }

    else
    {
    }

    v50 = v97;
    v51 = sub_1000AD87C();
    sub_1000A4294(v51, v52, v28, v53, v54, v98, v55);
    swift_unknownObjectRetain();
    sub_1000AD600();
    v59 = sub_1000A718C(v56, v57, v58, v13);
    swift_unknownObjectRelease();

    (*(v92 + 8))(v100, v7);
    v60 = v94;
    goto LABEL_30;
  }

  v30 = v0;
  if ((v29 & 1) == 0)
  {
    goto LABEL_24;
  }

  v91 = v107;
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v35 = sub_1001F6688();
  sub_10009951C(v35, qword_1002E6180);
  sub_1000AD7A0();
  sub_1000AD6F8();
  sub_1000ACFAC();
  v36 = sub_1001F6668();
  v37 = sub_1001F72B8();
  sub_1000374B8(&v107, &qword_1002AEBE0, &qword_100203700);
  sub_1000ACE5C(v3);
  v38 = sub_1000AD6D4();
  if (os_log_type_enabled(v38, v39))
  {
    sub_1000AD5E8();
    v40 = swift_slowAlloc();
    sub_1000AD68C();
    *&v103[0] = swift_slowAlloc();
    *v40 = 136315394;
    *(v40 + 4) = sub_1000E4544(v91, *(&v27 + 1), v103);
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_1000E4544(v16, v110, v103);
    _os_log_impl(&_mh_execute_header, v36, v37, "Received initial in-app buy request of %s for %s", v40, 0x16u);
    sub_1000AD574();
    swift_arrayDestroy();
    sub_100021754();

    sub_100099474();

    v41 = v94;
    v30 = v95;
  }

  else
  {

    v41 = v94;
  }

  v50 = v97;
  v59 = v30;
  sub_1000A61A8(v3);
  if (v1)
  {
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    if (swift_dynamicCast())
    {
      if (v102 == 7)
      {

        sub_1000AD7A0();
        sub_1000AD6F8();
        sub_1000ACFAC();
        v59 = sub_1001F6668();
        v68 = sub_1001F72B8();
        sub_1000374B8(&v107, &qword_1002AEBE0, &qword_100203700);
        sub_1000ACE5C(v3);
        if (os_log_type_enabled(v59, v68))
        {
          sub_1000AD524();
          v67 = swift_slowAlloc();
          *&v103[0] = swift_slowAlloc();
          *v67 = 136315650;
          v96 = v68;

          v74 = sub_1000AD850();
          sub_1000E4544(v74, v75, v76);

          v77 = sub_1000AD7B8();
          *(v67 + 24) = sub_1000AD744(v77);
          v73 = "Handling request for ineligible winback offer %s for %s and app %s.";
          goto LABEL_47;
        }

LABEL_48:

        v50 = v97;
        sub_1000AA424(v97, &v104);

        v60 = v94;
        goto LABEL_49;
      }

      if (v102 == 4)
      {

        sub_1000AD7A0();
        sub_1000AD6F8();
        sub_1000ACFAC();
        v59 = sub_1001F6668();
        v66 = sub_1001F72B8();
        sub_1000374B8(&v107, &qword_1002AEBE0, &qword_100203700);
        sub_1000ACE5C(v3);
        if (os_log_type_enabled(v59, v66))
        {
          sub_1000AD524();
          v67 = swift_slowAlloc();
          *&v103[0] = swift_slowAlloc();
          *v67 = 136315650;
          v96 = v66;

          v69 = sub_1000AD850();
          sub_1000E4544(v69, v70, v71);

          v72 = sub_1000AD7B8();
          *(v67 + 24) = sub_1000AD744(v72);
          v73 = "Handling request for in-eligible ad-hoc offer %s for %s and app %s.";
LABEL_47:
          _os_log_impl(&_mh_execute_header, v59, v96, v73, v67, 0x20u);
          swift_arrayDestroy();
          sub_1000AD4AC();

          sub_100021754();

          goto LABEL_48;
        }

        goto LABEL_48;
      }
    }

    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  sub_10002DD3C(v103, &v104);
  v60 = v41;
LABEL_49:
  if (v50)
  {
    v78 = *(sub_10001AE68(&v104, v105) + 176);
    if (v78 != 22)
    {
      v79 = 53;
      v80 = sub_100087BE0(v78);
      v59 = v81;
      if (v80 == 892416309 && v81 == 0xE400000000000000)
      {
      }

      else
      {
        v79 = sub_1001F7EA8();

        if ((v79 & 1) == 0)
        {

LABEL_62:
          v50 = v97;
          goto LABEL_30;
        }
      }

      sub_1000AD7A0();
      sub_1000AD6F8();
      sub_1000ACFAC();
      v83 = sub_1001F6668();
      sub_1001F72B8();
      sub_1000AD8D8();
      sub_1000ACE5C(v3);
      if (os_log_type_enabled(v83, v79))
      {
        sub_1000AD5E8();
        v84 = swift_slowAlloc();
        sub_1000AD68C();
        *&v103[0] = swift_slowAlloc();
        *v84 = 136315394;
        v85 = sub_1000E4544(v91, *(&v27 + 1), v103);
        v86 = sub_1000AD6E0(v85);
        *(v84 + 14) = sub_1000E4544(v86, v110, v87);
        _os_log_impl(&_mh_execute_header, v27, v79, "Simulating confirmed in-app buy request of %s for %s because dialogs are disabled.", v84, 0x16u);
        sub_1000AD574();
        swift_arrayDestroy();
        sub_100021754();

        sub_100021754();
      }

      v88 = sub_1000AD87C();
      sub_1000A4294(v88, v89, v28, 1, v99, v98, v90);
      v59 = v30;

      (*(v92 + 8))(v100, v93);
      sub_100019CCC(&v104);
      sub_10002DD3C(v103, &v104);
      v60 = v94;
      goto LABEL_62;
    }
  }

LABEL_30:
  memcpy(v109, (v3 + 576), 0x139uLL);
  if (sub_1000AC6F8(v109) != 1)
  {
    v61 = v109[312];
    sub_1000AD62C(v30 + 11, v30[14]);
    v62 = *(*(v59 + 128) + 16);

    os_unfair_lock_lock(v62);
    *(v59 + 112) = v61 & 1;
    v63 = v62;
    v50 = v97;
    os_unfair_lock_unlock(v63);
  }

  if (v50)
  {
    v64 = v105;
    v65 = v106;
    sub_10004BD98(&v104, v105);
    (*(v65 + 112))(0, v64, v65);
  }

  swift_unknownObjectRelease();

  sub_10002DD3C(&v104, v60);
LABEL_35:
  sub_10001E868();
}

void sub_1000A577C()
{
  sub_10001E850();
  v93 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v87 = v8;
  v88 = v9;
  v11 = v10;
  v13 = v12;
  v81 = type metadata accessor for PromotionalOfferData(0);
  sub_100023520();
  __chkstk_darwin(v14);
  sub_100023510();
  v80 = v16 - v15;
  v17 = sub_1000183C4(&qword_1002B23D8, &unk_10020CE40);
  v18 = sub_100056658(v17);
  __chkstk_darwin(v18);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  sub_1000AD704();
  v89 = v22;
  sub_1000AD62C((v0 + 48), *(v0 + 72));
  v86 = sub_10007935C(v7, v5);
  v92 = v23;
  v24 = sub_1000AD680();
  sub_1000AD62C(v24, v25);
  sub_10007992C();
  v83 = v96[2];
  v84 = v96[1];
  v82 = v96[3];
  v85 = v97;
  v26 = sub_1000AD680();
  sub_1000AD62C(v26, v27);
  v90 = v7;
  v91 = v5;
  sub_10007A340();
  memcpy(v105, v98, sizeof(v105));
  type metadata accessor for OctaneSubscription();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v89 = 0;
    v35 = 0;
LABEL_24:

    v56 = v91;

    v57 = sub_100197CC4();
    v77 = v58;
    sub_1000ACFA4(v95);
    sub_10019814C();
    v78 = v59;
    v60 = sub_1000AD680();
    sub_1000AD62C(v60, v61);
    v62 = v90;
    v63 = sub_10007A5F0();

    v64 = v87;
    swift_unknownObjectRetain();

    v66 = v88;
    v65 = v89;
    *v13 = v64;
    *(v13 + 8) = v66;
    *(v13 + 16) = v65;
    *(v13 + 24) = v35;
    v67 = v86;
    *(v13 + 32) = v81;
    *(v13 + 40) = v67;
    *(v13 + 48) = v92;
    *(v13 + 56) = v62;
    *(v13 + 64) = v56;
    *(v13 + 72) = v57;
    *(v13 + 80) = v77;
    *(v13 + 88) = v3;
    v69 = v83;
    v68 = v84;
    *(v13 + 96) = v80;
    *(v13 + 104) = v68;
    v70 = v82;
    *(v13 + 112) = v69;
    *(v13 + 120) = v70;
    *(v13 + 128) = v85;
    memcpy((v13 + 144), v105, 0x50uLL);
    memcpy((v13 + 224), v95, 0x90uLL);
    *(v13 + 368) = v78;
    *(v13 + 376) = v63;
    *(v13 + 377) = v79;
    goto LABEL_25;
  }

  v29 = v28;
  v30 = v11[51];
  v31 = v11;
  if (!v30 || v11[57] || v11[53] || v11[55] || v11[59])
  {

    v32 = 0;
    v33 = v89;
  }

  else
  {
    v71 = v11[50];

    v95[0] = v71;
    v95[1] = v30;

    sub_1000AD600();
    v72 = v93;
    sub_1000A5F90(v73, v74, v75, v76);
    v33 = v89;
    if (v72)
    {

      *(v31 + 288) = sub_1000AD81C();
      sub_10001C838(&v104);
      *(v31 + 272) = *(v31 + 16);
      sub_10001C838(&v103);
      v102 = *(&v97 + 1);
      sub_1000374B8(&v102, &qword_1002ACA10, qword_1001FEBF0);
      sub_10001C7E4(v98);
      swift_bridgeObjectRelease_n();

      goto LABEL_25;
    }

    v93 = 0;
    swift_bridgeObjectRelease_n();
    v32 = v94;
  }

  v34 = v93;
  sub_1001976E0(0, v33);
  if (!v34)
  {
    sub_1000ACFAC();
    if (sub_10001C990(v20, 1, v81) == 1)
    {
      sub_1000374B8(v33, &qword_1002B23D8, &unk_10020CE40);
      v36 = 0;
    }

    else
    {
      sub_1000AD530();
      v37 = v80;
      sub_1000ACE04();
      sub_1000AD600();
      sub_1000A5F18(v38, v39);
      sub_1000AD434();
      sub_1000ACCEC(v37, v40);
      sub_1000374B8(v33, &qword_1002B23D8, &unk_10020CE40);
      v36 = v95[0];
    }

    v41 = *(v31 + 536);
    v89 = v36;
    if (v41)
    {
      v95[0] = *(v31 + 528);
      v95[1] = v41;

      sub_1000AD600();
      sub_1000A5F90(v42, v43, v44, v45);

      v46 = v94;
    }

    else
    {
      v46 = 0;
    }

    v81 = v32;
    v78 = v46;
    v96[0] = v46;
    if (v29[17])
    {
      v94 = v29[17];

      sub_1000A6000(&v94, v96, v29, v31, v95);

      v80 = v95[0];
    }

    else
    {
      v80 = 0;
    }

    v47 = v29;
    v93 = 0;
    v48 = sub_1000AD4F0();
    sub_10001AE68(v48, v49);
    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1001FE9E0;
    v51 = v47[25];
    *(v50 + 32) = v47[24];
    *(v50 + 40) = v51;

    sub_10008B3C8();
    v53 = v52;
    swift_setDeallocating();
    sub_1001E56B4();
    v54 = sub_10013B560();
    v55 = v54 != 0;
    if (v54)
    {
      sub_1001C19A8();
      if ((v53 & 0xC000000000000001) != 0)
      {
        sub_1001F7808();
        swift_unknownObjectRelease();
      }
    }

    v35 = v78;
    v79 = v55;
    goto LABEL_24;
  }

  *(v31 + 240) = sub_1000AD81C();
  sub_10001C838(&v101);
  *(v31 + 224) = *(v31 + 16);
  sub_10001C838(&v100);
  v99 = *(&v97 + 1);
  sub_1000374B8(&v99, &qword_1002ACA10, qword_1001FEBF0);
  sub_10001C7E4(v98);

LABEL_25:
  sub_10001E868();
}

void sub_1000A5F18(uint64_t *a4@<X4>, uint64_t *a5@<X8>)
{
  sub_1000AB928();
  v9 = v8;
  if (v5)
  {
    sub_1000AC650();
    v10 = swift_allocError();
    *v11 = v9;
    *a4 = v10;
  }

  else
  {
    *a5 = v8;
  }
}

uint64_t sub_1000A5F90@<X0>(void *a1@<X0>, uint64_t *a2@<X5>, uint64_t (*a3)(void, void)@<X6>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1]);
  v8 = result;
  if (v4)
  {
    v9 = sub_1000AC650();
    result = sub_1000276A0(&type metadata for InAppBuyRouteError, v9);
    *v10 = v8;
    *a2 = result;
  }

  else
  {
    *a4 = result;
  }

  return result;
}