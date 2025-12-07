uint64_t MetricsEvent.Dialog.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.messageCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t LibraryModelRequest.scopedContainers.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t PlaylistCovers.Cover.accessibilityLabel.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t MetricsEvent.Dialog.subjectID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.targetID.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t MetricsEvent.Dialog.targetID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.Type.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C65636E61436B4FLL;
  }

  else
  {
    return 27471;
  }
}

uint64_t sub_1000D55A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C65636E61436B4FLL;
  }

  else
  {
    v3 = 27471;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C65636E61436B4FLL;
  }

  else
  {
    v5 = 27471;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_1000D5640()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1000D56B8(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_1000D571C()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

void sub_1000D579C(uint64_t *a1@<X8>)
{
  v2 = 27471;
  if (*v1)
  {
    v2 = 0x6C65636E61436B4FLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000D57DC(uint64_t a1, void *a2, Swift::OpaquePointer a3)
{
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v5 = sub_1004BD764(a3, v8);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t MetricsEvent.Dialog.ActionType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C436C65636E6163;
  }

  else
  {
    return 27503;
  }
}

uint64_t sub_1000D5864(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C436C65636E6163;
  }

  else
  {
    v3 = 27503;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xED000064656B6369;
  }

  if (*a2)
  {
    v5 = 0x6C436C65636E6163;
  }

  else
  {
    v5 = 27503;
  }

  if (*a2)
  {
    v6 = 0xED000064656B6369;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_1000D590C()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1000D5990(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_1000D5A00()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1000D5A8C@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_1004BD764(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_1000D5AE8(uint64_t *a1@<X8>)
{
  v2 = 27503;
  if (*v1)
  {
    v2 = 0x6C436C65636E6163;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xED000064656B6369;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MetricsEvent.ComponentRender.PreloadStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1819047270;
  v2 = 0x6C6F686563616C70;
  if (a1 != 2)
  {
    v2 = 0x73756F6976657270;
  }

  if (a1)
  {
    v1 = 0x6C616974726170;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1000D5BC0()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1000D5C90(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_1000D5D4C()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t sub_1000D5E18@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsEvent::ComponentRender::PreloadStatus_optional *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV15ComponentRenderV13PreloadStatusO8rawValueAGSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1000D5E48(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1819047270;
  v4 = 0xEB00000000726564;
  v5 = 0x6C6F686563616C70;
  if (*v1 != 2)
  {
    v5 = 0x73756F6976657270;
    v4 = 0xEF6E776F6853796CLL;
  }

  if (*v1)
  {
    v3 = 0x6C616974726170;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void *Library.Menu.Request.mediaPickerConfiguration.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *MetricsEvent.ComponentRender.componentMotionActivationTime.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *MetricsEvent.ComponentRender.componentEndTime.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_1000D6094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_allocWithZone(type metadata accessor for MetricsReportingController(a1 a2];
  static MetricsReportingController.shared = result;
  return result;
}

unint64_t sub_1000D60C4()
{
  result = qword_100602E98;
  if (!qword_100602E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602E98);
  }

  return result;
}

id static MetricsReportingController.shared.getter()
{
  if (qword_1005FFE00 != -1)
  {
    swift_once();
  }

  v1 = static MetricsReportingController.shared;

  return v1;
}

void MetricsReportingController.recordPerformanceMetrics(for:)(void *a1)
{
  if (a1)
  {
    v1 = [a1 performanceMetrics];
    if (v1)
    {
      v2 = v1;
      sub_1000DD678(v2, &v3);
      MetricsReportingController.recordLoadUrlEvent(_:)(&v3);
      sub_1000DDAC8(&v3);
    }
  }
}

void MetricsReportingController.recordPageEvent(_:pageContext:sharedListeningContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v73 = a4;
  v70 = a5;
  v71 = a6;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v9 = &v70 - v8;
  v10 = sub_1004BA994();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  *v13 = sub_1004BCB44();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_1004BA9C4();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = [objc_allocWithZone(SSMetricsPageEvent) init];
    v16 = v15;
    if (a3)
    {
      v17 = sub_1004BBE24();
    }

    else
    {
      v17 = 0;
    }

    [v15 setPageContext:{v17, v70, v71}];

    v19 = *a1;
    v18 = a1[1];
    v20 = sub_1004BBE24();
    v21 = sub_1004BBE24();
    [v15 setProperty:v20 forBodyKey:v21];

    v23 = a1[2];
    v22 = a1[3];
    v24 = sub_1004BBE24();
    [v15 setPageType:v24];

    v72 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v25 = *&v74[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v25 || (sub_100003ABC(&qword_100602EB0, &qword_1004CCAE8), v26 = swift_allocObject(), *(v26 + 16) = xmmword_1004C50C0, *(v26 + 32) = v23, *(v26 + 40) = v22, *(v26 + 88) = &type metadata for String, *(v26 + 56) = &type metadata for String, *(v26 + 64) = v19, *(v26 + 72) = v18, , , v27 = v25, isa = sub_1004BC284().super.isa, , v29 = [v27 compoundStringWithElements:isa], v27, isa, !v29))
    {
      v29 = 0;
    }

    [v15 setPageDescription:v29];

    v30 = type metadata accessor for MetricsEvent.Page(0);
    sub_10000F778(a1 + v30[6], v9, &qword_100600DE0, &unk_1004C66D0);
    v31 = sub_1004B6B04();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v9, 1, v31) == 1)
    {
      sub_100007214(v9, &qword_100600DE0, &unk_1004C66D0);
      v33 = 0;
    }

    else
    {
      sub_1004B6A04();
      (*(v32 + 8))(v9, v31);
      v33 = sub_1004BBE24();
    }

    [v15 setPageURL:v33];

    v34 = *(a1 + v30[7]);
    if (v34)
    {
      v35.super.isa = sub_1004BBC24().super.isa;
    }

    else
    {
      v35.super.isa = 0;
    }

    v36 = sub_1004BBE24();
    [v15 setProperty:v35.super.isa forBodyKey:v36];

    swift_unknownObjectRelease();
    v37 = (a1 + v30[8]);
    v38 = v37[1];
    v39 = &off_1005F2000;
    if (v38)
    {
      v40 = *v37;
      sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
      inited = swift_initStackObject();
      *(inited + 32) = 0x6554686372616573;
      *(inited + 16) = xmmword_1004C50A0;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEA00000000006D72;
      *(inited + 48) = v40;
      *(inited + 56) = v38;

      sub_10003C58C(inited);
      swift_setDeallocating();
      v39 = &off_1005F2000;
      sub_100007214(inited + 32, &qword_100601C08, &qword_1004C95C0);
      v42 = sub_1004BBC24().super.isa;

      [v15 addPropertiesWithDictionary:v42];
    }

    if ((*(a1 + v30[9]) & 1) == 0)
    {
      sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_1004C50A0;
      *(v43 + 32) = 0x7073694465676170;
      v44 = v43 + 32;
      *(v43 + 72) = &type metadata for String;
      *(v43 + 40) = 0xEF6570795479616CLL;
      *(v43 + 48) = 0x7765695664726163;
      *(v43 + 56) = 0xE800000000000000;
      sub_10003C58C(v43);
      swift_setDeallocating();
      sub_100007214(v44, &qword_100601C08, &qword_1004C95C0);
      v45 = sub_1004BBC24().super.isa;
      v39 = &off_1005F2000;

      [v15 addPropertiesWithDictionary:v45];
    }

    v46 = *(a1 + v30[11]);
    if (v46 != 2)
    {
      sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_1004C50A0;
      *(v47 + 32) = 0xD000000000000014;
      v48 = v47 + 32;
      *(v47 + 40) = 0x80000001004FE1E0;
      *(v47 + 72) = &type metadata for Bool;
      *(v47 + 48) = v46 & 1;
      sub_10003C58C(v47);
      swift_setDeallocating();
      sub_100007214(v48, &qword_100601C08, &qword_1004C95C0);
      v49 = sub_1004BBC24().super.isa;
      v39 = &off_1005F2000;

      [v15 addPropertiesWithDictionary:v49];
    }

    if (v34)
    {
      if (*(v34 + 16))
      {
        v50 = sub_1000346D4(0x4974655361746164, 0xE900000000000064);
        if (v51)
        {
          v52 = (*(v34 + 56) + 16 * v50);
          v54 = *v52;
          v53 = v52[1];
          sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
          v55 = swift_initStackObject();
          *(v55 + 16) = xmmword_1004C50A0;
          *(v55 + 32) = 0x4974655361746164;
          *(v55 + 72) = &type metadata for String;
          *(v55 + 40) = 0xE900000000000064;
          *(v55 + 48) = v54;
          *(v55 + 56) = v53;

          sub_10003C58C(v55);
          swift_setDeallocating();
          v39 = &off_1005F2000;
          sub_100007214(v55 + 32, &qword_100601C08, &qword_1004C95C0);
          v56 = sub_1004BBC24().super.isa;

          [v15 addPropertiesWithDictionary:v56];
        }
      }
    }

    if (v73 != 2 && sub_1000DD284(v73 & 1, v70, v71))
    {
      v57 = sub_1004BBC24().super.isa;

      [v15 v39[295]];
    }

    v58 = (a1 + v30[10]);
    v59 = v58[1];
    if (v59)
    {
      v60 = *v58;
      sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
      v61 = swift_initStackObject();
      *(v61 + 32) = 0x7255666552747865;
      *(v61 + 16) = xmmword_1004C50A0;
      *(v61 + 72) = &type metadata for String;
      *(v61 + 40) = 0xE90000000000006CLL;
      *(v61 + 48) = v60;
      *(v61 + 56) = v59;

      sub_10003C58C(v61);
      swift_setDeallocating();
      sub_100007214(v61 + 32, &qword_100601C08, &qword_1004C95C0);
      v62 = sub_1004BBC24().super.isa;

      [v15 v39[295]];
    }

    v63 = v74;
    v64 = *&v74[v72];
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    *(v65 + 24) = v15;
    aBlock[4] = sub_1000DDB38;
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005AEC10;
    v66 = _Block_copy(aBlock);
    v67 = v64;
    v68 = v63;
    v69 = v15;

    [v69 setStandardPropertiesWith:v67 completionHandler:v66];
    _Block_release(v66);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000D6C80(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void MetricsReportingController.recordImpressionsEvent(_:with:pageContext:sharedListeningContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v53 = a6;
  v57 = a5;
  v58 = a2;
  v56 = a1;
  sub_100003ABC(&qword_100602EB8, &unk_1004CCB00);
  __chkstk_darwin();
  v54 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v11 = &v51 - v10;
  __chkstk_darwin();
  v13 = &v51 - v12;
  __chkstk_darwin();
  v15 = &v51 - v14;
  v16 = sub_1004BA994();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  *v19 = sub_1004BCB44();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v20 = sub_1004BA9C4();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v21 = [objc_allocWithZone(SSMetricsBaseEvent) init];
    v52 = a7;
    if (a4)
    {
      v22 = sub_1004BBE24();
    }

    else
    {
      v22 = 0;
    }

    v23 = v58;
    [v21 setPageContext:v22];

    sub_10000F778(v23, v15, &qword_100602EB8, &unk_1004CCB00);
    v24 = type metadata accessor for MetricsPageProperties(0);
    v25 = *(*(v24 - 8) + 48);
    if (v25(v15, 1, v24) == 1)
    {
      sub_100007214(v15, &qword_100602EB8, &unk_1004CCB00);
      v26 = 0;
    }

    else
    {

      sub_1000DD55C(v15, type metadata accessor for MetricsPageProperties);
      v26 = sub_1004BBE24();
    }

    v27 = sub_1004BBE24();
    [v21 setProperty:v26 forBodyKey:v27];
    swift_unknownObjectRelease();

    sub_10000F778(v23, v13, &qword_100602EB8, &unk_1004CCB00);
    if (v25(v13, 1, v24) == 1)
    {
      sub_100007214(v13, &qword_100602EB8, &unk_1004CCB00);
      v28 = 0;
    }

    else
    {

      sub_1000DD55C(v13, type metadata accessor for MetricsPageProperties);
      v28 = sub_1004BBE24();
    }

    [v21 setPageType:v28];

    v55 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v29 = *&v59[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v29)
    {
      goto LABEL_19;
    }

    sub_100003ABC(&qword_100602EB0, &qword_1004CCAE8);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1004C50C0;
    v31 = sub_100003ABC(&unk_100606160, &qword_1004CAC60);
    *(v30 + 56) = v31;
    sub_10000F778(v23, v11, &qword_100602EB8, &unk_1004CCB00);
    if (v25(v11, 1, v24) == 1)
    {
      v32 = v29;
      sub_100007214(v11, &qword_100602EB8, &unk_1004CCB00);
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v33 = *(v11 + 2);
      v34 = *(v11 + 3);
      v35 = v29;

      sub_1000DD55C(v11, type metadata accessor for MetricsPageProperties);
    }

    *(v30 + 32) = v33;
    *(v30 + 40) = v34;
    *(v30 + 88) = v31;
    v36 = v54;
    sub_10000F778(v58, v54, &qword_100602EB8, &unk_1004CCB00);
    if (v25(v36, 1, v24) == 1)
    {
      sub_100007214(v36, &qword_100602EB8, &unk_1004CCB00);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v37 = *v36;
      v38 = v36[1];

      sub_1000DD55C(v36, type metadata accessor for MetricsPageProperties);
    }

    *(v30 + 64) = v37;
    *(v30 + 72) = v38;
    isa = sub_1004BC284().super.isa;

    v40 = [v29 compoundStringWithElements:isa];

    if (!v40)
    {
LABEL_19:
      v40 = 0;
    }

    [v21 setPageDescription:v40];

    [v21 setEventType:SSMetricsEventTypeImpressions];
    sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = 0x6973736572706D69;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 72) = sub_100003ABC(&qword_1006015C8, &qword_1004C8D10);
    *(inited + 48) = v56;

    sub_10003C58C(inited);
    swift_setDeallocating();
    sub_100007214(inited + 32, &qword_100601C08, &qword_1004C95C0);
    v42 = sub_1004BBC24().super.isa;

    [v21 addPropertiesWithDictionary:v42];

    if (v57 != 2)
    {
      if (sub_1000DD284(v57 & 1, v53, v52))
      {
        v43 = sub_1004BBC24().super.isa;

        [v21 addPropertiesWithDictionary:v43];
      }
    }

    v44 = v59;
    v45 = *&v59[v55];
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v21;
    aBlock[4] = sub_1000DDB88;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005AEC60;
    v47 = _Block_copy(aBlock);
    v48 = v45;
    v49 = v44;
    v50 = v21;

    [v50 setStandardPropertiesWith:v48 completionHandler:v47];
    _Block_release(v47);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000D7518(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = a1;
  v9 = a2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a4, v7);
}

void MetricsReportingController.recordSearchEvent(_:pageContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v8 = aBlock - v7;
  v9 = sub_1004BA994();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  *v12 = sub_1004BCB44();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = sub_1004BA9C4();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v14 = [objc_allocWithZone(SSMetricsSearchEvent) init];
    v15 = v14;
    if (a3)
    {
      v16 = sub_1004BBE24();
    }

    else
    {
      v16 = 0;
    }

    [v14 setPageContext:v16];

    v17 = type metadata accessor for MetricsEvent.Click(0);
    v18 = a1 + v17[10];
    v19 = *(v18 + 24);
    if (v19 >> 8 <= 0xFE && (v20 = MetricsEvent.Click.ActionDetails.dictionary.getter(*v18, *(v18 + 8), *(v18 + 16), v19)) != 0)
    {
      aBlock[0] = v20;
      sub_100003ABC(&qword_100602EC0, &unk_1004CCB10);
      v21 = sub_1004BD9A4();
      sub_100007214(aBlock, &qword_100602EC0, &unk_1004CCB10);
    }

    else
    {
      v21 = 0;
    }

    [v14 setActionDetails:v21];
    swift_unknownObjectRelease();
    MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
    v22 = sub_1004BBE24();

    [v14 setActionType:v22];

    v23 = sub_1004BBE24();
    [v14 setTargetIdentifier:v23];

    sub_10000F778(a1 + v17[7], v8, &qword_100600DE0, &unk_1004C66D0);
    v24 = sub_1004B6B04();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v8, 1, v24) == 1)
    {
      sub_100007214(v8, &qword_100600DE0, &unk_1004C66D0);
      v26 = 0;
    }

    else
    {
      sub_1004B6A04();
      (*(v25 + 8))(v8, v24);
      v26 = sub_1004BBE24();
    }

    [v14 setTargetURL:v26];

    MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
    v27 = sub_1004BBE24();

    [v14 setTargetType:v27];

    if (*(a1 + v17[13] + 8))
    {
      v28 = sub_1004BBE24();
    }

    else
    {
      v28 = 0;
    }

    [v14 setPageType:v28];

    v29 = (a1 + v17[9]);
    v30 = v29[1];
    if (v30 == 12)
    {
      v31 = 0;
    }

    else
    {
      MetricsEvent.Click.ActionContext.rawValue.getter(*v29, v30);
      v31 = sub_1004BBE24();
    }

    v32 = sub_1004BBE24();
    [v14 setProperty:v31 forBodyKey:v32];

    swift_unknownObjectRelease();
    if (*(a1 + v17[15]))
    {
      v33.super.isa = sub_1004BBC24().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    v34 = sub_1004BBE24();
    [v14 setProperty:v33.super.isa forBodyKey:v34];

    swift_unknownObjectRelease();
    if (*(a1 + v17[12] + 8))
    {
      v35 = sub_1004BBE24();
    }

    else
    {
      v35 = 0;
    }

    v36 = sub_1004BBE24();
    [v14 setProperty:v35 forBodyKey:v36];

    swift_unknownObjectRelease();
    isa = *(a1 + v17[8]);
    if (isa)
    {
      sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
      isa = sub_1004BC284().super.isa;
    }

    v38 = sub_1004BBE24();
    [v14 setProperty:isa forBodyKey:v38];

    swift_unknownObjectRelease();
    if (*(a1 + v17[18] + 8))
    {
      v39 = sub_1004BBE24();
    }

    else
    {
      v39 = 0;
    }

    [v14 setSearchTerm:v39];

    v40 = *&v4[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v41 = swift_allocObject();
    *(v41 + 16) = v4;
    *(v41 + 24) = v14;
    aBlock[4] = sub_1000DDBC0;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005AECB0;
    v42 = _Block_copy(aBlock);
    v43 = v40;
    v44 = v4;
    v45 = v14;

    [v45 setStandardPropertiesWith:v43 completionHandler:v42];
    _Block_release(v42);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  v100 = a5;
  v101 = a6;
  v108 = a4;
  v102 = a2;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v99 - v12;
  v14 = sub_1004BA994();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  *v17 = sub_1004BCB44();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = sub_1004BA9C4();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    if (qword_1005FFE08 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v107 = v11;
  v19 = sub_1004B80B4();
  sub_100007084(v19, qword_100617338);
  v20 = sub_1004B8094();
  v21 = sub_1004BC9A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "[MetricsReportingController] Recording click event", v22, 2u);
  }

  v23 = [objc_allocWithZone(SSMetricsClickEvent) init];
  v24 = sub_1004BBE24();
  [v23 setTargetIdentifier:v24];

  MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
  v25 = sub_1004BBE24();

  [v23 setTargetType:v25];

  MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
  v26 = sub_1004BBE24();

  [v23 setActionType:v26];

  v27 = type metadata accessor for MetricsEvent.Click(0);
  sub_10000F778(a1 + v27[7], v13, &qword_100600DE0, &unk_1004C66D0);
  v28 = sub_1004B6B04();
  v29 = *(v28 - 8);
  v104 = *(v29 + 48);
  v105 = v29 + 48;
  v30 = v104(v13, 1, v28);
  v106 = v28;
  v99 = v29;
  if (v30 == 1)
  {
    sub_100007214(v13, &qword_100600DE0, &unk_1004C66D0);
    v31 = 0;
  }

  else
  {
    sub_1004B6A04();
    (*(v29 + 8))(v13, v28);
    v31 = sub_1004BBE24();
  }

  [v23 setTargetURL:{v31, v99}];

  isa = *(a1 + v27[8]);
  v33 = v23;
  v34 = v33;
  if (isa)
  {
    sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
    isa = sub_1004BC284().super.isa;
  }

  v35 = sub_1004BBE24();
  [v33 setProperty:isa forBodyKey:v35];
  swift_unknownObjectRelease();

  v36 = (a1 + v27[9]);
  v37 = v36[1];
  if (v37 == 12)
  {
    v38 = 0;
  }

  else
  {
    MetricsEvent.Click.ActionContext.rawValue.getter(*v36, v37);
    v38 = sub_1004BBE24();
  }

  v39 = sub_1004BBE24();
  [v33 setProperty:v38 forBodyKey:v39];

  swift_unknownObjectRelease();
  v40 = a1 + v27[10];
  v41 = *(v40 + 24);
  if (v41 >> 8 <= 0xFE && (v42 = MetricsEvent.Click.ActionDetails.dictionary.getter(*v40, *(v40 + 8), *(v40 + 16), v41)) != 0)
  {
    aBlock[0] = v42;
    sub_100003ABC(&qword_100602EC0, &unk_1004CCB10);
    v43 = sub_1004BD9A4();
    sub_100007214(aBlock, &qword_100602EC0, &unk_1004CCB10);
  }

  else
  {
    v43 = 0;
  }

  [v33 setActionDetails:v43];
  swift_unknownObjectRelease();
  v44 = *(a1 + v27[11]);
  v109 = v7;
  if (v44)
  {
    sub_100003ABC(&qword_100602EC8, &qword_1004CD480);
    v44 = sub_1004BC284().super.isa;
  }

  v103 = a3;
  [v33 setImpressions:v44];
  swift_unknownObjectRelease();
  if (*(a1 + v27[19]) == 1)
  {
    sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6F43646572616873;
    v46 = inited + 32;
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 40) = 0xED0000746E65746ELL;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    sub_10003C58C(inited);
    swift_setDeallocating();
    sub_100007214(v46, &qword_100601C08, &qword_1004C95C0);
    v47 = sub_1004BBC24().super.isa;

    [v33 addPropertiesWithDictionary:v47];
  }

  v48 = (a1 + v27[20]);
  v49 = v48[1];
  if (v49)
  {
    v50 = *v48;
    sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_1004C50A0;
    *(v51 + 32) = 0xD000000000000013;
    *(v51 + 72) = &type metadata for String;
    *(v51 + 40) = 0x80000001004FE200;
    *(v51 + 48) = v50;
    *(v51 + 56) = v49;

    sub_10003C58C(v51);
    swift_setDeallocating();
    sub_100007214(v51 + 32, &qword_100601C08, &qword_1004C95C0);
    v52 = sub_1004BBC24().super.isa;

    [v33 addPropertiesWithDictionary:v52];
  }

  v53 = (a1 + v27[18]);
  v54 = v53[1];
  if (v54)
  {
    v55 = *v53;
    sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
    v56 = swift_initStackObject();
    *(v56 + 32) = 0x6554686372616573;
    *(v56 + 16) = xmmword_1004C50A0;
    *(v56 + 72) = &type metadata for String;
    *(v56 + 40) = 0xEA00000000006D72;
    *(v56 + 48) = v55;
    *(v56 + 56) = v54;

    sub_10003C58C(v56);
    swift_setDeallocating();
    sub_100007214(v56 + 32, &qword_100601C08, &qword_1004C95C0);
    v57 = sub_1004BBC24().super.isa;

    [v33 addPropertiesWithDictionary:v57];
  }

  v58 = v103;
  if (v108 != 2 && sub_1000DD284(v108 & 1, v100, v101))
  {
    v59 = sub_1004BBC24().super.isa;

    [v33 addPropertiesWithDictionary:v59];
  }

  v60 = v109;
  if (v58)
  {
    v61 = sub_1004BBE24();
  }

  else
  {
    v61 = 0;
  }

  [v33 setPageContext:v61];

  v62 = (a1 + v27[12]);
  v64 = *v62;
  v63 = v62[1];
  v65 = v33;
  if (v63)
  {
    v66 = sub_1004BBE24();
    v65 = sub_1004BBE24();
    [v33 setProperty:v66 forBodyKey:v65];
  }

  v67 = (a1 + v27[13]);
  v69 = *v67;
  v68 = v67[1];
  v70 = v33;
  if (v68)
  {
    v70 = sub_1004BBE24();
    [v33 setPageType:v70];
  }

  v108 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
  v71 = *&v60[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  if (!v71 || (sub_100003ABC(&qword_100602EB0, &qword_1004CCAE8), v72 = swift_allocObject(), *(v72 + 16) = xmmword_1004C50C0, v73 = sub_100003ABC(&unk_100606160, &qword_1004CAC60), *(v72 + 32) = v69, *(v72 + 40) = v68, *(v72 + 88) = v73, *(v72 + 56) = v73, *(v72 + 64) = v64, *(v72 + 72) = v63, , v74 = v71, , v75 = sub_1004BC284().super.isa, , v76 = [v74 compoundStringWithElements:v75], v74, v75, !v76))
  {
    v76 = 0;
  }

  [v33 setPageDescription:v76];

  v77 = v107;
  sub_10000F778(a1 + v27[14], v107, &qword_100600DE0, &unk_1004C66D0);
  v78 = v106;
  if (v104(v77, 1, v106) == 1)
  {
    sub_100007214(v77, &qword_100600DE0, &unk_1004C66D0);
    v79 = 0;
  }

  else
  {
    sub_1004B6A04();
    (*(v99 + 8))(v77, v78);
    v79 = sub_1004BBE24();
  }

  v80 = v109;
  [v33 setPageURL:v79];

  if (*(a1 + v27[15]))
  {
    v81.super.isa = sub_1004BBC24().super.isa;
  }

  else
  {
    v81.super.isa = 0;
  }

  v82 = sub_1004BBE24();
  [v33 setProperty:v81.super.isa forBodyKey:v82];

  swift_unknownObjectRelease();
  if ((*(a1 + v27[16]) & 1) == 0)
  {
    sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
    v83 = swift_initStackObject();
    *(v83 + 16) = xmmword_1004C50A0;
    *(v83 + 32) = 0x7073694465676170;
    v84 = v83 + 32;
    *(v83 + 72) = &type metadata for String;
    *(v83 + 40) = 0xEF6570795479616CLL;
    *(v83 + 48) = 0x7765695664726163;
    *(v83 + 56) = 0xE800000000000000;
    sub_10003C58C(v83);
    swift_setDeallocating();
    sub_100007214(v84, &qword_100601C08, &qword_1004C95C0);
    v85 = sub_1004BBC24().super.isa;

    [v33 addPropertiesWithDictionary:v85];
  }

  v86 = *(a1 + v27[17]);
  if (v86 != 2)
  {
    sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_1004C50A0;
    *(v87 + 32) = 0xD000000000000014;
    v88 = v87 + 32;
    *(v87 + 40) = 0x80000001004FE1E0;
    *(v87 + 72) = &type metadata for Bool;
    *(v87 + 48) = v86 & 1;
    sub_10003C58C(v87);
    swift_setDeallocating();
    sub_100007214(v88, &qword_100601C08, &qword_1004C95C0);
    v89 = sub_1004BBC24().super.isa;

    [v33 addPropertiesWithDictionary:v89];
  }

  v90 = objc_allocWithZone(NSNumber);
  v91 = v33;
  v92 = [v90 initWithInteger:5];
  [v91 setEventVersion:v92];

  v93 = *&v80[v108];
  v94 = swift_allocObject();
  *(v94 + 16) = v80;
  *(v94 + 24) = v91;
  aBlock[4] = sub_1000DDBF8;
  aBlock[5] = v94;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005AED00;
  v95 = _Block_copy(aBlock);
  v96 = v93;
  v97 = v80;
  v98 = v91;

  [v98 setStandardPropertiesWith:v96 completionHandler:v95];
  _Block_release(v95);
}

Swift::Void __swiftcall MetricsReportingController.recordLoadUrlEvent(_:)(MusicCore::MetricsEvent::LoadUrl *a1)
{
  v3 = [objc_allocWithZone(SSMetricsLoadURLEvent) init];
  object_low = LOBYTE(a1->environmentDataCenter.value._object);
  [v3 setCachedResponse:object_low];
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  [v3 setOriginalApp:v6];
  if (a1->domainLookupStartTime.is_nil)
  {
    if (BYTE6(a1->connectionStartTime.value))
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v3 setDomainLookupStartTime:a1->domainLookupStartTime.value];
    if (BYTE6(a1->connectionStartTime.value))
    {
LABEL_3:
      if (BYTE4(a1->connectionEndTime.value))
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  [v3 setDomainLookupEndTime:*(&a1->domainLookupEndTime.value + 7)];
  if (BYTE4(a1->connectionEndTime.value))
  {
LABEL_4:
    if (BYTE2(a1->responseStartTime.value))
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setConnectionStartTime:*(&a1->secureConnectionStartTime.value + 5)];
  if (BYTE2(a1->responseStartTime.value))
  {
LABEL_5:
    if (LOBYTE(a1->fetchStartTime.value))
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 setSecureConnectionStartTime:*(&a1->requestStartTime.value + 3)];
  if (LOBYTE(a1->fetchStartTime.value))
  {
LABEL_6:
    if ((a1->redirectCount.value & 0x100000000000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setConnectionEndTime:*(&a1->responseEndTime.value + 1)];
  if ((a1->redirectCount.value & 0x100000000000000) != 0)
  {
LABEL_7:
    if (a1->requestUrl.value._object)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setRequestStartTime:*&a1->fetchStartTime.is_nil];
  if (a1->requestUrl.value._object)
  {
LABEL_8:
    if (a1->appleTimingApp.value._countAndFlagsBits)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setResponseStartTime:*&a1->requestUrl.value._countAndFlagsBits];
  if (a1->appleTimingApp.value._countAndFlagsBits)
  {
LABEL_9:
    if (a1->connectionType.value._countAndFlagsBits)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setResponseEndTime:*&a1->cachedResponse];
  if (a1->connectionType.value._countAndFlagsBits)
  {
LABEL_10:
    if (!a1->environmentDataCenter.value._countAndFlagsBits)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_38:
  [v3 setFetchStartTime:*&a1->appleTimingApp.value._object];
  if (a1->environmentDataCenter.value._countAndFlagsBits)
  {
LABEL_11:
    v7 = sub_1004BBE24();
    [v3 setRequestURL:v7];
  }

LABEL_12:
  if ((a1->edgeNodeCacheStatus.value._countAndFlagsBits & 1) == 0)
  {
    if ((a1->connectionType.value._object & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

    [v3 setRedirectCount:?];
  }

  if (a1->responseDate.value._object)
  {
    v8 = sub_1004BBE24();
    [v3 setAppleTimingApp:v8];
  }

  if (a1->requestMessageSize)
  {
    v9 = sub_1004BBE24();
    [v3 setConnectionType:v9];
  }

  if (a1->resolvedIPAddress.value._countAndFlagsBits)
  {
    v10 = sub_1004BBE24();
    [v3 setEdgeNodeCacheStatus:v10];
  }

  if (*(&a1[1].domainLookupEndTime.value + 7))
  {
    v11 = sub_1004BBE24();
    [v3 setResponseDate:v11];
  }

  if (*(&a1[1].responseStartTime.value + 2))
  {
    v12 = sub_1004BBE24();
    [v3 setResolvedIPAddress:v12];
  }

  v24 = *&a1->resolvedIPAddress.value._object;
  v13 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v14 = v24;
    sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x80000001004FE220;
    *(inited + 48) = v14;
    *(inited + 56) = v13;
    sub_10000F778(&v24, aBlock, &unk_100606160, &qword_1004CAC60);
    sub_10003C58C(inited);
    swift_setDeallocating();
    sub_100007214(inited + 32, &qword_100601C08, &qword_1004C95C0);
    isa = sub_1004BBC24().super.isa;

    [v3 addPropertiesWithDictionary:isa];
  }

  [v3 setCachedResponse:object_low];
  [v3 setConnectionReused:BYTE1(a1->environmentDataCenter.value._object)];
  [v3 setStatusCode:*(&a1[1].connectionStartTime.value + 6)];
  if ((*(&a1[1].secureConnectionStartTime.value + 5) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [v3 setRequestMessageSize:?];
    if ((*(&a1[1].connectionEndTime.value + 4) & 0x8000000000000000) == 0)
    {
      [v3 setResponseMessageSize:?];
      v17 = *&v1[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
      v18 = swift_allocObject();
      *(v18 + 16) = v3;
      *(v18 + 24) = v1;
      aBlock[4] = sub_1000DDC30;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D6C80;
      aBlock[3] = &unk_1005AED50;
      v19 = _Block_copy(aBlock);
      v20 = v17;
      v21 = v3;
      v22 = v1;

      [v21 setStandardPropertiesWith:v20 completionHandler:v19];
      _Block_release(v19);

      return;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_1000D91E4(void *a1)
{
  if (sub_1000E0678())
  {
    sub_1000DC4B8(a1, CFRange.init(_:), 0);
  }
}

void MetricsReportingController.recordComponentRenderEvent(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004BA994();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  *v7 = sub_1004BCB44();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_1004BA9C4();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsComponentRenderEvent(0 v9];
    if (*(a1 + 8))
    {
      v12 = sub_1004BBE24();
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_1004BBE24();
    [v11 setProperty:v12 forBodyKey:v13];
    swift_unknownObjectRelease();

    v14 = *(a1 + 16);
    if (v14 == 27)
    {
      v15 = 0;
    }

    else
    {
      MetricsEvent.TargetType.rawValue.getter(v14);
      v15 = sub_1004BBE24();
    }

    v16 = sub_1004BBE24();
    [v11 setProperty:v15 forBodyKey:v16];
    swift_unknownObjectRelease();

    v17 = *(a1 + 24);
    v18 = sub_1004BBE24();
    [v11 setProperty:v17 forBodyKey:v18];

    v19 = *(a1 + 32);
    v20 = sub_1004BBE24();
    [v11 setProperty:v19 forBodyKey:v20];

    v21 = *(a1 + 40);
    v22 = sub_1004BBE24();
    [v11 setProperty:v21 forBodyKey:v22];

    v23 = *(a1 + 48);
    v24 = sub_1004BBE24();
    [v11 setProperty:v23 forBodyKey:v24];

    v25 = *(a1 + 56);
    v26 = sub_1004BBE24();
    [v11 setProperty:v25 forBodyKey:v26];

    v27 = *(a1 + 64);
    v28 = sub_1004BBE24();
    [v11 setProperty:v27 forBodyKey:v28];

    v29 = *(a1 + 72);
    if (v29 >= 4)
    {
      v30 = 0;
    }

    else
    {
      v30 = sub_1004BBE24();
    }

    v31 = sub_1004BBE24();
    [v11 setProperty:v30 forBodyKey:v31];
    swift_unknownObjectRelease();

    v32 = *&v2[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v33 = swift_allocObject();
    *(v33 + 16) = v2;
    *(v33 + 24) = v11;
    aBlock[4] = sub_1000DE604;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005AEDA0;
    v34 = _Block_copy(aBlock);
    v35 = v32;
    v36 = v2;
    v37 = v11;

    [v37 setStandardPropertiesWith:v35 completionHandler:v34];
    _Block_release(v34);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v9 = &v101 - v8;
  v10 = sub_1004BA994();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  *v13 = sub_1004BCB44();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_1004BA9C4();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v103 = v9;
    v102 = a2;
    v105 = v4;
    v17 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsPageRenderEvent(0 v15];
    swift_beginAccess();
    v18 = *(a1 + 16);
    swift_beginAccess();
    v19 = *(a1 + 32);
    v104 = a3;
    if (v19)
    {
      v20 = v18;
      v21 = 0;
    }

    else
    {
      v22 = *(a1 + 24);
      v23 = objc_opt_self();
      v24 = v18;
      v25 = [v23 serverTimeFromTimeInterval:v22];
      v26 = [v25 unsignedLongLongValue];

      v108[15] = v26;
      v21 = sub_1004BDA54();
    }

    v27 = sub_1004BBE24();
    [v17 setProperty:v21 forBodyKey:v27];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v28 = 0;
    if ((*(a1 + 48) & 1) == 0)
    {
      v29 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 40)];
      v30 = [v29 unsignedLongLongValue];

      v108[12] = v30;
      v28 = sub_1004BDA54();
    }

    v31 = sub_1004BBE24();
    [v17 setProperty:v28 forBodyKey:v31];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v32 = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      v33 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 56)];
      v34 = [v33 unsignedLongLongValue];

      v108[9] = v34;
      v32 = sub_1004BDA54();
    }

    v35 = sub_1004BBE24();
    [v17 setProperty:v32 forBodyKey:v35];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v36 = 0;
    if ((*(a1 + 80) & 1) == 0)
    {
      v37 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 72)];
      v38 = [v37 unsignedLongLongValue];

      v108[6] = v38;
      v36 = sub_1004BDA54();
    }

    v39 = sub_1004BBE24();
    [v17 setProperty:v36 forBodyKey:v39];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v40 = 0;
    if ((*(a1 + 96) & 1) == 0)
    {
      v41 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 88)];
      v42 = [v41 unsignedLongLongValue];

      v108[3] = v42;
      v40 = sub_1004BDA54();
    }

    v43 = sub_1004BBE24();
    [v17 setProperty:v40 forBodyKey:v43];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v44 = 0;
    if ((*(a1 + 112) & 1) == 0)
    {
      v45 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 104)];
      v46 = [v45 unsignedLongLongValue];

      v108[0] = v46;
      v44 = sub_1004BDA54();
    }

    v47 = sub_1004BBE24();
    [v17 setProperty:v44 forBodyKey:v47];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v48 = 0;
    if ((*(a1 + 128) & 1) == 0)
    {
      v49 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 120)];
      v50 = [v49 unsignedLongLongValue];

      v106 = v50;
      v48 = sub_1004BDA54();
    }

    v51 = sub_1004BBE24();
    [v17 setProperty:v48 forBodyKey:v51];
    swift_unknownObjectRelease();

    if (v18)
    {
      [v18 requestStartTime];
      v53 = [objc_opt_self() serverTimeFromTimeInterval:v52];
      v54 = [v53 unsignedLongLongValue];

      v106 = v54;
      v55 = sub_1004BDA54();
    }

    else
    {
      v55 = 0;
    }

    v56 = sub_1004BBE24();
    [v17 setProperty:v55 forBodyKey:v56];
    swift_unknownObjectRelease();

    if (v18)
    {
      [v18 responseStartTime];
      v58 = [objc_opt_self() serverTimeFromTimeInterval:v57];
      v59 = [v58 unsignedLongLongValue];

      v106 = v59;
      v60 = sub_1004BDA54();
    }

    else
    {
      v60 = 0;
    }

    v61 = sub_1004BBE24();
    [v17 setProperty:v60 forBodyKey:v61];
    swift_unknownObjectRelease();

    if (v18)
    {
      [v18 responseEndTime];
      v63 = [objc_opt_self() serverTimeFromTimeInterval:v62];
      v64 = [v63 unsignedLongLongValue];

      v106 = v64;
      v65 = sub_1004BDA54();
      v66 = sub_1004BBE24();
      [v17 setProperty:v65 forBodyKey:v66];
      swift_unknownObjectRelease();

      v67 = [v18 cachedResponse];
    }

    else
    {
      v68 = sub_1004BBE24();
      [v17 setProperty:0 forBodyKey:v68];

      v67 = 0;
    }

    LOBYTE(v106) = v67;
    v69 = sub_1004BDA54();
    v70 = sub_1004BBE24();
    [v17 setProperty:v69 forBodyKey:v70];
    swift_unknownObjectRelease();

    v71 = (a1 + *(*a1 + 160));
    v72 = v71[1];
    v106 = *v71;
    v107 = v72;

    v73 = sub_1004BDA54();
    v74 = sub_1004BBE24();
    [v17 setProperty:v73 forBodyKey:v74];
    swift_unknownObjectRelease();

    v75 = v71[3];
    v106 = v71[2];
    v107 = v75;

    v76 = sub_1004BDA54();
    v77 = sub_1004BBE24();
    [v17 setProperty:v76 forBodyKey:v77];
    swift_unknownObjectRelease();

    v78 = type metadata accessor for MetricsPageProperties(0);
    v79 = v103;
    sub_10000F778(v71 + *(v78 + 24), v103, &qword_100600DE0, &unk_1004C66D0);
    v80 = sub_1004B6B04();
    v81 = *(v80 - 8);
    if ((*(v81 + 48))(v79, 1, v80) == 1)
    {
      sub_100007214(v79, &qword_100600DE0, &unk_1004C66D0);
      v82 = 0;
    }

    else
    {
      v83 = sub_1004B6A04();
      v85 = v84;
      (*(v81 + 8))(v79, v80);
      v106 = v83;
      v107 = v85;
      v82 = sub_1004BDA54();
    }

    v86 = v104;
    v87 = sub_1004BBE24();
    [v17 setProperty:v82 forBodyKey:v87];
    swift_unknownObjectRelease();

    if (*(v71 + *(v78 + 28)))
    {
      v106 = *(v71 + *(v78 + 28));

      sub_100003ABC(&qword_100602EC0, &unk_1004CCB10);
      v88 = sub_1004BDA54();
    }

    else
    {
      v88 = 0;
    }

    v89 = sub_1004BBE24();
    [v17 setProperty:v88 forBodyKey:v89];
    swift_unknownObjectRelease();

    if (v86)
    {
      v106 = v102;
      v107 = v86;

      v90 = sub_1004BDA54();
    }

    else
    {
      v90 = 0;
    }

    v91 = sub_1004BBE24();
    [v17 setProperty:v90 forBodyKey:v91];
    swift_unknownObjectRelease();

    v92 = v105;
    v93 = *&v105[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v94 = swift_allocObject();
    *(v94 + 16) = v92;
    *(v94 + 24) = v17;
    v95 = v93;
    v96 = v17;
    v97 = v95;
    v98 = v96;

    v99 = v92;
    v100 = v98;
    sub_1000E3D1C(v93, v100, v100, v93, sub_1000DE63C, v94);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000DA514(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a4(a2))
  {
    sub_1000DC4B8(a2, CFRange.init(_:), 0);
  }
}

void MetricsReportingController.recordCustomEvent(with:properties:sharedListeningContext:shouldSuppressUserInfo:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v23 = a6;
  v22 = a5;
  v12 = sub_1004BA994();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  *v15 = sub_1004BCB44();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_1004BA9C4();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v17 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v18 = sub_1004BBE24();
    [v17 setTopic:v18];

    isa = sub_1004BBC24().super.isa;
    [v17 addPropertiesWithDictionary:isa];

    [v17 setShouldSuppressUserInfo:a7 & 1];
    [v17 setShouldSuppressDSIDHeader:a7 & 1];

    if (a4 != 2)
    {
      if (sub_1000DD284(a4 & 1, v22, v23))
      {
        v20 = sub_1004BBC24().super.isa;

        [v17 addPropertiesWithDictionary:v20];
      }
    }

    sub_1000DC4B8(v17, a8, a9);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordCarPlayCustomEvent(with:properties:shouldSuppressUserInfo:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a5;
  v40 = a2;
  v38 = a1;
  v37 = sub_1004B6D14();
  v10 = *(v37 - 8);
  __chkstk_darwin();
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004BA994();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  *v16 = sub_1004BCB44();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v17 = sub_1004BA9C4();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v18 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v36 = a6;
    v19 = v7;
    v20 = v18;
    isa = sub_1004BBC24().super.isa;
    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:a4 & 1];
    [v20 setShouldSuppressDSIDHeader:a4 & 1];

    sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v23 = sub_1004B6CE4();
    v25 = v24;
    (*(v10 + 8))(v12, v37);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v23;
    *(inited + 56) = v25;
    sub_10003C58C(inited);
    swift_setDeallocating();
    sub_100007214(inited + 32, &qword_100601C08, &qword_1004C95C0);
    v26 = sub_1004BBC24().super.isa;

    [v20 addPropertiesWithDictionary:v26];

    v27 = *&v19[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v28 = swift_allocObject();
    v30 = v38;
    v29 = v39;
    v28[2] = v20;
    v28[3] = v30;
    v28[4] = v40;
    v28[5] = v19;
    v31 = v36;
    v28[6] = v29;
    v28[7] = v31;
    aBlock[4] = sub_1000CF8D8;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005AEE18;
    v32 = _Block_copy(aBlock);
    v33 = v27;

    v34 = v19;

    v35 = v20;

    [v35 setStandardPropertiesWith:v33 completionHandler:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000DAC58(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1004BBE24();
  [a1 setTopic:v12];

  if (qword_1005FFD58 != -1)
  {
    swift_once();
  }

  v13 = sub_1004B80B4();
  sub_100007084(v13, static Logger.carMetrics);

  v14 = sub_1004B8094();
  v15 = sub_1004BC9A4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_100012018(a2, a3, v20);
    _os_log_impl(&_mh_execute_header, v14, v15, "Inserting carPlay custom event with topic=%{public}s in metrics controller", v16, 0xCu);
    sub_100004C6C(v17);
  }

  v18 = *(a4 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
  v20[4] = a5;
  v20[5] = a6;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1001460EC;
  v20[3] = &unk_1005AF648;
  v19 = _Block_copy(v20);

  [v18 insertEvent:a1 withCompletionHandler:v19];
  _Block_release(v19);
}

Swift::Void __swiftcall MetricsReportingController.reportEventForLocalEvaluation(with:)(Swift::OpaquePointer with)
{
  v1 = sub_1004BA994();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  *v4 = sub_1004BCB44();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v5 = sub_1004BA9C4();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v6 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = sub_1004BBC24().super.isa;
    [v6 addPropertiesWithDictionary:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000DB020(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFE08 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v2[19] = sub_100007084(v3, qword_100617338);
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MetricsReportingController] Attempting to flush unreported events", v6, 2u);
  }

  v7 = v2[18];

  v8 = *(v7 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
  v2[2] = v2;
  v2[3] = sub_1000DB1F4;
  v9 = swift_continuation_init();
  v2[17] = sub_100003ABC(&unk_100606750, &unk_1004CCB28);
  v2[10] = _NSConcreteStackBlock;
  v2[11] = 1107296256;
  v2[12] = sub_1000DB4B0;
  v2[13] = &unk_1005AEE40;
  v2[14] = v9;
  [v8 flushUnreportedEventsWithCompletionHandler:v2 + 10];

  return _swift_continuation_await(v2 + 2);
}

uint64_t sub_1000DB1F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1000DB318;
  }

  else
  {
    v2 = sub_1000DB304;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DB318(uint64_t a1)
{
  v13 = v1;
  swift_willThrow();
  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[20];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v1[10] = v4;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v7 = sub_1004BBF04();
    v9 = sub_100012018(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MetricsReportingController] Failed to flush unreported events with error=%{public}s", v5, 0xCu);
    sub_100004C6C(v6);
  }

  else
  {
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_1000DB4B0(uint64_t a1, void *a2)
{
  sub_100009178((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    swift_allocError();
    *v3 = a2;
    v4 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1000DB55C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_100007214(&v8, &qword_100605110, &unk_1004CD280);
    return 0;
  }

  v2 = v1;
  v3 = sub_1004BBE24();
  v4 = [v2 valueForConfigurationKey:v3];

  if (v4)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

char *sub_1000DB68C()
{
  v1 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_componentRenderEventSampler;
  sub_100003ABC(&qword_1006007D8, &unk_1004C5230);
  v2 = swift_allocObject();
  v3 = objc_opt_self();
  *(v2 + 16) = [v3 standardUserDefaults];
  *&v0[v1] = v2;
  v4 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageRenderEventSampler;
  sub_100003ABC(&unk_1006007E0, &unk_1004CD290);
  v5 = swift_allocObject();
  *(v5 + 16) = [v3 standardUserDefaults];
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration] = 0;
  v6 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController;
  *&v0[v6] = [objc_allocWithZone(SSMetricsController) init];
  v7 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController;
  *&v0[v7] = [objc_allocWithZone(SSMetricsController) init];
  v8 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carMetricsReporter;
  type metadata accessor for CarNowPlayingMetrics.Reporter(0, v9, v10);
  v11 = swift_allocObject();
  *&v0[v8] = v11;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_backgroundObserver] = 0;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_urlBagObserver] = 0;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory] = _swiftEmptyArrayStorage;
  v26.receiver = v0;
  v26.super_class = type metadata accessor for MetricsReportingController(v11, v12, v13);
  v14 = objc_msgSendSuper2(&v26, "init");
  v15 = qword_1005FFED8;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for BagProvider.Observer(0, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  swift_weakAssign();
  v20 = *(v19 + 24);
  v21 = *(v19 + 32);
  *(v19 + 24) = sub_1000DF8FC;
  *(v19 + 32) = v17;
  swift_retain_n();
  sub_10003CC4C(v20, v21);
  __chkstk_darwin();
  UnfairLock.locked<A>(_:)(sub_1000DF904);
  sub_1000FAAD0(0);

  *&v16[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_urlBagObserver] = v19;

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = UISceneDidEnterBackgroundNotification;

  type metadata accessor for NotificationObserver(0, v24);
  swift_allocObject();
  *&v16[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v23, 0, 1, 1, sub_1000DF924, v22);

  return v16;
}

uint64_t sub_1000DBAB0(void *a1, uint64_t a2)
{
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  v5 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1000DFC3C, v4);
}

void sub_1000DBB54(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000DC0B8(a2);
  }
}

uint64_t sub_1000DBBB0(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v3 = &v13 - v2;
  if (qword_1005FFE08 != -1)
  {
    swift_once();
  }

  v4 = sub_1004B80B4();
  sub_100007084(v4, qword_100617338);
  v5 = sub_1004B8094();
  v6 = sub_1004BC9A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
  }

  sub_1004BC494();
  v8 = sub_1004BC4B4();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  sub_10001F35C(0, 0, v3, &unk_1004CD2A8, v11);

  return sub_100007214(v3, &qword_1006014F0, &qword_1004C9B00);
}

uint64_t sub_1000DBDF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    sub_1000CD8AC(0);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;

    sub_1000CD8AC(1);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  v0[12] = v5;
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_1000DBF88;

    return MetricsReportingController.flushUnreportedEvents()();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000DBF88()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1000DC0B8(void *a1)
{
  v2 = v1;
  v4 = sub_1004BA994();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  *v7 = sub_1004BCB44();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_1004BA9C4();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v9 = [a1 dictionaryForBagKey:SSMetricsURLBagKey];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1004BBC44();

    if (!*(v11 + 16))
    {

      return;
    }

    v12 = [a1 dictionaryForBagKey:SSVURLBagKeyMusicCommon];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1004BBC44();

      *&v27[0] = 0xD000000000000023;
      *(&v27[0] + 1) = 0x80000001004FE540;
      sub_1004BD3A4();
      if (*(v14 + 16))
      {
        v15 = sub_100034774(v28);
        if (v16)
        {
          sub_100004DE4(*(v14 + 56) + 32 * v15, v27);
          sub_10003D090(v28);

          sub_10003E13C(v27, v29);
          strcpy(v27, "postFrequency");
          HIWORD(v27[0]) = -4864;
          sub_1004BD3A4();
          sub_100004DE4(v29, v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v11;
          sub_10003841C(v27, v28, isUniquelyReferenced_nonNull_native);
          sub_10003D090(v28);
          sub_100004C6C(v29);
          v18 = 1;
          goto LABEL_11;
        }
      }

      sub_10003D090(v28);
    }

    v18 = 0;
LABEL_11:
    v19 = objc_allocWithZone(SSMetricsConfiguration);
    isa = sub_1004BBC24().super.isa;

    v21 = [v19 initWithGlobalConfiguration:isa];

    if (v21)
    {
      v22 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
      *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration) = v21;
      v23 = v21;

      [v23 setDisableEventDecoration:{objc_msgSend(v23, "_decorateITMLEvents") ^ 1}];
      v24 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
      [v24 setGlobalConfiguration:v23];
      [v24 setFlushTimerEnabled:1];
      if (v18)
      {
        v25 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
        [v25 setGlobalConfiguration:v23];

        [v25 setFlushTimerEnabled:1];
      }

      else
      {
      }
    }
  }
}

void sub_1000DC4B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = sub_1004B6D14();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004BA994();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  *v14 = sub_1004BCB44();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_1004BA9C4();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_1000DC8FC(a1);
    sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v17 = sub_1004B6CE4();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v17;
    *(inited + 56) = v19;
    sub_10003C58C(inited);
    swift_setDeallocating();
    sub_100007214(inited + 32, &qword_100601C08, &qword_1004C95C0);
    isa = sub_1004BBC24().super.isa;

    [a1 addPropertiesWithDictionary:isa];

    if (qword_1005FFE08 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = sub_1004B80B4();
  sub_100007084(v21, qword_100617338);
  v22 = sub_1004B8094();
  v23 = sub_1004BC9A4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "[MetricsReportingController] Inserting main window related event.", v24, 2u);
  }

  v25 = *(v4 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
  v26 = swift_allocObject();
  *(v26 + 16) = v29;
  *(v26 + 24) = a3;
  aBlock[4] = sub_1000DFAA4;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001460EC;
  aBlock[3] = &unk_1005AF698;
  v27 = _Block_copy(aBlock);

  [v25 insertEvent:a1 withCompletionHandler:v27];
  _Block_release(v27);
}

uint64_t sub_1000DC8FC(void *a1)
{
  v3 = [a1 eventType];
  if (!v3)
  {
    sub_1004BBE64();
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_1004BBE64();
  v7 = v6;

  v8 = sub_1004BBE64();
  if (!v7)
  {
LABEL_10:
  }

  if (v5 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = sub_1004BD9C4();

    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v13 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory;
  swift_beginAccess();

  isa = sub_1004BC284().super.isa;

  v15 = sub_1004BBE24();
  [a1 setProperty:isa forBodyKey:v15];

  v16 = v1;
  result = sub_1000E07F8();
  if (v17)
  {
    v18 = result;
    v19 = v17;
    v20 = *(v16 + v13);
    if (*(v20 + 16) >= 5uLL)
    {

      *(v16 + v13) = sub_1000DCB74(4uLL, v20);
    }

    swift_beginAccess();
    v21 = *(v16 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + v13) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_100017CC8(0, *(v21 + 2) + 1, 1, v21);
      *(v16 + v13) = v21;
    }

    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      v27 = v21;
      v28 = *(v21 + 2);
      v29 = sub_100017CC8((v24 > 1), v23 + 1, 1, v27);
      v23 = v28;
      v21 = v29;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v23];
    *(v26 + 4) = v18;
    *(v26 + 5) = v19;
    *(v16 + v13) = v21;
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_1000DCB74(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v3 = result;
  if (result)
  {
    v4 = *(a2 + 16) >= result ? result : *(a2 + 16);
    result = sub_100015080(0, v4, 0);
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = a2 + 40;
      v22 = *(a2 + 16);
      v21 = v5 - 1;
      do
      {
        v9 = (v8 + 16 * v6);
        while (1)
        {
          if (v6 >= *(a2 + 16))
          {
            __break(1u);
            goto LABEL_32;
          }

          v10 = *(v9 - 1);
          v11 = *v9;
          v12 = v6 + 1;
          v13 = _swiftEmptyArrayStorage[2];
          if (v13 >= v3)
          {
            break;
          }

          v14 = _swiftEmptyArrayStorage[3];

          if (v13 >= v14 >> 1)
          {
            result = sub_100015080((v14 > 1), v13 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v13 + 1;
          v15 = &_swiftEmptyArrayStorage[2 * v13];
          v15[4] = v10;
          v15[5] = v11;
          v9 += 2;
          v6 = v12;
          if (v22 == v12)
          {
            goto LABEL_23;
          }
        }

        if (v7 >= v13)
        {
          goto LABEL_33;
        }

        v16 = &_swiftEmptyArrayStorage[2 * v7];
        v16[4] = v10;
        v16[5] = v11;

        if ((v7 + 1) < v3)
        {
          ++v7;
        }

        else
        {
          v7 = 0;
        }

        v8 = a2 + 40;
      }

      while (v21 != v6++);
LABEL_23:

      if (!v7)
      {
        return _swiftEmptyArrayStorage;
      }

      v18 = _swiftEmptyArrayStorage[2];
      result = sub_100015080(0, v18, 0);
      if (v18 >= v7)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        v19 = _swiftEmptyArrayStorage[2];
        if (v19 >= v7 && v19 >= v18)
        {

          sub_1000DDC68(v20, &_swiftEmptyArrayStorage[4], v7, (2 * v18) | 1);

          sub_1000DDC68(_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage[4], 0, (2 * v7) | 1);

          return _swiftEmptyArrayStorage;
        }

        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }
  }

  return _swiftEmptyArrayStorage;
}

id MetricsReportingController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for MetricsReportingController(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_1000DCEB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004BBE24();
  v4 = [v2 propertyForBodyKey:v3];

  if (v4)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
    sub_10003E13C(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_100003ABC(&qword_100605110, &unk_1004CD280);
  sub_100009130(0, &qword_100603118, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000DCF8C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9MusicCore12MetricsEventV5ClickV13ActionContextO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        if (a4 == 6)
        {
          return 1;
        }
      }

      else if (a2 == 7)
      {
        if (a4 == 7)
        {
          return 1;
        }
      }

      else if (a4 == 8)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        return a4 == 9;
      case 10:
        return a4 == 10;
      case 11:
        return a4 == 11;
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a2 == 4)
      {
        if (a4 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 0xC)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1004BD9C4();
  }
}

uint64_t sub_1000DD178(unint64_t a1)
{
  if (a1 <= 1)
  {
    return sub_1004BD934();
  }

  if (a1 - 5 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 3419442;
  }

  if (a1 - 8 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 3616053;
  }

  if (a1 - 11 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 808529208;
  }

  if (a1 - 16 > 0xFFFFFFFFFFFFFFFALL)
  {
    return 0x35312D3131;
  }

  if (a1 - 21 > 0xFFFFFFFFFFFFFFFALL)
  {
    return 0x30322D3631;
  }

  if (a1 - 26 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0x35322D3132;
  }

  return 2831922;
}

unint64_t sub_1000DD284(char a1, unint64_t a2, unint64_t a3)
{
  sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C5070;
    strcpy((inited + 32), "sharedActivity");
    *(inited + 47) = -18;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD00000000000001CLL;
    *(inited + 88) = 0x80000001004FE5C0;
    *(inited + 96) = sub_1000DD178(a2);
    *(inited + 104) = v7;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0xD000000000000018;
    *(inited + 136) = 0x80000001004FE0B0;
    v8 = sub_1000DD178(a3);
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v8;
    *(inited + 152) = v9;
    v10 = sub_10003C58C(inited);
    swift_setDeallocating();
    sub_100003ABC(&qword_100601C08, &qword_1004C95C0);
    swift_arrayDestroy();
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 32) = 0x6341646572616873;
    v12 = v11 + 32;
    *(v11 + 16) = xmmword_1004C50A0;
    *(v11 + 40) = 0xEE00797469766974;
    *(v11 + 72) = &type metadata for Bool;
    *(v11 + 48) = 0;
    v10 = sub_10003C58C(v11);
    swift_setDeallocating();
    sub_100007214(v12, &qword_100601C08, &qword_1004C95C0);
  }

  return v10;
}

unint64_t _s9MusicCore12MetricsEventV10TargetTypeO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004BDA14();

  if (v2 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000DD488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DD4EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DD55C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t _s9MusicCore12MetricsEventV5ClickV10ActionTypeO8rawValueAGSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004BDA14();

  if (v2 >= 0x41)
  {
    return 65;
  }

  else
  {
    return v2;
  }
}

double sub_1000DD678@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 domainLookupStartTime];
  v70 = v4;
  [a1 domainLookupEndTime];
  v6 = v5;
  [a1 connectionStartTime];
  v8 = v7;
  [a1 secureConnectionStartTime];
  v10 = v9;
  [a1 connectionEndTime];
  v12 = v11;
  [a1 requestStartTime];
  v14 = v13;
  [a1 responseStartTime];
  v16 = v15;
  [a1 responseEndTime];
  v18 = v17;
  [a1 fetchStartTime];
  v20 = v19;
  v69 = [a1 redirectCount];
  v21 = [a1 requestUrl];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1004BBE64();
    v67 = v24;
    v68 = v23;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v66 = [a1 cachedResponse];
  v65 = [a1 connectionReused];
  v25 = [a1 appleTimingApp];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1004BBE64();
    v63 = v28;
    v64 = v27;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v29 = [a1 connectionType];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1004BBE64();
    v61 = v32;
    v62 = v31;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v33 = [a1 edgeNodeCacheStatus];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1004BBE64();
    v59 = v36;
    v60 = v35;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v37 = [a1 environmentDataCenter];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1004BBE64();
    v55 = v40;
    v57 = v39;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v41 = [a1 responseDate];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1004BBE64();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = [a1 statusCode];
  v47 = [a1 requestMessageSize];
  v48 = [a1 responseMessageSize];
  v49 = [a1 resolvedIPAddress];
  if (v49)
  {
    v50 = v49;
    v51 = sub_1004BBE64();
    v53 = v52;
  }

  else
  {

    v51 = 0;
    v53 = 0;
  }

  result = v70;
  *a2 = v70;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  *(a2 + 48) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = v12;
  *(a2 + 72) = 0;
  *(a2 + 80) = v14;
  *(a2 + 88) = 0;
  *(a2 + 96) = v16;
  *(a2 + 104) = 0;
  *(a2 + 112) = v18;
  *(a2 + 120) = 0;
  *(a2 + 128) = v20;
  *(a2 + 136) = 0;
  *(a2 + 144) = v69;
  *(a2 + 152) = 0;
  *(a2 + 160) = v68;
  *(a2 + 168) = v67;
  *(a2 + 176) = v66;
  *(a2 + 177) = v65;
  *(a2 + 184) = v64;
  *(a2 + 192) = v63;
  *(a2 + 200) = v62;
  *(a2 + 208) = v61;
  *(a2 + 216) = v60;
  *(a2 + 224) = v59;
  *(a2 + 232) = v58;
  *(a2 + 240) = v56;
  *(a2 + 248) = v43;
  *(a2 + 256) = v45;
  *(a2 + 264) = v46;
  *(a2 + 272) = v47;
  *(a2 + 280) = v48;
  *(a2 + 288) = v51;
  *(a2 + 296) = v53;
  return result;
}

unint64_t _s9MusicCore12MetricsEventV15ComponentRenderV13PreloadStatusO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A48D8;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000DDAF8()
{

  return swift_deallocObject();
}

uint64_t sub_1000DDB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000DDC68(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

LABEL_11:
      result = sub_100015080(result, v11, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v12 = *(v10 + 16);
    v13 = __OFADD__(v12, v9);
    v14 = v12 + v9;
    if (!v13)
    {
      *(v10 + 16) = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(uint64_t a1)
{
  v2 = sub_1004B6C14();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin();
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1004B6CD4();
  v50 = *(v52 - 8);
  __chkstk_darwin();
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SSMetricsDialogEvent) init];
  v6 = sub_1004BBE24();
  [v5 setDialogId:v6];

  v7 = sub_1004BBE24();

  [v5 setDialogType:v7];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 24);
    sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x656C746974;
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    sub_10003C58C(inited);
    swift_setDeallocating();
    sub_100007214(inited + 32, &qword_100601C08, &qword_1004C95C0);
    isa = sub_1004BBC24().super.isa;

    [v5 addPropertiesWithDictionary:isa];
  }

  if (*(a1 + 48))
  {
    v12 = sub_1004BBE24();
  }

  else
  {
    v12 = 0;
  }

  [v5 setMessage:v12];

  v13 = sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
  v14 = swift_initStackObject();
  v56 = xmmword_1004C50A0;
  *(v14 + 16) = xmmword_1004C50A0;
  *(v14 + 32) = 0x436567617373656DLL;
  v16 = *(a1 + 56);
  v15 = *(a1 + 64);
  *(v14 + 72) = &type metadata for String;
  *(v14 + 40) = 0xEB0000000065646FLL;
  *(v14 + 48) = v16;
  *(v14 + 56) = v15;

  sub_10003C58C(v14);
  swift_setDeallocating();
  sub_100007214(v14 + 32, &qword_100601C08, &qword_1004C95C0);
  v17 = sub_1004BBC24().super.isa;

  [v5 addPropertiesWithDictionary:v17];

  v48 = v13;
  v18 = swift_initStackObject();
  *(v18 + 16) = v56;
  *(v18 + 32) = 0x736E6F6974706FLL;
  *(v18 + 40) = 0xE700000000000000;
  v19 = *(a1 + 72);
  *(v18 + 72) = sub_100003ABC(&unk_100603590, &unk_1004C8150);
  *(v18 + 48) = v19;

  sub_10003C58C(v18);
  swift_setDeallocating();
  sub_100007214(v18 + 32, &qword_100601C08, &qword_1004C95C0);
  v20 = sub_1004BBC24().super.isa;

  [v5 addPropertiesWithDictionary:v20];

  v21 = sub_1004BBE24();
  [v5 setResult:v21];

  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = *(a1 + 80);
    v24 = swift_initStackObject();
    *(v24 + 32) = 0x497463656A627573;
    *(v24 + 16) = v56;
    *(v24 + 72) = &type metadata for String;
    *(v24 + 40) = 0xE900000000000044;
    *(v24 + 48) = v23;
    *(v24 + 56) = v22;

    sub_10003C58C(v24);
    swift_setDeallocating();
    sub_100007214(v24 + 32, &qword_100601C08, &qword_1004C95C0);
    v25 = sub_1004BBC24().super.isa;

    [v5 addPropertiesWithDictionary:v25];
  }

  v27 = *(a1 + 96);
  v26 = *(a1 + 104);

  v28 = sub_1004BBE24();
  [v5 setTargetId:v28];

  sub_100003ABC(&qword_100602EB0, &qword_1004CCAE8);
  v29 = swift_allocObject();
  v48 = v5;
  v30 = v29;
  *(v29 + 16) = v56;
  sub_100003ABC(&unk_100606150, &qword_1004CCAD8);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1004C5070;
  strcpy((v31 + 32), "responseTime");
  *(v31 + 45) = 0;
  *(v31 + 46) = -5120;
  v32 = v49;
  sub_1004B6CA4();
  v33 = v51;
  sub_1004B64F4();
  sub_1000DFB3C();
  v34 = v54;
  sub_1004B6CB4();
  (*(v53 + 8))(v33, v34);
  (*(v50 + 8))(v32, v52);
  v35 = v58;
  *(v31 + 48) = v57;
  *(v31 + 56) = v35;
  *(v31 + 64) = 0x79546E6F69746361;
  *(v31 + 72) = 0xEA00000000006570;
  v36 = 27503;
  if (*(a1 + 112))
  {
    v36 = 0x6C436C65636E6163;
  }

  v37 = 0xE200000000000000;
  if (*(a1 + 112))
  {
    v37 = 0xED000064656B6369;
  }

  *(v31 + 80) = v36;
  *(v31 + 88) = v37;
  *(v31 + 96) = 0x6449746567726174;
  *(v31 + 104) = 0xE800000000000000;
  *(v31 + 112) = v27;
  *(v31 + 120) = v26;
  v38 = sub_10003C464(v31);
  swift_setDeallocating();
  sub_100003ABC(&qword_100602EA0, &qword_1004CCAE0);
  swift_arrayDestroy();
  *(v30 + 56) = sub_100003ABC(&qword_100602EC0, &unk_1004CCB10);
  *(v30 + 32) = v38;
  v39 = sub_1004BC284().super.isa;

  v40 = v48;
  [v48 setUserActions:v39];

  v41 = v55;
  v42 = *&v55[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v40;
  v61 = sub_1000DFB94;
  v62 = v43;
  v57 = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_1000D6C80;
  v60 = &unk_1005AF738;
  v44 = _Block_copy(&v57);
  v45 = v42;
  v46 = v41;
  v47 = v40;

  [v47 setStandardPropertiesWith:v45 completionHandler:v44];
  _Block_release(v44);
}

uint64_t sub_1000DE674()
{

  return swift_deallocObject();
}

unint64_t sub_1000DE704()
{
  result = qword_100602ED8;
  if (!qword_100602ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602ED8);
  }

  return result;
}

unint64_t sub_1000DE75C()
{
  result = qword_100602EE0;
  if (!qword_100602EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602EE0);
  }

  return result;
}

unint64_t sub_1000DE7B4()
{
  result = qword_100602EE8;
  if (!qword_100602EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602EE8);
  }

  return result;
}

unint64_t sub_1000DE80C()
{
  result = qword_100602EF0;
  if (!qword_100602EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602EF0);
  }

  return result;
}

unint64_t sub_1000DE864()
{
  result = qword_100602EF8;
  if (!qword_100602EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602EF8);
  }

  return result;
}

unint64_t sub_1000DE8BC()
{
  result = qword_100602F00;
  if (!qword_100602F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602F00);
  }

  return result;
}

unint64_t sub_1000DE914()
{
  result = qword_100602F08;
  if (!qword_100602F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100602F08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsEvent.TargetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsEvent.TargetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000DEADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DEBAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000DEC5C(uint64_t a1, uint64_t a2)
{
  sub_1000DED84(319, a2);
  if (v2 <= 0x3F)
  {
    sub_100029AC4(319, &qword_100602F80, &qword_100602EC0, &unk_1004CCB10);
    if (v3 <= 0x3F)
    {
      sub_100029A78(319, &qword_1006084E0, &type metadata for String);
      if (v4 <= 0x3F)
      {
        sub_100029A78(319, &qword_100602F88, &type metadata for MetricsEvent.Page.DisplayType);
        if (v5 <= 0x3F)
        {
          sub_100029A78(319, &unk_100602F90, &type metadata for Bool);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000DED84(uint64_t a1, uint64_t a2)
{
  if (!qword_100602F78)
  {
    sub_1004B6B04();
    v2 = sub_1004BD174();
    if (!v3)
    {
      atomic_store(v2, &qword_100602F78);
    }
  }
}

uint64_t sub_1000DEE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DEED0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000DEF80(uint64_t a1, uint64_t a2)
{
  sub_1000DED84(319, a2);
  if (v2 <= 0x3F)
  {
    sub_100029AC4(319, &qword_1006015B0, &qword_1006015B8, &qword_1004CCFA0);
    if (v3 <= 0x3F)
    {
      sub_100029A78(319, &qword_1006015A0, &type metadata for MetricsEvent.Click.ActionContext);
      if (v4 <= 0x3F)
      {
        sub_100029A78(319, &unk_100603040, &type metadata for MetricsEvent.Click.ActionDetails);
        if (v5 <= 0x3F)
        {
          sub_100029AC4(319, &qword_1006015C0, &qword_1006015C8, &qword_1004C8D10);
          if (v6 <= 0x3F)
          {
            sub_100029A78(319, &qword_1006084E0, &type metadata for String);
            if (v7 <= 0x3F)
            {
              sub_100029AC4(319, &qword_100602F80, &qword_100602EC0, &unk_1004CCB10);
              if (v8 <= 0x3F)
              {
                sub_100029A78(319, &qword_100602F88, &type metadata for MetricsEvent.Page.DisplayType);
                if (v9 <= 0x3F)
                {
                  sub_100029A78(319, &unk_100602F90, &type metadata for Bool);
                  if (v10 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Click.ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC0)
  {
    goto LABEL_17;
  }

  if (a2 + 64 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 64) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 64;
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

      return (*a1 | (v4 << 8)) - 64;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 64;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x41;
  v8 = v6 - 65;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsEvent.Click.ActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 64 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 64) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC0)
  {
    v4 = 0;
  }

  if (a2 > 0xBF)
  {
    v5 = ((a2 - 192) >> 8) + 1;
    *result = a2 + 64;
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
    *result = a2 + 64;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000DF2E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000DF2FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DF354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_1000DF3A4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000DF3D4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000DF3EC(uint64_t a1)
{
  if ((*(a1 + 25) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 25) & 7;
  }
}

__n128 sub_1000DF408(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1000DF41C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 26))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 25);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000DF464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000DF4AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
    *(result + 24) = 0;
  }

  *(result + 25) = a2;
  return result;
}

__n128 sub_1000DF4DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000DF4F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1000DF540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1000DF598(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1000DF5D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 304))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 168);
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

uint64_t sub_1000DF62C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 0;
    }

    if (a2)
    {
      *(result + 168) = a2;
    }
  }

  return result;
}

__n128 sub_1000DF6E0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000DF70C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1000DF754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000DF7E4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000DF808(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DF850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DF8C4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DF938()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DF978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000136EC;

  return sub_1000DBDD8(a1, v4, v5, v6);
}

uint64_t sub_1000DFA2C()
{

  return swift_deallocObject();
}

uint64_t sub_1000DFA6C()
{

  return swift_deallocObject();
}

unint64_t sub_1000DFB3C()
{
  result = qword_100603120;
  if (!qword_100603120)
  {
    sub_1004B6C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603120);
  }

  return result;
}

uint64_t sub_1000DFCA4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for MetricsPageProperties(0);
  v17 = v16[6];
  v18 = sub_1004B6B04();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = &a9[v16[8]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  result = sub_1000DD4EC(a5, &a9[v17]);
  *&a9[v19] = a6;
  *v20 = a7;
  *(v20 + 1) = a8;
  return result;
}

uint64_t type metadata accessor for MetricsPageProperties(uint64_t a1)
{
  result = qword_100603188;
  if (!qword_100603188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DFE8C(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 innermostModelObject];
LABEL_3:
    v8 = sub_1000DFE8C(v5, v6, v7);

    v9 = 0;
    v10 = 0;
LABEL_8:
    v33 = v8;
LABEL_9:
    sub_10003CC4C(v9, v10);
    return v8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v9 = 0;
    v10 = 0;
    v8 = 3;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v9 = 0;
    v10 = 0;
    v8 = 4;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v33 = 0;
    goto LABEL_9;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v9 = 0;
    v10 = 0;
    v8 = 8;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v9 = 0;
    v10 = 0;
    v8 = 10;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v9 = 0;
    v10 = 0;
    v8 = 11;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v9 = 0;
    v10 = 0;
    v8 = 1;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v9 = 0;
    v10 = 0;
    v8 = 12;
    goto LABEL_8;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v33 = 2;
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = &v33;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1000E6284;
    *(v16 + 24) = v15;
    v31 = sub_1000E6038;
    v32 = v16;
    v26 = v15;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100008224;
    v30 = &unk_1005AFF70;
    v17 = _Block_copy(&aBlock);
    v18 = a1;

    [v14 performWithoutEnforcement:v17];

    _Block_release(v17);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if ((v18 & 1) == 0)
    {
      v9 = sub_1000E6284;
      v8 = v33;
      v10 = v26;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v9 = 0;
      v10 = 0;
      v8 = 6;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v9 = 0;
      v10 = 0;
      v8 = 7;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v9 = 0;
      v10 = 0;
      v8 = 5;
      goto LABEL_8;
    }

    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = [v19 innermostModelObject];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v9 = 0;
        v10 = 0;
        v8 = 17;
        goto LABEL_8;
      }

      v5 = v20;
      goto LABEL_3;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v9 = 0;
      v10 = 0;
      v8 = 19;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v9 = 0;
      v10 = 0;
      v8 = 9;
      goto LABEL_8;
    }
  }

  aBlock = 0;
  v28 = 0xE000000000000000;
  sub_1004BD404(45);

  aBlock = 0xD00000000000002BLL;
  v28 = 0x80000001004FEBB0;
  v21 = sub_10026AA98(&off_1005A3890);
  MPModelObject.humanDescription(including:)(v21);
  v23 = v22;
  v25 = v24;

  v34._countAndFlagsBits = v23;
  v34._object = v25;
  sub_1004BC024(v34);

  result = sub_1004BD624();
  __break(1u);
  return result;
}

unint64_t MetricsContentType.rawValue.getter(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
    case 17:
      result = 0x7473696C79616C70;
      break;
    case 2:
      result = 1735290739;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65506C6169636F73;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 0x776F68537674;
      break;
    case 7:
      result = 0x646F736970457674;
      break;
    case 8:
      result = 0x7265736F706D6F63;
      break;
    case 9:
      result = 0x4173746964657263;
      break;
    case 10:
      result = 0x726F7461727563;
      break;
    case 11:
      result = 0x65726E6567;
      break;
    case 12:
      result = 0x6174536F69646172;
      break;
    case 13:
      result = 0x686372616573;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x6E6F736165537674;
      break;
    case 18:
      result = 0x497972617262696CLL;
      break;
    case 19:
      result = 0x614C64726F636572;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1000E0678()
{
  swift_getObjectType();
  result = 1;
  if (![v0 cachedResponse] || (v1 = swift_getObjCClassFromMetadata(), objc_msgSend(v0, "xpSamplingPercentageCachedResponses"), (objc_msgSend(v1, "shouldReportCachedEventWithSamplingPercentage:") & 1) == 0))
  {
    if ([v0 cachedResponse])
    {
      return 0;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [v0 xpSessionDuration];
    v4 = v3;
    [v0 xpSamplingPercentageUsers];
    if (([ObjCClassFromMetadata shouldCollectTimingDataWithSessionDuration:v4 samplingPercentage:v5] & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

id Gliss.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Double.toMillisecondsInServerTime.getter(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [objc_opt_self() serverTimeFromTimeInterval:a1];
  v5 = [v4 unsignedLongLongValue];

  return v5;
}

uint64_t sub_1000E07F8()
{
  v1 = sub_1004BBE24();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100007214(v7, &qword_100605110, &unk_1004CD280);
    return 0;
  }
}

uint64_t SharePlayTogetherSession.Participant.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MetricsPageProperties.pageURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MetricsPageProperties(0) + 24);

  return sub_1000DD4EC(a1, v3);
}

uint64_t MetricsPageProperties.pageDetails.getter()
{
  type metadata accessor for MetricsPageProperties(0);
}

uint64_t MetricsPageProperties.pageDetails.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPageProperties(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MetricsPageProperties.extRefUrl.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetricsPageProperties(0) + 32));

  return v1;
}

uint64_t MetricsPageProperties.extRefUrl.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricsPageProperties(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1000E0B88(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MetricsContentType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MetricsContentType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_1000E0C10()
{
  v1 = *v0;
  sub_1004BDBA4();
  MetricsContentType.rawValue.getter(v1);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1000E0C74(uint64_t a1)
{
  MetricsContentType.rawValue.getter(*v1);
  sub_1004BBF84();
}

Swift::Int sub_1000E0CC8()
{
  v1 = *v0;
  sub_1004BDBA4();
  MetricsContentType.rawValue.getter(v1);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t sub_1000E0D28@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsContentType_optional *a2@<X8>)
{
  result = _s9MusicCore18MetricsContentTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_1000E0D58@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsContentType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_1000E0D84()
{
  v1 = sub_1004BBE24();
  v2 = [v0 valueForConfigurationKey:v1];

  if (v2)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v14[0] = v15;
  v14[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_100007214(v14, &qword_100605110, &unk_1004CD280);
    return 0;
  }

  sub_100003ABC(&qword_100603228, &qword_1004CD478);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v13 + 16);
  if (v3)
  {
    v4 = v13 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_100004DE4(v4, v14);
      sub_100003ABC(&qword_100602EC8, &qword_1004CD480);
      if (swift_dynamicCast())
      {
        v6 = v15;
        sub_1004BD3A4();
        if (*(v6 + 16) && (v7 = sub_100034774(v14), (v8 & 1) != 0))
        {
          sub_100004DE4(*(v6 + 56) + 32 * v7, &v15);
          sub_10003D090(v14);

          if (swift_dynamicCast())
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_100017CC8(0, *(v5 + 2) + 1, 1, v5);
            }

            v10 = *(v5 + 2);
            v9 = *(v5 + 3);
            if (v10 >= v9 >> 1)
            {
              v5 = sub_100017CC8((v9 > 1), v10 + 1, 1, v5);
            }

            *(v5 + 2) = v10 + 1;
            v11 = &v5[16 * v10];
            *(v11 + 4) = 0x6D614E646C656966;
            *(v11 + 5) = 0xE900000000000065;
          }
        }

        else
        {

          sub_10003D090(v14);
        }
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v5;
}

uint64_t SSMetricsMutableEvent.dictionaryRepresentation.getter()
{
  v1 = [objc_allocWithZone(NSMutableDictionary) init];
  [v0 appendPropertiesToBody:v1];
  v2 = v1;
  sub_1004BBC34();

  return 0;
}

uint64_t sub_1000E10E8(void *a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    v4 = [a1 eventFields];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1004BBC44();

      sub_10029A734(v6);
      v8 = v7;

      if (v8)
      {
        isa = sub_1004BBC24().super.isa;

        [v2 addPropertiesWithDictionary:isa];
      }
    }
  }

  if (qword_1006006E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1004BBE24();
  v11 = sub_1004BBE24();
  [v2 setProperty:v10 forBodyKey:v11];

  if (qword_1006006F0 != -1)
  {
    swift_once();
  }

  v12 = sub_1004BBE24();
  v13 = sub_1004BBE24();
  [v2 setProperty:v12 forBodyKey:v13];

  if (qword_1006006E8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.deviceType > 2u)
  {
    if (static DeviceCapabilities.deviceType == 3)
    {
      goto LABEL_16;
    }
  }

  else if (static DeviceCapabilities.deviceType - 1 >= 2)
  {
    goto LABEL_16;
  }

  v14 = sub_1004BBE24();
  v15 = sub_1004BBE24();
  [v2 setProperty:v14 forBodyKey:v15];

LABEL_16:
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 systemVersion];

  if (!v17)
  {
    sub_1004BBE64();
    v17 = sub_1004BBE24();
  }

  v18 = sub_1004BBE24();
  [v2 setProperty:v17 forBodyKey:v18];

  return a2();
}

uint64_t sub_1000E1428(void *a1, uint64_t (*a2)(void))
{
  v5 = sub_1004BBE24();
  v6 = sub_1004BBE24();
  [v2 setProperty:v5 forBodyKey:v6];

  if (!a1)
  {
    goto LABEL_7;
  }

  v7 = sub_1004BBE24();
  v8 = [a1 valueForConfigurationKey:v7];

  if (v8)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  v9 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    sub_100009178(&v19, *(&v20 + 1));
    v10 = *(*(&v18 + 1) - 8);
    v11 = __chkstk_darwin();
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_1004BD9A4();
    (*(v10 + 8))(v13, v9);
    sub_100004C6C(&v19);
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  v15 = sub_1004BBE24();
  [v2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  return a2();
}

uint64_t sub_1000E1684(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23[0] = a2;
  v4 = sub_1004BA8F4();
  v26 = *(v4 - 8);
  __chkstk_darwin();
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1004BA924();
  v7 = *(v25 - 8);
  __chkstk_darwin();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BA904();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
  v14 = sub_1004BCB84();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v23[0];
  v17 = v23[1];
  v15[2] = a1;
  v15[3] = v17;
  v18 = v24;
  v15[4] = v16;
  v15[5] = v18;
  aBlock[4] = sub_1000E610C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005AFE30;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = v17;

  sub_1004BA914();
  v27 = _swiftEmptyArrayStorage;
  sub_1000E6204(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
  sub_1000E6118();
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v19);

  (*(v26 + 8))(v6, v4);
  (*(v7 + 8))(v9, v25);
}

void sub_1000E1A24(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v31 = a2;
  v7 = _s9MusicCore18DeviceCapabilitiesO9diskUsageSDyAC04DiskF8CategoryOs5Int64VGvgZ_0();
  v32 = sub_10003D498(&off_1005A4B58);
  sub_100003ABC(&qword_100603220, &qword_1004CD470);
  swift_arrayDestroy();
  v29 = a4;
  v30 = a3;
  if (!a1 || (v33 = sub_1000E0D84()) == 0)
  {

    v33 = _swiftEmptyArrayStorage;
  }

  v8 = 0;
  v9 = v32;
  v10 = v32 + 8;
  v11 = 1 << *(v32 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v32[8];
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = v13;
LABEL_13:
    v13 = (v15 - 1) & v15;
    if (v7[2])
    {
      v17 = __clz(__rbit64(v15)) | (v8 << 6);
      v18 = (v9[7] + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = sub_1000347B8(*(v9[6] + v17));
      if (v22)
      {
        v23 = (*(v7[7] + 8 * v21) / 0x100000);
        v34[0] = v20;
        v34[1] = v19;
        __chkstk_darwin();
        v28[2] = v34;

        if (sub_1000DFCA4(sub_1000E617C, v28, v33))
        {
          v23 = floor(v23 / 100.0) * 100.0;
        }

        v24 = objc_allocWithZone(NSNumber);
        v25 = [v24 initWithDouble:{v23, v29}];
        v26 = sub_1004BBE24();

        [v31 setProperty:v25 forBodyKey:v26];

        v9 = v32;
      }
    }
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      v30(v27);
      return;
    }

    v15 = v10[v16];
    ++v8;
    if (v15)
    {
      v8 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1000E1CB0(void *a1, void *a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v8 = a2[2];
  if (!v8)
  {
    return a3(a1);
  }

  v9 = a2;
  v11 = a2[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > v9[3] >> 1)
  {
    v9 = sub_100018548(isUniquelyReferenced_nonNull_native, v8, 1, v9);
    v20 = v9;
  }

  sub_1001326D8(0, 1, 0);
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = a1;
  v13[4] = v9;
  v13[5] = a3;
  v13[6] = a4;
  v19 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000E6368;
  *(v14 + 24) = v13;
  v18[0] = sub_1000E639C;
  v18[1] = v14;
  v15 = a1;

  v16 = v5;
  v11(&v19, v18);
}

uint64_t sub_1000E1E54(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, sub_1000E61D4, v7);
}

uint64_t sub_1000E1F14(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() currentDeviceInfo];
  v7 = [v6 buildVersion];

  v8 = sub_1004BBE24();
  [a4 setProperty:v7 forBodyKey:v8];

  return a2();
}

void sub_1000E20A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005AFAC0;
  v6 = _Block_copy(aBlock);

  v7.receiver = a1;
  v7.super_class = SSMetricsBaseEvent;
  objc_msgSendSuper2(&v7, "setStandardPropertiesWith:completionHandler:", a2, v6);
  _Block_release(v6);
}

void ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_1000E4300;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000E26FC;
  v9[3] = &unk_1005AF878;
  v8 = _Block_copy(v9);

  [v3 enqueueDataRequest:a1 withCompletionHandler:v8];
  _Block_release(v8);
}

uint64_t sub_1000E2364(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4)
{
  v19 = a4;
  v20 = a3;
  v18 = a2;
  v5 = sub_1004BA8F4();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004BA924();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v12 = sub_1004BCB44();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_1000E61FC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005AFEA8;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  sub_1004BA914();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000E6204(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
  sub_1000E6118();
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
  return v20(a1, v18);
}

void sub_1000E2644(void *a1)
{
  if (qword_1005FFE00 == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v3 = a1;
    swift_once();
    a1 = v3;
    if (!v3)
    {
      return;
    }
  }

  v1 = [a1 performanceMetrics];
  if (v1)
  {
    v2 = v1;
    sub_1000DD678(v2, &v4);
    MetricsReportingController.recordLoadUrlEvent(_:)(&v4);
    sub_1000DDAC8(&v4);
  }
}

void sub_1000E26FC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000E2788()
{
  v1 = sub_1004BBE24();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100009130(0, &qword_100603118, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100007214(v7, &qword_100605110, &unk_1004CD280);
    return 0;
  }
}

uint64_t sub_1000E2890()
{
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return 23;
    }
  }

  else
  {
    sub_100007214(&v1, &qword_100605110, &unk_1004CD280);
  }

  return 0;
}

uint64_t sub_1000E296C()
{
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return 28;
    }
  }

  else
  {
    sub_100007214(&v1, &qword_100605110, &unk_1004CD280);
  }

  return 0;
}

uint64_t sub_1000E2A14@<X0>(uint64_t a1@<X8>)
{
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v6);
  if (v7)
  {
    v2 = sub_1004B6CD4();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_100007214(&v6, &qword_100605110, &unk_1004CD280);
    v5 = sub_1004B6CD4();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_1000E2B30(uint64_t a1)
{
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v3 = v9 - v2;
  sub_10000F778(a1, v9 - v2, &qword_100603110, &qword_1004CD2B0);
  v4 = sub_1004B6CD4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100007214(v3, &qword_100603110, &qword_1004CD2B0);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v4;
    v6 = sub_1000133B0(&v10);
    (*(v5 + 32))(v6, v3, v4);
  }

  v9[0] = 0xD00000000000001CLL;
  v9[1] = 0x80000001004FEB90;
  v7 = sub_10000E7F4();
  NSUserDefaults.subscript.setter(&v10, v9, &type metadata for String, v7);
  return sub_100007214(a1, &qword_100603110, &qword_1004CD2B0);
}

uint64_t sub_1000E2CC4()
{
  v1 = sub_1004BBE24();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100009130(0, &qword_100603118, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100007214(v7, &qword_100605110, &unk_1004CD280);
    return 0;
  }
}

id sub_1000E3008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = v3;
  v5.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent(a1, a2, a3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_1000E307C()
{
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return 23;
    }
  }

  else
  {
    sub_100007214(&v1, &qword_100605110, &unk_1004CD280);
  }

  return 0;
}

uint64_t sub_1000E3124@<X0>(uint64_t a1@<X8>)
{
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v6);
  if (v7)
  {
    v2 = sub_1004B6CD4();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_100007214(&v6, &qword_100605110, &unk_1004CD280);
    v5 = sub_1004B6CD4();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_1000E3240(uint64_t a1)
{
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v3 = v9 - v2;
  sub_10000F778(a1, v9 - v2, &qword_100603110, &qword_1004CD2B0);
  v4 = sub_1004B6CD4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100007214(v3, &qword_100603110, &qword_1004CD2B0);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v4;
    v6 = sub_1000133B0(&v10);
    (*(v5 + 32))(v6, v3, v4);
  }

  v9[0] = 0xD000000000000026;
  v9[1] = 0x80000001004FEB60;
  v7 = sub_10000E7F4();
  NSUserDefaults.subscript.setter(&v10, v9, &type metadata for String, v7);
  return sub_100007214(a1, &qword_100603110, &qword_1004CD2B0);
}

void sub_1000E3408(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, id, id, void *, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v14 = a1;
  v13 = a3;
  a7(a3, v14, v14, a3, a6, v12);
}

id DeviceCapabilitiesObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id Music_SSMetricsPageRenderEvent.__allocating_init(bodyDictionary:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  isa = sub_1004BBC24().super.isa;

  v4 = [v2 initWithBodyDictionary:isa];

  return v4;
}

id Music_SSMetricsPageRenderEvent.init(bodyDictionary:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  isa = sub_1004BBC24().super.isa;

  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithBodyDictionary:", isa);

  return v4;
}

uint64_t sub_1000E3704(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1000346D4(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1004BD9C4();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E38A8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1004BD9C4() & 1;
  }
}

BOOL _s9MusicCore21MetricsPagePropertiesV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = sub_100003ABC(&qword_100603230, qword_1004CD488);
  __chkstk_darwin();
  v12 = &v31 - v11;
  if (*a1 != *a2 && (sub_1004BD9C4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1004BD9C4() & 1) == 0)
  {
    return 0;
  }

  v31 = v7;
  v32 = type metadata accessor for MetricsPageProperties(0);
  v13 = *(v32 + 24);
  v14 = *(v10 + 48);
  sub_10000F778(a1 + v13, v12, &qword_100600DE0, &unk_1004C66D0);
  sub_10000F778(a2 + v13, &v12[v14], &qword_100600DE0, &unk_1004C66D0);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      sub_100007214(v12, &qword_100600DE0, &unk_1004C66D0);
      goto LABEL_14;
    }

LABEL_11:
    sub_100007214(v12, &qword_100603230, qword_1004CD488);
    return 0;
  }

  sub_10000F778(v12, v9, &qword_100600DE0, &unk_1004C66D0);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_11;
  }

  v17 = &v12[v14];
  v18 = v31;
  (*(v5 + 32))(v31, v17, v4);
  sub_1000E6204(qword_100603238, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v19 = sub_1004BBD84();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v9, v4);
  sub_100007214(v12, &qword_100600DE0, &unk_1004C66D0);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v21 = v32;
  v22 = *(v32 + 28);
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    v25 = sub_1000E3704(v23, v24);

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v26 = *(v21 + 32);
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    return v30 && (*v27 == *v29 && v28 == v30 || (sub_1004BD9C4() & 1) != 0);
  }

  return !v30;
}

void sub_1000E3D1C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_1000E307C();

  v14 = sub_1004BDA54();
  v15 = sub_1004BBE24();
  [a2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  *&aBlock = 0x646E655265676170;
  *(&aBlock + 1) = 0xEA00000000007265;
  v16 = sub_1004BDA54();
  v17 = sub_1004BBE24();
  [a2 setProperty:v16 forBodyKey:v17];
  swift_unknownObjectRelease();

  if (!a1)
  {
    aBlock = 0u;
    v46 = 0u;
LABEL_14:
    sub_100007214(&aBlock, &qword_100605110, &unk_1004CD280);
    goto LABEL_15;
  }

  v18 = sub_1004BBE24();
  v19 = [a1 valueForConfigurationKey:v18];

  if (v19)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  aBlock = v42;
  v46 = v43;
  if (!*(&v43 + 1))
  {
    goto LABEL_14;
  }

  sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
  if (swift_dynamicCast())
  {
    v20 = *(v42 + 16);
    if (v20)
    {
      v21 = sub_1000346D4(0xD000000000000021, 0x80000001004FEAF0);
      if ((v22 & 1) == 0)
      {
        v20 = 0;
        v40 = 0;
        if (v13)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

      sub_100004DE4(*(v42 + 56) + 32 * v21, &aBlock);
      sub_100009130(0, &qword_100603118, NSNumber_ptr);
      v23 = swift_dynamicCast();
      v20 = v42;
      if (!v23)
      {
        v20 = 0;
      }
    }

    v40 = v20;
    if (v13)
    {
LABEL_13:
      sub_100009130(0, &qword_100603118, NSNumber_ptr);
      v24.super.super.isa = sub_1004BCF74(1.0).super.super.isa;
      goto LABEL_21;
    }

LABEL_18:
    if (v20)
    {
      v24.super.super.isa = v20;
    }

    else
    {
      v24.super.super.isa = 0;
    }

LABEL_21:
    v29 = v24.super.super.isa;
    v30 = sub_1004BBE24();
    [a2 setProperty:v29 forBodyKey:v30];

    if (*(v42 + 16) && (v31 = sub_1000346D4(0xD000000000000019, 0x80000001004FEB20), (v32 & 1) != 0))
    {
      sub_100004DE4(*(v42 + 56) + 32 * v31, &aBlock);

      sub_100009130(0, &qword_100603118, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v33 = v42;
LABEL_27:
        v34 = v33;
        v35 = sub_1004BBE24();
        [a2 setProperty:v34 forBodyKey:v35];

        v47 = a5;
        v48 = a6;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v46 = sub_1000D6C80;
        *(&v46 + 1) = &unk_1005AFEF8;
        v36 = _Block_copy(&aBlock);

        v41.receiver = a3;
        v41.super_class = type metadata accessor for Music_SSMetricsPageRenderEvent(v37, v38, v39);
        objc_msgSendSuper2(&v41, "setStandardPropertiesWith:completionHandler:", a4, v36);
        _Block_release(v36);

        return;
      }
    }

    else
    {
    }

    v33 = 0;
    goto LABEL_27;
  }

LABEL_15:
  v47 = a5;
  v48 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v46 = sub_1000D6C80;
  *(&v46 + 1) = &unk_1005AFED0;
  v25 = _Block_copy(&aBlock);

  v44.receiver = a3;
  v44.super_class = type metadata accessor for Music_SSMetricsPageRenderEvent(v26, v27, v28);
  objc_msgSendSuper2(&v44, "setStandardPropertiesWith:completionHandler:", a4, v25);
  _Block_release(v25);
}

unint64_t _s9MusicCore18MetricsContentTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004BDA14();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000E42C8()
{

  return swift_deallocObject();
}

uint64_t sub_1000E4308(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000E4324()
{
  result = qword_100603128;
  if (!qword_100603128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603128);
  }

  return result;
}

uint64_t sub_1000E438C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000E445C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000E450C(uint64_t a1, uint64_t a2)
{
  sub_1000DED84(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1000E45B8(319);
    if (v3 <= 0x3F)
    {
      sub_1000E461C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000E45B8(uint64_t a1)
{
  if (!qword_100602F80)
  {
    sub_100003B68(&qword_100602EC0, &unk_1004CCB10);
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_100602F80);
    }
  }
}

void sub_1000E461C()
{
  if (!qword_1006084E0)
  {
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_1006084E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricsContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1000E480C(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultIdentityStore];
  v6 = [objc_opt_self() activeAccount];
  v20[0] = 0;
  v7 = [v5 DSIDForUserIdentity:v6 outError:v20];

  if (v7)
  {
    v8 = v20[0];
    [v3 setAccountIdentifier:v7];
    v9 = [v7 longLongValue] != 0;
  }

  else
  {
    v10 = v20[0];
    sub_1004B69B4();

    swift_willThrow();

    [v3 setAccountIdentifier:0];
    v9 = 1;
  }

  v11 = [objc_allocWithZone(NSNumber) initWithBool:v9];
  v12 = sub_1004BBE24();
  [v3 setProperty:v11 forBodyKey:v12];

  v13 = [objc_opt_self() sharedController];
  v14 = [v13 musicSubscriptionStatus];

  if (v14)
  {
    v15 = [v14 statusType];
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_13;
      }

      [v14 reasonType];
    }

    else if (v15)
    {
      if (v15 != 1)
      {
        do
        {
          v20[0] = 0;
          v20[1] = 0xE000000000000000;
          sub_1004BD404(24);
          a1 = 0xD000000000000013;
          v21._object = 0x80000001004FEA90;
          v21._countAndFlagsBits = 0xD000000000000013;
          sub_1004BC024(v21);
          [v14 statusType];
          v22._countAndFlagsBits = 0xD00000000000001DLL;
          v22._object = 0x80000001004FEAB0;
          sub_1004BC024(v22);
          v23._countAndFlagsBits = 32;
          v23._object = 0xE100000000000000;
          sub_1004BC024(v23);
          [v14 statusType];
          type metadata accessor for ICMusicSubscriptionStatusType(0);
          sub_1004BD5C4();
          v15 = sub_1004BD624();
          __break(1u);
LABEL_13:
          ;
        }

        while (v15 != 3);
      }
    }

    else
    {
    }
  }

  v16 = sub_1004BBE24();

  v17 = sub_1004BBE24();
  [v3 setProperty:v16 forBodyKey:v17];

  a1(v18, v19);
}

uint64_t sub_1000E4C30(uint64_t (*a1)(void))
{
  v2 = v1;
  swift_getObjectType();
  v4 = [swift_getObjCClassFromMetadata() Topic];
  [v2 setTopic:v4];

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 infoDictionary];

  if (!v6)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = sub_1004BBC44();

  if (!v7)
  {
LABEL_8:
    v11 = 1;
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_10;
  }

  v8 = sub_1000346D4(0xD000000000000012, 0x80000001004FEA40);
  if ((v9 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_100004DE4(*(v7 + 56) + 32 * v8, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = sub_1004BBE24();

  v11 = 0;
LABEL_12:
  [v2 setApplicationIdentifier:v10];

  if (v11)
  {
    goto LABEL_18;
  }

  if (!*(v7 + 16) || (v12 = sub_1000346D4(0xD00000000000001ALL, 0x80000001004FEA20), (v13 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_100004DE4(*(v7 + 56) + 32 * v12, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v14 = sub_1004BBE24();

LABEL_19:
  v15 = sub_1004BBE24();
  [v2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  return a1();
}

void sub_1000E4EC4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() currentConnectionTypeHeader];
  if (!v5)
  {
    sub_1004BBE64();
    v5 = sub_1004BBE24();
  }

  [v3 setConnection:v5];

  v6 = objc_allocWithZone(ICStoreRequestContext);
  v10[4] = CFRange.init(_:);
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10011FE68;
  v10[3] = &unk_1005AFDE0;
  v7 = _Block_copy(v10);
  v8 = [v6 initWithBlock:v7];
  _Block_release(v7);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v9 = [v8 userAgent];
    if (!v9)
    {
      sub_1004BBE64();
      v9 = sub_1004BBE24();
    }

    [v3 setUserAgent:v9];

    a1();
  }
}

uint64_t sub_1000E507C(void *a1, void *a2, void *a3, void (**a4)(void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = a2[2];
  if (v9)
  {
    v10 = a2[4];
    _Block_copy(a4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = a2;
    if (!isUniquelyReferenced_nonNull_native || (v9 - 1) > a2[3] >> 1)
    {
      a2 = sub_100018548(isUniquelyReferenced_nonNull_native, v9, 1, a2);
      v19 = a2;
    }

    sub_1001326D8(0, 1, 0);
    v12 = swift_allocObject();
    v12[2] = a3;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = sub_1000E6370;
    v12[6] = v8;
    v18 = a1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1000E6034;
    *(v13 + 24) = v12;
    v17[0] = sub_1000E6038;
    v17[1] = v13;
    v14 = a1;

    v15 = a3;
    v10(&v18, v17);
  }

  else
  {
    _Block_copy(a4);
    a4[2](a4);
  }
}

uint64_t sub_1000E5244(void *a1, void *a2, void (**a3)(void))
{
  sub_100003ABC(&qword_100601248, &unk_1004CD460);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C5110;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000E5EC0;
  *(v8 + 24) = v7;
  *(v6 + 32) = sub_1000E5EE4;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000E5EEC;
  *(v10 + 24) = v9;
  *(v6 + 48) = sub_1000E6398;
  *(v6 + 56) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000E5F10;
  *(v12 + 24) = v11;
  *(v6 + 64) = sub_1000E6398;
  *(v6 + 72) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000E5F3C;
  *(v14 + 24) = v13;
  *(v6 + 80) = sub_1000E6398;
  *(v6 + 88) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000E5FA0;
  *(v16 + 24) = v15;
  *(v6 + 96) = sub_1000E6398;
  *(v6 + 104) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1000E5FC4;
  *(v18 + 24) = v17;
  *(v6 + 112) = sub_1000E6398;
  *(v6 + 120) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1000E5FCC;
  *(v20 + 24) = v19;
  *(v6 + 128) = sub_1000E6398;
  *(v6 + 136) = v20;
  sub_1000E507C(a1, v6, a2, a3);
}

uint64_t sub_1000E5558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 windowHeight];
  v7 = sub_1004BBE24();
  [v3 setProperty:v6 forBodyKey:v7];

  v8 = [v3 windowWidth];
  v9 = sub_1004BBE24();
  [v3 setProperty:v8 forBodyKey:v9];

  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1000081FC, v10);
}

void sub_1000E56BC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_1000E2890();

  [a2 setXPSamplingForced:v13 & 1];
  if (!a1)
  {
    aBlock = 0u;
    v27 = 0u;
LABEL_20:
    sub_100007214(&aBlock, &qword_100605110, &unk_1004CD280);
    goto LABEL_21;
  }

  v14 = sub_1004BBE24();
  v15 = [a1 valueForConfigurationKey:v14];

  if (v15)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  aBlock = v23;
  v27 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_20;
  }

  sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
  if (swift_dynamicCast())
  {
    if (*(v23 + 16))
    {
      v16 = sub_1000346D4(0xD000000000000017, 0x80000001004FE930);
      if (v17)
      {
        sub_100004DE4(*(v23 + 56) + 32 * v16, &aBlock);
        if (swift_dynamicCast())
        {
          [a2 setXPSamplingPercentageUsers:*&v23];
        }
      }
    }

    if (*(v23 + 16))
    {
      v18 = sub_1000346D4(0x446E6F6973736573, 0xEF6E6F6974617275);
      if (v19)
      {
        sub_100004DE4(*(v23 + 56) + 32 * v18, &aBlock);
        if (swift_dynamicCast())
        {
          [a2 setXPSessionDuration:*&v23];
        }
      }
    }

    if (*(v23 + 16) && (v20 = sub_1000346D4(0xD000000000000021, 0x80000001004FE950), (v21 & 1) != 0))
    {
      sub_100004DE4(*(v23 + 56) + 32 * v20, &aBlock);

      if (swift_dynamicCast())
      {
        [a2 setXPSamplingPercentageCachedResponses:*&v23];
      }
    }

    else
    {
    }
  }

LABEL_21:
  if ([a2 xpSamplingForced])
  {
    [a2 setXPSamplingPercentageUsers:1.0];
    [a2 setXPSamplingPercentageCachedResponses:1.0];
  }

  v28 = a5;
  v29 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_1000D6C80;
  *(&v27 + 1) = &unk_1005AFA20;
  v22 = _Block_copy(&aBlock);

  v25.receiver = a3;
  v25.super_class = SSMetricsLoadURLEvent;
  objc_msgSendSuper2(&v25, "setStandardPropertiesWith:completionHandler:", a4, v22);
  _Block_release(v22);
}

void sub_1000E5A6C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_1000E296C();

  isa = sub_1004BC3D4().super.super.isa;
  v15 = sub_1004BBE24();
  [a2 setProperty:isa forBodyKey:v15];

  if (!a1)
  {
    aBlock = 0u;
    v38 = 0u;
LABEL_10:
    sub_100007214(&aBlock, &qword_100605110, &unk_1004CD280);
    goto LABEL_25;
  }

  v16 = sub_1004BBE24();
  v17 = [a1 valueForConfigurationKey:v16];

  if (v17)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  aBlock = v34;
  v38 = v35;
  if (!*(&v35 + 1))
  {
    goto LABEL_10;
  }

  sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
  if (!swift_dynamicCast())
  {
    goto LABEL_25;
  }

  if (v13)
  {
    *(&v38 + 1) = &type metadata for Double;
    *&aBlock = 0x3FF0000000000000;
    goto LABEL_14;
  }

  if (*(v34 + 16))
  {
    v18 = sub_1000346D4(0xD000000000000026, 0x80000001004FE880);
    if (v19)
    {
      sub_100004DE4(*(v34 + 56) + 32 * v18, &aBlock);
LABEL_14:
      sub_100009130(0, &qword_100603118, NSNumber_ptr);
      v20 = swift_dynamicCast();
      v21 = v34;
      if (!v20)
      {
        v21 = 0;
      }

      goto LABEL_18;
    }
  }

  aBlock = 0u;
  v38 = 0u;
  sub_100007214(&aBlock, &qword_100605110, &unk_1004CD280);
  v21 = 0;
LABEL_18:
  v22 = v21;
  v23 = sub_1004BBE24();
  [a2 setProperty:v22 forBodyKey:v23];

  if (*(v34 + 16) && (v24 = sub_1000346D4(0xD00000000000001ELL, 0x80000001004FE8B0), (v25 & 1) != 0))
  {
    sub_100004DE4(*(v34 + 56) + 32 * v24, &aBlock);

    sub_100009130(0, &qword_100603118, NSNumber_ptr);
    v26 = swift_dynamicCast();
    v27 = v34;
    if (!v26)
    {
      v27 = 0;
    }
  }

  else
  {

    v27 = 0;
  }

  v28 = v27;
  v29 = sub_1004BBE24();
  [a2 setProperty:v28 forBodyKey:v29];

LABEL_25:
  v39 = a5;
  v40 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v38 = sub_1000D6C80;
  *(&v38 + 1) = &unk_1005AF9D0;
  v30 = _Block_copy(&aBlock);

  v36.receiver = a3;
  v36.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent(v31, v32, v33);
  objc_msgSendSuper2(&v36, "setStandardPropertiesWith:completionHandler:", a4, v30);
  _Block_release(v30);
}

uint64_t sub_1000E5F68()
{

  return swift_deallocObject();
}

uint64_t sub_1000E5FF8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000E6040()
{

  return swift_deallocObject();
}

uint64_t sub_1000E60C4()
{

  return swift_deallocObject();
}

unint64_t sub_1000E6118()
{
  result = qword_100606F50;
  if (!qword_100606F50)
  {
    sub_100003B68(&unk_100604C00, &qword_1004CDBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100606F50);
  }

  return result;
}

uint64_t sub_1000E617C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1004BD9C4() & 1;
  }
}

uint64_t sub_1000E6204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E624C()
{

  return swift_deallocObject();
}

id sub_1000E6284()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) cloudStatus];
  if (result == 5 || result == 3)
  {
    *v1 = 18;
  }

  return result;
}

void static MusicCoreAnalytics.sendEvent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin();
  v51 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v41[-v8];
  v50 = v10;
  __chkstk_darwin();
  v12 = &v41[-v11];
  if (qword_1005FFE08 != -1)
  {
    swift_once();
  }

  v13 = sub_1004B80B4();
  sub_100007084(v13, qword_100617338);
  v14 = *(v6 + 16);
  v14(v12, a1, a2);
  v48 = v14;
  v49 = a1;
  v14(v9, a1, a2);
  v15 = sub_1004B8094();
  v16 = sub_1004BC9A4();
  v47 = v15;
  v17 = (a3 + 8);
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v46 = v18;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v18 = 136315395;
    v45 = *(a3 + 8);
    v43 = v17 & 0xFFFFFFFFFFFFLL | 0x60A1000000000000;
    v19 = v45(a2, a3);
    v21 = v20;
    v42 = v16;
    v22 = *(v6 + 8);
    v22(v12, a2);
    v23 = sub_100012018(v19, v21, aBlock);

    v24 = v46;
    *(v46 + 1) = v23;
    *(v24 + 6) = 2081;
    (*(a3 + 16))(a2, a3);
    v22(v9, a2);
    sub_1000E6B44(0, v25, v26);
    v27 = sub_1004BBC54();
    v29 = v28;

    v30 = sub_100012018(v27, v29, aBlock);

    v31 = v46;
    *(v46 + 14) = v30;
    v32 = v47;
    _os_log_impl(&_mh_execute_header, v47, v42, "Send analytics event: %s, payload: %{private}s", v31, 0x16u);
    swift_arrayDestroy();

    v33 = v45;
  }

  else
  {
    v34 = *(v6 + 8);
    v34(v9, a2);

    v34(v12, a2);
    v33 = *v17;
  }

  v35 = v49;
  v33(a2, a3);
  v36 = v51;
  v48(v51, v35, a2);
  v37 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = a2;
  *(v38 + 24) = a3;
  (*(v6 + 32))(v38 + v37, v36, a2);
  v39 = sub_1004BBE24();

  aBlock[4] = sub_1000E6AC4;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E6940;
  aBlock[3] = &unk_1005AFFC0;
  v40 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v40);
}

void static MusicCoreAnalytics.sendEvent(eventName:eventPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1004BBE24();
  v8[4] = a3;
  v8[5] = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000E6940;
  v8[3] = &unk_1005AFFE8;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

Class sub_1000E6940(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1000E6B44(0, v4, v5);
    v6.super.isa = sub_1004BBC24().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

uint64_t sub_1000E69CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_100617338);
  sub_100007084(v2, qword_100617338);
  return sub_1004B80A4();
}

uint64_t sub_1000E6A44()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1000E6B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000E6B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100604490;
  if (!qword_100604490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100604490);
  }

  return result;
}

void *MetricsEvent.PageRender.performanceMetrics.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t MetricsEvent.PageRender.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = sub_1004BD174();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t MetricsEvent.PageRender.request.setter(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = sub_1004BD174();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1000E6F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MetricsEvent.PageRender.__allocating_init(pageProperties:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MetricsEvent.PageRender.init(pageProperties:)(a1);
  return v2;
}

uint64_t *MetricsEvent.PageRender.init(pageProperties:)(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 0;
  v1[3] = 0;
  *(v1 + 32) = 1;
  v1[5] = 0;
  *(v1 + 48) = 1;
  v1[7] = 0;
  *(v1 + 64) = 1;
  v1[9] = 0;
  *(v1 + 80) = 1;
  v1[11] = 0;
  *(v1 + 96) = 1;
  v1[13] = 0;
  *(v1 + 112) = 1;
  v1[15] = 0;
  *(v1 + 128) = 1;
  (*(*(*(v3 + 80) - 8) + 56))(v1 + *(v3 + 152), 1, 1);
  *(v1 + *(*v1 + 168)) = 0;
  sub_1000E70FC(a1, v1 + *(*v1 + 160));
  return v1;
}

uint64_t sub_1000E70FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *MetricsEvent.PageRender.updatePerformanceMetrics(_:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  *(v3 + 16) = a1;
  v8 = a1;

  result = *(v3 + 16);
  if (result)
  {
    [result responseEndTime];
    v11 = v10;
    result = swift_beginAccess();
    if ((*(v3 + 32) & 1) == 0)
    {
      swift_beginAccess();
      *(v3 + 72) = v11;
      *(v3 + 80) = 0;
      return sub_1000E7228(a2, a3, v12);
    }
  }

  return result;
}

uint64_t sub_1000E7228(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + 168);
  if ((*(v3 + v4) & 1) == 0)
  {
    v6 = result;
    *(v3 + v4) = 1;
    sub_10009F080(0, a2, a3);
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v6;
    v7[4] = a2;

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1000E7CE8, v7);
  }

  return result;
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageAppear()()
{
  v1 = v0;
  v2 = sub_1004B6CD4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 112) == 1)
  {
    sub_1004B6CC4();
    sub_1004B6C84();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 104) = v7;
    *(v1 + 112) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageRequest()()
{
  v1 = v0;
  v2 = sub_1004B6CD4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 128) == 1)
  {
    sub_1004B6CC4();
    sub_1004B6C84();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 120) = v7;
    *(v1 + 128) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageAsUserInteractive()()
{
  v1 = v0;
  v2 = sub_1004B6CD4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 48) == 1)
  {
    sub_1004B6CC4();
    sub_1004B6C84();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 40) = v7;
    *(v1 + 48) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markResourceRequestStartTime()()
{
  v1 = v0;
  v2 = sub_1004B6CD4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 64) == 1)
  {
    sub_1004B6CC4();
    sub_1004B6C84();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 56) = v7;
    *(v1 + 64) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markOnScreenResourcesAppearEndTime(with:)(Swift::String_optional with)
{
  v2 = v1;
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v5 = sub_1004B6CD4();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 32) == 1)
  {
    sub_1004B6CC4();
    sub_1004B6C84();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *(v2 + 24) = v10;
    *(v2 + 32) = 0;
    swift_beginAccess();
    v11 = *(v2 + 16);
    if (v11)
    {
      [v11 responseEndTime];
      swift_beginAccess();
      *(v2 + 72) = v10;
      *(v2 + 80) = 0;
      sub_1000E7228(countAndFlagsBits, object, v12);
    }
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageDisappearanceAndRecordIfNecessary(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = sub_1004B6CD4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(v1 + 80) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 96) == 1)
    {
      sub_1004B6CC4();
      sub_1004B6C84();
      v10 = v9;
      (*(v5 + 8))(v7, v4);
      *(v1 + 88) = v10;
      *(v1 + 96) = 0;
    }
  }

  sub_1000E7228(countAndFlagsBits, object, v8);
}

void sub_1000E79B4(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1005FFE00 != -1)
  {
    v3 = a1;
    v4 = a2;
    v5 = a3;
    swift_once();
    a1 = v3;
    a2 = v4;
    a3 = v5;
  }

  MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:)(a1, a2, a3);
}

id *MetricsEvent.PageRender.deinit()
{
  v1 = *(*v0 + 19);
  v2 = sub_1004BD174();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000E7AE4(v0 + *(*v0 + 20));
  return v0;
}

uint64_t sub_1000E7AE4(uint64_t a1)
{
  v2 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsEvent.PageRender.__deallocating_deinit()
{
  MetricsEvent.PageRender.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E7B98(uint64_t a1)
{
  result = sub_1004BD174();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MetricsPageProperties(319);
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000E7CA8()
{

  return swift_deallocObject();
}

__n128 static ApplicationCapabilities.shared.getter@<Q0>(_OWORD *a1@<X8>)
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.Controller.shared;
}

__n128 ApplicationCapabilities.Controller.capabilities.getter@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

unint64_t sub_1000E7F08(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x636973756DLL;
    v7 = 0xD000000000000013;
    v8 = 0x6C6169636F73;
    if (a1 != 3)
    {
      v8 = 0x6F69646172;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x646956636973756DLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0xD000000000000011;
    if (a1 != 9)
    {
      v2 = 0x6C62616E45696C6DLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x73656E757469;
    v4 = 0x74634170756F7267;
    if (a1 != 6)
    {
      v4 = 0x746963696C707865;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_1000E8084()
{
  sub_1004BDBA4();
  ApplicationCapabilities.Service.description.getter();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1000E80E8(uint64_t a1)
{
  ApplicationCapabilities.Service.description.getter();
  sub_1004BBF84();
}

Swift::Int sub_1000E813C()
{
  sub_1004BDBA4();
  ApplicationCapabilities.Service.description.getter();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t sub_1000E819C@<X0>(Swift::String *a1@<X0>, MusicCore::ApplicationCapabilities::Service_optional *a2@<X8>)
{
  result = _s9MusicCore23ApplicationCapabilitiesV7ServiceO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1000E81CC@<X0>(uint64_t *a1@<X8>)
{
  result = ApplicationCapabilities.Service.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000E81F8()
{
  v0 = ApplicationCapabilities.Service.description.getter();
  v2 = v1;
  if (v0 == ApplicationCapabilities.Service.description.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1004BD9C4();
  }

  return v5 & 1;
}

Swift::Void __swiftcall ApplicationCapabilities.setServiceEnabled(_:service:)(Swift::Bool _, MusicCore::ApplicationCapabilities::Service service)
{
  v3 = [objc_opt_self() sharedConnection];
  if (!v3)
  {
    __break(1u);
    return;
  }

  if (service > MusicCore_ApplicationCapabilities_Service_itunes)
  {
    if (service <= MusicCore_ApplicationCapabilities_Service_accountModification)
    {
      v5 = v3;
      goto LABEL_14;
    }
  }

  else if (service > MusicCore_ApplicationCapabilities_Service_subscriptionRelated)
  {
    if (service == MusicCore_ApplicationCapabilities_Service_social)
    {
      v5 = v3;
      goto LABEL_14;
    }

    if (service != MusicCore_ApplicationCapabilities_Service_radio)
    {
      v5 = v3;
      goto LABEL_14;
    }
  }

  else
  {
    if (service == MusicCore_ApplicationCapabilities_Service_music)
    {
      v5 = v3;
      goto LABEL_14;
    }

    if (service == MusicCore_ApplicationCapabilities_Service_musicVideos)
    {
      v5 = v3;
LABEL_14:
      sub_1004BBE64();
      v4 = sub_1004BBE24();

      [v5 setBoolValue:1 forSetting:v4];

      v3 = v5;
    }
  }
}

uint64_t ApplicationCapabilities.ratingWarning.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t ApplicationCapabilities.RatingWarning.description.getter()
{
  strcpy(v5, "RatingWarning(");
  HIBYTE(v5[1]) = -18;
  *&v7 = 0x6C6F687365726874;
  *(&v7 + 1) = 0xEA00000000003D64;
  v8._countAndFlagsBits = sub_1004BD934();
  sub_1004BC024(v8);

  v9._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  sub_1004BC024(v9);
  v10._countAndFlagsBits = 0x6C6F687365726874;
  v10._object = 0xEA00000000003D64;
  sub_1004BC024(v10);

  v6._countAndFlagsBits = 0x3D656C746974;
  v6._object = 0xE600000000000000;
  v7 = *(v0 + 8);
  v4 = *(v0 + 8);
  sub_10000F778(&v7, &v3, &unk_100606160, &qword_1004CAC60);
  sub_100003ABC(&unk_100606160, &qword_1004CAC60);
  v11._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v11);

  v12._countAndFlagsBits = 10;
  v12._object = 0xE100000000000000;
  sub_1004BC024(v12);
  sub_1004BC024(v6);

  v4._countAndFlagsBits = 0x3D6567617373656DLL;
  v4._object = 0xE800000000000000;
  v6 = *(v0 + 24);
  v3 = *(v0 + 24);
  sub_10000F778(&v6, &v2, &unk_100606160, &qword_1004CAC60);
  v13._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v13);

  v14._countAndFlagsBits = 10;
  v14._object = 0xE100000000000000;
  sub_1004BC024(v14);
  sub_1004BC024(v4);

  return v5[0];
}

uint64_t sub_1000E8614(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s9MusicCore23ApplicationCapabilitiesV13RatingWarningV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

void *ApplicationCapabilities.subscriptionStatus.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t ApplicationCapabilities.SubscriptionState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6564696365646E75;
  v2 = 0x6269726373627573;
  if (a1 != 2)
  {
    v2 = 0x6275536563696F76;
  }

  if (a1)
  {
    v1 = 0x63697373616C63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1000E8728()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1000E8800(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_1000E88C4()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t sub_1000E8998@<X0>(Swift::String *a1@<X0>, MusicCore::ApplicationCapabilities::SubscriptionState_optional *a2@<X8>)
{
  result = _s9MusicCore23ApplicationCapabilitiesV17SubscriptionStateO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1000E89C8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E75;
  v4 = 0xEA00000000007265;
  v5 = 0x6269726373627573;
  if (*v1 != 2)
  {
    v5 = 0x6275536563696F76;
    v4 = 0xEF72656269726373;
  }

  if (*v1)
  {
    v3 = 0x63697373616C63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1000E8A70(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_10007DAEC(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t ApplicationCapabilities.Tabs.description.getter(uint64_t a1, char a2, uint64_t a3)
{
  v5._countAndFlagsBits = sub_1004BC2B4();
  v5._object = v3;
  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  sub_1004BC024(v6);
  sub_1004BC024(v5);

  sub_1004BD404(19);

  sub_100003ABC(&qword_100603300, &qword_1004CD5D0);
  v7._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v7);

  v8._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  sub_1004BC024(v8);
  v9._countAndFlagsBits = 0xD000000000000010;
  v9._object = 0x80000001004FEC80;
  sub_1004BC024(v9);

  sub_1004BD404(21);

  v10._countAndFlagsBits = sub_1004BC2B4();
  sub_1004BC024(v10);

  v11._countAndFlagsBits = 10;
  v11._object = 0xE100000000000000;
  sub_1004BC024(v11);
  v12._countAndFlagsBits = 0xD000000000000012;
  v12._object = 0x80000001004FECA0;
  sub_1004BC024(v12);

  return 0x2873626154;
}

uint64_t static ApplicationCapabilities.Tabs.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if ((sub_1000E90C0(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if (a2 == 7)
  {
    if (a5 != 7)
    {
      return 0;
    }
  }

  else if (a5 == 7 || (sub_1000819C8() & 1) == 0)
  {
    return 0;
  }

  return sub_1000E9340(a3, a6);
}

uint64_t sub_1000E8D38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = 0xD000000000000029;
      v7 = "orites";
      switch(*v3)
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
      switch(*v4)
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

      if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
      {
      }

      else
      {
        v5 = sub_1004BD9C4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1000E90C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0x7473696C79616C70;
      if (v6 == 5)
      {
        v8 = 0x736F65646976;
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE900000000000073;
      }

      v10 = 0x686372616573;
      if (v6 == 3)
      {
        v10 = 0x6F69646172;
      }

      v11 = 0xE500000000000000;
      if (v6 != 3)
      {
        v11 = 0xE600000000000000;
      }

      if (*v3 <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      v12 = 0xE900000000000077;
      v13 = 0x6F4E6E657473696CLL;
      if (v6 != 1)
      {
        v13 = 0x6573776F7262;
        v12 = 0xE600000000000000;
      }

      if (!*v3)
      {
        v13 = 0x7972617262696CLL;
        v12 = 0xE700000000000000;
      }

      if (*v3 <= 2u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v8;
      }

      if (*v3 <= 2u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v9;
      }

      if (*v4 <= 2u)
      {
        if (*v4)
        {
          if (v7 == 1)
          {
            v16 = 0xE900000000000077;
            if (v14 != 0x6F4E6E657473696CLL)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v16 = 0xE600000000000000;
            if (v14 != 0x6573776F7262)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v16 = 0xE700000000000000;
          if (v14 != 0x7972617262696CLL)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 > 4u)
      {
        if (v7 == 5)
        {
          v16 = 0xE600000000000000;
          if (v14 != 0x736F65646976)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v16 = 0xE900000000000073;
          if (v14 != 0x7473696C79616C70)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v7 == 3)
      {
        v16 = 0xE500000000000000;
        if (v14 != 0x6F69646172)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0xE600000000000000;
        if (v14 != 0x686372616573)
        {
          goto LABEL_5;
        }
      }

      if (v15 != v16)
      {
LABEL_5:
        v5 = sub_1004BD9C4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1000E9340(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 33);
    v4 = (a2 + 33);
    do
    {
      v6 = *v3;
      v7 = *(v3 - 1);
      v8 = *(v4 - 1);
      v9 = *v4;
      v10 = 0x686372616573;
      if (v7 == 5)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v10 = 0x6F65646976;
        v11 = 0xE500000000000000;
      }

      v12 = 0x6573776F7262;
      if (v7 == 3)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v12 = 0x6F69646172;
        v13 = 0xE500000000000000;
      }

      if (*(v3 - 1) <= 4u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6E5F6E657473696CLL;
      if (v7 == 1)
      {
        v14 = 0x756F795F726F66;
      }

      v15 = 0xE700000000000000;
      if (v7 != 1)
      {
        v15 = 0xEA0000000000776FLL;
      }

      if (!*(v3 - 1))
      {
        v14 = 0x636973756D5F796DLL;
        v15 = 0xE800000000000000;
      }

      if (*(v3 - 1) <= 2u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v10;
      }

      if (*(v3 - 1) <= 2u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v11;
      }

      if (*(v4 - 1) <= 2u)
      {
        if (*(v4 - 1))
        {
          if (v8 == 1)
          {
            v5 = 0xE700000000000000;
            if (v16 != 0x756F795F726F66)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v5 = 0xEA0000000000776FLL;
            if (v16 != 0x6E5F6E657473696CLL)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v5 = 0xE800000000000000;
          if (v16 != 0x636973756D5F796DLL)
          {
            goto LABEL_46;
          }
        }
      }

      else if (*(v4 - 1) > 4u)
      {
        if (v8 != 5)
        {
          v5 = 0xE500000000000000;
          v18 = 1701079414;
LABEL_45:
          if (v16 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
          {
            goto LABEL_46;
          }

          goto LABEL_6;
        }

        v5 = 0xE600000000000000;
        if (v16 != 0x686372616573)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v8 != 3)
        {
          v5 = 0xE500000000000000;
          v18 = 1768186226;
          goto LABEL_45;
        }

        v5 = 0xE600000000000000;
        if (v16 != 0x6573776F7262)
        {
          goto LABEL_46;
        }
      }

LABEL_6:
      if (v17 == v5)
      {

        if (v6 != v9)
        {
          return 0;
        }

        goto LABEL_8;
      }

LABEL_46:
      v19 = sub_1004BD9C4();

      result = 0;
      if (v19 & 1) == 0 || ((v6 ^ v9))
      {
        return result;
      }

LABEL_8:
      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1000E960C(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_100009130(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = sub_1004BD484();
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = sub_1004BD484();
LABEL_26:
        v19 = v18;
        v20 = sub_1004BCFA4();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1004BCFA4();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1004BD6A4();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1004BD6A4();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1000E98D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8, v12);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v11, v18, v8);
    sub_1000F2DB4(v31, v32, v33);
    v25 = sub_1004BBD84();
    v26 = *v21;
    (*v21)(v11, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E9AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1000E90C0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 7)
  {
    if (v4 != 7)
    {
      return 0;
    }
  }

  else if (v4 == 7 || (sub_1000819C8() & 1) == 0)
  {
    return 0;
  }

  return sub_1000E9340(v3, v5);
}

uint64_t ApplicationCapabilities.tabs.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

unint64_t sub_1000E9BC8()
{
  sub_100003ABC(&unk_100609360, &unk_1004CCAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C5120;
  *(inited + 32) = 0x64656E6769537369;
  *(inited + 40) = 0xEA00000000006E49;
  *(inited + 48) = *v0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001004FF490;
  *(inited + 96) = *(v0 + 1);
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000001004FF4B0;
  *(inited + 144) = *(v0 + 2);
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000018;
  *(inited + 184) = 0x80000001004FF4D0;
  sub_1000EA0C4(v0, (inited + 192));
  *(inited + 224) = 0x536465776F6C6C61;
  *(inited + 232) = 0xEF73656369767265;
  sub_1000F318C();
  *(inited + 240) = sub_1004BC674();
  *(inited + 248) = v2;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = 0x80000001004FF4F0;
  *(inited + 288) = sub_1004BC674();
  *(inited + 296) = v3;
  *(inited + 312) = &type metadata for String;
  strcpy((inited + 320), "ratingWarning");
  *(inited + 334) = -4864;
  *(inited + 336) = ApplicationCapabilities.RatingWarning.description.getter();
  *(inited + 344) = v4;
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0xD000000000000012;
  *(inited + 376) = 0x80000001004FF510;
  v31 = *(v0 + 88);
  v30 = v31;
  sub_10000F778(&v31, v29, &qword_100603588, &qword_1004CDAB8);
  sub_100003ABC(&qword_100603588, &qword_1004CDAB8);
  *(inited + 384) = sub_1004BBF04();
  *(inited + 392) = v5;
  *(inited + 408) = &type metadata for String;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = 0x80000001004FF530;
  v6 = *(v0 + 96);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = 0xEA00000000007265;
      v7 = 0x6269726373627573;
    }

    else
    {
      v8 = 0xEF72656269726373;
      v7 = 0x6275536563696F76;
    }
  }

  else if (*(v0 + 96))
  {
    v8 = 0xE700000000000000;
    v7 = 0x63697373616C63;
  }

  else
  {
    v7 = 0x6564696365646E75;
    v8 = 0xE900000000000064;
  }

  *(inited + 432) = v7;
  *(inited + 440) = v8;
  *(inited + 456) = &type metadata for String;
  *(inited + 464) = 1935827316;
  *(inited + 472) = 0xE400000000000000;
  v9 = *(v0 + 104);
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v30 = _swiftEmptyArrayStorage;
    sub_100015080(0, v10, 0);
    v12 = (v9 + 32);
    v11 = v30;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v14 == 5;
      v16 = 0xE900000000000073;
      if (v14 == 5)
      {
        v17 = 0x736F65646976;
      }

      else
      {
        v17 = 0x7473696C79616C70;
      }

      if (v15)
      {
        v16 = 0xE600000000000000;
      }

      if (v13 == 3)
      {
        v18 = 0x6F69646172;
      }

      else
      {
        v18 = 0x686372616573;
      }

      if (v13 == 3)
      {
        v19 = 0xE500000000000000;
      }

      else
      {
        v19 = 0xE600000000000000;
      }

      if (v13 <= 4)
      {
        v17 = v18;
        v16 = v19;
      }

      v20 = 0xE900000000000077;
      if (v13 == 1)
      {
        v21 = 0x6F4E6E657473696CLL;
      }

      else
      {
        v21 = 0x6573776F7262;
      }

      if (v13 != 1)
      {
        v20 = 0xE600000000000000;
      }

      if (!v13)
      {
        v21 = 0x7972617262696CLL;
        v20 = 0xE700000000000000;
      }

      if (v13 <= 2)
      {
        v22 = v21;
      }

      else
      {
        v22 = v17;
      }

      if (v13 <= 2)
      {
        v23 = v20;
      }

      else
      {
        v23 = v16;
      }

      v30 = v11;
      v25 = v11[2];
      v24 = v11[3];
      if (v25 >= v24 >> 1)
      {
        sub_100015080((v24 > 1), v25 + 1, 1);
        v11 = v30;
      }

      v11[2] = v25 + 1;
      v26 = &v11[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      --v10;
    }

    while (v10);
  }

  *(inited + 504) = sub_100003ABC(&unk_100603590, &unk_1004C8150);
  *(inited + 480) = v11;
  v27 = sub_10003C58C(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100601C08, &qword_1004C95C0);
  swift_arrayDestroy();
  return v27;
}

void sub_1000EA0C4(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0xE800000000000000;
      v4 = 0x64656C6261736964;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 0xE500000000000000;
      v4 = 0x6564696C67;
      goto LABEL_11;
    }

LABEL_8:
    v5 = a2;
    v6._countAndFlagsBits = sub_1004BD934();
    sub_1004BC024(v6);

    v7._countAndFlagsBits = 62;
    v7._object = 0xE100000000000000;
    sub_1004BC024(v7);
    a2 = v5;
    v4 = 0x3C6E776F6E6B6E75;
    v3 = 0xE800000000000000;
    goto LABEL_11;
  }

  if (!v2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v3 = 0xE700000000000000;
  v4 = 0x64656C62616E65;
LABEL_11:
  a2[3] = &type metadata for String;
  *a2 = v4;
  a2[1] = v3;
}

BOOL sub_1000EA1F0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

uint64_t sub_1000EA264()
{
  type metadata accessor for ApplicationCapabilities.Controller(0);
  v0 = swift_allocObject();
  result = sub_1000EA300(v0, v1);
  static ApplicationCapabilities.Controller.shared = result;
  return result;
}

uint64_t static ApplicationCapabilities.Controller.shared.getter()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000EA300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = 0;
  *(v2 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) = 0;
  v4 = v2 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_stateHandler;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_lock;
  type metadata accessor for UnfairLock(0, a2);
  swift_allocObject();
  *(v2 + v5) = UnfairLock.init()();
  v6 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag;
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  sub_100003ABC(&qword_100603560, &qword_1004C5240);
  UnfairLock.locked<A>(_:)(sub_1000F3384);
  *(v2 + v6) = *&v46[0];
  *(v2 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver) = 0;
  *(v2 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bagObserver) = 0;
  *(v2 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bindings) = _swiftEmptyArrayStorage;
  result = UIApp;
  if (UIApp)
  {
    *(v2 + 16) = [UIApp launchedToTest];
    type metadata accessor for MusicTabsDictionaryProvider(0, v8);
    swift_allocObject();
    v9 = sub_10029B06C(0x626154636973756DLL, 0xE900000000000073, sub_1000EA788, 0);
    *(v2 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider) = v9;

    UnfairLock.locked<A>(_:)(sub_1000F3384);
    v10 = *(v2 + 16);

    sub_1000F1A20(*&v46[0], v9, v10, v46);
    v11 = (v2 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
    v12 = v49;
    v13 = v50;
    v11[4] = v49;
    v11[5] = v13;
    v14 = v51;
    v15 = v52;
    v11[6] = v51;
    v11[7] = v15;
    v16 = v46[0];
    v17 = v46[1];
    *v11 = v46[0];
    v11[1] = v17;
    v18 = v47;
    v19 = v48;
    v11[2] = v47;
    v11[3] = v19;
    v44 = v14;
    v45 = v15;
    v42 = v12;
    v43 = v13;
    v40 = v18;
    v41 = v19;
    v38 = v16;
    v39 = v17;
    swift_beginAccess();
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    aBlock = v38;
    v31 = v39;
    v32 = v40;
    v33 = v41;
    sub_1000F2B70(&v38, &v29);
    sub_1004B8564();
    swift_endAccess();
    v20 = swift_allocObject();
    swift_weakInit();

    sub_10029AF10(sub_1000F3124, v20);

    UnfairLock.locked<A>(_:)(sub_1000F336C);
    sub_1000EA974(v21, v22);
    sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
    v23 = sub_1004BCB44();
    v24 = sub_1004BBE24();
    v25 = swift_allocObject();
    swift_weakInit();

    *&v32 = sub_1000F312C;
    *(&v32 + 1) = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v31 = sub_1000EB22C;
    *(&v31 + 1) = &unk_1005B05E8;
    v26 = _Block_copy(&aBlock);

    v27 = MSVLogAddStateHandler();

    _Block_release(v26);

    v28 = v3 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_stateHandler;
    *v28 = v27;
    *(v28 + 8) = 0;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}