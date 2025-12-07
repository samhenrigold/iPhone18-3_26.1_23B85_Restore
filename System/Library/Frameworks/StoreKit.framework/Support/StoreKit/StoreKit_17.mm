void StoreKitServiceConnection.acknowledgeMessage(with:reply:)()
{
  sub_100093D08();
  v132 = v2;
  v133 = v1;
  v130 = v3;
  v131 = v4;
  v5 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v5);
  sub_100089118();
  __chkstk_darwin(v6);
  sub_1000891AC();
  v126 = v7;
  v8 = sub_1001B53DC();
  v119 = type metadata accessor for AcknowledgeMessageTask(v8);
  sub_1000890DC();
  v121 = v9;
  __chkstk_darwin(v10);
  sub_1002199F4();
  v122 = v12;
  v123 = v11;
  __chkstk_darwin(v13);
  sub_1001B5378();
  v124 = v14;
  v15 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  v16 = sub_1000B01B0(v15);
  __chkstk_darwin(v16);
  sub_10018ECCC();
  v125 = v17;
  sub_10018ED10();
  __chkstk_darwin(v18);
  v127 = (&v114 - v19);
  sub_10018ED10();
  __chkstk_darwin(v20);
  v22 = &v114 - v21;
  v134 = type metadata accessor for AcknowledgeMessageRequest(0);
  sub_1000890DC();
  v117 = v23;
  __chkstk_darwin(v24);
  sub_1002199F4();
  v120 = v25;
  v27 = __chkstk_darwin(v26);
  v29 = &v114 - v28;
  v118 = v30;
  __chkstk_darwin(v27);
  sub_10021A63C();
  v31 = type metadata accessor for SKLogger(0);
  sub_1000890DC();
  v114 = v32;
  __chkstk_darwin(v33);
  sub_1002199F4();
  sub_1001564A0(v34);
  v115 = v35;
  __chkstk_darwin(v36);
  v38 = &v114 - v37;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  sub_100107C34(v31, qword_1003F26C8);
  v39 = static os_log_type_t.default.getter();
  v40 = Logger.logObject.getter();
  if (os_log_type_enabled(v40, v39))
  {
    sub_1000B7DC8();
    v41 = swift_slowAlloc();
    v128 = v0;
    v129 = v38;
    v42 = v41;
    sub_1000B7DBC();
    v43 = swift_slowAlloc();
    v136 = v43;
    *v42 = 136446466;
    *(v42 + 4) = sub_100093CF0(v43, v44, &v136);
    sub_1000B04AC();
    *(v42 + 14) = sub_100080210(0xD00000000000001FLL, 0x800000010031E2F0, &v136);
    sub_1000B0648(&_mh_execute_header, v40, v39, "%{public}s%{public}s");
    sub_10021A160();
    swift_arrayDestroy();
    sub_1000B7D68();

    v0 = v128;
    v38 = v129;
    sub_1000B7D68();
  }

  if (qword_1003CBE50 != -1)
  {
    swift_once();
  }

  v45 = sub_10007EDA4(v31, qword_1003F26B0);
  sub_100219414();
  sub_100219094(v46, v38);
  v47 = type metadata accessor for JSONDecoder();
  sub_10021A330(v47);
  JSONDecoder.init()();
  sub_1002185B8(&unk_1003D2110, type metadata accessor for AcknowledgeMessageRequest, &unk_1002FB1CC);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_100219E48();
  v48 = sub_1001B561C();
  sub_100218508(v48, v49);
  v50 = [objc_opt_self() currentConnection];
  v129 = v38;
  if (v50)
  {
    v51 = v50;
    if ([v50 sk_allowClientOverride])
    {
      sub_100105C8C(v0 + *(v134 + 28), v22, &unk_1003D20F0, &qword_1002EB950);
    }

    else
    {
      type metadata accessor for ClientOverride(0);
      sub_1000B0690();
      sub_100081DFC(v65, v66, v67, v68);
    }

    v69 = v127;
    sub_100105C8C(v22, v127, &unk_1003D20F0, &qword_1002EB950);
    v70 = type metadata accessor for ClientOverride(0);
    sub_1001B5430(v69, 1, v70);
    v131 = v51;
    if (v71)
    {
      sub_10013B1E8(v69, &unk_1003D20F0, &qword_1002EB950);
    }

    else
    {
      v72 = *v69;
      v73 = v69[1];
      v74 = sub_1001073F0();
      sub_1000BC7F4(v74, v75);
      sub_100219E24();
      sub_1002190EC();
      if (v73 >> 60 != 15)
      {
        v95 = objc_allocWithZone(type metadata accessor for Client(0));
        sub_1001073F0();
        sub_1001AE0B0();
        if (!v77)
        {
          sub_10021A6AC(0);
          v78 = Logger.logObject.getter();
          if (sub_100093D8C(v78))
          {
            v128 = v0;
            sub_1000B7DC8();
            v79 = swift_slowAlloc();
            v134 = v22;
            v80 = v79;
            sub_1000B7DBC();
            swift_slowAlloc();
            sub_100219560(4.8752e-34);
            v135 = v81;
            v136 = v82;
            v137 = v83;
            v84._countAndFlagsBits = sub_100219CF0();
            String.append(_:)(v84);
            v85._countAndFlagsBits = sub_1000B7DB0();
            String.append(_:)(v85);
            sub_100080210(v136, v137, &v135);
            sub_100107144();

            sub_1002197B4();
            v86 = sub_10021ABE0();
            *(v80 + 14) = sub_100080210(v86, v87, &v135);
            sub_100219784(&_mh_execute_header, v88, v89, "%{public}s%{public}s");
            sub_10021A388(v90, v91, (v69 + 1));
            sub_1000B7D68();

            v22 = v134;
            sub_1000B7D68();
          }

          sub_10008B5E0();
          sub_1000ED9E4();
          v92 = swift_allocError();
          sub_1002195EC(v92, v93);
          v133();

          v94 = v22;
          goto LABEL_24;
        }

LABEL_23:
        v134 = v22;
        v96 = v77;
        v130 = v96;
        v97 = v124;
        sub_100219094(v0, v124);
        v98 = v119;
        *(v97 + *(v119 + 20)) = v96;
        sub_100219094(v45, v97 + *(v98 + 24));
        type metadata accessor for TaskPriority();
        sub_1000B0690();
        sub_100081DFC(v99, v100, v101, v102);
        v103 = v123;
        sub_100219094(v97, v123);
        v104 = v116;
        sub_100219094(v38, v116);
        v105 = v120;
        sub_100219094(v0, v120);
        v106 = (*(v121 + 80) + 32) & ~*(v121 + 80);
        v107 = (v122 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
        v108 = (*(v114 + 80) + v107 + 16) & ~*(v114 + 80);
        v109 = (v115 + *(v117 + 80) + v108) & ~*(v117 + 80);
        v110 = swift_allocObject();
        v111 = sub_10021AC54(v110);
        sub_100218508(v103, v111 + v106);
        v112 = (type metadata accessor for AcknowledgeMessageRequest + v107);
        v113 = v132;
        *v112 = v133;
        v112[1] = v113;
        sub_100218508(v104, type metadata accessor for AcknowledgeMessageRequest + v108);
        sub_100219E48();
        sub_100218508(v105, type metadata accessor for AcknowledgeMessageRequest + v109);

        sub_1001C5454();
        sub_100165CBC();

        sub_1002190EC();
        v94 = v134;
LABEL_24:
        sub_10013B1E8(v94, &unk_1003D20F0, &qword_1002EB950);
        goto LABEL_25;
      }
    }

    type metadata accessor for Client(0);
    sub_100105C8C(v22, v125, &unk_1003D20F0, &qword_1002EB950);
    v76 = v51;
    sub_1001ABF2C();
    goto LABEL_23;
  }

  sub_10021A6AC(0);
  v52 = Logger.logObject.getter();
  if (sub_100093D8C(v52))
  {
    v128 = v0;
    sub_1000B7DC8();
    v53 = swift_slowAlloc();
    sub_1000B7DBC();
    swift_slowAlloc();
    sub_100219560(4.8752e-34);
    v135 = v54;
    v136 = v55;
    v137 = v56;
    v57._countAndFlagsBits = sub_100219CF0();
    String.append(_:)(v57);
    v58._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v58);
    sub_100080210(v136, v137, &v135);
    sub_100107144();

    sub_1002197B4();
    *(v53 + 14) = sub_100080210(0xD000000000000033, 0x800000010031E340, &v135);
    sub_100219784(&_mh_execute_header, v59, v60, "%{public}s%{public}s");
    sub_10021A388(v61, v62, (v29 + 8));
    sub_1000B7D68();

    sub_1000B7D68();
  }

  sub_10008B5E0();
  sub_1000ED9E4();
  v63 = swift_allocError();
  sub_1002195EC(v63, v64);
  v133();

LABEL_25:
  sub_1002193D0();
  sub_1002190EC();
  sub_1002190EC();
  sub_100093CB8();
}

uint64_t sub_1001F70C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v9 = swift_task_alloc();
  v8[6] = v9;
  *v9 = v8;
  v9[1] = sub_1001F7158;

  return sub_100148008();
}

uint64_t sub_1001F7158()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001F7250()
{
  sub_10008BE9C();
  (*(v0 + 16))(0);
  sub_100098AC4();

  return v1();
}

void sub_1001F74D0(uint64_t a1, uint64_t a2)
{
  v76 = sub_100080FB4(&qword_1003D2120, &qword_1002FACB8);
  v3 = __chkstk_darwin(v76);
  v75 = (&v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v74 = &v65 - v5;
  v6 = type metadata accessor for ClientOverrideRequest(0);
  v72 = *(v6 - 8);
  v73 = v6;
  __chkstk_darwin(v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBE58 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v9 = type metadata accessor for SKLogger(0);
    v10 = sub_10007EDA4(v9, qword_1003F26C8);
    v11 = static os_log_type_t.default.getter();
    v77 = v10;
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v84[0] = swift_slowAlloc();
      *v13 = 136446466;
      *(v13 + 4) = sub_100080210(0, 0xE000000000000000, v84);
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_100080210(0xD000000000000017, 0x800000010031E3B0, v84);
      _os_log_impl(&_mh_execute_header, v12, v11, "%{public}s%{public}s", v13, 0x16u);
      swift_arrayDestroy();
    }

    v14 = [objc_opt_self() currentConnection];
    if (!v14)
    {
      goto LABEL_27;
    }

    v15 = v14;
    if (![v14 sk_allowClientOverride])
    {

LABEL_27:
      v56 = static os_log_type_t.error.getter();
      v57 = Logger.logObject.getter();
      if (os_log_type_enabled(v57, v56))
      {
        v58 = swift_slowAlloc();
        v84[0] = swift_slowAlloc();
        *v58 = 136446466;
        *(v58 + 4) = sub_100080210(0, 0xE000000000000000, v84);
        *(v58 + 12) = 2082;
        *(v58 + 14) = sub_100080210(0xD000000000000030, 0x800000010031E3D0, v84);
        _os_log_impl(&_mh_execute_header, v57, v56, "%{public}s%{public}s", v58, 0x16u);
        swift_arrayDestroy();
      }

      sub_10008B5E0();
      swift_allocError();
      *v59 = 3;
      v60 = _convertErrorToNSError(_:)();
      (*(a2 + 16))(a2, 0, v60);

      _Block_release(a2);
      return;
    }

    type metadata accessor for Client(0);
    v16 = sub_1001B1F00();
    v17 = v16[2];
    if (!v17)
    {
      break;
    }

    v65 = v15;
    v66 = a2;
    v84[0] = _swiftEmptyArrayStorage;
    sub_10021350C(0, v17, 0);
    v18 = v84[0];
    v21 = sub_10017C828(v16);
    v22 = 0;
    v23 = v16 + 8;
    v68 = v19;
    v69 = v17;
    v67 = v16 + 9;
    a2 = 1;
    v70 = v16;
    v71 = v16 + 8;
    while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(v16 + 32))
    {
      if ((v23[v21 >> 6] & (1 << v21)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v16 + 9) != v19)
      {
        goto LABEL_36;
      }

      v81 = v21 >> 6;
      v82 = 1 << v21;
      v79 = v22;
      v80 = v19;
      v78 = v20;
      v24 = v76;
      v83 = v18;
      v25 = *(v76 + 48);
      v26 = v16[7];
      v27 = (v16[6] + 16 * v21);
      v29 = *v27;
      v28 = v27[1];
      v30 = (type metadata accessor for Client.TimedClientOverride(0) - 8);
      v31 = v8;
      v32 = v74;
      sub_100219094(v26 + *(*v30 + 72) * v21, &v74[v25]);
      v33 = v75;
      *v75 = v29;
      *(v33 + 8) = v28;
      v34 = v33 + *(v24 + 48);
      v35 = &v32[v25];
      v8 = v31;
      sub_100218508(v35, v34);
      v36 = v73;
      v37 = *(v73 + 20);
      sub_100219094(v34, &v31[v37]);
      v38 = type metadata accessor for ClientOverride(0);
      sub_100081DFC(&v31[v37], 0, 1, v38);
      v39 = v30[7];
      v40 = *(v36 + 28);
      v41 = type metadata accessor for Date();
      v42 = v34 + v39;
      v18 = v83;
      (*(*(v41 - 8) + 16))(&v31[v40], v42, v41);

      sub_1001CA63C();
      *v31 = v29;
      *(v31 + 1) = v28;
      v43 = &v31[*(v36 + 24)];
      *v43 = v44;
      *(v43 + 1) = v45;

      sub_10013B1E8(v33, &qword_1003D2120, &qword_1002FACB8);
      v84[0] = v18;
      v47 = v18[2];
      v46 = v18[3];
      if (v47 >= v46 >> 1)
      {
        sub_10021350C(v46 > 1, v47 + 1, 1);
        v18 = v84[0];
      }

      v18[2] = v47 + 1;
      sub_100218508(v31, v18 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v47);
      v16 = v70;
      v23 = v71;
      a2 = 1;
      v48 = 1 << *(v70 + 32);
      if (v21 >= v48)
      {
        goto LABEL_37;
      }

      v49 = v71[v81];
      if ((v49 & v82) == 0)
      {
        goto LABEL_38;
      }

      if (*(v70 + 9) != v80)
      {
        goto LABEL_39;
      }

      v50 = v49 & (-2 << (v21 & 0x3F));
      if (v50)
      {
        v48 = __clz(__rbit64(v50)) | v21 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v51 = v81 << 6;
        v52 = v81 + 1;
        v53 = &v67[v81];
        while (v52 < (v48 + 63) >> 6)
        {
          v55 = *v53++;
          v54 = v55;
          v51 += 64;
          ++v52;
          if (v55)
          {
            sub_10013AC84(v21, v80, v78 & 1);
            v48 = __clz(__rbit64(v54)) + v51;
            goto LABEL_24;
          }
        }

        sub_10013AC84(v21, v80, v78 & 1);
      }

LABEL_24:
      v20 = 0;
      v22 = v79 + 1;
      v21 = v48;
      v19 = v68;
      if (v79 + 1 == v69)
      {

        v15 = v65;
        a2 = v66;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_33:
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v84[0] = v18;
  sub_100080FB4(&qword_1003D2128, &qword_1002FACC0);
  sub_100214A70();
  v61 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v63 = v62;

  sub_1000BC808(v61, v63);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa, 0);

  sub_10008E168(v61, v63);
  sub_10008E168(v61, v63);

  _Block_release(a2);
}

void StoreKitServiceConnection.clientOverrides(reply:)()
{
  sub_100093D08();
  v2 = v1;
  v87 = sub_100080FB4(&qword_1003D2120, &qword_1002FACB8);
  sub_100098B7C();
  __chkstk_darwin(v3);
  sub_10018ECCC();
  v86 = v4;
  sub_10018ED10();
  __chkstk_darwin(v5);
  sub_1001B5378();
  v85 = v6;
  v7 = sub_1001B53DC();
  type metadata accessor for ClientOverrideRequest(v7);
  sub_1000890DC();
  v84 = v8;
  __chkstk_darwin(v8);
  sub_100093D40();
  v11 = (v10 - v9);
  if (qword_1003CBE58 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v12 = type metadata accessor for SKLogger(0);
    sub_100107C34(v12, qword_1003F26C8);
    static os_log_type_t.default.getter();
    v13 = Logger.logObject.getter();
    if (sub_100093D8C(v13))
    {
      sub_1000B7DC8();
      v14 = swift_slowAlloc();
      sub_1000B7DBC();
      v15 = swift_slowAlloc();
      v92[0] = v15;
      *v14 = 136446466;
      v17 = sub_100093CF0(v15, v16, v92);
      sub_100093BF8(v17);
      *(v14 + 14) = sub_100080210(0xD000000000000017, 0x800000010031E3B0, v92);
      sub_10019DBA8();
      sub_10021A5DC(v18, v19, v20, v21);
      sub_10021A160();
      swift_arrayDestroy();
      sub_1000B7D68();

      sub_1001B5198();
    }

    v22 = [objc_opt_self() currentConnection];
    if (!v22)
    {
      goto LABEL_27;
    }

    v0 = v22;
    if (![v22 sk_allowClientOverride])
    {

LABEL_27:
      static os_log_type_t.error.getter();
      v57 = Logger.logObject.getter();
      if (sub_100093D8C(v57))
      {
        sub_1000B7DC8();
        v58 = swift_slowAlloc();
        sub_1000B7DBC();
        v59 = swift_slowAlloc();
        v92[0] = v59;
        *v58 = 136446466;
        v61 = sub_100093CF0(v59, v60, v92);
        sub_100093BF8(v61);
        *(v58 + 14) = sub_100080210(0xD000000000000030, 0x800000010031E3D0, v92);
        sub_10019DBA8();
        sub_10021A5DC(v62, v63, v64, v65);
        sub_10021A160();
        swift_arrayDestroy();
        sub_1000B7D68();

        sub_1001B5198();
      }

      sub_10008B5E0();
      sub_1000ED9E4();
      swift_allocError();
      v67 = sub_10021961C(v66, 3);
      (v2)(v67);
      sub_100093CB8();

      return;
    }

    type metadata accessor for Client(0);
    v23 = sub_1001B1F00();
    v24 = v23[2];
    if (!v24)
    {
      break;
    }

    v77 = v0;
    v78 = v2;
    v92[0] = _swiftEmptyArrayStorage;
    sub_10021350C(0, v24, 0);
    v25 = v92[0];
    v28 = sub_10017C828(v23);
    v29 = 0;
    v30 = v23 + 8;
    v80 = v26;
    v81 = v24;
    v79 = v23 + 9;
    v2 = 1;
    v82 = v23;
    v83 = v23 + 8;
    while ((v28 & 0x8000000000000000) == 0 && v28 < 1 << *(v23 + 32))
    {
      if ((v30[v28 >> 6] & (1 << v28)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v23 + 9) != v26)
      {
        goto LABEL_36;
      }

      v91 = v28 >> 6;
      v89 = v29;
      v90 = v26;
      v88 = v27;
      v31 = *(v87 + 48);
      v32 = v23[6];
      v33 = v23[7];
      v34 = (v32 + 16 * v28);
      v36 = *v34;
      v35 = v34[1];
      v37 = (type metadata accessor for Client.TimedClientOverride(0) - 8);
      sub_100219094(v33 + *(*v37 + 72) * v28, v85 + v31);
      *v86 = v36;
      v86[1] = v35;
      v38 = v86 + *(v87 + 48);
      sub_100218508(v85 + v31, v38);
      v0 = v84;
      v39 = v84[5];
      sub_100219094(v38, &v11[v39]);
      v40 = type metadata accessor for ClientOverride(0);
      sub_100081DFC(&v11[v39], 0, 1, v40);
      v41 = v37[7];
      v42 = v84[7];
      type metadata accessor for Date();
      sub_100098B7C();
      (*(v43 + 16))(&v11[v42], v38 + v41);

      sub_1001CA63C();
      *v11 = v36;
      *(v11 + 1) = v35;
      v44 = &v11[v84[6]];
      *v44 = v45;
      *(v44 + 1) = v46;

      sub_10013B1E8(v86, &qword_1003D2120, &qword_1002FACB8);
      v92[0] = v25;
      v48 = v25[2];
      v47 = v25[3];
      if (v48 >= v47 >> 1)
      {
        sub_10021350C(v47 > 1, v48 + 1, 1);
        v25 = v92[0];
      }

      v25[2] = v48 + 1;
      sub_100219DB8();
      sub_100218508(v11, v49);
      v23 = v82;
      v30 = v83;
      v2 = 1;
      v50 = 1 << *(v82 + 32);
      if (v28 >= v50)
      {
        goto LABEL_37;
      }

      v51 = v83[v91];
      if ((v51 & (1 << v28)) == 0)
      {
        goto LABEL_38;
      }

      if (*(v82 + 9) != v90)
      {
        goto LABEL_39;
      }

      v52 = v51 & (-2 << (v28 & 0x3F));
      if (v52)
      {
        v50 = __clz(__rbit64(v52)) | v28 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v0 = (v91 << 6);
        v53 = v91 + 1;
        v54 = &v79[v91];
        while (v53 < (v50 + 63) >> 6)
        {
          v56 = *v54++;
          v55 = v56;
          v0 += 16;
          ++v53;
          if (v56)
          {
            sub_10013AC84(v28, v90, v88 & 1);
            v50 = v0 + __clz(__rbit64(v55));
            goto LABEL_24;
          }
        }

        sub_10013AC84(v28, v90, v88 & 1);
      }

LABEL_24:
      v27 = 0;
      v29 = v89 + 1;
      v28 = v50;
      v26 = v80;
      if (v89 + 1 == v81)
      {

        v2 = v78;
        v0 = v77;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    sub_1000B7CD0();
    swift_once();
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_33:
  v69 = type metadata accessor for JSONEncoder();
  sub_10021A330(v69);
  JSONEncoder.init()();
  v92[0] = v25;
  sub_100080FB4(&qword_1003D2128, &qword_1002FACC0);
  sub_100214A70();
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  v70 = sub_1000D4078();
  sub_1000BC808(v70, v71);
  v72 = sub_1000D4078();
  (v2)(v72);

  v73 = sub_1000D4078();
  sub_10008E168(v73, v74);
  v75 = sub_1000D4078();
  sub_10008E168(v75, v76);

  sub_100093CB8();
}

void sub_1001F8564(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_1001F85D8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v5 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for ClientOverride(0);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClientOverrideRequest(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v48 = &v41 - v15;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1002185B8(&unk_1003D2140, type metadata accessor for ClientOverrideRequest, &unk_1002F4D30);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_100218508(v14, v48);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SKLogger(0);
  v17 = sub_10007EDA4(v16, qword_1003F26C8);
  v18 = (v48 + *(v11 + 24));
  v19 = *v18;
  v20 = v18[1];
  v21 = static os_log_type_t.default.getter();

  v47 = v17;
  v22 = Logger.logObject.getter();

  v23 = os_log_type_enabled(v22, v21);
  v46 = v19;
  if (v23)
  {
    v42 = "lientOverrideRequest ";
    v24 = swift_slowAlloc();
    v45 = a4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v43 = v26;
    v44 = v10;
    *v25 = 136446466;
    v49 = v26;
    v50 = 91;
    v51 = 0xE100000000000000;
    v27._countAndFlagsBits = v19;
    v27._object = v20;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 8285;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    v29 = sub_100080210(v50, v51, &v49);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_100080210(0xD00000000000001BLL, v42 | 0x8000000000000000, &v49);
    _os_log_impl(&_mh_execute_header, v22, v21, "%{public}s%{public}s", v25, 0x16u);
    swift_arrayDestroy();
    v10 = v44;

    a4 = v45;
  }

  v30 = [objc_opt_self() currentConnection];
  if (v30)
  {
    v31 = v30;
    if ([v30 sk_allowClientOverride])
    {
      sub_100105C8C(v48 + *(v11 + 20), v7, &unk_1003D20F0, &qword_1002EB950);
      if (sub_100081D0C(v7, 1, v8) == 1)
      {
        sub_10013B1E8(v7, &unk_1003D20F0, &qword_1002EB950);
        type metadata accessor for Client(0);
        sub_1001B2A60();
      }

      else
      {
        sub_100218508(v7, v10);
        type metadata accessor for Client(0);
        sub_1001B2578();
        sub_1002190EC();
      }

      a4[2](a4, 0);

      goto LABEL_15;
    }
  }

  v32 = static os_log_type_t.error.getter();

  v33 = Logger.logObject.getter();

  if (os_log_type_enabled(v33, v32))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 136446466;
    v49 = v35;
    v50 = 91;
    v51 = 0xE100000000000000;
    v36._countAndFlagsBits = v46;
    v36._object = v20;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 8285;
    v37._object = 0xE200000000000000;
    String.append(_:)(v37);
    v38 = sub_100080210(v50, v51, &v49);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_100080210(0xD00000000000002ALL, 0x800000010031E460, &v49);
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s%{public}s", v34, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  swift_allocError();
  *v39 = 3;
  v40 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v40);

LABEL_15:
  sub_1002190EC();
  _Block_release(a4);
}

void StoreKitServiceConnection.setClientOverride(_:reply:)()
{
  sub_100093D08();
  v38 = v2;
  sub_1001D4F48();
  v3 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  sub_1000B01B0(v3);
  sub_100089118();
  __chkstk_darwin(v4);
  sub_100089240();
  type metadata accessor for ClientOverride(0);
  sub_100098B7C();
  __chkstk_darwin(v5);
  sub_100093D40();
  v6 = type metadata accessor for ClientOverrideRequest(0);
  sub_100098B7C();
  __chkstk_darwin(v7);
  sub_1001460C4();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_10021A0BC();
  v12 = type metadata accessor for JSONDecoder();
  sub_10021A330(v12);
  JSONDecoder.init()();
  sub_1002185B8(&unk_1003D2140, type metadata accessor for ClientOverrideRequest, &unk_1002F4D30);
  sub_10021ABC8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_100219DB8();
  sub_100218508(v10, v0);
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v13 = type metadata accessor for SKLogger(0);
  sub_100107C34(v13, qword_1003F26C8);
  v14 = *(v0 + *(v6 + 24));
  v15 = static os_log_type_t.default.getter();

  v16 = Logger.logObject.getter();

  if (os_log_type_enabled(v16, v15))
  {
    sub_1000B7DC8();
    v17 = swift_slowAlloc();
    sub_1000B7DBC();
    v37 = swift_slowAlloc();
    *v17 = 136446466;
    sub_100219444(v37);
    v18._countAndFlagsBits = sub_100123E9C();
    String.append(_:)(v18);
    v19._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v19);
    sub_100219AA4();
    sub_100219CE4();

    *(v17 + 4) = v14;
    sub_100219E3C();
    *(v17 + 14) = sub_100080210(0xD00000000000001BLL, 0x800000010031E440, v39);
    sub_10021A5AC(&_mh_execute_header, v16, v15, "%{public}s%{public}s");
    sub_10021A594();
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  v20 = [objc_opt_self() currentConnection];
  if (v20)
  {
    v21 = v20;
    if ([v20 sk_allowClientOverride])
    {
      sub_100105C8C(v0 + *(v6 + 20), v1, &unk_1003D20F0, &qword_1002EB950);
      sub_100219D64();
      sub_1001B5430(v22, v23, v24);
      if (v25)
      {
        sub_10013B1E8(v1, &unk_1003D20F0, &qword_1002EB950);
        type metadata accessor for Client(0);
        sub_1001B2A60();
      }

      else
      {
        v35 = sub_10017CB1C();
        sub_100218508(v35, v36);
        type metadata accessor for Client(0);
        sub_1001B2578();
        sub_100219E24();
        sub_1002190EC();
      }

      (v38)(0);

      goto LABEL_15;
    }
  }

  static os_log_type_t.error.getter();

  v26 = Logger.logObject.getter();

  if (sub_10009F1F4())
  {
    sub_1000B7DC8();
    v27 = swift_slowAlloc();
    sub_1000B7DBC();
    v28 = swift_slowAlloc();
    *v27 = 136446466;
    sub_100219444(v28);
    v29._countAndFlagsBits = sub_100123E9C();
    String.append(_:)(v29);
    v30._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v30);
    sub_100219AA4();
    sub_1000B0494();
    sub_1002198A4();
    *(v27 + 14) = sub_100080210(0xD00000000000002ALL, 0x800000010031E460, v39);
    sub_100219784(&_mh_execute_header, v31, v32, "%{public}s%{public}s");
    sub_100106E34();
    sub_100219550();

    sub_1000B7D68();
  }

  sub_10008B5E0();
  sub_1000ED9E4();
  v33 = swift_allocError();
  sub_100219B0C(v33, v34);
  v38();

LABEL_15:
  sub_1002190EC();
  sub_100093CB8();
}

void sub_1001F9540(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = swift_allocObject();
  v9[2] = &unk_1002FACC8;
  v9[3] = 0;
  v9[4] = sub_100219348;
  v9[5] = v8;
  v9[6] = a3;
  v10 = type metadata accessor for FinishTransactionTask(0);
  v11 = swift_allocBox();
  v13 = v12;
  _Block_copy(a4);

  v14 = a3;
  sub_1000EB4A4(a1, a2, v14, v15, v16, v17, v18, v19, v24, v25, v26, v27, v28, v29, v30, v31);
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  v20 = qword_1003F2700;
  v21 = (v13 + *(v10 + 20));
  v23 = *v21;
  v22 = v21[1];

  sub_1001DF414(v23, v22, 0xD000000000000029, 0x80000001003173B0, 150, v20, 0xD00000000000001BLL, 0x800000010031E490, v11, &unk_1002FAE38, v9, type metadata accessor for FinishTransactionTask, &qword_1003D27D8, type metadata accessor for FinishTransactionTask, &unk_1002EE374, type metadata accessor for FinishTransactionTask, type metadata accessor for FinishTransactionTask, &unk_1003909F0, &unk_1002FAF48);

  _Block_release(a4);
}

uint64_t StoreKitServiceConnection.finishTransaction(_:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10021AB84();
  sub_1000EDD24();
  v7 = swift_allocObject();
  v7[2] = &unk_1002FACC8;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = a4;
  v7[6] = v5;
  v8 = type metadata accessor for FinishTransactionTask(0);
  v9 = swift_allocBox();
  v11 = v10;

  v12 = v5;
  v13 = sub_1000B0220();
  sub_1000EB4A4(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28, v29, v30, v31, v32, v33);
  if (qword_1003CBE98 != -1)
  {
    sub_1000ED744();
    swift_once();
  }

  v21 = qword_1003F2700;
  v22 = (v11 + *(v8 + 20));
  v24 = *v22;
  v23 = v22[1];

  sub_1001DF414(v24, v23, 0xD000000000000029, 0x80000001003173B0, 150, v21, 0xD00000000000001BLL, 0x800000010031E490, v9, &unk_1002FACD8, v7, type metadata accessor for FinishTransactionTask, &qword_1003D27D8, type metadata accessor for FinishTransactionTask, &unk_1002EE374, type metadata accessor for FinishTransactionTask, type metadata accessor for FinishTransactionTask, &unk_1003909F0, &unk_1002FAF48);
}

uint64_t sub_1001F9A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000AFC98;

  return sub_1001B77C0();
}

void sub_1001F9B48(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002192F8;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = &unk_1002FACE0;
  *(v10 + 32) = 0;
  *(v10 + 40) = sub_10016C648;
  *(v10 + 48) = v9;
  v11 = type metadata accessor for LegacyRestoreCompletedTransactionsTask(0);
  v12 = swift_allocBox();
  v14 = v13;
  swift_retain_n();
  _Block_copy(a4);
  a3;

  sub_1000EB6C8(a1, a2, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, v29, v30, v31, v32);
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  v21 = qword_1003F2700;
  v22 = (v14 + *(v11 + 28));
  v23 = *v22;
  v24 = v22[1];

  sub_1001DE4A4(v23, v24, 0xD000000000000029, 0x80000001003173B0, 150, v21, 0xD00000000000002CLL, 0x800000010031E4B0, v12, &unk_1002FAE30, v10);

  _Block_release(a4);
}

uint64_t sub_1001F9FFC(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for LegacyTransactionManager();
  v1[3] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_1001FA0C8;

  return sub_1001A2A70();
}

uint64_t sub_1001FA0C8()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

void sub_1001FA1E8(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100216A74;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = &unk_1002FACF0;
  v10[4] = 0;
  v10[5] = sub_10016C648;
  v10[6] = v9;
  v11 = type metadata accessor for LegacyUnfinishedTransactionsTask(0);
  v12 = swift_allocBox();
  v14 = v13;
  swift_retain_n();
  _Block_copy(a4);
  a3;

  sub_1000EB8EC(a1, a2, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, v29, v30, v31, v32);
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  v21 = qword_1003F2700;
  v22 = (v14 + *(v11 + 28));
  v24 = *v22;
  v23 = v22[1];

  sub_1001DF414(v24, v23, 0xD000000000000029, 0x80000001003173B0, 150, v21, 0xD000000000000026, 0x800000010031E4E0, v12, &unk_1002FAE28, v10, type metadata accessor for LegacyUnfinishedTransactionsTask, &qword_1003D27C8, type metadata accessor for LegacyUnfinishedTransactionsTask, &unk_1002EE170, type metadata accessor for LegacyUnfinishedTransactionsTask, type metadata accessor for LegacyUnfinishedTransactionsTask, &unk_1003909A0, &unk_1002FAF28);

  _Block_release(a4);
}

uint64_t StoreKitServiceConnection.legacyUnfinishedTransactions(_:reply:)()
{
  sub_1000EDCC8();
  sub_1000B7E4C();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v0;
  sub_1000EDD24();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = &unk_1002FACF0;
  v7[4] = 0;
  v7[5] = sub_10016C648;
  v7[6] = v6;
  v8 = type metadata accessor for LegacyUnfinishedTransactionsTask(0);
  swift_allocBox();
  sub_100219AFC();
  swift_retain_n();
  v9 = v1;
  sub_1000EDD18();

  v10 = sub_1000EDD04();
  sub_1000EB8EC(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25, v26, v27, v28, v29, v30, v31);
  if (v2)
  {

    swift_deallocBox();
    swift_errorRetain();
    v22 = sub_100219B80();
    v3(v22);
  }

  else
  {
    if (qword_1003CBE98 != -1)
    {
      sub_1000ED744();
      swift_once();
    }

    v18 = qword_1003F2700;
    v19 = (v5 + *(v8 + 28));
    v21 = *v19;
    v20 = v19[1];
    sub_10021AA18();

    sub_1001DF414(v21, v20, 0xD000000000000029, v5 | 0x8000000000000000, 150, v18, 0xD000000000000026, 0x800000010031E4E0, v4, &unk_1002FACF8, v7, type metadata accessor for LegacyUnfinishedTransactionsTask, &qword_1003D27C8, type metadata accessor for LegacyUnfinishedTransactionsTask, &unk_1002EE170, type metadata accessor for LegacyUnfinishedTransactionsTask, type metadata accessor for LegacyUnfinishedTransactionsTask, &unk_1003909A0, &unk_1002FAF28);
  }
}

uint64_t sub_1001FA7D4(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for LegacyTransactionManager();
  v1[3] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_1001FA8A0;

  return sub_1001A42E8();
}

uint64_t sub_1001FA8A0()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001FA9A8()
{
  sub_10008BE9C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v1;
  sub_100098AA4();

  return v3();
}

uint64_t sub_1001FAA08()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

void sub_1001FAA7C(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = swift_allocObject();
  v9[2] = &unk_1002FAD00;
  v9[3] = 0;
  v9[4] = sub_100216A58;
  v9[5] = v8;
  v9[6] = a3;
  v10 = swift_allocObject();
  _Block_copy(a4);

  v11 = a3;
  v12 = sub_1000EBB10(a1, a2);
  v14 = v13;
  *(v10 + 16) = v12;
  *(v10 + 24) = v13;
  *(v10 + 32) = v15;
  *(v10 + 40) = v16 & 1;
  if (qword_1003CBE98 != -1)
  {
    swift_once();
    v12 = *(v10 + 16);
    v14 = *(v10 + 24);
  }

  v17 = qword_1003F2700;

  sub_1001E0098(v12, v14, 0xD000000000000029, 0x80000001003173B0, 150, v17, 0xD00000000000001CLL, 0x800000010031E510, v10, &unk_1002FAE20, v9);

  _Block_release(a4);
}

uint64_t sub_1001FAECC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A7644;

  return sub_1001BE66C(v4, v3, v5, v6);
}

void sub_1001FAF94(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v5 - 8);
  v7 = &v49 - v6;
  v8 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  __chkstk_darwin(v8 - 8);
  v53 = &v49 - v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = objc_opt_self();
  _Block_copy(a3);
  v12 = [v11 lib_shortLogKey];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SKLogger(0);
  v17 = sub_10007EDA4(v16, qword_1003F26C8);

  v18 = static os_log_type_t.default.getter();

  v54 = v17;
  v19 = Logger.logObject.getter();

  v20 = os_log_type_enabled(v19, v18);
  v52 = v13;
  if (v20)
  {
    v50 = a1;
    v21 = swift_slowAlloc();
    v51 = v10;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 136446466;
    v55 = 91;
    v56 = 0xE100000000000000;
    v57 = v23;
    v24._countAndFlagsBits = v13;
    v24._object = v15;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 8285;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    v26 = v7;
    v27 = sub_100080210(v55, v56, &v57);

    *(v22 + 4) = v27;
    v7 = v26;
    *(v22 + 12) = 2082;
    a1 = v50;
    *(v22 + 14) = sub_100080210(0xD000000000000013, 0x800000010031E530, &v57);
    _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v22, 0x16u);
    swift_arrayDestroy();

    v10 = v51;
  }

  v28 = [objc_opt_self() currentConnection];
  if (v28)
  {
    v29 = v28;
    type metadata accessor for Client(0);
    v30 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v53, 1, 1, v30);
    v31 = v29;
    sub_1001ABF2C();
    v42 = v41;

    v43 = type metadata accessor for TaskPriority();
    sub_100081DFC(v7, 1, 1, v43);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v42;
    v44[5] = a1;
    v44[6] = v52;
    v44[7] = v15;
    v44[8] = sub_1002169E8;
    v44[9] = v10;
    v45 = v42;
    v46 = a1;

    v47 = v45;
    v48 = v46;

    sub_1000B5BC0(0, 0, v7, &unk_1002FAE18, v44);

    sub_10013B1E8(v7, &unk_1003CE2B0, &qword_1002EEE80);
  }

  else
  {

    v32 = static os_log_type_t.error.getter();

    v33 = Logger.logObject.getter();

    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 136446466;
      v55 = 91;
      v56 = 0xE100000000000000;
      v57 = v35;
      v36._countAndFlagsBits = v52;
      v36._object = v15;
      String.append(_:)(v36);
      v37._countAndFlagsBits = 8285;
      v37._object = 0xE200000000000000;
      String.append(_:)(v37);
      v38 = sub_100080210(v55, v56, &v57);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v34 + 14) = sub_100080210(0xD000000000000036, 0x800000010031E550, &v57);
      _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s%{public}s", v34, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v39 = 1;
    v40 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v40);
  }

  _Block_release(a3);
}

void StoreKitServiceConnection.policy(with:reply:)()
{
  sub_100093D08();
  v4 = v3;
  v6 = v5;
  v49 = v7;
  v8 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v8);
  sub_100089118();
  __chkstk_darwin(v9);
  sub_100089360();
  v10 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  sub_1000B01B0(v10);
  sub_100089118();
  __chkstk_darwin(v11);
  sub_10021A64C();
  v12 = [objc_opt_self() lib_shortLogKey];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v16 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v16, qword_1003F26C8);
  sub_1000EDD18();

  static os_log_type_t.default.getter();
  sub_10021A8B0();
  v17 = Logger.logObject.getter();

  if (os_log_type_enabled(v17, v1))
  {
    sub_1000B7DC8();
    v12 = swift_slowAlloc();
    sub_1000B7DBC();
    v18 = swift_slowAlloc();
    *v12 = 136446466;
    sub_100106B4C(v18);
    v19._countAndFlagsBits = v13;
    v19._object = v15;
    String.append(_:)(v19);
    v20._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v20);
    sub_100219A70();
    sub_1000B0494();
    *(v12 + 1) = v6;
    sub_100219E3C();
    *(v12 + 14) = sub_100080210(0xD000000000000013, 0x800000010031E530, &v50);
    sub_10021A5AC(&_mh_execute_header, v17, v1, "%{public}s%{public}s");
    sub_100098BC0();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  if ([objc_opt_self() currentConnection])
  {
    v21 = sub_1000B06A8();
    type metadata accessor for Client(v21);
    v22 = sub_1001B52B0();
    type metadata accessor for ClientOverride(v22);
    sub_1000B0690();
    sub_100081DFC(v23, v24, v25, v26);
    v27 = v12;
    sub_1001ABF2C();
    sub_10013B8D4();

    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v36, v37, v38, v39);
    sub_10021A790();
    v40 = swift_allocObject();
    v41 = sub_10021AC54(v40);
    v41[4] = v12;
    v41[5] = v49;
    v41[6] = v13;
    v41[7] = v15;
    v41[8] = v6;
    v41[9] = v4;
    v42 = v12;
    v43 = v49;
    sub_10021A0FC();

    v44 = v42;
    v45 = v49;

    v46 = sub_1001C5454();
    sub_1000B5BC0(v46, v47, v2, v48, &off_1002EA000);

    sub_10013B1E8(v2, &unk_1003CE2B0, &qword_1002EEE80);
  }

  else
  {

    static os_log_type_t.error.getter();
    sub_10021A8B0();
    Logger.logObject.getter();
    sub_10021A0FC();

    if (sub_10021A898())
    {
      sub_1000B7DC8();
      v12 = swift_slowAlloc();
      sub_1000B7DBC();
      v28 = swift_slowAlloc();
      *v12 = 136446466;
      sub_100106B4C(v28);
      v30._countAndFlagsBits = v29;
      v30._object = v15;
      String.append(_:)(v30);
      v31._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v31);
      sub_100219A70();
      sub_1000B0494();
      *(v12 + 1) = v6;
      sub_100219E3C();
      *(v12 + 14) = sub_100080210(0xD000000000000036, 0x800000010031E550, &v50);
      sub_10021A348(&_mh_execute_header, v32, v33, "%{public}s%{public}s");
      sub_100106E34();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v34 = swift_allocError();
    sub_1002195EC(v34, v35);
    v6(0, v12);
  }

  sub_100093CB8();
}

uint64_t sub_1001FBA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  type metadata accessor for URLError.Code();
  v8[9] = swift_task_alloc();
  v9 = type metadata accessor for URLError();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[13] = v10;
  *v10 = v8;
  v10[1] = sub_1001FBB9C;

  return sub_1001589B4();
}

uint64_t sub_1001FBB9C()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 112) = v0;

  if (!v0)
  {
    *(v5 + 120) = v3;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001FBCA4()
{
  sub_100098BB4();
  v2 = *(v1 + 56);
  v3 = *(v1 + 120);
  v4 = sub_1000D3ED4();
  v2(v4, 0);

  sub_100098AC4();

  return v5();
}

uint64_t sub_1001FBD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10013BDE0();
  sub_1000B02BC();
  v10[4] = v10[14];
  swift_errorRetain();
  v13 = sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
  v14 = swift_dynamicCast();
  v15 = v10[14];
  if ((v14 & 1) != 0 || (, v10[6] = v15, swift_errorRetain(), sub_10021A2F4(), swift_dynamicCast()) && (v22 = v10[3], v23 = v22 - 1, sub_1002176D4(v10[2], v22), v23 >= 3))
  {

    v16 = v10[7];
    static URLError.Code.badServerResponse.getter();
    sub_1000B61D4(_swiftEmptyArrayStorage);
    sub_100219D70();
    sub_1002185B8(v17, v18, &protocol conformance descriptor for URLError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v19 = URLError._nsError.getter();
    v20 = sub_1000C43E8();
    v21(v20);
    v16(0, v19);

    goto LABEL_15;
  }

  v24 = _convertErrorToNSError(_:)();
  v25 = [v24 code];

  if ((v25 - 203) < 2)
  {
    sub_10021986C();
    static URLError.Code.resourceUnavailable.getter();
    goto LABEL_14;
  }

  if (v25 == 1)
  {
    sub_10021986C();
    static URLError.Code.timedOut.getter();
    goto LABEL_14;
  }

  if (v25 == 200)
  {
    sub_10021986C();
    static URLError.Code.badURL.getter();
    goto LABEL_14;
  }

  if (v25 == 202)
  {
    sub_10021986C();
    static URLError.Code.cannotParseResponse.getter();
LABEL_14:
    sub_1000B61D4(_swiftEmptyArrayStorage);
    sub_100219D70();
    sub_1002185B8(v26, v27, &protocol conformance descriptor for URLError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = URLError._nsError.getter();
    (*(v11 + 8))(v13, v15);
    v12(0, v28);

    goto LABEL_15;
  }

  v38 = v10[14];
  v39 = v10[7];
  swift_errorRetain();
  v39(0, v38);

LABEL_15:

  sub_100098AC4();
  sub_10013BDF8();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

void sub_1001FC054(int a1, int a2, int a3, void *a4)
{
  v7 = sub_10021AD38(a1, a2, a3, a4);
  _Block_copy(v7);
  v8 = v5;
  v9 = v6;
  v4(v8, v9, v7);
  _Block_release(v7);
}

void sub_1001FC0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(const void *, void *))
{
  v69 = a3;
  v7 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v7 - 8);
  v70 = &v64 - v8;
  v9 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  v10 = __chkstk_darwin(v9 - 8);
  v71 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v64 - v12;
  v14 = type metadata accessor for ProductRequest(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v74 = &v64 - v19;
  __chkstk_darwin(v18);
  v72 = &v64 - v20;
  v73 = swift_allocObject();
  *(v73 + 16) = a5;
  v75 = a5;
  _Block_copy(a5);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for SKLogger(0);
  v22 = sub_10007EDA4(v21, qword_1003F26C8);
  v23 = static os_log_type_t.default.getter();
  v24 = Logger.logObject.getter();
  if (os_log_type_enabled(v24, v23))
  {
    v67 = v22;
    v65 = v15;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v66 = a2;
    v77 = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_100080210(0, 0xE000000000000000, &v77);
    *(v25 + 12) = 2082;
    v15 = v65;
    *(v25 + 14) = sub_100080210(0xD00000000000001ELL, 0x800000010031E590, &v77);
    _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1002185B8(&qword_1003CC680, type metadata accessor for ProductRequest, &unk_1002EBE68);
  v27 = v74;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v28 = v72;
  sub_100218508(v27, v72);
  v29 = [objc_opt_self() currentConnection];
  if (!v29)
  {
    v31 = (v28 + *(v14 + 36));
    v32 = *v31;
    v33 = v31[1];
    v34 = static os_log_type_t.error.getter();

    v35 = Logger.logObject.getter();

    if (os_log_type_enabled(v35, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 136446466;
      v76 = v37;
      v77 = 91;
      v78 = 0xE100000000000000;
      v38._countAndFlagsBits = v32;
      v38._object = v33;
      String.append(_:)(v38);
      v39._countAndFlagsBits = 8285;
      v39._object = 0xE200000000000000;
      String.append(_:)(v39);
      v40 = sub_100080210(v77, v78, &v76);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_100080210(0xD000000000000034, 0x800000010031E5D0, &v76);
      _os_log_impl(&_mh_execute_header, v35, v34, "%{public}s%{public}s", v36, 0x16u);
      swift_arrayDestroy();
    }

    v41 = v75;
    sub_10008B5E0();
    swift_allocError();
    *v42 = 1;
    v43 = _convertErrorToNSError(_:)();
    v41[2](v41, v43);

    sub_1002190EC();
    goto LABEL_14;
  }

  v30 = v29;
  if ([v29 sk_allowClientOverride])
  {
    sub_100105C8C(v28, v13, &unk_1003D20F0, &qword_1002EB950);
  }

  else
  {
    v44 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v13, 1, 1, v44);
  }

  type metadata accessor for Client(0);
  v74 = v13;
  sub_100105C8C(v13, v71, &unk_1003D20F0, &qword_1002EB950);
  v45 = v30;
  sub_1001ABF2C();
  v67 = v46;
  v71 = v45;
  v77 = 0;
  v78 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v77 = 0x53746375646F7250;
  v78 = 0xEF5F656369767265;
  String.append(_:)(*(v28 + *(v14 + 36)));
  v47 = v77;
  v48 = v78;
  v49 = [objc_opt_self() globalStore];
  if (v49)
  {
    v50 = v49;
    sub_1000C6F80(v47, v48, v49);

    v51 = type metadata accessor for TaskPriority();
    v52 = v70;
    sub_100081DFC(v70, 1, 1, v51);
    v53 = v68;
    sub_100219094(v28, v68);
    v54 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v55 = (v16 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    sub_100218508(v53, v58 + v54);
    v59 = v67;
    *(v58 + v55) = v67;
    *(v58 + v56) = v69;
    v60 = (v58 + v57);
    v61 = v73;
    *v60 = sub_100219348;
    v60[1] = v61;
    v62 = (v58 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v62 = v47;
    v62[1] = v48;
    v63 = v59;
    swift_unknownObjectRetain();

    sub_1000B5BC0(0, 0, v52, &unk_1002FAE10, v58);

    sub_10013B1E8(v52, &unk_1003CE2B0, &qword_1002EEE80);
    sub_10013B1E8(v74, &unk_1003D20F0, &qword_1002EB950);
    sub_1002190EC();
    v41 = v75;
LABEL_14:

    _Block_release(v41);
    return;
  }

  _Block_release(v75);
  __break(1u);
}

void StoreKitServiceConnection.products(with:receiver:reply:)()
{
  sub_100093D08();
  v3 = v2;
  v89 = v5;
  v90 = v4;
  v84 = v6;
  v91 = v7;
  v8 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v8);
  sub_100089118();
  __chkstk_darwin(v9);
  sub_1000891AC();
  v85 = v10;
  v11 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  v12 = sub_1000B01B0(v11);
  __chkstk_darwin(v12);
  sub_10018ECCC();
  v87 = v13;
  sub_10018ED10();
  __chkstk_darwin(v14);
  sub_10021A62C();
  v15 = type metadata accessor for ProductRequest(0);
  sub_1000890DC();
  v82 = v16;
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v19);
  v83 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  sub_10021A0BC();
  __chkstk_darwin(v21);
  v23 = &v82 - v22;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v24 = type metadata accessor for SKLogger(0);
  sub_100107C34(v24, qword_1003F26C8);
  static os_log_type_t.default.getter();
  v88 = v0;
  v25 = Logger.logObject.getter();
  if (sub_10021AE90(v25))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    v86 = v1;
    sub_1002197A4();
    v93 = swift_slowAlloc();
    *v3 = 136446466;
    *(v3 + 4) = sub_100219AD0();
    sub_100107150();
    *(v3 + 14) = sub_100080210(0xD00000000000001ELL, 0x800000010031E590, &v93);
    sub_10021A250();
    sub_10021A01C(v26, v27, v28, v29);
    _os_log_impl(v30, v31, v32, v33, v34, v35);
    swift_arrayDestroy();
    sub_1000B7D68();

    v1 = v86;
    sub_1000B7D68();
  }

  v36 = type metadata accessor for PropertyListDecoder();
  sub_10021A330(v36);
  PropertyListDecoder.init()();
  sub_1002185B8(&qword_1003CC680, type metadata accessor for ProductRequest, &unk_1002EBE68);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100219F14();
  v37 = sub_1000D4078();
  sub_100218508(v37, v38);
  v39 = [objc_opt_self() currentConnection];
  if (!v39)
  {
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      sub_1000B7DC8();
      v41 = swift_slowAlloc();
      sub_1000B7DBC();
      v42 = swift_slowAlloc();
      *v41 = 136446466;
      sub_100219444(v42);
      v43._countAndFlagsBits = sub_100219CF0();
      String.append(_:)(v43);
      v44._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v44);
      sub_100219AA4();
      sub_100107144();

      sub_1002197B4();
      *(v41 + 14) = sub_100080210(0xD000000000000034, 0x800000010031E5D0, &v92);
      sub_100219784(&_mh_execute_header, v45, v46, "%{public}s%{public}s");
      sub_100219CAC();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v47 = swift_allocError();
    sub_1002195EC(v47, v48);
    v89();

    goto LABEL_14;
  }

  v40 = v39;
  if ([v39 sk_allowClientOverride])
  {
    sub_100105C8C(v23, v1, &unk_1003D20F0, &qword_1002EB950);
  }

  else
  {
    type metadata accessor for ClientOverride(0);
    sub_1000B0690();
    sub_100081DFC(v49, v50, v51, v52);
  }

  type metadata accessor for Client(0);
  sub_100105C8C(v1, v87, &unk_1003D20F0, &qword_1002EB950);
  v53 = v40;
  sub_1001ABF2C();
  v88 = v54;
  v90 = v3;
  v91 = v53;
  v86 = v1;
  sub_100219774();
  _StringGuts.grow(_:)(17);

  v93 = 0x53746375646F7250;
  v94 = 0xEF5F656369767265;
  String.append(_:)(*&v23[v15[9]]);
  v55 = v93;
  v56 = v94;
  v57 = [objc_opt_self() globalStore];
  if (v57)
  {
    v58 = v57;
    v59 = sub_1001073F0();
    sub_1000C6F80(v59, v60, v58);

    type metadata accessor for TaskPriority();
    v61 = v85;
    sub_1000B0690();
    sub_100081DFC(v62, v63, v64, v65);
    v87 = v55;
    v66 = v83;
    sub_100219094(v23, v83);
    v67 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v68 = (v18 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
    v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(v71 + 24) = 0;
    sub_100219F14();
    sub_100218508(v66, v72 + v67);
    v74 = v88;
    v73 = v89;
    *(v71 + v68) = v88;
    *(v71 + v69) = v84;
    v75 = (v71 + v70);
    v76 = v90;
    *v75 = v73;
    v75[1] = v76;
    v77 = (v71 + ((v70 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v77 = v87;
    v77[1] = v56;
    v78 = v74;
    swift_unknownObjectRetain();

    v79 = sub_1001C5454();
    sub_1000B5BC0(v79, v80, v61, v81, v71);

    sub_10013B1E8(v61, &unk_1003CE2B0, &qword_1002EEE80);
    sub_10013B1E8(v86, &unk_1003D20F0, &qword_1002EB950);
LABEL_14:
    sub_100219EFC();
    sub_1002190EC();
    sub_100093CB8();
    return;
  }

  __break(1u);
}

uint64_t sub_1001FD6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v13;
  v8[15] = v14;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = sub_100080FB4(&qword_1003D27A0, &qword_1002FAEF8);
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = sub_100080FB4(&qword_1003D27A8, &qword_1002FAF00);
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_1001FD804, 0, 0);
}

uint64_t sub_1001FD804()
{
  sub_10008BE9C();
  if (qword_1003CBD90 != -1)
  {
    swift_once();
  }

  v1 = qword_1003F25A8;
  *(v0 + 176) = qword_1003F25A8;

  return _swift_task_switch(sub_1001FD898, v1, 0);
}

uint64_t sub_1001FD898()
{
  sub_10008BE9C();
  sub_10012EE8C(*(v0 + 72), *(v0 + 80));
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001FD8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10008BE9C();
  AsyncThrowingStream.makeAsyncIterator()();
  swift_task_alloc();
  sub_1000F2F10();
  *(v14 + 184) = v15;
  *v15 = v16;
  sub_100219C5C(v15);
  sub_100098AD0();

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001FD984()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 192) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001FDA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000B026C();
  sub_1000B016C();
  v15 = v14[2];
  v16 = v14[4];
  if (v16)
  {
    v17 = v14[3];
    v18 = v14[24];
    v19 = type metadata accessor for PropertyListEncoder();
    sub_10021A330(v19);
    PropertyListEncoder.init()();
    v14[5] = v15;
    v14[6] = v17;
    v14[7] = v16;
    sub_100217680();
    dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (!v18)
    {
      v51 = v14[11];

      sub_100128CCC();
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v51 receivedResponse:isa];

      v53 = sub_100128CCC();
      sub_10008E168(v53, v54);

      swift_task_alloc();
      sub_1000F2F10();
      v14[23] = v55;
      *v55 = v56;
      sub_100219C5C(v55);
      sub_100219934();
      sub_100098AD0();
      sub_10008E654();

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
    }

    v21 = v14[20];
    v20 = v14[21];
    v23 = v14[18];
    v22 = v14[19];
    a10 = v17;
    v25 = v14[16];
    v24 = v14[17];

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);

    v27 = v14[12];
    v26 = v14[13];
    v28 = _convertErrorToNSError(_:)();
    v29 = [v28 toASDErrorWithMetadata:0];

    v27(v29);
  }

  else
  {
    v30 = v14[12];
    v26 = v14[13];
    v31 = v14[11];
    (*(v14[17] + 8))(v14[18], v14[16]);
    [v31 receivedResponse:0];
    v30(0);
    v32 = sub_100219AC0();
    v33(v32);
  }

  v34 = [objc_opt_self() globalStore];
  if (!v34)
  {
    __break(1u);
    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  sub_10021A9BC(v34);

  sub_100098AC4();
  sub_10008E654();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

id sub_1001FDD0C()
{
  sub_1000B061C();
  sub_1000B0004();
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = sub_100107174();
  v2(v1);
  v4 = v0[12];
  v3 = v0[13];
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 toASDErrorWithMetadata:0];

  v4(v6);

  result = [objc_opt_self() globalStore];
  if (result)
  {
    sub_10021A9BC(result);

    sub_100098AC4();
    sub_1000B0518();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001FDE38(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  sub_100107144();
  swift_unknownObjectRetain();
  v15 = a1;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  _Block_copy(v10);
  v12 = sub_10021A548();
  a6(v12);
  _Block_release(v10);
  v13 = sub_10021A548();
  sub_10008E168(v13, v14);
  swift_unknownObjectRelease();
}

void sub_1001FDEFC(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v6 - 8);
  v142 = &v132 - v7;
  v8 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  __chkstk_darwin(v8 - 8);
  v10 = &v132 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SKLogger(0);
  v13 = sub_10007EDA4(v12, qword_1003F26C8);
  v14 = static os_log_type_t.default.getter();
  v15 = Logger.logObject.getter();
  if (os_log_type_enabled(v15, v14))
  {
    v143 = v11;
    v144 = a4;
    v16 = swift_slowAlloc();
    object = a1;
    v17 = v16;
    *v149 = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_100080210(0, 0xE000000000000000, v149);
    *(v17 + 12) = 2082;
    v11 = v143;
    a4 = v144;
    *(v17 + 14) = sub_100080210(0xD000000000000032, 0x800000010031E640, v149);
    _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100215838();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v150 = *v149;
  v151 = *&v149[16];
  v152 = *&v149[32];
  v153 = *&v149[48];
  v18 = [objc_opt_self() currentConnection];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for Client(0);
    v20 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v10, 1, 1, v20);
    v21 = v19;
    sub_1001ABF2C();
    v137 = v30;
    v31 = v153;
    *v149 = 0;
    *&v149[8] = 0xE000000000000000;

    _StringGuts.grow(_:)(54);
    v32._countAndFlagsBits = 0xD000000000000016;
    v32._object = 0x800000010031E6D0;
    String.append(_:)(v32);
    v136 = v151;
    String.append(_:)(v151);
    v33._countAndFlagsBits = 0x6C7469746E45202ELL;
    v33._object = 0xEC000000203A6465;
    String.append(_:)(v33);
    v34 = [v21 sk_allowClientOverride];
    v35 = v34 == 0;
    if (v34)
    {
      v36 = 1702195828;
    }

    else
    {
      v36 = 0x65736C6166;
    }

    if (v35)
    {
      v37 = 0xE500000000000000;
    }

    else
    {
      v37 = 0xE400000000000000;
    }

    v38 = v37;
    String.append(_:)(*&v36);

    v39._countAndFlagsBits = 0x656D61726150202ELL;
    v39._object = 0xEE00203A73726574;
    String.append(_:)(v39);
    v138 = v31;
    v40._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v40);

    v41 = *&v149[8];
    v135 = *v149;
    v140 = v21;
    v42 = v150;
    v43 = static os_log_type_t.default.getter();

    v144 = v13;
    v44 = Logger.logObject.getter();

    v45 = os_log_type_enabled(v44, v43);
    object = v42._object;
    countAndFlagsBits = v42._countAndFlagsBits;
    if (v45)
    {
      v46 = swift_slowAlloc();
      LODWORD(v133) = v43;
      v47 = v46;
      v134 = swift_slowAlloc();
      *&v146 = v134;
      *v47 = 136446466;
      *v149 = 91;
      *&v149[8] = 0xE100000000000000;
      String.append(_:)(v42);
      v48._countAndFlagsBits = 8285;
      v48._object = 0xE200000000000000;
      String.append(_:)(v48);
      v49 = sub_100080210(*v149, *&v149[8], &v146);

      *(v47 + 4) = v49;
      *(v47 + 12) = 2082;
      v50 = sub_100080210(v135, v41, &v146);

      *(v47 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v44, v133, "%{public}s%{public}s", v47, 0x16u);
      swift_arrayDestroy();
      v51 = v140;
    }

    else
    {
      v51 = v140;
    }

    *&v146 = 0xD000000000000019;
    *(&v146 + 1) = 0x800000010031E6F0;
    v52 = v138;

    AnyHashable.init<A>(_:)();
    if (!*(v52 + 16))
    {

      sub_10008E550(v149);
      v55 = v52;
      goto LABEL_26;
    }

    sub_100212CF4(v149);
    v54 = v53;

    sub_10008E550(v149);
    v55 = v52;
    if ((v54 & 1) == 0)
    {
      goto LABEL_26;
    }

    v56 = sub_1001B56A0(5);
    v55 = v52;
    v57 = object;
    if (!v56)
    {
      v58 = static os_log_type_t.error.getter();

      v59 = Logger.logObject.getter();

      LODWORD(v135) = v58;
      if (os_log_type_enabled(v59, v58))
      {
        v133 = " to display in product views.";
        v60 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *&v146 = v134;
        *v60 = 136446466;
        *v149 = 91;
        *&v149[8] = 0xE100000000000000;
        v61._countAndFlagsBits = countAndFlagsBits;
        v61._object = v57;
        String.append(_:)(v61);
        v62._countAndFlagsBits = 8285;
        v62._object = 0xE200000000000000;
        String.append(_:)(v62);
        v63 = sub_100080210(*v149, *&v149[8], &v146);

        *(v60 + 4) = v63;
        *(v60 + 12) = 2082;
        *(v60 + 14) = sub_100080210(0xD00000000000004ALL, v133 | 0x8000000000000000, &v146);
        _os_log_impl(&_mh_execute_header, v59, v135, "%{public}s%{public}s", v60, 0x16u);
        swift_arrayDestroy();
      }

      *&v146 = 0xD000000000000019;
      *(&v146 + 1) = 0x800000010031E6F0;
      AnyHashable.init<A>(_:)();
      v111 = v138;
      v112 = sub_100212CF4(v149);
      if (v113)
      {
        v114 = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v154 = v111;
        v116 = *(v111 + 24);
        sub_100080FB4(&qword_1003CF348, &qword_1002F2AE0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v116);
        v55 = v154;
        sub_10008E550(*(v154 + 48) + 40 * v114);
        sub_10008B5D0((*(v55 + 56) + 32 * v114), &v146);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v146 = 0u;
        v147 = 0u;
        v55 = v111;
      }

      v57 = object;
      sub_10008E550(v149);
      sub_10013B1E8(&v146, &unk_1003CCB70, &unk_1002ED050);
    }

    *&v154 = 0xD000000000000019;
    *(&v154 + 1) = 0x800000010031E6F0;
    AnyHashable.init<A>(_:)();
    sub_1001DAA40(v149, v55, &v146);
    sub_10008E550(v149);
    if (*(&v147 + 1))
    {
      sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
      if (swift_dynamicCast())
      {
        v117 = *(v154 + 16);

        if (v117)
        {
          v52 = v138;
LABEL_26:
          v138 = v55;
          *&v146 = 0x6C63697472417369;
          *(&v146 + 1) = 0xE900000000000065;

          AnyHashable.init<A>(_:)();
          v64 = *(v52 + 16);
          v143 = v11;
          if (v64)
          {
            sub_100212CF4(v149);
            v66 = v65;

            sub_10008E550(v149);
            v67 = v51;
            if (v66)
            {
              if ([v51 sk_allowArticle])
              {
                v68 = object;
              }

              else
              {
                v95 = static os_log_type_t.error.getter();
                v96 = object;

                v97 = Logger.logObject.getter();

                if (os_log_type_enabled(v97, v95))
                {
                  v133 = "Has presentation entitlement: ";
                  v98 = swift_slowAlloc();
                  LODWORD(v134) = v95;
                  v99 = v98;
                  v135 = swift_slowAlloc();
                  *&v146 = v135;
                  *v99 = 136446466;
                  *v149 = 91;
                  *&v149[8] = 0xE100000000000000;
                  v100._countAndFlagsBits = countAndFlagsBits;
                  v100._object = v96;
                  String.append(_:)(v100);
                  v101._countAndFlagsBits = 8285;
                  v101._object = 0xE200000000000000;
                  String.append(_:)(v101);
                  v102 = v67;
                  v103 = sub_100080210(*v149, *&v149[8], &v146);

                  *(v99 + 4) = v103;
                  v67 = v102;
                  *(v99 + 12) = 2082;
                  *(v99 + 14) = sub_100080210(0xD00000000000004DLL, v133 | 0x8000000000000000, &v146);
                  _os_log_impl(&_mh_execute_header, v97, v134, "%{public}s%{public}s", v99, 0x16u);
                  swift_arrayDestroy();
                }

                *&v146 = 0x6C63697472417369;
                *(&v146 + 1) = 0xE900000000000065;
                AnyHashable.init<A>(_:)();
                v104 = v138;
                v105 = sub_100212CF4(v149);
                if (v106)
                {
                  v107 = v105;
                  v108 = swift_isUniquelyReferenced_nonNull_native();
                  *&v154 = v104;
                  v109 = *(v104 + 24);
                  sub_100080FB4(&qword_1003CF348, &qword_1002F2AE0);
                  _NativeDictionary.ensureUnique(isUnique:capacity:)(v108, v109);
                  v110 = v154;
                  sub_10008E550(*(v154 + 48) + 40 * v107);
                  sub_10008B5D0((*(v110 + 56) + 32 * v107), &v146);
                  v138 = v110;
                  _NativeDictionary._delete(at:)();
                }

                else
                {
                  v146 = 0u;
                  v147 = 0u;
                }

                v68 = object;
                sub_10008E550(v149);
                sub_10013B1E8(&v146, &unk_1003CCB70, &unk_1002ED050);
              }
            }

            else
            {
              v68 = object;
            }
          }

          else
          {

            sub_10008E550(v149);
            v68 = object;
            v67 = v51;
          }

          v69 = sub_1001B56A0(8);
          *v149 = 0;
          *&v149[8] = 0xE000000000000000;
          _StringGuts.grow(_:)(32);

          *v149 = 0xD00000000000001ELL;
          *&v149[8] = 0x800000010031E710;
          LODWORD(v135) = v69;
          if (v69)
          {
            v70 = 1702195828;
          }

          else
          {
            v70 = 0x65736C6166;
          }

          if (v69)
          {
            v71 = 0xE400000000000000;
          }

          else
          {
            v71 = 0xE500000000000000;
          }

          v72 = v71;
          String.append(_:)(*&v70);

          v73 = *v149;
          v74 = *&v149[8];
          swift_bridgeObjectRetain_n();
          v75 = static os_log_type_t.default.getter();

          v76 = Logger.logObject.getter();

          if (os_log_type_enabled(v76, v75))
          {
            v77 = swift_slowAlloc();
            v144 = v73;
            v78 = v77;
            *&v146 = swift_slowAlloc();
            *v78 = 136446466;
            *v149 = 91;
            *&v149[8] = 0xE100000000000000;
            v79._countAndFlagsBits = countAndFlagsBits;
            v79._object = v68;
            String.append(_:)(v79);
            v80._countAndFlagsBits = 8285;
            v80._object = 0xE200000000000000;
            String.append(_:)(v80);
            v81 = sub_100080210(*v149, *&v149[8], &v146);

            *(v78 + 4) = v81;
            v68 = object;
            *(v78 + 12) = 2082;
            v82 = sub_100080210(v144, v74, &v146);

            *(v78 + 14) = v82;
            _os_log_impl(&_mh_execute_header, v76, v75, "%{public}s%{public}s", v78, 0x16u);
            swift_arrayDestroy();
            v67 = v140;
          }

          else
          {
          }

          v154 = v152;
          v83 = v137;
          v84 = v136._object;

          sub_10021453C(&v154, v149);
          v85 = v67;
          v86 = [v67 sk_allowClientOverride];
          v87 = v86;
          v148 = v154;
          v88 = v143;
          v89 = v138;
          if (v86)
          {
            strcpy(v145, "askToBuyItem");
            HIBYTE(v145[6]) = 0;
            v145[7] = -5120;

            AnyHashable.init<A>(_:)();
            sub_1001DAA40(v149, v89, &v146);
            sub_10008E550(v149);
            if (*(&v147 + 1))
            {
              sub_100080FB4(&qword_1003CC200, &unk_1002EAA50);
              if (swift_dynamicCast())
              {

                v90 = 1;
LABEL_48:
                *v149 = v83;
                *&v149[8] = v136._countAndFlagsBits;
                *&v149[24] = v148;
                *&v149[16] = v84;
                *&v149[40] = countAndFlagsBits;
                *&v149[48] = v68;
                *&v149[56] = v89;
                v149[64] = v87;
                v149[65] = v90;
                v149[66] = v135 & 1;
                v91 = type metadata accessor for TaskPriority();
                v92 = v142;
                sub_100081DFC(v142, 1, 1, v91);
                v93 = swift_allocObject();
                *(v93 + 16) = 0;
                *(v93 + 24) = 0;
                memcpy((v93 + 32), v149, 0x43uLL);
                v94 = v151;
                *(v93 + 104) = v150;
                *(v93 + 120) = v94;
                *(v93 + 136) = v152;
                *(v93 + 152) = v153;
                *(v93 + 160) = sub_1002192FC;
                *(v93 + 168) = v88;
                sub_1001CA388(v149, &v146);

                sub_1000B5BC0(0, 0, v92, &unk_1002FAE08, v93);

                sub_1001CA3C0(v149);

                sub_10013B1E8(v92, &unk_1003CE2B0, &qword_1002EEE80);

LABEL_71:

                goto LABEL_10;
              }
            }

            else
            {
              sub_10013B1E8(&v146, &unk_1003CCB70, &unk_1002ED050);
            }
          }

          else
          {
          }

          v90 = 0;
          goto LABEL_48;
        }

        sub_10021588C(&v150);
        v118 = static os_log_type_t.error.getter();

        v119 = Logger.logObject.getter();

        if (os_log_type_enabled(v119, v118))
        {
          v144 = "rings, returning error.";
          v120 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v127._object = v57;
          *&v146 = v126;
          *v120 = 136446466;
          *v149 = 91;
          *&v149[8] = 0xE100000000000000;
          v127._countAndFlagsBits = countAndFlagsBits;
          String.append(_:)(v127);
          v128._countAndFlagsBits = 8285;
          v128._object = 0xE200000000000000;
          String.append(_:)(v128);
          v129 = sub_100080210(*v149, *&v149[8], &v146);

          *(v120 + 4) = v129;
          *(v120 + 12) = 2082;
          v125 = 0xD000000000000052;
          goto LABEL_64;
        }

        goto LABEL_69;
      }
    }

    else
    {
      sub_10013B1E8(&v146, &unk_1003CCB70, &unk_1002ED050);
    }

    sub_10021588C(&v150);
    v118 = static os_log_type_t.error.getter();

    v119 = Logger.logObject.getter();

    if (os_log_type_enabled(v119, v118))
    {
      v144 = "oad identifiers, removing.";
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v122._object = v57;
      *&v146 = v121;
      *v120 = 136446466;
      *v149 = 91;
      *&v149[8] = 0xE100000000000000;
      v122._countAndFlagsBits = countAndFlagsBits;
      String.append(_:)(v122);
      v123._countAndFlagsBits = 8285;
      v123._object = 0xE200000000000000;
      String.append(_:)(v123);
      v124 = sub_100080210(*v149, *&v149[8], &v146);

      *(v120 + 4) = v124;
      *(v120 + 12) = 2082;
      v125 = 0xD000000000000047;
LABEL_64:
      *(v120 + 14) = sub_100080210(v125, v144 | 0x8000000000000000, &v146);
      _os_log_impl(&_mh_execute_header, v119, v118, "%{public}s%{public}s", v120, 0x16u);
      swift_arrayDestroy();

LABEL_70:

      sub_10008B5E0();
      swift_allocError();
      *v130 = 13;
      v131 = _convertErrorToNSError(_:)();
      (*(a4 + 2))(a4, 0, v131);

      goto LABEL_71;
    }

LABEL_69:

    goto LABEL_70;
  }

  v22 = v150;

  sub_10021588C(&v150);
  v23 = static os_log_type_t.error.getter();

  v24 = Logger.logObject.getter();

  if (os_log_type_enabled(v24, v23))
  {
    v144 = a4;
    v25 = swift_slowAlloc();
    *&v146 = swift_slowAlloc();
    *v25 = 136446466;
    *v149 = 91;
    *&v149[8] = 0xE100000000000000;
    String.append(_:)(v22);
    v26._countAndFlagsBits = 8285;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    v27 = sub_100080210(*v149, *&v149[8], &v146);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2082;
    a4 = v144;
    *(v25 + 14) = sub_100080210(0xD000000000000029, 0x800000010031E6A0, &v146);
    _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  swift_allocError();
  *v28 = 1;
  v29 = _convertErrorToNSError(_:)();
  (*(a4 + 2))(a4, 0, v29);

LABEL_10:
  _Block_release(a4);
}

void StoreKitServiceConnection.lookupProduct(withParametersProductRequest:reply:)()
{
  sub_100093D08();
  v1 = v0;
  v3 = v2;
  v4 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v4);
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v133 = v6;
  v7 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  sub_1000B01B0(v7);
  sub_100089118();
  __chkstk_darwin(v8);
  sub_100089360();
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v9 = type metadata accessor for SKLogger(0);
  v10 = sub_10007EDA4(v9, qword_1003F26C8);
  v11 = static os_log_type_t.default.getter();
  v12 = Logger.logObject.getter();
  if (os_log_type_enabled(v12, v11))
  {
    sub_1000B7DC8();
    v13 = v10;
    v14 = swift_slowAlloc();
    sub_1000B7DBC();
    v15 = swift_slowAlloc();
    *v138 = v15;
    *v14 = 136446466;
    v17 = sub_100093CF0(v15, v16, v138);
    sub_100219B70(v17);
    *(v14 + 14) = sub_100080210(0xD000000000000032, 0x800000010031E640, v138);
    sub_10021A1F8(&_mh_execute_header, v18, v11, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_1000B7D68();

    v10 = v13;
    sub_1000B7D68();
  }

  v19 = type metadata accessor for JSONDecoder();
  sub_10021A330(v19);
  v20 = JSONDecoder.init()();
  sub_100215838();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v139 = *v138;
  v140 = *&v138[16];
  v141 = *&v138[32];
  v142 = *&v138[48];
  if ([objc_opt_self() currentConnection])
  {
    v21 = sub_1001B52B0();
    v22 = type metadata accessor for Client(v21);
    type metadata accessor for ClientOverride(0);
    sub_1000B0690();
    sub_100081DFC(v23, v24, v25, v26);
    v27 = v20;
    sub_1001ABF2C();
    v125 = v35;
    v127 = v1;
    sub_100219B60();
    v36 = v142;
    *v138 = 0;
    *&v138[8] = 0xE000000000000000;

    _StringGuts.grow(_:)(54);
    v37._countAndFlagsBits = 0xD000000000000016;
    v37._object = 0x800000010031E6D0;
    String.append(_:)(v37);
    v124 = v140;
    String.append(_:)(v140);
    v38._countAndFlagsBits = 0x6C7469746E45202ELL;
    v38._object = 0xEC000000203A6465;
    String.append(_:)(v38);
    v39 = [v27 sk_allowClientOverride];
    v40 = v39 == 0;
    if (v39)
    {
      v41 = 1702195828;
    }

    else
    {
      v41 = v22;
    }

    if (v40)
    {
      v42 = 0xE500000000000000;
    }

    else
    {
      v42 = 0xE400000000000000;
    }

    v43 = v42;
    String.append(_:)(*&v41);

    v44._countAndFlagsBits = sub_10021A184();
    String.append(_:)(v44);
    v126 = v36;
    v45._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v45);

    v46 = *&v138[8];
    v123 = *v138;
    v48 = *(&v139 + 1);
    v47 = v139;
    isUniquelyReferenced_nonNull_native = static os_log_type_t.default.getter();

    v50 = Logger.logObject.getter();

    v129 = isUniquelyReferenced_nonNull_native;
    v131 = v48;
    v128 = v47;
    if (os_log_type_enabled(v50, isUniquelyReferenced_nonNull_native))
    {
      sub_1000B7DC8();
      isUniquelyReferenced_nonNull_native = swift_slowAlloc();
      sub_1000B7DBC();
      v51 = swift_slowAlloc();
      sub_10021A838(v51);
      sub_100219524(4.8752e-34);
      v52._countAndFlagsBits = v47;
      v52._object = v48;
      String.append(_:)(v52);
      v53._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v53);
      sub_100219F38();
      sub_1000B0494();
      sub_1002198A4();
      sub_100080210(v123, v46, &v135);
      sub_10021A118();

      *(isUniquelyReferenced_nonNull_native + 14) = v138;
      sub_10021A214(&_mh_execute_header, v50, v129, "%{public}s%{public}s");
      sub_10021ABF4();
      sub_10021A388(v54, v55, v56);
      sub_1000B7D68();

      sub_100219B60();
      sub_1000B7D68();
    }

    else
    {

      sub_10021ABF4();
      sub_100219B60();
    }

    *&v135 = v47;
    *(&v135 + 1) = 0x800000010031E6F0;
    v57 = v126;

    sub_10021AE48(v58, &type metadata for String, &protocol witness table for String);
    v59 = v27;
    if (*(v126 + 16))
    {
      sub_100212CF4(v138);
      v61 = v60;

      sub_10008E550(v138);
      v130 = v126;
      if ((v61 & 1) == 0)
      {
        goto LABEL_26;
      }

      v62 = v126;
      if (!sub_1001B56A0(5))
      {
        v63 = static os_log_type_t.error.getter();

        v64 = Logger.logObject.getter();

        if (os_log_type_enabled(v64, v63))
        {
          sub_1000B7DC8();
          isUniquelyReferenced_nonNull_native = swift_slowAlloc();
          sub_1000B7DBC();
          v65 = swift_slowAlloc();
          sub_10021A838(v65);
          sub_100219524(4.8752e-34);
          v66._countAndFlagsBits = v128;
          v66._object = v131;
          String.append(_:)(v66);
          v67._countAndFlagsBits = sub_1000B7DB0();
          String.append(_:)(v67);
          sub_100219F38();
          sub_100107144();

          *(isUniquelyReferenced_nonNull_native + 4) = v27;
          v59 = v27;
          sub_100219A1C();
          *(isUniquelyReferenced_nonNull_native + 14) = sub_100080210(0xD00000000000004ALL, 0x800000010031E780, &v135);
          sub_10021A214(&_mh_execute_header, v64, v63, "%{public}s%{public}s");
          sub_100219CAC();
          sub_1000B7D68();

          sub_1000B7D68();
        }

        *&v135 = 0xD000000000000019;
        *(&v135 + 1) = 0x800000010031E6F0;
        sub_10021AE48(v105, &type metadata for String, &protocol witness table for String);
        v57 = v126;
        sub_100212CF4(v138);
        if (v106)
        {
          sub_10021A814();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v143 = v126;
          sub_100080FB4(&qword_1003CF348, &qword_1002F2AE0);
          sub_10021AD78();
          sub_10021AD58();
          sub_10008B5D0((*(v126 + 56) + 32 * v63), &v135);
          v47 = v126;
          _NativeDictionary._delete(at:)();
        }

        else
        {
          v135 = 0u;
          v136 = 0u;
          v47 = v126;
        }

        sub_100219B60();
        sub_10008E550(v138);
        sub_10013B1E8(&v135, &unk_1003CCB70, &unk_1002ED050);
        v62 = v47;
        sub_10021ABF4();
      }

      *&v143 = v47;
      *(&v143 + 1) = 0x800000010031E6F0;
      AnyHashable.init<A>(_:)();
      v130 = v62;
      sub_1001DAA40(v138, v62, &v135);
      sub_10008E550(v138);
      if (*(&v136 + 1))
      {
        sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
        if (swift_dynamicCast())
        {
          v107 = *(v143 + 16);

          if (!v107)
          {

            sub_10021588C(&v139);
            static os_log_type_t.error.getter();
            sub_10021AE78();
            v108 = Logger.logObject.getter();

            if (os_log_type_enabled(v108, v47))
            {
              sub_1000B7DC8();
              v109 = swift_slowAlloc();
              sub_1000B7DBC();
              v110 = swift_slowAlloc();
              sub_10021A838(v110);
              sub_100219524(4.8752e-34);
              v111._countAndFlagsBits = v128;
              v111._object = v131;
              String.append(_:)(v111);
              v112._countAndFlagsBits = sub_1000B7DB0();
              String.append(_:)(v112);
              sub_100219F38();
              sub_100107144();

              sub_10021994C();
              *(v109 + 14) = sub_100080210(v113 + 57, 0x800000010031E820, &v135);
              sub_10021A214(&_mh_execute_header, v108, v47, "%{public}s%{public}s");
              sub_100219CAC();
              sub_1000B7D68();

              sub_1000B7D68();
            }

LABEL_64:

            sub_10008B5E0();
            sub_1000ED9E4();
            v120 = swift_allocError();
            v122 = sub_10021A820(v120, v121);
            v3(v122);

            goto LABEL_65;
          }

LABEL_26:
          *&v135 = 0x6C63697472417369;
          *(&v135 + 1) = 0xE900000000000065;

          sub_10021AE48(v68, &type metadata for String, &protocol witness table for String);
          v132 = v3;
          if (*(v57 + 16))
          {
            sub_100212CF4(v138);
            v70 = v69;

            sub_10008E550(v138);
            if ((v70 & 1) != 0 && ([v59 sk_allowArticle] & 1) == 0)
            {
              v47 = static os_log_type_t.error.getter();

              v71 = Logger.logObject.getter();

              if (os_log_type_enabled(v71, v47))
              {
                sub_1000B7DC8();
                isUniquelyReferenced_nonNull_native = swift_slowAlloc();
                sub_1000B7DBC();
                *&v135 = swift_slowAlloc();
                sub_100219524(4.8752e-34);
                v72._countAndFlagsBits = v128;
                v72._object = v131;
                String.append(_:)(v72);
                v73._countAndFlagsBits = sub_1000B7DB0();
                String.append(_:)(v73);
                sub_100219F38();
                sub_100107144();

                sub_10021994C();
                *(isUniquelyReferenced_nonNull_native + 14) = sub_100080210(v74 + 52, 0x800000010031E730, &v135);
                sub_10021A214(&_mh_execute_header, v71, v47, "%{public}s%{public}s");
                sub_10021A594();
                swift_arrayDestroy();
                sub_1001B5198();

                sub_1000B7D68();
              }

              *&v135 = 0x6C63697472417369;
              *(&v135 + 1) = 0xE900000000000065;
              sub_10021AE48(v75, &type metadata for String, &protocol witness table for String);
              sub_100212CF4(v138);
              if (v76)
              {
                sub_10001E104();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v143 = v130;
                sub_100080FB4(&qword_1003CF348, &qword_1002F2AE0);
                sub_10021AD78();
                sub_10021AD58();
                sub_10008B5D0((*(v130 + 56) + 32 * v47), &v135);
                _NativeDictionary._delete(at:)();
              }

              else
              {
                v135 = 0u;
                v136 = 0u;
              }

              sub_10021ABF4();
              sub_100219B60();
              sub_10008E550(v138);
              sub_10013B1E8(&v135, &unk_1003CCB70, &unk_1002ED050);
            }
          }

          else
          {

            sub_10008E550(v138);
          }

          v77 = sub_1001B56A0(8);
          *v138 = 0;
          *&v138[8] = 0xE000000000000000;
          _StringGuts.grow(_:)(32);

          sub_1000C446C();
          *v138 = v47 + 5;
          *&v138[8] = v78;
          v134 = v77;
          if (v77)
          {
            v79 = 1702195828;
          }

          else
          {
            v79 = isUniquelyReferenced_nonNull_native;
          }

          if (v77)
          {
            v80 = 0xE400000000000000;
          }

          else
          {
            v80 = 0xE500000000000000;
          }

          v81 = v80;
          String.append(_:)(*&v79);

          v82 = *v138;
          v83 = *&v138[8];
          v84 = v131;
          swift_bridgeObjectRetain_n();
          static os_log_type_t.default.getter();
          sub_10021AE78();

          v85 = Logger.logObject.getter();

          if (os_log_type_enabled(v85, v80))
          {
            sub_1000B7DC8();
            v86 = swift_slowAlloc();
            sub_1000B7DBC();
            v87 = swift_slowAlloc();
            sub_10021A838(v87);
            sub_100219524(4.8752e-34);
            v88._countAndFlagsBits = v128;
            v88._object = v131;
            String.append(_:)(v88);
            v89._countAndFlagsBits = sub_1000B7DB0();
            String.append(_:)(v89);
            sub_100219F38();
            sub_1000B0494();
            *(v86 + 4) = &type metadata for Any;
            v84 = v131;
            sub_100219A1C();
            v90 = sub_100080210(v82, v83, &v135);

            *(v86 + 14) = v90;
            sub_10021A214(&_mh_execute_header, v85, v80, "%{public}s%{public}s");
            sub_10021A388(v91, v92, &type metadata for Any + 8);
            sub_1000B7D68();

            sub_1000B7D68();
          }

          else
          {
          }

          v143 = v141;
          v93 = v125;

          sub_10021453C(&v143, v138);
          v94 = [v27 sk_allowClientOverride];
          v137 = v143;
          if (v94)
          {
            sub_10021A288();

            AnyHashable.init<A>(_:)();
            sub_1001DAA40(v138, v130, &v135);
            sub_10008E550(v138);
            if (*(&v136 + 1))
            {
              sub_100080FB4(&qword_1003CC200, &unk_1002EAA50);
              if (swift_dynamicCast())
              {

                v95 = 1;
LABEL_50:
                *v138 = v93;
                *&v138[8] = v124;
                *&v138[24] = v137;
                *&v138[40] = v128;
                *&v138[48] = v84;
                *&v138[56] = v130;
                v138[64] = v94;
                v138[65] = v95;
                v138[66] = v134;
                type metadata accessor for TaskPriority();
                sub_1000B0690();
                sub_100081DFC(v96, v97, v98, v99);
                v100 = swift_allocObject();
                *(v100 + 16) = 0;
                *(v100 + 24) = 0;
                memcpy((v100 + 32), v138, 0x43uLL);
                v101 = v140;
                *(v100 + 104) = v139;
                *(v100 + 120) = v101;
                *(v100 + 136) = v141;
                *(v100 + 152) = v142;
                *(v100 + 160) = v132;
                *(v100 + 168) = v127;
                sub_1001CA388(v138, &v135);

                v102 = sub_1001C5454();
                sub_1000B5BC0(v102, v103, v133, v104, v100);

                sub_1001CA3C0(v138);

                sub_10013B1E8(v133, &unk_1003CE2B0, &qword_1002EEE80);
LABEL_65:

                goto LABEL_10;
              }
            }

            else
            {
              sub_10013B1E8(&v135, &unk_1003CCB70, &unk_1002ED050);
            }
          }

          else
          {
          }

          v95 = 0;
          goto LABEL_50;
        }
      }

      else
      {
        sub_10013B1E8(&v135, &unk_1003CCB70, &unk_1002ED050);
      }

      sub_10021588C(&v139);
      v114 = static os_log_type_t.error.getter();

      v108 = Logger.logObject.getter();

      if (os_log_type_enabled(v108, v114))
      {
        sub_1000B7DC8();
        v115 = swift_slowAlloc();
        sub_1000B7DBC();
        v116 = swift_slowAlloc();
        sub_10021A838(v116);
        sub_100219524(4.8752e-34);
        v117._countAndFlagsBits = v128;
        v117._object = v131;
        String.append(_:)(v117);
        v118._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v118);
        sub_100219F38();
        sub_100107144();

        sub_10021994C();
        *(v115 + 14) = sub_100080210(v119 + 46, 0x800000010031E7D0, &v135);
        sub_10021A214(&_mh_execute_header, v108, v114, "%{public}s%{public}s");
        sub_100219CAC();
        sub_1000B7D68();

        sub_1000B7D68();
      }

      goto LABEL_64;
    }

    sub_10008E550(v138);
    v130 = v126;
    goto LABEL_26;
  }

  v28 = v139;

  sub_10021588C(&v139);
  static os_log_type_t.error.getter();
  sub_10021AA30();
  v29 = Logger.logObject.getter();

  if (os_log_type_enabled(v29, v10))
  {
    sub_1000B7DC8();
    v30 = swift_slowAlloc();
    sub_1000B7DBC();
    *&v135 = swift_slowAlloc();
    sub_100219524(4.8752e-34);
    v31._countAndFlagsBits = sub_10021ABC8();
    String.append(_:)(v31);
    v32._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v32);
    sub_100219F38();
    sub_100219D4C();

    *(v30 + 4) = v28;
    sub_100219A1C();
    *(v30 + 14) = sub_100080210(0xD000000000000029, 0x800000010031E6A0, &v135);
    sub_10021A214(&_mh_execute_header, v29, v10, "%{public}s%{public}s");
    sub_1000B0010();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  sub_10008B5E0();
  sub_1000ED9E4();
  v33 = swift_allocError();
  sub_100219A48(v33, v34);
  (v3)(0, v33);

LABEL_10:
  sub_100093CB8();
}

uint64_t sub_100200948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[12] = a5;
  sub_100217624(a5, (v7 + 2));
  v8 = swift_task_alloc();
  v7[15] = v8;
  *v8 = v7;
  v8[1] = sub_1002009EC;

  return sub_1001C5CD4();
}

uint64_t sub_1002009EC()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 128) = v0;

  if (!v0)
  {
    *(v5 + 136) = v3;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100200AF4()
{
  sub_100098BB4();
  v2 = *(v1 + 104);
  v3 = *(v1 + 136);
  v4 = sub_1000D3ED4();
  v2(v4, 0);

  sub_10021588C(*(v1 + 96));
  sub_100098AC4();

  return v5();
}

void sub_100200DD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _convertErrorToNSError(_:)();
  }

  v2 = sub_1001073F0();
  v5 = v3;
  v4(v2);
}

void sub_100200E3C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v5 - 8);
  v93 = &v87 - v6;
  v7 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  __chkstk_darwin(v7 - 8);
  v96 = &v87 - v8;
  v9 = type metadata accessor for ProductPageLookupRequest.URLRequest(0);
  v90 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v92 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v98 = &v87 - v13;
  v91 = v14;
  __chkstk_darwin(v12);
  v97 = &v87 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v17, qword_1003F26C8);
  v18 = static os_log_type_t.default.getter();
  v19 = Logger.logObject.getter();
  if (os_log_type_enabled(v19, v18))
  {
    v95 = v16;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v94 = a4;
    __src[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_100080210(0, 0xE000000000000000, __src);
    *(v20 + 12) = 2082;
    v16 = v95;
    *(v20 + 14) = sub_100080210(0xD00000000000002BLL, 0x800000010031E880, __src);
    _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v20, 0x16u);
    swift_arrayDestroy();
    a4 = v94;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1002185B8(&qword_1003D21B8, type metadata accessor for ProductPageLookupRequest.URLRequest, &unk_1002F2A5C);
  v22 = v98;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v23 = v97;
  sub_100218508(v22, v97);
  v24 = [objc_opt_self() currentConnection];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for Client(0);
    v26 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v96, 1, 1, v26);
    v27 = v25;
    sub_1001ABF2C();
    v39 = v38;
    v95 = v9;
    v40 = [v27 sk_allowClientOverride];
    v98 = v27;
    if (v40)
    {
      v94 = *v23;
      v41 = v23;
      v42 = *(v23 + 8);
      v43 = v41[5];
      v87 = v41[4];
      v44 = v41[3];
      v89 = v41[2];
      v96 = v39;

      v88 = v44;

      v45 = sub_10014CDD0();
      v46 = [v27 sk_allowClientOverride];
      v47 = sub_1001B56A0(8);
      if (v46)
      {
        strcpy(v99, "askToBuyItem");
        BYTE5(v99[1]) = 0;
        HIWORD(v99[1]) = -5120;

        AnyHashable.init<A>(_:)();
        sub_1001DAA40(__src, v45, &v100);

        sub_10008E550(__src);
        if (v101)
        {
          sub_100080FB4(&qword_1003CC200, &unk_1002EAA50);
          if (swift_dynamicCast())
          {

            v48 = 1;
LABEL_22:
            __src[0] = v96;
            __src[1] = v94;
            __src[2] = v42;
            __src[3] = v87;
            __src[4] = v43;
            v64 = v88;
            __src[5] = v89;
            __src[6] = v88;
            __src[7] = v45;
            LOBYTE(__src[8]) = v46;
            BYTE1(__src[8]) = v48;
            BYTE2(__src[8]) = v47;
            *&v100 = 0;
            *(&v100 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(44);

            *&v100 = 0xD00000000000001ALL;
            *(&v100 + 1) = 0x800000010031E910;
            v65._countAndFlagsBits = URL.absoluteString.getter();
            String.append(_:)(v65);

            v66._countAndFlagsBits = 0x656D61726150202ELL;
            v66._object = 0xEE00203A73726574;
            String.append(_:)(v66);
            sub_10014CDD0();
            v67 = Dictionary.description.getter();
            v69 = v68;

            v70._countAndFlagsBits = v67;
            v70._object = v69;
            String.append(_:)(v70);

            v71 = v100;
            v72 = static os_log_type_t.default.getter();

            v73 = Logger.logObject.getter();

            if (os_log_type_enabled(v73, v72))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v94 = a4;
              v99[0] = v75;
              *v74 = 136446466;
              *&v100 = 91;
              *(&v100 + 1) = 0xE100000000000000;
              v76._countAndFlagsBits = v89;
              v76._object = v64;
              String.append(_:)(v76);
              v77._countAndFlagsBits = 8285;
              v77._object = 0xE200000000000000;
              String.append(_:)(v77);
              v78 = sub_100080210(v100, *(&v100 + 1), v99);

              *(v74 + 4) = v78;
              *(v74 + 12) = 2082;
              v79 = sub_100080210(v71, *(&v71 + 1), v99);

              *(v74 + 14) = v79;
              _os_log_impl(&_mh_execute_header, v73, v72, "%{public}s%{public}s", v74, 0x16u);
              swift_arrayDestroy();
              a4 = v94;
            }

            else
            {
            }

            v80 = type metadata accessor for TaskPriority();
            v81 = v93;
            sub_100081DFC(v93, 1, 1, v80);
            v82 = v92;
            sub_100219094(v97, v92);
            v83 = (*(v90 + 80) + 99) & ~*(v90 + 80);
            v84 = (v91 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
            v85 = swift_allocObject();
            v85[2] = 0;
            v85[3] = 0;
            memcpy(v85 + 4, __src, 0x43uLL);
            sub_100218508(v82, v85 + v83);
            v86 = (v85 + v84);
            *v86 = sub_1002192FC;
            v86[1] = v16;
            sub_1001CA388(__src, &v100);

            sub_1000B5BC0(0, 0, v81, &unk_1002FAE00, v85);

            sub_1001CA3C0(__src);

            sub_10013B1E8(v81, &unk_1003CE2B0, &qword_1002EEE80);
            goto LABEL_10;
          }
        }

        else
        {
          sub_10013B1E8(&v100, &unk_1003CCB70, &unk_1002ED050);
        }

        v48 = 0;
        goto LABEL_22;
      }

      v48 = 0;
      goto LABEL_22;
    }

    v49 = *(v23 + 16);
    v50 = *(v23 + 24);
    v51 = static os_log_type_t.error.getter();

    v52 = Logger.logObject.getter();

    if (os_log_type_enabled(v52, v51))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v95 = v16;
      *&v100 = v54;
      *v53 = 136446466;
      __src[0] = 91;
      __src[1] = 0xE100000000000000;
      v55._countAndFlagsBits = v49;
      v55._object = v50;
      String.append(_:)(v55);
      v56._countAndFlagsBits = 8285;
      v56._object = 0xE200000000000000;
      String.append(_:)(v56);
      v57 = sub_100080210(__src[0], __src[1], &v100);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2082;
      *(v53 + 14) = sub_100080210(0xD00000000000002DLL, 0x800000010031E8E0, &v100);
      _os_log_impl(&_mh_execute_header, v52, v51, "%{public}s%{public}s", v53, 0x16u);
      swift_arrayDestroy();
    }

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;
    v61 = objc_allocWithZone(NSError);
    v62 = sub_100212920(v58, v60, 512, 0);
    v63 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v63);
  }

  else
  {
    v28 = *(v23 + 16);
    v29 = *(v23 + 24);
    v30 = static os_log_type_t.error.getter();

    v31 = Logger.logObject.getter();

    if (os_log_type_enabled(v31, v30))
    {
      v98 = "Failed to decode lookup request";
      v32 = swift_slowAlloc();
      *&v100 = swift_slowAlloc();
      *v32 = 136446466;
      __src[0] = 91;
      __src[1] = 0xE100000000000000;
      v33._countAndFlagsBits = v28;
      v33._object = v29;
      String.append(_:)(v33);
      v34._countAndFlagsBits = 8285;
      v34._object = 0xE200000000000000;
      String.append(_:)(v34);
      v35 = sub_100080210(__src[0], __src[1], &v100);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_100080210(0xD000000000000029, v98 | 0x8000000000000000, &v100);
      _os_log_impl(&_mh_execute_header, v31, v30, "%{public}s%{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v36 = 1;
    v37 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v37);
  }

LABEL_10:
  sub_1002190EC();

  _Block_release(a4);
}

void StoreKitServiceConnection.lookupProduct(withURLProductRequest:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100093D08();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v27);
  sub_100089118();
  __chkstk_darwin(v28);
  sub_1000891AC();
  sub_1001564A0(v29);
  v30 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  sub_1000B01B0(v30);
  sub_100089118();
  __chkstk_darwin(v31);
  v33 = &v145 - v32;
  v34 = type metadata accessor for ProductPageLookupRequest.URLRequest(0);
  sub_1000890DC();
  v150 = v35;
  __chkstk_darwin(v36);
  sub_1002199F4();
  sub_1001564A0(v37);
  __chkstk_darwin(v38);
  sub_1001B5378();
  sub_1001564A0(v39);
  v151 = v40;
  __chkstk_darwin(v41);
  sub_1001B5378();
  sub_1001564A0(v42);
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v43 = type metadata accessor for SKLogger(0);
  sub_10021A560(v43, qword_1003F26C8);
  v44 = static os_log_type_t.default.getter();
  v45 = Logger.logObject.getter();
  if (sub_10021AE90(v45))
  {
    v154 = v26;
    sub_1000B7DC8();
    v46 = swift_slowAlloc();
    v149 = v33;
    v47 = v46;
    sub_1000B7DBC();
    v48 = swift_slowAlloc();
    v160[0] = v48;
    *v47 = 136446466;
    v50 = sub_100093CF0(v48, v49, v160);
    sub_100219B70(v50);
    sub_1001072C0();
    v26 = v154;
    *(v47 + 14) = sub_100080210(v51 + 17, 0x800000010031E880, v160);
    sub_10021A1F8(&_mh_execute_header, v52, v44, "%{public}s%{public}s");
    sub_100219884();
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  v53 = type metadata accessor for JSONDecoder();
  sub_10021A330(v53);
  JSONDecoder.init()();
  sub_1002185B8(&qword_1003D21B8, type metadata accessor for ProductPageLookupRequest.URLRequest, &unk_1002F2A5C);
  sub_10021AAB8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v149 = v20;
  sub_100219E90();
  v54 = v155;
  sub_100218508(v44, v155);
  if (![objc_opt_self() currentConnection])
  {
    v62 = v54[2];
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      v26 = "Failed to decode lookup request";
      sub_1000B7DC8();
      v63 = swift_slowAlloc();
      sub_1000B7DBC();
      *&v158 = swift_slowAlloc();
      sub_100219560(4.8752e-34);
      v160[0] = v64;
      v160[1] = v65;
      v66._countAndFlagsBits = sub_10021A414();
      String.append(_:)(v66);
      v67._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v67);
      sub_100080210(v160[0], v160[1], &v158);
      sub_100123F48();

      *(v63 + 4) = v62;
      sub_100219A1C();
      sub_1001072C0();
      sub_10021A244();
      *(v63 + 14) = sub_100080210(v68, v69, &v158);
      sub_100219784(&_mh_execute_header, v70, v71, "%{public}s%{public}s");
      sub_100106E34();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v72 = swift_allocError();
    sub_1002195EC(v72, v73);
    (v26)(0, v20);

    goto LABEL_10;
  }

  v55 = sub_1000B06A8();
  type metadata accessor for Client(v55);
  v56 = sub_1001B52B0();
  type metadata accessor for ClientOverride(v56);
  sub_1000B0690();
  sub_100081DFC(v57, v58, v59, v60);
  v61 = v20;
  sub_1001ABF2C();
  v75 = v74;
  if (![v61 sk_allowClientOverride])
  {
    sub_10021AB2C();
    v89 = v54[2];
    v90 = v54[3];
    v91 = static os_log_type_t.error.getter();

    Logger.logObject.getter();
    sub_10021A814();

    if (sub_10021A898())
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_1002195CC();
      v92 = swift_slowAlloc();
      v156 = v61;
      v61 = v92;
      *&v158 = v92;
      sub_100106A78(4.8752e-34);
      v160[0] = v93;
      v160[1] = v94;
      v95._countAndFlagsBits = v89;
      v95._object = v90;
      String.append(_:)(v95);
      v96._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v96);
      sub_100080210(v160[0], v160[1], &v158);
      sub_100123F48();

      *(v54 + 4) = v89;
      sub_1000B009C();
      sub_1001072C0();
      *(v54 + 14) = sub_100080210(v97 + 19, 0x800000010031E8E0, &v158);
      sub_100219A8C(&_mh_execute_header, &selRef_redeemCodeURL, v91, "%{public}s%{public}s");
      _os_log_impl(v98, v99, v100, v101, v102, v103);
      sub_1000B0010();
      sub_10021AAB8();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = objc_allocWithZone(NSError);
    v105 = sub_1001B5400();
    v107 = sub_100212920(v105, v106, 512, 0);
    v108 = v107;
    (v154)(0, v107);

LABEL_10:
    sub_100219E78();
    goto LABEL_11;
  }

  v148 = v34;
  v76 = v54[1];
  v146 = *v54;
  v145 = v54[4];
  v77 = v54;
  v78 = v54[5];
  v79 = v77[3];
  v147 = v77[2];
  v154 = v75;

  v80 = sub_10014CDD0();
  v81 = [v61 sk_allowClientOverride];
  v156 = v61;
  v82 = sub_1001B56A0(8);
  if (!v81)
  {
LABEL_21:
    v88 = 0;
    v86 = v79;
    v87 = v147;
    goto LABEL_22;
  }

  sub_10021A288();
  v157[0] = v83;
  v157[1] = v84;

  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v160, v80, &v158);

  sub_10008E550(v160);
  if (!v159)
  {
    sub_10013B1E8(&v158, &unk_1003CCB70, &unk_1002ED050);
    goto LABEL_21;
  }

  sub_100080FB4(&qword_1003CC200, &unk_1002EAA50);
  v85 = swift_dynamicCast();
  v86 = v79;
  v87 = v147;
  if (v85)
  {

    v88 = 1;
  }

  else
  {
    v88 = 0;
  }

LABEL_22:
  v160[0] = v154;
  v160[1] = v146;
  v160[2] = v76;
  v160[3] = v145;
  v160[4] = v78;
  v160[5] = v87;
  v160[6] = v86;
  v160[7] = v80;
  LOBYTE(v160[8]) = v81;
  BYTE1(v160[8]) = v88;
  BYTE2(v160[8]) = v82;
  *&v158 = 0;
  *(&v158 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  sub_1000C446C();
  *&v158 = 0xD00000000000001ALL;
  *(&v158 + 1) = v109;
  v110._countAndFlagsBits = URL.absoluteString.getter();
  String.append(_:)(v110);

  v111._countAndFlagsBits = sub_10021A184();
  String.append(_:)(v111);
  v112 = sub_10014CDD0();
  Dictionary.description.getter();

  v113._countAndFlagsBits = sub_10021A548();
  String.append(_:)(v113);

  v114 = v158;
  static os_log_type_t.default.getter();
  sub_100143F70();

  Logger.logObject.getter();
  sub_10021A0B0();

  if (sub_10009F1F4())
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    v148 = v114;
    sub_1002197A4();
    v115 = swift_slowAlloc();
    v149 = v24;
    v157[0] = v115;
    *v87 = 136446466;
    sub_10009F0F8();
    *&v158 = v116;
    *(&v158 + 1) = v117;
    v118._countAndFlagsBits = sub_100219CF0();
    String.append(_:)(v118);
    v119._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v119);
    sub_100080210(v158, *(&v158 + 1), v157);
    v86 = &type metadata for Any;
    sub_100123F48();

    *(v87 + 4) = &type metadata for Any;
    sub_100107150();
    v120 = sub_100080210(v148, *(&v114 + 1), v157);

    *(v87 + 14) = v120;
    sub_10019DBA8();
    sub_10021A01C(v121, v122, v123, v124);
    _os_log_impl(v125, v126, v127, v128, v129, v130);
    swift_arrayDestroy();
    v24 = v149;
    sub_1000B7D68();

    sub_10015CFF0();
  }

  else
  {
  }

  sub_10021AAB8();
  type metadata accessor for TaskPriority();
  v131 = v153;
  sub_1000B0690();
  sub_100081DFC(v132, v133, v134, v135);
  v136 = sub_10021AAFC(&a17);
  v137 = v152;
  sub_100219094(v136, v152);
  v138 = (*(v150 + 80) + 99) & ~*(v150 + 80);
  v139 = (v151 + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
  v140 = swift_allocObject();
  v140[2] = 0;
  v140[3] = 0;
  memcpy(v140 + 4, v160, 0x43uLL);
  sub_100219E90();
  sub_100218508(v137, v140 + v138);
  v141 = (v140 + v139);
  *v141 = v26;
  v141[1] = v24;
  sub_1001CA388(v160, &v158);

  v142 = sub_1001C5454();
  sub_1000B5BC0(v142, v143, v131, v144, v140);

  sub_1001CA3C0(v160);

  sub_10013B1E8(v131, &unk_1003CE2B0, &qword_1002EEE80);
  sub_100219E78();
LABEL_11:
  sub_1002190EC();
  sub_100093CB8();
}

uint64_t sub_1002029A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[5] = a5;
  v8 = swift_task_alloc();
  v7[8] = v8;
  *v8 = v7;
  v8[1] = sub_100202A38;

  return sub_1001C5CD4();
}

uint64_t sub_100202A38()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100202B40()
{
  sub_100098BB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 80);
  v4 = sub_1000D3ED4();
  v2(v4, 0);

  sub_100098AC4();

  return v5();
}

void sub_100202E0C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v5 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v5 - 8);
  v51 = &v49 - v6;
  v7 = type metadata accessor for PurchaseIntentRequest.Add(0);
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  v9 = __chkstk_darwin(v7);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v49 - v11;
  __chkstk_darwin(v10);
  v14 = &v49 - v13;
  v55 = swift_allocObject();
  v56 = a4;
  *(v55 + 16) = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for SKLogger(0);
  v16 = sub_10007EDA4(v15, qword_1003F26C8);
  v17 = static os_log_type_t.default.getter();
  v54 = v16;
  v18 = Logger.logObject.getter();
  if (os_log_type_enabled(v18, v17))
  {
    v49 = "Performing lookup for URL ";
    v19 = swift_slowAlloc();
    v50 = v14;
    v20 = v19;
    v58 = swift_slowAlloc();
    *v20 = 136446466;
    *(v20 + 4) = sub_100080210(0, 0xE000000000000000, &v58);
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_100080210(0xD00000000000001ELL, v49 | 0x8000000000000000, &v58);
    _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v20, 0x16u);
    swift_arrayDestroy();

    v14 = v50;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1002185B8(&unk_1003D21C0, type metadata accessor for PurchaseIntentRequest.Add, &unk_1002F4674);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100218508(v12, v14);
  v21 = [objc_opt_self() currentConnection];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  if (([v21 sk_allowClientOverride] & 1) == 0)
  {

LABEL_10:
    v37 = &v14[*(v7 + 24)];
    v38 = *v37;
    v39 = v37[1];
    v40 = static os_log_type_t.error.getter();

    v41 = Logger.logObject.getter();

    if (os_log_type_enabled(v41, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 136446466;
      v57 = v43;
      v58 = 91;
      v59 = 0xE100000000000000;
      v44._countAndFlagsBits = v38;
      v44._object = v39;
      String.append(_:)(v44);
      v45._countAndFlagsBits = 8285;
      v45._object = 0xE200000000000000;
      String.append(_:)(v45);
      v46 = sub_100080210(v58, v59, &v57);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      *(v42 + 14) = sub_100080210(0xD00000000000002ELL, 0x800000010031E980, &v57);
      _os_log_impl(&_mh_execute_header, v41, v40, "%{public}s%{public}s", v42, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v47 = 3;
    v48 = _convertErrorToNSError(_:)();
    v36 = v56;
    (v56)[2](v56, v48);

    sub_1002190EC();
    goto LABEL_13;
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v58 = 0xD000000000000016;
  v59 = 0x800000010031E9B0;
  String.append(_:)(*&v14[*(v7 + 24)]);
  v23 = v58;
  v24 = v59;
  v25 = [objc_opt_self() globalStore];
  if (v25)
  {
    v26 = v25;
    sub_1000C6F80(v23, v24, v25);

    v27 = type metadata accessor for TaskPriority();
    v28 = v51;
    sub_100081DFC(v51, 1, 1, v27);
    v29 = v53;
    sub_100219094(v14, v53);
    v30 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    sub_100218508(v29, v32 + v30);
    v33 = (v32 + v31);
    v34 = v55;
    *v33 = sub_100219348;
    v33[1] = v34;
    v35 = (v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v35 = v23;
    v35[1] = v24;

    sub_1000B5BC0(0, 0, v28, &unk_1002FADF8, v32);

    sub_10013B1E8(v28, &unk_1003CE2B0, &qword_1002EEE80);
    sub_1002190EC();
    v36 = v56;
LABEL_13:

    _Block_release(v36);
    return;
  }

  _Block_release(v56);
  __break(1u);
}

void StoreKitServiceConnection.addPurchaseIntent(with:reply:)()
{
  sub_100093D08();
  v70 = v1;
  v71 = v2;
  v3 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v3);
  sub_100089118();
  __chkstk_darwin(v4);
  sub_1000891AC();
  v68 = v5;
  v6 = sub_1001B53DC();
  v7 = type metadata accessor for PurchaseIntentRequest.Add(v6);
  sub_1000890DC();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v12);
  v67 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  sub_10021A63C();
  __chkstk_darwin(v14);
  sub_1001B5378();
  v69 = v15;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v16 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v16, qword_1003F26C8);
  v17 = static os_log_type_t.default.getter();
  v18 = Logger.logObject.getter();
  v19 = &off_1002EA000;
  if (os_log_type_enabled(v18, v17))
  {
    v64 = "Performing lookup for URL ";
    sub_1000B7DC8();
    v20 = swift_slowAlloc();
    v66 = v9;
    v21 = v20;
    sub_1000B7DBC();
    v22 = swift_slowAlloc();
    v65 = v11;
    sub_10021A468(v22);
    *v21 = 136446466;
    v23 = sub_100219AD0();
    sub_100219B70(v23);
    sub_100219D58();
    *(v21 + 14) = sub_100080210(v24 + 8, v64 | 0x8000000000000000, &v73);
    sub_10021A1F8(&_mh_execute_header, v25, v17, "%{public}s%{public}s");
    sub_1000B0010();
    v11 = v65;
    sub_1000B7D68();

    v9 = v66;
    sub_1000B7D68();
  }

  v26 = type metadata accessor for PropertyListDecoder();
  sub_10021A330(v26);
  PropertyListDecoder.init()();
  sub_1002185B8(&unk_1003D21C0, type metadata accessor for PurchaseIntentRequest.Add, &unk_1002F4674);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100219E60();
  v27 = v0;
  v28 = v69;
  sub_100218508(v27, v69);
  v29 = [objc_opt_self() currentConnection];
  if (!v29)
  {
    goto LABEL_10;
  }

  v19 = v29;
  if (![v29 sk_allowClientOverride])
  {

LABEL_10:
    v54 = *(v28 + *(v7 + 24));
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      sub_1000B7DC8();
      v55 = swift_slowAlloc();
      sub_1000B7DBC();
      v56 = swift_slowAlloc();
      *v55 = 136446466;
      sub_100219444(v56);
      v57._countAndFlagsBits = sub_10021A414();
      String.append(_:)(v57);
      v58._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v58);
      sub_100219AA4();
      sub_100123F48();

      *(v55 + 4) = v54;
      sub_100219704();
      *(v55 + 14) = sub_100080210(v59 + 24, 0x800000010031E980, &v72);
      sub_100219784(&_mh_execute_header, v60, v61, "%{public}s%{public}s");
      sub_100106E34();
      sub_100219550();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v62 = swift_allocError();
    sub_100219B0C(v62, v63);
    v70();

    goto LABEL_13;
  }

  sub_100219774();
  _StringGuts.grow(_:)(24);

  sub_1000C446C();
  sub_10021A474();
  v73 = v31;
  v74 = v30;
  String.append(_:)(*(v28 + *(v7 + 24)));
  v33 = v73;
  v32 = v74;
  v34 = [objc_opt_self() globalStore];
  if (v34)
  {
    v35 = v34;
    v36 = sub_10021ABC8();
    sub_1000C6F80(v36, v37, v35);

    type metadata accessor for TaskPriority();
    v38 = v68;
    sub_1000B0690();
    sub_100081DFC(v39, v40, v41, v42);
    v43 = v67;
    sub_100219094(v28, v67);
    v44 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v45 = (v11 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    sub_100219E60();
    sub_100218508(v43, v47 + v44);
    v48 = (v46 + v45);
    v49 = v71;
    *v48 = v70;
    v48[1] = v49;
    v50 = (v46 + ((v45 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v50 = v33;
    v50[1] = v32;

    v51 = sub_1001C5454();
    sub_1000B5BC0(v51, v52, v38, v53, v46);

    sub_10013B1E8(v38, &unk_1003CE2B0, &qword_1002EEE80);
LABEL_13:
    sub_1002190EC();
    sub_100093CB8();
    return;
  }

  __break(1u);
}

uint64_t sub_100203E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return _swift_task_switch(sub_100203E64, 0, 0);
}

uint64_t sub_100203E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10008C07C();
  a23 = v25;
  a24 = v26;
  sub_1000B0108();
  a22 = v24;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v27 = v24[10];
  v28 = type metadata accessor for SKLogger(0);
  v24[15] = sub_10021AEC0(v28, qword_1003F26C8);
  a12 = 0;
  a13 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  v29 = a13;
  v24[8] = a12;
  v24[9] = v29;
  sub_1000B00A8();
  v30._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v30);
  v31 = type metadata accessor for PurchaseIntentRequest.Add(0);
  v24[16] = v31;
  _print_unlocked<A, B>(_:_:)();
  v33 = v24[8];
  v32 = v24[9];
  v34 = (v27 + *(v31 + 24));
  v24[17] = *v34;
  v24[18] = v34[1];
  v35 = static os_log_type_t.default.getter();

  v36 = Logger.logObject.getter();

  if (os_log_type_enabled(v36, v35))
  {
    sub_1000B7DC8();
    v37 = swift_slowAlloc();
    sub_1000B7DBC();
    a11 = swift_slowAlloc();
    *v37 = 136446466;
    sub_10009F0F8();
    a12 = v38;
    a13 = v39;
    v40._countAndFlagsBits = sub_1000C43E8();
    String.append(_:)(v40);
    v41._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v41);
    v42 = a13;
    v43 = sub_100080210(a12, a13, &a11);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2082;
    sub_100080210(v33, v32, &a11);
    sub_10021A2E8();

    *(v37 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v36, v35, "%{public}s%{public}s", v37, 0x16u);
    sub_10021A594();
    swift_arrayDestroy();
    sub_1001B5198();

    sub_1000B7D68();
  }

  else
  {
  }

  v44 = swift_task_alloc();
  v24[19] = v44;
  *v44 = v24;
  v44[1] = sub_100204110;
  sub_1000B06F4(v24[10]);
  sub_10008BE10();

  return sub_10013CECC();
}

uint64_t sub_100204110()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10020443C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  swift_setDeallocating();
  sub_10009E3C4();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

id sub_100204540()
{
  sub_10008BE9C();
  (*(v0 + 88))(0);
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v2 = result;
    sub_1002141CC(*(v0 + 104), *(v0 + 112), result);

    sub_100098AC4();

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002045F4(void *a1, uint64_t a2, uint64_t a3, void (**a4)(const void *, void *))
{
  v75 = a1;
  v5 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v5 - 8);
  v69 = &v67 - v6;
  v7 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v67 - v11;
  v13 = type metadata accessor for PurchaseIntentRequest.Remove(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v68 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v74 = &v67 - v18;
  __chkstk_darwin(v17);
  v71 = &v67 - v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  v76 = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for SKLogger(0);
  v22 = sub_10007EDA4(v21, qword_1003F26C8);
  v23 = static os_log_type_t.default.getter();
  v72 = v22;
  v24 = Logger.logObject.getter();
  v25 = os_log_type_enabled(v24, v23);
  v70 = v12;
  v73 = v20;
  if (v25)
  {
    v67 = "PurchaseIntentService_";
    v26 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v26 = 136446466;
    *(v26 + 4) = sub_100080210(0, 0xE000000000000000, &v78);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_100080210(0xD000000000000021, v67 | 0x8000000000000000, &v78);
    _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v26, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1002185B8(&qword_1003CF9F8, type metadata accessor for PurchaseIntentRequest.Remove, &unk_1002F464C);
  v27 = v74;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v28 = v71;
  sub_100218508(v27, v71);
  v29 = [objc_opt_self() currentConnection];
  if (!v29)
  {
    v33 = (v28 + *(v13 + 24));
    v34 = *v33;
    v35 = v33[1];
    v36 = static os_log_type_t.error.getter();

    v37 = Logger.logObject.getter();

    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 136446466;
      v77 = v39;
      v78 = 91;
      v79 = 0xE100000000000000;
      v40._countAndFlagsBits = v34;
      v40._object = v35;
      String.append(_:)(v40);
      v41._countAndFlagsBits = 8285;
      v41._object = 0xE200000000000000;
      String.append(_:)(v41);
      v42 = sub_100080210(v78, v79, &v77);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_100080210(0xD00000000000003ELL, 0x800000010031EA30, &v77);
      _os_log_impl(&_mh_execute_header, v37, v36, "%{public}s%{public}s", v38, 0x16u);
      swift_arrayDestroy();
    }

    v43 = v76;
    sub_10008B5E0();
    swift_allocError();
    *v44 = 1;
    v45 = _convertErrorToNSError(_:)();
    v43[2](v43, v45);

    sub_1002190EC();
    goto LABEL_14;
  }

  v30 = v29;
  v31 = [v29 sk_allowClientOverride];
  if (v31)
  {
    v32 = v70;
    sub_100105C8C(v28, v70, &unk_1003D20F0, &qword_1002EB950);
  }

  else
  {
    v46 = type metadata accessor for ClientOverride(0);
    v32 = v70;
    sub_100081DFC(v70, 1, 1, v46);
  }

  type metadata accessor for Client(0);
  sub_100105C8C(v32, v10, &unk_1003D20F0, &qword_1002EB950);
  v47 = v30;
  sub_1001ABF2C();
  v74 = v48;
  v75 = v47;
  v78 = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v78 = 0xD000000000000016;
  v79 = 0x800000010031E9B0;
  String.append(_:)(*(v28 + *(v13 + 24)));
  v50 = v78;
  v49 = v79;
  v51 = [objc_opt_self() globalStore];
  if (v51)
  {
    v52 = v51;
    sub_1000C6F80(v50, v49, v51);

    v53 = type metadata accessor for TaskPriority();
    v72 = v49;
    v54 = v69;
    sub_100081DFC(v69, 1, 1, v53);
    v55 = v68;
    sub_100219094(v28, v68);
    v56 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v57 = v56 + v15;
    v58 = (v56 + v15) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 31) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    sub_100218508(v55, v60 + v56);
    *(v60 + v57) = v31;
    v61 = v60 + v58;
    v63 = v73;
    v62 = v74;
    *(v61 + 8) = sub_100219348;
    *(v61 + 16) = v63;
    *(v60 + v59) = v62;
    v64 = (v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
    v65 = v72;
    *v64 = v50;
    v64[1] = v65;

    v66 = v62;
    sub_1000B5BC0(0, 0, v54, &unk_1002FADF0, v60);

    sub_10013B1E8(v54, &unk_1003CE2B0, &qword_1002EEE80);
    sub_10013B1E8(v70, &unk_1003D20F0, &qword_1002EB950);
    sub_1002190EC();
    v43 = v76;
LABEL_14:

    _Block_release(v43);
    return;
  }

  _Block_release(v76);
  __break(1u);
}

void StoreKitServiceConnection.clearPurchaseIntents(with:reply:)()
{
  sub_100093D08();
  v2 = v1;
  v4 = v3;
  v95 = v5;
  v96 = v6;
  v7 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v7);
  sub_100089118();
  __chkstk_darwin(v8);
  sub_1000891AC();
  v91 = v9;
  v10 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  v11 = sub_1000B01B0(v10);
  __chkstk_darwin(v11);
  sub_10018ECCC();
  v92 = v12;
  sub_10018ED10();
  __chkstk_darwin(v13);
  v15 = &v86[-v14];
  v97 = type metadata accessor for PurchaseIntentRequest.Remove(0);
  sub_1000890DC();
  v89 = v16;
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v19);
  v90 = &v86[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  sub_10021A0BC();
  __chkstk_darwin(v21);
  v23 = &v86[-v22];
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v24 = type metadata accessor for SKLogger(0);
  sub_100107C34(v24, qword_1003F26C8);
  static os_log_type_t.default.getter();
  v94 = v0;
  v25 = Logger.logObject.getter();
  if (sub_10021AE90(v25))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    v93 = v23;
    sub_1002195DC();
    v99 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_100219AD0();
    sub_10013BC98();
    sub_100219D58();
    *(v4 + 14) = sub_100080210(v26 + 11, 0x800000010031E9D0, &v99);
    sub_10021A250();
    sub_100219A98(v27, v28, v29, v30);
    _os_log_impl(v31, v32, v33, v34, v35, v36);
    swift_arrayDestroy();
    sub_1000B7D68();

    v23 = v93;
    sub_1000B7D68();
  }

  v37 = type metadata accessor for PropertyListDecoder();
  sub_10021A330(v37);
  PropertyListDecoder.init()();
  sub_1002185B8(&qword_1003CF9F8, type metadata accessor for PurchaseIntentRequest.Remove, &unk_1002F464C);
  v38 = v97;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100219E0C();
  v39 = sub_10021AB44();
  sub_100218508(v39, v40);
  v41 = [objc_opt_self() currentConnection];
  v93 = v23;
  if (!v41)
  {
    v44 = *&v23[*(v38 + 24)];
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      v4 = "learPurchaseIntentRequest ";
      sub_1000B7DC8();
      v45 = swift_slowAlloc();
      sub_1000B7DBC();
      v46 = swift_slowAlloc();
      *v45 = 136446466;
      sub_100219444(v46);
      v47._countAndFlagsBits = sub_100219CF0();
      String.append(_:)(v47);
      v48._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v48);
      sub_100219AA4();
      sub_100107144();

      *(v45 + 4) = v44;
      sub_100219704();
      sub_10021A244();
      *(v45 + 14) = sub_100080210(v49, v50, &v98);
      sub_100219784(&_mh_execute_header, v51, v52, "%{public}s%{public}s");
      sub_100219CAC();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v53 = swift_allocError();
    sub_1002195EC(v53, v54);
    (v4)();

    goto LABEL_14;
  }

  v42 = v41;
  v43 = [v41 sk_allowClientOverride];
  if (v43)
  {
    sub_100105C8C(v23, v15, &unk_1003D20F0, &qword_1002EB950);
  }

  else
  {
    type metadata accessor for ClientOverride(0);
    sub_1000B0690();
    sub_100081DFC(v55, v56, v57, v58);
  }

  type metadata accessor for Client(0);
  v96 = v15;
  sub_100105C8C(v15, v92, &unk_1003D20F0, &qword_1002EB950);
  v95 = v42;
  sub_1001ABF2C();
  v87 = v43;
  v88 = v59;
  v92 = v4;
  v94 = v2;
  sub_100219774();
  _StringGuts.grow(_:)(24);

  sub_1000C446C();
  sub_10021A474();
  v99 = v61;
  v100 = v60;
  String.append(_:)(*&v23[*(v97 + 24)]);
  v62 = v99;
  v63 = v100;
  if ([objc_opt_self() globalStore])
  {
    v64 = sub_10001E104();
    sub_1000C6F80(v64, v63, 0);

    type metadata accessor for TaskPriority();
    v65 = v91;
    sub_1000B0690();
    sub_100081DFC(v66, v67, v68, v69);
    v70 = v23;
    v71 = v90;
    sub_100219094(v70, v90);
    v72 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v73 = v72 + v18;
    v74 = (v72 + v18) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 31) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
    sub_100219E0C();
    sub_100218508(v71, v77 + v72);
    *(v76 + v73) = v87;
    v78 = v76 + v74;
    v79 = v94;
    *(v78 + 8) = v92;
    *(v78 + 16) = v79;
    v80 = v88;
    *(v76 + v75) = v88;
    v81 = (v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v81 = v62;
    v81[1] = v63;

    v82 = v80;
    v83 = sub_1001C5454();
    sub_1000B5BC0(v83, v84, v65, v85, v76);

    sub_10013B1E8(v65, &unk_1003CE2B0, &qword_1002EEE80);
    sub_10013B1E8(v96, &unk_1003D20F0, &qword_1002EB950);
LABEL_14:
    sub_1002190EC();
    sub_100093CB8();
    return;
  }

  __break(1u);
}

uint64_t sub_100205B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = v11;
  *(v8 + 56) = v12;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 96) = a5;
  *(v8 + 16) = a4;
  *(v8 + 24) = a6;
  *(v8 + 64) = type metadata accessor for SKLogger(0);
  *(v8 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100205C34, 0, 0);
}

uint64_t sub_100206224()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

id sub_100206308()
{
  sub_10008BE9C();
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  result = [objc_opt_self() globalStore];
  if (result)
  {
    sub_10021A9E0(result);

    sub_100098AC4();

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002063A0()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

void sub_10020649C(void *a1, const void *a2, uint64_t a3, const void *a4)
{
  v84 = a1;
  v85 = a2;
  v5 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  v9 = __chkstk_darwin(v8 - 8);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v77 - v11;
  v86 = type metadata accessor for PurchaseIntentRequest.Query(0);
  v78 = *(v86 - 8);
  v13 = __chkstk_darwin(v86);
  v80 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v77 - v16;
  v79 = v18;
  __chkstk_darwin(v15);
  v20 = &v77 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for SKLogger(0);
  v23 = sub_10007EDA4(v22, qword_1003F26C8);
  v24 = static os_log_type_t.default.getter();
  v82 = v23;
  v25 = Logger.logObject.getter();
  v26 = os_log_type_enabled(v25, v24);
  v83 = v21;
  if (v26)
  {
    v27 = v20;
    v28 = a4;
    v29 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v29 = 136446466;
    *(v29 + 4) = sub_100080210(0, 0xE000000000000000, &v88);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_100080210(0xD00000000000001CLL, 0x800000010031EAB0, &v88);
    _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v29, 0x16u);
    swift_arrayDestroy();

    a4 = v28;
    v20 = v27;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1002185B8(&unk_1003D21D0, type metadata accessor for PurchaseIntentRequest.Query, &unk_1002F4624);
  v30 = v86;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100218508(v17, v20);
  v31 = [objc_opt_self() currentConnection];
  if (!v31)
  {
    v35 = v30[7];
    v86 = v20;
    v36 = &v20[v35];
    v37 = *v36;
    v38 = v36[1];
    v39 = static os_log_type_t.error.getter();

    v40 = Logger.logObject.getter();

    if (os_log_type_enabled(v40, v39))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 136446466;
      v87 = v42;
      v88 = 91;
      v89 = 0xE100000000000000;
      v43._countAndFlagsBits = v37;
      v43._object = v38;
      String.append(_:)(v43);
      v44._countAndFlagsBits = 8285;
      v44._object = 0xE200000000000000;
      String.append(_:)(v44);
      v45 = sub_100080210(v88, v89, &v87);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_100080210(0xD00000000000003CLL, 0x800000010031EB00, &v87);
      _os_log_impl(&_mh_execute_header, v40, v39, "%{public}s%{public}s", v41, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v46 = 1;
    v47 = _convertErrorToNSError(_:)();
    (*(a4 + 2))(a4, 0, v47);

    goto LABEL_19;
  }

  v32 = v31;
  v33 = v20[v30[6]];
  v34 = [v31 sk_allowClientOverride];
  if ((v33 & 1) == 0)
  {
    if (v34)
    {
      v82 = 0;
      v48 = 0;
      goto LABEL_20;
    }

    v84 = v32;
    v50 = v30[7];
    v86 = v20;
    v51 = &v20[v50];
    v52 = *v51;
    v53 = v51[1];
    v54 = static os_log_type_t.error.getter();

    v55 = Logger.logObject.getter();

    if (os_log_type_enabled(v55, v54))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 136446466;
      v87 = v57;
      v88 = 91;
      v89 = 0xE100000000000000;
      v58._countAndFlagsBits = v52;
      v58._object = v53;
      String.append(_:)(v58);
      v59._countAndFlagsBits = 8285;
      v59._object = 0xE200000000000000;
      String.append(_:)(v59);
      v60 = sub_100080210(v88, v89, &v87);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2082;
      *(v56 + 14) = sub_100080210(0xD000000000000036, 0x800000010031EB80, &v87);
      _os_log_impl(&_mh_execute_header, v55, v54, "%{public}s%{public}s", v56, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v61 = 3;
    v62 = _convertErrorToNSError(_:)();
    (*(a4 + 2))(a4, 0, v62);

LABEL_19:
    sub_1002190EC();
LABEL_22:

    _Block_release(a4);
    return;
  }

  if (v34)
  {
    sub_100105C8C(&v20[v30[5]], v12, &unk_1003D20F0, &qword_1002EB950);
  }

  else
  {
    v49 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v12, 1, 1, v49);
  }

  type metadata accessor for Client(0);
  sub_100105C8C(v12, v81, &unk_1003D20F0, &qword_1002EB950);
  v84 = v32;
  sub_1001ABF2C();
  v64 = v63;
  sub_10013B1E8(v12, &unk_1003D20F0, &qword_1002EB950);
  v48 = *&v64[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];
  v82 = *&v64[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];

LABEL_20:
  v84 = v32;
  v85 = a4;
  v88 = 0;
  v89 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v88 = 0xD000000000000016;
  v89 = 0x800000010031E9B0;
  String.append(_:)(*&v20[v30[7]]);
  v65 = v88;
  v66 = v89;
  v67 = [objc_opt_self() globalStore];
  if (v67)
  {
    v68 = v67;
    sub_1000C6F80(v65, v66, v67);

    v69 = type metadata accessor for TaskPriority();
    sub_100081DFC(v7, 1, 1, v69);
    v70 = v80;
    sub_100219094(v20, v80);
    v71 = (*(v78 + 80) + 48) & ~*(v78 + 80);
    v72 = (v79 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    v73[2] = 0;
    v73[3] = 0;
    v73[4] = v82;
    v73[5] = v48;
    sub_100218508(v70, v73 + v71);
    v74 = (v73 + v72);
    v75 = v83;
    *v74 = sub_1002192F8;
    v74[1] = v75;
    v76 = (v73 + ((v72 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v76 = v65;
    v76[1] = v66;

    sub_1000B5BC0(0, 0, v7, &unk_1002FADE8, v73);

    sub_10013B1E8(v7, &unk_1003CE2B0, &qword_1002EEE80);
    sub_1002190EC();
    a4 = v85;
    goto LABEL_22;
  }

  _Block_release(v85);
  __break(1u);
}

void StoreKitServiceConnection.purchaseIntents(with:reply:)()
{
  sub_100093D08();
  v2 = v1;
  v112 = v3;
  v4 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v4);
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v108 = v6;
  v7 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  v8 = sub_1000B01B0(v7);
  __chkstk_darwin(v8);
  sub_10018ECCC();
  v109 = v9;
  sub_10018ED10();
  __chkstk_darwin(v10);
  sub_1001B5378();
  v110 = v11;
  v12 = sub_1001B53DC();
  v13 = type metadata accessor for PurchaseIntentRequest.Query(v12);
  sub_1000890DC();
  v106 = v14;
  v16 = __chkstk_darwin(v15);
  v18 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  sub_1001B5378();
  v113 = v19;
  v107 = v20;
  __chkstk_darwin(v21);
  v23 = &v104 - v22;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v24 = type metadata accessor for SKLogger(0);
  sub_10021A560(v24, qword_1003F26C8);
  static os_log_type_t.default.getter();
  v25 = Logger.logObject.getter();
  if (sub_10021AE90(v25))
  {
    v104 = "ring purchase intents";
    sub_1000B7DC8();
    swift_slowAlloc();
    v105 = v13;
    v111 = v2;
    sub_1002195DC();
    v115 = swift_slowAlloc();
    *v2 = 136446466;
    *(v2 + 4) = sub_100219AD0();
    sub_10013BC98();
    sub_100219D58();
    *(v2 + 14) = sub_100080210(v26 + 6, v104 | 0x8000000000000000, &v115);
    sub_10021A250();
    sub_100219A98(v27, v28, v29, v30);
    _os_log_impl(v31, v32, v33, v34, v35, v36);
    sub_10021A06C();
    swift_arrayDestroy();
    sub_1000B7D68();

    v2 = v111;
    v13 = v105;
    sub_1000B7D68();
  }

  v37 = type metadata accessor for PropertyListDecoder();
  sub_10021A330(v37);
  PropertyListDecoder.init()();
  sub_1002185B8(&unk_1003D21D0, type metadata accessor for PurchaseIntentRequest.Query, &unk_1002F4624);
  v38 = v113;
  sub_1000D4078();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v105 = v0;
  sub_100219DE8();
  sub_100218508(v38, v23);
  v39 = [objc_opt_self() currentConnection];
  if (!v39)
  {
    v44 = *&v23[v13[7]];
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      sub_1000B7DC8();
      v45 = swift_slowAlloc();
      v109 = v23;
      v46 = v45;
      sub_1000B7DBC();
      v47 = swift_slowAlloc();
      *v46 = 136446466;
      sub_100219444(v47);
      v48._countAndFlagsBits = sub_100219CF0();
      String.append(_:)(v48);
      v49._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v49);
      sub_100219AA4();
      sub_100107144();

      *(v46 + 4) = v44;
      sub_100219704();
      sub_10021A244();
      *(v46 + 14) = sub_100080210(v50, v51, &v114);
      sub_100219784(&_mh_execute_header, v52, v53, "%{public}s%{public}s");
      sub_10021A388(v54, v55, &type metadata for Any + 8);
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v56 = swift_allocError();
    sub_1002195EC(v56, v57);
    v58 = sub_1002198D4();
    v112(v58);

    goto LABEL_19;
  }

  v40 = v39;
  v41 = v23[v13[6]];
  v42 = [v39 sk_allowClientOverride];
  if ((v41 & 1) == 0)
  {
    v113 = v40;
    if (v42)
    {
      v110 = 0;
      v59 = 0;
      goto LABEL_20;
    }

    v64 = *&v23[v13[7]];
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      sub_1000B7DC8();
      v65 = swift_slowAlloc();
      v109 = v23;
      v66 = v65;
      sub_1000B7DBC();
      v67 = swift_slowAlloc();
      *v66 = 136446466;
      sub_100219444(v67);
      v68._countAndFlagsBits = sub_100219CF0();
      String.append(_:)(v68);
      v69._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v69);
      sub_100219AA4();
      sub_100107144();

      *(v66 + 4) = v64;
      sub_100219704();
      sub_10021A244();
      *(v66 + 14) = sub_100080210(v70, v71, &v114);
      sub_100219784(&_mh_execute_header, v72, v73, "%{public}s%{public}s");
      sub_10021A388(v74, v75, &type metadata for Any + 8);
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    swift_allocError();
    v77 = sub_10021961C(v76, 3);
    v112(v77);

LABEL_19:
    sub_100219DD0();
LABEL_22:
    sub_1002190EC();
    sub_100093CB8();
    return;
  }

  if (v42)
  {
    v43 = v110;
    sub_100105C8C(&v23[v13[5]], v110, &unk_1003D20F0, &qword_1002EB950);
  }

  else
  {
    type metadata accessor for ClientOverride(0);
    v43 = v110;
    sub_1000B0690();
    sub_100081DFC(v60, v61, v62, v63);
  }

  type metadata accessor for Client(0);
  sub_100105C8C(v43, v109, &unk_1003D20F0, &qword_1002EB950);
  v104 = v40;
  sub_1001ABF2C();
  v79 = v78;
  v113 = v40;
  sub_10013B1E8(v43, &unk_1003D20F0, &qword_1002EB950);
  v59 = *&v79[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];
  v110 = *&v79[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];

LABEL_20:
  v111 = v2;
  sub_100219774();
  _StringGuts.grow(_:)(24);

  sub_1000C446C();
  sub_10021A474();
  v115 = v81;
  v116 = v80;
  String.append(_:)(*&v23[v13[7]]);
  v82 = v115;
  v83 = v116;
  v84 = [objc_opt_self() globalStore];
  if (v84)
  {
    v85 = v23;
    v86 = v84;
    v87 = sub_1001073F0();
    sub_1000C6F80(v87, v88, v86);

    type metadata accessor for TaskPriority();
    v89 = v108;
    sub_1000B0690();
    sub_100081DFC(v90, v91, v92, v93);
    sub_100219094(v85, v18);
    v94 = (*(v106 + 80) + 48) & ~*(v106 + 80);
    v95 = (v107 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = swift_allocObject();
    v96[2] = 0;
    v96[3] = 0;
    v96[4] = v110;
    v96[5] = v59;
    sub_100219DE8();
    sub_100218508(v18, v97 + v94);
    v98 = (v96 + v95);
    v99 = v111;
    *v98 = v112;
    v98[1] = v99;
    v100 = (v96 + ((v95 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v100 = v82;
    v100[1] = v83;

    v101 = sub_1001C5454();
    sub_1000B5BC0(v101, v102, v89, v103, v96);

    sub_10013B1E8(v89, &unk_1003CE2B0, &qword_1002EEE80);
    sub_100219DD0();
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_100207DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v13;
  v8[15] = v14;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = type metadata accessor for Date();
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v8[18] = *(v10 + 64);
  v8[19] = swift_task_alloc();
  v8[20] = type metadata accessor for SKLogger(0);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_100207ECC, 0, 0);
}

uint64_t sub_100207ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10008C07C();
  a23 = v25;
  a24 = v26;
  sub_1000B0108();
  a22 = v24;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v27 = v24[21];
  v28 = v24[10];
  v29 = v24[11];
  v30 = v24[9];
  v24[22] = sub_10007EDA4(v24[20], qword_1003F26C8);
  sub_100219414();
  sub_100219094(v31, v27);
  a12 = 0;
  a13 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  a12 = 0x676E697972657551;
  a13 = 0xE900000000000020;
  if (v28)
  {
    v32 = v30;
  }

  else
  {
    v32 = 7105633;
  }

  if (!v28)
  {
    v28 = 0xE300000000000000;
  }

  v33 = v28;
  String.append(_:)(*&v32);

  sub_1000B00A8();
  v34._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v34);
  v36 = a12;
  v35 = a13;
  v37 = (v29 + *(type metadata accessor for PurchaseIntentRequest.Query(0) + 28));
  v38 = *v37;
  v24[23] = *v37;
  v39 = v37[1];
  v24[24] = v39;
  v40 = static os_log_type_t.default.getter();
  v41 = Logger.logObject.getter();
  if (os_log_type_enabled(v41, v40))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_1002197A4();
    swift_slowAlloc();
    *v36 = 136446466;
    sub_10009F0F8();
    a11 = v42;
    a12 = v43;
    a13 = v44;
    v45._countAndFlagsBits = v38;
    v45._object = v39;
    String.append(_:)(v45);
    v46._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v46);
    v47 = a13;
    sub_100080210(a12, a13, &a11);
    sub_1000B0494();
    *(v36 + 4) = v38;
    sub_100107150();
    sub_100080210(v36, v35, &a11);
    sub_10021A118();

    *(v36 + 14) = v47;
    sub_1002199CC();
    _os_log_impl(v48, v49, v50, v51, v52, v53);
    sub_100219884();
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_10015CFF0();
  }

  else
  {
  }

  sub_1002190EC();
  sub_1001077A8();
  v54 = swift_allocObject();
  v24[25] = v54;
  *(v54 + 16) = _swiftEmptyArrayStorage;
  v55 = qword_1003CBD98;

  if (v55 != -1)
  {
    swift_once();
  }

  v24[26] = qword_1003CEF28;
  sub_10008BE10();

  return _swift_task_switch(v56, v57, v58);
}

uint64_t sub_100208194()
{
  sub_10008BE9C();
  *(v0 + 216) = sub_10019D99C();
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1002081F4()
{
  sub_10008C07C();
  sub_1000B0108();
  v20 = v0[24];
  v18 = v0[25];
  v19 = v0[23];
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[10];
  v17 = v0[9];
  v4 = sub_10021A5A0();
  v5(v4);
  v6 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[28] = v8;
  sub_10021A2F4();
  v9();
  v10 = (v8 + v6);
  *v10 = v17;
  v10[1] = v3;
  *(v8 + v7) = v18;
  v11 = (v8 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v19;
  v11[1] = v20;

  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_100208368;
  sub_10008BE10();

  return sub_1001D5D00(v13, v14);
}

uint64_t sub_100208368()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

id sub_100208468()
{
  v1 = *(v0 + 200);

  sub_1002199B4();
  swift_beginAccess();
  v2 = *(v1 + 16);

  v3 = type metadata accessor for PropertyListEncoder();
  sub_10021A330(v3);
  PropertyListEncoder.init()();
  *(v0 + 56) = v2;
  sub_100080FB4(&qword_1003D2788, &qword_1002FAEF0);
  sub_100217570();
  sub_1001B5400();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v5 = *(v0 + 96);
  sub_1000BC808(v4, v6);
  v7 = sub_10021A414();
  v5(v7);
  v8 = sub_10021A414();
  sub_10008E168(v8, v9);
  v10 = sub_10021A414();
  sub_10008E168(v10, v11);

  result = [objc_opt_self() globalStore];
  if (result)
  {
    v13 = result;

    v14 = sub_10017CB1C();
    sub_1002141CC(v14, v15, v13);

    sub_100098AC4();
    sub_10009F1B8();

    __asm { BRAA            X1, X16 }
  }

  __break(1u);
  return result;
}

void sub_100208810(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v11, qword_1003F26C8);
  v12 = static os_log_type_t.default.getter();
  v13 = Logger.logObject.getter();
  v14 = &off_1002EA000;
  if (os_log_type_enabled(v13, v12))
  {
    v25 = a4;
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_100080210(0, 0xE000000000000000, &v26);
    *(v15 + 12) = 2082;
    a4 = v25;
    *(v15 + 14) = sub_100080210(0xD000000000000024, 0x800000010031EBC0, &v26);
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    v14 = &off_1002EA000;
  }

  v16 = [objc_opt_self() currentConnection];
  if (v16)
  {
    v17 = v16;
    if ([v16 sk_allowClientOverride])
    {
      v18 = type metadata accessor for TaskPriority();
      sub_100081DFC(v9, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = a1;
      v19[5] = a2;
      v19[6] = sub_100219348;
      v19[7] = v10;

      sub_1000B5BC0(0, 0, v9, &unk_1002FADE0, v19);

      sub_10013B1E8(v9, &unk_1003CE2B0, &qword_1002EEE80);

      _Block_release(a4);
      return;
    }
  }

  v20 = static os_log_type_t.error.getter();
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, v20))
  {
    v22 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v22 = *(v14 + 175);
    *(v22 + 4) = sub_100080210(0, 0xE000000000000000, &v26);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_100080210(0xD000000000000039, 0x800000010031EBF0, &v26);
    _os_log_impl(&_mh_execute_header, v21, v20, "%{public}s%{public}s", v22, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  swift_allocError();
  *v23 = 3;
  v24 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v24);

  _Block_release(a4);
}

void StoreKitServiceConnection.setAppInstallSheetBundleID(_:reply:)()
{
  sub_100093D08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v9);
  sub_100089118();
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v13 = type metadata accessor for SKLogger(0);
  sub_100107C34(v13, qword_1003F26C8);
  v14 = static os_log_type_t.default.getter();
  v15 = Logger.logObject.getter();
  v16 = &off_1002EA000;
  if (os_log_type_enabled(v15, v14))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    v47 = v4;
    sub_1002197A4();
    v17 = swift_slowAlloc();
    v48 = v17;
    *v4 = 136446466;
    *(v4 + 4) = sub_100093CF0(v17, v18, &v48);
    sub_100107150();
    *(v4 + 14) = sub_100080210(0xD000000000000024, 0x800000010031EBC0, &v48);
    sub_10021A01C(&_mh_execute_header, v15, v14, "%{public}s%{public}s");
    _os_log_impl(v19, v20, v21, v22, v23, v24);
    swift_arrayDestroy();
    v16 = &off_1002EA000;
    sub_1000B7D68();

    v4 = v47;
    sub_1000B7D68();
  }

  v25 = [objc_opt_self() currentConnection];
  if (v25)
  {
    v26 = v25;
    if ([v25 sk_allowClientOverride])
    {
      type metadata accessor for TaskPriority();
      sub_1000B0690();
      sub_100081DFC(v27, v28, v29, v30);
      sub_10021A178();
      v31 = swift_allocObject();
      v32 = sub_10021AC54(v31);
      v32[4] = v8;
      v32[5] = v6;
      v32[6] = v4;
      v32[7] = v2;

      v33 = sub_1001C5454();
      sub_1000B5BC0(v33, v34, v12, v35, v0);

      sub_10013B1E8(v12, &unk_1003CE2B0, &qword_1002EEE80);
      sub_100093CB8();
      return;
    }
  }

  v36 = static os_log_type_t.error.getter();
  v37 = Logger.logObject.getter();
  if (os_log_type_enabled(v37, v36))
  {
    sub_1000B7DC8();
    v38 = swift_slowAlloc();
    sub_1000B7DBC();
    v39 = swift_slowAlloc();
    v48 = v39;
    *v38 = *(v16 + 175);
    v41 = sub_100093CF0(v39, v40, &v48);
    sub_100219B70(v41);
    *(v38 + 14) = sub_100080210(0xD000000000000039, 0x800000010031EBF0, &v48);
    sub_10021A1F8(&_mh_execute_header, v42, v36, "%{public}s%{public}s");
    sub_10021A22C(v43, v44, &type metadata for Any + 8);
    sub_100219550();

    sub_1000B7D68();
  }

  sub_10008B5E0();
  sub_1000ED9E4();
  swift_allocError();
  *v45 = 3;
  (v4)();
  sub_100093CB8();
}

uint64_t sub_100209040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for SKLogger(0);
  v7[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002090D8, 0, 0);
}

uint64_t sub_1002090D8()
{
  sub_1000EDA60();
  v24 = v0;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v1 = v0[7];
  sub_10021A560(v0[6], qword_1003F26C8);
  sub_100219414();
  sub_100219094(v2, v1);
  _StringGuts.grow(_:)(40);

  sub_1000C446C();
  v23[0] = 0xD000000000000025;
  v23[1] = v3;

  v4._countAndFlagsBits = sub_100219CF0();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6 = static os_log_type_t.default.getter();
  v7 = Logger.logObject.getter();
  if (os_log_type_enabled(v7, v6))
  {
    sub_1000B7DC8();
    v8 = swift_slowAlloc();
    sub_1000B7DBC();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_100093CF0(v9, v10, v23);
    sub_1000B04AC();
    v11 = sub_1001B5488();
    v14 = sub_100080210(v11, v12, v13);

    *(v8 + 14) = v14;
    sub_1000B0648(&_mh_execute_header, v7, v6, "%{public}s%{public}s");
    sub_10021960C();
    swift_arrayDestroy();
    sub_10015CFF0();

    sub_1000B7D68();
  }

  else
  {
  }

  sub_1002190EC();
  sub_1001CA63C();
  v16 = v15;
  v18 = v17;
  v0[8] = v17;
  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_100209348;
  v20 = sub_1000B06F4(v0[2]);

  return sub_100141A24(v20, v21, v16, v18);
}

uint64_t sub_100209348()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100209448()
{
  sub_10008BE9C();
  (*(v0 + 32))(0);

  sub_100098AC4();

  return v1();
}

uint64_t sub_1002094CC(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, void *, void *))
{
  v8 = _Block_copy(aBlock);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v9;
  }

  _Block_copy(v8);
  v10 = a1;
  v11 = sub_10021A0FC();
  a5(v11, a3, a1, v8);
  _Block_release(v8);
}

void sub_100209570(uint64_t a1, char *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v74 = a2;
  v5 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v5 - 8);
  v73 = &v65 - v6;
  v7 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v65 - v11;
  v13 = type metadata accessor for StorefrontRequest(0);
  v72 = *(v13 - 8);
  v14 = *(v72 + 64);
  v15 = __chkstk_darwin(v13);
  v16 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v65 - v18;
  __chkstk_darwin(v17);
  v21 = &v65 - v20;
  v75 = swift_allocObject();
  *(v75 + 16) = a4;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v76 = a4;
  _Block_copy(a4);
  JSONDecoder.init()();
  sub_1002185B8(&qword_1003CEEE0, type metadata accessor for StorefrontRequest, &unk_1002F20C4);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v69 = v10;
  v70 = v14;
  v74 = v12;

  sub_100218508(v19, v21);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for SKLogger(0);
  v23 = sub_10007EDA4(v22, qword_1003F26C8);
  v24 = &v21[*(v13 + 20)];
  v25 = *v24;
  v26 = v24[1];
  v27 = static os_log_type_t.default.getter();

  v68 = v23;
  v28 = Logger.logObject.getter();

  v29 = os_log_type_enabled(v28, v27);
  v71 = v21;
  v67 = v25;
  if (v29)
  {
    v66 = "p install sheet bundle ID";
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 136446466;
    v77 = v31;
    v78 = 91;
    v79 = 0xE100000000000000;
    v32._countAndFlagsBits = v25;
    v33 = v26;
    v32._object = v26;
    String.append(_:)(v32);
    v34._countAndFlagsBits = 8285;
    v34._object = 0xE200000000000000;
    String.append(_:)(v34);
    v35 = sub_100080210(v78, v79, &v77);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_100080210(0xD000000000000014, v66 | 0x8000000000000000, &v77);
    _os_log_impl(&_mh_execute_header, v28, v27, "%{public}s%{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v33 = v26;
  }

  v37 = v73;
  v36 = v74;
  v38 = v16;
  v39 = v69;
  v40 = [objc_opt_self() currentConnection];
  v41 = v70;
  if (v40)
  {
    v42 = v40;
    if ([v40 sk_allowClientOverride])
    {
      sub_100105C8C(v71, v36, &unk_1003D20F0, &qword_1002EB950);
    }

    else
    {
      v52 = type metadata accessor for ClientOverride(0);
      sub_100081DFC(v36, 1, 1, v52);
    }

    type metadata accessor for Client(0);
    sub_100105C8C(v36, v39, &unk_1003D20F0, &qword_1002EB950);
    v53 = v42;
    sub_1001ABF2C();
    v55 = v54;
    v56 = type metadata accessor for TaskPriority();
    sub_100081DFC(v37, 1, 1, v56);
    sub_100219094(v71, v38);
    v57 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v58 = v53;
    v59 = v36;
    v60 = (v41 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    sub_100218508(v38, v61 + v57);
    *(v61 + v60) = v55;
    v62 = (v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8));
    v63 = v75;
    *v62 = sub_1002192F8;
    v62[1] = v63;
    v64 = v55;

    sub_100165CBC();

    sub_10013B1E8(v59, &unk_1003D20F0, &qword_1002EB950);
  }

  else
  {
    v43 = static os_log_type_t.error.getter();

    v44 = Logger.logObject.getter();

    if (os_log_type_enabled(v44, v43))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 136446466;
      v77 = v46;
      v78 = 91;
      v79 = 0xE100000000000000;
      v47._countAndFlagsBits = v67;
      v47._object = v33;
      String.append(_:)(v47);
      v48._countAndFlagsBits = 8285;
      v48._object = 0xE200000000000000;
      String.append(_:)(v48);
      v49 = sub_100080210(v78, v79, &v77);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      *(v45 + 14) = sub_100080210(0xD000000000000037, 0x800000010031EC80, &v77);
      _os_log_impl(&_mh_execute_header, v44, v43, "%{public}s%{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v50 = 1;
    v51 = _convertErrorToNSError(_:)();
    (v76)[2](v76, 0, v51);
  }

  sub_1002190EC();

  _Block_release(v76);
}

void StoreKitServiceConnection.storefront(_:reply:)()
{
  sub_100093D08();
  v88 = v4;
  v89 = v3;
  v87 = v5;
  v6 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v6);
  sub_100089118();
  __chkstk_darwin(v7);
  sub_100089240();
  v8 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  v9 = sub_1000B01B0(v8);
  __chkstk_darwin(v9);
  sub_1001460C4();
  __chkstk_darwin(v10);
  sub_10021A62C();
  v11 = type metadata accessor for StorefrontRequest(0);
  sub_1000890DC();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  sub_10021A0BC();
  __chkstk_darwin(v18);
  sub_1001B5378();
  v90 = v19;
  sub_1001B53DC();
  v20 = type metadata accessor for JSONDecoder();
  sub_10021A330(v20);
  v21 = JSONDecoder.init()();
  sub_1002185B8(&qword_1003CEEE0, type metadata accessor for StorefrontRequest, &unk_1002F20C4);
  sub_1000C43E8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v83 = v15;
  v84 = v13;
  v85 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v1;
  v87 = v2;

  sub_100219DA0();
  sub_100218508(v0, v90);
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v22 = type metadata accessor for SKLogger(0);
  sub_100107C34(v22, qword_1003F26C8);
  v23 = (v90 + *(v11 + 20));
  v24 = *v23;
  v25 = v23[1];
  static os_log_type_t.default.getter();
  sub_10015D264();
  v81 = v21;
  v26 = Logger.logObject.getter();

  v27 = os_log_type_enabled(v26, v0);
  v80 = v24;
  v82 = v25;
  if (v27)
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_1002195CC();
    v28 = swift_slowAlloc();
    *v13 = 136446466;
    sub_100219444(v28);
    v29._countAndFlagsBits = v24;
    v29._object = v25;
    String.append(_:)(v29);
    v30._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v30);
    sub_100219AA4();
    sub_100219D4C();

    sub_1000AFD94();
    v31 = sub_10021AAC4();
    *(v13 + 14) = sub_100080210(v31, v32, v33);
    sub_100219A8C(&_mh_execute_header, v26, v0, "%{public}s%{public}s");
    _os_log_impl(v34, v35, v36, v37, v38, v39);
    sub_1000B0010();
    sub_1000B7D68();

    sub_100219550();
  }

  v40 = v85;
  v42 = v83;
  v41 = v84;
  v43 = [objc_opt_self() currentConnection];
  v44 = v87;
  if (v43)
  {
    v45 = v43;
    if ([v43 sk_allowClientOverride])
    {
      sub_100105C8C(v90, v44, &unk_1003D20F0, &qword_1002EB950);
    }

    else
    {
      type metadata accessor for ClientOverride(0);
      sub_1000B0690();
      sub_100081DFC(v56, v57, v58, v59);
    }

    v60 = type metadata accessor for Client(0);
    v61 = sub_10021ABBC();
    sub_100105C8C(v61, v62, v63, v64);
    v65 = v45;
    sub_1001ABF2C();
    sub_1001B52B0();
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v66, v67, v68, v69);
    v86 = v65;
    v70 = sub_100219CF0();
    sub_100219094(v70, v71);
    v72 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v73 = (v42 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    *(v74 + 24) = 0;
    sub_100219DA0();
    sub_100218508(v40, v75 + v72);
    *(v74 + v73) = v60;
    v76 = (v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8));
    v77 = v88;
    *v76 = v89;
    v76[1] = v77;
    v78 = v60;
    sub_100106CE0();

    sub_1001C5454();
    sub_100165CBC();

    sub_10013B1E8(v44, &unk_1003D20F0, &qword_1002EB950);
    sub_100219D88();
  }

  else
  {
    v46 = static os_log_type_t.error.getter();
    v47 = v82;

    v48 = v81;
    Logger.logObject.getter();
    sub_1000D3ED4();

    if (sub_10021A898())
    {
      sub_1000B7DC8();
      v49 = swift_slowAlloc();
      sub_1000B7DBC();
      v50 = swift_slowAlloc();
      *v49 = 136446466;
      sub_100219444(v50);
      v51._countAndFlagsBits = v80;
      v51._object = v47;
      String.append(_:)(v51);
      v52._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v52);
      sub_100080210(v91[1], v91[2], v91);
      sub_10001E11C();

      *(v49 + 4) = v48;
      sub_10021A07C();
      *(v49 + 14) = sub_100080210(0xD000000000000037, 0x800000010031EC80, v91);
      sub_100107A58(&_mh_execute_header, 0, v46, "%{public}s%{public}s");
      sub_100106E34();
      sub_100219550();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v53 = swift_allocError();
    sub_1002195EC(v53, v54);
    v55 = sub_1002198D4();
    v89(v55);

    sub_100219D88();
  }

  sub_1002190EC();
  sub_100093CB8();
}

uint64_t sub_10020AABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[11] = type metadata accessor for StorefrontInternal(0);
  v7[12] = swift_task_alloc();
  v7[13] = sub_100080FB4(&qword_1003CCEE8, &qword_1002ED4D0);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_10020AB9C, 0, 0);
}

uint64_t sub_10020AB9C()
{
  sub_1000B0004();
  if (qword_1003CBE98 != -1)
  {
    sub_1000ED744();
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = (v1 + *(type metadata accessor for StorefrontRequest(0) + 20));
  v4 = *v3;
  v0[16] = *v3;
  v5 = v3[1];
  v0[17] = v5;
  v0[2] = v4;
  v0[3] = v5;
  v6 = swift_task_alloc();
  v0[18] = v6;
  *(v6 + 16) = v2;

  swift_task_alloc();
  sub_1000F2F10();
  v0[19] = v7;
  *v7 = v8;
  v7[1] = sub_10020AD00;
  sub_1000B0718();

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v9);
}

uint64_t sub_10020AD00()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
  }

  else
  {

    sub_1002195FC();

    return _swift_task_switch(v8, v9, v10);
  }
}

uint64_t sub_10020B1DC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StorefrontManager();
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10020B294;

  return sub_100223DA8();
}

uint64_t sub_10020B294()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AA4();

  return v3();
}

void sub_10020B38C(int a1, int a2, int a3, void *a4)
{
  v7 = sub_10021AD38(a1, a2, a3, a4);
  v8 = v5;
  v12 = v6;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  _Block_copy(v7);
  v9 = sub_1001B5400();
  v4(v9);
  _Block_release(v7);
  v10 = sub_1001B5400();
  sub_10008E168(v10, v11);
}

void sub_10020B42C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v45 = a1;
  v6 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v6 - 8);
  v46 = &v40 - v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v9, qword_1003F26C8);
  sub_1001CA63C();
  v11 = v10;
  v13 = v12;

  v14 = static os_log_type_t.default.getter();

  v15 = Logger.logObject.getter();

  if (os_log_type_enabled(v15, v14))
  {
    v41 = "Could not create client";
    v16 = swift_slowAlloc();
    v43 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v44 = a4;
    v42 = v8;
    *v17 = 136446466;
    v47 = 91;
    v48 = 0xE100000000000000;
    v49 = v18;
    v19._countAndFlagsBits = v11;
    v19._object = v13;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 8285;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v21 = v11;
    v22 = sub_100080210(v47, v48, &v49);

    *(v17 + 4) = v22;
    v11 = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_100080210(0xD000000000000031, v41 | 0x8000000000000000, &v49);
    _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    v8 = v42;
    a4 = v44;

    a2 = v43;
  }

  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    objc_allocWithZone(type metadata accessor for Client(0));
    v25 = v24;
    sub_1001AB4E8();
    if (v26)
    {
      v27 = v26;

      v28 = type metadata accessor for TaskPriority();
      sub_100081DFC(v46, 1, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v11;
      v29[5] = v13;
      v29[6] = v45;
      v29[7] = a2;
      v29[8] = v27;
      v29[9] = sub_100215FB0;
      v29[10] = v8;

      v30 = v27;

      sub_100165CBC();

      _Block_release(a4);
      return;
    }
  }

  v31 = static os_log_type_t.error.getter();

  v32 = Logger.logObject.getter();

  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 136446466;
    v47 = 91;
    v48 = 0xE100000000000000;
    v49 = v34;
    v35._countAndFlagsBits = v11;
    v35._object = v13;
    String.append(_:)(v35);
    v36._countAndFlagsBits = 8285;
    v36._object = 0xE200000000000000;
    String.append(_:)(v36);
    v37 = sub_100080210(v47, v48, &v49);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2082;
    *(v33 + 14) = sub_100080210(0xD000000000000038, 0x800000010031ED20, &v49);
    _os_log_impl(&_mh_execute_header, v32, v31, "%{public}s%{public}s", v33, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  swift_allocError();
  *v38 = 1;
  v39 = _convertErrorToNSError(_:)();
  (a4)[2](a4, 0, v39);

  _Block_release(a4);
}

void StoreKitServiceConnection.isEligibleForIntroductoryOffer(forGroupID:reply:)()
{
  sub_100093D08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v42 = v7;
  v8 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v8);
  sub_100089118();
  __chkstk_darwin(v9);
  sub_1000891AC();
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v10 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v10, qword_1003F26C8);
  sub_1001CA63C();
  v12 = v11;
  v14 = v13;

  v15 = static os_log_type_t.default.getter();

  v16 = Logger.logObject.getter();

  if (os_log_type_enabled(v16, v15))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_1002195DC();
    v0 = swift_slowAlloc();
    *v6 = 136446466;
    sub_100106B4C(v0);
    v17._countAndFlagsBits = sub_10021A25C();
    String.append(_:)(v17);
    v18._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v18);
    sub_100219A70();
    sub_100107144();

    *(v6 + 4) = v12;
    sub_10013BC98();
    *(v6 + 14) = sub_100080210(0xD000000000000031, 0x800000010031ECE0, &v44);
    sub_100219A98(&_mh_execute_header, v16, v15, "%{public}s%{public}s");
    _os_log_impl(v19, v20, v21, v22, v23, v24);
    sub_10010709C();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  if ([objc_opt_self() currentConnection])
  {
    v25 = sub_1000B06A8();
    objc_allocWithZone(type metadata accessor for Client(v25));
    v26 = v0;
    sub_1001AB4E8();
    if (v27)
    {
      sub_10021A0B0();

      type metadata accessor for TaskPriority();
      sub_1000B0690();
      sub_100081DFC(v28, v29, v30, v31);
      sub_10021A7F0();
      v32 = swift_allocObject();
      v33 = sub_10021AC54(v32);
      v33[4] = v12;
      v33[5] = v14;
      v33[6] = v42;
      v33[7] = v6;
      v33[8] = v0;
      v33[9] = v4;
      v33[10] = v2;

      v34 = v0;
      sub_10013B8D4();

      sub_1001C5454();
      sub_100165CBC();

      sub_100093CB8();
      return;
    }
  }

  v35 = static os_log_type_t.error.getter();

  Logger.logObject.getter();
  sub_10021A154();

  if (os_log_type_enabled(v12, v35))
  {
    sub_1000B7DC8();
    v43 = v4;
    v36 = swift_slowAlloc();
    sub_1000B7DBC();
    v0 = swift_slowAlloc();
    *v36 = 136446466;
    sub_100106B4C(v0);
    v37._countAndFlagsBits = sub_10021ABBC();
    String.append(_:)(v37);
    v38._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v38);
    sub_100219A70();
    sub_100123F48();

    *(v36 + 4) = v2;
    sub_1000B04AC();
    *(v36 + 14) = sub_100080210(0xD000000000000038, 0x800000010031ED20, &v44);
    sub_1000B0648(&_mh_execute_header, v12, v35, "%{public}s%{public}s");
    sub_10010709C();
    sub_1000B7D68();

    v4 = v43;
    sub_1000B7D68();
  }

  sub_10008B5E0();
  sub_1000ED9E4();
  v39 = swift_allocError();
  sub_1002195EC(v39, v40);
  v4(0, v0);
  sub_100093CB8();
}

uint64_t sub_10020BDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = v9;
  v5[8] = v10;
  v5[5] = a4;
  v5[6] = a5;
  v6 = swift_task_alloc();
  v5[9] = v6;
  *v6 = v5;
  v6[1] = sub_10020BEC4;

  return sub_100098CCC();
}

uint64_t sub_10020BEC4()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3 & 1;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10020BFD0()
{
  sub_10008BE9C();
  (*(v0 + 56))(*(v0 + 88), 0);
  sub_100098AC4();

  return v1();
}

uint64_t sub_10020C2CC()
{
  *(v1 + 56) = v0;
  v2 = type metadata accessor for URLComponents();
  *(v1 + 64) = v2;
  *(v1 + 72) = *(v2 - 8);
  *(v1 + 80) = swift_task_alloc();
  sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  sub_100080FB4(&qword_1003CEDE0, &unk_1002EF7F0);
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  v3 = type metadata accessor for URL();
  *(v1 + 120) = v3;
  *(v1 + 128) = *(v3 - 8);
  *(v1 + 136) = swift_task_alloc();
  v4 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v4;
  *(v1 + 48) = *(v0 + 32);

  return _swift_task_switch(sub_10020C480, 0, 0);
}

uint64_t sub_10020C480()
{
  sub_1000B02BC();
  v1 = sub_10020F8E0();
  v2 = sub_1001A81B0(v1);
  v0[18] = v2;
  sub_1002101B8(v2);
  v3 = swift_task_alloc();
  v4 = sub_10021AD98(v3);
  v0[20] = v4;
  *(v4 + 16) = v0 + 2;
  swift_task_alloc();
  sub_1000F2F10();
  v0[21] = v5;
  *v5 = v6;
  v5[1] = sub_10020C5F4;
  sub_10021A65C();
  sub_10021A79C();

  return sub_100211A4C(v7, v8, v9, v10, v11);
}

uint64_t sub_10020C5F4()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10020CDD4()
{
  sub_1000B072C();
  sub_1000B0004();

  sub_100219BAC();

  sub_100098AC4();
  sub_1000B0718();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10020CE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v9 = type metadata accessor for URLComponents();
  v4[10] = v9;
  v4[11] = *(v9 - 8);
  v4[12] = swift_task_alloc();
  sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_100080FB4(&qword_1003CEDE0, &unk_1002EF7F0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v4[17] = v10;
  v4[18] = *(v10 - 8);
  v4[19] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;

  return _swift_task_switch(sub_10020D050, 0, 0);
}

uint64_t sub_10020D050()
{
  sub_1000B02BC();
  v1 = sub_10020FBD0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = sub_1001A81B0(v1);
  *(v0 + 160) = v6;
  sub_1002104FC(v6, v5, v4, v3, v2);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *(v7 + 16) = v0 + 16;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *(v8 + 16) = v0 + 16;
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 184) = v9;
  *v9 = v10;
  v9[1] = sub_10020D1F8;
  sub_10021A65C();
  sub_10021A79C();

  return sub_100211C64(v11, v12, v13, v14, v15);
}

uint64_t sub_10020D1F8()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10020D9BC()
{
  sub_1000B072C();
  sub_1000B0004();

  sub_100098AC4();
  sub_1000B0718();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10020DA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v7 = type metadata accessor for URLComponents();
  v3[8] = v7;
  v3[9] = *(v7 - 8);
  v3[10] = swift_task_alloc();
  sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_100080FB4(&qword_1003CEDE0, &unk_1002EF7F0);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v3[15] = v8;
  v3[16] = *(v8 - 8);
  v3[17] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  return _swift_task_switch(sub_10020DC34, 0, 0);
}

uint64_t sub_10020DC34()
{
  sub_1000B02BC();
  v1 = sub_10020FEC4(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = sub_1001A81B0(v1);
  *(v0 + 144) = v5;
  sub_1002108A4(v5, v4, v3, v2);
  v6 = swift_task_alloc();
  v7 = sub_10021AD98(v6);
  *(v0 + 160) = v7;
  *(v7 + 16) = v0 + 16;
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 168) = v8;
  *v8 = v9;
  v8[1] = sub_10020DDB8;
  sub_10021A65C();
  sub_10021A79C();

  return sub_100211A4C(v10, v11, v12, v13, v14);
}

uint64_t sub_10020DDB8()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10020DEC0()
{
  sub_10008BE9C();
  v1 = *(v0 + 40);

  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_10020DF6C;
  v3 = sub_1000B06F4(*(v0 + 136));

  return sub_1000DD034(v3, v4, v5, v6);
}

uint64_t sub_10020DF6C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *v0;
  sub_100098AB4();
  *v6 = v5;
  *(v8 + 192) = v7;

  v9 = sub_10009F0B8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10020E084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  sub_10021A774();
  a27 = v31;
  a28 = v32;
  sub_10021AB14();
  a26 = v28;
  if (*(v28 + 192))
  {
    v33 = *(v28 + 136);
    v34 = *(v28 + 144);
    v35 = *(v28 + 120);
    v36 = *(v28 + 128);
    swift_willThrow();

    (*(v36 + 8))(v33, v35);
    sub_100219BAC();

    sub_100098AC4();
    sub_1000D8A10();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  sub_10021A874();
  sub_100219D64();
  if (!sub_100081D0C(v46, v47, v48))
  {
    sub_100212450(*(v28 + 40));
    URLComponents.queryItems.setter();
  }

  [objc_allocWithZone(AMSEngagementRequest) init];
  sub_100219E00();
  sub_100219D64();
  v52 = sub_100081D0C(v49, v50, v51);
  v53 = *(v28 + 120);
  if (v52)
  {
    sub_1000B0690();
    sub_100081DFC(v54, v55, v56, v53);
LABEL_11:
    v107 = 0;
    goto LABEL_12;
  }

  v57 = sub_10021A134();
  v58(v57);
  URLComponents.url.getter();
  v59 = sub_10021A60C();
  v60(v59);
  v61 = sub_1001B53A4();
  sub_1001B5430(v61, v62, v53);
  if (v64)
  {
    goto LABEL_11;
  }

  URL._bridgeToObjectiveC()(v63);
  v107 = v106;
  v108 = sub_100093DD0();
  v109(v108);
LABEL_12:
  v65 = *(v28 + 144);
  v66 = *(v28 + 104);
  v67 = *(v28 + 64);
  [v30 setURL:v107];

  [v30 setAccount:v65];
  v68 = sub_1000C43E8();
  sub_100105C8C(v68, v69, &qword_1003CEDE0, &unk_1002EF7F0);
  v70 = sub_1001B53A4();
  v72 = sub_100081D0C(v70, v71, v67);
  v73 = sub_1001B55F0();
  sub_10013B1E8(v73, v74, &unk_1002EF7F0);
  if (v72 == 1)
  {
    a13 = v65;
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v75 = type metadata accessor for SKLogger(0);
    sub_1000B01C8(v75, qword_1003F26C8);
    a15 = 0;
    a16 = 0xE000000000000000;
    _StringGuts.grow(_:)(88);
    sub_10021A0DC();
    v77._countAndFlagsBits = v76 + 35;
    v77._object = (v78 | 0x8000000000000000);
    String.append(_:)(v77);
    v79._countAndFlagsBits = sub_100219824();
    String.append(_:)(v79);
    v80._countAndFlagsBits = sub_100219848();
    String.append(_:)(v80);
    sub_10021942C();
    v83 = sub_1002185B8(v81, v82, &protocol conformance descriptor for URL);
    v84._countAndFlagsBits = sub_10021A3CC(v83);
    String.append(_:)(v84);

    v85 = a16;
    a11 = a15;
    v86 = static os_log_type_t.error.getter();

    v87 = Logger.logObject.getter();

    v88 = os_log_type_enabled(v87, v86);
    v90 = *(v28 + 128);
    v89 = *(v28 + 136);
    v72 = *(v28 + 120);
    if (v88)
    {
      a12 = v30;
      v91 = *(v28 + 48);
      v92 = *(v28 + 56);
      sub_1000B7DC8();
      v93 = swift_slowAlloc();
      sub_1000B7DBC();
      a10 = v72;
      v72 = swift_slowAlloc();
      *v93 = 136446466;
      sub_10009F0F8();
      a14 = v94;
      a15 = v95;
      a16 = v96;
      a9 = v89;
      v97._countAndFlagsBits = v91;
      v97._object = v92;
      String.append(_:)(v97);
      v98._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v98);
      sub_100080210(a15, a16, &a14);
      sub_100107144();

      *(v93 + 4) = v91;
      sub_100107300();
      v99 = sub_100080210(a11, v85, &a14);

      *(v93 + 14) = v99;
      sub_1001076B8(&_mh_execute_header, v87, v86, "%{public}s%{public}s");
      sub_10010709C();
      sub_1000B7D68();

      sub_1000B7D68();

      (*(v90 + 8))(a9, a10);
    }

    else
    {

      v103 = sub_100107174();
      v105(v103, v104);
    }
  }

  else
  {
    v100 = [v30 URL];
    if (v100)
    {
      sub_10021A998(v100);

      v101 = sub_100219AC0();
      v102(v101);
      sub_10021A3A0();
      sub_10013B1E8(v67, &unk_1003D0540, &unk_1002EDD50);
    }

    else
    {
      a12 = v30;
      v110 = *(v28 + 88);
      sub_1000B0690();
      sub_100081DFC(v111, v112, v113, v114);
      sub_10013B1E8(v110, &unk_1003D0540, &unk_1002EDD50);
      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v115 = type metadata accessor for SKLogger(0);
      sub_1000B01C8(v115, qword_1003F26C8);
      a15 = 0;
      a16 = 0xE000000000000000;
      _StringGuts.grow(_:)(77);
      sub_10021A0DC();
      v117._countAndFlagsBits = v116 + 3;
      v117._object = (v118 | 0x8000000000000000);
      String.append(_:)(v117);
      sub_10021942C();
      v121 = sub_1002185B8(v119, v120, &protocol conformance descriptor for URL);
      v122._countAndFlagsBits = sub_10021A3CC(v121);
      String.append(_:)(v122);

      sub_1000B00A8();
      v123._countAndFlagsBits = 0xD000000000000023;
      String.append(_:)(v123);
      v124._countAndFlagsBits = sub_100219824();
      String.append(_:)(v124);
      v72 = a16;
      static os_log_type_t.error.getter();
      sub_1000B0678();
      v125 = v66;
      Logger.logObject.getter();
      sub_10001E11C();

      if (os_log_type_enabled(v66, v29))
      {
        sub_1000B7DC8();
        v126 = swift_slowAlloc();
        sub_1000B7DBC();
        a13 = v65;
        v127 = swift_slowAlloc();
        a15 = v127;
        *v126 = 136446466;
        *(v126 + 4) = sub_100093CF0(v127, v128, &a15);
        sub_100107300();
        v129 = sub_100219F9C();
        v132 = sub_100080210(v129, v130, v131);

        *(v126 + 14) = v132;
        sub_10021A250();
        sub_1001076B8(v133, v134, v135, v136);
        sub_10021960C();
        swift_arrayDestroy();
        sub_10015CFF0();

        sub_1000B7D68();
      }

      else
      {
      }

      v137 = sub_1000D4078();
      v138(v137);
    }
  }

  sub_100219BAC();
  sub_10013B1E8(v72, &qword_1003CEDE0, &unk_1002EF7F0);

  sub_10009F198();
  sub_1000D8A10();

  return v141(v139, v140, v141, v142, v143, v144, v145, v146, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void *sub_10020E7DC(uint64_t a1)
{
  v9 = 0;
  v2 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v9];
  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = v3;
    v4 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    sub_100212684(v4, v1);
    v9 = v4;
    sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
    }

    else
    {
      swift_allocError();
      *v6 = v4;
    }

    v7 = _convertErrorToNSError(_:)();

    [v7 toASDErrorWithMetadata:0];

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10020E980(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 224) = a4;
  *(v5 + 168) = a1;
  *(v5 + 176) = *(v4 + 16);
  *(v5 + 192) = *(v4 + 32);
  return _swift_task_switch(sub_10020E9B4, 0, 0);
}

uint64_t sub_10020E9B4()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_100219B48();
  sub_10008E5A4(0, &qword_1003D27F8, AMSSystemEngagementTask_ptr);
  v4 = v1;
  v5 = v3;
  v6 = sub_10021AB38();
  v8 = sub_10021DB28(v6, v7);
  v0[25] = v8;
  sub_10021A68C([v8 present]);
  v0[2] = v9;
  v0[7] = v2;
  sub_10021A93C();
  v10 = sub_100080FB4(&qword_1003D2800, &qword_1002FB400);
  sub_1002196BC(v10);
  v0[11] = 1107296256;
  sub_1002196A4();
  sub_10021AA78(v11, "resultWithCompletion:");
  sub_1000B0718();

  return _swift_continuation_await(v12);
}

uint64_t sub_10020EAC8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10020EEA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 224) = a4;
  *(v8 + 168) = a1;
  *(v8 + 176) = a6;
  return _swift_task_switch(sub_10020EEC8, 0, 0);
}

uint64_t sub_10020EEC8()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_100219B48();
  sub_10008E5A4(0, &qword_1003D27F8, AMSSystemEngagementTask_ptr);
  v4 = v1;
  v5 = v3;
  v6 = sub_10021AB38();
  v8 = sub_10021DB28(v6, v7);
  v0[25] = v8;
  sub_10021A68C([v8 present]);
  v0[2] = v9;
  v0[7] = v2;
  sub_10021A93C();
  v10 = sub_100080FB4(&qword_1003D2800, &qword_1002FB400);
  sub_1002196BC(v10);
  v0[11] = 1107296256;
  sub_1002196A4();
  sub_10021AA78(v11, "resultWithCompletion:");
  sub_1000B0718();

  return _swift_continuation_await(v12);
}

uint64_t sub_10020EFDC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10020F38C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 184) = a6;
  *(v7 + 192) = a7;
  *(v7 + 224) = a4;
  *(v7 + 168) = a1;
  *(v7 + 176) = a5;
  return _swift_task_switch(sub_10020F3B4, 0, 0);
}

uint64_t sub_10020F3B4()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_100219B48();
  sub_10008E5A4(0, &qword_1003D27F8, AMSSystemEngagementTask_ptr);
  v4 = v1;
  v5 = v3;
  v6 = sub_10021AB38();
  v8 = sub_10021DB28(v6, v7);
  v0[25] = v8;
  sub_10021A68C([v8 present]);
  v0[2] = v9;
  v0[7] = v2;
  sub_10021A93C();
  v10 = sub_100080FB4(&qword_1003D2800, &qword_1002FB400);
  sub_1002196BC(v10);
  v0[11] = 1107296256;
  sub_1002196A4();
  sub_10021AA78(v11, "resultWithCompletion:");
  sub_1000B0718();

  return _swift_continuation_await(v12);
}

uint64_t sub_10020F4C8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10020F5C4()
{
  sub_10008BE9C();
  v1 = *(v0 + 208);

  v2 = *(v0 + 144);
  sub_10009F198();

  return v3(v2);
}

id sub_10020F8E0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_10008E5A4(0, &unk_1003CED80, off_10037DC70);
  result = sub_10018C008(6);
  if (result)
  {
    v4 = result;
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v5, qword_1003F26C8);
    _StringGuts.grow(_:)(68);
    v6._countAndFlagsBits = 0xD00000000000003ELL;
    v6._object = 0x800000010031F320;
    String.append(_:)(v6);
    v7._object = 0x800000010031F3D0;
    v7._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 8250;
    v8._object = 0xE200000000000000;
    String.append(_:)(v8);
    v9 = [v4 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14 = static os_log_type_t.default.getter();

    v15 = Logger.logObject.getter();

    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v16 = 136446466;
      v17._countAndFlagsBits = v1;
      v17._object = v2;
      String.append(_:)(v17);
      v18._countAndFlagsBits = 8285;
      v18._object = 0xE200000000000000;
      String.append(_:)(v18);
      v19 = sub_100080210(91, 0xE100000000000000, &v21);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      v20 = sub_100080210(0, 0xE000000000000000, &v21);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return swift_willThrow();
  }

  return result;
}

id sub_10020FBD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10008E5A4(0, &unk_1003CED80, off_10037DC70);
  result = sub_10018C008(7);
  if (result)
  {
    v7 = result;
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v8, qword_1003F26C8);
    _StringGuts.grow(_:)(68);
    v9._object = 0x800000010031F320;
    v9._countAndFlagsBits = 0xD00000000000003ELL;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 0x7220646E75666572;
    v10._object = 0xEE00747365757165;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 8250;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    v12 = [v7 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17 = static os_log_type_t.default.getter();

    v18 = Logger.logObject.getter();

    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v19 = 136446466;
      v20._countAndFlagsBits = a3;
      v20._object = a4;
      String.append(_:)(v20);
      v21._countAndFlagsBits = 8285;
      v21._object = 0xE200000000000000;
      String.append(_:)(v21);
      v22 = sub_100080210(91, 0xE100000000000000, &v24);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      v23 = sub_100080210(0, 0xE000000000000000, &v24);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v19, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return swift_willThrow();
  }

  return result;
}

id sub_10020FEC4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10008E5A4(0, &unk_1003CED80, off_10037DC70);
  result = sub_10018C008(8);
  if (result)
  {
    v6 = result;
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v7, qword_1003F26C8);
    _StringGuts.grow(_:)(68);
    v8._object = 0x800000010031F320;
    v8._countAndFlagsBits = 0xD00000000000003ELL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 0x6465722065646F63;
    v9._object = 0xEF6E6F6974706D65;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 8250;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11 = [v6 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16 = static os_log_type_t.default.getter();

    v17 = Logger.logObject.getter();

    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v18 = 136446466;
      v19._countAndFlagsBits = a2;
      v19._object = a3;
      String.append(_:)(v19);
      v20._countAndFlagsBits = 8285;
      v20._object = 0xE200000000000000;
      String.append(_:)(v20);
      v21 = sub_100080210(91, 0xE100000000000000, &v23);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      v22 = sub_100080210(0, 0xE000000000000000, &v23);

      *(v18 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return swift_willThrow();
  }

  return result;
}

void sub_1002101B8(void *a1)
{
  v3 = type metadata accessor for Client.Server(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = [a1 ams_DSID];
  if (v8)
  {
  }

  else
  {
    sub_1001A7E5C(0, v9, v10, v11, v12, v13, v14, v15, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6]);
    v16 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
    if (sub_100081D0C(v5, 2, v16))
    {
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for SKLogger(0);
      sub_10007EDA4(v17, qword_1003F26C8);
      v34 = 0;
      v35 = 0xE000000000000000;
      _StringGuts.grow(_:)(113);
      v18._countAndFlagsBits = 0xD000000000000034;
      v18._object = 0x800000010031F2A0;
      String.append(_:)(v18);
      v19._object = 0x800000010031F3D0;
      v19._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v19);
      v20._countAndFlagsBits = 0xD00000000000003BLL;
      v20._object = 0x800000010031F2E0;
      String.append(_:)(v20);
      v22 = v34;
      v21 = v35;
      v23 = static os_log_type_t.default.getter();

      v24 = Logger.logObject.getter();

      if (os_log_type_enabled(v24, v23))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v33 = v22;
        v37[0] = v26;
        *v25 = 136446466;
        v34 = 91;
        v35 = 0xE100000000000000;
        v27._countAndFlagsBits = v7;
        v27._object = v6;
        String.append(_:)(v27);
        v28._countAndFlagsBits = 8285;
        v28._object = 0xE200000000000000;
        String.append(_:)(v28);
        v29 = sub_100080210(v34, v35, v37);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2082;
        v30 = sub_100080210(v33, v21, v37);

        *(v25 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
      v31 = type metadata accessor for URL();
      (*(*(v31 - 8) + 8))(v5, v31);
    }
  }
}

void sub_1002104FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for Client.Server(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 ams_DSID];
  if (v11)
  {
  }

  else
  {
    sub_1001A7E5C(0, v12, v13, v14, v15, v16, v17, v18, v33, v34, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8]);
    v19 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
    if (sub_100081D0C(v10, 2, v19))
    {
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for SKLogger(0);
      sub_10007EDA4(v20, qword_1003F26C8);
      v33 = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v21._object = 0x800000010031F390;
      v21._countAndFlagsBits = 0xD00000000000003BLL;
      String.append(_:)(v21);
      v22._countAndFlagsBits = 0x7220646E75666572;
      v22._object = 0xEE00747365757165;
      String.append(_:)(v22);
      v24 = v33;
      v23 = v34;
      v25 = static os_log_type_t.error.getter();

      v26 = Logger.logObject.getter();

      if (os_log_type_enabled(v26, v25))
      {
        v27 = swift_slowAlloc();
        v36[0] = swift_slowAlloc();
        *v27 = 136446466;
        v33 = 91;
        v34 = 0xE100000000000000;
        v28._countAndFlagsBits = a4;
        v28._object = a5;
        String.append(_:)(v28);
        v29._countAndFlagsBits = 8285;
        v29._object = 0xE200000000000000;
        String.append(_:)(v29);
        v30 = sub_100080210(v33, v34, v36);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2082;
        v31 = sub_100080210(v24, v23, v36);

        *(v27 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v26, v25, "%{public}s%{public}s", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      type metadata accessor for ASDError(0);
      v36[0] = 509;
      sub_1000B61D4(_swiftEmptyArrayStorage);
      sub_1002185B8(&qword_1003CC170, type metadata accessor for ASDError, &unk_1002EA92C);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }

    else
    {
      v32 = type metadata accessor for URL();
      (*(*(v32 - 8) + 8))(v10, v32);
    }
  }
}

void sub_1002108A4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Client.Server(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 ams_DSID];
  if (v10)
  {
  }

  else
  {
    sub_1001A7E5C(0, v11, v12, v13, v14, v15, v16, v17, v34, v35, v36, v37, v38, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6]);
    v18 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
    if (sub_100081D0C(v9, 2, v18))
    {
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for SKLogger(0);
      sub_10007EDA4(v19, qword_1003F26C8);
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(113);
      v20._object = 0x800000010031F2A0;
      v20._countAndFlagsBits = 0xD000000000000034;
      String.append(_:)(v20);
      v21._countAndFlagsBits = 0x6465722065646F63;
      v21._object = 0xEF6E6F6974706D65;
      String.append(_:)(v21);
      v22._countAndFlagsBits = 0xD00000000000003BLL;
      v22._object = 0x800000010031F2E0;
      String.append(_:)(v22);
      v24 = v36;
      v23 = v37;
      v25 = static os_log_type_t.default.getter();

      v26 = Logger.logObject.getter();

      if (os_log_type_enabled(v26, v25))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35 = v24;
        v39[0] = v28;
        *v27 = 136446466;
        v36 = 91;
        v37 = 0xE100000000000000;
        v29._countAndFlagsBits = a3;
        v29._object = a4;
        String.append(_:)(v29);
        v30._countAndFlagsBits = 8285;
        v30._object = 0xE200000000000000;
        String.append(_:)(v30);
        v31 = sub_100080210(v36, v37, v39);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v32 = sub_100080210(v35, v23, v39);

        *(v27 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v26, v25, "%{public}s%{public}s", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
      v33 = type metadata accessor for URL();
      (*(*(v33 - 8) + 8))(v9, v33);
    }
  }
}

uint64_t sub_100210BF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(v2 + 160) = a1;
  *(v2 + 168) = v3;
  return _swift_task_switch(sub_100210C18, 0, 0);
}

uint64_t sub_100210C18()
{
  sub_1000B061C();
  sub_1000B0004();
  v2 = sub_1001A7AB4();
  if (qword_1003CBE18 != -1)
  {
    swift_once();
  }

  sub_10015D300([v2 URLForKey:qword_1003F2600]);
  v0[2] = v0;
  v0[7] = v0 + 18;
  sub_10013BB4C();
  v3 = sub_100080FB4(&unk_1003CEE10, &unk_1002FC240);
  sub_10008BD44(v3);
  v0[11] = 1107296256;
  sub_10019DC40();
  [v1 valueWithCompletion:v0 + 10];
  sub_1000B0518();

  return _swift_continuation_await(v4);
}

uint64_t sub_100210D54()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100210E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 160) = a1;
  *(v3 + 168) = a3;
  return _swift_task_switch(sub_100210E70, 0, 0);
}

uint64_t sub_100210E70()
{
  sub_1000B061C();
  sub_1000B0004();
  v2 = sub_1001A7AB4();
  if (qword_1003CBE78 != -1)
  {
    swift_once();
  }

  sub_10015D300([v2 URLForKey:qword_1003F26E0]);
  v0[2] = v0;
  v0[7] = v0 + 18;
  sub_10013BB4C();
  v3 = sub_100080FB4(&unk_1003CEE10, &unk_1002FC240);
  sub_10008BD44(v3);
  v0[11] = 1107296256;
  sub_10019DC40();
  [v1 valueWithCompletion:v0 + 10];
  sub_1000B0518();

  return _swift_continuation_await(v4);
}

uint64_t sub_100210FAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_100210FCC, 0, 0);
}

uint64_t sub_100210FCC()
{
  sub_1000B061C();
  sub_1000B0004();
  v2 = sub_1001A7AB4();
  if (qword_1003CBC88 != -1)
  {
    swift_once();
  }

  sub_10015D300([v2 URLForKey:qword_1003F25A0]);
  v0[2] = v0;
  v0[7] = v0 + 18;
  sub_10013BB4C();
  v3 = sub_100080FB4(&unk_1003CEE10, &unk_1002FC240);
  sub_10008BD44(v3);
  v0[11] = 1107296256;
  sub_10019DC40();
  [v1 valueWithCompletion:v0 + 10];
  sub_1000B0518();

  return _swift_continuation_await(v4);
}

uint64_t sub_100211108()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100211204()
{
  sub_10008BE9C();
  v1 = *(v0 + 144);

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100098AA4();

  return v2();
}

void sub_100211274(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v5, qword_1003F26C8);
  _StringGuts.grow(_:)(63);
  v6._countAndFlagsBits = 0xD000000000000039;
  v6._object = 0x800000010031F260;
  String.append(_:)(v6);
  v7._object = 0x800000010031F3D0;
  v7._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v17[0] = a1;
  sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
  _print_unlocked<A, B>(_:_:)();
  v9 = static os_log_type_t.error.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136446466;
    v17[0] = v12;
    v17[1] = 91;
    v17[2] = 0xE100000000000000;
    v13._countAndFlagsBits = v4;
    v13._object = v3;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = sub_100080210(91, 0xE100000000000000, v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_100080210(0, 0xE000000000000000, v17);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10021150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v8, qword_1003F26C8);
  _StringGuts.grow(_:)(63);
  v9._object = 0x800000010031F260;
  v9._countAndFlagsBits = 0xD000000000000039;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x7220646E75666572;
  v10._object = 0xEE00747365757165;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v20[0] = a1;
  sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
  _print_unlocked<A, B>(_:_:)();
  v12 = static os_log_type_t.error.getter();

  v13 = Logger.logObject.getter();

  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136446466;
    v20[0] = v15;
    v20[1] = 91;
    v20[2] = 0xE100000000000000;
    v16._countAndFlagsBits = a4;
    v16._object = a5;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8285;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v18 = sub_100080210(91, 0xE100000000000000, v20);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_100080210(0, 0xE000000000000000, v20);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1002117AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v7, qword_1003F26C8);
  _StringGuts.grow(_:)(63);
  v8._object = 0x800000010031F260;
  v8._countAndFlagsBits = 0xD000000000000039;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6465722065646F63;
  v9._object = 0xEF6E6F6974706D65;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v19[0] = a1;
  sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
  _print_unlocked<A, B>(_:_:)();
  v11 = static os_log_type_t.error.getter();

  v12 = Logger.logObject.getter();

  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136446466;
    v19[0] = v14;
    v19[1] = 91;
    v19[2] = 0xE100000000000000;
    v15._countAndFlagsBits = a3;
    v15._object = a4;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 8285;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v17 = sub_100080210(91, 0xE100000000000000, v19);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = sub_100080210(0, 0xE000000000000000, v19);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v12, v11, "%{public}s%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100211A4C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v9 = a2 + *a2;
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_100211B4C;

  return (v9)(a1, v5 + 2);
}

uint64_t sub_100211B4C()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *v1;
  sub_100098AB4();
  *v3 = v2;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    sub_100098AC4();

    return v7();
  }
}

uint64_t sub_100211C64(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v9 = a2 + *a2;
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_100211D64;

  return (v9)(a1, v5 + 2);
}

uint64_t sub_100211D64()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *v1;
  sub_100098AB4();
  *v3 = v2;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    sub_100098AC4();

    return v7();
  }
}

uint64_t sub_100211E7C()
{
  sub_1000B0004();
  v8 = v0;
  v1 = v0[4];
  v7 = v0[2];
  v2 = v7;
  swift_errorRetain();
  v1(&v7);
  v0[3] = v2;
  v3 = sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
  sub_1001B5400();
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    sub_10001E11C();
  }

  else
  {
    sub_1000ED9E4();
    swift_allocError();
    *v4 = v2;
  }

  _convertErrorToNSError(_:)();
  sub_10001E104();

  [v3 toASDErrorWithMetadata:0];

  swift_willThrow();

  sub_100098AC4();

  return v5();
}

void *sub_100211F94()
{
  v18 = type metadata accessor for URLQueryItem();
  v1 = *(v18 - 8);
  __chkstk_darwin(v18);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v6;

  v10 = sub_100188B08(v9, v7, v8, v4, v5);

  v11 = *(v10 + 16);
  if (v11)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_1002133B4(0, v11, 0);
    v12 = v19;
    v17[1] = v10;
    v13 = v10 + 48;
    do
    {
      v13 += 24;

      URLQueryItem.init(name:value:)();

      v19 = v12;
      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        sub_1002133B4(v14 > 1, v15 + 1, 1);
        v12 = v19;
      }

      v12[2] = v15 + 1;
      (*(v1 + 32))(v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v15, v3, v18);
      --v11;
    }

    while (v11);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

void *sub_100212210(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = type metadata accessor for URLQueryItem();
  v8 = *(v20 - 8);
  __chkstk_darwin(v20);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2;

  v12 = sub_1001D8EEC(v11, a3, a4, a1);

  v13 = *(v12 + 16);
  if (v13)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_1002133B4(0, v13, 0);
    v19[1] = v12;
    v14 = v12 + 48;
    v15 = v21;
    do
    {

      URLQueryItem.init(name:value:)();

      v21 = v15;
      v17 = v15[2];
      v16 = v15[3];
      if (v17 >= v16 >> 1)
      {
        sub_1002133B4(v16 > 1, v17 + 1, 1);
        v15 = v21;
      }

      v14 += 24;
      v15[2] = v17 + 1;
      (*(v8 + 32))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v10, v20);
      --v13;
    }

    while (v13);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v15;
}

void *sub_100212450(void *a1)
{
  v14 = type metadata accessor for URLQueryItem();
  v2 = *(v14 - 8);
  __chkstk_darwin(v14);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1;

  v6 = sub_1000DCF00(v5);

  v7 = *(v6 + 16);
  if (v7)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_1002133B4(0, v7, 0);
    v13[0] = v6;
    v13[1] = v2 + 32;
    v8 = v15;
    v9 = v6 + 48;
    do
    {
      v9 += 24;

      URLQueryItem.init(name:value:)();

      v15 = v8;
      v11 = v8[2];
      v10 = v8[3];
      if (v11 >= v10 >> 1)
      {
        sub_1002133B4(v10 > 1, v11 + 1, 1);
        v8 = v15;
      }

      v8[2] = v11 + 1;
      (*(v2 + 32))(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11, v4, v14);
      --v7;
    }

    while (v7);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

void sub_100212684(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v5, qword_1003F26C8);
  _StringGuts.grow(_:)(66);
  v6._countAndFlagsBits = 0xD00000000000003CLL;
  v6._object = 0x800000010031F3F0;
  String.append(_:)(v6);
  v7._object = 0x800000010031F3D0;
  v7._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v17[0] = a1;
  sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
  _print_unlocked<A, B>(_:_:)();
  v9 = static os_log_type_t.error.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136446466;
    v17[0] = v12;
    v17[1] = 91;
    v17[2] = 0xE100000000000000;
    v13._countAndFlagsBits = v4;
    v13._object = v3;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = sub_100080210(91, 0xE100000000000000, v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_100080210(0, 0xE000000000000000, v17);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

id sub_100212920(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  String._bridgeToObjectiveC()();
  sub_10021A0FC();

  if (a4)
  {
    Dictionary._bridgeToObjectiveC()();
    sub_10021A554();
  }

  else
  {
    a2 = 0;
  }

  v9 = [v4 initWithDomain:v5 code:a3 userInfo:a2];

  return v9;
}

id sub_1002129C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v8 = 0;
  if (sub_100081D0C(a1, 1, v6) != 1)
  {
    URL._bridgeToObjectiveC()(v7);
    v8 = v9;
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  if (a2)
  {
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  v11 = [v3 initWithSingle:v8 multi:v10.super.isa];

  return v11;
}

char *sub_100212AB0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

char *sub_100212AD0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

char *sub_100212AF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

char *sub_100212B14(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

char *sub_100212BAC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

char *sub_100212BD4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

void sub_100212BFC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_100098B7C(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    sub_1001B55F0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_1001B55F0();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_100212CCC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1002193E8(a3, result);
  }

  return result;
}

unint64_t sub_100212CF4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100212F0C(a1, v4);
}

void sub_100212D38(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_1000EDD18();

  sub_1001B55F0();
  sub_100213290();
}

unint64_t sub_100212DC0(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1002185B8(&qword_1003D3100, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_10021A548();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100212FD0(a1, v2);
}

unint64_t sub_100212E58(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1002185B8(&qword_1003D2768, type metadata accessor for CFString, &unk_1002EB6A0);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10021318C(a1, v2);
}

unint64_t sub_100212F0C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1001060C4(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10008E550(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100212FD0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1002185B8(&qword_1003D2740, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10021318C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_1002185B8(&qword_1003D2768, type metadata accessor for CFString, &unk_1002EB6A0);
    v8 = v7;
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {
      break;
    }
  }

  return i;
}

void sub_100213290()
{
  sub_100093D08();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
    {

      break;
    }

    sub_10009F14C();
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      break;
    }
  }

  sub_100093CB8();
}

char *sub_100213394(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10021364C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10021344C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100213758(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002134AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100213AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002134CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100213BB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002134EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100213CC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100213564(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_1001DA7B0();
    if (v7 != v8)
    {
      sub_1001DA8A0();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1001DA7A0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_100080FB4(&unk_1003D2720, &qword_1002ED4B0);
    v11 = swift_allocObject();
    j__malloc_size(v11);
    sub_10021AAA4();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_10021364C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100080FB4(&qword_1003CCBB0, &qword_1002ED310);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100213758(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100080FB4(&qword_1003CF320, &qword_1002F2AC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100080FB4(&unk_1003D2730, &qword_1002FADC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100213890()
{
  sub_10021AEEC();
  v4 = v3;
  v6 = v5;
  if (v7)
  {
    sub_1001DA7B0();
    if (v9 != v10)
    {
      sub_1001DA8A0();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1001DA7A0();
    }
  }

  else
  {
    v8 = v0;
  }

  v11 = v4[2];
  if (v8 <= v11)
  {
    v12 = v4[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_100080FB4(v1, v2);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 8);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (v6)
  {
    if (v13 != v4 || &v4[v11 + 4] <= v13 + 4)
    {
      v16 = sub_100128CCC();
      memmove(v16, v17, v18);
    }

    v4[2] = 0;
  }

  else
  {
    v19 = sub_1001B55F0();
    sub_100080FB4(v19, v20);
    sub_100128CCC();
    swift_arrayInitWithCopy();
  }

  sub_10021AED8();
}

void sub_100213998(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_1001DA7B0();
    if (v7 != v8)
    {
      sub_1001DA8A0();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1001DA7A0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_100080FB4(&unk_1003D28C0, &qword_1002FAAF8);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 48);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v11 != a4 || &a4[6 * v9 + 4] <= v11 + 4)
    {
      v14 = sub_1000D4078();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100080FB4(&qword_1003D0A88, &unk_1002F77B0);
    sub_1000D4078();
    swift_arrayInitWithCopy();
  }
}

char *sub_100213AB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100080FB4(&unk_1003D28D0, &qword_1002FB0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_100213BB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100080FB4(&unk_1003D1CB0, &qword_1002FA298);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100213CC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100080FB4(&qword_1003D2748, &qword_1002FADC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}