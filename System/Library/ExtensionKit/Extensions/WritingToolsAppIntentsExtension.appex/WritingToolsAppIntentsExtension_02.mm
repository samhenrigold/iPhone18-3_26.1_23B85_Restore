uint64_t sub_100034890()
{
  v1 = *(v0 + 2248);
  v2 = *(v0 + 2240);
  v3 = *(v0 + 2232);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1392);
  if ((sub_10002735C(v4) & 1) == 0)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_100012198(v4);
    if (qword_10006EA28 != -1)
    {
      swift_once();
    }

    v18 = sub_100050188();
    sub_1000071F4(v18, qword_10007B570);
    swift_errorRetain();
    v19 = sub_100050168();
    v20 = sub_100050738();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error occurred in rewriting: %@", v21, 0xCu);
      sub_10000CBA0(v22, &qword_100072230, &qword_100058ED0);
    }

    v24 = *(v0 + 1912);

    swift_getKeyPath();
    *(v0 + 1816) = v24;
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB58();

    v25 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_100005070(v24 + v25, v0 + 520, &unk_1000711A0, &qword_100058BF0);
    if (*(v0 + 544))
    {
      v26 = *(v0 + 1912);
      sub_10000D6CC(v0 + 520, v0 + 280);
      sub_10000CBA0(v0 + 520, &unk_1000711A0, &qword_100058BF0);
      sub_10000D634((v0 + 280), *(v0 + 304));
      swift_getKeyPath();
      *(v0 + 1672) = v26;
      sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB58();

      v27 = *(v26 + 96);
      if (v27 != 255)
      {
        v28 = *(v0 + 1912);
        v30 = v28[10];
        v29 = v28[11];
        v31 = v28[9];
        sub_10000A594(v31, v30, v29, v27);

        sub_100016A2C(v4, v31, v30, v29, v27);

        sub_100013054(v31, v30, v29, v27);

        v17 = (v0 + 280);
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v32 = v0 + 520;
LABEL_15:
    sub_10000CBA0(v32, &unk_1000711A0, &qword_100058BF0);
    goto LABEL_16;
  }

  v5 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1640) = v5;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v6 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_100005070(v5 + v6, v0 + 360, &unk_1000711A0, &qword_100058BF0);
  if (!*(v0 + 384))
  {

    v32 = v0 + 360;
    goto LABEL_15;
  }

  v7 = *(v0 + 1912);
  sub_10000D6CC(v0 + 360, v0 + 440);
  sub_10000CBA0(v0 + 360, &unk_1000711A0, &qword_100058BF0);
  sub_10000D634((v0 + 440), *(v0 + 464));
  v8 = sub_10001D0E0();
  v10 = v9;
  swift_getKeyPath();
  *(v0 + 1568) = v7;
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v12 = *(v7 + 96);
  if (v12 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = *(v0 + 1912);
  v15 = v13[10];
  v14 = v13[11];
  v16 = v13[9];
  sub_10000A594(v16, v15, v14, v12);

  sub_100016F2C(v8, v10, v16, v15, v14, v12);

  sub_100013054(v16, v15, v14, v12);

  v17 = (v0 + 440);
LABEL_12:
  sub_10000CC70(v17);
LABEL_16:

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100034FE8()
{
  (*(v0[262] + 8))(v0[263], v0[261]);
  v1 = v0[172];
  if ((sub_10002735C(v1) & 1) == 0)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_100012198(v1);
    if (qword_10006EA28 != -1)
    {
      swift_once();
    }

    v15 = sub_100050188();
    sub_1000071F4(v15, qword_10007B570);
    swift_errorRetain();
    v16 = sub_100050168();
    v17 = sub_100050738();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error occurred in rewriting: %@", v18, 0xCu);
      sub_10000CBA0(v19, &qword_100072230, &qword_100058ED0);
    }

    v21 = v0[239];

    swift_getKeyPath();
    v0[227] = v21;
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB58();

    v22 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_100005070(v21 + v22, (v0 + 65), &unk_1000711A0, &qword_100058BF0);
    if (v0[68])
    {
      v23 = v0[239];
      sub_10000D6CC((v0 + 65), (v0 + 35));
      sub_10000CBA0((v0 + 65), &unk_1000711A0, &qword_100058BF0);
      sub_10000D634(v0 + 35, v0[38]);
      swift_getKeyPath();
      v0[209] = v23;
      sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB58();

      v24 = *(v23 + 96);
      if (v24 != 255)
      {
        v25 = v0[239];
        v27 = v25[10];
        v26 = v25[11];
        v28 = v25[9];
        sub_10000A594(v28, v27, v26, v24);

        sub_100016A2C(v1, v28, v27, v26, v24);

        sub_100013054(v28, v27, v26, v24);

        v14 = v0 + 35;
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v29 = (v0 + 65);
LABEL_15:
    sub_10000CBA0(v29, &unk_1000711A0, &qword_100058BF0);
    goto LABEL_16;
  }

  v2 = v0[239];
  swift_getKeyPath();
  v0[205] = v2;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_100005070(v2 + v3, (v0 + 45), &unk_1000711A0, &qword_100058BF0);
  if (!v0[48])
  {

    v29 = (v0 + 45);
    goto LABEL_15;
  }

  v4 = v0[239];
  sub_10000D6CC((v0 + 45), (v0 + 55));
  sub_10000CBA0((v0 + 45), &unk_1000711A0, &qword_100058BF0);
  sub_10000D634(v0 + 55, v0[58]);
  v5 = sub_10001D0E0();
  v7 = v6;
  swift_getKeyPath();
  v0[196] = v4;
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v9 = *(v4 + 96);
  if (v9 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = v0[239];
  v12 = v10[10];
  v11 = v10[11];
  v13 = v10[9];
  sub_10000A594(v13, v12, v11, v9);

  sub_100016F2C(v5, v7, v13, v12, v11, v9);

  sub_100013054(v13, v12, v11, v9);

  v14 = v0 + 55;
LABEL_12:
  sub_10000CC70(v14);
LABEL_16:

  v30 = v0[1];

  return v30();
}

uint64_t sub_100035730()
{
  v1 = *(v0 + 2408);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 2240);
  v4 = *(v0 + 2232);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 1648);
  if ((sub_10002735C(v5) & 1) == 0)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_100012198(v5);
    if (qword_10006EA28 != -1)
    {
      swift_once();
    }

    v19 = sub_100050188();
    sub_1000071F4(v19, qword_10007B570);
    swift_errorRetain();
    v20 = sub_100050168();
    v21 = sub_100050738();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error occurred in rewriting: %@", v22, 0xCu);
      sub_10000CBA0(v23, &qword_100072230, &qword_100058ED0);
    }

    v25 = *(v0 + 1912);

    swift_getKeyPath();
    *(v0 + 1816) = v25;
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB58();

    v26 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_100005070(v25 + v26, v0 + 520, &unk_1000711A0, &qword_100058BF0);
    if (*(v0 + 544))
    {
      v27 = *(v0 + 1912);
      sub_10000D6CC(v0 + 520, v0 + 280);
      sub_10000CBA0(v0 + 520, &unk_1000711A0, &qword_100058BF0);
      sub_10000D634((v0 + 280), *(v0 + 304));
      swift_getKeyPath();
      *(v0 + 1672) = v27;
      sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB58();

      v28 = *(v27 + 96);
      if (v28 != 255)
      {
        v29 = *(v0 + 1912);
        v31 = v29[10];
        v30 = v29[11];
        v32 = v29[9];
        sub_10000A594(v32, v31, v30, v28);

        sub_100016A2C(v5, v32, v31, v30, v28);

        sub_100013054(v32, v31, v30, v28);

        v18 = (v0 + 280);
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v33 = v0 + 520;
LABEL_15:
    sub_10000CBA0(v33, &unk_1000711A0, &qword_100058BF0);
    goto LABEL_16;
  }

  v6 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1640) = v6;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v7 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_100005070(v6 + v7, v0 + 360, &unk_1000711A0, &qword_100058BF0);
  if (!*(v0 + 384))
  {

    v33 = v0 + 360;
    goto LABEL_15;
  }

  v8 = *(v0 + 1912);
  sub_10000D6CC(v0 + 360, v0 + 440);
  sub_10000CBA0(v0 + 360, &unk_1000711A0, &qword_100058BF0);
  sub_10000D634((v0 + 440), *(v0 + 464));
  v9 = sub_10001D0E0();
  v11 = v10;
  swift_getKeyPath();
  *(v0 + 1568) = v8;
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v13 = *(v8 + 96);
  if (v13 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = *(v0 + 1912);
  v16 = v14[10];
  v15 = v14[11];
  v17 = v14[9];
  sub_10000A594(v17, v16, v15, v13);

  sub_100016F2C(v9, v11, v17, v16, v15, v13);

  sub_100013054(v17, v16, v15, v13);

  v18 = (v0 + 440);
LABEL_12:
  sub_10000CC70(v18);
LABEL_16:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100035E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 312) = a4;
  *(v6 + 320) = v5;
  *(v6 + 400) = a5;
  *(v6 + 296) = a2;
  *(v6 + 304) = a3;
  *(v6 + 288) = a1;
  v7 = sub_10004FAD8();
  *(v6 + 328) = v7;
  *(v6 + 336) = *(v7 - 8);
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  sub_100050658();
  *(v6 + 392) = sub_100050648();
  v9 = sub_100050628();

  return _swift_task_switch(sub_100035FD8, v9, v8);
}

uint64_t sub_100035FD8()
{
  v1 = *(v0 + 320);
  v2 = [*(v0 + 312) uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v0 + 160) = v1;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__sentFinishedResultToClientForContextUUID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v5 = *(v0 + 384);

  v6 = sub_10004A0A0(v5);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    v9 = *(*(v0 + 336) + 8);
    (v9)(*(v0 + 384), *(v0 + 328));
    v8 = 0;
    goto LABEL_6;
  }

  v8 = *(*(v4 + 56) + v6);
  v9 = *(*(v0 + 336) + 8);
  (v9)(*(v0 + 384), *(v0 + 328));

LABEL_6:
  v10 = *(v0 + 320);
  swift_getKeyPath();
  *(v0 + 168) = v10;
  sub_10004FB58();

  v11 = *(v10 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
  if (!v11 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  v13 = Strong;
  v14 = v11;
  if (sub_10002818C() & 1) == 0 || (sub_100012E5C() & 1) != 0 || (v8)
  {

LABEL_12:
    swift_unknownObjectRelease();
LABEL_14:

    v15 = *(v0 + 8);

    return v15();
  }

  v17 = v14;
  v19 = *(v0 + 312);
  v18 = *(v0 + 320);
  v84 = v17;
  v78 = *(v0 + 296);
  v81 = *(v0 + 304);
  [v13 compositionSession:? didReceiveText:? replacementRange:? inContext:? finished:?];
  v20 = [v19 uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v0 + 176) = v18;
  sub_10004FB58();

  v21 = *(v0 + 376);
  v22 = *(v0 + 328);
  if (*(*(v1 + v3) + 16))
  {

    sub_10004A0A0(v21);
    v24 = v23;
    (v9)(v21, v22);

    if (v24)
    {
      if (*(v0 + 400) == 1)
      {
        v72 = *(v0 + 368);
        v25 = *(v0 + 320);
        v74 = *(v0 + 328);
        v26 = [*(v0 + 312) uuid];
        sub_10004FAB8();

        swift_getKeyPath();
        *(v0 + 264) = v25;
        sub_10004FB58();

        *(v0 + 272) = v25;
        swift_getKeyPath();
        sub_10004FB78();

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = *(v1 + v3);
        *(v1 + v3) = 0x8000000000000000;
        sub_10004C8B4(1, v72, isUniquelyReferenced_nonNull_native);
        (v9)(v72, v74);
        *(v1 + v3) = v85;
        swift_endAccess();
        *(v0 + 280) = v25;
        swift_getKeyPath();
        sub_10004FB68();

        goto LABEL_23;
      }

LABEL_26:

      goto LABEL_12;
    }
  }

  else
  {
    (v9)(v21, v22);
  }

  v69 = *(v0 + 368);
  v28 = *(v0 + 320);
  v75 = *(v0 + 328);
  v73 = *(v0 + 400);
  v29 = [*(v0 + 312) uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v0 + 184) = v28;
  sub_10004FB58();

  *(v0 + 192) = v28;
  swift_getKeyPath();
  sub_10004FB78();

  swift_beginAccess();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(v1 + v3);
  *(v1 + v3) = 0x8000000000000000;
  sub_10004C8B4(v73, v69, v30);
  (v9)(v69, v75);
  *(v1 + v3) = v85;
  swift_endAccess();
  *(v0 + 200) = v28;
  swift_getKeyPath();
  sub_10004FB68();

  if (v73 != 1)
  {
    goto LABEL_26;
  }

LABEL_23:
  v31 = *(v0 + 320);
  v32 = [*(v0 + 312) uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v0 + 208) = v31;
  sub_10004FB58();

  v33 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__rewrittenContextsForContextUUID;
  swift_beginAccess();
  v83 = v31;
  v71 = v33;
  if (*(*(v31 + v33) + 16))
  {
    v34 = *(v0 + 360);

    sub_10004A0A0(v34);
    if (v35)
    {
      v36 = *(v0 + 360);
      v37 = *(v0 + 328);

      (v9)(v36, v37);

      v38 = v33;
      goto LABEL_29;
    }
  }

  v66 = *(v0 + 368);
  v76 = *(v0 + 328);
  v39 = *(v0 + 312);
  v40 = *(v0 + 320);
  v64 = v40;
  v9(*(v0 + 360));
  v41 = [v39 uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v0 + 216) = v40;
  sub_10004FB58();

  *(v0 + 224) = v40;
  swift_getKeyPath();
  sub_10004FB78();

  v38 = v71;
  swift_beginAccess();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(v31 + v71);
  *(v31 + v71) = 0x8000000000000000;
  sub_10004C6E8(&_swiftEmptyArrayStorage, v66, v42);
  (v9)(v66, v76);
  *(v31 + v71) = v85;
  swift_endAccess();
  *(v0 + 232) = v64;
  swift_getKeyPath();
  sub_10004FB68();

LABEL_29:
  v77 = *(v0 + 352);
  v67 = *(v0 + 336);
  v68 = *(v0 + 344);
  v70 = *(v0 + 328);
  v43 = *(v0 + 312);
  v44 = *(v0 + 320);
  v45 = *(v0 + 288);
  v46 = [v43 attributedText];
  v47 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v46];

  [v47 replaceCharactersInRange:v78 withAttributedString:{v81, v45}];
  v82 = v47;
  v79 = [objc_allocWithZone(WTContext) initWithAttributedText:v47 range:{objc_msgSend(v43, "range"), objc_msgSend(v45, "length")}];
  v65 = [v43 uuid];
  sub_10004FAB8();
  swift_getKeyPath();
  *(v0 + 240) = v44;
  sub_10004FB58();

  *(v0 + 248) = v44;
  swift_getKeyPath();
  sub_10004FB78();

  swift_beginAccess();
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v49 = v68;
  (*(v67 + 16))(v68, v77, v70);
  v50 = *(v83 + v38);
  *(v83 + v38) = 0x8000000000000000;
  v52 = sub_10004A0A0(v68);
  v53 = v50[2];
  v54 = (v51 & 1) == 0;
  v55 = v53 + v54;
  if (__OFADD__(v53, v54))
  {
    __break(1u);
    goto LABEL_45;
  }

  v49 = v51;
  if (v50[3] >= v55)
  {
    if ((v48 & 1) == 0)
    {
      sub_10004D378();
    }

LABEL_38:
    if (v49)
    {
      v48 = v50;
      v77 = v52;
      v59 = *(v50[7] + 8 * v52);

      v85 = v59;
      v49 = v79;
      sub_1000505C8();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_40:
        v80 = v49;
        sub_100050618();
        v61 = *(v0 + 344);
        v60 = *(v0 + 352);
        v62 = *(v0 + 328);
        if (v85)
        {
          *(*(v48 + 56) + 8 * v77) = v85;

          (v9)(v61, v62);
          (v9)(v60, v62);
        }

        else
        {
          (v9)(*(v48 + 48) + *(*(v0 + 336) + 72) * v77, *(v0 + 328));
          sub_10004BF0C(v77, v48);
          (v9)(v61, v62);
          (v9)(v60, v62);
        }

        v63 = *(v0 + 320);
        *(v83 + v71) = v48;
        swift_endAccess();
        *(v0 + 256) = v63;
        swift_getKeyPath();
        sub_10004FB68();

        swift_unknownObjectRelease();
        goto LABEL_13;
      }

LABEL_46:
      sub_100050608();
      goto LABEL_40;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v56 = *(v0 + 344);
  sub_10004B394(v55, v48);
  v57 = sub_10004A0A0(v56);
  if ((v49 & 1) == (v58 & 1))
  {
    v52 = v57;
    goto LABEL_38;
  }

  return sub_1000509C8();
}

void *sub_100036CA8(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_getKeyPath();
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB58();

    if (*(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task))
    {

      sub_100050698();
    }

    if (a2)
    {
      swift_errorRetain();
      v9 = sub_10004F958();
      [v8 endWritingToolsWithError:v9];
    }

    else
    {
      swift_getKeyPath();
      sub_10004FB58();

      v10 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
      if (v10)
      {
        v11 = v10;
        if (sub_10002818C())
        {
          if (a1 == 2)
          {
            swift_getKeyPath();
            sub_10004FB58();

            a1 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal) ^ 1;
          }

          [v8 didEndWritingToolsSession:v11 accepted:a1 & 1];
        }
      }
    }

    sub_1000290EC(0);
    if (a3)
    {
      a3();
    }

    return swift_unknownObjectRelease();
  }

  else if (a3)
  {
    return a3();
  }

  return result;
}

uint64_t sub_100036EF0()
{

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance, &unk_1000711A0, &qword_100058BF0);

  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
  v2 = sub_10004FB98();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t RewritingModel.deinit()
{
  v0 = ToolModel.deinit();

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance, &unk_1000711A0, &qword_100058BF0);

  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
  v2 = sub_10004FB98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RewritingModel.__deallocating_deinit()
{
  RewritingModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RewritingModel(uint64_t a1)
{
  result = qword_100071898;
  if (!qword_100071898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037240(uint64_t a1)
{
  result = sub_10004FB98();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100037398(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000290EC(v1);
}

uint64_t sub_100037418()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100037458(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100006CB4;

  return sub_10002B36C(a1, v4, v5, v6);
}

uint64_t sub_10003750C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100037604;

  return v6(a1);
}

uint64_t sub_100037604()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000376FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100037734(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000118D4;

  return sub_10003750C(a1, v4);
}

uint64_t sub_1000377F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003787C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_100050898();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10003797C, 0, 0);
}

uint64_t sub_10003797C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1000508A8();
  v5 = sub_1000377F4(&qword_100072290, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1000509D8();
  sub_1000377F4(&qword_100072298, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1000508B8();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100037B0C;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100037B0C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100037CC8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100037CC8()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100037D34(void *result, int64_t a2, char a3, void *a4)
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

  sub_100002814(&qword_1000722A0, &qword_1000591C8);
  v10 = *(type metadata accessor for Attachment(0) - 8);
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
  v15 = *(type metadata accessor for Attachment(0) - 8);
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

void *sub_100037F0C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002814(&qword_100072248, &qword_1000590D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for IAPayloadValue(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000380E8(unint64_t result)
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

uint64_t sub_100038174(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100038268;

  return v5(v2 + 32);
}

uint64_t sub_100038268()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10003837C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__isForEditableContent) = 1;
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__wantsInlineEditing) = 1;
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions) = 0;
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions) = sub_100003AA0(&off_100069F48);
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session) = 0;
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task) = 0;
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString) = 0;
  v10 = v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  v11 = (v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__inputStringForFeedback);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);
  *v13 = 0;
  v13[1] = 0;
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelPromptTokenCount) = 0;
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelOutputTokenCount) = 0;
  v14 = v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__sentFinishedResultToClientForContextUUID) = sub_100003BDC(&_swiftEmptyArrayStorage);
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__finishedResultForContextUUID) = sub_100003DC4(&_swiftEmptyArrayStorage);
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__rewrittenContextsForContextUUID) = sub_100003FC8(&_swiftEmptyArrayStorage);
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal) = 0;
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__undoCount) = 0;
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__redoCount) = 0;
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__handoffState) = 0;
  *(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingFollowUpAdjust) = 0;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  swift_unknownObjectWeakInit();
  *(v5 + 49) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = -1;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  sub_100011C9C(a1, a2, a3, a4);
  swift_unknownObjectWeakAssign();
  return v5;
}

void sub_1000385BC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100011960(v1);
}

void sub_100038614(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000295E8(v1);
}

uint64_t sub_100038690(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100029F04(v1, v2);
}

void sub_1000386F8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002A094(v1);
}

void sub_100038750(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002A3D0(v1);
}

__n128 sub_1000387D8()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

void sub_100038804()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString) = v2;
  v4 = v2;
}

uint64_t sub_100038884(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_100038980(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&unk_1000711A0, &qword_100058BF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100038A58()
{
  result = qword_100072250;
  if (!qword_100072250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072250);
  }

  return result;
}

unint64_t sub_100038AAC()
{
  result = qword_100072258;
  if (!qword_100072258)
  {
    sub_10000E5D8(255, &qword_100070180, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072258);
  }

  return result;
}

uint64_t sub_100038B1C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100038B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000118D4;

  return sub_10002C86C(a1, v4, v5, v7, v6);
}

void sub_100038CB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelOutputTokenCount);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelOutputTokenCount) = v2;
  v4 = v2;
}

void sub_100038CF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelPromptTokenCount);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelPromptTokenCount) = v2;
  v4 = v2;
}

uint64_t sub_100038D30()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100038D7C(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_100038DC8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task) = *(v0 + 24);
}

void sub_100038E0C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
  *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session) = v1;
  v4 = v1;
  sub_100028960(v3);
}

uint64_t sub_100038EC0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions) = *(v0 + 24);
}

uint64_t sub_100038FE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000118D4;

  return sub_100038174(a1, v4);
}

uint64_t sub_1000390A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006CB4;

  return sub_100038174(a1, v4);
}

unint64_t sub_10003920C()
{
  result = qword_100072350;
  if (!qword_100072350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072350);
  }

  return result;
}

unint64_t sub_100039264()
{
  result = qword_100072358;
  if (!qword_100072358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072358);
  }

  return result;
}

unint64_t sub_1000392BC()
{
  result = qword_100072360;
  if (!qword_100072360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072360);
  }

  return result;
}

uint64_t sub_100039360()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B490);
  sub_1000071F4(v0, qword_10007B490);
  return sub_10004F978();
}

uint64_t sub_1000393D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_100002814(&qword_10006F090, &qword_100058950);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = sub_10004F9A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_10004F978();
  v13 = *(v12 + 56);
  v13(v10, 1, 1, v11);
  sub_10004F978();
  v13(v8, 0, 1, v11);
  sub_10004F708();
  v14 = sub_10004F718();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  sub_10004F6E8();
  v15 = sub_10004F6D8();
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t sub_100039678(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_10004FB38();
  v2[11] = swift_task_alloc();
  sub_1000504D8();
  v2[12] = swift_task_alloc();
  v3 = sub_10004F8A8();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_100050658();
  v2[20] = sub_100050648();
  v5 = sub_100050628();
  v2[21] = v5;
  v2[22] = v4;

  return _swift_task_switch(sub_1000397EC, v5, v4);
}

uint64_t sub_1000397EC()
{
  sub_10004F658();
  v1 = sub_10004F648();
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = v1[1];
    *(v0 + 264) = *v1;
    *(v0 + 280) = v3;
    *(v0 + 48) = v2;
    sub_10003A418();
    *(v0 + 184) = sub_10004F7C8();
    sub_10004F698();
    type metadata accessor for WritingToolsIntentManager(0);
    *(v0 + 192) = swift_allocObject();
    *(v0 + 200) = sub_100050648();
    v5 = sub_100050628();

    return _swift_task_switch(sub_100039A90, v5, v4);
  }

  else
  {

    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v6 = sub_100050188();
    sub_1000071F4(v6, qword_10007B4F8);
    v7 = sub_100050168();
    v8 = sub_100050728();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to obtain an app audit token from AppIntents.", v9, 2u);
    }

    sub_10004F5D8();
    sub_10000731C(&qword_10006F0A0, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    sub_10004F5C8();
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100039A90()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v17 = *(v0 + 144);
  v18 = *(v0 + 136);
  v3 = *(v0 + 112);
  v16 = *(v0 + 104);

  sub_100050468();
  sub_10004FB08();
  v4 = sub_100050528();
  *(v0 + 208) = v5;
  *(v1 + 3) = v4;
  *(v1 + 4) = v5;
  *(v1 + 6) = 100;
  type metadata accessor for WritingToolsModel(0);
  swift_allocObject();
  v6 = sub_100009ACC(1, 0);
  *(v0 + 216) = v6;
  *(v1 + 2) = v6;
  sub_100008F38(1, 0, 0, 0);
  swift_getKeyPath();
  *(v0 + 56) = v6;
  sub_10000731C(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  v7 = objc_allocWithZone(BSAuditToken);

  v8 = *(v0 + 280);
  *(v0 + 296) = *(v0 + 264);
  *(v0 + 312) = v8;
  sub_100011960([v7 initWithAuditToken:v0 + 296]);

  *(v1 + 5) = v2;
  [v2 setTotalUnitCount:100];
  v9 = *(v3 + 16);
  v9(&v1[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text], v17, v16);
  sub_100007288();
  v9(v18, v17, v16);
  v10 = sub_100050798();
  v11 = [objc_allocWithZone(WTContext) initWithAttributedText:v10 range:{0, objc_msgSend(v10, "length")}];
  *(v0 + 224) = v11;

  v12 = *(v3 + 8);
  *(v0 + 232) = v12;
  *(v0 + 240) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v17, v16);
  *&v1[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context] = v11;
  v13 = *(v0 + 168);
  v14 = *(v0 + 176);

  return _swift_task_switch(sub_10000630C, v13, v14);
}

uint64_t sub_100039D74@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006E9F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004F9A8();
  v3 = sub_1000071F4(v2, qword_10007B490);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100039E1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100002814(&qword_100072380, &qword_100059390);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100002814(&qword_100072388, &qword_100059398);
  __chkstk_darwin(v3);
  sub_10004F778();
  v5._countAndFlagsBits = 0x616572666F6F7250;
  v5._object = 0xEA00000000002064;
  sub_10004F768(v5);
  swift_getKeyPath();
  sub_100002814(&qword_100072390, &qword_1000593C8);
  sub_10004F758();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004F768(v6);
  sub_10004F788();
  return sub_10004F748();
}

uint64_t sub_100039FB8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006CB4;

  return sub_100039678(a1, v4);
}

uint64_t sub_10003A058@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v1 = sub_10004F798();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002814(&qword_10006F080, &unk_100059350);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_100002814(&qword_10006F088, &unk_100056320);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_100002814(&qword_10006F090, &qword_100058950);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_10004F9A8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_100002814(&qword_10006F098, &qword_100056330);
  sub_10004F978();
  (*(v15 + 56))(v13, 1, 1, v14);
  v16 = sub_10004F8A8();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_10004F678();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  (*(v2 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_10004F6C8();
  *v20 = result;
  return result;
}

uint64_t sub_10003A388(uint64_t a1)
{
  v2 = sub_10003920C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10003A418()
{
  result = qword_100072378;
  if (!qword_100072378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072378);
  }

  return result;
}

uint64_t sub_10003A474@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004F6A8();
  *a1 = result;
  return result;
}

uint64_t sub_10003A514(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x7469746E45707061;
  v4 = 0xE900000000000079;
  v5 = a1;
  v6 = 0xE500000000000000;
  v7 = 0x616964656DLL;
  if (a1 != 6)
  {
    v7 = 0x6E65657263536E6FLL;
    v6 = 0xE800000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x746E657665;
  if (a1 != 4)
  {
    v9 = 0x647261436469;
    v8 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xE600000000000000;
  v11 = 0x6C61626F6C67;
  if (a1 == 2)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v11 = 0x6867696C746F7073;
  }

  v12 = 0x726577736E61;
  if (!a1)
  {
    v12 = 0x7469746E45707061;
    v10 = 0xE900000000000079;
  }

  if (a1 <= 1u)
  {
    v11 = v12;
    v2 = v10;
  }

  if (a1 <= 3u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  if (v5 <= 3)
  {
    v14 = v2;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v4 = 0xE500000000000000;
        if (v13 != 0x616964656DLL)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v4 = 0xE800000000000000;
        if (v13 != 0x6E65657263536E6FLL)
        {
          goto LABEL_42;
        }
      }
    }

    else if (a2 == 4)
    {
      v4 = 0xE500000000000000;
      if (v13 != 0x746E657665)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v4 = 0xE600000000000000;
      if (v13 != 0x647261436469)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v4 = 0xE600000000000000;
        if (v13 != 0x6C61626F6C67)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v3 = 0x6867696C746F7073;
      v4 = 0xE900000000000074;
    }

    else if (a2)
    {
      v4 = 0xE600000000000000;
      if (v13 != 0x726577736E61)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != v3)
    {
LABEL_42:
      v15 = sub_1000509B8();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v14 != v4)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_10003A754(uint64_t a1, unsigned __int8 a2)
{
  sub_100050568();
}

Swift::Int sub_10003A870(uint64_t a1, unsigned __int8 a2)
{
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

uint64_t sub_10003A9A4()
{
  v0 = 7104878;
  sub_100050848(63);
  v9._object = 0x8000000100053520;
  v9._countAndFlagsBits = 0xD000000000000022;
  sub_100050578(v9);

  sub_10004FF48();

  if (v8 == 2)
  {
    v1 = 0xE300000000000000;
    v2._countAndFlagsBits = 7104878;
  }

  else
  {

    sub_10004FF48();

    if (v8)
    {
      v2._countAndFlagsBits = 1702195828;
    }

    else
    {
      v2._countAndFlagsBits = 0x65736C6166;
    }

    if (v8)
    {
      v1 = 0xE400000000000000;
    }

    else
    {
      v1 = 0xE500000000000000;
    }
  }

  v2._object = v1;
  sub_100050578(v2);

  v10._countAndFlagsBits = 0x656E4F6B63697020;
  v10._object = 0xE90000000000003DLL;
  sub_100050578(v10);

  sub_10004FF48();

  if (v8 == 2)
  {
    v3 = 0xE300000000000000;
    v4._countAndFlagsBits = 7104878;
  }

  else
  {

    sub_10004FF48();

    if (v8)
    {
      v4._countAndFlagsBits = 1702195828;
    }

    else
    {
      v4._countAndFlagsBits = 0x65736C6166;
    }

    if (v8)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  v4._object = v3;
  sub_100050578(v4);

  v11._countAndFlagsBits = 0x5468637261657320;
  v11._object = 0xED00003D736D7265;
  sub_100050578(v11);

  sub_10004FF48();

  if (v8)
  {

    sub_10004FF48();

    v0 = sub_1000505F8();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v12._countAndFlagsBits = v0;
  v12._object = v6;
  sub_100050578(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  sub_100050578(v13);
  return 0;
}

uint64_t sub_10003AC5C(uint64_t a1)
{
  v2 = sub_10004FE28();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_100072398;
  sub_100002814(&qword_1000727E8, &unk_10005A210);
  swift_allocObject();
  *(v6 + v7) = sub_10004FF38();
  v8 = qword_1000723A0;
  swift_allocObject();
  *(v6 + v8) = sub_10004FF38();
  v9 = qword_1000723A8;
  sub_100002814(&qword_1000727B8, &qword_10005A1E0);
  swift_allocObject();
  *(v6 + v9) = sub_10004FF38();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_10004FE88();
  (*(v3 + 8))(a1, v2);
  return v10;
}

uint64_t sub_10003AE18()
{
}

uint64_t sub_10003AE68()
{
  sub_10004FE78();

  return swift_deallocClassInstance();
}

uint64_t sub_10003AF60(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_100072780, type metadata accessor for StructuredQueryEntity, &unk_10005A044);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_10003AFD0()
{
  v1 = sub_10003DADC(&qword_100072770, type metadata accessor for StructuredQueryEntity, &unk_10005A0CC);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_10003B030(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_100072780, type metadata accessor for StructuredQueryEntity, &unk_10005A044);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_10003B0A0()
{
  v0 = 7104878;
  sub_100050848(74);
  v16._countAndFlagsBits = 0xD000000000000015;
  v16._object = 0x8000000100053580;
  sub_100050578(v16);

  sub_10004FF48();

  if (v15)
  {
    v1._countAndFlagsBits = v14;
  }

  else
  {
    v1._countAndFlagsBits = 7104878;
  }

  object = 0xE300000000000000;
  if (v15)
  {
    v3 = v15;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  v1._object = v3;
  sub_100050578(v1);

  v17._countAndFlagsBits = 0x3D6570797420;
  v17._object = 0xE600000000000000;
  sub_100050578(v17);

  sub_10004FF48();

  v4._countAndFlagsBits = 7104878;
  if (v14 != 8)
  {

    sub_10004FF48();

    v4._countAndFlagsBits = sub_100050548();
    object = v4._object;
  }

  v4._object = object;
  sub_100050578(v4);

  v18._countAndFlagsBits = 0x69746E4570706120;
  v18._object = 0xEB000000003D7974;
  sub_100050578(v18);

  sub_10004FF48();

  if (v14)
  {

    sub_10004FF48();

    v5 = sub_10003BD84();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  v19._countAndFlagsBits = v5;
  v19._object = v7;
  sub_100050578(v19);

  v20._object = 0x80000001000535A0;
  v20._countAndFlagsBits = 0xD000000000000011;
  sub_100050578(v20);

  sub_10004FF48();

  if (v14)
  {

    sub_10004FF48();

    v8 = sub_10003C3CC();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
    v8 = 7104878;
  }

  v21._countAndFlagsBits = v8;
  v21._object = v10;
  sub_100050578(v21);

  v22._countAndFlagsBits = 0x3D726577736E6120;
  v22._object = 0xE800000000000000;
  sub_100050578(v22);

  sub_10004FF48();

  if (v14)
  {

    sub_10004FF48();

    v0 = sub_10003CDD4();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  v23._countAndFlagsBits = v0;
  v23._object = v12;
  sub_100050578(v23);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  sub_100050578(v24);
  return 0;
}

uint64_t sub_10003B454(uint64_t a1)
{
  v3 = sub_10004FE28();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100072400;
  sub_100002814(&qword_1000727A8, &qword_10005A1D0);
  swift_allocObject();
  *(v1 + v7) = sub_10004FF38();
  v8 = qword_100072408;
  sub_100002814(&qword_1000727C8, &qword_10005A1F0);
  swift_allocObject();
  *(v1 + v8) = sub_10004FF38();
  v9 = qword_100072410;
  sub_100002814(&qword_1000727D0, &qword_10005A1F8);
  swift_allocObject();
  *(v1 + v9) = sub_10004FF38();
  v10 = qword_100072418;
  sub_100002814(&qword_1000727D8, &qword_10005A200);
  swift_allocObject();
  *(v1 + v10) = sub_10004FF38();
  v11 = qword_100072420;
  sub_100002814(&qword_1000727E0, &qword_10005A208);
  swift_allocObject();
  *(v1 + v11) = sub_10004FF38();
  (*(v4 + 16))(v6, a1, v3);
  v12 = sub_10004FE88();
  (*(v4 + 8))(a1, v3);
  return v12;
}

uint64_t sub_10003B684()
{
}

uint64_t sub_10003B6F4()
{
  sub_10004FE78();

  return swift_deallocClassInstance();
}

uint64_t sub_10003B8C0(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_100072738, type metadata accessor for SearchEntity, &unk_100059E18);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_10003B930()
{
  v1 = sub_10003DADC(&qword_100072728, type metadata accessor for SearchEntity, &unk_100059EA0);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_10003B9B4(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_100072738, type metadata accessor for SearchEntity, &unk_100059E18);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_10003BA24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004FE48();
  *a1 = result;
  return result;
}

unint64_t sub_10003BAC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003E7A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10003BAF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000074;
  v3 = *v1;
  v4 = 0xE900000000000079;
  v5 = 0x7469746E45707061;
  v6 = 0xE500000000000000;
  v7 = 0x616964656DLL;
  if (v3 != 6)
  {
    v7 = 0x6E65657263536E6FLL;
    v6 = 0xE800000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x746E657665;
  result = 0x647261436469;
  if (v3 != 4)
  {
    v9 = 0x647261436469;
    v8 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v11 = 0x6C61626F6C67;
  if (v3 == 2)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v11 = 0x6867696C746F7073;
  }

  if (*v1)
  {
    v5 = 0x726577736E61;
    v4 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v5 = v11;
    v4 = v2;
  }

  if (*v1 <= 3u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 <= 3u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_10003BC0C(uint64_t a1)
{
  v2 = sub_10003E7F0();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_10003BC48(uint64_t a1)
{
  v2 = sub_10003E7F0();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_10003BC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003D770();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_10003BCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003E7F0();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_10003BD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003D770();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

uint64_t sub_10003BD84()
{
  sub_100050848(59);
  v11._object = 0x80000001000535C0;
  v11._countAndFlagsBits = 0xD000000000000014;
  sub_100050578(v11);

  sub_10004FF48();

  if (v10)
  {
    v0._countAndFlagsBits = v9;
  }

  else
  {
    v0._countAndFlagsBits = 7104878;
  }

  if (v10)
  {
    v1 = v10;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  v0._object = v1;
  sub_100050578(v0);

  v12._countAndFlagsBits = 0x49656C646E756220;
  v12._object = 0xEA00000000003D64;
  sub_100050578(v12);

  sub_10004FF48();

  if (v10)
  {
    v2._countAndFlagsBits = v9;
  }

  else
  {
    v2._countAndFlagsBits = 7104878;
  }

  if (v10)
  {
    v3 = v10;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  v2._object = v3;
  sub_100050578(v2);

  v13._countAndFlagsBits = 0x3D64496570797420;
  v13._object = 0xE800000000000000;
  sub_100050578(v13);

  sub_10004FF48();

  if (v10)
  {
    v4._countAndFlagsBits = v9;
  }

  else
  {
    v4._countAndFlagsBits = 7104878;
  }

  if (v10)
  {
    v5 = v10;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v4._object = v5;
  sub_100050578(v4);

  v14._countAndFlagsBits = 0x6F636F746F727020;
  v14._object = 0xEC0000003D64496CLL;
  sub_100050578(v14);

  sub_10004FF48();

  if (v10)
  {
    v6._countAndFlagsBits = v9;
  }

  else
  {
    v6._countAndFlagsBits = 7104878;
  }

  if (v10)
  {
    v7 = v10;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v6._object = v7;
  sub_100050578(v6);

  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  sub_100050578(v15);
  return 0;
}

uint64_t sub_10003BFB0(uint64_t a1)
{
  v3 = sub_10004FE28();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100072478;
  sub_100002814(&qword_1000727A8, &qword_10005A1D0);
  swift_allocObject();
  *(v1 + v7) = sub_10004FF38();
  v8 = qword_100072480;
  swift_allocObject();
  *(v1 + v8) = sub_10004FF38();
  v9 = qword_100072488;
  swift_allocObject();
  *(v1 + v9) = sub_10004FF38();
  v10 = qword_100072490;
  swift_allocObject();
  *(v1 + v10) = sub_10004FF38();
  (*(v4 + 16))(v6, a1, v3);
  v11 = sub_10004FE88();
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t sub_10003C28C(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_1000726F0, type metadata accessor for SearchAppEntity, &unk_100059BEC);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_10003C2FC()
{
  v1 = sub_10003DADC(&qword_1000726E0, type metadata accessor for SearchAppEntity, &unk_100059C74);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_10003C35C(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_1000726F0, type metadata accessor for SearchAppEntity, &unk_100059BEC);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_10003C3CC()
{
  v0 = sub_100002814(&qword_100072788, &qword_10005A1C0);
  v1 = __chkstk_darwin(v0 - 8);
  v30 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v5 = &v30 - v4;
  v6 = __chkstk_darwin(v3);
  v31 = &v30 - v7;
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_100050848(93);
  v36._countAndFlagsBits = 0xD000000000000026;
  v36._object = 0x80000001000535E0;
  sub_100050578(v36);

  sub_10004FF48();

  if (v33)
  {
    v10._countAndFlagsBits = v32;
  }

  else
  {
    v10._countAndFlagsBits = 7104878;
  }

  v11 = 0xE300000000000000;
  if (v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  v10._object = v12;
  sub_100050578(v10);

  v37._countAndFlagsBits = 0x3D656C74697420;
  v37._object = 0xE700000000000000;
  sub_100050578(v37);

  sub_10004FF48();

  if (v33)
  {
    v13._countAndFlagsBits = v32;
  }

  else
  {
    v13._countAndFlagsBits = 7104878;
  }

  if (v33)
  {
    v14 = v33;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  v13._object = v14;
  sub_100050578(v13);

  v38._object = 0x8000000100053610;
  v38._countAndFlagsBits = 0xD000000000000010;
  sub_100050578(v38);

  sub_10004FF48();

  v15 = sub_10004FF58();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v9, 1, v15);
  sub_10003E73C(v9);
  v19._countAndFlagsBits = 7104878;
  if (v18 != 1)
  {

    v20 = v31;
    sub_10004FF48();

    result = v17(v20, 1, v15);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_22;
    }

    sub_10003DADC(&qword_100072790, &type metadata accessor for IntentFileRepresentation, &protocol conformance descriptor for IntentFileRepresentation);
    v22 = sub_100050998();
    v11 = v23;
    (*(v16 + 8))(v20, v15);
    v19._countAndFlagsBits = v22;
  }

  v19._object = v11;
  sub_100050578(v19);

  v39._countAndFlagsBits = 0xD000000000000017;
  v39._object = 0x8000000100053630;
  sub_100050578(v39);

  sub_10004FF48();

  v24 = v17(v5, 1, v15);
  sub_10003E73C(v5);
  if (v24 == 1)
  {
    v25 = 0xE300000000000000;
    v26._countAndFlagsBits = 7104878;
LABEL_20:
    v26._object = v25;
    sub_100050578(v26);

    v40._countAndFlagsBits = 62;
    v40._object = 0xE100000000000000;
    sub_100050578(v40);
    return v34;
  }

  v27 = v30;
  sub_10004FF48();

  result = v17(v27, 1, v15);
  if (result != 1)
  {
    sub_10003DADC(&qword_100072790, &type metadata accessor for IntentFileRepresentation, &protocol conformance descriptor for IntentFileRepresentation);
    v28 = sub_100050998();
    v25 = v29;
    (*(v16 + 8))(v27, v15);
    v26._countAndFlagsBits = v28;
    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10003C898(uint64_t a1)
{
  v3 = sub_10004FE28();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1000724E8;
  sub_100002814(&qword_1000727A8, &qword_10005A1D0);
  swift_allocObject();
  *(v1 + v7) = sub_10004FF38();
  v8 = qword_1000724F0;
  swift_allocObject();
  *(v1 + v8) = sub_10004FF38();
  v9 = qword_1000724F8;
  sub_100002814(&qword_1000727C0, &qword_10005A1E8);
  swift_allocObject();
  *(v1 + v9) = sub_10004FF38();
  v10 = qword_100072500;
  swift_allocObject();
  *(v1 + v10) = sub_10004FF38();
  (*(v4 + 16))(v6, a1, v3);
  v11 = sub_10004FE88();
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t sub_10003CA98(void *a1, void *a2, void *a3, void *a4)
{
}

uint64_t sub_10003CB28(void *a1, void *a2, void *a3, void *a4)
{
  sub_10004FE78();

  return swift_deallocClassInstance();
}

uint64_t sub_10003CC94(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_1000726A8, type metadata accessor for SearchSpotlightEntity, &unk_1000599C0);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_10003CD04()
{
  v1 = sub_10003DADC(&qword_100072698, type metadata accessor for SearchSpotlightEntity, &unk_100059A48);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_10003CD64(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_1000726A8, type metadata accessor for SearchSpotlightEntity, &unk_1000599C0);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_10003CDD4()
{
  sub_100050848(79);
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  v12._object = 0x8000000100053650;
  sub_100050578(v12);

  sub_10004FF48();

  if (v11)
  {
    v0._countAndFlagsBits = v10;
  }

  else
  {
    v0._countAndFlagsBits = 7104878;
  }

  if (v11)
  {
    v1 = v11;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  v0._object = v1;
  sub_100050578(v0);

  v13._countAndFlagsBits = 0x3D676F6C61696420;
  v13._object = 0xE800000000000000;
  sub_100050578(v13);

  sub_10004FF48();

  if (v11)
  {
    v2._countAndFlagsBits = v10;
  }

  else
  {
    v2._countAndFlagsBits = 7104878;
  }

  if (v11)
  {
    v3 = v11;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  v2._object = v3;
  sub_100050578(v2);

  v14._countAndFlagsBits = 0x73656372756F7320;
  v14._object = 0xE90000000000003DLL;
  sub_100050578(v14);

  sub_10004FF48();

  sub_100002814(&qword_100072798, &qword_10005A1C8);
  v15._countAndFlagsBits = sub_100050548();
  sub_100050578(v15);

  v16._object = 0x8000000100053670;
  v16._countAndFlagsBits = 0xD000000000000011;
  sub_100050578(v16);

  sub_10004FF48();

  if (v10)
  {

    sub_10004FF48();

    v4 = sub_1000505F8();
    v6 = v5;
  }

  else
  {
    v4 = 7104878;
    v6 = 0xE300000000000000;
  }

  v17._countAndFlagsBits = v4;
  v17._object = v6;
  sub_100050578(v17);

  v18._countAndFlagsBits = 0x3D656C74697420;
  v18._object = 0xE700000000000000;
  sub_100050578(v18);

  sub_10004FF48();

  if (v11)
  {
    v7._countAndFlagsBits = v10;
  }

  else
  {
    v7._countAndFlagsBits = 7104878;
  }

  if (v11)
  {
    v8 = v11;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  v7._object = v8;
  sub_100050578(v7);

  v19._countAndFlagsBits = 62;
  v19._object = 0xE100000000000000;
  sub_100050578(v19);
  return 0;
}

uint64_t sub_10003D124(uint64_t a1)
{
  v3 = sub_10004FE28();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100072558;
  sub_100002814(&qword_1000727A8, &qword_10005A1D0);
  swift_allocObject();
  *(v1 + v7) = sub_10004FF38();
  v8 = qword_100072560;
  swift_allocObject();
  *(v1 + v8) = sub_10004FF38();
  v9 = qword_100072568;
  sub_100002814(&qword_1000727B0, &qword_10005A1D8);
  swift_allocObject();
  *(v1 + v9) = sub_10004FF38();
  v10 = qword_100072570;
  sub_100002814(&qword_1000727B8, &qword_10005A1E0);
  swift_allocObject();
  *(v1 + v10) = sub_10004FF38();
  v11 = qword_100072578;
  swift_allocObject();
  *(v1 + v11) = sub_10004FF38();
  (*(v4 + 16))(v6, a1, v3);
  v12 = sub_10004FE88();
  (*(v4 + 8))(a1, v3);
  return v12;
}

uint64_t sub_10003D338()
{
}

uint64_t sub_10003D3A8()
{
  sub_10004FE78();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SearchResultType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchResultType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003D5A8()
{
  result = qword_1000725D0;
  if (!qword_1000725D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000725D0);
  }

  return result;
}

unint64_t sub_10003D600()
{
  result = qword_1000725D8;
  if (!qword_1000725D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000725D8);
  }

  return result;
}

unint64_t sub_10003D658()
{
  result = qword_1000725E0;
  if (!qword_1000725E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000725E0);
  }

  return result;
}

unint64_t sub_10003D6B0()
{
  result = qword_1000725E8;
  if (!qword_1000725E8)
  {
    sub_1000028C0(&qword_1000725F0, &qword_1000595B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000725E8);
  }

  return result;
}

unint64_t sub_10003D718()
{
  result = qword_1000725F8;
  if (!qword_1000725F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000725F8);
  }

  return result;
}

unint64_t sub_10003D770()
{
  result = qword_100072600;
  if (!qword_100072600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072600);
  }

  return result;
}

unint64_t sub_10003D7C8()
{
  result = qword_100072608;
  if (!qword_100072608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072608);
  }

  return result;
}

unint64_t sub_10003D820()
{
  result = qword_100072610;
  if (!qword_100072610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072610);
  }

  return result;
}

unint64_t sub_10003D878()
{
  result = qword_100072618;
  if (!qword_100072618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072618);
  }

  return result;
}

uint64_t sub_10003D90C(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_100072660, type metadata accessor for SearchAnswerEntity, &unk_100059794);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_10003D97C()
{
  v1 = sub_10003DADC(&qword_100072650, type metadata accessor for SearchAnswerEntity, &unk_10005981C);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_10003D9DC(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_100072660, type metadata accessor for SearchAnswerEntity, &unk_100059794);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_10003DADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003E73C(uint64_t a1)
{
  v2 = sub_100002814(&qword_100072788, &qword_10005A1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003E7A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006A2F0;
  v6._object = a2;
  v4 = sub_100050938(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10003E7F0()
{
  result = qword_1000727A0;
  if (!qword_1000727A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000727A0);
  }

  return result;
}

uint64_t sub_10003E8CC()
{
  v0 = sub_100050188();
  sub_100007390(v0, qword_10007B528);
  sub_1000071F4(v0, qword_10007B528);
  return sub_100050178();
}

uint64_t sub_10003E96C()
{
  v0 = sub_100050188();
  sub_100007390(v0, qword_10007B558);
  sub_1000071F4(v0, qword_10007B558);
  return sub_100050178();
}

uint64_t sub_10003EA14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100050188();
  sub_100007390(v5, a2);
  sub_1000071F4(v5, a2);
  return sub_100050178();
}

unint64_t sub_10003EA90()
{
  result = qword_1000727F0;
  if (!qword_1000727F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000727F0);
  }

  return result;
}

unint64_t sub_10003EAE8()
{
  result = qword_1000727F8;
  if (!qword_1000727F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000727F8);
  }

  return result;
}

unint64_t sub_10003EB40()
{
  result = qword_100072800;
  if (!qword_100072800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072800);
  }

  return result;
}

uint64_t sub_10003EBE4()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B588);
  sub_1000071F4(v0, qword_10007B588);
  return sub_10004F978();
}

uint64_t sub_10003EC54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_100002814(&qword_10006F090, &qword_100058950);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = sub_10004F9A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_10004F978();
  v13 = *(v12 + 56);
  v13(v10, 1, 1, v11);
  sub_10004F978();
  v13(v8, 0, 1, v11);
  sub_10004F708();
  v14 = sub_10004F718();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  sub_10004F6E8();
  v15 = sub_10004F6D8();
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t sub_10003EEFC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100002814(&qword_1000728B0, &qword_10005A6B0);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = __chkstk_darwin(v1);
  v30 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v25 - v5;
  v6 = sub_100002814(&qword_1000728B8, &qword_10005A6B8);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v28 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - v11;
  __chkstk_darwin(v10);
  v29 = v25 - v13;
  v38 = 0;
  v35 = sub_100002814(&qword_1000728C0, &qword_10005A6C0);
  v25[3] = sub_10003EA90();
  v14 = sub_100041500();
  v25[2] = sub_1000071AC(&qword_1000728C8, &qword_1000728C0, &qword_10005A6C0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_10004F828();
  v25[1] = sub_1000071AC(&qword_1000728D0, &qword_1000728B8, &qword_10005A6B8, &protocol conformance descriptor for ParameterSummaryCaseCondition<A, B, C>);
  sub_10004F818();
  v36 = *(v7 + 8);
  v26 = v12;
  v36(v12, v6);
  v27 = v7 + 8;
  v37 = 1;
  v15 = v28;
  v25[0] = v14;
  sub_10004F828();
  sub_10004F818();
  v36(v15, v6);
  v16 = v30;
  sub_10004F848();
  sub_1000071AC(&qword_1000728D8, &qword_1000728B0, &qword_10005A6B0, &protocol conformance descriptor for ParameterSummaryDefaultCaseCondition<A, B, C>);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  sub_10004F818();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  sub_10004F808();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

uint64_t sub_10003F3E0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v5 = sub_100002814(&qword_1000728E0, &qword_10005A6C8);
  __chkstk_darwin(v5 - 8);
  v6 = sub_100002814(&qword_1000728E8, &qword_10005A6D0);
  __chkstk_darwin(v6);
  v7 = sub_100002814(&qword_1000728C0, &qword_10005A6C0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  sub_10003EA90();
  sub_10004F778();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_10004F768(v17);
  swift_getKeyPath();
  sub_100002814(&qword_1000728F0, &qword_10005A6D8);
  sub_10004F758();

  v18._countAndFlagsBits = a2;
  v18._object = v16[0];
  sub_10004F768(v18);
  swift_getKeyPath();
  sub_100002814(&qword_1000728F8, &qword_10005A708);
  sub_10004F758();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_10004F768(v19);
  sub_10004F788();
  sub_10004F748();
  sub_1000071AC(&qword_1000728C8, &qword_1000728C0, &qword_10005A6C0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_10004F7B8();
  v14 = *(v8 + 8);
  v14(v11, v7);
  sub_10004F7A8();
  return (v14)(v13, v7);
}

uint64_t sub_10003F718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  sub_10004FB38();
  v3[13] = swift_task_alloc();
  sub_1000504D8();
  v3[14] = swift_task_alloc();
  v4 = sub_10004F8A8();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = sub_100050658();
  v3[22] = sub_100050648();
  v6 = sub_100050628();
  v3[23] = v6;
  v3[24] = v5;

  return _swift_task_switch(sub_10003F890, v6, v5);
}

uint64_t sub_10003F890()
{
  sub_10004F658();
  v1 = sub_10004F648();
  if (v1)
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = v1[1];
    *(v0 + 280) = *v1;
    *(v0 + 296) = v4;
    sub_10004F698();
    *(v0 + 345) = *(v0 + 344);
    *(v0 + 48) = v3;
    *(v0 + 56) = v2;
    sub_100041D78();
    *(v0 + 200) = sub_10004F7C8();
    sub_10004F698();
    type metadata accessor for WritingToolsIntentManager(0);
    *(v0 + 208) = swift_allocObject();
    *(v0 + 216) = sub_100050648();
    v6 = sub_100050628();

    return _swift_task_switch(sub_10003FB4C, v6, v5);
  }

  else
  {

    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v7 = sub_100050188();
    sub_1000071F4(v7, qword_10007B4F8);
    v8 = sub_100050168();
    v9 = sub_100050728();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to obtain an app audit token from AppIntents.", v10, 2u);
    }

    sub_10004F5D8();
    sub_10000731C(&qword_10006F0A0, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    sub_10004F5C8();
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10003FB4C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v3 = *(v0 + 345);
  v19 = *(v0 + 160);
  v20 = *(v0 + 152);
  v4 = *(v0 + 128);
  v18 = *(v0 + 120);

  if (v3)
  {
    v5 = 7;
  }

  else
  {
    v5 = 6;
  }

  sub_100050468();
  sub_10004FB08();
  v6 = sub_100050528();
  *(v0 + 224) = v7;
  *(v1 + 3) = v6;
  *(v1 + 4) = v7;
  *(v1 + 6) = 100;
  type metadata accessor for WritingToolsModel(0);
  swift_allocObject();
  v8 = sub_100009ACC(1, 0);
  *(v0 + 232) = v8;
  *(v1 + 2) = v8;
  sub_100008F38(v5, 0, 0, 0);
  swift_getKeyPath();
  *(v0 + 64) = v8;
  sub_10000731C(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  v9 = objc_allocWithZone(BSAuditToken);

  v10 = *(v0 + 296);
  *(v0 + 312) = *(v0 + 280);
  *(v0 + 328) = v10;
  sub_100011960([v9 initWithAuditToken:v0 + 312]);

  *(v1 + 5) = v2;
  [v2 setTotalUnitCount:100];
  v11 = *(v4 + 16);
  v11(&v1[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text], v19, v18);
  sub_100007288();
  v11(v20, v19, v18);
  v12 = sub_100050798();
  v13 = [objc_allocWithZone(WTContext) initWithAttributedText:v12 range:{0, objc_msgSend(v12, "length")}];
  *(v0 + 240) = v13;

  v14 = *(v4 + 8);
  *(v0 + 248) = v14;
  *(v0 + 256) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v19, v18);
  *&v1[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context] = v13;
  v15 = *(v0 + 184);
  v16 = *(v0 + 192);

  return _swift_task_switch(sub_10003FE40, v15, v16);
}

uint64_t sub_10003FE40()
{
  sub_10004F898();
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_10003FEE0;
  v2 = *(v0 + 136);

  return sub_100025888(v2);
}

uint64_t sub_10003FEE0()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1000401F4;
  }

  else
  {
    v5 = sub_10004001C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10004001C()
{
  v1 = v0[31];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];

  v1(v3, v4);
  (*(v5 + 32))(v3, v2, v4);
  v6 = v0[31];
  v7 = v0[25];
  v8 = v0[26];
  v13 = v0[30];
  v9 = v0[18];
  v10 = v0[15];
  sub_10000731C(&qword_10006F0B8, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_10004F688();

  swift_setDeallocating();
  v6(v8 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v10);

  swift_deallocClassInstance();
  v6(v9, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000401F4()
{
  v1 = v0[34];

  v0[9] = v1;
  swift_errorRetain();
  sub_100002814(&qword_10006F0B0, &qword_100057A80);
  if (swift_dynamicCast())
  {
    v2 = v0[3];
    if (v2 == 1)
    {

      v3 = v0[31];
      v4 = v0[25];
      v5 = v0[26];
      v15 = v0[30];
      v6 = v0[18];
      v7 = v0[15];
      sub_10000731C(&qword_10006F0B8, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
      sub_10004F688();

      swift_setDeallocating();
      v3(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v7);

      swift_deallocClassInstance();
      v3(v6, v7);

      v8 = v0[1];
      goto LABEL_6;
    }

    sub_1000072D4(v0[2], v2, v0[4], v0[5]);
  }

  v9 = v0[31];
  v10 = v0[30];
  v12 = v0[25];
  v11 = v0[26];
  v16 = v0[18];
  v13 = v0[15];

  swift_willThrow();

  swift_setDeallocating();
  v9(v11 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v13);

  swift_deallocClassInstance();
  v9(v16, v13);

  v8 = v0[1];
LABEL_6:

  return v8();
}

uint64_t sub_1000404F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006EA30 != -1)
  {
    swift_once();
  }

  v2 = sub_10004F9A8();
  v3 = sub_1000071F4(v2, qword_10007B588);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004059C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_100002814(&qword_1000728A0, &qword_10005A6A8);
  v5 = sub_1000071AC(&qword_1000728A8, &qword_1000728A0, &qword_10005A6A8, &protocol conformance descriptor for ParameterSummaryTupleCaseCondition<A, B, C>);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_10003EEFC, 0, v4, a2, v5);
}

uint64_t sub_100040668(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006CB4;

  return sub_10003F718(a1, v5, v4);
}

uint64_t sub_100040714@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004190C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004073C(uint64_t a1)
{
  v2 = sub_10003EA90();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100040778@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v24 = sub_100050458();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v21 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000504B8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100002814(&qword_10006F090, &qword_100058950);
  __chkstk_darwin(v4 - 8);
  v25 = v19 - v5;
  v6 = sub_10004F988();
  v20 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004FB38();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000504D8();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004F9A8();
  v22 = *(v12 - 8);
  v23 = v12;
  __chkstk_darwin(v12);
  sub_100050468();
  sub_10004FB08();
  v13 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v14 = *(v7 + 104);
  v19[1] = v7 + 104;
  v14(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_10004F9B8();
  sub_1000504A8();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_100050498(v27);
  v15 = v21;
  v16 = v24;
  (*(v1 + 104))(v21, enum case for String.LocalizationValue.Placeholder.int(_:), v24);
  sub_100050478();
  (*(v1 + 8))(v15, v16);
  v28._object = 0xEA00000000007365;
  v28._countAndFlagsBits = 0x6972616D6D757320;
  sub_100050498(v28);
  sub_1000504C8();
  sub_10004FB08();
  v14(v9, v13, v20);
  v17 = v25;
  sub_10004F9B8();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_10004F7F8();
}

uint64_t sub_100040C10()
{
  v0 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  __chkstk_darwin(v0 - 8);
  v2 = v19 - v1;
  v3 = sub_100002814(&qword_10006F090, &qword_100058950);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = sub_10004F9A8();
  v20 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100002814(&qword_100072888, &qword_10005A638);
  v8 = sub_100002814(&qword_10006ED68, &qword_1000559B0);
  v9 = *(v8 - 8);
  v22 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100056D10;
  v19[1] = *(v8 + 48);
  *(v11 + v10) = 0;
  sub_10004F978();
  v12 = *(v7 + 56);
  v19[2] = v7 + 56;
  v21 = v12;
  v13 = v5;
  v12(v5, 1, 1, v6);
  sub_10004F6F8();
  v14 = sub_10004F718();
  v15 = *(*(v14 - 8) + 56);
  v15(v2, 0, 1, v14);
  sub_10004F728();
  v16 = (v11 + v10 + v22);
  v22 = *(v8 + 48);
  *v16 = 1;
  sub_10004F978();
  v21(v13, 1, 1, v20);
  sub_10004F6F8();
  v15(v2, 0, 1, v14);
  sub_10004F728();
  v17 = sub_100004C84(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10007B5A0 = v17;
  return result;
}

uint64_t sub_100040FE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x654B657461657263;
  }

  else
  {
    v3 = 0x7A6972616D6D7573;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEF73746E696F5079;
  }

  if (*a2)
  {
    v5 = 0x654B657461657263;
  }

  else
  {
    v5 = 0x7A6972616D6D7573;
  }

  if (*a2)
  {
    v6 = 0xEF73746E696F5079;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000509B8();
  }

  return v8 & 1;
}

unint64_t sub_1000410A0()
{
  result = qword_100072808;
  if (!qword_100072808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072808);
  }

  return result;
}

Swift::Int sub_1000410F4()
{
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

uint64_t sub_100041188(uint64_t a1)
{
  sub_100050568();
}

Swift::Int sub_100041208(uint64_t a1)
{
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

uint64_t sub_100041298@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10006A420;
  v8._object = v3;
  v5 = sub_100050938(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1000412F8(uint64_t *a1@<X8>)
{
  v2 = 0x7A6972616D6D7573;
  if (*v1)
  {
    v2 = 0x654B657461657263;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEF73746E696F5079;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10004134C()
{
  result = qword_100072810;
  if (!qword_100072810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072810);
  }

  return result;
}

unint64_t sub_1000413A4()
{
  result = qword_100072818;
  if (!qword_100072818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072818);
  }

  return result;
}

unint64_t sub_1000413FC()
{
  result = qword_100072820;
  if (!qword_100072820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072820);
  }

  return result;
}

unint64_t sub_100041454()
{
  result = qword_100072828;
  if (!qword_100072828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072828);
  }

  return result;
}

unint64_t sub_1000414AC()
{
  result = qword_100072830;
  if (!qword_100072830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072830);
  }

  return result;
}

unint64_t sub_100041500()
{
  result = qword_100072838;
  if (!qword_100072838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072838);
  }

  return result;
}

unint64_t sub_100041558()
{
  result = qword_100072840;
  if (!qword_100072840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072840);
  }

  return result;
}

unint64_t sub_100041600()
{
  result = qword_100072848;
  if (!qword_100072848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072848);
  }

  return result;
}

uint64_t sub_100041658(uint64_t a1)
{
  v2 = sub_100041600();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000416A8()
{
  result = qword_100072850;
  if (!qword_100072850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072850);
  }

  return result;
}

unint64_t sub_100041700()
{
  result = qword_100072858;
  if (!qword_100072858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072858);
  }

  return result;
}

unint64_t sub_100041758()
{
  result = qword_100072860;
  if (!qword_100072860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072860);
  }

  return result;
}

uint64_t sub_1000417AC()
{
  if (qword_10006EA38 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100041808(uint64_t a1)
{
  v2 = sub_100041558();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10004190C()
{
  v0 = sub_10004F798();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002814(&qword_10006F080, &unk_100059350);
  v5 = __chkstk_darwin(v4 - 8);
  v31 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_100002814(&qword_10006F088, &unk_100056320);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  v12 = sub_100002814(&qword_10006F090, &qword_100058950);
  __chkstk_darwin(v12 - 8);
  v14 = v24 - v13;
  v24[0] = v24 - v13;
  v15 = sub_10004F9A8();
  v30 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v28 = sub_100002814(&qword_10006F098, &qword_100056330);
  sub_10004F978();
  v17 = *(v16 + 56);
  v27 = v16 + 56;
  v29 = v17;
  v17(v14, 1, 1, v15);
  v18 = sub_10004F8A8();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = sub_10004F678();
  v20 = *(*(v19 - 8) + 56);
  v20(v8, 1, 1, v19);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v21 = *(v1 + 104);
  v24[1] = v1 + 104;
  v25 = v21;
  v21(v3);
  v22 = v24[0];
  v28 = sub_10004F6C8();
  sub_100002814(&qword_100072890, &qword_10005A640);
  sub_10004F978();
  v29(v22, 1, 1, v30);
  v32 = 0;
  v20(v8, 1, 1, v19);
  v20(v31, 1, 1, v19);
  v25(v3, v26, v0);
  sub_100041600();
  sub_10004F6B8();
  return v28;
}

unint64_t sub_100041D78()
{
  result = qword_100072898;
  if (!qword_100072898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072898);
  }

  return result;
}

uint64_t sub_100041DD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004F6A8();
  *a1 = result;
  return result;
}

uint64_t sub_100041E00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004F6A8();
  *a1 = result;
  return result;
}

uint64_t sub_100041E38()
{
  v1 = v0;
  sub_100050348();

  sub_100050338();

  v2 = sub_100050328();

  if ((v2 & 1) == 0)
  {
    if (qword_10006EA08 != -1)
    {
      swift_once();
    }

    v3 = sub_100050188();
    sub_1000071F4(v3, qword_10007B510);
    v4 = sub_100050168();
    v5 = sub_100050738();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "failed to terminate GES session", v6, 2u);
    }
  }

  v7 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension10SlotParser___observationRegistrar;
  v8 = sub_10004FB98();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t sub_100041FB4()
{
  sub_100041E38();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SlotParser(uint64_t a1)
{
  result = qword_100072930;
  if (!qword_100072930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100042060(uint64_t a1)
{
  result = sub_10004FB98();
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

uint64_t sub_100042100()
{
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager, &unk_10005A99C);
  sub_10004FB58();

  swift_beginAccess();
}

Swift::Int sub_1000421B8()
{
  v1 = v0;
  v2 = sub_100050048();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Attachment.UploadState(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050A78();
  sub_100047AF4(v1, v8, type metadata accessor for Attachment.UploadState);
  v9 = sub_100002814(&qword_100072B60, &qword_10005A818);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100050A88(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_100050A88(1uLL);
    sub_100046B30(&qword_100072C78, &type metadata accessor for DocumentResourceIdentifier, &protocol conformance descriptor for DocumentResourceIdentifier);
    sub_100050438();
    (*(v3 + 8))(v5, v2);
  }

  return sub_100050AA8();
}

void sub_1000423D4(uint64_t a1)
{
  v2 = sub_100050048();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100047AF4(v1, v8, type metadata accessor for Attachment.UploadState);
  v9 = sub_100002814(&qword_100072B60, &qword_10005A818);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100050A88(0);
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    sub_100050A88(1uLL);
    sub_100046B30(&qword_100072C78, &type metadata accessor for DocumentResourceIdentifier, &protocol conformance descriptor for DocumentResourceIdentifier);
    sub_100050438();
    (*(v3 + 8))(v6, v2);
  }
}

Swift::Int sub_1000425C8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100050048();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050A78();
  sub_100047AF4(v2, v9, type metadata accessor for Attachment.UploadState);
  v10 = sub_100002814(&qword_100072B60, &qword_10005A818);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_100050A88(0);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    sub_100050A88(1uLL);
    sub_100046B30(&qword_100072C78, &type metadata accessor for DocumentResourceIdentifier, &protocol conformance descriptor for DocumentResourceIdentifier);
    sub_100050438();
    (*(v4 + 8))(v7, v3);
  }

  return sub_100050AA8();
}

uint64_t sub_1000427E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a4;
  v52 = a5;
  v49 = a3;
  v53 = sub_10004FA98();
  v9 = *(v53 - 8);
  __chkstk_darwin(v53);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  __chkstk_darwin(v11 - 8);
  v43 = &v40 - v12;
  v42 = sub_10004F8E8();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Attachment(0);
  v16 = v15[6];
  v17 = sub_10004FFB8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v50 = v16;
  v47 = v19;
  v48 = v17;
  v46 = v18 + 56;
  v19(a6 + v16, 1, 1);
  *(a6 + v15[9]) = 0;
  v20 = v15[10];
  v21 = sub_100002814(&qword_100072B60, &qword_10005A818);
  (*(*(v21 - 8) + 56))(a6 + v20, 1, 1, v21);
  v54 = v15;
  v22 = (a6 + v15[11]);
  v22->super.isa = 0;
  v22->_urlString = 0;
  sub_10004FA08(v22);
  v24 = v23;
  v25 = _CFURLCopySecurityScopeFromFileURL();

  if (v25)
  {

    sub_10004FA68();
  }

  v26 = v53;
  v27 = v54;
  v28 = a6 + v54[7];
  v29 = a1;
  v44 = *(v9 + 16);
  v44(a6, a1, v53);
  v30 = (a6 + v27[5]);
  v31 = v49;
  *v30 = a2;
  v30[1] = v31;
  sub_100002814(&qword_100072C38, &unk_10005AA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100056D10;
  *(inited + 32) = NSURLFileSizeKey;
  *(inited + 40) = NSURLContentTypeKey;
  v33 = NSURLFileSizeKey;
  v34 = NSURLContentTypeKey;
  sub_100004E6C(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_10004F9E8();

  *v28 = sub_10004F8D8();
  *(v28 + 8) = v35 & 1;
  v36 = v43;
  sub_10004F8C8();
  (*(v9 + 8))(v29, v26);
  (*(v41 + 8))(v14, v42);
  result = sub_1000479FC(v36, a6 + v50);
  v38 = (a6 + v54[8]);
  v39 = v52;
  *v38 = v51;
  v38[1] = v39;
  return result;
}

void sub_100042E4C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100050048();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Attachment.UploadState(0);
  __chkstk_darwin(v5 - 8);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004FFB8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  sub_10004FA98();
  sub_100046B30(&qword_100072C28, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_100050438();
  v14 = type metadata accessor for Attachment(0);
  if (*(v1 + v14[5] + 8))
  {
    sub_100050A88(1uLL);
    sub_100050568();
  }

  else
  {
    sub_100050A88(0);
  }

  sub_100005070(v1 + v14[6], v13, &qword_100072A90, &qword_10005A7D0);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_100050A98(0);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    sub_100050A98(1u);
    sub_100046B30(&qword_100072C70, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
    sub_100050438();
    (*(v8 + 8))(v10, v7);
  }

  v15 = v1 + v14[7];
  if (*(v15 + 8) == 1)
  {
    sub_100050A98(0);
  }

  else
  {
    v16 = *v15;
    sub_100050A98(1u);
    sub_100050A88(v16);
  }

  sub_100050568();
  if (*(v1 + v14[9]))
  {
    sub_100050A98(1u);
    type metadata accessor for CGImage(0);
    sub_100046B30(&qword_100072C58, type metadata accessor for CGImage, &unk_100055608);
    sub_10004FCA8();
  }

  else
  {
    sub_100050A98(0);
  }

  v17 = v25;
  sub_100047AF4(v2 + v14[10], v25, type metadata accessor for Attachment.UploadState);
  v18 = sub_100002814(&qword_100072B60, &qword_10005A818);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    sub_100050A88(0);
  }

  else
  {
    v20 = v22;
    v19 = v23;
    v21 = v24;
    (*(v23 + 32))(v22, v17, v24);
    sub_100050A88(1uLL);
    sub_100046B30(&qword_100072C78, &type metadata accessor for DocumentResourceIdentifier, &protocol conformance descriptor for DocumentResourceIdentifier);
    sub_100050438();
    (*(v19 + 8))(v20, v21);
  }

  if (*(v2 + v14[11] + 8))
  {
    sub_100050A98(1u);
    sub_100050568();
  }

  else
  {
    sub_100050A98(0);
  }
}

uint64_t sub_1000433C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004FA98();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_100043430()
{
  sub_100050A78();
  sub_100042E4C(v1);
  return sub_100050AA8();
}

Swift::Int sub_100043474(uint64_t a1)
{
  sub_100050A78();
  sub_100042E4C(v2);
  return sub_100050AA8();
}

uint64_t sub_1000434B0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1000509B8();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

Swift::Int sub_1000434F4()
{
  v1 = *(v0 + 8);
  sub_100050A78();
  if (v1)
  {
    sub_100050A88(1uLL);
    sub_100050568();
  }

  else
  {
    sub_100050A88(0);
  }

  return sub_100050AA8();
}

void sub_100043564(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_100050A88(1uLL);

    sub_100050568();
  }

  else
  {
    sub_100050A88(0);
  }
}

Swift::Int sub_1000435DC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_100050A78();
  if (v2)
  {
    sub_100050A88(1uLL);
    sub_100050568();
  }

  else
  {
    sub_100050A88(0);
  }

  return sub_100050AA8();
}

uint64_t sub_100043648(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_10004F9C8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_10004FAD8();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10004FA98();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100043804, 0, 0);
}

uint64_t sub_100043804()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  sub_10004FCD8();
  sub_10004FA18();
  v5 = *(v4 + 8);
  v5(v1, v3);
  v34 = sub_10004F9F8();
  v36 = v6;
  v5(v2, v3);
  sub_10004FCD8();
  sub_10004F9D8();
  v37 = v5;
  v5(v2, v3);
  if (qword_10006EA40 != -1)
  {
    swift_once();
  }

  v7 = v0[17];
  v8 = v0[12];
  v35 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  sub_1000071F4(v35, qword_10007B5A8);
  sub_10004FAC8();
  v14 = sub_10004FAA8();
  v16 = v15;
  (*(v10 + 8))(v8, v9);
  v0[2] = v14;
  v0[3] = v16;
  (*(v12 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v13);
  sub_100046BDC();
  sub_10004FA88();
  (*(v12 + 8))(v11, v13);

  sub_10004FA28();

  v37(v7, v35);
  v17 = [objc_opt_self() defaultManager];
  sub_10004FCD8();
  sub_10004FA08(v18);
  v20 = v19;
  v37(v7, v35);
  sub_10004FA08(v21);
  v23 = v22;
  v0[4] = 0;
  LODWORD(v16) = [v17 moveItemAtURL:v20 toURL:v22 error:v0 + 4];

  v24 = v0[4];
  v25 = v0[17];
  v26 = v0[15];
  if (v16)
  {
    v27 = v0[13];
    v28 = v0[5];
    (*(v0[14] + 16))(v0[17], v0[15], v27);
    v29 = v24;
    sub_1000427E4(v25, 0, 0xE000000000000000, v34, v36, v28);
    v37(v26, v27);
  }

  else
  {
    v31 = v0[13];
    v32 = v24;

    sub_10004F968();

    swift_willThrow();
    v37(v26, v31);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_100043C48(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004FFB8();
  __chkstk_darwin(v2 - 8);
  sub_10004FFA8();
  return sub_10004FCC8();
}

uint64_t sub_100043CF8()
{
  v1 = v0;
  v2 = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_100050848(58);
  v18._object = 0x8000000100053860;
  v18._countAndFlagsBits = 0xD000000000000011;
  sub_100050578(v18);
  v5 = type metadata accessor for Attachment(0);
  v15 = *(v0 + v5[5]);
  sub_1000508C8();
  v19._countAndFlagsBits = 0x657079547475202CLL;
  v19._object = 0xEA0000000000203ALL;
  sub_100050578(v19);
  sub_100005070(v0 + v5[6], v4, &qword_100072A90, &qword_10005A7D0);
  v6 = sub_10004FFB8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_10000CBA0(v4, &qword_100072A90, &qword_10005A7D0);
    v8 = 0xE300000000000000;
    v9._countAndFlagsBits = 7104878;
  }

  else
  {
    v10 = sub_10004FF98();
    v8 = v11;
    (*(v7 + 8))(v4, v6);
    v9._countAndFlagsBits = v10;
  }

  v9._object = v8;
  sub_100050578(v9);

  v20._countAndFlagsBits = 0x203A657A6973202CLL;
  v20._object = 0xE800000000000000;
  sub_100050578(v20);
  v12 = (v1 + v5[7]);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *&v15 = v13;
  BYTE8(v15) = v12;
  sub_100002814(&qword_100072C48, &qword_10005AA40);
  v21._countAndFlagsBits = sub_100050548();
  sub_100050578(v21);

  v22._countAndFlagsBits = 0x6F6C70557369202CLL;
  v22._object = 0xEE00203A64656461;
  sub_100050578(v22);
  type metadata accessor for Attachment.UploadState(0);
  sub_1000508C8();
  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  sub_100050578(v23);
  return v16;
}

id sub_100043FC0()
{
  v0 = sub_10004FA98();
  sub_100007390(v0, qword_10007B5A8);
  v1 = sub_1000071F4(v0, qword_10007B5A8);
  return sub_10004400C(v1);
}

id sub_10004400C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_10004F9C8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004FA98();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  v14 = [v13 temporaryDirectory];

  sub_10004FA58();
  v28 = 0xD000000000000016;
  v29 = 0x80000001000513D0;
  (*(v2 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_100046BDC();
  sub_10004FA88();
  (*(v2 + 8))(v4, v1);
  v15 = *(v6 + 8);
  v15(v9, v5);
  v16 = [v12 defaultManager];
  sub_10004FA08(v17);
  v19 = v18;
  v28 = 0;
  LODWORD(v4) = [v16 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v28];

  v25 = v28;
  if (v4)
  {
    (*(v6 + 32))(v26, v11, v5);
    v20 = v25;

    return v20;
  }

  else
  {
    v22 = v25;
    v23 = sub_10004F968();

    swift_willThrow();
    v15(v11, v5);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_100050848(31);
    v31._countAndFlagsBits = 0xD00000000000001DLL;
    v31._object = 0x8000000100053840;
    sub_100050578(v31);
    v27 = v23;
    sub_100002814(&qword_10006F0B0, &qword_100057A80);
    sub_1000508C8();
    result = sub_1000508D8("Fatal error", 11, 2, v28, v29, "WritingToolsAppIntentsExtension/AttachmentManager.swift", 55, 2, 196, 0);
    __break(1u);
  }

  return result;
}

uint64_t sub_1000443FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager, &unk_10005A99C);
  sub_10004FB58();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1000444BC(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_10000DEEC(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager, &unk_10005A99C);
    sub_10004FB48();
  }
}

uint64_t sub_100044604(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_10004466C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager, &unk_10005A99C);
  sub_10004FB58();

  swift_beginAccess();
  return sub_100005070(v1 + 24, a1, &unk_1000711A0, &qword_100058BF0);
}

uint64_t sub_10004473C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager, &unk_10005A99C);
  sub_10004FB58();

  swift_beginAccess();
  return sub_100005070(v3 + 24, a2, &unk_1000711A0, &qword_100058BF0);
}

uint64_t sub_10004480C(uint64_t a1, uint64_t *a2)
{
  sub_100005070(a1, v3, &unk_1000711A0, &qword_100058BF0);
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager, &unk_10005A99C);
  sub_10004FB48();

  return sub_10000CBA0(v3, &unk_1000711A0, &qword_100058BF0);
}

uint64_t sub_100044914(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_100038980(a2, a1 + 24);
  return swift_endAccess();
}

uint64_t sub_100044978()
{
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager, &unk_10005A99C);
  sub_10004FB58();

  swift_beginAccess();
}

uint64_t sub_100044A30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager, &unk_10005A99C);
  sub_10004FB58();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_100044AF0(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_10000DEEC(v3, a1);

  if (v4)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager, &unk_10005A99C);
    sub_10004FB48();
  }
}

uint64_t sub_100044C38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

uint64_t sub_100044CA0(int64_t a1)
{
  v2 = v1;
  v69 = type metadata accessor for Attachment(0);
  v4 = *(v69 - 8);
  v5 = __chkstk_darwin(v69);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v62 - v8;
  v10 = __chkstk_darwin(v7);
  v70 = &v62 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v62 - v13;
  __chkstk_darwin(v12);
  v16 = &v62 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17AttachmentManager___observationRegistrar;
  v73[0] = v1;
  v18 = sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager, &unk_10005A99C);
  sub_10004FB58();

  result = swift_beginAccess();
  if (*(v1[2] + 16) <= a1)
  {
    return result;
  }

  swift_getKeyPath();
  v73[0] = v1;
  sub_10004FB58();

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = v1[2];
    if (*(v20 + 16) > a1)
    {
      v67 = v18;
      v65 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v21 = *(v4 + 72);
      v66 = a1;
      v64 = v21;
      sub_100047AF4(v20 + v65 + v21 * a1, v16, type metadata accessor for Attachment);
      if (qword_10006EA00 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_5:
  v22 = sub_100050188();
  v23 = sub_1000071F4(v22, qword_10007B4F8);
  sub_100047AF4(v16, v14, type metadata accessor for Attachment);
  v24 = sub_100050168();
  v25 = sub_100050728();
  v26 = os_log_type_enabled(v24, v25);
  v63 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v62 = v17;
    v29 = v9;
    v30 = v16;
    v31 = v28;
    v73[0] = v28;
    *v27 = 136642819;
    v32 = sub_100043CF8();
    v34 = v33;
    sub_100047B5C(v14, type metadata accessor for Attachment);
    v35 = sub_100046C30(v32, v34, v73);

    *(v27 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "removing attachment: %{sensitive}s", v27, 0xCu);
    sub_10000CC70(v31);
    v16 = v30;
    v9 = v29;
  }

  else
  {

    sub_100047B5C(v14, type metadata accessor for Attachment);
  }

  v36 = v69;
  v37 = &v16[*(v69 + 20)];
  v38 = v37[1];
  if (!v38)
  {
    sub_10004FA48();
    swift_getKeyPath();
    v71[0] = v2;
    sub_10004FB58();

    swift_beginAccess();
    sub_100005070((v2 + 3), v73, &unk_1000711A0, &qword_100058BF0);
    if (v74)
    {
      sub_10000D6CC(v73, v71);
      sub_10000CBA0(v73, &unk_1000711A0, &qword_100058BF0);
      sub_10000D634(v71, v72);
      sub_100015D1C(0, 1, 0, 1, 0, 1, 1, 0, *&v16[*(v36 + 44)], *&v16[*(v36 + 44) + 8]);
      goto LABEL_14;
    }

LABEL_17:
    sub_10000CBA0(v73, &unk_1000711A0, &qword_100058BF0);
    goto LABEL_19;
  }

  v69 = *v37;
  v39 = [objc_opt_self() defaultManager];
  sub_10004FA08(v40);
  v42 = v41;
  v73[0] = 0;
  v43 = [v39 removeItemAtURL:v41 error:v73];

  v44 = v73[0];
  if ((v43 & 1) == 0)
  {
    v46 = v73[0];
    v47 = sub_10004F968();

    v62 = v47;
    swift_willThrow();
    v48 = v68;
    sub_100047AF4(v16, v68, type metadata accessor for Attachment);

    v49 = sub_100050168();
    v50 = sub_100050738();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v73[0] = v63;
      *v51 = 136315395;
      *(v51 + 4) = sub_100046C30(v69, v38, v73);
      *(v51 + 12) = 2085;
      v52 = sub_10004FA78(1);
      v54 = v53;
      sub_100047B5C(v48, type metadata accessor for Attachment);
      v55 = sub_100046C30(v52, v54, v73);

      *(v51 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "failed to remove photo %s at %{sensitive}s", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100047B5C(v48, type metadata accessor for Attachment);
    }

    goto LABEL_19;
  }

  swift_getKeyPath();
  v71[0] = v2;
  v45 = v44;
  sub_10004FB58();

  swift_beginAccess();
  sub_100005070((v2 + 3), v73, &unk_1000711A0, &qword_100058BF0);
  if (!v74)
  {
    goto LABEL_17;
  }

  sub_10000D6CC(v73, v71);
  sub_10000CBA0(v73, &unk_1000711A0, &qword_100058BF0);
  sub_10000D634(v71, v72);
  sub_100015D1C(0, 1, 0, 1, 1, 0, 0, 1, *&v16[*(v36 + 44)], *&v16[*(v36 + 44) + 8]);
LABEL_14:
  sub_10000CC70(v71);
LABEL_19:
  v56 = v65;
  swift_getKeyPath();
  v73[0] = v2;
  sub_10004FB58();

  v73[0] = v2;
  swift_getKeyPath();
  sub_10004FB78();

  swift_beginAccess();
  v57 = v70;
  sub_100045760(v66, v70);
  sub_100047B5C(v57, type metadata accessor for Attachment);
  swift_endAccess();
  v73[0] = v2;
  swift_getKeyPath();
  sub_10004FB68();

  sub_100047AF4(v16, v9, type metadata accessor for Attachment);
  swift_getKeyPath();
  v73[0] = v2;
  sub_10004FB58();

  v73[0] = v2;
  swift_getKeyPath();
  sub_10004FB78();

  swift_beginAccess();
  v58 = v2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[8] = v58;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v58 = sub_100037D34(0, v58[2] + 1, 1, v58);
    v2[8] = v58;
  }

  v61 = v58[2];
  v60 = v58[3];
  if (v61 >= v60 >> 1)
  {
    v58 = sub_100037D34((v60 > 1), v61 + 1, 1, v58);
  }

  v58[2] = v61 + 1;
  sub_100047BBC(v9, v58 + v56 + v61 * v64);
  v2[8] = v58;
  swift_endAccess();
  v73[0] = v2;
  swift_getKeyPath();
  sub_10004FB68();

  return sub_100047B5C(v16, type metadata accessor for Attachment);
}

uint64_t sub_100045760@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000471D8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for Attachment(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100047BBC(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void sub_100045880()
{
  v63 = sub_10004FA98();
  v1 = *(v63 - 8);
  v2 = __chkstk_darwin(v63);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v55 - v5;
  swift_getKeyPath();
  v70 = v0;
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager, &unk_10005A99C);
  sub_10004FB58();

  swift_beginAccess();
  v7 = *(v0[2] + 16);
  if (v7)
  {
    v8 = v7 - 1;
    do
    {
      sub_100044CA0(v8--);
    }

    while (v8 != -1);
  }

  swift_getKeyPath();
  v69 = v0;
  sub_10004FB58();

  v69 = v0;
  swift_getKeyPath();
  sub_10004FB78();

  swift_beginAccess();
  v0[8] = &_swiftEmptyArrayStorage;

  v68 = v0;
  swift_getKeyPath();
  sub_10004FB68();

  v66 = objc_opt_self();
  v9 = [v66 defaultManager];
  if (qword_10006EA40 != -1)
  {
    swift_once();
  }

  v10 = v63;
  sub_1000071F4(v63, qword_10007B5A8);
  sub_10004FA08(v11);
  v13 = v12;
  v68 = 0;
  v14 = [v9 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:0 options:0 error:&v68];

  v15 = v68;
  if (v14)
  {
    v16 = sub_1000505E8();
    v17 = v15;

    v19 = *(v16 + 16);
    if (v19)
    {
      v20 = v1 + 16;
      v67 = *(v1 + 16);
      v21 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v55[1] = v16;
      v22 = v16 + v21;
      v23 = *(v20 + 56);
      v64 = (v20 - 8);
      v65 = v23;
      *&v18 = 136643075;
      v58 = v18;
      v59 = v20;
      v57 = v6;
      v56 = v4;
      v67(v6, v16 + v21, v10);
      while (1)
      {
        v26 = [v66 defaultManager];
        sub_10004FA08(v27);
        v29 = v28;
        v68 = 0;
        v30 = [v26 removeItemAtURL:v28 error:&v68];

        if (v30)
        {
          v24 = *v64;
          v25 = v68;
          v24(v6, v10);
        }

        else
        {
          v31 = v68;
          sub_10004F968();

          swift_willThrow();
          if (qword_10006EA00 != -1)
          {
            swift_once();
          }

          v32 = sub_100050188();
          sub_1000071F4(v32, qword_10007B4F8);
          v67(v4, v6, v10);
          swift_errorRetain();
          swift_errorRetain();
          v33 = sub_100050168();
          v34 = v4;
          v35 = sub_100050738();
          if (os_log_type_enabled(v33, v35))
          {
            v36 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v61 = v33;
            v62 = v37;
            v68 = v37;
            *v36 = v58;
            v38 = v34;
            v39 = sub_10004FA78(1);
            v41 = v40;
            v42 = *v64;
            (*v64)(v38, v63);
            v43 = sub_100046C30(v39, v41, &v68);

            *(v36 + 4) = v43;
            *(v36 + 12) = 2112;
            swift_errorRetain();
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 14) = v44;
            v45 = v60;
            *v60 = v44;

            v46 = v61;
            _os_log_impl(&_mh_execute_header, v61, v35, "failed to remove file at %{sensitive}s: %@", v36, 0x16u);
            sub_10000CBA0(v45, &qword_100072230, &qword_100058ED0);
            v10 = v63;

            sub_10000CC70(v62);

            v6 = v57;
            v42(v57, v10);
            v4 = v56;
          }

          else
          {

            v4 = v34;
            v47 = *v64;
            (*v64)(v4, v10);
            v47(v6, v10);
          }
        }

        v22 += v65;
        if (!--v19)
        {
          break;
        }

        v67(v6, v22, v10);
      }
    }
  }

  else
  {
    v48 = v68;
    sub_10004F968();

    swift_willThrow();
    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v49 = sub_100050188();
    sub_1000071F4(v49, qword_10007B4F8);
    swift_errorRetain();
    v50 = sub_100050168();
    v51 = sub_100050738();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v54;
      *v53 = v54;

      _os_log_impl(&_mh_execute_header, v50, v51, "failed to enumerate attachments tmp directory: %@", v52, 0xCu);
      sub_10000CBA0(v53, &qword_100072230, &qword_100058ED0);
    }

    else
    {
    }
  }
}

uint64_t sub_1000460BC()
{

  sub_10000CBA0(v0 + 24, &unk_1000711A0, &qword_100058BF0);

  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17AttachmentManager___observationRegistrar;
  v2 = sub_10004FB98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000461A8(uint64_t a1)
{
  result = sub_10004FB98();
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

uint64_t sub_100046268(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004FA98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for Attachment.UploadState(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100046420(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10004FA98();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for Attachment.UploadState(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_1000465C4(uint64_t a1)
{
  sub_10004FA98();
  if (v1 <= 0x3F)
  {
    sub_100046710(319, &qword_100072B00, &type metadata accessor for UTType);
    if (v2 <= 0x3F)
    {
      sub_100046764(319, &qword_100072B08, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        sub_100046710(319, &qword_100072B10, type metadata accessor for CGImage);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Attachment.UploadState(319);
          if (v5 <= 0x3F)
          {
            sub_100046764(319, &unk_100072B18, &type metadata for String);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100046710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000507E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100046764(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000507E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000467B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100046800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100046854(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100046890(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&qword_100072B60, &qword_10005A818);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004691C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100002814(&qword_100072B60, &qword_10005A818);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000469A8(uint64_t a1)
{
  sub_100046A00();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_100046A00()
{
  if (!qword_100072BE8)
  {
    v0 = sub_100050048();
    if (!v1)
    {
      atomic_store(v0, &qword_100072BE8);
    }
  }
}

unint64_t sub_100046A94()
{
  result = qword_100072C18;
  if (!qword_100072C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072C18);
  }

  return result;
}

uint64_t sub_100046B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100046BDC()
{
  result = qword_100072C30;
  if (!qword_100072C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072C30);
  }

  return result;
}

unint64_t sub_100046C30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100046CFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100015440(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000CC70(v11);
  return v7;
}

unint64_t sub_100046CFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100046E08(a5, a6);
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
    result = sub_100050888();
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

char *sub_100046E08(uint64_t a1, unint64_t a2)
{
  v3 = sub_100046E54(a1, a2);
  sub_100046F84(&off_10006A010);
  return v3;
}

char *sub_100046E54(uint64_t a1, unint64_t a2)
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

  v6 = sub_100047070(v5, 0);
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

  result = sub_100050888();
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
        v10 = sub_100050588();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100047070(v10, 0);
        result = sub_100050838();
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

uint64_t sub_100046F84(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000470E4(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100047070(uint64_t a1, uint64_t a2)
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

  sub_100002814(&qword_100072C40, &unk_10005AA30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000470E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002814(&qword_100072C40, &unk_10005AA30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000471EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100050048();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Attachment.UploadState(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002814(&qword_100072C68, &unk_10005AA50);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100047AF4(a1, &v21 - v13, type metadata accessor for Attachment.UploadState);
  sub_100047AF4(a2, &v14[v15], type metadata accessor for Attachment.UploadState);
  v16 = sub_100002814(&qword_100072B60, &qword_10005A818);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v14, 1, v16) != 1)
  {
    sub_100047AF4(v14, v10, type metadata accessor for Attachment.UploadState);
    if (v17(&v14[v15], 1, v16) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = sub_100050038();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100047B5C(v14, type metadata accessor for Attachment.UploadState);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v15], 1, v16) != 1)
  {
LABEL_6:
    sub_10000CBA0(v14, &qword_100072C68, &unk_10005AA50);
    v18 = 0;
    return v18 & 1;
  }

  sub_100047B5C(v14, type metadata accessor for Attachment.UploadState);
  v18 = 1;
  return v18 & 1;
}

BOOL sub_100047500(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004FFB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - v9;
  v11 = sub_100002814(&qword_100072C50, &qword_10005AA48);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  if ((sub_10004FA38() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for Attachment(0);
  v15 = *(v14 + 20);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20 && (sub_1000509B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v53 = v14;
  v21 = *(v14 + 24);
  v22 = *(v11 + 48);
  v51 = a1;
  sub_100005070(a1 + v21, v13, &qword_100072A90, &qword_10005A7D0);
  v52 = a2;
  v23 = a2 + v21;
  v24 = v5;
  sub_100005070(v23, &v13[v22], &qword_100072A90, &qword_10005A7D0);
  v25 = *(v5 + 48);
  if (v25(v13, 1, v4) == 1)
  {
    if (v25(&v13[v22], 1, v4) == 1)
    {
      sub_10000CBA0(v13, &qword_100072A90, &qword_10005A7D0);
      goto LABEL_19;
    }

LABEL_16:
    sub_10000CBA0(v13, &qword_100072C50, &qword_10005AA48);
    return 0;
  }

  sub_100005070(v13, v10, &qword_100072A90, &qword_10005A7D0);
  if (v25(&v13[v22], 1, v4) == 1)
  {
    (*(v24 + 8))(v10, v4);
    goto LABEL_16;
  }

  (*(v24 + 32))(v7, &v13[v22], v4);
  sub_100046B30(&qword_100072C60, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
  v27 = sub_100050448();
  v28 = *(v24 + 8);
  v28(v7, v4);
  v28(v10, v4);
  sub_10000CBA0(v13, &qword_100072A90, &qword_10005A7D0);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v29 = v52;
  v30 = v53;
  v31 = v53[7];
  v32 = v51;
  v33 = (v51 + v31);
  v34 = *(v51 + v31 + 8);
  v35 = (v52 + v31);
  v36 = *(v52 + v31 + 8);
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  v37 = v53[8];
  v38 = *(v51 + v37);
  v39 = *(v51 + v37 + 8);
  v40 = (v52 + v37);
  if ((v38 != *v40 || v39 != v40[1]) && (sub_1000509B8() & 1) == 0)
  {
    return 0;
  }

  v41 = v30[9];
  v42 = *(v29 + v41);
  if (*(v32 + v41))
  {
    if (!v42)
    {
      return 0;
    }

    type metadata accessor for CGImage(0);
    sub_100046B30(&qword_100072C58, type metadata accessor for CGImage, &unk_100055608);
    v43 = v42;
    v44 = sub_10004FC98();

    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  if ((sub_1000471EC(v32 + v30[10], v29 + v30[10]) & 1) == 0)
  {
    return 0;
  }

  v45 = v30[11];
  v46 = (v32 + v45);
  v47 = *(v32 + v45 + 8);
  v48 = (v29 + v45);
  v49 = v48[1];
  if (v47)
  {
    return v49 && (*v46 == *v48 && v47 == v49 || (sub_1000509B8() & 1) != 0);
  }

  return !v49;
}

uint64_t sub_1000479FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100047AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100047B5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100047BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100047C64()
{
  result = qword_100072C88;
  if (!qword_100072C88)
  {
    sub_1000028C0(&qword_100072C90, &qword_10005AAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072C88);
  }

  return result;
}

uint64_t sub_100047CDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    sub_10004C50C(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    v11 = sub_10004FAD8();
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v4 = v24;
  }

  else
  {
    v13 = sub_10004A0A0(a2);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v25 = *v7;
      if (!v16)
      {
        sub_10004D100(a3, a4);
        v17 = v25;
      }

      v18 = *(v17 + 48);
      v19 = sub_10004FAD8();
      v20 = *(v19 - 8);
      v21 = *(v20 + 8);
      v21(v18 + *(v20 + 72) * v15, v19);

      sub_10004BF0C(v15, v17);
      result = (v21)(a2, v19);
      *v7 = v17;
    }

    else
    {
      v22 = sub_10004FAD8();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_100047ED4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10004CA54(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_10004FAD8();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_10004A0A0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10004D868();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_10004FAD8();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_10004BF0C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_10004FAD8();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_100048094@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + 104);
}

uint64_t sub_10004816C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + 136);
  return result;
}

uint64_t sub_10004823C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_10004830C()
{
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  return *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__handoffState);
}

uint64_t sub_1000483B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__handoffState);
  return result;
}

uint64_t sub_100048464(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__handoffState) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__handoffState) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }

  return result;
}

unint64_t sub_10004857C()
{
  result = sub_100004A30(&_swiftEmptyArrayStorage);
  qword_10007B5C0 = result;
  return result;
}

void sub_1000485A4(void *a1)
{
  v2 = v1;
  v4 = sub_10004FAD8();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v27 = v1;
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v7 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session;
  v8 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session);
  if (v8)
  {
    if (a1)
    {
      sub_10000E5D8(0, &unk_100071100, WTSession_ptr);
      v9 = v8;
      v10 = a1;
      v11 = sub_1000507A8();

      if (v11)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  swift_getKeyPath();
  v27 = v2;
  sub_10004FB58();

  if (*(v2 + v7))
  {
    if (*(v2 + 104))
    {
      KeyPath = swift_getKeyPath();
      v24 = &v23;
      __chkstk_darwin(KeyPath);
      *(&v23 - 2) = v2;
      *(&v23 - 1) = 0;
      v27 = v2;
      sub_10004F418(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB48();
    }

    sub_10004915C(&_swiftEmptyArrayStorage);
    v14 = sub_100003760(&_swiftEmptyArrayStorage);
    sub_100049308(v14);
    if (*(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__expandedSuggestion))
    {
      v15 = swift_getKeyPath();
      __chkstk_darwin(v15);
      *(&v23 - 2) = v2;
      *(&v23 - 1) = 0;
      v27 = v2;
      sub_10004FB48();
    }

    v24 = v4;
    v16 = sub_100003784(&_swiftEmptyArrayStorage);
    sub_1000497D0(v16);
    sub_100012198(0);
    if (*(v2 + 136))
    {
      v17 = swift_getKeyPath();
      __chkstk_darwin(v17);
      *(&v23 - 2) = v2;
      *(&v23 - 1) = 0;
      v27 = v2;
      sub_10004F418(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB48();
    }

    if (*(v2 + 144))
    {
      v18 = swift_getKeyPath();
      __chkstk_darwin(v18);
      *(&v23 - 2) = v2;
      *(&v23 - 8) = 0;
      v27 = v2;
      sub_10004F418(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB48();
    }

    else
    {
      *(v2 + 144) = 0;
      sub_100012A64(0);
    }

    v19 = v24;
    if (qword_10006EA48 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    v27 = v2;
    sub_10004FB58();

    v20 = *(v2 + v7);
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = [v20 uuid];
    sub_10004FAB8();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = qword_10007B5C0;
    qword_10007B5C0 = 0x8000000000000000;
    sub_10004C50C(v2, v6, isUniquelyReferenced_nonNull_native, &qword_10006ED28, &qword_100055970);
    (*(v25 + 8))(v6, v19);
    qword_10007B5C0 = v26;
  }

  else
  {
    if (!a1)
    {
      return;
    }

    if (qword_10006EA48 != -1)
    {
      swift_once();
    }

    v13 = [a1 uuid];
    sub_10004FAB8();

    swift_beginAccess();
    sub_100047CDC(0, v6, &qword_10006ED28, &qword_100055970);
  }

  swift_endAccess();
}

void sub_100048C8C(void *a1)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session;
  v4 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &unk_100071100, WTSession_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_1000507A8();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  sub_1000485A4(v10);
}

uint64_t sub_100048E58()
{
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();
}

uint64_t sub_100048F04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task);
}

uint64_t sub_100048FB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task;
  if (!*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_100050688();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1000491AC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();
}

uint64_t sub_100049250@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a4 = *(v6 + *a3);
}

uint64_t sub_100049344(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;

  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }
}

void *sub_1000494B8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_100049560@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_100049624(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__expandedSuggestion;
  v5 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__expandedSuggestion);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &qword_10006F740, WTTextSuggestion_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1000507A8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_10004980C(char a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = v3;
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v9 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session);
  if (v9 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v10 = Strong;
    swift_getKeyPath();
    v13 = v9;
    sub_10004FB58();

    if (*(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task))
    {

      sub_100050698();
    }

    if (a2)
    {
      swift_errorRetain();
      v11 = sub_10004F958();
      [v10 endWritingToolsWithError:v11];

      v12 = v13;
    }

    else
    {
      v12 = v13;
      [v10 didEndWritingToolsSession:v13 accepted:(a1 == 2) | (a1 & 1)];
    }

    sub_100048C8C(0);
    if (a3)
    {
      (a3)();
    }

    swift_unknownObjectRelease();
  }

  else if (a3)
  {
    a3(Strong);
  }
}

uint64_t sub_100049A14()
{
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__handoffState) = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session) = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task) = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__suggestions) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__suggestionContextMapping) = sub_100003760(&_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__expandedSuggestion) = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__suggestionStates) = sub_100003784(&_swiftEmptyArrayStorage);
  v1 = (v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__modelInfoString);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__inputStringForFeedback);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__detectedModelLanguage);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__analyticsInstance;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__showingOriginal) = 0;
  v5 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
  v6 = sub_10004FAD8();
  v7 = *(*(v6 - 8) + 56);
  v7(v0 + v5, 1, 1, v6);
  v7(v0 + v5, 1, 1, v6);
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  swift_unknownObjectWeakInit();
  *(v0 + 49) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  *(v0 + 96) = -1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  return v0;
}

uint64_t sub_100049BD4()
{

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__analyticsInstance, &unk_1000711A0, &qword_100058BF0);
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__mostRecentlyReviewedSuggestionUUID, &qword_100070160, &qword_100057D20);
  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel___observationRegistrar;
  v2 = sub_10004FB98();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t ProofreadingModel.deinit()
{
  v0 = ToolModel.deinit();

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__analyticsInstance, &unk_1000711A0, &qword_100058BF0);
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__mostRecentlyReviewedSuggestionUUID, &qword_100070160, &qword_100057D20);
  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel___observationRegistrar;
  v2 = sub_10004FB98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ProofreadingModel.__deallocating_deinit()
{
  ProofreadingModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProofreadingModel(uint64_t a1)
{
  result = qword_100072D30;
  if (!qword_100072D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049F04(uint64_t a1)
{
  sub_1000175C4(319);
  if (v1 <= 0x3F)
  {
    sub_10004FB98();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10004A040(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100048C8C(v1);
}

unint64_t sub_10004A0A0(uint64_t a1)
{
  sub_10004FAD8();
  sub_10004F418(&qword_10006ED10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_100050428();

  return sub_10004A3CC(a1, v2);
}

unint64_t sub_10004A138(uint64_t a1, uint64_t a2)
{
  sub_100050A78();
  sub_100050568();
  v4 = sub_100050AA8();

  return sub_10004A58C(a1, a2, v4);
}

unint64_t sub_10004A1B0(uint64_t a1)
{
  sub_100050518();
  sub_100050A78();
  sub_100050568();
  v2 = sub_100050AA8();

  return sub_10004A644(a1, v2);
}

unint64_t sub_10004A244(uint64_t a1)
{
  v1 = a1;
  sub_100050A78();
  sub_100050568();

  v2 = sub_100050AA8();

  return sub_10004A748(v1, v2);
}

unint64_t sub_10004A314(char a1)
{
  sub_100050A78();
  sub_100050568();

  v2 = sub_100050AA8();

  return sub_10004A8E8(a1 & 1, v2);
}

unint64_t sub_10004A3CC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_10004FAD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10004F418(&unk_1000711D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_100050448();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10004A58C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000509B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004A644(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_100050518();
      v8 = v7;
      if (v6 == sub_100050518() && v8 == v9)
      {
        break;
      }

      v11 = sub_1000509B8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10004A748(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x69737365666F7270;
          v8 = 0xEC0000006C616E6FLL;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE700000000000000;
          v7 = 0x657369636E6F63;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE800000000000000;
            if (v7 != 0x796C646E65697266)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE800000000000000;
        v7 = 0x796C646E65697266;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x69737365666F7270;
      }

      else
      {
        v10 = 0x657369636E6F63;
      }

      if (v9 == 1)
      {
        v11 = 0xEC0000006C616E6FLL;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1000509B8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10004A8E8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x654B657461657263;
    }

    else
    {
      v6 = 0x7A6972616D6D7573;
    }

    if (a1)
    {
      v7 = 0xEF73746E696F5079;
    }

    else
    {
      v7 = 0xE900000000000065;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x654B657461657263 : 0x7A6972616D6D7573;
      v9 = *(*(v2 + 48) + v4) ? 0xEF73746E696F5079 : 0xE900000000000065;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1000509B8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10004AA3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002814(&qword_10006ED30, &qword_100055978);
  v33 = v4;
  result = sub_100050908();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100005060(v24, v34);
      }

      else
      {
        sub_100015440(v24, v34);
      }

      sub_100050A78();
      sub_100050568();
      result = sub_100050AA8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100005060(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10004ACF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002814(&qword_10006ED40, &unk_10005AD50);
  v36 = v4;
  result = sub_100050908();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_100050518();
      sub_100050A78();
      sub_100050568();
      v25 = sub_100050AA8();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10004AFB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_10004FAD8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_100002814(a3, a4);
  v43 = v8;
  result = sub_100050908();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_10004F418(&qword_10006ED10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_100050428();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_10004B394(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10004FAD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100002814(&qword_10006EDB0, &qword_1000559F8);
  v39 = v4;
  result = sub_100050908();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10004F418(&qword_10006ED10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_100050428();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10004B770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10004FAD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100002814(&qword_10006EDD0, &unk_10005AD40);
  v40 = v4;
  result = sub_100050908();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_10004F418(&qword_10006ED10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_100050428();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10004BB30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10004FAD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100002814(&qword_10006EDC0, &qword_100055A08);
  v39 = v4;
  result = sub_100050908();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10004F418(&qword_10006ED10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_100050428();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_10004BF0C(int64_t a1, uint64_t a2)
{
  v40 = sub_10004FAD8();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_100050818();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_10004F418(&qword_10006ED10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = sub_100050428();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

_OWORD *sub_10004C22C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10004A138(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10004CDFC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10004AA3C(v16, a4 & 1);
    v11 = sub_10004A138(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1000509C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000CC70(v22);

    return sub_100005060(a1, v22);
  }

  else
  {
    sub_10004CC20(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_10004C390(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10004A1B0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10004ACF4(v13, a3 & 1);
      v8 = sub_10004A1B0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for IAPayloadKey(0);
        sub_1000509C8();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10004CFA0();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return _objc_retain_x1();
}

uint64_t sub_10004C50C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = sub_10004FAD8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_10004A0A0(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_10004D100(v26, v27);
      goto LABEL_7;
    }

    sub_10004AFB8(v19, a3 & 1, v26, v27);
    v24 = sub_10004A0A0(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_10004CC8C(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_1000509C8();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_10004C6E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10004FAD8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10004A0A0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10004D378();
      goto LABEL_7;
    }

    sub_10004B394(v17, a3 & 1);
    v22 = sub_10004A0A0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10004CC8C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1000509C8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_10004C8B4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10004FAD8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10004A0A0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_10004D5F8();
    goto LABEL_7;
  }

  sub_10004B770(result, a3 & 1);
  result = sub_10004A0A0(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1000509C8();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_10004CD44(v14, v11, a1 & 1, v20);
}

void sub_10004CA54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10004FAD8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10004A0A0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10004D868();
      goto LABEL_7;
    }

    sub_10004BB30(v17, a3 & 1);
    v23 = sub_10004A0A0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_10004CC8C(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1000509C8();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_10004CC20(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100005060(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_10004CC8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10004FAD8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10004CD44(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10004FAD8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_10004CDFC()
{
  v1 = v0;
  sub_100002814(&qword_10006ED30, &qword_100055978);
  v2 = *v0;
  v3 = sub_1000508F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100015440(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100005060(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_10004CFA0()
{
  v1 = v0;
  sub_100002814(&qword_10006ED40, &unk_10005AD50);
  v2 = *v0;
  v3 = sub_1000508F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10004D100(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_10004FAD8();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002814(a1, a2);
  v7 = *v2;
  v8 = sub_1000508F8();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

char *sub_10004D378()
{
  v1 = v0;
  v33 = sub_10004FAD8();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002814(&qword_10006EDB0, &qword_1000559F8);
  v3 = *v0;
  v4 = sub_1000508F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_10004D5F8()
{
  v1 = v0;
  v31 = sub_10004FAD8();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002814(&qword_10006EDD0, &unk_10005AD40);
  v3 = *v0;
  v4 = sub_1000508F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_10004D868()
{
  v1 = v0;
  v31 = sub_10004FAD8();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002814(&qword_10006EDC0, &qword_100055A08);
  v3 = *v0;
  v4 = sub_1000508F8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_10004DADC(uint64_t a1, uint64_t a2)
{
  v58 = sub_10004FAD8();
  v53 = *(v58 - 8);
  v4 = __chkstk_darwin(v58);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v45 - v6;
  v7 = sub_100002814(&qword_1000734A8, &qword_10005AC58);
  v8 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v50 = a2;
    v51 = v10;
    v12 = 0;
    v48 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v45 = (v16 + 63) >> 6;
    v46 = v14;
    v47 = v53 + 16;
    v55 = &v45 - v9;
    v56 = (v53 + 32);
    v49 = (v53 + 8);
    while (v18)
    {
      v57 = (v18 - 1) & v18;
      v19 = __clz(__rbit64(v18)) | (v12 << 6);
      v20 = v51;
LABEL_16:
      v25 = v48;
      v26 = v52;
      v27 = v53;
      v28 = v58;
      (*(v53 + 16))(v52, *(v48 + 48) + *(v53 + 72) * v19, v58);
      v29 = *(*(v25 + 56) + 8 * v19);
      v30 = sub_100002814(&qword_1000734B0, &qword_10005AC60);
      v31 = *(v30 + 48);
      (*(v27 + 32))(v20, v26, v28);
      *(v20 + v31) = v29;
      (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
      v32 = v29;
      v11 = v55;
LABEL_17:
      sub_10004F500(v20, v11, &qword_1000734A8, &qword_10005AC58);
      v33 = sub_100002814(&qword_1000734B0, &qword_10005AC60);
      if ((*(*(v33 - 8) + 48))(v11, 1, v33) == 1)
      {
        return;
      }

      v34 = *(v33 + 48);
      v35 = v54;
      v36 = v58;
      (*v56)(v54, v11, v58);
      v37 = *&v11[v34];
      v38 = v50;
      v39 = sub_10004A0A0(v35);
      v41 = v40;
      (*v49)(v35, v36);
      if ((v41 & 1) == 0)
      {

        return;
      }

      sub_10000E5D8(0, &qword_10006F748, WTContext_ptr);
      v42 = *(*(v38 + 56) + 8 * v39);
      v43 = sub_1000507A8();

      v11 = v55;
      v18 = v57;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v45 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v45;
    }

    v22 = v21 - 1;
    v20 = v51;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v45)
      {
        v44 = sub_100002814(&qword_1000734B0, &qword_10005AC60);
        (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
        v57 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v46 + 8 * v23);
      ++v12;
      if (v24)
      {
        v57 = (v24 - 1) & v24;
        v19 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10004DF7C(uint64_t a1, uint64_t a2)
{
  v56 = sub_10004FAD8();
  v51 = *(v56 - 8);
  v4 = __chkstk_darwin(v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = v46 - v6;
  v7 = sub_100002814(&qword_100073498, &qword_10005ABF8);
  v8 = __chkstk_darwin(v7 - 8);
  result = __chkstk_darwin(v8);
  v12 = v46 - v10;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v11;
  v13 = 0;
  v47 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v46[0] = v15;
  v46[1] = v51 + 16;
  v53 = v46 - v10;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v19)
  {
    v55 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
    v26 = v47;
    v27 = v50;
    v28 = v51;
    v29 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v21, v56);
    v30 = *(*(v26 + 56) + 8 * v21);
    v31 = sub_100002814(&qword_1000734A0, &qword_10005AC00);
    v32 = *(v31 + 48);
    v33 = *(v28 + 32);
    v34 = v49;
    v33(v49, v27, v29);
    *(v34 + v32) = v30;
    (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
    v12 = v53;
LABEL_17:
    sub_10004F500(v34, v12, &qword_100073498, &qword_10005ABF8);
    v35 = sub_100002814(&qword_1000734A0, &qword_10005AC00);
    v36 = (*(*(v35 - 8) + 48))(v12, 1, v35);
    v37 = v36 == 1;
    if (v36 != 1)
    {
      v38 = *(v35 + 48);
      v39 = v52;
      v40 = v56;
      (*v54)(v52, v12, v56);
      v41 = *&v12[v38];
      v42 = sub_10004A0A0(v39);
      LOBYTE(v38) = v43;
      result = (*v48)(v39, v40);
      if (v38)
      {
        v44 = *(*(a2 + 56) + 8 * v42) == v41;
        v12 = v53;
        v19 = v55;
        if (v44)
        {
          continue;
        }
      }
    }

    return v37;
  }

  if (v20 <= v13 + 1)
  {
    v22 = v13 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v45 = sub_100002814(&qword_1000734A0, &qword_10005AC00);
      v34 = v49;
      (*(*(v45 - 8) + 56))(v49, 1, 1, v45);
      v55 = 0;
      v13 = v23;
      goto LABEL_17;
    }

    v25 = *(v46[0] + 8 * v24);
    ++v13;
    if (v25)
    {
      v55 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v13 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_10004E464(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100049624(v1);
}

void sub_10004E494()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__expandedSuggestion);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__expandedSuggestion) = v2;
  v4 = v2;
}

uint64_t sub_10004E5C8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task) = *(v0 + 24);
}

void sub_10004E60C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session);
  *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session) = v1;
  v4 = v1;
  sub_1000485A4(v3);
}

uint64_t sub_10004E660(uint64_t a1, uint64_t a2)
{
  v56 = sub_10004FAD8();
  v51 = *(v56 - 8);
  v4 = __chkstk_darwin(v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = v46 - v6;
  v7 = sub_100002814(&qword_1000734D8, &qword_10005AD80);
  v8 = __chkstk_darwin(v7 - 8);
  result = __chkstk_darwin(v8);
  v12 = v46 - v10;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v11;
  v13 = 0;
  v47 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v46[0] = v15;
  v46[1] = v51 + 16;
  v53 = v46 - v10;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v19)
  {
    v55 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
    v26 = v47;
    v27 = v50;
    v28 = v51;
    v29 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v21, v56);
    v30 = *(*(v26 + 56) + v21);
    v31 = sub_100002814(&qword_1000734E0, &qword_10005AD88);
    v32 = *(v31 + 48);
    v33 = *(v28 + 32);
    v34 = v49;
    v33(v49, v27, v29);
    *(v34 + v32) = v30;
    (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
    v12 = v53;
LABEL_17:
    sub_10004F500(v34, v12, &qword_1000734D8, &qword_10005AD80);
    v35 = sub_100002814(&qword_1000734E0, &qword_10005AD88);
    v36 = (*(*(v35 - 8) + 48))(v12, 1, v35);
    v37 = v36 == 1;
    if (v36 != 1)
    {
      v38 = *(v35 + 48);
      v39 = v52;
      v40 = v56;
      (*v54)(v52, v12, v56);
      v41 = v12[v38];
      v42 = sub_10004A0A0(v39);
      LOBYTE(v38) = v43;
      result = (*v48)(v39, v40);
      if (v38)
      {
        v44 = v41 == *(*(a2 + 56) + v42);
        v12 = v53;
        v19 = v55;
        if (v44)
        {
          continue;
        }
      }
    }

    return v37;
  }

  if (v20 <= v13 + 1)
  {
    v22 = v13 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v45 = sub_100002814(&qword_1000734E0, &qword_10005AD88);
      v34 = v49;
      (*(*(v45 - 8) + 56))(v49, 1, 1, v45);
      v55 = 0;
      v13 = v23;
      goto LABEL_17;
    }

    v25 = *(v46[0] + 8 * v24);
    ++v13;
    if (v25)
    {
      v55 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v13 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_10004EAC0(uint64_t a1, uint64_t a2)
{
  v58 = sub_10004FAD8();
  v53 = *(v58 - 8);
  v4 = __chkstk_darwin(v58);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v45 - v6;
  v7 = sub_100002814(&qword_1000734C8, &qword_10005AD70);
  v8 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v50 = a2;
    v51 = v10;
    v12 = 0;
    v48 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v45 = (v16 + 63) >> 6;
    v46 = v14;
    v47 = v53 + 16;
    v55 = &v45 - v9;
    v56 = (v53 + 32);
    v49 = (v53 + 8);
    while (v18)
    {
      v57 = (v18 - 1) & v18;
      v19 = __clz(__rbit64(v18)) | (v12 << 6);
      v20 = v51;
LABEL_16:
      v25 = v48;
      v26 = v52;
      v27 = v53;
      v28 = v58;
      (*(v53 + 16))(v52, *(v48 + 48) + *(v53 + 72) * v19, v58);
      v29 = *(*(v25 + 56) + 8 * v19);
      v30 = sub_100002814(&qword_1000734D0, &qword_10005AD78);
      v31 = *(v30 + 48);
      (*(v27 + 32))(v20, v26, v28);
      *(v20 + v31) = v29;
      (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
      v32 = v29;
      v11 = v55;
LABEL_17:
      sub_10004F500(v20, v11, &qword_1000734C8, &qword_10005AD70);
      v33 = sub_100002814(&qword_1000734D0, &qword_10005AD78);
      if ((*(*(v33 - 8) + 48))(v11, 1, v33) == 1)
      {
        return;
      }

      v34 = *(v33 + 48);
      v35 = v54;
      v36 = v58;
      (*v56)(v54, v11, v58);
      v37 = *&v11[v34];
      v38 = v50;
      v39 = sub_10004A0A0(v35);
      v41 = v40;
      (*v49)(v35, v36);
      if ((v41 & 1) == 0)
      {

        return;
      }

      sub_10000E5D8(0, &qword_100071130, NSAttributedString_ptr);
      v42 = *(*(v38 + 56) + 8 * v39);
      v43 = sub_1000507A8();

      v11 = v55;
      v18 = v57;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v45 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v45;
    }

    v22 = v21 - 1;
    v20 = v51;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v45)
      {
        v44 = sub_100002814(&qword_1000734D0, &qword_10005AD78);
        (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
        v57 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v46 + 8 * v23);
      ++v12;
      if (v24)
      {
        v57 = (v24 - 1) & v24;
        v19 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10004EF60(uint64_t a1, uint64_t a2)
{
  v56 = sub_10004FAD8();
  v51 = *(v56 - 8);
  v4 = __chkstk_darwin(v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = v46 - v6;
  v7 = sub_100002814(&qword_1000734B8, &qword_10005AD60);
  v8 = __chkstk_darwin(v7 - 8);
  v53 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v46 - v11;
  v12 = 0;
  v47 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v46[0] = v14;
  v46[1] = v51 + 16;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v18)
  {
    v55 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
    v25 = v47;
    v26 = v50;
    v27 = v51;
    v28 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v20, v56);
    v29 = *(*(v25 + 56) + 8 * v20);
    v30 = sub_100002814(&qword_1000734C0, &qword_10005AD68);
    v31 = *(v30 + 48);
    v32 = *(v27 + 32);
    v33 = v53;
    v32(v53, v26, v28);
    *(v33 + v31) = v29;
    (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
    v34 = v49;
    sub_10004F500(v33, v49, &qword_1000734B8, &qword_10005AD60);
    v35 = sub_100002814(&qword_1000734C0, &qword_10005AD68);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = v52;
    v40 = v56;
    (*v54)(v52, v34, v56);
    v41 = *(v34 + v38);
    sub_10004A0A0(v39);
    LOBYTE(v38) = v42;
    (*v48)(v39, v40);
    if ((v38 & 1) == 0)
    {

      return 0;
    }

    v44 = sub_10000D9F0(v43, v41);

    v18 = v55;
    if ((v44 & 1) == 0)
    {
      return v37;
    }
  }

  if (v19 <= v12 + 1)
  {
    v21 = v12 + 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
      v45 = sub_100002814(&qword_1000734C0, &qword_10005AD68);
      v33 = v53;
      (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
      v55 = 0;
      v12 = v22;
      goto LABEL_17;
    }

    v24 = *(v46[0] + 8 * v23);
    ++v12;
    if (v24)
    {
      v55 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v12 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004F418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004F500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002814(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}