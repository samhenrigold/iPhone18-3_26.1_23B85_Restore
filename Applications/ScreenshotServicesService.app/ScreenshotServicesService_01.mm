uint64_t sub_100061E7C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100064974;

  return v6(a1);
}

uint64_t sub_100061F7C()
{
  v1 = sub_100055840(&qword_1000D4178, &unk_10008F830);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_100057E8C(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10006206C()
{
  v2 = *(sub_100055840(&qword_1000D4178, &unk_10008F830) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100064970;

  return sub_10005BC40(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_100062190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100060E54(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_100062248(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100057D90(a3, a4);
          return sub_100061084(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_10006242C()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_leftRightMargin) = 0x4059000000000000;
  v2 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_context;
  type metadata accessor for CRContext();
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  sub_100055E84(v4, &qword_1000D4108, &unk_10008F820);
  *(v1 + v2) = v3;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_screenshotEditsSnapshotted) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_cancellable) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_paperDocumentView) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_cachedRenderedPDFDocument) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_cachedPDFTask) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView____lazy_storage___toolPicker) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_pdfData) = xmmword_10008F810;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_didFailToWritePDFToURL) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_isChangingVellumOpacity) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_vellumOpacity) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_screenshot) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_isCropping) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_rulerHostView) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_changeCounter) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitPDFView_editable) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000625B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000625E8()
{
  v1 = sub_100055840(&qword_1000D4178, &unk_10008F830);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000626D4()
{
  v2 = *(sub_100055840(&qword_1000D4178, &unk_10008F830) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100061A8C;

  return sub_10005D570(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_1000627E8()
{
  v1[8] = v0;
  type metadata accessor for CRKeyPath();
  v1[9] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v4 = type metadata accessor for PaperDocument.PDFDocumentUse();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  v5 = sub_100055840(&qword_1000D4178, &unk_10008F830);
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  sub_100055840(&qword_1000D4350, &qword_10008F9C0);
  v1[24] = swift_task_alloc();
  v6 = type metadata accessor for PaperDocument();
  v1[25] = v6;
  v1[26] = *(v6 - 8);
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_100062ACC, 0, 0);
}

uint64_t sub_100062ACC()
{
  v1 = *(v0 + 192);
  type metadata accessor for CRContext();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v2 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  *(v0 + 224) = v2;
  sub_100055E84(v0 + 16, &qword_1000D4108, &unk_10008F820);
  Capsule.root.getter();
  v3 = type metadata accessor for PaperRenderableOptions();
  *(v0 + 232) = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  *(v0 + 240) = v5;
  *(v0 + 248) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v6 = swift_task_alloc();
  *(v0 + 256) = v6;
  v7 = sub_100064878(&qword_1000D4190, &type metadata accessor for PaperDocument, &protocol conformance descriptor for PaperDocument);
  *(v0 + 264) = v7;
  *v6 = v0;
  v6[1] = sub_100062CAC;
  v8 = *(v0 + 192);
  v9 = *(v0 + 200);
  v10 = *(v0 + 64);

  return PaperDocument.export<A>(_:in:options:)(v2, v10, v8, v9, v7);
}

uint64_t sub_100062CAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  v6 = *(*v1 + 192);
  v2[34] = a1;

  sub_100055E84(v6, &qword_1000D4350, &qword_10008F9C0);
  v7 = *(v4 + 8);
  v2[35] = v7;
  v2[36] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return _swift_task_switch(sub_100062E78, 0, 0);
}

uint64_t sub_100062E78()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 64);
  *(v0 + 388) = 0;
  (*(v3 + 16))(v2, v5, v4);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v0 + 388;
  Capsule.callAsFunction<A>(_:)();
  *(v0 + 296) = 0;

  v7 = *(v0 + 224);
  if (*(v0 + 388) == 1)
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 144);
    Capsule.root.getter();
    *v8 = v7;
    *(v0 + 384) = enum case for PaperDocument.PDFDocumentUse.roundtrip(_:);
    v10 = *(v9 + 104);
    *(v0 + 304) = v10;
    *(v0 + 312) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v10(v8);
    v11 = v7;
    v12 = swift_task_alloc();
    *(v0 + 320) = v12;
    *v12 = v0;
    v12[1] = sub_100063128;
    v13 = *(v0 + 264);
    v14 = *(v0 + 272);
    v15 = *(v0 + 200);
    v16 = *(v0 + 184);
    v17 = *(v0 + 152);

    return PaperDocument.update<A>(pdfDocument:in:use:)(v14, v16, v17, v15, v13);
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));

    v18 = *(v0 + 272);

    v19 = *(v0 + 8);

    return v19(v18);
  }
}

uint64_t sub_100063128()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 144);
  v7 = *(*v0 + 136);

  v8 = *(v6 + 8);
  *(v1 + 328) = v8;
  *(v1 + 336) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  v2(v3, v4);

  return _swift_task_switch(sub_10006332C, 0, 0);
}

uint64_t sub_10006332C()
{
  v39 = v0[34];
  v42 = v0[29];
  v43 = v0[30];
  v41 = v0[24];
  v40 = v0[28];
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v38 = v0[13];
  v7 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  URL.init(fileURLWithPath:)();
  v9, v10, v11, v12, v13, v14, v15, v16;
  UUID.init()();
  UUID.uuidString.getter();
  v18 = v17;
  (*(v5 + 8))(v4, v6);
  URL.appendingPathComponent(_:)();
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26 = *(v3 + 8);
  v0[43] = v26;
  v0[44] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v2, v38);
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  [v39 writeToURL:v28];

  static CRKeyPath.unique.getter();
  v30 = swift_task_alloc();
  *(v30 + 16) = v1;
  *(v30 + 24) = v40;
  Capsule.init(id:initClosure:)();

  Capsule.callAsFunction<A>(_:)();
  Capsule.root.getter();
  v43(v41, 1, 1, v42);
  v31 = swift_task_alloc();
  v0[45] = v31;
  *v31 = v0;
  v31[1] = sub_1000635EC;
  v32 = v0[33];
  v33 = v0[28];
  v34 = v0[24];
  v35 = v0[25];
  v36 = v0[22];

  return PaperDocument.export<A>(_:in:options:)(v33, v36, v34, v35, v32);
}

uint64_t sub_1000635EC(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  *(*v1 + 368) = a1;

  sub_100055E84(v5, &qword_1000D4350, &qword_10008F9C0);
  v2(v3, v4);

  return _swift_task_switch(sub_1000637B4, 0, 0);
}

uint64_t sub_1000637B4()
{
  v1 = [*(v0 + 368) pageCount];
  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
  }

  v2 = v1;
  if (v1)
  {
    v3 = 0;
    v38 = v1;
    do
    {
      v4 = [*(v39 + 368) pageAtIndex:v3];
      if (!v4)
      {
        goto LABEL_5;
      }

      v40 = v4;
      v5 = [v4 annotations];
      sub_100064748(0, &qword_1000D4358, PDFAnnotation_ptr);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v6 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
        if (v14)
        {
LABEL_9:
          if (v14 < 1)
          {
            __break(1u);
            goto LABEL_23;
          }

          for (i = 0; i != v14; ++i)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v16 = *(v6 + 8 * i + 32);
            }

            v17 = v16;
            v18 = [v16 akAnnotation];
            if (v18)
            {
              v19 = v18;
              [v18 drawingBounds];
              v24 = [objc_opt_self() valueWithRect:{v20, v21, v22, v23}];
              [v17 setValue:v24 forAnnotationKey:PDFAnnotationKeyRect];
            }
          }
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_9;
        }
      }

      v6, v7, v8, v9, v10, v11, v12, v13;

      v2 = v38;
LABEL_5:
      ++v3;
    }

    while (v3 != v2);
  }

  v25 = *(v39 + 304);
  v26 = *(v39 + 384);
  v27 = *(v39 + 224);
  v28 = *(v39 + 152);
  v29 = *(v39 + 136);
  Capsule.root.getter();
  *v28 = v27;
  v25(v28, v26, v29);
  v30 = v27;
  v31 = swift_task_alloc();
  *(v39 + 376) = v31;
  *v31 = v39;
  v31[1] = sub_100063ACC;
  v32 = *(v39 + 264);
  v33 = *(v39 + 200);
  v34 = *(v39 + 176);
  v35 = *(v39 + 152);
  v36 = *(v39 + 368);

  return PaperDocument.update<A>(pdfDocument:in:use:)(v36, v34, v35, v33, v32);
}

uint64_t sub_100063ACC()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 136);

  v1(v5, v6);
  v2(v3, v4);

  return _swift_task_switch(sub_100063CCC, 0, 0);
}

uint64_t sub_100063CCC()
{
  v1 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[7] = 0;
  v5 = [v1 removeItemAtURL:v3 error:v0 + 7];

  v6 = v0[7];
  if (v5)
  {
    v7 = v0[28];
    v8 = v6;

    v9 = 34;
  }

  else
  {
    v10 = v0[34];
    v11 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v9 = 28;
  }

  v12 = v0[43];
  v13 = v0[22];
  v14 = v0[23];
  v15 = v0[20];
  v16 = v0[21];
  v17 = v0[16];
  v18 = v0[13];

  v19 = *(v16 + 8);
  v19(v13, v15);
  v19(v14, v15);
  v12(v17, v18);
  v20 = v0[46];

  v21 = v0[1];

  return v21(v20);
}

uint64_t sub_100063F04(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

uint64_t sub_100063FD4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064014()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100064970;

  return sub_10005E3D0(v2, v3);
}

uint64_t sub_1000640C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100064970;

  return sub_1000618BC(v2, v3, v4);
}

uint64_t sub_100064184()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000641C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100064970;

  return sub_1000619A4(a1, v4, v5, v6);
}

uint64_t sub_100064290(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100055840(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000642F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064330(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100064970;

  return sub_100061E7C(a1, v4);
}

void *sub_10006441C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_100064460(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_1000644AC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000644FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100064970;

  return sub_100061214(a1, v4);
}

uint64_t sub_1000645B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100061A8C;

  return sub_100061214(a1, v4);
}

uint64_t sub_100064674()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000646B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100064970;

  return sub_10005CEFC();
}

uint64_t sub_100064748(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100064790()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000647C8()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____SSSScreenshotPaperKitPDFView_changeCounter;
    swift_beginAccess();
    [v3 _paperKitPDFDidChangeInView:v1 changeCounter:*(v1 + v4)];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100064860(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100064878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_1000648C0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100064984()
{
  v0 = type metadata accessor for Logger();
  sub_1000648C0(v0, qword_1000D4CB0);
  sub_100058ECC(v0, qword_1000D4CB0);
  return Logger.init(subsystem:category:)();
}

char *sub_100064A08()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100055840(&qword_1000D4170, &qword_10008FA80);
  __chkstk_darwin(v2 - 8);
  v47 = &v43 - v3;
  v4 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v0[OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tip];
  *v10 = sub_100055230();
  v10[1] = v11;
  v10[2] = v12;
  v10[3] = v13;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tipObservationTask] = 0;
  v14 = OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_lastTipStatus;
  v15 = type metadata accessor for Tips.Status();
  (*(*(v15 - 8) + 56))(&v0[v14], 1, 1, v15);
  v48.receiver = v0;
  v48.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v48, "init");
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = &v16[OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tip];
  v19 = *&v16[OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tip];
  v20 = *&v16[OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tip + 8];
  *v18 = sub_1000651B0;
  v18[1] = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  v23 = v18[2];
  v22 = v18[3];
  v18[2] = sub_100065714;
  v18[3] = v21;
  v46 = v16;
  sub_1000682C8(v19, v20);
  sub_1000682C8(v23, v22);
  v24 = sub_100054E7C();
  if (v24)
  {
    if (qword_1000D4CA8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100058ECC(v25, qword_1000D4CB0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "force show tip", v28, 2u);
    }

    static Tips.resetDatastore()();
  }

  sub_100055840(&unk_1000D4500, &qword_10008FA88);
  type metadata accessor for Tips.ConfigurationOption();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10008F5C0;
  if (v24)
  {
    static Tips.ConfigurationOption.DisplayFrequency.immediate.getter();
  }

  else
  {
    static Tips.ConfigurationOption.DisplayFrequency.hourly.getter();
  }

  static Tips.ConfigurationOption.displayFrequency(_:)();
  (*(v7 + 8))(v9, v43);
  static Tips.ConfigurationOption.DatastoreLocation.applicationDefault.getter();
  static Tips.ConfigurationOption.datastoreLocation(_:)();
  (*(v44 + 8))(v6, v45);
  static Tips.configure(_:)();
  v29, v30, v31, v32, v33, v34, v35, v36;
  v37 = type metadata accessor for TaskPriority();
  v38 = v47;
  (*(*(v37 - 8) + 56))(v47, 1, 1, v37);
  type metadata accessor for MainActor();
  v39 = static MainActor.shared.getter();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = &protocol witness table for MainActor;
  v41 = v46;
  v40[4] = v46;
  sub_10005D144(0, 0, v38, &unk_10008FA98, v40);

  return v41;
}

uint64_t sub_100065178()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100065208()
{
  if (qword_1000D4CA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100058ECC(v1, qword_1000D4CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "handle Not Now action", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    v0[7] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000653B4, v7, v6);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000653B4()
{
  v1 = *(v0 + 48);

  sub_100065428(1, 0, 0);

  v2 = *(v0 + 8);

  return v2();
}

double sub_100065428(char a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tipObservationTask;
  if (*(v3 + OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tipObservationTask))
  {
    v5 = v3;
    if (qword_1000D4CA8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100058ECC(v9, qword_1000D4CB0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "hide tip", v12, 2u);
    }

    if (*(v5 + v4))
    {

      Task.cancel()();
    }

    *(v5 + v4) = 0;

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    sub_100054E6C(a2, a3);
    sub_100067AEC(a1 & 1, sub_100067FA0, v13);
  }

  return result;
}

double sub_1000655F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100055840(&qword_1000D4170, &qword_10008FA80);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  sub_10005D144(0, 0, v6, a3, v9);

  return result;
}

uint64_t sub_10006574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = a4;
  sub_100055840(&qword_1000D4180, &qword_10008FBC0);
  *(v4 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1000657E8, 0, 0);
}

uint64_t sub_1000657E8()
{
  if (qword_1000D4CA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100058ECC(v1, qword_1000D4CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "handle Switch action", v4, 2u);
  }

  v5 = [objc_opt_self() defaultWorkspace];
  if (!v5)
  {
    __break(1u);
    return _swift_task_switch(v5, v6, v7);
  }

  v8 = v5;
  v9 = v0[22];
  URL.init(string:)();
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  v14 = 0;
  if (v12 != 1)
  {
    v15 = v0[22];
    URL._bridgeToObjectiveC()(v13);
    v14 = v16;
    (*(v11 + 8))(v15, v10);
  }

  sub_100055840(&qword_1000D4610, &qword_10008FBC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F5C0;
  strcpy((inited + 32), "__UnlockDevice");
  *(inited + 47) = -18;
  *(inited + 48) = 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001000AF980;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  v18 = sub_100068CAC(inited);
  swift_setDeallocating();
  sub_100055840(&qword_1000D4618, &qword_10008FBD0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v18, v20, v21, v22, v23, v24, v25, v26;
  [v8 openSensitiveURL:v14 withOptions:isa];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    v0[24] = static MainActor.shared.getter();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();
    v30 = v29;
    v5 = sub_100065BA4;
    v6 = v28;
    v7 = v30;

    return _swift_task_switch(v5, v6, v7);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_100065BA4()
{
  v1 = *(v0 + 184);

  sub_100065428(1, 0, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100065C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[13] = sub_100055840(&qword_1000D45F0, &qword_10008FBA0);
  v4[14] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_100055840(&qword_1000D4570, &unk_10008FAC0);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v6 = sub_100055840(&qword_1000D45B8, &qword_10008FB78);
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = sub_100055840(&qword_1000D45C0, &qword_10008FB80);
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = type metadata accessor for MainActor();
  v4[31] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[32] = v9;
  v4[33] = v8;

  return _swift_task_switch(sub_100065E98, v9, v8);
}

uint64_t sub_100065E98()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 96);
  v5 = *(v4 + OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tip + 16);
  *(v0 + 16) = *(v4 + OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tip);
  *(v0 + 32) = v5;
  sub_100055D58();
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  *(v0 + 272) = OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_lastTipStatus;
  swift_beginAccess();
  v6 = static MainActor.shared.getter();
  *(v0 + 280) = v6;
  v7 = swift_task_alloc();
  *(v0 + 288) = v7;
  *v7 = v0;
  v7[1] = sub_100065FF0;
  v8 = *(v0 + 216);
  v9 = *(v0 + 184);

  return AsyncStream.Iterator.next(isolation:)(v9, v6, &protocol witness table for MainActor, v8);
}

uint64_t sub_100065FF0()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return _swift_task_switch(sub_100066134, v3, v2);
}

uint64_t sub_100066134()
{
  v72 = v0;
  v1 = v0[23];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v3[6];
  if (v4(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);

    v5 = v0[1];

    return v5();
  }

  v7 = v0[22];
  v8 = v0[19];
  v10 = v0[13];
  v9 = v0[14];
  v66 = v0[12];
  v68 = v0[34];
  v63 = v3[4];
  v63(v8, v1, v2);
  v65 = v3[2];
  v65(v7, v8, v2);
  v64 = v3[7];
  v64(v7, 0, 1, v2);
  v11 = *(v10 + 48);
  sub_100064290(v66 + v68, v9, &qword_1000D4570, &unk_10008FAC0);
  sub_100064290(v7, v9 + v11, &qword_1000D4570, &unk_10008FAC0);
  if (v4(v9, 1, v2) != 1)
  {
    v14 = v0[15];
    sub_100064290(v0[14], v0[21], &qword_1000D4570, &unk_10008FAC0);
    v15 = v4(v9 + v11, 1, v14);
    v16 = v0[21];
    v17 = v0[22];
    if (v15 != 1)
    {
      v53 = v0[18];
      v54 = v11;
      v55 = v0[15];
      v56 = v0[16];
      v70 = v0[14];
      v63(v53, v9 + v54, v55);
      sub_100068554();
      v57 = dispatch thunk of static Equatable.== infix(_:_:)();
      v58 = *(v56 + 8);
      v58(v53, v55);
      sub_100055E84(v17, &qword_1000D4570, &unk_10008FAC0);
      v58(v16, v55);
      sub_100055E84(v70, &qword_1000D4570, &unk_10008FAC0);
      if (v57)
      {
        v58(v0[19], v0[15]);
        goto LABEL_18;
      }

LABEL_11:
      v20 = v0[34];
      v21 = v0[20];
      v22 = v0[15];
      v23 = v0[12];
      v65(v21, v0[19], v22);
      v64(v21, 0, 1, v22);
      swift_beginAccess();
      sub_100068418(v21, v23 + v20);
      swift_endAccess();
      if (qword_1000D4CA8 != -1)
      {
        swift_once();
      }

      v24 = v0[19];
      v25 = v0[17];
      v26 = v0[15];
      v27 = type metadata accessor for Logger();
      sub_100058ECC(v27, qword_1000D4CB0);
      v65(v25, v24, v26);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v0[19];
      if (v30)
      {
        v33 = v0[17];
        v32 = v0[18];
        v34 = v0[15];
        v35 = v0[16];
        v69 = v0[19];
        v36 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v71 = v67;
        *v36 = 136315138;
        v65(v32, v33, v34);
        v37 = String.init<A>(describing:)();
        v39 = v38;
        v40 = *(v35 + 8);
        v40(v33, v34);
        v41 = sub_100068488(v37, v39, &v71);
        v39, v42, v43, v44, v45, v46, v47, v48;
        *(v36 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v28, v29, "tip status did update: %s", v36, 0xCu);
        sub_100064460(v67);

        v40(v69, v34);
      }

      else
      {
        v49 = v0[16];
        v50 = v0[17];
        v51 = v0[15];

        v52 = *(v49 + 8);
        v52(v50, v51);
        v52(v31, v51);
      }

      goto LABEL_18;
    }

    v18 = v0[15];
    v19 = v0[16];
    sub_100055E84(v0[22], &qword_1000D4570, &unk_10008FAC0);
    (*(v19 + 8))(v16, v18);
LABEL_10:
    sub_100055E84(v0[14], &qword_1000D45F0, &qword_10008FBA0);
    goto LABEL_11;
  }

  v12 = v0[15];
  sub_100055E84(v0[22], &qword_1000D4570, &unk_10008FAC0);
  if (v4(v9 + v11, 1, v12) != 1)
  {
    goto LABEL_10;
  }

  v13 = v0[16];
  sub_100055E84(v0[14], &qword_1000D4570, &unk_10008FAC0);
  (*(v13 + 8))(v0[19], v0[15]);
LABEL_18:
  v59 = static MainActor.shared.getter();
  v0[35] = v59;
  v60 = swift_task_alloc();
  v0[36] = v60;
  *v60 = v0;
  v60[1] = sub_100065FF0;
  v61 = v0[27];
  v62 = v0[23];

  return AsyncStream.Iterator.next(isolation:)(v62, v59, &protocol witness table for MainActor, v61);
}

uint64_t sub_100066804()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100066844()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100064970;

  return sub_100065C20(v3, v4, v5, v2);
}

double sub_1000668FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, int a7)
{
  v8 = v7;
  v24 = a5;
  v25 = a7;
  v23 = a4;
  v12 = sub_100055840(&qword_1000D4170, &qword_10008FA80);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - v13;
  v15 = OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tipObservationTask;
  if (*&v7[OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tipObservationTask])
  {

    Task.cancel()();
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v18 = a6;
  v19 = v7;

  swift_unknownObjectRetain();

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = &protocol witness table for MainActor;
  *(v21 + 32) = v19;
  *(v21 + 40) = v17;
  *(v21 + 48) = a2;
  *(v21 + 56) = a3;
  *(v21 + 64) = v23;
  *(v21 + 72) = v24 & 1;
  *(v21 + 80) = a6;
  *(v21 + 88) = v25 & 1;

  *&v8[v15] = sub_10005D144(0, 0, v14, &unk_10008FAB8, v21);

  return result;
}

uint64_t sub_100066B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 418) = v18;
  *(v8 + 417) = v16;
  *(v8 + 176) = a8;
  *(v8 + 184) = v17;
  *(v8 + 160) = a6;
  *(v8 + 168) = a7;
  *(v8 + 144) = a4;
  *(v8 + 152) = a5;
  sub_100055840(&qword_1000D4570, &unk_10008FAC0);
  *(v8 + 192) = swift_task_alloc();
  v9 = type metadata accessor for Tips.Status();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = sub_100055840(&qword_1000D45B8, &qword_10008FB78);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = sub_100055840(&qword_1000D45C0, &qword_10008FB80);
  *(v8 + 248) = swift_task_alloc();
  v10 = sub_100055840(&qword_1000D45C8, &qword_10008FB88);
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 - 8);
  *(v8 + 272) = swift_task_alloc();
  v11 = sub_100055840(&unk_1000D45D0, &unk_10008FB90);
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v11 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = type metadata accessor for MainActor();
  *(v8 + 312) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 320) = v13;
  *(v8 + 328) = v12;

  return _swift_task_switch(sub_100066DAC, v13, v12);
}

uint64_t sub_100066DAC()
{
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tip;
  *(v0 + 336) = OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tip;
  v3 = (v1 + v2);
  v4 = v3[1];
  *(v0 + 56) = *v3;
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);
  *(v0 + 72) = v4;
  *(v0 + 344) = sub_100055D58();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_100057608(&qword_1000D45E0, &qword_1000D45B8, &qword_10008FB78, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v5 + 8))(v6, v7);
  AsyncMapSequence.Iterator.init(_:transform:)();
  *(v0 + 352) = OBJC_IVAR____TtC25ScreenshotServicesService33FullScreenPreferenceTipController_tipPopoverViewController;
  swift_beginAccess();
  v8 = static MainActor.shared.getter();
  *(v0 + 360) = v8;
  if (v8)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v0 + 368) = v9;
  *(v0 + 376) = v11;

  return _swift_task_switch(sub_100066F8C, v9, v11);
}

uint64_t sub_100066F8C()
{
  v1 = v0[45];
  v0[48] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_100057608(&qword_1000D45E8, &qword_1000D45C0, &qword_10008FB80, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_100067090;
  v3 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_100067090()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_100067378;
  }

  else
  {
    (*(v2 + 384))();
    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_1000671B8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000671B8()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_100055E84(v3, &qword_1000D4570, &unk_10008FAC0);
    v4 = v0[40];
    v5 = v0[41];

    return _swift_task_switch(sub_100067A20, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[27], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[50] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[51] = v8;
    *v8 = v0;
    v8[1] = sub_100067390;
    v9 = v0[27];

    return (v11)(v0 + 52, v9);
  }
}

uint64_t sub_100067390()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);

  (*(v3 + 8))(v2, v4);
  *(v1 + 419) = *(v1 + 416);
  v5 = *(v1 + 376);
  v6 = *(v1 + 368);

  return _swift_task_switch(sub_10006753C, v6, v5);
}

uint64_t sub_10006753C()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_1000675A0, v1, v2);
}

uint64_t sub_1000675A0()
{
  if ((*(v0 + 419) & 1) == 0)
  {
    sub_100067AEC(1, 0, 0);
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1000D4CA8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100058ECC(v3, qword_1000D4CB0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "show tip", v6, 2u);
    }

    v7 = *(v0 + 336);
    v8 = *(v0 + 344);
    v9 = *(v0 + 144);

    v10 = (v9 + v7);
    type metadata accessor for TipUIPopoverViewController();
    v11 = *(v9 + v7);
    v12 = v10[1];
    v13 = v10[2];
    v14 = v10[3];
    *(v0 + 40) = &type metadata for FullScreenPreferenceTip;
    *(v0 + 48) = v8;
    v15 = swift_allocObject();
    *(v0 + 16) = v15;
    v15[2] = v11;
    v15[3] = v12;
    v15[4] = v13;
    v15[5] = v14;
    swift_unknownObjectRetain();
    sub_100054E6C(v11, v12);
    sub_100054E6C(v13, v14);
    v16 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
    v17 = TipUIPopoverViewController.popoverPresentationController.getter();
    if (v17)
    {
      v18 = v17;
      isa = *(v0 + 168);
      if (isa)
      {
        sub_100068320();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      [v18 setPassthroughViews:isa];
    }

    v20 = *(v0 + 417);
    v21 = *(v0 + 176);
    v22 = TipUIPopoverViewController.popoverPresentationController.getter();
    [v22 setPermittedArrowDirections:v21];

    v23 = TipUIPopoverViewController.popoverPresentationController.getter();
    [v23 _setShouldHideArrow:v20];

    v24 = [v16 view];
    if (!v24)
    {
      __break(1u);
      return _swift_task_switch(v24, v25, v26);
    }

    v27 = v24;
    v28 = *(v0 + 418);
    [v24 setTintColor:*(v0 + 184)];

    [v2 presentViewController:v16 animated:v28 completion:0];
    swift_unknownObjectWeakAssign();

LABEL_14:
    v29 = static MainActor.shared.getter();
    *(v0 + 360) = v29;
    if (v29)
    {
      swift_getObjectType();
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v26 = v31;
    }

    else
    {
      v30 = 0;
      v26 = 0;
    }

    *(v0 + 368) = v30;
    *(v0 + 376) = v26;
    v24 = sub_100066F8C;
    v25 = v30;

    return _swift_task_switch(v24, v25, v26);
  }

  if (qword_1000D4CA8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100058ECC(v32, qword_1000D4CB0);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Unable to present Tip; view controller is nil", v35, 2u);
  }

  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100067A20()
{

  (*(v0[36] + 8))(v0[37], v0[35]);

  v1 = v0[1];

  return v1();
}

void sub_100067AEC(char a1, void (*a2)(void), uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v7 = Strong;
  v8 = [v7 presentationController];
  if (!v8 || (v8, ([v7 isBeingDismissed] & 1) != 0))
  {

LABEL_5:
    if (a2)
    {
      a2();
    }

    return;
  }

  if (qword_1000D4CA8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100058ECC(v9, qword_1000D4CB0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "dismiss tip", v12, 2u);
  }

  v13 = [v7 presentationController];
  if (v13)
  {
    v14 = [v13 presentingViewController];

    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v17[4] = sub_100068EC8;
    v17[5] = v15;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10005D444;
    v17[3] = &unk_1000BBAB0;
    v16 = _Block_copy(v17);
    sub_100054E6C(a2, a3);

    [v14 dismissViewControllerAnimated:a1 & 1 completion:v16];

    _Block_release(v16);
  }

  else
  {
  }

  swift_unknownObjectWeakAssign();
}

uint64_t sub_100067FA4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067FDC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_10006803C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100061A8C;

  return sub_100066B14(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t type metadata accessor for FullScreenPreferenceTipController(uint64_t a1)
{
  result = qword_1000D4CD0;
  if (!qword_1000D4CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100068170(uint64_t a1)
{
  sub_100068220(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100068220(uint64_t a1)
{
  if (!qword_1000D45A0)
  {
    type metadata accessor for Tips.Status();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000D45A0);
    }
  }
}

void type metadata accessor for UIPopoverArrowDirection()
{
  if (!qword_1000D45A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000D45A8);
    }
  }
}

double sub_1000682C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1000682D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100068320()
{
  result = qword_1000D45B0;
  if (!qword_1000D45B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D45B0);
  }

  return result;
}

uint64_t sub_10006836C()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000683C0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068400(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068418(uint64_t a1, uint64_t a2)
{
  v4 = sub_100055840(&qword_1000D4570, &unk_10008FAC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100068488(uint64_t a1, _TtC25ScreenshotServicesService33FullScreenPreferenceTipController *a2, uint64_t *a3)
{

  v6 = sub_1000685AC(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000686B8(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_100064460(v18);
  return v14;
}

unint64_t sub_100068554()
{
  result = qword_1000D45F8;
  if (!qword_1000D45F8)
  {
    type metadata accessor for Tips.Status();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D45F8);
  }

  return result;
}

unint64_t sub_1000685AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100068714(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1000686B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100068714(uint64_t a1, unint64_t a2)
{
  v3 = sub_100068760(a1, a2);
  sub_100068890(&off_1000BB8F8);
  return v3;
}

char *sub_100068760(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10006897C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10006897C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_100068890(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_1000689F0(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*(a1 + 16))
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v15 + 32], (a1 + 32), v2);
  a1, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *(v3 + 2);
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *(v3 + 2) = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_10006897C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100055840(&unk_1000D4600, &qword_10008FBA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000689F0(char *result, int64_t a2, void *a3, uint64_t a4, void *a5, unint64_t a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100055840(&unk_1000D4600, &qword_10008FBA8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * v15 - 64;
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  v16 = v14 + 32;
  v17 = (a4 + 32);
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_100068AE8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100064970;

  return sub_10006574C(v3, v4, v5, v2);
}

unint64_t sub_100068B7C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100068BF4(a1, a2, v4);
}

unint64_t sub_100068BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100068CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100055840(&unk_1000D4620, &qword_10008FBD8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100064290(v4, &v13, &qword_1000D4618, &qword_10008FBD0);
      v5 = v13;
      v6 = v14;
      result = sub_100068B7C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100068DDC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_100068DDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100068DEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100068E2C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100064970;

  return sub_1000651E8(v3, v4, v5, v2);
}

uint64_t sub_100068ED4()
{
  v0 = type metadata accessor for Logger();
  sub_1000648C0(v0, qword_1000D4CE8);
  sub_100058ECC(v0, qword_1000D4CE8);
  return Logger.init(subsystem:category:)();
}

void sub_100068F54(void *a1@<X8>)
{
  Image.frame.getter();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

void sub_100068FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100055840(&qword_1000D47D8, &qword_10008FCC8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = dispatch_semaphore_create(0);
  (*(v7 + 16))(v9, a2, v6);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = v10;

  v12 = v10;
  dispatch thunk of CanvasElementImageRenderer.image(from:bounds:completion:)();

  (*(v7 + 8))(v9, v6);
  OS_dispatch_semaphore.wait()();
}

uint64_t sub_100069148(uint64_t a1, uint64_t a2)
{
  v3 = sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-v5];
  v7 = sub_100055840(&qword_1000D40A8, &unk_10008F9D0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15[-v10];
  (*(v4 + 16))(v6, a2, v3, v9);
  type metadata accessor for TaggedCanvasElement();
  sub_100071208(&qword_1000D47F0, &type metadata accessor for TaggedCanvasElement, &protocol conformance descriptor for TaggedCanvasElement);

  SharedTagged_10.init<A>(_:_:)();
  v12 = Capsule.Ref.root.modify();
  v13 = Paper.subelements.modify();
  sub_100055840(&qword_1000D40A0, &qword_10008F9E0);
  CROrderedSet.append(_:)();
  (*(v8 + 8))(v11, v7);
  v13(v15, 0);
  return v12(v16, 0);
}

id sub_100069594(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v3 ss_sdrSurfaceCGImage];
  v11 = [v3 ss_hdrSurfaceCGImage];
  v12 = v11;
  v13 = v10;
  if (!v10)
  {
    if (v11)
    {
      v13 = 0;
      goto LABEL_5;
    }

    result = [v3 ss_CGImageBacked];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v13 = [result CGImage];
  }

LABEL_5:
  static UTType.heic.getter();
  v14.super.isa = UTType._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);
  if (a1)
  {
    v15.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v15.super.isa = 0;
  }

  v16 = [objc_opt_self() ss_imageDataWithDataType:v14.super.isa sdrImage:v13 hdrImage:v12 properties:v15.super.isa imageDescription:0];

  if (v16)
  {
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v17;
}

void sub_100069B54(double a1)
{
  v2 = v1;
  v4 = sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____SSSScreenshotPaperKitImageView_vellumOpacity;
  swift_beginAccess();
  if (*(v1 + v11) != a1)
  {
    v12 = OBJC_IVAR____SSSScreenshotPaperKitImageView_isChangingVellumOpacity;
    *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_isChangingVellumOpacity) = 1;
    v13 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (v14)
    {
      v15 = v14;
      v16 = dispatch thunk of CanvasElementViewController.canvasView.getter();

      if (v16)
      {
        dispatch thunk of Canvas.rootElement.getter();

        (*(v5 + 32))(v10, v7, v4);
        sub_100056538(v4, &protocol witness table for Image, *(v2 + v11));
        swift_beginAccess();
        v17 = *(v2 + v13);
        if (v17)
        {
          swift_endAccess();
          v18 = v17;
          v19 = dispatch thunk of CanvasElementViewController.canvasView.getter();

          if (v19)
          {
            type metadata accessor for Image();
            sub_100071208(&qword_1000D4818, &type metadata accessor for Image, &protocol conformance descriptor for Image);
            dispatch thunk of Canvas.merge<A>(_:)();
          }

          (*(v5 + 8))(v10, v4);
        }

        else
        {
          (*(v5 + 8))(v10, v4);
          swift_endAccess();
        }
      }
    }

    *(v2 + v12) = 0;
  }
}

void sub_100069FF0()
{
  v1 = v0;
  v2 = sub_100055840(&qword_1000D4170, &qword_10008FA80);
  __chkstk_darwin(v2 - 8);
  v4 = &v68 - v3;
  v5 = type metadata accessor for CRKeyPath();
  __chkstk_darwin(v5 - 8);
  v72 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
  v75 = *(v76 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v76);
  v74 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v79 = &v68 - v9;
  v80 = type metadata accessor for Image();
  v70 = *(v80 - 8);
  __chkstk_darwin(v80);
  v71 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v68 - v12;
  v14 = type metadata accessor for CanvasEditingMode();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v19 = *&v1[v18];
  v73 = v7;
  if (v19)
  {
    v20 = [v19 view];
    if (!v20)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v21 = v20;
    [v20 removeFromSuperview];

    v22 = *&v1[v18];
  }

  else
  {
    v22 = 0;
  }

  *&v1[v18] = 0;

  v23 = OBJC_IVAR____SSSScreenshotPaperKitImageView_image;
  swift_beginAccess();
  v24 = *&v1[v23];
  if (!v24)
  {
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v26 = v24;
  if (Strong)
  {
    [Strong _paperKitImageView:v1 willBeginUpdatingImage:v26];
    swift_unknownObjectRelease();
  }

  v78 = v26;
  v27 = *&v1[OBJC_IVAR____SSSScreenshotPaperKitImageView_context];
  v28 = OBJC_IVAR____SSSScreenshotPaperKitImageView_editable;
  swift_beginAccess();
  if (v1[v28] == 1)
  {
    v29 = v27;
    static CanvasEditingMode.default.getter();
  }

  else
  {
    (*(v15 + 104))(v17, enum case for CanvasEditingMode.readOnly(_:), v14);
    v30 = v27;
  }

  v69 = v4;
  sub_100055840(&qword_1000D4800, &qword_10008FD60);
  v31 = CanvasElementViewController.__allocating_init(context:editingMode:allowMediaCanvasElements:transparentBackground:)();
  dispatch thunk of CanvasElementViewController.isSixChannelBlendingEnabled.setter();
  dispatch thunk of CanvasElementViewController.sixChannelBlendingDisableSnapshotting.setter();
  v32 = v31;
  v33 = AnyCanvasElementViewController.toolPicker.getter();
  [v33 addObserver:v1];

  v34 = [v1 traitCollection];
  [v34 userInterfaceIdiom];

  dispatch thunk of CanvasElementViewController.canEditVellumOpacity.setter();
  v35 = OBJC_IVAR____SSSScreenshotPaperKitImageView_rulerHostView;
  swift_beginAccess();
  v36 = *&v1[v35];
  dispatch thunk of CanvasElementViewController.rulerHostView.setter();
  dispatch thunk of CanvasElementViewController.isImageAnalysisEnabled.setter();
  v37 = v32;
  v38 = [v37 view];
  if (!v38)
  {
    goto LABEL_20;
  }

  v39 = v38;
  v40 = [objc_opt_self() clearColor];
  [v39 setBackgroundColor:v40];

  v81[0] = dispatch thunk of CanvasElementViewController.publisher.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100055840(&qword_1000D4808, &qword_10008FD68);
  sub_100057608(&qword_1000D4810, &qword_1000D4808, &qword_10008FD68, &protocol conformance descriptor for AnyPublisher<A, B>);
  v77 = Publisher<>.sink(receiveValue:)();

  v41 = [v37 view];
  if (!v41)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v42 = v41;
  [v1 addSubview:v41];

  v43 = [v37 view];
  v44 = v69;
  v45 = v78;
  if (!v43)
  {
LABEL_22:
    __break(1u);
    return;
  }

  [v43 setAutoresizingMask:10];

  Image.init()();
  [v45 size];
  Image.frame.setter();
  Image.bounds.setter();
  v46 = v70;
  v47 = *(v70 + 16);
  v68 = v13;
  v47(v71, v13, v80);
  static CRKeyPath.unique.getter();
  sub_100071208(&qword_1000D4818, &type metadata accessor for Image, &protocol conformance descriptor for Image);
  Capsule.init(_:id:)();
  v48 = *&v1[v18];
  *&v1[v18] = v37;
  v49 = v37;

  v50 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageCancellable;
  swift_beginAccess();
  *&v1[v50] = v77;

  v51 = AnyCanvasElementViewController.toolPicker.getter();
  [v51 setColorUserInterfaceStyle:1];

  v52 = AnyCanvasElementViewController.toolPicker.getter();
  v53 = [v1 traitCollection];
  v54 = [v53 userInterfaceIdiom];

  v55 = v46;
  if (v54)
  {
    v56 = 0;
  }

  else
  {
    v56 = _UISolariumEnabled() ^ 1;
  }

  v57 = v76;
  [v52 _setWantsClearBackgroundColorInCompactSize:v56];

  v58 = AnyCanvasElementViewController.toolPicker.getter();
  [v58 _setShowsHandwritingTool:0];

  static TaskPriority.userInitiated.getter();
  v59 = type metadata accessor for TaskPriority();
  (*(*(v59 - 8) + 56))(v44, 0, 1, v59);
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = v75;
  v62 = v74;
  v63 = v79;
  (*(v75 + 16))(v74, v79, v57);
  v64 = (*(v61 + 80) + 48) & ~*(v61 + 80);
  v65 = swift_allocObject();
  *(v65 + 2) = 0;
  *(v65 + 3) = 0;
  *(v65 + 4) = v60;
  v66 = v78;
  *(v65 + 5) = v78;
  (*(v61 + 32))(&v65[v64], v62, v57);
  v67 = v66;
  sub_10005DF9C(0, 0, v44, &unk_10008FD70, v65);

  sub_100055E84(v44, &qword_1000D4170, &qword_10008FA80);

  (*(v61 + 8))(v63, v57);
  (*(v55 + 8))(v68, v80);
}

void sub_10006ACDC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for CanvasEditingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____SSSScreenshotPaperKitImageView_editable;
  swift_beginAccess();
  v2[v8] = a1;
  [v2 setUserInteractionEnabled:a1 & 1];
  v9 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v10 = *&v2[v9];
  if (v10)
  {
    if (v2[v8] == 1)
    {
      v11 = v10;
      static CanvasEditingMode.default.getter();
    }

    else
    {
      (*(v5 + 104))(v7, enum case for CanvasEditingMode.readOnly(_:), v4);
      v12 = v10;
    }

    dispatch thunk of CanvasElementViewController.editingMode.setter();
  }
}

id sub_10006AE38(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____SSSScreenshotPaperKitImageView_context;
  type metadata accessor for CRContext();
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v12 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  sub_100055E84(v18, &qword_1000D4108, &unk_10008F820);
  *&v5[v11] = v12;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_imageCancellable] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedImageTask] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedHDRImage] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedSDRImage] = 0;
  v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_isChangingVellumOpacity] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_vellumOpacity] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_changeCounter] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_image] = 0;
  v13 = &v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_cropInfo];
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v14 = &v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_sizeMultiplier];
  *v14 = 0;
  v14[1] = 0;
  v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_useTrilinearMinificationFilter] = 0;
  v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_editable] = 0;
  *&v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_rulerHostView] = 0;
  v5[OBJC_IVAR____SSSScreenshotPaperKitImageView_annotationsEnabled] = 1;
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  [v15 setUserInteractionEnabled:0];
  return v15;
}

void sub_10006B044(char a1)
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    v6 = dispatch thunk of CanvasElementViewController.canvasView.getter();
    if (a1)
    {
      v7 = [v5 presentedViewController];
      if (!v7)
      {
        v9 = *(v1 + v3);
        if (v9)
        {
          v10 = v9;
          v11 = AnyCanvasElementViewController.toolPicker.getter();

          [v11 setOverrideUserInterfaceStyle:2];
        }

        if (!v6)
        {
          if (([v5 isFirstResponder] & 1) == 0)
          {
            [v5 becomeFirstResponder];
          }

          goto LABEL_12;
        }

        if (([v6 isFirstResponder] & 1) == 0 && (objc_msgSend(v6, "_isAncestorOfFirstResponder") & 1) == 0)
        {
          [v5 becomeFirstResponder];

          goto LABEL_12;
        }

LABEL_11:

        v5 = v6;
LABEL_12:

        return;
      }
    }

    if (v6)
    {
      v8 = v6;
      if ([v8 isFirstResponder])
      {
        [v8 resignFirstResponder];
      }
    }

    if ([v5 isFirstResponder])
    {
      [v5 resignFirstResponder];
    }

    goto LABEL_11;
  }
}

void sub_10006B2D0(void *a1)
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_rulerHostView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = *(v1 + v3);
    v9 = v7;
    dispatch thunk of CanvasElementViewController.rulerHostView.setter();
  }
}

void sub_10006B414(char a1)
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_annotationsEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = [v5 view];
    if (v6)
    {
      v7 = v6;
      [v6 setUserInteractionEnabled:*(v1 + v3)];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10006B4BC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    v6 = v5;
    v7 = dispatch thunk of CanvasElementViewController.canvasView.getter();
    if (v7)
    {
      v8 = v7;
      [a1 zoomScale];
      v9 = [v2 window];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 screen];

        [v11 scale];
      }

      v12 = v8;
      dispatch thunk of AnyCanvas.screenScaleOverride.setter();
      [a1 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      [a1 adjustedContentInset];
      [v12 convertRect:a1 fromCoordinateSpace:{sub_10007058C(v14, v16, v18, v20, v21, v22)}];
      dispatch thunk of Canvas.visibleBoundsOverride.setter();

      v6 = v12;
    }
  }
}

void sub_10006B6C4(void *a1)
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    v6 = dispatch thunk of CanvasElementViewController.canvasView.getter();
    if (v6)
    {
      v7 = v6;
      [a1 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [a1 adjustedContentInset];
      v18 = sub_10007058C(v9, v11, v13, v15, v16, v17);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v25 = v7;
      [v25 convertRect:a1 fromCoordinateSpace:{v18, v20, v22, v24}];
      dispatch thunk of Canvas.visibleBoundsOverride.setter();

      v5 = v25;
    }
  }
}

void sub_10006B994(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____SSSScreenshotPaperKitImageView_changeCounter;
    swift_beginAccess();
    v12 = *&v10[v11];
    v13 = __CFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      *&v10[v11] = v14;
      if (v10[OBJC_IVAR____SSSScreenshotPaperKitImageView_isChangingVellumOpacity])
      {
      }

      else
      {
        sub_100071124();
        v21 = static OS_dispatch_queue.main.getter();
        v15 = swift_allocObject();
        *(v15 + 16) = v10;
        aBlock[4] = sub_100071170;
        aBlock[5] = v15;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10005D444;
        aBlock[3] = &unk_1000BBD90;
        v19 = _Block_copy(aBlock);
        v20 = v10;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_100071208(&qword_1000D4408, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100055840(&qword_1000D4410, &unk_10008FA68);
        sub_100057608(&qword_1000D4418, &qword_1000D4410, &unk_10008FA68, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v16 = v19;
        v17 = v21;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v16);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

void sub_10006BCF0()
{
  v1 = v0;
  v2 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = v3;
    CanvasElementViewController<>.alwaysUseMaxResolutionImage.setter();
    v5 = dispatch thunk of CanvasElementViewController.canvasView.getter();
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor:v7];
    }

    v8 = dispatch thunk of CanvasElementViewController.canvasView.getter();
    if (v8)
    {
      v9 = v8;
      v10 = CanvasView.canvasScrollView.getter();

      if (!v10)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      [v10 setMinimumZoomScale:1.0];
    }

    v11 = dispatch thunk of CanvasElementViewController.canvasView.getter();
    if (v11)
    {
      v12 = v11;
      v13 = CanvasView.canvasScrollView.getter();

      if (!v13)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      [v13 setMaximumZoomScale:1.0];
    }

    v14 = dispatch thunk of CanvasElementViewController.canvasView.getter();
    if (v14)
    {
      v15 = v14;
      v16 = CanvasView.canvasScrollView.getter();

      if (!v16)
      {
LABEL_44:
        __break(1u);
        return;
      }

      [v16 setScrollEnabled:0];
    }

    dispatch thunk of CanvasElementViewController.shouldDeselectElementsWhenToolPickerIsHidden.setter();
    v17 = dispatch thunk of CanvasElementViewController.canvasView.getter();
    if (v17)
    {
      v18 = v17;
      v19 = v1;
      dispatch thunk of CanvasView.contentSnapshottingView.setter();
    }

    v20 = [v4 view];
    if (!v20)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v21 = v20;
    v22 = OBJC_IVAR____SSSScreenshotPaperKitImageView_annotationsEnabled;
    swift_beginAccess();
    [v21 setUserInteractionEnabled:v1[v22]];

    v23 = dispatch thunk of CanvasElementViewController.canvasView.getter();
    if (v23)
    {
      v24 = v23;
      [v23 setOverrideUserInterfaceStyle:1];
    }

    v25 = dispatch thunk of CanvasElementViewController.canvasView.getter();
    if (!v25)
    {
      goto LABEL_38;
    }

    v26 = v25;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = [Strong _paperKitImageViewOverlayViewController:v1];
      swift_unknownObjectRelease();
      if (v28)
      {
        v29 = v26;
        v30 = v28;
        dispatch thunk of AnyCanvas.overlayViewControllerForPresentingUI.setter();
      }
    }

    v31 = [v1 superview];
    if (!v31)
    {
LABEL_37:

LABEL_38:
      return;
    }

    v32 = v31;
    while (1)
    {
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        break;
      }

      v34 = [v32 superview];

      v32 = v34;
      if (!v34)
      {
        goto LABEL_37;
      }
    }

    v35 = v33;
    v36 = v26;
    v37 = dispatch thunk of AnyCanvas.movableOverlayViews.getter();

    v57 = v26;
    if (v37 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (v45)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v45 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
LABEL_29:
        if (v45 >= 1)
        {
          v46 = 0;
          do
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v47 = *(v37 + 8 * v46 + 32);
            }

            v48 = v47;
            ++v46;
            [v47 bounds];
            [v35 convertRect:v48 fromCoordinateSpace:?];
            v50 = v49;
            v52 = v51;
            v54 = v53;
            v56 = v55;
            [v35 addSubview:v48];
            [v48 setFrame:{v50, v52, v54, v56}];
          }

          while (v45 != v46);
          goto LABEL_36;
        }

        __break(1u);
        goto LABEL_41;
      }
    }

LABEL_36:
    v37, v38, v39, v40, v41, v42, v43, v44;
    sub_10006B4BC(v35);

    v26 = v57;
    goto LABEL_37;
  }
}

uint64_t sub_10006C188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_100055840(&qword_1000D4170, &qword_10008FA80);
  v6[8] = swift_task_alloc();
  v7 = sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v6[11] = *(v8 + 64);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_10006C2A4, 0, 0);
}

uint64_t sub_10006C2A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [*(v0 + 48) ss_ioSurfaceImageData];
    if (v3)
    {
      v4 = *(v0 + 104);
      v5 = *(v0 + 80);
      v26 = *(v0 + 88);
      v6 = *(v0 + 72);
      v28 = *(v0 + 64);
      v23 = v2;
      v7 = *(v0 + 56);
      v24 = *(v0 + 96);
      v25 = *(v0 + 48);
      v8 = v3;
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v10;
      v11 = v10;

      v22 = *(v5 + 16);
      v22(v4, v7, v6);
      v12 = swift_task_alloc();
      *(v12 + 16) = v9;
      *(v12 + 24) = v11;
      v21 = v6;
      Capsule.callAsFunction<A>(_:)();

      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v28, 1, 1, v13);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22(v24, v4, v6);
      type metadata accessor for MainActor();

      v15 = v25;
      v16 = static MainActor.shared.getter();
      v17 = (*(v5 + 80) + 40) & ~*(v5 + 80);
      v18 = swift_allocObject();
      *(v18 + 2) = v16;
      *(v18 + 3) = &protocol witness table for MainActor;
      *(v18 + 4) = v14;
      (*(v5 + 32))(&v18[v17], v24, v21);
      *&v18[(v26 + v17 + 7) & 0xFFFFFFFFFFFFFFF8] = v15;

      sub_10005D144(0, 0, v28, &unk_10008FD20, v18);
      sub_100057E8C(v9, v27);

      (*(v5 + 8))(v4, v21);
    }

    else
    {
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10006C5B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_100055840(&qword_1000D47F8, &qword_10008FD28);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_getKeyPath();
  sub_100057D90(a2, a3);
  CRDataAsset.init(_:)();
  v8 = enum case for CRAssetOrData.data(_:);
  v9 = type metadata accessor for CRAssetOrData();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v7, v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  return Capsule.Ref.subscript.setter();
}

uint64_t sub_10006C71C(uint64_t a1)
{
  v2 = sub_100055840(&qword_1000D47F8, &qword_10008FD28);
  __chkstk_darwin(v2 - 8);
  sub_100064290(a1, &v5 - v3, &qword_1000D47F8, &qword_10008FD28);
  return Image.image.setter();
}

uint64_t sub_10006C7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  sub_100055840(&qword_1000D46D0, &qword_10008FC18);
  v6[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006C898, v8, v7);
}

uint64_t sub_10006C898()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v0[14];
      v6 = v0[12];
      v7 = sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
      v8 = *(v7 - 8);
      (*(v8 + 16))(v5, v6, v7);
      (*(v8 + 56))(v5, 0, 1, v7);
      v9 = v4;
      dispatch thunk of CanvasElementViewController.rootElement.setter();
    }

    sub_10006BCF0();
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      [v10 _paperKitImageView:v2 didFinishUpdatingImage:v0[13]];
      swift_unknownObjectRelease();
    }
  }

  v11 = v0[1];

  return v11();
}

void sub_10006CA50()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = &v0[OBJC_IVAR____SSSScreenshotPaperKitImageView_cropInfo];
  swift_beginAccess();
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v14.origin.x = v2;
  v14.origin.y = v3;
  v14.size.width = v4;
  v14.size.height = v5;
  if (!CGRectIsEmpty(v14))
  {
    v6 = &v0[OBJC_IVAR____SSSScreenshotPaperKitImageView_sizeMultiplier];
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    v9 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
    swift_beginAccess();
    v10 = *&v0[v9];
    if (v10)
    {
      v11 = [v10 view];
      if (v11)
      {
        v12 = v11;
        [v11 setFrame:{v2, v3, v4 * v7, v5 * v8}];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void *sub_10006CC68(void *a1, char a2, char a3, double a4, double a5)
{
  v6 = v5;
  v11 = sub_100055840(&qword_1000D46D0, &qword_10008FC18);
  __chkstk_darwin(v11 - 8);
  v13 = &v60 - v12;
  v14 = sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v18 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v19 = *(v6 + v18);
  if (!v19)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_11;
  }

  v20 = v19;
  dispatch thunk of CanvasElementViewController.rootElement.getter();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
LABEL_11:
    sub_100055E84(v13, &qword_1000D46D0, &qword_10008FC18);
    return 0;
  }

  (*(v15 + 32))(v17, v13, v14);
  if (sub_1000705E4() > 1.0 && (a3 & 1) != 0)
  {
    v21 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedHDRImage;
    swift_beginAccess();
    v22 = *(v6 + v21);
    if (v22)
    {
      v23 = qword_1000D4CE0;
      v24 = v22;
      v25 = v22;
      if (v23 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100058ECC(v26, qword_1000D4CE8);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_18;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Returning cached HDR image";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

LABEL_18:

      (*(v15 + 8))(v17, v14);
      return v24;
    }
  }

  v32 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedSDRImage;
  swift_beginAccess();
  v33 = *(v6 + v32);
  if (v33)
  {
    v34 = qword_1000D4CE0;
    v24 = v33;
    v35 = v33;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100058ECC(v36, qword_1000D4CE8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_18;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Returning cached SDR image";
    goto LABEL_17;
  }

  if (qword_1000D4CE0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_100058ECC(v37, qword_1000D4CE8);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v63 = v39;
    v41 = v40;
    v62 = swift_slowAlloc();
    v64[0] = v62;
    *v41 = 67109634;
    *(v41 + 4) = a2 & 1;
    *(v41 + 8) = 1024;
    *(v41 + 10) = a3 & 1;
    *(v41 + 14) = 2080;
    v42 = CGSize.debugDescription.getter();
    v44 = v43;
    v45 = sub_100068488(v42, v43, v64);
    v61 = v38;
    v46 = v45;
    v44, v47, v48, v49, v50, v51, v52, v53;
    *(v41 + 16) = v46;
    v54 = v61;
    _os_log_impl(&_mh_execute_header, v61, v63, "Generating image: %{BOOL}d, %{BOOL}d, %s", v41, 0x18u);
    sub_100064460(v62);
  }

  else
  {
  }

  v55 = OBJC_IVAR____SSSScreenshotPaperKitImageView_image;
  swift_beginAccess();
  v56 = *(v6 + v55);
  if (v56)
  {
    v57 = [v56 ss_hdrSurfaceCGImage];
  }

  else
  {
    v57 = 0;
  }

  sub_10006FB9C(a1, v17, v57, a2 & 1, a3 & 1, a4);
  v59 = v58;

  (*(v15 + 8))(v17, v14);
  return v59;
}

void sub_10006D2F0(void *a1)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_100055840(&qword_1000D4170, &qword_10008FA80);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_100055840(&qword_1000D46D0, &qword_10008FC18);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  v9 = sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  if (qword_1000D4CE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100058ECC(v15, qword_1000D4CE8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Invalidating cached images", v18, 2u);
  }

  v19 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedImageTask;
  swift_beginAccess();
  if (*(v2 + v19))
  {

    Task.cancel()();
  }

  v20 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedSDRImage;
  swift_beginAccess();
  v21 = *(v2 + v20);
  *(v2 + v20) = 0;

  v22 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedHDRImage;
  swift_beginAccess();
  v23 = *(v2 + v22);
  *(v2 + v22) = 0;

  v24 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v25 = *(v2 + v24);
  if (!v25)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_12;
  }

  v26 = v25;
  dispatch thunk of CanvasElementViewController.rootElement.getter();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_12:
    sub_100055E84(v8, &qword_1000D46D0, &qword_10008FC18);
    return;
  }

  v27 = *(v10 + 32);
  v48 = v10 + 32;
  v47 = v27;
  v27(v14, v8, v9);
  v28 = OBJC_IVAR____SSSScreenshotPaperKitImageView_image;
  swift_beginAccess();
  v29 = *(v2 + v28);
  v49 = v19;
  if (v29)
  {
    v46 = [v29 ss_hdrSurfaceCGImage];
  }

  else
  {
    v46 = 0;
  }

  v30 = sub_1000705E4();
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = v50;
  (*(v10 + 16))(v50, v14, v9);
  v34 = v5;
  v35 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v36 = swift_allocObject();
  v45 = v14;
  v37 = v36;
  v36[2] = 0.0;
  v36[3] = 0.0;
  *(v36 + 4) = v32;
  v36[5] = v30;
  v38 = v9;
  v39 = v51;
  *(v36 + 6) = v51;
  v47(v36 + v35, v33, v38);
  v40 = v46;
  *(v37 + ((v11 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
  v41 = v40;
  v42 = v39;
  v43 = sub_10005DF9C(0, 0, v34, &unk_10008FC28, v37);

  sub_100055E84(v34, &qword_1000D4170, &qword_10008FA80);
  (*(v10 + 8))(v45, v38);
  *(v2 + v49) = v43;
}

uint64_t sub_10006D894(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 184) = a6;
  *(v8 + 176) = a1;
  *(v8 + 168) = a5;
  type metadata accessor for CRKeyPath();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = type metadata accessor for Paper();
  *(v8 + 224) = swift_task_alloc();
  v9 = sub_100055840(&qword_1000D47D8, &qword_10008FCC8);
  *(v8 + 232) = v9;
  *(v8 + 240) = *(v9 - 8);
  *(v8 + 248) = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 - 8);
  *(v8 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_10006DA24, 0, 0);
}

uint64_t sub_10006DA24()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_10006DAF0;

  return sub_100061404(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10006DAF0()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = v2[34];
  v4 = v2[33];
  v5 = v2[32];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_10006E3FC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10006DC88;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10006DC88()
{
  v1 = *(v0 + 288);
  if (static Task<>.isCancelled.getter())
  {
    if (qword_1000D4CE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100058ECC(v2, qword_1000D4CE8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Image caching cancelled", v5, 2u);
    }

    goto LABEL_15;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 296) = Strong;
  if (!Strong)
  {
LABEL_16:

    v17 = *(v0 + 8);

    return v17();
  }

  v7 = 1.0;
  if (*(v0 + 176) > 1.0)
  {
    v8 = *(v0 + 200);
    v9 = *(v0 + 184);
    v10 = [v9 modelModificationInfo];
    [v10 cropInfo];

    v11 = [v9 modelModificationInfo];
    [v11 cropInfo];

    if (!v8)
    {
      goto LABEL_22;
    }

    v12 = *(v0 + 200);
    v13 = CGImageGetColorSpace(v12);
    if (v13)
    {
      v14 = v13;
      if (CGColorSpaceIsHDR(v13) || CGColorSpaceUsesExtendedRange(v14))
      {
        CGImageGetContentHeadroom();
        v16 = v15;

        v7 = v16;
        goto LABEL_22;
      }
    }

LABEL_22:
    sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
    Capsule<>.maxHDRHeadroom()();
    if (v27 > 1.0)
    {
      if (v7 <= v27)
      {
        v7 = v27;
      }

      if (v7 <= 4.0)
      {
        goto LABEL_27;
      }
    }

    if (v7 <= 1.0)
    {
      v29 = 0;
      v28 = 0;
    }

    else
    {
LABEL_27:
      v28 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedDisplayP3);
      v29 = 1;
    }

    v30 = [*(v0 + 184) environmentDescription];
    [v30 imageScale];

    if (!v28)
    {
      goto LABEL_33;
    }

    v31 = v28;
    if (CGColorSpaceIsHDR(v31))
    {
      if (!v29)
      {
LABEL_32:

LABEL_33:
        type metadata accessor for CanvasElementImageRenderer();
        v32 = CanvasElementImageRenderer.__allocating_init(size:scale:)(v38);
LABEL_36:
        *(v0 + 304) = v32;
        v33 = *(v0 + 192);

        dispatch thunk of CanvasElementRenderer.sixChannelBlending.setter();

        Paper.init(frame:)();
        static CRKeyPath.unique.getter();
        sub_100071208(&unk_1000D47E0, &type metadata accessor for Paper, &protocol conformance descriptor for Paper);
        Capsule.init(_:id:)();
        *(swift_task_alloc() + 16) = v33;
        Capsule.callAsFunction<A>(_:)();
        *(v0 + 312) = v1;

        *(v0 + 16) = v36;
        *(v0 + 24) = v37;
        *(v0 + 32) = v38;
        *(v0 + 40) = v39;
        *(v0 + 48) = 0;
        v35 = &async function pointer to dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:) + async function pointer to dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:);
        v34 = swift_task_alloc();
        *(v0 + 320) = v34;
        *v34 = v0;
        v34[1] = sub_10006EB6C;
        v25 = v0 + 16;
        v26 = *(v0 + 248);
        goto LABEL_37;
      }
    }

    else if ((v29 & CGColorSpaceUsesExtendedRange(v31) & 1) == 0)
    {
      goto LABEL_32;
    }

    type metadata accessor for CanvasElementImageRenderer();
    v32 = CanvasElementImageRenderer.__allocating_init(size:scale:opaque:colorSpace:headroom:)(v38);
    goto LABEL_36;
  }

  *(v0 + 336) = 0;
  if (static Task<>.isCancelled.getter())
  {
    v3 = *(v0 + 296);
LABEL_15:

    goto LABEL_16;
  }

  v19 = *(v0 + 184);
  v20 = *(v0 + 192);
  v21 = [v19 modelModificationInfo];
  [v21 cropInfo];

  v22 = [v19 modelModificationInfo];
  [v22 cropInfo];

  v23 = [v19 environmentDescription];
  [v23 imageScale];

  type metadata accessor for CanvasElementImageRenderer();
  *(v0 + 344) = CanvasElementImageRenderer.__allocating_init(size:scale:)(v38);
  dispatch thunk of CanvasElementRenderer.sixChannelBlending.setter();
  Paper.init(frame:)();
  static CRKeyPath.unique.getter();
  sub_100071208(&unk_1000D47E0, &type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  Capsule.init(_:id:)();
  *(swift_task_alloc() + 16) = v20;
  Capsule.callAsFunction<A>(_:)();

  *(v0 + 56) = v36;
  *(v0 + 64) = v37;
  *(v0 + 72) = v38;
  *(v0 + 80) = v39;
  *(v0 + 88) = 0;
  v35 = &async function pointer to dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:) + async function pointer to dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:);
  v24 = swift_task_alloc();
  *(v0 + 352) = v24;
  *v24 = v0;
  v24[1] = sub_10006EFC0;
  v25 = v0 + 56;
  v26 = *(v0 + 248);
LABEL_37:

  return (v35)(v26, v25, 0, 0);
}

uint64_t sub_10006E3FC()
{
  if (static Task<>.isCancelled.getter())
  {
    if (qword_1000D4CE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100058ECC(v1, qword_1000D4CE8);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Image caching cancelled", v4, 2u);
    }

    goto LABEL_15;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 296) = Strong;
  if (!Strong)
  {
LABEL_16:

    v16 = *(v0 + 8);

    return v16();
  }

  v6 = 1.0;
  if (*(v0 + 176) > 1.0)
  {
    v7 = *(v0 + 200);
    v8 = *(v0 + 184);
    v9 = [v8 modelModificationInfo];
    [v9 cropInfo];

    v10 = [v8 modelModificationInfo];
    [v10 cropInfo];

    if (!v7)
    {
      goto LABEL_22;
    }

    v11 = *(v0 + 200);
    v12 = CGImageGetColorSpace(v11);
    if (v12)
    {
      v13 = v12;
      if (CGColorSpaceIsHDR(v12) || CGColorSpaceUsesExtendedRange(v13))
      {
        CGImageGetContentHeadroom();
        v15 = v14;

        v6 = v15;
        goto LABEL_22;
      }
    }

LABEL_22:
    sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
    Capsule<>.maxHDRHeadroom()();
    if (v26 > 1.0)
    {
      if (v6 <= v26)
      {
        v6 = v26;
      }

      if (v6 <= 4.0)
      {
        goto LABEL_27;
      }
    }

    if (v6 <= 1.0)
    {
      v28 = 0;
      v27 = 0;
    }

    else
    {
LABEL_27:
      v27 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedDisplayP3);
      v28 = 1;
    }

    v29 = [*(v0 + 184) environmentDescription];
    [v29 imageScale];

    if (!v27)
    {
      goto LABEL_33;
    }

    v30 = v27;
    if (CGColorSpaceIsHDR(v30))
    {
      if (!v28)
      {
LABEL_32:

LABEL_33:
        type metadata accessor for CanvasElementImageRenderer();
        v31 = CanvasElementImageRenderer.__allocating_init(size:scale:)(v37);
LABEL_36:
        *(v0 + 304) = v31;
        v32 = *(v0 + 192);

        dispatch thunk of CanvasElementRenderer.sixChannelBlending.setter();

        Paper.init(frame:)();
        static CRKeyPath.unique.getter();
        sub_100071208(&unk_1000D47E0, &type metadata accessor for Paper, &protocol conformance descriptor for Paper);
        Capsule.init(_:id:)();
        *(swift_task_alloc() + 16) = v32;
        Capsule.callAsFunction<A>(_:)();
        *(v0 + 312) = 0;

        *(v0 + 16) = v35;
        *(v0 + 24) = v36;
        *(v0 + 32) = v37;
        *(v0 + 40) = v38;
        *(v0 + 48) = 0;
        v34 = &async function pointer to dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:) + async function pointer to dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:);
        v33 = swift_task_alloc();
        *(v0 + 320) = v33;
        *v33 = v0;
        v33[1] = sub_10006EB6C;
        v24 = v0 + 16;
        v25 = *(v0 + 248);
        goto LABEL_37;
      }
    }

    else if ((v28 & CGColorSpaceUsesExtendedRange(v30) & 1) == 0)
    {
      goto LABEL_32;
    }

    type metadata accessor for CanvasElementImageRenderer();
    v31 = CanvasElementImageRenderer.__allocating_init(size:scale:opaque:colorSpace:headroom:)(v37);
    goto LABEL_36;
  }

  *(v0 + 336) = 0;
  if (static Task<>.isCancelled.getter())
  {
    v2 = *(v0 + 296);
LABEL_15:

    goto LABEL_16;
  }

  v18 = *(v0 + 184);
  v19 = *(v0 + 192);
  v20 = [v18 modelModificationInfo];
  [v20 cropInfo];

  v21 = [v18 modelModificationInfo];
  [v21 cropInfo];

  v22 = [v18 environmentDescription];
  [v22 imageScale];

  type metadata accessor for CanvasElementImageRenderer();
  *(v0 + 344) = CanvasElementImageRenderer.__allocating_init(size:scale:)(v37);
  dispatch thunk of CanvasElementRenderer.sixChannelBlending.setter();
  Paper.init(frame:)();
  static CRKeyPath.unique.getter();
  sub_100071208(&unk_1000D47E0, &type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  Capsule.init(_:id:)();
  *(swift_task_alloc() + 16) = v19;
  Capsule.callAsFunction<A>(_:)();

  *(v0 + 56) = v35;
  *(v0 + 64) = v36;
  *(v0 + 72) = v37;
  *(v0 + 80) = v38;
  *(v0 + 88) = 0;
  v34 = &async function pointer to dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:) + async function pointer to dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:);
  v23 = swift_task_alloc();
  *(v0 + 352) = v23;
  *v23 = v0;
  v23[1] = sub_10006EFC0;
  v24 = v0 + 56;
  v25 = *(v0 + 248);
LABEL_37:

  return (v34)(v25, v24, 0, 0);
}

uint64_t sub_10006EB6C(uint64_t a1)
{
  *(*v1 + 328) = a1;

  return _swift_task_switch(sub_10006EC6C, 0, 0);
}

uint64_t sub_10006EC6C()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 328);
  *(v0 + 336) = v4;
  if (static Task<>.isCancelled.getter())
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 184);
    v13 = *(v0 + 192);
    v8 = [v7 modelModificationInfo];
    [v8 cropInfo];

    v9 = [v7 modelModificationInfo];
    [v9 cropInfo];

    v10 = [v7 environmentDescription];
    [v10 imageScale];

    type metadata accessor for CanvasElementImageRenderer();
    *(v0 + 344) = CanvasElementImageRenderer.__allocating_init(size:scale:)(v17);
    dispatch thunk of CanvasElementRenderer.sixChannelBlending.setter();
    Paper.init(frame:)();
    static CRKeyPath.unique.getter();
    sub_100071208(&unk_1000D47E0, &type metadata accessor for Paper, &protocol conformance descriptor for Paper);
    Capsule.init(_:id:)();
    *(swift_task_alloc() + 16) = v13;
    Capsule.callAsFunction<A>(_:)();

    *(v0 + 56) = v15;
    *(v0 + 64) = v16;
    *(v0 + 72) = v17;
    *(v0 + 80) = v18;
    *(v0 + 88) = 0;
    v14 = &async function pointer to dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:) + async function pointer to dispatch thunk of CanvasElementImageRenderer.image(from:bounds:darkMode:isRTL:);
    v11 = swift_task_alloc();
    *(v0 + 352) = v11;
    *v11 = v0;
    v11[1] = sub_10006EFC0;
    v12 = *(v0 + 248);

    return (v14)(v12, v0 + 56, 0, 0);
  }
}

uint64_t sub_10006EFC0(uint64_t a1)
{
  *(*v1 + 360) = a1;

  return _swift_task_switch(sub_10006F0C0, 0, 0);
}

uint64_t sub_10006F0C0()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);

  (*(v2 + 8))(v1, v3);
  if (static Task<>.isCancelled.getter())
  {
    v4 = *(v0 + 360);
    v5 = *(v0 + 336);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    if (qword_1000D4CE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100058ECC(v8, qword_1000D4CE8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Cached images updated", v11, 2u);
    }

    type metadata accessor for MainActor();
    *(v0 + 368) = static MainActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10006F2B8, v13, v12);
  }
}

uint64_t sub_10006F2B8()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[37];

  v4 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedSDRImage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v1;
  v6 = v1;

  v7 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedHDRImage;
  swift_beginAccess();
  v8 = *(v3 + v7);
  *(v3 + v7) = v2;
  v9 = v2;

  return _swift_task_switch(sub_10006F390, 0, 0);
}

uint64_t sub_10006F390()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10006F4F8(void *a1, char a2, char a3, double a4, double a5)
{
  v10 = sub_10006CC68(a1, a2, 0, a4, a5);
  if ((a3 & 1) != 0 && sub_1000705E4() > 1.0)
  {
    v11 = sub_10006CC68(a1, a2 & 1, 1, a4, a5);
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_opt_self();
  v13.super.isa = UTType._bridgeToObjectiveC()().super.isa;
  v14 = [v10 CGImage];
  v15 = [v11 CGImage];
  v16 = [v12 ss_imageProperties];
  if (v16)
  {
    v17 = v16;
    v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v18, v20, v21, v22, v23, v24, v25, v26;
  }

  else
  {
    v19.super.isa = 0;
  }

  v27 = [a1 imageDescription];
  v28 = [v12 ss_imageDataWithDataType:v13.super.isa sdrImage:v14 hdrImage:v15 properties:v19.super.isa imageDescription:v27];

  if (v28)
  {
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v29;
}

void sub_10006F888(void *a1)
{
  v3 = type metadata accessor for CanvasEditingMode();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([a1 isVisible])
  {
    v8 = OBJC_IVAR____SSSScreenshotPaperKitImageView_editable;
    swift_beginAccess();
    v1[v8] = 1;
    [v1 setUserInteractionEnabled:1];
    v9 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
    swift_beginAccess();
    v10 = *&v1[v9];
    if (v10)
    {
      if (v1[v8] == 1)
      {
        v11 = v10;
        static CanvasEditingMode.default.getter();
      }

      else
      {
        (*(v4 + 104))(v7, enum case for CanvasEditingMode.readOnly(_:), v3);
        v12 = v10;
      }

      dispatch thunk of CanvasElementViewController.editingMode.setter();
    }
  }
}

void sub_10006FB9C(void *a1, uint64_t a2, void *a3, char a4, char a5, double a6)
{
  v12 = type metadata accessor for CRKeyPath();
  __chkstk_darwin(v12 - 8);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Paper();
  __chkstk_darwin(v46);
  v48 = sub_100055840(&qword_1000D47D8, &qword_10008FCC8);
  v45 = *(v48 - 8);
  v14 = __chkstk_darwin(v48);
  v16 = &v45 - v15;
  v17 = [a1 modelModificationInfo];
  [v17 cropInfo];
  v49 = v52;
  v50 = v53;

  v18 = [a1 modelModificationInfo];
  [v18 cropInfo];
  v19 = *&v53.i64[1];
  v20 = *v53.i64;

  if (a5)
  {
    v21 = 1.0;
    if (a3)
    {
      v22 = a3;
      v23 = CGImageGetColorSpace(v22);
      if (v23)
      {
        v24 = v23;
        if (CGColorSpaceIsHDR(v23) || CGColorSpaceUsesExtendedRange(v24))
        {
          CGImageGetContentHeadroom();
          v26 = v25;

          v21 = v26;
        }

        else
        {
        }
      }

      else
      {
      }
    }

    sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
    Capsule<>.maxHDRHeadroom()();
    if (v29 > 1.0)
    {
      if (v21 <= v29)
      {
        v21 = v29;
      }

      if (v21 <= 4.0)
      {
        goto LABEL_15;
      }
    }

    if (v21 <= 1.0)
    {
      v27 = 0;
      v28 = 0;
    }

    else
    {
LABEL_15:
      v28 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedDisplayP3);
      v27 = 1;
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v30 = [a1 environmentDescription];
  [v30 imageScale];

  if ((a4 & 1) == 0)
  {
    swift_getKeyPath();
    sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
    Capsule.subscript.getter();

    v19 = *&v52.i64[1];
    v20 = *v52.i64;
  }

  if (a6 <= 0.0 || v19 <= 0.0)
  {
    a6 = v20;
    if (!v28)
    {
LABEL_27:
      type metadata accessor for CanvasElementImageRenderer();
      v32 = CanvasElementImageRenderer.__allocating_init(size:scale:)(a6);
      goto LABEL_30;
    }
  }

  else if (!v28)
  {
    goto LABEL_27;
  }

  v31 = v28;
  if (CGColorSpaceIsHDR(v31))
  {
    if (!v27)
    {
LABEL_26:

      goto LABEL_27;
    }
  }

  else if ((CGColorSpaceUsesExtendedRange(v31) & v27 & 1) == 0)
  {
    goto LABEL_26;
  }

  type metadata accessor for CanvasElementImageRenderer();
  v32 = CanvasElementImageRenderer.__allocating_init(size:scale:opaque:colorSpace:headroom:)(a6);
LABEL_30:
  v33 = v32;

  dispatch thunk of CanvasElementRenderer.sixChannelBlending.setter();

  if ((a4 & 1) == 0)
  {
    swift_getKeyPath();
    sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
    Capsule.subscript.getter();
  }

  Paper.init(frame:)();
  static CRKeyPath.unique.getter();
  sub_100071208(&unk_1000D47E0, &type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v34 = Capsule.init(_:id:)();
  __chkstk_darwin(v34);
  *(&v45 - 2) = a2;
  v35 = v48;
  Capsule.callAsFunction<A>(_:)();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  if (a4)
  {
    v37 = -1;
  }

  else
  {
    v37 = 0;
  }

  v38 = vdupq_n_s64(v37);
  v49 = vandq_s8(v49, v38);
  v50 = vandq_s8(v50, v38);
  v54 = (a4 & 1) == 0;
  v39 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v40 = swift_allocObject();
  *(v40 + 16) = v33;
  *(v40 + 24) = v16;
  v41 = v50;
  *(v40 + 32) = v49;
  *(v40 + 48) = v41;
  *(v40 + 64) = v54;
  *(v40 + 72) = v36;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_100070C2C;
  *(v42 + 24) = v40;
  v53.i64[0] = sub_100070C4C;
  v53.i64[1] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  v52.i64[0] = sub_100069120;
  v52.i64[1] = &unk_1000BBCC8;
  v43 = _Block_copy(aBlock);

  [v39 performAsCurrentTraitCollection:v43];

  _Block_release(v43);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v44 = *(v36 + 16);

    (*(v45 + 8))(v16, v35);
  }
}

uint64_t sub_1000702D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = [objc_allocWithZone(NSMutableData) init];
  UTType.identifier.getter();
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = CGImageDestinationCreateWithData(v6, v9, 1uLL, 0);

  if (v17)
  {
    type metadata accessor for ImageWriterEncoder();
    static ImageWriterEncoder.addImage(to:dataType:sdrImage:hdrImage:metadata:imageOptions:accessibilityImageDescription:)();
    if (CGImageDestinationFinalize(v17))
    {
      v18 = v6;
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v19;
    }
  }

  return 0;
}

void sub_10007040C()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____SSSScreenshotPaperKitImageView_context;
  type metadata accessor for CRContext();
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v3 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  sub_100055E84(v6, &qword_1000D4108, &unk_10008F820);
  *(v1 + v2) = v3;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_imageCancellable) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedImageTask) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedHDRImage) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedSDRImage) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_isChangingVellumOpacity) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_vellumOpacity) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_changeCounter) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_image) = 0;
  v4 = (v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_cropInfo);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v5 = (v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_sizeMultiplier);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_useTrilinearMinificationFilter) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_editable) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_rulerHostView) = 0;
  *(v1 + OBJC_IVAR____SSSScreenshotPaperKitImageView_annotationsEnabled) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000705A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000705E4()
{
  v1 = v0;
  v2 = sub_100055840(&qword_1000D46D0, &qword_10008FC18);
  __chkstk_darwin(v2 - 8);
  v4 = &v25[-v3];
  v5 = sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25[-v7];
  v9 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (!v10)
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_10;
  }

  v11 = v10;
  dispatch thunk of CanvasElementViewController.rootElement.getter();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_10:
    sub_100055E84(v4, &qword_1000D46D0, &qword_10008FC18);
    return 0.0;
  }

  (*(v6 + 32))(v8, v4, v5);
  v12 = OBJC_IVAR____SSSScreenshotPaperKitImageView_image;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (!v13 || (v14 = [v13 ss_hdrSurfaceCGImage]) == 0)
  {
    v15 = 0;
LABEL_12:
    v20 = 1.0;
    goto LABEL_13;
  }

  v15 = v14;
  v16 = CGImageGetColorSpace(v15);
  if (!v16)
  {

    goto LABEL_12;
  }

  v17 = v16;
  if (!CGColorSpaceIsHDR(v16) && !CGColorSpaceUsesExtendedRange(v17))
  {

    goto LABEL_12;
  }

  CGImageGetContentHeadroom();
  v19 = v18;

  v20 = v19;
LABEL_13:
  Capsule<>.maxHDRHeadroom()();
  v22 = v21;

  if (v22 > 1.0)
  {
    if (v20 > v22)
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    v20 = 4.0;
    if (v23 > 4.0)
    {
      v20 = v23;
    }
  }

  (*(v6 + 8))(v8, v5);
  return v20;
}

uint64_t sub_1000708B0()
{
  v1 = sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000709A4()
{
  v2 = *(sub_100055840(&unk_1000D46C0, &unk_10008FBF8) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = *(v0 + 6);
  v7 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100064970;

  return sub_10006D894(v5, v8, v9, v10, v4, v6, v0 + v3, v7);
}

__n128 sub_100070AF4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100070B08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100070B28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_100070BB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070BEC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100070C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100070C8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Int sub_100070CCC(void *a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
  v5 = a1;

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_100070D54()
{
  v1 = sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100070E40()
{
  v2 = *(sub_100055840(&unk_1000D46C0, &unk_10008FBF8) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100064970;

  return sub_10006C7C4(v6, v7, v8, v4, v0 + v3, v5);
}

uint64_t sub_100070F5C()
{
  v1 = sub_100055840(&unk_1000D46C0, &unk_10008FBF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10007103C()
{
  v2 = *(sub_100055840(&unk_1000D46C0, &unk_10008FBF8) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100061A8C;

  return sub_10006C188(v6, v7, v8, v4, v5, v0 + v3);
}

unint64_t sub_100071124()
{
  result = qword_1000D4400;
  if (!qword_1000D4400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D4400);
  }

  return result;
}

void *sub_100071170()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____SSSScreenshotPaperKitImageView_changeCounter;
    swift_beginAccess();
    [v3 _paperKitImageDidChangeInView:v1 changeCounter:*(v1 + v4)];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100071208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_10007128C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100071300(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

id sub_100071458(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RoundedCropOverlayView.CropHandleAccessibilityElement();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10007149C(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_100071508()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___SSSRoundedCropOverlayView_cropHandleAccessibilityElements] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___SSSRoundedCropOverlayView____lazy_storage___borderView] = 0;
  *&v0[OBJC_IVAR___SSSRoundedCropOverlayView____lazy_storage___borderViewMask] = 0;
  *&v0[OBJC_IVAR___SSSRoundedCropOverlayView_cornerRadius] = 0;
  *&v0[OBJC_IVAR___SSSRoundedCropOverlayView_borderColor] = 0;
  *&v0[OBJC_IVAR___SSSRoundedCropOverlayView_borderWidth] = 0;
  v2 = &v0[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect];
  size = CGRectNull.size;
  *v2 = CGRectNull.origin;
  v2[1] = size;
  v64.receiver = v0;
  v64.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v64, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  v8 = sub_10007149C(&OBJC_IVAR___SSSRoundedCropOverlayView____lazy_storage___borderView, &off_1000B92F0);
  [v6 addSubview:v8];

  v9 = [*&v6[OBJC_IVAR___SSSRoundedCropOverlayView____lazy_storage___borderView] layer];
  v10 = sub_10007149C(&OBJC_IVAR___SSSRoundedCropOverlayView____lazy_storage___borderViewMask, CAShapeLayer_ptr);
  [v9 setMask:v10];

  v65 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v11 = UIAccessibilityTraitAdjustable;
  v12 = UIAccessibilityTraitButton;
  v13 = type metadata accessor for RoundedCropOverlayView.CropHandleAccessibilityElement();
  v14 = 0;
  v62 = v12 & v11;
  v63 = v12;
  v61 = v12 | v11;
  do
  {
    v16 = *(&off_1000BBDB8 + v14 + 32);
    v17 = objc_allocWithZone(v13);
    swift_unknownObjectWeakInit();
    v17[OBJC_IVAR____TtCC25ScreenshotServicesService22RoundedCropOverlayViewP33_884B41AE8EBEB50B6CECC529425B229230CropHandleAccessibilityElement_position] = v16;
    swift_unknownObjectWeakAssign();
    v66.receiver = v17;
    v66.super_class = v13;
    v18 = v6;
    v19 = objc_msgSendSuper2(&v66, "initWithAccessibilityContainer:", v18);
    v20 = [objc_opt_self() mainBundle];
    if (v16 > 3)
    {
      if (v16 > 5)
      {
        if (v16 == 6)
        {
          v59 = 0x80000001000B04D0;
          v21 = 0xD000000000000012;
          v22 = 0x80000001000B04B0;
          v23 = 0xD00000000000002ELL;
        }

        else
        {
          v59 = 0x80000001000B0470;
          v21 = 0xD000000000000018;
          v22 = 0x80000001000B0450;
          v23 = 0xD000000000000034;
        }
      }

      else if (v16 == 4)
      {
        v59 = 0x80000001000B0580;
        v21 = 0xD000000000000011;
        v22 = 0x80000001000B0560;
        v23 = 0xD00000000000002DLL;
      }

      else
      {
        v59 = 0x80000001000B0520;
        v21 = 0xD000000000000017;
        v22 = 0x80000001000B0500;
        v23 = 0xD000000000000033;
      }
    }

    else if (v16 > 1)
    {
      if (v16 == 2)
      {
        v59 = 0x80000001000B0620;
        v21 = 0xD000000000000015;
        v22 = 0x80000001000B0600;
        v23 = 0xD000000000000031;
      }

      else
      {
        v59 = 0x80000001000B05D0;
        v22 = 0x80000001000B05B0;
        v23 = 0xD00000000000002CLL;
        v21 = 0xD000000000000010;
      }
    }

    else if (v16)
    {
      v59 = 0x80000001000B0660;
      v23 = 0xD00000000000002BLL;
      v21 = 0x706F726320706F54;
      v22 = 0xEF656C646E616820;
    }

    else
    {
      v59 = 0x80000001000B06B0;
      v21 = 0xD000000000000014;
      v22 = 0x80000001000B0690;
      v23 = 0xD000000000000030;
    }

    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    object = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v21, 0, v20, v24, *&v23)._object;

    v26 = String._bridgeToObjectiveC()();
    object, v27, v28, v29, v30, v31, v32, v33;
    [v19 setAccessibilityLabel:v26];

    v34 = [objc_opt_self() mainBundle];
    if (((1 << v16) & 0x5A) != 0)
    {
      v60 = 0x80000001000B03C0;
      v35 = 0xD000000000000022;
      v36 = 0x80000001000B0390;
      v37 = 0xD000000000000028;
    }

    else
    {
      v60 = 0x80000001000B0420;
      v35 = 0xD000000000000024;
      v36 = 0x80000001000B03F0;
      v37 = 0xD00000000000002ALL;
    }

    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v35, 0, v34, v38, *&v37)._object;

    v40 = String._bridgeToObjectiveC()();
    v39, v41, v42, v43, v44, v45, v46, v47;
    [v19 setAccessibilityHint:v40];

    if (v11)
    {
      v15 = v11;
      if (v62 != v63)
      {
LABEL_3:
        v15 = v61;
      }
    }

    else
    {
      if (v63)
      {
        goto LABEL_3;
      }

      v15 = 0;
    }

    ++v14;
    [v19 setAccessibilityTraits:v15];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v14 != 8);
  v48 = v65;
  v49 = OBJC_IVAR___SSSRoundedCropOverlayView_cropHandleAccessibilityElements;
  swift_beginAccess();
  v50 = *&v18[v49];
  *&v18[v49] = v48;
  v50, v51, v52, v53, v54, v55, v56, v57;
  sub_100071C2C(0);

  return v18;
}

id sub_100071C2C(char a1)
{
  v2 = v1;
  result = [v1 window];
  if (result)
  {

    v5 = objc_opt_self();
    [v5 begin];
    v92 = v5;
    [v5 setDisableActions:0];
    v6 = sub_10007149C(&OBJC_IVAR___SSSRoundedCropOverlayView____lazy_storage___borderView, &off_1000B92F0);
    v7 = [v6 layer];

    v8 = OBJC_IVAR___SSSRoundedCropOverlayView_borderColor;
    swift_beginAccess();
    v9 = *&v2[v8];
    if (v9)
    {
      v10 = [v9 CGColor];
    }

    else
    {
      v10 = 0;
    }

    [v7 setBorderColor:v10];

    v11 = OBJC_IVAR___SSSRoundedCropOverlayView____lazy_storage___borderView;
    v12 = [*&v2[OBJC_IVAR___SSSRoundedCropOverlayView____lazy_storage___borderView] layer];
    p_inst_meths = &OBJC_PROTOCOL___SSRemoteViewControllerHostToServiceInterface.inst_meths;
    v14 = OBJC_IVAR___SSSRoundedCropOverlayView_borderWidth;
    swift_beginAccess();
    [v12 setBorderWidth:*&v2[v14]];

    v15 = [*&v2[v11] layer];
    v16 = &v2[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect];
    sub_10007363C(*&v2[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect], *&v2[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect + 8], *&v2[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect + 16], *&v2[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect + 24]);

    if (a1)
    {
      v17 = [*&v2[v11] layer];
      v18 = OBJC_IVAR___SSSRoundedCropOverlayView_cornerRadius;
      swift_beginAccess();
      v19 = *&v2[v18];
      v20 = objc_opt_self();
      [v17 setCornerRadius:objc_msgSend(v20 animated:{"areAnimationsEnabled"), v19}];

      if (*&v2[v18] >= 0.01)
      {
        v29 = *&CATransform3DIdentity.m33;
        *&v94.m31 = *&CATransform3DIdentity.m31;
        *&v94.m33 = v29;
        v30 = *&CATransform3DIdentity.m43;
        *&v94.m41 = *&CATransform3DIdentity.m41;
        *&v94.m43 = v30;
        v31 = *&CATransform3DIdentity.m13;
        *&v94.m11 = *&CATransform3DIdentity.m11;
        *&v94.m13 = v31;
        v32 = *&CATransform3DIdentity.m23;
        *&v94.m21 = *&CATransform3DIdentity.m21;
        *&v94.m23 = v32;
      }

      else
      {
        v21 = CGRectGetWidth(*v16) - (*&v2[v14] + *&v2[v14]);
        v22 = v21 / CGRectGetWidth(*v16);
        v23 = CGRectGetHeight(*v16) - (*&v2[v14] + *&v2[v14]);
        Height = CGRectGetHeight(*v16);
        v25 = *&CATransform3DIdentity.m33;
        *&v93.m31 = *&CATransform3DIdentity.m31;
        *&v93.m33 = v25;
        v26 = *&CATransform3DIdentity.m43;
        *&v93.m41 = *&CATransform3DIdentity.m41;
        *&v93.m43 = v26;
        v27 = *&CATransform3DIdentity.m13;
        *&v93.m11 = *&CATransform3DIdentity.m11;
        *&v93.m13 = v27;
        v28 = *&CATransform3DIdentity.m23;
        *&v93.m21 = *&CATransform3DIdentity.m21;
        *&v93.m23 = v28;
        CATransform3DScale(&v94, &v93, v22, v23 / Height, 1.0);
      }

      v33 = [*&v2[v11] layer];
      v34 = [v20 areAnimationsEnabled];
      v93 = v94;
      [v33 setTransform:&v93 animated:v34];

      p_inst_meths = &OBJC_PROTOCOL___SSRemoteViewControllerHostToServiceInterface.inst_meths;
    }

    v35 = sub_10007149C(&OBJC_IVAR___SSSRoundedCropOverlayView____lazy_storage___borderViewMask, CAShapeLayer_ptr);
    v36 = &OBJC_PROTOCOL___SSRemoteViewControllerHostToServiceInterface.inst_meths;
    sub_10007363C(*&v2[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect], *&v2[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect + 8], *&v2[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect + 16], *&v2[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect + 24]);

    v37 = OBJC_IVAR___SSSRoundedCropOverlayView_cornerRadius;
    swift_beginAccess();
    v38 = *&v2[v37];
    v39 = 0.0;
    if (v38 > 0.0)
    {
      v40 = OBJC_IVAR___SSSRoundedCropOverlayView_borderWidth;
      swift_beginAccess();
      v39 = *&v2[v40] * 0.5;
    }

    v41 = OBJC_IVAR___SSSRoundedCropOverlayView_borderWidth;
    swift_beginAccess();
    v42 = ceil(*&v2[v41]) + 34.0;
    v43 = [objc_allocWithZone(UIBezierPath) init];
    v44 = 0;
    while (1)
    {
      v50 = *(&off_1000BBDB8 + v44 + 32);
      if (v50 > 3)
      {
        if (*(&off_1000BBDB8 + v44 + 32) > 5u)
        {
          if (v50 == 6)
          {
            v56 = (v36[267] + v2);
            v45 = CGRectGetMidX(*v56) + -17.0;
            MaxY = CGRectGetMaxY(*v56);
            v58 = p_inst_meths[266];
            swift_beginAccess();
            v47 = *(v58 + v2);
            v52 = MaxY - v47;
LABEL_14:
            v48 = 34.0;
LABEL_15:
            v49 = [objc_opt_self() bezierPathWithRoundedRect:v45 cornerRadius:{v52, v48, v47, v39}];
            goto LABEL_16;
          }

          v60 = (v36[267] + v2);
          v51 = CGRectGetMaxX(*v60) - v42;
          v52 = CGRectGetMaxY(*v60) - v42;
        }

        else
        {
          if (v50 == 4)
          {
            v53 = (v36[267] + v2);
            MaxX = CGRectGetMaxX(*v53);
            v55 = p_inst_meths[266];
            swift_beginAccess();
            v45 = MaxX - *(v55 + v2);
            v52 = CGRectGetMidY(*v53) + -17.0;
            v48 = *(v55 + v2);
LABEL_30:
            v47 = 34.0;
            goto LABEL_15;
          }

          v52 = CGRectGetMaxY(*(&v36[267]->entrysize + v2)) - v42;
          v51 = 0.0;
        }
      }

      else if (*(&off_1000BBDB8 + v44 + 32) > 1u)
      {
        if (v50 != 2)
        {
          v52 = CGRectGetMidY(*(&v36[267]->entrysize + v2)) + -17.0;
          v59 = p_inst_meths[266];
          swift_beginAccess();
          v48 = *(v59 + v2);
          v45 = 0.0;
          goto LABEL_30;
        }

        v51 = CGRectGetMaxX(*(&v36[267]->entrysize + v2)) - v42;
        v52 = 0.0;
      }

      else
      {
        v51 = 0.0;
        v52 = 0.0;
        if (*(&off_1000BBDB8 + v44 + 32))
        {
          v45 = CGRectGetMidX(*(&v36[267]->entrysize + v2)) + -17.0;
          v46 = p_inst_meths[266];
          swift_beginAccess();
          v47 = *(v46 + v2);
          goto LABEL_14;
        }
      }

      v49 = [objc_opt_self() bezierPathWithRect:{v51, v52, v42, v42}];
      if (v38 > 0.0)
      {
        if (v50 > 4)
        {
          if (v50 == 5)
          {
            sub_100055840(&qword_1000D48D8, &qword_10008FE88);
            v68 = swift_allocObject();
            *(v68 + 1) = xmmword_10008F5C0;
            v107.origin.x = v51;
            v107.origin.y = v52;
            v107.size.width = v42;
            v107.size.height = v42;
            v77 = CGRectGetMaxX(v107);
            v108.origin.x = v51;
            v108.origin.y = v52;
            v108.size.width = v42;
            v108.size.height = v42;
            v78 = CGRectGetMaxY(v108);
            *(v68 + 4) = v77;
            *(v68 + 5) = v78 - v39;
            v109.origin.x = v51;
            v109.origin.y = v52;
            v109.size.width = v42;
            v109.size.height = v42;
            MinX = v39 + CGRectGetMinX(v109);
            v110.origin.x = v51;
            v110.origin.y = v52;
            v110.size.width = v42;
            v110.size.height = v42;
            MinY = CGRectGetMinY(v110);
          }

          else
          {
            v68 = &_swiftEmptyArrayStorage;
            if (v50 != 7)
            {
              goto LABEL_43;
            }

            sub_100055840(&qword_1000D48D8, &qword_10008FE88);
            v68 = swift_allocObject();
            *(v68 + 1) = xmmword_10008F5C0;
            v99.origin.x = v51;
            v99.origin.y = v52;
            v99.size.width = v42;
            v99.size.height = v42;
            v73 = CGRectGetMaxX(v99) - v39;
            v100.origin.x = v51;
            v100.origin.y = v52;
            v100.size.width = v42;
            v100.size.height = v42;
            v74 = CGRectGetMinY(v100);
            *(v68 + 4) = v73;
            *(v68 + 5) = v74;
            v101.origin.x = v51;
            v101.origin.y = v52;
            v101.size.width = v42;
            v101.size.height = v42;
            MinX = CGRectGetMinX(v101);
            v102.origin.x = v51;
            v102.origin.y = v52;
            v102.size.width = v42;
            v102.size.height = v42;
            MinY = CGRectGetMaxY(v102) - v39;
          }
        }

        else
        {
          if (v50)
          {
            v68 = &_swiftEmptyArrayStorage;
            if (v50 == 2)
            {
              sub_100055840(&qword_1000D48D8, &qword_10008FE88);
              v68 = swift_allocObject();
              *(v68 + 1) = xmmword_10008F5C0;
              v95.origin.x = v51;
              v95.origin.y = v52;
              v95.size.width = v42;
              v95.size.height = v42;
              v69 = CGRectGetMinX(v95);
              v96.origin.x = v51;
              v96.origin.y = v52;
              v96.size.width = v42;
              v96.size.height = v42;
              v70 = CGRectGetMinY(v96);
              *(v68 + 4) = v69;
              *(v68 + 5) = v39 + v70;
              v97.origin.x = v51;
              v97.origin.y = v52;
              v97.size.width = v42;
              v97.size.height = v42;
              MinX = CGRectGetMaxX(v97) - v39;
              v98.origin.x = v51;
              v98.origin.y = v52;
              v98.size.width = v42;
              v98.size.height = v42;
              MinY = CGRectGetMaxY(v98);
              goto LABEL_42;
            }

LABEL_43:
            v79 = *(v68 + 2);
            if (v79)
            {
              v80 = (v68 + 40);
              do
              {
                v81 = *(v80 - 1);
                v82 = *v80;
                [v49 moveToPoint:{v81, *v80}];
                [v49 addArcWithCenter:1 radius:v81 startAngle:v82 endAngle:v39 clockwise:{0.0, 6.28318531}];
                v80 += 2;
                --v79;
              }

              while (v79);
              v68, v83, v84, v85, v86, v87, v88, v89;
              p_inst_meths = (&OBJC_PROTOCOL___SSRemoteViewControllerHostToServiceInterface + 24);
              v36 = (&OBJC_PROTOCOL___SSRemoteViewControllerHostToServiceInterface + 24);
            }

            else
            {
              v68, v61, v62, v63, v64, v65, v66, v67;
              v36 = (&OBJC_PROTOCOL___SSRemoteViewControllerHostToServiceInterface + 24);
            }

            goto LABEL_16;
          }

          sub_100055840(&qword_1000D48D8, &qword_10008FE88);
          v68 = swift_allocObject();
          *(v68 + 1) = xmmword_10008F5C0;
          v103.origin.x = v51;
          v103.origin.y = v52;
          v103.size.width = v42;
          v103.size.height = v42;
          v75 = v39 + CGRectGetMinX(v103);
          v104.origin.x = v51;
          v104.origin.y = v52;
          v104.size.width = v42;
          v104.size.height = v42;
          v76 = CGRectGetMaxY(v104);
          *(v68 + 4) = v75;
          *(v68 + 5) = v76;
          v105.origin.x = v51;
          v105.origin.y = v52;
          v105.size.width = v42;
          v105.size.height = v42;
          MinX = CGRectGetMaxX(v105);
          v106.origin.x = v51;
          v106.origin.y = v52;
          v106.size.width = v42;
          v106.size.height = v42;
          MinY = v39 + CGRectGetMinY(v106);
        }

LABEL_42:
        *(v68 + 6) = MinX;
        *(v68 + 7) = MinY;
        goto LABEL_43;
      }

LABEL_16:
      ++v44;
      [v43 appendPath:v49];

      if (v44 == 8)
      {
        v90 = *&v2[OBJC_IVAR___SSSRoundedCropOverlayView____lazy_storage___borderViewMask];
        v91 = [v43 CGPath];
        [v90 setPath:v91];

        return [v92 commit];
      }
    }
  }

  return result;
}

void sub_100072820(id a1)
{
  v3 = OBJC_IVAR___SSSRoundedCropOverlayView_borderColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    a1 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_10007337C(), a1 = a1, v5 = v4, v6 = static NSObject.== infix(_:_:)(), v5, (v6 & 1) == 0))
  {
LABEL_7:
    sub_100071C2C(0);

    goto LABEL_8;
  }

  v4 = v5;
LABEL_8:
}

void sub_100072940(char *a1, double a2, uint64_t a3, uint64_t *a4, char a5)
{
  v8 = *a4;
  swift_beginAccess();
  v9 = *&a1[v8];
  *&a1[v8] = a2;
  if (vabdd_f64(v9, a2) > 0.09)
  {
    v10 = a1;
    sub_100071C2C(a5 & 1);
  }
}

void sub_1000729C8()
{
  v1 = &v0[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect];
  if (!CGRectIsEmpty(*&v0[OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect]))
  {
    v2 = OBJC_IVAR___SSSRoundedCropOverlayView_borderWidth;
    swift_beginAccess();
    v3 = *&v0[v2];
    v4 = OBJC_IVAR___SSSRoundedCropOverlayView_cropHandleAccessibilityElements;
    swift_beginAccess();
    v5 = *&v0[v4];
    if (!(v5 >> 62))
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        return;
      }

      goto LABEL_4;
    }

    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      v7 = ceil(v3) + 34.0;

      v8 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v21 = *&v5->tip[8 * v8 + 24];
        }

        v22 = v21;
        v23 = v21[OBJC_IVAR____TtCC25ScreenshotServicesService22RoundedCropOverlayViewP33_884B41AE8EBEB50B6CECC529425B229230CropHandleAccessibilityElement_position];
        v10 = 0.0;
        if (v23 > 3)
        {
          if (v21[OBJC_IVAR____TtCC25ScreenshotServicesService22RoundedCropOverlayViewP33_884B41AE8EBEB50B6CECC529425B229230CropHandleAccessibilityElement_position] > 5u)
          {
            if (v23 == 6)
            {
              v9 = CGRectGetMidX(*v1) + -17.0;
              MaxY = CGRectGetMaxY(*v1);
              v12 = *&v0[v2];
              v10 = MaxY - v12;
LABEL_24:
              v11 = 34.0;
              goto LABEL_8;
            }

            v9 = CGRectGetMaxX(*v1) - v7;
            v10 = CGRectGetMaxY(*v1) - v7;
          }

          else
          {
            if (v23 == 4)
            {
              v9 = CGRectGetMaxX(*v1) - *&v0[v2];
              v10 = CGRectGetMidY(*v1) + -17.0;
              v11 = *&v0[v2];
              v12 = 34.0;
              goto LABEL_8;
            }

            v10 = CGRectGetMaxY(*v1) - v7;
            v9 = 0.0;
          }
        }

        else if (v21[OBJC_IVAR____TtCC25ScreenshotServicesService22RoundedCropOverlayViewP33_884B41AE8EBEB50B6CECC529425B229230CropHandleAccessibilityElement_position] > 1u)
        {
          if (v23 != 2)
          {
            v10 = CGRectGetMidY(*v1) + -17.0;
            v11 = *&v0[v2];
            v12 = 34.0;
            v9 = 0.0;
            goto LABEL_8;
          }

          v9 = CGRectGetMaxX(*v1) - v7;
        }

        else
        {
          if (v21[OBJC_IVAR____TtCC25ScreenshotServicesService22RoundedCropOverlayViewP33_884B41AE8EBEB50B6CECC529425B229230CropHandleAccessibilityElement_position])
          {
            v9 = CGRectGetMidX(*v1) + -17.0;
            v12 = *&v0[v2];
            goto LABEL_24;
          }

          v9 = 0.0;
        }

        v11 = v7;
        v12 = v7;
LABEL_8:
        ++v8;
        v13 = v22;
        [v0 convertRect:0 toView:{v9, v10, v11, v12}];
        [v13 setAccessibilityFrame:?];

        if (v6 == v8)
        {
          v5, v14, v15, v16, v17, v18, v19, v20;
          return;
        }
      }
    }
  }
}

uint64_t sub_100072DC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0)
  {
    goto LABEL_9;
  }

  v4 = result;
  v5 = OBJC_IVAR___SSSRoundedCropOverlayView_cropHandleAccessibilityElements;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result > v4)
    {
      goto LABEL_4;
    }

LABEL_9:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result <= v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  swift_beginAccess();
  v7 = *(v2 + v5);
  result = type metadata accessor for RoundedCropOverlayView.CropHandleAccessibilityElement();
  *(a2 + 24) = result;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > v4)
  {
    v8 = *(v7 + 8 * v4 + 32);
LABEL_7:
    *a2 = v8;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

unint64_t sub_100073000(uint64_t a1)
{
  sub_1000686B8(a1, v15);
  type metadata accessor for RoundedCropOverlayView.CropHandleAccessibilityElement();
  if (!swift_dynamicCast())
  {
    return NSNotFound.getter();
  }

  v2 = OBJC_IVAR___SSSRoundedCropOverlayView_cropHandleAccessibilityElements;
  swift_beginAccess();
  v3 = *(v1 + v2);

  v4 = sub_1000730C0(v14, v3);
  v6 = v5;
  v3, v5, v7, v8, v9, v10, v11, v12;
  if (v6)
  {
    v4 = NSNotFound.getter();
  }

  return v4;
}

unint64_t sub_1000730C0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for RoundedCropOverlayView.CropHandleAccessibilityElement();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_1000732B4()
{
  *(v0 + OBJC_IVAR___SSSRoundedCropOverlayView_cropHandleAccessibilityElements) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___SSSRoundedCropOverlayView____lazy_storage___borderView) = 0;
  *(v0 + OBJC_IVAR___SSSRoundedCropOverlayView____lazy_storage___borderViewMask) = 0;
  *(v0 + OBJC_IVAR___SSSRoundedCropOverlayView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR___SSSRoundedCropOverlayView_borderColor) = 0;
  *(v0 + OBJC_IVAR___SSSRoundedCropOverlayView_borderWidth) = 0;
  v1 = v0 + OBJC_IVAR___SSSRoundedCropOverlayView_borderViewRect;
  size = CGRectNull.size;
  *v1 = CGRectNull.origin;
  *(v1 + 16) = size;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_10007337C()
{
  result = qword_1000D4860;
  if (!qword_1000D4860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D4860);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoundedCropOverlayView.CropHandlePosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoundedCropOverlayView.CropHandlePosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100073580()
{
  result = qword_1000D48C8;
  if (!qword_1000D48C8)
  {
    sub_100057558(&qword_1000D48D0, qword_10008FDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D48C8);
  }

  return result;
}

unint64_t sub_1000735E8()
{
  result = qword_1000D4D90[0];
  if (!qword_1000D4D90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000D4D90);
  }

  return result;
}

id sub_10007363C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  [v4 setBounds:{0.0, 0.0, Width, CGRectGetHeight(v20)}];
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  v11 = CGRectGetWidth(v22);
  [v4 anchorPoint];
  v13 = MinX + v11 * v12;
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Height = CGRectGetHeight(v24);
  [v4 anchorPoint];
  v17 = MinY + Height * v16;

  return [v4 setPosition:{v13, v17}];
}

void sub_100073768(char a1, double a2)
{
  v5 = [v2 presentationLayer];
  if (!v5)
  {
    v5 = v2;
  }

  v6 = v5;
  [v5 cornerRadius];

  v7 = String._bridgeToObjectiveC()();
  [v2 removeAnimationForKey:v7];

  [v2 setCornerCurve:kCACornerCurveContinuous];
  [v2 setCornerRadius:a2];
  if (a1)
  {
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() animationWithKeyPath:v8];

    [v9 setMass:2.0];
    [v9 setStiffness:300.0];
    [v9 setDamping:50.0];
    [v9 setInitialVelocity:0.0];
    v10 = v9;
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v10 setFromValue:isa];

    v12 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v10 setToValue:v12];

    v13 = v10;
    [v13 settlingDuration];
    [v13 setDuration:?];

    v14 = String._bridgeToObjectiveC()();
    [v2 addAnimation:v13 forKey:v14];
  }
}

void sub_100073A30(_OWORD *a1, char a2)
{
  v3 = v2;
  v6 = [v3 presentationLayer];
  if (!v6)
  {
    v6 = v3;
  }

  v7 = v6;
  [v6 transform];

  v8 = String._bridgeToObjectiveC()();
  [v3 removeAnimationForKey:v8];

  v9 = a1[5];
  v20[4] = a1[4];
  v20[5] = v9;
  v10 = a1[7];
  v20[6] = a1[6];
  v20[7] = v10;
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v12 = a1[3];
  v20[2] = a1[2];
  v20[3] = v12;
  [v3 setTransform:v20];
  if (a2)
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() animationWithKeyPath:v13];

    [v14 setMass:2.0];
    [v14 setStiffness:300.0];
    [v14 setDamping:50.0];
    [v14 setInitialVelocity:0.0];
    v15 = v14;
    isa = CATransform3D._bridgeToObjectiveC()().super.isa;
    [v15 setFromValue:isa];

    v17 = CATransform3D._bridgeToObjectiveC()().super.isa;
    [v15 setToValue:v17];

    v18 = v15;
    [v18 settlingDuration];
    [v18 setDuration:?];

    v19 = String._bridgeToObjectiveC()();
    [v3 addAnimation:v18 forKey:v19];
  }
}

void sub_100073F14(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not write to directory for internal build with error: %@", &v2, 0xCu);
}

void sub_100073F8C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not write to sysdiagnose for internal build to path %@ with error: %@", &v3, 0x16u);
}

void sub_100074014(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not generate image data for image %@ to save for sysdiagnose", &v3, 0xCu);
}

void sub_1000740D4(void *a1)
{
  v1 = [a1 loggableDescription];
  sub_100016A14();
  sub_1000169F4(&_mh_execute_header, v2, v3, "Received an image identifier failure %@", v4, v5, v6, v7);
}

void sub_100074158(void *a1)
{
  v1 = [a1 loggableDescription];
  sub_100016A14();
  sub_1000169F4(&_mh_execute_header, v2, v3, "Received an image identifier update %@ with no matching environment description", v4, v5, v6, v7);
}

void sub_1000741DC(void *a1)
{
  v1 = [a1 loggableDescription];
  sub_100016A14();
  sub_1000169F4(&_mh_execute_header, v2, v3, "Received a metadata update %@ with no matching element identifier", v4, v5, v6, v7);
}

void sub_100074260(void *a1)
{
  v1 = [a1 loggableDescription];
  sub_100016A14();
  sub_1000169F4(&_mh_execute_header, v2, v3, "Received a document update %@ with no matching element identifier", v4, v5, v6, v7);
}

void sub_1000742E4(id *a1)
{
  v1 = [*a1 environmentDescription];
  v2 = [v1 loggableDescription];
  sub_100016A14();
  sub_1000169F4(&_mh_execute_header, v3, v4, "Error: Trying to remove environment from _environmentDescriptionIdentifiersBeingSaved, but environment description %@ was not found.", v5, v6, v7, v8);
}

void sub_100074398(void *a1)
{
  v1 = [a1 environmentDescription];
  v2 = [v1 loggableDescription];
  sub_100016A14();
  sub_1000169F4(&_mh_execute_header, v3, v4, "Asked to remove a screenshot the manager is not tracking with environment description %@", v5, v6, v7, v8);
}

void sub_10007445C(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "We received more document updates (%lu) than we were expecting (%lu)", &v4, 0x16u);
}

void sub_1000744E8(uint64_t a1)
{
  v1 = [*(a1 + 32) UUIDString];
  sub_100016A14();
  sub_10001FC04();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_10007457C()
{
  sub_100016A14();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Could not find pdf from file manager %@ at %@", v2, 0x16u);
}

void sub_100074674(void *a1)
{
  v5 = [a1 filename];
  sub_10001FC04();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x16u);
}

void sub_100074714(void *a1)
{
  v2 = a1;
  [a1 bytes];
  [a1 length];
  sub_10001FC04();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x12u);
}

void sub_100074840(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Moved PDF to %@ (error: %@)", &v5, 0x16u);
}

void sub_1000748D0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100016A14();
  sub_10001FC04();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_1000749E0(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Still processing image identifiers progress: %f", &v2, 0xCu);
}

uint64_t sub_100074B84()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return sub_100074BA8();
}

uint64_t sub_100074C70()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"SSDisableSwitchToThumbnailViewTip"];

  if (!v1)
  {
    return 1;
  }

  v2 = os_log_create("com.apple.screenshotservices", "Screenshot");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "full-screen tip is disabled", v4, 2u);
  }

  return 0;
}

void sub_100074D1C(uint64_t a1, NSObject *a2)
{
  v2 = *(*(a1 + 32) + 168);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Did not present share sheet for activity view controller %@ because success == NO", &v3, 0xCu);
}

void sub_100074DA4(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to save PDF page to Photos. Error: %@", &v4, 0xCu);
}

void sub_100074E3C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [*(a1 + 32) count];
  v6 = [a2 localizedDescription];
  v7 = 134218242;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "failed to send %ld screenshots to Quick Note. Error: %@", &v7, 0x16u);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t SharedTagged_10.init<A>(_:_:)()
{
  return SharedTagged_10.init<A>(_:_:)();
}

{
  return SharedTagged_10.init<A>(_:_:)();
}