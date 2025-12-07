uint64_t sub_1000015B8@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v117) = a3;
  v122 = a5;
  v123 = sub_1000041F4(&qword_10000C0C0, &qword_100006730);
  v107 = *(v123 - 8);
  __chkstk_darwin(v123);
  v106 = &v94 - v8;
  v115 = sub_1000041F4(&qword_10000C0C8, &qword_100006738);
  __chkstk_darwin(v115);
  v110 = &v94 - v9;
  v119 = sub_1000041F4(&qword_10000C0D0, &qword_100006740);
  __chkstk_darwin(v119);
  v121 = &v94 - v10;
  v111 = sub_1000041F4(&qword_10000C0D8, &qword_100006748);
  __chkstk_darwin(v111);
  v113 = &v94 - v11;
  v120 = sub_1000041F4(&qword_10000C0E0, &qword_100006750);
  __chkstk_darwin(v120);
  v116 = &v94 - v12;
  v13 = sub_1000041F4(&qword_10000C0E8, &qword_100006758);
  __chkstk_darwin(v13 - 8);
  v101 = &v94 - v14;
  v98 = sub_1000041F4(&qword_10000C0F0, &qword_100006760);
  __chkstk_darwin(v98);
  v99 = &v94 - v15;
  v109 = sub_1000041F4(&qword_10000C0F8, &qword_100006768);
  __chkstk_darwin(v109);
  v100 = &v94 - v16;
  v112 = sub_1000041F4(&qword_10000C100, &qword_100006770);
  v104 = *(v112 - 8);
  __chkstk_darwin(v112);
  v103 = &v94 - v17;
  v114 = sub_100006038();
  v118 = *(v114 - 8);
  __chkstk_darwin(v114);
  v108 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100006028();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v105 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v22;
  __chkstk_darwin(v21);
  v24 = &v94 - v23;
  v25 = sub_1000041F4(&qword_10000C108, &qword_100006778);
  __chkstk_darwin(v25 - 8);
  v124 = &v94 - v26;
  v27 = sub_1000041F4(&qword_10000C110, &qword_100006780);
  v28 = __chkstk_darwin(v27 - 8);
  v125 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v94 - v30;
  v32 = sub_1000060C8();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a2;
  if (a2)
  {
    v36 = a1;
  }

  else
  {

    sub_1000061C8();
    v37 = sub_1000060E8();
    v96 = a1;
    v38 = a4;
    v39 = v24;
    v40 = v20;
    v41 = v19;
    v42 = v37;
    sub_100006048();

    v19 = v41;
    v20 = v40;
    v24 = v39;
    a4 = v38;
    a1 = v96;
    sub_1000060B8();
    swift_getAtKeyPath();
    sub_100004410(a1, 0);
    (*(v33 + 8))(v35, v32);
    v36 = v127;
  }

  sub_100005FB8();

  v43 = v117 & 1;
  LOBYTE(v127) = v117 & 1;
  v128 = a4;
  sub_1000041F4(&qword_10000C118, &qword_100006788);
  sub_100006168();
  v44 = v126;
  v45 = v124;
  sub_10000441C(v31, v124);
  v46 = sub_100005FA8();
  v47 = (*(*(v46 - 8) + 48))(v45, 1, v46);
  v48 = v125;
  if (v47 == 1)
  {
    v49 = v106;
    sub_100006068();
    v50 = v107;
    v51 = v123;
    (*(v107 + 2))(v121, v49, v123);
    swift_storeEnumTagMultiPayload();
    sub_10000448C();
    sub_1000048F8(&qword_10000C170, &qword_10000C0C0, &qword_100006730, &protocol conformance descriptor for ProgressView<A, B>);
    sub_1000060D8();
    (*(v50 + 1))(v49, v51);
  }

  else
  {
    v117 = a4;
    sub_100004D1C(v45, v125, &qword_10000C110, &qword_100006780);
    v52 = *(sub_1000041F4(&qword_10000C180, &qword_1000067A0) + 48);
    v53 = v48;
    v54 = *(v20 + 32);
    v54(v24, v53, v19);
    v95 = v19;
    if (v44)
    {
      v55 = v114;
      (*(v118 + 32))(v108, &v52[v125], v114);
      (*(v20 + 16))(v105, v24, v19);
      v56 = v99;
      sub_100005FE8();
      v57 = sub_100006088();
      v125 = v20;
      v58 = v57;
      v59 = sub_1000060F8();
      v60 = v56 + *(v98 + 36);
      *v60 = v58;
      *(v60 + 8) = v59;
      sub_100005F58();
      sub_100005F48();
      sub_100004698();
      v61 = v24;
      sub_100004E54(&qword_10000C140, &type metadata accessor for AnalysisHistoryCache, &protocol conformance descriptor for AnalysisHistoryCache);
      v62 = v100;
      sub_100006138();

      sub_100004DF4(v56, &qword_10000C0F0, &qword_100006760);
      KeyPath = swift_getKeyPath();
      v64 = v109;
      v65 = (v62 + *(v109 + 36));
      v66 = sub_1000041F4(&qword_10000C150, &qword_100006790);
      v67 = v108;
      (*(v118 + 16))(v65 + *(v66 + 28), v108, v55);
      *v65 = KeyPath;
      v68 = v101;
      sub_100006018();
      v69 = sub_100005F68();
      (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
      v70 = sub_100004554();
      v71 = v103;
      sub_100006108();
      sub_100004DF4(v68, &qword_10000C0E8, &qword_100006758);
      sub_100004DF4(v62, &qword_10000C0F8, &qword_100006768);
      v72 = v104;
      v73 = v112;
      (*(v104 + 16))(v113, v71, v112);
      swift_storeEnumTagMultiPayload();
      v127 = v64;
      v128 = v70;
      swift_getOpaqueTypeConformance2();
      sub_100004754();
      v74 = v116;
      sub_1000060D8();
      sub_100004D84(v74, v121);
      swift_storeEnumTagMultiPayload();
      sub_10000448C();
      sub_1000048F8(&qword_10000C170, &qword_10000C0C0, &qword_100006730, &protocol conformance descriptor for ProgressView<A, B>);
      sub_1000060D8();
      sub_100004DF4(v74, &qword_10000C0E0, &qword_100006750);
      (*(v72 + 8))(v71, v73);
      (*(v118 + 8))(v67, v55);
      (*(v125 + 8))(v61, v95);
    }

    else
    {
      sub_100006068();
      v75 = *(v20 + 16);
      v108 = v52;
      v76 = v105;
      v75(v105, v24, v19);
      v77 = (*(v20 + 80) + 16) & ~*(v20 + 80);
      v78 = a1;
      v79 = (v97 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      v81 = v19;
      v82 = v80;
      v54((v80 + v77), v76, v81);
      v83 = v82 + v79;
      *v83 = v78;
      LOBYTE(v77) = v102 & 1;
      *(v83 + 8) = v102 & 1;
      *(v83 + 16) = v43;
      v84 = v117;
      *(v83 + 24) = v117;
      v85 = sub_1000041F4(&qword_10000C168, &qword_100006798);
      v86 = v110;
      v87 = &v110[*(v85 + 36)];
      sub_100006078();
      v107 = v24;
      sub_100004B1C(v78, v77);

      sub_1000061B8();
      *v87 = &unk_1000067B0;
      *(v87 + 1) = v82;
      v88 = swift_allocObject();
      *(v88 + 16) = v78;
      *(v88 + 24) = v77;
      *(v88 + 32) = v43;
      *(v88 + 40) = v84;
      v89 = (v86 + *(v115 + 36));
      v90 = v78;
      v45 = v124;
      sub_100004B1C(v90, v77);

      sub_1000061B8();
      *v89 = &unk_1000067C0;
      v89[1] = v88;
      sub_100004D1C(v86, v113, &qword_10000C0C8, &qword_100006738);
      swift_storeEnumTagMultiPayload();
      v91 = sub_100004554();
      v127 = v109;
      v128 = v91;
      swift_getOpaqueTypeConformance2();
      sub_100004754();
      v92 = v116;
      sub_1000060D8();
      sub_100004D84(v92, v121);
      swift_storeEnumTagMultiPayload();
      sub_10000448C();
      sub_1000048F8(&qword_10000C170, &qword_10000C0C0, &qword_100006730, &protocol conformance descriptor for ProgressView<A, B>);
      sub_1000060D8();
      sub_100004DF4(v92, &qword_10000C0E0, &qword_100006750);
      sub_100004DF4(v86, &qword_10000C0C8, &qword_100006738);
      (*(v20 + 8))(v107, v95);
      (*(v118 + 8))(&v108[v125], v114);
    }
  }

  return sub_100004DF4(v45, &qword_10000C110, &qword_100006780);
}

uint64_t sub_100002530(uint64_t a1)
{
  v2 = sub_100006038();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000060A8();
}

uint64_t sub_1000025F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 97) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a5;
  sub_1000061A8();
  *(v5 + 48) = sub_100006198();
  v7 = sub_100006188();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return _swift_task_switch(sub_100002694, v7, v6);
}

uint64_t sub_100002694()
{
  sub_100005F98();
  v0[9] = sub_100005F88();
  v1 = sub_100002974();
  v0[10] = v1;
  v4 = (&async function pointer to dispatch thunk of ParticipantContactCache.prefetchContacts(for:) + async function pointer to dispatch thunk of ParticipantContactCache.prefetchContacts(for:));
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100002770;

  return v4(v1);
}

uint64_t sub_100002770()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1000028D0, v3, v2);
}

uint64_t sub_1000028D0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 97);

  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 96) = 1;
  sub_1000041F4(&qword_10000C118, &qword_100006788);
  sub_100006178();
  v3 = *(v0 + 8);

  return v3();
}

unint64_t *sub_100002974()
{
  v0 = sub_100005F78();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005FF8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100005F38();
  v37 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v30 - v12;
  sub_100006008();
  v14 = (*(v5 + 88))(v7, v4);
  if (v14 == enum case for InterventionConfig.Layout.sending(_:) || v14 == enum case for InterventionConfig.Layout.receiving(_:) || v14 == enum case for InterventionConfig.Layout.addingToSharedAlbum(_:) || v14 == enum case for InterventionConfig.Layout.viewingSharedAlbumAsset(_:))
  {
    goto LABEL_5;
  }

  v16 = v14 == enum case for InterventionConfig.Layout.duringVideoCall(_:) || v14 == enum case for InterventionConfig.Layout.joinedCall(_:);
  if (v16)
  {
    (*(v5 + 96))(v7, v4);
    v17 = *(v7 + *(sub_1000041F4(&qword_10000C198, &qword_100006800) + 48));
    v18 = v37;
    (*(v37 + 32))(v13, v7, v8);
    sub_1000041F4(&qword_10000C1A0, &qword_100006808);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000065A0;
    sub_100005F28();
    (*(v18 + 8))(v13, v8);
    v38 = v19;
    v20 = v17;
LABEL_12:
    sub_100003C84(v20);
    return v38;
  }

  if (v14 == enum case for InterventionConfig.Layout.userSharedDuringVideoCall(_:))
  {
    (*(v5 + 96))(v7, v4);
    return *v7;
  }

  if (v14 == enum case for InterventionConfig.Layout.tryingToCall(_:))
  {
    (*(v5 + 96))(v7, v4);
    v22 = *v7;
    v21 = v7[1];
    v23 = *(v22 + 16);
    if (v23)
    {
      v31 = v21;
      v38 = &_swiftEmptyArrayStorage;
      sub_100003F88(0, v23, 0);
      v24 = v38;
      v25 = *(v37 + 16);
      v26 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v30[1] = v22;
      v27 = v22 + v26;
      v34 = *(v37 + 72);
      v35 = v25;
      v36 = v1;
      v37 += 16;
      v32 = v1 + 32;
      v33 = (v37 - 8);
      do
      {
        v35(v11, v27, v8);
        sub_100005F28();
        (*v33)(v11, v8);
        v38 = v24;
        v29 = v24[2];
        v28 = v24[3];
        if (v29 >= v28 >> 1)
        {
          sub_100003F88((v28 > 1), v29 + 1, 1);
          v24 = v38;
        }

        v24[2] = v29 + 1;
        (*(v36 + 32))(v24 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29, v3, v0);
        v27 += v34;
        --v23;
      }

      while (v23);

      v21 = v31;
    }

    else
    {

      v24 = &_swiftEmptyArrayStorage;
    }

    v38 = v24;
    v20 = v21;
    goto LABEL_12;
  }

  if (v14 == enum case for InterventionConfig.Layout.noAnalysisSending(_:))
  {
    return &_swiftEmptyArrayStorage;
  }

  v16 = v14 == enum case for InterventionConfig.Layout.noAnalysisReceiving(_:);
  result = &_swiftEmptyArrayStorage;
  if (!v16)
  {
LABEL_5:
    (*(v5 + 8))(v7, v4);
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100002ECC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  *(v4 + 97) = a3;
  v5 = sub_1000061E8();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_1000061A8();
  *(v4 + 64) = sub_100006198();
  v7 = sub_100006188();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return _swift_task_switch(sub_100002FC4, v7, v6);
}

uint64_t sub_100002FC4()
{
  sub_100006228();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100003090;

  return sub_1000037CC(600000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100003090()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_100004F5C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_100003224;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100003224()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 97);

  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 96) = 1;
  sub_1000041F4(&qword_10000C118, &qword_100006788);
  sub_100006178();

  v3 = *(v0 + 8);

  return v3();
}

void *sub_100003314@<X0>(uint64_t a1@<X8>)
{
  sub_100005FD8();
  sub_100004E54(&qword_10000C0B0, &type metadata accessor for RemoteViewModel, &protocol conformance descriptor for RemoteViewModel);
  v2 = sub_100006058();
  v4 = v3;
  result = sub_100006158();
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  return result;
}

void *sub_1000033D0@<X0>(uint64_t a1@<X8>)
{
  [objc_allocWithZone(sub_100005FD8()) init];
  result = sub_100006158();
  strcpy(a1, "EXDefaultScene");
  *(a1 + 15) = -18;
  *(a1 + 16) = sub_100003314;
  *(a1 + 24) = 0;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

uint64_t sub_100003468()
{
  v0 = sub_1000041F4(&qword_10000C080, &qword_100006648);
  v2.receiver = objc_allocWithZone(v0);
  v2.super_class = v0;
  objc_msgSendSuper2(&v2, "init");
  sub_1000041F4(&qword_10000C088, &qword_100006650);
  sub_1000041F4(&qword_10000C090, &qword_100006658);
  sub_1000048F8(&qword_10000C098, &qword_10000C088, &qword_100006650, &protocol conformance descriptor for SCARemoteViewScene<A>);
  sub_1000048F8(&qword_10000C0A0, &qword_10000C090, &qword_100006658, &unk_10000691C);
  return sub_100005EF8();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003604();
  sub_100005F18();
  return 0;
}

unint64_t sub_100003604()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

id variable initialization expression of SCARemoteViewScene._model()
{
  v0 = objc_allocWithZone(sub_100005FD8());

  return [v0 init];
}

unint64_t sub_1000036C4(uint64_t a1)
{
  result = sub_100003604();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003708(uint64_t a1)
{
  result = sub_100003730();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003730()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

uint64_t sub_1000037CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1000061D8();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000038CC, 0, 0);
}

uint64_t sub_1000038CC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1000061E8();
  v5 = sub_100004E54(&qword_10000C188, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_100006208();
  sub_100004E54(&qword_10000C190, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1000061F8();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100003A5C;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100003A5C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100003C18, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100003C18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003C84(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100003DB0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100005F78();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100003DB0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000041F4(&qword_10000C1A0, &qword_100006808);
  v10 = *(sub_100005F78() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100005F78() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100003F88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100003FA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100003FA8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000041F4(&qword_10000C1A0, &qword_100006808);
  v10 = *(sub_100005F78() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100005F78() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

__n128 sub_100004180@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100004284();
  (*(v2 + 32))(&v6, &type metadata for Appex, v2);
  v3 = v9;
  result = v7;
  v5 = v8;
  *a1 = v6;
  *(a1 + 8) = result;
  *(a1 + 24) = v5;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1000041F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000423C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004284()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

__n128 sub_1000042E4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000042F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10000434C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_100004410(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10000441C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000041F4(&qword_10000C110, &qword_100006780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000448C()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    sub_10000423C(&qword_10000C0E0, &qword_100006750);
    sub_10000423C(&qword_10000C0F8, &qword_100006768);
    sub_100004554();
    swift_getOpaqueTypeConformance2();
    sub_100004754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

unint64_t sub_100004554()
{
  result = qword_10000C128;
  if (!qword_10000C128)
  {
    sub_10000423C(&qword_10000C0F8, &qword_100006768);
    sub_10000423C(&qword_10000C0F0, &qword_100006760);
    sub_100005F58();
    sub_100004698();
    sub_100004E54(&qword_10000C140, &type metadata accessor for AnalysisHistoryCache, &protocol conformance descriptor for AnalysisHistoryCache);
    swift_getOpaqueTypeConformance2();
    sub_1000048F8(&qword_10000C148, &qword_10000C150, &qword_100006790, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C128);
  }

  return result;
}

unint64_t sub_100004698()
{
  result = qword_10000C130;
  if (!qword_10000C130)
  {
    sub_10000423C(&qword_10000C0F0, &qword_100006760);
    sub_100004E54(&qword_10000C138, &type metadata accessor for InterventionView, &protocol conformance descriptor for InterventionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C130);
  }

  return result;
}

unint64_t sub_100004754()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    sub_10000423C(&qword_10000C0C8, &qword_100006738);
    sub_100004810();
    sub_100004E54(&qword_10000C178, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

unint64_t sub_100004810()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    sub_10000423C(&qword_10000C168, &qword_100006798);
    sub_1000048F8(&qword_10000C170, &qword_10000C0C0, &qword_100006730, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100004E54(&qword_10000C178, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

uint64_t sub_1000048F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000423C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004940()
{
  v1 = sub_100006028();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100004410(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 32, v3 | 7);
}

uint64_t sub_1000049EC()
{
  v2 = *(sub_100006028() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100004F60;

  return sub_1000025F8(v0 + v3, v5, v6, v7, v8);
}

id sub_100004B1C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_100004B28()
{
  sub_100004410(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100004B6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100004C28;

  return sub_100002ECC(v2, v3, v4, v5);
}

uint64_t sub_100004C28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100004D1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000041F4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100004D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000041F4(&qword_10000C0E0, &qword_100006750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004DF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000041F4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100004EA4()
{
  result = qword_10000C1A8;
  if (!qword_10000C1A8)
  {
    sub_10000423C(qword_10000C1B0, &unk_100006810);
    sub_10000448C();
    sub_1000048F8(&qword_10000C170, &qword_10000C0C0, &qword_100006730, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A8);
  }

  return result;
}

id SCARemoteViewExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for ConcreteConfiguration.ExportedObject(0, a1, a2, a4);
  result = sub_100005190(v4, v6, v7, v8);
  *a3 = result;
  return result;
}

id sub_100004FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ConcreteConfiguration.ExportedObject(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

id sub_1000050C4(uint64_t a1)
{
  v2 = *v1;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *v1) + 0x50);
  (*(*(v4 - 8) + 16))(&v1[*((swift_isaMask & *v1) + 0x60)], a1, v4);
  v6 = type metadata accessor for ConcreteConfiguration.ExportedObject(0, v4, *((v3 & v2) + 0x58), v5);
  v8.receiver = v1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_100005204(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000052B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ConcreteConfiguration(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_100005310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100005358(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *SCARemoteViewScene.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  [objc_allocWithZone(sub_100005FD8()) init];
  swift_getObjectType();
  result = sub_100006158();
  strcpy(a3, "EXDefaultScene");
  *(a3 + 15) = -18;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  return result;
}

uint64_t SCARemoteViewSceneExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  (*(v6 + 16))(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  (*(v6 + 32))(v9 + v8, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v10 = *(a2 + 8);
  v14[1] = sub_1000051CC(v3, a1, v10, v11);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ConcreteConfiguration(0, a1, v10, v12);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  return sub_100005EF8();
}

uint64_t property wrapper backing initializer of SCARemoteViewScene.model(uint64_t a1)
{
  swift_getObjectType();
  sub_100006158();
  return v2;
}

uint64_t sub_1000056AC()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t SCARemoteViewScene.body.getter(uint64_t a1)
{
  v3 = *(v1 + 32);
  v19 = *(v1 + 40);
  v4 = swift_allocObject();
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(v4 + 16) = v6;
  *(v4 + 24) = v5;
  v7 = *(v1 + 16);
  *(v4 + 32) = *v1;
  *(v4 + 48) = v7;
  *(v4 + 64) = *(v1 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  v9 = *(v1 + 16);
  *(v8 + 32) = *v1;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(v1 + 32);
  swift_bridgeObjectRetain_n();

  v10 = v3;
  sub_100005C94(&v19, &v15);

  v11 = v10;
  sub_100005C94(&v19, &v15);
  v12 = sub_100005FD8();
  v13 = sub_100005D04();
  v15 = v6;
  v16 = v12;
  v17 = v5;
  v18 = v13;
  swift_getOpaqueTypeMetadata2();
  v15 = v6;
  v16 = v12;
  v17 = v5;
  v18 = v13;
  swift_getOpaqueTypeConformance2();
  return sub_100005EE8();
}

uint64_t sub_10000593C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v26 = a4;
  v7 = *(a2 - 8);
  v24[1] = a3;
  v25 = v7;
  __chkstk_darwin(a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005FD8();
  v11 = sub_100005D04();
  *&v27 = a2;
  *(&v27 + 1) = v10;
  v28 = a3;
  v29 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = __chkstk_darwin(OpaqueTypeMetadata2);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v24 - v18;
  (*(a1 + 16))(v17);
  v27 = *(a1 + 32);
  sub_1000041F4(&unk_10000C340, &qword_100006A90);
  sub_100006168();
  v20 = v30;
  swift_checkMetadataState();
  sub_100006138();

  (*(v25 + 8))(v9, a2);
  v21 = *(v13 + 16);
  v21(v19, v16, OpaqueTypeMetadata2);
  v22 = *(v13 + 8);
  v22(v16, OpaqueTypeMetadata2);
  v21(v26, v19, OpaqueTypeMetadata2);
  return (v22)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_100005BB8(objc_class *a1, uint64_t a2)
{
  sub_1000041F4(&unk_10000C340, &qword_100006A90);
  sub_100006168();
  v3.super.isa = a1;
  LOBYTE(a1) = sub_100005FC8(v3);

  return a1 & 1;
}

uint64_t sub_100005C38()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100005C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000041F4(qword_10000C2B8, &qword_100006950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100005D04()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    sub_100005FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100005D5C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100005DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100005E18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100005E2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100005E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}