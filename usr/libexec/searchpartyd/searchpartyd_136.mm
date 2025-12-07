uint64_t sub_100F12F60(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 408) = a1;

    return _swift_task_switch(sub_100F130AC, 0, 0);
  }
}

uint64_t sub_100F130AC()
{
  sub_10039A8F4(*(v0 + 408));
  v1 = swift_task_alloc();
  *(v0 + 416) = v1;
  *v1 = v0;
  v1[1] = sub_100F13148;

  return daemon.getter();
}

uint64_t sub_100F13148(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 424) = a1;

  v3 = swift_task_alloc();
  *(v2 + 432) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for StandaloneBeaconService();
  v6 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F3A180(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v3 = v9;
  v3[1] = sub_100F13324;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F13324(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 440) = a1;
  *(v4 + 448) = v1;

  if (v1)
  {
    v5 = sub_100F13A8C;
    v6 = 0;
  }

  else
  {

    v5 = sub_100F1345C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100F1345C()
{
  v1 = v0[56];
  sub_100F855A4(*(v0[55] + 128));
  v0[57] = v1;
  if (v1)
  {
    v2 = sub_100F1399C;
  }

  else
  {
    v0[58] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v2 = sub_100F134FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_100F134FC()
{
  v1 = *(v0 + 464);
  v2 = *(v1 + 16);
  if (!v2)
  {

    v6 = _swiftEmptyArrayStorage;
LABEL_23:
    sub_10039A8F4(v6);

    v36 = *(v0 + 56);

    v37 = *(v0 + 8);

    return v37(v36);
  }

  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  v3 = *(v0 + 208);
  v53 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  sub_1011254EC(0, v2, 0);
  v6 = _swiftEmptyArrayStorage;
  v7 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v44 = (v4 + 56);
  v45 = (v4 + 16);
  v43 = (v5 + 16);
  v39 = (v4 + 32);
  v40 = *(v3 + 72);
  v38 = (v5 + 32);
  while (1)
  {
    v51 = v6;
    v52 = v2;
    v8 = *(v0 + 216);
    v9 = *(v0 + 184);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    v12 = *(v0 + 152);
    v13 = *(v0 + 136);
    v50 = v7;
    sub_100F3A2F8(v7, v8, type metadata accessor for StandaloneBeacon);
    v14 = getuid();
    sub_1000294F0(v14);
    (*v45)(v9, v8, v10);
    (*v44)(v11, 1, 1, v10);
    result = (*v43)(v12, v8 + v53[8], v13);
    v16 = (v8 + v53[9]);
    v17 = *v16;
    v18 = v16[1] >> 62;
    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_27;
      }

      v22 = v22;
      goto LABEL_12;
    }

LABEL_14:
    Data.subdata(in:)();
    static Endianness.current.getter();
    sub_10012BF24();
    result = FixedWidthInteger.init(data:ofEndianness:)();
    if (*(v0 + 476))
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v0 + 472);
    }

    if (v23 < 0)
    {
      goto LABEL_26;
    }

    v24 = *(v0 + 240);
    v49 = *(v0 + 216);
    v25 = *(v0 + 184);
    v27 = *(v0 + 160);
    v26 = *(v0 + 168);
    v46 = *(v0 + 136);
    v47 = *(v0 + 152);
    v28 = (v49 + v53[7]);
    v29 = v28[1];
    v48 = *v28;
    v30 = *v39;
    (*v39)(v24, *(v0 + 192), v26);
    v30(v24 + v41[5], v25, v26);
    sub_10012C154(v27, v24 + v41[6]);
    (*v38)(v24 + v41[7], v47, v46);
    v31 = (v24 + v41[8]);
    *v31 = 0;
    v31[1] = 0xE000000000000000;
    *(v24 + v41[9]) = v23;
    v32 = (v24 + v41[10]);
    *v32 = v48;
    v32[1] = v29;
    *(v24 + v41[11]) = 0;
    *(v24 + v41[12]) = 2;

    sub_100F3A500(v49, type metadata accessor for StandaloneBeacon);
    v6 = v51;
    v34 = v51[2];
    v33 = v51[3];
    if (v34 >= v33 >> 1)
    {
      sub_1011254EC((v33 > 1), v34 + 1, 1);
      v6 = v51;
    }

    v35 = *(v0 + 240);
    v6[2] = v34 + 1;
    sub_100F3A498(v35, v6 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v34, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    v7 = v50 + v40;
    v2 = v52 - 1;
    if (v52 == 1)
    {

      goto LABEL_23;
    }
  }

  if (v18 != 2)
  {
    goto LABEL_14;
  }

  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  v21 = __OFSUB__(v19, v20);
  v22 = v19 - v20;
  if (v21)
  {
    goto LABEL_28;
  }

LABEL_12:
  if (v22 >= -1)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100F1399C()
{

  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100F13A8C()
{

  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100F13B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v5[19] = *(v7 + 64);
  v5[20] = swift_task_alloc();
  v5[21] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v5[22] = swift_task_alloc();
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5[26] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[27] = v9;
  v10 = *(v9 - 8);
  v5[28] = v10;
  v5[29] = *(v10 + 64);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = type metadata accessor for StableIdentifier(0);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_100F13DD4, 0, 0);
}

uint64_t sub_100F13DD4()
{
  v80 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  sub_100F3A2F8(*(v0 + 104) + *(*(v0 + 136) + 24), v2, type metadata accessor for StableIdentifier);
  sub_100F3A2F8(v2, v1, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v32 = *(v0 + 272);
      v20 = *(v32 + 32);
      v21 = *(v32 + 40);

      v9 = 0;
      goto LABEL_17;
    }

LABEL_7:
    v15 = *(v0 + 272);
    v16 = *(v0 + 96);
    sub_100F3A500(*(v0 + 280), type metadata accessor for StableIdentifier);
    sub_100F3A500(v15, type metadata accessor for StableIdentifier);
LABEL_29:
    v76 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
    (*(*(v76 - 8) + 56))(v16, 1, 1, v76);

    v77 = *(v0 + 8);

    return v77();
  }

  if (EnumCaseMultiPayload == 2)
  {
    v17 = *(v0 + 272);
    v18 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

    v19 = (v17 + *(v18 + 80));
    v20 = *v19;
    v21 = v19[1];
    v22 = (v17 + *(v18 + 96));
    v23 = *v22;
    v24 = v22[1];

    *(v0 + 64) = v20;
    *(v0 + 72) = v21;
    sub_1000DF96C();

    v25 = Data.init<A>(hexString:)();
    if (v26 >> 60 != 15)
    {
      *(v0 + 80) = v25;
      *(v0 + 88) = v26;
      v27 = v25;
      v28 = v26;
      sub_1000E0A3C();
      v29 = DataProtocol.nullTerminatedUTF8String.getter();
      v31 = v30;
      sub_100006654(v27, v28);
      if (v31)
      {

        v20 = v29;
        v21 = v31;
      }
    }

    if (v24)
    {
      v9 = 0;
    }

    else
    {
      v9 = v23;
    }

    (*(*(v0 + 224) + 8))(*(v0 + 272), *(v0 + 216));
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 272);
  v5 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

  v6 = (v4 + *(v5 + 80));
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v4 + *(v5 + 96));
  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  sub_1000DF96C();
  v10 = Data.init<A>(hexString:)();
  v12 = *(v0 + 272);
  v13 = *(v0 + 216);
  v14 = *(v0 + 224);
  if (v11 >> 60 == 15)
  {
    (*(v14 + 8))(*(v0 + 272), *(v0 + 216));
LABEL_23:
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v62 = *(v0 + 280);
    v63 = *(v0 + 264);
    v64 = type metadata accessor for Logger();
    sub_1000076D4(v64, qword_10177B810);
    sub_100F3A2F8(v62, v63, type metadata accessor for StableIdentifier);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 280);
    v69 = *(v0 + 264);
    if (v67)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v79 = v71;
      *v70 = 141558275;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2081;
      v72 = sub_1010DA578();
      v74 = v73;
      sub_100F3A500(v69, type metadata accessor for StableIdentifier);
      v75 = sub_1000136BC(v72, v74, &v79);

      *(v70 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v65, v66, "Excluded invalid serial %{private,mask.hash}s", v70, 0x16u);
      sub_100007BAC(v71);
    }

    else
    {

      sub_100F3A500(v69, type metadata accessor for StableIdentifier);
    }

    sub_100F3A500(v68, type metadata accessor for StableIdentifier);
    v16 = *(v0 + 96);
    goto LABEL_29;
  }

  *(v0 + 32) = v10;
  *(v0 + 40) = v11;
  v33 = v10;
  v34 = v11;
  sub_1000E0A3C();
  v20 = DataProtocol.nullTerminatedUTF8String.getter();
  v21 = v35;
  sub_100006654(v33, v34);
  (*(v14 + 8))(v12, v13);
  if (!v21)
  {
    goto LABEL_23;
  }

LABEL_17:
  *(v0 + 340) = v9;
  *(v0 + 288) = v20;
  *(v0 + 296) = v21;
  v36 = *(v0 + 216);
  v37 = *(v0 + 224);
  v38 = *(v0 + 208);
  v39 = *(v0 + 104);
  v40 = *(*(v0 + 136) + 28);
  *(v0 + 336) = v40;
  sub_1000D2A70(v39 + v40, v38, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v37 + 48))(v38, 1, v36) == 1)
  {
    sub_10000B3A8(*(v0 + 208), &qword_1016980D0, &unk_10138F3B0);
    v41 = *(v0 + 160);
    v42 = *(v0 + 144);
    v44 = *(v0 + 120);
    v43 = *(v0 + 128);
    v45 = *(v0 + 112);
    sub_100F3A2F8(*(v0 + 104), v41, type metadata accessor for OwnedBeaconRecord);
    v46 = (*(v42 + 80) + 40) & ~*(v42 + 80);
    v47 = swift_allocObject();
    *(v0 + 320) = v47;
    v47[2] = v45;
    v47[3] = v44;
    v47[4] = v43;
    sub_100F3A498(v41, v47 + v46, type metadata accessor for OwnedBeaconRecord);

    v48 = swift_task_alloc();
    *(v0 + 328) = v48;
    v49 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    *v48 = v0;
    v48[1] = sub_100F14BB4;
    v50 = sub_100F3A360;
    v51 = v0 + 48;
  }

  else
  {
    v52 = *(v0 + 240);
    v53 = *(v0 + 248);
    v54 = *(v0 + 224);
    v55 = *(v0 + 216);
    v57 = *(v0 + 120);
    v56 = *(v0 + 128);
    v58 = *(v0 + 112);
    v59 = *(v54 + 32);
    v59(v53, *(v0 + 208), v55);
    (*(v54 + 16))(v52, v53, v55);
    v60 = (*(v54 + 80) + 40) & ~*(v54 + 80);
    v47 = swift_allocObject();
    *(v0 + 304) = v47;
    v47[2] = v58;
    v47[3] = v57;
    v47[4] = v56;
    v59(v47 + v60, v52, v55);

    v61 = swift_task_alloc();
    *(v0 + 312) = v61;
    *v61 = v0;
    v61[1] = sub_100F14658;
    v49 = *(v0 + 168);
    v51 = *(v0 + 176);
    v50 = sub_100F3A42C;
  }

  return unsafeBlocking<A>(_:)(v51, v50, v47, v49);
}

uint64_t sub_100F14658()
{

  return _swift_task_switch(sub_100F14770, 0, 0);
}

uint64_t sub_100F14770()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(*(v0 + 176), &unk_1016AF8B0, &unk_1013A0700);
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 112);
    sub_100F3A2F8(*(v0 + 104), v6, type metadata accessor for OwnedBeaconRecord);
    v9 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v0 + 320) = v10;
    v10[2] = v8;
    v10[3] = v5;
    v10[4] = v4;
    sub_100F3A498(v6, v10 + v9, type metadata accessor for OwnedBeaconRecord);

    v11 = swift_task_alloc();
    *(v0 + 328) = v11;
    v12 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    *v11 = v0;
    v11[1] = sub_100F14BB4;
    v13 = sub_100F3A360;
    v14 = v0 + 48;
    v15 = v10;

    return unsafeBlocking<A>(_:)(v14, v13, v15, v12);
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 184);
  sub_100F3A498(*(v0 + 176), v16, type metadata accessor for OwnedBeaconGroup);
  v18 = (v16 + *(v17 + 36));
  v19 = v18[1];
  v42 = *v18;

  sub_100F3A500(v16, type metadata accessor for OwnedBeaconGroup);
  v20 = *(v0 + 336);
  v21 = *(v0 + 280);
  v22 = *(v0 + 216);
  v23 = *(v0 + 224);
  v24 = *(v0 + 136);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);
  v27 = getuid();
  sub_1000294F0(v27);
  sub_100F3A500(v21, type metadata accessor for StableIdentifier);
  v28 = v24[5];
  v29 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  (*(v23 + 16))(v25 + v29[5], v26 + v28, v22);
  sub_1000D2A70(v26 + v20, v25 + v29[6], &qword_1016980D0, &unk_10138F3B0);
  v30 = v24[8];
  v31 = v29[7];
  v32 = type metadata accessor for Date();
  v14 = (*(*(v32 - 8) + 16))(v25 + v31, v26 + v30, v32);
  v33 = *(v26 + v24[16]);
  if (v33 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v33 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return unsafeBlocking<A>(_:)(v14, v13, v15, v12);
  }

  v34 = *(v0 + 340);
  v36 = *(v0 + 288);
  v35 = *(v0 + 296);
  v37 = *(v0 + 96);
  v38 = (v37 + v29[8]);
  *v38 = v42;
  v38[1] = v19;
  *(v37 + v29[9]) = v33;
  v39 = (v37 + v29[10]);
  *v39 = v36;
  v39[1] = v35;
  *(v37 + v29[11]) = 1;
  *(v37 + v29[12]) = v34;
  (*(*(v29 - 1) + 56))();

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100F14BB4()
{

  return _swift_task_switch(sub_100F14CCC, 0, 0);
}

uint64_t sub_100F14CCC()
{
  v1 = *(v0 + 56);
  v26 = *(v0 + 48);
  v2 = *(v0 + 336);
  v3 = *(v0 + 280);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 136);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = getuid();
  sub_1000294F0(v9);
  sub_100F3A500(v3, type metadata accessor for StableIdentifier);
  v10 = v6[5];
  v11 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  (*(v5 + 16))(v7 + v11[5], v8 + v10, v4);
  sub_1000D2A70(v8 + v2, v7 + v11[6], &qword_1016980D0, &unk_10138F3B0);
  v12 = v6[8];
  v13 = v11[7];
  v14 = type metadata accessor for Date();
  result = (*(*(v14 - 8) + 16))(v7 + v13, v8 + v12, v14);
  v16 = *(v8 + v6[16]);
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = 0xE700000000000000;
  if (v1)
  {
    v17 = v1;
  }

  v18 = 0x6E776F6E6B6E55;
  if (v1)
  {
    v18 = v26;
  }

  v19 = *(v0 + 340);
  v21 = *(v0 + 288);
  v20 = *(v0 + 296);
  v22 = *(v0 + 96);
  v23 = (v22 + v11[8]);
  *v23 = v18;
  v23[1] = v17;
  *(v22 + v11[9]) = v16;
  v24 = (v22 + v11[10]);
  *v24 = v21;
  v24[1] = v20;
  *(v22 + v11[11]) = 1;
  *(v22 + v11[12]) = v19;
  (*(*(v11 - 1) + 56))();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100F14F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v5[11] = *(v7 + 64);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100F1500C, 0, 0);
}

uint64_t sub_100F1500C()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_100F3A2F8(v0[5], v1, type metadata accessor for SharedBeaconRecord);
  v6 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[13] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  sub_100F3A498(v1, v7 + v6, type metadata accessor for SharedBeaconRecord);

  v8 = swift_task_alloc();
  v0[14] = v8;
  v9 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  *v8 = v0;
  v8[1] = sub_100F1517C;

  return unsafeBlocking<A>(_:)(v0 + 2, sub_100F3A2B8, v7, v9);
}

uint64_t sub_100F1517C()
{

  return _swift_task_switch(sub_100F15294, 0, 0);
}

uint64_t sub_100F15294()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v21 = v0[2];
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = *(v1 + 20);
  v7 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  v8 = v7[5];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v3 + v8, v2 + v6, v9);
  (*(v10 + 56))(v3 + v7[6], 1, 1, v9);
  result = sub_100A8AD0C(v3 + v7[7]);
  v12 = *(v2 + *(v1 + 44));
  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v13 = v0[4];
  if (v4)
  {
    v14 = v4;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v4)
  {
    v15 = v21;
  }

  else
  {
    v15 = 0x6E776F6E6B6E55;
  }

  v16 = UUID.uuidString.getter();
  v17 = (v13 + v7[8]);
  *v17 = v15;
  v17[1] = v14;
  *(v13 + v7[9]) = v12;
  v18 = (v13 + v7[10]);
  *v18 = v16;
  v18[1] = v19;
  *(v13 + v7[11]) = 1;
  *(v13 + v7[12]) = 0;
  (*(*(v7 - 1) + 56))(v13, 0, 1, v7);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100F15494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(void)@<X4>, void *a5@<X8>)
{
  v9 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v9);
  v11 = &v18[-v10];
  v12 = a2 + *(a3(0) + 20);
  v19 = a1;
  v20 = v12;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v13 = type metadata accessor for BeaconNamingRecord(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    result = sub_10000B3A8(v11, &unk_1016B29E0, &unk_1013B70E0);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = &v11[*(v13 + 32)];
    v15 = *v17;
    v16 = v17[1];

    result = sub_100F3A500(v11, type metadata accessor for BeaconNamingRecord);
  }

  *a5 = v15;
  a5[1] = v16;
  return result;
}

uint64_t sub_100F15614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Date();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for BeaconIdentifier(0);
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v5[18] = swift_task_alloc();
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_100F157FC, 0, 0);
}

uint64_t sub_100F157FC()
{
  v1 = v0[16];
  v2 = v0[11];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  sub_100F3A2F8(v0[3], v1, type metadata accessor for BeaconIdentifier);
  v6 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[22] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  sub_100F3A498(v1, v7 + v6, type metadata accessor for BeaconIdentifier);

  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_100F15954;
  v10 = v0[17];
  v9 = v0[18];

  return unsafeBlocking<A>(_:)(v9, sub_100F32F24, v7, v10);
}

uint64_t sub_100F15954()
{

  return _swift_task_switch(sub_100F15A6C, 0, 0);
}

uint64_t sub_100F15A6C()
{
  v34 = v0;
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = v0[13];
    v3 = v0[3];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B810);
    sub_100F3A2F8(v3, v2, type metadata accessor for BeaconIdentifier);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[13];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v11;
      v12._countAndFlagsBits = 47;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
      v14 = sub_1000136BC(v32, v33, &v31);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "beaconInfo: no beacon record for %{private,mask.hash}s. Looking up standalone beacons...", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    }

    v28 = swift_task_alloc();
    v0[25] = v28;
    *v28 = v0;
    v28[1] = sub_100F16384;

    return daemon.getter();
  }

  else
  {
    sub_100F3A498(v1, v0[21], type metadata accessor for OwnedBeaconRecord);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v15 = v0[15];
    v16 = v0[3];
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177B810);
    sub_100F3A2F8(v16, v15, type metadata accessor for BeaconIdentifier);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[15];
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v24;
      v25._countAndFlagsBits = 47;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      sub_100F3A500(v21, type metadata accessor for BeaconIdentifier);
      v27 = sub_1000136BC(v32, v33, &v31);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "beaconInfo: found beacon record for %{private,mask.hash}s!", v22, 0x16u);
      sub_100007BAC(v23);
    }

    else
    {

      sub_100F3A500(v21, type metadata accessor for BeaconIdentifier);
    }

    v29 = swift_task_alloc();
    v0[24] = v29;
    *v29 = v0;
    v29[1] = sub_100F1603C;

    return sub_100D5F8B4();
  }
}

uint64_t sub_100F1603C(char a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_100F1613C, 0, 0);
}

uint64_t sub_100F1613C()
{
  v26 = *(v0 + 256);
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v25 = v4;
  v5 = *(v0 + 56);
  v23 = *(v0 + 112);
  v24 = v5;
  v6 = *(v0 + 16);
  sub_100F3A2F8(*(v0 + 24), v23, type metadata accessor for BeaconIdentifier);
  (*(v3 + 16))(v4, v1 + v2[8], v5);
  v7 = (v1 + v2[12]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v2[10];
  v11 = (v1 + v2[9]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v10);
  v15 = *(v1 + v10 + 8);
  sub_100017D5C(v9, v8);
  sub_100017D5C(v12, v13);
  sub_10002E98C(v14, v15);
  sub_100F3A500(v1, type metadata accessor for OwnedBeaconRecord);
  if (v26)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  v27 = v16;
  sub_100F3A498(v23, v6, type metadata accessor for BeaconIdentifier);
  v17 = type metadata accessor for KeyGenerationBeaconInfo(0);
  (*(v3 + 32))(v6 + v17[5], v25, v24);
  v18 = v6 + v17[6];
  *&v19 = v9;
  *(&v19 + 1) = v8;
  *&v20 = v12;
  *(&v20 + 1) = v13;
  *v18 = v19;
  *(v18 + 16) = v20;
  *(v18 + 32) = v14;
  *(v18 + 40) = v15;
  *(v6 + v17[7]) = v27;
  (*(*(v17 - 1) + 56))(v6, 0, 1, v17);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100F16384(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 208) = a1;

  v3 = swift_task_alloc();
  *(v2 + 216) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_100F16560;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F16560(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F168BC, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[30] = v5;
    *v5 = v4;
    v5[1] = sub_100F166EC;
    v6 = v3[2];
    v7 = v3[3];

    return sub_10098F404(v6, v7);
  }
}

uint64_t sub_100F166EC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100F16984;
  }

  else
  {
    v2 = sub_100F16800;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F16800()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F168BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F16984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F16A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = type metadata accessor for BeaconIdentifier(0);
  v4[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v10 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v4[6] = v10;
  v4[7] = *(v10 - 8);
  v4[8] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[9] = v11;
  *v11 = v4;
  v11[1] = sub_100F16BDC;

  return sub_100F15614(v9, a1, a2, a3, a4);
}

uint64_t sub_100F16BDC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100F174BC;
  }

  else
  {
    v2 = sub_100F16CF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F16CF0()
{
  v26 = v0;
  v1 = v0[6];
  v2 = v0[5];
  if ((*(v0[7] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B810);
    sub_100F3A2F8(v4, v3, type metadata accessor for BeaconIdentifier);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[4];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v12;
      v13._countAndFlagsBits = 47;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
      v15 = sub_1000136BC(v24, v25, &v23);

      *(v10 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "No KeyGenerationBeaconInfo for %{private,mask.hash}s!", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    }

    v20 = v0[1];

    return v20(_swiftEmptyArrayStorage);
  }

  else
  {
    v16 = v0[8];
    sub_100F3A498(v2, v16, type metadata accessor for KeyGenerationBeaconInfo);
    if (*(v16 + *(v1 + 24) + 8) >> 60 == 15)
    {
      v17 = swift_task_alloc();
      v0[12] = v17;
      *v17 = v0;
      v17[1] = sub_100F17254;
      v18 = v0[8];

      return sub_100F35134(v18);
    }

    else
    {
      v21 = swift_task_alloc();
      v0[11] = v21;
      *v21 = v0;
      v21[1] = sub_100F1712C;
      v22 = v0[8];

      return sub_100F1D4C0(v22);
    }
  }
}

uint64_t sub_100F1712C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    *(v4 + 112) = v1;
    v5 = sub_100F17420;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_100F1737C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F17254(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    *(v4 + 112) = v1;
    v5 = sub_100F17420;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_100F1737C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F1737C()
{
  sub_100F3A500(v0[8], type metadata accessor for KeyGenerationBeaconInfo);
  v1 = v0[13];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100F17420()
{
  sub_100F3A500(*(v0 + 64), type metadata accessor for KeyGenerationBeaconInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F174BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F1753C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 168) = a2;
  *(v7 + 176) = a4;
  *(v7 + 400) = a3;
  *(v7 + 160) = a1;
  *(v7 + 184) = type metadata accessor for BeaconIdentifier(0);
  *(v7 + 192) = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  v12 = swift_task_alloc();
  *(v7 + 200) = v12;
  v13 = type metadata accessor for KeyGenerationBeaconInfo(0);
  *(v7 + 208) = v13;
  *(v7 + 216) = *(v13 - 8);
  *(v7 + 224) = swift_task_alloc();
  v14 = swift_task_alloc();
  *(v7 + 232) = v14;
  *v14 = v7;
  v14[1] = sub_100F176D4;

  return sub_100F15614(v12, a2, a5, a6, a7);
}

uint64_t sub_100F176D4()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100F1867C;
  }

  else
  {
    v2 = sub_100F177E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F177E8()
{
  v22 = v0;
  v1 = v0[25];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E368, &qword_1013D6690);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = v0[24];
    v3 = v0[21];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B810);
    sub_100F3A2F8(v3, v2, type metadata accessor for BeaconIdentifier);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[24];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v11;
      v12._countAndFlagsBits = 47;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
      v14 = sub_1000136BC(v20, v21, &v19);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "No KeyGenerationBeaconInfo for %{private,mask.hash}s!", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    }

    v16 = v0[20];

    *v16 = 2;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0;
    v17 = v0[1];

    return v17();
  }

  else
  {
    sub_100F3A498(v1, v0[28], type metadata accessor for KeyGenerationBeaconInfo);
    v15 = swift_task_alloc();
    v0[31] = v15;
    *v15 = v0;
    v15[1] = sub_100F17B98;

    return daemon.getter();
  }
}

uint64_t sub_100F17B98(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 256) = a1;

  v3 = swift_task_alloc();
  *(v2 + 264) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_100F17D74;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F17D74(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  if (v1)
  {
    v5 = sub_100F186FC;
    v6 = 0;
  }

  else
  {
    v5 = sub_100F17EB8;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100F17EB8()
{
  v1 = *(*(v0 + 272) + 128);
  *(v0 + 288) = v1;
  if (v1)
  {

    v2 = sub_100F17F44;
  }

  else
  {
    v2 = sub_100F184E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F17F44()
{
  v19 = v0;
  v1 = (*(v0 + 224) + *(*(v0 + 208) + 24));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
    v4 = 0;
    v2 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  else
  {
    v4 = *v1;
    v5 = v1[2];
    v6 = v1[3];
    v8 = v1[4];
    v9 = v1[5];
    sub_100F32E90(*v1, v1[1], v5, v6, v8, v9, sub_100017D5C, sub_1002DBC68);
    sub_100017D5C(v4, v2);
    sub_10002EA98(57, v4, v2, v18);
    sub_100496F68(v18[0], v18[1], &v16);
    v7 = v17;
    if (v17 >> 60 == 15)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v3 = v16;
    sub_100017D5C(v4, v2);
    sub_100017D5C(v5, v6);
    sub_100F32E90(v4, v2, v5, v6, v8, v9, sub_100016590, sub_100006654);
  }

  *(v0 + 328) = v5;
  *(v0 + 336) = v6;
  *(v0 + 312) = v4;
  *(v0 + 320) = v2;
  *(v0 + 296) = v3;
  *(v0 + 304) = v7;
  v11 = *(v0 + 288);
  *(v0 + 16) = v3;
  v12 = *(v0 + 400);
  *(v0 + 24) = v7;
  *(v0 + 32) = v4;
  *(v0 + 40) = v2;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  sub_1009B4CEC((v0 + 112));
  v13 = swift_task_alloc();
  *(v0 + 344) = v13;
  *v13 = v0;
  v13[1] = sub_100F181D4;
  v14 = *(v0 + 168);
  v15 = *(v0 + 176);

  return sub_100424C7C(v0 + 64, v14, v0 + 16, v0 + 112, v12 & 1, v15, v11, 4000);
}

uint64_t sub_100F181D4()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 328);
    v3 = *(v2 + 336);
    v6 = *(v2 + 312);
    v5 = *(v2 + 320);
    v8 = *(v2 + 296);
    v7 = *(v2 + 304);
    sub_10000B3A8(v2 + 112, &qword_10169FCA8, &qword_1013A2B88);
    sub_100F32E90(v8, v7, v6, v5, v4, v3, sub_100016590, sub_100016590);
    v9 = sub_100F18798;
  }

  else
  {
    v11 = *(v2 + 328);
    v10 = *(v2 + 336);
    v13 = *(v2 + 312);
    v12 = *(v2 + 320);
    v15 = *(v2 + 296);
    v14 = *(v2 + 304);
    *(v2 + 401) = *(v2 + 64);
    *(v2 + 360) = *(v2 + 72);
    *(v2 + 376) = *(v2 + 88);
    *(v2 + 392) = *(v2 + 104);
    sub_10000B3A8(v2 + 112, &qword_10169FCA8, &qword_1013A2B88);
    sub_100F32E90(v15, v14, v13, v12, v11, v10, sub_100016590, sub_100016590);
    v9 = sub_100F183F8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100F183F8()
{
  v1 = *(v0 + 401);
  v2 = *(v0 + 224);

  sub_100F3A500(v2, type metadata accessor for KeyGenerationBeaconInfo);
  v3 = *(v0 + 392);
  v4 = *(v0 + 160);
  v7 = *(v0 + 376);
  v8 = *(v0 + 360);

  *v4 = v1;
  *(v4 + 24) = v7;
  *(v4 + 8) = v8;
  *(v4 + 40) = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100F184E8()
{
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B810);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing LTKGenerator!", v4, 2u);
  }

  v5 = *(v0 + 224);

  sub_100F32E3C();
  swift_allocError();
  *v6 = 1;
  swift_willThrow();

  sub_100F3A500(v5, type metadata accessor for KeyGenerationBeaconInfo);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100F1867C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F186FC()
{
  sub_100F3A500(*(v0 + 224), type metadata accessor for KeyGenerationBeaconInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F18798()
{
  v1 = *(v0 + 224);

  sub_100F3A500(v1, type metadata accessor for KeyGenerationBeaconInfo);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100F1884C(uint64_t a1)
{
  v1[52] = a1;
  sub_1000BC4D4(&qword_1016B5CC0, &qword_1013D7370);
  v1[53] = swift_task_alloc();
  v1[54] = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v1[58] = swift_task_alloc();
  v2 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v1[59] = v2;
  v1[60] = *(v2 - 8);
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v1[67] = swift_task_alloc();
  v3 = type metadata accessor for ObservedAdvertisement(0);
  v1[68] = v3;
  v1[69] = *(v3 - 8);
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = type metadata accessor for BeaconIdentifier(0);
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();

  return _swift_task_switch(sub_100F18B48, 0, 0);
}

uint64_t sub_100F18B48()
{
  sub_100F3A2F8(v0[52], v0[82], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[83] = v1;
  *v1 = v0;
  v1[1] = sub_100F18BF8;

  return daemon.getter();
}

uint64_t sub_100F18BF8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[84] = a1;

  v3 = swift_task_alloc();
  v2[85] = v3;
  v4 = type metadata accessor for Daemon();
  v2[86] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[87] = v6;
  v7 = sub_100F3A180(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100F18DD8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F18DD8(uint64_t a1)
{
  v3 = *v2;
  v3[88] = a1;
  v3[89] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F3A960, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[90] = v4;
    *v4 = v3;
    v4[1] = sub_100F18F50;

    return daemon.getter();
  }
}

uint64_t sub_100F18F50(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 728) = a1;

  v5 = swift_task_alloc();
  *(v3 + 736) = v5;
  v6 = type metadata accessor for BeaconKeyService();
  v7 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v5 = v4;
  v5[1] = sub_100F19104;
  v8 = *(v2 + 696);
  v9 = *(v2 + 688);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100F19104(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 744) = a1;
  *(v4 + 752) = v1;

  if (v1)
  {
    v5 = sub_100F3A904;
    v6 = 0;
  }

  else
  {

    v5 = sub_100F19240;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100F19240()
{
  v1 = *(*(v0 + 744) + 128);
  *(v0 + 760) = v1;
  if (v1)
  {

    v2 = sub_100F192CC;
  }

  else
  {
    v2 = sub_100F3A90C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F192CC()
{
  v40 = v0;
  v1 = *(v0 + 416);
  v2 = (v1 + *(type metadata accessor for KeyGenerationBeaconInfo(0) + 24));
  v3 = *v2;
  *(v0 + 768) = *v2;
  v4 = v2[1];
  *(v0 + 776) = v4;
  v5 = v2[2];
  *(v0 + 784) = v5;
  v6 = v2[3];
  *(v0 + 792) = v6;
  v7 = v2[4];
  *(v0 + 800) = v7;
  v8 = v2[5];
  *(v0 + 808) = v8;
  if (v4 >> 60 == 15)
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177B810);
    sub_100F3A2F8(v9, v10, type metadata accessor for BeaconIdentifier);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 648);
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v18;
      v19._countAndFlagsBits = 47;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      sub_100F3A500(v15, type metadata accessor for BeaconIdentifier);
      v21 = sub_1000136BC(v38, v39, &v36);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing keys from %{private,mask.hash}s", v16, 0x16u);
      sub_100007BAC(v17);
    }

    else
    {

      sub_100F3A500(v15, type metadata accessor for BeaconIdentifier);
    }

    sub_100F32E3C();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();

    sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

    v26 = *(v0 + 8);

    return v26();
  }

  sub_100F32E90(v3, v4, v5, v6, v7, v8, sub_100017D5C, sub_1002DBC68);
  sub_100017D5C(v3, v4);
  sub_10002EA98(57, v3, v4, &v38);
  sub_100496F68(v38, v39, &v36);
  v22 = v36;
  v23 = v37;
  *(v0 + 816) = v36;
  *(v0 + 824) = v23;
  if (v23 >> 60 == 15)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  *(v0 + 208) = v22;
  *(v0 + 216) = v23;
  *&v27 = v3;
  *(&v27 + 1) = v4;
  *&v28 = v5;
  *(&v28 + 1) = v6;
  *(v0 + 224) = v27;
  *(v0 + 240) = v28;
  if (v8 >> 60 == 15)
  {
    sub_100017D5C(v5, v6);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v7 = 0;
    v8 = 0;
    v32 = 0xF000000000000000;
  }

  else
  {
    sub_100017D5C(v3, v4);
    sub_100017D5C(v3, v4);
    sub_100017D5C(v5, v6);
    sub_10002E98C(v7, v8);
    sub_10002EA98(57, v3, v4, &v38);
    sub_100496F68(v38, v39, &v36);
    v32 = v37;
    if (v37 >> 60 == 15)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v29 = v36;
    v30 = v3;
    v31 = v4;
  }

  *(v0 + 872) = v8;
  *(v0 + 864) = v7;
  *(v0 + 856) = v31;
  *(v0 + 848) = v30;
  *(v0 + 840) = v32;
  *(v0 + 832) = v29;
  *(v0 + 160) = v29;
  *(v0 + 168) = v32;
  *(v0 + 176) = v30;
  *(v0 + 184) = v31;
  *(v0 + 192) = v7;
  *(v0 + 200) = v8;
  sub_100017D5C(v3, v4);
  v33 = swift_task_alloc();
  *(v0 + 880) = v33;
  *v33 = v0;
  v33[1] = sub_100F199B8;
  v34 = *(v0 + 656);
  v35 = *(v0 + 536);

  return sub_1010CD810(v35, v34);
}

uint64_t sub_100F199B8()
{
  *(*v1 + 888) = v0;

  if (v0)
  {
    v2 = sub_100F3A924;
  }

  else
  {
    v2 = sub_100F19ACC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F19ACC()
{
  v145 = v0;
  v1 = *(v0 + 536);
  if ((*(*(v0 + 552) + 48))(v1, 1, *(v0 + 544)) == 1)
  {
    sub_10000B3A8(v1, &unk_10169BB50, &unk_101395760);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 656);
    v3 = *(v0 + 640);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B810);
    sub_100F3A2F8(v2, v3, type metadata accessor for BeaconIdentifier);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 640);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v142 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v11;
      v12._countAndFlagsBits = 47;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
      v14 = sub_1000136BC(v143, v144, &v142);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "No observed advertisement for beacon %{private,mask.hash}s.", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    }

    v28 = swift_task_alloc();
    *(v0 + 1200) = v28;
    *v28 = v0;
    v29 = sub_100F1D398;
    goto LABEL_26;
  }

  sub_100F3A498(v1, *(v0 + 584), type metadata accessor for ObservedAdvertisement);
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 584);
  v16 = *(v0 + 576);
  v17 = type metadata accessor for Logger();
  *(v0 + 896) = sub_1000076D4(v17, qword_10177B810);
  sub_100F3A2F8(v15, v16, type metadata accessor for ObservedAdvertisement);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 576);
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v143 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v24 = sub_100018680();
    v26 = v25;
    sub_100F3A500(v21, type metadata accessor for ObservedAdvertisement);
    v27 = sub_1000136BC(v24, v26, &v143);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Found observed advertisement %{private,mask.hash}s.", v22, 0x16u);
    sub_100007BAC(v23);
  }

  else
  {

    sub_100F3A500(v21, type metadata accessor for ObservedAdvertisement);
  }

  v30 = *(v0 + 472);
  v31 = *(v0 + 480);
  v32 = *(v0 + 464);
  sub_1000D2A70(*(v0 + 584) + *(*(v0 + 544) + 52), v32, &qword_101699DB0, &unk_101393100);
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    v33 = *(v0 + 656);
    v34 = *(v0 + 632);
    sub_10000B3A8(*(v0 + 464), &qword_101699DB0, &unk_101393100);
    sub_100F3A2F8(v33, v34, type metadata accessor for BeaconIdentifier);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 632);
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v142 = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v41;
      v42._countAndFlagsBits = 47;
      v42._object = 0xE100000000000000;
      String.append(_:)(v42);
      v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v43);

      v44 = v143;
      v45 = v144;
      sub_100F3A500(v38, type metadata accessor for BeaconIdentifier);
      v46 = sub_1000136BC(v44, v45, &v142);

      *(v39 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v35, v36, "Missing beaconIndexInformation for %{private,mask.hash}s!", v39, 0x16u);
      sub_100007BAC(v40);
    }

    else
    {

      sub_100F3A500(v38, type metadata accessor for BeaconIdentifier);
    }

    v28 = swift_task_alloc();
    *(v0 + 1176) = v28;
    *v28 = v0;
    v29 = sub_100F1D270;
LABEL_26:
    v28[1] = v29;
    v73 = *(v0 + 416);

    return sub_100F2ABB4(v73, (v0 + 208), (v0 + 160));
  }

  v47 = *(v0 + 584);
  v48 = *(v0 + 568);
  v49 = *(v0 + 528);
  v50 = *(v0 + 520);
  v52 = *(v0 + 504);
  v51 = *(v0 + 512);
  sub_100F3A498(*(v0 + 464), v49, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v49, v50, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v49, v51, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v49, v52, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v47, v48, type metadata accessor for ObservedAdvertisement);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 568);
  v57 = *(v0 + 520);
  v58 = *(v0 + 504);
  v59 = *(v0 + 512);
  if (v55)
  {
    v136 = *(v0 + 472);
    v60 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *v60 = 141559299;
    *(v60 + 4) = 1752392040;
    *(v60 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v138 = v54;
    v63 = v62;
    log = v53;
    sub_100F3A500(v57, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v64 = sub_1000136BC(v61, v63, &v143);

    *(v60 + 14) = v64;
    *(v60 + 22) = 2048;
    v65 = *(v59 + *(v136 + 24));
    sub_100F3A500(v59, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    *(v60 + 24) = v65;
    *(v60 + 32) = 2082;
    if (*(v58 + *(v136 + 20)))
    {
      v66 = 0x61646E6F6365732ELL;
    }

    else
    {
      v66 = 0x7972616D6972702ELL;
    }

    if (*(v58 + *(v136 + 20)))
    {
      v67 = 0xEA00000000007972;
    }

    else
    {
      v67 = 0xE800000000000000;
    }

    sub_100F3A500(v58, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v68 = sub_1000136BC(v66, v67, &v143);

    *(v60 + 34) = v68;
    *(v60 + 42) = 2160;
    *(v60 + 44) = 1752392040;
    *(v60 + 52) = 2081;
    v69 = sub_10001904C(*(v56 + 16), *(v56 + 24));
    v71 = v70;
    sub_100F3A500(v56, type metadata accessor for ObservedAdvertisement);
    v72 = sub_1000136BC(v69, v71, &v143);

    *(v60 + 54) = v72;
    _os_log_impl(&_mh_execute_header, log, v138, "Last observed beacon: %{private,mask.hash}s, index: %llu, sequence: %{public}s, advertisement: %{private,mask.hash}s.", v60, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    sub_100F3A500(*(v0 + 512), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

    sub_100F3A500(v58, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v57, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v56, type metadata accessor for ObservedAdvertisement);
  }

  v75 = *(v0 + 584);
  v76 = *(v0 + 528);
  v77 = *(v76 + *(*(v0 + 472) + 20));
  *(v0 + 1228) = v77;
  v78 = *(v0 + 656);
  if (*(v75 + 35))
  {
    v140 = v77;
    v79 = *(v0 + 608);
    sub_100F3A2F8(v76, *(v0 + 488), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A2F8(v78, v79, type metadata accessor for BeaconIdentifier);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.info.getter();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 608);
    if (v82)
    {
      v84 = *(v0 + 488);
      v85 = *(v0 + 472);
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v142 = v87;
      *v86 = 134218499;
      v88 = *(v84 + *(v85 + 24));
      sub_100F3A500(v84, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      *(v86 + 4) = v88;
      *(v86 + 12) = 2160;
      *(v86 + 14) = 1752392040;
      *(v86 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v89;
      v90._countAndFlagsBits = 47;
      v90._object = 0xE100000000000000;
      String.append(_:)(v90);
      v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v91);

      v92 = v143;
      v93 = v144;
      sub_100F3A500(v83, type metadata accessor for BeaconIdentifier);
      v94 = sub_1000136BC(v92, v93, &v142);

      *(v86 + 24) = v94;
      _os_log_impl(&_mh_execute_header, v80, v81, "Using last observed index %llu for beacon %{private,mask.hash}s", v86, 0x20u);
      sub_100007BAC(v87);
    }

    else
    {
      sub_100F3A500(*(v0 + 488), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

      sub_100F3A500(v83, type metadata accessor for BeaconIdentifier);
    }

    v113 = *(v0 + 824);
    v114 = *(v0 + 816);
    v115 = *(v0 + 792);
    v116 = *(v0 + 784);
    v117 = *(v0 + 776);
    v118 = *(v0 + 768);
    v139 = *(v0 + 760);
    v119 = *(v0 + 528);
    v120 = *(v0 + 472);
    sub_1000BC4D4(&qword_1016B3B28, &qword_1013D48D0);
    v121 = swift_allocObject();
    *(v0 + 1096) = v121;
    *(v121 + 16) = xmmword_101385D80;
    *&v122 = v114;
    *(&v122 + 1) = v113;
    *&v123 = v118;
    *(&v123 + 1) = v117;
    *(v0 + 32) = v123;
    *(v0 + 16) = v122;
    *(v0 + 48) = v116;
    *(v0 + 56) = v115;
    v124 = *(v119 + *(v120 + 24));
    *(v0 + 1104) = v124;
    sub_100017D5C(v114, v113);
    sub_100017D5C(v118, v117);
    sub_100017D5C(v116, v115);
    v125 = swift_task_alloc();
    *(v0 + 1112) = v125;
    *v125 = v0;
    v125[1] = sub_100F1C378;
    v126 = *(v0 + 656);

    return sub_100424C7C(v0 + 256, v126, v0 + 16, v0 + 160, v140, v124, v139, 4000);
  }

  else
  {
    v95 = *(v0 + 624);
    v96 = *(v75 + 34);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_101385D80;
    *(v97 + 56) = &type metadata for UInt8;
    *(v97 + 64) = &protocol witness table for UInt8;
    *(v97 + 32) = v96;
    v98 = String.init(format:_:)();
    v100 = v99;
    sub_100F3A2F8(v78, v95, type metadata accessor for BeaconIdentifier);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    v103 = os_log_type_enabled(v101, v102);
    v104 = *(v0 + 624);
    if (v103)
    {
      v105 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v105 = 136446723;
      v106 = sub_1000136BC(v98, v100, &v142);

      *(v105 + 4) = v106;
      *(v105 + 12) = 2160;
      *(v105 + 14) = 1752392040;
      *(v105 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v107;
      v108._countAndFlagsBits = 47;
      v108._object = 0xE100000000000000;
      String.append(_:)(v108);
      v109._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v109);

      v110 = v143;
      v111 = v144;
      sub_100F3A500(v104, type metadata accessor for BeaconIdentifier);
      v112 = sub_1000136BC(v110, v111, &v142);

      *(v105 + 24) = v112;
      _os_log_impl(&_mh_execute_header, v101, v102, "Hint %{public}s is available for %{private,mask.hash}s", v105, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100F3A500(v104, type metadata accessor for BeaconIdentifier);
    }

    v127 = *(v0 + 816);
    v128 = *(v0 + 792);
    v129 = *(v0 + 784);
    v141 = *(v0 + 768);
    v130 = *(v0 + 760);
    v131 = *(v0 + 528);
    v132 = *(v0 + 472);
    *(v0 + 80) = v141;
    *(v0 + 64) = v127;
    *(v0 + 96) = v129;
    *(v0 + 104) = v128;
    v133 = *(v131 + *(v132 + 24));
    *(v0 + 904) = v133;
    sub_100017D5C(v127, *(&v127 + 1));
    sub_100017D5C(v141, *(&v141 + 1));
    sub_100017D5C(v129, v128);
    v134 = swift_task_alloc();
    *(v0 + 912) = v134;
    *v134 = v0;
    v134[1] = sub_100F1ACE0;
    v135 = *(v0 + 656);

    return sub_100425600(v135, (v0 + 64), v77, v133, v96, v130, 4000);
  }
}

uint64_t sub_100F1ACE0(uint64_t a1)
{
  v4 = *v2;
  v4[115] = v1;

  v5 = v4[103];
  v6 = v4[102];
  v7 = v4[99];
  v8 = v4[98];
  v9 = v4[97];
  v10 = v4[96];
  if (v1)
  {
    sub_100016590(v6, v5);
    sub_100016590(v10, v9);
    sub_100016590(v8, v7);
    v11 = sub_100F3A930;
  }

  else
  {
    v4[116] = a1;
    sub_100016590(v6, v5);
    sub_100016590(v10, v9);
    sub_100016590(v8, v7);
    v11 = sub_100F1AEC4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100F1AEC4()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 1228);
  *(v0 + 944) = *(v0 + 928);
  *(v0 + 936) = v1;
  v3 = *(v0 + 816);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v10 = *(v0 + 768);
  v6 = *(v0 + 760);
  *(v0 + 112) = v3;
  *(v0 + 128) = v10;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  sub_100017D5C(v3, *(&v3 + 1));
  sub_100017D5C(v10, *(&v10 + 1));
  sub_100017D5C(v5, v4);
  v7 = swift_task_alloc();
  *(v0 + 952) = v7;
  *v7 = v0;
  v7[1] = sub_100F1AFF0;
  v8 = *(v0 + 656);

  return sub_100424C7C(v0 + 352, v8, v0 + 112, v0 + 160, v2, v1, v6, 4000);
}

uint64_t sub_100F1AFF0()
{
  v2 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v3 = v2[103];
    v4 = v2[102];
    v5 = v2[99];
    v6 = v2[98];
    v7 = v2[97];
    v8 = v2[96];
    sub_100016590(v4, v3);
    sub_100016590(v8, v7);
    sub_100016590(v6, v5);

    v9 = sub_100F3A934;
  }

  else
  {
    v9 = sub_100F1B154;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100F1B154()
{
  v1 = v0[118];
  v2 = v0[82];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 44;
  v0[121] = sub_1005C8110(sub_100F3A948, v3, v1);

  v4 = swift_task_alloc();
  v0[122] = v4;
  *v4 = v0;
  v4[1] = sub_100F1B248;
  v5 = v0[57];
  v6 = v0[52];

  return sub_100F2EA9C(v5, v6);
}

uint64_t sub_100F1B248()
{
  v2 = *v1;
  *(*v1 + 984) = v0;

  if (v0)
  {
    v3 = v2[103];
    v4 = v2[102];
    v5 = v2[99];
    v6 = v2[98];
    v7 = v2[97];
    v8 = v2[96];
    sub_100016590(v4, v3);
    sub_100016590(v8, v7);
    sub_100016590(v6, v5);

    v9 = sub_100F3A8E8;
  }

  else
  {
    v9 = sub_100F1B3B8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100F1B3B8()
{
  v98 = v0;
  v1 = *(v0 + 944);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 1228);
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    *(v0 + 992) = v4;
    v5 = *(v1 + 48);
    *(v0 + 1000) = v5;
    v6 = *(v1 + 56);
    *(v0 + 1008) = v6;
    v7 = *(v1 + 64);
    *(v0 + 1016) = v7;
    v8 = *(v1 + 72);
    *(v0 + 1024) = v8;
    sub_100017D5C(v5, v6);
    sub_100017D5C(v7, v8);

    if (v2)
    {
      v73 = *(v0 + 968);
      v79 = *(v0 + 864);
      v80 = *(v0 + 872);
      v77 = *(v0 + 848);
      v78 = *(v0 + 856);
      v75 = *(v0 + 832);
      v76 = *(v0 + 840);
      v86 = *(v0 + 824);
      v82 = *(v0 + 808);
      v84 = *(v0 + 816);
      v9 = *(v0 + 792);
      v10 = *(v0 + 784);
      v74 = v9;
      v11 = *(v0 + 776);
      v72 = v3;
      v12 = *(v0 + 768);
      v81 = *(v0 + 800);
      v91 = *(v0 + 528);
      v93 = *(v0 + 584);
      v89 = *(v0 + 456);
      sub_100016590(v84, v86);
      sub_100016590(v12, v11);
      sub_100016590(v10, v9);
      sub_1000BC4D4(&qword_1016B3B28, &qword_1013D48D0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_101385D80;
      *(v13 + 32) = v72;
      *&v14 = v4;
      *(&v14 + 1) = v5;
      *&v15 = v6;
      *(&v15 + 1) = v7;
      *(v13 + 56) = v15;
      *(v13 + 40) = v14;
      *(v13 + 72) = v8;
      v96 = v73;
      sub_100017D5C(v5, v6);
      sub_100017D5C(v7, v8);
      sub_10039A158(v13);

      sub_100F32E90(v75, v76, v77, v78, v79, v80, sub_100016590, sub_100016590);
      sub_100F39FE0(v0 + 352);
      sub_100F32E90(v12, v11, v10, v74, v81, v82, sub_100016590, sub_100006654);

      sub_100016590(v5, v6);
      sub_100016590(v7, v8);
      sub_100016590(v84, v86);
      sub_100016590(v12, v11);
      sub_100016590(v10, v74);
      sub_10000B3A8(v89, &unk_1016C8FC0, &unk_10139D7D0);
      sub_100F3A500(v91, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      sub_100F3A500(v93, type metadata accessor for ObservedAdvertisement);
      sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

      v16 = *(v0 + 8);

      return v16(v73);
    }

    v28 = *(v0 + 936);
    if (v28 >= **(v0 + 456))
    {
      goto LABEL_15;
    }

    if (static Date.> infix(_:_:)())
    {
      v28 = *(v0 + 936);
LABEL_15:
      if (v28)
      {
        v29 = v28 / 0x60 + 1;
      }

      else
      {
        v29 = 0;
      }

      v30 = *(v0 + 760);
      v31 = swift_task_alloc();
      *(v0 + 1056) = v31;
      *v31 = v0;
      v31[1] = sub_100F1C100;
      v32 = *(v0 + 656);

      return sub_100424C7C(v0 + 304, v32, v0 + 112, v0 + 160, 1, v29, v30, 4000);
    }

    v33 = *(v0 + 792);
    v34 = *(v0 + 784);
    v35 = *(v0 + 776);
    v36 = *(v0 + 768);
    v92 = *(v0 + 656);
    v90 = *(v0 + 616);
    v83 = *(v0 + 560);
    v85 = *(v0 + 584);
    v37 = *(v0 + 528);
    v38 = *(v0 + 496);
    v40 = *(v0 + 448);
    v39 = *(v0 + 456);
    v87 = *(v0 + 440);
    sub_100016590(*(v0 + 816), *(v0 + 824));
    sub_100016590(v36, v35);
    sub_100016590(v34, v33);

    sub_100F3A2F8(v37, v38, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_1000D2A70(v39, v40, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100F3A2F8(v85, v83, type metadata accessor for ObservedAdvertisement);
    sub_1000D2A70(v39, v87, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100F3A2F8(v92, v90, type metadata accessor for BeaconIdentifier);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 616);
    if (v43)
    {
      v45 = *(v0 + 560);
      v94 = v42;
      v46 = *(v0 + 496);
      v47 = *(v0 + 472);
      v48 = *(v0 + 448);
      v88 = *(v0 + 440);
      v49 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v49 = 134219267;
      v50 = *(v46 + *(v47 + 24));
      sub_100F3A500(v46, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      *(v49 + 4) = v50;
      *(v49 + 12) = 2080;
      v51 = *v48;
      v96 = 0x7972616D6972702ELL;
      v97 = 0xEA0000000000282FLL;
      *(v0 + 408) = v51;
      v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v52);

      v53._countAndFlagsBits = 41;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
      sub_10000B3A8(v48, &unk_1016C8FC0, &unk_10139D7D0);
      v54 = sub_1000136BC(v96, v97, &v95);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2082;
      type metadata accessor for Date();
      sub_100F3A180(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      sub_100F3A500(v45, type metadata accessor for ObservedAdvertisement);
      v58 = sub_1000136BC(v55, v57, &v95);

      *(v49 + 24) = v58;
      *(v49 + 32) = 2082;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      sub_10000B3A8(v88, &unk_1016C8FC0, &unk_10139D7D0);
      v62 = sub_1000136BC(v59, v61, &v95);

      *(v49 + 34) = v62;
      *(v49 + 42) = 2160;
      *(v49 + 44) = 1752392040;
      *(v49 + 52) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v63;
      v64._countAndFlagsBits = 47;
      v64._object = 0xE100000000000000;
      String.append(_:)(v64);
      v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v65);

      v66 = v96;
      v67 = v97;
      sub_100F3A500(v44, type metadata accessor for BeaconIdentifier);
      v68 = sub_1000136BC(v66, v67, &v95);

      *(v49 + 54) = v68;
      _os_log_impl(&_mh_execute_header, v41, v94, "Ignoring matched index %llu < lastObservedIndex %s, scanDate: %{public}s, lastObservedDate: %{public}s, for beacon %{private,mask.hash}s.", v49, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      v69 = *(v0 + 560);
      v71 = *(v0 + 440);
      v70 = *(v0 + 448);
      sub_100F3A500(*(v0 + 496), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

      sub_100F3A500(v44, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v71, &unk_1016C8FC0, &unk_10139D7D0);
      sub_100F3A500(v69, type metadata accessor for ObservedAdvertisement);
      sub_10000B3A8(v70, &unk_1016C8FC0, &unk_10139D7D0);
    }

    v25 = swift_task_alloc();
    *(v0 + 1072) = v25;
    *v25 = v0;
    v26 = sub_100F1C250;
  }

  else
  {
    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    v20 = *(v0 + 776);
    v21 = *(v0 + 768);
    sub_100016590(*(v0 + 816), *(v0 + 824));
    sub_100016590(v21, v20);
    sub_100016590(v19, v18);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "LTK keys should never be empty!", v24, 2u);
    }

    v25 = swift_task_alloc();
    *(v0 + 1032) = v25;
    *v25 = v0;
    v26 = sub_100F1BFD8;
  }

  v25[1] = v26;
  v27 = *(v0 + 416);

  return sub_100F2ABB4(v27, (v0 + 208), (v0 + 160));
}

uint64_t sub_100F1BFD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1040) = v1;

  if (v1)
  {
    v5 = sub_100F3A918;
  }

  else
  {
    *(v4 + 1048) = a1;
    v5 = sub_100F3A914;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F1C100()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v3 = sub_100F3A910;
  }

  else
  {
    v4 = v2[103];
    v5 = v2[102];
    v6 = v2[99];
    v7 = v2[98];
    v8 = v2[97];
    v9 = v2[96];
    sub_100016590(v5, v4);
    sub_100016590(v9, v8);
    sub_100016590(v7, v6);
    v3 = sub_100F3A8DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F1C250(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1080) = v1;

  if (v1)
  {
    v5 = sub_100F3A8FC;
  }

  else
  {
    *(v4 + 1088) = a1;
    v5 = sub_100F3A8F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F1C378()
{
  v2 = *v1;
  *(*v1 + 1120) = v0;

  v3 = v2[99];
  v4 = v2[98];
  v5 = v2[97];
  v6 = v2[96];
  sub_100016590(v2[102], v2[103]);
  sub_100016590(v6, v5);
  sub_100016590(v4, v3);
  if (v0)
  {
    v7 = sub_100F3A8E0;
  }

  else
  {
    v7 = sub_100F1C530;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F1C530()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 256);
  v3 = *(v0 + 288);
  v1[3] = *(v0 + 272);
  v1[4] = v3;
  v1[2] = v2;
  v4 = swift_task_alloc();
  *(v0 + 1128) = v4;
  *v4 = v0;
  v4[1] = sub_100F1C5D4;

  return daemon.getter();
}

uint64_t sub_100F1C5D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 1136) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1144) = v5;
  v6 = type metadata accessor for StandaloneBeaconService();
  v7 = sub_100F3A180(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v5 = v4;
  v5[1] = sub_100F1C788;
  v8 = *(v2 + 696);
  v9 = *(v2 + 688);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100F1C788(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 1152) = a1;
  *(v4 + 1160) = v1;

  if (v1)
  {

    v5 = sub_100F1C9A0;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 592);

    *(v4 + 1224) = *(v7 + 20);
    v5 = sub_100F1C8F8;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100F1C8F8()
{
  v1 = *(v0 + 1160);
  sub_100F856F4(*(v0 + 656) + *(v0 + 1224), *(v0 + 424));
  *(v0 + 1168) = v1;
  if (v1)
  {

    v2 = sub_100F3A900;
  }

  else
  {
    v2 = sub_100F1CACC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F1C9A0()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1228);
  *(v0 + 944) = *(v0 + 1096);
  *(v0 + 936) = v1;
  v3 = *(v0 + 816);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v10 = *(v0 + 768);
  v6 = *(v0 + 760);
  *(v0 + 112) = v3;
  *(v0 + 128) = v10;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  sub_100017D5C(v3, *(&v3 + 1));
  sub_100017D5C(v10, *(&v10 + 1));
  sub_100017D5C(v5, v4);
  v7 = swift_task_alloc();
  *(v0 + 952) = v7;
  *v7 = v0;
  v7[1] = sub_100F1AFF0;
  v8 = *(v0 + 656);

  return sub_100424C7C(v0 + 352, v8, v0 + 112, v0 + 160, v2, v1, v6, 4000);
}

uint64_t sub_100F1CACC()
{
  v50 = v0;
  v1 = *(v0 + 424);
  v2 = type metadata accessor for StandaloneBeacon(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

    sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
    v3 = *(v0 + 1104);
    v4 = *(v0 + 1228);
    *(v0 + 944) = *(v0 + 1096);
    *(v0 + 936) = v3;
    v5 = *(v0 + 816);
    v6 = *(v0 + 792);
    v7 = *(v0 + 784);
    v44 = *(v0 + 768);
    v8 = *(v0 + 760);
    *(v0 + 112) = v5;
    *(v0 + 128) = v44;
    *(v0 + 144) = v7;
    *(v0 + 152) = v6;
    sub_100017D5C(v5, *(&v5 + 1));
    sub_100017D5C(v44, *(&v44 + 1));
    sub_100017D5C(v7, v6);
    v9 = swift_task_alloc();
    *(v0 + 952) = v9;
    *v9 = v0;
    v9[1] = sub_100F1AFF0;
    v10 = *(v0 + 656);

    return sub_100424C7C(v0 + 352, v10, v0 + 112, v0 + 160, v4, v3, v8, 4000);
  }

  else
  {
    v12 = *(v0 + 656);
    v13 = *(v0 + 600);
    sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
    sub_100F3A2F8(v12, v13, type metadata accessor for BeaconIdentifier);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v39 = *(v0 + 872);
    v37 = *(v0 + 856);
    v38 = *(v0 + 864);
    v35 = *(v0 + 840);
    v36 = *(v0 + 848);
    v34 = *(v0 + 832);
    v17 = *(v0 + 824);
    v43 = *(v0 + 816);
    v41 = *(v0 + 808);
    v40 = *(v0 + 800);
    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    v45 = *(v0 + 776);
    v42 = *(v0 + 768);
    v20 = *(v0 + 600);
    if (v16)
    {
      v32 = *(v0 + 528);
      v33 = *(v0 + 584);
      v21 = swift_slowAlloc();
      v31 = v18;
      v22 = swift_slowAlloc();
      v47 = v22;
      *v21 = 141558275;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v23;
      v24._countAndFlagsBits = 47;
      v24._object = 0xE100000000000000;
      String.append(_:)(v24);
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      sub_100F3A500(v20, type metadata accessor for BeaconIdentifier);
      v26 = sub_1000136BC(v48, v49, &v47);

      *(v21 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "Skipping secondary keys for standalone beacon %{private,mask.hash}s", v21, 0x16u);
      sub_100007BAC(v22);

      sub_100F32E90(v34, v35, v36, v37, v38, v39, sub_100016590, sub_100016590);

      sub_100F32E90(v42, v45, v19, v31, v40, v41, sub_100016590, sub_100006654);

      sub_100016590(v43, v17);
      sub_100016590(v42, v45);
      sub_100016590(v19, v31);
      sub_100F3A500(v32, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v27 = v33;
    }

    else
    {
      v28 = *(v0 + 584);
      v29 = *(v0 + 528);

      sub_100F32E90(v34, v35, v36, v37, v38, v39, sub_100016590, sub_100016590);

      sub_100F32E90(v42, v45, v19, v18, v40, v41, sub_100016590, sub_100006654);

      sub_100016590(v43, v17);
      sub_100016590(v42, v45);
      sub_100016590(v19, v18);
      sub_100F3A500(v20, type metadata accessor for BeaconIdentifier);
      sub_100F3A500(v29, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v27 = v28;
    }

    sub_100F3A500(v27, type metadata accessor for ObservedAdvertisement);
    v46 = *(v0 + 1096);
    sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

    v30 = *(v0 + 8);

    return v30(v46);
  }
}

uint64_t sub_100F1D270(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1184) = v1;

  if (v1)
  {
    v5 = sub_100F3A920;
  }

  else
  {
    *(v4 + 1192) = a1;
    v5 = sub_100F3A91C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F1D398(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1208) = v1;

  if (v1)
  {
    v5 = sub_100F3A92C;
  }

  else
  {
    *(v4 + 1216) = a1;
    v5 = sub_100F3A928;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F1D4C0(uint64_t a1)
{
  v1[52] = a1;
  sub_1000BC4D4(&qword_1016B5CC0, &qword_1013D7370);
  v1[53] = swift_task_alloc();
  v1[54] = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v1[58] = swift_task_alloc();
  v2 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v1[59] = v2;
  v1[60] = *(v2 - 8);
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v1[67] = swift_task_alloc();
  v3 = type metadata accessor for ObservedAdvertisement(0);
  v1[68] = v3;
  v1[69] = *(v3 - 8);
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = type metadata accessor for BeaconIdentifier(0);
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();

  return _swift_task_switch(sub_100F1D7BC, 0, 0);
}

uint64_t sub_100F1D7BC()
{
  sub_100F3A2F8(v0[52], v0[82], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[83] = v1;
  *v1 = v0;
  v1[1] = sub_100F1D86C;

  return daemon.getter();
}

uint64_t sub_100F1D86C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[84] = a1;

  v3 = swift_task_alloc();
  v2[85] = v3;
  v4 = type metadata accessor for Daemon();
  v2[86] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[87] = v6;
  v7 = sub_100F3A180(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100F1DA4C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F1DA4C(uint64_t a1)
{
  v3 = *v2;
  v3[88] = a1;
  v3[89] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F1DEB4, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[90] = v4;
    *v4 = v3;
    v4[1] = sub_100F1DBC4;

    return daemon.getter();
  }
}

uint64_t sub_100F1DBC4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 728) = a1;

  v5 = swift_task_alloc();
  *(v3 + 736) = v5;
  v6 = type metadata accessor for BeaconKeyService();
  v7 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v5 = v4;
  v5[1] = sub_100F1DD78;
  v8 = *(v2 + 696);
  v9 = *(v2 + 688);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100F1DD78(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 744) = a1;
  *(v4 + 752) = v1;

  if (v1)
  {
    v5 = sub_100F1E804;
    v6 = 0;
  }

  else
  {

    v5 = sub_100F1E08C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100F1DEB4()
{

  sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F1E08C()
{
  v1 = *(*(v0 + 744) + 128);
  *(v0 + 760) = v1;
  if (v1)
  {

    v2 = sub_100F1E118;
  }

  else
  {
    v2 = sub_100F1E9E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F1E118()
{
  v40 = v0;
  v1 = *(v0 + 416);
  v2 = (v1 + *(type metadata accessor for KeyGenerationBeaconInfo(0) + 24));
  v3 = *v2;
  *(v0 + 768) = *v2;
  v4 = v2[1];
  *(v0 + 776) = v4;
  v5 = v2[2];
  *(v0 + 784) = v5;
  v6 = v2[3];
  *(v0 + 792) = v6;
  v7 = v2[4];
  *(v0 + 800) = v7;
  v8 = v2[5];
  *(v0 + 808) = v8;
  if (v4 >> 60 == 15)
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177B810);
    sub_100F3A2F8(v9, v10, type metadata accessor for BeaconIdentifier);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 648);
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v18;
      v19._countAndFlagsBits = 47;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      sub_100F3A500(v15, type metadata accessor for BeaconIdentifier);
      v21 = sub_1000136BC(v38, v39, &v36);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing keys from %{private,mask.hash}s", v16, 0x16u);
      sub_100007BAC(v17);
    }

    else
    {

      sub_100F3A500(v15, type metadata accessor for BeaconIdentifier);
    }

    sub_100F32E3C();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();

    sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

    v26 = *(v0 + 8);

    return v26();
  }

  sub_100F32E90(v3, v4, v5, v6, v7, v8, sub_100017D5C, sub_1002DBC68);
  sub_100017D5C(v3, v4);
  sub_10002EA98(57, v3, v4, &v38);
  sub_100496F68(v38, v39, &v36);
  v22 = v36;
  v23 = v37;
  *(v0 + 816) = v36;
  *(v0 + 824) = v23;
  if (v23 >> 60 == 15)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  *(v0 + 208) = v22;
  *(v0 + 216) = v23;
  *&v27 = v3;
  *(&v27 + 1) = v4;
  *&v28 = v5;
  *(&v28 + 1) = v6;
  *(v0 + 224) = v27;
  *(v0 + 240) = v28;
  if (v8 >> 60 == 15)
  {
    sub_100017D5C(v5, v6);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v7 = 0;
    v8 = 0;
    v32 = 0xF000000000000000;
  }

  else
  {
    sub_100017D5C(v3, v4);
    sub_100017D5C(v3, v4);
    sub_100017D5C(v5, v6);
    sub_10002E98C(v7, v8);
    sub_10002EA98(57, v3, v4, &v38);
    sub_100496F68(v38, v39, &v36);
    v32 = v37;
    if (v37 >> 60 == 15)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v29 = v36;
    v30 = v3;
    v31 = v4;
  }

  *(v0 + 872) = v8;
  *(v0 + 864) = v7;
  *(v0 + 856) = v31;
  *(v0 + 848) = v30;
  *(v0 + 840) = v32;
  *(v0 + 832) = v29;
  *(v0 + 160) = v29;
  *(v0 + 168) = v32;
  *(v0 + 176) = v30;
  *(v0 + 184) = v31;
  *(v0 + 192) = v7;
  *(v0 + 200) = v8;
  sub_100017D5C(v3, v4);
  v33 = swift_task_alloc();
  *(v0 + 880) = v33;
  *v33 = v0;
  v33[1] = sub_100F1ECAC;
  v34 = *(v0 + 656);
  v35 = *(v0 + 536);

  return sub_1010CD810(v35, v34);
}

uint64_t sub_100F1E804()
{

  sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F1E9E8()
{
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B810);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing LTKGenerator!", v4, 2u);
  }

  sub_100F32E3C();
  swift_allocError();
  *v5 = 1;
  swift_willThrow();

  sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100F1ECAC()
{
  *(*v1 + 888) = v0;

  if (v0)
  {
    v2 = sub_100F1FFD4;
  }

  else
  {
    v2 = sub_100F1EDC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F1EDC0()
{
  v145 = v0;
  v1 = *(v0 + 536);
  if ((*(*(v0 + 552) + 48))(v1, 1, *(v0 + 544)) == 1)
  {
    sub_10000B3A8(v1, &unk_10169BB50, &unk_101395760);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 656);
    v3 = *(v0 + 640);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B810);
    sub_100F3A2F8(v2, v3, type metadata accessor for BeaconIdentifier);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 640);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v142 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v11;
      v12._countAndFlagsBits = 47;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
      v14 = sub_1000136BC(v143, v144, &v142);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "No observed advertisement for beacon %{private,mask.hash}s.", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    }

    v28 = swift_task_alloc();
    *(v0 + 1200) = v28;
    *v28 = v0;
    v29 = sub_100F2566C;
    goto LABEL_26;
  }

  sub_100F3A498(v1, *(v0 + 584), type metadata accessor for ObservedAdvertisement);
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 584);
  v16 = *(v0 + 576);
  v17 = type metadata accessor for Logger();
  *(v0 + 896) = sub_1000076D4(v17, qword_10177B810);
  sub_100F3A2F8(v15, v16, type metadata accessor for ObservedAdvertisement);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 576);
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v143 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v24 = sub_100018680();
    v26 = v25;
    sub_100F3A500(v21, type metadata accessor for ObservedAdvertisement);
    v27 = sub_1000136BC(v24, v26, &v143);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Found observed advertisement %{private,mask.hash}s.", v22, 0x16u);
    sub_100007BAC(v23);
  }

  else
  {

    sub_100F3A500(v21, type metadata accessor for ObservedAdvertisement);
  }

  v30 = *(v0 + 472);
  v31 = *(v0 + 480);
  v32 = *(v0 + 464);
  sub_1000D2A70(*(v0 + 584) + *(*(v0 + 544) + 52), v32, &qword_101699DB0, &unk_101393100);
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    v33 = *(v0 + 656);
    v34 = *(v0 + 632);
    sub_10000B3A8(*(v0 + 464), &qword_101699DB0, &unk_101393100);
    sub_100F3A2F8(v33, v34, type metadata accessor for BeaconIdentifier);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 632);
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v142 = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v41;
      v42._countAndFlagsBits = 47;
      v42._object = 0xE100000000000000;
      String.append(_:)(v42);
      v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v43);

      v44 = v143;
      v45 = v144;
      sub_100F3A500(v38, type metadata accessor for BeaconIdentifier);
      v46 = sub_1000136BC(v44, v45, &v142);

      *(v39 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v35, v36, "Missing beaconIndexInformation for %{private,mask.hash}s!", v39, 0x16u);
      sub_100007BAC(v40);
    }

    else
    {

      sub_100F3A500(v38, type metadata accessor for BeaconIdentifier);
    }

    v28 = swift_task_alloc();
    *(v0 + 1176) = v28;
    *v28 = v0;
    v29 = sub_100F24F58;
LABEL_26:
    v28[1] = v29;
    v73 = *(v0 + 416);

    return sub_100F2C5D8(v73, (v0 + 208), (v0 + 160));
  }

  v47 = *(v0 + 584);
  v48 = *(v0 + 568);
  v49 = *(v0 + 528);
  v50 = *(v0 + 520);
  v52 = *(v0 + 504);
  v51 = *(v0 + 512);
  sub_100F3A498(*(v0 + 464), v49, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v49, v50, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v49, v51, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v49, v52, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A2F8(v47, v48, type metadata accessor for ObservedAdvertisement);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 568);
  v57 = *(v0 + 520);
  v58 = *(v0 + 504);
  v59 = *(v0 + 512);
  if (v55)
  {
    v136 = *(v0 + 472);
    v60 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *v60 = 141559299;
    *(v60 + 4) = 1752392040;
    *(v60 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v138 = v54;
    v63 = v62;
    log = v53;
    sub_100F3A500(v57, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v64 = sub_1000136BC(v61, v63, &v143);

    *(v60 + 14) = v64;
    *(v60 + 22) = 2048;
    v65 = *(v59 + *(v136 + 24));
    sub_100F3A500(v59, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    *(v60 + 24) = v65;
    *(v60 + 32) = 2082;
    if (*(v58 + *(v136 + 20)))
    {
      v66 = 0x61646E6F6365732ELL;
    }

    else
    {
      v66 = 0x7972616D6972702ELL;
    }

    if (*(v58 + *(v136 + 20)))
    {
      v67 = 0xEA00000000007972;
    }

    else
    {
      v67 = 0xE800000000000000;
    }

    sub_100F3A500(v58, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v68 = sub_1000136BC(v66, v67, &v143);

    *(v60 + 34) = v68;
    *(v60 + 42) = 2160;
    *(v60 + 44) = 1752392040;
    *(v60 + 52) = 2081;
    v69 = sub_10001904C(*(v56 + 16), *(v56 + 24));
    v71 = v70;
    sub_100F3A500(v56, type metadata accessor for ObservedAdvertisement);
    v72 = sub_1000136BC(v69, v71, &v143);

    *(v60 + 54) = v72;
    _os_log_impl(&_mh_execute_header, log, v138, "Last observed beacon: %{private,mask.hash}s, index: %llu, sequence: %{public}s, advertisement: %{private,mask.hash}s.", v60, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    sub_100F3A500(*(v0 + 512), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

    sub_100F3A500(v58, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v57, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v56, type metadata accessor for ObservedAdvertisement);
  }

  v75 = *(v0 + 584);
  v76 = *(v0 + 528);
  v77 = *(v76 + *(*(v0 + 472) + 20));
  *(v0 + 1228) = v77;
  v78 = *(v0 + 656);
  if (*(v75 + 35))
  {
    v140 = v77;
    v79 = *(v0 + 608);
    sub_100F3A2F8(v76, *(v0 + 488), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A2F8(v78, v79, type metadata accessor for BeaconIdentifier);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.info.getter();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 608);
    if (v82)
    {
      v84 = *(v0 + 488);
      v85 = *(v0 + 472);
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v142 = v87;
      *v86 = 134218499;
      v88 = *(v84 + *(v85 + 24));
      sub_100F3A500(v84, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      *(v86 + 4) = v88;
      *(v86 + 12) = 2160;
      *(v86 + 14) = 1752392040;
      *(v86 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v89;
      v90._countAndFlagsBits = 47;
      v90._object = 0xE100000000000000;
      String.append(_:)(v90);
      v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v91);

      v92 = v143;
      v93 = v144;
      sub_100F3A500(v83, type metadata accessor for BeaconIdentifier);
      v94 = sub_1000136BC(v92, v93, &v142);

      *(v86 + 24) = v94;
      _os_log_impl(&_mh_execute_header, v80, v81, "Using last observed index %llu for beacon %{private,mask.hash}s", v86, 0x20u);
      sub_100007BAC(v87);
    }

    else
    {
      sub_100F3A500(*(v0 + 488), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

      sub_100F3A500(v83, type metadata accessor for BeaconIdentifier);
    }

    v113 = *(v0 + 824);
    v114 = *(v0 + 816);
    v115 = *(v0 + 792);
    v116 = *(v0 + 784);
    v117 = *(v0 + 776);
    v118 = *(v0 + 768);
    v139 = *(v0 + 760);
    v119 = *(v0 + 528);
    v120 = *(v0 + 472);
    sub_1000BC4D4(&qword_1016B3B28, &qword_1013D48D0);
    v121 = swift_allocObject();
    *(v0 + 1096) = v121;
    *(v121 + 16) = xmmword_101385D80;
    *&v122 = v114;
    *(&v122 + 1) = v113;
    *&v123 = v118;
    *(&v123 + 1) = v117;
    *(v0 + 32) = v123;
    *(v0 + 16) = v122;
    *(v0 + 48) = v116;
    *(v0 + 56) = v115;
    v124 = *(v119 + *(v120 + 24));
    *(v0 + 1104) = v124;
    sub_100017D5C(v114, v113);
    sub_100017D5C(v118, v117);
    sub_100017D5C(v116, v115);
    v125 = swift_task_alloc();
    *(v0 + 1112) = v125;
    *v125 = v0;
    v125[1] = sub_100F23A10;
    v126 = *(v0 + 656);

    return sub_100424C7C(v0 + 256, v126, v0 + 16, v0 + 160, v140, v124, v139, 4000);
  }

  else
  {
    v95 = *(v0 + 624);
    v96 = *(v75 + 34);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_101385D80;
    *(v97 + 56) = &type metadata for UInt8;
    *(v97 + 64) = &protocol witness table for UInt8;
    *(v97 + 32) = v96;
    v98 = String.init(format:_:)();
    v100 = v99;
    sub_100F3A2F8(v78, v95, type metadata accessor for BeaconIdentifier);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.info.getter();
    v103 = os_log_type_enabled(v101, v102);
    v104 = *(v0 + 624);
    if (v103)
    {
      v105 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v105 = 136446723;
      v106 = sub_1000136BC(v98, v100, &v142);

      *(v105 + 4) = v106;
      *(v105 + 12) = 2160;
      *(v105 + 14) = 1752392040;
      *(v105 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v107;
      v108._countAndFlagsBits = 47;
      v108._object = 0xE100000000000000;
      String.append(_:)(v108);
      v109._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v109);

      v110 = v143;
      v111 = v144;
      sub_100F3A500(v104, type metadata accessor for BeaconIdentifier);
      v112 = sub_1000136BC(v110, v111, &v142);

      *(v105 + 24) = v112;
      _os_log_impl(&_mh_execute_header, v101, v102, "Hint %{public}s is available for %{private,mask.hash}s", v105, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100F3A500(v104, type metadata accessor for BeaconIdentifier);
    }

    v127 = *(v0 + 816);
    v128 = *(v0 + 792);
    v129 = *(v0 + 784);
    v141 = *(v0 + 768);
    v130 = *(v0 + 760);
    v131 = *(v0 + 528);
    v132 = *(v0 + 472);
    *(v0 + 80) = v141;
    *(v0 + 64) = v127;
    *(v0 + 96) = v129;
    *(v0 + 104) = v128;
    v133 = *(v131 + *(v132 + 24));
    *(v0 + 904) = v133;
    sub_100017D5C(v127, *(&v127 + 1));
    sub_100017D5C(v141, *(&v141 + 1));
    sub_100017D5C(v129, v128);
    v134 = swift_task_alloc();
    *(v0 + 912) = v134;
    *v134 = v0;
    v134[1] = sub_100F202A0;
    v135 = *(v0 + 656);

    return sub_100425600(v135, (v0 + 64), v77, v133, v96, v130, 4000);
  }
}

uint64_t sub_100F1FFD4()
{
  v13 = v0[108];
  v14 = v0[109];
  v12 = v0[107];
  v10 = v0[105];
  v11 = v0[106];
  v9 = v0[104];
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  sub_100016590(v0[102], v0[103]);
  sub_100016590(v6, v5);
  sub_100016590(v4, v3);

  sub_100F32E90(v6, v5, v4, v3, v2, v1, sub_100016590, sub_100006654);

  sub_100F32E90(v9, v10, v11, v12, v13, v14, sub_100016590, sub_100016590);
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F202A0(uint64_t a1)
{
  v4 = *v2;
  v4[115] = v1;

  v5 = v4[103];
  v6 = v4[102];
  v7 = v4[99];
  v8 = v4[98];
  v9 = v4[97];
  v10 = v4[96];
  if (v1)
  {
    sub_100016590(v6, v5);
    sub_100016590(v10, v9);
    sub_100016590(v8, v7);
    v11 = sub_100F205B0;
  }

  else
  {
    v4[116] = a1;
    sub_100016590(v6, v5);
    sub_100016590(v10, v9);
    sub_100016590(v8, v7);
    v11 = sub_100F20484;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100F20484()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 1228);
  *(v0 + 944) = *(v0 + 928);
  *(v0 + 936) = v1;
  v3 = *(v0 + 816);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v10 = *(v0 + 768);
  v6 = *(v0 + 760);
  *(v0 + 112) = v3;
  *(v0 + 128) = v10;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  sub_100017D5C(v3, *(&v3 + 1));
  sub_100017D5C(v10, *(&v10 + 1));
  sub_100017D5C(v5, v4);
  v7 = swift_task_alloc();
  *(v0 + 952) = v7;
  *v7 = v0;
  v7[1] = sub_100F208C8;
  v8 = *(v0 + 656);

  return sub_100424C7C(v0 + 352, v8, v0 + 112, v0 + 160, v2, v1, v6, 4000);
}

uint64_t sub_100F205B0()
{
  v11 = v0[108];
  v12 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v16 = v0[103];
  v14 = v0[101];
  v15 = v0[102];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v13 = v0[100];
  v17 = v0[66];
  v18 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v11, v12, sub_100016590, sub_100016590);
  sub_100F32E90(v8, v7, v6, v5, v13, v14, sub_100016590, sub_100006654);

  sub_100016590(v15, v16);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v17, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v18, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F208C8()
{
  v2 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v3 = v2[103];
    v4 = v2[102];
    v5 = v2[99];
    v6 = v2[98];
    v7 = v2[97];
    v8 = v2[96];
    sub_100016590(v4, v3);
    sub_100016590(v8, v7);
    sub_100016590(v6, v5);

    v9 = sub_100F20C90;
  }

  else
  {
    v9 = sub_100F20A2C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100F20A2C()
{
  v1 = v0[118];
  v2 = v0[82];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 44;
  v0[121] = sub_1005C8110(sub_100F39FC4, v3, v1);

  v4 = swift_task_alloc();
  v0[122] = v4;
  *v4 = v0;
  v4[1] = sub_100F20B20;
  v5 = v0[57];
  v6 = v0[52];

  return sub_100F2FA04(v5, v6);
}

uint64_t sub_100F20B20()
{
  v2 = *v1;
  *(*v1 + 984) = v0;

  if (v0)
  {
    v3 = v2[103];
    v4 = v2[102];
    v5 = v2[99];
    v6 = v2[98];
    v7 = v2[97];
    v8 = v2[96];
    sub_100016590(v4, v3);
    sub_100016590(v8, v7);
    sub_100016590(v6, v5);

    v9 = sub_100F21BC8;
  }

  else
  {
    v9 = sub_100F20FA8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100F20C90()
{
  v11 = v0[108];
  v12 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v16 = v0[103];
  v14 = v0[101];
  v15 = v0[102];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v13 = v0[100];
  v17 = v0[66];
  v18 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v11, v12, sub_100016590, sub_100016590);
  sub_100F32E90(v8, v7, v6, v5, v13, v14, sub_100016590, sub_100006654);

  sub_100016590(v15, v16);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v17, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v18, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F20FA8()
{
  v98 = v0;
  v1 = *(v0 + 944);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 1228);
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    *(v0 + 992) = v4;
    v5 = *(v1 + 48);
    *(v0 + 1000) = v5;
    v6 = *(v1 + 56);
    *(v0 + 1008) = v6;
    v7 = *(v1 + 64);
    *(v0 + 1016) = v7;
    v8 = *(v1 + 72);
    *(v0 + 1024) = v8;
    sub_100017D5C(v5, v6);
    sub_100017D5C(v7, v8);

    if (v2)
    {
      v73 = *(v0 + 968);
      v79 = *(v0 + 864);
      v80 = *(v0 + 872);
      v77 = *(v0 + 848);
      v78 = *(v0 + 856);
      v75 = *(v0 + 832);
      v76 = *(v0 + 840);
      v86 = *(v0 + 824);
      v82 = *(v0 + 808);
      v84 = *(v0 + 816);
      v9 = *(v0 + 792);
      v10 = *(v0 + 784);
      v74 = v9;
      v11 = *(v0 + 776);
      v72 = v3;
      v12 = *(v0 + 768);
      v81 = *(v0 + 800);
      v91 = *(v0 + 528);
      v93 = *(v0 + 584);
      v89 = *(v0 + 456);
      sub_100016590(v84, v86);
      sub_100016590(v12, v11);
      sub_100016590(v10, v9);
      sub_1000BC4D4(&qword_1016B3B28, &qword_1013D48D0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_101385D80;
      *(v13 + 32) = v72;
      *&v14 = v4;
      *(&v14 + 1) = v5;
      *&v15 = v6;
      *(&v15 + 1) = v7;
      *(v13 + 56) = v15;
      *(v13 + 40) = v14;
      *(v13 + 72) = v8;
      v96 = v73;
      sub_100017D5C(v5, v6);
      sub_100017D5C(v7, v8);
      sub_10039A158(v13);

      sub_100F32E90(v75, v76, v77, v78, v79, v80, sub_100016590, sub_100016590);
      sub_100F39FE0(v0 + 352);
      sub_100F32E90(v12, v11, v10, v74, v81, v82, sub_100016590, sub_100006654);

      sub_100016590(v5, v6);
      sub_100016590(v7, v8);
      sub_100016590(v84, v86);
      sub_100016590(v12, v11);
      sub_100016590(v10, v74);
      sub_10000B3A8(v89, &unk_1016C8FC0, &unk_10139D7D0);
      sub_100F3A500(v91, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      sub_100F3A500(v93, type metadata accessor for ObservedAdvertisement);
      sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

      v16 = *(v0 + 8);

      return v16(v73);
    }

    v28 = *(v0 + 936);
    if (v28 >= **(v0 + 456))
    {
      goto LABEL_15;
    }

    if (static Date.> infix(_:_:)())
    {
      v28 = *(v0 + 936);
LABEL_15:
      if (v28)
      {
        v29 = v28 / 0x60 + 1;
      }

      else
      {
        v29 = 0;
      }

      v30 = *(v0 + 760);
      v31 = swift_task_alloc();
      *(v0 + 1056) = v31;
      *v31 = v0;
      v31[1] = sub_100F2268C;
      v32 = *(v0 + 656);

      return sub_100424C7C(v0 + 304, v32, v0 + 112, v0 + 160, 1, v29, v30, 4000);
    }

    v33 = *(v0 + 792);
    v34 = *(v0 + 784);
    v35 = *(v0 + 776);
    v36 = *(v0 + 768);
    v92 = *(v0 + 656);
    v90 = *(v0 + 616);
    v83 = *(v0 + 560);
    v85 = *(v0 + 584);
    v37 = *(v0 + 528);
    v38 = *(v0 + 496);
    v40 = *(v0 + 448);
    v39 = *(v0 + 456);
    v87 = *(v0 + 440);
    sub_100016590(*(v0 + 816), *(v0 + 824));
    sub_100016590(v36, v35);
    sub_100016590(v34, v33);

    sub_100F3A2F8(v37, v38, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_1000D2A70(v39, v40, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100F3A2F8(v85, v83, type metadata accessor for ObservedAdvertisement);
    sub_1000D2A70(v39, v87, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100F3A2F8(v92, v90, type metadata accessor for BeaconIdentifier);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 616);
    if (v43)
    {
      v45 = *(v0 + 560);
      v94 = v42;
      v46 = *(v0 + 496);
      v47 = *(v0 + 472);
      v48 = *(v0 + 448);
      v88 = *(v0 + 440);
      v49 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v49 = 134219267;
      v50 = *(v46 + *(v47 + 24));
      sub_100F3A500(v46, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      *(v49 + 4) = v50;
      *(v49 + 12) = 2080;
      v51 = *v48;
      v96 = 0x7972616D6972702ELL;
      v97 = 0xEA0000000000282FLL;
      *(v0 + 408) = v51;
      v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v52);

      v53._countAndFlagsBits = 41;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
      sub_10000B3A8(v48, &unk_1016C8FC0, &unk_10139D7D0);
      v54 = sub_1000136BC(v96, v97, &v95);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2082;
      type metadata accessor for Date();
      sub_100F3A180(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      sub_100F3A500(v45, type metadata accessor for ObservedAdvertisement);
      v58 = sub_1000136BC(v55, v57, &v95);

      *(v49 + 24) = v58;
      *(v49 + 32) = 2082;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      sub_10000B3A8(v88, &unk_1016C8FC0, &unk_10139D7D0);
      v62 = sub_1000136BC(v59, v61, &v95);

      *(v49 + 34) = v62;
      *(v49 + 42) = 2160;
      *(v49 + 44) = 1752392040;
      *(v49 + 52) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v63;
      v64._countAndFlagsBits = 47;
      v64._object = 0xE100000000000000;
      String.append(_:)(v64);
      v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v65);

      v66 = v96;
      v67 = v97;
      sub_100F3A500(v44, type metadata accessor for BeaconIdentifier);
      v68 = sub_1000136BC(v66, v67, &v95);

      *(v49 + 54) = v68;
      _os_log_impl(&_mh_execute_header, v41, v94, "Ignoring matched index %llu < lastObservedIndex %s, scanDate: %{public}s, lastObservedDate: %{public}s, for beacon %{private,mask.hash}s.", v49, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      v69 = *(v0 + 560);
      v71 = *(v0 + 440);
      v70 = *(v0 + 448);
      sub_100F3A500(*(v0 + 496), type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);

      sub_100F3A500(v44, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v71, &unk_1016C8FC0, &unk_10139D7D0);
      sub_100F3A500(v69, type metadata accessor for ObservedAdvertisement);
      sub_10000B3A8(v70, &unk_1016C8FC0, &unk_10139D7D0);
    }

    v25 = swift_task_alloc();
    *(v0 + 1072) = v25;
    *v25 = v0;
    v26 = sub_100F231FC;
  }

  else
  {
    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    v20 = *(v0 + 776);
    v21 = *(v0 + 768);
    sub_100016590(*(v0 + 816), *(v0 + 824));
    sub_100016590(v21, v20);
    sub_100016590(v19, v18);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "LTK keys should never be empty!", v24, 2u);
    }

    v25 = swift_task_alloc();
    *(v0 + 1032) = v25;
    *v25 = v0;
    v26 = sub_100F21EE8;
  }

  v25[1] = v26;
  v27 = *(v0 + 416);

  return sub_100F2C5D8(v27, (v0 + 208), (v0 + 160));
}

uint64_t sub_100F21BC8()
{
  v11 = v0[108];
  v12 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v16 = v0[103];
  v14 = v0[101];
  v15 = v0[102];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v13 = v0[100];
  v17 = v0[66];
  v18 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v11, v12, sub_100016590, sub_100016590);
  sub_100F39FE0((v0 + 44));
  sub_100F32E90(v8, v7, v6, v5, v13, v14, sub_100016590, sub_100006654);

  sub_100016590(v15, v16);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v17, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v18, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F21EE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1040) = v1;

  if (v1)
  {
    v5 = sub_100F22350;
  }

  else
  {
    *(v4 + 1048) = a1;
    v5 = sub_100F22010;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F22010()
{
  v11 = v0[108];
  v12 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v15 = v0[102];
  v16 = v0[103];
  v13 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v14 = v0[101];
  v18 = v0[66];
  v19 = v0[73];
  v17 = v0[57];

  sub_100F32E90(v4, v3, v2, v1, v11, v12, sub_100016590, sub_100016590);
  sub_100F39FE0((v0 + 44));
  sub_100F32E90(v8, v7, v6, v5, v13, v14, sub_100016590, sub_100006654);

  sub_100016590(v15, v16);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_10000B3A8(v17, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v18, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v19, type metadata accessor for ObservedAdvertisement);
  v20 = v0[131];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9(v20);
}

uint64_t sub_100F22350()
{
  v11 = v0[108];
  v12 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v15 = v0[102];
  v16 = v0[103];
  v13 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v14 = v0[101];
  v18 = v0[66];
  v19 = v0[73];
  v17 = v0[57];

  sub_100F32E90(v4, v3, v2, v1, v11, v12, sub_100016590, sub_100016590);
  sub_100F39FE0((v0 + 44));
  sub_100F32E90(v8, v7, v6, v5, v13, v14, sub_100016590, sub_100006654);

  sub_100016590(v15, v16);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_10000B3A8(v17, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v18, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v19, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F2268C()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v3 = sub_100F22BD0;
  }

  else
  {
    v4 = v2[103];
    v5 = v2[102];
    v6 = v2[99];
    v7 = v2[98];
    v8 = v2[97];
    v9 = v2[96];
    sub_100016590(v5, v4);
    sub_100016590(v9, v8);
    sub_100016590(v7, v6);
    v3 = sub_100F227DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F227DC()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[124];
  v4 = v0[121];
  v16 = v0[108];
  v17 = v0[109];
  v14 = v0[106];
  v15 = v0[107];
  v12 = v0[104];
  v13 = v0[105];
  v24 = v0[103];
  v25 = v0[126];
  v22 = v0[102];
  v23 = v0[125];
  v19 = v0[99];
  v20 = v0[100];
  v18 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  v21 = v0[101];
  v27 = v0[66];
  v28 = v0[73];
  v26 = v0[57];
  sub_1000BC4D4(&qword_1016B3B28, &qword_1013D48D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = v0[40];
  v9 = v0[41];
  *(v7 + 32) = 1;
  *(v7 + 40) = v3;
  *(v7 + 48) = v8;
  *(v7 + 56) = v9;
  *(v7 + 64) = v2;
  *(v7 + 72) = v1;
  sub_100017D5C(v8, v9);
  sub_100017D5C(v2, v1);
  sub_10039A158(v7);

  sub_100F32E90(v12, v13, v14, v15, v16, v17, sub_100016590, sub_100016590);
  sub_100F39FE0((v0 + 44));
  sub_100F39FE0((v0 + 38));
  sub_100F32E90(v6, v5, v18, v19, v20, v21, sub_100016590, sub_100006654);

  sub_100016590(v23, v25);
  sub_100016590(v2, v1);
  sub_100016590(v22, v24);
  sub_100016590(v6, v5);
  sub_100016590(v18, v19);
  sub_10000B3A8(v26, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v27, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v28, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v10 = v0[1];

  return v10(v4);
}

uint64_t sub_100F22BD0()
{
  v58 = v0;
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  sub_100016590(v0[102], v0[103]);
  sub_100016590(v4, v3);
  sub_100016590(v2, v1);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[133];
    v50 = v0[127];
    v52 = v0[128];
    v28 = v0[108];
    v29 = v0[109];
    v26 = v0[106];
    v27 = v0[107];
    v24 = v0[104];
    v25 = v0[105];
    v45 = v0[126];
    v47 = v0[103];
    v42 = v0[125];
    v43 = v0[102];
    v36 = v0[99];
    v38 = v0[100];
    v32 = v0[97];
    v34 = v0[98];
    v30 = v0[96];
    v40 = v0[101];
    v54 = v0[66];
    v55 = v0[73];
    v49 = v0[57];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v57 = v9;
    *v8 = 136446210;
    v0[50] = v7;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000136BC(v10, v11, &v57);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to generate secondary keys due to: %{public}s", v8, 0xCu);
    sub_100007BAC(v9);

    sub_100F32E90(v24, v25, v26, v27, v28, v29, sub_100016590, sub_100016590);
    sub_100F39FE0((v0 + 44));

    v13 = v36;
    sub_100F32E90(v30, v32, v34, v36, v38, v40, sub_100016590, sub_100006654);

    sub_100016590(v42, v45);
    sub_100016590(v50, v52);
    sub_100016590(v43, v47);
    sub_100016590(v30, v32);
    v14 = v34;
  }

  else
  {
    v51 = v0[127];
    v53 = v0[128];
    v31 = v0[108];
    v33 = v0[109];
    v15 = v0[107];
    v16 = v0[106];
    v17 = v0[105];
    v18 = v0[104];
    v46 = v0[126];
    v48 = v0[103];
    v44 = v0[102];
    v39 = v0[101];
    v41 = v0[125];
    v35 = v5;
    v37 = v0[100];
    v13 = v0[99];
    v19 = v0[98];
    v20 = v0[97];
    v21 = v0[96];
    v54 = v0[66];
    v55 = v0[73];
    v49 = v0[57];

    sub_100F32E90(v18, v17, v16, v15, v31, v33, sub_100016590, sub_100016590);
    sub_100F39FE0((v0 + 44));

    sub_100F32E90(v21, v20, v19, v13, v37, v39, sub_100016590, sub_100006654);

    sub_100016590(v41, v46);
    sub_100016590(v51, v53);
    sub_100016590(v44, v48);
    sub_100016590(v21, v20);
    v14 = v19;
  }

  sub_100016590(v14, v13);
  sub_10000B3A8(v49, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v54, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v55, type metadata accessor for ObservedAdvertisement);
  v56 = v0[121];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v22 = v0[1];

  return v22(v56);
}

uint64_t sub_100F231FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1080) = v1;

  if (v1)
  {
    v5 = sub_100F2369C;
  }

  else
  {
    *(v4 + 1088) = a1;
    v5 = sub_100F23324;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F23324()
{
  v21 = v0[128];
  v20 = v0[127];
  v11 = v0[108];
  v12 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v17 = v0[126];
  v18 = v0[103];
  v15 = v0[125];
  v16 = v0[102];
  v13 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v14 = v0[101];
  v22 = v0[66];
  v23 = v0[73];
  v19 = v0[57];

  sub_100F32E90(v4, v3, v2, v1, v11, v12, sub_100016590, sub_100016590);
  sub_100F39FE0((v0 + 44));
  sub_100F32E90(v8, v7, v6, v5, v13, v14, sub_100016590, sub_100006654);

  sub_100016590(v15, v17);
  sub_100016590(v20, v21);
  sub_100016590(v16, v18);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_10000B3A8(v19, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v22, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v23, type metadata accessor for ObservedAdvertisement);
  v24 = v0[136];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9(v24);
}

uint64_t sub_100F2369C()
{
  v21 = v0[128];
  v20 = v0[127];
  v11 = v0[108];
  v12 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v17 = v0[126];
  v18 = v0[103];
  v15 = v0[125];
  v16 = v0[102];
  v13 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v14 = v0[101];
  v22 = v0[66];
  v23 = v0[73];
  v19 = v0[57];

  sub_100F32E90(v4, v3, v2, v1, v11, v12, sub_100016590, sub_100016590);
  sub_100F39FE0((v0 + 44));
  sub_100F32E90(v8, v7, v6, v5, v13, v14, sub_100016590, sub_100006654);

  sub_100016590(v15, v17);
  sub_100016590(v20, v21);
  sub_100016590(v16, v18);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_10000B3A8(v19, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v22, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v23, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F23A10()
{
  v2 = *v1;
  *(*v1 + 1120) = v0;

  v3 = v2[99];
  v4 = v2[98];
  v5 = v2[97];
  v6 = v2[96];
  sub_100016590(v2[102], v2[103]);
  sub_100016590(v6, v5);
  sub_100016590(v4, v3);
  if (v0)
  {
    v7 = sub_100F23F90;
  }

  else
  {
    v7 = sub_100F23BC8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F23BC8()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 256);
  v3 = *(v0 + 288);
  v1[3] = *(v0 + 272);
  v1[4] = v3;
  v1[2] = v2;
  v4 = swift_task_alloc();
  *(v0 + 1128) = v4;
  *v4 = v0;
  v4[1] = sub_100F23C6C;

  return daemon.getter();
}

uint64_t sub_100F23C6C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 1136) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1144) = v5;
  v6 = type metadata accessor for StandaloneBeaconService();
  v7 = sub_100F3A180(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v5 = v4;
  v5[1] = sub_100F23E20;
  v8 = *(v2 + 696);
  v9 = *(v2 + 688);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100F23E20(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 1152) = a1;
  *(v4 + 1160) = v1;

  if (v1)
  {

    v5 = sub_100F24360;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 592);

    *(v4 + 1224) = *(v7 + 20);
    v5 = sub_100F242B8;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100F23F90()
{
  v19 = v0[137];
  v11 = v0[108];
  v12 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v15 = v0[102];
  v16 = v0[103];
  v13 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v14 = v0[101];
  v17 = v0[66];
  v18 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v11, v12, sub_100016590, sub_100016590);
  sub_100F32E90(v8, v7, v6, v5, v13, v14, sub_100016590, sub_100006654);

  sub_100016590(v15, v16);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v17, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v18, type metadata accessor for ObservedAdvertisement);
  *(v19 + 16) = 0;

  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F242B8()
{
  v1 = *(v0 + 1160);
  sub_100F856F4(*(v0 + 656) + *(v0 + 1224), *(v0 + 424));
  *(v0 + 1168) = v1;
  if (v1)
  {

    v2 = sub_100F24C30;
  }

  else
  {
    v2 = sub_100F2448C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F24360()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1228);
  *(v0 + 944) = *(v0 + 1096);
  *(v0 + 936) = v1;
  v3 = *(v0 + 816);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v10 = *(v0 + 768);
  v6 = *(v0 + 760);
  *(v0 + 112) = v3;
  *(v0 + 128) = v10;
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  sub_100017D5C(v3, *(&v3 + 1));
  sub_100017D5C(v10, *(&v10 + 1));
  sub_100017D5C(v5, v4);
  v7 = swift_task_alloc();
  *(v0 + 952) = v7;
  *v7 = v0;
  v7[1] = sub_100F208C8;
  v8 = *(v0 + 656);

  return sub_100424C7C(v0 + 352, v8, v0 + 112, v0 + 160, v2, v1, v6, 4000);
}

uint64_t sub_100F2448C()
{
  v50 = v0;
  v1 = *(v0 + 424);
  v2 = type metadata accessor for StandaloneBeacon(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

    sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
    v3 = *(v0 + 1104);
    v4 = *(v0 + 1228);
    *(v0 + 944) = *(v0 + 1096);
    *(v0 + 936) = v3;
    v5 = *(v0 + 816);
    v6 = *(v0 + 792);
    v7 = *(v0 + 784);
    v44 = *(v0 + 768);
    v8 = *(v0 + 760);
    *(v0 + 112) = v5;
    *(v0 + 128) = v44;
    *(v0 + 144) = v7;
    *(v0 + 152) = v6;
    sub_100017D5C(v5, *(&v5 + 1));
    sub_100017D5C(v44, *(&v44 + 1));
    sub_100017D5C(v7, v6);
    v9 = swift_task_alloc();
    *(v0 + 952) = v9;
    *v9 = v0;
    v9[1] = sub_100F208C8;
    v10 = *(v0 + 656);

    return sub_100424C7C(v0 + 352, v10, v0 + 112, v0 + 160, v4, v3, v8, 4000);
  }

  else
  {
    v12 = *(v0 + 656);
    v13 = *(v0 + 600);
    sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
    sub_100F3A2F8(v12, v13, type metadata accessor for BeaconIdentifier);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v39 = *(v0 + 872);
    v37 = *(v0 + 856);
    v38 = *(v0 + 864);
    v35 = *(v0 + 840);
    v36 = *(v0 + 848);
    v34 = *(v0 + 832);
    v17 = *(v0 + 824);
    v43 = *(v0 + 816);
    v41 = *(v0 + 808);
    v40 = *(v0 + 800);
    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    v45 = *(v0 + 776);
    v42 = *(v0 + 768);
    v20 = *(v0 + 600);
    if (v16)
    {
      v32 = *(v0 + 528);
      v33 = *(v0 + 584);
      v21 = swift_slowAlloc();
      v31 = v18;
      v22 = swift_slowAlloc();
      v47 = v22;
      *v21 = 141558275;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v23;
      v24._countAndFlagsBits = 47;
      v24._object = 0xE100000000000000;
      String.append(_:)(v24);
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      sub_100F3A500(v20, type metadata accessor for BeaconIdentifier);
      v26 = sub_1000136BC(v48, v49, &v47);

      *(v21 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "Skipping secondary keys for standalone beacon %{private,mask.hash}s", v21, 0x16u);
      sub_100007BAC(v22);

      sub_100F32E90(v34, v35, v36, v37, v38, v39, sub_100016590, sub_100016590);

      sub_100F32E90(v42, v45, v19, v31, v40, v41, sub_100016590, sub_100006654);

      sub_100016590(v43, v17);
      sub_100016590(v42, v45);
      sub_100016590(v19, v31);
      sub_100F3A500(v32, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v27 = v33;
    }

    else
    {
      v28 = *(v0 + 584);
      v29 = *(v0 + 528);

      sub_100F32E90(v34, v35, v36, v37, v38, v39, sub_100016590, sub_100016590);

      sub_100F32E90(v42, v45, v19, v18, v40, v41, sub_100016590, sub_100006654);

      sub_100016590(v43, v17);
      sub_100016590(v42, v45);
      sub_100016590(v19, v18);
      sub_100F3A500(v20, type metadata accessor for BeaconIdentifier);
      sub_100F3A500(v29, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v27 = v28;
    }

    sub_100F3A500(v27, type metadata accessor for ObservedAdvertisement);
    v46 = *(v0 + 1096);
    sub_100F3A500(*(v0 + 656), type metadata accessor for BeaconIdentifier);

    v30 = *(v0 + 8);

    return v30(v46);
  }
}

uint64_t sub_100F24C30()
{
  v12 = v0[109];
  v11 = v0[108];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v16 = v0[103];
  v14 = v0[101];
  v15 = v0[102];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v13 = v0[100];
  v17 = v0[66];
  v18 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v11, v12, sub_100016590, sub_100016590);

  sub_100F32E90(v8, v7, v6, v5, v13, v14, sub_100016590, sub_100006654);

  sub_100016590(v15, v16);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v17, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v18, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F24F58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1184) = v1;

  if (v1)
  {
    v5 = sub_100F25378;
  }

  else
  {
    *(v4 + 1192) = a1;
    v5 = sub_100F25080;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F25080()
{
  v11 = v0[108];
  v12 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v15 = v0[102];
  v16 = v0[103];
  v13 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v14 = v0[101];
  v17 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v11, v12, sub_100016590, sub_100016590);
  sub_100F32E90(v8, v7, v6, v5, v13, v14, sub_100016590, sub_100006654);

  sub_100016590(v15, v16);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v17, type metadata accessor for ObservedAdvertisement);
  v18 = v0[149];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9(v18);
}

uint64_t sub_100F25378()
{
  v11 = v0[108];
  v12 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v15 = v0[102];
  v16 = v0[103];
  v13 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v14 = v0[101];
  v17 = v0[73];

  sub_100F32E90(v4, v3, v2, v1, v11, v12, sub_100016590, sub_100016590);
  sub_100F32E90(v8, v7, v6, v5, v13, v14, sub_100016590, sub_100006654);

  sub_100016590(v15, v16);
  sub_100016590(v8, v7);
  sub_100016590(v6, v5);
  sub_100F3A500(v17, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F2566C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1208) = v1;

  if (v1)
  {
    v5 = sub_100F25A64;
  }

  else
  {
    *(v4 + 1216) = a1;
    v5 = sub_100F25794;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F25794()
{
  v13 = v0[108];
  v14 = v0[109];
  v12 = v0[107];
  v10 = v0[105];
  v11 = v0[106];
  v9 = v0[104];
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  sub_100016590(v0[102], v0[103]);
  sub_100016590(v6, v5);
  sub_100016590(v4, v3);

  sub_100F32E90(v6, v5, v4, v3, v2, v1, sub_100016590, sub_100006654);

  sub_100F32E90(v9, v10, v11, v12, v13, v14, sub_100016590, sub_100016590);
  v15 = v0[152];
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v7 = v0[1];

  return v7(v15);
}

uint64_t sub_100F25A64()
{
  v13 = v0[108];
  v14 = v0[109];
  v12 = v0[107];
  v10 = v0[105];
  v11 = v0[106];
  v9 = v0[104];
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  sub_100016590(v0[102], v0[103]);
  sub_100016590(v6, v5);
  sub_100016590(v4, v3);

  sub_100F32E90(v6, v5, v4, v3, v2, v1, sub_100016590, sub_100006654);

  sub_100F32E90(v9, v10, v11, v12, v13, v14, sub_100016590, sub_100016590);
  sub_100F3A500(v0[82], type metadata accessor for BeaconIdentifier);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F25D30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for ObservedAdvertisement(0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for BeaconIdentifier(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100F25F90, 0, 0);
}

uint64_t sub_100F25F90()
{
  sub_100F3A2F8(v0[2], v0[22], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_100F26040;

  return daemon.getter();
}

uint64_t sub_100F26040(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 192) = a1;

  v3 = swift_task_alloc();
  *(v2 + 200) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F3A180(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100F2621C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F2621C(uint64_t a1)
{
  v3 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F26860, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[28] = v4;
    *v4 = v3;
    v4[1] = sub_100F263B4;

    return sub_100946D3C();
  }
}

uint64_t sub_100F263B4(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_100F264B4, 0, 0);
}

uint64_t sub_100F264B4()
{
  if (v0[29])
  {
    v1 = swift_task_alloc();
    v0[30] = v1;
    *v1 = v0;
    v1[1] = sub_100F2674C;
    v2 = v0[22];
    v3 = v0[12];

    return sub_1010CD810(v3, v2);
  }

  else
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B810);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing ItemSharingKeyStore!", v8, 2u);
    }

    sub_100F32E3C();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100F2674C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100F2780C;
  }

  else
  {
    v2 = sub_100F26980;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F26860()
{
  sub_100F3A500(*(v0 + 176), type metadata accessor for BeaconIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F26980()
{
  v107 = v0;
  v1 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v1, 1, *(v0 + 104)) == 1)
  {
    sub_10000B3A8(v1, &unk_10169BB50, &unk_101395760);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B810);
    sub_100F3A2F8(v3, v2, type metadata accessor for BeaconIdentifier);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 168);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v104 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v11;
      v12._countAndFlagsBits = 47;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
      v14 = sub_1000136BC(v105, v106, &v104);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "No observed advertisement for beacon %{private,mask.hash}s.", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {

      sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    }

    v28 = swift_task_alloc();
    *(v0 + 632) = v28;
    *v28 = v0;
    v29 = sub_100F2A820;
    goto LABEL_12;
  }

  sub_100F3A498(v1, *(v0 + 128), type metadata accessor for ObservedAdvertisement);
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177B810);
  sub_100F3A2F8(v15, v16, type metadata accessor for ObservedAdvertisement);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 120);
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v105 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v24 = sub_100018680();
    v26 = v25;
    sub_100F3A500(v21, type metadata accessor for ObservedAdvertisement);
    v27 = sub_1000136BC(v24, v26, &v105);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Found observed advertisement %{private,mask.hash}s.", v22, 0x16u);
    sub_100007BAC(v23);
  }

  else
  {

    sub_100F3A500(v21, type metadata accessor for ObservedAdvertisement);
  }

  v32 = *(v0 + 72);
  v33 = *(v0 + 80);
  v34 = *(v0 + 64);
  sub_1000D2A70(*(v0 + 128) + *(*(v0 + 104) + 52), v34, &qword_101699DB0, &unk_101393100);
  v35 = (*(v33 + 48))(v34, 1, v32);
  v36 = *(v0 + 176);
  if (v35 == 1)
  {
    v37 = *(v0 + 160);
    sub_10000B3A8(*(v0 + 64), &qword_101699DB0, &unk_101393100);
    sub_100F3A2F8(v36, v37, type metadata accessor for BeaconIdentifier);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 176);
    v42 = *(v0 + 160);
    if (v40)
    {
      v103 = *(v0 + 128);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v104 = v44;
      *v43 = 141558275;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v101 = v41;
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v45;
      v46._countAndFlagsBits = 47;
      v46._object = 0xE100000000000000;
      String.append(_:)(v46);
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v47);

      v48 = v105;
      v49 = v106;
      sub_100F3A500(v42, type metadata accessor for BeaconIdentifier);
      v50 = sub_1000136BC(v48, v49, &v104);

      *(v43 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v38, v39, "Missing beaconIndexInformation for %{private,mask.hash}s!", v43, 0x16u);
      sub_100007BAC(v44);

      sub_100F3A500(v103, type metadata accessor for ObservedAdvertisement);
      v51 = v101;
    }

    else
    {
      v75 = *(v0 + 128);

      sub_100F3A500(v42, type metadata accessor for BeaconIdentifier);
      sub_100F3A500(v75, type metadata accessor for ObservedAdvertisement);
      v51 = v41;
    }

    sub_100F3A500(v51, type metadata accessor for BeaconIdentifier);

    v76 = *(v0 + 8);

    return v76(_swiftEmptyArrayStorage);
  }

  else
  {
    v53 = *(v0 + 128);
    v52 = *(v0 + 136);
    v54 = *(v0 + 88);
    v55 = *(v0 + 72);
    v57 = *(v0 + 48);
    v56 = *(v0 + 56);
    v58 = *(v0 + 32);
    v59 = *(v0 + 40);
    sub_100F3A498(*(v0 + 64), v54, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    v60 = *(v54 + *(v55 + 20));
    v61 = *(v59 + 16);
    v61(v56, v36, v58);
    v61(v57, v36 + *(v52 + 20), v58);
    v62 = *(v53 + 34);
    *(v0 + 656) = v62;
    if (*(v53 + 35))
    {
      if (v60)
      {
        sub_100F3A2F8(*(v0 + 176), *(v0 + 144), type metadata accessor for BeaconIdentifier);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.fault.getter();
        v65 = os_log_type_enabled(v63, v64);
        v66 = *(v0 + 144);
        if (v65)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v104 = v68;
          *v67 = 141558275;
          *(v67 + 4) = 1752392040;
          *(v67 + 12) = 2081;
          sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v105 = dispatch thunk of CustomStringConvertible.description.getter();
          v106 = v69;
          v70._countAndFlagsBits = 47;
          v70._object = 0xE100000000000000;
          String.append(_:)(v70);
          v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v71);

          v72 = v105;
          v73 = v106;
          sub_100F3A500(v66, type metadata accessor for BeaconIdentifier);
          v74 = sub_1000136BC(v72, v73, &v104);

          *(v67 + 14) = v74;
          _os_log_impl(&_mh_execute_header, v63, v64, "%{private,mask.hash}s Should be impossible to be in secondary sequence without a hint!", v67, 0x16u);
          sub_100007BAC(v68);
        }

        else
        {

          sub_100F3A500(v66, type metadata accessor for BeaconIdentifier);
        }

        v28 = swift_task_alloc();
        *(v0 + 608) = v28;
        *v28 = v0;
        v29 = sub_100F2A3A4;
LABEL_12:
        v28[1] = v29;
        v30 = *(v0 + 16);

        return sub_100F30CB0(v30);
      }

      v95 = *(*(v0 + 88) + *(*(v0 + 72) + 24));
      *(v0 + 504) = v95;
      v96 = swift_task_alloc();
      *(v0 + 512) = v96;
      *v96 = v0;
      v96[1] = sub_100F29268;
      v97 = *(v0 + 48);
      v98 = *(v0 + 56);

      return sub_100F10DF4(v98, v97, v95);
    }

    else
    {
      v102 = v60;
      v77 = *(v0 + 176);
      v78 = *(v0 + 152);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_101385D80;
      *(v79 + 56) = &type metadata for UInt8;
      *(v79 + 64) = &protocol witness table for UInt8;
      *(v79 + 32) = v62;
      v80 = String.init(format:_:)();
      v82 = v81;
      sub_100F3A2F8(v77, v78, type metadata accessor for BeaconIdentifier);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.info.getter();
      v85 = os_log_type_enabled(v83, v84);
      v86 = *(v0 + 152);
      if (v85)
      {
        v87 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v87 = 136446723;
        v88 = sub_1000136BC(v80, v82, &v104);

        *(v87 + 4) = v88;
        *(v87 + 12) = 2160;
        *(v87 + 14) = 1752392040;
        *(v87 + 22) = 2081;
        sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v106 = v89;
        v90._countAndFlagsBits = 47;
        v90._object = 0xE100000000000000;
        String.append(_:)(v90);
        v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v91);

        v92 = v105;
        v93 = v106;
        sub_100F3A500(v86, type metadata accessor for BeaconIdentifier);
        v94 = sub_1000136BC(v92, v93, &v104);

        *(v87 + 24) = v94;
        _os_log_impl(&_mh_execute_header, v83, v84, "Hint %{public}s is available for %{private,mask.hash}s", v87, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100F3A500(v86, type metadata accessor for BeaconIdentifier);
      }

      *(v0 + 256) = *(*(v0 + 88) + *(*(v0 + 72) + 24));
      v99 = *(v0 + 232);
      if (v102)
      {
        v100 = sub_100F285BC;
      }

      else
      {
        v100 = sub_100F27940;
      }

      return _swift_task_switch(v100, v99, 0);
    }
  }
}

uint64_t sub_100F2780C()
{

  sub_100F3A500(*(v0 + 176), type metadata accessor for BeaconIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

void sub_100F27940()
{
  v1 = v0[32];
  v0[33] = v1 + 96;
  if (v1 >= 0xFFFFFFFFFFFFFFA0)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v0[35] = v1;
    v0[36] = _swiftEmptyDictionarySingleton;
    v0[34] = _swiftEmptyDictionarySingleton;
    v0[37] = 96;
    v2 = swift_task_alloc();
    v0[38] = v2;
    *v2 = v0;
    v2[1] = sub_100F27A28;
    v3 = v0[6];
    v4 = v0[7];

    sub_100F10DF4(v4, v3, v1);
  }
}

uint64_t sub_100F27A28(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = v2;

  if (v2)
  {

    v5 = v4[29];
    v6 = sub_100F27D38;
  }

  else
  {
    v5 = v4[29];
    v6 = sub_100F27B4C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F27B4C(uint64_t (*a1)(), uint64_t a2)
{
  v3 = *(v2 + 320);
  if (v3 >> 60 != 15)
  {
    v4 = *(v2 + 656);
    if (v4 == Data._Representation.subscript.getter())
    {
      v5 = swift_task_alloc();
      *(v2 + 336) = v5;
      *v5 = v2;
      v5[1] = sub_100F27D5C;
      v6 = *(v2 + 280);
      v7 = *(v2 + 48);
      v8 = *(v2 + 56);

      return sub_1006868C4(v8, v7, v6);
    }

    a1 = sub_100006654(*(v2 + 312), *(v2 + 320));
  }

  v10 = *(v2 + 272);
  v11 = *(v2 + 288);
  v12 = *(v2 + 296);
  *(v2 + 368) = v11;
  if (!v12)
  {
    a1 = sub_100F280CC;
    a2 = 0;
    v3 = 0;

    return _swift_task_switch(a1, a2, v3);
  }

  v13 = *(v2 + 280);
  v14 = v13 + 1;
  if (v13 == -1)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 280) = v14;
  *(v2 + 288) = v11;
  *(v2 + 272) = v10;
  v15 = *(v2 + 264);
  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if ((v14 - v15) < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return _swift_task_switch(a1, a2, v3);
  }

  v16 = v15 - v14;
LABEL_16:
  *(v2 + 296) = v16;
  v17 = swift_task_alloc();
  *(v2 + 304) = v17;
  *v17 = v2;
  v17[1] = sub_100F27A28;
  v18 = *(v2 + 48);
  v19 = *(v2 + 56);

  return sub_100F10DF4(v19, v18, v14);
}

uint64_t sub_100F27D5C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;

  if (v2)
  {

    v5 = v4[29];
    v6 = sub_100F2805C;
  }

  else
  {
    v5 = v4[29];
    v6 = sub_100F27E80;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F27E80()
{
  v1 = v0[44];
  if (v1 >> 60 == 15)
  {
    v2 = sub_100006654(v0[39], v0[40]);
    v5 = v0[36];
    v6 = v0[34];
  }

  else
  {
    v7 = v0[43];
    v9 = v0[39];
    v8 = v0[40];
    v10 = v0[34];
    v11 = v0[35];
    sub_100017D5C(v7, v0[44]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFF448(v7, v1, v11, isUniquelyReferenced_nonNull_native);
    sub_100006654(v9, v8);
    v2 = sub_100006654(v7, v1);
    v6 = v10;
    v5 = v10;
  }

  v0[46] = v5;
  if (!v0[37])
  {
    v2 = sub_100F280CC;
    v3 = 0;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  v13 = v0[35];
  v14 = v13 + 1;
  if (v13 == -1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v0[35] = v14;
  v0[36] = v5;
  v0[34] = v6;
  v15 = v0[33];
  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if ((v14 - v15) < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v16 = v15 - v14;
LABEL_13:
  v0[37] = v16;
  v17 = swift_task_alloc();
  v0[38] = v17;
  *v17 = v0;
  v17[1] = sub_100F27A28;
  v18 = v0[6];
  v19 = v0[7];

  return sub_100F10DF4(v19, v18, v14);
}

uint64_t sub_100F2805C()
{
  sub_100006654(v0[39], v0[40]);
  v0[47] = v0[45];

  return _swift_task_switch(sub_100F28414, 0, 0);
}

uint64_t sub_100F280CC()
{
  v36 = v0;
  v33 = v0[46];
  v1 = v0[16];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v34 = v2 & 0xDFFFFFFFFFFFFFFFLL;
    result = sub_100017D5C(*(v1 + 16), v2 & 0xDFFFFFFFFFFFFFFFLL);
    v5 = v3;
  }

  else
  {
    sub_100017D5C(*(v1 + 16), *(v1 + 24));
    result = sub_10002EA98(6, v3, v2, v35);
    v5 = v35[0];
    v34 = v35[1];
  }

  v6 = 0;
  v7 = -1;
  v8 = -1 << *(v33 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v33 + 64);
  v10 = (63 - v8) >> 6;
  v11 = _swiftEmptyArrayStorage;
  v31 = v5;
  if (v9)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v33 + 64 + 8 * v12);
    ++v6;
    if (v9)
    {
      v6 = v12;
      do
      {
LABEL_11:
        v13 = __clz(__rbit64(v9)) | (v6 << 6);
        v14 = *(*(v33 + 48) + 8 * v13);
        v15 = (*(v33 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];
        sub_100017D5C(*v15, v17);
        sub_100017D5C(v5, v34);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5CBA0(0, *(v11 + 2) + 1, 1, v11);
          v11 = result;
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        v20 = v11;
        if (v19 >= v18 >> 1)
        {
          result = sub_100A5CBA0((v18 > 1), v19 + 1, 1, v11);
          v20 = result;
        }

        *(v20 + 16) = v19 + 1;
        v11 = v20;
        v21 = v20 + 48 * v19;
        *(v21 + 32) = 0;
        v9 &= v9 - 1;
        v5 = v31;
        *(v21 + 40) = v14;
        *(v21 + 48) = v31;
        *(v21 + 56) = v34;
        *(v21 + 64) = v16;
        *(v21 + 72) = v17;
      }

      while (v9);
    }
  }

  v22 = v0[22];
  v23 = v0[16];
  v24 = v0[11];
  v25 = v0[6];
  v26 = v0[7];
  v32 = v11;
  v28 = v0[4];
  v27 = v0[5];

  sub_100016590(v5, v34);
  v29 = *(v27 + 8);
  v29(v25, v28);
  v29(v26, v28);
  sub_100F3A500(v24, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v23, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v22, type metadata accessor for BeaconIdentifier);

  v30 = v0[1];

  return v30(v32);
}

uint64_t sub_100F28414()
{
  v1 = v0[16];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  sub_100F3A500(v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v1, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v8 = v0[1];

  return v8();
}

void sub_100F285BC()
{
  v1 = v0[32];
  if (!v1)
  {
    goto LABEL_8;
  }

  if (!is_mul_ok(v1, 0x60uLL))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v2 = 96 * v1;
  v1 = 96 * v1 - 1;
  v3 = v2 - 96;
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v1 < v4)
  {
    __break(1u);
LABEL_8:
    v4 = 0;
  }

  v0[50] = v4;
  v0[51] = _swiftEmptyDictionarySingleton;
  v0[48] = v1;
  v0[49] = _swiftEmptyDictionarySingleton;
  v5 = v1 - v4;
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v0[52] = v5;
  v6 = swift_task_alloc();
  v0[53] = v6;
  *v6 = v0;
  v6[1] = sub_100F286D4;
  v7 = v0[6];
  v8 = v0[7];

  sub_100F10DF4(v8, v7, v4);
}

uint64_t sub_100F286D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = v2;

  if (v2)
  {

    v5 = v4[29];
    v6 = sub_100F289E4;
  }

  else
  {
    v5 = v4[29];
    v6 = sub_100F287F8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F287F8(uint64_t (*a1)(), uint64_t a2)
{
  v3 = *(v2 + 440);
  if (v3 >> 60 != 15)
  {
    v4 = *(v2 + 656);
    if (v4 == Data._Representation.subscript.getter())
    {
      v5 = swift_task_alloc();
      *(v2 + 456) = v5;
      *v5 = v2;
      v5[1] = sub_100F28A08;
      v6 = *(v2 + 400);
      v7 = *(v2 + 48);
      v8 = *(v2 + 56);

      return sub_1006868C4(v8, v7, v6);
    }

    a1 = sub_100006654(*(v2 + 432), *(v2 + 440));
  }

  v10 = *(v2 + 392);
  v11 = *(v2 + 408);
  v12 = *(v2 + 416);
  *(v2 + 488) = v11;
  if (!v12)
  {
    a1 = sub_100F28D78;
    a2 = 0;
    v3 = 0;

    return _swift_task_switch(a1, a2, v3);
  }

  v13 = *(v2 + 400);
  v14 = v13 + 1;
  if (v13 == -1)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 400) = v14;
  *(v2 + 408) = v11;
  *(v2 + 392) = v10;
  v15 = *(v2 + 384);
  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if ((v14 - v15) < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return _swift_task_switch(a1, a2, v3);
  }

  v16 = v15 - v14;
LABEL_16:
  *(v2 + 416) = v16;
  v17 = swift_task_alloc();
  *(v2 + 424) = v17;
  *v17 = v2;
  v17[1] = sub_100F286D4;
  v18 = *(v2 + 48);
  v19 = *(v2 + 56);

  return sub_100F10DF4(v19, v18, v14);
}

uint64_t sub_100F28A08(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[58] = a1;
  v4[59] = a2;
  v4[60] = v2;

  if (v2)
  {

    v5 = v4[29];
    v6 = sub_100F28D08;
  }

  else
  {
    v5 = v4[29];
    v6 = sub_100F28B2C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F28B2C()
{
  v1 = v0[59];
  if (v1 >> 60 == 15)
  {
    v2 = sub_100006654(v0[54], v0[55]);
    v5 = v0[51];
    v6 = v0[49];
  }

  else
  {
    v7 = v0[58];
    v9 = v0[54];
    v8 = v0[55];
    v10 = v0[49];
    v11 = v0[50];
    sub_100017D5C(v7, v0[59]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFF448(v7, v1, v11, isUniquelyReferenced_nonNull_native);
    sub_100006654(v9, v8);
    v2 = sub_100006654(v7, v1);
    v6 = v10;
    v5 = v10;
  }

  v0[61] = v5;
  if (!v0[52])
  {
    v2 = sub_100F28D78;
    v3 = 0;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  v13 = v0[50];
  v14 = v13 + 1;
  if (v13 == -1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v0[50] = v14;
  v0[51] = v5;
  v0[49] = v6;
  v15 = v0[48];
  v16 = v15 - v14;
  if (v15 >= v14)
  {
    if ((v15 - v14) >= 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if ((v14 - v15) < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v16 = v15 - v14;
LABEL_13:
  v0[52] = v16;
  v17 = swift_task_alloc();
  v0[53] = v17;
  *v17 = v0;
  v17[1] = sub_100F286D4;
  v18 = v0[6];
  v19 = v0[7];

  return sub_100F10DF4(v19, v18, v14);
}

uint64_t sub_100F28D08()
{
  sub_100006654(v0[54], v0[55]);
  v0[62] = v0[60];

  return _swift_task_switch(sub_100F290C0, 0, 0);
}

uint64_t sub_100F28D78()
{
  v36 = v0;
  v33 = v0[61];
  v1 = v0[16];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v34 = v2 & 0xDFFFFFFFFFFFFFFFLL;
    result = sub_100017D5C(*(v1 + 16), v2 & 0xDFFFFFFFFFFFFFFFLL);
    v5 = v3;
  }

  else
  {
    sub_100017D5C(*(v1 + 16), *(v1 + 24));
    result = sub_10002EA98(6, v3, v2, v35);
    v5 = v35[0];
    v34 = v35[1];
  }

  v6 = 0;
  v7 = -1;
  v8 = -1 << *(v33 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v33 + 64);
  v10 = (63 - v8) >> 6;
  v11 = _swiftEmptyArrayStorage;
  v31 = v5;
  if (v9)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v33 + 64 + 8 * v12);
    ++v6;
    if (v9)
    {
      v6 = v12;
      do
      {
LABEL_11:
        v13 = __clz(__rbit64(v9)) | (v6 << 6);
        v14 = *(*(v33 + 48) + 8 * v13);
        v15 = (*(v33 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];
        sub_100017D5C(*v15, v17);
        sub_100017D5C(v5, v34);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5CBA0(0, *(v11 + 2) + 1, 1, v11);
          v11 = result;
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        v20 = v11;
        if (v19 >= v18 >> 1)
        {
          result = sub_100A5CBA0((v18 > 1), v19 + 1, 1, v11);
          v20 = result;
        }

        *(v20 + 16) = v19 + 1;
        v11 = v20;
        v21 = v20 + 48 * v19;
        *(v21 + 32) = 0;
        v9 &= v9 - 1;
        v5 = v31;
        *(v21 + 40) = v14;
        *(v21 + 48) = v31;
        *(v21 + 56) = v34;
        *(v21 + 64) = v16;
        *(v21 + 72) = v17;
      }

      while (v9);
    }
  }

  v22 = v0[22];
  v23 = v0[16];
  v24 = v0[11];
  v25 = v0[6];
  v26 = v0[7];
  v32 = v11;
  v28 = v0[4];
  v27 = v0[5];

  sub_100016590(v5, v34);
  v29 = *(v27 + 8);
  v29(v25, v28);
  v29(v26, v28);
  sub_100F3A500(v24, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v23, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v22, type metadata accessor for BeaconIdentifier);

  v30 = v0[1];

  return v30(v32);
}

uint64_t sub_100F290C0()
{
  v1 = v0[16];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  sub_100F3A500(v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v1, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F29268(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[65] = a1;
  v4[66] = a2;
  v4[67] = v2;

  if (v2)
  {
    v5 = sub_100F295F0;
  }

  else
  {
    v5 = sub_100F29384;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F29384()
{
  if (v0[66] >> 60 == 15)
  {
    v1 = v0[22];
    v2 = v0[16];
    v3 = v0[11];
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[4];
    v7 = v0[5];

    v8 = *(v7 + 8);
    v8(v5, v6);
    v8(v4, v6);
    sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v2, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);

    v9 = v0[1];

    return v9(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = v0[63];
    if (v11)
    {
      v12 = v11 / 0x60 + 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = swift_task_alloc();
    v0[68] = v13;
    *v13 = v0;
    v13[1] = sub_100F29798;
    v14 = v0[6];
    v15 = v0[7];

    return sub_100F114D0(v15, v14, v12);
  }
}

uint64_t sub_100F295F0()
{
  v1 = v0[16];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  sub_100F3A500(v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v1, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F29798(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[69] = a1;
  v4[70] = a2;
  v4[71] = v2;

  if (v2)
  {
    v5 = sub_100F29B08;
  }

  else
  {
    v5 = sub_100F298B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F298B4()
{
  if (v0[70] >> 60 == 15)
  {
    v1 = v0[66];
    v2 = v0[65];
    v16 = v0[22];
    v3 = v0[16];
    v4 = v0[11];
    v6 = v0[6];
    v5 = v0[7];
    v8 = v0[4];
    v7 = v0[5];

    sub_100006654(v2, v1);
    v9 = *(v7 + 8);
    v9(v6, v8);
    v9(v5, v8);
    sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v16, type metadata accessor for BeaconIdentifier);

    v10 = v0[1];

    return v10(_swiftEmptyArrayStorage);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[72] = v12;
    *v12 = v0;
    v12[1] = sub_100F29CC4;
    v13 = v0[63];
    v14 = v0[6];
    v15 = v0[7];

    return sub_1006868C4(v15, v14, v13);
  }
}

uint64_t sub_100F29B08()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[16];
  v4 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];

  sub_100006654(v2, v1);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_100F3A500(v4, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F29CC4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[73] = a1;
  v4[74] = a2;
  v4[75] = v2;

  if (v2)
  {
    v5 = sub_100F2A1D0;
  }

  else
  {
    v5 = sub_100F29DE0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F29DE0()
{
  v1 = v0[74];
  if (v1 >> 60 == 15)
  {
    v2 = v0[70];
    v3 = v0[69];
    v4 = v0[66];
    v5 = v0[65];
    v39 = v0[16];
    v41 = v0[22];
    v37 = v0[11];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[4];
    v9 = v0[5];

    sub_100006654(v3, v2);
    sub_100006654(v5, v4);
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v7, v8);
    sub_100F3A500(v37, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v39, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v41, type metadata accessor for BeaconIdentifier);
    v42 = _swiftEmptyArrayStorage;
  }

  else
  {
    v11 = v0[73];
    sub_10002E98C(v0[65], v0[66]);
    sub_10002E98C(v11, v1);
    v12 = sub_100A5CBA0(0, 1, 1, _swiftEmptyArrayStorage);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      v12 = sub_100A5CBA0((v13 > 1), v14 + 1, 1, v12);
    }

    v16 = v0[63];
    v17 = &v12[48 * v14];
    v18 = *(v0 + 65);
    v19 = *(v0 + 73);
    *(v12 + 2) = v15;
    v17[32] = 0;
    *(v17 + 5) = v16;
    *(v17 + 3) = v18;
    *(v17 + 4) = v19;
    if (v16)
    {
      v38 = v0[63] / 0x60uLL + 1;
    }

    else
    {
      v38 = 0;
    }

    v20 = *(v12 + 3);
    v40 = v14 + 1;
    v36 = v14 + 2;
    if (v15 >= v20 >> 1)
    {
      v42 = sub_100A5CBA0((v20 > 1), v14 + 2, 1, v12);
    }

    else
    {
      v42 = v12;
    }

    v21 = v0[66];
    v22 = v0[65];
    v34 = v0[22];
    v23 = v0[16];
    v24 = v0[11];
    v25 = v0[6];
    v26 = v0[7];
    v27 = v0[4];
    v28 = v0[5];
    v35 = *(v0 + 73);
    v33 = *(v0 + 69);

    sub_100006654(v22, v21);
    v29 = *(v28 + 8);
    v29(v25, v27);
    v29(v26, v27);
    sub_100F3A500(v24, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    sub_100F3A500(v23, type metadata accessor for ObservedAdvertisement);
    sub_100F3A500(v34, type metadata accessor for BeaconIdentifier);
    *(v42 + 2) = v36;
    v30 = &v42[48 * v40];
    v30[32] = 1;
    *(v30 + 5) = v38;
    *(v30 + 3) = v33;
    *(v30 + 4) = v35;
  }

  v31 = v0[1];

  return v31(v42);
}

uint64_t sub_100F2A1D0()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[66];
  v4 = v0[65];
  v12 = v0[11];
  v13 = v0[16];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  sub_100F3A500(v12, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v13, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F2A3A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 616) = v1;

  if (v1)
  {
    v5 = sub_100F2A678;
  }

  else
  {
    *(v4 + 624) = a1;
    v5 = sub_100F2A4CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F2A4CC()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];

  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v4, v6);
  sub_100F3A500(v3, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v2, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);
  v11 = v0[78];

  v9 = v0[1];

  return v9(v11);
}

uint64_t sub_100F2A678()
{
  v1 = v0[16];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  sub_100F3A500(v2, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
  sub_100F3A500(v1, type metadata accessor for ObservedAdvertisement);
  sub_100F3A500(v0[22], type metadata accessor for BeaconIdentifier);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F2A820(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 640) = v1;

  if (v1)
  {
    v5 = sub_100F2AA80;
  }

  else
  {
    *(v4 + 648) = a1;
    v5 = sub_100F2A948;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F2A948()
{
  v1 = v0[22];

  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);
  v4 = v0[81];

  v2 = v0[1];

  return v2(v4);
}

uint64_t sub_100F2AA80()
{

  sub_100F3A500(*(v0 + 176), type metadata accessor for BeaconIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F2ABB4(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *(v3 + 312) = a1;
  *(v3 + 320) = a3;
  v4 = a3[1];
  *(v3 + 328) = *a3;
  *(v3 + 344) = v4;
  v5 = *a2;
  v6 = a2[1];
  *(v3 + 360) = a3[2];
  *(v3 + 376) = v5;
  v7 = a2[2];
  *(v3 + 392) = v6;
  *(v3 + 408) = v7;
  sub_1000BC4D4(&qword_1016B5CC0, &qword_1013D7370);
  *(v3 + 424) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = type metadata accessor for BeaconIdentifier(0);
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100F2AD08, 0, 0);
}

uint64_t sub_100F2AD08()
{
  sub_100F3A2F8(v0[39], v0[60], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[61] = v1;
  *v1 = v0;
  v1[1] = sub_100F2ADC0;
  v2 = v0[55];
  v3 = v0[39];

  return sub_100F2EA9C(v2, v3);
}

uint64_t sub_100F2ADC0()
{
  v2 = *v1;
  *(v2 + 496) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100F3A940, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 504) = v3;
    *v3 = v2;
    v3[1] = sub_100F2AF2C;

    return daemon.getter();
  }
}

uint64_t sub_100F2AF2C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[64] = a1;

  v3 = swift_task_alloc();
  v2[65] = v3;
  v4 = type metadata accessor for Daemon();
  v2[66] = v4;
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[67] = v6;
  v7 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_100F2B10C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F2B10C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 544) = a1;
  *(v4 + 552) = v1;

  if (v1)
  {
    v5 = sub_100F3A8D8;
    v6 = 0;
  }

  else
  {
    v5 = sub_100F2B254;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100F2B254()
{
  v1 = *(*(v0 + 544) + 128);
  *(v0 + 560) = v1;
  if (v1)
  {

    v2 = sub_100F2B2E0;
  }

  else
  {
    v2 = sub_100F3A8EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F2B2E0()
{
  v36 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = type metadata accessor for Logger();
  *(v0 + 568) = sub_1000076D4(v5, qword_10177B810);
  sub_1000D2A70(v3, v4, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A2F8(v2, v1, type metadata accessor for BeaconIdentifier);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 472);
  if (v8)
  {
    v10 = *(v0 + 432);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315651;
    v13 = *v10;
    v33 = v12;
    v34 = 0x7972616D6972702ELL;
    v35 = 0xEA0000000000282FLL;
    *(v0 + 304) = v13;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    sub_10000B3A8(v10, &unk_1016C8FC0, &unk_10139D7D0);
    v16 = sub_1000136BC(v34, v35, &v33);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v17;
    v18._countAndFlagsBits = 47;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20 = v34;
    v21 = v35;
    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    v22 = sub_1000136BC(v20, v21, &v33);

    *(v11 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Best effort lastObservedIndex %s for %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 432);

    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    sub_10000B3A8(v23, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v24 = *(v0 + 560);
  v25 = *(v0 + 440);
  v26 = *(v0 + 392);
  *(v0 + 64) = *(v0 + 376);
  v27 = *(v0 + 408);
  *(v0 + 80) = v26;
  *(v0 + 96) = v27;
  v28 = *v25;
  *(v0 + 576) = *v25;
  v29 = swift_task_alloc();
  *(v0 + 584) = v29;
  *v29 = v0;
  v29[1] = sub_100F2B6F8;
  v30 = *(v0 + 480);
  v31 = *(v0 + 320);

  return sub_100424C7C(v0 + 160, v30, v0 + 64, v31, 0, v28, v24, 4000);
}

uint64_t sub_100F2B6F8()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_100F3A908;
  }

  else
  {
    v2 = sub_100F2B80C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F2B80C()
{
  sub_100F3A034(v0 + 160, v0 + 208);
  v1 = sub_100A5CBA0(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5CBA0((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 600) = v1;
  *(v1 + 2) = v3 + 1;
  v4 = &v1[48 * v3];
  v5 = *(v0 + 160);
  v6 = *(v0 + 192);
  *(v4 + 3) = *(v0 + 176);
  *(v4 + 4) = v6;
  *(v4 + 2) = v5;
  v7 = swift_task_alloc();
  *(v0 + 608) = v7;
  *v7 = v0;
  v7[1] = sub_100F2B910;

  return daemon.getter();
}

uint64_t sub_100F2B910(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 616) = a1;

  v5 = swift_task_alloc();
  *(v3 + 624) = v5;
  v6 = type metadata accessor for StandaloneBeaconService();
  v7 = sub_100F3A180(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v5 = v4;
  v5[1] = sub_100F2BAC4;
  v8 = *(v2 + 536);
  v9 = *(v2 + 528);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100F2BAC4(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 632) = a1;
  *(v4 + 640) = v1;

  if (v1)
  {

    v5 = sub_100F2BCDC;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 448);

    *(v4 + 672) = *(v7 + 20);
    v5 = sub_100F2BC34;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100F2BC34()
{
  v1 = *(v0 + 640);
  sub_100F856F4(*(v0 + 480) + *(v0 + 672), *(v0 + 424));
  *(v0 + 648) = v1;
  if (v1)
  {

    v2 = sub_100F3A964;
  }

  else
  {
    v2 = sub_100F2BF24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F2BCDC()
{
  v1 = *(v0 + 320);
  v2 = *(v1 + 8);
  if (*(v1 + 8) >> 60 == 15)
  {
    v3 = *(v0 + 480);
    v4 = *(v0 + 440);

    sub_100F39FE0(v0 + 160);
    sub_10000B3A8(v4, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);
    v5 = *(v0 + 600);

    v6 = *(v0 + 8);

    return v6(v5);
  }

  else
  {
    v8 = *(v1 + 24);
    v9 = *(v1 + 40);
    v10 = *(v0 + 576);
    if (v10)
    {
      v11 = v10 / 0x60 + 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v0 + 560);
    v14 = *(v0 + 360);
    v13 = *(v0 + 368);
    v16 = *(v0 + 344);
    v15 = *(v0 + 352);
    v18 = *(v0 + 328);
    v17 = *(v0 + 336);
    *(v0 + 16) = *v1;
    *(v0 + 24) = v2;
    *(v0 + 40) = v8;
    *(v0 + 56) = v9;
    sub_1000D2A70(v1, v0 + 256, &qword_10169FCA8, &qword_1013A2B88);
    sub_100017D5C(v18, v17);
    sub_100017D5C(v16, v15);
    sub_100017D5C(v14, v13);
    v19 = swift_task_alloc();
    *(v0 + 656) = v19;
    *v19 = v0;
    v19[1] = sub_100F2C488;
    v20 = *(v0 + 480);

    return sub_100424C7C(v0 + 112, v20, v0 + 64, v0 + 16, 1, v11, v12, 4000);
  }
}

uint64_t sub_100F2BF24()
{
  v43 = v0;
  v1 = *(v0 + 424);
  v2 = type metadata accessor for StandaloneBeacon(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v8 = *(v0 + 480);
    v9 = *(v0 + 464);
    sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
    sub_100F3A2F8(v8, v9, type metadata accessor for BeaconIdentifier);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 480);
    v14 = *(v0 + 464);
    if (v12)
    {
      v39 = *(v0 + 440);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40 = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      type metadata accessor for UUID();
      v38 = v13;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v17;
      v18._countAndFlagsBits = 47;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      sub_100F3A500(v14, type metadata accessor for BeaconIdentifier);
      v20 = sub_1000136BC(v41, v42, &v40);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "Skipping secondary keys for standalone beacon %{private,mask.hash}s", v15, 0x16u);
      sub_100007BAC(v16);

      sub_100F39FE0(v0 + 160);
      sub_10000B3A8(v39, &unk_1016C8FC0, &unk_10139D7D0);
      v7 = v38;
    }

    else
    {
      v35 = *(v0 + 440);

      sub_100F39FE0(v0 + 160);
      sub_100F3A500(v14, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v35, &unk_1016C8FC0, &unk_10139D7D0);
      v7 = v13;
    }

LABEL_13:
    sub_100F3A500(v7, type metadata accessor for BeaconIdentifier);
    v36 = *(v0 + 600);

    v37 = *(v0 + 8);

    return v37(v36);
  }

  sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
  v3 = *(v0 + 320);
  v4 = *(v3 + 8);
  if (*(v3 + 8) >> 60 == 15)
  {
    v5 = *(v0 + 480);
    v6 = *(v0 + 440);

    sub_100F39FE0(v0 + 160);
    sub_10000B3A8(v6, &unk_1016C8FC0, &unk_10139D7D0);
    v7 = v5;
    goto LABEL_13;
  }

  v21 = *(v3 + 24);
  v22 = *(v3 + 40);
  v23 = *(v0 + 576);
  if (v23)
  {
    v24 = v23 / 0x60 + 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 560);
  v27 = *(v0 + 360);
  v26 = *(v0 + 368);
  v29 = *(v0 + 344);
  v28 = *(v0 + 352);
  v31 = *(v0 + 328);
  v30 = *(v0 + 336);
  *(v0 + 16) = *v3;
  *(v0 + 24) = v4;
  *(v0 + 40) = v21;
  *(v0 + 56) = v22;
  sub_1000D2A70(v3, v0 + 256, &qword_10169FCA8, &qword_1013A2B88);
  sub_100017D5C(v31, v30);
  sub_100017D5C(v29, v28);
  sub_100017D5C(v27, v26);
  v32 = swift_task_alloc();
  *(v0 + 656) = v32;
  *v32 = v0;
  v32[1] = sub_100F2C488;
  v33 = *(v0 + 480);

  return sub_100424C7C(v0 + 112, v33, v0 + 64, v0 + 16, 1, v24, v25, 4000);
}

uint64_t sub_100F2C488()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);

    sub_10000B3A8(v3, &qword_10169FCA8, &qword_1013A2B88);
    v4 = sub_100F3A93C;
  }

  else
  {
    sub_10000B3A8(*(v2 + 320), &qword_10169FCA8, &qword_1013A2B88);
    v4 = sub_100F3A944;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100F2C5D8(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *(v3 + 312) = a1;
  *(v3 + 320) = a3;
  v4 = a3[1];
  *(v3 + 328) = *a3;
  *(v3 + 344) = v4;
  v5 = *a2;
  v6 = a2[1];
  *(v3 + 360) = a3[2];
  *(v3 + 376) = v5;
  v7 = a2[2];
  *(v3 + 392) = v6;
  *(v3 + 408) = v7;
  sub_1000BC4D4(&qword_1016B5CC0, &qword_1013D7370);
  *(v3 + 424) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = type metadata accessor for BeaconIdentifier(0);
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100F2C72C, 0, 0);
}

uint64_t sub_100F2C72C()
{
  sub_100F3A2F8(v0[39], v0[60], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[61] = v1;
  *v1 = v0;
  v1[1] = sub_100F2C7E4;
  v2 = v0[55];
  v3 = v0[39];

  return sub_100F2FA04(v2, v3);
}

uint64_t sub_100F2C7E4()
{
  v2 = *v1;
  *(v2 + 496) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100F2CC78, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 504) = v3;
    *v3 = v2;
    v3[1] = sub_100F2C950;

    return daemon.getter();
  }
}

uint64_t sub_100F2C950(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[64] = a1;

  v3 = swift_task_alloc();
  v2[65] = v3;
  v4 = type metadata accessor for Daemon();
  v2[66] = v4;
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[67] = v6;
  v7 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_100F2CB30;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F2CB30(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 544) = a1;
  *(v4 + 552) = v1;

  if (v1)
  {
    v5 = sub_100F2D1F0;
    v6 = 0;
  }

  else
  {
    v5 = sub_100F2CD4C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100F2CC78()
{
  sub_100F3A500(*(v0 + 480), type metadata accessor for BeaconIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F2CD4C()
{
  v1 = *(*(v0 + 544) + 128);
  *(v0 + 560) = v1;
  if (v1)
  {

    v2 = sub_100F2CDD8;
  }

  else
  {
    v2 = sub_100F2D2E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F2CDD8()
{
  v36 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = type metadata accessor for Logger();
  *(v0 + 568) = sub_1000076D4(v5, qword_10177B810);
  sub_1000D2A70(v3, v4, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A2F8(v2, v1, type metadata accessor for BeaconIdentifier);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 472);
  if (v8)
  {
    v10 = *(v0 + 432);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315651;
    v13 = *v10;
    v33 = v12;
    v34 = 0x7972616D6972702ELL;
    v35 = 0xEA0000000000282FLL;
    *(v0 + 304) = v13;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    sub_10000B3A8(v10, &unk_1016C8FC0, &unk_10139D7D0);
    v16 = sub_1000136BC(v34, v35, &v33);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v17;
    v18._countAndFlagsBits = 47;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20 = v34;
    v21 = v35;
    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    v22 = sub_1000136BC(v20, v21, &v33);

    *(v11 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Best effort lastObservedIndex %s for %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 432);

    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    sub_10000B3A8(v23, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v24 = *(v0 + 560);
  v25 = *(v0 + 440);
  v26 = *(v0 + 392);
  *(v0 + 64) = *(v0 + 376);
  v27 = *(v0 + 408);
  *(v0 + 80) = v26;
  *(v0 + 96) = v27;
  v28 = *v25;
  *(v0 + 576) = *v25;
  v29 = swift_task_alloc();
  *(v0 + 584) = v29;
  *v29 = v0;
  v29[1] = sub_100F2D4C0;
  v30 = *(v0 + 480);
  v31 = *(v0 + 320);

  return sub_100424C7C(v0 + 160, v30, v0 + 64, v31, 0, v28, v24, 4000);
}

uint64_t sub_100F2D1F0()
{
  v1 = v0[60];
  sub_10000B3A8(v0[55], &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100F2D2E0()
{
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B810);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing LTKGenerator!", v4, 2u);
  }

  v5 = v0[60];
  v6 = v0[55];

  sub_100F32E3C();
  swift_allocError();
  *v7 = 1;
  swift_willThrow();

  sub_10000B3A8(v6, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v5, type metadata accessor for BeaconIdentifier);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F2D4C0()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_100F2D9FC;
  }

  else
  {
    v2 = sub_100F2D5D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F2D5D4()
{
  sub_100F3A034(v0 + 160, v0 + 208);
  v1 = sub_100A5CBA0(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100A5CBA0((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 600) = v1;
  *(v1 + 2) = v3 + 1;
  v4 = &v1[48 * v3];
  v5 = *(v0 + 160);
  v6 = *(v0 + 192);
  *(v4 + 3) = *(v0 + 176);
  *(v4 + 4) = v6;
  *(v4 + 2) = v5;
  v7 = swift_task_alloc();
  *(v0 + 608) = v7;
  *v7 = v0;
  v7[1] = sub_100F2D6D8;

  return daemon.getter();
}

uint64_t sub_100F2D6D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 616) = a1;

  v5 = swift_task_alloc();
  *(v3 + 624) = v5;
  v6 = type metadata accessor for StandaloneBeaconService();
  v7 = sub_100F3A180(&qword_10169F450, type metadata accessor for StandaloneBeaconService, &unk_1013E3258);
  *v5 = v4;
  v5[1] = sub_100F2D88C;
  v8 = *(v2 + 536);
  v9 = *(v2 + 528);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100F2D88C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 632) = a1;
  *(v4 + 640) = v1;

  if (v1)
  {

    v5 = sub_100F2DBAC;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 448);

    *(v4 + 672) = *(v7 + 20);
    v5 = sub_100F2DB04;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100F2D9FC()
{
  v1 = v0[60];
  v2 = v0[55];

  sub_10000B3A8(v2, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100F2DB04()
{
  v1 = *(v0 + 640);
  sub_100F856F4(*(v0 + 480) + *(v0 + 672), *(v0 + 424));
  *(v0 + 648) = v1;
  if (v1)
  {

    v2 = sub_100F2E358;
  }

  else
  {
    v2 = sub_100F2DDF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F2DBAC()
{
  v1 = *(v0 + 320);
  v2 = *(v1 + 8);
  if (*(v1 + 8) >> 60 == 15)
  {
    v3 = *(v0 + 480);
    v4 = *(v0 + 440);

    sub_100F39FE0(v0 + 160);
    sub_10000B3A8(v4, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);
    v5 = *(v0 + 600);

    v6 = *(v0 + 8);

    return v6(v5);
  }

  else
  {
    v8 = *(v1 + 24);
    v9 = *(v1 + 40);
    v10 = *(v0 + 576);
    if (v10)
    {
      v11 = v10 / 0x60 + 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v0 + 560);
    v14 = *(v0 + 360);
    v13 = *(v0 + 368);
    v16 = *(v0 + 344);
    v15 = *(v0 + 352);
    v18 = *(v0 + 328);
    v17 = *(v0 + 336);
    *(v0 + 16) = *v1;
    *(v0 + 24) = v2;
    *(v0 + 40) = v8;
    *(v0 + 56) = v9;
    sub_1000D2A70(v1, v0 + 256, &qword_10169FCA8, &qword_1013A2B88);
    sub_100017D5C(v18, v17);
    sub_100017D5C(v16, v15);
    sub_100017D5C(v14, v13);
    v19 = swift_task_alloc();
    *(v0 + 656) = v19;
    *v19 = v0;
    v19[1] = sub_100F2E474;
    v20 = *(v0 + 480);

    return sub_100424C7C(v0 + 112, v20, v0 + 64, v0 + 16, 1, v11, v12, 4000);
  }
}

uint64_t sub_100F2DDF4()
{
  v43 = v0;
  v1 = *(v0 + 424);
  v2 = type metadata accessor for StandaloneBeacon(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v8 = *(v0 + 480);
    v9 = *(v0 + 464);
    sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
    sub_100F3A2F8(v8, v9, type metadata accessor for BeaconIdentifier);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 480);
    v14 = *(v0 + 464);
    if (v12)
    {
      v39 = *(v0 + 440);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40 = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      type metadata accessor for UUID();
      v38 = v13;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v17;
      v18._countAndFlagsBits = 47;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      sub_100F3A500(v14, type metadata accessor for BeaconIdentifier);
      v20 = sub_1000136BC(v41, v42, &v40);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "Skipping secondary keys for standalone beacon %{private,mask.hash}s", v15, 0x16u);
      sub_100007BAC(v16);

      sub_100F39FE0(v0 + 160);
      sub_10000B3A8(v39, &unk_1016C8FC0, &unk_10139D7D0);
      v7 = v38;
    }

    else
    {
      v35 = *(v0 + 440);

      sub_100F39FE0(v0 + 160);
      sub_100F3A500(v14, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v35, &unk_1016C8FC0, &unk_10139D7D0);
      v7 = v13;
    }

LABEL_13:
    sub_100F3A500(v7, type metadata accessor for BeaconIdentifier);
    v36 = *(v0 + 600);

    v37 = *(v0 + 8);

    return v37(v36);
  }

  sub_10000B3A8(v1, &qword_1016B5CC0, &qword_1013D7370);
  v3 = *(v0 + 320);
  v4 = *(v3 + 8);
  if (*(v3 + 8) >> 60 == 15)
  {
    v5 = *(v0 + 480);
    v6 = *(v0 + 440);

    sub_100F39FE0(v0 + 160);
    sub_10000B3A8(v6, &unk_1016C8FC0, &unk_10139D7D0);
    v7 = v5;
    goto LABEL_13;
  }

  v21 = *(v3 + 24);
  v22 = *(v3 + 40);
  v23 = *(v0 + 576);
  if (v23)
  {
    v24 = v23 / 0x60 + 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 560);
  v27 = *(v0 + 360);
  v26 = *(v0 + 368);
  v29 = *(v0 + 344);
  v28 = *(v0 + 352);
  v31 = *(v0 + 328);
  v30 = *(v0 + 336);
  *(v0 + 16) = *v3;
  *(v0 + 24) = v4;
  *(v0 + 40) = v21;
  *(v0 + 56) = v22;
  sub_1000D2A70(v3, v0 + 256, &qword_10169FCA8, &qword_1013A2B88);
  sub_100017D5C(v31, v30);
  sub_100017D5C(v29, v28);
  sub_100017D5C(v27, v26);
  v32 = swift_task_alloc();
  *(v0 + 656) = v32;
  *v32 = v0;
  v32[1] = sub_100F2E474;
  v33 = *(v0 + 480);

  return sub_100424C7C(v0 + 112, v33, v0 + 64, v0 + 16, 1, v24, v25, 4000);
}

uint64_t sub_100F2E358()
{
  v1 = v0[60];
  v2 = v0[55];

  sub_100F39FE0((v0 + 20));
  sub_10000B3A8(v2, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100F2E474()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);

    sub_10000B3A8(v3, &qword_10169FCA8, &qword_1013A2B88);
    v4 = sub_100F2E970;
  }

  else
  {
    sub_10000B3A8(*(v2 + 320), &qword_10169FCA8, &qword_1013A2B88);
    v4 = sub_100F2E5C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100F2E5C4()
{
  v30 = v0;
  v25 = *(v0 + 168);
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  sub_100F3A2F8(*(v0 + 480), *(v0 + 456), type metadata accessor for BeaconIdentifier);
  sub_100017D5C(v1, v2);
  v26 = v3;
  sub_100017D5C(v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 456);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v24 = v2;
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v11;
    v12._countAndFlagsBits = 47;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
    v14 = sub_1000136BC(v28, v29, &v27);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Got secondary key for %{private,mask.hash}s!", v9, 0x16u);
    sub_100007BAC(v10);
    v2 = v24;
  }

  else
  {

    sub_100F3A500(v8, type metadata accessor for BeaconIdentifier);
  }

  v15 = *(v0 + 600);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_100A5CBA0((v16 > 1), v17 + 1, 1, *(v0 + 600));
  }

  v18 = *(v0 + 480);
  v19 = *(v0 + 440);
  v20 = *(v0 + 320);

  sub_100F39FE0(v0 + 112);

  sub_10000B3A8(v20, &qword_10169FCA8, &qword_1013A2B88);
  sub_100F39FE0(v0 + 160);
  sub_10000B3A8(v19, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v18, type metadata accessor for BeaconIdentifier);
  *(v15 + 2) = v17 + 1;
  v21 = &v15[48 * v17];
  v21[32] = 1;
  *(v21 + 5) = v25;
  *(v21 + 6) = v1;
  *(v21 + 7) = v2;
  *(v21 + 8) = v26;
  *(v21 + 9) = v4;

  v22 = *(v0 + 8);

  return v22(v15);
}

uint64_t sub_100F2E970()
{
  v1 = v0[60];
  v2 = v0[55];
  v3 = v0[40];

  sub_10000B3A8(v3, &qword_10169FCA8, &qword_1013A2B88);
  sub_100F39FE0((v0 + 20));
  sub_10000B3A8(v2, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100F2EA9C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for BeaconIdentifier(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100F2EBDC, 0, 0);
}

uint64_t sub_100F2EBDC()
{
  sub_100F3A2F8(v0[3], v0[11], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_100F2EC8C;

  return daemon.getter();
}

uint64_t sub_100F2EC8C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[13] = a1;

  v3 = swift_task_alloc();
  v2[14] = v3;
  v4 = type metadata accessor for Daemon();
  v2[15] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[16] = v6;
  v7 = sub_100F3A180(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100F2EE6C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F2EE6C(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F3A938, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[19] = v4;
    *v4 = v3;
    v4[1] = sub_100F2F004;

    return daemon.getter();
  }
}

uint64_t sub_100F2F004(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 160) = a1;

  v5 = swift_task_alloc();
  *(v3 + 168) = v5;
  v6 = type metadata accessor for BeaconKeyService();
  v7 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v5 = v4;
  v5[1] = sub_100F2F1B8;
  v8 = *(v2 + 128);
  v9 = *(v2 + 120);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100F2F1B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F3A8F0, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[24] = v5;
    *v5 = v4;
    v5[1] = sub_100F2F364;
    v7 = v3[3];
    v6 = v3[4];

    return sub_10098F404(v6, v7);
  }
}

uint64_t sub_100F2F364()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_100F3A8F4;
  }

  else
  {
    v2 = sub_100F2F478;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F2F478()
{
  v32 = v0;
  v1 = v0[4];
  v2 = type metadata accessor for KeyGenerationBeaconInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E368, &qword_1013D6690);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v3 = v0[10];
    v4 = v0[11];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B810);
    sub_100F3A2F8(v4, v3, type metadata accessor for BeaconIdentifier);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[10];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v12;
      v13._countAndFlagsBits = 47;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
      v15 = sub_1000136BC(v30, v31, &v29);

      *(v10 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "No base date for beacon %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    }

    sub_100F32E3C();
    swift_allocError();
    *v27 = 3;
    swift_willThrow();

    sub_100F3A500(v0[11], type metadata accessor for BeaconIdentifier);

    v28 = v0[1];

    return v28();
  }

  else
  {
    v16 = v0[8];
    v17 = v0[9];
    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[5];
    v21 = v0[3];
    (*(v19 + 16))(v18, v1 + *(v2 + 20), v20);
    sub_100F3A500(v1, type metadata accessor for KeyGenerationBeaconInfo);
    (*(v19 + 32))(v16, v18, v20);
    v22 = *(v17 + 20);
    v23 = swift_task_alloc();
    v0[26] = v23;
    *v23 = v0;
    v23[1] = sub_100F2F908;
    v24 = v0[8];
    v25 = v0[2];

    return sub_1010D51F8(v25, v21 + v22, v24);
  }
}

uint64_t sub_100F2F908()
{

  return _swift_task_switch(sub_100F3A8E4, 0, 0);
}

uint64_t sub_100F2FA04(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for BeaconIdentifier(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100F2FB44, 0, 0);
}

uint64_t sub_100F2FB44()
{
  sub_100F3A2F8(v0[3], v0[11], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_100F2FBF4;

  return daemon.getter();
}

uint64_t sub_100F2FBF4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[13] = a1;

  v3 = swift_task_alloc();
  v2[14] = v3;
  v4 = type metadata accessor for Daemon();
  v2[15] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100F3A180(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[16] = v6;
  v7 = sub_100F3A180(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100F2FDD4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F2FDD4(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F302CC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[19] = v4;
    *v4 = v3;
    v4[1] = sub_100F2FF6C;

    return daemon.getter();
  }
}

uint64_t sub_100F2FF6C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 160) = a1;

  v5 = swift_task_alloc();
  *(v3 + 168) = v5;
  v6 = type metadata accessor for BeaconKeyService();
  v7 = sub_100F3A180(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v5 = v4;
  v5[1] = sub_100F30120;
  v8 = *(v2 + 128);
  v9 = *(v2 + 120);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100F30120(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100F3049C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[24] = v5;
    *v5 = v4;
    v5[1] = sub_100F30388;
    v7 = v3[3];
    v6 = v3[4];

    return sub_10098F404(v6, v7);
  }
}

uint64_t sub_100F302CC()
{
  sub_100F3A500(*(v0 + 88), type metadata accessor for BeaconIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F30388()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_100F309F0;
  }

  else
  {
    v2 = sub_100F30560;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F3049C()
{

  sub_100F3A500(*(v0 + 88), type metadata accessor for BeaconIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F30560()
{
  v32 = v0;
  v1 = v0[4];
  v2 = type metadata accessor for KeyGenerationBeaconInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E368, &qword_1013D6690);
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v3 = v0[10];
    v4 = v0[11];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B810);
    sub_100F3A2F8(v4, v3, type metadata accessor for BeaconIdentifier);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[10];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v12;
      v13._countAndFlagsBits = 47;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
      v15 = sub_1000136BC(v30, v31, &v29);

      *(v10 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "No base date for beacon %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    }

    sub_100F32E3C();
    swift_allocError();
    *v27 = 3;
    swift_willThrow();

    sub_100F3A500(v0[11], type metadata accessor for BeaconIdentifier);

    v28 = v0[1];

    return v28();
  }

  else
  {
    v16 = v0[8];
    v17 = v0[9];
    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[5];
    v21 = v0[3];
    (*(v19 + 16))(v18, v1 + *(v2 + 20), v20);
    sub_100F3A500(v1, type metadata accessor for KeyGenerationBeaconInfo);
    (*(v19 + 32))(v16, v18, v20);
    v22 = *(v17 + 20);
    v23 = swift_task_alloc();
    v0[26] = v23;
    *v23 = v0;
    v23[1] = sub_100F30AC0;
    v24 = v0[8];
    v25 = v0[2];

    return sub_1010D51F8(v25, v21 + v22, v24);
  }
}

uint64_t sub_100F309F0()
{

  sub_100F3A500(*(v0 + 88), type metadata accessor for BeaconIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F30AC0()
{

  return _swift_task_switch(sub_100F30BBC, 0, 0);
}

uint64_t sub_100F30BBC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  (*(v4 + 8))(v2, v3);
  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100F30CB0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for BeaconIdentifier(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100F30E08, 0, 0);
}

uint64_t sub_100F30E08()
{
  sub_100F3A2F8(v0[3], v0[14], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_100F30EB8;

  return sub_100946D3C();
}

uint64_t sub_100F30EB8(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_100F30FB8, 0, 0);
}

uint64_t sub_100F30FB8()
{
  v18 = v0;
  if (v0[16])
  {
    v1 = v0[14];
    v2 = v0[9];
    v3 = v0[7];
    v4 = *(v0[8] + 16);
    v4(v0[10], v1 + *(v0[11] + 20), v3);
    v4(v2, v1, v3);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_100F31294;
    v6 = v0[6];
    v7 = v0[3];

    return sub_100F2EA9C(v6, v7);
  }

  else
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B810);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v17);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s Missing ItemSharingKeyStore!", v12, 0xCu);
      sub_100007BAC(v13);
    }

    v14 = v0[14];
    sub_100F32E3C();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    sub_100F3A500(v14, type metadata accessor for BeaconIdentifier);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100F31294()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100F317C8;
  }

  else
  {
    v2 = sub_100F313A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F313A8()
{
  v33 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[5];
  v3 = v0[6];
  v5 = type metadata accessor for Logger();
  v0[19] = sub_1000076D4(v5, qword_10177B810);
  sub_1000D2A70(v3, v4, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A2F8(v2, v1, type metadata accessor for BeaconIdentifier);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  if (v8)
  {
    v10 = v0[5];
    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v11 = 136315907;
    *(v11 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v30);
    *(v11 + 12) = 2080;
    v12 = *v10;
    v31 = 0x7972616D6972702ELL;
    v32 = 0xEA0000000000282FLL;
    v0[2] = v12;
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = v31;
    v16 = v32;
    sub_10000B3A8(v10, &unk_1016C8FC0, &unk_10139D7D0);
    v17 = sub_1000136BC(v15, v16, &v30);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v18;
    v19._countAndFlagsBits = 47;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21 = v31;
    v22 = v32;
    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    v23 = sub_1000136BC(v21, v22, &v30);

    *(v11 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Best effort lastObservedIndex %s for %{private,mask.hash}s", v11, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[5];

    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    sub_10000B3A8(v24, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v25 = *v0[6];
  v0[20] = v25;
  v26 = swift_task_alloc();
  v0[21] = v26;
  *v26 = v0;
  v26[1] = sub_100F318DC;
  v28 = v0[9];
  v27 = v0[10];

  return sub_100F10DF4(v28, v27, v25);
}

uint64_t sub_100F317C8()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];

  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v2, v4);
  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F318DC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;

  if (v2)
  {
    v5 = sub_100F31E64;
  }

  else
  {
    v5 = sub_100F319F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F319F4()
{
  v35 = v0;
  if (v0[23] >> 60 == 15)
  {
    sub_100F3A2F8(v0[14], v0[12], type metadata accessor for BeaconIdentifier);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    v3 = os_log_type_enabled(v1, v2);
    v31 = v0[14];
    v4 = v0[12];
    if (v3)
    {
      v29 = v0[9];
      v30 = v0[10];
      v5 = v0[7];
      v27 = v0[6];
      v28 = v0[8];
      v6 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v6 = 136315651;
      *(v6 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v32);
      *(v6 + 12) = 2160;
      *(v6 + 14) = 1752392040;
      *(v6 + 22) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v7;
      v8._countAndFlagsBits = 47;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10 = v33;
      v11 = v34;
      sub_100F3A500(v4, type metadata accessor for BeaconIdentifier);
      v12 = sub_1000136BC(v10, v11, &v32);

      *(v6 + 24) = v12;
      _os_log_impl(&_mh_execute_header, v1, v2, "%s Missing info to compute connection keys for %{private,mask.hash}s!", v6, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v27, &unk_1016C8FC0, &unk_10139D7D0);
      v13 = *(v28 + 8);
      v13(v29, v5);
      v13(v30, v5);
    }

    else
    {
      v21 = v0[9];
      v20 = v0[10];
      v23 = v0[7];
      v22 = v0[8];
      v24 = v0[6];

      sub_100F3A500(v4, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v24, &unk_1016C8FC0, &unk_10139D7D0);
      v25 = *(v22 + 8);
      v25(v21, v23);
      v25(v20, v23);
    }

    sub_100F3A500(v31, type metadata accessor for BeaconIdentifier);

    v26 = v0[1];

    return v26(_swiftEmptyArrayStorage);
  }

  else
  {
    v14 = v0[20];
    if (v14)
    {
      v15 = v14 / 0x60 + 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = swift_task_alloc();
    v0[25] = v16;
    *v16 = v0;
    v16[1] = sub_100F31F94;
    v18 = v0[9];
    v17 = v0[10];

    return sub_100F114D0(v18, v17, v15);
  }
}

uint64_t sub_100F31E64()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];

  sub_10000B3A8(v6, &unk_1016C8FC0, &unk_10139D7D0);
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F31F94(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = v2;

  if (v2)
  {
    v5 = sub_100F324F4;
  }

  else
  {
    v5 = sub_100F320AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F320AC()
{
  v34 = v0;
  if (v0[27] >> 60 == 15)
  {
    sub_100006654(v0[22], v0[23]);
    sub_100F3A2F8(v0[14], v0[12], type metadata accessor for BeaconIdentifier);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    v3 = os_log_type_enabled(v1, v2);
    v30 = v0[14];
    v4 = v0[12];
    if (v3)
    {
      v28 = v0[9];
      v29 = v0[10];
      v5 = v0[7];
      v26 = v0[6];
      v27 = v0[8];
      v6 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v6 = 136315651;
      *(v6 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v31);
      *(v6 + 12) = 2160;
      *(v6 + 14) = 1752392040;
      *(v6 + 22) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v7;
      v8._countAndFlagsBits = 47;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10 = v32;
      v11 = v33;
      sub_100F3A500(v4, type metadata accessor for BeaconIdentifier);
      v12 = sub_1000136BC(v10, v11, &v31);

      *(v6 + 24) = v12;
      _os_log_impl(&_mh_execute_header, v1, v2, "%s Missing info to compute connection keys for %{private,mask.hash}s!", v6, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v26, &unk_1016C8FC0, &unk_10139D7D0);
      v13 = *(v27 + 8);
      v13(v28, v5);
      v13(v29, v5);
    }

    else
    {
      v20 = v0[9];
      v19 = v0[10];
      v22 = v0[7];
      v21 = v0[8];
      v23 = v0[6];

      sub_100F3A500(v4, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v23, &unk_1016C8FC0, &unk_10139D7D0);
      v24 = *(v21 + 8);
      v24(v20, v22);
      v24(v19, v22);
    }

    sub_100F3A500(v30, type metadata accessor for BeaconIdentifier);

    v25 = v0[1];

    return v25(_swiftEmptyArrayStorage);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[29] = v14;
    *v14 = v0;
    v14[1] = sub_100F32634;
    v15 = v0[20];
    v17 = v0[9];
    v16 = v0[10];

    return sub_1006868C4(v17, v16, v15);
  }
}

uint64_t sub_100F324F4()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];

  sub_100006654(v1, v2);
  sub_10000B3A8(v8, &unk_1016C8FC0, &unk_10139D7D0);
  v9 = *(v7 + 8);
  v9(v5, v6);
  v9(v4, v6);
  sub_100F3A500(v3, type metadata accessor for BeaconIdentifier);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F32634(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v5 = sub_100F32CE0;
  }

  else
  {
    v5 = sub_100F3274C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F3274C()
{
  v56 = v0;
  v1 = v0[31];
  if (v1 >> 60 == 15)
  {
    sub_100006654(v0[26], v0[27]);
    sub_100006654(v0[22], v0[23]);
    sub_100F3A2F8(v0[14], v0[12], type metadata accessor for BeaconIdentifier);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v51 = v0[14];
    v5 = v0[12];
    if (v4)
    {
      v47 = v0[9];
      v49 = v0[10];
      v45 = v0[8];
      v6 = v0[7];
      v43 = v0[6];
      v7 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v7 = 136315651;
      *(v7 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v53);
      *(v7 + 12) = 2160;
      *(v7 + 14) = 1752392040;
      *(v7 + 22) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v8;
      v9._countAndFlagsBits = 47;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v10);

      v11 = v54;
      v12 = v55;
      sub_100F3A500(v5, type metadata accessor for BeaconIdentifier);
      v13 = sub_1000136BC(v11, v12, &v53);

      *(v7 + 24) = v13;
      _os_log_impl(&_mh_execute_header, v2, v3, "%s Missing info to compute connection keys for %{private,mask.hash}s!", v7, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v43, &unk_1016C8FC0, &unk_10139D7D0);
      v14 = *(v45 + 8);
      v14(v47, v6);
      v14(v49, v6);
    }

    else
    {
      v25 = v0[9];
      v24 = v0[10];
      v27 = v0[7];
      v26 = v0[8];
      v28 = v0[6];

      sub_100F3A500(v5, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v28, &unk_1016C8FC0, &unk_10139D7D0);
      v29 = *(v26 + 8);
      v29(v25, v27);
      v29(v24, v27);
    }

    sub_100F3A500(v51, type metadata accessor for BeaconIdentifier);
    v16 = _swiftEmptyArrayStorage;
  }

  else
  {
    v15 = v0[30];
    sub_10002E98C(v0[22], v0[23]);
    sub_10002E98C(v15, v1);
    v16 = sub_100A5CBA0(0, 1, 1, _swiftEmptyArrayStorage);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v16 = sub_100A5CBA0((v17 > 1), v18 + 1, 1, v16);
    }

    v20 = v0[20];
    v21 = &v16[48 * v18];
    v22 = *(v0 + 11);
    v23 = *(v0 + 15);
    *(v16 + 2) = v19;
    v21[32] = 0;
    *(v21 + 5) = v20;
    *(v21 + 3) = v22;
    *(v21 + 4) = v23;
    if (v20)
    {
      v50 = v0[20] / 0x60uLL + 1;
    }

    else
    {
      v50 = 0;
    }

    v30 = *(v16 + 3);
    v52 = v18 + 1;
    v48 = v18 + 2;
    if (v19 >= v30 >> 1)
    {
      v16 = sub_100A5CBA0((v30 > 1), v18 + 2, 1, v16);
    }

    v32 = v0[22];
    v31 = v0[23];
    v33 = v0[14];
    v35 = v0[9];
    v34 = v0[10];
    v37 = v0[7];
    v36 = v0[8];
    v38 = v0[6];
    v46 = *(v0 + 15);
    v44 = *(v0 + 13);

    sub_100006654(v32, v31);
    sub_10000B3A8(v38, &unk_1016C8FC0, &unk_10139D7D0);
    v39 = *(v36 + 8);
    v39(v35, v37);
    v39(v34, v37);
    sub_100F3A500(v33, type metadata accessor for BeaconIdentifier);
    *(v16 + 2) = v48;
    v40 = &v16[48 * v52];
    v40[32] = 1;
    *(v40 + 5) = v50;
    *(v40 + 3) = v44;
    *(v40 + 4) = v46;
  }

  v41 = v0[1];

  return v41(v16);
}

uint64_t sub_100F32CE0()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v13 = v0[14];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];

  sub_100006654(v1, v2);
  sub_100006654(v4, v3);
  sub_10000B3A8(v9, &unk_1016C8FC0, &unk_10139D7D0);
  v10 = *(v7 + 8);
  v10(v6, v8);
  v10(v5, v8);
  sub_100F3A500(v13, type metadata accessor for BeaconIdentifier);

  v11 = v0[1];

  return v11();
}

unint64_t sub_100F32E3C()
{
  result = qword_1016C0F28;
  if (!qword_1016C0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C0F28);
  }

  return result;
}

void sub_100F32E90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t, uint64_t))
{
  if (a2 >> 60 != 15)
  {
    a7(a1);
    (a7)(a3, a4);

    a8(a5, a6);
  }
}

uint64_t sub_100F32F98(uint64_t a1)
{
  v1[3] = a1;
  sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for BeaconIdentifier(0);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100F330F0, 0, 0);
}

uint64_t sub_100F330F0()
{
  sub_100F3A2F8(v0[3], v0[13], type metadata accessor for BeaconIdentifier);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_100F331B0;

  return sub_1013175B8();
}

uint64_t sub_100F331B0(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100F332B0, 0, 0);
}

uint64_t sub_100F332B0()
{
  v18 = v0;
  if (v0[15])
  {
    v1 = v0[13];
    v2 = v0[8];
    v3 = v0[6];
    v4 = *(v0[7] + 16);
    v4(v0[9], v1 + *(v0[10] + 20), v3);
    v4(v2, v1, v3);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_100F3358C;
    v6 = v0[5];
    v7 = v0[3];

    return sub_100F2FA04(v6, v7);
  }

  else
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B810);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v17);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s Missing ItemSharingKeyStore!", v12, 0xCu);
      sub_100007BAC(v13);
    }

    v14 = v0[13];
    sub_100F32E3C();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    sub_100F3A500(v14, type metadata accessor for BeaconIdentifier);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100F3358C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100F33AC0;
  }

  else
  {
    v2 = sub_100F336A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F336A0()
{
  v33 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  v0[18] = sub_1000076D4(v5, qword_10177B810);
  sub_1000D2A70(v3, v4, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100F3A2F8(v2, v1, type metadata accessor for BeaconIdentifier);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  if (v8)
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v11 = 136315907;
    *(v11 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v30);
    *(v11 + 12) = 2080;
    v12 = *v10;
    v31 = 0x7972616D6972702ELL;
    v32 = 0xEA0000000000282FLL;
    v0[2] = v12;
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = v31;
    v16 = v32;
    sub_10000B3A8(v10, &unk_1016C8FC0, &unk_10139D7D0);
    v17 = sub_1000136BC(v15, v16, &v30);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v18;
    v19._countAndFlagsBits = 47;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21 = v31;
    v22 = v32;
    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    v23 = sub_1000136BC(v21, v22, &v30);

    *(v11 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Best effort lastObservedIndex %s for %{private,mask.hash}s", v11, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[4];

    sub_100F3A500(v9, type metadata accessor for BeaconIdentifier);
    sub_10000B3A8(v24, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v25 = *v0[5];
  v0[19] = v25;
  v26 = swift_task_alloc();
  v0[20] = v26;
  *v26 = v0;
  v26[1] = sub_100F33BD4;
  v28 = v0[8];
  v27 = v0[9];

  return sub_100F10DF4(v28, v27, v25);
}

uint64_t sub_100F33AC0()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];

  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v2, v4);
  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F33BD4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[21] = a1;
  v4[22] = a2;
  v4[23] = v2;

  if (v2)
  {
    v5 = sub_100F3415C;
  }

  else
  {
    v5 = sub_100F33CEC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F33CEC()
{
  v35 = v0;
  if (v0[22] >> 60 == 15)
  {
    sub_100F3A2F8(v0[13], v0[11], type metadata accessor for BeaconIdentifier);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    v3 = os_log_type_enabled(v1, v2);
    v31 = v0[13];
    v4 = v0[11];
    if (v3)
    {
      v29 = v0[8];
      v30 = v0[9];
      v5 = v0[6];
      v27 = v0[5];
      v28 = v0[7];
      v6 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v6 = 136315651;
      *(v6 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101374660, &v32);
      *(v6 + 12) = 2160;
      *(v6 + 14) = 1752392040;
      *(v6 + 22) = 2081;
      sub_100F3A180(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v7;
      v8._countAndFlagsBits = 47;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10 = v33;
      v11 = v34;
      sub_100F3A500(v4, type metadata accessor for BeaconIdentifier);
      v12 = sub_1000136BC(v10, v11, &v32);

      *(v6 + 24) = v12;
      _os_log_impl(&_mh_execute_header, v1, v2, "%s Missing info to compute connection keys for %{private,mask.hash}s!", v6, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v27, &unk_1016C8FC0, &unk_10139D7D0);
      v13 = *(v28 + 8);
      v13(v29, v5);
      v13(v30, v5);
    }

    else
    {
      v21 = v0[8];
      v20 = v0[9];
      v23 = v0[6];
      v22 = v0[7];
      v24 = v0[5];

      sub_100F3A500(v4, type metadata accessor for BeaconIdentifier);
      sub_10000B3A8(v24, &unk_1016C8FC0, &unk_10139D7D0);
      v25 = *(v22 + 8);
      v25(v21, v23);
      v25(v20, v23);
    }

    sub_100F3A500(v31, type metadata accessor for BeaconIdentifier);

    v26 = v0[1];

    return v26(_swiftEmptyArrayStorage);
  }

  else
  {
    v14 = v0[19];
    if (v14)
    {
      v15 = v14 / 0x60 + 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = swift_task_alloc();
    v0[24] = v16;
    *v16 = v0;
    v16[1] = sub_100F3428C;
    v18 = v0[8];
    v17 = v0[9];

    return sub_100F114D0(v18, v17, v15);
  }
}

uint64_t sub_100F3415C()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];

  sub_10000B3A8(v6, &unk_1016C8FC0, &unk_10139D7D0);
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  sub_100F3A500(v1, type metadata accessor for BeaconIdentifier);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F3428C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {
    v5 = sub_100F347EC;
  }

  else
  {
    v5 = sub_100F343A4;
  }

  return _swift_task_switch(v5, 0, 0);
}