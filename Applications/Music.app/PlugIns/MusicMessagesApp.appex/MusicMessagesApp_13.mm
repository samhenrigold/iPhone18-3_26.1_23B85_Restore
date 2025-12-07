uint64_t sub_100146968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SnapshotIdentifier.Lazy(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1001469E8(uint64_t a1)
{
  sub_100146AB4(319);
  if (v1 <= 0x3F)
  {
    sub_100146B2C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100146AB4(uint64_t a1)
{
  if (!qword_100637F40)
  {
    sub_100008DE4(&qword_100637F48, qword_10051C4D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100637F40);
    }
  }
}

void sub_100146B2C(uint64_t a1)
{
  if (!qword_100637F50)
  {
    sub_1004D85FC();
    sub_100008DE4(&qword_100637F48, qword_10051C4D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100637F50);
    }
  }
}

uint64_t sub_100146BAC(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100637F68, qword_10051C4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100146C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100146C5C()
{

  return swift_deallocObject();
}

unint64_t sub_100146CA0()
{
  result = qword_100637FE0;
  if (!qword_100637FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637FE0);
  }

  return result;
}

uint64_t sub_100146CF4()
{

  return swift_deallocObject();
}

uint64_t sub_100146D40(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100146D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

void *sub_100146DE4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

BOOL sub_100146ED4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = sub_10014CB94(v3);

  sub_100004CB8(&qword_1006380E8, &qword_10051C868);
  v5 = sub_1004DC7EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1005126C0;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, enum case for AudioVariant.dolbyAtmos(_:), v5);
  v11(v10 + v7, enum case for AudioVariant.dolbyAudio(_:), v5);
  v12 = sub_10014C478(v9, v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = *(v12 + 16);

  return v13 != 0;
}

unint64_t AudioVariant.symbolString.getter()
{
  v1 = v0;
  v2 = sub_1004DC7EC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    return 0xD000000000000018;
  }

  if (v7 == enum case for AudioVariant.dolbyAudio(_:))
  {
    return 0xD000000000000018;
  }

  if (v7 == enum case for AudioVariant.lossless(_:) || v7 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    return 0xD000000000000015;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t AudioVariant.accessibilityLabel.getter()
{
  v1 = v0;
  v2 = sub_1004DC7EC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    if (qword_1006343C0 != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.dolbyAtmosLabel;
  }

  else if (v7 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (qword_1006343C8 != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.dolbyAudioLabel;
  }

  else if (v7 == enum case for AudioVariant.lossless(_:))
  {
    if (qword_1006343D8 != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.losslessLabel;
  }

  else
  {
    if (v7 != enum case for AudioVariant.highResolutionLossless(_:))
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    if (qword_1006343D0 != -1)
    {
      swift_once();
    }

    v8 = &static AccessibilityString.hiResLosslessLabel;
  }

  v9 = *v8;

  return v9;
}

uint64_t AudioVariant.badgeText.getter()
{
  sub_1004D83FC();
  __chkstk_darwin();
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v16[-v5];
  v7 = sub_1004DC7EC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v0, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for AudioVariant.lossless(_:) || v12 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    sub_1004DD37C();
    (*(v2 + 16))(v4, v6, v1);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v13 = qword_100671958;
    sub_1004D838C();
    v14 = sub_1004DD4AC();
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  return v14;
}

uint64_t Array<A>.removingEquivalents()(uint64_t a1)
{
  sub_100004CB8(&qword_100638050, &unk_10051C588);
  __chkstk_darwin();
  v2 = &v14 - v1;
  v3 = sub_1004DC7EC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_10014CB94(v7);

  v15 = v8;
  v9 = *(v4 + 104);
  v9(v6, enum case for AudioVariant.highResolutionLossless(_:), v3);

  v10 = sub_10012079C(v6, v8);

  v11 = *(v4 + 8);
  v11(v6, v3);
  if (v10)
  {
    v9(v6, enum case for AudioVariant.lossless(_:), v3);
    sub_10014B308(v6, v2);
    v11(v6, v3);
    sub_10001074C(v2, &qword_100638050, &unk_10051C588);
  }

  v12 = v15;
  v9(v6, enum case for AudioVariant.dolbyAtmos(_:), v3);
  LOBYTE(v12) = sub_10012079C(v6, v12);
  v11(v6, v3);
  if (v12)
  {
    v9(v6, enum case for AudioVariant.dolbyAudio(_:), v3);
    sub_10014B308(v6, v2);
    v11(v6, v3);
    sub_10001074C(v2, &qword_100638050, &unk_10051C588);
  }

  return v15;
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.init(mediaPlayerReason:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1004DC4DC();
  v11 = *(v4 - 8);
  v5 = __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 4) != 0)
  {
    sub_1004DC4CC();
LABEL_10:
    (*(v11 + 32))(a2, v7, v4);
    return (*(v11 + 56))(a2, 0, 1, v4);
  }

  if ((a1 & 2) != 0)
  {
    sub_1004DC4BC();
    goto LABEL_10;
  }

  if (a1)
  {
    sub_1004DC4AC();
    goto LABEL_10;
  }

  v8 = *(v11 + 56);

  return v8(a2, 1, 1, v4, v5);
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1004D83FC();
  __chkstk_darwin();
  v72 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DD3EC();
  v73 = *(v5 - 8);
  v74 = v5;
  __chkstk_darwin();
  v7 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v66 - v8;
  v10 = sub_1004DC4DC();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v66 - v15;
  (*(v11 + 16))(v66 - v15, v2, v10, v14);
  sub_1004DC4CC();
  sub_10014D034(&qword_100638058, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
  v17 = sub_1004DD35C();
  v18 = *(v11 + 8);
  v18(v13, v10);
  if (v17)
  {
    v18(v16, v10);
    sub_1001375C8(0, 0, v75);
    v20 = v75[0];
    result = v75[1];
    v22 = v75[2];
    v21 = v75[3];
    v23 = v77;
    v24 = v78;
    v25 = v79;
    v26 = v80;
    v27 = v76 & 0xFFFFFFFFFFFFFF00;
    v28 = v78 & 0xFFFFFFFFFFFFFF00;
    v29 = v76;
  }

  else
  {
    sub_1004DC4BC();
    v30 = sub_1004DD35C();
    v18(v13, v10);
    if (v30)
    {
      v18(v16, v10);
      sub_1004DD37C();
      v31 = v73;
      v32 = v74;
      v33 = v73 + 16;
      v34 = *(v73 + 16);
      v34(v7, v9, v74);
      if (qword_100633A80 != -1)
      {
        swift_once();
      }

      v35 = qword_100671958;
      v36 = qword_100671958;
      sub_1004D838C();
      v37 = v36;
      v38 = sub_1004DD4AC();
      v70 = v39;
      v71 = v38;
      v40 = *(v31 + 8);
      v40(v9, v32);
      v68 = v40;
      sub_1004DD37C();
      v34(v7, v9, v32);
      sub_1004D838C();
      v66[1] = v35;
      v73 = sub_1004DD4AC();
      v69 = v41;
      v40(v9, v32);
      sub_100004CB8(&qword_100634F40, &qword_100515800);
      v42 = swift_allocObject();
      v66[0] = v33;
      v43 = v34;
      v67 = v34;
      v25 = v42;
      *(v42 + 16) = xmmword_1005126C0;
      sub_1004DD37C();
      v43(v7, v9, v32);
      sub_1004D838C();
      v44 = sub_1004DD4AC();
      v46 = v45;
      v47 = v68;
      v68(v9, v32);
      *(v25 + 32) = 0x6C65636E6163;
      *(v25 + 40) = 0xE600000000000000;
      *(v25 + 48) = v44;
      *(v25 + 56) = v46;
      *(v25 + 64) = 0;
      *(v25 + 72) = 0;
      *(v25 + 80) = 0;
      sub_1004DD37C();
      v67(v7, v9, v32);
      sub_1004D838C();
      v48 = sub_1004DD4AC();
      v49 = v32;
      v51 = v50;
      v47(v9, v49);
      v21 = v69;
      result = v70;
      v22 = v73;
      v20 = v71;
      v23 = 0;
      v26 = 0;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      *(v25 + 88) = 0x73676E6974746573;
      *(v25 + 96) = 0xE800000000000000;
      *(v25 + 104) = v48;
      *(v25 + 112) = v51;
      *(v25 + 120) = 2;
      *(v25 + 128) = &unk_10051C598;
      *(v25 + 136) = 0;
      v24 = 1;
    }

    else
    {
      sub_1004DC4AC();
      v52 = sub_1004DD35C();
      v18(v13, v10);
      v18(v16, v10);
      if (v52)
      {
        sub_1004DD37C();
        v53 = v73;
        v54 = v74;
        v55 = *(v73 + 16);
        v55(v7, v9, v74);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v56 = qword_100671958;
        sub_1004D838C();
        v57 = v56;
        v58 = sub_1004DD4AC();
        v70 = v59;
        v71 = v58;
        v60 = *(v53 + 8);
        v60(v9, v54);
        sub_1004DD37C();
        v68 = v55;
        v55(v7, v9, v54);
        sub_1004D838C();
        v73 = sub_1004DD4AC();
        v69 = v61;
        v60(v9, v54);
        sub_100004CB8(&qword_100634F40, &qword_100515800);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_100511DA0;
        sub_1004DD37C();
        (v68)(v7, v9, v54);
        sub_1004D838C();
        v62 = sub_1004DD4AC();
        v63 = v54;
        v65 = v64;
        v60(v9, v63);
        v21 = v69;
        result = v70;
        v20 = v71;
        v23 = 0;
        v26 = 0;
        v28 = 0;
        v29 = 0;
        v27 = 0;
        *(v25 + 32) = 0x6C65636E6163;
        *(v25 + 40) = 0xE600000000000000;
        v22 = v73;
        *(v25 + 48) = v62;
        *(v25 + 56) = v65;
        *(v25 + 64) = 0;
        v24 = 1;
        *(v25 + 72) = 0;
        *(v25 + 80) = 0;
      }

      else
      {
        v20 = 0;
        result = 0;
        v22 = 0;
        v21 = 0;
        v23 = 0;
        v25 = 0;
        v26 = 0;
        v24 = 0;
        v28 = 0;
        v29 = 0;
        v27 = 0;
      }
    }
  }

  *a1 = v20;
  a1[1] = result;
  a1[2] = v22;
  a1[3] = v21;
  a1[4] = v27 | v29;
  a1[5] = v23;
  a1[6] = v28 | v24;
  a1[7] = v25;
  a1[8] = v26;
  return result;
}

uint64_t Track.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1004DC2DC();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin();
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DC95C();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004DCAAC();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v37 - v13;
  v15 = *(v10 + 16);
  v42 = v1;
  v15(&v37 - v13, v1, v9, v12);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 == enum case for Track.song(_:))
  {
    (*(v10 + 96))(v14, v9);
    v17 = *(v6 + 32);
    v17(v8, v14, v5);
    a1[3] = v5;
    a1[4] = &protocol witness table for Song;
    v18 = sub_1000357EC(a1);
    return (v17)(v18, v8, v5);
  }

  else
  {
    v38 = a1;
    if (v16 == enum case for Track.musicVideo(_:))
    {
      (*(v10 + 96))(v14, v9);
      v20 = v39;
      v21 = *(v40 + 32);
      v22 = v41;
      v21(v39, v14, v41);
      v23 = v38;
      v38[3] = v22;
      v23[4] = &protocol witness table for MusicVideo;
      v24 = sub_1000357EC(v23);
      return (v21)(v24, v20, v22);
    }

    else
    {
      if (qword_100633C60 != -1)
      {
        swift_once();
      }

      v25 = sub_1004D966C();
      sub_100035430(v25, static Logger.musicKit);
      v26 = v43;
      (v15)(v43, v42, v9);
      v27 = sub_1004D964C();
      v28 = sub_1004DDF8C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v44 = v42;
        *v29 = 136315138;
        sub_10014D034(&qword_100638060, &type metadata accessor for Track, &protocol conformance descriptor for Track);
        v30 = sub_1004DEFFC();
        v31 = v26;
        v33 = v32;
        v34 = *(v10 + 8);
        v34(v31, v9);
        v35 = sub_1000343A8(v30, v33, &v44);

        *(v29 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "Unsupported Track type=%s", v29, 0xCu);
        sub_100008D24(v42);
      }

      else
      {

        v34 = *(v10 + 8);
        v34(v26, v9);
      }

      v36 = v38;
      v38[4] = 0;
      *v36 = 0u;
      *(v36 + 1) = 0u;
      return (v34)(v14, v9);
    }
  }
}

uint64_t Logger.musicKit.unsafeMutableAddressor()
{
  if (qword_100633C60 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.musicKit);
}

uint64_t Track.album(from:fallbackSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v6[5] = a3;
  v6[6] = v3;
  v6[3] = a1;
  v6[4] = a2;
  sub_100004CB8(&qword_100636190, &unk_100518320);
  v6[7] = swift_task_alloc();
  v8 = sub_1004DC14C();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[11] = v9;
  *v9 = v6;
  v9[1] = sub_100148B60;

  return sub_10014915C(a1, a2, v3);
}

uint64_t sub_100148B60()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100148CAC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100148CAC()
{
  *(v0 + 16) = *(v0 + 96);
  swift_errorRetain();
  sub_100004CB8(&qword_100638980, &qword_100515B30);
  if (!swift_dynamicCast() || (*(v0 + 120) & 1) != 0)
  {

    swift_willThrow();
LABEL_4:

    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);

  sub_10014CD30(v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_10001074C(*(v0 + 56), &qword_100636190, &unk_100518320);
LABEL_11:
    sub_10014CDA0();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    goto LABEL_4;
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  sub_10014D034(&qword_100638070, &type metadata accessor for MusicPropertySource, &protocol conformance descriptor for MusicPropertySource);
  if (sub_1004DD35C())
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    goto LABEL_11;
  }

  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_100148F28;
  v9 = *(v0 + 80);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);

  return sub_10014915C(v11, v9, v10);
}

uint64_t sub_100148F28()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1001490CC;
  }

  else
  {
    v2 = sub_10014903C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014903C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001490CC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10014915C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1004DC2DC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_100004CB8(&qword_1006362E0, &unk_100518580);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_100004CB8(&qword_100635B98, &qword_100517440);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_1004DC95C();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_1004DCAAC();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_100149384, 0, 0);
}

uint64_t sub_100149384()
{
  v44 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = *(v3 + 16);
  v4(v1, v0[4], v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for Track.song(_:))
  {
    v6 = v0[20];
    v7 = v0[16];
    v8 = v0[13];
    v9 = v0[14];
    (*(v0[18] + 96))(v6, v0[17]);
    (*(v9 + 32))(v7, v6, v8);
    sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
    v10 = swift_allocObject();
    v0[21] = v10;
    *(v10 + 16) = xmmword_100511AB0;
    sub_100004CB8(&qword_100636538, &qword_100518DC8);
    *(v10 + 32) = sub_1004DBFEC();
    v11 = swift_task_alloc();
    v0[22] = v11;
    v12 = sub_10014D034(&qword_100636530, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    *v11 = v0;
    v11[1] = sub_100149978;
    v13 = v0[15];
    v14 = v0[13];
    v15 = v0[3];
    v16 = &protocol witness table for Song;
    v17 = &protocol witness table for Song;
LABEL_5:

    return MusicItem<>.with(_:preferredSource:)(v13, v10, v15, v14, v16, v17, v12);
  }

  if (v5 == enum case for Track.musicVideo(_:))
  {
    v18 = v0[20];
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[6];
    (*(v0[18] + 96))(v18, v0[17]);
    (*(v21 + 32))(v19, v18, v20);
    sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
    v10 = swift_allocObject();
    v0[24] = v10;
    *(v10 + 16) = xmmword_100511AB0;
    sub_100004CB8(&qword_1006380D8, &qword_10051C858);
    *(v10 + 32) = sub_1004DBFDC();
    v22 = swift_task_alloc();
    v0[25] = v22;
    v12 = sub_10014D034(&qword_1006364D8, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
    *v22 = v0;
    v22[1] = sub_100149E10;
    v13 = v0[7];
    v14 = v0[5];
    v15 = v0[3];
    v16 = &protocol witness table for MusicVideo;
    v17 = &protocol witness table for MusicVideo;
    goto LABEL_5;
  }

  if (qword_100633C60 != -1)
  {
    swift_once();
  }

  v23 = v0[19];
  v24 = v0[17];
  v25 = v0[4];
  v26 = sub_1004D966C();
  sub_100035430(v26, static Logger.musicKit);
  v4(v23, v25, v24);
  v27 = sub_1004D964C();
  v28 = sub_1004DDF8C();
  v29 = os_log_type_enabled(v27, v28);
  v31 = v0[18];
  v30 = v0[19];
  v32 = v0[17];
  if (v29)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v33 = 136446210;
    sub_10014D034(&qword_100638060, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    v35 = sub_1004DEFFC();
    v37 = v36;
    v42 = *(v31 + 8);
    v42(v30, v32);
    v38 = sub_1000343A8(v35, v37, &v43);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unexpected Track type %{public}s", v33, 0xCu);
    sub_100008D24(v34);
  }

  else
  {

    v42 = *(v31 + 8);
    v42(v30, v32);
  }

  sub_10014CDA0();
  swift_allocError();
  *v39 = 1;
  swift_willThrow();
  v42(v0[20], v0[17]);

  v40 = v0[1];

  return v40();
}

uint64_t sub_100149978()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10014A2AC;
  }

  else
  {
    v2 = sub_100149AA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100149AA8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  sub_1004DC92C();
  v18 = *(v2 + 8);
  v18(v1, v3);
  v5 = sub_100004CB8(&qword_1006362E8, &qword_100518590);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[12];
  v9 = v0[10];
  if (v7 == 1)
  {
    sub_10001074C(v0[10], &qword_1006362E0, &unk_100518580);
    v10 = sub_1004DCA0C();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
LABEL_4:
    sub_10001074C(v0[12], &qword_100635B98, &qword_100517440);
    sub_10014CDA0();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v18(v0[16], v0[13]);

    v14 = v0[1];
    goto LABEL_6;
  }

  sub_1000C12E8(v0[12]);
  (*(v6 + 8))(v9, v5);
  v11 = sub_1004DCA0C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  v15 = v0[12];
  v16 = v0[2];
  v18(v0[16], v0[13]);
  (*(v12 + 32))(v16, v15, v11);

  v14 = v0[1];
LABEL_6:

  return v14();
}

uint64_t sub_100149E10()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10014A3AC;
  }

  else
  {
    v2 = sub_100149F40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100149F40(uint64_t a1)
{
  v2 = v1[9];
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[5];
  sub_1004DC2BC();
  v19 = *(v4 + 8);
  v19(v3, v5);
  v6 = sub_100004CB8(&qword_1006362E8, &qword_100518590);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v2, 1, v6);
  v9 = v1[11];
  v10 = v1[9];
  if (v8 == 1)
  {
    sub_10001074C(v1[9], &qword_1006362E0, &unk_100518580);
    v11 = sub_1004DCA0C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
LABEL_4:
    sub_10001074C(v1[11], &qword_100635B98, &qword_100517440);
    sub_10014CDA0();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v19(v1[8], v1[5]);

    v15 = v1[1];
    goto LABEL_6;
  }

  sub_1000C12E8(v1[11]);
  (*(v7 + 8))(v10, v6);
  v12 = sub_1004DCA0C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v16 = v1[11];
  v17 = v1[2];
  v19(v1[8], v1[5]);
  (*(v13 + 32))(v17, v16, v12);

  v15 = v1[1];
LABEL_6:

  return v15();
}

uint64_t sub_10014A2AC()
{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10014A3AC()
{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

NSString sub_10014A4B4()
{
  result = sub_1004DD3FC();
  static MusicLibrary.downloadingStateDidChange = result;
  return result;
}

uint64_t *MusicLibrary.downloadingStateDidChange.unsafeMutableAddressor()
{
  if (qword_100633C58 != -1)
  {
    swift_once();
  }

  return &static MusicLibrary.downloadingStateDidChange;
}

id static MusicLibrary.downloadingStateDidChange.getter()
{
  if (qword_100633C58 != -1)
  {
    swift_once();
  }

  v1 = static MusicLibrary.downloadingStateDidChange;

  return v1;
}

uint64_t MusicPin.Action.localizedTitle(for:)(char *a1)
{
  v2 = v1;
  v32 = a1;
  sub_1004D83FC();
  __chkstk_darwin();
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1004DD3EC();
  v4 = *(v34 - 8);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = sub_1004D8F4C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004D8F7C();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v2, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == enum case for MusicPin.Action.navigate(_:))
  {
    (*(v10 + 16))(v12, v32, v9);
    v19 = (*(v10 + 88))(v12, v9);
    if (v19 == enum case for MusicPin.Item.album(_:))
    {
      v31 = v9;
      v32 = v12;
      sub_1004DD37C();
      v20 = v34;
      (*(v4 + 16))(v6, v8, v34);
      if (qword_100633A80 != -1)
      {
        swift_once();
      }

      v21 = qword_100671958;
      sub_1004D838C();
      v22 = sub_1004DD4AC();
      (*(v4 + 8))(v8, v20);
      (*(v10 + 8))(v32, v31);
      return v22;
    }

    v23 = v34;
    if (v19 != enum case for MusicPin.Item.artist(_:) && v19 != enum case for MusicPin.Item.musicVideo(_:) && v19 != enum case for MusicPin.Item.playlist(_:) && v19 != enum case for MusicPin.Item.song(_:))
    {
      (*(v10 + 8))(v12, v9);
      return 0;
    }

    sub_1004DD37C();
    (*(v4 + 16))(v6, v8, v23);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v28 = qword_100671958;
    sub_1004D838C();
    v22 = sub_1004DD4AC();
    (*(v4 + 8))(v8, v23);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    if (v18 != enum case for MusicPin.Action.play(_:) && v18 != enum case for MusicPin.Action.shuffle(_:))
    {
      (*(v14 + 8))(v17, v13);
      return 0;
    }

    sub_1004DD37C();
    v24 = v4;
    v25 = *(v4 + 16);
    v26 = v34;
    v25(v6, v8, v34);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v27 = qword_100671958;
    sub_1004D838C();
    v22 = sub_1004DD4AC();
    (*(v24 + 8))(v8, v26);
  }

  return v22;
}

uint64_t sub_10014AC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10014D034(&qword_1006380C0, &type metadata accessor for Song, &protocol conformance descriptor for Song);

  return sub_1004DC23C();
}

uint64_t sub_10014AD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10014D034(&qword_1006380B8, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);

  return sub_1004DC23C();
}

uint64_t sub_10014AD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10014D034(&qword_1006380B0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

  return sub_1004DC23C();
}

uint64_t sub_10014AE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10014D034(&qword_1006380A0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  sub_10014D034(&qword_1006380A8, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);

  return sub_1004DC23C();
}

uint64_t sub_10014AEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10014D034(&qword_100638090, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  sub_10014D034(&qword_100638098, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);

  return sub_1004DC23C();
}

uint64_t sub_10014AFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10014D034(&qword_100638080, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
  sub_10014D034(&qword_100638088, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);

  return sub_1004DC23C();
}

uint64_t sub_10014B05C()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.musicKit);
  sub_100035430(v0, static Logger.musicKit);
  return sub_1004D965C();
}

uint64_t static Logger.musicKit.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633C60 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.musicKit);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10014B17C(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1004DF26C();
  ActionType.rawValue.getter(a1);
  sub_1004DD55C();

  v5 = sub_1004DF2BC();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 52;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = ActionType.rawValue.getter(*(*(v4 + 48) + v7));
    v11 = v10;
    if (v9 == ActionType.rawValue.getter(a1) && v11 == v12)
    {
      break;
    }

    v14 = sub_1004DF08C();

    if (v14)
    {
      goto LABEL_11;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 52;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001BC9EC();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_10014BAC0(v7);
  *v2 = v19;
  return v15;
}

uint64_t sub_10014B308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1004DC7EC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10014D034(&qword_100637BF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  v31 = a1;
  v10 = sub_1004DD2AC();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10014D034(&qword_100637C00, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v19 = sub_1004DD35C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001BCA00();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10014BC84(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_10014B5B0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v1;
  sub_1004DF26C();
  Library.Menu.Identifier.rawValue.getter(v3);
  sub_1004DD55C();

  v5 = sub_1004DF2BC();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 13;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = 0xD000000000000029;
    v10 = "orites";
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v9 = 0xD000000000000023;
        v10 = "LibraryView.Playlists";
        break;
      case 3:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.Artists";
        break;
      case 4:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Albums";
        break;
      case 5:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Songs";
        break;
      case 6:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.MadeForYou";
        break;
      case 7:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.MusicVideos";
        break;
      case 8:
        v9 = 0xD000000000000028;
        v10 = "LibraryView.Genres";
        break;
      case 9:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.Compilations";
        break;
      case 0xA:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Composers";
        break;
      case 0xB:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Shows";
        break;
      case 0xC:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v11 = v10 | 0x8000000000000000;
    v12 = 0xD000000000000029;
    v13 = "orites";
    switch(v3)
    {
      case 1:
        v12 = 0xD000000000000025;
        v13 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v12 = 0xD000000000000023;
        v13 = "LibraryView.Playlists";
        break;
      case 3:
        v12 = 0xD000000000000022;
        v13 = "LibraryView.Artists";
        break;
      case 4:
        v12 = 0xD000000000000021;
        v13 = "LibraryView.Albums";
        break;
      case 5:
        v12 = 0xD000000000000026;
        v13 = "LibraryView.Songs";
        break;
      case 6:
        v12 = 0xD000000000000027;
        v13 = "LibraryView.MadeForYou";
        break;
      case 7:
        v12 = 0xD000000000000022;
        v13 = "LibraryView.MusicVideos";
        break;
      case 8:
        v12 = 0xD000000000000028;
        v13 = "LibraryView.Genres";
        break;
      case 9:
        v12 = 0xD000000000000025;
        v13 = "LibraryView.Compilations";
        break;
      case 10:
        v12 = 0xD000000000000021;
        v13 = "LibraryView.Composers";
        break;
      case 11:
        v12 = 0xD000000000000026;
        v13 = "LibraryView.Shows";
        break;
      case 12:
        v12 = 0xD000000000000027;
        v13 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
    {
      break;
    }

    v14 = sub_1004DF08C();

    if (v14)
    {
      goto LABEL_35;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 13;
    }
  }

LABEL_35:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001BD018();
    v17 = v19;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_10014BF8C(v7);
  *v2 = v19;
  return v15;
}

uint64_t sub_10014B9D0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1004DF25C();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001BD15C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_10014C2F4(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void sub_10014BAC0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1004DE94C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_1004DF26C();
        ActionType.rawValue.getter(v10);
        sub_1004DD55C();

        v11 = sub_1004DF2BC() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_10014BC84(int64_t a1)
{
  v3 = sub_1004DC7EC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1004DE94C();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_10014D034(&qword_100637BF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
        v23 = sub_1004DD2AC();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_10014BF8C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1004DE94C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1004DF26C();
        sub_1004DD55C();

        v10 = sub_1004DF2BC() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    JUMPOUT(0x10014C2C0);
  }

  *(v3 + 16) = v16;
  ++*(v3 + 36);
}

void sub_10014C2F4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1004DE94C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1004DF25C() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

uint64_t sub_10014C478(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), (swift_stdlib_isStackAllocationSafe() & 1) != 0))
  {
    __chkstk_darwin();
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_10014C618(v9, v7, isStackAllocationSafe, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_10014D07C(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_10014C618(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = a1;
  v6 = sub_1004DC7EC();
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v39 = &v26 - v11;
  v32 = *(a3 + 16);
  if (v32)
  {
    v28 = 0;
    v12 = 0;
    v37 = *(v9 + 16);
    v38 = v9 + 16;
    v31 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v13 = *(v9 + 72);
    v35 = a4 + 56;
    v36 = v13;
    v14 = (v9 + 8);
    v34 = a4;
    while (1)
    {
      v33 = v12;
      v37(v39, v31 + v36 * v12, v6, v10);
      sub_10014D034(&qword_100637BF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v17 = sub_1004DD2AC();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v30 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22 = ~v18;
      while (1)
      {
        (v37)(v8, *(v34 + 48) + v19 * v36, v6);
        sub_10014D034(&qword_100637C00, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
        v23 = sub_1004DD35C();
        v15 = *v14;
        (*v14)(v8, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
        {
          a4 = v34;
          goto LABEL_4;
        }
      }

      result = (v15)(v39, v6);
      v25 = v29[v20];
      v29[v20] = v25 | v21;
      if ((v25 & v21) != 0)
      {
        a4 = v34;
LABEL_5:
        v16 = v33;
        goto LABEL_6;
      }

      v16 = v33;
      a4 = v34;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      ++v28;
LABEL_6:
      v12 = v16 + 1;
      if (v12 == v32)
      {
        goto LABEL_17;
      }
    }

    v15 = *v14;
LABEL_4:
    v15(v39, v6);
    goto LABEL_5;
  }

  v28 = 0;
LABEL_17:

  return sub_1001C2440(v29, v27, v28, a4);
}

uint64_t _s8MusicKit12AudioVariantO0A4CoreE1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_1006380E0, &qword_10051C860);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v7 = *(v6 + 56);
  v8 = sub_1004DC7EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v5, a1, v8);
  v10(&v5[v7], a2, v8);
  v11 = *(v9 + 88);
  v12 = v11(v5, v8);
  v13 = enum case for AudioVariant.dolbyAtmos(_:);
  if (v12 == enum case for AudioVariant.dolbyAtmos(_:))
  {
    goto LABEL_2;
  }

  v15 = enum case for AudioVariant.dolbyAudio(_:);
  if (v12 == enum case for AudioVariant.dolbyAudio(_:))
  {
    if (v11(&v5[v7], v8) != v13)
    {
LABEL_2:
      (*(v9 + 8))(&v5[v7], v8);
      return 1;
    }
  }

  else if (v12 == enum case for AudioVariant.lossless(_:))
  {
    v16 = v11(&v5[v7], v8);
    if (v16 != v13 && v16 != v15 && v16 != enum case for AudioVariant.highResolutionLossless(_:))
    {
      goto LABEL_2;
    }
  }

  else if (v12 == enum case for AudioVariant.highResolutionLossless(_:))
  {
    v19 = v11(&v5[v7], v8);
    if (v19 != v13 && v19 != v15)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v21 = *(v9 + 8);
    v21(&v5[v7], v8);
    v21(v5, v8);
  }

  return 0;
}

uint64_t sub_10014CB94(uint64_t a1)
{
  v2 = sub_1004DC7EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = *(a1 + 16);
  sub_10014D034(&qword_100637BF8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  result = sub_1004DDC5C();
  v16 = result;
  if (v8)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v5, v13, v2);
      sub_1001BB774(v7, v5);
      (*(v10 - 8))(v7, v2);
      v13 += v14;
      --v8;
    }

    while (v8);
    return v16;
  }

  return result;
}

uint64_t sub_10014CD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100636190, &unk_100518320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10014CDA0()
{
  result = qword_100638068;
  if (!qword_100638068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638068);
  }

  return result;
}

unint64_t sub_10014CE50()
{
  result = qword_100638078;
  if (!qword_100638078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638078);
  }

  return result;
}

uint64_t sub_10014CEA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10014CFE0();
  result = sub_1004DDC5C();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1001BBC00(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10014CF18(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10014CF8C();
  result = sub_1004DDC5C();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1001BBFA0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_10014CF8C()
{
  result = qword_1006380C8;
  if (!qword_1006380C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006380C8);
  }

  return result;
}

unint64_t sub_10014CFE0()
{
  result = qword_1006380D0;
  if (!qword_1006380D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006380D0);
  }

  return result;
}

uint64_t sub_10014D034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014D07C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10014C618(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t static Logger.music(_:)(uint64_t a1, uint64_t a2)
{

  return sub_1004D965C();
}

uint64_t *OS_os_log.musicBag.unsafeMutableAddressor()
{
  if (qword_100633C70 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicBag;
}

void **OS_os_log.musicSignposts.unsafeMutableAddressor()
{
  if (qword_100633C68 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.musicSignposts;
}

uint64_t sub_10014D28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10014D868();
  result = sub_1004DE7BC();
  *a4 = result;
  return result;
}

uint64_t sub_10014D3B4(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1004D966C();

  return sub_100035430(v4, a2);
}

uint64_t sub_10014D454(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1004D966C();
  sub_100035718(v5, a2);
  sub_100035430(v5, a2);
  return sub_1004D965C();
}

uint64_t sub_10014D4F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1004D966C();
  v7 = sub_100035430(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Optional.expectNotNil(logger:file:line:function:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v8 = v7;
  v33 = a3;
  v34 = a4;
  v13 = sub_1004D809C();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(*(a6 + 16) - 8) + 48))(v7, 1, v15) == 1)
  {
    v30 = a2;
    v32 = a5;
    v18 = sub_1004DDF5C();
    v19 = sub_1004D964C();
    v31 = v18;
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v29 = a7;
      v21 = v20;
      v28 = swift_slowAlloc();
      v35 = v28;
      *v21 = 136315650;
      sub_1004D7FAC();
      v22 = sub_1004D7FBC();
      v24 = v23;
      (*(v14 + 8))(v17, v13);
      v25 = sub_1000343A8(v22, v24, &v35);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2048;
      v26 = v34;
      *(v21 + 14) = v33;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1000343A8(v26, v32, &v35);
      _os_log_impl(&_mh_execute_header, v19, v31, "Unexpectedly found nil: %s:%ld %s", v21, 0x20u);
      swift_arrayDestroy();

      a7 = v29;
    }
  }

  return (*(*(a6 - 8) + 16))(a7, v8, a6);
}

uint64_t sub_10014D838@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_10014D868()
{
  result = qword_10063CE40;
  if (!qword_10063CE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10063CE40);
  }

  return result;
}

uint64_t MPModelSong.nowPlayingTitle(from:)(void *a1)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v23[-v8];
  v10 = [v1 title];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1004DD43C();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      return v12;
    }
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  v16 = [a1 name];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v12 = sub_1004DD43C();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

LABEL_12:
    sub_1004DD37C();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v21 = qword_100671958;
    sub_1004D838C();
    v12 = sub_1004DD4AC();
    (*(v4 + 8))(v9, v3);
  }

  return v12;
}

id MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(void *a1, void (*a2)(char *), uint64_t a3)
{
  v7 = sub_1004D7E3C();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7E7C();
  __chkstk_darwin();
  MPModelSong.nowPlayingTitle(from:)(a1);
  sub_1004D7E6C();
  sub_1004D7E4C();
  result = [v3 isExplicitSong];
  if (result)
  {
    v19[1] = a3;
    v20 = a2;
    v12 = String.nonBreakingSpace.unsafeMutableAddressor();
    v13 = *v12;
    v14 = v12[1];
    v15 = qword_100634468;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = (static ExplicitRestrictionsController.shared + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
    swift_beginAccess();
    v17 = *v16;
    v18 = v16[1];
    v21 = v13;
    v22 = v14;

    v23._countAndFlagsBits = v17;
    v23._object = v18;
    sub_1004DD5FC(v23);

    sub_1004D7E6C();
    sub_1004D7E4C();
    if (v20)
    {
      v20(v10);
    }

    sub_10015129C(&qword_1006380F0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    sub_1004D7E0C();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t MPModelSong.preferredBylineAttribution(with:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  sub_100004CB8(&qword_100634F38, &qword_10051C870);
  __chkstk_darwin();
  v9 = &v34 - v8;
  v10 = sub_1004D7E3C();
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  __chkstk_darwin();
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v34 - v14;
  __chkstk_darwin();
  v38 = &v34 - v15;
  sub_1004D7E7C();
  v16 = __chkstk_darwin();
  if (a2 && (v17 = [a2 attributionLabel]) != 0)
  {
    v18 = v17;
    sub_1004DD43C();

    sub_1004D7E6C();
    sub_1004D7E4C();
    return (*(v40 + 56))(a3, 0, 1, v39);
  }

  else
  {
    v35 = v13;
    v36 = a3;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = (a1 + 32);
      v22 = v39;
      v23 = (v40 + 48);
      v24 = (v40 + 32);
      v25 = _swiftEmptyArrayStorage;
      v37 = v4;
      do
      {
        v42 = *v21;
        sub_10014E218(&v42, v4, v9);
        if ((*v23)(v9, 1, v22) == 1)
        {
          sub_10001074C(v9, &qword_100634F38, &qword_10051C870);
        }

        else
        {
          v26 = *v24;
          v27 = v38;
          (*v24)(v38, v9, v22);
          v26(v41, v27, v22);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_10003AB30(0, v25[2] + 1, 1, v25);
          }

          v29 = v25[2];
          v28 = v25[3];
          if (v29 >= v28 >> 1)
          {
            v25 = sub_10003AB30((v28 > 1), v29 + 1, 1, v25);
          }

          v25[2] = v29 + 1;
          v30 = v25 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v29;
          v22 = v39;
          v26(v30, v41, v39);
          v4 = v37;
        }

        ++v21;
        --v20;
      }

      while (v20);
    }

    else
    {
      v25 = _swiftEmptyArrayStorage;
      v22 = v39;
    }

    if (v25[2])
    {
      v31 = v35;
      sub_1004D7DBC();
      v32 = v36;
      Array<A>.joined(separator:)(v31, v25, v22, &protocol witness table for AttributedString, &protocol witness table for AttributedString, v36);

      v33 = v40;
      (*(v40 + 8))(v31, v22);
      return (*(v33 + 56))(v32, 0, 1, v22);
    }

    else
    {
      (*(v40 + 56))(v36, 1, 1, v22, v16);
    }
  }
}

uint64_t sub_10014E218@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31[2] = sub_1004D7DCC();
  __chkstk_darwin();
  v31[1] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100638100, &qword_10051C9A0);
  __chkstk_darwin();
  v31[0] = v31 - v7;
  sub_1004DD3EC();
  __chkstk_darwin();
  sub_1004DD3CC();
  __chkstk_darwin();
  sub_1004D7E7C();
  __chkstk_darwin();
  v8 = *a1;
  v9 = sub_10014E72C(v8);
  v10 = [a2 hasLoadedValuesForPropertySet:v9];

  if (!v10)
  {
    v19 = sub_1004D7E3C();
    return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
  }

  if (v8)
  {
    v11 = [a2 artist];
    v12 = a3;
    if (!v11)
    {
      goto LABEL_19;
    }

    v13 = v11;
    v14 = [v11 name];

    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = sub_1004DD43C();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      sub_1004D7E6C();
      sub_1004D7E4C();
LABEL_17:
      v29 = sub_1004D7E3C();
      return (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
    }
  }

  else
  {
    v12 = a3;
    if (![a2 shouldShowComposer])
    {
      goto LABEL_19;
    }

    v21 = [a2 composer];
    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = v21;
    v23 = [v21 name];

    if (!v23)
    {
      goto LABEL_19;
    }

    v24 = sub_1004DD43C();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      sub_1004DD3BC();
      v32._countAndFlagsBits = 2128194;
      v32._object = 0xE300000000000000;
      sub_1004DD3AC(v32);
      v33._countAndFlagsBits = v24;
      v33._object = v26;
      sub_1004DD39C(v33);

      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      sub_1004DD3AC(v34);
      sub_1004DD3DC();
      v28 = sub_1004D83FC();
      (*(*(v28 - 8) + 56))(v31[0], 1, 1, v28);
      v31[5] = _swiftEmptyArrayStorage;
      sub_10015129C(&qword_100638108, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
      sub_100004CB8(&qword_100638110, &qword_10051C9A8);
      sub_1001512E4();
      sub_1004DE92C();
      sub_1004D7E1C();
      goto LABEL_17;
    }
  }

LABEL_19:
  v30 = sub_1004D7E3C();
  return (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
}

id sub_10014E72C(char a1)
{
  if (a1)
  {
    sub_100004CB8(&qword_100637F60, &unk_1005216D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = sub_1004DD43C();
    *(inited + 40) = v2;
    sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100511DA0;
    *(v3 + 32) = sub_1004DD43C();
    *(v3 + 40) = v4;
    isa = sub_1004DD85C().super.isa;

    v6 = [objc_opt_self() propertySetWithProperties:isa];

    *(inited + 48) = v6;
    sub_10005F144(inited);
    swift_setDeallocating();
    sub_10001074C(inited + 32, &qword_100637F68, qword_10051C4F0);
    v7 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = sub_1004DD85C().super.isa;
    sub_100151388();
    v9.super.isa = sub_1004DD1FC().super.isa;

    v10 = [v7 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  else
  {
    sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100511DA0;
    *(v11 + 32) = sub_1004DD43C();
    *(v11 + 40) = v12;
    sub_100004CB8(&qword_100637F60, &unk_1005216D0);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_100511DA0;
    *(v13 + 32) = sub_1004DD43C();
    *(v13 + 40) = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100511DA0;
    *(v15 + 32) = sub_1004DD43C();
    *(v15 + 40) = v16;
    v17 = sub_1004DD85C().super.isa;

    v18 = [objc_opt_self() propertySetWithProperties:v17];

    *(v13 + 48) = v18;
    sub_10005F144(v13);
    swift_setDeallocating();
    sub_10001074C(v13 + 32, &qword_100637F68, qword_10051C4F0);
    v19 = objc_allocWithZone(MPPropertySet);
    v8.super.isa = sub_1004DD85C().super.isa;

    sub_100151388();
    v9.super.isa = sub_1004DD1FC().super.isa;

    v10 = [v19 initWithProperties:v8.super.isa relationships:{v9.super.isa, 1, 2}];
  }

  v20 = v10;

  return v20;
}

uint64_t sub_10014EA84@<X0>(char *a1@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  v7 = sub_1004D7E3C();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;

  sub_100150970(&v15);
  v11 = v15;
  __chkstk_darwin();
  *(&v14 - 2) = v3;
  v12 = sub_100036EE8(a2, (&v14 - 4), v11);

  if (v12[2])
  {
    sub_1004D7DBC();
    Array<A>.joined(separator:)(v10, v12, v7, &protocol witness table for AttributedString, &protocol witness table for AttributedString, a3);

    (*(v8 + 8))(v10, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a3, 1, 1, v7);
  }
}

uint64_t BylineProviding.byline(with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = sub_1004D7E3C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;

  sub_100150970(&v17);
  v13 = v17;
  __chkstk_darwin();
  *(&v16 - 4) = a2;
  *(&v16 - 3) = a3;
  *(&v16 - 2) = v4;
  v14 = sub_100036EE8(sub_100150AB0, (&v16 - 6), v13);

  if (v14[2])
  {
    sub_1004D7DBC();
    Array<A>.joined(separator:)(v12, v14, v9, &protocol witness table for AttributedString, &protocol witness table for AttributedString, a4);

    (*(v10 + 8))(v12, v9);
    return (*(v10 + 56))(a4, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(a4, 1, 1, v9);
  }
}

uint64_t sub_10014EE84@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1004D7DCC();
  __chkstk_darwin();
  sub_100004CB8(&qword_100638100, &qword_10051C9A0);
  __chkstk_darwin();
  v5 = v19 - v4;
  sub_1004DD3EC();
  __chkstk_darwin();
  sub_1004DD3CC();
  __chkstk_darwin();
  sub_1004D7E7C();
  __chkstk_darwin();
  if (a1)
  {
    v6 = sub_1004DC89C();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_1004DC89C();
      sub_1004D7E6C();
      sub_1004D7E4C();
LABEL_12:
      v16 = sub_1004D7E3C();
      return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    }
  }

  else if (sub_1004DC86C())
  {
    v10 = sub_1004DC8AC();
    if (v11)
    {
      v12 = v11;
      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v14 = v10;
        sub_1004DD3BC();
        v20._countAndFlagsBits = 2128194;
        v20._object = 0xE300000000000000;
        sub_1004DD3AC(v20);
        v21._countAndFlagsBits = v14;
        v21._object = v12;
        sub_1004DD39C(v21);

        v22._countAndFlagsBits = 0;
        v22._object = 0xE000000000000000;
        sub_1004DD3AC(v22);
        sub_1004DD3DC();
        v15 = sub_1004D83FC();
        (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
        v19[3] = _swiftEmptyArrayStorage;
        sub_10015129C(&qword_100638108, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
        sub_100004CB8(&qword_100638110, &qword_10051C9A8);
        sub_1001512E4();
        sub_1004DE92C();
        sub_1004D7E1C();
        goto LABEL_12;
      }
    }
  }

  v18 = sub_1004D7E3C();
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

uint64_t sub_10014F288@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v32 = sub_1004D7DCC();
  __chkstk_darwin();
  v33 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100638100, &qword_10051C9A0);
  __chkstk_darwin();
  v31 = v30 - v6;
  sub_1004DD3EC();
  __chkstk_darwin();
  v30[1] = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DD3CC();
  __chkstk_darwin();
  v30[0] = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004DCAAC();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DC95C();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7E7C();
  __chkstk_darwin();
  if ((a1 & 1) == 0)
  {
    if (sub_1004DCA4C())
    {
      (*(v10 + 16))(v12, a2, v9);
      if ((*(v10 + 88))(v12, v9) == enum case for Track.song(_:))
      {
        (*(v10 + 96))(v12, v9);
        (*(v14 + 32))(v16, v12, v13);
        v23 = sub_1004DC8AC();
        v25 = v24;
        (*(v14 + 8))(v16, v13);
        if (v25)
        {
          v26 = HIBYTE(v25) & 0xF;
          if ((v25 & 0x2000000000000000) == 0)
          {
            v26 = v23 & 0xFFFFFFFFFFFFLL;
          }

          v21 = v34;
          if (!v26)
          {

            v22 = 1;
            goto LABEL_16;
          }

          sub_1004DD3BC();
          v36._countAndFlagsBits = 2128194;
          v36._object = 0xE300000000000000;
          sub_1004DD3AC(v36);
          v37._countAndFlagsBits = v23;
          v37._object = v25;
          sub_1004DD39C(v37);

          v38._countAndFlagsBits = 0;
          v38._object = 0xE000000000000000;
          sub_1004DD3AC(v38);
          sub_1004DD3DC();
          v27 = sub_1004D83FC();
          (*(*(v27 - 8) + 56))(v31, 1, 1, v27);
          v35 = _swiftEmptyArrayStorage;
          sub_10015129C(&qword_100638108, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
          sub_100004CB8(&qword_100638110, &qword_10051C9A8);
          sub_1001512E4();
          sub_1004DE92C();
          sub_1004D7E1C();
          goto LABEL_6;
        }
      }

      else
      {
        (*(v10 + 8))(v12, v9);
      }
    }

LABEL_15:
    v22 = 1;
    v21 = v34;
    goto LABEL_16;
  }

  v17 = sub_1004DCA6C();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_15;
  }

  sub_1004DCA6C();
  sub_1004D7E6C();
  v21 = v34;
  sub_1004D7E4C();
LABEL_6:
  v22 = 0;
LABEL_16:
  v28 = sub_1004D7E3C();
  return (*(*(v28 - 8) + 56))(v21, v22, 1, v28);
}

uint64_t sub_10014F838@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = sub_1004D7DCC();
  __chkstk_darwin();
  v31 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100638100, &qword_10051C9A0);
  __chkstk_darwin();
  v29 = v28 - v4;
  sub_1004DD3EC();
  __chkstk_darwin();
  v28[1] = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DD3CC();
  __chkstk_darwin();
  v28[0] = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DCF8C();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004DC95C();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7E7C();
  __chkstk_darwin();
  if ((a1 & 1) == 0)
  {
    if (sub_1004DCFAC())
    {
      sub_1004DCF9C();
      if ((*(v8 + 88))(v10, v7) == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v8 + 96))(v10, v7);
        (*(v12 + 32))(v14, v10, v11);
        v21 = sub_1004DC8AC();
        v23 = v22;
        (*(v12 + 8))(v14, v11);
        if (v23)
        {
          v24 = HIBYTE(v23) & 0xF;
          if ((v23 & 0x2000000000000000) == 0)
          {
            v24 = v21 & 0xFFFFFFFFFFFFLL;
          }

          v19 = v32;
          if (!v24)
          {

            v20 = 1;
            goto LABEL_16;
          }

          sub_1004DD3BC();
          v34._countAndFlagsBits = 2128194;
          v34._object = 0xE300000000000000;
          sub_1004DD3AC(v34);
          v35._countAndFlagsBits = v21;
          v35._object = v23;
          sub_1004DD39C(v35);

          v36._countAndFlagsBits = 0;
          v36._object = 0xE000000000000000;
          sub_1004DD3AC(v36);
          sub_1004DD3DC();
          v25 = sub_1004D83FC();
          (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
          v33 = _swiftEmptyArrayStorage;
          sub_10015129C(&qword_100638108, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
          sub_100004CB8(&qword_100638110, &qword_10051C9A8);
          sub_1001512E4();
          sub_1004DE92C();
          sub_1004D7E1C();
          goto LABEL_6;
        }
      }

      else
      {
        (*(v8 + 8))(v10, v7);
      }
    }

LABEL_15:
    v20 = 1;
    v19 = v32;
    goto LABEL_16;
  }

  v15 = sub_1004DCFCC();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    goto LABEL_15;
  }

  sub_1004DCFCC();
  sub_1004D7E6C();
  v19 = v32;
  sub_1004D7E4C();
LABEL_6:
  v20 = 0;
LABEL_16:
  v26 = sub_1004D7E3C();
  return (*(*(v26 - 8) + 56))(v19, v20, 1, v26);
}

uint64_t sub_10014FDD0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t (**a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v29 = a4;
  sub_1004D7DCC();
  __chkstk_darwin();
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100638100, &qword_10051C9A0);
  __chkstk_darwin();
  v9 = &v28 - v8;
  sub_1004DD3EC();
  __chkstk_darwin();
  sub_1004DD3CC();
  __chkstk_darwin();
  sub_1004D7E7C();
  v10 = __chkstk_darwin();
  if (*a1 == 1)
  {
    v11 = a3[1];
    v12 = (v11)(a2, a3, v10);
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v11(a2, a3);
      sub_1004D7E6C();
      v16 = v29;
      sub_1004D7E4C();
      v17 = sub_1004D7E3C();
      return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
    }
  }

  else if ((a3[3])(a2, a3, v10))
  {
    v19 = a3[2](a2, a3);
    if (v20)
    {
      v21 = v20;
      v22 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v23 = v19;
        sub_1004DD3BC();
        v31._countAndFlagsBits = 2128194;
        v31._object = 0xE300000000000000;
        sub_1004DD3AC(v31);
        v32._countAndFlagsBits = v23;
        v32._object = v21;
        sub_1004DD39C(v32);

        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        sub_1004DD3AC(v33);
        sub_1004DD3DC();
        v24 = sub_1004D83FC();
        (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
        v30 = _swiftEmptyArrayStorage;
        sub_10015129C(&qword_100638108, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
        sub_100004CB8(&qword_100638110, &qword_10051C9A8);
        sub_1001512E4();
        sub_1004DE92C();
        v25 = v29;
        sub_1004D7E1C();
        v26 = sub_1004D7E3C();
        return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
      }
    }
  }

  v27 = sub_1004D7E3C();
  return (*(*(v27 - 8) + 56))(v29, 1, 1, v27);
}

uint64_t Track.composerName.getter()
{
  v1 = v0;
  v2 = sub_1004DCAAC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DC95C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2, v8);
  if ((*(v3 + 88))(v5, v2) == enum case for Track.song(_:))
  {
    (*(v3 + 96))(v5, v2);
    (*(v7 + 32))(v10, v5, v6);
    v11 = sub_1004DC8AC();
    (*(v7 + 8))(v10, v6);
    return v11;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_1001504BC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(a1 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DC95C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v4, a1, v10);
  if ((*(v5 + 88))(v7, a1) == enum case for Track.song(_:))
  {
    (*(v5 + 96))(v7, a1);
    (*(v9 + 32))(v12, v7, v8);
    v13 = sub_1004DC8AC();
    (*(v9 + 8))(v12, v8);
    return v13;
  }

  else
  {
    (*(v5 + 8))(v7, a1);
    return 0;
  }
}

uint64_t Playlist.Entry.composerName.getter()
{
  v0 = sub_1004DCF8C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DC95C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DCF9C();
  if ((*(v1 + 88))(v3, v0) == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v1 + 96))(v3, v0);
    (*(v5 + 32))(v7, v3, v4);
    v8 = sub_1004DC8AC();
    (*(v5 + 8))(v7, v4);
    return v8;
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

Swift::Int sub_100150970(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10026F748(v2);
  }

  v3 = *(v2 + 2);
  v17[0] = (v2 + 32);
  v17[1] = v3;
  result = sub_1004DEF7C(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if ((*v13 & (v11 ^ 1) & 1) == 0)
          {
            break;
          }

          v13[1] = *v13;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004DD8EC();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v15[0] = v7 + 4;
    v15[1] = v6;
    sub_100150B38(v15, v16, v17, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_100150AD4()
{
  result = qword_1006380F8;
  if (!qword_1006380F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006380F8);
  }

  return result;
}

uint64_t sub_100150B38(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v83 = *v83;
    if (!v83)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_10026F720(v9);
      v9 = result;
    }

    v75 = v9 + 16;
    v76 = *(v9 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v9[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_100151078((*a3 + *v77), (*a3 + *v79), (*a3 + v80), v83);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_112;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_113;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_114;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10) & (v11 ^ 1);
      v13 = v10 + 2;
      while (v6 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = v11 & (v14 ^ 1);
        ++v13;
        v11 = v14;
        if (v12 != v15)
        {
          v8 = v13 - 1;
          if (!v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (!v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v16 = v8 - 1;
        v17 = v10;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v18 = *(v20 + v17);
            *(v20 + v17) = *(v20 + v16);
            *(v20 + v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10003A490(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_10003A490((v28 > 1), v29 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v30;
    v31 = &v9[16 * v29];
    *(v31 + 4) = v10;
    *(v31 + 5) = v8;
    v32 = *v83;
    if (!*v83)
    {
      goto LABEL_125;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v9 + 4);
          v35 = *(v9 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_103;
          }

          v50 = &v9[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v9[16 * v33 + 32];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_110;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v60 = &v9[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_71:
        if (v55)
        {
          goto LABEL_105;
        }

        v63 = &v9[16 * v33];
        v65 = *(v63 + 4);
        v64 = *(v63 + 5);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_108;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_78:
        v71 = v33 - 1;
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v72 = *&v9[16 * v71 + 32];
        v73 = *&v9[16 * v33 + 40];
        sub_100151078((*a3 + v72), (*a3 + *&v9[16 * v33 + 32]), (*a3 + v73), v32);
        if (v4)
        {
        }

        if (v73 < v72)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10026F720(v9);
        }

        if (v71 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v74 = &v9[16 * v71];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        result = sub_10026F694(v33);
        v30 = *(v9 + 2);
        if (v30 <= 1)
        {
          goto LABEL_3;
        }
      }

      v38 = &v9[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_101;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_102;
      }

      v45 = &v9[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_104;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v9[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_111;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + v8 - 1;
  v23 = v10 - v8;
LABEL_30:
  v24 = *(v21 + v8);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    if ((*v26 & (v24 ^ 1)) != 1)
    {
LABEL_29:
      ++v8;
      ++v22;
      --v23;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = *v26;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_100151078(_BYTE *__dst, _BYTE *__src, _BYTE *a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v15 = v6 - 1;
        --v5;
        while (1)
        {
          v16 = v5 + 1;
          if (*v15 == 1 && *(v10 - 1) == 0)
          {
            break;
          }

          v18 = v10 - 1;
          if (v16 < v10 || v5 >= v10)
          {
            *v5 = *v18;
          }

          --v5;
          --v10;
          if (v18 <= v4)
          {
            v10 = v18;
            goto LABEL_46;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = *v15;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v15 > v7);
      v6 = v15;
      if (v15 == v4)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

LABEL_46:
    if (v6 != v4)
    {
LABEL_48:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (*v4 == 1 && *v6 == 0)
        {
          v14 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v14)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = v4 + 1;
          v13 = v4;
          v14 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v12)
            {
              goto LABEL_19;
            }
          }
        }

        *v7 = *v13;
LABEL_19:
        ++v7;
        if (v4 < v10)
        {
          v6 = v14;
          if (v14 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_48;
    }
  }

LABEL_47:
  if (v6 >= v10)
  {
    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_10015129C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001512E4()
{
  result = qword_100638118;
  if (!qword_100638118)
  {
    sub_100008DE4(&qword_100638110, &qword_10051C9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638118);
  }

  return result;
}

unint64_t sub_100151388()
{
  result = qword_100639C10;
  if (!qword_100639C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100639C10);
  }

  return result;
}

void DefaultStringInterpolation.appendInterpolation(describing:default:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100151470(a1, &v5);
  if (v6)
  {
    sub_100006F5C(&v5, v7);
    sub_1004DEC6C();
    sub_100008D24(v7);
  }

  else
  {
    sub_10013EDFC(&v5);
    v8._countAndFlagsBits = a2;
    v8._object = a3;
    sub_1004DD5FC(v8);
  }
}

uint64_t sub_100151470(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100638E60, &unk_10051A920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1001514E0()
{
  if (qword_100633C98 != -1)
  {
    swift_once();
  }

  static BackgroundMaterial.defaultValue = static BackgroundMaterial.supportedMaterials;

  return result;
}

uint64_t *BackgroundMaterial.supportedMaterials.unsafeMutableAddressor()
{
  if (qword_100633C98 != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.supportedMaterials;
}

uint64_t *BackgroundMaterial.defaultValue.unsafeMutableAddressor()
{
  if (qword_100633C90 != -1)
  {
    swift_once();
  }

  return &static BackgroundMaterial.defaultValue;
}

void sub_100151608()
{
  sub_10003756C(0, 1, 1);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    sub_10003756C((v0 > 1), v1 + 1, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 0;
  v4 = v1 + 2;
  if (v2 < v4)
  {
    sub_10003756C((v0 > 1), v4, 1);
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 1;
  v5 = sub_10014CEA4(_swiftEmptyArrayStorage);

  static BackgroundMaterial.supportedMaterials = v5;
}

double sub_100151728(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

double sub_100151788@<D0>(void *a1@<X8>)
{
  if (qword_100633C90 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static BackgroundMaterial.defaultValue;

  return result;
}

uint64_t UITraitCollection.supportedMaterials.getter()
{
  sub_100151858();
  sub_1004DE1AC();
  return v1;
}

unint64_t sub_100151858()
{
  result = qword_100638120;
  if (!qword_100638120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638120);
  }

  return result;
}

uint64_t UIMutableTraits.supportedMaterials.getter(uint64_t a1, uint64_t a2)
{
  sub_100151858();
  sub_1004D976C();
  return v3;
}

void (*UIMutableTraits.supportedMaterials.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  sub_100151858();
  sub_1004D976C();
  return sub_100151A0C;
}

void sub_100151A0C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  if (a2)
  {

    sub_100151858();
    sub_1004D977C();
  }

  else
  {
    *v2 = v3;
    sub_100151858();
    sub_1004D977C();
  }

  free(v2);
}

unint64_t sub_100151AC0()
{
  result = qword_100638128;
  if (!qword_100638128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638128);
  }

  return result;
}

unint64_t sub_100151B18()
{
  result = qword_100638130;
  if (!qword_100638130)
  {
    sub_100008DE4(&qword_100638138, &qword_10051CA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638130);
  }

  return result;
}

unint64_t sub_100151B8C(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = sub_1004DED5C();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = sub_1004DEB2C();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    sub_100006F10(0, a3, a4);
    v12 = sub_1004DE5FC();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100151C94(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xD000000000000029;
    v7 = "orites";
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xD000000000000025;
        v7 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v6 = 0xD000000000000023;
        v7 = "LibraryView.Playlists";
        break;
      case 3:
        v6 = 0xD000000000000022;
        v7 = "LibraryView.Artists";
        break;
      case 4:
        v6 = 0xD000000000000021;
        v7 = "LibraryView.Albums";
        break;
      case 5:
        v6 = 0xD000000000000026;
        v7 = "LibraryView.Songs";
        break;
      case 6:
        v6 = 0xD000000000000027;
        v7 = "LibraryView.MadeForYou";
        break;
      case 7:
        v6 = 0xD000000000000022;
        v7 = "LibraryView.MusicVideos";
        break;
      case 8:
        v6 = 0xD000000000000028;
        v7 = "LibraryView.Genres";
        break;
      case 9:
        v6 = 0xD000000000000025;
        v7 = "LibraryView.Compilations";
        break;
      case 0xA:
        v6 = 0xD000000000000021;
        v7 = "LibraryView.Composers";
        break;
      case 0xB:
        v6 = 0xD000000000000026;
        v7 = "LibraryView.Shows";
        break;
      case 0xC:
        v6 = 0xD000000000000027;
        v7 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v8 = v7 | 0x8000000000000000;
    v9 = 0xD000000000000029;
    v10 = "orites";
    switch(a1)
    {
      case 1:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v9 = 0xD000000000000023;
        v10 = "LibraryView.Playlists";
        break;
      case 3:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.Artists";
        break;
      case 4:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Albums";
        break;
      case 5:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Songs";
        break;
      case 6:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.MadeForYou";
        break;
      case 7:
        v9 = 0xD000000000000022;
        v10 = "LibraryView.MusicVideos";
        break;
      case 8:
        v9 = 0xD000000000000028;
        v10 = "LibraryView.Genres";
        break;
      case 9:
        v9 = 0xD000000000000025;
        v10 = "LibraryView.Compilations";
        break;
      case 10:
        v9 = 0xD000000000000021;
        v10 = "LibraryView.Composers";
        break;
      case 11:
        v9 = 0xD000000000000026;
        v10 = "LibraryView.Shows";
        break;
      case 12:
        v9 = 0xD000000000000027;
        v10 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
    {
      break;
    }

    v11 = sub_1004DF08C();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_100152010()
{
  result = swift_slowAlloc();
  qword_100638140 = result;
  return result;
}

uint64_t sub_100152038()
{
  result = swift_slowAlloc();
  qword_100638148 = result;
  return result;
}

uint64_t sub_100152060()
{
  result = swift_slowAlloc();
  qword_100638150 = result;
  return result;
}

uint64_t sub_100152088()
{
  result = swift_slowAlloc();
  qword_100638158 = result;
  return result;
}

id sub_1001520E0()
{
  v2.receiver = v0;
  v2.super_class = _s27WeakViewControllerReferenceCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void UIViewController.playActivityFeatureNameSourceViewController.setter(void *a1)
{
  sub_100154650(a1, &qword_100633CA8, &qword_100638148, sub_100152038);
}

id sub_1001522AC(void *a1, const void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  if (objc_getAssociatedObject(v3, *a2))
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_10013EDFC(v10);
    return [v3 parentViewController];
  }

  _s27WeakViewControllerReferenceCMa();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return [v3 parentViewController];
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  result = Strong;
  if (!Strong)
  {
    return [v3 parentViewController];
  }

  return result;
}

void UIViewController.playActivityRecommendationDataSourceViewController.setter(void *a1)
{
  sub_100154650(a1, &qword_100633CB0, &qword_100638150, sub_100152060);
}

void (*UIViewController.playActivityRecommendationDataSourceViewController.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
  return sub_100152454;
}

void sub_100152454(id *a1, char a2)
{
  value = *a1;
  if (a2)
  {
    v2 = value;
    sub_100154650(value, &qword_100633CB0, &qword_100638150, sub_100152060);

    v3 = v2;
  }

  else
  {
    sub_100154650(*a1, &qword_100633CB0, &qword_100638150, sub_100152060);
    v3 = value;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.getter()
{
  if (qword_100633CB8 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_100638158))
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10013EDFC(v5);
    return 0;
  }
}

uint64_t UIViewController.playActivityForwardedRecommendationData.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100633CB8 != -1)
  {
    swift_once();
  }

  v6 = qword_100638158;
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    sub_100010530(a1, a2);
    isa = sub_1004D80FC().super.isa;
    sub_100010584(a1, a2);
  }

  objc_setAssociatedObject(v3, v6, isa, 3);

  return sub_100010584(a1, a2);
}

uint64_t UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(uint64_t a1)
{
  v2 = a1;
  v3 = [v1 playActivityRecommendationData];
  if (!v3 && ((v2 & 1) == 0 || (v3 = [v1 playActivityForwardedRecommendationData]) == 0))
  {
    v9 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
    v5 = 0;
    if (v9)
    {
      goto LABEL_8;
    }

    return v5;
  }

  v4 = v3;
  v5 = sub_1004D810C();
  v7 = v6;

  v8 = UIViewController.playActivityRecommendationDataSourceViewController.getter();
  v9 = v8;
  if (v7 >> 60 != 15)
  {
    goto LABEL_28;
  }

  if (v8)
  {
    while (1)
    {
LABEL_8:
      v10 = [v9 playActivityRecommendationData];
      if (v10 || (v2 & 1) != 0 && (v10 = [v9 playActivityForwardedRecommendationData]) != 0)
      {
        v11 = v10;
        v5 = sub_1004D810C();
        v13 = v12;
      }

      else
      {
        v5 = 0;
        v13 = 0xF000000000000000;
      }

      if (qword_100633CB0 != -1)
      {
        swift_once();
      }

      if (objc_getAssociatedObject(v9, qword_100638150))
      {
        sub_1004DE8DC();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
      }

      v20[0] = v18;
      v20[1] = v19;
      if (!*(&v19 + 1))
      {
        break;
      }

      _s27WeakViewControllerReferenceCMa();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_23;
      }

      v16 = v13;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (!Strong)
      {
        goto LABEL_23;
      }

LABEL_24:

      if (v13 >> 60 != 15)
      {
        v9 = Strong;
LABEL_28:

        return v5;
      }

      v9 = Strong;
      if (!Strong)
      {
        return v5;
      }
    }

    sub_10013EDFC(v20);
LABEL_23:
    Strong = [v9 parentViewController];
    goto LABEL_24;
  }

  return v5;
}

unint64_t UIViewController.playActivityFeatureIdentifier.getter()
{
  v1 = [v0 playActivityFeatureName];
  v2 = sub_1004DD43C();
  v4 = v3;

  return _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0(v2, v4);
}

void UIViewController.playActivityFeatureIdentifier.setter(char a1)
{
  if (a1 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(a1);
  }

  v2 = sub_1004DD3FC();

  [v1 setPlayActivityFeatureName:v2];
}

void (*UIViewController.playActivityFeatureIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 playActivityFeatureName];
  v4 = sub_1004DD43C();
  v6 = v5;

  *(a1 + 8) = _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0(v4, v6);
  return sub_100152C6C;
}

void sub_100152C6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(v2);
  }

  v3 = *a1;
  v4 = sub_1004DD3FC();

  [v3 setPlayActivityFeatureName:v4];
}

uint64_t UIViewController.playActivityFeatureNames(sourceChildViewController:)()
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100511DA0;
  v2 = [v0 playActivityFeatureName];
  v3 = sub_1004DD43C();
  v5 = v4;

  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  return v1;
}

uint64_t UIViewController.completePlayActivityFeatureNames.getter()
{
  result = v0;
  v2 = 0;
  do
  {
    v3 = result;
    v4 = [result playActivityFeatureNamesWithSourceChildViewController:v2];
    v5 = sub_1004DD87C();

    sub_1000455A4(v5);
    result = [v3 playActivityFeatureNameSourceViewController];
    v2 = v3;
  }

  while (result);
  v6 = 0;
  v7 = _swiftEmptyArrayStorage[2];
LABEL_4:
  v8 = &_swiftEmptyArrayStorage[2 * v6 + 5];
  while (1)
  {
    if (v7 == v6)
    {

      v15 = sub_10015304C(_swiftEmptyArrayStorage);

      return v15;
    }

    if (v6 >= _swiftEmptyArrayStorage[2])
    {
      break;
    }

    ++v6;
    v10 = *(v8 - 1);
    v9 = *v8;
    v8 += 2;
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000374EC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_1000374EC((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v10;
      v14[5] = v9;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

char *sub_10015304C(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_10005D2B8(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t UIViewController.combinedPlayActivityFeatureName.getter()
{
  v1 = [v0 completePlayActivityFeatureNames];
  sub_1004DD87C();

  sub_100004CB8(&unk_1006372E0, &unk_1005157F0);
  sub_10015472C();
  sub_100030C58();
  v2 = sub_1004DD80C();

  return v2;
}

uint64_t Collection<>.playActivityFeatureJoined()(uint64_t a1, uint64_t a2)
{
  sub_100030C58();

  return sub_1004DD80C();
}

uint64_t UIViewController.playActivityInformation.getter()
{
  v1 = [v0 combinedPlayActivityFeatureName];
  v2 = sub_1004DD43C();

  v3 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v5 = v4;
  sub_100010584(0, 0xF000000000000000);

  sub_100027F64(v3, v5);

  sub_100010584(v3, v5);
  return v2;
}

uint64_t UINavigationController.playActivityFeatureNames(sourceChildViewController:)(void *a1)
{
  v5 = [i viewControllers];
  v6 = sub_100006F10(0, &qword_100638170, UIViewController_ptr);
  v7 = sub_1004DD87C();

  if (!a1)
  {
    goto LABEL_25;
  }

  v8 = a1;
  v9 = sub_100151B8C(v8, v7, &qword_100638170, UIViewController_ptr);
  if ((v11 & 1) == 0)
  {
    v12 = v9;
    if (v9 < 0)
    {
      goto LABEL_53;
    }

    v10 = v7 & 0xFFFFFFFFFFFFFF8;
    v3 = v7 >> 62;
    if (v7 >> 62)
    {
LABEL_54:
      if ((v7 & 0x8000000000000000) != 0)
      {
        v2 = v7;
      }

      else
      {
        v2 = v10;
      }

      result = sub_1004DED5C();
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      if (sub_1004DED5C() >= v12)
      {
LABEL_6:
        if ((v7 & 0xC000000000000001) != 0)
        {

          if (v12)
          {
            v13 = 0;
            do
            {
              v14 = v13 + 1;
              sub_1004DEB0C(v13);
              v13 = v14;
            }

            while (v12 != v14);
          }
        }

        else
        {
        }

        if (v3)
        {
          v6 = sub_1004DED6C();
          v3 = v15;
          v2 = v16;
          v12 = v17;

          if (v12)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v2 = 0;
          v6 = v7 & 0xFFFFFFFFFFFFFF8;
          v3 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
          v12 = (2 * v12) | 1;
          if (v12)
          {
LABEL_18:
            sub_1004DF0BC();
            swift_unknownObjectRetain_n();
            v19 = swift_dynamicCastClass();
            if (!v19)
            {
              swift_unknownObjectRelease();
              v19 = _swiftEmptyArrayStorage;
            }

            v20 = v19[2];

            if (!__OFSUB__(v12 >> 1, v2))
            {
              if (v20 == (v12 >> 1) - v2)
              {
                v7 = swift_dynamicCastClass();

                swift_unknownObjectRelease();
                if (!v7)
                {
                  swift_unknownObjectRelease();
                  v7 = _swiftEmptyArrayStorage;
                }

                swift_unknownObjectRelease();
                goto LABEL_25;
              }

              goto LABEL_61;
            }

LABEL_60:
            __break(1u);
LABEL_61:
            swift_unknownObjectRelease_n();
          }
        }

        sub_100153FDC(v6, v3, v2, v12);
        v7 = v18;
        swift_unknownObjectRelease();
        goto LABEL_17;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_60;
  }

LABEL_17:

LABEL_25:
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v8 = swift_allocObject();
  *(v8 + 1) = xmmword_100511DA0;
  v21 = [i playActivityFeatureName];
  v6 = sub_1004DD43C();
  v12 = v22;

  v8[4] = v6;
  v8[5] = v12;
  if (v7 >> 62)
  {
    goto LABEL_50;
  }

  v10 = v7 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
  {
    if (i < 1)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v6 = 0;
    v12 = &type metadata for String;
    while (1)
    {
      v23 = (v7 & 0xC000000000000001) != 0 ? sub_1004DEB2C() : *(v7 + 8 * v6 + 32);
      v24 = v23;
      v25 = [v23 playActivityFeatureNamesWithSourceChildViewController:0];
      v26 = sub_1004DD87C();

      v3 = *(v26 + 16);
      v27 = v8[2];
      v28 = v27 + v3;
      if (__OFADD__(v27, v3))
      {
        break;
      }

      v29 = v8[3] >> 1;
      if (v29 < v28)
      {
        if (v27 <= v28)
        {
          v33 = v27 + v3;
        }

        else
        {
          v33 = v8[2];
        }

        v8 = sub_10003A134(1, v33, 1, v8);
        v27 = v8[2];
        v29 = v8[3] >> 1;
        if (*(v26 + 16))
        {
LABEL_37:
          if ((v29 - v27) < v3)
          {
            goto LABEL_48;
          }

          swift_arrayInitWithCopy();

          if (v3)
          {
            v30 = v8[2];
            v31 = __OFADD__(v30, v3);
            v32 = v30 + v3;
            if (v31)
            {
              goto LABEL_49;
            }

            v8[2] = v32;
          }

          goto LABEL_30;
        }
      }

      else if (v3)
      {
        goto LABEL_37;
      }

      if (v3)
      {
        goto LABEL_47;
      }

LABEL_30:
      ++v6;

      if (i == v6)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

LABEL_51:

  return v8;
}

uint64_t UITab.path.getter()
{
  sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100511AB0;
  *(v1 + 32) = v0;
  v2 = v0;
  for (i = [v2 parent]; ; i = objc_msgSend(v2, "parent"))
  {
    v4 = i;

    if (!v4)
    {
      return v1;
    }

    v5 = v1 >> 62;
    if (!(v1 >> 62))
    {
      v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    result = sub_1004DED5C();
    if (result < 0)
    {
      break;
    }

    result = sub_1004DED5C();
    if (result < 0)
    {
      goto LABEL_21;
    }

    v9 = sub_1004DED5C();
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_18:
      __break(1u);
      return v1;
    }

LABEL_8:
    v2 = v4;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v5)
      {
LABEL_2:
        sub_1004DED5C();
      }

LABEL_3:
      v1 = sub_1004DEB3C();
      goto LABEL_4;
    }

    if (v5)
    {
      goto LABEL_2;
    }

    if (v7 > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }

LABEL_4:
    sub_100154790(0, 0, 1, v2);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_100153AE8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1004DD3FC();

  return v5;
}

uint64_t _sSo16UIViewControllerC9MusicCoreE23playActivityFeatureNameSSvg_0()
{
  if (qword_100633CA0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_100638140))
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_10013EDFC(v5);
  }

  return 0;
}

void sub_100153C38(void *a1, uint64_t a2, void *a3)
{
  v4 = qword_100633CA0;
  v5 = a3;
  v6 = a1;
  v7 = v6;
  if (v4 != -1)
  {
    swift_once();
    v6 = v7;
  }

  objc_setAssociatedObject(v6, qword_100638140, v5, 3);
}

void _sSo16UIViewControllerC9MusicCoreE23playActivityFeatureNameSSvs_0(uint64_t a1, uint64_t a2)
{
  if (qword_100633CA0 != -1)
  {
    swift_once();
  }

  v3 = qword_100638140;
  value = sub_1004DD3FC();

  objc_setAssociatedObject(v2, v3, value, 3);
}

uint64_t UITab.combinedPlayActivityFeatureName.getter()
{
  UITab.playActivityFeatureNames.getter();
  sub_100004CB8(&unk_1006372E0, &unk_1005157F0);
  sub_10015472C();
  sub_100030C58();
  v0 = sub_1004DD80C();

  return v0;
}

char *UITab.playActivityFeatureNames.getter()
{
  v0 = UITab.path.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v3 = sub_1004DED5C();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v20 = v5;
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1004DEB2C();
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_22;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = [v7 playActivityFeatureName];
      v10 = sub_1004DD43C();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        v5 = v20;
        goto LABEL_25;
      }
    }

    v14 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_10003A134(0, *(v20 + 2) + 1, 1, v20);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v14;
    if (v16 >= v15 >> 1)
    {
      v17 = sub_10003A134((v15 > 1), v16 + 1, 1, v14);
    }

    *(v17 + 2) = v16 + 1;
    v5 = v17;
    v18 = &v17[16 * v16];
    *(v18 + 4) = v10;
    *(v18 + 5) = v12;
  }

  while (v4 != v3);
LABEL_25:

  return v5;
}

void sub_100153FDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100006F10(0, &qword_100638170, UIViewController_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100004CB8(&qword_1006379A0, &unk_100518BF0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1001540D4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1004DED5C();
LABEL_9:
  result = sub_1004DEB3C();
  *v2 = result;
  return result;
}

char *sub_100154178(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

char *sub_100154234(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_1001542D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

unint64_t sub_1001543BC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  type metadata accessor for ICURLBagKey(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_100154480(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_100004CB8(&qword_100634FA0, &qword_100515710);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100154550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for BagProvider.Observer();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1004DED5C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1004DED5C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_100154650(id value, void *a2, const void **a3, uint64_t a4)
{
  v7 = value;
  if (value)
  {
    v8 = _s27WeakViewControllerReferenceCMa();
    v9 = objc_allocWithZone(v8);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v10.receiver = v9;
    v10.super_class = v8;
    v7 = objc_msgSendSuper2(&v10, "init");
  }

  if (*a2 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v4, *a3, v7, 1);
}

unint64_t sub_10015472C()
{
  result = qword_100638168;
  if (!qword_100638168)
  {
    sub_100008DE4(&unk_1006372E0, &unk_1005157F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638168);
  }

  return result;
}

char *sub_100154790(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100006F10(0, &qword_1006381A0, UITab_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1004DED5C();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1004DED5C();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1001548BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100006F10(0, &qword_1006381A0, UITab_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1004DED5C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1004DED5C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t _sSo18UITabBarControllerC9MusicCoreE24playActivityFeatureNames015sourceChildViewC0SaySSGSo06UIViewC0CSg_tF_0()
{
  v3 = v0;
  v4 = [v0 selectedTab];
  if (!v4)
  {
    sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100511DA0;
    v18 = [v0 playActivityFeatureName];
    v19 = sub_1004DD43C();
    v21 = v20;

    result = v17;
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    return result;
  }

  v5 = v4;
  v6 = [v4 managingTabGroup];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 managingNavigationController];
  if (!v8)
  {

LABEL_14:
    sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100511DA0;
    v23 = [v3 playActivityFeatureName];
    v24 = sub_1004DD43C();
    v26 = v25;

    *(v22 + 32) = v24;
    *(v22 + 40) = v26;

    return v22;
  }

  v9 = v8;
  v10 = UITab.path.getter();
  v48 = v10;
  v11 = [v9 viewControllers];
  sub_100006F10(0, &qword_100638170, UIViewController_ptr);
  v12 = sub_1004DD87C();

  if (v12 >> 62)
  {
    result = sub_1004DED5C();
    v47 = v9;
    if (result)
    {
LABEL_6:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = sub_1004DEB2C();
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v14 = *(v12 + 32);
      }

      v1 = v14;

      v15 = [v1 tab];
      if (!v15)
      {

        goto LABEL_21;
      }

      v2 = v15;
      result = sub_100151B8C(v15, v10, &qword_1006381A0, UITab_ptr);
      if (v16)
      {

        goto LABEL_21;
      }

      if (v10 >> 62)
      {
        goto LABEL_38;
      }

      v27 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27 >= result)
      {
        goto LABEL_18;
      }

LABEL_39:
      __break(1u);
      return result;
    }
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v9;
    if (result)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
LABEL_21:
    sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100511DA0;
    v28 = [v3 playActivityFeatureName];
    v29 = sub_1004DD43C();
    v31 = v30;

    *(v1 + 32) = v29;
    *(v1 + 40) = v31;
    v46 = v1;
    if (v10 >> 62)
    {
      v3 = sub_1004DED5C();
      if (!v3)
      {
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      v3 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_33;
      }
    }

    v44 = v7;
    v45 = v5;
    result = sub_1000374EC(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v42 = v7;
    v43 = result;
    v27 = sub_1004DED5C();
    result = v43;
    v7 = v42;
    if (v27 < result)
    {
      goto LABEL_39;
    }

LABEL_18:
    sub_1000602E8(result, v27);

    v10 = v48;
  }

  v32 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v33 = sub_1004DEB2C();
    }

    else
    {
      v33 = *(v10 + 8 * v32 + 32);
    }

    v34 = v33;
    v35 = [v33 playActivityFeatureName];
    v36 = sub_1004DD43C();
    v38 = v37;

    v40 = _swiftEmptyArrayStorage[2];
    v39 = _swiftEmptyArrayStorage[3];
    if (v40 >= v39 >> 1)
    {
      sub_1000374EC((v39 > 1), v40 + 1, 1);
    }

    ++v32;
    _swiftEmptyArrayStorage[2] = v40 + 1;
    v41 = &_swiftEmptyArrayStorage[2 * v40];
    v41[4] = v36;
    v41[5] = v38;
  }

  while (v3 != v32);

  v7 = v44;
  v5 = v45;
LABEL_34:
  sub_1000452E8(_swiftEmptyArrayStorage);

  return v46;
}

unint64_t sub_100154E74(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_100154F34(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t *NSUserDefaults.mobileiPod.unsafeMutableAddressor()
{
  if (qword_100633CC0 != -1)
  {
    swift_once();
  }

  return &static NSUserDefaults.mobileiPod;
}

Swift::Bool __swiftcall NSUserDefaults.BOOL(forKey:withDefault:)(Swift::String forKey, Swift::Bool withDefault)
{
  countAndFlagsBits = forKey._countAndFlagsBits;
  sub_100030C58();

  NSUserDefaults.subscript.getter(&v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return countAndFlagsBits;
    }
  }

  else
  {
    sub_10013EDFC(&v5);
  }

  return withDefault;
}

void sub_10015513C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1004DD3FC();
  v2 = [v0 initWithSuiteName:v1];

  static NSUserDefaults.mobileiPod = v2;
}

uint64_t static NSUserDefaults.mobileiPod.getter()
{
  if (qword_100633CC0 != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.mobileiPod;
  v1 = static NSUserDefaults.mobileiPod;
  return v0;
}

BOOL NSUserDefaults.MobileiPod.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D2A30;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  return v4 != 0;
}

Swift::Int sub_100155288()
{
  sub_1004DF26C();
  sub_1004DD55C();
  return sub_1004DF2BC();
}

Swift::Int sub_1001552FC()
{
  sub_1004DF26C();
  sub_1004DD55C();
  return sub_1004DF2BC();
}

void (*NSUserDefaults.hasUserRequestedSubscriptionHidden.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_100114BF0();
  *(v4 + 48) = sub_100030C58();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_10013EDFC(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return sub_100155460;
}

uint64_t sub_10015548C(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_100030C58();
  NSUserDefaults.subscript.getter(&v4);
  if (v5)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_10013EDFC(&v4);
    return 0;
  }

  return result;
}

unint64_t sub_100155524()
{
  result = qword_1006381A8;
  if (!qword_1006381A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006381A8);
  }

  return result;
}

uint64_t sub_100155598(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v9 = &type metadata for Bool;
  v8[0] = a1;
  v4 = a2(a1);
  v5 = sub_100030C58();
  return NSUserDefaults.subscript.setter(v8, v6, a3, v4, v5);
}

void (*NSUserDefaults.hasSeenDownloadPinsAlert.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_100155524();
  *(v4 + 48) = sub_100030C58();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_10013EDFC(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return sub_1001556E0;
}

void sub_1001556EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v8 = &type metadata for Bool;
  v7[0] = v4;
  NSUserDefaults.subscript.setter(v7, a2, a3, v5, v6);

  free(v3);
}

Swift::Int sub_10015574C()
{
  sub_1004DF26C();
  sub_1004DD55C();
  return sub_1004DF2BC();
}

Swift::Int sub_1001557C0()
{
  sub_1004DF26C();
  sub_1004DD55C();
  return sub_1004DF2BC();
}

uint64_t sub_100155820@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_1004DEE2C(a2, v8);

  *a3 = v6 != 0;
  return result;
}

id MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter()
{
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_100073E60(v10);
  return [v0 transitionStyleForUserWithCatalogPlaybackCapability:BYTE8(v10[0]) & 1];
}

unint64_t sub_100155988()
{
  result = qword_1006381B0;
  if (!qword_1006381B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006381B0);
  }

  return result;
}

unint64_t sub_100155A08()
{
  result = qword_1006381B8;
  if (!qword_1006381B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006381B8);
  }

  return result;
}

id static ICUserIdentity.active.getter()
{
  v0 = [swift_getObjCClassFromMetadata() activeAccount];

  return v0;
}

id static ICUserIdentityStore.activeAccountDSID.getter()
{
  v0 = [swift_getObjCClassFromMetadata() defaultIdentityStore];
  v1 = [objc_opt_self() activeAccount];
  v6 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v6];

  v3 = v6;
  if (!v2)
  {
    v4 = v3;
    sub_1004D7F4C();

    swift_willThrow();

    return 0;
  }

  return v2;
}

uint64_t static ICMusicKitRequestContext.music.getter()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4[4] = sub_100156C40;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10001E3C4;
  v4[3] = &unk_1005DF878;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

id static ICURLSessionManager.musicSession.getter()
{
  v0 = [objc_opt_self() highPrioritySession];

  return v0;
}

double ICURLBag.subscript.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([v2 valueForBagKey:a1])
  {
    sub_1004DE8DC();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t *ICClientInfo.music.unsafeMutableAddressor()
{
  if (qword_100633CC8 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.music;
}

void sub_100155D90(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = sub_1004DD3FC();
    v6 = sub_1004DD3FC();
    v7 = [objc_opt_self() clientInfoForMusicKitRequestWithClientIdentifier:v5 clientVersion:v6];

    [v3 setClientInfo:v7];
    v8 = objc_opt_self();
    v9 = v4;
    v10 = [v8 defaultIdentityStore];
    [v3 setIdentityStore:v10];

    v11 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v11];
  }
}

void static ICStoreRequestContext.default(withConfigurationBlock:)(uint64_t a1, uint64_t a2)
{
  v5[2] = a1;
  v5[3] = a2;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100156C5C;
  *(v3 + 24) = v5;
  aBlock[4] = sub_10001E39C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E3C4;
  aBlock[3] = &unk_1005DF8C8;
  v4 = _Block_copy(aBlock);

  [v2 initWithBlock:v4];
  _Block_release(v4);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void sub_100156080(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v8 = a1;
    v5 = [v4 defaultIdentityStore];
    [v3 setIdentityStore:v5];

    v6 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v6];

    [v3 setAllowsExpiredBags:1];
    v7 = [objc_allocWithZone(ICURLResponseAuthenticationProvider) initWithUserInteractionLevel:1];
    [v3 setAuthenticationProvider:v7];

    if (qword_100633CD0 != -1)
    {
      swift_once();
    }

    [v3 setClientInfo:static ICClientInfo.storeFlow];
  }
}

void sub_100156214(void *a1, void (*a2)(void *))
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v9 = a1;
    v7 = [v6 defaultIdentityStore];
    [v5 setIdentityStore:v7];

    v8 = [objc_opt_self() activeAccount];
    [v5 setIdentity:v8];

    a2(v5);
  }
}

id static ICStoreRequestContext.current.getter()
{
  v0 = [objc_opt_self() activeAccount];
  v1 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v0];

  return v1;
}

uint64_t static ICStoreRequestContext.storeFlow.getter()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v4[4] = sub_100156C3C;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10001E3C4;
  v4[3] = &unk_1005DF8F0;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t *ICClientInfo.storeFlow.unsafeMutableAddressor()
{
  if (qword_100633CD0 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.storeFlow;
}

id sub_1001564D8()
{
  result = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  static ICClientInfo.music = result;
  return result;
}

void *sub_100156534()
{
  result = sub_100156554();
  static ICClientInfo.storeFlow = result;
  return result;
}

void *sub_100156554()
{
  v0 = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  [v0 mutableCopy];

  sub_1004DE8DC();
  swift_unknownObjectRelease();
  sub_100156E14();
  swift_dynamicCast();
  v1 = sub_1004DD3FC();
  [v3 setBagProfileVersion:v1];

  return v3;
}

double ICURLBag.subscript.getter@<D0>(_OWORD *a3@<X8>)
{
  v5 = sub_1004DD3FC();
  v6 = [v3 valueForBagKey:v5];

  if (v6)
  {
    sub_1004DE8DC();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

_OWORD *ICURLBag.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = *(sub_1004DE7CC() - 8);
  __chkstk_darwin();
  v13 = &v40 - v12;
  v14 = a1[2];
  if (!v14)
  {
    sub_100156C74();
    swift_allocError();
    *v33 = 0u;
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0;
    *(v33 + 40) = 2;
    return swift_willThrow();
  }

  v46 = v11;
  v15 = a1[4];

  v16 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = a1;
  if (!isUniquelyReferenced_nonNull_native || (v14 - 1) > a1[3] >> 1)
  {
    a1 = sub_10003A6F4(isUniquelyReferenced_nonNull_native, v14, 1, a1);
    v52 = a1;
  }

  sub_1001543BC(0, 1, 0);
  if (![v6 valueForBagKey:v16])
  {

    sub_100156C74();
    swift_allocError();
    *v34 = v16;
    *(v34 + 40) = 0;
    return swift_willThrow();
  }

  v41 = v10;
  v42 = a3;
  v44 = v13;
  v45 = a2;
  v43 = v5;
  sub_1004DE8DC();
  swift_unknownObjectRelease();
  sub_100006F5C(v50, v51);
  sub_10000904C(v51, v50);
  v18 = a1[2];
  result = v16;
  v20 = result;
  v47 = result;
  if (v18)
  {
    v21 = 0;
    v22 = v47;
    while (v21 < a1[2])
    {
      v23 = a1[v21 + 4];
      sub_10000904C(v50, v49);
      v20 = v23;
      sub_100004CB8(&unk_100639F70, &unk_10051B270);
      if (!swift_dynamicCast())
      {

        sub_100156C74();
        swift_allocError();
        v38 = v37;
        *v37 = v20;
        sub_10000904C(v50, (v37 + 1));
        *(v38 + 40) = 1;
        goto LABEL_22;
      }

      v24 = v48;
      v25 = sub_1004DD43C();
      if (!*(v24 + 16))
      {

LABEL_21:

        sub_100156C74();
        swift_allocError();
        *v39 = v20;
        *(v39 + 40) = 0;
LABEL_22:
        swift_willThrow();

        goto LABEL_23;
      }

      v27 = sub_100056B84(v25, v26);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_21;
      }

      ++v21;
      sub_10000904C(*(v24 + 56) + 32 * v27, v49);

      sub_100008D24(v50);
      result = sub_100006F5C(v49, v50);
      v22 = v20;
      if (v18 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_10000904C(v50, v49);
    v31 = v44;
    v30 = v45;
    if (swift_dynamicCast())
    {

      sub_100008D24(v50);
      sub_100008D24(v51);
      v32 = *(v30 - 8);
      (*(v32 + 56))(v31, 0, 1, v30);
      return (*(v32 + 32))(v42, v31, v30);
    }

    else
    {
      (*(*(v30 - 8) + 56))(v31, 1, 1, v30);
      (*(v41 + 8))(v31, v46);
      sub_100156C74();
      swift_allocError();
      v36 = v35;
      *v35 = v20;
      sub_10000904C(v50, (v35 + 1));
      *(v36 + 40) = 1;
      swift_willThrow();

LABEL_23:
      sub_100008D24(v50);
      return sub_100008D24(v51);
    }
  }

  return result;
}

double sub_100156C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100156C74()
{
  result = qword_10063D0C0;
  if (!qword_10063D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063D0C0);
  }

  return result;
}

unint64_t sub_100156CCC()
{
  result = qword_1006381C0;
  if (!qword_1006381C0)
  {
    type metadata accessor for ICEnvironmentMonitorThermalPressureLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006381C0);
  }

  return result;
}

uint64_t sub_100156D24(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_100156D40(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100156D54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100156D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100156DDC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_100156E14()
{
  result = qword_1006381C8;
  if (!qword_1006381C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006381C8);
  }

  return result;
}

uint64_t Gliss.Direction.init(playerDirection:layoutDirection:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a1 - 1) <= 1)
  {
    v3 = a3 == 1;
  }

  else
  {
    v3 = 2;
  }

  if ((a1 + 2) < 2)
  {
    v3 = a3 != 1;
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

unint64_t MPCPlayerDirection.description.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x64726177726F66;
      goto LABEL_16;
    }

    if (a1 == 5)
    {
      v1 = 0xED0000797261646ELL;
      v2 = 0x756F426575657571;
      goto LABEL_16;
    }

    if (a1 != 2)
    {
LABEL_13:
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      goto LABEL_16;
    }

    v2 = 0x4A64726177726F66;
LABEL_11:
    v1 = 0xEB00000000706D75;
    goto LABEL_16;
  }

  if (a1 == -2)
  {
    v2 = 0x4A65737265766572;
    goto LABEL_11;
  }

  if (a1 == -1)
  {
    v1 = 0xE700000000000000;
    v2 = 0x65737265766572;
    goto LABEL_16;
  }

  if (a1)
  {
    goto LABEL_13;
  }

  v1 = 0xEA00000000007972;
  v2 = 0x616E6F6974617473;
LABEL_16:
  sub_1004DEAAC(21);

  v4._countAndFlagsBits = v2;
  v4._object = v1;
  sub_1004DD5FC(v4);

  return 0xD000000000000013;
}

uint64_t sub_100157030()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100671CE8);
  sub_100035430(v0, qword_100671CE8);
  return sub_1004D965C();
}

uint64_t sub_1001570B0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v34 = a2;
  v37 = a1;
  v38 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1004DE7CC();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin();
  v35 = &v32 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1004DE7CC();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - v14;
  __chkstk_darwin();
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v11 - 8);
  v19 = __chkstk_darwin();
  v21 = &v32 - v20;
  (*(v22 + 16))(v17, v37, a4, v19);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v25 = v38;
    v24(v15, 0, 1, v11);
    (*(v18 + 32))(v21, v15, v11);
    v26 = v35;
    (*(a5 + 32))(v21, v34, a3, a5);
    v27 = AssociatedTypeWitness;
    v28 = *(AssociatedTypeWitness - 8);
    if ((*(v28 + 48))(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v18 + 8))(v21, v11);
      result = (*(v32 + 8))(v26, v33);
      *v25 = 0u;
      v25[1] = 0u;
    }

    else
    {
      *(v25 + 3) = v27;
      v31 = sub_1000357EC(v25);
      (*(v28 + 32))(v31, v26, v27);
      return (*(v18 + 8))(v21, v11);
    }
  }

  else
  {
    v24(v15, 1, 1, v11);
    result = (*(v13 + 8))(v15, v12);
    v30 = v38;
    *v38 = 0u;
    v30[1] = 0u;
  }

  return result;
}

double sub_1001574D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v10 = v8;
    v11 = *(a3 + 40);

    v11(v10, a2, a3);
  }

  return result;
}

double sub_1001575CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v10 = v8;
    v11 = *(a3 + 48);

    v11(v10, a2, a3);
  }

  return result;
}

uint64_t sub_1001576C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1004DE7CC();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v27 - v11;
  __chkstk_darwin();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(AssociatedTypeWitness - 8);
  v16 = __chkstk_darwin();
  v18 = &v27 - v17;
  (*(v19 + 16))(v14, a1, a4, v16);
  v20 = swift_dynamicCast();
  v21 = *(v15 + 56);
  if (v20)
  {
    v21(v12, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v18, v12, AssociatedTypeWitness);
    if (v28)
    {
      v22 = v29;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
      v25 = swift_dynamicCastClass();
    }

    else
    {
      v25 = 0;
      v22 = v29;
    }

    (*(a5 + 56))(v18, v25, v22, a5);
    return (*(v15 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    v21(v12, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_1001579D4(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v8 = *i;
      v7 = v8;
      a1(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_100157A68(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v9 = *i;
      v8 = v9;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

id Gliss.Coordinator.__allocating_init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = sub_1001616EC(a1, a2, a3, a4);

  sub_10000DE74(*(a3 + 8), *(a3 + 16));
  sub_10000DE74(*(a3 + 24), *(a3 + 32));
  sub_10000DE74(*(a3 + 40), *(a3 + 48));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v11;
}

id Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1001616EC(a1, a2, a3, a4);

  sub_10000DE74(*(a3 + 8), *(a3 + 16));
  sub_10000DE74(*(a3 + 24), *(a3 + 32));
  sub_10000DE74(*(a3 + 40), *(a3 + 48));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_100157CE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1001576C8(a2, 0, ObjectType, AssociatedTypeWitness, v5);
}

uint64_t Gliss.Coordinator.dataSource.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*Gliss.Coordinator.dataSource.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = *((swift_isaMask & *v1) + 0x60);
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100157F40;
}

void sub_100157F40(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t Gliss.Coordinator.gestureConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 5);
  v10 = *(v3 + 6);
  v11 = v4;
  sub_10000DE64(v5, v6);
  sub_10000DE64(v7, v8);
  result = sub_10000DE64(v9, v10);
  *a1 = v11;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

uint64_t Gliss.Coordinator.gestureConfiguration.setter(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v20 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  v7 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v14 = *(v7 + 4);
  v15 = *(v7 + 3);
  v16 = *(v7 + 6);
  v17 = *(v7 + 5);
  v11 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v11;
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 6) = *(a1 + 48);
  v12 = v3;
  sub_10000DE64(v4, v5);
  sub_10000DE64(v6, v18);
  sub_10000DE64(v20, v19);

  sub_10000DE74(v9, v10);
  sub_10000DE74(v15, v14);
  sub_10000DE74(v17, v16);
  sub_10015DC6C();

  sub_10000DE74(v4, v5);
  sub_10000DE74(v6, v18);
  return sub_10000DE74(v20, v19);
}

void (*Gliss.Coordinator.gestureConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100158258;
}

void sub_100158258(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10015DC6C();
  }
}

double Gliss.Coordinator.GestureConfiguration.init(hostingView:simultaneousGestureRecognizerAllowance:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = 0.0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *a6 = a1;
  a6[1] = sub_100161ABC;
  a6[2] = result;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t sub_100158320(uint64_t a1, double (*a2)(uint64_t))
{
  sub_100004CB8(&qword_100638368, &qword_10051D000);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100511DA0;
  *(v4 + 32) = a2(a1);
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  return v4;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRects:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitTest:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = 0;
  a6[2] = 0;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.getter()
{
  v1 = *(v0 + 8);
  sub_10000DE64(v1, *(v0 + 16));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10000DE74(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.getter()
{
  v1 = *(v0 + 24);
  sub_10000DE64(v1, *(v0 + 32));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10000DE74(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.getter()
{
  v1 = *(v0 + 40);
  sub_10000DE64(v1, *(v0 + 48));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10000DE74(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Gliss.Coordinator.addCoordinatedView<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *((swift_isaMask & *v3) + 0x70);
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10003AB58(0, v7[2] + 1, 1, v7);
    *(v3 + v6) = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = sub_10003AB58((v10 > 1), v11 + 1, 1, v7);
  }

  v7[2] = v11 + 1;
  v12 = &v7[2 * v11];
  v12[4] = v8;
  v12[5] = a3;
  *(v3 + v6) = v7;
  return swift_endAccess();
}

void Gliss.Coordinator.removeCoordinatedView<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *((swift_isaMask & *v2) + 0x70);
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = 32;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      v8 = *(v4 + v7);
      sub_100006F10(0, &qword_1006381E0, NSObject_ptr);
      v9 = v8;
      v10 = sub_1004DE5FC();

      if (v10)
      {
        break;
      }

      ++v6;
      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    swift_beginAccess();
    v11 = sub_100055094(v6);
    swift_endAccess();
    if (!swift_dynamicCastUnknownClass())
    {
    }
  }

  else
  {
LABEL_6:
  }
}

uint64_t Gliss.Coordinator.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1004DE7CC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15[-v8];
  v10 = *(v1 + *((v4 & v3) + 0x88));
  if (v10)
  {
    v11 = *(*v10 + 128);
    swift_beginAccess();
    if (*(v10 + v11) != 6)
    {
      v12 = *(*v10 + 112);
      swift_beginAccess();
      (*(v7 + 16))(v9, v10 + v12, v6);
      v13 = *(AssociatedTypeWitness - 8);
      if ((*(v13 + 48))(v9, 1, AssociatedTypeWitness) != 1)
      {
        return (*(v13 + 32))(a1, v9, AssociatedTypeWitness);
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  return sub_1001589C0(a1);
}

uint64_t sub_1001589C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, &v1[v3], AssociatedTypeWitness);
}

uint64_t sub_100158AA4(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(&v1[v3], a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t sub_100158B90@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1004DE7CC();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_100158C80(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1004DE7CC();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void Gliss.Coordinator.setItem(_:animationDirection:animated:)(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = -64;
  }

  else
  {
    v3 = -2;
  }

  Gliss.Coordinator.setItem(_:animationDirection:animation:)(a1, a2, 0, 0, v3);

  sub_100161AC4(0, 0, v3);
}

double Gliss.Coordinator.setItem(_:animationDirection:animation:)(void *a1, unsigned int a2, void *a3, uint64_t a4, unsigned int a5)
{
  v112 = a5;
  v114 = a4;
  v117 = a3;
  v115 = a2;
  v7 = *((swift_isaMask & *v5) + 0x58);
  v8 = *((swift_isaMask & *v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v11;
  __chkstk_darwin();
  v14 = &v101 - v13;
  sub_1004DE7CC();
  v15 = __chkstk_darwin();
  v17 = &v101 - v16;
  v108 = *(v10 + 56);
  v109 = v10 + 56;
  v108(&v101 - v16, 1, 1, AssociatedTypeWitness, v15);
  v110 = v17;
  sub_100158C80(v17);
  v118 = v5;
  Gliss.Coordinator.item.getter(v14);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = sub_1004DD35C();
  v113 = v10;
  v20 = *(v10 + 8);
  v116 = v14;
  v20(v14, AssociatedTypeWitness);
  if ((v19 & 1) == 0)
  {
    v102 = AssociatedConformanceWitness;
    v106 = v8;
    if (qword_100633CD8 != -1)
    {
      swift_once();
    }

    v22 = sub_1004D966C();
    v23 = sub_100035430(v22, qword_100671CE8);
    v25 = v113 + 16;
    v24 = *(v113 + 16);
    v24(v12, a1, AssociatedTypeWitness);
    v119 = v23;
    v26 = sub_1004D964C();
    v27 = sub_1004DDF9C();
    v28 = os_log_type_enabled(v26, v27);
    v107 = v7;
    v105 = a1;
    v104 = v25;
    v103 = v24;
    if (v28)
    {
      v29 = AssociatedTypeWitness;
      v30 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v122[0] = v101;
      *v30 = 136446210;
      v24(v116, v12, v29);
      v31 = sub_1004DD4DC();
      v33 = v32;
      v20(v12, v29);
      v34 = sub_1000343A8(v31, v33, v122);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Attempting to set item=%{public}s", v30, 0xCu);
      sub_100008D24(v101);

      AssociatedTypeWitness = v29;
    }

    else
    {

      v20(v12, AssociatedTypeWitness);
    }

    v35 = v118;
    v36 = sub_1004D964C();
    v37 = sub_1004DDF9C();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v112;
    v40 = v114;
    if (v38)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v122[0] = v42;
      *v41 = 136446210;
      Gliss.Coordinator.item.getter(v116);
      v43 = sub_1004DD4DC();
      v45 = sub_1000343A8(v43, v44, v122);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "  Current Item=%{public}s", v41, 0xCu);
      sub_100008D24(v42);
    }

    v46 = sub_1004D964C();
    v47 = sub_1004DDF9C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v122[0] = v49;
      *v48 = 136446210;
      LOBYTE(v121[0]) = v115;
      sub_100004CB8(&qword_1006381D8, &qword_10051CE88);
      v50 = sub_1004DD4DC();
      v52 = sub_1000343A8(v50, v51, v122);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "  Direction=%{public}s", v48, 0xCu);
      sub_100008D24(v49);
    }

    v53 = v117;
    sub_100161AEC(v117, v40, v39);
    v54 = sub_1004D964C();
    v55 = sub_1004DDF9C();
    sub_100161AC4(v53, v40, v39);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v121[0] = v57;
      *v56 = 136446210;
      v122[0] = v53;
      v122[1] = v40;
      v123 = v39;
      sub_100161AEC(v53, v40, v39);
      sub_100004CB8(&qword_1006381D0, &qword_10051CE80);
      v58 = sub_1004DD4DC();
      v60 = sub_1000343A8(v58, v59, v121);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "  Animation=%{public}s", v56, 0xCu);
      sub_100008D24(v57);
    }

    v61 = v105;
    v62 = *(v35 + *((swift_isaMask & *v35) + 0x88));
    if (v62 && (v63 = *(*v62 + 128), swift_beginAccess(), *(v62 + v63)))
    {

      v64 = sub_1004D964C();
      v65 = sub_1004DDF9C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v122[0] = v118;
        *v66 = 136446210;
        v120 = v62;
        type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, v102, v67);
        swift_getWitnessTable();
        v68 = sub_1004DEFFC();
        v70 = sub_1000343A8(v68, v69, v122);

        *(v66 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v64, v65, "  Ongoing Transition=%{public}s", v66, 0xCu);
        sub_100008D24(v118);
      }

      v71 = v103;
      v72 = sub_1004D964C();
      v73 = sub_1004DDF9C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "  ⏳ Queueing item until ongoing transition completes", v74, 2u);
      }

      v75 = v110;
      v71(v110, v61, AssociatedTypeWitness);
      (v108)(v75, 0, 1, AssociatedTypeWitness);
      sub_100158C80(v75);
      v76 = v116;
      v71(v116, v61, AssociatedTypeWitness);
      v77 = v113;
      v78 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v79 = (v78 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v78 + v111 + 23) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      v82 = v107;
      *(v81 + 16) = v106;
      *(v81 + 24) = v82;
      (*(v77 + 32))(v81 + v78, v76, AssociatedTypeWitness);
      v83 = v81 + v79;
      *v83 = v35;
      *(v83 + 8) = v115;
      v84 = v81 + v80;
      v85 = v117;
      v86 = v114;
      *v84 = v117;
      *(v84 + 8) = v86;
      *(v84 + 16) = v39;
      v87 = v35;
      sub_100161AEC(v85, v86, v39);
      Gliss.Transition.addCompletion(_:)(sub_100161BE4, v81);
    }

    else
    {
      v88 = sub_10015A9FC(v61, v115);
      v89 = v117;
      if (v39 >= 0xFEu)
      {
        v90 = 0;
      }

      else
      {
        v90 = v117;
      }

      if (v39 >= 0xFEu)
      {
        v91 = 0;
      }

      else
      {
        v91 = v40;
      }

      if (v39 >= 0xFEu)
      {
        v92 = -64;
      }

      else
      {
        v92 = v39;
      }

      v93 = v88 + *(*v88 + 136);
      v94 = *v93;
      v95 = *(v93 + 1);
      *v93 = v90;
      *(v93 + 1) = v91;
      v96 = v93[16];
      v93[16] = v92;
      sub_100161AEC(v89, v40, v39);
      sub_100161AD8(v94, v95, v96);
      sub_10015B718(v88);
      v97 = v116;
      v103(v116, v61, AssociatedTypeWitness);
      sub_100158AA4(v97);
      v98 = *((swift_isaMask & *v35) + 0x70);
      swift_beginAccess();
      v99 = *(v35 + v98);
      __chkstk_darwin();
      v100 = v107;
      *(&v101 - 4) = v106;
      *(&v101 - 3) = v100;
      *(&v101 - 2) = v61;
      *(&v101 - 1) = v88;

      sub_1001579D4(sub_100162918, (&v101 - 6), v99);

      sub_10015C9C8(v88, v39 < 0xFEu);
    }
  }

  return result;
}

double sub_100159974(uint64_t *a1, uint64_t a2, char *a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v66 = a8;
  v67 = a5;
  v68 = a6;
  v69 = a7;
  v82 = a4;
  v64 = *a1;
  v9 = *(v64 + 80);
  v10 = sub_1004DE7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v12 = &v63 - v11;
  v83 = v10;
  v75 = *(v10 - 8);
  __chkstk_darwin();
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v63 - v14;
  __chkstk_darwin();
  v17 = &v63 - v16;
  __chkstk_darwin();
  v80 = &v63 - v18;
  v19 = *(v9 - 8);
  __chkstk_darwin();
  v74 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v63 - v21;
  if (qword_100633CD8 != -1)
  {
    swift_once();
  }

  v77 = v12;
  v23 = sub_1004D966C();
  v24 = sub_100035430(v23, qword_100671CE8);
  v25 = *(v19 + 16);
  v78 = a3;
  v25(v22, a3, v9);
  v73 = v24;
  v26 = sub_1004D964C();
  v27 = sub_1004DDF9C();
  v28 = os_log_type_enabled(v26, v27);
  v79 = v19;
  v71 = v15;
  v76 = v17;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v84[0] = v30;
    *v29 = 136446210;
    v25(v74, v22, v9);
    v31 = sub_1004DD4DC();
    v33 = v32;
    v70 = *(v79 + 8);
    v70(v22, v9);
    v34 = sub_1000343A8(v31, v33, v84);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "⌛️ Dequeuing item=%{public}s", v29, 0xCu);
    sub_100008D24(v30);
    v19 = v79;

    v17 = v76;
  }

  else
  {

    v70 = *(v19 + 8);
    v70(v22, v9);
  }

  v35 = v80;
  sub_100158B90(v80);
  v25(v17, v78, v9);
  (*(v19 + 56))(v17, 0, 1, v9);
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = *(v75 + 16);
  v38 = v19;
  v39 = v75;
  v40 = v77;
  v41 = v83;
  v37(v77, v35, v83);
  v37(&v40[v36], v17, v41);
  v42 = *(v38 + 48);
  if (v42(v40, 1, v9) == 1)
  {
    v43 = *(v39 + 8);
    v44 = v17;
    v45 = v83;
    v43(v44, v83);
    v43(v35, v45);
    if (v42(&v40[v36], 1, v9) == 1)
    {
      v43(v40, v83);
      return Gliss.Coordinator.setItem(_:animationDirection:animation:)(v78, v67, v68, v69, v66);
    }

    goto LABEL_11;
  }

  v46 = v71;
  v37(v71, v40, v83);
  if (v42(&v40[v36], 1, v9) == 1)
  {
    v47 = *(v39 + 8);
    v48 = v83;
    v47(v76, v83);
    v47(v80, v48);
    v70(v46, v9);
LABEL_11:
    (*(v72 + 8))(v40, TupleTypeMetadata2);
    goto LABEL_12;
  }

  v58 = v74;
  (*(v79 + 32))(v74, &v40[v36], v9);
  v59 = sub_1004DD35C();
  v60 = v70;
  v70(v58, v9);
  v61 = *(v39 + 8);
  v62 = v83;
  v61(v76, v83);
  v61(v80, v62);
  v60(v46, v9);
  v61(v40, v62);
  if (v59)
  {
    return Gliss.Coordinator.setItem(_:animationDirection:animation:)(v78, v67, v68, v69, v66);
  }

LABEL_12:
  v49 = v82;
  v50 = sub_1004D964C();
  v51 = sub_1004DDF9C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v84[0] = v53;
    *v52 = 136446210;
    sub_100158B90(v65);
    v54 = sub_1004DD4DC();
    v56 = sub_1000343A8(v54, v55, v84);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "  ⌛️❌ Item no longer matches queued item=%{public}s", v52, 0xCu);
    sub_100008D24(v53);
  }

  return result;
}

void sub_10015A174(SEL *a1)
{
  v3 = *((swift_isaMask & *v1) + 0x70);
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 32);
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *v7;
      v7 += 2;
      [v8 *a1];
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

double sub_10015A230(uint64_t a1)
{
  v2 = sub_1004D82AC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100004CB8(&qword_100638350, &qword_10051CFE8);
  __chkstk_darwin();
  v8 = &v30[-v7];
  sub_100004CB8(&qword_100638358, &unk_10051CFF0);
  __chkstk_darwin();
  v35 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v30[-v10];
  v13 = __chkstk_darwin();
  v14 = &v30[-v12];
  if (a1)
  {
    v32 = v5;
    v15 = v3;
    v16 = *(v3 + 16);
    v34 = a1;
    v16(&v30[-v12], a1 + direct field offset for Gliss.Transition.id, v2, v13);
    v33 = v15;
    v17 = *(v15 + 56);
    v18 = 1;
    v17(v14, 0, 1, v2);
    v19 = *(v36 + *((swift_isaMask & *v36) + 0x88));
    if (v19)
    {
      (v16)(v11, v19 + direct field offset for Gliss.Transition.id, v2);
      v18 = 0;
    }

    v17(v11, v18, 1, v2);
    v20 = *(v6 + 48);
    sub_100162514(v14, v8);
    sub_100162514(v11, &v8[v20]);
    v21 = v33;
    v22 = *(v33 + 48);
    if (v22(v8, 1, v2) == 1)
    {
      v23 = v34;

      sub_10001074C(v11, &qword_100638358, &unk_10051CFF0);
      sub_10001074C(v14, &qword_100638358, &unk_10051CFF0);
      v24 = v23;
      if (v22(&v8[v20], 1, v2) == 1)
      {
        sub_10001074C(v8, &qword_100638358, &unk_10051CFF0);
LABEL_13:

        return v13.n128_f64[0];
      }
    }

    else
    {
      v25 = v35;
      sub_100162514(v8, v35);
      if (v22(&v8[v20], 1, v2) != 1)
      {
        v27 = v32;
        (*(v21 + 32))(v32, &v8[v20], v2);
        sub_100162584();
        v24 = v34;

        v31 = sub_1004DD35C();
        v28 = *(v21 + 8);
        v28(v27, v2);
        sub_10001074C(v11, &qword_100638358, &unk_10051CFF0);
        sub_10001074C(v14, &qword_100638358, &unk_10051CFF0);
        v28(v35, v2);
        sub_10001074C(v8, &qword_100638358, &unk_10051CFF0);
        if (v31)
        {
          goto LABEL_13;
        }

LABEL_10:
        v26 = *(*v24 + 16);
        swift_beginAccess();
        if (*(v24 + v26) <= 2u)
        {
          sub_10015BA20(v24, 0);
        }

        goto LABEL_13;
      }

      v24 = v34;

      sub_10001074C(v11, &qword_100638358, &unk_10051CFF0);
      sub_10001074C(v14, &qword_100638358, &unk_10051CFF0);
      (*(v21 + 8))(v25, v2);
    }

    sub_10001074C(v8, &qword_100638350, &qword_10051CFE8);
    goto LABEL_10;
  }

  return v13.n128_f64[0];
}

double sub_10015A734(uint64_t a1)
{
  sub_100161D0C(a1);

  return result;
}

id sub_10015A76C()
{
  v1 = *((swift_isaMask & *v0) + 0x98);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_10000DE74(v9[1], v9[2]);
    sub_10000DE74(v9[3], v9[4]);
    sub_10000DE74(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:1 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_10015A848()
{
  v1 = *((swift_isaMask & *v0) + 0xA0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_10000DE74(v9[1], v9[2]);
    sub_10000DE74(v9[3], v9[4]);
    sub_10000DE74(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:3 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_10015A924()
{
  v1 = *((swift_isaMask & *v0) + 0xA8);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_10000DE74(v9[1], v9[2]);
    sub_10000DE74(v9[3], v9[4]);
    sub_10000DE74(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorForView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_10015A9FC(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v95 = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v2) + 0x58);
  v93 = *((swift_isaMask & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = sub_1004DE7CC();
  v88 = *(v92 - 8);
  __chkstk_darwin();
  v85 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v79 - v10;
  __chkstk_darwin();
  v12 = &v79 - v11;
  __chkstk_darwin();
  v14 = &v79 - v13;
  v94 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v91 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v79 - v16;
  __chkstk_darwin();
  v90 = &v79 - v17;
  __chkstk_darwin();
  v89 = &v79 - v18;
  __chkstk_darwin();
  v20 = &v79 - v19;
  v21 = *(v3 + *((v6 & v5) + 0x88));
  v86 = a2;
  if (v21)
  {
    v22 = *(*v21 + 128);
    swift_beginAccess();
    if (*(v21 + v22) <= 2u)
    {
      v80 = v7;
      v23 = *(*v21 + 112);
      swift_beginAccess();
      v24 = v88;
      v25 = *(v88 + 16);
      v83 = v23;
      v82 = v25;
      v25(v14, v21 + v23, v92);
      v26 = v94;
      v81 = *(v94 + 48);
      if (v81(v14, 1, AssociatedTypeWitness) == 1)
      {
        v27 = *(v24 + 8);

        v27(v14, v92);
      }

      else
      {
        (*(v26 + 32))(v20, v14, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();

        v28 = sub_1004DD35C();
        (*(v26 + 8))(v20, AssociatedTypeWitness);
        if (v28)
        {
          return v21;
        }
      }

      v82(v12, v21 + v83, v92);
      if (v81(v12, 1, AssociatedTypeWitness) == 1)
      {
        (*(v88 + 8))(v12, v92);
        v29 = *(*v21 + 104);
        swift_beginAccess();
        v30 = v94;
        v31 = v89;
        (*(v94 + 16))(v89, v21 + v29, AssociatedTypeWitness);
        v7 = v80;
        swift_getAssociatedConformanceWitness();
        LOBYTE(v29) = sub_1004DD35C();
        (*(v30 + 8))(v31, AssociatedTypeWitness);
        if (v29)
        {
          return v21;
        }
      }

      else
      {

        (*(v88 + 8))(v12, v92);
        v7 = v80;
      }
    }
  }

  v81 = v3;
  if (qword_100633CD8 != -1)
  {
    swift_once();
  }

  v32 = sub_1004D966C();
  v33 = sub_100035430(v32, qword_100671CE8);
  v34 = v94;
  v35 = *(v94 + 16);
  v36 = v90;
  v35(v90, v95, AssociatedTypeWitness);
  v83 = v33;
  v37 = sub_1004D964C();
  v38 = sub_1004DDF9C();
  v39 = os_log_type_enabled(v37, v38);
  v82 = v35;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v80 = v7;
    v41 = v40;
    v42 = swift_slowAlloc();
    v98 = v42;
    *v41 = 136446210;
    v35(v89, v36, AssociatedTypeWitness);
    v43 = sub_1004DD4DC();
    v45 = v44;
    v90 = *(v94 + 8);
    (v90)(v36, AssociatedTypeWitness);
    v46 = sub_1000343A8(v43, v45, &v98);
    v47 = v80;

    *(v41 + 4) = v46;
    v34 = v94;
    _os_log_impl(&_mh_execute_header, v37, v38, "Creating transition for item=%{public}s", v41, 0xCu);
    sub_100008D24(v42);
  }

  else
  {
    v47 = v7;

    v90 = *(v34 + 8);
    (v90)(v36, AssociatedTypeWitness);
  }

  v48 = v87;
  v49 = v88;
  v50 = v81;
  v51 = *(v81 + *((swift_isaMask & *v81) + 0x88));
  if (!v51)
  {
    v54 = v84;
    (*(v34 + 56))(v84, 1, 1, AssociatedTypeWitness);
    v55 = v47;
    goto LABEL_19;
  }

  v52 = *(*v51 + 112);
  swift_beginAccess();
  v53 = v51 + v52;
  v54 = v84;
  (*(v49 + 16))(v84, v53, v92);
  v55 = v47;
  if ((*(v34 + 48))(v54, 1, AssociatedTypeWitness) == 1)
  {
LABEL_19:
    Gliss.Coordinator.item.getter(v48);
    v57 = (*(v34 + 48))(v54, 1, AssociatedTypeWitness);
    v56 = v82;
    if (v57 != 1)
    {
      (*(v49 + 8))(v54, v92);
    }

    v56(v91, v48, AssociatedTypeWitness);
    goto LABEL_22;
  }

  (*(v34 + 32))(v48, v54, AssociatedTypeWitness);
  v56 = v82;
  v82(v91, v48, AssociatedTypeWitness);
LABEL_22:
  v58 = v89;
  Gliss.Coordinator.item.getter(v89);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = sub_1004DD35C();
  v94 = v34 + 8;
  (v90)(v58, AssociatedTypeWitness);
  if (v60)
  {
    v61 = 1;
    v62 = v85;
  }

  else
  {
    v62 = v85;
    v56(v85, v95, AssociatedTypeWitness);
    v61 = 0;
  }

  (*(v34 + 56))(v62, v61, 1, AssociatedTypeWitness);
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v63);
  v64 = v62;
  v65 = *((swift_isaMask & *v50) + 0x70);
  swift_beginAccess();
  v66 = *(v50 + v65);
  __chkstk_darwin();
  *(&v79 - 4) = v93;
  *(&v79 - 3) = v55;
  *(&v79 - 2) = v95;
  v67 = v86;
  *(&v79 - 8) = v86;

  v68 = sub_100157A68(_swiftEmptyDictionarySingleton, sub_100162894, (&v79 - 6), v66);

  v21 = sub_100162988(v91, v64, v67, v68, 0.0);

  v69 = sub_1004D964C();
  v70 = sub_1004DDF9C();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = v48;
    v73 = swift_slowAlloc();
    v96 = v21;
    v97 = v73;
    *v71 = 136446210;
    swift_getWitnessTable();
    v74 = sub_1004DEFFC();
    v76 = sub_1000343A8(v74, v75, &v97);

    *(v71 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v69, v70, "   Created Transition=%{public}s", v71, 0xCu);
    sub_100008D24(v73);

    v77 = v72;
  }

  else
  {

    v77 = v48;
  }

  (v90)(v77, AssociatedTypeWitness);
  return v21;
}

void sub_10015B630(uint64_t a1, void **a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v9 = a2[1];
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = v8;
  sub_1001570B0(a3, a4, ObjectType, AssociatedTypeWitness, v9, v13);
  sub_1001E2448(v13, v12);
}

void sub_10015B718(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  if (qword_100633CD8 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v5 = sub_1004D966C();
    sub_100035430(v5, qword_100671CE8);

    v6 = sub_1004D964C();
    v7 = sub_1004DDF9C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25[0] = v9;
      *v8 = 136446210;
      type metadata accessor for Gliss.Transition(0, *(v4 + 80), *(v4 + 88), v10);
      swift_getWitnessTable();
      v11 = sub_1004DEFFC();
      v13 = sub_1000343A8(v11, v12, v25);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Begin or Enqueue Transition=%{public}s", v8, 0xCu);
      sub_100008D24(v9);
    }

    sub_1001636A0(2);

    sub_100161D0C(v14);

    v15 = *((swift_isaMask & *v2) + 0x70);
    swift_beginAccess();
    v16 = *(v2 + v15);
    v4 = *(v16 + 16);

    if (!v4)
    {
      break;
    }

    v17 = 0;
    v18 = (v16 + 40);
    while (v17 < *(v16 + 16))
    {
      ++v17;
      v19 = *v18;
      v20 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      sub_1001574D0(a1, ObjectType, v19);

      v18 += 2;
      if (v4 == v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_8:

  sub_10015A168();
  v22 = sub_1004D964C();
  v23 = sub_1004DDF9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "   Transition Started!", v24, 2u);
  }
}

void sub_10015BA20(void **a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  if (qword_100633CD8 != -1)
  {
    swift_once();
  }

  v7 = sub_1004D966C();
  sub_100035430(v7, qword_100671CE8);

  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v10 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition(0, v6[10], v6[11], v11);
    swift_getWitnessTable();
    v12 = sub_1004DEFFC();
    v14 = sub_1000343A8(v12, v13, v58);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (a2)
    {
      v15 = 0x6574616D696E6128;
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v16 = 0xEA00000000002964;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_1000343A8(v15, v16, v58);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to cancel transition=%{public}s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*a1 + 16);
  swift_beginAccess();
  if (*(a1 + v18) == 2)
  {
    sub_1001636A0(4);
    sub_10015A15C();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2 & 1;
    *(v19 + 32) = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v3;
    if (a2)
    {
      v21 = direct field offset for Gliss.Transition.id;
      v22 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v23 = *(v3 + v22);
      v24 = *(v23 + 16);
      swift_retain_n();
      v25 = v3;
      if (v24)
      {

        v26 = sub_100056C8C(a1 + v21);
        if (v27)
        {
          v28 = *(*(v23 + 56) + 8 * v26);

          [v28 stopAnimation:0];
        }

        else
        {
        }
      }

      v33 = a1 + *(*a1 + 17);
      v50 = v21;
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = v33[16];
      Gliss.Coordinator.gestureConfiguration.getter(v58);
      v49 = v25;
      v38 = v58[0];
      v37 = v58[1];
      v39 = v58[2];
      sub_100161B00(v34, v35, v36);
      sub_10000DE74(v37, v39);
      sub_10000DE74(v58[3], v58[4]);
      sub_10000DE74(v58[5], v58[6]);
      v40 = sub_100162A00(a1, v38, v34, v35, v36);

      sub_100161AD8(v34, v35, v36);
      v41 = swift_allocObject();
      *(v41 + 16) = sub_100162680;
      *(v41 + 24) = v19;
      v56 = sub_100051F90;
      v57 = v41;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_100012680;
      v55 = &unk_1005DFC40;
      v42 = _Block_copy(&aBlock);

      [v40 addAnimations:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      v43[2] = sub_1001626C0;
      v43[3] = v20;
      v43[4] = v49;
      v43[5] = a1;
      v56 = sub_1001628E4;
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10015C974;
      v55 = &unk_1005DFC90;
      v44 = _Block_copy(&aBlock);

      v45 = v49;

      [v40 addCompletion:v44];
      _Block_release(v44);
      [v40 startAnimation];
      v46 = *((swift_isaMask & *v45) + 0x90);
      swift_beginAccess();
      v47 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v45 + v46);
      *(v45 + v46) = 0x8000000000000000;
      sub_10005A828(v47, a1 + v50, isUniquelyReferenced_nonNull_native);
      *(v45 + v46) = v51;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v32 = v3;
      sub_10015D0C4(a1, 0, v32, sub_100162948, 0.0);
      sub_10015C11C(a1, v32);
    }
  }

  else
  {
    v29 = sub_1004D964C();
    v30 = sub_1004DDF9C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "   🫷Ignored (Transition Not Active)", v31, 2u);
    }
  }
}

uint64_t sub_10015C11C(char *a1, void *a2)
{
  v58 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v60 = a2;
  v57 = v4;
  v5 = sub_1004D82AC();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin();
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_100638350, &qword_10051CFE8);
  __chkstk_darwin();
  v59 = &v52 - v9;
  sub_100004CB8(&qword_100638358, &unk_10051CFF0);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  __chkstk_darwin();
  v15 = (&v52 - v14);
  sub_1001636A0(6);
  if (qword_100633CD8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = sub_1004D966C();
    sub_100035430(v16, qword_100671CE8);

    v17 = sub_1004D964C();
    v18 = sub_1004DDF9C();

    v19 = os_log_type_enabled(v17, v18);
    v53 = v11;
    v54 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62[0] = v21;
      *v20 = 136446210;
      v61[0] = a1;
      type metadata accessor for Gliss.Transition(0, *(v58 + 80), *(v58 + 88), v22);
      swift_getWitnessTable();
      v23 = sub_1004DEFFC();
      v25 = sub_1000343A8(v23, v24, v62);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "❎ Cancelled transition=%{public}s", v20, 0xCu);
      sub_100008D24(v21);

      v3 = &swift_isaMask;
    }

    v26 = *(v60 + *((*v3 & *v60) + 0x88));
    v28 = v55;
    v27 = v56;
    if (v26)
    {
      v29 = *(v56 + 2);
      v29(v15, v26 + direct field offset for Gliss.Transition.id, v55);
      v30 = *(v27 + 56);
      v30(v15, 0, 1, v28);
    }

    else
    {
      v30 = *(v56 + 7);
      v30(v15, 1, 1, v55);
      v29 = *(v27 + 16);
    }

    v29(v13, &a1[direct field offset for Gliss.Transition.id], v28);
    v30(v13, 0, 1, v28);
    v31 = v54[12];
    v32 = v59;
    sub_100162514(v15, v59);
    sub_100162514(v13, v32 + v31);
    v33 = *(v27 + 48);
    if (v33(v32, 1, v28) == 1)
    {
      sub_10001074C(v13, &qword_100638358, &unk_10051CFF0);
      v34 = v59;
      sub_10001074C(v15, &qword_100638358, &unk_10051CFF0);
      v8 = &swift_isaMask;
      if (v33(v34 + v31, 1, v28) != 1)
      {
        goto LABEL_12;
      }

      sub_10001074C(v34, &qword_100638358, &unk_10051CFF0);
      v35 = v57;
LABEL_14:
      sub_100161D0C(0);
      goto LABEL_15;
    }

    v56 = v13;
    v36 = v53;
    sub_100162514(v32, v53);
    if (v33(v32 + v31, 1, v28) == 1)
    {
      v37 = v27;
      sub_10001074C(v56, &qword_100638358, &unk_10051CFF0);
      v34 = v59;
      sub_10001074C(v15, &qword_100638358, &unk_10051CFF0);
      (*(v37 + 8))(v36, v28);
      v8 = &swift_isaMask;
LABEL_12:
      sub_10001074C(v34, &qword_100638350, &qword_10051CFE8);
      v35 = v57;
      goto LABEL_15;
    }

    v38 = v32 + v31;
    v39 = v32;
    v40 = v52;
    (*(v27 + 32))(v52, v38, v28);
    sub_100162584();
    v41 = v27;
    v42 = sub_1004DD35C();
    v43 = *(v41 + 8);
    v43(v40, v28);
    sub_10001074C(v56, &qword_100638358, &unk_10051CFF0);
    sub_10001074C(v15, &qword_100638358, &unk_10051CFF0);
    v43(v36, v28);
    sub_10001074C(v39, &qword_100638358, &unk_10051CFF0);
    v8 = &swift_isaMask;
    v35 = v57;
    if (v42)
    {
      goto LABEL_14;
    }

LABEL_15:
    v44 = *(*a1 + 152);
    swift_beginAccess();
    v62[0] = *&a1[v44];
    __chkstk_darwin();
    *(&v52 - 2) = *(v35 + 80);
    *(&v52 - 2) = a1;
    type metadata accessor for Gliss.Transition(255, *(v58 + 80), *(v58 + 88), v45);
    swift_getFunctionTypeMetadata2();
    v3 = sub_1004DD98C();

    swift_getWitnessTable();
    sub_1004DD7DC();

    v46 = v60;
    v47 = *((swift_isaMask & *v60) + 0x70);
    swift_beginAccess();
    v48 = *(v46 + v47);
    v11 = *(v48 + 16);

    if (!v11)
    {
    }

    v13 = 0;
    v15 = (v48 + 40);
    while (v13 < *(v48 + 16))
    {
      ++v13;
      v49 = *v15;
      v3 = *(v15 - 1);
      ObjectType = swift_getObjectType();
      sub_1001575CC(a1, ObjectType, v49);

      v15 += 2;
      if (v11 == v13)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

double sub_10015C974(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_10015C9C8(void **a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  if (qword_100633CD8 != -1)
  {
    swift_once();
  }

  v7 = sub_1004D966C();
  sub_100035430(v7, qword_100671CE8);

  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v10 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition(0, v6[10], v6[11], v11);
    swift_getWitnessTable();
    v12 = sub_1004DEFFC();
    v14 = sub_1000343A8(v12, v13, v58);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (a2)
    {
      v15 = 0x6574616D696E6128;
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v16 = 0xEA00000000002964;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_1000343A8(v15, v16, v58);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to end transition=%{public}s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*a1 + 16);
  swift_beginAccess();
  if (*(a1 + v18) == 2)
  {
    sub_1001636A0(3);
    sub_10015A15C();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2 & 1;
    *(v19 + 32) = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v3;
    if (a2)
    {
      v21 = direct field offset for Gliss.Transition.id;
      v22 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v23 = *(v3 + v22);
      v24 = *(v23 + 16);
      swift_retain_n();
      v25 = v3;
      if (v24)
      {

        v26 = sub_100056C8C(a1 + v21);
        if (v27)
        {
          v28 = *(*(v23 + 56) + 8 * v26);

          [v28 stopAnimation:0];
        }

        else
        {
        }
      }

      v33 = a1 + *(*a1 + 17);
      v50 = v21;
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = v33[16];
      Gliss.Coordinator.gestureConfiguration.getter(v58);
      v49 = v25;
      v38 = v58[0];
      v37 = v58[1];
      v39 = v58[2];
      sub_100161B00(v34, v35, v36);
      sub_10000DE74(v37, v39);
      sub_10000DE74(v58[3], v58[4]);
      sub_10000DE74(v58[5], v58[6]);
      v40 = sub_100162A00(a1, v38, v34, v35, v36);

      sub_100161AD8(v34, v35, v36);
      v41 = swift_allocObject();
      *(v41 + 16) = sub_100162724;
      *(v41 + 24) = v19;
      v56 = sub_10001185C;
      v57 = v41;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_100012680;
      v55 = &unk_1005DFD30;
      v42 = _Block_copy(&aBlock);

      [v40 addAnimations:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      v43[2] = sub_100162760;
      v43[3] = v20;
      v43[4] = v49;
      v43[5] = a1;
      v56 = sub_1001627B0;
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10015C974;
      v55 = &unk_1005DFD80;
      v44 = _Block_copy(&aBlock);

      v45 = v49;

      [v40 addCompletion:v44];
      _Block_release(v44);
      [v40 startAnimation];
      v46 = *((swift_isaMask & *v45) + 0x90);
      swift_beginAccess();
      v47 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v45 + v46);
      *(v45 + v46) = 0x8000000000000000;
      sub_10005A828(v47, a1 + v50, isUniquelyReferenced_nonNull_native);
      *(v45 + v46) = v51;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v32 = v3;
      sub_10015D0C4(a1, 0, v32, sub_100162838, 1.0);
      sub_10015D2A0(a1, v32);
    }
  }

  else
  {
    v29 = sub_1004D964C();
    v30 = sub_1004DDF9C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "   🫷Ignored (Transition Not Active)", v31, 2u);
    }
  }
}