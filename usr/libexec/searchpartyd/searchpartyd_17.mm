uint64_t sub_1001F861C()
{
  v1 = v0[54];
  v0[55] = v0[6];
  v0[56] = v1;
  v2 = swift_allocObject();
  v0[57] = v2;
  *(v2 + 16) = v1;

  v3 = swift_task_alloc();
  v0[58] = v3;
  v4 = sub_1000BC4D4(&qword_101699B80, &unk_101392660);
  *v3 = v0;
  v3[1] = sub_1001F88C0;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000014, 0x8000000101392560, sub_10001F63C, v2, v4);
}

uint64_t sub_1001F873C()
{

  v1 = *(v0 + 48);

  return _swift_task_switch(sub_1001F87B0, v1, 0);
}

uint64_t sub_1001F87B0()
{
  v0[55] = v0[6];
  v0[56] = 0;
  v1 = swift_allocObject();
  v0[57] = v1;
  *(v1 + 16) = 0;
  v2 = swift_task_alloc();
  v0[58] = v2;
  v3 = sub_1000BC4D4(&qword_101699B80, &unk_101392660);
  *v2 = v0;
  v2[1] = sub_1001F88C0;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000014, 0x8000000101392560, sub_10001F63C, v1, v3);
}

uint64_t sub_1001F88C0()
{
  v1 = *v0;

  v2 = *(v1 + 440);

  return _swift_task_switch(sub_1001F89F4, v2, 0);
}

uint64_t sub_1001F89F4()
{
  v162 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 16);
  *(v0 + 472) = v2;
  v157 = *(v1 + 16);
  log = v2;
  if (v157)
  {
    v3 = 0;
    v138 = *(v0 + 256);
    v154 = *(v0 + 248);
    v151 = v1 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
    v4 = *(v0 + 112);
    v148 = (v4 + 16);
    v5 = (v4 + 8);
    v140 = (v4 + 56);
    v6 = *(v0 + 184);
    v142 = (v6 + 56);
    v143 = v5;
    v137 = v6;
    v141 = (v6 + 48);
    v7 = *(v0 + 312);
    v139 = v7;
    v145 = v1;
    do
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_100203698(v151 + *(v154 + 72) * v3, *(v0 + 312), type metadata accessor for ObservedAdvertisement);
      v8 = *(v7 + 16);
      *(v0 + 480) = v8;
      v9 = *(v7 + 24);
      *(v0 + 488) = v9;
      if ((v9 & 0x2000000000000000) != 0)
      {
        if (qword_101694780 != -1)
        {
          swift_once();
        }

        v16 = *(v0 + 312);
        v17 = *(v0 + 256);
        v18 = *(v0 + 128);
        v19 = *(v0 + 104);
        v20 = *(v0 + 40);
        v21 = type metadata accessor for Logger();
        sub_1000076D4(v21, qword_10177AE40);
        sub_100203698(v16, v17, type metadata accessor for ObservedAdvertisement);
        (*v148)(v18, v20, v19);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        v24 = os_log_type_enabled(v22, v23);
        v25 = *(v0 + 256);
        v26 = *(v0 + 128);
        v27 = *(v0 + 104);
        if (v24)
        {
          v28 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          *v28 = 141558787;
          *(v28 + 4) = 1752392040;
          *(v28 + 12) = 2081;
          v29 = sub_10001904C(*(v138 + 16), *(v138 + 24));
          v31 = v30;
          sub_100203700(v25, type metadata accessor for ObservedAdvertisement);
          v32 = sub_1000136BC(v29, v31, &v161);

          *(v28 + 14) = v32;
          *(v28 + 22) = 2160;
          *(v28 + 24) = 1752392040;
          *(v28 + 32) = 2081;
          sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v33 = dispatch thunk of CustomStringConvertible.description.getter();
          v35 = v34;
          (*v143)(v26, v27);
          v36 = v33;
          v1 = v145;
          v37 = sub_1000136BC(v36, v35, &v161);
          v7 = v139;

          *(v28 + 34) = v37;
          _os_log_impl(&_mh_execute_header, v22, v23, "Observation advertisement %{private,mask.hash}s did not get reconciled for imported beacon %{private,mask.hash}s", v28, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          (*v143)(v26, v27);
          sub_100203700(v25, type metadata accessor for ObservedAdvertisement);
        }

        sub_100203700(*(v0 + 312), type metadata accessor for ObservedAdvertisement);
        v2 = log;
      }

      else
      {
        if (v2)
        {
          v10 = *(v0 + 216);
          v11 = *(v0 + 104);
          (*v148)(v10, *(v0 + 40), v11);
          v12 = 1;
          (*v140)(v10, 0, 1, v11);

          v13 = sub_1012DD334(v8, v9, v10);
          v14 = v13[2];
          if (v14)
          {
            sub_100203698(v13 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * (v14 - 1), *(v0 + 232), type metadata accessor for BeaconKeyManager.IndexInformation);
            v12 = 0;
          }

          v15 = *(v0 + 216);

          sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
        }

        else
        {
          v12 = 1;
        }

        v39 = *(v0 + 224);
        v38 = *(v0 + 232);
        v40 = *(v0 + 176);
        (*v142)(v38, v12, 1, v40);
        sub_1000D2A70(v38, v39, &unk_1016C1120, &qword_1013C49D0);
        if ((*v141)(v39, 1, v40) != 1)
        {
          v63 = *(v0 + 224);
          v64 = *(v0 + 208);
          v65 = *(v0 + 168);
          v66 = *(v0 + 176);
          v67 = *(v0 + 152);
          v68 = *(v0 + 104);

          sub_100203304(v63, v64, type metadata accessor for BeaconKeyManager.IndexInformation);
          (*v148)(v65, v64, v68);
          v152 = v66;
          v69 = (v64 + *(v66 + 20));
          v70 = v69[3];
          v71 = v69[4];
          sub_1000035D0(v69, v70);
          LOBYTE(v70) = sub_10002BD40(v70, v71);
          *(v0 + 569) = v70;
          sub_1000035D0(v69, v69[3]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          v72 = *(v0 + 24);
          *(v0 + 496) = v72;
          *(v65 + *(v67 + 20)) = v70 & 1;
          *(v65 + *(v67 + 24)) = v72;
          if (qword_101694780 != -1)
          {
            swift_once();
          }

          v74 = *(v0 + 304);
          v73 = *(v0 + 312);
          v76 = *(v0 + 288);
          v75 = *(v0 + 296);
          v77 = *(v0 + 280);
          v79 = *(v0 + 200);
          v78 = *(v0 + 208);
          v155 = *(v0 + 192);
          v158 = *(v0 + 272);
          v80 = type metadata accessor for Logger();
          *(v0 + 504) = sub_1000076D4(v80, qword_10177AE40);
          sub_100203698(v73, v74, type metadata accessor for ObservedAdvertisement);
          sub_100203698(v73, v75, type metadata accessor for ObservedAdvertisement);
          sub_100203698(v73, v76, type metadata accessor for ObservedAdvertisement);
          sub_100203698(v73, v77, type metadata accessor for ObservedAdvertisement);
          sub_100203698(v78, v79, type metadata accessor for BeaconKeyManager.IndexInformation);
          sub_100203698(v78, v155, type metadata accessor for BeaconKeyManager.IndexInformation);
          sub_100203698(v73, v158, type metadata accessor for ObservedAdvertisement);
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.default.getter();
          v83 = os_log_type_enabled(v81, v82);
          v85 = *(v0 + 296);
          v84 = *(v0 + 304);
          v86 = *(v0 + 288);
          if (v83)
          {
            v159 = v82;
            v87 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            *v87 = 141560067;
            *(v87 + 4) = 1752392040;
            *(v87 + 12) = 2081;
            v88 = sub_10001904C(*(v84 + 16), *(v84 + 24));
            v90 = v89;
            sub_100203700(v84, type metadata accessor for ObservedAdvertisement);
            v91 = sub_1000136BC(v88, v90, &v161);

            *(v87 + 14) = v91;
            *(v87 + 22) = 2082;
            v92 = sub_10001993C(*(v85 + 32) & 0xB);
            v93 = sub_100019E48(v92 & 0x10101FF);
            v95 = v94;
            sub_100203700(v85, type metadata accessor for ObservedAdvertisement);
            v96 = sub_1000136BC(v93, v95, &v161);

            *(v87 + 24) = v96;
            *(v87 + 32) = 2082;
            if (*(v86 + 35))
            {
              v97 = 0xE400000000000000;
              v98 = 1701736302;
            }

            else
            {
              *(v0 + 568) = *(*(v0 + 288) + 34);
              sub_1000198E8();
              v102 = FixedWidthInteger.data.getter();
              v104 = v103;
              v98 = Data.hexString.getter();
              v97 = v105;
              sub_100016590(v102, v104);
            }

            v106 = *(v0 + 280);
            v146 = *(v0 + 240);
            v149 = *(v0 + 272);
            v108 = *(v0 + 192);
            v107 = *(v0 + 200);
            v109 = *(v0 + 144);
            sub_100203700(*(v0 + 288), type metadata accessor for ObservedAdvertisement);
            v110 = sub_1000136BC(v98, v97, &v161);

            *(v87 + 34) = v110;
            *(v87 + 42) = 2082;
            v111 = sub_100018DE0(*(v106 + 32));
            v113 = v112;
            sub_100203700(v106, type metadata accessor for ObservedAdvertisement);
            v114 = sub_1000136BC(v111, v113, &v161);

            *(v87 + 44) = v114;
            *(v87 + 52) = 2082;
            sub_1000035D0((v107 + *(v152 + 20)), *(v107 + *(v152 + 20) + 24));
            v115 = dispatch thunk of CustomStringConvertible.description.getter();
            v117 = v116;
            sub_100203700(v107, type metadata accessor for BeaconKeyManager.IndexInformation);
            v118 = sub_1000136BC(v115, v117, &v161);

            *(v87 + 54) = v118;
            *(v87 + 62) = 2160;
            *(v87 + 64) = 1752392040;
            *(v87 + 72) = 2081;
            sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v119 = dispatch thunk of CustomStringConvertible.description.getter();
            v121 = v120;
            sub_100203700(v108, type metadata accessor for BeaconKeyManager.IndexInformation);
            v122 = sub_1000136BC(v119, v121, &v161);

            *(v87 + 74) = v122;
            *(v87 + 82) = 1024;
            sub_1000D2A70(v149 + *(v146 + 48), v109, &qword_1016AA430, &unk_101392650);
            v123 = type metadata accessor for ObservedAdvertisement.Location(0);
            LODWORD(v117) = (*(*(v123 - 8) + 48))(v109, 1, v123) != 1;
            sub_10000B3A8(v109, &qword_1016AA430, &unk_101392650);
            sub_100203700(v149, type metadata accessor for ObservedAdvertisement);
            *(v87 + 84) = v117;
            _os_log_impl(&_mh_execute_header, v81, v159, "Imported Beacon Reconciled advertisement %{private,mask.hash}s, multiPart: %{public}s, hint: %{public}s, Type18: %{public}s,\nindex: %{public}s, beacon: %{private,mask.hash}s,\nhasLocation: %{BOOL}d.", v87, 0x58u);
            swift_arrayDestroy();
          }

          else
          {
            v99 = *(v0 + 280);
            v101 = *(v0 + 192);
            v100 = *(v0 + 200);
            sub_100203700(*(v0 + 272), type metadata accessor for ObservedAdvertisement);

            sub_100203700(v101, type metadata accessor for BeaconKeyManager.IndexInformation);
            sub_100203700(v99, type metadata accessor for ObservedAdvertisement);
            sub_100203700(v86, type metadata accessor for ObservedAdvertisement);
            sub_100203700(v85, type metadata accessor for ObservedAdvertisement);
            sub_100203700(v84, type metadata accessor for ObservedAdvertisement);
            sub_100203700(v100, type metadata accessor for BeaconKeyManager.IndexInformation);
          }

          v124 = *(v0 + 312);
          v125 = *(v0 + 264);
          v126 = *(v0 + 240);
          v128 = *(v0 + 160);
          v127 = *(v0 + 168);
          v129 = *(v0 + 152);
          v160 = *(v124 + 9);
          v131 = *(v139 + 16);
          v130 = *(v139 + 24);
          v156 = *(v124 + 32);
          v153 = *(v124 + 34);
          v150 = *(v124 + 35);
          v147 = *(v124 + 36);
          v132 = v126[11];
          v133 = type metadata accessor for Date();
          (*(*(v133 - 8) + 16))(v125 + v132, v124 + v132, v133);
          LOBYTE(v132) = *(v124 + v126[14]);
          sub_1000D2A70(v124 + v126[12], v125 + v126[12], &qword_1016AA430, &unk_101392650);
          v134 = v126[13];
          sub_100203698(v127, v125 + v134, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
          (*(v128 + 56))(v125 + v134, 0, 1, v129);
          *v125 = 0;
          *(v125 + 8) = 1;
          *(v125 + 9) = v160;
          *(v125 + 16) = v131;
          *(v125 + 24) = v130;
          *(v125 + 32) = v156;
          *(v125 + 34) = v153;
          *(v125 + 35) = v150;
          *(v125 + 36) = v147;
          *(v125 + v126[14]) = v132;
          sub_100029784(v131, v130);
          v135 = swift_task_alloc();
          *(v0 + 512) = v135;
          *v135 = v0;
          v135[1] = sub_1001F9B34;
          v136 = *(v0 + 264);

          return sub_10002E1FC(v136);
        }

        v41 = *(v0 + 312);
        v42 = *(v0 + 224);
        sub_10000B3A8(*(v0 + 232), &unk_1016C1120, &qword_1013C49D0);
        sub_100203700(v41, type metadata accessor for ObservedAdvertisement);
        v43 = v42;
        v1 = v145;
        sub_10000B3A8(v43, &unk_1016C1120, &qword_1013C49D0);
      }

      ++v3;
    }

    while (v157 != v3);
  }

  if (qword_101694780 != -1)
  {
LABEL_38:
    swift_once();
  }

  v45 = *(v0 + 112);
  v44 = *(v0 + 120);
  v46 = *(v0 + 104);
  v47 = *(v0 + 40);
  v48 = type metadata accessor for Logger();
  sub_1000076D4(v48, qword_10177AE40);
  (*(v45 + 16))(v44, v47, v46);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v49, v50);
  v53 = *(v0 + 112);
  v52 = *(v0 + 120);
  v54 = *(v0 + 104);
  if (v51)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v161 = v56;
    *v55 = 141558275;
    *(v55 + 4) = 1752392040;
    *(v55 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    (*(v53 + 8))(v52, v54);
    v60 = sub_1000136BC(v57, v59, &v161);

    *(v55 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v49, v50, "No advertisement found in local disk for imported beacon %{private,mask.hash}s", v55, 0x16u);
    sub_100007BAC(v56);
  }

  else
  {

    (*(v53 + 8))(v52, v54);
  }

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1001F9B34()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 440);
  if (v0)
  {
    v4 = sub_1001FAC7C;
  }

  else
  {
    v4 = sub_1001F9C60;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001F9C60(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Added entries to Observations DB for imported beacon at the time of creation.", v4, 2u);
  }

  v5 = *(v1 + 48);

  v6 = *(v5 + 112);
  *(v1 + 528) = v6;

  return _swift_task_switch(sub_1001F9D40, v6, 0);
}

uint64_t sub_1001F9D40()
{

  v1 = swift_task_alloc();
  *(v0 + 536) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1001F9E20;
  v3 = *(v0 + 528);

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1001F9E20()
{
  v1 = *(*v0 + 528);

  return _swift_task_switch(sub_1001F9F38, v1, 0);
}

uint64_t sub_1001F9F5C()
{
  v1 = *(*(v0 + 544) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  *(v0 + 552) = v1;

  v2 = getuid();
  sub_1000294F0(v2);

  return _swift_task_switch(sub_1001F9FFC, v1, 0);
}

uint64_t sub_1001F9FFC(uint64_t a1)
{
  v2 = *(*(v1 + 552) + 112);
  if (!v2)
  {
    sub_10020223C();
    v12 = swift_allocError();
    *v17 = 2;
    *(v17 + 4) = 1;
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v3 = sub_1002072CC();
  if (!v3)
  {
    sub_10020223C();
    v12 = swift_allocError();
    *v18 = 2;
    *(v18 + 4) = 1;
    swift_willThrow();

    goto LABEL_7;
  }

  v4 = v3;
  v33 = *(v1 + 496);
  v36 = *(v1 + 520);
  v31 = *(v1 + 488);
  v5 = *(v1 + 168);
  v6 = *(v1 + 136);
  v7 = *(v1 + 96);
  v8 = *(v1 + 72);
  v9 = *(v1 + 64);
  v27 = *(v1 + 480);
  v29 = *(v1 + 56);
  v10 = *(v1 + 569) & 1;
  (*(*(v1 + 88) + 16))(v7, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_keys, *(v1 + 80));
  v11 = swift_task_alloc();
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  *(v11 + 32) = v5;
  *(v11 + 40) = v10;
  *(v11 + 48) = v33;
  *(v11 + 56) = v27;
  *(v11 + 64) = v31;
  *(v11 + 72) = v4;
  (*(v9 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v29);
  Connection.transaction(_:block:)();
  v12 = v36;
  if (v36)
  {
    v13 = *(v1 + 88);
    v14 = *(v1 + 72);
    v34 = *(v1 + 80);
    v37 = *(v1 + 96);
    v16 = *(v1 + 56);
    v15 = *(v1 + 64);

    (*(v15 + 8))(v14, v16);

    (*(v13 + 8))(v37, v34);
LABEL_8:
    *(v1 + 560) = v12;
    (*(*(v1 + 112) + 8))(*(v1 + 136), *(v1 + 104));
    v19 = *(v1 + 440);
    v20 = sub_1001FA60C;
    goto LABEL_9;
  }

  v35 = *(v1 + 136);
  v38 = *(v1 + 528);
  v21 = *(v1 + 112);
  v22 = *(v1 + 88);
  v30 = *(v1 + 96);
  v32 = *(v1 + 104);
  v23 = *(v1 + 72);
  v28 = *(v1 + 80);
  v24 = *(v1 + 56);
  v25 = *(v1 + 64);

  (*(v25 + 8))(v23, v24);

  (*(v22 + 8))(v30, v28);
  (*(v21 + 8))(v35, v32);
  v20 = sub_1001FA318;
  v19 = v38;
LABEL_9:

  return _swift_task_switch(v20, v19, 0);
}

uint64_t sub_1001FA318()
{
  sub_100A8AF58();
  v1 = *(v0 + 440);

  return _swift_task_switch(sub_1001FA384, v1, 0);
}

uint64_t sub_1001FA384(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Posted beacons set changed darwin notification for imported beacon at the time of creation.", v4, 2u);
  }

  v5 = v1[39];
  v6 = v1[33];
  v7 = v1[29];
  v8 = v1[26];
  v9 = v1[21];

  sub_100203700(v6, type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v7, &unk_1016C1120, &qword_1013C49D0);
  sub_100203700(v9, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100203700(v8, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_100203700(v5, type metadata accessor for ObservedAdvertisement);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1001FA60C()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[21];

  sub_100203700(v2, type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v3, &unk_1016C1120, &qword_1013C49D0);
  sub_100203700(v5, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100203700(v4, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_100203700(v1, type metadata accessor for ObservedAdvertisement);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001FA82C()
{
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ObservationStoreService available.", v4, 2u);
  }

  v5 = type metadata accessor for Daemon.Error();
  sub_100019348(&qword_101697368, 255, &type metadata accessor for Daemon.Error, &protocol conformance descriptor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000017;
  v6[1] = 0x800000010134D340;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001FAB04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FAC7C()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[21];

  sub_100203700(v2, type metadata accessor for ObservedAdvertisement);
  sub_10000B3A8(v3, &unk_1016C1120, &qword_1013C49D0);
  sub_100203700(v5, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100203700(v4, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_100203700(v1, type metadata accessor for ObservedAdvertisement);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001FAE9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001FAFFC, v1, 0);
}

uint64_t sub_1001FAFFC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 96) = v2;
  v3 = *(v0 + 88);
  if (v2)
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v4 + 24);
    *(v0 + 136) = v6;
    v7 = *(v4 + 20);
    *(v0 + 140) = v7;
    v8 = *(v5 + 80);
    *(v0 + 144) = v8;
    *(v0 + 104) = *(v5 + 72);
    *(v0 + 112) = 0;
    v9 = *(v0 + 64);
    v10 = *(v0 + 40);
    v19 = *(v0 + 56);
    v20 = *(v0 + 48);
    v11 = *(v0 + 32);
    sub_100203698(v1 + ((v8 + 32) & ~v8), v3, type metadata accessor for SharedBeaconRecord);
    sub_100203698(v3, v9, type metadata accessor for SharedBeaconRecord);
    (*(v5 + 56))(v9, 0, 1, v4);
    v12 = *(v10 + 16);
    v12(v19, v3 + v6, v11);
    v12(v20, v3 + v7, v11);
    sub_100203700(v3, type metadata accessor for SharedBeaconRecord);
    v13 = swift_task_alloc();
    *(v0 + 120) = v13;
    *v13 = v0;
    v13[1] = sub_1001FB21C;
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);
    v16 = *(v0 + 48);

    return sub_1001FC724(v15, v14, v16, 3);
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1001FB21C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  *(*v1 + 128) = v0;

  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);
  sub_10000B3A8(v3, &unk_101698C30, &unk_101392630);
  v9 = *(v2 + 24);
  if (v0)
  {
    v10 = sub_1001FB620;
  }

  else
  {
    v10 = sub_1001FB408;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1001FB408()
{
  v1 = *(v0 + 112) + 1;
  if (v1 == *(v0 + 96))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 112) = v1;
    v4 = *(v0 + 136);
    v18 = *(v0 + 140);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 56);
    v17 = *(v0 + 48);
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    sub_100203698(*(v0 + 16) + ((*(v0 + 144) + 32) & ~*(v0 + 144)) + *(v0 + 104) * v1, v5, type metadata accessor for SharedBeaconRecord);
    sub_100203698(v5, v8, type metadata accessor for SharedBeaconRecord);
    (*(v6 + 56))(v8, 0, 1, v7);
    v12 = *(v10 + 16);
    v12(v9, v5 + v4, v11);
    v12(v17, v5 + v18, v11);
    sub_100203700(v5, type metadata accessor for SharedBeaconRecord);
    v13 = swift_task_alloc();
    *(v0 + 120) = v13;
    *v13 = v0;
    v13[1] = sub_1001FB21C;
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);
    v16 = *(v0 + 48);

    return sub_1001FC724(v15, v14, v16, 3);
  }
}

uint64_t sub_1001FB620()
{
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to cleanup existing imported share: %@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 112) + 1;
  if (v7 == *(v0 + 96))
  {

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    *(v0 + 112) = v7;
    v10 = *(v0 + 136);
    v24 = *(v0 + 140);
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 56);
    v23 = *(v0 + 48);
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    sub_100203698(*(v0 + 16) + ((*(v0 + 144) + 32) & ~*(v0 + 144)) + *(v0 + 104) * v7, v11, type metadata accessor for SharedBeaconRecord);
    sub_100203698(v11, v14, type metadata accessor for SharedBeaconRecord);
    (*(v12 + 56))(v14, 0, 1, v13);
    v18 = *(v16 + 16);
    v18(v15, v11 + v10, v17);
    v18(v23, v11 + v24, v17);
    sub_100203700(v11, type metadata accessor for SharedBeaconRecord);
    v19 = swift_task_alloc();
    *(v0 + 120) = v19;
    *v19 = v0;
    v19[1] = sub_1001FB21C;
    v20 = *(v0 + 56);
    v21 = *(v0 + 64);
    v22 = *(v0 + 48);

    return sub_1001FC724(v21, v20, v22, 3);
  }
}

uint64_t sub_1001FB974(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v3 + 40) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 + 64);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v3 + 96) = swift_task_alloc();
  v6 = type metadata accessor for MemberSharingCircle(0);
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 - 8);
  *(v3 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1001FBB20, v2, 0);
}

uint64_t sub_1001FBB20()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_1001FBB44, v1, 0);
}

uint64_t sub_1001FBB44()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = *(v3 + 16);
  *(v0 + 136) = v6;
  *(v0 + 144) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 216) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 152) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 160) = v10;
  *(v0 + 168) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);

  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  *v11 = v0;
  v11[1] = sub_1001FBCC8;
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1002021B8, v9, v13);
}

uint64_t sub_1001FBCC8()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1001FBDF4, v1, 0);
}

uint64_t sub_1001FBDF4()
{
  v25 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 136);
    v4 = *(v0 + 72);
    v5 = *(v0 + 48);
    v6 = *(v0 + 16);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AE40);
    v3(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 72);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v24);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find sharing circle for imported share %s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

    sub_1002021D0();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v20 = *(v0 + 128);
    sub_100203304(v2, *(v0 + 120), type metadata accessor for MemberSharingCircle);
    *(v0 + 220) = *(v1 + 24);

    return _swift_task_switch(sub_1001FC13C, v20, 0);
  }
}

uint64_t sub_1001FC13C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = (*(v0 + 216) + 24) & ~*(v0 + 216);
  (*(v0 + 136))(v3, *(v0 + 120) + *(v0 + 220), v4);
  v6 = swift_allocObject();
  *(v0 + 184) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_1001FC290;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100202224, v6, v9);
}

uint64_t sub_1001FC290()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 220);
  v4 = *(*v0 + 120);
  v5 = *v0;

  v6 = swift_task_alloc();
  *(v2 + 200) = v6;
  *v6 = v5;
  v6[1] = sub_1001FC448;
  v7 = *(v1 + 16);
  v8 = *(v2 + 224);
  v9 = *(v1 + 40);

  return sub_1001FC724(v9, v7, v4 + v3, v8);
}

uint64_t sub_1001FC448()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1001FC64C;
  }

  else
  {
    v4 = sub_1001FC574;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001FC574()
{
  v1 = v0[15];
  sub_10000B3A8(v0[5], &unk_101698C30, &unk_101392630);
  sub_100203700(v1, type metadata accessor for MemberSharingCircle);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001FC64C()
{
  v1 = v0[15];
  sub_10000B3A8(v0[5], &unk_101698C30, &unk_101392630);
  sub_100203700(v1, type metadata accessor for MemberSharingCircle);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001FC724(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 815) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v5 + 128) = swift_task_alloc();
  v6 = type metadata accessor for SharedBeaconRecord(0);
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v5 + 168) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v5 + 176) = v7;
  v8 = *(v7 - 8);
  *(v5 + 184) = v8;
  *(v5 + 192) = *(v8 + 64);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_1001FC9B0, v4, 0);
}

uint64_t sub_1001FC9B0()
{
  v44 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = type metadata accessor for Logger();
  *(v0 + 360) = sub_1000076D4(v7, qword_10177AE40);
  v8 = *(v4 + 16);
  *(v0 + 368) = v8;
  *(v0 + 376) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v6, v3);
  v8(v1, v5, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  if (v11)
  {
    v41 = v10;
    log = v9;
    v40 = *(v0 + 815);
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v16 = 141559043;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1000136BC(v17, v19, &v43);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2081;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1000136BC(v22, v24, &v43);

    *(v16 + 34) = v25;
    *(v16 + 42) = 2080;
    v26 = 0xEB00000000706F74;
    v27 = 0x73206C61756E616DLL;
    v28 = 0x800000010134D3A0;
    v29 = 0xD000000000000015;
    if (v40 != 2)
    {
      v29 = 0x746E692061746164;
      v28 = 0xEE00797469726765;
    }

    if (v40)
    {
      v27 = 0x652074726F706D69;
      v26 = 0xEE00646572697078;
    }

    if (v40 <= 1)
    {
      v30 = v27;
    }

    else
    {
      v30 = v29;
    }

    if (v40 <= 1)
    {
      v31 = v26;
    }

    else
    {
      v31 = v28;
    }

    v32 = sub_1000136BC(v30, v31, &v43);

    *(v16 + 44) = v32;
    _os_log_impl(&_mh_execute_header, log, v41, "Stopping imported share for share id %{private,mask.hash}s\nbeacon id %{private,mask.hash}s, reason %s.", v16, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
    v20(v12, v15);
  }

  *(v0 + 384) = v20;
  v33 = *(v0 + 136);
  v34 = *(v0 + 144);
  v35 = *(v0 + 96);
  v36 = *(v34 + 48);
  *(v0 + 392) = v36;
  *(v0 + 400) = (v34 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v36(v35, 1, v33) == 1)
  {
    *(v0 + 432) = 0x800000010134A8C0;
    v37 = *(*(v0 + 120) + 112);
    *(v0 + 440) = v37;
    v38 = sub_1001FD38C;
  }

  else
  {
    v37 = *(*(v0 + 120) + 112);
    *(v0 + 408) = v37;
    v38 = sub_1001FCE04;
  }

  return _swift_task_switch(v38, v37, 0);
}

uint64_t sub_1001FCE04()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 336);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  (*(v0 + 368))(v2, *(v0 + 112), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 416) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 424) = v7;
  *v7 = v0;
  v7[1] = sub_1001FCF64;

  return unsafeBlocking<A>(context:_:)(v0 + 814, 0xD000000000000010, 0x800000010134A8C0, sub_1002021A0, v6, &type metadata for Bool);
}

uint64_t sub_1001FCF64()
{
  v1 = *(*v0 + 408);

  return _swift_task_switch(sub_1001FD090, v1, 0);
}

uint64_t sub_1001FD090()
{
  v1 = *(v0 + 120);
  *(v0 + 816) = *(v0 + 814);
  return _swift_task_switch(sub_1001FD0B4, v1, 0);
}

uint64_t sub_1001FD0B4()
{
  v26 = v0;
  if (*(v0 + 816) == 1)
  {
    v1 = *(v0 + 368);
    v2 = *(v0 + 320);
    v3 = *(v0 + 176);
    v4 = *(v0 + 112);
    v1(*(v0 + 328), *(v0 + 104), v3);
    v1(v2, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 384);
    v10 = *(v0 + 320);
    v9 = *(v0 + 328);
    v11 = *(v0 + 176);
    if (v7)
    {
      log = v5;
      v12 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v12 = 141558787;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v6;
      v15 = v14;
      v8(v9, v11);
      v16 = sub_1000136BC(v13, v15, &v25);

      *(v12 + 14) = v16;
      *(v12 + 22) = 2160;
      *(v12 + 24) = 1752392040;
      *(v12 + 32) = 2081;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v8(v10, v11);
      v20 = sub_1000136BC(v17, v19, &v25);

      *(v12 + 34) = v20;
      _os_log_impl(&_mh_execute_header, log, v23, "Successfully deleted SharedBeaconRecord : %{private,mask.hash}s,\nbeaconIdentifier: %{private,mask.hash}s", v12, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v8(v10, v11);
      v8(v9, v11);
    }
  }

  *(v0 + 432) = 0x800000010134A8C0;
  v21 = *(*(v0 + 120) + 112);
  *(v0 + 440) = v21;

  return _swift_task_switch(sub_1001FD38C, v21, 0);
}

uint64_t sub_1001FD38C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 336);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  (*(v0 + 368))(v2, *(v0 + 104), v4);
  v5 = *(v3 + 80);
  *(v0 + 808) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 448) = v7;
  *(v7 + 16) = v1;
  v8 = *(v3 + 32);
  *(v0 + 456) = v8;
  *(v0 + 464) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7 + v6, v2, v4);

  v9 = swift_task_alloc();
  *(v0 + 472) = v9;
  *v9 = v0;
  v9[1] = sub_1001FD4EC;
  v10 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 812, 0xD000000000000010, v10, sub_100202140, v7, &type metadata for Bool);
}

uint64_t sub_1001FD4EC()
{
  v1 = *(*v0 + 440);

  return _swift_task_switch(sub_1001FD618, v1, 0);
}

uint64_t sub_1001FD618()
{
  v1 = *(v0 + 120);
  *(v0 + 817) = *(v0 + 812);
  return _swift_task_switch(sub_1001FD63C, v1, 0);
}

uint64_t sub_1001FD63C()
{
  v49 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 176);
  v3 = *(v0 + 104);
  if (*(v0 + 817) == 1)
  {
    v1(*(v0 + 312), v3, v2);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 384);
    v8 = *(v0 + 312);
    v9 = *(v0 + 176);
    if (v6)
    {
      v46 = *(v0 + 384);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v48 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      v46(v8, v9);
      v15 = sub_1000136BC(v12, v14, &v48);

      *(v10 + 14) = v15;
      v16 = "Successfully deleted MemberSharingCircle with share id : %{private,mask.hash}s";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, v5, v16, v10, 0x16u);
      sub_100007BAC(v11);

      goto LABEL_8;
    }
  }

  else
  {
    v1(*(v0 + 304), v3, v2);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 384);
    v8 = *(v0 + 304);
    v9 = *(v0 + 176);
    if (v17)
    {
      v47 = *(v0 + 384);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v48 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v47(v8, v9);
      v21 = sub_1000136BC(v18, v20, &v48);

      *(v10 + 14) = v21;
      v16 = "Failed to delete MemberSharingCircle with share id: %{private,mask.hash}s";
      goto LABEL_6;
    }
  }

  v7(v8, v9);
LABEL_8:
  v22 = *(v0 + 368);
  v23 = *(v0 + 288);
  v24 = *(v0 + 176);
  v25 = *(v0 + 112);
  v22(*(v0 + 296), *(v0 + 104), v24);
  v22(v23, v25, v24);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 384);
  v31 = *(v0 + 288);
  v30 = *(v0 + 296);
  v32 = *(v0 + 176);
  if (v28)
  {
    log = v26;
    v33 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v33 = 141558787;
    *(v33 + 4) = 1752392040;
    *(v33 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v27;
    v36 = v35;
    v29(v30, v32);
    v37 = sub_1000136BC(v34, v36, &v48);

    *(v33 + 14) = v37;
    *(v33 + 22) = 2160;
    *(v33 + 24) = 1752392040;
    *(v33 + 32) = 2081;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v29(v31, v32);
    v41 = sub_1000136BC(v38, v40, &v48);

    *(v33 + 34) = v41;
    _os_log_impl(&_mh_execute_header, log, v44, "Deleting suffix keys for share id : %{private,mask.hash}s,\nbeaconIdentifier: %{private,mask.hash}s", v33, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v29(v31, v32);
    v29(v30, v32);
  }

  v42 = *(v0 + 440);

  return _swift_task_switch(sub_1001FDB8C, v42, 0);
}

uint64_t sub_1001FDB8C()
{

  v1 = swift_task_alloc();
  v0[60] = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v1 = v0;
  v1[1] = sub_1001FDC68;
  v3 = v0[54];
  v4 = v0[55];

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, v3, sub_100202158, v4, v2);
}

uint64_t sub_1001FDC68()
{
  v1 = *(*v0 + 440);

  return _swift_task_switch(sub_1001FDD80, v1, 0);
}

uint64_t sub_1001FDD80()
{
  v1 = v0[15];
  v0[61] = v0[7];
  return _swift_task_switch(sub_1001FDDA4, v1, 0);
}

uint64_t sub_1001FDDA4(uint64_t a1)
{
  if (*(*(v1 + 488) + 16) >= 2uLL)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Inconsistent state: More than one imported beacon record found", v4, 2u);
    }
  }

  v5 = *(v1 + 440);

  return _swift_task_switch(sub_1001FDE8C, v5, 0);
}

uint64_t sub_1001FDE8C()
{

  v1 = swift_task_alloc();
  v0[62] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[63] = v2;
  *v1 = v0;
  v1[1] = sub_1001FDF60;
  v3 = v0[54];
  v4 = v0[55];

  return unsafeBlocking<A>(context:_:)(v0 + 8, 0xD000000000000010, v3, sub_1000D27E4, v4, v2);
}

uint64_t sub_1001FDF60()
{
  v1 = *(*v0 + 440);

  return _swift_task_switch(sub_1001FE078, v1, 0);
}

uint64_t sub_1001FE078()
{
  v1 = v0[15];
  v0[64] = v0[8];
  return _swift_task_switch(sub_1001FE09C, v1, 0);
}

uint64_t sub_1001FE09C()
{
  v1 = v0[61];
  v0[65] = *(v0[64] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  if (*(v1 + 16))
  {
    v2 = v0[46];
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v6 = v0[17];
    v7 = *(v0[18] + 80);
    sub_100203698(v0[61] + ((v7 + 32) & ~v7), v5, type metadata accessor for SharedBeaconRecord);

    v2(v4, v5 + *(v6 + 20), v3);
    sub_100203700(v5, type metadata accessor for SharedBeaconRecord);
    v8 = 0;
  }

  else
  {

    v8 = 1;
  }

  (*(v0[23] + 56))(v0[21], v8, 1, v0[22]);
  v9 = getuid();
  sub_1000294F0(v9);
  v10 = swift_task_alloc();
  v0[66] = v10;
  *v10 = v0;
  v10[1] = sub_1001FE23C;
  v11 = v0[35];
  v12 = v0[21];
  v13 = v0[13];

  return sub_10068BBC4(v13, v11, v12);
}

uint64_t sub_1001FE23C()
{
  v2 = *v1;
  v3 = *v1;
  v2[67] = v0;

  v4 = v2[48];
  v5 = v2[35];
  v6 = v2[23];
  v7 = v2[22];
  v8 = v2[21];
  if (v0)
  {
    v9 = v2[15];

    v4(v5, v7);
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);

    return _swift_task_switch(sub_1002015BC, v9, 0);
  }

  else
  {

    v2[68] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v4(v5, v7);
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    v10 = swift_task_alloc();
    v2[69] = v10;
    *v10 = v3;
    v10[1] = sub_1001FE4C4;
    v11 = v2[13];

    return sub_1001E98E8(v11);
  }
}

uint64_t sub_1001FE4C4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 120);

    return _swift_task_switch(sub_1001FE73C, v6, 0);
  }
}

uint64_t sub_1001FE73C()
{
  v16 = v0;
  (*(v0 + 368))(*(v0 + 272), *(v0 + 104), *(v0 + 176));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 384);
  v5 = *(v0 + 272);
  v6 = *(v0 + 176);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v4(v5, v6);
    v12 = sub_1000136BC(v9, v11, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Deleting imported beacon attributes for share id : %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 440);

  return _swift_task_switch(sub_1001FE92C, v13, 0);
}

uint64_t sub_1001FE92C()
{

  v1 = swift_task_alloc();
  v0[70] = v1;
  *v1 = v0;
  v1[1] = sub_1001FE9F4;
  v2 = v0[63];
  v3 = v0[54];
  v4 = v0[55];

  return unsafeBlocking<A>(context:_:)(v0 + 9, 0xD000000000000010, v3, sub_1000D3168, v4, v2);
}

uint64_t sub_1001FE9F4()
{
  v1 = *(*v0 + 440);

  return _swift_task_switch(sub_1001FEB0C, v1, 0);
}

uint64_t sub_1001FEB0C()
{
  v1 = v0[15];
  v0[71] = v0[9];
  return _swift_task_switch(sub_1001FEB30, v1, 0);
}

uint64_t sub_1001FEB30()
{
  v0[72] = *(v0[71] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[73] = v1;
  *v1 = v0;
  v1[1] = sub_1001FEBF0;
  v2 = v0[13];

  return sub_10068F110(v2);
}

uint64_t sub_1001FEBF0()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_100201750;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1001FED18;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001FED18()
{
  v26 = v0;
  v1 = v0[46];
  v2 = v0[32];
  v3 = v0[22];
  v4 = v0[14];
  v1(v0[33], v0[13], v3);
  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[48];
  v10 = v0[32];
  v9 = v0[33];
  v11 = v0[22];
  if (v7)
  {
    log = v5;
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v12 = 141558787;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v6;
    v15 = v14;
    v8(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v25);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v8(v10, v11);
    v20 = sub_1000136BC(v17, v19, &v25);

    *(v12 + 34) = v20;
    _os_log_impl(&_mh_execute_header, log, v23, "Delete reconciled advertisment from Keys table in Keys DB for share id : %{private,mask.hash}s,\nbeacon id : %{private,mask.hash}s", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v8(v10, v11);
    v8(v9, v11);
  }

  v21 = v0[55];

  return _swift_task_switch(sub_1001FEFA4, v21, 0);
}

uint64_t sub_1001FEFA4()
{

  v1 = swift_task_alloc();
  v0[75] = v1;
  *v1 = v0;
  v1[1] = sub_1001FF06C;
  v2 = v0[63];
  v3 = v0[54];
  v4 = v0[55];

  return unsafeBlocking<A>(context:_:)(v0 + 10, 0xD000000000000010, v3, sub_1000D3168, v4, v2);
}

uint64_t sub_1001FF06C()
{
  v1 = *(*v0 + 440);

  return _swift_task_switch(sub_1001FF184, v1, 0);
}

uint64_t sub_1001FF184()
{
  v1 = v0[15];
  v0[76] = v0[10];
  return _swift_task_switch(sub_1001FF1A8, v1, 0);
}

uint64_t sub_1001FF1A8()
{
  v0[77] = *(v0[76] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = getuid();
  sub_1000294F0(v1);
  v2 = swift_task_alloc();
  v0[78] = v2;
  *v2 = v0;
  v2[1] = sub_1001FF284;
  v3 = v0[31];
  v4 = v0[14];

  return sub_100682874(v3, v4);
}

uint64_t sub_1001FF284()
{
  v2 = *v1;
  v3 = *v1;
  v2[79] = v0;

  v4 = v2[48];
  v5 = v2[31];
  v6 = v2[22];
  if (v0)
  {
    v7 = v2[15];
    v4(v5, v6);

    return _swift_task_switch(sub_1002018EC, v7, 0);
  }

  else
  {
    v4(v5, v6);

    v8 = swift_task_alloc();
    v2[80] = v8;
    *v8 = v3;
    v8[1] = sub_1001FF488;

    return daemon.getter();
  }
}

uint64_t sub_1001FF488(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[81] = a1;

  v3 = swift_task_alloc();
  v2[82] = v3;
  v4 = type metadata accessor for Daemon();
  v2[83] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100019348(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[84] = v6;
  v7 = sub_100019348(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1001FF67C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001FF67C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 680) = a1;

  v4 = *(v3 + 120);
  if (v1)
  {

    v5 = sub_100201304;
  }

  else
  {

    v5 = sub_1001FF7E0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001FF7E0()
{
  v27 = v0;
  v1 = v0[46];
  v2 = v0[29];
  v3 = v0[22];
  v4 = v0[14];
  v1(v0[30], v0[13], v3);
  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[48];
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[22];
  if (v7)
  {
    log = v5;
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v12 = 141558787;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v6;
    v15 = v14;
    v8(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v26);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v8(v10, v11);
    v20 = sub_1000136BC(v17, v19, &v26);

    *(v12 + 34) = v20;
    _os_log_impl(&_mh_execute_header, log, v24, "Deleting key generation beacon info and Observations Beacon Info for share id : %{private,mask.hash}s,\nbeacon id: %{private,mask.hash}s", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v8(v10, v11);
    v8(v9, v11);
  }

  v21 = swift_task_alloc();
  v0[86] = v21;
  *v21 = v0;
  v21[1] = sub_1001FFAA4;
  v22 = v0[14];

  return sub_1010CC864(v22);
}

uint64_t sub_1001FFAA4()
{
  v2 = *v1;
  v2[87] = v0;

  if (v0)
  {
    v3 = v2[15];

    return _swift_task_switch(sub_100201A80, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[88] = v4;
    *v4 = v2;
    v4[1] = sub_1001FFC18;
    v5 = v2[14];

    return sub_1010CCAC8(v5);
  }
}

uint64_t sub_1001FFC18()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_100201C1C;
  }

  else
  {
    v3 = *(v2 + 440);
    v4 = sub_1001FFD30;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001FFD30()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  v3 = *(v0 + 336);
  v4 = *(v0 + 176);
  v5 = (*(v0 + 808) + 24) & ~*(v0 + 808);
  (*(v0 + 368))(v3, *(v0 + 112), v4);
  v6 = swift_allocObject();
  *(v0 + 720) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 728) = v7;
  *v7 = v0;
  v7[1] = sub_1001FFE7C;
  v8 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 813, 0xD000000000000010, v8, sub_100202160, v6, &type metadata for Bool);
}

uint64_t sub_1001FFE7C()
{
  v1 = *(*v0 + 440);

  return _swift_task_switch(sub_1001FFFA8, v1, 0);
}

uint64_t sub_1001FFFA8()
{
  v1 = *(v0 + 120);
  *(v0 + 818) = *(v0 + 813);
  return _swift_task_switch(sub_1001FFFCC, v1, 0);
}

uint64_t sub_1001FFFCC()
{
  v43 = v0;
  if (*(v0 + 818) == 1)
  {
    v1 = *(v0 + 368);
    v2 = *(v0 + 216);
    v3 = *(v0 + 176);
    v4 = *(v0 + 112);
    v1(*(v0 + 224), *(v0 + 104), v3);
    v1(v2, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 384);
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 176);
    if (v7)
    {
      log = v5;
      v12 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v12 = 141558787;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v6;
      v15 = v14;
      v8(v9, v11);
      v16 = sub_1000136BC(v13, v15, &v42);

      *(v12 + 14) = v16;
      *(v12 + 22) = 2160;
      *(v12 + 24) = 1752392040;
      *(v12 + 32) = 2081;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v8(v10, v11);
      v20 = sub_1000136BC(v17, v19, &v42);

      *(v12 + 34) = v20;
      _os_log_impl(&_mh_execute_header, log, v40, "Successfully deleted BeaconProductInfoRecord : %{private,mask.hash}s,\nbeaconIdentifier: %{private,mask.hash}s", v12, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v8(v10, v11);
      v8(v9, v11);
    }
  }

  (*(v0 + 368))(*(v0 + 208), *(v0 + 104), *(v0 + 176));
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 384);
  v25 = *(v0 + 208);
  v26 = *(v0 + 176);
  if (v23)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v24(v25, v26);
    v32 = sub_1000136BC(v29, v31, &v42);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Deleting key map files for share id : %{private,mask.hash}s", v27, 0x16u);
    sub_100007BAC(v28);
  }

  else
  {

    v24(v25, v26);
  }

  v33 = *(v0 + 392);
  v34 = *(v0 + 128);
  v35 = *(v0 + 136);
  sub_1000D2A70(*(v0 + 96), v34, &unk_101698C30, &unk_101392630);
  if (v33(v34, 1, v35) == 1)
  {
    sub_10000B3A8(*(v0 + 128), &unk_101698C30, &unk_101392630);
    v36 = *(v0 + 440);
    v37 = sub_1002007E8;
  }

  else
  {
    v38 = *(v0 + 440);
    sub_100203304(*(v0 + 128), *(v0 + 152), type metadata accessor for SharedBeaconRecord);
    v37 = sub_100200464;
    v36 = v38;
  }

  return _swift_task_switch(v37, v36, 0);
}

uint64_t sub_100200464()
{

  v1 = swift_task_alloc();
  v0[92] = v1;
  *v1 = v0;
  v1[1] = sub_10020052C;
  v2 = v0[63];
  v3 = v0[54];
  v4 = v0[55];

  return unsafeBlocking<A>(context:_:)(v0 + 11, 0xD000000000000010, v3, sub_1000D3168, v4, v2);
}

uint64_t sub_10020052C()
{
  v1 = *(*v0 + 440);

  return _swift_task_switch(sub_100200644, v1, 0);
}

uint64_t sub_100200644()
{
  v1 = v0[15];
  v0[93] = v0[11];
  return _swift_task_switch(sub_100200668, v1, 0);
}

uint64_t sub_100200668()
{
  v1 = v0[93];
  v2 = v0[19];
  v0[5] = v0[17];
  v0[6] = sub_100019348(&qword_101698D80, 255, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
  v3 = sub_1000280DC(v0 + 2);
  sub_100203698(v2, v3, type metadata accessor for SharedBeaconRecord);
  type metadata accessor for Transaction();
  v4 = swift_task_alloc();
  v4[2] = v0 + 2;
  v4[3] = v1;
  v4[4] = 0;
  v4[5] = 0;
  static Transaction.named<A>(_:with:)();

  sub_100203700(v2, type metadata accessor for SharedBeaconRecord);
  sub_100007BAC(v0 + 2);
  v5 = v0[55];

  return _swift_task_switch(sub_1002007E8, v5, 0);
}

uint64_t sub_1002007E8()
{

  v1 = swift_task_alloc();
  v0[94] = v1;
  *v1 = v0;
  v1[1] = sub_1002008B0;
  v2 = v0[54];
  v3 = v0[55];

  return unsafeBlocking<A>(context:_:)(v1, 0xD000000000000010, v2, sub_100202178, v3, &type metadata for () + 1);
}

uint64_t sub_1002008B0()
{
  v1 = *(*v0 + 440);

  return _swift_task_switch(sub_1002009C8, v1, 0);
}

uint64_t sub_1002009C8()
{
  v1 = swift_task_alloc();
  *(v0 + 760) = v1;
  *v1 = v0;
  v1[1] = sub_100200A58;

  return daemon.getter();
}

uint64_t sub_100200A58(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 768) = a1;

  v5 = swift_task_alloc();
  *(v3 + 776) = v5;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v7 = sub_100019348(&unk_1016B10F0, 255, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v5 = v4;
  v5[1] = sub_100200C10;
  v8 = *(v2 + 672);
  v9 = *(v2 + 664);

  return ActorServiceDaemon.getService<A>()(v9, updated, v8, v7);
}

uint64_t sub_100200C10(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 120);
  if (v1)
  {

    v7 = sub_100201DB8;
  }

  else
  {

    *(v5 + 784) = a1;
    v7 = sub_100200D78;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100200D78()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  v4 = *(v0 + 176);
  v5 = *(v0 + 112);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v6 = (v1 + 32) & ~v1;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v3(v7 + v6, v5, v4);
  v8 = sub_100B05044(v7);
  *(v0 + 792) = v8;
  swift_setDeallocating();
  v2(v7 + v6, v4);
  swift_deallocClassInstance();
  v9 = swift_task_alloc();
  *(v0 + 800) = v9;
  *v9 = v0;
  v9[1] = sub_100200EBC;

  return sub_10094E168(v8);
}

uint64_t sub_100200EBC()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100200FE8, v1, 0);
}

uint64_t sub_100200FE8()
{
  v16 = v0;

  (*(v0 + 368))(*(v0 + 200), *(v0 + 104), *(v0 + 176));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 384);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v4(v5, v6);
    v12 = sub_1000136BC(v9, v11, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully removed imported share %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100201304(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ObservationStoreService available.", v4, 2u);
  }

  v5 = type metadata accessor for Daemon.Error();
  sub_100019348(&qword_101697368, 255, &type metadata accessor for Daemon.Error, &protocol conformance descriptor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000017;
  v6[1] = 0x800000010134D340;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_1002015BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100201750()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002018EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100201A80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100201C1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100201DB8()
{
  v16 = v0;
  (*(v0 + 368))(*(v0 + 200), *(v0 + 104), *(v0 + 176));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 384);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v4(v5, v6);
    v12 = sub_1000136BC(v9, v11, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully removed imported share %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002020CC()
{

  sub_100007BAC((v0 + 120));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1002021D0()
{
  result = qword_101699B78;
  if (!qword_101699B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699B78);
  }

  return result;
}

unint64_t sub_10020223C()
{
  result = qword_101699B88;
  if (!qword_101699B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699B88);
  }

  return result;
}

void sub_1002022BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v72 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v78 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v10 - 8);
  v12 = &v72 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  URL.init(string:)();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      (*(v14 + 8))(v16, v13);
      v17 = &qword_101699BA8;
      v18 = &unk_1013926B0;
      v19 = v6;
      goto LABEL_5;
    }

    v28 = v7;
    v29 = v78;
    (*(v8 + 32))(v78, v6, v28);
    v30 = URLComponents.fragment.getter();
    if (!v31)
    {
      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_1000076D4(v54, qword_10177AE40);

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v76 = a2;
        v58 = v57;
        v59 = swift_slowAlloc();
        v74 = v16;
        v60 = v59;
        v81 = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_1000136BC(v83, v76, &v81);
        _os_log_impl(&_mh_execute_header, v55, v56, "Invalid fragment from URL %s", v58, 0xCu);
        sub_100007BAC(v60);
        v16 = v74;
      }

      sub_1002021D0();
      swift_allocError();
      *v61 = 9;
      swift_willThrow();
      (*(v8 + 8))(v29, v28);
      (*(v14 + 8))(v16, v13);
      return;
    }

    v75 = v14;
    v76 = a2;
    v77 = v13;
    v81 = v30;
    v82 = v31;
    v79 = 44;
    v80 = 0xE100000000000000;
    sub_1000DF96C();
    a2 = StringProtocol.components<A>(separatedBy:)();

    v32 = *(a2 + 16);
    if (!v32)
    {

LABEL_32:
      v62 = v76;
      v63 = v77;
      v64 = v75;
      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_1000076D4(v65, qword_10177AE40);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = v16;
        v70 = swift_slowAlloc();
        v81 = v70;
        *v68 = 136315138;
        *(v68 + 4) = sub_1000136BC(v83, v62, &v81);
        _os_log_impl(&_mh_execute_header, v66, v67, "Key not found on the input URL %s", v68, 0xCu);
        sub_100007BAC(v70);
        v16 = v69;
        v63 = v77;
      }

      sub_1002021D0();
      swift_allocError();
      *v71 = 9;
      swift_willThrow();
      (*(v8 + 8))(v78, v28);
      (*(v64 + 8))(v16, v63);
      return;
    }

    v73 = v28;
    v74 = v16;
    v72 = v8;
    v33 = 0;
    v34 = (a2 + 40);
    while (1)
    {
      if (v33 >= *(a2 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v35 = *v34;
      v81 = *(v34 - 1);
      v82 = v35;
      v79 = 58;
      v80 = 0xE100000000000000;
      v36 = StringProtocol.components<A>(separatedBy:)();
      if (v36[2] == 2)
      {
        v37 = v36[4] == 107 && v36[5] == 0xE100000000000000;
        v38 = v36;
        if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      ++v33;

      v34 += 2;
      if (v32 == v33)
      {

        v8 = v72;
        v28 = v73;
        v16 = v74;
        goto LABEL_32;
      }
    }

    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177AE40);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    v42 = os_log_type_enabled(v40, v41);
    v44 = v72;
    v43 = v73;
    v45 = v78;
    v47 = v74;
    v46 = v75;
    if (v42)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v81 = v49;
      *v48 = 141558275;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2081;
      if (v38[2] < 2uLL)
      {
LABEL_43:
        __break(1u);
        return;
      }

      v50 = v49;
      v51 = v38[6];
      v52 = v38[7];

      v53 = sub_1000136BC(v51, v52, &v81);

      *(v48 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v40, v41, "Decryption key found on the url %{private,mask.hash}s", v48, 0x16u);
      sub_100007BAC(v50);

      v44 = v72;
      v43 = v73;
      v46 = v75;
    }

    else
    {
    }

    if (v38[2] >= 2uLL)
    {

      (*(v44 + 8))(v45, v43);
      (*(v46 + 8))(v47, v77);
      return;
    }

    __break(1u);
    goto LABEL_43;
  }

  v17 = &unk_101696AC0;
  v18 = &qword_101390A60;
  v19 = v12;
LABEL_5:
  sub_10000B3A8(v19, v17, v18);
  if (qword_101694780 != -1)
  {
LABEL_41:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177AE40);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = a2;
    v26 = v24;
    v81 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1000136BC(v83, v25, &v81);
    _os_log_impl(&_mh_execute_header, v21, v22, "Invalid input URL %s", v23, 0xCu);
    sub_100007BAC(v26);
  }

  sub_1002021D0();
  swift_allocError();
  *v27 = 9;
  swift_willThrow();
}

uint64_t sub_100202CCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v17 = &unk_101696AC0;
    v18 = &qword_101390A60;
    v19 = v12;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v5, v6);
      URLComponents.fragment.setter();
      a1 = URLComponents.string.getter();
      (*(v7 + 8))(v9, v6);
      (*(v14 + 8))(v16, v13);
      return a1;
    }

    (*(v14 + 8))(v16, v13);
    v17 = &qword_101699BA8;
    v18 = &unk_1013926B0;
    v19 = v5;
  }

  sub_10000B3A8(v19, v17, v18);

  return a1;
}

uint64_t sub_10020300C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1002030BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014650;

  return sub_1001F6D20(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10020320C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1001F77C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100203304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100203398()
{
  v1 = *(type metadata accessor for SessionTokenRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_100E72154(v3, v0 + v2, v5, v6);
}

uint64_t sub_100203454(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100203508(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_100203590()
{
  v1 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MemberSharingCircle(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_100E72184(v6, v0 + v2, v0 + v5, v8, v9);
}

uint64_t sub_100203698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100203700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100203774()
{
  result = qword_101699BD0;
  if (!qword_101699BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699BD0);
  }

  return result;
}

unint64_t sub_1002037D8()
{
  result = qword_101699BD8;
  if (!qword_101699BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699BD8);
  }

  return result;
}

uint64_t sub_10020382C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7265776F50776F6CLL;
    v6 = 0x65776F5068676968;
    if (a1 != 2)
    {
      v6 = 0x4F7265776F506E6FLL;
    }

    if (a1)
    {
      v5 = 0x6F506D756964656DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7265747461426E6FLL;
    v2 = 0x6F696E61706D6F63;
    if (a1 != 7)
    {
      v2 = 0x6857796669746F6ELL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x4F7265776F506E6FLL;
    if (a1 != 4)
    {
      v3 = 0x7265747461426E6FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_1002039A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10076EE68(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002039F8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10076EE68(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_100203A3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100203B28(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100203A6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10020382C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100203B28(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1016074D0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

__n128 sub_100203B78(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_100203BA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 144))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100203BF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100203C7C(void *a1)
{
  v3 = v1;
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v62 = *v1;
  v51 = *v1;
  sub_10015049C(v52, v53);
  sub_1001022C4(&v62, &v50);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (v2)
  {
    v13 = *(&v51 + 1);
    v12 = v51;
LABEL_17:
    sub_100016590(v12, v13);
    return sub_100007BAC(v52);
  }

  sub_100016590(v51, *(&v51 + 1));
  v61 = v1[1];
  v51 = v1[1];
  sub_10015049C(v52, v53);
  sub_1001022C4(&v61, &v50);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v51, *(&v51 + 1));
  v60 = v1[2];
  v51 = v1[2];
  sub_10015049C(v52, v53);
  sub_1001022C4(&v60, &v50);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v51, *(&v51 + 1));
  v59 = v1[3];
  v51 = v1[3];
  sub_10015049C(v52, v53);
  sub_1001022C4(&v59, &v50);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v51, *(&v51 + 1));
  v58 = v1[4];
  v51 = v1[4];
  sub_10015049C(v52, v53);
  sub_1001022C4(&v58, &v50);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v51, *(&v51 + 1));
  v57 = v1[5];
  v5 = v57;
  v6 = *(&v57 + 1) >> 62;
  if ((*(&v57 + 1) >> 62) <= 1)
  {
    if (!v6)
    {
      LOWORD(v7) = BYTE14(v57);
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v6 != 2)
  {
LABEL_14:
    LOWORD(v7) = 0;
    goto LABEL_15;
  }

  v5 = *(v57 + 16);
  v8 = *(v57 + 24);
  v7 = v8 - v5;
  if (__OFSUB__(v8, v5))
  {
    __break(1u);
LABEL_9:
    v9 = __OFSUB__(HIDWORD(v5), v5);
    v10 = HIDWORD(v5) - v5;
    if (v9)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v7 = v10;
  }

  result = sub_1001022C4(&v57, &v51);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_79;
  }

  if (v7 >> 16)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  LOWORD(v50) = v7;
  sub_1002053B0();
  *&v51 = FixedWidthInteger.data.getter();
  *(&v51 + 1) = v11;
  sub_10015049C(v52, v53);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v51, *(&v51 + 1));
  v51 = v57;
  v14 = v57;
  v15 = *(&v57 + 1) >> 62;
  if ((*(&v57 + 1) >> 62) <= 1)
  {
    if (!v15)
    {
      v14 = BYTE14(v57);
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v15 != 2)
  {
    v14 = 0;
    goto LABEL_28;
  }

  v16 = *(v57 + 16);
  v17 = *(v57 + 24);
  v9 = __OFSUB__(v17, v16);
  v14 = v17 - v16;
  if (v9)
  {
    __break(1u);
LABEL_25:
    v9 = __OFSUB__(HIDWORD(v14), v14);
    LODWORD(v14) = HIDWORD(v14) - v14;
    if (v9)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v14 = v14;
  }

LABEL_28:
  result = 1900 - v14;
  if (__OFSUB__(1900, v14))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  *&v50 = sub_100845C88(result);
  *(&v50 + 1) = v18;
  sub_100776394(&v50, 0);
  v19 = v50;
  Data.append(_:)();
  sub_100016590(v19, *(&v19 + 1));
  v20 = v51;
  v50 = v51;
  sub_10015049C(v52, v53);
  sub_100017D5C(v20, *(&v20 + 1));
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v50, *(&v50 + 1));
  v56 = v3[6];
  v21 = v56;
  v22 = *(&v56 + 1) >> 62;
  if ((*(&v56 + 1) >> 62) <= 1)
  {
    if (!v22)
    {
      LOWORD(v23) = BYTE14(v56);
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  if (v22 != 2)
  {
    goto LABEL_41;
  }

  v21 = *(v56 + 16);
  v24 = *(v56 + 24);
  v23 = v24 - v21;
  if (__OFSUB__(v24, v21))
  {
    __break(1u);
LABEL_36:
    v9 = __OFSUB__(HIDWORD(v21), v21);
    v25 = HIDWORD(v21) - v21;
    if (v9)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v23 = v25;
  }

  result = sub_1001022C4(&v56, &v50);
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (!(v23 >> 16))
  {
    goto LABEL_42;
  }

  __break(1u);
LABEL_41:
  LOWORD(v23) = 0;
LABEL_42:
  LOWORD(v49) = v23;
  *&v50 = FixedWidthInteger.data.getter();
  *(&v50 + 1) = v26;
  sub_10015049C(v52, v53);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v50, *(&v50 + 1));
  v50 = v56;
  v27 = v56;
  v28 = *(&v56 + 1) >> 62;
  if ((*(&v56 + 1) >> 62) <= 1)
  {
    if (!v28)
    {
      v27 = BYTE14(v56);
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (v28 != 2)
  {
    v27 = 0;
    goto LABEL_52;
  }

  v29 = *(v56 + 16);
  v30 = *(v56 + 24);
  v9 = __OFSUB__(v30, v29);
  v27 = v30 - v29;
  if (v9)
  {
    __break(1u);
LABEL_49:
    v9 = __OFSUB__(HIDWORD(v27), v27);
    LODWORD(v27) = HIDWORD(v27) - v27;
    if (v9)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v27 = v27;
  }

LABEL_52:
  v63 = *(&v20 + 1);
  result = 600 - v27;
  if (__OFSUB__(600, v27))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  *&v49 = sub_100845C88(result);
  *(&v49 + 1) = v31;
  sub_100776394(&v49, 0);
  v32 = v49;
  Data.append(_:)();
  sub_100016590(v32, *(&v32 + 1));
  v33 = v50;
  v49 = v50;
  sub_10015049C(v52, v53);
  sub_100017D5C(v33, *(&v33 + 1));
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v49, *(&v49 + 1));
  v55 = v3[7];
  v34 = v55;
  v35 = *(&v55 + 1) >> 62;
  if ((*(&v55 + 1) >> 62) <= 1)
  {
    if (!v35)
    {
      v36 = HIWORD(*(&v55 + 1));
      goto LABEL_66;
    }

    goto LABEL_60;
  }

  if (v35 != 2)
  {
    goto LABEL_65;
  }

  v34 = *(v55 + 16);
  v37 = *(v55 + 24);
  v36 = v37 - v34;
  if (__OFSUB__(v37, v34))
  {
    __break(1u);
LABEL_60:
    v9 = __OFSUB__(HIDWORD(v34), v34);
    v38 = HIDWORD(v34) - v34;
    if (v9)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v36 = v38;
  }

  result = sub_1001022C4(&v55, &v49);
  if ((v36 & 0x8000000000000000) != 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v36 <= 0xFF)
  {
    goto LABEL_66;
  }

  __break(1u);
LABEL_65:
  LOBYTE(v36) = 0;
LABEL_66:
  LOBYTE(v48) = v36;
  sub_1000198E8();
  *&v49 = FixedWidthInteger.data.getter();
  *(&v49 + 1) = v39;
  sub_10015049C(v52, v53);
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  result = sub_100016590(v49, *(&v49 + 1));
  v49 = v55;
  v40 = v55;
  v41 = *(&v55 + 1) >> 62;
  if ((*(&v55 + 1) >> 62) > 1)
  {
    if (v41 == 2)
    {
      v42 = *(v55 + 16);
      v43 = *(v55 + 24);
      v9 = __OFSUB__(v43, v42);
      v40 = v43 - v42;
      if (v9)
      {
        __break(1u);
        goto LABEL_73;
      }
    }

    else
    {
      v40 = 0;
    }

LABEL_76:
    result = 100 - v40;
    if (!__OFSUB__(100, v40))
    {
      *&v48 = sub_100845C88(result);
      *(&v48 + 1) = v44;
      sub_100776394(&v48, 0);
      v45 = v48;
      Data.append(_:)();
      sub_100016590(v45, *(&v45 + 1));
      v46 = v49;
      v48 = v49;
      sub_10015049C(v52, v53);
      sub_100017D5C(v46, *(&v46 + 1));
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
      sub_100016590(v48, *(&v48 + 1));
      v54 = v3[8];
      v48 = v3[8];
      sub_10015049C(v52, v53);
      sub_1001022C4(&v54, v47);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
      sub_100016590(v48, *(&v48 + 1));
      sub_100016590(v46, *(&v46 + 1));
      sub_100016590(v33, 0);
      v12 = v20;
      v13 = v63;
      goto LABEL_17;
    }

    goto LABEL_87;
  }

  if (!v41)
  {
    v40 = BYTE14(v55);
    goto LABEL_76;
  }

LABEL_73:
  v9 = __OFSUB__(HIDWORD(v40), v40);
  LODWORD(v40) = HIDWORD(v40) - v40;
  if (!v9)
  {
    v40 = v40;
    goto LABEL_76;
  }

LABEL_89:
  __break(1u);
  return result;
}

__n128 sub_10020452C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100204678(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_1002045A0(uint64_t a1)
{
  *(a1 + 8) = sub_1002045D0();
  result = sub_100204624();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1002045D0()
{
  result = qword_101699BE0;
  if (!qword_101699BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699BE0);
  }

  return result;
}

unint64_t sub_100204624()
{
  result = qword_101699BE8;
  if (!qword_101699BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699BE8);
  }

  return result;
}

uint64_t sub_100204678@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  __chkstk_darwin(v5 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v107, v108);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_23;
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(v107, v108);
  v104 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v109 = v10;
  sub_10015049C(v107, v108);
  v102 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v103 = v11;
  sub_10015049C(v107, v108);
  v100 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v101 = v12;
  sub_10015049C(v107, v108);
  v98 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v99 = v13;
  sub_10015049C(v107, v108);
  v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v96 = v15;
  v97 = v14;
  sub_10015049C(v107, v108);
  v16 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v94 = v17;
  v95 = v16;
  v19 = v96;
  v18 = v97;
  sub_100017D5C(v97, v96);
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v105 & 0x10000) != 0)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177C448);
    sub_100017D5C(v97, v96);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_100016590(v97, v96);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v105 = v24;
      *v23 = 136315138;
      v25 = Data.hexString.getter();
      v27 = sub_1000136BC(v25, v26, &v105);
      v19 = v96;

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Invalid certs length: %s", v23, 0xCu);
      sub_100007BAC(v24);
      v18 = v97;
    }

    v28 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, enum case for BinaryEncodingError.encodingError(_:), v28);
    swift_willThrow();
    sub_100016590(v95, v94);
    v30 = v18;
    v31 = v19;
    goto LABEL_22;
  }

  sub_100017D5C(v95, v94);
  sub_10002EA98(v105, v95, v94, &v105);
  v90 = v105;
  v91 = v106;
  sub_10015049C(v107, v108);
  v89 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v92 = v32;
  sub_10015049C(v107, v108);
  v87 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v88 = v33;
  sub_100017D5C(v89, v92);
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v105 & 0x10000) != 0)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177C448);
    sub_100017D5C(v89, v92);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    sub_100016590(v89, v92);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v105 = v38;
      *v37 = 136315138;
      v39 = Data.hexString.getter();
      v41 = sub_1000136BC(v39, v40, &v105);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Invalid CSR length: %s", v37, 0xCu);
      sub_100007BAC(v38);
    }

    v42 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, enum case for BinaryEncodingError.encodingError(_:), v42);
    swift_willThrow();
LABEL_21:
    sub_100016590(v87, v88);
    sub_100016590(v89, v92);
    sub_100016590(v90, v91);
    sub_100016590(v95, v94);
    v31 = v96;
    v30 = v97;
LABEL_22:
    sub_100016590(v30, v31);
    sub_100016590(v98, v99);
    sub_100016590(v100, v101);
    sub_100016590(v102, v103);
    sub_100016590(v104, v109);
    sub_100016590(v8, v9);
LABEL_23:
    sub_100007BAC(v107);
    return sub_100007BAC(a1);
  }

  v44 = v105;
  sub_100017D5C(v87, v88);
  sub_10002EA98(v44, v87, v88, &v105);
  v86 = v105;
  v93 = v106;
  sub_10015049C(v107, v108);
  v84 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v85 = v45;
  sub_10015049C(v107, v108);
  v82 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v83 = v46;
  sub_100017D5C(v84, v85);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v105 & 0x100) != 0)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_10177C448);
    sub_100017D5C(v84, v85);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    sub_100016590(v84, v85);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v105 = v51;
      *v50 = 136315138;
      v52 = Data.hexString.getter();
      v54 = sub_1000136BC(v52, v53, &v105);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "Invalid signature length: %s", v50, 0xCu);
      sub_100007BAC(v51);
    }

    v55 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v55 - 8) + 104))(v56, enum case for BinaryEncodingError.encodingError(_:), v55);
    swift_willThrow();
    sub_100016590(v82, v83);
    sub_100016590(v84, v85);
    sub_100016590(v86, v93);
    goto LABEL_21;
  }

  v57 = v105;
  sub_100017D5C(v82, v83);
  sub_10002EA98(v57, v82, v83, &v105);
  v58 = v105;
  v81 = v106;
  sub_10015049C(v107, v108);
  v60 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v62 = v61;
  sub_100016590(v82, v83);
  sub_100016590(v84, v85);
  sub_100016590(v87, v88);
  sub_100016590(v89, v92);
  sub_100016590(v95, v94);
  result = sub_100016590(v97, v96);
  v63 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v63)
    {
      v64 = BYTE6(v9);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v63 != 2)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v65 = *(v8 + 16);
  v66 = *(v8 + 24);
  v67 = __OFSUB__(v66, v65);
  v64 = v66 - v65;
  if (v67)
  {
    __break(1u);
LABEL_31:
    LODWORD(v64) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
      goto LABEL_66;
    }

    v64 = v64;
  }

LABEL_33:
  if (v64 != 16)
  {
    goto LABEL_69;
  }

  v68 = v109 >> 62;
  if ((v109 >> 62) <= 1)
  {
    if (!v68)
    {
      v69 = BYTE6(v109);
      goto LABEL_43;
    }

LABEL_41:
    LODWORD(v69) = HIDWORD(v104) - v104;
    if (!__OFSUB__(HIDWORD(v104), v104))
    {
      v69 = v69;
      goto LABEL_43;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v68 != 2)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v70 = *(v104 + 16);
  v71 = *(v104 + 24);
  v67 = __OFSUB__(v71, v70);
  v69 = v71 - v70;
  if (v67)
  {
    __break(1u);
    goto LABEL_41;
  }

LABEL_43:
  if (v69 != 16)
  {
    goto LABEL_70;
  }

  v72 = v103 >> 62;
  if ((v103 >> 62) <= 1)
  {
    if (!v72)
    {
      v73 = BYTE6(v103);
      goto LABEL_53;
    }

LABEL_51:
    LODWORD(v73) = HIDWORD(v102) - v102;
    if (!__OFSUB__(HIDWORD(v102), v102))
    {
      v73 = v73;
      goto LABEL_53;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v72 != 2)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v74 = *(v102 + 16);
  v75 = *(v102 + 24);
  v67 = __OFSUB__(v75, v74);
  v73 = v75 - v74;
  if (v67)
  {
    __break(1u);
    goto LABEL_51;
  }

LABEL_53:
  if (v73 != 18)
  {
    goto LABEL_71;
  }

  v76 = v99 >> 62;
  if ((v99 >> 62) <= 1)
  {
    if (!v76)
    {
      v77 = BYTE6(v99);
      goto LABEL_63;
    }

LABEL_61:
    LODWORD(v77) = HIDWORD(v98) - v98;
    if (!__OFSUB__(HIDWORD(v98), v98))
    {
      v77 = v77;
      goto LABEL_63;
    }

    goto LABEL_68;
  }

  if (v76 != 2)
  {
    goto LABEL_72;
  }

  v79 = *(v98 + 16);
  v78 = *(v98 + 24);
  v67 = __OFSUB__(v78, v79);
  v77 = v78 - v79;
  if (v67)
  {
    __break(1u);
    goto LABEL_61;
  }

LABEL_63:
  if (v77 == 64)
  {
    sub_100007BAC(v107);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
    v80 = v109;
    a2[2] = v104;
    a2[3] = v80;
    a2[4] = v102;
    a2[5] = v103;
    a2[6] = v100;
    a2[7] = v101;
    a2[8] = v98;
    a2[9] = v99;
    a2[10] = v90;
    a2[11] = v91;
    a2[12] = v86;
    a2[13] = v93;
    a2[14] = v58;
    a2[15] = v81;
    a2[16] = v60;
    a2[17] = v62;
    return result;
  }

LABEL_72:
  __break(1u);
  return result;
}

unint64_t sub_1002053B0()
{
  result = qword_101699BF0;
  if (!qword_101699BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699BF0);
  }

  return result;
}

unint64_t sub_100205404()
{
  result = qword_101696E20;
  if (!qword_101696E20)
  {
    type metadata accessor for BinaryEncodingError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696E20);
  }

  return result;
}

Swift::Int sub_1002054C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100205510()
{
  if (*v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100205548(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void *sub_100205644@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_100205664(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (!*v1)
  {
    v2 = -1;
  }

  *a1 = v2;
}

unint64_t sub_100205680()
{
  result = qword_101699BF8;
  if (!qword_101699BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699BF8);
  }

  return result;
}

unint64_t sub_1002056D4()
{
  result = qword_101699C00;
  if (!qword_101699C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699C00);
  }

  return result;
}

uint64_t sub_100205728()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A590);
  v1 = sub_1000076D4(v0, qword_10177A590);
  if (qword_1016944C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A5A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002057F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = sub_1000BC4D4(&qword_101699CF0, &qword_101393000);
  __chkstk_darwin(v30);
  v8 = (v23 - v7);
  v29 = sub_1000BC4D4(&qword_101699CF8, &qword_101393008);
  v24 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = v23 - v9;
  v11 = sub_1000BC4D4(&qword_101699D00, &unk_101393010);
  __chkstk_darwin(v11);
  v14 = v23 - v13;
  result = *(a2 + 128);
  v16 = *(result + 16);
  if (v16)
  {
    v23[1] = v3;
    v18 = *(v12 + 16);
    v17 = v12 + 16;
    v19 = result + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v26 = *(v17 + 56);
    v27 = v18;
    v28 = v17;
    v20 = (v17 - 8);
    v25 = a3;
    v21 = (v24 + 8);
    v24 = result;

    do
    {
      v27(v14, v19, v11);
      v22 = *(v30 + 48);
      *v8 = a1;
      sub_100206A84(v25, v8 + v22);

      AsyncStream.Continuation.yield(_:)();
      (*v20)(v14, v11);
      (*v21)(v10, v29);
      v19 += v26;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_100205A7C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100205AE0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LeechScanningService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100205B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for LeechScanningService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100205C4C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LeechScanningService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100205CF4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LeechScanningService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_100205D9C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LeechScanningService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100205E44()
{
  type metadata accessor for LeechScanningService();
  sub_100205F00(&unk_1016B1170, &unk_101392F68);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100205F00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LeechScanningService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100205F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101699D00, &unk_101393010);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_10025EDD4(0, 0, v10, &unk_101393028, v13);
}

uint64_t sub_10020612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1000BC4D4(&qword_101699D00, &unk_101393010);
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1002061FC, a4, 0);
}

uint64_t sub_1002061FC()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v2 = *(v1 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 128) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5C424(0, v2[2] + 1, 1, v2);
    *(v1 + 128) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_100A5C424((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v2[2] = v5 + 1;
  (*(v6 + 32))(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7, v8);
  *(v1 + 128) = v2;

  v9 = v0[1];

  return v9();
}

uint64_t sub_10020632C(uint64_t a1, int a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_1000BC4D4(&unk_1016C1190, &qword_101392FF8);
  *(v3 + 32) = swift_task_alloc();
  v4 = type metadata accessor for DiscoveredObject(0);
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100206434, 0, 0);
}

uint64_t sub_100206434()
{
  v31 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 72);

  sub_1002DEDAC(v5, v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100206934(*(v0 + 32));
    if (qword_1016944C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177A590);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v30 = v10;
      *v9 = 136446210;
      v11 = Dictionary.description.getter();
      v13 = sub_1000136BC(v11, v12, &v30);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to parse: %{public}s", v9, 0xCu);
      sub_100007BAC(v10);
    }

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    sub_100206A20(*(v0 + 32), *(v0 + 64));
    if (qword_1016944C0 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 56);
    v17 = *(v0 + 64);
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177A590);
    sub_100206A84(v17, v16);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 56);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136446210;
      v25 = sub_1002E1B74();
      v27 = v26;
      sub_100206AE8(v22);
      v28 = sub_1000136BC(v25, v27, &v30);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Discovered: %{public}s", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {

      sub_100206AE8(v22);
    }

    v29 = *(v0 + 24);

    return _swift_task_switch(sub_1002067E0, v29, 0);
  }
}

uint64_t sub_1002067E0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  type metadata accessor for Transaction();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  static Transaction.named<A>(_:with:)();

  return _swift_task_switch(sub_1002068B8, 0, 0);
}

uint64_t sub_1002068B8()
{
  sub_100206AE8(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100206934(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016C1190, &qword_101392FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10020699C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A5A8);
  sub_1000076D4(v0, qword_10177A5A8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100206A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100206A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredObject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100206AE8(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveredObject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100206B60(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_101699D00, &unk_101393010) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_10020612C(a1, v6, v7, v8, v1 + v5);
}

void *sub_100206C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_1011244D8(0, v1, 0);
  v3 = v2 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v23 = v2 + 64;
  v24 = v1;
  v25 = v2 + 56;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v26 = v6;
    v27 = *(v2 + 36);
    v9 = (*(v2 + 48) + 16 * v5);
    v10 = v2;
    v11 = *v9;
    v12 = v9[1];
    result = sub_100029784(*v9, v12);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      result = sub_1011244D8((v13 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v11;
    v15[5] = v12 & 0xDFFFFFFFFFFFFFFFLL;
    v7 = 1 << *(v10 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v2 = v10;
    v3 = v25;
    v16 = *(v25 + 8 * v8);
    if ((v16 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v27 != *(v2 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v5 & 0x3F));
    if (v17)
    {
      v7 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v8 << 6;
      v19 = v8 + 1;
      v20 = (v23 + 8 * v8);
      while (v19 < (v7 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1000BB408(v5, v27, 0);
          v7 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v5, v27, 0);
    }

LABEL_4:
    v6 = v26 + 1;
    v5 = v7;
    if (v26 + 1 == v24)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100206EA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_101123D1C(0, v1, 0);
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = v23;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(*(a1 + 48) + 4 * result);
    v11 = *(a1 + 36);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v21 = *(a1 + 36);
      v22 = result;
      sub_101123D1C((v12 > 1), v13 + 1, 1);
      v5 = v23;
      v11 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    *(&_swiftEmptyArrayStorage[4] + v13) = v10;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v8);
    if ((v14 & v9) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_1000BB408(result, v11, 0);
          v5 = v23;
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_1000BB408(result, v11, 0);
      v5 = v23;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1002070C0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A5C0);
  sub_1000076D4(v0, qword_10177A5C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100207144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v12 = v5, sub_100771D58(0xD000000000000015, 0x80000001013474F0), v5 = v12, (v8 & 1) != 0))
  {
    static Date.trustedNow.getter(v7);
    Date.addingTimeInterval(_:)();
    (*(v12 + 8))(v7, v4);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(v5 + 56);

    return v10(a2, 1, 1, v4);
  }
}

uint64_t sub_1002072CC()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_1000291EC(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0E0);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for ItemSharingKeyDatabase(0);
  result = v4(v5, v3);
  if (result)
  {
    v7 = *(result + 24);

    return v7;
  }

  return result;
}

uint64_t sub_100207390()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_1000291EC(&qword_101699E78, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF478);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for StandaloneBeaconDatabase(0);
  result = v4(v5, v3);
  if (result)
  {
    v7 = *(result + 24);

    return v7;
  }

  return result;
}

uint64_t sub_100207454(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v49 - v13;
  if (a1)
  {
    sub_100207144(a1, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
      sub_10022A59C();
      swift_allocError();
      *v15 = 0;
      return swift_willThrow();
    }

    else
    {
      (*(v9 + 32))(v14, v7, v8);
      v20 = sub_100207E98(v14, a2);
      p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
      v53 = a1;
      if (v2)
      {
        if (qword_1016944D0 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_1000076D4(v22, qword_10177A5C0);
        swift_errorRetain();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *v25 = 138543362;
          swift_errorRetain();
          v27 = _swift_stdlib_bridgeErrorToNSError();
          *(v25 + 4) = v27;
          *v26 = v27;
          _os_log_impl(&_mh_execute_header, v23, v24, "Purge failed to delete advertisements: %{public}@.", v25, 0xCu);
          sub_10000B3A8(v26, &qword_10169BB30, &unk_10138B3C0);
        }

        else
        {
        }

        v54 = 0;
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      }

      else
      {
        v54 = v20;
        if (qword_1016944D0 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_1000076D4(v28, qword_10177A5C0);
        (*(v9 + 16))(v12, v14, v8);
        v29 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v29, v52))
        {
          v30 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v55 = v51;
          *v30 = 134218242;
          *(v30 + 4) = v54;
          *(v30 + 12) = 2082;
          sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v50 = v29;
          v31 = dispatch thunk of CustomStringConvertible.description.getter();
          v33 = v32;
          (*(v9 + 8))(v12, v8);
          v34 = sub_1000136BC(v31, v33, &v55);

          *(v30 + 14) = v34;
          v35 = v50;
          _os_log_impl(&_mh_execute_header, v50, v52, "Purge deleted %ld advertisements older than %{public}s.", v30, 0x16u);
          sub_100007BAC(v51);

          p_weak_ivar_lyt = (&BeaconKeyManager + 56);
        }

        else
        {

          (*(v9 + 8))(v12, v8);
        }
      }

      v36 = sub_10020B734(a2, sub_10022A6FC);
      if (p_weak_ivar_lyt[154] != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177A5C0);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v38, v39, "Purge deleted %ld reconciled advertisements.", v40, 0xCu);
      }

      v41 = __OFADD__(v54, v36);
      v54 += v36;
      if (v41)
      {
        __break(1u);
      }

      v42 = sub_10020B734(a2, sub_10022A6DC);
      if (qword_1016944D0 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177A5C0);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 134217984;
        *(v46 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v44, v45, "Purge deleted %ld unreconciled near owner advertisements.", v46, 0xCu);
      }

      v48 = *(v9 + 8);
      v47 = v9 + 8;
      v48(v14, v8);
      result = v54 + v42;
      if (__OFADD__(v54, v42))
      {
        __break(1u);

        (*(v47 + 8))(v14, v8);
        return v54;
      }
    }
  }

  else
  {
    v17 = sub_1000291EC(&qword_101699D28, type metadata accessor for ObservationDatabase, &unk_10140B820);
    v18 = *(v17 + 96);
    v19 = type metadata accessor for ObservationDatabase(0);
    result = v18(v19, v17);
    if (!v2)
    {
      sub_100C640C8();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100207E98(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Connection.TransactionMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100027FA4();
  if (v9)
  {
    v14 = 0;
    v10 = __chkstk_darwin(v9);
    *(&v13 - 4) = a2;
    *(&v13 - 3) = v10;
    *(&v13 - 2) = a1;
    *(&v13 - 1) = &v14;
    (*(v6 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v5);
    Connection.transaction(_:block:)();
    (*(v6 + 8))(v8, v5);
    if (v2)
    {
    }

    else
    {

      return v14;
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    return swift_willThrow();
  }
}

void (*sub_100208084(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t *a4))(char *, uint64_t)
{
  v48 = a4;
  v50 = a3;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = __chkstk_darwin(v6);
  v51 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v49 = v40 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v40 - v12;
  __chkstk_darwin(v11);
  v15 = v40 - v14;
  v16 = type metadata accessor for Table();
  v52 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Delete();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v55;
  result = sub_1002085AC(a2, a1);
  if (!v23)
  {
    v46 = a1;
    v47 = a2;
    v40[0] = result;
    v41 = v18;
    v42 = v22;
    v25 = v49;
    v43 = v15;
    v44 = v20;
    v45 = v19;
    v55 = 0;
    v40[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    if (qword_101695330 != -1)
    {
      swift_once();
    }

    v26 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v26, qword_10177C938);
    type metadata accessor for Date();
    < infix<A>(_:_:)();
    v57 = v40[0];
    v50 = v16;
    v27 = v43;
    v28 = v25;
    v29 = v51;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v30 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v30, qword_10177C770);
    sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
    sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0, &protocol conformance descriptor for Set<A>);
    Collection<>.contains(_:)();

    v56 = 0;
    == infix<A>(_:_:)();
    v31 = *(v53 + 8);
    v32 = v29;
    v33 = v54;
    v31(v32, v54);
    && infix(_:_:)();
    v31(v28, v33);
    v31(v13, v33);
    v34 = v41;
    v35 = v50;
    QueryType.filter(_:)();
    v31(v27, v33);
    v36 = v42;
    QueryType.delete()();
    (*(v52 + 8))(v34, v35);
    v37 = v55;
    v38 = Connection.run(_:)();
    if (v37)
    {
      return (*(v44 + 8))(v36, v45);
    }

    else
    {
      v39 = v38;
      result = (*(v44 + 8))(v36, v45);
      *v48 = v39;
    }
  }

  return result;
}

void (*sub_1002085AC(NSObject *a1, uint64_t a2))(char *, uint64_t)
{
  v251 = a1;
  v209 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v208 = *(v209 - 8);
  __chkstk_darwin(v209);
  v207 = &v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  v214 = *(v243 - 8);
  __chkstk_darwin(v243);
  v239 = &v178 - v4;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v5 - 8);
  v238 = &v178 - v6;
  v237 = type metadata accessor for Date();
  v213 = *(v237 - 8);
  v7 = __chkstk_darwin(v237);
  v231 = &v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v236 = &v178 - v9;
  v244 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v212 = *(v244 - 8);
  v10 = __chkstk_darwin(v244);
  v240 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v222 = &v178 - v13;
  __chkstk_darwin(v12);
  v221 = &v178 - v14;
  v227 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v211 = *(v227 - 8);
  __chkstk_darwin(v227);
  v220 = &v178 - v15;
  v235 = type metadata accessor for UUID();
  v210 = *(v235 - 8);
  v16 = __chkstk_darwin(v235);
  v230 = &v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v234 = &v178 - v18;
  v19 = type metadata accessor for Row();
  v20 = *(v19 - 8);
  v245 = v19;
  v246 = v20;
  v21 = __chkstk_darwin(v19);
  v242 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v223 = &v178 - v23;
  v24 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v25 = __chkstk_darwin(v24 - 8);
  v241 = &v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v224 = &v178 - v27;
  v252 = type metadata accessor for Table();
  v229 = *(v252 - 8);
  v28 = __chkstk_darwin(v252);
  v226 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v219 = &v178 - v31;
  v32 = __chkstk_darwin(v30);
  v218 = &v178 - v33;
  v34 = __chkstk_darwin(v32);
  v225 = &v178 - v35;
  __chkstk_darwin(v34);
  v232 = &v178 - v36;
  v228 = type metadata accessor for ContinuousClock.Instant();
  v233 = *(v228 - 8);
  v37 = __chkstk_darwin(v228);
  v215 = &v178 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v216 = &v178 - v40;
  v41 = __chkstk_darwin(v39);
  v217 = &v178 - v42;
  __chkstk_darwin(v41);
  v247 = &v178 - v43;
  v250 = sub_1000BC4D4(&qword_101699D70, &unk_1013930E0);
  v44 = *(v250 - 1);
  v45 = __chkstk_darwin(v250);
  v47 = &v178 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v45);
  v50 = &v178 - v49;
  __chkstk_darwin(v48);
  v52 = &v178 - v51;
  v53 = type metadata accessor for ContinuousClock();
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v56 = &v178 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.init()();
  v57 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v248 = a2;
  SchemaType.count.getter();
  v58 = v249;
  Connection.scalar<A>(_:)();
  if (v58)
  {
    (*(v44 + 8))(v52, v250);
    (*(v54 + 8))(v56, v53);
  }

  else
  {
    v203 = v47;
    v202 = v57;
    v206 = v56;
    v205 = v53;
    v249 = v54;
    v59 = *(v44 + 8);
    v60 = v250;
    v59(v52, v250);
    v61 = v253;
    SchemaType.count.getter();
    Connection.scalar<A>(_:)();
    v59(v50, v60);
    v62 = v253;
    v63 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
    v64 = v203;
    SchemaType.count.getter();
    Connection.scalar<A>(_:)();
    v201 = v63;
    v204 = 0;
    v59(v64, v250);
    v66 = v253;
    if (qword_1016944D0 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    v200 = sub_1000076D4(v67, qword_10177A5C0);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 134218496;
      *(v70 + 4) = v61;
      *(v70 + 12) = 2048;
      *(v70 + 14) = v62;
      *(v70 + 22) = 2048;
      *(v70 + 24) = v66;
      _os_log_impl(&_mh_execute_header, v68, v69, "rowCounts: %ld/%ld/%ld", v70, 0x20u);
    }

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    v73 = os_log_type_enabled(v71, v72);
    v74 = v233;
    if (v73)
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Gathering high-value owned observations.", v75, 2u);
    }

    v256 = &_swiftEmptySetSingleton;
    ContinuousClock.now.getter();
    v76 = v232;
    if (qword_1016952A0 != -1)
    {
      swift_once();
    }

    v77 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    v78 = sub_1000076D4(v77, qword_10177C788);
    v254 = v77;
    v255 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
    v79 = sub_1000280DC(&v253);
    (*(*(v77 - 8) + 16))(v79, v78, v77);
    v80 = v252;
    SchemaType.select(distinct:_:)();
    sub_100007BAC(&v253);
    v254 = v80;
    v255 = &protocol witness table for Table;
    v81 = sub_1000280DC(&v253);
    v82 = v229;
    v57 = (v229 + 16);
    v83 = *(v229 + 16);
    v83(v81, v76, v80);
    v84 = v204;
    Connection.prepare(_:)();
    v204 = v84;
    if (v84)
    {
      (*(v82 + 8))(v76, v80);
      (*(v74 + 8))(v247, v228);
      (*(v249 + 8))(v206, v205);
LABEL_15:
      sub_100007BAC(&v253);
    }

    else
    {
      v186 = v83;
      v187 = v57;
      v188 = v78;
      sub_100007BAC(&v253);
      v85 = dispatch thunk of _AnySequenceBox._makeIterator()();

      v86 = v224;
      v180 = v85;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v88 = v245;
      v87 = v246;
      v89 = *(v246 + 48);
      v250 = (v246 + 48);
      v203 = v89;
      if (v89(v86, 1, v245) == 1)
      {
LABEL_17:

        v90 = v217;
        ContinuousClock.now.getter();
        v57 = v256;
        v91 = v233;
        v92 = *(v233 + 16);
        v93 = v216;
        v94 = v228;
        v92(v216, v247, v228);
        v95 = v215;
        v92(v215, v90, v94);

        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.default.getter();
        v251 = v96;
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v250 = swift_slowAlloc();
          v253 = v250;
          *v98 = 134218242;
          *(v98 + 4) = *(v57 + 2);

          *(v98 + 12) = 2082;
          v99 = v207;
          static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
          sub_1000291EC(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
          v100 = v91;
          v101 = v94;
          v102 = static Duration.description<A>(_:_:units:)();
          LODWORD(v248) = v97;
          v104 = v103;
          (*(v208 + 8))(v99, v209);
          v105 = *(v100 + 8);
          v105(v95, v101);
          v105(v216, v101);
          v106 = sub_1000136BC(v102, v104, &v253);

          *(v98 + 14) = v106;
          v107 = v251;
          _os_log_impl(&_mh_execute_header, v251, v248, "Found high-value owned observations count: %ld. Duration: %{public}s", v98, 0x16u);
          sub_100007BAC(v250);

          v105(v217, v101);
          (*(v229 + 8))(v232, v252);
          v105(v247, v101);
        }

        else
        {

          v173 = *(v91 + 8);
          v173(v95, v94);
          v173(v93, v94);
          v173(v90, v94);
          (*(v229 + 8))(v232, v252);
          v173(v247, v94);
        }

        (*(v249 + 8))(v206, v205);
      }

      else
      {
        v109 = *(v87 + 32);
        v108 = v87 + 32;
        ++v212;
        v182 = (v211 + 1);
        v183 = (v82 + 8);
        v195 = (v214 + 8);
        v194 = (v213 + 48);
        v192 = (v213 + 32);
        v191 = (v210 + 16);
        v190 = (v213 + 16);
        v189 = (v213 + 8);
        v193 = (v210 + 8);
        v211 = (v108 - 24);
        v110 = v80;
        v111 = &qword_101695000;
        *(&v112 + 1) = 2;
        v181 = xmmword_101385D80;
        *&v112 = 141558787;
        v178 = v112;
        v246 = v108;
        v199 = v109;
        v109(v223, v86, v88);
        while (1)
        {
          Row.subscript.getter();
          v254 = v110;
          v255 = &protocol witness table for Table;
          v115 = sub_1000280DC(&v253);
          v186(v115, v248 + v201, v110);
          if (v111[83] != -1)
          {
            swift_once();
          }

          v116 = v244;
          v117 = sub_1000076D4(v244, qword_10177C770);
          v118 = v221;
          QueryType.subscript.getter();
          v119 = v222;
          v214 = v117;
          QueryType.subscript.getter();
          v120 = v220;
          == infix<A>(_:_:)();
          v121 = *v212;
          (*v212)(v119, v116);
          v210 = v121;
          (v121)(v118, v116);
          QueryType.join(_:on:)();
          v213 = *v182;
          (v213)(v120, v227);
          sub_100007BAC(&v253);
          v122 = v110;
          if (qword_101695330 != -1)
          {
            swift_once();
          }

          v123 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
          v124 = sub_1000076D4(v123, qword_10177C938);
          v254 = v243;
          v255 = sub_1000041A4(&qword_101699D80, &qword_101699D60, &qword_1013B6DE0, &protocol conformance descriptor for Expression<A>);
          sub_1000280DC(&v253);
          v125 = sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
          v198 = v123;
          v196 = v125;
          v197 = v124;
          ExpressionType<>.max.getter();
          sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
          v126 = swift_allocObject();
          *(v126 + 16) = v181;
          *(v126 + 56) = v116;
          *(v126 + 64) = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
          sub_1000280DC((v126 + 32));
          QueryType.subscript.getter();
          v127 = v219;
          v128 = v226;
          SchemaType.select(_:_:)();

          v129 = *v183;
          (*v183)(v128, v122);
          sub_100007BAC(&v253);
          == infix<A>(_:_:)();
          v130 = v218;
          QueryType.where(_:)();
          (v213)(v120, v227);
          v129(v127, v122);
          v131 = swift_allocObject();
          *(v131 + 16) = v181;
          if (qword_101695310 != -1)
          {
            swift_once();
          }

          v132 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
          v133 = sub_1000076D4(v132, qword_10177C8D8);
          *(v131 + 56) = v132;
          *(v131 + 64) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
          v134 = sub_1000280DC((v131 + 32));
          (*(*(v132 - 8) + 16))(v134, v133, v132);
          v135 = v225;
          QueryType.group(_:)();
          v136 = v135;

          v129(v130, v122);
          v254 = v122;
          v255 = &protocol witness table for Table;
          v137 = sub_1000280DC(&v253);
          v186(v137, v135, v122);
          v138 = v204;
          Connection.prepare(_:)();
          v204 = v138;
          v139 = v205;
          v140 = v206;
          v142 = v241;
          v141 = v242;
          if (v138)
          {

            v176 = v136;
            v177 = v252;
            v57 = v183;
            v129(v176, v252);
            (*v193)(v234, v235);
            (*v211)(v223, v245);
            v129(v232, v177);
            (*(v233 + 8))(v247, v228);

            (*(v249 + 8))(v140, v139);
            goto LABEL_15;
          }

          v179 = v129;
          sub_100007BAC(&v253);
          v143 = dispatch thunk of _AnySequenceBox._makeIterator()();

          v213 = v143;
          dispatch thunk of _AnyIteratorBoxBase.next()();
          v144 = v245;
          v145 = v203(v142, 1, v245);
          v146 = v247;
          if (v145 != 1)
          {
            break;
          }

LABEL_20:

          v110 = v252;
          v179(v225, v252);
          (*v193)(v234, v235);
          v113 = v223;
          (*v211)(v223, v144);
          v114 = v224;
          dispatch thunk of _AnyIteratorBoxBase.next()();
          v111 = &qword_101695000;
          if (v203(v114, 1, v144) == 1)
          {
            goto LABEL_17;
          }

          v199(v113, v114, v144);
        }

        v147 = v240;
        while (1)
        {
          v199(v141, v142, v144);
          QueryType.subscript.getter();
          v149 = v204;
          Row.get<A>(_:)();
          if (v149)
          {
            break;
          }

          (v210)(v147, v244);
          v150 = v253;
          v151 = v239;
          ExpressionType<>.max.getter();
          v152 = v238;
          v153 = v237;
          Row.get<A>(_:)();
          v204 = 0;
          (*v195)(v151, v243);
          v154 = (*v194)(v152, 1, v153);
          v146 = v247;
          if (v154 == 1)
          {
            v141 = v242;
            v144 = v245;
            (*v211)(v242, v245);
            sub_10000B3A8(v152, &unk_101696900, &unk_10138B1E0);
          }

          else
          {
            v155 = v236;
            (*v192)(v236, v152, v153);
            sub_100DEB5CC(&v253, v150);
            v156 = v230;
            v157 = v235;
            (*v191)(v230, v234, v235);
            v158 = v231;
            (*v190)(v231, v155, v153);
            v159 = Logger.logObject.getter();
            v160 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v159, v160))
            {
              v161 = swift_slowAlloc();
              v185 = swift_slowAlloc();
              v253 = v185;
              *v161 = v178;
              *(v161 + 4) = 1752392040;
              *(v161 + 12) = 2081;
              sub_1000291EC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v184 = v159;
              v162 = dispatch thunk of CustomStringConvertible.description.getter();
              v164 = v163;
              (*v193)(v156, v157);
              v165 = sub_1000136BC(v162, v164, &v253);

              *(v161 + 14) = v165;
              *(v161 + 22) = 2080;
              sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v166 = dispatch thunk of CustomStringConvertible.description.getter();
              v168 = v167;
              v169 = *v189;
              (*v189)(v158, v153);
              v170 = sub_1000136BC(v166, v168, &v253);

              *(v161 + 24) = v170;
              *(v161 + 32) = 2048;
              *(v161 + 34) = v150;
              v171 = v184;
              _os_log_impl(&_mh_execute_header, v184, v160, "Adding high-value Owned Observations for beacon: %{private,mask.hash}s, scanDate: %s, advId: %lld.", v161, 0x2Au);
              swift_arrayDestroy();

              v169(v236, v153);
              v146 = v247;
              v141 = v242;
              v144 = v245;
              (*v211)(v242, v245);
            }

            else
            {

              v172 = *v189;
              (*v189)(v158, v153);
              (*v193)(v156, v157);
              v172(v236, v153);
              v141 = v242;
              v144 = v245;
              (*v211)(v242, v245);
              v146 = v247;
            }
          }

          v142 = v241;
          dispatch thunk of _AnyIteratorBoxBase.next()();
          v148 = v203(v142, 1, v144);
          v147 = v240;
          if (v148 == 1)
          {
            goto LABEL_20;
          }
        }

        (v210)(v147, v244);
        v57 = *v211;
        (*v211)(v141, v144);
        v174 = v252;
        v175 = v179;
        v179(v225, v252);
        (*v193)(v234, v235);
        v57(v223, v144);
        v175(v232, v174);
        (*(v233 + 8))(v146, v228);

        (*(v249 + 8))(v206, v205);
      }
    }
  }

  return v57;
}

void (*sub_10020A8C8(uint64_t a1, NSObject *a2, uint64_t *a3))(char *, uint64_t)
{
  v52 = a3;
  v62 = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = __chkstk_darwin(v4);
  v53 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v39 - v7;
  v9 = type metadata accessor for Delete();
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Table();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v39 - v17;
  v19 = v57;
  result = sub_1002085AC(a2, v62);
  if (!v19)
  {
    v42 = result;
    v44 = v16;
    v45 = v12;
    v46 = v18;
    v47 = v8;
    v57 = v13;
    v48 = v11;
    v49 = v9;
    v50 = a2;
    v51 = 0;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v21 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v21, qword_10177C770);
    v60 = v21;
    v61 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
    sub_1000280DC(&v58);
    v22 = v45;
    QueryType.subscript.getter();
    v23 = v46;
    SchemaType.select(_:_:)();
    sub_100007BAC(&v58);
    v24 = Expressible.asSQL()();
    countAndFlagsBits = v24._countAndFlagsBits;
    object = v24._object;
    v25 = *(v57 + 8);
    v57 += 8;
    v43 = v25;
    v25(v23, v22);
    v39[1] = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    v58 = v42;
    sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
    sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0, &protocol conformance descriptor for Set<A>);
    v26 = v53;
    Collection<>.contains(_:)();

    LOBYTE(v58) = 0;
    v27 = v47;
    == infix<A>(_:_:)();
    v28 = v55;
    v29 = *(v54 + 8);
    v29(v26, v55);
    v30 = v44;
    QueryType.filter(_:)();
    v29(v27, v28);
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v58 = 0xD000000000000028;
    v59 = 0x800000010134D4B0;
    v31._countAndFlagsBits = countAndFlagsBits;
    v31._object = object;
    String.append(_:)(v31);

    v32._countAndFlagsBits = 41;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
    ExpressionType.init(literal:)();
    QueryType.filter(_:)();
    v29(v27, v28);
    v33 = v30;
    v34 = v43;
    v43(v33, v22);
    v35 = v48;
    QueryType.delete()();
    v34(v23, v22);
    v36 = v51;
    v37 = Connection.run(_:)();
    if (v36)
    {
      return (*(v56 + 8))(v35, v49);
    }

    else
    {
      v38 = v37;
      result = (*(v56 + 8))(v35, v49);
      *v52 = v38;
    }
  }

  return result;
}

void (*sub_10020AEF0(void *a1, NSObject *a2, uint64_t *a3))(char *, uint64_t)
{
  v58 = a3;
  v67 = a1;
  v4 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v60 = &v47 - v5;
  v64 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v72 = *(v64 - 8);
  v6 = __chkstk_darwin(v64);
  v59 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v47 - v8;
  v10 = type metadata accessor for Delete();
  v63 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Table();
  v66 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v47 - v18;
  __chkstk_darwin(v17);
  v21 = &v47 - v20;
  v22 = v65;
  result = sub_1002085AC(a2, v67);
  if (!v22)
  {
    v47 = result;
    v50 = v16;
    v65 = v19;
    v51 = v13;
    v56 = 0;
    v57 = v21;
    v52 = v9;
    v53 = v12;
    v24 = v72;
    v54 = v10;
    v55 = a2;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v25 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v25, qword_10177C770);
    v70 = v25;
    v71 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
    sub_1000280DC(&v68);
    v26 = v51;
    QueryType.subscript.getter();
    v27 = v57;
    SchemaType.select(_:_:)();
    sub_100007BAC(&v68);
    v48 = Expressible.asSQL()();
    v28 = *(v66 + 8);
    v66 += 8;
    v49 = v28;
    v28(v27, v26);
    v68 = v47;
    sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
    sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0, &protocol conformance descriptor for Set<A>);
    v29 = v59;
    Collection<>.contains(_:)();

    LOBYTE(v68) = 0;
    v30 = v52;
    == infix<A>(_:_:)();
    v31 = *(v24 + 8);
    v32 = v29;
    v33 = v64;
    v31(v32, v64);
    v34 = v31;
    v35 = v50;
    QueryType.filter(_:)();
    v72 = v24 + 8;
    v31(v30, v33);
    if (qword_101695300 != -1)
    {
      swift_once();
    }

    v36 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v36, qword_10177C8A8);
    v67 = &protocol conformance descriptor for Expression<A>;
    sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
    v37 = v60;
    ExpressionType<>.length.getter();
    v68 = 6;
    == infix<A>(_:_:)();
    (*(v61 + 8))(v37, v62);
    QueryType.filter(_:)();
    v38 = v64;
    v34(v30, v64);
    v62 = v34;
    v39 = v49;
    v49(v35, v26);
    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v68 = 0xD000000000000028;
    v69 = 0x800000010134D4B0;
    String.append(_:)(v48);

    v40._countAndFlagsBits = 41;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, v67);
    ExpressionType.init(literal:)();
    v41 = v57;
    v42 = v65;
    QueryType.filter(_:)();
    v62(v30, v38);
    v39(v42, v26);
    v43 = v53;
    QueryType.delete()();
    v39(v41, v26);
    v44 = v56;
    v45 = Connection.run(_:)();
    if (v44)
    {
      return (*(v63 + 8))(v43, v54);
    }

    else
    {
      v46 = v45;
      result = (*(v63 + 8))(v43, v54);
      *v58 = v46;
    }
  }

  return result;
}

uint64_t sub_10020B734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Connection.TransactionMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100027FA4();
  if (v8)
  {
    v13 = 0;
    v9 = __chkstk_darwin(v8);
    *(&v12 - 4) = a1;
    *(&v12 - 3) = v9;
    *(&v12 - 2) = &v13;
    (*(v5 + 104))(v7, enum case for Connection.TransactionMode.deferred(_:), v4);
    Connection.transaction(_:block:)();
    (*(v5 + 8))(v7, v4);
    if (v2)
    {
    }

    else
    {

      return v13;
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    return swift_willThrow();
  }
}

void (*sub_10020B910(uint64_t a1, NSObject *a2, uint64_t *a3))(char *, uint64_t)
{
  v64 = a3;
  v5 = type metadata accessor for Delete();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v65 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v51 - v11;
  v13 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v74 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v51 - v14;
  v16 = type metadata accessor for JoinType();
  v72 = *(v16 - 8);
  v73 = v16;
  __chkstk_darwin(v16);
  v71 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Table();
  v79 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v51 - v22;
  v70 = a1;
  v24 = v75;
  result = sub_1002085AC(a2, a1);
  if (!v24)
  {
    v55 = v12;
    v52 = v10;
    v56 = 0;
    v57 = result;
    v60 = v21;
    v61 = v23;
    v62 = v15;
    v63 = v13;
    v75 = a2;
    v26 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    (*(v72 + 104))(v71, enum case for JoinType.inner(_:), v73);
    v27 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
    v77 = v18;
    v78 = &protocol witness table for Table;
    v28 = sub_1000280DC(v76);
    v29 = *(v79 + 16);
    v51[1] = v27;
    v54 = v79 + 16;
    v53 = v29;
    v29(v28, (v70 + v27), v18);
    v30 = v18;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v31 = v69;
    v59 = sub_1000076D4(v69, qword_10177C770);
    v58 = v26;
    v32 = v55;
    QueryType.subscript.getter();
    v33 = v52;
    QueryType.subscript.getter();
    v34 = v62;
    == infix<A>(_:_:)();
    v35 = *(v68 + 8);
    v35(v33, v31);
    v35(v32, v31);
    v36 = v60;
    v37 = v71;
    QueryType.join(_:_:on:)();
    v68 = *(v74 + 8);
    v74 += 8;
    (v68)(v34, v63);
    (*(v72 + 8))(v37, v73);
    sub_100007BAC(v76);
    v77 = v31;
    v78 = sub_1000041A4(&qword_101699D98, &qword_101699D30, &qword_1013BA850, &protocol conformance descriptor for Expression<A>);
    sub_1000280DC(v76);
    QueryType.subscript.getter();
    v38 = v61;
    SchemaType.select(_:_:)();
    v39 = v79 + 8;
    v40 = *(v79 + 8);
    v40(v36, v30);
    sub_100007BAC(v76);
    v77 = v30;
    v78 = &protocol witness table for Table;
    v41 = sub_1000280DC(v76);
    v53(v41, v38, v30);
    v42 = v56;
    Connection.prepare(_:)();
    v43 = v30;
    if (v42)
    {
      v40(v38, v30);

      return sub_100007BAC(v76);
    }

    else
    {
      v79 = v39;
      sub_100007BAC(v76);
      v44 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v45 = sub_10112A068(v44);

      if (*(v57 + 2) <= v45[2] >> 3)
      {
        v76[0] = v45;
        sub_10087D4BC(v57);

        v46 = v76[0];
      }

      else
      {
        v46 = sub_10061076C(v57, v45);
      }

      v76[0] = v46;
      sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
      sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0, &protocol conformance descriptor for Set<A>);
      v47 = v62;
      Collection<>.contains(_:)();

      v48 = v60;
      QueryType.filter(_:)();
      (v68)(v47, v63);
      v49 = v65;
      QueryType.delete()();
      v40(v48, v43);
      v50 = Connection.run(_:)();
      (*(v66 + 8))(v49, v67);
      result = (v40)(v61, v43);
      *v64 = v50;
    }
  }

  return result;
}

uint64_t sub_10020C214(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10020C2D4, 0, 0);
}

uint64_t sub_10020C2D4()
{
  v1 = sub_100027FA4();
  if (v1)
  {
    v2 = v1;
    v4 = v0[3].i64[1];
    v3 = v0[4].i64[0];
    v5 = v0[3].i64[0];
    v0[1].i64[0] = 0;
    v0[1].i64[1] = 0;
    v6 = swift_task_alloc();
    v6[1] = vextq_s8(v0[2], v0[2], 8uLL);
    v6[2].i64[0] = &v0[1].i64[1];
    v6[2].i64[1] = v2;
    v6[3].i64[0] = v0[1].i64;
    (*(v4 + 104))(v3, enum case for Connection.TransactionMode.deferred(_:), v5);
    Connection.transaction(_:block:)();
    (*(v0[3].i64[1] + 8))(v0[4].i64[0], v0[3].i64[0]);

    v8 = v0[1].i64[0] + v0[1].i64[1];
    if (__OFADD__(v0[1].i64[0], v0[1].i64[1]))
    {
      __break(1u);
    }

    else
    {

      v9 = v0->i64[1];

      return v9(v8);
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v10 = 2;
    *(v10 + 4) = 1;
    swift_willThrow();

    v11 = v0->i64[1];

    return v11();
  }

  return result;
}

void *sub_10020C4A4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v180 = a5;
  v210 = a4;
  v208 = a3;
  v212 = a1;
  v188 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v166 = *(v188 - 8);
  __chkstk_darwin(v188);
  v187 = &v154 - v6;
  v202 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v165 = *(v202 - 8);
  v7 = __chkstk_darwin(v202);
  v186 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v185 = &v154 - v9;
  v214 = type metadata accessor for JoinType();
  v164 = *(v214 - 8);
  __chkstk_darwin(v214);
  v215 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for UUID();
  v169 = *(v192 - 8);
  v11 = __chkstk_darwin(v192);
  v191 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v163 = &v154 - v13;
  v14 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v15 = __chkstk_darwin(v14 - 8);
  v167 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v177 = &v154 - v17;
  v178 = type metadata accessor for Row();
  v190 = *(v178 - 8);
  v18 = __chkstk_darwin(v178);
  v179 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v206 = &v154 - v20;
  v216 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v21 = *(v216 - 8);
  v22 = __chkstk_darwin(v216);
  v184 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v154 - v25;
  __chkstk_darwin(v24);
  v28 = &v154 - v27;
  v29 = type metadata accessor for Table();
  v217 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v201 = &v154 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v200 = &v154 - v33;
  v34 = __chkstk_darwin(v32);
  v183 = &v154 - v35;
  v36 = __chkstk_darwin(v34);
  v182 = &v154 - v37;
  v38 = __chkstk_darwin(v36);
  v170 = &v154 - v39;
  v40 = __chkstk_darwin(v38);
  v176 = &v154 - v41;
  __chkstk_darwin(v40);
  v209 = &v154 - v42;
  v203 = type metadata accessor for Delete();
  v189 = *(v203 - 8);
  v43 = __chkstk_darwin(v203);
  v181 = &v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = &v154 - v45;
  v218 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEvent;
  v219 = a2;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v168 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v47 = sub_1000076D4(v168, qword_10177C788);
  sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  sub_1000041A4(&qword_101699F00, &unk_1016BF350, &unk_1013E4AF0, &protocol conformance descriptor for [A]);
  v204 = v47;
  Collection<>.contains(_:)();
  LOBYTE(v219) = 0;
  v213 = v28;
  == infix<A>(_:_:)();
  v49 = *(v21 + 8);
  v48 = v21 + 8;
  v50 = v216;
  v49(v26, v216);
  v51 = v209;
  QueryType.filter(_:)();
  v199 = v49;
  v49(v28, v50);
  QueryType.delete()();
  v53 = v217 + 8;
  v52 = *(v217 + 8);
  v52(v51, v29);
  v54 = v211;
  v55 = Connection.run(_:)();
  if (v54)
  {
    return (*(v189 + 8))(v46, v203);
  }

  v197 = v52;
  v198 = v53;
  v205 = 0;
  v172 = v26;
  v160 = v46;
  v194 = v48;
  v161 = v29;
  *v208 = v55;
  if (qword_1016952C8 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v57 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
    v58 = sub_1000076D4(v57, qword_10177C800);
    v220 = v57;
    v59 = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
    v221 = v59;
    v60 = sub_1000280DC(&v219);
    v61 = *(*(v57 - 8) + 16);
    v61(v60, v58, v57);
    v62 = v209;
    v63 = v161;
    SchemaType.select(_:_:)();
    sub_100007BAC(&v219);
    v175 = sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
    v64 = swift_allocObject();
    v174 = xmmword_101385D80;
    *(v64 + 16) = xmmword_101385D80;
    *(v64 + 56) = v57;
    *(v64 + 64) = v59;
    v65 = sub_1000280DC((v64 + 32));
    v173 = v58;
    v61(v65, v58, v57);
    v66 = v176;
    QueryType.group(_:)();

    v67 = v197;
    v197(v62, v63);
    v220 = v63;
    v221 = &protocol witness table for Table;
    v68 = sub_1000280DC(&v219);
    v69 = v217 + 16;
    v70 = *(v217 + 16);
    v70(v68, v66, v63);
    v71 = v205;
    Connection.prepare(_:)();
    if (v71)
    {
      v72 = v66;
      v73 = v63;
LABEL_11:
      v67(v72, v73);
      (*(v189 + 8))(v160, v203);
      return sub_100007BAC(&v219);
    }

    v193 = v70;
    v205 = 0;
    v217 = v69;
    sub_100007BAC(&v219);
    v74 = dispatch thunk of _AnySequenceBox._makeIterator()();

    v219 = _swiftEmptyArrayStorage;
    sub_101123D1C(0, 0, 0);
    v75 = v219;
    v76 = v177;
    v211 = v74;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v77 = v190;
    v78 = v178;
    v207 = *(v190 + 48);
    v208 = (v190 + 48);
    if (v207(v76, 1, v178) != 1)
    {
      v195 = *(v77 + 32);
      v196 = (v77 + 32);
      v93 = (v77 + 8);
      do
      {
        v94 = v206;
        v195(v206, v76, v78);
        sub_100028088();
        Row.subscript.getter();
        (*v93)(v94, v78);
        v95 = v222;
        v219 = v75;
        v97 = v75[2];
        v96 = v75[3];
        if (v97 >= v96 >> 1)
        {
          sub_101123D1C((v96 > 1), v97 + 1, 1);
          v75 = v219;
        }

        v75[2] = v97 + 1;
        *(v75 + v97 + 32) = v95;
        dispatch thunk of _AnyIteratorBoxBase.next()();
      }

      while (v207(v76, 1, v78) != 1);
    }

    v171 = v75;
    sub_10000B3A8(v76, &qword_101699D68, &unk_1013B6450);
    v79 = v168;
    v220 = v168;
    v80 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
    v221 = v80;
    v81 = sub_1000280DC(&v219);
    v82 = *(*(v79 - 8) + 16);
    v83 = v204;
    v82(v81, v204, v79);
    v84 = v209;
    v85 = v161;
    SchemaType.select(_:_:)();
    sub_100007BAC(&v219);
    v86 = swift_allocObject();
    *(v86 + 16) = v174;
    *(v86 + 56) = v79;
    *(v86 + 64) = v80;
    v87 = sub_1000280DC((v86 + 32));
    v82(v87, v83, v79);
    v88 = v170;
    QueryType.group(_:)();
    v89 = v85;

    v90 = v85;
    v67 = v197;
    v197(v84, v90);
    v220 = v89;
    v221 = &protocol witness table for Table;
    v91 = sub_1000280DC(&v219);
    v193(v91, v88, v89);
    v92 = v205;
    Connection.prepare(_:)();
    if (v92)
    {

      v67(v88, v89);
      v72 = v176;
      v73 = v89;
      goto LABEL_11;
    }

    v205 = 0;
    sub_100007BAC(&v219);
    v98 = dispatch thunk of _AnySequenceBox._makeIterator()();

    v219 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, 0, 0);
    v99 = v219;
    v100 = v167;
    v162 = v98;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v101 = v178;
    if (v207(v100, 1, v178) == 1)
    {
      v102 = v169;
    }

    else
    {
      v206 = *(v190 + 32);
      v196 = (v190 + 8);
      v102 = v169;
      v195 = (v169 + 32);
      v148 = v192;
      v149 = v163;
      v190 += 32;
      do
      {
        v150 = v179;
        (v206)(v179, v100, v101);
        Row.subscript.getter();
        (*v196)(v150, v101);
        v219 = v99;
        v152 = v99[2];
        v151 = v99[3];
        if (v152 >= v151 >> 1)
        {
          sub_101123D4C((v151 > 1), v152 + 1, 1);
          v99 = v219;
        }

        v99[2] = v152 + 1;
        (*(v102 + 32))(v99 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v152, v149, v148);
        dispatch thunk of _AnyIteratorBoxBase.next()();
      }

      while (v207(v100, 1, v101) != 1);
    }

    sub_10000B3A8(v100, &qword_101699D68, &unk_1013B6450);
    v155 = v99[2];
    if (!v155)
    {
      break;
    }

    v103 = 0;
    v159 = v99 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v104 = v212;
    v163 = (v212 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_attachmentInfo);
    v158 = v102 + 16;
    v105 = (v164 + 104);
    ++v165;
    v207 = (v164 + 8);
    v168 = v171[2];
    ++v166;
    v106 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEventLocation;
    v167 = (v189 + 8);
    v156 = (v102 + 8);
    LODWORD(v206) = enum case for JoinType.leftOuter(_:);
    v107 = v161;
    result = v99;
    v108 = v205;
    v208 = (v164 + 104);
    v157 = result;
    v164 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_deviceEventLocation;
    while (1)
    {
      if (v103 >= result[2])
      {
        __break(1u);
        return result;
      }

      v111 = *(v169 + 72);
      v161 = v103;
      (*(v169 + 16))(v191, &v159[v111 * v103], v192);
      if (v168)
      {
        break;
      }

LABEL_21:
      v109 = v104;
      v110 = v161 + 1;
      (*v156)(v191, v192);
      v103 = v110;
      v104 = v109;
      v105 = v208;
      result = v157;
      if (v103 == v155)
      {

        goto LABEL_41;
      }
    }

    v112 = 0;
    v113 = v215;
    while (v112 < v171[2])
    {
      v205 = v108;
      v177 = v112;
      LODWORD(v196) = v112[v171 + 32];
      v195 = *v105;
      v195(v113, v206, v214);
      v220 = v107;
      v221 = &protocol witness table for Table;
      v114 = sub_1000280DC(&v219);
      v193(v114, (v104 + v106), v107);
      if (qword_101695380 != -1)
      {
        swift_once();
      }

      v115 = v202;
      v116 = sub_1000076D4(v202, qword_10177CA28);
      v117 = v185;
      v178 = v116;
      QueryType.subscript.getter();
      v118 = v186;
      QueryType.subscript.getter();
      == infix<A>(_:_:)();
      v119 = *v165;
      v179 = v119;
      (v119)(v118, v115);
      (v119)(v117, v115);
      v120 = v215;
      v121 = v213;
      QueryType.join(_:_:on:)();
      v199(v121, v216);
      v190 = *v207;
      v122 = v214;
      (v190)(v120, v214);
      sub_100007BAC(&v219);
      v195(v120, v206, v122);
      v220 = v107;
      v221 = &protocol witness table for Table;
      v123 = sub_1000280DC(&v219);
      v193(v123, v163, v107);
      QueryType.subscript.getter();
      QueryType.subscript.getter();
      v124 = v213;
      == infix<A>(_:_:)();
      v125 = v202;
      v126 = v179;
      (v179)(v118, v202);
      v126(v117, v125);
      v127 = v215;
      v128 = v201;
      QueryType.join(_:_:on:)();
      v129 = v216;
      v130 = v199;
      v199(v124, v216);
      (v190)(v127, v214);
      v131 = v197;
      v197(v128, v107);
      sub_100007BAC(&v219);
      LOBYTE(v219) = v196;
      sub_100028088();
      v132 = v172;
      == infix<A>(_:_:)();
      v133 = v184;
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v130(v133, v129);
      v130(v132, v129);
      v134 = v130;
      v135 = v183;
      v136 = v200;
      QueryType.filter(_:)();
      v134(v124, v129);
      v131(v136, v107);
      *(swift_allocObject() + 16) = v174;
      if (qword_101695360 != -1)
      {
        swift_once();
      }

      v137 = v188;
      sub_1000076D4(v188, qword_10177C9C8);
      type metadata accessor for Date();
      v104 = v212;
      v138 = v187;
      QueryType.subscript.getter();
      sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
      ExpressionType.desc.getter();
      (*v166)(v138, v137);
      v139 = v182;
      QueryType.order(_:)();

      v140 = v197;
      v197(v135, v107);
      v141 = v209;
      QueryType.limit(_:offset:)();
      v140(v139, v107);
      v142 = v181;
      QueryType.delete()();
      v140(v141, v107);
      v143 = v205;
      v144 = Connection.run(_:)();
      v108 = v143;
      if (v143)
      {

        v146 = *v167;
        v147 = v203;
        (*v167)(v142, v203);
        (*v156)(v191, v192);
        v140(v170, v107);
        v140(v176, v107);
        return v146(v160, v147);
      }

      v145 = v144;
      (*v167)(v142, v203);
      if (__OFADD__(*v180, v145))
      {
        goto LABEL_44;
      }

      v112 = v177 + 1;
      *v180 += v145;
      v113 = v215;
      v105 = v208;
      v106 = v164;
      if (v168 == v112)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v107 = v161;
LABEL_41:

  v153 = v197;
  v197(v170, v107);
  v153(v176, v107);
  return (*(v189 + 8))(v160, v203);
}

uint64_t sub_10020DFE8(uint64_t a1)
{
  v2 = type metadata accessor for Connection.TransactionMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016944D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A5C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Decimation - starting to decimate low-value observations.", v9, 2u);
  }

  v10 = sub_100027FA4();
  if (v10)
  {
    v11 = __chkstk_darwin(v10);
    *(&v14 - 2) = a1;
    *(&v14 - 1) = v11;
    (*(v3 + 104))(v5, enum case for Connection.TransactionMode.deferred(_:), v2);
    Connection.transaction(_:block:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    return swift_willThrow();
  }
}

void (*sub_10020E240(uint64_t a1, NSObject *a2))(char *, uint64_t)
{
  v423 = type metadata accessor for Delete();
  v421 = *(v423 - 8);
  __chkstk_darwin(v423);
  v428 = &v368 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  __chkstk_darwin(v6 - 8);
  v415 = &v368 - v7;
  v464 = type metadata accessor for ObservedAdvertisement(0);
  v420 = *(v464 - 8);
  v8 = __chkstk_darwin(v464);
  v414 = &v368 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v446 = &v368 - v11;
  __chkstk_darwin(v10);
  v451 = &v368 - v12;
  v472 = type metadata accessor for Date();
  v419 = *(v472 - 8);
  v13 = __chkstk_darwin(v472);
  v436 = &v368 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v412 = &v368 - v16;
  v17 = __chkstk_darwin(v15);
  v411 = &v368 - v18;
  v19 = __chkstk_darwin(v17);
  v413 = &v368 - v20;
  v21 = __chkstk_darwin(v19);
  v422 = &v368 - v22;
  v23 = __chkstk_darwin(v21);
  v441 = &v368 - v24;
  v25 = __chkstk_darwin(v23);
  v461 = &v368 - v26;
  __chkstk_darwin(v25);
  v447 = &v368 - v27;
  v28 = sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v29 = __chkstk_darwin(v28 - 8);
  v444 = &v368 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v450 = &v368 - v31;
  v442 = type metadata accessor for JoinType();
  v418 = *(v442 - 8);
  __chkstk_darwin(v442);
  v433 = &v368 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v417 = *(v439 - 8);
  v33 = __chkstk_darwin(v439);
  v432 = &v368 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v457 = &v368 - v35;
  v462 = type metadata accessor for Row();
  v455 = *(v462 - 8);
  v36 = __chkstk_darwin(v462);
  v445 = &v368 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v463 = &v368 - v39;
  __chkstk_darwin(v38);
  v434 = &v368 - v40;
  v41 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v42 = __chkstk_darwin(v41 - 8);
  v448 = &v368 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v416 = &v368 - v45;
  __chkstk_darwin(v44);
  v429 = &v368 - v46;
  v477 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v466 = *(v477 - 8);
  __chkstk_darwin(v477);
  v452 = (&v368 - v47);
  v48 = sub_1000BC4D4(&qword_101699D70, &unk_1013930E0);
  v453 = *(v48 - 8);
  v49 = __chkstk_darwin(v48);
  v437 = &v368 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v456 = &v368 - v51;
  v470 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v476 = *(v470 - 8);
  __chkstk_darwin(v470);
  v469 = &v368 - v52;
  v473 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v475 = *(v473 - 8);
  v53 = __chkstk_darwin(v473);
  v425 = &v368 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v424 = &v368 - v56;
  v57 = __chkstk_darwin(v55);
  v430 = &v368 - v58;
  __chkstk_darwin(v57);
  v471 = &v368 - v59;
  v465 = type metadata accessor for Table();
  v467 = *(v465 - 8);
  v60 = __chkstk_darwin(v465);
  v431 = &v368 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v438 = &v368 - v63;
  v64 = __chkstk_darwin(v62);
  v66 = &v368 - v65;
  v67 = __chkstk_darwin(v64);
  v458 = &v368 - v68;
  v69 = __chkstk_darwin(v67);
  v459 = &v368 - v70;
  v71 = __chkstk_darwin(v69);
  v460 = &v368 - v72;
  __chkstk_darwin(v71);
  v468 = &v368 - v73;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v74 = qword_10177B348;
  OS_dispatch_queue.sync<A>(execute:)();
  v75 = v481;
  v76 = sub_101073C48(v481);
  v77 = sub_101073C2C(v75);

  result = sub_1002085AC(a2, a1);
  if (!v2)
  {
    v402 = v77;
    v398 = v76;
    v397 = v74;
    v409 = result;
    v474 = 0;
    v403 = v48;
    v454 = a1 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    if (qword_101695300 != -1)
    {
      swift_once();
    }

    v396 = a1;
    v426 = a2;
    v79 = v477;
    v80 = sub_1000076D4(v477, qword_10177C8A8);
    v483 = v79;
    v400 = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
    v484 = v400;
    v81 = sub_1000280DC(&v481);
    v82 = *(v466 + 16);
    v449 = v80;
    v401 = (v466 + 16);
    v399 = v82;
    (v82)(v81, v80, v79);
    v408 = sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
    v83 = swift_allocObject();
    v443 = xmmword_101385D80;
    *(v83 + 16) = xmmword_101385D80;
    v84 = v469;
    if (qword_101695330 != -1)
    {
      swift_once();
    }

    v407 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    v406 = sub_1000076D4(v407, qword_10177C938);
    *(v83 + 56) = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
    *(v83 + 64) = sub_1000041A4(&qword_101699D80, &qword_101699D60, &qword_1013B6DE0, &protocol conformance descriptor for Expression<A>);
    sub_1000280DC((v83 + 32));
    v405 = sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
    ExpressionType<>.min.getter();
    v85 = v465;
    SchemaType.select(_:_:)();

    sub_100007BAC(&v481);
    v404 = sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
    v86 = v449;
    ExpressionType<>.length.getter();
    v481 = 28;
    v87 = v471;
    == infix<A>(_:_:)();
    v440 = *(v476 + 8);
    v476 += 8;
    v440(v84, v470);
    v88 = v458;
    QueryType.filter(_:)();
    v89 = *(v475 + 8);
    v475 += 8;
    v410 = v89;
    v89(v87, v473);
    v90 = v467 + 8;
    v91 = *(v467 + 8);
    v91(v66, v85);
    v427 = v90;
    v92 = swift_allocObject();
    *(v92 + 16) = v443;
    v93 = v477;
    v94 = v400;
    *(v92 + 56) = v477;
    *(v92 + 64) = v94;
    v95 = sub_1000280DC((v92 + 32));
    (v399)(v95, v86, v93);
    v96 = v459;
    QueryType.group(_:)();

    v91(v88, v85);
    *(swift_allocObject() + 16) = v443;
    ExpressionType.asc.getter();
    v97 = v460;
    QueryType.order(_:)();
    v98 = v85;

    v435 = v91;
    v91(v96, v85);
    v99 = v477;
    QueryType.limit(_:)();
    v91(v97, v98);
    v100 = v469;
    ExpressionType<>.length.getter();
    v481 = 28;
    v101 = v471;
    == infix<A>(_:_:)();
    v102 = v470;
    v440(v100, v470);
    QueryType.filter(_:)();
    v410(v101, v473);
    v103 = v452;
    ExpressionType<>.distinct.getter();
    ExpressionType<>.count.getter();
    (*(v466 + 8))(v103, v99);
    v104 = v456;
    SchemaType.select<A>(_:)();
    v440(v100, v102);
    v105 = v435;
    v435(v97, v98);
    v106 = v474;
    Connection.scalar<A>(_:)();
    if (v106)
    {

      (*(v453 + 8))(v104, v403);
      return v105(v468, v98);
    }

    v107 = v481;
    if (qword_1016944D0 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    v466 = sub_1000076D4(v108, qword_10177A5C0);
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.info.getter();
    v111 = os_log_type_enabled(v109, v110);
    v112 = v462;
    if (v111)
    {
      v113 = swift_slowAlloc();
      *v113 = 134217984;
      *(v113 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v109, v110, "Decimation - uniqueAdvertisements count: %ld.", v113, 0xCu);
    }

    v483 = v98;
    v484 = &protocol witness table for Table;
    v114 = sub_1000280DC(&v481);
    v115 = v467 + 16;
    v116 = *(v467 + 16);
    v116(v114, v468, v98);
    Connection.prepare(_:)();
    v474 = 0;
    sub_100007BAC(&v481);
    v117 = dispatch thunk of _AnySequenceBox._makeIterator()();

    v118 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
    v119 = v429;
    v385 = v117;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v120 = v455;
    v121 = *(v455 + 48);
    v402 = v455 + 48;
    v401 = v121;
    if (v121(v119, 1, v112) == 1)
    {
LABEL_15:

      (*(v453 + 8))(v456, v403);
      return (v435)(v468, v465);
    }

    v467 = v115;
    v389 = v116;
    v384 = v396 + v118;
    v125 = *(v120 + 32);
    v124 = v120 + 32;
    v123 = v125;
    v383 = (v418 + 13);
    v388 = (v417 + 1);
    v382 = enum case for JoinType.leftOuter(_:);
    v381 = (v418 + 1);
    v418 = (v124 - 24);
    v417 = (v420 + 56);
    v399 = (v124 - 16);
    v395 = (v419 + 16);
    v394 = (v420 + 48);
    v452 = (v419 + 8);
    v371 = (v421 + 8);
    v374 = (v453 + 8);
    *&v122 = 141558275;
    v373 = v122;
    *&v122 = 134218499;
    v377 = v122;
    *&v122 = 134218755;
    v370 = v122;
    *&v122 = 141558787;
    v379 = v122;
    *&v122 = 134219011;
    v378 = v122;
    v126 = v112;
    v455 = v124;
    v400 = v125;
    while (1)
    {
      v123(v434, v119, v126);
      v127 = v474;
      Row.get<A>(_:)();
      v474 = v127;
      if (v127)
      {

        (*v418)(v434, v462);
        (*v374)(v456, v403);
        return (v435)(v468, v465);
      }

      v129 = v481;
      v128 = v482;
      sub_100017D5C(v481, v482);
      v391 = v129;
      v392 = v128;
      sub_10002EA98(6, v129, v128, &v481);
      v130 = v481;
      v131 = v482;
      v132 = Data.hexString.getter();
      v134 = v133;
      sub_100016590(v130, v131);

      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.info.getter();

      v137 = os_log_type_enabled(v135, v136);
      v421 = v134;
      v393 = v132;
      if (v137)
      {
        v138 = v132;
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v481 = v140;
        *v139 = v373;
        *(v139 + 4) = 1752392040;
        *(v139 + 12) = 2081;
        *(v139 + 14) = sub_1000136BC(v138, v134, &v481);
        _os_log_impl(&_mh_execute_header, v135, v136, "Decimation - advertisementRow decimation within advertisement: %{private,mask.hash}s.", v139, 0x16u);
        sub_100007BAC(v140);
      }

      if (qword_101695298 != -1)
      {
        swift_once();
      }

      v141 = v439;
      v142 = sub_1000076D4(v439, qword_10177C770);
      v143 = v465;
      QueryType.subscript.getter();
      v144 = v433;
      v420 = *v383;
      (v420)(v433, v382, v442);
      v483 = v143;
      v484 = &protocol witness table for Table;
      v145 = sub_1000280DC(&v481);
      v389(v145, v384, v143);
      v146 = v432;
      v386 = v142;
      QueryType.subscript.getter();
      v147 = v471;
      == infix<A>(_:_:)();
      v387 = *v388;
      v387(v146, v141);
      v148 = v459;
      QueryType.join(_:_:on:)();
      v149 = v473;
      v410(v147, v473);
      v419 = *v381;
      (v419)(v144, v442);
      sub_100007BAC(&v481);
      v481 = v391;
      v482 = v392;
      v150 = sub_1000291EC(&qword_101699DC8, &type metadata accessor for Blob, &protocol conformance descriptor for Blob);
      == infix<A>(_:_:)();
      v151 = v460;
      QueryType.filter(_:)();
      v410(v147, v149);
      v152 = v435;
      v435(v148, v143);
      *(swift_allocObject() + 16) = v443;
      ExpressionType.desc.getter();
      QueryType.order(_:)();

      v152(v151, v143);
      v481 = v391;
      v482 = v392;
      v390 = v150;
      == infix<A>(_:_:)();
      QueryType.filter(_:)();
      v410(v147, v473);
      v153 = v469;
      ExpressionType<>.count.getter();
      SchemaType.select<A>(_:)();
      v440(v153, v470);
      v435(v151, v143);
      v154 = v474;
      Connection.scalar<A>(_:)();
      v474 = v154;
      if (v154)
      {

        sub_100016590(v391, v392);
        v360 = *v374;
        v361 = v403;
        (*v374)(v437, v403);
        v362 = v465;
        v363 = v435;
        v435(v438, v465);
        v387(v457, v439);
        (*v418)(v434, v462);
        v360(v456, v361);
        return v363(v468, v362);
      }

      v155 = v481;
      v156 = v421;

      v157 = Logger.logObject.getter();
      v158 = static os_log_type_t.info.getter();

      v159 = os_log_type_enabled(v157, v158);
      v380 = v155;
      if (v159)
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v481 = v161;
        *v160 = v377;
        *(v160 + 4) = v155;
        *(v160 + 12) = 2160;
        *(v160 + 14) = 1752392040;
        *(v160 + 22) = 2081;
        *(v160 + 24) = sub_1000136BC(v393, v156, &v481);
        _os_log_impl(&_mh_execute_header, v157, v158, "Decimation - byAdvertisement start count: %ld within advertisement: %{private,mask.hash}s.", v160, 0x20u);
        sub_100007BAC(v161);
      }

      v162 = v389;
      v163 = v433;
      (v420)(v433, v382, v442);
      v164 = v465;
      v483 = v465;
      v484 = &protocol witness table for Table;
      v165 = sub_1000280DC(&v481);
      v162(v165, v384, v164);
      v166 = v432;
      QueryType.subscript.getter();
      v167 = v471;
      == infix<A>(_:_:)();
      v387(v166, v439);
      QueryType.join(_:_:on:)();
      v168 = v473;
      v169 = v410;
      v410(v167, v473);
      (v419)(v163, v442);
      sub_100007BAC(&v481);
      v481 = v391;
      v482 = v392;
      == infix<A>(_:_:)();
      v481 = v409;
      v170 = sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
      v171 = sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0, &protocol conformance descriptor for Set<A>);
      v172 = v425;
      v376 = v170;
      v375 = v171;
      Collection<>.contains(_:)();
      LOBYTE(v481) = 0;
      v173 = v424;
      == infix<A>(_:_:)();
      v169(v172, v168);
      v174 = v430;
      && infix(_:_:)();
      v169(v173, v168);
      v169(v174, v168);
      v175 = v459;
      v176 = v458;
      QueryType.filter(_:)();
      v169(v167, v168);
      v177 = v435;
      v435(v176, v164);
      *(swift_allocObject() + 16) = v443;
      if (qword_101695358 != -1)
      {
        swift_once();
      }

      v178 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
      sub_1000076D4(v178, qword_10177C9B0);
      sub_1000041A4(&qword_101699EA0, &qword_101699E00, &qword_101393128, &protocol conformance descriptor for Expression<A>);
      ExpressionType.desc.getter();
      v179 = v460;
      QueryType.order(_:)();

      v177(v175, v164);
      v180 = v431;
      QueryType.limit(_:offset:)();
      v177(v179, v164);
      v483 = v164;
      v484 = &protocol witness table for Table;
      v181 = sub_1000280DC(&v481);
      v389(v181, v180, v164);
      v182 = v474;
      Connection.prepare(_:)();
      if (v182)
      {
        break;
      }

      sub_100007BAC(&v481);
      dispatch thunk of _AnySequenceBox._makeIterator()();

      v185 = v416;
      dispatch thunk of _AnyIteratorBoxBase.next()();

      v186 = v401(v185, 1, v462);
      v183 = v400;
      v184 = v421;
      if (v186 == 1)
      {
        sub_10000B3A8(v185, &qword_101699D68, &unk_1013B6450);
        goto LABEL_33;
      }

      Row.get<A>(_:)();
      (*v418)(v185, v462);
      v191 = *&v480;

      v350 = Logger.logObject.getter();
      v351 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v350, v351))
      {
        v352 = swift_slowAlloc();
        v353 = swift_slowAlloc();
        v481 = v353;
        *v352 = v377;
        *(v352 + 4) = v191;
        *(v352 + 12) = 2160;
        *(v352 + 14) = 1752392040;
        *(v352 + 22) = 2081;
        *(v352 + 24) = sub_1000136BC(v393, v184, &v481);
        _os_log_impl(&_mh_execute_header, v350, v351, "Decimation - found - lowerHalfMedianAccuracy: %f,\nwithin advertisement: %{private,mask.hash}s.", v352, 0x20u);
        sub_100007BAC(v353);
      }

LABEL_36:
      v192 = v450;
      v193 = v451;
      v194 = v448;
      v479 = &_swiftEmptySetSingleton;
      v480 = &_swiftEmptySetSingleton;
      v419 = *v417;
      (v419)(v450, 1, 1, v464);
      static Date.distantPast.getter();
      v195 = v465;
      v483 = v465;
      v484 = &protocol witness table for Table;
      v196 = sub_1000280DC(&v481);
      v389(v196, v438, v195);
      Connection.prepare(_:)();
      v474 = 0;
      sub_100007BAC(&v481);
      v197 = dispatch thunk of _AnySequenceBox._makeIterator()();

      swift_beginAccess();
      v420 = v197;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v198 = v462;
      if (v401(v194, 1, v462) != 1)
      {
        v230 = v441;
        do
        {
          v237 = v463;
          v183(v463, v194, v198);
          v238 = v198;
          v239 = v445;
          (*v399)(v445, v237, v238);
          Row.subscript.getter();
          v240 = v474;
          sub_1002132AC(v239, v481, v193);
          if (v240)
          {
            v474 = v240;

            sub_100016590(v391, v392);
            v354 = *v418;
            v355 = v462;
            (*v418)(v237, v462);
            (*v452)(v447, v472);
            sub_10000B3A8(v192, &unk_10169BB50, &unk_101395760);
            v356 = v465;
            v357 = v435;
            v435(v431, v465);
            v358 = *v374;
            v359 = v403;
            (*v374)(v437, v403);
            v357(v438, v356);
            v387(v457, v439);
            v354(v434, v355);
            v358(v456, v359);
            v357(v468, v356);
          }

          Row.get<A>(_:)();
          v474 = 0;
          v241 = v481;
          v242 = v464;
          v243 = *v395;
          v244 = v193 + *(v464 + 44);
          v245 = v461;
          v246 = v472;
          (*v395)(v461, v244, v472);
          v247 = v444;
          sub_1000D2A70(v192, v444, &unk_10169BB50, &unk_101395760);
          if ((*v394)(v247, 1, v242) == 1)
          {
            sub_10000B3A8(v247, &unk_10169BB50, &unk_101395760);
            swift_beginAccess();
            sub_100DEB5CC(&v478, v241);
            swift_endAccess();
            v248 = v447;
            v390 = *v452;
            v390(v447, v246);
            v243(v248, v245, v246);
            v249 = v436;
            v243(v436, v245, v246);
            v250 = v421;

            v251 = Logger.logObject.getter();
            v252 = static os_log_type_t.info.getter();

            if (!os_log_type_enabled(v251, v252))
            {

              v253 = v390;
              v390(v249, v246);
              v253(v461, v246);
              v198 = v462;
              (*v418)(v463, v462);
              v192 = v450;
              v254 = v450;
              goto LABEL_78;
            }

            v231 = swift_slowAlloc();
            v481 = swift_slowAlloc();
            *v231 = v379;
            *(v231 + 4) = 1752392040;
            *(v231 + 12) = 2081;
            *(v231 + 14) = sub_1000136BC(v393, v250, &v481);
            *(v231 + 22) = 2080;
            sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            v232 = dispatch thunk of CustomStringConvertible.description.getter();
            v234 = v233;
            v235 = v390;
            v390(v249, v472);
            v236 = sub_1000136BC(v232, v234, &v481);

            *(v231 + 24) = v236;
            *(v231 + 32) = 2048;
            *(v231 + 34) = v241;
            _os_log_impl(&_mh_execute_header, v251, v252, "Decimation - preserveByKey (latest for advertisement): %{private,mask.hash}s,\npreserving scanDate: %s, advId: %lld.", v231, 0x2Au);
            swift_arrayDestroy();
            v183 = v400;

            v235(v461, v472);
          }

          else
          {
            sub_1000345B4(v247, v446, type metadata accessor for ObservedAdvertisement);
            v255 = v398;
            if (*(v479 + 2) >= v398)
            {
              swift_beginAccess();
              sub_100DEB5CC(&v478, v241);
              swift_endAccess();
              v281 = v472;
              v243(v230, v245, v472);
              v282 = v421;

              v283 = v245;
              v284 = Logger.logObject.getter();
              v285 = static os_log_type_t.info.getter();

              if (!os_log_type_enabled(v284, v285))
              {

                v297 = *v452;
                (*v452)(v230, v281);
                sub_100034434(v446, type metadata accessor for ObservedAdvertisement);
                v297(v283, v281);
                v198 = v462;
                (*v418)(v463, v462);
                v192 = v450;
                sub_10000B3A8(v450, &unk_10169BB50, &unk_101395760);
                v194 = v448;
                v183 = v400;
                goto LABEL_48;
              }

              v286 = swift_slowAlloc();
              v481 = swift_slowAlloc();
              *v286 = v378;
              *(v286 + 4) = v255;
              *(v286 + 12) = 2048;
              *(v286 + 14) = v241;
              *(v286 + 22) = 2080;
              sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v287 = dispatch thunk of CustomStringConvertible.description.getter();
              v289 = v288;
              v290 = *v452;
              (*v452)(v230, v472);
              v291 = sub_1000136BC(v287, v289, &v481);

              *(v286 + 24) = v291;
              *(v286 + 32) = 2160;
              *(v286 + 34) = 1752392040;
              *(v286 + 42) = 2081;
              *(v286 + 44) = sub_1000136BC(v393, v282, &v481);
              _os_log_impl(&_mh_execute_header, v284, v285, "Decimation - remove all above limit - >= maxPayloads %ld currentId: %lld,\nscan date: %s,\nwithin advertisement: %{private,mask.hash}s.", v286, 0x34u);
              swift_arrayDestroy();
              v183 = v400;

              sub_100034434(v446, type metadata accessor for ObservedAdvertisement);
              v290(v461, v472);
              goto LABEL_59;
            }

            v256 = v447;
            Date.timeIntervalSince(_:)();
            v258 = fabs(v257);
            v259 = v474;
            OS_dispatch_queue.sync<A>(execute:)();
            v474 = v259;
            v260 = v481;
            v261 = sub_101073524(v481);
            v262 = v245;
            v263 = sub_101073C48(v260);

            if (v261 * 60.0 / v263 >= v258)
            {
              v292 = v451;
              v293 = sub_10001993C(*(v451 + 32) & 0xB);
              if (v293 != sub_10001993C(*(v446 + 32) & 0xB))
              {
                swift_beginAccess();
                v390 = v241;
                sub_100DEB5CC(&v478, v241);
                swift_endAccess();
                v299 = v472;
                v372 = *v452;
                v372(v256, v472);
                v300 = v461;
                v243(v256, v461, v299);
                v301 = v413;
                v243(v413, v300, v299);
                v302 = v414;
                sub_10001BA68(v292, v414, type metadata accessor for ObservedAdvertisement);
                v303 = v421;

                v304 = Logger.logObject.getter();
                v305 = static os_log_type_t.info.getter();

                if (!os_log_type_enabled(v304, v305))
                {

                  sub_100034434(v302, type metadata accessor for ObservedAdvertisement);
                  v334 = v372;
                  v372(v301, v299);
                  sub_100034434(v446, type metadata accessor for ObservedAdvertisement);
                  v334(v461, v299);
                  v198 = v462;
                  (*v418)(v463, v462);
                  v192 = v450;
                  sub_10000B3A8(v450, &unk_10169BB50, &unk_101395760);
                  goto LABEL_79;
                }

                v306 = v302;
                v307 = swift_slowAlloc();
                v369 = swift_slowAlloc();
                v481 = v369;
                *v307 = v378;
                *(v307 + 4) = v390;
                *(v307 + 12) = 2080;
                sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v308 = dispatch thunk of CustomStringConvertible.description.getter();
                LODWORD(v390) = v305;
                v309 = v308;
                v311 = v310;
                v312 = v301;
                v313 = v372;
                v372(v312, v472);
                v314 = sub_1000136BC(v309, v311, &v481);

                *(v307 + 14) = v314;
                *(v307 + 22) = 2080;
                v315 = sub_10001993C(*(v306 + 32) & 0xB);
                v316 = sub_100019E48(v315 & 0x10101FF);
                v318 = v317;
                v319 = v306;
                v183 = v400;
                sub_100034434(v319, type metadata accessor for ObservedAdvertisement);
                v320 = sub_1000136BC(v316, v318, &v481);

                *(v307 + 24) = v320;
                *(v307 + 32) = 2160;
                *(v307 + 34) = 1752392040;
                *(v307 + 42) = 2081;
                *(v307 + 44) = sub_1000136BC(v393, v303, &v481);
                _os_log_impl(&_mh_execute_header, v304, v390, "Decimation - keep - multipart changed currentId: %lld,\nscan date: %s, multipart: %s,\nwithin advertisement: %{private,mask.hash}s.", v307, 0x34u);
                swift_arrayDestroy();

                sub_100034434(v446, type metadata accessor for ObservedAdvertisement);
                v313(v461, v472);
LABEL_59:
                v198 = v462;
                (*v418)(v463, v462);
                v192 = v450;
                sub_10000B3A8(v450, &unk_10169BB50, &unk_101395760);
                goto LABEL_47;
              }

              v294 = v415;
              sub_1000D2A70(v292 + *(v464 + 48), v415, &qword_1016AA430, &unk_101392650);
              v295 = type metadata accessor for ObservedAdvertisement.Location(0);
              if ((*(*(v295 - 8) + 48))(v294, 1, v295) == 1)
              {
                sub_10000B3A8(v294, &qword_1016AA430, &unk_101392650);
                v296 = 1.79769313e308;
              }

              else
              {
                v296 = *(v294 + 16);
                sub_100034434(v294, type metadata accessor for ObservedAdvertisement.Location);
              }

              v321 = v412;
              v322 = v411;
              v323 = v472;
              v324 = v241;
              if (v296 <= v191)
              {
                swift_beginAccess();
                sub_100DEB5CC(&v478, v241);
                swift_endAccess();
                v335 = v461;
                v243(v322, v461, v323);
                v336 = v421;

                v337 = Logger.logObject.getter();
                v338 = static os_log_type_t.info.getter();

                if (!os_log_type_enabled(v337, v338))
                {

                  v345 = *v452;
                  (*v452)(v322, v323);
                  sub_100034434(v446, type metadata accessor for ObservedAdvertisement);
                  v345(v335, v323);
LABEL_77:
                  v198 = v462;
                  (*v418)(v463, v462);
                  v192 = v450;
                  v254 = v450;
LABEL_78:
                  sub_10000B3A8(v254, &unk_10169BB50, &unk_101395760);
                  v230 = v441;
LABEL_79:
                  v194 = v448;
                  v183 = v400;
                  goto LABEL_48;
                }

                v339 = swift_slowAlloc();
                v481 = swift_slowAlloc();
                *v339 = v378;
                *(v339 + 4) = v324;
                *(v339 + 12) = 2080;
                sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v340 = dispatch thunk of CustomStringConvertible.description.getter();
                v342 = v341;
                v332 = *v452;
                (*v452)(v322, v472);
                v343 = sub_1000136BC(v340, v342, &v481);

                *(v339 + 14) = v343;
                *(v339 + 22) = 2048;
                *(v339 + 24) = v296;
                *(v339 + 32) = 2160;
                *(v339 + 34) = 1752392040;
                *(v339 + 42) = 2081;
                *(v339 + 44) = sub_1000136BC(v393, v336, &v481);
                _os_log_impl(&_mh_execute_header, v337, v338, "Decimation - keep - better or equal median accuracy currentId: %lld,\nscan date: %s, accuracy: %f,\nwithin advertisement: %{private,mask.hash}s.", v339, 0x34u);
                swift_arrayDestroy();
                v183 = v400;
              }

              else
              {
                swift_beginAccess();
                sub_100DEB5CC(&v478, v241);
                swift_endAccess();
                v243(v321, v461, v323);
                v325 = v421;

                v326 = Logger.logObject.getter();
                v327 = static os_log_type_t.info.getter();

                if (!os_log_type_enabled(v326, v327))
                {

                  v344 = *v452;
                  (*v452)(v321, v323);
                  sub_100034434(v446, type metadata accessor for ObservedAdvertisement);
                  v344(v461, v323);
                  goto LABEL_77;
                }

                v328 = swift_slowAlloc();
                v481 = swift_slowAlloc();
                *v328 = v378;
                *(v328 + 4) = v324;
                *(v328 + 12) = 2080;
                sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v329 = dispatch thunk of CustomStringConvertible.description.getter();
                v331 = v330;
                v332 = *v452;
                (*v452)(v321, v472);
                v333 = sub_1000136BC(v329, v331, &v481);

                *(v328 + 14) = v333;
                *(v328 + 22) = 2048;
                *(v328 + 24) = v296;
                *(v328 + 32) = 2160;
                *(v328 + 34) = 1752392040;
                *(v328 + 42) = 2081;
                *(v328 + 44) = sub_1000136BC(v393, v325, &v481);
                _os_log_impl(&_mh_execute_header, v326, v327, "Decimation - remove - worse than median accuracy currentId: %lld,\nscan date: %s, accuracy: %f,\nwithin advertisement: %{private,mask.hash}s.", v328, 0x34u);
                swift_arrayDestroy();
                v183 = v400;
              }

              sub_100034434(v446, type metadata accessor for ObservedAdvertisement);
              v332(v461, v472);
            }

            else
            {
              swift_beginAccess();
              v390 = v241;
              sub_100DEB5CC(&v478, v241);
              swift_endAccess();
              v264 = v472;
              v372 = *v452;
              v372(v256, v472);
              v243(v256, v262, v264);
              v265 = v422;
              v243(v422, v262, v264);
              v266 = v421;

              v267 = Logger.logObject.getter();
              v268 = static os_log_type_t.info.getter();

              v269 = v268;
              if (!os_log_type_enabled(v267, v268))
              {

                v298 = v372;
                v372(v265, v264);
                sub_100034434(v446, type metadata accessor for ObservedAdvertisement);
                v298(v461, v264);
                goto LABEL_77;
              }

              v270 = swift_slowAlloc();
              v481 = swift_slowAlloc();
              *v270 = v378;
              v271 = v474;
              OS_dispatch_queue.sync<A>(execute:)();
              v474 = v271;
              v272 = v478;
              v273 = sub_101073524(v478);
              v274 = sub_101073C48(v272);

              *(v270 + 4) = v273 * 60.0 / v274;
              *(v270 + 12) = 2048;
              *(v270 + 14) = v390;
              *(v270 + 22) = 2080;
              sub_1000291EC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v275 = dispatch thunk of CustomStringConvertible.description.getter();
              v277 = v276;
              v278 = v265;
              v279 = v372;
              v372(v278, v472);
              v280 = sub_1000136BC(v275, v277, &v481);

              *(v270 + 24) = v280;
              *(v270 + 32) = 2160;
              *(v270 + 34) = 1752392040;
              *(v270 + 42) = 2081;
              *(v270 + 44) = sub_1000136BC(v393, v266, &v481);
              _os_log_impl(&_mh_execute_header, v267, v269, "Decimation - keep - > locationTimeResolution %f currentId: %lld,\nscan date: %s,\nwithin advertisement: %{private,mask.hash}s.", v270, 0x34u);
              swift_arrayDestroy();
              v183 = v400;

              sub_100034434(v446, type metadata accessor for ObservedAdvertisement);
              v279(v461, v472);
            }
          }

          v198 = v462;
          (*v418)(v463, v462);
          v192 = v450;
          sub_10000B3A8(v450, &unk_10169BB50, &unk_101395760);
          v230 = v441;
LABEL_47:
          v194 = v448;
LABEL_48:
          v193 = v451;
          sub_1000345B4(v451, v192, type metadata accessor for ObservedAdvertisement);
          (v419)(v192, 0, 1, v464);
          dispatch thunk of _AnyIteratorBoxBase.next()();
        }

        while (v401(v194, 1, v198) != 1);
      }

      v199 = v479;

      v409 = sub_10039D990(v200, v409);
      v201 = v421;

      v202 = Logger.logObject.getter();
      v203 = static os_log_type_t.default.getter();

      v204 = os_log_type_enabled(v202, v203);
      v419 = v199;
      if (v204)
      {
        v205 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        v481 = v206;
        *v205 = v377;
        *(v205 + 4) = *(v199 + 2);
        *(v205 + 12) = 2160;
        *(v205 + 14) = 1752392040;
        *(v205 + 22) = 2081;
        *(v205 + 24) = sub_1000136BC(v393, v201, &v481);
        _os_log_impl(&_mh_execute_header, v202, v203, "Decimation - byAdvertisement preserving count: %ld,\nwithin advertisement: %{private,mask.hash}s.", v205, 0x20u);
        sub_100007BAC(v206);
        v192 = v450;
      }

      v207 = v473;
      swift_beginAccess();
      v208 = v480;
      v481 = v480;

      v209 = v471;
      Collection<>.contains(_:)();
      v420 = v208;

      v210 = v460;
      v211 = v465;
      QueryType.filter(_:)();
      v410(v209, v207);
      QueryType.delete()();
      v435(v210, v211);
      v212 = v474;
      Connection.run(_:)();
      if (v212)
      {

        sub_100016590(v391, v392);
        (*v371)(v428, v423);
        (*v452)(v447, v472);
        sub_10000B3A8(v192, &unk_10169BB50, &unk_101395760);
        v364 = v465;
        v365 = v435;
        v435(v431, v465);
        v366 = *v374;
        v367 = v403;
        (*v374)(v437, v403);
        v365(v438, v364);
        v387(v457, v439);
        (*v418)(v434, v462);
        v366(v456, v367);
        v365(v468, v364);
      }

      v213 = v421;

      v214 = Logger.logObject.getter();
      v215 = static os_log_type_t.default.getter();

      v216 = os_log_type_enabled(v214, v215);
      v217 = v472;
      if (v216)
      {
        v218 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        v481 = v219;
        *v218 = v377;
        *(v218 + 4) = *(v420 + 16);
        *(v218 + 12) = 2160;
        *(v218 + 14) = 1752392040;
        *(v218 + 22) = 2081;
        *(v218 + 24) = sub_1000136BC(v393, v213, &v481);
        _os_log_impl(&_mh_execute_header, v214, v215, "Decimation - remove - decimate count: %ld,\nwithin advertisement: %{private,mask.hash}s.", v218, 0x20u);
        sub_100007BAC(v219);
        v217 = v472;

        v192 = v450;
      }

      Connection.scalar<A>(_:)();
      v474 = 0;
      v220 = v213;
      v221 = v481;

      v222 = Logger.logObject.getter();
      v223 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v222, v223))
      {
        v224 = v221 / v380 * 100.0;
        v225 = v192;
        v226 = swift_slowAlloc();
        v227 = swift_slowAlloc();
        v481 = v227;
        *v226 = v370;
        *(v226 + 4) = v221;
        *(v226 + 12) = 2160;
        *(v226 + 14) = 1752392040;
        *(v226 + 22) = 2081;
        v228 = sub_1000136BC(v393, v220, &v481);

        *(v226 + 24) = v228;
        *(v226 + 32) = 2048;
        *(v226 + 34) = v224;
        _os_log_impl(&_mh_execute_header, v222, v223, "Decimation - byAdvertisement end count: %ld\nwithin advertisement: %{private,mask.hash}s kept %f%%.", v226, 0x2Au);
        sub_100007BAC(v227);

        sub_100016590(v391, v392);
        (*v371)(v428, v423);
        (*v452)(v447, v472);
        v229 = v225;
      }

      else
      {

        sub_100016590(v391, v392);
        (*v371)(v428, v423);
        (*v452)(v447, v217);
        v229 = v192;
      }

      sub_10000B3A8(v229, &unk_10169BB50, &unk_101395760);
      v346 = v465;
      v347 = v435;
      v435(v431, v465);
      (*v374)(v437, v403);
      v347(v438, v346);
      v387(v457, v439);
      v348 = v462;
      (*v418)(v434, v462);

      v119 = v429;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v349 = v401(v119, 1, v348);
      v123 = v400;
      v126 = v348;
      if (v349 == 1)
      {
        goto LABEL_15;
      }
    }

    sub_100007BAC(&v481);
    v183 = v400;
    v184 = v421;
LABEL_33:

    v187 = Logger.logObject.getter();
    v188 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v481 = v190;
      *v189 = v373;
      *(v189 + 4) = 1752392040;
      *(v189 + 12) = 2081;
      *(v189 + 14) = sub_1000136BC(v393, v184, &v481);
      _os_log_impl(&_mh_execute_header, v187, v188, "Decimation - not found - lowerHalfMedianAccuracy: decimating all lower or equal,\nwithin advertisement: %{private,mask.hash}s.", v189, 0x16u);
      sub_100007BAC(v190);
    }

    v191 = 0.0;
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1002132AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v68 = a3;
  Error = type metadata accessor for QueryError();
  v6 = *(Error - 8);
  v7 = __chkstk_darwin(Error);
  v70 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v63 - v9;
  v72 = type metadata accessor for UUID();
  v67 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Date();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  __chkstk_darwin(v14 - 8);
  v69 = &v63 - v15;
  v16 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - v17;
  if (qword_101695348 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
  sub_1000076D4(v19, qword_10177C980);
  Row.get<A>(_:)();
  if (!v3)
  {
    v20 = v73;
    if (qword_101695350 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v19, qword_10177C998);
    Row.get<A>(_:)();
    v21 = v73;
    if (qword_101695358 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v19, qword_10177C9B0);
    Row.get<A>(_:)();
    v42 = v73;
    v22 = v18;
    if (qword_101695360 != -1)
    {
      swift_once();
    }

    v43 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v43, qword_10177C9C8);
    v44 = v66;
    Row.get<A>(_:)();
    v57 = type metadata accessor for ObservedAdvertisement.Location(0);
    (*(v64 + 32))(v22 + *(v57 + 28), v13, v44);
    *v22 = v20;
    v22[1] = v21;
    v22[2] = v42;
    (*(*(v57 - 8) + 56))(v22, 0, 1, v57);
    goto LABEL_13;
  }

  v22 = v18;
  v73 = v3;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (!swift_dynamicCast())
  {
LABEL_29:

    swift_willThrow();
    v36 = type metadata accessor for Row();
    return (*(*(v36 - 8) + 8))(a1, v36);
  }

  v23 = (*(v6 + 88))(v10, Error);
  if (v23 != enum case for QueryError.noSuchColumn(_:) && v23 != enum case for QueryError.unexpectedNullValue(_:))
  {
    (*(v6 + 8))(v10, Error);
    goto LABEL_29;
  }

  (*(v6 + 8))(v10, Error);
  v24 = type metadata accessor for ObservedAdvertisement.Location(0);
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);

LABEL_13:
  v26 = v71;
  v25 = v72;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v27, qword_10177C788);
  Row.get<A>(_:)();
  v28 = 0;
  if (qword_1016952B0 != -1)
  {
    swift_once();
  }

  v29 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v29, qword_10177C7B8);
  sub_100028088();
  Row.get<A>(_:)();
  v41 = v70;
  if (v73 == 1)
  {
    LOBYTE(v25) = 1;
  }

  else
  {
    if (v73)
    {
      sub_10022A480();
      v28 = swift_allocError();
      *v59 = 0;
      swift_willThrow();
      (*(v67 + 8))(v26, v25);
      goto LABEL_18;
    }

    LOBYTE(v25) = 0;
  }

  if (qword_1016952A8 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v58 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v58, qword_10177C7A0);
    sub_100029580();
    Row.get<A>(_:)();
    if (v28)
    {
      (*(v67 + 8))(v71, v72);
      v41 = v70;
LABEL_18:
      v73 = v28;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      if (!swift_dynamicCast())
      {
        goto LABEL_41;
      }

      v30 = (*(v6 + 88))(v41, Error);
      if (v30 != enum case for QueryError.noSuchColumn(_:) && v30 != enum case for QueryError.unexpectedNullValue(_:))
      {
        (*(v6 + 8))(v41, Error);
LABEL_41:

        swift_willThrow();
        v45 = type metadata accessor for Row();
        (*(*(v45 - 8) + 8))(a1, v45);
        return sub_10000B3A8(v22, &qword_1016AA430, &unk_101392650);
      }

      (*(v6 + 8))(v41, Error);
      v31 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
      (*(*(v31 - 8) + 56))(v69, 1, 1, v31);
    }

    else
    {
      v60 = v73;
      v61 = v69;
      (*(v67 + 32))(v69, v71, v72);
      v62 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
      v61[*(v62 + 20)] = v25;
      *&v61[*(v62 + 24)] = v60;
      (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
    }

    Error = v68;
    if (qword_101695300 != -1)
    {
      swift_once();
    }

    v32 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v32, qword_10177C8A8);
    Row.subscript.getter();
    v6 = v73;
    v33 = v74;
    v34 = v74 >> 62;
    if ((v74 >> 62) <= 1)
    {
      break;
    }

    if (v34 != 2)
    {
      goto LABEL_46;
    }

    v39 = *(v73 + 16);
    v38 = *(v73 + 24);
    v40 = __OFSUB__(v38, v39);
    v35 = v38 - v39;
    if (!v40)
    {
      if (v35 == 28)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  if (!v34)
  {
    v35 = BYTE6(v74);
    if (BYTE6(v74) == 28)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  LODWORD(v35) = HIDWORD(v73) - v73;
  if (__OFSUB__(HIDWORD(v73), v73))
  {
    goto LABEL_70;
  }

  v35 = v35;
  if (v35 == 28)
  {
    goto LABEL_46;
  }

LABEL_44:
  if (v35 == 6)
  {
    sub_100017D5C(v73, v74);
    sub_1000176B4(v6, v33, &v73);
    v46 = v73;
    v47 = v74 | 0x2000000000000000;
    goto LABEL_47;
  }

LABEL_46:
  sub_100017D5C(v73, v74);
  sub_100018000(v6, v33, &v73);
  v46 = v73;
  v47 = v74;
LABEL_47:
  *Error = v65;
  *(Error + 8) = 0;
  *(Error + 16) = v46;
  *(Error + 24) = v47;
  if (qword_1016952C8 != -1)
  {
    swift_once();
  }

  v48 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v48, qword_10177C800);
  sub_100028088();
  Row.subscript.getter();
  result = sub_1000BB2CC(v73);
  if (result == 4)
  {
    __break(1u);
  }

  else
  {
    *(Error + 9) = result;
    v49 = v69;
    if (qword_101695308 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v48, qword_10177C8C0);
    Row.subscript.getter();
    *(Error + 32) = v73;
    if (qword_101695318 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v48, qword_10177C8F0);
    Row.subscript.getter();
    *(Error + 33) = v73;
    if (qword_101695320 != -1)
    {
      swift_once();
    }

    v50 = sub_1000BC4D4(&qword_101699DD0, &qword_101393110);
    sub_1000076D4(v50, qword_10177C908);
    Row.subscript.getter();
    v51 = BYTE1(v73);
    *(Error + 34) = v73;
    *(Error + 35) = v51;
    if (qword_101695328 != -1)
    {
      swift_once();
    }

    v52 = sub_1000BC4D4(&qword_101699DD8, &qword_101393118);
    sub_1000076D4(v52, qword_10177C920);
    sub_100027F50();
    Row.subscript.getter();
    *(Error + 36) = v73;
    if (qword_101695330 != -1)
    {
      swift_once();
    }

    v53 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
    sub_1000076D4(v53, qword_10177C938);
    v54 = type metadata accessor for ObservedAdvertisement(0);
    Row.subscript.getter();
    sub_1000D2A70(v22, Error + v54[12], &qword_1016AA430, &unk_101392650);
    sub_1000D2A70(v49, Error + v54[13], &qword_101699DB0, &unk_101393100);
    if (qword_101695340 != -1)
    {
      swift_once();
    }

    v55 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
    sub_1000076D4(v55, qword_10177C968);
    Row.subscript.getter();
    sub_100016590(v6, v33);
    v56 = type metadata accessor for Row();
    (*(*(v56 - 8) + 8))(a1, v56);
    sub_10000B3A8(v49, &qword_101699DB0, &unk_101393100);
    result = sub_10000B3A8(v22, &qword_1016AA430, &unk_101392650);
    *(Error + v54[14]) = v73;
  }

  return result;
}

uint64_t sub_100214264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v102 = a3;
  v104 = a2;
  v93 = a1;
  v118 = type metadata accessor for BeaconIdentifier(0);
  v85 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for UUID();
  v122 = *(v86 - 8);
  __chkstk_darwin(v86);
  v87 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v116 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v105 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v84 - v10;
  v11 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v113 = *(v11 - 8);
  v114 = v11;
  v12 = __chkstk_darwin(v11);
  v95 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v94 = &v84 - v15;
  v16 = __chkstk_darwin(v14);
  v96 = &v84 - v17;
  v18 = __chkstk_darwin(v16);
  v97 = &v84 - v19;
  __chkstk_darwin(v18);
  v108 = &v84 - v20;
  v21 = type metadata accessor for Table();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v112 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v107 = &v84 - v26;
  v27 = __chkstk_darwin(v25);
  v98 = &v84 - v28;
  v29 = __chkstk_darwin(v27);
  v99 = &v84 - v30;
  v31 = __chkstk_darwin(v29);
  v100 = &v84 - v32;
  v33 = __chkstk_darwin(v31);
  v101 = &v84 - v34;
  v35 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v36 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v120 = v33;
  v121 = &protocol witness table for Table;
  v37 = sub_1000280DC(&v119);
  v115 = v22;
  v109 = *(v22 + 16);
  v110 = v22 + 16;
  v109(v37, a4 + v36, v21);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v38 = sub_1000076D4(v7, qword_10177C770);
  v88 = v35;
  v111 = a4;
  v39 = v92;
  v89 = v38;
  QueryType.subscript.getter();
  v40 = v105;
  QueryType.subscript.getter();
  v41 = v108;
  == infix<A>(_:_:)();
  v42 = *(v116 + 8);
  v116 += 8;
  v90 = v42;
  v91 = v7;
  v42(v40, v7);
  v42(v39, v7);
  v43 = v111;
  QueryType.join(_:on:)();
  v44 = v113 + 8;
  v106 = *(v113 + 8);
  v106(v41, v114);
  sub_100007BAC(&v119);
  v45 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
  v120 = v21;
  v121 = &protocol witness table for Table;
  v46 = sub_1000280DC(&v119);
  v109(v46, v43 + v45, v21);
  QueryType.subscript.getter();
  v47 = v105;
  QueryType.subscript.getter();
  == infix<A>(_:_:)();
  v48 = v47;
  v49 = v91;
  v50 = v90;
  v90(v48, v91);
  v50(v39, v49);
  v51 = v112;
  QueryType.join(_:on:)();
  v113 = v44;
  v106(v41, v114);
  v52 = *(v115 + 8);
  v115 += 8;
  v112 = v52;
  (v52)(v51, v21);
  sub_100007BAC(&v119);
  v53 = v93;
  v54 = *(v93 + 16);
  v55 = _swiftEmptyArrayStorage;
  v103 = v21;
  if (v54)
  {
    v119 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v54, 0);
    v55 = v119;
    v56 = v53 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v116 = *(v85 + 72);
    v57 = (v122 + 16);
    v58 = v86;
    v59 = v87;
    do
    {
      v60 = v117;
      sub_10001BA68(v56, v117, type metadata accessor for BeaconIdentifier);
      (*v57)(v59, v60 + *(v118 + 20), v58);
      sub_100034434(v60, type metadata accessor for BeaconIdentifier);
      v119 = v55;
      v62 = v55[2];
      v61 = v55[3];
      if (v62 >= v61 >> 1)
      {
        sub_101123D4C((v61 > 1), v62 + 1, 1);
        v55 = v119;
      }

      v55[2] = v62 + 1;
      (*(v122 + 32))(v55 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v62, v59, v58);
      v56 += v116;
      --v54;
    }

    while (v54);
  }

  v63 = sub_10000954C(v55);

  v119 = v63;
  v64 = v114;
  v65 = v96;
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v66 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v66, qword_10177C788);
  sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  sub_1000041A4(&qword_101699E08, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
  Collection<>.contains(_:)();

  if (qword_1016952C8 != -1)
  {
    swift_once();
  }

  v67 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v67, qword_10177C800);
  LOBYTE(v119) = 1;
  sub_100028088();
  v68 = v94;
  == infix<A>(_:_:)();
  LOBYTE(v119) = 2;
  v69 = v95;
  == infix<A>(_:_:)();
  v70 = v108;
  || infix(_:_:)();
  v71 = v106;
  v106(v69, v64);
  v71(v68, v64);
  v72 = v97;
  && infix(_:_:)();
  v71(v70, v64);
  v71(v65, v64);
  v73 = v98;
  v74 = v103;
  v75 = v107;
  QueryType.filter(_:)();
  v71(v72, v64);
  (v112)(v75, v74);
  v76 = v99;
  if (qword_101695338 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v64, qword_10177C950);
  LOBYTE(v119) = v102 & 1;
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  v71(v70, v64);
  (v112)(v73, v74);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v77 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v77, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.desc.getter();
  v78 = v100;
  QueryType.order(_:)();

  v79 = v112;
  (v112)(v76, v74);
  v80 = v101;
  QueryType.limit(_:)();
  v79(v78, v74);
  v120 = v74;
  v121 = &protocol witness table for Table;
  v81 = sub_1000280DC(&v119);
  v109(v81, v80, v74);
  v82 = sub_100215044(&v119, v111);
  v79(v80, v74);
  sub_100007BAC(&v119);
  return v82;
}

uint64_t sub_100215044(uint64_t a1, uint64_t a2)
{
  v68 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v52 = *(v68 - 8);
  v4 = __chkstk_darwin(v68);
  v62 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = v51 - v6;
  v7 = type metadata accessor for ObservedAdvertisement(0);
  v67 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v70 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = v51 - v10;
  v11 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = v51 - v15;
  v64 = type metadata accessor for Row();
  v16 = *(v64 - 8);
  v17 = __chkstk_darwin(v64);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v51 - v21;
  __chkstk_darwin(v20);
  v24 = v51 - v23;
  v69 = a2;
  v25 = sub_100028E90();
  if (!v25)
  {
    sub_10020223C();
    swift_allocError();
    *v29 = 2;
    *(v29 + 4) = 1;
    return swift_willThrow();
  }

  v26 = v25;
  v55 = v16;
  v27 = Connection.prepare(_:)();
  if (v2)
  {
  }

  v53 = v22;
  v30 = v27;

  v31 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v72 = _swiftEmptyArrayStorage;
  sub_1011245F0(0, v31 & ~(v31 >> 63), 0);
  v32 = v72;
  v51[2] = v30;
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v66 = result;
  if (v31 < 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v51[1] = v26;
  v65 = v24;
  if (v31)
  {
    v60 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    v61 = (v55 + 48);
    v58 = (v52 + 8);
    v59 = (v55 + 16);
    v57 = (v55 + 8);
    v33 = v19;
    v34 = v64;
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v61)(v14, 1, v34);
      if (result == 1)
      {
        goto LABEL_26;
      }

      (*v59)(v33, v14, v34);
      v35 = v33;
      if (qword_101695298 != -1)
      {
        swift_once();
      }

      v36 = v68;
      sub_1000076D4(v68, qword_10177C770);
      type metadata accessor for Table();
      v37 = v62;
      QueryType.subscript.getter();
      Row.subscript.getter();
      (*v58)(v37, v36);
      sub_1002132AC(v35, v71, v70);
      v33 = v35;
      v34 = v64;
      (*v57)(v14, v64);
      v72 = v32;
      v39 = v32[2];
      v38 = v32[3];
      if (v39 >= v38 >> 1)
      {
        sub_1011245F0((v38 > 1), v39 + 1, 1);
        v32 = v72;
      }

      v32[2] = v39 + 1;
      sub_1000345B4(v70, v32 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v39, type metadata accessor for ObservedAdvertisement);
      --v31;
      v24 = v65;
      if (!v31)
      {
        goto LABEL_16;
      }
    }
  }

  v34 = v64;
LABEL_16:
  v70 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v40 = v56;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v41 = v55;
  v42 = *(v55 + 48);
  v64 = v55 + 48;
  v62 = v42;
  if ((v42)(v40, 1, v34) != 1)
  {
    v44 = *(v41 + 32);
    v43 = v41 + 32;
    v59 = (v43 - 16);
    v60 = v44;
    v58 = (v52 + 8);
    v55 = v43;
    v61 = (v43 - 24);
    do
    {
      v60(v24, v40, v34);
      v45 = v53;
      (*v59)(v53, v24, v34);
      if (qword_101695298 != -1)
      {
        swift_once();
      }

      v46 = v68;
      sub_1000076D4(v68, qword_10177C770);
      type metadata accessor for Table();
      v47 = v54;
      QueryType.subscript.getter();
      Row.subscript.getter();
      (*v58)(v47, v46);
      sub_1002132AC(v45, v71, v63);
      (*v61)(v24, v34);
      v72 = v32;
      v49 = v32[2];
      v48 = v32[3];
      if (v49 >= v48 >> 1)
      {
        sub_1011245F0((v48 > 1), v49 + 1, 1);
        v32 = v72;
      }

      v32[2] = v49 + 1;
      sub_1000345B4(v63, v32 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v49, type metadata accessor for ObservedAdvertisement);
      v40 = v56;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v50 = (v62)(v40, 1, v34);
      v24 = v65;
    }

    while (v50 != 1);
  }

  sub_10000B3A8(v40, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_101699E10, &qword_101393138);
  result = swift_allocObject();
  *(result + 16) = v32;
  return result;
}

uint64_t sub_10021593C(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = type metadata accessor for Connection.TransactionMode();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ObservedAdvertisement(0) - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    v13 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001BA68(v11, v9, type metadata accessor for ObservedAdvertisement);
      v14 = *v9;
      v15 = v9[8];
      sub_100034434(v9, type metadata accessor for ObservedAdvertisement);
      if ((v15 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_100A5C448(0, *(v13 + 2) + 1, 1, v13);
        }

        v17 = *(v13 + 2);
        v16 = *(v13 + 3);
        if (v17 >= v16 >> 1)
        {
          v13 = sub_100A5C448((v16 > 1), v17 + 1, 1, v13);
        }

        *(v13 + 2) = v17 + 1;
        *&v13[8 * v17 + 32] = v14;
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (!*(v13 + 2))
  {
  }

  v18 = v28;
  v19 = sub_100027FA4();
  if (v19)
  {
    v20 = __chkstk_darwin(v19);
    *(&v25 - 4) = v18;
    *(&v25 - 3) = v20;
    *(&v25 - 2) = v13;
    v22 = v26;
    v21 = v27;
    (*(v26 + 104))(v5, enum case for Connection.TransactionMode.deferred(_:), v27);
    Connection.transaction(_:block:)();
    (*(v22 + 8))(v5, v21);
  }

  else
  {

    sub_10020223C();
    swift_allocError();
    *v24 = 2;
    *(v24 + 4) = 1;
    return swift_willThrow();
  }
}

void (*sub_100215C7C(uint64_t a1, NSObject *a2, void (*a3)(char *, uint64_t)))(char *, uint64_t)
{
  v50 = a1;
  v43 = a3;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = __chkstk_darwin(v4);
  v44 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v45 = &v33 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v33 - v10;
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Table();
  v46 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Delete();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v49;
  result = sub_1002085AC(a2, v50);
  if (!v21)
  {
    v35 = result;
    v36 = v20;
    v37 = v16;
    v38 = v11;
    v39 = v13;
    v40 = v18;
    v34 = v14;
    v41 = v17;
    v42 = a2;
    v49 = 0;
    v51 = v43;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v23 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v23, qword_10177C770);
    sub_1000BC4D4(&qword_101699D38, &unk_1013930C0);
    sub_1000041A4(&qword_101699D40, &qword_101699D38, &unk_1013930C0, &protocol conformance descriptor for [A]);
    v24 = v38;
    Collection<>.contains(_:)();
    v51 = v35;
    sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
    sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0, &protocol conformance descriptor for Set<A>);
    v25 = v44;
    Collection<>.contains(_:)();

    LOBYTE(v51) = 0;
    v26 = v45;
    == infix<A>(_:_:)();
    v27 = v48;
    v28 = *(v47 + 8);
    v28(v25, v48);
    v29 = v39;
    && infix(_:_:)();
    v28(v26, v27);
    v28(v24, v27);
    v30 = v37;
    v31 = v34;
    QueryType.filter(_:)();
    v28(v29, v27);
    v32 = v36;
    QueryType.delete()();
    (*(v46 + 8))(v30, v31);
    Connection.run(_:)();
    return (*(v40 + 8))(v32, v41);
  }

  return result;
}

uint64_t sub_10021614C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v30 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = &v26 - v3;
  v33 = type metadata accessor for Table();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Update();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ObservedAdvertisement(0) - 8;
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    v14 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001BA68(v12, v10, type metadata accessor for ObservedAdvertisement);
      v15 = *v10;
      v16 = v10[8];
      sub_100034434(v10, type metadata accessor for ObservedAdvertisement);
      if ((v16 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100A5C448(0, *(v14 + 2) + 1, 1, v14);
        }

        v18 = *(v14 + 2);
        v17 = *(v14 + 3);
        if (v18 >= v17 >> 1)
        {
          v14 = sub_100A5C448((v17 > 1), v18 + 1, 1, v14);
        }

        *(v14 + 2) = v18 + 1;
        *&v14[8 * v18 + 32] = v15;
      }

      v12 += v13;
      --v11;
    }

    while (v11);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (!*(v14 + 2))
  {
  }

  if (sub_100027FA4())
  {
    v37 = v14;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v19 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v19, qword_10177C770);
    sub_1000BC4D4(&qword_101699D38, &unk_1013930C0);
    sub_1000041A4(&qword_101699D40, &qword_101699D38, &unk_1013930C0, &protocol conformance descriptor for [A]);
    Collection<>.contains(_:)();

    v20 = v29;
    v21 = v33;
    QueryType.filter(_:)();
    v22 = v30;
    (*(v27 + 8))(v4, v30);
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    type metadata accessor for Setter();
    *(swift_allocObject() + 16) = xmmword_101385D80;
    if (qword_101695338 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v22, qword_10177C950);
    v36 = 1;
    <- infix<A>(_:_:)();
    v23 = v28;
    QueryType.update(_:)();

    (*(v31 + 8))(v20, v21);
    Connection.run(_:)();
    (*(v32 + 8))(v23, v34);
  }

  else
  {

    sub_10020223C();
    swift_allocError();
    *v25 = 2;
    *(v25 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100216764(uint64_t a1)
{
  v2 = type metadata accessor for Connection.TransactionMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100027FA4();
  if (v6)
  {
    v7 = __chkstk_darwin(v6);
    *(&v10 - 2) = a1;
    *(&v10 - 1) = v7;
    (*(v3 + 104))(v5, enum case for Connection.TransactionMode.deferred(_:), v2);
    Connection.transaction(_:block:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v9 = 2;
    *(v9 + 4) = 1;
    return swift_willThrow();
  }
}

void (*sub_100216908(uint64_t a1, NSObject *a2))(char *, uint64_t)
{
  v55 = a1;
  v3 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v36 - v4;
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = __chkstk_darwin(v5);
  v49 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v50 = &v36 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - v11;
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = type metadata accessor for Table();
  v51 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Delete();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v54;
  result = sub_1002085AC(a2, v55);
  if (!v22)
  {
    v37 = result;
    v38 = v18;
    v40 = v21;
    v41 = v17;
    v42 = v12;
    v43 = v14;
    v44 = v19;
    v45 = a2;
    v54 = 0;
    v39 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
    if (qword_101695300 != -1)
    {
      swift_once();
    }

    v24 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v24, qword_10177C8A8);
    sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
    v25 = v46;
    ExpressionType<>.length.getter();
    v56 = 28;
    v26 = v42;
    == infix<A>(_:_:)();
    (*(v47 + 8))(v25, v48);
    v56 = v37;
    v28 = v49;
    v27 = v50;
    if (qword_101695298 != -1)
    {
      swift_once();
    }

    v29 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v29, qword_10177C770);
    sub_1000BC4D4(&qword_101699D50, &unk_1013930D0);
    sub_1000041A4(&qword_101699D58, &qword_101699D50, &unk_1013930D0, &protocol conformance descriptor for Set<A>);
    Collection<>.contains(_:)();

    LOBYTE(v56) = 0;
    == infix<A>(_:_:)();
    v30 = *(v52 + 8);
    v31 = v28;
    v32 = v53;
    v30(v31, v53);
    v33 = v43;
    && infix(_:_:)();
    v30(v27, v32);
    v30(v26, v32);
    v34 = v41;
    QueryType.filter(_:)();
    v30(v33, v32);
    v35 = v40;
    QueryType.delete()();
    (*(v51 + 8))(v34, v15);
    Connection.run(_:)();
    return (*(v44 + 8))(v35, v38);
  }

  return result;
}

uint64_t sub_100216ED0(uint64_t a1, uint64_t a2)
{
  v70 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v78 = *(v70 - 8);
  v5 = __chkstk_darwin(v70);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v51 - v7;
  v76 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v82 = *(v76 - 8);
  __chkstk_darwin(v76);
  v68 = &v51 - v9;
  v10 = type metadata accessor for JoinType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Table();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v69 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v72 = &v51 - v19;
  v20 = __chkstk_darwin(v18);
  v64 = &v51 - v21;
  __chkstk_darwin(v20);
  v66 = &v51 - v22;
  v61 = sub_100206C74(a1);
  v65 = v2;
  v67 = a2 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v77 = v11;
  v23 = *(v11 + 104);
  v60 = v13;
  v59 = enum case for JoinType.leftOuter(_:);
  v71 = v10;
  v58 = v23;
  v57 = v11 + 104;
  v23(v13);
  v75 = a2;
  v24 = a2 + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
  v80 = v14;
  v81 = &protocol witness table for Table;
  v25 = sub_1000280DC(v79);
  v63 = v15;
  v73 = *(v15 + 16);
  v74 = v15 + 16;
  v73(v25, v24, v14);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  v26 = v70;
  v54 = sub_1000076D4(v70, qword_10177C770);
  QueryType.subscript.getter();
  v27 = v62;
  QueryType.subscript.getter();
  v28 = v68;
  == infix<A>(_:_:)();
  v29 = *(v78 + 8);
  v78 += 8;
  v56 = v29;
  v29(v27, v26);
  v52 = v8;
  v29(v8, v26);
  v30 = v60;
  QueryType.join(_:_:on:)();
  v31 = v82 + 8;
  v53 = *(v82 + 8);
  v53(v28, v76);
  v55 = *(v77 + 8);
  v77 += 8;
  v32 = v71;
  v55(v30, v71);
  sub_100007BAC(v79);
  v58(v30, v59, v32);
  v33 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v80 = v14;
  v81 = &protocol witness table for Table;
  v34 = sub_1000280DC(v79);
  v73(v34, v75 + v33, v14);
  QueryType.subscript.getter();
  QueryType.subscript.getter();
  v35 = v52;
  == infix<A>(_:_:)();
  v36 = v27;
  v37 = v53;
  v38 = v70;
  v39 = v56;
  v56(v36, v70);
  v39(v35, v38);
  v40 = v69;
  QueryType.join(_:_:on:)();
  v82 = v31;
  v37(v28, v76);
  v55(v30, v71);
  v41 = *(v63 + 8);
  v41(v40, v14);
  sub_100007BAC(v79);
  v79[0] = v61;
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v42 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v42, qword_10177C8A8);
  sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  sub_1000041A4(&qword_101699EC0, &qword_101699EB8, &qword_101398AA0, &protocol conformance descriptor for [A]);
  v43 = v68;
  Collection<>.contains(_:)();

  v44 = v64;
  v45 = v72;
  QueryType.filter(_:)();
  v37(v43, v76);
  v41(v45, v14);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v46 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v46, qword_10177C938);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.desc.getter();
  v47 = v66;
  QueryType.order(_:)();

  v41(v44, v14);
  v80 = v14;
  v81 = &protocol witness table for Table;
  v48 = sub_1000280DC(v79);
  v73(v48, v47, v14);
  v49 = sub_100215044(v79, v75);
  v41(v47, v14);
  sub_100007BAC(v79);
  return v49;
}

uint64_t sub_10021783C(char *a1, double a2)
{
  v3 = type metadata accessor for Date();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v64 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v59 = &v52 - v6;
  v7 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v70 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v69 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  v58 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v71 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - v12;
  v13 = type metadata accessor for Table();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v57 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v60 = &v52 - v18;
  v19 = __chkstk_darwin(v17);
  v63 = &v52 - v20;
  v21 = __chkstk_darwin(v19);
  v67 = &v52 - v22;
  v23 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementBeaconInfo;
  v73 = v21;
  v74 = &protocol witness table for Table;
  v24 = sub_1000280DC(v72);
  v68 = v14;
  v25 = *(v14 + 16);
  v54 = v14 + 16;
  v53 = v25;
  v25(v24, &a1[v23], v13);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177C770);
  QueryType.subscript.getter();
  v26 = v69;
  QueryType.subscript.getter();
  v27 = v56;
  == infix<A>(_:_:)();
  v28 = *(v70 + 8);
  v28(v26, v7);
  v28(v11, v7);
  v69 = a1;
  v29 = v57;
  QueryType.join(_:on:)();
  v30 = v58;
  v70 = *(v71 + 8);
  v71 += 8;
  (v70)(v27, v58);
  sub_100007BAC(v72);
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v31, qword_10177C8A8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v32 = v59;
  ExpressionType<>.length.getter();
  v72[0] = 6;
  == infix<A>(_:_:)();
  (*(v61 + 8))(v32, v62);
  v33 = v60;
  QueryType.filter(_:)();
  (v70)(v27, v30);
  v34 = v29;
  v35 = *(v68 + 8);
  v35(v34, v13);
  if (qword_101695330 != -1)
  {
    swift_once();
  }

  v36 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v36, qword_10177C938);
  v37 = v64;
  Date.init(timeIntervalSinceNow:)();
  v38 = v66;
  >= infix<A>(_:_:)();
  (*(v65 + 8))(v37, v38);
  v39 = v63;
  QueryType.filter(_:)();
  (v70)(v27, v30);
  v35(v33, v13);
  if (qword_1016952A0 != -1)
  {
    swift_once();
  }

  v40 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v41 = sub_1000076D4(v40, qword_10177C788);
  v73 = v40;
  v74 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  v42 = sub_1000280DC(v72);
  (*(*(v40 - 8) + 16))(v42, v41, v40);
  v43 = v67;
  SchemaType.select(_:_:)();
  v35(v39, v13);
  sub_100007BAC(v72);
  v44 = v69;
  v45 = sub_100028E90();
  if (v45)
  {
    v46 = v45;
    v73 = v13;
    v74 = &protocol witness table for Table;
    v47 = sub_1000280DC(v72);
    v53(v47, v43, v13);
    v44 = v46;
    v48 = v55;
    Connection.prepare(_:)();
    if (v48)
    {
      v35(v43, v13);

      sub_100007BAC(v72);
    }

    else
    {
      sub_100007BAC(v72);
      type metadata accessor for UUID();
      v50 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v44 = sub_10000954C(v50);

      v35(v43, v13);
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v49 = 2;
    *(v49 + 4) = 1;
    swift_willThrow();
    v35(v43, v13);
  }

  return v44;
}

uint64_t sub_100218230()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_1000291EC(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0E0);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for ItemSharingKeyDatabase(0);
  result = v4(v5, v3);
  if (result)
  {
    v7 = *(result + 16);

    return v7;
  }

  return result;
}

uint64_t sub_1002182F4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_1000291EC(&qword_101699E78, type metadata accessor for StandaloneBeaconDatabase, &unk_1013BF478);
  v4 = *(v3 + 16);
  v5 = type metadata accessor for StandaloneBeaconDatabase(0);
  result = v4(v5, v3);
  if (result)
  {
    v7 = *(result + 16);

    return v7;
  }

  return result;
}

uint64_t sub_1002183B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  v43 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v37 - v8;
  v44 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v38 = &v37 - v9;
  v10 = type metadata accessor for Table();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v56 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v48 = &v37 - v15;
  __chkstk_darwin(v14);
  v50 = &v37 - v16;
  v52 = sub_100206C74(a1);
  v49 = v2;
  v17 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisement;
  v18 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_observedAdvertisementLocation;
  v54 = v10;
  v55 = &protocol witness table for Table;
  v19 = sub_1000280DC(v53);
  v51 = v11;
  v20 = v10;
  v46 = *(v11 + 16);
  v47 = v11 + 16;
  v46(v19, a2 + v18, v10);
  if (qword_101695298 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177C770);
  v45 = a2;
  v39 = v17;
  v21 = v40;
  QueryType.subscript.getter();
  v22 = v41;
  QueryType.subscript.getter();
  v23 = v38;
  == infix<A>(_:_:)();
  v24 = *(v43 + 8);
  v24(v22, v5);
  v24(v21, v5);
  QueryType.join(_:on:)();
  v25 = *(v42 + 8);
  v26 = v44;
  v25(v23, v44);
  sub_100007BAC(v53);
  v53[0] = v52;
  v27 = v20;
  if (qword_101695300 != -1)
  {
    swift_once();
  }

  v28 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v28, qword_10177C8A8);
  sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  sub_1000041A4(&qword_101699EC0, &qword_101699EB8, &qword_101398AA0, &protocol conformance descriptor for [A]);
  Collection<>.contains(_:)();

  v29 = v48;
  v30 = v56;
  QueryType.filter(_:)();
  v25(v23, v26);
  v31 = *(v51 + 8);
  v31(v30, v27);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  if (qword_101695360 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v32, qword_10177C9C8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.desc.getter();
  v33 = v50;
  QueryType.order(_:)();

  v31(v29, v27);
  v54 = v27;
  v55 = &protocol witness table for Table;
  v34 = sub_1000280DC(v53);
  v46(v34, v33, v27);
  v35 = sub_100218A30(v53);
  v31(v33, v27);
  sub_100007BAC(v53);
  return v35;
}

uint64_t sub_100218A30(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v73 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v83 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v66 - v5;
  v7 = type metadata accessor for ObservedAdvertisement.Location(0);
  v86 = *(v7 - 8);
  v87 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = (v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v81 = (v66 - v12);
  v13 = __chkstk_darwin(v11);
  v77 = v66 - v14;
  __chkstk_darwin(v13);
  v74 = v66 - v15;
  v16 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v78 = v66 - v20;
  v21 = type metadata accessor for Row();
  v80 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v85 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v75 = v66 - v25;
  __chkstk_darwin(v24);
  v76 = v66 - v26;
  v27 = sub_100028E90();
  if (!v27)
  {
    sub_10020223C();
    swift_allocError();
    *v31 = 2;
    *(v31 + 4) = 1;
    return swift_willThrow();
  }

  v28 = v27;
  v29 = Connection.prepare(_:)();
  if (v1)
  {
  }

  v67 = v6;
  v66[1] = v28;
  v32 = v29;

  v33 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v90 = _swiftEmptyArrayStorage;
  sub_101124634(0, v33 & ~(v33 >> 63), 0);
  v88 = v90;
  v66[0] = v32;
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v84 = result;
  if (v33 < 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v79 = v2;
  if (v33)
  {
    v82 = v33;
    v70 = (v80 + 16);
    v71 = (v80 + 8);
    v72 = (v80 + 48);
    v68 = v73 + 4;
    v69 = v10;
    do
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      result = (*v72)(v19, 1, v21);
      if (result == 1)
      {
        goto LABEL_36;
      }

      v34 = v85;
      (*v70)(v85, v19, v21);
      if (qword_101695348 != -1)
      {
        swift_once();
      }

      v35 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
      sub_1000076D4(v35, qword_10177C980);
      Row.get<A>(_:)();
      *v10 = v89;
      if (qword_101695350 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v35, qword_10177C998);
      Row.get<A>(_:)();
      v10[1] = v89;
      if (qword_101695358 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v35, qword_10177C9B0);
      Row.get<A>(_:)();
      v10[2] = v89;
      if (qword_101695360 != -1)
      {
        swift_once();
      }

      v36 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
      sub_1000076D4(v36, qword_10177C9C8);
      v37 = v83;
      Row.get<A>(_:)();
      v38 = v21;
      v39 = *v71;
      (*v71)(v34, v21);
      (*v68)(v10 + *(v87 + 28), v37, v2);
      v40 = v19;
      v41 = v81;
      sub_1000345B4(v10, v81, type metadata accessor for ObservedAdvertisement.Location);
      v39(v40, v21);
      v42 = v88;
      v90 = v88;
      v44 = v88[2];
      v43 = v88[3];
      if (v44 >= v43 >> 1)
      {
        sub_101124634((v43 > 1), v44 + 1, 1);
        v42 = v90;
      }

      v42[2] = v44 + 1;
      v45 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v88 = v42;
      sub_1000345B4(v41, v42 + v45 + *(v86 + 72) * v44, type metadata accessor for ObservedAdvertisement.Location);
      --v82;
      v21 = v38;
      v2 = v79;
      v19 = v40;
      v10 = v69;
    }

    while (v82);
  }

  v46 = v78;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v47 = v80;
  v48 = *(v80 + 48);
  v85 = (v80 + 48);
  v83 = v48;
  if ((v48)(v46, 1, v21) != 1)
  {
    v50 = *(v47 + 32);
    v49 = v47 + 32;
    v81 = v50;
    v82 = (v49 - 24);
    v72 = (v49 - 16);
    v73 += 4;
    v51 = v77;
    v80 = v49;
    do
    {
      v52 = v76;
      (v81)(v76, v46, v21);
      v53 = v75;
      (*v72)(v75, v52, v21);
      if (qword_101695348 != -1)
      {
        swift_once();
      }

      v54 = sub_1000BC4D4(&qword_101699E00, &qword_101393128);
      sub_1000076D4(v54, qword_10177C980);
      Row.get<A>(_:)();
      *v51 = v89;
      if (qword_101695350 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v54, qword_10177C998);
      Row.get<A>(_:)();
      v51[1] = v89;
      if (qword_101695358 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v54, qword_10177C9B0);
      Row.get<A>(_:)();
      v51[2] = v89;
      if (qword_101695360 != -1)
      {
        swift_once();
      }

      v55 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
      sub_1000076D4(v55, qword_10177C9C8);
      v56 = v67;
      v57 = v79;
      Row.get<A>(_:)();
      v58 = *v82;
      (*v82)(v53, v21);
      v59 = v56;
      v51 = v77;
      (*v73)(&v77[*(v87 + 28)], v59, v57);
      v60 = v74;
      sub_1000345B4(v51, v74, type metadata accessor for ObservedAdvertisement.Location);
      v58(v52, v21);
      v61 = v88;
      v90 = v88;
      v62 = v21;
      v64 = v88[2];
      v63 = v88[3];
      if (v64 >= v63 >> 1)
      {
        sub_101124634((v63 > 1), v64 + 1, 1);
        v61 = v90;
      }

      v61[2] = v64 + 1;
      v65 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v88 = v61;
      sub_1000345B4(v60, v61 + v65 + *(v86 + 72) * v64, type metadata accessor for ObservedAdvertisement.Location);
      v46 = v78;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v21 = v62;
    }

    while ((v83)(v46, 1, v62) != 1);
  }

  sub_10000B3A8(v46, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_101699EC8, &qword_101393180);
  result = swift_allocObject();
  *(result + 16) = v88;
  return result;
}