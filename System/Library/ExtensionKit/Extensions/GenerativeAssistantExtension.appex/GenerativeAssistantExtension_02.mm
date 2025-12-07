int main(int argc, const char **argv, const char **envp)
{
  sub_100049A90();
  sub_10004D330();
  return 0;
}

unint64_t sub_100049A90()
{
  result = qword_1000621C0;
  if (!qword_1000621C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000621C0);
  }

  return result;
}

unint64_t sub_100049B38()
{
  result = qword_1000621C8;
  if (!qword_1000621C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000621C8);
  }

  return result;
}

uint64_t sub_100049B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = sub_10004DC80();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100049C88, 0, 0);
}

uint64_t sub_100049C88()
{
  v37 = v0;
  v0[12] = sub_10002EBC4();
  sub_10004DC20();

  v1 = sub_10004DC70();
  v2 = sub_10004DEA0();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  if (v3)
  {
    v7 = v0[4];
    v34 = v0[5];
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10001E340(v9, v8, &v36);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10001E340(v7, v34, &v36);
    _os_log_impl(&_mh_execute_header, v1, v2, "Taking an AutoBugCapture snapshot, subType '%s', subTypeContext '%s'.", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v35 = *(v5 + 8);
  v35(v4, v6);
  v11 = *(v0[6] + 16);
  v12 = sub_10004DD00();
  v13 = sub_10004DD00();

  v14 = sub_10004DD00();
  v15 = sub_10004DD00();
  v16 = sub_10004DD00();
  v17 = [v11 signatureWithDomain:v12 type:v13 subType:v14 subtypeContext:v15 detectedProcess:v16 triggerThresholdValues:0];

  if (v17 && (v36 = 0, sub_10004DCA0(), v17, v18 = v36, v0[13] = v36, v18))
  {
    sub_10004DC20();
    v19 = sub_10004DC70();
    v20 = sub_10004DEA0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "AutoBugCapture signature created.", v21, 2u);
    }

    v22 = v0[9];
    v24 = v0[6];
    v23 = v0[7];

    v35(v22, v23);
    v25 = swift_task_alloc();
    v0[14] = v25;
    *(v25 + 16) = v24;
    *(v25 + 24) = v18;
    v26 = swift_task_alloc();
    v0[15] = v26;
    *v26 = v0;
    v26[1] = sub_10004A1E8;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    sub_10004DC20();
    v27 = sub_10004DC70();
    v28 = sub_10004DEB0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create an AutoBugCapture signature.", v29, 2u);
    }

    v30 = v0[10];
    v31 = v0[7];

    v35(v30, v31);
    sub_10002EA54();

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_10004A1E8()
{

  return _swift_task_switch(sub_10004A31C, 0, 0);
}

uint64_t sub_10004A31C()
{
  sub_10002EA54();

  v1 = *(v0 + 8);

  return v1();
}

void sub_10004A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000026D8(&qword_1000622B8, &qword_100051428);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  isa = sub_10004DC90().super.isa;
  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v8, v5);
  aBlock[4] = sub_10004B96C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004A794;
  aBlock[3] = &unk_10005E5F0;
  v13 = _Block_copy(aBlock);

  [v9 snapshotWithSignature:isa duration:0 event:0 payload:v13 reply:0.0];
  _Block_release(v13);
}

uint64_t sub_10004A59C(uint64_t a1)
{
  v2 = sub_10004DC80();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004DC20();

  v6 = sub_10004DC70();
  v7 = sub_10004DEA0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = a1;
    v15 = v9;
    *v8 = 136315138;

    sub_1000026D8(&qword_1000622C0, &qword_100051430);
    v10 = sub_10004DD70();
    v12 = sub_10001E340(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Done with AutoBugCapture snapshotting. Response: %s", v8, 0xCu);
    sub_100007B00(v9);
  }

  (*(v3 + 8))(v5, v2);
  sub_1000026D8(&qword_1000622B8, &qword_100051428);
  return sub_10004DE30();
}

double sub_10004A794(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_10004DCB0();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);

  return result;
}

uint64_t sub_10004A824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000026D8(&qword_1000622B0, "h>");
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10004B1D0(a3, v25 - v10);
  v12 = sub_10004DE70();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10004B240(v11);
  }

  else
  {
    sub_10004DE60();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10004DE20();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10004DD80() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10004B240(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10004B240(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10004AAE4(int a1, void *a2)
{
  LODWORD(v3) = a1;
  v4 = sub_1000026D8(&qword_1000622B0, "h>");
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_10004DC80();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004DC20();
  v11 = a2;
  v12 = sub_10004DC70();
  v13 = sub_10004DEA0();
  v14 = &unk_100060000;
  if (os_log_type_enabled(v12, v13))
  {
    v41 = v7;
    v42 = v6;
    v15 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46 = v40;
    *v15 = 136315906;
    v43 = v3;
    if (v3)
    {
      if (v3 == 1)
      {
        v16 = 0xD000000000000019;
      }

      else
      {
        v16 = 0xD00000000000001FLL;
      }

      if (v3 == 1)
      {
        v17 = "generateKnowledgeResponseIntent";
      }

      else
      {
        v17 = "diagnosticReporter";
      }
    }

    else
    {
      v16 = 0xD000000000000022;
      v17 = "generateRichContentIntent";
    }

    v18 = sub_10001E340(v16, v17 | 0x8000000000000000, &v46);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = [v11 domain];
    v20 = sub_10004DD30();
    v22 = v21;

    v23 = sub_10001E340(v20, v22, &v46);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2048;
    v24 = [v11 code];

    *(v15 + 24) = v24;
    *(v15 + 32) = 2080;
    v25 = [v11 localizedDescription];
    v26 = sub_10004DD30();
    v3 = v27;

    v28 = v26;
    v14 = &unk_100060000;
    v29 = sub_10001E340(v28, v3, &v46);

    *(v15 + 34) = v29;
    _os_log_impl(&_mh_execute_header, v12, v13, "Reporting Error to AutoBugCapture. %s throws Domain=%s Code=%ld LocalizedDescription=%s", v15, 0x2Au);
    swift_arrayDestroy();

    (*(v8 + 8))(v10, v41);
    LOBYTE(v3) = v43;
    v6 = v42;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v30 = [v11 v14[469]];
  v31 = sub_10004DD30();
  v33 = v32;

  v46 = v31;
  v47 = v33;
  v48._countAndFlagsBits = 46;
  v48._object = 0xE100000000000000;
  sub_10004DDC0(v48);
  v45 = [v11 code];
  v49._countAndFlagsBits = sub_10004DF80();
  sub_10004DDC0(v49);

  v34 = v46;
  v35 = v47;
  v36 = sub_10004DE70();
  (*(*(v36 - 8) + 56))(v6, 1, 1, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v34;
  *(v37 + 40) = v35;
  *(v37 + 48) = 0;
  *(v37 + 56) = 0xE000000000000000;
  v38 = v44;
  *(v37 + 64) = v44;
  *(v37 + 72) = v3;

  *(v38 + 24) = sub_10004A824(0, 0, v6, &unk_100051408, v37);
}

uint64_t sub_10004AF80()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10004AFE4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100047AA8;

  return v6(a1);
}

uint64_t sub_10004B0E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001578C;

  return sub_100049B9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10004B1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&qword_1000622B0, "h>");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004B240(uint64_t a1)
{
  v2 = sub_1000026D8(&qword_1000622B0, "h>");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004B2A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001578C;

  return sub_10004AFE4(a1, v4);
}

uint64_t sub_10004B360()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004B398(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002414;

  return sub_10004AFE4(a1, v4);
}

uint64_t sub_10004B450(int a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1000026D8(&qword_1000622B0, "h>");
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_10004DC80();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004D210();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D200();
  sub_10004D1F0();
  v17 = v16;
  (*(v13 + 8))(v15, v12);
  v18 = a1;
  if (a1)
  {
    v19 = 0.1;
  }

  else
  {
    v19 = 2.0;
  }

  sub_10004DC20();
  v20 = sub_10004DC70();
  v21 = sub_10004DEA0();
  if (os_log_type_enabled(v20, v21))
  {
    v29 = v7;
    v31 = v3;
    v22 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v22 = 136315906;
    *(v22 + 4) = sub_10001E340(0xD000000000000015, 0x8000000100054300, &v32);
    *(v22 + 12) = 2080;
    v30 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v23 = 0xD000000000000019;
      }

      else
      {
        v23 = 0xD00000000000001FLL;
      }

      if (a1 == 1)
      {
        v24 = "generateKnowledgeResponseIntent";
      }

      else
      {
        v24 = "diagnosticReporter";
      }
    }

    else
    {
      v23 = 0xD000000000000022;
      v24 = "generateRichContentIntent";
    }

    v26 = sub_10001E340(v23, v24 | 0x8000000000000000, &v32);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v17;
    *(v22 + 32) = 2048;
    *(v22 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "Duration for %s in %s was %fs, AutoBugCapture threshold was %fs.", v22, 0x2Au);
    swift_arrayDestroy();

    result = (*(v9 + 8))(v11, v8);
    v3 = v31;
    v18 = v30;
    v7 = v29;
    if (v19 < v17)
    {
      goto LABEL_16;
    }
  }

  else
  {

    result = (*(v9 + 8))(v11, v8);
    if (v19 < v17)
    {
LABEL_16:
      v27 = sub_10004DE70();
      (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0xD000000000000015;
      *(v28 + 40) = 0x8000000100054300;
      *(v28 + 48) = 0x776F6C536F6F54;
      *(v28 + 56) = 0xE700000000000000;
      *(v28 + 64) = v3;
      *(v28 + 72) = v18;

      *(v3 + 24) = sub_10004A824(0, 0, v7, &unk_100051438, v28);
    }
  }

  return result;
}

uint64_t sub_10004B8D8()
{
  v1 = sub_1000026D8(&qword_1000622B8, &qword_100051428);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004B96C(uint64_t a1)
{
  sub_1000026D8(&qword_1000622B8, &qword_100051428);

  return sub_10004A59C(a1);
}

uint64_t sub_10004B9E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004BA00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10004BA50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002414;

  return sub_100049B9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t type metadata accessor for GeneratedText(uint64_t a1)
{
  result = qword_100062380;
  if (!qword_100062380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004BBDC()
{
  v0 = sub_10004D020();
  sub_1000037AC(v0, qword_100062528);
  sub_100003774(v0, qword_100062528);
  return sub_10004D000();
}

uint64_t sub_10004BC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004CF00();
  v4 = (a2 + *(a1 + 20));
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return sub_10004D0C0();
}

uint64_t sub_10004BDC8(uint64_t a1)
{
  v2 = sub_10004C9C0(&qword_1000623F8, type metadata accessor for GeneratedText, &unk_100051450);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_10004BFAC(uint64_t a1)
{
  v2 = sub_10004C9C0(&qword_1000623F8, type metadata accessor for GeneratedText, &unk_100051450);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_10004C028@<X0>(uint64_t a1@<X8>)
{
  if (qword_100061040 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, qword_100062528);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004C114(uint64_t a1)
{
  v2 = sub_10004C9C0(&qword_1000622C8, type metadata accessor for GeneratedText, &unk_100051488);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10004C1D8(uint64_t a1)
{
  v2 = sub_10004C9C0(&qword_100062308, type metadata accessor for GeneratedText, &unk_100051638);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10004C270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for GeneratedText(0) + 24);
  v5 = sub_10004D0D0();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_10004C2EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GeneratedText(0) + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_10004C33C@<X0>(uint64_t a3@<X8>)
{
  v17[1] = a3;
  v3 = sub_1000026D8(&qword_1000623D0, "j<");
  __chkstk_darwin(v3);
  v5 = v17 - v4;
  v17[0] = sub_1000026D8(&qword_1000623D8, "~<");
  v6 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v8 = v17 - v7;
  v9 = sub_1000026D8(&qword_1000623E0, &qword_100051718);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  sub_10004D0D0();
  sub_10004C9C0(&qword_1000623E8, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_10004D310();
  sub_10004C96C();
  sub_10004D310();
  v13 = *(v3 + 48);
  (*(v10 + 16))(v5, v12, v9);
  v14 = &v5[v13];
  v15 = v17[0];
  (*(v6 + 16))(v14, v8, v17[0]);
  sub_10004D320();
  (*(v6 + 8))(v8, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10004C638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004CF30();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10004D0D0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10004C774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004CF30();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_10004D0D0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10004C89C(uint64_t a1)
{
  result = sub_10004CF30();
  if (v2 <= 0x3F)
  {
    result = sub_10004D0D0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10004C96C()
{
  result = qword_1000623F0;
  if (!qword_1000623F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000623F0);
  }

  return result;
}

uint64_t sub_10004C9C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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