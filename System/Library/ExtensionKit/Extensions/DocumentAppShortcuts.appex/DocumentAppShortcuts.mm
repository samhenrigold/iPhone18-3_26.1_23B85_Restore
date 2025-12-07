uint64_t sub_1000016A8()
{
  v0 = sub_1000038DC();
  sub_100001824(v0, qword_10000C0E8);
  v1 = sub_1000017EC(v0, qword_10000C0E8);
  v2 = enum case for ShortcutTileColor.blue(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100001734@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_1000038DC();
  v3 = sub_1000017EC(v2, qword_10000C0E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000017EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100001824(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100001888()
{
  v0 = sub_10000392C();
  __chkstk_darwin(v0 - 8);
  v62 = v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10000374C();
  v2 = *(v65 - 8);
  __chkstk_darwin(v65);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000023DC(&qword_10000C020, &qword_100003B98);
  v6 = __chkstk_darwin(v5);
  v59 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v56 = v50 - v9;
  v10 = __chkstk_darwin(v8);
  v55 = v50 - v11;
  v12 = __chkstk_darwin(v10);
  v54 = v50 - v13;
  v14 = __chkstk_darwin(v12);
  v53 = v50 - v15;
  v16 = __chkstk_darwin(v14);
  v52 = v50 - v17;
  v18 = __chkstk_darwin(v16);
  v51 = v50 - v19;
  __chkstk_darwin(v18);
  v20 = sub_1000037AC();
  v60 = *(v20 - 8);
  v61 = v20;
  __chkstk_darwin(v20);
  v58 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000023DC(&qword_10000C028, &qword_100003BA0);
  v22 = *(sub_1000023DC(&qword_10000C030, &qword_100003BA8) - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = *(v22 + 72);
  v25 = swift_allocObject();
  v57 = v25;
  *(v25 + 16) = xmmword_100003B20;
  v69 = v25 + v23;
  v26 = sub_100002424();
  sub_1000036DC();
  v68 = v24;
  sub_1000036DC();
  sub_10000370C();
  v72._countAndFlagsBits = 0x746977206E616353;
  v72._object = 0xEA00000000002068;
  sub_1000036FC(v72);
  v66 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v64 = *(v2 + 104);
  v67 = v2 + 104;
  v27 = v65;
  v64(v4);
  sub_1000036EC();
  v70 = *(v2 + 8);
  v71 = v2 + 8;
  v70(v4, v27);
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  sub_1000036FC(v73);
  v63 = v26;
  sub_10000371C();
  v50[1] = 2 * v24 + v68;
  sub_10000370C();
  v74._object = 0x8000000100004120;
  v74._countAndFlagsBits = 0xD000000000000013;
  sub_1000036FC(v74);
  v28 = v66;
  v29 = v64;
  (v64)(v4, v66, v27);
  v50[0] = v4;
  sub_1000036EC();
  v70(v4, v27);
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  sub_1000036FC(v75);
  sub_10000371C();
  sub_10000370C();
  v76._object = 0x8000000100004140;
  v76._countAndFlagsBits = 0xD000000000000013;
  sub_1000036FC(v76);
  v30 = v50[0];
  (v29)(v50[0], v28, v27);
  v31 = v29;
  v32 = v30;
  sub_1000036EC();
  v70(v30, v27);
  v77._countAndFlagsBits = 1886413088;
  v77._object = 0xE400000000000000;
  sub_1000036FC(v77);
  sub_10000371C();
  v33 = v68;
  sub_1000036DC();
  sub_1000036DC();
  v52 = (8 * v33);
  v51 = 7 * v33;
  sub_10000370C();
  v78._object = 0x8000000100004180;
  v78._countAndFlagsBits = 0xD000000000000011;
  sub_1000036FC(v78);
  v34 = v65;
  (v31)(v30, v66, v65);
  sub_1000036EC();
  v70(v30, v34);
  v79._countAndFlagsBits = 0;
  v79._object = 0xE000000000000000;
  sub_1000036FC(v79);
  sub_10000371C();
  sub_10000370C();
  v80._object = 0x80000001000041A0;
  v80._countAndFlagsBits = 0xD000000000000011;
  sub_1000036FC(v80);
  v35 = v66;
  (v31)(v30, v66, v34);
  sub_1000036EC();
  v36 = v70;
  v70(v30, v34);
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  sub_1000036FC(v81);
  v37 = v52;
  sub_10000371C();
  v38 = v68;
  v54 = &v37[v68];
  sub_10000370C();
  v82._countAndFlagsBits = 0x206E616353;
  v82._object = 0xE500000000000000;
  sub_1000036FC(v82);
  v39 = v35;
  v40 = v64;
  v41 = v65;
  (v64)(v32, v39, v65);
  sub_1000036EC();
  v36(v32, v41);
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  sub_1000036FC(v83);
  v42 = v69;
  sub_10000371C();
  v55 = (v42 + 10 * v38);
  sub_10000370C();
  v84._countAndFlagsBits = 0xD000000000000014;
  v84._object = 0x80000001000041C0;
  sub_1000036FC(v84);
  v43 = v66;
  (v40)(v32, v66, v41);
  sub_1000036EC();
  v44 = v70;
  v70(v32, v41);
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  sub_1000036FC(v85);
  sub_10000371C();
  sub_10000370C();
  v86._object = 0xEE00206874697720;
  v86._countAndFlagsBits = 0x636F44206E616353;
  sub_1000036FC(v86);
  (v64)(v32, v43, v41);
  sub_1000036EC();
  v44(v32, v41);
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  sub_1000036FC(v87);
  sub_10000371C();
  sub_10000390C();
  v45 = v58;
  sub_10000379C();
  v46 = sub_10000373C();
  (*(v60 + 8))(v45, v61);
  sub_1000023DC(&qword_10000C040, &unk_100003BB0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100003B30;
  *(v47 + 32) = v46;
  v48 = sub_10000372C();

  return v48;
}

uint64_t sub_1000023DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002424()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_10000247C()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_1000024D4()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

uint64_t sub_100002578()
{
  v0 = sub_10000391C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000397C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000039CC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000392C();
  sub_100001824(v6, qword_10000C100);
  sub_1000017EC(v6, qword_10000C100);
  sub_1000039BC();
  sub_10000396C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10000393C();
}

uint64_t sub_100002758()
{
  v0 = sub_1000023DC(&qword_10000C0B8, &qword_100003D70);
  __chkstk_darwin(v0 - 8);
  v2 = v8 - v1;
  v3 = sub_10000395C();
  sub_100001824(v3, qword_10000C118);
  v4 = sub_1000017EC(v3, qword_10000C118);
  v8[0] = sub_1000039AC();
  v8[1] = v5;
  v9._countAndFlagsBits = 0x6E6163733F2F2F3ALL;
  v9._object = 0xED0000657572743DLL;
  sub_1000039DC(v9);
  sub_10000394C();

  v6 = *(v3 - 8);
  result = (*(v6 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v6 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000028B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C008 != -1)
  {
    swift_once();
  }

  v2 = sub_10000392C();
  v3 = sub_1000017EC(v2, qword_10000C100);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100002970(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000023DC(&qword_10000C0C0, qword_100003D78);
  __chkstk_darwin(v2 - 8);
  sub_1000038FC();
  return sub_1000038EC();
}

uint64_t sub_100002A38(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10000395C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1000037DC();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100002B54, 0, 0);
}

uint64_t sub_100002B54()
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = sub_1000017EC(v5, qword_10000C118);
  (*(v6 + 16))(v4, v7, v5);
  sub_1000037EC();
  sub_100003394();
  sub_1000037CC();
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100002C84()
{
  v0 = aScandocument[0];

  return v0;
}

uint64_t sub_100002CBC()
{
  v0 = sub_1000023DC(&qword_10000C0A0, &qword_100003D60);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_100002424();
  sub_10000388C();
  v4 = sub_10000384C();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_10000388C();
  v6 = sub_10000384C();
  v5(v3, v0);
  sub_10000388C();
  v7 = sub_10000384C();
  v5(v3, v0);
  sub_10000388C();
  v8 = sub_10000384C();
  v5(v3, v0);
  sub_1000023DC(&qword_10000C0A8, &qword_100003D68);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100003BC0;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v10 = sub_10000383C();

  return v10;
}

uint64_t sub_100002F3C()
{
  v0 = sub_10000386C();
  sub_1000023DC(&qword_10000C090, &qword_100003D50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100003B30;
  *(v1 + 32) = v0;
  v2 = sub_10000385C();

  return v2;
}

uint64_t sub_100002FC4()
{
  v0 = sub_1000038BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002424();
  sub_1000038CC();
  v4 = sub_1000038AC();
  (*(v1 + 8))(v3, v0);
  sub_1000023DC(&qword_10000C098, &qword_100003D58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100003B30;
  *(v5 + 32) = v4;
  v6 = sub_10000389C();

  return v6;
}

uint64_t sub_10000311C()
{
  v0 = sub_10000382C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002424();
  sub_10000381C();
  v4 = sub_10000380C();
  (*(v1 + 8))(v3, v0);
  sub_1000023DC(&qword_10000C088, &qword_100003D48);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100003B30;
  *(v5 + 32) = v4;
  v6 = sub_1000037FC();

  return v6;
}

uint64_t sub_1000032C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000334C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000032C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003394()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    sub_1000037DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_1000033EC(uint64_t a1)
{
  v2 = sub_100003600();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

unint64_t sub_100003438()
{
  sub_1000023DC(&qword_10000C0D8, &qword_100003E70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100003B30;
  v1 = sub_10000399C();
  result = sub_100003674();
  *(v0 + 32) = v1;
  *(v0 + 40) = result;
  qword_10000C130 = v0;
  return result;
}

uint64_t sub_1000034A0()
{
  if (qword_10000C018 != -1)
  {
    swift_once();
  }
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003558();
  sub_10000398C();
  return 0;
}

unint64_t sub_100003558()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_100003600()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

unint64_t sub_100003674()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    sub_10000399C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}