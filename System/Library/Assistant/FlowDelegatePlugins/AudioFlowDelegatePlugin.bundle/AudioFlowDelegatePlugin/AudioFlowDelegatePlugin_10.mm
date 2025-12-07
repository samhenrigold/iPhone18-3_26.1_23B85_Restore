uint64_t sub_12A174(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v76 = a5;
  v77 = a6;
  v74 = a3;
  v75 = a4;
  v73 = a2;
  v68 = a1;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v6 - 8);
  v67 = &v62 - v7;
  v65 = sub_2CCB20();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v9 = __chkstk_darwin(v69);
  v66 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v78 = &v62 - v11;
  v12 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v12 - 8);
  v72 = &v62 - v13;
  v14 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v14 - 8);
  v71 = &v62 - v15;
  v16 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v16 - 8);
  v70 = &v62 - v17;
  v18 = sub_2CCB30();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CCAC0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v26);
  v28 = (&v62 - v27);
  sub_F3F4(v68, &v62 - v27, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.umahis(_:), v22);
    (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v18);
    swift_getErrorValue();
    sub_2CEEF0();
    v78 = sub_2CCAE0();

    (*(v19 + 8))(v21, v18);
    (*(v23 + 8))(v25, v22);
    v73 = sub_35E0(v73 + 3, v73[6]);
    v30 = enum case for ActivityType.failed(_:);
    v31 = sub_2C9C20();
    v32 = *(v31 - 8);
    v33 = v70;
    (*(v32 + 104))(v70, v30, v31);
    (*(v32 + 56))(v33, 0, 1, v31);
    v34 = sub_2CA130();
    v35 = v71;
    (*(*(v34 - 8) + 56))(v71, 1, 1, v34);
    v36 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v37 = sub_2C98F0();
    v38 = *(v37 - 8);
    v39 = v72;
    (*(v38 + 104))(v72, v36, v37);
    (*(v38 + 56))(v39, 0, 1, v37);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v39, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v35, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v33, &qword_34CB88, &unk_2D0D90);
    v79[0] = v29;
    v80 = 1;
    swift_errorRetain();
    v76(v79);

    return sub_30B8(v79, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v28, v78);
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.umahis(_:), v22);
    (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v18);
    v41 = v64;
    v42 = v63;
    v43 = v65;
    (*(v64 + 104))(v63, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v65);
    v68 = sub_2CCAD0();
    v62 = v44;
    (*(v41 + 8))(v42, v43);
    (*(v19 + 8))(v21, v18);
    (*(v23 + 8))(v25, v22);
    v45 = v73;
    v63 = v73[6];
    v64 = v73[7];
    v65 = sub_35E0(v73 + 3, v63);
    v46 = enum case for ActivityType.completed(_:);
    v47 = sub_2C9C20();
    v48 = *(v47 - 8);
    v49 = v70;
    (*(v48 + 104))(v70, v46, v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    v50 = v66;
    sub_F3F4(v78, v66, &qword_34C6E8, &unk_2D0FF0);

    v51 = sub_2CA130();
    v52 = *(v51 - 8);
    v53 = v71;
    (*(v52 + 32))(v71, v50, v51);
    (*(v52 + 56))(v53, 0, 1, v51);
    v54 = enum case for SiriKitReliabilityCodes.success(_:);
    v55 = sub_2C98F0();
    v56 = *(v55 - 8);
    v57 = v72;
    (*(v56 + 104))(v72, v54, v55);
    (*(v56 + 56))(v57, 0, 1, v55);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v57, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v53, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v49, &qword_34CB88, &unk_2D0D90);
    sub_35E0(v45 + 8, v45[11]);
    v58 = v78;
    sub_F3F4(v78, v50, &qword_34C6E8, &unk_2D0FF0);
    v59 = *(v50 + *(v69 + 48));
    v60 = sub_2CA000();
    v61 = v67;
    (*(*(v60 - 8) + 56))(v67, 1, 1, v60);
    sub_1C077C(v50, v59, v61, _swiftEmptyArrayStorage, v76, v77);

    sub_30B8(v61, &unk_353020, &unk_2D0970);
    sub_30B8(v58, &qword_34C6E8, &unk_2D0FF0);
    return (*(v52 + 8))(v50, v51);
  }
}

uint64_t sub_12AD18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v97 = a8;
  v95 = a7;
  v113 = a5;
  v114 = a6;
  v115 = a4;
  v111 = a2;
  v112 = a3;
  v99 = a1;
  v96 = sub_2CCB20();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v10 - 8);
  v108 = &v92 - v11;
  v107 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = __chkstk_darwin(v107);
  v98 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v92 - v14;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v16 - 8);
  v110 = &v92 - v17;
  v18 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v18 - 8);
  v109 = &v92 - v19;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v20 - 8);
  v22 = &v92 - v21;
  v106 = sub_2CCB30();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v102 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2CCAC0();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v100 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CE000();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v92 - v30;
  v32 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v32);
  v34 = (&v92 - v33);
  sub_F3F4(v99, &v92 - v33, &unk_3519A0, &qword_2D0980);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v101 = v22;
  if (EnumCaseMultiPayload == 1)
  {
    v36 = *v34;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v37 = sub_3ED0(v25, static Logger.default);
    swift_beginAccess();
    (*(v26 + 16))(v31, v37, v25);
    swift_errorRetain();
    v38 = sub_2CDFE0();
    v39 = sub_2CE680();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&dword_0, v38, v39, "UnsupportedValueStrategy#makeUnsupportedValueOutput dialog provider failed with error: %@", v40, 0xCu);
      sub_30B8(v41, &unk_34FC00, &unk_2D0150);
    }

    (*(v26 + 8))(v31, v25);
    v43 = v103;
    v44 = v100;
    v45 = v104;
    (*(v103 + 104))(v100, enum case for AdditionalMetricsDescription.ModuleName.cuvs(_:), v104);
    v46 = v105;
    v47 = v102;
    v48 = v106;
    (v105[13])(v102, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v106);
    swift_getErrorValue();
    sub_2CEEF0();
    v108 = sub_2CCAE0();

    (v46[1])(v47, v48);
    (*(v43 + 8))(v44, v45);
    v111 = sub_35E0(v111 + 3, v111[6]);
    v49 = enum case for ActivityType.failed(_:);
    v50 = sub_2C9C20();
    v51 = *(v50 - 8);
    v52 = v101;
    (*(v51 + 104))(v101, v49, v50);
    (*(v51 + 56))(v52, 0, 1, v50);
    v53 = sub_2CA130();
    v54 = v109;
    (*(*(v53 - 8) + 56))(v109, 1, 1, v53);
    v55 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v56 = sub_2C98F0();
    v57 = *(v56 - 8);
    v58 = v110;
    (*(v57 + 104))(v110, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    sub_2CB4E0();

    sub_30B8(v58, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v54, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v52, &qword_34CB88, &unk_2D0D90);
    v116[0] = v36;
    v117 = 1;
    swift_errorRetain();
    v113(v116);

    return sub_30B8(v116, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v99 = a9;
    sub_24BE0(v34, v15);
    v60 = v15;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v61 = sub_3ED0(v25, static Logger.default);
    swift_beginAccess();
    (*(v26 + 16))(v29, v61, v25);
    v62 = sub_2CDFE0();
    v63 = sub_2CE690();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_0, v62, v63, "UnsupportedValueStrategy#makeUnsupportedValueOutput acquired dialog.", v64, 2u);
    }

    (*(v26 + 8))(v29, v25);
    sub_78DC4(v115, v108);
    v65 = v103;
    v66 = v100;
    v67 = v104;
    (*(v103 + 104))(v100, enum case for AdditionalMetricsDescription.ModuleName.cuvs(_:), v104);
    v68 = v105;
    v69 = v102;
    v70 = v106;
    (v105[13])(v102, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v106);
    v71 = v94;
    v72 = v93;
    v73 = v96;
    (*(v94 + 104))(v93, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v96);
    v99 = sub_2CCB00();
    v97 = v74;
    (*(v71 + 8))(v72, v73);
    (v68[1])(v69, v70);
    (*(v65 + 8))(v66, v67);
    v75 = v111;
    v103 = v111[6];
    v104 = v111[7];
    v105 = sub_35E0(v111 + 3, v103);
    v76 = enum case for ActivityType.resolveSlotUnsupported(_:);
    v77 = sub_2C9C20();
    v78 = *(v77 - 8);
    v79 = v101;
    (*(v78 + 104))(v101, v76, v77);
    (*(v78 + 56))(v79, 0, 1, v77);
    v80 = v60;
    v106 = v60;
    v81 = v98;
    sub_F3F4(v80, v98, &qword_34C6E8, &unk_2D0FF0);

    v82 = sub_2CA130();
    v83 = *(v82 - 8);
    v84 = v109;
    (*(v83 + 32))(v109, v81, v82);
    (*(v83 + 56))(v84, 0, 1, v82);
    v85 = enum case for SiriKitReliabilityCodes.slotResolutionFailure(_:);
    v86 = sub_2C98F0();
    v87 = *(v86 - 8);
    v88 = v110;
    (*(v87 + 104))(v110, v85, v86);
    (*(v87 + 56))(v88, 0, 1, v86);
    sub_2CB4E0();

    sub_30B8(v88, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v84, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v79, &qword_34CB88, &unk_2D0D90);
    sub_35E0(v75 + 8, v75[11]);
    v89 = v106;
    sub_F3F4(v106, v81, &qword_34C6E8, &unk_2D0FF0);
    v90 = *(v81 + *(v107 + 48));
    v91 = v108;
    sub_1C077C(v81, v90, v108, _swiftEmptyArrayStorage, v113, v114);

    sub_30B8(v91, &unk_353020, &unk_2D0970);
    sub_30B8(v89, &qword_34C6E8, &unk_2D0FF0);
    return (*(v83 + 8))(v81, v82);
  }
}

uint64_t sub_12BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  updated = type metadata accessor for UpdateMediaAffinity.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, updated, a10);
}

uint64_t sub_12BD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  updated = type metadata accessor for UpdateMediaAffinity.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeLaunchAppWithIntentOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, updated, a10);
}

uint64_t sub_12BDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a4;
  v59 = a3;
  v65 = a1;
  v66 = a2;
  v6 = sub_2CDFD0();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  v8 = __chkstk_darwin(v6);
  v9 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = v55 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v63 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v55 - v15;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v18 = *(v12 + 16);
  v58 = v17;
  v57 = v18;
  v55[1] = v12 + 16;
  v18(v16, v17, v11);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "CommonDialogProvider#somethingHasToBePlayingDialog", v21, 2u);
  }

  v22 = *(v12 + 8);
  v64 = v12 + 8;
  v61 = v22;
  v22(v16, v11);
  v62 = v5[2];
  v23 = v5[14];
  v67 = v5[13];
  v56 = 0x80000000002DD9A0;
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  v55[0] = v11;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v24 = qword_35F760;
  v25 = v68;
  sub_2CDFB0();
  v26 = v69;
  v27 = v70;
  (*(v69 + 16))(v9, v25, v70);
  v28 = (*(v26 + 80) + 33) & ~*(v26 + 80);
  v29 = (v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = "catServiceExecute";
  *(v30 + 24) = 17;
  *(v30 + 32) = 2;
  (*(v26 + 32))(v30 + v28, v9, v27);
  v31 = (v30 + v29);
  v32 = v60;
  *v31 = v59;
  v31[1] = v32;

  v33 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2D0E40;
  *(v34 + 56) = &type metadata for String;
  v35 = sub_1087C();
  v36 = v67;
  *(v34 + 32) = v67;
  *(v34 + 40) = v23;
  *(v34 + 96) = &type metadata for String;
  *(v34 + 104) = v35;
  *(v34 + 64) = v35;
  *(v34 + 72) = 0xD000000000000017;
  v37 = v56;
  *(v34 + 80) = v56;

  LOBYTE(v53) = 2;
  sub_2CDF90(v33, &dword_0, v24, "catServiceExecute", 17, 2, v25, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v53, v34);

  v38 = swift_allocObject();
  *(v38 + 16) = sub_13CD4;
  *(v38 + 24) = v30;
  v39 = v63;
  v40 = v55[0];
  v57(v63, v58, v55[0]);

  v41 = sub_2CDFE0();
  v42 = sub_2CE660();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v43 = 136315394;
    *(v43 + 4) = sub_3F08(v36, v23, &v71);
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_3F08(0xD000000000000017, v37, &v71);
    _os_log_impl(&dword_0, v41, v42, "Evaluating CAT family:%s id:%s...", v43, 0x16u);
    swift_arrayDestroy();

    v61(v39, v40);
    v36 = v67;
  }

  else
  {

    v61(v39, v40);
  }

  v71 = v36;
  v72 = v23;

  v75._countAndFlagsBits = 35;
  v75._object = 0xE100000000000000;
  sub_2CE350(v75);
  v76._countAndFlagsBits = 0xD000000000000017;
  v76._object = v37;
  sub_2CE350(v76);
  v45 = v71;
  v44 = v72;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13D84;
  v48[4] = v38;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v65;
  v55[-10] = v62;
  v55[-9] = v50;
  v55[-8] = v66;
  v55[-7] = v73;
  v55[-6] = 0;
  v55[-5] = v45;
  v52 = v44;
  v53 = sub_3E010;
  v54 = v48;

  sub_2CB0F0();

  (*(v69 + 8))(v68, v70);
  return sub_30B8(v73, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_12C57C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v51 = a6;
  v54 = a7;
  v50 = a5;
  v49 = a4;
  v48 = a3;
  v53 = a2;
  v55 = a1;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v47 - v12;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v15 = *(v8 + 16);
  v15(v13, v14, v7);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "UnsupportedValueStrategy#makeUnsupportedValueOutput", v18, 2u);
  }

  v19 = *(v8 + 8);
  v19(v13, v7);
  sub_2CB450();
  v20 = v53;
  if (sub_2CEA80())
  {
    v15(v11, v14, v7);
    v21 = sub_2CDFE0();
    v22 = sub_2CE690();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "UnsupportedValueStrategy#makeUnsupportedValueOutput no NowPlaying app", v23, 2u);
    }

    v19(v11, v7);
    v24 = v52;
    v25 = sub_112C0(_swiftEmptyArrayStorage);
    v26 = swift_allocObject();
    v28 = v54;
    v27 = v55;
    v26[2] = v24;
    v26[3] = v27;
    v29 = v51;
    v26[4] = v20;
    v26[5] = v29;
    v26[6] = v28;

    v30 = v20;

    sub_12BDBC(v25, v27, sub_12CBCC, v26);
  }

  else
  {
    v31 = v52;
    v47 = *(v52 + 16);
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    strcpy((inited + 32), "MetricsError");
    *(inited + 16) = xmmword_2D0090;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_2CECB0(50);

    v57 = 0xD00000000000002DLL;
    v58 = 0x80000000002DD970;
    v33 = v50;
    v56 = [v50 resolutionResultCode];
    v59._countAndFlagsBits = sub_2CEE70();
    sub_2CE350(v59);

    v60._countAndFlagsBits = 95;
    v60._object = 0xE100000000000000;
    sub_2CE350(v60);
    v56 = [v33 unsupportedReason];
    v61._countAndFlagsBits = sub_2CEE70();
    sub_2CE350(v61);

    v34 = v57;
    v35 = v58;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v34;
    *(inited + 56) = v35;
    v36 = v20;
    v37 = sub_112C0(inited);
    swift_setDeallocating();
    sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
    v38 = [objc_allocWithZone(INUpdateMediaAffinityIntentResponse) initWithCode:4 userActivity:0];
    v39 = swift_allocObject();
    v41 = v54;
    v40 = v55;
    *(v39 + 16) = v31;
    *(v39 + 24) = v40;
    v42 = v51;
    *(v39 + 32) = v36;
    *(v39 + 40) = v42;
    v43 = v48;
    *(v39 + 48) = v41;
    *(v39 + 56) = v43;
    *(v39 + 64) = v49;
    *(v39 + 72) = v33;

    v44 = v36;

    v45 = v33;
    sub_E4FD0(v37, v40, sub_12CB98, v39);
  }
}

unint64_t sub_12CAF8(uint64_t a1)
{
  result = sub_12CB20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_12CB20()
{
  result = qword_34D828;
  if (!qword_34D828)
  {
    type metadata accessor for UpdateMediaAffinity.UnsupportedValueStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D828);
  }

  return result;
}

uint64_t _s25NeedsConfirmationStrategyCMa_0(uint64_t a1)
{
  result = qword_351CD8;
  if (!qword_351CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_12CC28(uint64_t a1, void *a2)
{
  v3 = v2;
  v43 = a2;
  v5 = sub_2CE990();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2CE180();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayMediaCatDialogService();
  v8 = swift_allocObject();
  v8[6] = 0xEF746E65746E4961;
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000000002DA8D0;
  v34 = 0x80000000002DA8D0;
  v8[4] = a1;
  v8[5] = 0x6964654D79616C50;
  sub_FA14(_swiftEmptyArrayStorage);
  v35 = a1;
  swift_retain_n();

  v36 = sub_2CC2B0();
  v58 = v36;
  v59 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v57);
  sub_2CC2A0();
  v33 = sub_2CC360();
  v55 = v33;
  v56 = &protocol witness table for StringsFileResolver;
  sub_F390(&v54);
  sub_2CC350();
  v9 = sub_2CB4A0();
  v10 = sub_2CB490();
  v52 = v9;
  v53 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v51 = v10;
  if (qword_34C048 != -1)
  {
    swift_once();
  }

  v11 = qword_35F900;
  sub_2CBC60();
  v12 = type metadata accessor for DialogHistoryProvider();
  v49[3] = v12;
  v49[4] = &off_33CAE0;
  v49[0] = v11;
  type metadata accessor for PlayMediaDialogProvider(0);
  v13 = swift_allocObject();
  v14 = sub_F9A0(v49, v12);
  __chkstk_darwin(v14);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v48[3] = v12;
  v48[4] = &off_33CAE0;
  v48[0] = v18;
  v13[15] = v8;
  sub_EEAC(&v57, (v13 + 16));
  sub_EEAC(&v51, (v13 + 31));
  sub_EEAC(v48, (v13 + 21));
  sub_EEAC(v50, (v13 + 26));
  sub_EEAC(&v54, v47);

  v19 = sub_2CB490();
  v45 = v9;
  v46 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v44 = v19;
  sub_306C(v50);
  sub_306C(&v51);
  sub_306C(&v54);
  sub_306C(&v57);
  sub_306C(v48);
  v13[13] = 0xD000000000000011;
  v20 = v35;
  v13[14] = v34;
  v13[2] = v20;
  sub_F338(v47, (v13 + 3));
  sub_F338(&v44, (v13 + 8));
  sub_306C(v49);
  v58 = v33;
  v59 = &protocol witness table for StringsFileResolver;
  sub_F390(&v57);
  sub_2CC350();
  sub_20410(&qword_351E00, &unk_2D4B40);
  v21 = swift_allocObject();
  sub_F338(&v57, v21 + 16);
  v35 = v21;
  *(v21 + 56) = v13;
  v22 = v36;
  v58 = v36;
  v59 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v57);

  sub_2CC2A0();
  type metadata accessor for SiriAudioOutputProvider();
  v34 = swift_allocObject();
  sub_F338(&v57, v34 + 16);
  v58 = v22;
  v59 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v57);
  sub_2CC2A0();
  v23 = sub_2CB490();
  v55 = v9;
  v56 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v54 = v23;
  v24 = sub_2CC900();
  swift_allocObject();
  v25 = sub_2CC8F0();
  v58 = v24;
  v59 = &protocol witness table for AppleMediaServicesProvider;
  v56 = &protocol witness table for FeatureFlagProvider;
  *&v57 = v25;
  v55 = v22;
  sub_F390(&v54);
  sub_2CC2A0();
  v26 = sub_2CB490();
  v52 = v9;
  v53 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v51 = v26;
  if (qword_34BF88 != -1)
  {
    swift_once();
  }

  v27 = qword_35F740;

  sub_2C9A00();
  v28 = v37;
  sub_2CE170();
  v29 = v39;
  sub_2CE980();
  v30 = sub_2CBA00();

  sub_306C(v43);
  (*(v41 + 8))(v29, v42);
  (*(v38 + 8))(v28, v40);
  v3[26] = v30;
  v3[2] = v13;
  sub_F338(&v57, (v3 + 3));
  sub_F338(&v54, (v3 + 8));
  sub_F338(&v51, (v3 + 13));
  v3[18] = v27;
  sub_F338(v50, (v3 + 20));
  v31 = v35;
  v3[25] = v34;
  v3[19] = v31;
  return v3;
}

uint64_t sub_12D2A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v155 = a7;
  v154 = a6;
  v164 = a5;
  v167 = sub_2CDFD0();
  v166 = *(v167 - 8);
  v11 = __chkstk_darwin(v167);
  v150 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v153 = &v146 - v14;
  v152 = v15;
  __chkstk_darwin(v13);
  v162 = &v146 - v16;
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v151 = &v146 - v23;
  __chkstk_darwin(v22);
  v25 = &v146 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v17, static Logger.default);
  swift_beginAccess();
  v27 = *(v18 + 16);
  v158 = v26;
  v165 = v17;
  v157 = v18 + 16;
  v156 = v27;
  v27(v25, v26, v17);
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "CommonDialogProvider#makePromptForConfirmationDialog", v30, 2u);
  }

  v31 = *(v18 + 8);
  v160 = v18 + 8;
  v159 = v31;
  v31(v25, v165);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = sub_2CCFB0();
  *(inited + 48) = a1;

  v33 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v173 = v33;
  v161 = a1;
  if (a2 == 0x657449616964656DLL && a3 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    v34 = [a4 itemToConfirm];
    sub_2CEC00();
    swift_unknownObjectRelease();
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    if (swift_dynamicCast())
    {
      v35 = v169[0];
      v36 = [v169[0] artist];
      if (v36)
      {
        v37 = v36;
        v38 = sub_2CE270();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v66 = [v35 title];
      if (v66)
      {
        v67 = v66;
        sub_2CE270();

        v68 = sub_2CE2B0();
        v70 = v69;

        if (v40)
        {
          v71 = sub_2CE2B0();
          if (v70)
          {
            if (v72)
            {
              if (v68 == v71 && v70 == v72)
              {
                v150 = v40;

                goto LABEL_40;
              }

              v83 = sub_2CEEA0();

              if (v83)
              {
LABEL_39:
                v150 = v40;
                goto LABEL_40;
              }

LABEL_35:
              v150 = v40;
              v80 = [v35 title];
              if (v80)
              {
                v81 = v80;
                v149 = sub_2CE270();
                v41 = v82;

                goto LABEL_41;
              }

LABEL_40:
              v149 = 0;
              v41 = 0;
LABEL_41:
              objc_opt_self();
              v84 = swift_dynamicCastObjCClass();
              if (!v84)
              {
                v91 = 0xE300000000000000;
                v92 = 4473921;
                if (v41)
                {
LABEL_66:
                  v93 = 0;
                  v88 = v41;
                  v90 = v149;
                  v95 = v150;
                  goto LABEL_67;
                }

LABEL_48:
                sub_236110(0x436F54656C746974, 0xEE006D7269666E6FLL, v169);
                sub_30B8(v169, &qword_34CEA0, &qword_2D0FC0);
                v93 = 0;
                v94 = v163;
                v95 = v150;
LABEL_68:
                if (v95)
                {
                  v171 = &type metadata for String;
                  *&v170 = v38;
                  *(&v170 + 1) = v95;
                  sub_E2DC(&v170, v169);
                  v106 = v173;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v168 = v106;
                  sub_237690(v169, 0x6F54747369747261, 0xEF6D7269666E6F43, isUniquelyReferenced_nonNull_native);
                  v108 = v168;
                }

                else
                {
                  sub_236110(0x6F54747369747261, 0xEF6D7269666E6F43, &v170);
                  sub_30B8(&v170, &qword_34CEA0, &qword_2D0FC0);
                  v108 = v173;
                }

                v150 = v35;
                v171 = &type metadata for Bool;
                LOBYTE(v170) = v93;
                sub_E2DC(&v170, v169);
                v109 = swift_isUniquelyReferenced_nonNull_native();
                v168 = v108;
                sub_237690(v169, 0x5265726E65477369, 0xEC0000006F696461, v109);
                v110 = v168;
                v173 = v168;
                v171 = &type metadata for String;
                *&v170 = v92;
                *(&v170 + 1) = v91;
                sub_E2DC(&v170, v169);
                v111 = swift_isUniquelyReferenced_nonNull_native();
                v168 = v110;
                sub_237690(v169, 0x7954746E65746E69, 0xEA00000000006570, v111);
                v149 = v168;
                v148 = v94[2];
                v112 = v94[14];
                v163 = v94[13];
                v147 = 0x80000000002DDA90;
                v171 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
                v172 = &off_338D38;
                *&v170 = v164;
                v113 = qword_34BF98;
                v114 = v164;
                if (v113 != -1)
                {
                  swift_once();
                }

                v115 = qword_35F760;
                v116 = v162;
                sub_2CDFB0();
                v117 = v166;
                v118 = v153;
                v119 = v167;
                (*(v166 + 16))(v153, v116, v167);
                v120 = (*(v117 + 80) + 33) & ~*(v117 + 80);
                v121 = (v152 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
                v122 = swift_allocObject();
                *(v122 + 16) = "catServiceExecute";
                *(v122 + 24) = 17;
                *(v122 + 32) = 2;
                (*(v117 + 32))(v122 + v120, v118, v119);
                v123 = (v122 + v121);
                v124 = v155;
                *v123 = v154;
                v123[1] = v124;

                v125 = sub_2CE9E0();
                sub_20410(&qword_34CEA8, &unk_2D0EB0);
                v126 = swift_allocObject();
                *(v126 + 16) = xmmword_2D0E40;
                *(v126 + 56) = &type metadata for String;
                v127 = sub_1087C();
                *(v126 + 32) = v163;
                *(v126 + 40) = v112;
                *(v126 + 96) = &type metadata for String;
                *(v126 + 104) = v127;
                *(v126 + 64) = v127;
                *(v126 + 72) = 0xD000000000000011;
                v128 = v147;
                *(v126 + 80) = v147;

                LOBYTE(v144) = 2;
                sub_2CDF90(v125, &dword_0, v115, "catServiceExecute", 17, 2, v116, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v144, v126);

                v129 = swift_allocObject();
                *(v129 + 16) = sub_13D80;
                *(v129 + 24) = v122;
                v130 = v151;
                v131 = v165;
                v156(v151, v158, v165);

                v132 = sub_2CDFE0();
                v133 = sub_2CE660();

                if (os_log_type_enabled(v132, v133))
                {
                  v134 = swift_slowAlloc();
                  v169[0] = swift_slowAlloc();
                  *v134 = 136315394;
                  *(v134 + 4) = sub_3F08(v163, v112, v169);
                  *(v134 + 12) = 2080;
                  *(v134 + 14) = sub_3F08(0xD000000000000011, v128, v169);
                  _os_log_impl(&dword_0, v132, v133, "Evaluating CAT family:%s id:%s...", v134, 0x16u);
                  swift_arrayDestroy();
                }

                v159(v130, v131);
                v169[0] = v163;
                v169[1] = v112;

                v176._countAndFlagsBits = 35;
                v176._object = 0xE100000000000000;
                sub_2CE350(v176);
                v177._countAndFlagsBits = 0xD000000000000011;
                v177._object = v128;
                sub_2CE350(v177);
                v135 = v169[0];
                v136 = v169[1];
                v137 = sub_2CB460();
                if (!v137)
                {
                  sub_2CB180();
                  v137 = sub_2CB170();
                }

                v138 = v137;
                v139 = swift_allocObject();
                v139[2] = v138;
                v139[3] = sub_13DB4;
                v139[4] = v129;
                v140 = sub_2CB180();
                __chkstk_darwin(v140);
                v141 = v149;
                *(&v146 - 10) = v148;
                *(&v146 - 9) = v141;
                *(&v146 - 8) = v161;
                *(&v146 - 7) = &v170;
                *(&v146 - 6) = 0;
                *(&v146 - 5) = v135;
                v143 = v136;
                v144 = sub_3E06C;
                v145 = v139;

                sub_2CB0F0();

                (*(v166 + 8))(v162, v167);
                return sub_30B8(&v170, &qword_34C6C0, &qword_2D0710);
              }

              v85 = v84;
              v86 = [v84 mediaSearch];
              if (v86)
              {
                v87 = v86;
                v88 = [v86 genreNames];

                if (!v88)
                {
                  v90 = 0;
                  if (!v35)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_53;
                }

                v89 = sub_2CE410();

                if (v89[2])
                {
                  v90 = v89[4];
                  v88 = v89[5];

                  if (!v35)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_53;
                }
              }

              v90 = 0;
              v88 = 0;
              if (!v35)
              {
                goto LABEL_58;
              }

LABEL_53:
              v96 = [v35 privateMediaItemValueData];
              if (v96)
              {
                v97 = v96;
                v98 = [v96 provider];

                if (v98)
                {
                  v99 = sub_2CE270();
                  v101 = v100;

                  v102 = HIBYTE(v101) & 0xF;
                  if ((v101 & 0x2000000000000000) == 0)
                  {
                    v102 = v99 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v102)
                  {
LABEL_59:
                    if (!v88)
                    {
                      goto LABEL_65;
                    }

                    v103 = HIBYTE(v88) & 0xF;
                    if ((v88 & 0x2000000000000000) == 0)
                    {
                      v103 = v90 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v103)
                    {

                      v38 = 0;
                      v93 = 1;
                      v91 = 0xE400000000000000;
                      v95 = 0xE000000000000000;
                      v92 = 1497451600;
LABEL_67:
                      v171 = &type metadata for String;
                      *&v170 = v90;
                      *(&v170 + 1) = v88;
                      sub_E2DC(&v170, v169);
                      v104 = v173;
                      v105 = swift_isUniquelyReferenced_nonNull_native();
                      v168 = v104;
                      sub_237690(v169, 0x436F54656C746974, 0xEE006D7269666E6FLL, v105);
                      v173 = v168;
                      v94 = v163;
                      goto LABEL_68;
                    }

LABEL_64:

LABEL_65:
                    v91 = 0xE400000000000000;
                    v92 = 1497451600;
                    if (v41)
                    {
                      goto LABEL_66;
                    }

                    goto LABEL_48;
                  }
                }
              }

LABEL_58:
              if (!_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v85, &off_32F190))
              {
                goto LABEL_64;
              }

              goto LABEL_59;
            }

LABEL_34:

            goto LABEL_35;
          }

LABEL_27:
          if (!v72)
          {
            goto LABEL_39;
          }

          goto LABEL_34;
        }

        if (v70)
        {
          goto LABEL_34;
        }
      }

      else if (v40)
      {
        sub_2CE2B0();
        goto LABEL_27;
      }

      v149 = 0;
      v41 = 0;
    }

    else
    {
      v149 = 0;
      v41 = 0;
      v35 = 0;
      v38 = 0;
    }

    v150 = 0;
    goto LABEL_41;
  }

  v151 = v33;
  v149 = v163[2];
  v42 = v163[14];
  v162 = v163[13];
  v163 = 0x80000000002DDA60;
  v171 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v172 = &off_338D38;
  *&v170 = v164;
  v43 = qword_34BF98;
  v44 = v164;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = qword_35F760;
  v46 = v150;
  sub_2CDFB0();
  v47 = v166;
  v48 = v153;
  v49 = v167;
  (*(v166 + 16))(v153, v46, v167);
  v50 = (*(v47 + 80) + 33) & ~*(v47 + 80);
  v51 = (v152 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = "catServiceExecute";
  *(v52 + 24) = 17;
  *(v52 + 32) = 2;
  (*(v47 + 32))(v52 + v50, v48, v49);
  v53 = (v52 + v51);
  v54 = v155;
  *v53 = v154;
  v53[1] = v54;

  v55 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_2D0E40;
  *(v56 + 56) = &type metadata for String;
  v57 = sub_1087C();
  v58 = v162;
  *(v56 + 32) = v162;
  *(v56 + 40) = v42;
  *(v56 + 96) = &type metadata for String;
  *(v56 + 104) = v57;
  *(v56 + 64) = v57;
  *(v56 + 72) = 0xD000000000000020;
  v164 = 0xD000000000000020;
  v59 = v163;
  *(v56 + 80) = v163;

  LOBYTE(v144) = 2;
  sub_2CDF90(v55, &dword_0, v45, "catServiceExecute", 17, 2, v46, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v144, v56);

  v60 = swift_allocObject();
  *(v60 + 16) = sub_13D80;
  *(v60 + 24) = v52;
  v61 = v165;
  v156(v21, v158, v165);

  v62 = sub_2CDFE0();
  v63 = sub_2CE660();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v158 = v60;
    v65 = v64;
    v169[0] = swift_slowAlloc();
    *v65 = 136315394;
    *(v65 + 4) = sub_3F08(v58, v42, v169);
    *(v65 + 12) = 2080;
    *(v65 + 14) = sub_3F08(v164, v59, v169);
    _os_log_impl(&dword_0, v62, v63, "Evaluating CAT family:%s id:%s...", v65, 0x16u);
    swift_arrayDestroy();

    v60 = v158;

    v159(v21, v61);
    v58 = v162;
  }

  else
  {

    v159(v21, v61);
  }

  v169[0] = v58;
  v169[1] = v42;

  v174._countAndFlagsBits = 35;
  v174._object = 0xE100000000000000;
  sub_2CE350(v174);
  v175._countAndFlagsBits = 0xD000000000000020;
  v175._object = v59;
  sub_2CE350(v175);
  v73 = v169[0];
  v74 = v169[1];
  v75 = sub_2CB460();
  v76 = v151;
  if (!v75)
  {
    sub_2CB180();
    v75 = sub_2CB170();
  }

  v77 = v75;
  v78 = swift_allocObject();
  v78[2] = v77;
  v78[3] = sub_13DB4;
  v78[4] = v60;
  v79 = sub_2CB180();
  __chkstk_darwin(v79);
  *(&v146 - 10) = v149;
  *(&v146 - 9) = v76;
  *(&v146 - 8) = v161;
  *(&v146 - 7) = &v170;
  *(&v146 - 6) = 0;
  *(&v146 - 5) = v73;
  v143 = v74;
  v144 = sub_3E06C;
  v145 = v78;

  sub_2CB0F0();

  (*(v166 + 8))(v150, v167);
  return sub_30B8(&v170, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_12E824(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v159 = a7;
  v158 = a6;
  v168 = a5;
  v171 = sub_2CDFD0();
  v170 = *(v171 - 8);
  v11 = __chkstk_darwin(v171);
  v154 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v157 = &v150 - v14;
  v156 = v15;
  __chkstk_darwin(v13);
  v166 = &v150 - v16;
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v155 = &v150 - v23;
  __chkstk_darwin(v22);
  v25 = &v150 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v17, static Logger.default);
  swift_beginAccess();
  v27 = v18;
  v28 = *(v18 + 16);
  v162 = v26;
  v169 = v17;
  v161 = v18 + 16;
  v160 = v28;
  v28(v25, v26, v17);
  v29 = sub_2CDFE0();
  v30 = sub_2CE670();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "CommonDialogProvider#makePromptForConfirmationDialog", v31, 2u);
  }

  v32 = *(v27 + 8);
  v164 = v27 + 8;
  v163 = v32;
  v32(v25, v169);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = sub_2CCFB0();
  *(inited + 48) = a1;

  v34 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v177 = v34;
  v165 = a1;
  if (a2 == 0x657449616964656DLL && a3 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    v35 = [a4 itemToConfirm];
    sub_2CEC00();
    swift_unknownObjectRelease();
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    if (!swift_dynamicCast())
    {
      v43 = 0;
      v44 = 0;
      v36 = 0;
      v40 = 0;
      v42 = 0;
      v38 = v168;
      goto LABEL_39;
    }

    v36 = v173[0];
    v37 = [v173[0] artist];
    v38 = v168;
    if (v37)
    {
      v39 = v37;
      v40 = sub_2CE270();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v69 = [v36 title];
    if (v69)
    {
      v70 = v69;
      sub_2CE270();

      v71 = sub_2CE2B0();
      v73 = v72;

      if (!v42)
      {
        if (!v73)
        {
          v43 = 0;
          v44 = 0;
          v42 = 0;
          goto LABEL_39;
        }

        goto LABEL_33;
      }

      v74 = sub_2CE2B0();
      if (v73)
      {
        if (v75)
        {
          if (v71 == v74 && v73 == v75)
          {

LABEL_38:
            v43 = 0;
            v44 = 0;
LABEL_39:
            objc_opt_self();
            v87 = swift_dynamicCastObjCClass();
            v154 = v36;
            v153 = v40;
            if (!v87)
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v94 = 0xE300000000000000;
                v95 = 4473921;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v94 = 0xE600000000000000;
                  v95 = 0x484352414553;
                }

                else
                {
                  v146 = [v38 affinityType];
                  if (v146 == &dword_0 + 1)
                  {
                    v94 = 0xE400000000000000;
                    v95 = 1162561868;
                  }

                  else
                  {
                    v94 = 0xE700000000000000;
                    if (v146 == &dword_0 + 2)
                    {
                      v95 = 0x454B494C534944;
                    }

                    else
                    {
                      v95 = 0x4E574F4E4B4E55;
                    }
                  }
                }
              }

              goto LABEL_68;
            }

            v88 = v87;
            v89 = [v87 mediaSearch];
            if (v89)
            {
              v90 = v89;
              v91 = [v89 genreNames];

              if (!v91)
              {
                v92 = v43;
                v43 = 0;
                if (!v36)
                {
LABEL_59:
                  if (!_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v88, &off_32F1C0))
                  {

                    goto LABEL_66;
                  }

LABEL_60:
                  if (v91)
                  {
                    v103 = HIBYTE(v91) & 0xF;
                    if ((v91 & 0x2000000000000000) == 0)
                    {
                      v103 = v43 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v103)
                    {

                      v153 = 0;
                      v104 = 1;
                      v94 = 0xE400000000000000;
                      v42 = 0xE000000000000000;
                      v95 = 1497451600;
                      goto LABEL_70;
                    }

                    v94 = 0xE400000000000000;
                    v95 = 1497451600;
                    goto LABEL_67;
                  }

LABEL_66:
                  v94 = 0xE400000000000000;
                  v95 = 1497451600;
LABEL_67:
                  v43 = v92;
LABEL_68:
                  if (!v44)
                  {
                    sub_236110(0x436F54656C746974, 0xEE006D7269666E6FLL, v173);
                    sub_30B8(v173, &qword_34CEA0, &qword_2D0FC0);
                    v104 = 0;
                    v105 = v167;
                    goto LABEL_72;
                  }

                  v104 = 0;
                  v91 = v44;
LABEL_70:
                  v105 = v167;
                  v175 = &type metadata for String;
                  *&v174 = v43;
                  *(&v174 + 1) = v91;
                  sub_E2DC(&v174, v173);
                  v106 = v177;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v172 = v106;
                  sub_237690(v173, 0x436F54656C746974, 0xEE006D7269666E6FLL, isUniquelyReferenced_nonNull_native);
                  v177 = v172;
LABEL_72:
                  if (v42)
                  {
                    v175 = &type metadata for String;
                    *&v174 = v153;
                    *(&v174 + 1) = v42;
                    sub_E2DC(&v174, v173);
                    v108 = v177;
                    v109 = swift_isUniquelyReferenced_nonNull_native();
                    v172 = v108;
                    sub_237690(v173, 0x6F54747369747261, 0xEF6D7269666E6F43, v109);
                    v110 = v172;
                  }

                  else
                  {
                    sub_236110(0x6F54747369747261, 0xEF6D7269666E6F43, &v174);
                    sub_30B8(&v174, &qword_34CEA0, &qword_2D0FC0);
                    v110 = v177;
                  }

                  v175 = &type metadata for Bool;
                  LOBYTE(v174) = v104;
                  sub_E2DC(&v174, v173);
                  v111 = swift_isUniquelyReferenced_nonNull_native();
                  v172 = v110;
                  sub_237690(v173, 0x5265726E65477369, 0xEC0000006F696461, v111);
                  v112 = v172;
                  v177 = v172;
                  v175 = &type metadata for String;
                  *&v174 = v95;
                  *(&v174 + 1) = v94;
                  sub_E2DC(&v174, v173);
                  v113 = swift_isUniquelyReferenced_nonNull_native();
                  v172 = v112;
                  sub_237690(v173, 0x7954746E65746E69, 0xEA00000000006570, v113);
                  v153 = v172;
                  v152 = v105[2];
                  v114 = v105[14];
                  v167 = v105[13];
                  v151 = 0x80000000002DDA90;
                  v175 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
                  v176 = &off_33CC40;
                  *&v174 = v168;
                  v115 = qword_34BF98;
                  v116 = v168;
                  if (v115 != -1)
                  {
                    swift_once();
                  }

                  v117 = qword_35F760;
                  v118 = v166;
                  sub_2CDFB0();
                  v119 = v170;
                  v120 = v157;
                  v121 = v171;
                  (*(v170 + 16))(v157, v118, v171);
                  v122 = (*(v119 + 80) + 33) & ~*(v119 + 80);
                  v123 = (v156 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v124 = swift_allocObject();
                  *(v124 + 16) = "catServiceExecute";
                  *(v124 + 24) = 17;
                  *(v124 + 32) = 2;
                  (*(v119 + 32))(v124 + v122, v120, v121);
                  v125 = (v124 + v123);
                  v126 = v159;
                  *v125 = v158;
                  v125[1] = v126;

                  v127 = sub_2CE9E0();
                  sub_20410(&qword_34CEA8, &unk_2D0EB0);
                  v128 = swift_allocObject();
                  *(v128 + 16) = xmmword_2D0E40;
                  *(v128 + 56) = &type metadata for String;
                  v129 = sub_1087C();
                  *(v128 + 32) = v167;
                  *(v128 + 40) = v114;
                  *(v128 + 96) = &type metadata for String;
                  *(v128 + 104) = v129;
                  *(v128 + 64) = v129;
                  *(v128 + 72) = 0xD000000000000011;
                  v130 = v151;
                  *(v128 + 80) = v151;

                  LOBYTE(v148) = 2;
                  sub_2CDF90(v127, &dword_0, v117, "catServiceExecute", 17, 2, v118, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v148, v128);

                  v131 = swift_allocObject();
                  *(v131 + 16) = sub_13D80;
                  *(v131 + 24) = v124;
                  v132 = v155;
                  v133 = v169;
                  v160(v155, v162, v169);

                  v134 = sub_2CDFE0();
                  v135 = sub_2CE660();

                  if (os_log_type_enabled(v134, v135))
                  {
                    v136 = swift_slowAlloc();
                    v173[0] = swift_slowAlloc();
                    *v136 = 136315394;
                    *(v136 + 4) = sub_3F08(v167, v114, v173);
                    *(v136 + 12) = 2080;
                    *(v136 + 14) = sub_3F08(0xD000000000000011, v130, v173);
                    _os_log_impl(&dword_0, v134, v135, "Evaluating CAT family:%s id:%s...", v136, 0x16u);
                    swift_arrayDestroy();
                  }

                  v163(v132, v133);
                  v173[0] = v167;
                  v173[1] = v114;

                  v180._countAndFlagsBits = 35;
                  v180._object = 0xE100000000000000;
                  sub_2CE350(v180);
                  v181._countAndFlagsBits = 0xD000000000000011;
                  v181._object = v130;
                  sub_2CE350(v181);
                  v137 = v173[0];
                  v138 = v173[1];
                  v139 = sub_2CB460();
                  if (!v139)
                  {
                    sub_2CB180();
                    v139 = sub_2CB170();
                  }

                  v140 = v139;
                  v141 = v165;
                  v142 = swift_allocObject();
                  v142[2] = v140;
                  v142[3] = sub_13DB4;
                  v142[4] = v131;
                  v143 = sub_2CB180();
                  __chkstk_darwin(v143);
                  v144 = v153;
                  *(&v150 - 10) = v152;
                  *(&v150 - 9) = v144;
                  *(&v150 - 8) = v141;
                  *(&v150 - 7) = &v174;
                  *(&v150 - 6) = 0;
                  *(&v150 - 5) = v137;
                  v147 = v138;
                  v148 = sub_3E06C;
                  v149 = v142;

                  sub_2CB0F0();

                  (*(v170 + 8))(v166, v171);
                  return sub_30B8(&v174, &qword_34C6C0, &qword_2D0710);
                }

LABEL_54:
                v96 = [v36 privateMediaItemValueData];
                if (v96)
                {
                  v97 = v96;
                  v98 = [v96 provider];

                  if (v98)
                  {
                    v99 = sub_2CE270();
                    v101 = v100;

                    v102 = HIBYTE(v101) & 0xF;
                    if ((v101 & 0x2000000000000000) == 0)
                    {
                      v102 = v99 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v102)
                    {
                      goto LABEL_60;
                    }
                  }
                }

                goto LABEL_59;
              }

              v92 = v43;
              v93 = sub_2CE410();

              if (v93[2])
              {
                v43 = v93[4];
                v91 = v93[5];

                if (!v36)
                {
                  goto LABEL_59;
                }

                goto LABEL_54;
              }
            }

            else
            {
              v92 = v43;
            }

            v43 = 0;
            v91 = 0;
            if (!v36)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          }

          v86 = sub_2CEEA0();

          if (v86)
          {
            goto LABEL_38;
          }

LABEL_34:
          v83 = [v36 title];
          if (v83)
          {
            v84 = v83;
            v43 = sub_2CE270();
            v44 = v85;

            goto LABEL_39;
          }

          goto LABEL_38;
        }

LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      if (!v42)
      {
        goto LABEL_38;
      }

      sub_2CE2B0();
    }

    if (!v75)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v155 = v34;
  v153 = v167[2];
  v45 = v167[14];
  v166 = v167[13];
  v167 = 0x80000000002DDA60;
  v175 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v176 = &off_33CC40;
  *&v174 = v168;
  v46 = qword_34BF98;
  v47 = v168;
  if (v46 != -1)
  {
    swift_once();
  }

  v48 = qword_35F760;
  v49 = v154;
  sub_2CDFB0();
  v50 = v170;
  v51 = v157;
  v52 = v171;
  (*(v170 + 16))(v157, v49, v171);
  v53 = (*(v50 + 80) + 33) & ~*(v50 + 80);
  v54 = (v156 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  *(v55 + 16) = "catServiceExecute";
  *(v55 + 24) = 17;
  *(v55 + 32) = 2;
  (*(v50 + 32))(v55 + v53, v51, v52);
  v56 = (v55 + v54);
  v57 = v159;
  *v56 = v158;
  v56[1] = v57;

  v58 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_2D0E40;
  *(v59 + 56) = &type metadata for String;
  v60 = sub_1087C();
  v61 = v166;
  *(v59 + 32) = v166;
  *(v59 + 40) = v45;
  *(v59 + 96) = &type metadata for String;
  *(v59 + 104) = v60;
  *(v59 + 64) = v60;
  *(v59 + 72) = 0xD000000000000020;
  v168 = 0xD000000000000020;
  v62 = v167;
  *(v59 + 80) = v167;

  LOBYTE(v148) = 2;
  sub_2CDF90(v58, &dword_0, v48, "catServiceExecute", 17, 2, v49, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v148, v59);

  v63 = swift_allocObject();
  *(v63 + 16) = sub_13D7C;
  *(v63 + 24) = v55;
  v64 = v169;
  v160(v21, v162, v169);

  v65 = sub_2CDFE0();
  v66 = sub_2CE660();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v162 = v63;
    v68 = v67;
    v173[0] = swift_slowAlloc();
    *v68 = 136315394;
    *(v68 + 4) = sub_3F08(v61, v45, v173);
    *(v68 + 12) = 2080;
    *(v68 + 14) = sub_3F08(v168, v62, v173);
    _os_log_impl(&dword_0, v65, v66, "Evaluating CAT family:%s id:%s...", v68, 0x16u);
    swift_arrayDestroy();

    v63 = v162;

    v163(v21, v64);
    v61 = v166;
  }

  else
  {

    v163(v21, v64);
  }

  v173[0] = v61;
  v173[1] = v45;

  v178._countAndFlagsBits = 35;
  v178._object = 0xE100000000000000;
  sub_2CE350(v178);
  v179._countAndFlagsBits = 0xD000000000000020;
  v179._object = v62;
  sub_2CE350(v179);
  v76 = v173[0];
  v77 = v173[1];
  v78 = sub_2CB460();
  if (!v78)
  {
    sub_2CB180();
    v78 = sub_2CB170();
  }

  v79 = v78;
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = sub_13D84;
  v80[4] = v63;
  v81 = sub_2CB180();
  __chkstk_darwin(v81);
  v82 = v155;
  *(&v150 - 10) = v153;
  *(&v150 - 9) = v82;
  *(&v150 - 8) = v165;
  *(&v150 - 7) = &v174;
  *(&v150 - 6) = 0;
  *(&v150 - 5) = v76;
  v147 = v77;
  v148 = sub_3E010;
  v149 = v80;

  sub_2CB0F0();

  (*(v170 + 8))(v154, v171);
  return sub_30B8(&v174, &qword_34C6C0, &qword_2D0710);
}

double sub_12FE64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, char *a8, char *a9)
{
  v118 = a8;
  v115 = a1;
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v13 - 8);
  v111 = &v95 - v14;
  v15 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v15 - 8);
  v110 = &v95 - v16;
  v17 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v17 - 8);
  v109 = &v95 - v18;
  v19 = sub_2CCB30();
  v106 = *(v19 - 8);
  v107 = v19;
  __chkstk_darwin(v19);
  v104 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2CCAC0();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a4;
  v101 = [a4 unsupportedReason];
  v120 = v101;
  v121 = 0;
  sub_20410(&qword_352080, qword_2D4BD0);
  v99 = sub_2CE2A0();
  v27 = v26;
  v98 = [a5 affinityType];
  v97 = [a5 affinityType];
  INUpdateMediaAffinityIntent.firstMediaItemType()();
  v28 = INMediaItemTypeGetName();
  if (v28)
  {
    v29 = v28;
    v100 = sub_2CE270();
    v31 = v30;
  }

  else
  {
    v100 = 0;
    v31 = 0xE000000000000000;
  }

  v112 = a2;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v113 = a3;
  v114 = a5;
  v117 = a9;
  v32 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  (*(v23 + 16))(v25, v32, v22);

  v33 = sub_2CDFE0();
  v34 = sub_2CE690();

  v35 = os_log_type_enabled(v33, v34);
  v116 = v31;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v96 = v22;
    v120 = v37;
    *v36 = 136315394;
    v38 = sub_3F08(v99, v27, &v120);

    *(v36 + 4) = v38;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(v100, v31, &v120);
    _os_log_impl(&dword_0, v33, v34, "UpdateMediaAffinityDialogProvider#makeUnsupportedDialog, reason: %s, mediaType: %s", v36, 0x16u);
    swift_arrayDestroy();

    (*(v23 + 8))(v25, v96);
  }

  else
  {

    (*(v23 + 8))(v25, v22);
  }

  v39 = v102;
  v40 = v103;
  v41 = v105;
  (*(v103 + 104))(v102, enum case for AdditionalMetricsDescription.ModuleName.umadp(_:), v105);
  v43 = v106;
  v42 = v107;
  v44 = v104;
  (*(v106 + 104))(v104, enum case for AdditionalMetricsDescription.SourceFunction.unsupportedDialog(_:), v107);
  v45 = v108;
  v120 = [v108 unsupportedReason];
  sub_2CEE70();
  [v45 resolutionResultCode];
  v108 = sub_2CCAE0();

  (*(v43 + 8))(v44, v42);
  (*(v40 + 8))(v39, v41);
  v107 = sub_35E0((v119 + 168), *(v119 + 192));
  v46 = enum case for ActivityType.failed(_:);
  v47 = sub_2C9C20();
  v48 = *(v47 - 8);
  v49 = v109;
  (*(v48 + 104))(v109, v46, v47);
  (*(v48 + 56))(v49, 0, 1, v47);
  v50 = sub_2CA130();
  v51 = v110;
  (*(*(v50 - 8) + 56))(v110, 1, 1, v50);
  v52 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
  v53 = sub_2C98F0();
  v54 = *(v53 - 8);
  v55 = v111;
  (*(v54 + 104))(v111, v52, v53);
  (*(v54 + 56))(v55, 0, 1, v53);
  v57 = v114;
  v56 = v115;
  sub_2CB4E0();

  sub_30B8(v55, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v51, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v49, &qword_34CB88, &unk_2D0D90);
  sub_112C0(_swiftEmptyArrayStorage);

  v59 = v112;
  v58 = v113;
  if ((v112 != 0x657449616964656DLL || v113 != 0xEA0000000000736DLL) && (sub_2CEEA0() & 1) == 0)
  {

    if (v59 == 0x7974696E69666661 && v58 == 0xEC00000065707954 || (sub_2CEEA0() & 1) != 0)
    {
      v65 = v97 == &dword_0 + 2;
      v66 = v98 == &dword_0 + 1;
      sub_20410(&unk_353120, &unk_2D0B50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2D0E40;
      strcpy((inited + 32), "isLikeAffinity");
      *(inited + 47) = -18;
      *(inited + 48) = v66;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 80) = 0xD000000000000011;
      *(inited + 88) = 0x80000000002DB070;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = v65;
      v68 = sub_112C0(inited);
      swift_setDeallocating();
      sub_20410(&qword_34CBA0, &unk_2D0FE0);
      swift_arrayDestroy();
      v122 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v123 = &off_33CC40;
      v120 = v57;
      v69 = v57;
      sub_BFB8C(v68, v56, &v120, v118, v117);
    }

    else
    {
      v87 = sub_112C0(_swiftEmptyArrayStorage);
      v122 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v123 = &off_33CC40;
      v120 = v57;
      v88 = v57;
      sub_C2928(v87, v56, &v120, v118, v117);
    }

    goto LABEL_36;
  }

  v60 = v101;
  if (v101 > 4)
  {
    if (v101 <= 6)
    {
      if (v101 == (&dword_4 + 1))
      {

        v76 = sub_112C0(_swiftEmptyArrayStorage);
        v122 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
        v123 = &off_33CC40;
        v120 = v57;
        v77 = v57;
        sub_33504(v76, v56, &v120, v118, v117);
      }

      else
      {

        v63 = sub_112C0(_swiftEmptyArrayStorage);
        v122 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
        v123 = &off_33CC40;
        v120 = v57;
        v64 = v57;
        sub_C0210(v63, v56, &v120, v118, v117);
      }

      goto LABEL_36;
    }

    if (v101 == (&dword_4 + 3))
    {

      v84 = sub_112C0(_swiftEmptyArrayStorage);
      v122 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v123 = &off_33CC40;
      v120 = v57;
      v85 = v57;
      sub_39CA0(v84, v56, &v120, v118, v117);
      goto LABEL_36;
    }

    if (v101 == &dword_8)
    {

      v72 = sub_112C0(_swiftEmptyArrayStorage);
      v122 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v123 = &off_33CC40;
      v120 = v57;
      v73 = v57;
      sub_3C470(v72, v56, &v120, v118, v117);
      goto LABEL_36;
    }
  }

  else
  {
    if (v101 > 2)
    {
      if (v101 == (&dword_0 + 3))
      {
        v78 = v97 == &dword_0 + 2;
        v79 = v98 == &dword_0 + 1;
        sub_20410(&unk_353120, &unk_2D0B50);
        v80 = swift_initStackObject();
        *(v80 + 16) = xmmword_2D10E0;
        strcpy((v80 + 32), "isLikeAffinity");
        *(v80 + 47) = -18;
        *(v80 + 48) = v79;
        *(v80 + 72) = &type metadata for Bool;
        *(v80 + 80) = 0xD000000000000011;
        *(v80 + 88) = 0x80000000002DB070;
        *(v80 + 96) = v78;
        *(v80 + 120) = &type metadata for Bool;
        *(v80 + 128) = 0x707954616964656DLL;
        *(v80 + 168) = &type metadata for String;
        *(v80 + 136) = 0xE900000000000065;
        v81 = v116;
        *(v80 + 144) = v100;
        *(v80 + 152) = v81;
        v82 = sub_112C0(v80);
        swift_setDeallocating();
        sub_20410(&qword_34CBA0, &unk_2D0FE0);
        swift_arrayDestroy();
        v122 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
        v123 = &off_33CC40;
        v120 = v57;
        v83 = v57;
        sub_C0894(v82, v56, &v120, v118, v117);
      }

      else
      {

        v70 = sub_112C0(_swiftEmptyArrayStorage);
        v122 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
        v123 = &off_33CC40;
        v120 = v57;
        v71 = v57;
        sub_38950(v70, v56, &v120, v118, v117);
      }

      goto LABEL_36;
    }

    if (v101 == (&dword_0 + 1))
    {

      v74 = sub_112C0(_swiftEmptyArrayStorage);
      v122 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v123 = &off_33CC40;
      v120 = v57;
      v75 = v57;
      sub_38FC0(v74, v56, &v120, v118, v117);
      goto LABEL_36;
    }

    if (v101 == (&dword_0 + 2))
    {

      v61 = sub_112C0(_swiftEmptyArrayStorage);
      v122 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v123 = &off_33CC40;
      v120 = v57;
      v62 = v57;
      sub_39630(v61, v56, &v120, v118, v117);
LABEL_36:

      sub_30B8(&v120, &qword_34C6C0, &qword_2D0710);
      return result;
    }
  }

  if (_INUpdateMediaAffinityMediaItemUnsupportedReasonAppNotAvailable == v60)
  {
    v86 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3A980(v86, v56, v118, v117);
  }

  else if (_INUpdateMediaAffinityMediaItemUnsupportedReasonAppNotConfigured == v60)
  {
    v90 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3B03C(v90, v56, v118, v117);
  }

  else
  {
    if (_INUpdateMediaAffinityMediaItemUnsupportedReasonAppAccountFailure != v60)
    {
      v92 = _INUpdateMediaAffinityMediaItemUnsupportedReasonAppDoesntSupportIntent;
      v93 = sub_112C0(_swiftEmptyArrayStorage);
      v122 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v123 = &off_33CC40;
      v120 = v57;
      v94 = v57;
      if (v92 == v60)
      {
        sub_3A310(v93, v56, &v120, v118, v117);
      }

      else
      {
        sub_382E0(v93, v56, &v120, v118, v117);
      }

      goto LABEL_36;
    }

    v91 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3B6F8(v91, v56, v118, v117);
  }

  return result;
}

uint64_t sub_130EA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_112C0(_swiftEmptyArrayStorage);
  v12[3] = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v12[4] = &off_33CC40;
  v12[0] = a2;
  v10 = a2;
  sub_C0F18(v9, a1, v12, a4, a5);

  return sub_30B8(v12, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_130F60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D10E0;
  strcpy((inited + 32), "isLikeAffinity");
  *(inited + 47) = -18;
  *(inited + 48) = [a4 affinityType] == &dword_0 + 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000000002DB070;
  *(inited + 96) = [a4 affinityType] == &dword_0 + 2;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000000002DDAB0;
  if (a2 == 0x657449616964656DLL && a3 == 0xEA0000000000736DLL)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2CEEA0();
  }

  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = v10 & 1;
  v11 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v17[3] = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v17[4] = &off_33CC40;
  v17[0] = a4;
  v12 = a4;
  sub_C159C(v11, a1, v17, a5, a6);

  return sub_30B8(v17, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_13117C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = sub_2CCFB0();
  *(inited + 48) = a1;
  v42 = a1;

  v14 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v49 = v14;
  if ((a2 != 0x7974696E69666661 || a3 != 0xEC00000065707954) && (sub_2CEEA0() & 1) == 0)
  {

    return sub_12E824(v42, a2, a3, a4, a5, a6, a7);
  }

  v15 = [a4 itemToConfirm];
  sub_2CEC00();
  swift_unknownObjectRelease();
  type metadata accessor for INMediaAffinityType(0);
  v16 = swift_dynamicCast();
  v17 = sub_281668();
  v19 = v18;
  v20 = sub_281674();
  if (v19)
  {
    if (v21)
    {
      if (v17 == v20 && v19 == v21)
      {

        goto LABEL_13;
      }

      v23 = sub_2CEEA0();

      if (v23)
      {
LABEL_13:
        v24 = 0;
        v25 = 0;
        if (!v16)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
    if (!v21)
    {
      goto LABEL_13;
    }
  }

  v24 = sub_281674();
  v25 = v26;
  if (!v16)
  {
LABEL_19:
    v27 = 0xE700000000000000;
    v28 = 0x4E574F4E4B4E55;
    goto LABEL_20;
  }

LABEL_16:
  if (*&v48[0] == 1)
  {
    v27 = 0xE400000000000000;
    v28 = 1162561868;
    goto LABEL_20;
  }

  if (*&v48[0] != 2)
  {
    goto LABEL_19;
  }

  v27 = 0xE700000000000000;
  v28 = 0x454B494C534944;
LABEL_20:
  if (v19)
  {
    v45 = &type metadata for String;
    *&v44 = v17;
    *(&v44 + 1) = v19;
    sub_E2DC(&v44, v48);
    v29 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v29;
    sub_237690(v48, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v49 = v47;
  }

  else
  {
    sub_236110(0x656C746974, 0xE500000000000000, &v44);
    sub_30B8(&v44, &qword_34CEA0, &qword_2D0FC0);
  }

  if (v25)
  {
    v45 = &type metadata for String;
    *&v44 = v24;
    *(&v44 + 1) = v25;
    sub_E2DC(&v44, v48);
    v31 = v49;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v31;
    sub_237690(v48, 0x747369747261, 0xE600000000000000, v32);
    v49 = v47;
  }

  else
  {
    sub_236110(0x747369747261, 0xE600000000000000, &v44);
    sub_30B8(&v44, &qword_34CEA0, &qword_2D0FC0);
  }

  v33 = [a5 mediaItems];
  if (v33)
  {
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v34 = sub_2CE410();

    if (v34 >> 62)
    {
      v33 = sub_2CEDA0();
    }

    else
    {
      v33 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
    }
  }

  v45 = &type metadata for Int;
  *&v44 = v33;
  sub_E2DC(&v44, v48);
  v35 = v49;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v47 = v35;
  sub_237690(v48, 0x657449616964656DLL, 0xEE00746E756F436DLL, v36);
  v37 = v47;
  v45 = &type metadata for String;
  *&v44 = v28;
  *(&v44 + 1) = v27;
  sub_E2DC(&v44, v48);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v47 = v37;
  sub_237690(v48, 0x7974696E69666661, 0xEC00000065707954, v38);
  v39 = v47;
  v45 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v46 = &off_33CC40;
  *&v44 = a5;
  v40 = a5;
  sub_C22A4(v39, v42, &v44, v41, a7);

  return sub_30B8(&v44, &qword_34C6C0, &qword_2D0710);
}

uint64_t type metadata accessor for UpdateMediaAffinityDialogProvider(uint64_t a1)
{
  result = qword_351E30;
  if (!qword_351E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1317A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v30 = a4;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0050;
  strcpy((inited + 32), "isLikeAffinity");
  *(inited + 47) = -18;
  *(inited + 48) = [a2 affinityType] == &dword_0 + 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000000002DB070;
  *(inited + 96) = [a2 affinityType] == &dword_0 + 2;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x80000000002DDAD0;
  v7 = [a2 mediaSearch];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 reference];

    v10 = v9 == &dword_0 + 1;
  }

  else
  {
    v10 = 0;
  }

  *(inited + 144) = v10;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0x657449616964656DLL;
  *(inited + 184) = 0xEF746E756F43736DLL;
  v11 = [a2 mediaItems];
  if (v11)
  {
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v12 = sub_2CE410();

    if (v12 >> 62)
    {
      v11 = sub_2CEDA0();
    }

    else
    {
      v11 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    }
  }

  *(inited + 192) = v11;
  *(inited + 216) = &type metadata for Int;
  *(inited + 224) = 0x7473697472417369;
  *(inited + 232) = 0xE800000000000000;
  v13 = [a2 mediaSearch];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 mediaType];

    v16 = v15 == &dword_0 + 3;
  }

  else
  {
    v16 = 0;
  }

  *(inited + 240) = v16;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0x6D75626C417369;
  *(inited + 280) = 0xE700000000000000;
  v17 = [a2 mediaSearch];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 mediaType];

    v20 = v19 == &dword_0 + 2;
  }

  else
  {
    v20 = 0;
  }

  *(inited + 288) = v20;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 320) = 0x676E6F537369;
  *(inited + 328) = 0xE600000000000000;
  v21 = [a2 mediaSearch];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 mediaType];

    v24 = v23 == &dword_0 + 1;
  }

  else
  {
    v24 = 0;
  }

  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = v24;
  v25 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v32[3] = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v32[4] = &off_33CC40;
  v32[0] = a2;
  v26 = a2;
  sub_BF508(v25, a1, v32, v29, v31);

  return sub_30B8(v32, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_131B6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v99 = a1;
  v100 = a2;
  v83 = sub_2CD500();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v74[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_2CD4C0();
  v97 = *(v3 - 8);
  __chkstk_darwin(v3);
  v84 = &v74[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v5 = __chkstk_darwin(v96);
  v85 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v90 = &v74[-v7];
  v8 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v9 = __chkstk_darwin(v8 - 8);
  v80 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v87 = &v74[-v12];
  v13 = __chkstk_darwin(v11);
  v88 = &v74[-v14];
  v15 = __chkstk_darwin(v13);
  v86 = &v74[-v16];
  v17 = __chkstk_darwin(v15);
  v89 = &v74[-v18];
  v19 = __chkstk_darwin(v17);
  v95 = &v74[-v20];
  __chkstk_darwin(v19);
  v22 = &v74[-v21];
  v98 = sub_2CA870();
  v23 = *(v98 - 8);
  __chkstk_darwin(v98);
  v25 = &v74[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_2CE000();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v94 = &v74[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v31 = &v74[-v30];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v26, static Logger.default);
  swift_beginAccess();
  v33 = *(v27 + 16);
  v93 = v32;
  v92 = v27 + 16;
  v91 = v33;
  v33(v31, v32, v26);
  v34 = sub_2CDFE0();
  v35 = sub_2CE690();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_0, v34, v35, "PlayMediaFlowStrategy#actionForInput", v36, 2u);
  }

  v39 = *(v27 + 8);
  v37 = v27 + 8;
  v38 = v39;
  v39(v31, v26);
  sub_2CA790();
  v40 = sub_D2F98(v25, &v101);
  (*(v23 + 8))(v25, v98, v40);
  if (!v102)
  {
    sub_30B8(&v101, &qword_34CF98, &unk_2D1A40);
    goto LABEL_11;
  }

  v98 = v38;
  v99 = v37;
  sub_420A4(&v101, &v103);
  sub_35E0(&v103, v104);
  sub_2CD840();
  v41 = v97;
  v42 = *(v97 + 48);
  v43 = v42(v22, 1, v3);
  sub_30B8(v22, &qword_34D6B8, &qword_2D15B0);
  if (v43 == 1)
  {
LABEL_29:
    sub_2C9CE0();
    return sub_306C(&v103);
  }

  sub_35E0(&v103, v104);
  v44 = v95;
  sub_2CD840();
  v45 = v44;
  v46 = *(v41 + 104);
  v47 = v89;
  v79 = v41 + 104;
  v77 = v46;
  v46(v89, enum case for CommonAudio.Verb.play(_:), v3);
  v48 = *(v41 + 56);
  v78 = v41 + 56;
  v76 = v48;
  v48(v47, 0, 1, v3);
  v49 = *(v96 + 48);
  v50 = v44;
  v51 = v90;
  sub_F7598(v50, v90);
  sub_F7598(v47, &v51[v49]);
  if (v42(v51, 1, v3) == 1)
  {
    sub_30B8(v47, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v45, &qword_34D6B8, &qword_2D15B0);
    if (v42(&v51[v49], 1, v3) == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v57 = v86;
  sub_F7598(v51, v86);
  if (v42(&v51[v49], 1, v3) == 1)
  {
    sub_30B8(v47, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v95, &qword_34D6B8, &qword_2D15B0);
    (*(v41 + 8))(v57, v3);
LABEL_16:
    sub_30B8(v51, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_17;
  }

  v67 = &v51[v49];
  v68 = v84;
  (*(v41 + 32))(v84, v67, v3);
  sub_F7608(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v75 = sub_2CE250();
  v69 = *(v97 + 8);
  v69(v68, v3);
  sub_30B8(v47, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v95, &qword_34D6B8, &qword_2D15B0);
  v69(v86, v3);
  v41 = v97;
  sub_30B8(v51, &qword_34D6B8, &qword_2D15B0);
  if (v75)
  {
    goto LABEL_29;
  }

LABEL_17:
  sub_35E0(&v103, v104);
  v58 = v88;
  sub_2CD840();
  v59 = v87;
  v77(v87, enum case for CommonAudio.Verb.start(_:), v3);
  v76(v59, 0, 1, v3);
  v60 = *(v96 + 48);
  v61 = v85;
  sub_F7598(v58, v85);
  sub_F7598(v59, &v61[v60]);
  if (v42(v61, 1, v3) == 1)
  {
    sub_30B8(v59, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v58, &qword_34D6B8, &qword_2D15B0);
    if (v42(&v61[v60], 1, v3) == 1)
    {
      v51 = v61;
LABEL_20:
      sub_30B8(v51, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_29;
    }
  }

  else
  {
    v62 = v80;
    sub_F7598(v61, v80);
    if (v42(&v61[v60], 1, v3) != 1)
    {
      v70 = &v61[v60];
      v71 = v84;
      (*(v41 + 32))(v84, v70, v3);
      sub_F7608(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
      v72 = sub_2CE250();
      v73 = *(v41 + 8);
      v73(v71, v3);
      sub_30B8(v87, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v88, &qword_34D6B8, &qword_2D15B0);
      v73(v62, v3);
      sub_30B8(v61, &qword_34D6B8, &qword_2D15B0);
      if (v72)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    sub_30B8(v87, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v88, &qword_34D6B8, &qword_2D15B0);
    (*(v41 + 8))(v62, v3);
  }

  sub_30B8(v61, &qword_34D6B0, &unk_2D4FC0);
LABEL_24:
  sub_35E0(&v103, v104);
  v63 = v82;
  v64 = v81;
  v65 = v83;
  (*(v82 + 104))(v81, enum case for CommonAudio.Attribute.playNext(_:), v83);
  v66 = sub_2CD910();
  (*(v63 + 8))(v64, v65);
  if (v66)
  {
    goto LABEL_29;
  }

  sub_306C(&v103);
  v38 = v98;
LABEL_11:
  v52 = v94;
  v91(v94, v93, v26);
  v53 = sub_2CDFE0();
  v54 = sub_2CE680();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "PlayMediaFlowStrategy#actionForInput received unsupported pommesResponse", v55, 2u);
  }

  v38(v52, v26);
  return sub_2C9CF0();
}

uint64_t type metadata accessor for PlayMediaFlowStrategy(uint64_t a1)
{
  result = qword_3520B0;
  if (!qword_3520B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1328FC(void *a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v56 = a3;
  v57 = a2;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v54 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v55 = &v52 - v9;
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v13 = *(v5 + 16);
  v13(v11, v12, v4);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "PlayMediaFlowStrategy#makeIntentFrom", v16, 2u);
  }

  v19 = *(v5 + 8);
  v18 = v5 + 8;
  v17 = v19;
  v19(v11, v4);
  v20 = sub_1B8014();
  if (v20)
  {
    v21 = v20;
    v22 = v55;
    v13(v55, v12, v4);
    v23 = v21;
    v24 = sub_2CDFE0();
    v25 = sub_2CE670();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v26 = 136315138;
      v27 = v23;
      v53 = v17;
      v28 = v27;
      v29 = [v27 description];
      v52 = v18;
      v30 = v23;
      v31 = v29;
      v32 = sub_2CE270();
      v34 = v33;

      v23 = v30;
      v35 = sub_3F08(v32, v34, &v58);

      *(v26 + 4) = v35;
      _os_log_impl(&dword_0, v24, v25, "PlayMediaFlowStrategy#makeIntentFromParse converted pommesResponse to intent: %s", v26, 0xCu);
      sub_306C(v54);

      v53(v55, v4);
    }

    else
    {

      v17(v22, v4);
    }

    v48 = v23;
    v57(v21, 0);
  }

  else
  {
    v36 = v54;
    v13(v54, v12, v4);
    v37 = v36;
    v38 = a1;
    v39 = sub_2CDFE0();
    v40 = sub_2CE680();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58 = v42;
      *v41 = 136315138;
      sub_2CDAD0();
      v53 = v17;
      sub_2CDA50();
      v43 = sub_2CE420();
      v44 = v37;
      v46 = v45;

      v47 = sub_3F08(v43, v46, &v58);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_0, v39, v40, "PlayMediaFlowStrategy#makeIntentFromParse pommesResponse doesn't contain audioExperience %s", v41, 0xCu);
      sub_306C(v42);

      v53(v44, v4);
    }

    else
    {

      v17(v36, v4);
    }

    v49 = sub_2CB850();
    sub_F7608(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v50 = swift_allocError();
    (*(*(v49 - 8) + 104))(v51, enum case for PlaybackCode.ceGE75(_:), v49);
    v57(v50, 1);
  }
}

uint64_t sub_132EA8(unsigned __int8 *a1)
{
  v3 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DirectInvocationIntent_confirmationState;
  v7 = sub_2CD490();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v1 + v6, 1, 1, v7);
  if (a1[56] == 2)
  {
    if (*a1 > 1u)
    {
      if (*a1 == 2)
      {
        v10 = &enum case for CommonAudio.Confirmation.moreInfo(_:);
      }

      else
      {
        v10 = &enum case for CommonAudio.Confirmation.cancel(_:);
      }
    }

    else if (*a1)
    {
      v10 = &enum case for CommonAudio.Confirmation.no(_:);
    }

    else
    {
      v10 = &enum case for CommonAudio.Confirmation.yes(_:);
    }

    (*(v8 + 104))(v5, *v10, v7);
    v9(v5, 0, 1, v7);
    swift_beginAccess();
    sub_133464(v5, v1 + v6);
    swift_endAccess();
  }

  else
  {

    sub_133410(a1);
    return 0;
  }

  return v1;
}

uint64_t sub_133060()
{
  sub_1333A8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DirectInvocationIntent_confirmationState);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DirectInvocationIntent(uint64_t a1)
{
  result = qword_352250;
  if (!qword_352250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_133118(uint64_t a1)
{
  sub_1331A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1331A8(uint64_t a1)
{
  if (!qword_34F668)
  {
    sub_2CD490();
    v1 = sub_2CEB90();
    if (!v2)
    {
      atomic_store(v1, &qword_34F668);
    }
  }
}

uint64_t sub_133200@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DirectInvocationIntent_confirmationState;
  swift_beginAccess();
  return sub_133338(v3 + v4, a1);
}

uint64_t sub_1332C8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_133338(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1333A8(uint64_t a1)
{
  v2 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_133464(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1334D4()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  sub_2C9A00();
  v4 = CATDefaultMode;
  v5 = sub_2CBC00();
  v6 = sub_2CBBF0();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v7 = swift_allocObject();
  v28[3] = &type metadata for StringsBackedAppNameResolver;
  v28[4] = sub_2869C();
  v28[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v28[0] + 16);
  v27[3] = v5;
  v27[4] = &protocol witness table for MorphunProvider;
  v27[0] = v6;
  v26[3] = v0;
  v26[4] = &protocol witness table for FeatureFlagProvider;
  v8 = sub_F390(v26);
  (*(v1 + 16))(v8, v3, v0);
  *(v7 + 296) = v4;
  sub_EEAC(v26, v7 + 256);
  sub_EEAC(v28, v25);
  sub_EEAC(v27, v24);
  sub_EEAC(v29, v23);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v9 = sub_2CCA30();

  v10 = sub_2CCA20();
  v20[3] = v9;
  v20[4] = &protocol witness table for MultiUserConnectionProvider;
  v20[0] = v10;
  v19[3] = sub_2CB9E0();
  v19[4] = &protocol witness table for DeviceProvider;
  sub_F390(v19);
  sub_2CB9C0();
  sub_EEAC(v25, v7 + 16);
  sub_EEAC(v24, v7 + 216);
  sub_EEAC(v23, v7 + 56);
  sub_EEAC(v20, v7 + 96);
  sub_EEAC(v19, v7 + 176);
  sub_F3F4(v21, &v14, qword_34C708, &qword_2D1620);
  if (v15)
  {

    sub_30B8(v21, qword_34C708, &qword_2D1620);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    sub_F338(&v14, &v16);
  }

  else
  {
    sub_EEAC(v23, &v16);
    v11 = sub_2C9E60();
    swift_allocObject();
    v12 = sub_2C9E50();
    v17 = v11;
    v18 = &protocol witness table for ContactsManager;

    *&v16 = v12;
    sub_30B8(v21, qword_34C708, &qword_2D1620);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    if (v15)
    {
      sub_30B8(&v14, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v16, v7 + 136);
  return v7;
}

uint64_t sub_1338FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2CC040();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  sub_2CC030();
  (*(v3 + 16))(v6, v8, v2);
  v9 = sub_13496C(v6);
  (*(v3 + 8))(v8, v2);
  result = type metadata accessor for ShazamKitRecognizer(0);
  a1[3] = result;
  a1[4] = &off_334628;
  *a1 = v9;
  return result;
}

uint64_t sub_133A2C@<X0>(uint64_t *a1@<X8>)
{
  v6 = sub_2CC2B0();
  v7 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v5);
  sub_2CC2A0();
  v2 = type metadata accessor for SiriAudioOutputProvider();
  v3 = swift_allocObject();
  result = sub_F338(&v5, v3 + 16);
  a1[3] = v2;
  a1[4] = &off_337EB0;
  *a1 = v3;
  return result;
}

uint64_t sub_133ABC()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v4 = CATDefaultMode;
  v5 = sub_2CBC00();
  v6 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v7 = swift_allocObject();
  v28[3] = &type metadata for StringsBackedAppNameResolver;
  v28[4] = sub_2869C();
  v28[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v28[0] + 16);
  v27[3] = v5;
  v27[4] = &protocol witness table for MorphunProvider;
  v27[0] = v6;
  v26[3] = v0;
  v26[4] = &protocol witness table for FeatureFlagProvider;
  v8 = sub_F390(v26);
  (*(v1 + 16))(v8, v3, v0);
  *(v7 + 296) = v4;
  sub_EEAC(v26, v7 + 256);
  sub_EEAC(v28, v25);
  sub_EEAC(v27, v24);
  sub_EEAC(v29, v23);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v9 = sub_2CCA30();

  v10 = sub_2CCA20();
  v20[3] = v9;
  v20[4] = &protocol witness table for MultiUserConnectionProvider;
  v20[0] = v10;
  v19[3] = sub_2CB9E0();
  v19[4] = &protocol witness table for DeviceProvider;
  sub_F390(v19);
  sub_2CB9C0();
  sub_EEAC(v25, v7 + 16);
  sub_EEAC(v24, v7 + 216);
  sub_EEAC(v23, v7 + 56);
  sub_EEAC(v20, v7 + 96);
  sub_EEAC(v19, v7 + 176);
  sub_F3F4(v21, &v14, qword_34C708, &qword_2D1620);
  if (v15)
  {

    sub_30B8(v21, qword_34C708, &qword_2D1620);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    sub_F338(&v14, &v16);
  }

  else
  {
    sub_EEAC(v23, &v16);
    v11 = sub_2C9E60();
    swift_allocObject();
    v12 = sub_2C9E50();
    v17 = v11;
    v18 = &protocol witness table for ContactsManager;

    *&v16 = v12;
    sub_30B8(v21, qword_34C708, &qword_2D1620);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    if (v15)
    {
      sub_30B8(&v14, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v16, v7 + 136);
  return v7;
}

uint64_t sub_133EE4@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v1 = sub_2CC2B0();
  v37 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[3] = sub_2CDC30();
  v62[4] = &protocol witness table for ControlsFlowProvider;
  sub_F390(v62);
  sub_2CDC20();
  v8 = type metadata accessor for AudioFlowProvider();
  v9 = swift_allocObject();
  v61[3] = v1;
  v61[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v61);
  sub_2CC2A0();
  sub_2C9A00();
  sub_2CA430();
  v58[3] = sub_2CC040();
  v58[4] = &protocol witness table for NowPlayingProvider;
  sub_F390(v58);
  sub_2CC030();
  v57[4] = &off_3367A0;
  v57[3] = v8;
  v57[0] = v9;
  v38 = type metadata accessor for PommesResponseFlow(0);
  v10 = swift_allocObject();
  v11 = sub_F9A0(v57, v8);
  __chkstk_darwin(v11);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v56[4] = &off_3367A0;
  v56[3] = v8;
  v56[0] = v15;
  v16 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_input;
  v17 = sub_2CA7B0();
  (*(*(v17 - 8) + 56))(v10 + v16, 1, 1, v17);
  *(v10 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_pommesResponse) = 0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v7, v18, v4);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "PommesResponseFlow#init", v21, 2u);
  }

  (*(v5 + 8))(v7, v4);
  sub_EEAC(v62, v10 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_controlsFlowProvider);
  sub_EEAC(v56, v10 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_audioFlowProvider);
  sub_EEAC(v61, v10 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_featureFlagProvider);
  sub_EEAC(v60, v10 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker);
  sub_EEAC(v59, v10 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_publisher);
  sub_EEAC(v58, v10 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_nowPlayingProvider);
  v22 = (v10 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_addFlowWithAppResolution);
  *v22 = sub_2A1120;
  v22[1] = 0;
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v23 = CATDefaultMode;
  v24 = sub_2CBC00();
  v25 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v26 = swift_allocObject();
  v54[3] = &type metadata for StringsBackedAppNameResolver;
  v54[4] = sub_2869C();
  v54[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v54[0] + 16);
  v53[3] = v24;
  v53[4] = &protocol witness table for MorphunProvider;
  v53[0] = v25;
  v52[3] = v1;
  v52[4] = &protocol witness table for FeatureFlagProvider;
  v27 = sub_F390(v52);
  v28 = v37;
  (*(v37 + 16))(v27, v3, v1);
  *(v26 + 296) = v23;
  sub_EEAC(v52, v26 + 256);
  sub_EEAC(v54, v51);
  sub_EEAC(v53, v50);
  sub_EEAC(v55, v49);
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v29 = sub_2CCA30();

  v30 = sub_2CCA20();
  v46[3] = v29;
  v46[4] = &protocol witness table for MultiUserConnectionProvider;
  v46[0] = v30;
  v45[3] = sub_2CB9E0();
  v45[4] = &protocol witness table for DeviceProvider;
  sub_F390(v45);
  sub_2CB9C0();
  sub_EEAC(v51, v26 + 16);
  sub_EEAC(v50, v26 + 216);
  sub_EEAC(v49, v26 + 56);
  sub_EEAC(v46, v26 + 96);
  sub_EEAC(v45, v26 + 176);
  sub_F3F4(v47, &v40, qword_34C708, &qword_2D1620);
  if (v41)
  {

    sub_30B8(v47, qword_34C708, &qword_2D1620);
    sub_306C(v49);
    sub_306C(v50);
    sub_306C(v51);
    (*(v28 + 8))(v3, v1);
    sub_306C(v55);
    sub_306C(v52);
    sub_306C(v53);
    sub_306C(v54);
    sub_306C(v45);
    sub_306C(v46);
    sub_F338(&v40, &v42);
  }

  else
  {
    sub_EEAC(v49, &v42);
    v31 = sub_2C9E60();
    swift_allocObject();
    v32 = sub_2C9E50();
    v43 = v31;
    v44 = &protocol witness table for ContactsManager;

    *&v42 = v32;
    sub_30B8(v47, qword_34C708, &qword_2D1620);
    sub_306C(v49);
    sub_306C(v50);
    sub_306C(v51);
    (*(v28 + 8))(v3, v1);
    sub_306C(v55);
    sub_306C(v52);
    sub_306C(v53);
    sub_306C(v54);
    sub_306C(v45);
    sub_306C(v46);
    if (v41)
    {
      sub_30B8(&v40, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v42, v26 + 136);
  type metadata accessor for CommonMediaIntentCatDialogService();
  v33 = swift_allocObject();
  sub_306C(v59);
  sub_306C(v60);
  sub_306C(v58);
  sub_306C(v61);
  sub_306C(v62);
  sub_306C(v56);
  v33[2] = 0xD000000000000011;
  v33[3] = 0x80000000002DA8D0;
  v33[4] = v26;
  *(v10 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_commonMediaIntentCatDialogService) = v33;
  sub_306C(v57);
  v34 = v39;
  v39[3] = v38;
  result = sub_139688(&qword_3524E8, type metadata accessor for PommesResponseFlow, &unk_2D8F88);
  v34[4] = result;
  *v34 = v10;
  return result;
}

uint64_t sub_13479C(uint64_t a1, void *a2)
{
  v4 = sub_2CA7B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_352470, &qword_2D4D68);
  if (qword_34BFE8 != -1)
  {
    swift_once();
  }

  v13 = qword_35F7D0;
  v8 = qword_34BFF0;

  if (v8 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, a1, v4);

  v9 = a2;
  v13 = sub_2CA8A0();
  sub_139084(&qword_352478, &qword_352470, &qword_2D4D68);
  v10 = sub_2C97B0();

  return v10;
}

id sub_13496C(uint64_t a1)
{
  v2 = sub_2CC040();
  v10[3] = v2;
  v10[4] = &protocol witness table for NowPlayingProvider;
  v3 = sub_F390(v10);
  (*(*(v2 - 8) + 32))(v3, a1, v2);
  v4 = type metadata accessor for ShazamKitRecognizer(0);
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_result] = 0;
  sub_20410(&qword_34FF10, qword_2D3620);
  swift_storeEnumTagMultiPayload();
  sub_EEAC(v10, &v5[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_nowPlayingProvider]);
  v6 = [objc_allocWithZone(SHManagedSession) init];
  *&v5[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession] = v6;
  *&v5[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_dispatchGroup] = dispatch_group_create();
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = objc_msgSendSuper2(&v9, "init");
  sub_306C(v10);
  return v7;
}

uint64_t sub_134AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a1;
  v7 = sub_2CDFD0();
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin(v7);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CC2B0();
  v57 = *(v9 - 8);
  v58 = v9;
  __chkstk_darwin(v9);
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2CB4A0();
  v89 = &protocol witness table for SiriKitTaskLoggingProvider;
  v15 = v88;
  v87[0] = a3;
  sub_2C8E20();
  v16 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_result;
  v17 = sub_20410(&qword_3524B0, &unk_2D8440);
  (*(*(v17 - 8) + 56))(a4 + v16, 1, 1, v17);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v18, v11);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "PlayMediaRCHFlowWrapper#init", v21, 2u);
  }

  (*(v12 + 8))(v14, v11);
  sub_F3F4(v62, a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_input, &qword_34E480, &qword_2D2280);
  if (a2)
  {
    v22 = a2;
    v23 = v15;
    v24 = v58;
    v25 = v56;
  }

  else
  {
    sub_20410(&qword_3510A8, &unk_2D4D80);
    v23 = v15;
    if (qword_34C030 != -1)
    {
      swift_once();
    }

    v86[0] = static PlayMedia.flowStrategy;
    v26 = qword_34C038;

    v27 = v26 == -1;
    v24 = v58;
    v25 = v56;
    if (!v27)
    {
      swift_once();
    }

    v22 = sub_2CA8B0();
  }

  *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playMediaFlow) = v22;
  sub_EEAC(v87, a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_siriKitTaskLoggingProvider);
  v28 = qword_34BFB8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = CATDefaultMode;
  v30 = sub_2CBC00();
  v31 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v32 = swift_allocObject();
  v84 = &type metadata for StringsBackedAppNameResolver;
  v85 = sub_2869C();
  v83[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v83[0] + 16);
  v81 = v30;
  v82 = &protocol witness table for MorphunProvider;
  v80[0] = v31;
  v78 = v24;
  v79 = &protocol witness table for FeatureFlagProvider;
  v33 = sub_F390(v77);
  v34 = v57;
  (v57[2])(v33, v25, v24);
  *(v32 + 296) = v29;
  sub_EEAC(v77, v32 + 256);
  sub_EEAC(v83, v76);
  sub_EEAC(v80, v75);
  sub_EEAC(v86, v74);
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v35 = sub_2CCA30();

  v36 = sub_2CCA20();
  v70 = v35;
  v71 = &protocol witness table for MultiUserConnectionProvider;
  *&v69 = v36;
  v68[3] = sub_2CB9E0();
  v68[4] = &protocol witness table for DeviceProvider;
  sub_F390(v68);
  sub_2CB9C0();
  sub_EEAC(v76, v32 + 16);
  sub_EEAC(v75, v32 + 216);
  sub_EEAC(v74, v32 + 56);
  sub_EEAC(&v69, v32 + 96);
  sub_EEAC(v68, v32 + 176);
  sub_F3F4(v72, &v63, qword_34C708, &qword_2D1620);
  if (v64)
  {

    sub_30B8(v72, qword_34C708, &qword_2D1620);
    sub_306C(v74);
    sub_306C(v75);
    sub_306C(v76);
    (v34[1])(v25, v24);
    sub_306C(v86);
    sub_306C(v77);
    sub_306C(v80);
    sub_306C(v83);
    sub_306C(v68);
    sub_306C(&v69);
    sub_F338(&v63, &v65);
  }

  else
  {
    sub_EEAC(v74, &v65);
    v37 = sub_2C9E60();
    swift_allocObject();
    v38 = sub_2C9E50();
    v66 = v37;
    v67 = &protocol witness table for ContactsManager;

    *&v65 = v38;
    sub_30B8(v72, qword_34C708, &qword_2D1620);
    sub_306C(v74);
    sub_306C(v75);
    sub_306C(v76);
    (v34[1])(v25, v24);
    sub_306C(v86);
    sub_306C(v77);
    sub_306C(v80);
    sub_306C(v83);
    sub_306C(v68);
    sub_306C(&v69);
    if (v64)
    {
      sub_30B8(&v63, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v65, v32 + 136);
  type metadata accessor for PlayMediaCatDialogService();
  v39 = swift_allocObject();
  v39[5] = 0x6964654D79616C50;
  v39[6] = 0xEF746E65746E4961;
  v39[2] = 0xD000000000000011;
  v39[3] = 0x80000000002DA8D0;
  v58 = 0x80000000002DA8D0;
  v39[4] = v32;
  *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService) = v39;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  sub_2C9A00();
  v84 = v24;
  v85 = &protocol witness table for FeatureFlagProvider;
  sub_F390(v83);
  sub_2CC2A0();
  v81 = sub_2CC360();
  v82 = &protocol witness table for StringsFileResolver;
  sub_F390(v80);
  sub_2CC350();
  v40 = sub_2CB490();
  v78 = v23;
  v79 = &protocol witness table for SiriKitTaskLoggingProvider;
  v77[0] = v40;
  v41 = v23;
  if (qword_34C048 != -1)
  {
    swift_once();
  }

  v42 = qword_35F900;
  sub_2CBC60();
  v43 = type metadata accessor for DialogHistoryProvider();
  v75[3] = v43;
  v75[4] = &off_33CAE0;
  v75[0] = v42;
  type metadata accessor for PlayMediaDialogProvider(0);
  v44 = swift_allocObject();
  v45 = sub_F9A0(v75, v43);
  v57 = &v55;
  __chkstk_darwin(v45);
  v47 = (&v55 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = *v47;
  v74[3] = v43;
  v74[4] = &off_33CAE0;
  v74[0] = v49;
  v44[15] = v39;
  sub_EEAC(v83, (v44 + 16));
  sub_EEAC(v77, (v44 + 31));
  sub_EEAC(v74, (v44 + 21));
  sub_EEAC(v76, (v44 + 26));
  sub_EEAC(v80, v72);

  v50 = sub_2CB490();
  v70 = v41;
  v71 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v69 = v50;
  sub_306C(v76);
  sub_306C(v86);
  sub_306C(v77);
  sub_306C(v80);
  sub_306C(v83);
  sub_306C(v74);
  v44[13] = 0xD000000000000011;
  v44[14] = v58;
  v44[2] = v32;
  sub_F338(v72, (v44 + 3));
  sub_F338(&v69, (v44 + 8));
  sub_306C(v75);
  *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playMediaDialogProvider) = v44;
  sub_2C9C10();
  swift_allocObject();
  *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_viewFactory) = sub_2C9BF0();
  sub_2CC070();
  swift_allocObject();
  *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_pseSignalsStitcher) = sub_2CC060();
  sub_2CBED0();
  sub_2CBEC0();
  sub_2CBE90();

  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v51 = qword_35F760;
  v52 = v59;
  sub_2CDFB0();
  (*(v60 + 32))(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_signpost, v52, v61);
  v53 = sub_2CE9E0();
  sub_2CDF90(v53, &dword_0, v51, "playFlowFrameWrapperTotal", 25, 2, a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_signpost, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);

  sub_30B8(v62, &qword_34E480, &qword_2D2280);
  sub_306C(v87);
  return a4;
}

uint64_t sub_1356F8(uint64_t a1, void *a2)
{
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_2CA7B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_3510A8, &unk_2D4D80);
  if (qword_34C030 != -1)
  {
    swift_once();
  }

  v20 = static PlayMedia.flowStrategy;
  v11 = qword_34C038;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = *(v8 + 16);
  v12(v10, a1, v7);

  v13 = a2;
  v14 = sub_2CA8A0();
  v12(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_2CB4A0();
  v15 = sub_2CB490();
  type metadata accessor for PlayMediaRCHFlowWrapper(0);
  v16 = swift_allocObject();
  v20 = sub_134AA4(v6, v14, v15, v16);
  sub_139688(&qword_3510B0, type metadata accessor for PlayMediaRCHFlowWrapper, &unk_2D84C0);
  v17 = sub_2C97B0();

  return v17;
}

uint64_t sub_1359C4(uint64_t a1, void *a2)
{
  v4 = sub_2CC2B0();
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v9 = sub_2CA7B0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v46 = v4;
  v76[3] = v4;
  v76[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v76);
  v12 = a2;
  sub_2CC2A0();
  v13 = sub_2CC7A0();
  v14 = sub_2CC790();
  v75[3] = v13;
  v75[4] = &protocol witness table for MediaRemoteAPIProvider;
  v75[0] = v14;
  sub_2C9A00();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v73[3] = &type metadata for StringsBackedAppNameResolver;
  v15 = sub_2869C();
  v73[4] = v15;
  v16 = swift_allocObject();
  v73[0] = v16;
  sub_285EC(&static StringsBackedAppNameResolver.shared, v16 + 16);
  v45 = sub_2CB9E0();
  v72[3] = v45;
  v72[4] = &protocol witness table for DeviceProvider;
  sub_F390(v72);
  sub_2CB9C0();
  v71[3] = sub_2CDDF0();
  v71[4] = &protocol witness table for EncryptionProvider;
  sub_F390(v71);
  sub_2CDDE0();
  v17 = sub_2CC710();
  v18 = sub_2CC700();
  v70[4] = &protocol witness table for SharedContextProvider;
  v70[3] = v17;
  v70[0] = v18;
  v19 = sub_2CB4A0();
  v20 = sub_2CB490();
  v69 = &protocol witness table for SiriKitTaskLoggingProvider;
  v68 = v19;
  *&v67 = v20;
  v49 = type metadata accessor for ConfirmInterruptionFlow(0);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_input;
  v11((v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_input), 1, 1, v9);
  v23 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_intent;
  *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_intent) = 0;
  *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_originalPlayMediaRCHFlowWrapper) = 0;
  v24 = v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_state;
  *v24 = 0;
  *(v24 + 8) = 1;
  swift_beginAccess();
  v50 = v8;
  sub_BED04(v8, v21 + v22);
  swift_endAccess();
  v25 = *(v21 + v23);
  *(v21 + v23) = a2;

  sub_EEAC(v76, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_featureFlagProvider);
  sub_EEAC(v75, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_mediaRemoteAPIProvider);
  sub_EEAC(v72, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_deviceProvider);
  sub_EEAC(v74, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_aceServiceInvoker);
  sub_EEAC(v74, v66);
  v26 = CATDefaultMode;
  v27 = sub_2CBC00();
  v28 = sub_2CBBF0();

  v29 = v47;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v30 = swift_allocObject();
  v65[3] = &type metadata for StringsBackedAppNameResolver;
  v65[4] = v15;
  v65[0] = swift_allocObject();
  sub_285EC(v16 + 16, v65[0] + 16);
  v64[3] = v27;
  v64[4] = &protocol witness table for MorphunProvider;
  v64[0] = v28;
  v31 = v46;
  v63[3] = v46;
  v63[4] = &protocol witness table for FeatureFlagProvider;
  v32 = sub_F390(v63);
  v33 = v48;
  (*(v48 + 16))(v32, v29, v31);
  *(v30 + 296) = v26;
  sub_EEAC(v63, v30 + 256);
  sub_EEAC(v65, v62);
  sub_EEAC(v64, v61);
  sub_EEAC(v66, v60);
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v34 = sub_2CCA30();
  v35 = sub_2CCA20();
  v57[3] = v34;
  v57[4] = &protocol witness table for MultiUserConnectionProvider;
  v57[0] = v35;
  v56[3] = v45;
  v56[4] = &protocol witness table for DeviceProvider;
  sub_F390(v56);
  sub_2CB9C0();
  sub_EEAC(v62, v30 + 16);
  sub_EEAC(v61, v30 + 216);
  sub_EEAC(v60, v30 + 56);
  sub_EEAC(v57, v30 + 96);
  sub_EEAC(v56, v30 + 176);
  sub_F3F4(v58, &v51, qword_34C708, &qword_2D1620);
  v36 = v31;
  if (v52)
  {

    sub_30B8(v58, qword_34C708, &qword_2D1620);
    sub_306C(v60);
    sub_306C(v61);
    sub_306C(v62);
    (*(v33 + 8))(v29, v31);
    sub_306C(v66);
    sub_306C(v63);
    sub_306C(v64);
    sub_306C(v65);
    sub_306C(v56);
    sub_306C(v57);
    sub_F338(&v51, &v53);
  }

  else
  {
    sub_EEAC(v60, &v53);
    v37 = sub_2C9E60();
    swift_allocObject();
    v38 = sub_2C9E50();
    v54 = v37;
    v55 = &protocol witness table for ContactsManager;

    *&v53 = v38;
    sub_30B8(v58, qword_34C708, &qword_2D1620);
    sub_306C(v60);
    sub_306C(v61);
    sub_306C(v62);
    (*(v33 + 8))(v29, v36);
    sub_306C(v66);
    sub_306C(v63);
    sub_306C(v64);
    sub_306C(v65);
    sub_306C(v56);
    sub_306C(v57);
    if (v52)
    {
      sub_30B8(&v51, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v53, v30 + 136);
  type metadata accessor for PlayMediaCatDialogService();
  v39 = swift_allocObject();
  v39[5] = 0x6964654D79616C50;
  v39[6] = 0xEF746E65746E4961;
  v39[2] = 0xD000000000000011;
  v39[3] = 0x80000000002DA8D0;
  v39[4] = v30;
  *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_playMediaCatDialogService) = v39;
  sub_2C9C10();
  swift_allocObject();
  *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_viewFactory) = sub_2C9BF0();
  sub_EEAC(v73, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_appNameResolver);
  sub_EEAC(v71, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_encryptionProvider);
  sub_EEAC(v70, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_sharedContextProvider);
  sub_EEAC(v76, v66);
  sub_EEAC(v74, v65);
  v40 = sub_2CBCD0();
  swift_allocObject();
  v41 = sub_2CBCB0();
  v42 = (v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_seDeviceProvider);
  v42[3] = v40;
  v42[4] = &protocol witness table for SEDeviceProvider;
  *v42 = v41;
  sub_306C(v74);
  sub_30B8(v50, &qword_34E480, &qword_2D2280);
  sub_306C(v70);
  sub_306C(v71);
  sub_306C(v72);
  sub_306C(v73);
  sub_306C(v75);
  sub_306C(v76);
  sub_F338(&v67, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_siriKitTaskLoggingProvider);
  v76[0] = v21;
  sub_139688(&qword_34ED60, type metadata accessor for ConfirmInterruptionFlow, &unk_2D4088);
  v43 = sub_2C97B0();

  return v43;
}

uint64_t sub_1362C8(unint64_t *a1)
{
  v64 = a1;
  v63 = sub_2CC2B0();
  v1 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20410(&qword_34E480, &qword_2D2280);
  v3 = __chkstk_darwin(v60);
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v60 - v6;
  __chkstk_darwin(v5);
  v9 = &v60 - v8;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  sub_F3F4(v64, v9, &qword_34E480, &qword_2D2280);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  v17 = os_log_type_enabled(v15, v16);
  v62 = v1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v99[0] = v19;
    *v18 = 136315138;
    sub_F3F4(v9, v7, &qword_34E480, &qword_2D2280);
    v20 = sub_2CE2A0();
    v60 = v10;
    v22 = v21;
    sub_30B8(v9, &qword_34E480, &qword_2D2280);
    v23 = sub_3F08(v20, v22, v99);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_0, v15, v16, "Returning ambiguousPlayFlow with %s", v18, 0xCu);
    sub_306C(v19);

    (*(v11 + 8))(v13, v60);
  }

  else
  {

    sub_30B8(v9, &qword_34E480, &qword_2D2280);
    (*(v11 + 8))(v13, v10);
  }

  v24 = v65;
  sub_F3F4(v64, v65, &qword_34E480, &qword_2D2280);
  sub_2CA430();
  v98[3] = sub_2CDC30();
  v98[4] = &protocol witness table for ControlsFlowProvider;
  sub_F390(v98);
  sub_2CDC20();
  v25 = type metadata accessor for AudioFlowProvider();
  v26 = swift_allocObject();
  v27 = sub_2CC6F0();
  swift_allocObject();
  v28 = sub_2CC6E0();
  v97[3] = v27;
  v97[4] = &protocol witness table for NetworkStatusProvider;
  v97[0] = v28;
  sub_2C9A00();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v95[3] = &type metadata for StringsBackedAppNameResolver;
  v60 = sub_2869C();
  v95[4] = v60;
  v29 = swift_allocObject();
  v95[0] = v29;
  sub_285EC(&static StringsBackedAppNameResolver.shared, v29 + 16);
  v30 = sub_2CBCD0();
  v31 = sub_2CBCC0();
  v94 = &protocol witness table for SEDeviceProvider;
  v93 = v30;
  *&v92 = v31;
  v32 = v63;
  v90 = v63;
  v91 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v89);
  sub_2CC2A0();
  v33 = sub_2CB4A0();
  v34 = sub_2CB490();
  v88 = &protocol witness table for SiriKitTaskLoggingProvider;
  v87 = v33;
  *&v86 = v34;
  v85[4] = &off_3367A0;
  v85[3] = v25;
  v85[0] = v26;
  type metadata accessor for AmbiguousPlayFlow(0);
  v35 = swift_allocObject();
  v36 = sub_F9A0(v85, v25);
  v64 = &v60;
  __chkstk_darwin(v36);
  v38 = (&v60 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = *v38;
  v84 = &off_3367A0;
  v83 = v25;
  *&v82 = v40;
  v41 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_input;
  v42 = sub_2CA7B0();
  (*(*(v42 - 8) + 56))(&v35[v41], 1, 1, v42);
  v35[OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state] = 0;
  *&v35[OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_shimAudioExperience] = 0;
  v43 = &v35[OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_shimError];
  *v43 = 0;
  *(v43 + 1) = 0;
  swift_beginAccess();
  sub_BED04(v24, &v35[v41]);
  swift_endAccess();
  sub_EEAC(v98, (v35 + 16));
  sub_EEAC(v97, (v35 + 56));
  sub_EEAC(v96, (v35 + 112));
  sub_EEAC(v95, (v35 + 152));
  sub_EEAC(v96, v81);
  v44 = CATDefaultMode;
  v45 = sub_2CBC00();
  v46 = sub_2CBBF0();
  v47 = v61;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v48 = swift_allocObject();
  v80[3] = &type metadata for StringsBackedAppNameResolver;
  v80[4] = v60;
  v80[0] = swift_allocObject();
  sub_285EC(v29 + 16, v80[0] + 16);
  v79[3] = v45;
  v79[4] = &protocol witness table for MorphunProvider;
  v79[0] = v46;
  v78[3] = v32;
  v78[4] = &protocol witness table for FeatureFlagProvider;
  v49 = sub_F390(v78);
  v50 = v62;
  (*(v62 + 16))(v49, v47, v32);
  *(v48 + 296) = v44;
  sub_EEAC(v78, v48 + 256);
  sub_EEAC(v80, v77);
  sub_EEAC(v79, v76);
  sub_EEAC(v81, v75);
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  v51 = sub_2CCA30();

  v52 = sub_2CCA20();
  v72[3] = v51;
  v72[4] = &protocol witness table for MultiUserConnectionProvider;
  v72[0] = v52;
  v71[3] = sub_2CB9E0();
  v71[4] = &protocol witness table for DeviceProvider;
  sub_F390(v71);
  sub_2CB9C0();
  sub_EEAC(v77, v48 + 16);
  sub_EEAC(v76, v48 + 216);
  sub_EEAC(v75, v48 + 56);
  sub_EEAC(v72, v48 + 96);
  sub_EEAC(v71, v48 + 176);
  sub_F3F4(v73, &v66, qword_34C708, &qword_2D1620);
  if (v67)
  {

    sub_30B8(v73, qword_34C708, &qword_2D1620);
    sub_306C(v75);
    sub_306C(v76);
    sub_306C(v77);
    (*(v50 + 8))(v47, v32);
    sub_306C(v81);
    sub_306C(v78);
    sub_306C(v79);
    sub_306C(v80);
    sub_306C(v71);
    sub_306C(v72);
    sub_F338(&v66, &v68);
  }

  else
  {
    sub_EEAC(v75, &v68);
    v53 = v47;
    v54 = sub_2C9E60();
    swift_allocObject();
    v55 = sub_2C9E50();
    v69 = v54;
    v70 = &protocol witness table for ContactsManager;

    *&v68 = v55;
    sub_30B8(v73, qword_34C708, &qword_2D1620);
    sub_306C(v75);
    sub_306C(v76);
    sub_306C(v77);
    (*(v50 + 8))(v53, v32);
    sub_306C(v81);
    sub_306C(v78);
    sub_306C(v79);
    sub_306C(v80);
    sub_306C(v71);
    sub_306C(v72);
    if (v67)
    {
      sub_30B8(&v66, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v68, v48 + 136);
  type metadata accessor for PlayMediaCatDialogService();
  v56 = swift_allocObject();
  v56[6] = 0xEF746E65746E4961;
  v56[2] = 0xD000000000000011;
  v56[3] = 0x80000000002DA8D0;
  v56[4] = v48;
  v56[5] = 0x6964654D79616C50;
  *(v35 + 12) = v56;
  sub_2C9C10();
  swift_allocObject();
  v57 = sub_2C9BF0();
  sub_306C(v96);
  sub_30B8(v65, &qword_34E480, &qword_2D2280);
  sub_306C(v95);
  sub_306C(v97);
  sub_306C(v98);
  *(v35 + 13) = v57;
  sub_F338(&v92, (v35 + 192));
  sub_F338(&v89, (v35 + 232));
  sub_F338(&v82, (v35 + 272));
  sub_F338(&v86, (v35 + 312));
  sub_F338(v99, (v35 + 352));
  *(v35 + 49) = sub_20AE68;
  *(v35 + 50) = 0;
  sub_306C(v85);
  *&v99[0] = v35;
  sub_139688(&qword_352480, type metadata accessor for AmbiguousPlayFlow, &unk_2D7700);
  v58 = sub_2C97B0();

  return v58;
}

uint64_t sub_136E6C(void *a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_2CA7B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Initializing Determine Strategy", v14, 2u);
  }

  (*(v8 + 8))(v10, v7);
  if (qword_34BF70 != -1)
  {
    swift_once();
  }

  v15 = qword_35F728;
  if (qword_34BF78 != -1)
  {
    swift_once();
  }

  sub_20410(&qword_3524B8, &qword_2D4D90);
  v21 = v15;
  (*(v4 + 16))(v6, a2, v3);

  v16 = v20;
  v21 = sub_2CA8A0();
  sub_139084(&qword_3524C0, &qword_3524B8, &qword_2D4D90);
  v17 = sub_2C97B0();

  return v17;
}

uint64_t sub_1371BC(uint64_t a1)
{
  v48 = a1;
  v1 = sub_2CC040();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v45 - v6;
  v47 = type metadata accessor for AcousticIDFlow.State(0);
  __chkstk_darwin(v47);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v9 - 8);
  v49 = &v45 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v46 = v7;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Initializing AcousticIDFlow", v18, 2u);
    v7 = v46;
  }

  (*(v12 + 8))(v14, v11);
  v19 = v49;
  sub_F3F4(v48, v49, &qword_34E480, &qword_2D2280);
  v20 = v50;
  swift_storeEnumTagMultiPayload();
  sub_2CC030();
  (*(v2 + 16))(v5, v7, v1);
  v21 = sub_13496C(v5);
  (*(v2 + 8))(v7, v1);
  v69[3] = type metadata accessor for ShazamKitRecognizer(0);
  v69[4] = &off_334628;
  v69[0] = v21;
  v22 = sub_2CC610();
  v23 = sub_2CC600();
  v68[3] = v22;
  v68[4] = &protocol witness table for ShazamSessionManager;
  v68[0] = v23;
  sub_2C99F0();
  v24 = sub_133ABC();
  sub_2CA430();
  v25 = sub_2CB4A0();
  v26 = sub_2CB490();
  v64 = v25;
  v65 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v63 = v26;
  v61 = sub_2CC650();
  v62 = &protocol witness table for SubscriptionProvider;
  sub_F390(&v60);
  sub_2CC630();
  v27 = sub_2CC2B0();
  v58 = v27;
  v59 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v57);
  sub_2CC2A0();
  v55 = v27;
  v56 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v54);
  sub_2CC2A0();
  v28 = type metadata accessor for SiriAudioOutputProvider();
  v29 = swift_allocObject();
  sub_F338(&v54, v29 + 16);
  v55 = v28;
  v56 = &off_337EB0;
  *&v54 = v29;
  type metadata accessor for AcousticIDFlow(0);
  v30 = swift_allocObject();
  v31 = sub_F9A0(&v54, v28);
  __chkstk_darwin(v31);
  v33 = (&v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v33;
  v52 = v28;
  v53 = &off_337EB0;
  *&v51 = v35;
  v36 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input;
  v37 = sub_2CA7B0();
  (*(*(v37 - 8) + 56))(v30 + v36, 1, 1, v37);
  *(v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) = 0;
  *(v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_isInAmbient) = 0;
  swift_beginAccess();
  sub_BED04(v19, v30 + v36);
  swift_endAccess();
  sub_EEAC(v69, v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer);
  sub_EEAC(v68, v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager);
  type metadata accessor for AcousticIdCatDialogService();
  v38 = swift_allocObject();
  v38[5] = 0xD000000000000010;
  v38[6] = 0x80000000002DDBD0;
  v38[2] = 0xD000000000000011;
  v38[3] = 0x80000000002DA8D0;
  v38[4] = v24;
  *(v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService) = v38;
  sub_EEAC(v67, v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync);
  sub_2C9C10();
  swift_allocObject();
  v39 = sub_2C9BF0();
  sub_306C(v67);
  sub_30B8(v19, &qword_34E480, &qword_2D2280);
  sub_306C(v68);
  sub_306C(v69);
  *(v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_viewFactory) = v39;
  sub_1390D8(v20, v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state);
  sub_F338(&v66, v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher);
  sub_F338(&v63, v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider);
  sub_F338(&v60, v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider);
  sub_F338(&v57, v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider);
  sub_F338(&v51, v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider);
  sub_306C(&v54);
  v69[0] = v30;
  sub_139688(&qword_3524C8, type metadata accessor for AcousticIDFlow, &unk_2D5280);
  v40 = sub_2C97B0();

  sub_20410(&qword_3524A0, &qword_2D5F70);
  sub_2C9620();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2D0090;
  sub_2C9600();
  type metadata accessor for GuardedFlow();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = 0;
  *(v42 + 32) = v41;
  v69[0] = v42;
  sub_139688(&qword_3524A8, type metadata accessor for GuardedFlow, &protocol conformance descriptor for GuardedFlow);
  v43 = sub_2C97B0();

  return v43;
}

uint64_t sub_137A7C(uint64_t a1, void *a2)
{
  v4 = sub_2CA7B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_352490, &unk_2D4D70);
  if (qword_34BF20 != -1)
  {
    swift_once();
  }

  v16 = qword_35F500;
  v8 = qword_34BF28;

  if (v8 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, a1, v4);

  v9 = a2;
  v16 = sub_2CA8A0();
  sub_139084(&qword_352498, &qword_352490, &unk_2D4D70);
  v10 = sub_2C97B0();
  sub_20410(&qword_3524A0, &qword_2D5F70);
  sub_2C9620();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2D0090;
  sub_2C9610();
  type metadata accessor for GuardedFlow();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = 0;
  *(v12 + 32) = v11;
  v16 = v12;
  sub_139688(&qword_3524A8, type metadata accessor for GuardedFlow, &protocol conformance descriptor for GuardedFlow);

  v13 = sub_2C97B0();

  return v13;
}

uint64_t sub_137D70(uint64_t a1)
{
  v48 = a1;
  v1 = sub_2CC2B0();
  v51 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_2CA7B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v49 = v6;
  v44 = v8 + 56;
  v45 = v9;
  v9(v6, 1, 1, v7);
  v82[3] = sub_2CDC30();
  v82[4] = &protocol witness table for ControlsFlowProvider;
  sub_F390(v82);
  sub_2CDC20();
  v10 = type metadata accessor for AudioFlowProvider();
  v11 = swift_allocObject();
  sub_2CA430();
  v12 = sub_2CB4A0();
  v13 = sub_2CB490();
  v80[3] = v12;
  v80[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v80[0] = v13;
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v79[3] = &type metadata for StringsBackedAppNameResolver;
  v47 = sub_2869C();
  v79[4] = v47;
  v46 = swift_allocObject();
  v79[0] = v46;
  sub_285EC(&static StringsBackedAppNameResolver.shared, v46 + 16);
  v77 = v1;
  v78 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v76);
  sub_2CC2A0();
  v14 = type metadata accessor for SiriAudioOutputProvider();
  v15 = swift_allocObject();
  sub_F338(&v76, v15 + 16);
  sub_2C9A00();
  sub_2CC2A0();
  v75[4] = &off_3367A0;
  v75[3] = v10;
  v75[0] = v11;
  v74 = &off_337EB0;
  v73 = v14;
  v72[0] = v15;
  v53 = type metadata accessor for AmbiguousShuffleFlow(0);
  v16 = swift_allocObject();
  v17 = sub_F9A0(v75, v10);
  v52 = &v44;
  __chkstk_darwin(v17);
  v19 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_F9A0(v72, v73);
  v50 = &v44;
  __chkstk_darwin(v21);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v19;
  v26 = *v23;
  v71[4] = &off_3367A0;
  v71[3] = v10;
  v71[0] = v25;
  v70[4] = &off_337EB0;
  v27 = v1;
  v28 = v3;
  v70[3] = v14;
  v70[0] = v26;
  v29 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_input;
  v45(v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_input, 1, 1, v7);
  swift_beginAccess();
  v30 = v49;
  sub_BED04(v49, v16 + v29);
  swift_endAccess();
  sub_EEAC(v82, v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_controlsFlowProvider);
  sub_EEAC(v71, v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_audioFlowProvider);
  *(v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_fallbackFlow) = v48;
  sub_EEAC(v81, v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_publisher);
  sub_EEAC(v80, v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider);
  sub_EEAC(v79, v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_appNameResolver);
  sub_EEAC(v70, v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_outputProvider);
  sub_EEAC(&v76, v69);
  v31 = CATDefaultMode;
  v32 = sub_2CBC00();

  v33 = sub_2CBBF0();
  type metadata accessor for CatService();
  v34 = swift_allocObject();
  v68[3] = &type metadata for StringsBackedAppNameResolver;
  v68[4] = v47;
  v68[0] = swift_allocObject();
  sub_285EC(v46 + 16, v68[0] + 16);
  v67[3] = v32;
  v67[4] = &protocol witness table for MorphunProvider;
  v67[0] = v33;
  v66[3] = v27;
  v66[4] = &protocol witness table for FeatureFlagProvider;
  v35 = sub_F390(v66);
  v36 = v51;
  (*(v51 + 16))(v35, v28, v27);
  *(v34 + 296) = v31;
  sub_EEAC(v66, v34 + 256);
  sub_EEAC(v68, v65);
  sub_EEAC(v67, v64);
  sub_EEAC(v69, v63);
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v37 = sub_2CCA30();

  v38 = sub_2CCA20();
  v60[3] = v37;
  v60[4] = &protocol witness table for MultiUserConnectionProvider;
  v60[0] = v38;
  v59[3] = sub_2CB9E0();
  v59[4] = &protocol witness table for DeviceProvider;
  sub_F390(v59);
  sub_2CB9C0();
  sub_EEAC(v65, v34 + 16);
  sub_EEAC(v64, v34 + 216);
  sub_EEAC(v63, v34 + 56);
  sub_EEAC(v60, v34 + 96);
  sub_EEAC(v59, v34 + 176);
  sub_F3F4(v61, &v54, qword_34C708, &qword_2D1620);
  if (v55)
  {

    sub_30B8(v61, qword_34C708, &qword_2D1620);
    sub_306C(v63);
    sub_306C(v64);
    sub_306C(v65);
    sub_306C(v69);
    sub_306C(v66);
    sub_306C(v67);
    sub_306C(v68);
    sub_306C(v59);
    sub_306C(v60);
    sub_F338(&v54, &v56);
  }

  else
  {
    sub_EEAC(v63, &v56);
    v39 = sub_2C9E60();
    swift_allocObject();
    v40 = sub_2C9E50();
    v57 = v39;
    v58 = &protocol witness table for ContactsManager;

    *&v56 = v40;
    sub_30B8(v61, qword_34C708, &qword_2D1620);
    sub_306C(v63);
    sub_306C(v64);
    sub_306C(v65);
    sub_306C(v69);
    sub_306C(v66);
    sub_306C(v67);
    sub_306C(v68);
    sub_306C(v59);
    sub_306C(v60);
    if (v55)
    {
      sub_30B8(&v54, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v56, v34 + 136);
  type metadata accessor for PlayMediaCatDialogService();
  v41 = swift_allocObject();
  v41[5] = 0x6964654D79616C50;
  v41[6] = 0xEF746E65746E4961;
  (*(v36 + 8))(v28, v27);
  sub_306C(&v76);
  sub_306C(v81);
  sub_30B8(v30, &qword_34E480, &qword_2D2280);
  sub_306C(v79);
  sub_306C(v80);
  sub_306C(v82);
  sub_306C(v70);
  sub_306C(v71);
  v41[2] = 0xD000000000000011;
  v41[3] = 0x80000000002DA8D0;
  v41[4] = v34;
  *(v16 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_playMediaCatDialogService) = v41;
  sub_306C(v72);
  sub_306C(v75);
  v82[0] = v16;
  sub_139688(&qword_3524E0, type metadata accessor for AmbiguousShuffleFlow, &unk_2D2E30);
  v42 = sub_2C97B0();

  return v42;
}

uint64_t sub_1386E8()
{
  v0 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_2CA7B0();
  v4 = *(v3 - 8);
  v28 = *(v4 + 56);
  v29 = v4 + 56;
  v28(v2, 1, 1, v3);
  v5 = type metadata accessor for AudioFlowProvider();
  v6 = swift_allocObject();
  v44[3] = sub_2CC040();
  v44[4] = &protocol witness table for NowPlayingProvider;
  sub_F390(v44);
  sub_2CC030();
  v7 = sub_133ABC();
  v42 = sub_2CDE30();
  v43 = &protocol witness table for DeviceResolutionProvider;
  sub_F390(&v41);
  sub_2CDE20();
  v8 = sub_2CC710();
  v9 = sub_2CC700();
  v39 = v8;
  v40 = &protocol witness table for SharedContextProvider;
  *&v38 = v9;
  type metadata accessor for DetermineFlowStrategy();
  v10 = swift_allocObject();
  sub_F338(&v41, v10 + 16);
  sub_F338(&v38, v10 + 56);
  v11 = sub_2CB4A0();
  v12 = sub_2CB490();
  v42 = v11;
  v43 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v41 = v12;
  sub_2C99F0();
  v13 = sub_2CBC40();
  swift_allocObject();
  v14 = sub_2CBC30();
  v36 = v13;
  v37 = &protocol witness table for AppIntentInvoker;
  *&v35 = v14;
  v33 = sub_2CC2B0();
  v34 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v32);
  sub_2CC2A0();
  v31[3] = v5;
  v31[4] = &off_3367A0;
  v31[0] = v6;
  type metadata accessor for AmbiguousDetermineFlow(0);
  v15 = swift_allocObject();
  v16 = sub_F9A0(v31, v5);
  __chkstk_darwin(v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v30[3] = v5;
  v30[4] = &off_3367A0;
  v30[0] = v20;
  v21 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input;
  v28(&v15[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input], 1, 1, v3);
  swift_beginAccess();
  sub_BED04(v2, &v15[v21]);
  swift_endAccess();
  sub_EEAC(v30, (v15 + 16));
  sub_EEAC(v44, (v15 + 56));
  *(v15 + 12) = v10;
  sub_EEAC(&v41, (v15 + 104));
  type metadata accessor for DetermineCatDialogService();
  v22 = swift_allocObject();
  v22[6] = 0xEF746E65746E4965;
  v22[2] = 0xD000000000000011;
  v22[3] = 0x80000000002DA8D0;
  v22[4] = v7;
  v22[5] = 0x6E696D7265746544;
  *(v15 + 18) = v22;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v23 = swift_allocObject();
  v23[2] = 0xD000000000000011;
  v23[3] = 0x80000000002DA8D0;
  v23[4] = v7;
  *(v15 + 19) = v23;
  sub_EEAC(&v38, (v15 + 160));
  sub_2C9C10();
  swift_allocObject();

  v24 = sub_2C9BF0();
  sub_306C(&v38);
  sub_30B8(v2, &qword_34E480, &qword_2D2280);
  sub_306C(&v41);
  sub_306C(v44);
  sub_306C(v30);
  *(v15 + 25) = v24;
  sub_F338(&v35, (v15 + 208));
  sub_F338(&v32, (v15 + 248));
  sub_306C(v31);
  v44[0] = v15;
  sub_139688(&qword_3524D8, type metadata accessor for AmbiguousDetermineFlow, &unk_2D7140);
  v25 = sub_2C97B0();

  return v25;
}

uint64_t sub_138BA8(uint64_t a1)
{
  v2 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  sub_F3F4(a1, &v29 - v3, &qword_34E480, &qword_2D2280);
  if (!sub_2CB460())
  {
    sub_2CB180();
    sub_2CB170();
  }

  v30 = sub_2CB160();

  v5 = type metadata accessor for AudioFlowProvider();
  v6 = swift_allocObject();
  v7 = sub_2CC2B0();
  v43 = v7;
  v44 = &protocol witness table for FeatureFlagProvider;
  sub_F390(v42);
  sub_2CC2A0();
  v8 = sub_2CB4A0();
  v9 = sub_2CB490();
  v40 = v8;
  v41 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v39 = v9;
  v10 = sub_2CC900();
  swift_allocObject();
  v11 = sub_2CC8F0();
  v43 = v10;
  v44 = &protocol witness table for AppleMediaServicesProvider;
  v42[0] = v11;
  v12 = sub_133ABC();
  sub_2CA430();
  v13 = sub_2CB490();
  v37 = v8;
  v38 = &protocol witness table for SiriKitTaskLoggingProvider;
  v35 = &protocol witness table for FeatureFlagProvider;
  *&v36 = v13;
  v34 = v7;
  sub_F390(&v33);
  sub_2CC2A0();
  v32[3] = v5;
  v32[4] = &off_3367A0;
  v32[0] = v6;
  type metadata accessor for SwitchNewsSourcePreferenceFlow(0);
  v14 = swift_allocObject();
  v15 = sub_F9A0(v32, v5);
  __chkstk_darwin(v15);
  v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v31[3] = v5;
  v31[4] = &off_3367A0;
  v31[0] = v19;
  v20 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_input;
  v21 = sub_2CA7B0();
  (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_parse;
  v23 = sub_2CA870();
  (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
  v24 = (v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier);
  *v25 = 0;
  v25[1] = 0;
  swift_beginAccess();
  sub_BED04(v4, v14 + v20);
  swift_endAccess();
  *(v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_networkAvailabilityProvider) = v30;
  sub_EEAC(v31, v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_audioFlowProvider);
  sub_EEAC(v42, v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_appleMediaServicesProvider);
  type metadata accessor for PlayMediaCatDialogService();
  v26 = swift_allocObject();
  v26[5] = 0x6964654D79616C50;
  v26[6] = 0xEF746E65746E4961;
  sub_30B8(v4, &qword_34E480, &qword_2D2280);
  sub_306C(v42);
  sub_306C(v31);
  v26[2] = 0xD000000000000011;
  v26[3] = 0x80000000002DA8D0;
  v26[4] = v12;
  *(v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_playMediaCatDialogService) = v26;
  sub_F338(&v39, v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_publisher);
  sub_F338(&v36, v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider);
  sub_F338(&v33, v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_featureFlagProvider);
  *(v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_httpCallAttemptState) = 0;
  sub_306C(v32);
  v42[0] = v14;
  sub_139688(&qword_352488, type metadata accessor for SwitchNewsSourcePreferenceFlow, &unk_2D72D0);
  v27 = sub_2C97B0();

  return v27;
}

uint64_t sub_139084(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2DB30(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1390D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcousticIDFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13913C()
{
  v0 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_2CA7B0();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v5 = type metadata accessor for AudioFlowProvider();
  v6 = swift_allocObject();
  v37[3] = sub_2CDE30();
  v37[4] = &protocol witness table for DeviceResolutionProvider;
  sub_F390(v37);
  sub_2CDE20();
  v36[3] = sub_2CDDF0();
  v36[4] = &protocol witness table for EncryptionProvider;
  sub_F390(v36);
  sub_2CDDE0();
  v7 = sub_2CC710();
  v8 = sub_2CC700();
  v35[3] = v7;
  v35[4] = &protocol witness table for SharedContextProvider;
  v35[0] = v8;
  sub_2C9A00();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v33[3] = &type metadata for StringsBackedAppNameResolver;
  v33[4] = sub_2869C();
  v33[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v33[0] + 16);
  v23 = sub_1334D4();
  v9 = sub_2CB4A0();
  v10 = sub_2CB490();
  v31 = v9;
  v32 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v30 = v10;
  v28 = sub_2CC040();
  v29 = &protocol witness table for NowPlayingProvider;
  sub_F390(&v27);
  sub_2CC030();
  v26[3] = v5;
  v26[4] = &off_3367A0;
  v26[0] = v6;
  type metadata accessor for ShuffleOnDeviceFlow(0);
  v11 = swift_allocObject();
  v12 = sub_F9A0(v26, v5);
  v24 = &v22;
  __chkstk_darwin(v12);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v25[3] = v5;
  v25[4] = &off_3367A0;
  v25[0] = v16;
  v17 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_input;
  v4((v11 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_input), 1, 1, v3);
  swift_beginAccess();
  sub_BED04(v2, v11 + v17);
  swift_endAccess();
  sub_EEAC(v25, v11 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_audioFlowProvider);
  sub_EEAC(v37, v11 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider);
  sub_EEAC(v36, v11 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider);
  sub_EEAC(v35, v11 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider);
  sub_EEAC(v34, v11 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_aceServiceInvoker);
  sub_EEAC(v33, v11 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver);
  type metadata accessor for PlayMediaCatDialogService();
  v18 = swift_allocObject();
  v18[5] = 0x6964654D79616C50;
  v18[6] = 0xEF746E65746E4961;
  v18[2] = 0xD000000000000011;
  v18[3] = 0x80000000002DA8D0;
  v18[4] = v23;
  *(v11 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_playMediaCatDialogService) = v18;
  sub_2C9C10();
  swift_allocObject();
  v19 = sub_2C9BF0();
  sub_306C(v34);
  sub_30B8(v2, &qword_34E480, &qword_2D2280);
  sub_306C(v33);
  sub_306C(v35);
  sub_306C(v36);
  sub_306C(v37);
  sub_306C(v25);
  *(v11 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_viewFactory) = v19;
  sub_F338(&v30, v11 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider);
  sub_F338(&v27, v11 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider);
  sub_306C(v26);
  v37[0] = v11;
  sub_139688(&qword_3524D0, type metadata accessor for ShuffleOnDeviceFlow, &unk_2D3E50);
  v20 = sub_2C97B0();

  return v20;
}

uint64_t sub_139688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void Determine.HandleIntentStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v68 = a3;
  v69 = a4;
  v67 = a2;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v62 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v63 = &v61 - v14;
  __chkstk_darwin(v13);
  v16 = &v61 - v15;
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v64 = *(v10 + 16);
  v65 = v17;
  v64(v16, v17, v9);

  v18 = sub_2CDFE0();
  v19 = sub_2CE670();

  v20 = os_log_type_enabled(v18, v19);
  v70 = v5;
  v71 = a1;
  v66 = v10;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v61 = a5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v72 = a1;
    v73 = v23;
    *v22 = 136315138;
    sub_2CCFB0();
    sub_14010C(&qword_34C170, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
    v24 = sub_2CEE70();
    v26 = sub_3F08(v24, v25, &v73);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_0, v18, v19, "Determine+HandleIntentStrategy#makeIntentHandledResponse for app: %s", v22, 0xCu);
    sub_306C(v23);
    v6 = v70;

    a5 = v61;
  }

  v27 = *(v10 + 8);
  v27(v16, v9);
  v28 = v9;
  sub_35E0(v6 + 15, v6[18]);
  if (sub_2CC4B0())
  {
    v29 = v63;
    v64(v63, v65, v9);
    v30 = v71;

    v31 = sub_2CDFE0();
    v32 = sub_2CE670();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v72 = v30;
      v73 = v34;
      *v33 = 136315394;
      sub_2CCFB0();
      sub_14010C(&qword_34C170, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
      v35 = sub_2CEE70();
      v37 = sub_3F08(v35, v36, &v73);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      v38 = sub_2CCCA0();
      v40 = sub_3F08(v38, v39, &v73);

      *(v33 + 14) = v40;
      v30 = v71;
      _os_log_impl(&dword_0, v31, v32, "Determine+HandleIntentStrategy#makeIntentHandledResponseWithRF for app: %s %{public}s", v33, 0x16u);
      swift_arrayDestroy();

      v41 = v63;
    }

    else
    {

      v41 = v29;
    }

    v27(v41, v28);

    v55 = v70;

    v56 = v67;
    v57 = v68;

    sub_14DDCC(v56, v55, v30, v56, v57, v69, a5);
  }

  else
  {
    v42 = v62;
    v64(v62, v65, v9);
    v43 = v71;

    v44 = sub_2CDFE0();
    v45 = sub_2CE670();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v65 = v28;
      v47 = v46;
      v48 = v6;
      v49 = swift_slowAlloc();
      v72 = v43;
      v73 = v49;
      *v47 = 136315138;
      sub_2CCFB0();
      sub_14010C(&qword_34C170, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
      v50 = sub_2CEE70();
      v52 = sub_3F08(v50, v51, &v73);

      *(v47 + 4) = v52;
      v43 = v71;
      _os_log_impl(&dword_0, v44, v45, "Determine+HandleIntentStrategy#makeIntentHandledResponse for app: %s", v47, 0xCu);
      sub_306C(v49);
      v6 = v48;

      v53 = v65;
      v54 = v62;
    }

    else
    {

      v54 = v42;
      v53 = v28;
    }

    v27(v54, v53);
    v58 = v6[8];

    v59 = v67;
    v60 = v68;

    sub_DD150(v43, v59, v58, v6, v69, a5, v43, v59, v60);
  }
}

void Determine.HandleIntentStrategy.makeIntentHandledResponseLegacy(app:intent:intentResponse:_:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v30 = a3;
  v31 = a4;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_2CDFE0();
  v16 = sub_2CE670();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v6;
    v20 = v19;
    v32 = a1;
    v33 = v19;
    *v18 = 136315138;
    sub_2CCFB0();
    v27 = a2;
    sub_14010C(&qword_34C170, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
    v21 = sub_2CEE70();
    v23 = sub_3F08(v21, v22, &v33);

    *(v18 + 4) = v23;
    a2 = v27;
    _os_log_impl(&dword_0, v15, v16, "Determine+HandleIntentStrategy#makeIntentHandledResponse for app: %s", v18, 0xCu);
    sub_306C(v20);
    v6 = v28;

    a5 = v29;
  }

  (*(v11 + 8))(v13, v10);
  v24 = *(v6 + 64);

  v25 = a2;
  v26 = v30;
  sub_DD150(a1, v25, v24, v6, v31, a5, a1, v25, v26);
}

uint64_t sub_13A118(uint64_t a1, char a2, void *a3, void (*a4)(void *), uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v56 = a7;
  v57 = a8;
  v58 = a6;
  v63 = a4;
  v64 = a5;
  v65 = a1;
  v10 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v13 - 8);
  v62 = &v55 - v14;
  v15 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = sub_2CB970();
  v60 = *(v18 - 8);
  v61 = v18;
  __chkstk_darwin(v18);
  v59 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CCB30();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCAC0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v24);
    (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v20);
    swift_getErrorValue();
    sub_2CEEF0();
    v28 = sub_2CCAE0();
    v57 = v29;
    v58 = v28;

    (*(v21 + 8))(v23, v20);
    (*(v25 + 8))(v27, v24);
    v30 = a3[6];
    v56 = a3[7];
    v55 = sub_35E0(a3 + 3, v30);
    v32 = v59;
    v31 = v60;
    v33 = v61;
    (*(v60 + 104))(v59, enum case for TypeOfIntent.determine(_:), v61);
    v34 = enum case for ActivityType.failed(_:);
    v35 = sub_2C9C20();
    v36 = *(v35 - 8);
    (*(v36 + 104))(v17, v34, v35);
    (*(v36 + 56))(v17, 0, 1, v35);
    v37 = sub_2CA130();
    v38 = v62;
    (*(*(v37 - 8) + 56))(v62, 1, 1, v37);
    v39 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v40 = sub_2C98F0();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v12, v39, v40);
    (*(v41 + 56))(v12, 0, 1, v40);
    sub_2CB4C0();

    sub_30B8(v12, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v38, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v17, &qword_34CB88, &unk_2D0D90);
    (*(v31 + 8))(v32, v33);
    v66[0] = v65;
    v67 = 1;
    swift_errorRetain();
    v63(v66);
    return sub_30B8(v66, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v43 = swift_allocObject();
    v44 = v63;
    v45 = v64;
    *(v43 + 16) = a3;
    *(v43 + 24) = v44;
    v47 = v56;
    v46 = v57;
    *(v43 + 32) = v45;
    *(v43 + 40) = v47;
    *(v43 + 48) = v46;
    v48 = v65;
    *(v43 + 56) = v65;
    sub_140154(v48, 0);

    v49 = v47;
    v50 = v46;
    v51 = [v49 targetDeviceIds];
    if (v51 && (v52 = v51, v53 = sub_2CE410(), v52, v54 = *(v53 + 16), , v54))
    {
      sub_4843C(v58, v49, sub_DE0C8, v43);
    }

    else
    {
      sub_45370(v58, v49, sub_DE0C8, v43);
    }
  }
}

uint64_t sub_13A804(uint64_t a1, void *a2, void (*a3)(__int128 *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v74 = a7;
  v73 = a6;
  v72 = a5;
  v91 = a4;
  v92 = a3;
  v83 = a2;
  v82 = a1;
  v77 = sub_2CCB20();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2CA910();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v85 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v9 - 8);
  v84 = &v71 - v10;
  v78 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = __chkstk_darwin(v78);
  v79 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v93 = &v71 - v13;
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v14 - 8);
  v90 = &v71 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v16 - 8);
  v89 = &v71 - v17;
  v18 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v18 - 8);
  v87 = &v71 - v19;
  v94 = sub_2CB970();
  v88 = *(v94 - 8);
  __chkstk_darwin(v94);
  v86 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2CCB30();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CCAC0();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v29);
  v31 = (&v71 - v30);
  sub_F3F4(v82, &v71 - v30, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v93 = *v31;
    (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v25);
    (*(v22 + 104))(v24, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v21);
    swift_getErrorValue();
    sub_2CEEF0();
    v85 = sub_2CCAE0();
    v84 = v32;

    (*(v22 + 8))(v24, v21);
    (*(v26 + 8))(v28, v25);
    v33 = v83[6];
    v82 = v83[7];
    sub_35E0(v83 + 3, v33);
    v34 = v88;
    v35 = v86;
    (*(v88 + 104))(v86, enum case for TypeOfIntent.determine(_:), v94);
    v36 = enum case for ActivityType.failed(_:);
    v37 = sub_2C9C20();
    v38 = *(v37 - 8);
    v39 = v87;
    (*(v38 + 104))(v87, v36, v37);
    (*(v38 + 56))(v39, 0, 1, v37);
    v40 = sub_2CA130();
    v41 = v89;
    (*(*(v40 - 8) + 56))(v89, 1, 1, v40);
    v42 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v43 = sub_2C98F0();
    v44 = *(v43 - 8);
    v45 = v90;
    (*(v44 + 104))(v90, v42, v43);
    (*(v44 + 56))(v45, 0, 1, v43);
    sub_2CB4C0();

    sub_30B8(v45, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v41, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v39, &qword_34CB88, &unk_2D0D90);
    (*(v34 + 8))(v35, v94);
    *&v95 = v93;
    v98 = 1;
    swift_errorRetain();
    v92(&v95);
  }

  else
  {
    sub_14A58(v31, v93, &qword_34C6E8, &unk_2D0FF0);
    sub_28D424(v72, v84);
    sub_2CB5B0();
    v97 = 0;
    v95 = 0u;
    v96 = 0u;
    sub_2C9DC0();
    sub_30B8(&v95, &qword_34CC80, &qword_2D1520);
    (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v25);
    (*(v22 + 104))(v24, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v21);
    v46 = v76;
    v47 = v75;
    v48 = v77;
    (*(v76 + 104))(v75, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v77);
    v82 = sub_2CCAD0();
    v74 = v49;
    (*(v46 + 8))(v47, v48);
    (*(v22 + 8))(v24, v21);
    (*(v26 + 8))(v28, v25);
    v50 = v83[6];
    v77 = v83[7];
    v83 = sub_35E0(v83 + 3, v50);
    v51 = v88;
    v52 = v86;
    v53 = v94;
    (*(v88 + 104))(v86, enum case for TypeOfIntent.determine(_:), v94);
    v54 = enum case for ActivityType.completed(_:);
    v55 = sub_2C9C20();
    v56 = *(v55 - 8);
    v57 = v87;
    (*(v56 + 104))(v87, v54, v55);
    (*(v56 + 56))(v57, 0, 1, v55);
    v58 = v79;
    sub_F3F4(v93, v79, &qword_34C6E8, &unk_2D0FF0);

    v59 = sub_2CA130();
    v60 = *(v59 - 8);
    v61 = v89;
    (*(v60 + 32))(v89, v58, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = enum case for SiriKitReliabilityCodes.success(_:);
    v63 = sub_2C98F0();
    v64 = *(v63 - 8);
    v65 = v90;
    (*(v64 + 104))(v90, v62, v63);
    (*(v64 + 56))(v65, 0, 1, v63);
    sub_2CB4C0();

    sub_30B8(v65, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v61, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v57, &qword_34CB88, &unk_2D0D90);
    (*(v51 + 8))(v52, v53);
    v66 = v81;
    *(&v96 + 1) = v81;
    v97 = &protocol witness table for AceOutput;
    v67 = sub_F390(&v95);
    v68 = v80;
    v69 = v85;
    (*(v80 + 16))(v67, v85, v66);
    v98 = 0;
    v92(&v95);
    (*(v68 + 8))(v69, v66);
    sub_30B8(v84, &unk_353020, &unk_2D0970);
    sub_30B8(v93, &qword_34C6E8, &unk_2D0FF0);
  }

  return sub_30B8(&v95, qword_34C798, &qword_2D0DA0);
}

uint64_t Determine.HandleIntentStrategy.makeIntentHandledResponseWithRF(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a3;
  v33 = a4;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_2CDFE0();
  v16 = sub_2CE670();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = v6;
    v34 = a1;
    v35 = v19;
    *v18 = 136315394;
    sub_2CCFB0();
    v29 = a2;
    sub_14010C(&qword_34C170, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
    v20 = sub_2CEE70();
    v22 = sub_3F08(v20, v21, &v35);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = sub_2CCCA0();
    v25 = sub_3F08(v23, v24, &v35);
    a2 = v29;

    *(v18 + 14) = v25;
    _os_log_impl(&dword_0, v15, v16, "Determine+HandleIntentStrategy#makeIntentHandledResponseWithRF for app: %s %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v6 = v30;

    a5 = v31;
  }

  (*(v11 + 8))(v13, v10);

  v26 = a2;
  v27 = v32;

  sub_14DDCC(v26, v6, a1, v26, v27, v33, a5);
}

uint64_t sub_13B8CC(char *a1, void *a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *), char *a5, uint64_t a6, uint64_t a7)
{
  v122 = a7;
  v110 = a6;
  v125 = a5;
  v132 = a4;
  v131 = a3;
  v134 = a2;
  v124 = a1;
  v7 = sub_20410(&unk_3530C0, &unk_2D0A40);
  v120 = *(v7 - 8);
  v121 = *(v120 + 64);
  __chkstk_darwin(v7 - 8);
  v123 = &v105 - v8;
  v112 = sub_2CCB20();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v117 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v119 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v12;
  __chkstk_darwin(v11);
  v133 = &v105 - v13;
  v113 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v114 = *(v113 - 8);
  v14 = __chkstk_darwin(v113);
  v116 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v15;
  __chkstk_darwin(v14);
  v135 = (&v105 - v16);
  v17 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v17 - 8);
  v130 = &v105 - v18;
  v19 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v19 - 8);
  v129 = &v105 - v20;
  v21 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v21 - 8);
  v127 = &v105 - v22;
  v136 = sub_2CB970();
  v128 = *(v136 - 8);
  __chkstk_darwin(v136);
  v126 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCB30();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2CCAC0();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2CE000();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v33);
  v35 = (&v105 - v34);
  sub_F3F4(v124, &v105 - v34, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v124 = v31;
    v125 = v27;
    v123 = v29;
    v133 = v28;
    v122 = v25;
    v135 = v24;
    v36 = *v35;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v37 = v108;
    v38 = sub_3ED0(v108, static Logger.default);
    swift_beginAccess();
    v39 = v107;
    v40 = v106;
    (*(v107 + 16))(v106, v38, v37);
    swift_errorRetain();
    v41 = sub_2CDFE0();
    v42 = sub_2CE680();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *v43 = 136315394;
      swift_getErrorValue();
      v44 = sub_2CEEF0();
      v46 = v36;
      v47 = sub_3F08(v44, v45, &v137);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      v48 = sub_2CCCA0();
      v50 = sub_3F08(v48, v49, &v137);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_0, v41, v42, "Determine+HandleIntentStrategy#makeIntentHandledResponseWithRF failed building dialog with error: %s %{public}s", v43, 0x16u);
      swift_arrayDestroy();

      (*(v39 + 8))(v40, v37);
      v51 = v134;
      v52 = v128;
    }

    else
    {

      (*(v39 + 8))(v40, v37);
      v51 = v134;
      v52 = v128;
      v46 = v36;
    }

    v84 = v135;
    v85 = v122;
    v86 = v133;
    v87 = v123;
    v88 = v125;
    v89 = v124;
    (*(v123 + 104))(v124, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v133);
    (*(v85 + 104))(v88, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v84);
    v121 = v46;
    swift_getErrorValue();
    sub_2CEEF0();
    v135 = sub_2CCAE0();
    v133 = v90;

    (*(v85 + 8))(v88, v84);
    (*(v87 + 8))(v89, v86);
    v91 = v51[6];
    v128 = v51[7];
    sub_35E0(v51 + 3, v91);
    v92 = v126;
    (*(v52 + 104))(v126, enum case for TypeOfIntent.determine(_:), v136);
    v93 = enum case for ActivityType.failed(_:);
    v94 = sub_2C9C20();
    v95 = v52;
    v96 = *(v94 - 8);
    v97 = v127;
    (*(v96 + 104))(v127, v93, v94);
    (*(v96 + 56))(v97, 0, 1, v94);
    v98 = sub_2CA130();
    v99 = v129;
    (*(*(v98 - 8) + 56))(v129, 1, 1, v98);
    v100 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v101 = sub_2C98F0();
    v102 = *(v101 - 8);
    v103 = v130;
    (*(v102 + 104))(v130, v100, v101);
    (*(v102 + 56))(v103, 0, 1, v101);
    sub_2CB4C0();

    sub_30B8(v103, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v99, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v97, &qword_34CB88, &unk_2D0D90);
    (*(v95 + 8))(v92, v136);
    v137 = v121;
    v138 = 1;
    swift_errorRetain();
    v131(&v137);

    v82 = qword_34C798;
    v83 = &qword_2D0DA0;
    v81 = &v137;
  }

  else
  {
    sub_14A58(v35, v135, &qword_34C6E8, &unk_2D0FF0);
    sub_28D424(v125, v133);
    (*(v29 + 104))(v31, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v28);
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v24);
    v53 = v111;
    v54 = v109;
    v55 = v112;
    (*(v111 + 104))(v109, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v112);
    v124 = sub_2CCAD0();
    v110 = v56;
    (*(v53 + 8))(v54, v55);
    (*(v25 + 8))(v27, v24);
    (*(v29 + 8))(v31, v28);
    v111 = v134[6];
    v112 = v134[7];
    sub_35E0(v134 + 3, v111);
    v57 = v128;
    v58 = v126;
    (*(v128 + 104))(v126, enum case for TypeOfIntent.determine(_:), v136);
    v59 = enum case for ActivityType.completed(_:);
    v60 = sub_2C9C20();
    v61 = *(v60 - 8);
    v62 = v127;
    (*(v61 + 104))(v127, v59, v60);
    (*(v61 + 56))(v62, 0, 1, v60);
    v63 = v116;
    sub_F3F4(v135, v116, &qword_34C6E8, &unk_2D0FF0);

    v64 = sub_2CA130();
    v65 = *(v64 - 8);
    v66 = v129;
    (*(v65 + 32))(v129, v63, v64);
    (*(v65 + 56))(v66, 0, 1, v64);
    v67 = enum case for SiriKitReliabilityCodes.success(_:);
    v68 = sub_2C98F0();
    v69 = *(v68 - 8);
    v70 = v130;
    (*(v69 + 104))(v130, v67, v68);
    (*(v69 + 56))(v70, 0, 1, v68);
    sub_2CB4C0();

    sub_30B8(v70, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v66, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v62, &qword_34CB88, &unk_2D0D90);
    (*(v57 + 8))(v58, v136);
    v71 = v134;
    v136 = sub_35E0(v134 + 25, v134[28]);
    sub_F3F4(v135, v63, &qword_34C6E8, &unk_2D0FF0);
    v72 = v119;
    sub_F3F4(v133, v119, &unk_353020, &unk_2D0970);
    v73 = v123;
    sub_F3F4(v122, v123, &unk_3530C0, &unk_2D0A40);
    v74 = (*(v114 + 80) + 24) & ~*(v114 + 80);
    v75 = (v115 + *(v117 + 80) + v74) & ~*(v117 + 80);
    v76 = (v118 + *(v120 + 80) + v75) & ~*(v120 + 80);
    v77 = (v121 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    *(v78 + 16) = v71;
    sub_14A58(v63, v78 + v74, &qword_34C6E8, &unk_2D0FF0);
    sub_14A58(v72, v78 + v75, &unk_353020, &unk_2D0970);
    sub_14A58(v73, v78 + v76, &unk_3530C0, &unk_2D0A40);
    v79 = (v78 + v77);
    v80 = v132;
    *v79 = v131;
    v79[1] = v80;

    sub_204218(v125, sub_13FC70, v78);

    sub_30B8(v133, &unk_353020, &unk_2D0970);
    v81 = v135;
    v82 = &qword_34C6E8;
    v83 = &unk_2D0FF0;
  }

  return sub_30B8(v81, v82, v83);
}

uint64_t sub_13CAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v14 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v21 - v16;
  sub_F3F4(a4, &v21 - v16, &qword_34C6E8, &unk_2D0FF0);
  v18 = *&v17[*(v15 + 56)];
  sub_13ECF0(v17, v18, a5, a1, a2, a6, a7, v22);

  v19 = sub_2CA130();
  return (*(*(v19 - 8) + 8))(v17, v19);
}

uint64_t sub_13CC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  v19 = a6;
  v7 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = sub_2CB260();
  __chkstk_darwin(v11 - 8);
  v12 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v12 - 8);
  sub_F3F4(a2, &v18 - v13, &unk_353020, &unk_2D0970);
  sub_2CA5B0();

  sub_2CA600();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_2CA620();
  sub_F3F4(v19, v10, &qword_34C6E8, &unk_2D0FF0);
  v14 = *&v10[*(v8 + 56)];
  v15 = [v14 catId];

  sub_2CE270();
  sub_2CA590();
  v16 = sub_2CA130();
  (*(*(v16 - 8) + 8))(v10, v16);
  return sub_2CA610();
}

uint64_t sub_13CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[15] = swift_task_alloc();
  v5 = sub_2CE000();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_13CF74, 0, 0);
}

uint64_t sub_13CF74()
{
  v30 = v0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2CDFE0();
  v6 = sub_2CE670();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446210;
    v13 = sub_2CCCA0();
    v15 = sub_3F08(v13, v14, &v29);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v5, v6, "Determine+HandleIntentStrategy#intentHandledResponse returning output with snippet %{public}s", v11, 0xCu);
    sub_306C(v12);
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[14];
  v16 = v0[15];
  v19 = v0[11];
  v18 = v0[12];
  sub_2CA080();
  swift_allocObject();
  v0[19] = sub_2CA070();
  v20 = sub_2CD230();
  v0[5] = v20;
  v0[6] = sub_14010C(&qword_34CC78, 255, &type metadata accessor for SiriAudioSnippets, &protocol conformance descriptor for SiriAudioSnippets);
  v21 = sub_F390(v0 + 2);
  (*(*(v20 - 8) + 16))(v21, v19, v20);
  sub_20410(&unk_351900, &unk_2D0960);
  v22 = swift_allocObject();
  v0[20] = v22;
  *(v22 + 16) = xmmword_2D0770;
  sub_F3F4(v18, v16, &qword_34C6E8, &unk_2D0FF0);
  *(v22 + 32) = *(v16 + *(v17 + 48));
  v23 = sub_2CA130();
  (*(*(v23 - 8) + 8))(v16, v23);
  v28 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v24 = swift_task_alloc();
  v0[21] = v24;
  *v24 = v0;
  v24[1] = sub_56F1C;
  v25 = v0[13];
  v26 = v0[10];

  return v28(v26, v0 + 2, v22, v25);
}

uint64_t sub_13D2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v3[9] = swift_task_alloc();
  v4 = sub_2CE000();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_13D3E4, 0, 0);
}

uint64_t sub_13D3E4()
{
  v27 = v0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2CDFE0();
  v6 = sub_2CE670();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446210;
    v13 = sub_2CCCA0();
    v15 = sub_3F08(v13, v14, &v26);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v5, v6, "Determine+HandleIntentStrategy#intentHandledResponse returning output with dialog only %{public}s", v11, 0xCu);
    sub_306C(v12);
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[6];
  sub_2CA080();
  swift_allocObject();
  v0[13] = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v19 = swift_allocObject();
  v0[14] = v19;
  *(v19 + 16) = xmmword_2D0770;
  sub_F3F4(v18, v16, &qword_34C6E8, &unk_2D0FF0);
  *(v19 + 32) = *(v16 + *(v17 + 48));
  v20 = sub_2CA130();
  (*(*(v20 - 8) + 8))(v16, v20);
  v25 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v21 = swift_task_alloc();
  v0[15] = v21;
  *v21 = v0;
  v21[1] = sub_13D6CC;
  v22 = v0[7];
  v23 = v0[5];

  return v25(v23, v19, v22);
}

uint64_t sub_13D6CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Determine.HandleIntentStrategy.makeSiriKitIntentHandler(app:intent:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = a2;
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    v29 = a1;
    v30[0] = v27[0];
    *v15 = 136315394;
    sub_2CCFB0();
    v27[1] = a1;
    sub_14010C(&qword_34C170, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
    v17 = sub_2CEE70();
    v19 = sub_3F08(v17, v18, v30);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v16 = v11;
    v20 = v11;
    _os_log_impl(&dword_0, v12, v13, "Determine+HandleIntentStrategy#makeSiriKitIntentHandler called with app: %s and intent: %@", v15, 0x16u);
    sub_30B8(v16, &unk_34FC00, &unk_2D0150);

    sub_306C(v27[0]);

    a3 = v28;
  }

  (*(v7 + 8))(v9, v6);
  v21 = qword_34BF80;

  if (v21 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = static Determine.intentHandler;
  type metadata accessor for DetermineIntent();
  v23 = v11;
  v24 = v22;
  sub_2C9870();
  v25 = sub_2C9880();
  return (*(*(v25 - 8) + 56))(a3, 0, 1, v25);
}

uint64_t sub_13DBFC(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v70 = a5;
  v81 = a3;
  v82 = a4;
  v77 = a2;
  v73 = a1;
  v5 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v5 - 8);
  v72 = v66 - v6;
  v74 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = __chkstk_darwin(v74);
  v71 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = v66 - v9;
  v10 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v10 - 8);
  v80 = v66 - v11;
  v12 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v12 - 8);
  v79 = v66 - v13;
  v14 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v14 - 8);
  v78 = v66 - v15;
  v16 = sub_2CB970();
  v83 = *(v16 - 8);
  v84 = v16;
  __chkstk_darwin(v16);
  v76 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CCB30();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CCAC0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v26);
  v28 = (v66 - v27);
  sub_F3F4(v73, v66 - v27, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v75 = *v28;
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v22);
    (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v18);
    swift_getErrorValue();
    sub_2CEEF0();
    v74 = sub_2CCAE0();
    v73 = v29;

    (*(v19 + 8))(v21, v18);
    (*(v23 + 8))(v25, v22);
    v30 = v77[6];
    v72 = v77[7];
    sub_35E0(v77 + 3, v30);
    v31 = v83;
    v32 = v76;
    (*(v83 + 104))(v76, enum case for TypeOfIntent.determine(_:), v84);
    v33 = enum case for ActivityType.failed(_:);
    v34 = sub_2C9C20();
    v35 = *(v34 - 8);
    v36 = v78;
    (*(v35 + 104))(v78, v33, v34);
    (*(v35 + 56))(v36, 0, 1, v34);
    v37 = sub_2CA130();
    v38 = v79;
    (*(*(v37 - 8) + 56))(v79, 1, 1, v37);
    v39 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v40 = sub_2C98F0();
    v41 = *(v40 - 8);
    v42 = v80;
    (*(v41 + 104))(v80, v39, v40);
    (*(v41 + 56))(v42, 0, 1, v40);
    sub_2CB4C0();

    sub_30B8(v42, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v38, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v36, &qword_34CB88, &unk_2D0D90);
    (*(v31 + 8))(v32, v84);
    v85[0] = v75;
    v86 = 1;
    swift_errorRetain();
    v81(v85);

    return sub_30B8(v85, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v44 = v75;
    sub_14A58(v28, v75, &qword_34C6E8, &unk_2D0FF0);
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v22);
    (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v18);
    v45 = OBJC_IVAR___DetermineIntentResponse_code;
    v46 = v70;
    swift_beginAccess();
    v87 = *(v46 + v45);
    sub_2CEE70();
    v70 = sub_2CCAE0();
    v69 = v47;

    (*(v19 + 8))(v21, v18);
    (*(v23 + 8))(v25, v22);
    v48 = v77;
    v67 = v77[6];
    v68 = v77[7];
    v66[1] = sub_35E0(v77 + 3, v67);
    v49 = v76;
    (*(v83 + 104))(v76, enum case for TypeOfIntent.determine(_:), v84);
    v50 = enum case for ActivityType.failed(_:);
    v51 = sub_2C9C20();
    v52 = *(v51 - 8);
    v53 = v78;
    (*(v52 + 104))(v78, v50, v51);
    (*(v52 + 56))(v53, 0, 1, v51);
    v54 = v71;
    sub_F3F4(v44, v71, &qword_34C6E8, &unk_2D0FF0);

    v55 = sub_2CA130();
    v73 = v55;
    v56 = *(v55 - 8);
    v57 = v79;
    (*(v56 + 32))(v79, v54, v55);
    (*(v56 + 56))(v57, 0, 1, v55);
    v58 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
    v59 = sub_2C98F0();
    v60 = *(v59 - 8);
    v61 = v80;
    (*(v60 + 104))(v80, v58, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    sub_2CB4C0();

    sub_30B8(v61, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v57, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v53, &qword_34CB88, &unk_2D0D90);
    (*(v83 + 8))(v49, v84);
    sub_35E0(v48 + 10, v48[13]);
    v62 = v75;
    sub_F3F4(v75, v54, &qword_34C6E8, &unk_2D0FF0);
    v63 = *(v54 + *(v74 + 48));
    v64 = sub_2CA000();
    v65 = v72;
    (*(*(v64 - 8) + 56))(v72, 1, 1, v64);
    sub_1C077C(v54, v63, v65, _swiftEmptyArrayStorage, v81, v82);

    sub_30B8(v65, &unk_353020, &unk_2D0970);
    sub_30B8(v62, &qword_34C6E8, &unk_2D0FF0);
    return (*(v56 + 8))(v54, v73);
  }
}

void *Determine.HandleIntentStrategy.deinit()
{

  sub_306C(v0 + 3);

  sub_306C(v0 + 10);
  sub_306C(v0 + 15);
  sub_306C(v0 + 20);
  sub_306C(v0 + 25);
  return v0;
}

uint64_t Determine.HandleIntentStrategy.__deallocating_deinit()
{

  sub_306C(v0 + 3);

  sub_306C(v0 + 10);
  sub_306C(v0 + 15);
  sub_306C(v0 + 20);
  sub_306C(v0 + 25);

  return swift_deallocClassInstance();
}

uint64_t sub_13E90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Determine.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_13E988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Determine.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_13EA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Determine.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_13EAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Determine.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_13EB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Determine.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_13EBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Determine.HandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_13EC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Determine.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_13EC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Determine.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_13ECF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v121 = a7;
  v122 = a8;
  v113 = a5;
  v114 = a6;
  v111 = a3;
  v112 = a4;
  v10 = sub_20410(&unk_3530C0, &unk_2D0A40);
  __chkstk_darwin(v10 - 8);
  v115 = &v99 - v11;
  v124 = sub_2CD230();
  v119 = *(v124 - 8);
  v12 = __chkstk_darwin(v124);
  v106 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v13;
  __chkstk_darwin(v12);
  v118 = &v99 - v14;
  v15 = sub_2C9B80();
  __chkstk_darwin(v15 - 8);
  v108 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CA630();
  v120 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v116 = v19;
  v117 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v125 = &v99 - v20;
  v104 = sub_2CB260();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v123 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v99 - v26;
  v28 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v29 = v28 - 8;
  v107 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v110 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v31;
  __chkstk_darwin(v30);
  v33 = &v99 - v32;
  v34 = sub_2CA130();
  (*(*(v34 - 8) + 16))(v33, a1, v34);
  v35 = *(v29 + 56);
  v126 = v33;
  *&v33[v35] = a2;
  v36 = qword_34BF58;
  v37 = a2;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  v39 = *(v23 + 16);
  v39(v27, v38, v22);
  v40 = sub_2CDFE0();
  v41 = sub_2CE670();
  v42 = os_log_type_enabled(v40, v41);
  v127 = v17;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v101 = v22;
    v45 = v44;
    v128 = v44;
    *v43 = 136446210;
    v46 = sub_2CCCA0();
    v48 = sub_3F08(v46, v47, &v128);
    v100 = v27;
    v49 = v38;
    v50 = v39;
    v51 = v48;

    *(v43 + 4) = v51;
    v39 = v50;
    v38 = v49;
    _os_log_impl(&dword_0, v40, v41, "Determine+HandleIntentStrategy#intentHandledResponse... %{public}s", v43, 0xCu);
    sub_306C(v45);
    v22 = v101;

    v52 = *(v23 + 8);
    v52(v100, v22);
  }

  else
  {

    v52 = *(v23 + 8);
    v52(v27, v22);
  }

  v53 = v123;
  v54 = sub_2CB460();
  if (!v54)
  {
    sub_2CB180();
    v54 = sub_2CB170();
  }

  v55 = v54;
  v39(v53, v38, v22);

  v56 = sub_2CDFE0();
  v57 = v22;
  v58 = sub_2CE660();

  if (os_log_type_enabled(v56, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v101 = v23;
    v61 = v60;
    v128 = v60;
    *v59 = 136315138;
    sub_2CB130();
    v62 = v102;
    sub_2CD3C0();

    v63 = sub_2CB200();
    v64 = v52;
    v66 = v65;
    (*(v103 + 8))(v62, v104);
    v67 = sub_3F08(v63, v66, &v128);

    *(v59 + 4) = v67;
    _os_log_impl(&dword_0, v56, v58, "Determine+HandleIntentStrategy#intentHandledResponse with responseMode = %s", v59, 0xCu);
    sub_306C(v61);

    v64(v123, v57);
  }

  else
  {

    v52(v53, v57);
  }

  v68 = v126;
  v69 = v127;
  v70 = v125;
  v71 = v119;
  v72 = sub_2C9B20();
  __chkstk_darwin(v72);
  v73 = v112;
  *(&v99 - 6) = v111;
  *(&v99 - 5) = v73;
  *(&v99 - 4) = v113;
  *(&v99 - 3) = v55;
  *(&v99 - 2) = v68;
  sub_2CA560();
  v74 = v115;
  sub_F3F4(v114, v115, &unk_3530C0, &unk_2D0A40);
  v75 = v124;
  v76 = v71[6](v74, 1, v124);
  v123 = v55;
  if (v76 == 1)
  {
    sub_30B8(v74, &unk_3530C0, &unk_2D0A40);
    v77 = v110;
    sub_F3F4(v68, v110, &qword_34C6E8, &unk_2D0FF0);
    v78 = v120;
    v79 = v117;
    (*(v120 + 16))(v117, v70, v69);
    v80 = v69;
    v81 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v82 = (v109 + *(v78 + 80) + v81) & ~*(v78 + 80);
    v83 = swift_allocObject();
    v84 = v83 + v81;
    v85 = v80;
    v86 = v78;
    sub_14A58(v77, v84, &qword_34C6E8, &unk_2D0FF0);
    (*(v78 + 32))(v83 + v82, v79, v80);
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();
  }

  else
  {
    v119 = v71[4];
    v87 = v118;
    (v119)(v118, v74, v75);
    v88 = v106;
    v71[2](v106, v87, v75);
    v89 = v110;
    sub_F3F4(v68, v110, &qword_34C6E8, &unk_2D0FF0);
    v86 = v120;
    v90 = v117;
    (*(v120 + 16))(v117, v70, v127);
    v91 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v92 = (v105 + *(v107 + 80) + v91) & ~*(v107 + 80);
    v93 = (v109 + *(v86 + 80) + v92) & ~*(v86 + 80);
    v94 = swift_allocObject();
    v95 = v94 + v91;
    v96 = v124;
    (v119)(v95, v88, v124);
    v85 = v127;
    v97 = v94 + v92;
    v70 = v125;
    sub_14A58(v89, v97, &qword_34C6E8, &unk_2D0FF0);
    (*(v86 + 32))(v94 + v93, v90, v85);
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    (v71[1])(v118, v96);
  }

  (*(v86 + 8))(v70, v85);
  return sub_30B8(v126, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_13F89C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a1;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "Determine+HandleIntentStrategy#makeFailureHandlingIntentResponse", v16, 2u);
  }

  (*(v10 + 8))(v12, v9);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  strcpy((inited + 32), "MetricsError");
  *(inited + 16) = xmmword_2D0090;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_2CECB0(37);

  v30 = 0xD000000000000023;
  v31 = 0x80000000002DDC30;
  v18 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  v27 = *&a2[v18];
  v32._countAndFlagsBits = sub_2CEE70();
  sub_2CE350(v32);

  v19 = v30;
  v20 = v31;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v19;
  *(inited + 56) = v20;
  v21 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v22 = swift_allocObject();
  *(v22 + 16) = v5;
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  *(v22 + 40) = a2;

  v23 = a2;
  sub_E5794(v21, v26, sub_13FC64, v22);
}

uint64_t sub_13FC70(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20410(&unk_3530C0, &unk_2D0A40) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v2 + 16);
  v14 = (v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  return sub_13CAF4(a1, a2, v13, v2 + v6, v2 + v9, v2 + v12, v15, v16);
}

uint64_t sub_13FE18(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2CA630() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24C84;

  return sub_13D2E4(a1, v1 + v6, v1 + v9);
}

uint64_t sub_13FF60(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_13CE74(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_14010C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_140154(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_140160(uint64_t a1)
{
  v113 = a1;
  v1 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v1 - 8);
  v99 = &v94 - v2;
  v104 = sub_2CD4C0();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v97 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  __chkstk_darwin(v103);
  v110 = &v94 - v4;
  v5 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v6 = __chkstk_darwin(v5 - 8);
  v101 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v106 = &v94 - v9;
  __chkstk_darwin(v8);
  v107 = &v94 - v10;
  v11 = sub_20410(&qword_34CC90, qword_2D40E0);
  __chkstk_darwin(v11 - 8);
  v109 = &v94 - v12;
  v13 = sub_2CA870();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v114 = (&v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v98 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v111 = &v94 - v21;
  v22 = __chkstk_darwin(v20);
  v102 = &v94 - v23;
  v24 = __chkstk_darwin(v22);
  v105 = &v94 - v25;
  __chkstk_darwin(v24);
  v27 = &v94 - v26;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v28 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v30 = v17 + 16;
  v29 = *(v17 + 16);
  v29(v27, v28, v16);
  v31 = sub_2CDFE0();
  v32 = sub_2CE690();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v112 = v14;
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "OpenMediaItemFlow#on validating input...", v33, 2u);
    v30 = v17 + 16;
    v14 = v112;
  }

  v35 = *(v17 + 8);
  v34 = (v17 + 8);
  v112 = v35;
  v35(v27, v16);
  v37 = v113;
  v36 = v114;
  sub_2CA790();
  if ((*(v14 + 11))(v36, v13) != enum case for Parse.pommesResponse(_:))
  {
    v53 = v16;
    v29(v111, v28, v16);
    v54 = sub_2CDFE0();
    v55 = sub_2CE680();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "OpenMediaItemFlow#on unexpected parse type, rejecting", v56, 2u);
      v36 = v114;
    }

    v112(v111, v53);
    (*(v14 + 1))(v36, v13);
    return 0;
  }

  (*(v14 + 12))(v36, v13);
  v38 = *v36;
  v39 = sub_1B7F14();
  if (!v39)
  {
    v114 = v34;
    v57 = v102;
    v29(v102, v28, v16);
    v58 = v38;
    v59 = sub_2CDFE0();
    v60 = sub_2CE680();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v115[0] = v62;
      *v61 = 136315138;
      sub_2CDAD0();
      sub_2CDA50();
      v63 = v16;
      v64 = sub_2CE420();
      v66 = v65;

      v67 = sub_3F08(v64, v66, v115);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_0, v59, v60, "OpenMediaItemFlow#on pommesResponse doesn't contain audioExperience %s", v61, 0xCu);
      sub_306C(v62);

      v68 = v57;
      v69 = v63;
    }

    else
    {

      v68 = v57;
      v69 = v16;
    }

    v112(v68, v69);
    return 0;
  }

  v40 = v39;
  v111 = v16;
  sub_2CD700();
  v41 = v109;
  v102 = v40;
  sub_2CDA40();
  v42 = sub_2CAA00();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  if (!sub_2CD600())
  {
LABEL_19:
    v71 = v105;
    v72 = v29;
    v73 = v111;
    v72(v105, v28, v111);
    v74 = sub_2CDFE0();
    v75 = sub_2CE680();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_0, v74, v75, "OpenMediaItemFlow#on invalid AudioIntent for open use case", v76, 2u);
    }

    else
    {
    }

    v112(v71, v73);
    return 0;
  }

  v94 = v38;
  v95 = v29;
  v96 = v30;
  v109 = v28;
  v114 = v34;
  v43 = v107;
  sub_2CD6C0();
  v44 = v108;
  v45 = v106;
  v46 = v104;
  (*(v108 + 104))(v106, enum case for CommonAudio.Verb.open(_:), v104);
  (*(v44 + 56))(v45, 0, 1, v46);
  v47 = *(v103 + 48);
  v48 = v110;
  sub_F3F4(v43, v110, &qword_34D6B8, &qword_2D15B0);
  v49 = v48;
  sub_F3F4(v45, v48 + v47, &qword_34D6B8, &qword_2D15B0);
  v50 = *(v44 + 48);
  if (v50(v49, 1, v46) != 1)
  {
    v70 = v101;
    sub_F3F4(v49, v101, &qword_34D6B8, &qword_2D15B0);
    if (v50(v49 + v47, 1, v46) != 1)
    {
      v78 = v70;
      v79 = v108;
      v80 = v97;
      (*(v108 + 32))(v97, v49 + v47, v46);
      sub_14CCF0(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
      v81 = v49;
      v82 = sub_2CE250();

      v83 = *(v79 + 8);
      v83(v80, v46);
      sub_30B8(v106, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v107, &qword_34D6B8, &qword_2D15B0);
      v83(v78, v46);
      sub_30B8(v81, &qword_34D6B8, &qword_2D15B0);
      v28 = v109;
      v29 = v95;
      v38 = v94;
      if (v82)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    sub_30B8(v106, &qword_34D6B8, &qword_2D15B0);
    v51 = v110;
    sub_30B8(v107, &qword_34D6B8, &qword_2D15B0);
    (*(v108 + 8))(v70, v46);
    v28 = v109;
    v29 = v95;
    goto LABEL_18;
  }

  sub_30B8(v45, &qword_34D6B8, &qword_2D15B0);
  v51 = v110;
  sub_30B8(v43, &qword_34D6B8, &qword_2D15B0);
  v52 = v50(v51 + v47, 1, v46);
  v28 = v109;
  v29 = v95;
  if (v52 != 1)
  {
LABEL_18:
    sub_30B8(v51, &qword_34D6B0, &unk_2D4FC0);
    v38 = v94;
    goto LABEL_19;
  }

  sub_30B8(v51, &qword_34D6B8, &qword_2D15B0);
  v38 = v94;
LABEL_27:

  v84 = v100;
  v85 = *(v100 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_pommesResponse);
  *(v100 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_pommesResponse) = v38;

  v86 = v98;
  v29(v98, v28, v111);
  v87 = sub_2CDFE0();
  v88 = sub_2CE690();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_0, v87, v88, "OpenMediaItemFlow#on accepting input", v89, 2u);
  }

  v112(v86, v111);
  v90 = sub_2CA7B0();
  v91 = *(v90 - 8);
  v92 = v99;
  (*(v91 + 16))(v99, v37, v90);
  (*(v91 + 56))(v92, 0, 1, v90);
  v93 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_input;
  swift_beginAccess();
  sub_A4888(v92, v84 + v93);
  swift_endAccess();
  return 1;
}

uint64_t sub_140F48(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_20410(&qword_34D6D0, qword_2D34A0);
  v2[23] = swift_task_alloc();
  sub_20410(&qword_34CC90, qword_2D40E0);
  v2[24] = swift_task_alloc();
  v3 = sub_2CB3F0();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v4 = sub_2CB400();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  sub_20410(&qword_352770, &qword_2D4FB8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v5 = sub_2CB430();
  v2[40] = v5;
  v2[41] = *(v5 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  sub_20410(&qword_34CB78, &unk_2D0D80);
  v2[44] = swift_task_alloc();
  sub_20410(&qword_34CB88, &unk_2D0D90);
  v2[45] = swift_task_alloc();
  v6 = sub_2CB970();
  v2[46] = v6;
  v2[47] = *(v6 - 8);
  v2[48] = swift_task_alloc();
  v7 = sub_2CCB20();
  v2[49] = v7;
  v2[50] = *(v7 - 8);
  v2[51] = swift_task_alloc();
  v8 = sub_2CCB30();
  v2[52] = v8;
  v2[53] = *(v8 - 8);
  v2[54] = swift_task_alloc();
  v9 = sub_2CCAC0();
  v2[55] = v9;
  v2[56] = *(v9 - 8);
  v2[57] = swift_task_alloc();
  v10 = sub_2CB8B0();
  v2[58] = v10;
  v2[59] = *(v10 - 8);
  v2[60] = swift_task_alloc();
  v11 = sub_2CD540();
  v2[61] = v11;
  v2[62] = *(v11 - 8);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v12 = sub_2C90E0();
  v2[66] = v12;
  v2[67] = *(v12 - 8);
  v2[68] = swift_task_alloc();
  v13 = sub_2CD5B0();
  v2[69] = v13;
  v2[70] = *(v13 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v14 = sub_2CA7B0();
  v2[74] = v14;
  v2[75] = *(v14 - 8);
  v2[76] = swift_task_alloc();
  sub_20410(&qword_34E480, &qword_2D2280);
  v2[77] = swift_task_alloc();
  v15 = sub_2CA870();
  v2[78] = v15;
  v2[79] = *(v15 - 8);
  v2[80] = swift_task_alloc();
  v16 = sub_2CE1D0();
  v2[81] = v16;
  v2[82] = *(v16 - 8);
  v2[83] = swift_task_alloc();
  v17 = sub_2CE000();
  v2[84] = v17;
  v2[85] = *(v17 - 8);
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();

  return _swift_task_switch(sub_1417C8, 0, 0);
}

uint64_t sub_1417C8()
{
  v185 = v0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v1 = v0[103];
  v2 = v0[85];
  v3 = v0[84];
  v4 = sub_3ED0(v3, static Logger.default);
  v0[104] = v4;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v0[105] = v5;
  v0[106] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v178 = v4;
  v180 = v5;
  v5(v1, v4, v3);
  v6 = sub_2CDFE0();
  v7 = sub_2CE690();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "OpenMediaItemFlow#execute", v8, 2u);
  }

  v9 = v0[103];
  v183 = v0;
  v10 = v0[85];
  v11 = v0[84];
  v12 = v0[83];
  v13 = v0[82];
  v14 = v0[81];
  v15 = v0[77];
  v16 = v0[75];
  v176 = v0[74];
  v17 = v0[22];

  v18 = *(v10 + 8);
  v183[107] = v18;
  v182 = v18;
  v18(v9, v11);
  v19 = v183;
  (*(v13 + 104))(v12, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v14);
  sub_2CE1E0();
  v20 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_input;
  swift_beginAccess();
  sub_F3F4(v17 + v20, v15, &qword_34E480, &qword_2D2280);
  if ((*(v16 + 48))(v15, 1, v176))
  {
    sub_30B8(v183[77], &qword_34E480, &qword_2D2280);
  }

  else
  {
    v21 = v183[80];
    v22 = v183[79];
    v23 = v183[78];
    v24 = v183[77];
    v25 = v183[76];
    v26 = v183[75];
    v27 = v183[74];
    (*(v26 + 16))(v25, v24, v27);
    sub_30B8(v24, &qword_34E480, &qword_2D2280);
    sub_2CA790();
    (*(v26 + 8))(v25, v27);
    v28 = (*(v22 + 88))(v21, v23);
    v29 = v183[80];
    v30 = v183[79];
    v31 = v183[78];
    if (v28 == enum case for Parse.pommesResponse(_:))
    {
      v32 = v183[22];
      (*(v30 + 96))(v183[80], v31);
      v33 = *(v32 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_pommesResponse);
      *(v32 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_pommesResponse) = *v29;
    }

    else
    {
      (*(v30 + 8))(v183[80], v31);
    }
  }

  v34 = *(v183[22] + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_pommesResponse);
  v183[108] = v34;
  if (!v34)
  {
    goto LABEL_27;
  }

  v35 = v34;
  v36 = sub_1B7F14();
  v183[109] = v36;
  if (!v36)
  {

LABEL_27:
    v180(v183[88], v178, v183[84]);
    v84 = sub_2CDFE0();
    v85 = sub_2CE680();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_0, v84, v85, "OpenMediaItemFlow#execute missing pommesResponse or audioExperience", v86, 2u);
    }

    v87 = v183[88];
    v88 = v183[84];
    v90 = v183[50];
    v89 = v183[51];
    v91 = v183[49];

    v182(v87, v88);
    (*(v90 + 104))(v89, enum case for AdditionalMetricsDescription.StatusReason.missingPommesResponse(_:), v91);
    v92 = swift_task_alloc();
    v183[156] = v92;
    *v92 = v183;
    v93 = sub_1480AC;
    goto LABEL_30;
  }

  v37 = v36;
  sub_2CDBC0();
  sub_2CDBB0();
  sub_2CDAE0();
  v183[110] = sub_2CDBA0();

  v38 = sub_2CDBD0();
  if (!(v38 >> 62))
  {
    if (*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_14;
    }

LABEL_61:
    v153 = v183[89];
    v154 = v183[84];

    v180(v153, v178, v154);
    v155 = sub_2CDFE0();
    v156 = sub_2CE680();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&dword_0, v155, v156, "OpenMediaItemFlow#execute failed to get audioItem from ranked results", v157, 2u);
    }

    v158 = v183[89];
    v159 = v183[84];
    v160 = v183[24];

    v182(v158, v159);
    sub_2CD700();
    v161 = v37;
    sub_2CDA40();

    v162 = sub_2CAA00();
    (*(*(v162 - 8) + 56))(v160, 0, 1, v162);
    v163 = sub_2CD600();
    v183[153] = v163;
    v164 = v183[61];
    v165 = v183[62];
    v166 = v183[23];
    if (v163)
    {
      sub_2CD6F0();
      if ((*(v165 + 48))(v166, 1, v164) != 1)
      {
        (*(v183[62] + 32))(v183[63], v183[23], v183[61]);
LABEL_69:
        v171 = v183[62];
        v170 = v183[63];
        v172 = v183[61];
        v173 = sub_2CD510();
        (*(v171 + 8))(v170, v172);
        if (v173)
        {
          sub_2CBE30();
        }

        else
        {
          sub_2CBE10();
        }

        sub_2CCFB0();
        v174 = sub_2CCF80();
        v183[154] = v174;
        v175 = swift_task_alloc();
        v183[155] = v175;
        *v175 = v183;
        v175[1] = sub_147C5C;

        return sub_14AB6C(v174, 0, 0, 0xE000000000000000);
      }
    }

    else
    {
      (*(v165 + 56))(v183[23], 1, 1, v183[61]);
    }

    v167 = v183[62];
    v168 = v183[61];
    v169 = v183[23];
    (*(v167 + 104))(v183[63], enum case for CommonAudio.MediaType.unknown(_:), v168);
    if ((*(v167 + 48))(v169, 1, v168) != 1)
    {
      sub_30B8(v183[23], &qword_34D6D0, qword_2D34A0);
    }

    goto LABEL_69;
  }

  v151 = v38;
  v152 = sub_2CEDA0();
  v38 = v151;
  if (!v152)
  {
    goto LABEL_61;
  }

LABEL_14:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v40 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return dispatch thunk of AccountProviding.requestingUserDSID()(v38, v39);
    }

    v40 = *(v38 + 32);
  }

  v41 = v40;
  v42 = v183[73];
  v43 = v183[72];
  v44 = v183[70];
  v45 = v183[69];
  v46 = v183[68];
  v47 = v183[67];
  v48 = v183[66];

  sub_2CDA80();

  sub_2B40E8(v43);
  (*(v47 + 8))(v46, v48);
  (*(v44 + 32))(v42, v43, v45);
  sub_2CD590();
  if (!v49 || (sub_2CB910(), swift_allocObject(), v50 = sub_2CB920(), (v183[111] = v50) == 0))
  {
    v96 = v183[73];
    v97 = v183[71];
    v98 = v183[70];
    v99 = v183[69];
    v180(v183[90], v178, v183[84]);
    (*(v98 + 16))(v97, v96, v99);
    v100 = sub_2CDFE0();
    v101 = sub_2CE680();
    v102 = os_log_type_enabled(v100, v101);
    v103 = v183[90];
    v104 = v183[84];
    v105 = v183[71];
    v106 = v183[70];
    v107 = v183[69];
    if (v102)
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v184 = v109;
      *v108 = 136315138;
      v110 = sub_2CD590();
      if (v111)
      {
        v112 = v110;
      }

      else
      {
        v112 = 0x3E6C696E3CLL;
      }

      v179 = v103;
      v181 = v104;
      if (v111)
      {
        v113 = v111;
      }

      else
      {
        v113 = 0xE500000000000000;
      }

      v114 = v101;
      v117 = *(v106 + 8);
      v115 = v106 + 8;
      v116 = v117;
      v117(v105, v107);
      v118 = v112;
      v19 = v183;
      v119 = sub_3F08(v118, v113, &v184);

      *(v108 + 4) = v119;
      _os_log_impl(&dword_0, v100, v114, "OpenMediaItemFlow#execute failed to convert identifier: %s", v108, 0xCu);
      sub_306C(v109);

      v120 = v181;
      v121 = v179;
    }

    else
    {

      v122 = *(v106 + 8);
      v115 = v106 + 8;
      v116 = v122;
      v122(v105, v107);
      v121 = v103;
      v120 = v104;
    }

    v182(v121, v120);
    v19[151] = v116;
    v19[150] = v115;
    (*(v19[50] + 104))(v19[51], enum case for AdditionalMetricsDescription.StatusReason.failedToConvertPlaybackIdentifier(_:), v19[49]);
    v92 = swift_task_alloc();
    v19[152] = v92;
    *v92 = v19;
    v93 = sub_1477B4;
LABEL_30:
    v92[1] = v93;
    v94 = v19[51];

    return sub_14982C(v94);
  }

  v51 = v183[65];
  v53 = v183[61];
  v52 = v183[62];
  sub_2CD5A0();
  v54 = sub_2CD510();
  v55 = *(v52 + 8);
  v183[112] = v55;
  v183[113] = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v55(v51, v53);
  v56 = v183[84];
  if (!v54)
  {
    v180(v183[98], v178, v56);
    v123 = sub_2CDFE0();
    v124 = sub_2CE670();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_0, v123, v124, "OpenMediaItemFlow#execute using Music open intent", v125, 2u);
    }

    v126 = v183[98];
    v127 = v183[84];
    v128 = v183[22];

    v182(v126, v127);
    v129 = *(v128 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_accountProvider + 24);
    v130 = *(v128 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_accountProvider + 32);
    sub_35E0((v128 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_accountProvider), v129);
    v131 = swift_task_alloc();
    v183[121] = v131;
    *v131 = v183;
    v131[1] = sub_143B90;
    v38 = v129;
    v39 = v130;

    return dispatch thunk of AccountProviding.requestingUserDSID()(v38, v39);
  }

  v180(v183[102], v178, v56);
  v57 = sub_2CDFE0();
  v58 = sub_2CE670();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_0, v57, v58, "OpenMediaItemFlow#execute mediaItem is Podcasts type, using Podcasts open intent", v59, 2u);
  }

  v60 = v183[102];
  v61 = v183[84];
  v62 = v183[64];
  v63 = v183[62];
  v177 = v183[61];
  v64 = v183[60];
  v65 = v183[59];
  v66 = v183[58];

  v182(v60, v61);
  sub_2CB8C0();
  v67 = sub_2CB870();
  v69 = v68;
  v183[114] = v68;
  (*(v65 + 8))(v64, v66);
  sub_2CD5A0();
  v70 = (*(v63 + 88))(v62, v177);
  v71 = v183[84];
  if (v70 == enum case for CommonAudio.MediaType.podcast(_:))
  {
    v180(v183[101], v178, v71);

    v72 = sub_2CDFE0();
    v73 = sub_2CE670();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v183[101];
    v76 = v183[84];
    if (v74)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v184 = v78;
      *v77 = 136315138;
      *(v77 + 4) = sub_3F08(v67, v69, &v184);
      _os_log_impl(&dword_0, v72, v73, "OpenMediaItemFlow#execute invoking OpenPodcastShowAppIntent with identifier: %s", v77, 0xCu);
      sub_306C(v78);
    }

    v182(v75, v76);
    v79 = (v183[22] + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker);
    v80 = v79[3];
    v81 = v79[4];
    sub_35E0(v79, v80);
    v82 = swift_task_alloc();
    v183[115] = v82;
    *v82 = v183;
    v83 = sub_142B2C;
LABEL_57:
    v82[1] = v83;

    return dispatch thunk of AppIntentInvoking.invokeOpenPodcastShowAppIntent(showIdentifier:)(v67, v69, v80, v81);
  }

  if (v70 != enum case for CommonAudio.MediaType.episode(_:))
  {
    v180(v183[99], v178, v71);

    v143 = sub_2CDFE0();
    v144 = sub_2CE670();

    v145 = os_log_type_enabled(v143, v144);
    v146 = v183[99];
    v147 = v183[84];
    if (v145)
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v184 = v149;
      *v148 = 136315138;
      *(v148 + 4) = sub_3F08(v67, v69, &v184);
      _os_log_impl(&dword_0, v143, v144, "OpenMediaItemFlow#execute mediaType is not podcastShow or podcastEpisode, defaulting to invoke OpenPodcastShowAppIntent with identifier: %s", v148, 0xCu);
      sub_306C(v149);
    }

    v182(v146, v147);
    v150 = (v183[22] + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker);
    v80 = v150[3];
    v81 = v150[4];
    sub_35E0(v150, v80);
    v82 = swift_task_alloc();
    v183[119] = v82;
    *v82 = v183;
    v83 = sub_1433EC;
    goto LABEL_57;
  }

  v180(v183[100], v178, v71);

  v132 = sub_2CDFE0();
  v133 = sub_2CE670();

  v134 = os_log_type_enabled(v132, v133);
  v135 = v183[100];
  v136 = v183[84];
  if (v134)
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v184 = v138;
    *v137 = 136315138;
    *(v137 + 4) = sub_3F08(v67, v69, &v184);
    _os_log_impl(&dword_0, v132, v133, "OpenMediaItemFlow#execute invoking OpenPodcastEpisodeAppIntent with identifier: %s", v137, 0xCu);
    sub_306C(v138);
  }

  v182(v135, v136);
  v139 = (v183[22] + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker);
  v140 = v139[3];
  v141 = v139[4];
  sub_35E0(v139, v140);
  v142 = swift_task_alloc();
  v183[117] = v142;
  *v142 = v183;
  v142[1] = sub_1432BC;

  return dispatch thunk of AppIntentInvoking.invokeOpenPodcastEpisodeAppIntent(episodeIdentifier:)(v67, v69, v140, v141);
}

uint64_t sub_142B2C()
{
  *(*v1 + 928) = v0;

  if (v0)
  {
    v2 = sub_1489D4;
  }

  else
  {
    v2 = sub_142C5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_142C5C()
{
  v24 = v0[108];
  v25 = v0[70];
  v26 = v0[109];
  v27 = v0[69];
  v28 = v0[73];
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[50];
  v8 = v0[51];
  v9 = v0[49];
  v19 = v0[48];
  v18 = v0[47];
  v22 = v0[45];
  v20 = v0[46];
  v21 = v0[22];
  v23 = v0[44];
  (*(v2 + 104))(v1, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v3);
  (*(v6 + 104))(v4, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v5);
  (*(v7 + 104))(v8, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v9);
  sub_2CCAD0();
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_35E0((v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
  (*(v18 + 104))(v19, enum case for TypeOfIntent.openMediaItem(_:), v20);
  v10 = enum case for ActivityType.completed(_:);
  v11 = sub_2C9C20();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v22, v10, v11);
  (*(v12 + 56))(v22, 0, 1, v11);
  v13 = enum case for SiriKitReliabilityCodes.success(_:);
  v14 = sub_2C98F0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v23, v13, v14);
  (*(v15 + 56))(v23, 0, 1, v14);
  sub_2CB4B0();

  sub_30B8(v23, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v22, &qword_34CB88, &unk_2D0D90);
  (*(v18 + 8))(v19, v20);
  sub_2C9EB0();

  (*(v25 + 8))(v28, v27);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1432BC()
{
  *(*v1 + 944) = v0;

  if (v0)
  {
    v2 = sub_148C1C;
  }

  else
  {
    v2 = sub_14CD38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1433EC()
{
  *(*v1 + 960) = v0;

  if (v0)
  {
    v2 = sub_148E64;
  }

  else
  {
    v2 = sub_14351C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_14351C()
{
  (*(v0 + 896))(*(v0 + 512), *(v0 + 488));
  v24 = *(v0 + 864);
  v25 = *(v0 + 560);
  v26 = *(v0 + 872);
  v27 = *(v0 + 552);
  v28 = *(v0 + 584);
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = *(v0 + 416);
  v6 = *(v0 + 424);
  v7 = *(v0 + 400);
  v8 = *(v0 + 408);
  v9 = *(v0 + 392);
  v19 = *(v0 + 384);
  v18 = *(v0 + 376);
  v22 = *(v0 + 360);
  v20 = *(v0 + 368);
  v21 = *(v0 + 176);
  v23 = *(v0 + 352);
  (*(v2 + 104))(v1, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v3);
  (*(v6 + 104))(v4, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v5);
  (*(v7 + 104))(v8, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v9);
  sub_2CCAD0();
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_35E0((v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
  (*(v18 + 104))(v19, enum case for TypeOfIntent.openMediaItem(_:), v20);
  v10 = enum case for ActivityType.completed(_:);
  v11 = sub_2C9C20();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v22, v10, v11);
  (*(v12 + 56))(v22, 0, 1, v11);
  v13 = enum case for SiriKitReliabilityCodes.success(_:);
  v14 = sub_2C98F0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v23, v13, v14);
  (*(v15 + 56))(v23, 0, 1, v14);
  sub_2CB4B0();

  sub_30B8(v23, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v22, &qword_34CB88, &unk_2D0D90);
  (*(v18 + 8))(v19, v20);
  sub_2C9EB0();

  (*(v25 + 8))(v28, v27);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_143B90(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v5 = *v1;
  v3[122] = a1;

  v6 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_musicSiriItemProvider;
  v10 = (&async function pointer to dispatch thunk of PlaybackItem.toMusicSiriRepresentation(musicSiriItemProvider:accountId:) + async function pointer to dispatch thunk of PlaybackItem.toMusicSiriRepresentation(musicSiriItemProvider:accountId:));
  v7 = swift_task_alloc();
  v3[123] = v7;
  *v7 = v5;
  v7[1] = sub_143D38;
  v8 = v3[43];

  return v10(v8, v4 + v6, a1);
}

uint64_t sub_143D38()
{

  return _swift_task_switch(sub_143E34, 0, 0);
}

uint64_t sub_143E34(uint64_t a1)
{
  v2 = v1[112];
  v3 = v1[65];
  v4 = v1[61];
  v6 = v1[38];
  v5 = v1[39];
  v7 = v1[30];
  v180 = v1[29];
  sub_2CD5A0();
  v177 = sub_2CD520();
  v9 = v8;
  v1[124] = v8;
  v2(v3, v4);
  sub_2CB420();
  sub_F3F4(v5, v6, &qword_352770, &qword_2D4FB8);
  v10 = v1;
  v11 = (*(v7 + 48))(v6, 1, v180);
  v12 = v1[38];
  if (v11 == 1)
  {

    sub_30B8(v12, &qword_352770, &qword_2D4FB8);
    sub_2CB410();
    v13 = v1[105];
    v14 = v1[104];
    v15 = v1[84];
    if (v16)
    {
      v17 = v1[92];
      v19 = v1[42];
      v18 = v1[43];
      v21 = v1[40];
      v20 = v1[41];

      v13(v17, v14, v15);
      (*(v20 + 16))(v19, v18, v21);
      v22 = sub_2CDFE0();
      v23 = sub_2CE670();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v10[42];
      if (v24)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = sub_2CB410();
        v30 = v10;
        v33 = v10 + 41;
        v32 = v10[41];
        v31 = v33[1];
        v34 = v30;
        v35 = v30[40];
        if (v29)
        {
          v36 = v28;
          v37 = v29;
          sub_10C40();
          swift_allocError();
          *v38 = v36;
          v38[1] = v37;
          v39 = _swift_stdlib_bridgeErrorToNSError();
          v40 = *(v32 + 8);
          v40(v31, v35);
        }

        else
        {
          v40 = *(v32 + 8);
          v40(v31, v30[40]);
          v39 = 0;
        }

        *(v26 + 4) = v39;
        *v27 = v39;
        _os_log_impl(&dword_0, v22, v23, "OpenMediaItemFlow#execute invoking OpenMusicItemIntent with identifier: %@", v26, 0xCu);
        sub_30B8(v27, &unk_34FC00, &unk_2D0150);

        v10 = v34;
      }

      else
      {
        v82 = v10[40];
        v83 = v10[41];

        v40 = *(v83 + 8);
        v40(v25, v82);
      }

      v10[145] = v40;
      v162 = v10[22];
      (v10[107])(v10[92], v10[84]);
      sub_EEAC(v162 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker, (v10 + 2));
      v163 = v10[5];
      v164 = v10[6];
      sub_35E0(v10 + 2, v163);
      v165 = sub_2CB410();
      v10[146] = v166;
      if (v166)
      {
        v167 = v165;
      }

      else
      {
        v167 = 0;
      }

      if (v166)
      {
        v168 = v166;
      }

      else
      {
        v168 = 0xE000000000000000;
      }

      v169 = swift_task_alloc();
      v10[147] = v169;
      *v169 = v10;
      v169[1] = sub_146AB0;

      return AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:)(v167, v168, v163, v164);
    }

    else
    {
      v13(v1[91], v1[104], v1[84]);
      v70 = sub_2CDFE0();
      v71 = sub_2CE680();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_0, v70, v71, "OpenMediaItemFlow#execute failed to convert PlaybackItem.identifier to MusicSiriRepresentation, with unknown error", v72, 2u);
      }

      v73 = v1[107];
      v74 = v10[91];
      v75 = v10[84];
      v77 = v10[50];
      v76 = v10[51];
      v78 = v10[49];

      v73(v74, v75);
      (*(v77 + 104))(v76, enum case for AdditionalMetricsDescription.StatusReason.failedToConvertMusicSiriRepresentation(_:), v78);
      v79 = swift_task_alloc();
      v10[149] = v79;
      *v79 = v10;
      v79[1] = sub_1472B8;
      v80 = v10[51];

      return sub_14982C(v80);
    }
  }

  v181 = v9;
  v42 = v1[36];
  v41 = v1[37];
  v44 = v1[29];
  v43 = v1[30];
  (*(v10[30] + 32))(v10[37], v12, v10[29]);
  v45 = *(v43 + 16);
  v45(v42, v41, v44);
  v46 = (*(v43 + 88))(v42, v44);
  v178 = v10;
  if (v46 != enum case for MusicSiriItemRequest.Error.itemNotFound(_:))
  {
    if (v46 == enum case for MusicSiriItemRequest.Error.unableToParseIdentifier(_:))
    {
    }

    else
    {
      v104 = enum case for MusicSiriItemRequest.Error.unsupportedType(_:);
      v105 = v46;

      if (v105 != v104)
      {
        v146 = v10[37];
        v147 = v10[31];
        v148 = v10[29];
        (v10[105])(v10[93], v10[104], v10[84]);
        v45(v147, v146, v148);
        v149 = sub_2CDFE0();
        v150 = sub_2CE680();
        v151 = os_log_type_enabled(v149, v150);
        v153 = v10[30];
        v152 = v10[31];
        v154 = v10[29];
        if (v151)
        {
          v155 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          *v155 = 138412290;
          sub_14CCF0(&qword_352778, &type metadata accessor for MusicSiriItemRequest.Error, &protocol conformance descriptor for MusicSiriItemRequest.Error);
          swift_allocError();
          v45(v157, v152, v154);
          v158 = _swift_stdlib_bridgeErrorToNSError();
          v161 = *(v153 + 8);
          v159 = v153 + 8;
          v160 = v161;
          v161(v152, v154);
          *(v155 + 4) = v158;
          *v156 = v158;
          _os_log_impl(&dword_0, v149, v150, "OpenMediaItemFlow#execute Unknown MusicSiriRepresentationError. %@", v155, 0xCu);
          sub_30B8(v156, &unk_34FC00, &unk_2D0150);
        }

        else
        {

          v175 = *(v153 + 8);
          v159 = v153 + 8;
          v160 = v175;
          v175(v152, v154);
        }

        v178[142] = v160;
        v178[141] = v159;
        (v178[107])(v178[93], v178[84]);
        sub_2CCFB0();
        sub_2CBE10();
        v123 = sub_2CCF80();
        v178[143] = v123;
        v124 = swift_task_alloc();
        v178[144] = v124;
        *v124 = v178;
        v125 = sub_146528;
        goto LABEL_51;
      }
    }

    v106 = v10[37];
    v107 = v10[35];
    v108 = v10[29];
    (v10[105])(v10[97], v10[104], v10[84]);
    v45(v107, v106, v108);
    v109 = sub_2CDFE0();
    v110 = sub_2CE680();
    v111 = os_log_type_enabled(v109, v110);
    v112 = v10[35];
    v113 = v10[29];
    v114 = v10[30];
    if (v111)
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v115 = 138412290;
      sub_14CCF0(&qword_352778, &type metadata accessor for MusicSiriItemRequest.Error, &protocol conformance descriptor for MusicSiriItemRequest.Error);
      swift_allocError();
      v45(v117, v112, v113);
      v118 = _swift_stdlib_bridgeErrorToNSError();
      v121 = *(v114 + 8);
      v119 = v114 + 8;
      v120 = v121;
      v121(v112, v113);
      *(v115 + 4) = v118;
      *v116 = v118;
      _os_log_impl(&dword_0, v109, v110, "OpenMediaItemFlow#execute Unable to parse identifier or identifier type is unsupported. %@", v115, 0xCu);
      sub_30B8(v116, &unk_34FC00, &unk_2D0150);
    }

    else
    {

      v122 = *(v114 + 8);
      v119 = v114 + 8;
      v120 = v122;
      v122(v112, v113);
    }

    v178[126] = v120;
    v178[125] = v119;
    (v178[107])(v178[97], v178[84]);
    sub_2CCFB0();
    sub_2CBE10();
    v123 = sub_2CCF80();
    v178[127] = v123;
    v124 = swift_task_alloc();
    v178[128] = v124;
    *v124 = v178;
    v125 = sub_14504C;
LABEL_51:
    v124[1] = v125;
    v144 = v123;
    v145 = 0;
    v173 = 0;
    v174 = 0xE000000000000000;
    goto LABEL_52;
  }

  v47 = v10[36];
  v49 = v10[27];
  v48 = v10[28];
  v51 = v10[25];
  v50 = v10[26];
  (*(v10[30] + 96))(v47, v10[29]);
  (*(v50 + 32))(v48, v47, v51);
  (*(v50 + 16))(v49, v48, v51);
  v52 = (*(v50 + 88))(v49, v51);
  if (v52 != enum case for MusicSiriItemRequest.Error.ItemNotFoundReason.libraryMismatch(_:))
  {
    v179 = v45;
    v84 = v10[105];
    v85 = v10[104];
    v86 = v10[84];
    v87 = v10[37];
    v88 = v10[29];
    if (v52 == enum case for MusicSiriItemRequest.Error.ItemNotFoundReason.libraryItemNotFound(_:) || v52 == enum case for MusicSiriItemRequest.Error.ItemNotFoundReason.catalogItemNotFound(_:))
    {
      v126 = v10[33];
      v84(v10[95], v85, v86);
      v45(v126, v87, v88);
      v127 = sub_2CDFE0();
      v128 = sub_2CE680();
      v129 = os_log_type_enabled(v127, v128);
      v130 = v10[33];
      v131 = v10[29];
      v132 = v10[30];
      if (v129)
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *v133 = 138412290;
        sub_14CCF0(&qword_352778, &type metadata accessor for MusicSiriItemRequest.Error, &protocol conformance descriptor for MusicSiriItemRequest.Error);
        swift_allocError();
        v179(v135, v130, v131);
        v136 = _swift_stdlib_bridgeErrorToNSError();
        v139 = *(v132 + 8);
        v138 = v132 + 8;
        v137 = v139;
        v139(v130, v131);
        *(v133 + 4) = v136;
        *v134 = v136;
        _os_log_impl(&dword_0, v127, v128, "OpenMediaItemFlow#execute Item was not found. %@", v133, 0xCu);
        sub_30B8(v134, &unk_34FC00, &unk_2D0150);
      }

      else
      {

        v170 = *(v132 + 8);
        v138 = v132 + 8;
        v137 = v170;
        v170(v130, v131);
      }

      v141 = v181;
      v178[134] = v137;
      v178[133] = v138;
      (v178[107])(v178[95], v178[84]);
      sub_2CCFB0();
      sub_2CBE10();
      v171 = sub_2CCF80();
      v178[135] = v171;
      v172 = swift_task_alloc();
      v178[136] = v172;
      *v172 = v178;
      v172[1] = sub_145A5C;
      v144 = v171;
      v145 = 0;
      goto LABEL_46;
    }

    v89 = v10[94];
    v90 = v10[32];

    v84(v89, v85, v86);
    v179(v90, v87, v88);
    v91 = sub_2CDFE0();
    v92 = sub_2CE680();
    v93 = os_log_type_enabled(v91, v92);
    v94 = v10[32];
    v95 = v10[29];
    v96 = v10[30];
    if (v93)
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v97 = 138412290;
      sub_14CCF0(&qword_352778, &type metadata accessor for MusicSiriItemRequest.Error, &protocol conformance descriptor for MusicSiriItemRequest.Error);
      swift_allocError();
      v179(v99, v94, v95);
      v100 = _swift_stdlib_bridgeErrorToNSError();
      v103 = *(v96 + 8);
      v101 = v96 + 8;
      v102 = v103;
      v103(v94, v95);
      *(v97 + 4) = v100;
      *v98 = v100;
      _os_log_impl(&dword_0, v91, v92, "OpenMediaItemFlow#execute Unknown itemNotFoundError. %@", v97, 0xCu);
      sub_30B8(v98, &unk_34FC00, &unk_2D0150);
    }

    else
    {

      v176 = *(v96 + 8);
      v101 = v96 + 8;
      v102 = v176;
      v176(v94, v95);
    }

    v178[138] = v102;
    v178[137] = v101;
    (v178[107])(v178[94], v178[84]);
    sub_2CCFB0();
    sub_2CBE10();
    v123 = sub_2CCF80();
    v178[139] = v123;
    v124 = swift_task_alloc();
    v178[140] = v124;
    *v124 = v178;
    v125 = sub_145F80;
    goto LABEL_51;
  }

  v53 = v10[37];
  v54 = v10[34];
  v55 = v10[29];
  (v10[105])(v10[96], v10[104], v10[84]);
  v45(v54, v53, v55);
  v56 = sub_2CDFE0();
  v57 = sub_2CE680();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v10[34];
  v60 = v45;
  v61 = v10[29];
  v62 = v10[30];
  if (v58)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412290;
    sub_14CCF0(&qword_352778, &type metadata accessor for MusicSiriItemRequest.Error, &protocol conformance descriptor for MusicSiriItemRequest.Error);
    swift_allocError();
    v60(v65, v59, v61);
    v66 = _swift_stdlib_bridgeErrorToNSError();
    v69 = *(v62 + 8);
    v68 = v62 + 8;
    v67 = v69;
    v69(v59, v61);
    *(v63 + 4) = v66;
    *v64 = v66;
    _os_log_impl(&dword_0, v56, v57, "OpenMediaItemFlow#execute There was a user library mismatch. %@", v63, 0xCu);
    sub_30B8(v64, &unk_34FC00, &unk_2D0150);
  }

  else
  {

    v140 = *(v62 + 8);
    v68 = v62 + 8;
    v67 = v140;
    v140(v59, v61);
  }

  v141 = v181;
  v178[130] = v67;
  v178[129] = v68;
  (v178[107])(v178[96], v178[84]);
  sub_2CCFB0();
  sub_2CBE10();
  v142 = sub_2CCF80();
  v178[131] = v142;
  v143 = swift_task_alloc();
  v178[132] = v143;
  *v143 = v178;
  v143[1] = sub_145538;
  v144 = v142;
  v145 = 1;
LABEL_46:
  v173 = v177;
  v174 = v141;
LABEL_52:

  return sub_14AB6C(v144, v145, v173, v174);
}

uint64_t sub_14504C()
{

  return _swift_task_switch(sub_145164, 0, 0);
}

uint64_t sub_145164(uint64_t a1)
{
  v12 = v1[126];
  v11 = v1[122];
  v2 = v1[109];
  v3 = v1[108];
  v4 = v1[70];
  v15 = v1[69];
  v16 = v1[73];
  v5 = v1[41];
  v13 = v1[40];
  v14 = v1[43];
  v6 = v1[39];
  v7 = v1[37];
  v8 = v1[29];
  sub_2C9EB0();

  v12(v7, v8);
  sub_30B8(v6, &qword_352770, &qword_2D4FB8);
  (*(v5 + 8))(v14, v13);
  (*(v4 + 8))(v16, v15);

  v9 = v1[1];

  return v9();
}

uint64_t sub_145538()
{

  return _swift_task_switch(sub_14566C, 0, 0);
}

uint64_t sub_14566C(uint64_t a1)
{
  v15 = v1[130];
  v2 = v1[109];
  v3 = v1[108];
  v4 = v1[70];
  v18 = v1[69];
  v19 = v1[73];
  v5 = v1[41];
  v16 = v1[40];
  v17 = v1[43];
  v13 = v1[122];
  v14 = v1[39];
  v6 = v1[28];
  v11 = v1[29];
  v12 = v1[37];
  v7 = v1[25];
  v8 = v1[26];
  sub_2C9EB0();

  (*(v8 + 8))(v6, v7);
  v15(v12, v11);
  sub_30B8(v14, &qword_352770, &qword_2D4FB8);
  (*(v5 + 8))(v17, v16);
  (*(v4 + 8))(v19, v18);

  v9 = v1[1];

  return v9();
}

uint64_t sub_145A5C()
{

  return _swift_task_switch(sub_145B90, 0, 0);
}

uint64_t sub_145B90(uint64_t a1)
{
  v15 = v1[134];
  v2 = v1[109];
  v3 = v1[108];
  v4 = v1[70];
  v18 = v1[69];
  v19 = v1[73];
  v5 = v1[41];
  v16 = v1[40];
  v17 = v1[43];
  v13 = v1[122];
  v14 = v1[39];
  v6 = v1[28];
  v11 = v1[29];
  v12 = v1[37];
  v7 = v1[25];
  v8 = v1[26];
  sub_2C9EB0();

  (*(v8 + 8))(v6, v7);
  v15(v12, v11);
  sub_30B8(v14, &qword_352770, &qword_2D4FB8);
  (*(v5 + 8))(v17, v16);
  (*(v4 + 8))(v19, v18);

  v9 = v1[1];

  return v9();
}

uint64_t sub_145F80()
{

  return _swift_task_switch(sub_146098, 0, 0);
}

uint64_t sub_146098()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 296);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(*(v0 + 208) + 8);
  v6(*(v0 + 224), v5);
  v1(v2, v3);
  v6(v4, v5);
  sub_2CB410();
  v7 = *(v0 + 840);
  v8 = *(v0 + 832);
  v9 = *(v0 + 672);
  if (v10)
  {
    v11 = *(v0 + 736);
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v14 = *(v0 + 320);
    v15 = *(v0 + 328);

    v7(v11, v8, v9);
    (*(v15 + 16))(v13, v12, v14);
    v16 = sub_2CDFE0();
    v17 = sub_2CE670();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 336);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = sub_2CB410();
      v25 = *(v0 + 328);
      v24 = *(v0 + 336);
      v26 = *(v0 + 320);
      if (v23)
      {
        v27 = v22;
        v28 = v23;
        sub_10C40();
        swift_allocError();
        *v29 = v27;
        v29[1] = v28;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = *(v25 + 8);
        v31(v24, v26);
      }

      else
      {
        v31 = *(v25 + 8);
        v31(*(v0 + 336), *(v0 + 320));
        v30 = 0;
      }

      *(v20 + 4) = v30;
      *v21 = v30;
      _os_log_impl(&dword_0, v16, v17, "OpenMediaItemFlow#execute invoking OpenMusicItemIntent with identifier: %@", v20, 0xCu);
      sub_30B8(v21, &unk_34FC00, &unk_2D0150);
    }

    else
    {
      v44 = *(v0 + 320);
      v45 = *(v0 + 328);

      v31 = *(v45 + 8);
      v31(v19, v44);
    }

    *(v0 + 1160) = v31;
    v46 = *(v0 + 176);
    (*(v0 + 856))(*(v0 + 736), *(v0 + 672));
    sub_EEAC(v46 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker, v0 + 16);
    v47 = *(v0 + 40);
    v48 = *(v0 + 48);
    sub_35E0((v0 + 16), v47);
    v49 = sub_2CB410();
    *(v0 + 1168) = v50;
    if (v50)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0xE000000000000000;
    }

    v53 = swift_task_alloc();
    *(v0 + 1176) = v53;
    *v53 = v0;
    v53[1] = sub_146AB0;

    return AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:)(v51, v52, v47, v48);
  }

  else
  {
    v7(*(v0 + 728), *(v0 + 832), *(v0 + 672));
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "OpenMediaItemFlow#execute failed to convert PlaybackItem.identifier to MusicSiriRepresentation, with unknown error", v34, 2u);
    }

    v35 = *(v0 + 856);
    v36 = *(v0 + 728);
    v37 = *(v0 + 672);
    v39 = *(v0 + 400);
    v38 = *(v0 + 408);
    v40 = *(v0 + 392);

    v35(v36, v37);
    (*(v39 + 104))(v38, enum case for AdditionalMetricsDescription.StatusReason.failedToConvertMusicSiriRepresentation(_:), v40);
    v41 = swift_task_alloc();
    *(v0 + 1192) = v41;
    *v41 = v0;
    v41[1] = sub_1472B8;
    v42 = *(v0 + 408);

    return sub_14982C(v42);
  }
}

uint64_t sub_146528()
{

  return _swift_task_switch(sub_146640, 0, 0);
}

uint64_t sub_146640()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 288);
  v3 = *(v0 + 232);
  v1(*(v0 + 296), v3);
  v1(v2, v3);
  sub_2CB410();
  v4 = *(v0 + 840);
  v5 = *(v0 + 832);
  v6 = *(v0 + 672);
  if (v7)
  {
    v8 = *(v0 + 736);
    v10 = *(v0 + 336);
    v9 = *(v0 + 344);
    v11 = *(v0 + 320);
    v12 = *(v0 + 328);

    v4(v8, v5, v6);
    (*(v12 + 16))(v10, v9, v11);
    v13 = sub_2CDFE0();
    v14 = sub_2CE670();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 336);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = sub_2CB410();
      v22 = *(v0 + 328);
      v21 = *(v0 + 336);
      v23 = *(v0 + 320);
      if (v20)
      {
        v24 = v19;
        v25 = v20;
        sub_10C40();
        swift_allocError();
        *v26 = v24;
        v26[1] = v25;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = *(v22 + 8);
        v28(v21, v23);
      }

      else
      {
        v28 = *(v22 + 8);
        v28(*(v0 + 336), *(v0 + 320));
        v27 = 0;
      }

      *(v17 + 4) = v27;
      *v18 = v27;
      _os_log_impl(&dword_0, v13, v14, "OpenMediaItemFlow#execute invoking OpenMusicItemIntent with identifier: %@", v17, 0xCu);
      sub_30B8(v18, &unk_34FC00, &unk_2D0150);
    }

    else
    {
      v41 = *(v0 + 320);
      v42 = *(v0 + 328);

      v28 = *(v42 + 8);
      v28(v16, v41);
    }

    *(v0 + 1160) = v28;
    v43 = *(v0 + 176);
    (*(v0 + 856))(*(v0 + 736), *(v0 + 672));
    sub_EEAC(v43 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_appIntentInvoker, v0 + 16);
    v44 = *(v0 + 40);
    v45 = *(v0 + 48);
    sub_35E0((v0 + 16), v44);
    v46 = sub_2CB410();
    *(v0 + 1168) = v47;
    if (v47)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0;
    }

    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0xE000000000000000;
    }

    v50 = swift_task_alloc();
    *(v0 + 1176) = v50;
    *v50 = v0;
    v50[1] = sub_146AB0;

    return AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:)(v48, v49, v44, v45);
  }

  else
  {
    v4(*(v0 + 728), *(v0 + 832), *(v0 + 672));
    v29 = sub_2CDFE0();
    v30 = sub_2CE680();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "OpenMediaItemFlow#execute failed to convert PlaybackItem.identifier to MusicSiriRepresentation, with unknown error", v31, 2u);
    }

    v32 = *(v0 + 856);
    v33 = *(v0 + 728);
    v34 = *(v0 + 672);
    v36 = *(v0 + 400);
    v35 = *(v0 + 408);
    v37 = *(v0 + 392);

    v32(v33, v34);
    (*(v36 + 104))(v35, enum case for AdditionalMetricsDescription.StatusReason.failedToConvertMusicSiriRepresentation(_:), v37);
    v38 = swift_task_alloc();
    *(v0 + 1192) = v38;
    *v38 = v0;
    v38[1] = sub_1472B8;
    v39 = *(v0 + 408);

    return sub_14982C(v39);
  }
}

uint64_t sub_146AB0()
{
  *(*v1 + 1184) = v0;

  if (v0)
  {
    v2 = sub_1490C0;
  }

  else
  {
    v2 = sub_146BEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_146BEC()
{
  v25 = *(v0 + 1160);
  v28 = *(v0 + 864);
  v29 = *(v0 + 560);
  v30 = *(v0 + 872);
  v31 = *(v0 + 552);
  v32 = *(v0 + 584);
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v17 = *(v0 + 440);
  v18 = *(v0 + 456);
  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v19 = *(v0 + 416);
  v20 = *(v0 + 392);
  v23 = *(v0 + 384);
  v22 = *(v0 + 376);
  v24 = *(v0 + 368);
  v26 = *(v0 + 360);
  v27 = *(v0 + 352);
  v6 = *(v0 + 344);
  v7 = *(v0 + 320);
  v8 = *(v0 + 312);
  v21 = *(v0 + 176);

  sub_30B8(v8, &qword_352770, &qword_2D4FB8);
  v25(v6, v7);
  sub_306C((v0 + 16));
  (*(v1 + 104))(v18, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v17);
  (*(v3 + 104))(v2, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v19);
  (*(v5 + 104))(v4, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v20);
  sub_2CCAD0();
  (*(v5 + 8))(v4, v20);
  (*(v3 + 8))(v2, v19);
  (*(v1 + 8))(v18, v17);
  sub_35E0((v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
  (*(v22 + 104))(v23, enum case for TypeOfIntent.openMediaItem(_:), v24);
  v9 = enum case for ActivityType.completed(_:);
  v10 = sub_2C9C20();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v26, v9, v10);
  (*(v11 + 56))(v26, 0, 1, v10);
  v12 = enum case for SiriKitReliabilityCodes.success(_:);
  v13 = sub_2C98F0();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v27, v12, v13);
  (*(v14 + 56))(v27, 0, 1, v13);
  sub_2CB4B0();

  sub_30B8(v27, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v26, &qword_34CB88, &unk_2D0D90);
  (*(v22 + 8))(v23, v24);
  sub_2C9EB0();

  (*(v29 + 8))(v32, v31);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1472B8()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_147410, 0, 0);
}

uint64_t sub_147410(uint64_t a1)
{
  v2 = v1[122];
  v3 = v1[109];
  v4 = v1[108];
  v5 = v1[70];
  v12 = v1[69];
  v13 = v1[73];
  v11 = v1[43];
  v7 = v1[40];
  v6 = v1[41];
  v8 = v1[39];
  sub_2C9EB0();

  sub_30B8(v8, &qword_352770, &qword_2D4FB8);
  (*(v6 + 8))(v11, v7);
  (*(v5 + 8))(v13, v12);

  v9 = v1[1];

  return v9();
}

uint64_t sub_1477B4()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_14790C, 0, 0);
}

uint64_t sub_14790C(uint64_t a1)
{
  v2 = v1[151];
  v3 = v1[109];
  v4 = v1[108];
  v5 = v1[73];
  v6 = v1[69];
  sub_2C9EB0();

  v2(v5, v6);

  v7 = v1[1];

  return v7();
}

uint64_t sub_147C5C()
{

  return _swift_task_switch(sub_147D74, 0, 0);
}

uint64_t sub_147D74(uint64_t a1)
{
  v2 = v1[109];
  v3 = v1[108];
  sub_2C9EB0();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1480AC()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_148204, 0, 0);
}

uint64_t sub_148204(uint64_t a1)
{
  sub_2C9EB0();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_148514()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_14866C, 0, 0);
}

uint64_t sub_14866C(uint64_t a1)
{
  v2 = v1[109];
  v3 = v1[108];
  v4 = v1[73];
  v5 = v1[70];
  v6 = v1[69];
  sub_2C9EB0();

  (*(v5 + 8))(v4, v6);

  v7 = v1[1];

  return v7();
}

uint64_t sub_1489D4()
{
  v18 = v0;
  *(v0 + 1256) = *(v0 + 928);
  (*(v0 + 840))(*(v0 + 696), *(v0 + 832), *(v0 + 672));
  swift_errorRetain();
  v1 = sub_2CDFE0();
  v2 = sub_2CE680();

  if (os_log_type_enabled(v1, v2))
  {
    v16 = *(v0 + 856);
    v3 = *(v0 + 696);
    v4 = *(v0 + 672);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_2CEEF0();
    v9 = sub_3F08(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v1, v2, "OpenMediaItemFlow#execute threw an error when trying to invoke open intent: %s", v5, 0xCu);
    sub_306C(v6);

    v16(v3, v4);
  }

  else
  {
    v10 = *(v0 + 856);
    v11 = *(v0 + 696);
    v12 = *(v0 + 672);

    v10(v11, v12);
  }

  (*(*(v0 + 400) + 104))(*(v0 + 408), enum case for AdditionalMetricsDescription.StatusReason.appIntentInvokerFailurePodcasts(_:), *(v0 + 392));
  v13 = swift_task_alloc();
  *(v0 + 1264) = v13;
  *v13 = v0;
  v13[1] = sub_148514;
  v14 = *(v0 + 408);

  return sub_14982C(v14);
}

uint64_t sub_148C1C()
{
  v18 = v0;
  *(v0 + 1256) = *(v0 + 944);
  (*(v0 + 840))(*(v0 + 696), *(v0 + 832), *(v0 + 672));
  swift_errorRetain();
  v1 = sub_2CDFE0();
  v2 = sub_2CE680();

  if (os_log_type_enabled(v1, v2))
  {
    v16 = *(v0 + 856);
    v3 = *(v0 + 696);
    v4 = *(v0 + 672);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_2CEEF0();
    v9 = sub_3F08(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v1, v2, "OpenMediaItemFlow#execute threw an error when trying to invoke open intent: %s", v5, 0xCu);
    sub_306C(v6);

    v16(v3, v4);
  }

  else
  {
    v10 = *(v0 + 856);
    v11 = *(v0 + 696);
    v12 = *(v0 + 672);

    v10(v11, v12);
  }

  (*(*(v0 + 400) + 104))(*(v0 + 408), enum case for AdditionalMetricsDescription.StatusReason.appIntentInvokerFailurePodcasts(_:), *(v0 + 392));
  v13 = swift_task_alloc();
  *(v0 + 1264) = v13;
  *v13 = v0;
  v13[1] = sub_148514;
  v14 = *(v0 + 408);

  return sub_14982C(v14);
}

uint64_t sub_148E64()
{
  v18 = v0;
  (*(v0 + 896))(*(v0 + 512), *(v0 + 488));
  *(v0 + 1256) = *(v0 + 960);
  (*(v0 + 840))(*(v0 + 696), *(v0 + 832), *(v0 + 672));
  swift_errorRetain();
  v1 = sub_2CDFE0();
  v2 = sub_2CE680();

  if (os_log_type_enabled(v1, v2))
  {
    v16 = *(v0 + 856);
    v3 = *(v0 + 696);
    v4 = *(v0 + 672);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_2CEEF0();
    v9 = sub_3F08(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v1, v2, "OpenMediaItemFlow#execute threw an error when trying to invoke open intent: %s", v5, 0xCu);
    sub_306C(v6);

    v16(v3, v4);
  }

  else
  {
    v10 = *(v0 + 856);
    v11 = *(v0 + 696);
    v12 = *(v0 + 672);

    v10(v11, v12);
  }

  (*(*(v0 + 400) + 104))(*(v0 + 408), enum case for AdditionalMetricsDescription.StatusReason.appIntentInvokerFailurePodcasts(_:), *(v0 + 392));
  v13 = swift_task_alloc();
  *(v0 + 1264) = v13;
  *v13 = v0;
  v13[1] = sub_148514;
  v14 = *(v0 + 408);

  return sub_14982C(v14);
}

uint64_t sub_1490C0()
{
  v26 = v0;
  v1 = *(v0 + 1160);
  v23 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 688);
  v4 = *(v0 + 672);
  v5 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 312);

  sub_30B8(v7, &qword_352770, &qword_2D4FB8);
  v1(v5, v6);
  sub_306C((v0 + 16));
  v23(v3, v2, v4);
  swift_errorRetain();
  v8 = sub_2CDFE0();
  v9 = sub_2CE680();

  if (os_log_type_enabled(v8, v9))
  {
    v24 = *(v0 + 856);
    v10 = *(v0 + 688);
    v11 = *(v0 + 672);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_2CEEF0();
    v16 = sub_3F08(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "OpenMediaItemFlow#execute threw an error when trying to invoke OpenMusicItemIntent: %s", v12, 0xCu);
    sub_306C(v13);

    v24(v10, v11);
  }

  else
  {
    v17 = *(v0 + 856);
    v18 = *(v0 + 688);
    v19 = *(v0 + 672);

    v17(v18, v19);
  }

  (*(*(v0 + 400) + 104))(*(v0 + 408), enum case for AdditionalMetricsDescription.StatusReason.appIntentInvokerFailureMusic(_:), *(v0 + 392));
  v20 = swift_task_alloc();
  *(v0 + 1272) = v20;
  *v20 = v0;
  v20[1] = sub_14936C;
  v21 = *(v0 + 408);

  return sub_14982C(v21);
}

uint64_t sub_14936C()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1494C4, 0, 0);
}

uint64_t sub_1494C4(uint64_t a1)
{
  v2 = v1[109];
  v3 = v1[108];
  v4 = v1[73];
  v5 = v1[70];
  v6 = v1[69];
  sub_2C9EB0();

  (*(v5 + 8))(v4, v6);

  v7 = v1[1];

  return v7();
}

uint64_t sub_14982C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_20410(&qword_34CB78, &unk_2D0D80);
  v2[9] = swift_task_alloc();
  sub_20410(&qword_34CB88, &unk_2D0D90);
  v2[10] = swift_task_alloc();
  v3 = sub_2CB970();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_2CCB30();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_2CCAC0();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  sub_2C9B80();
  v2[20] = swift_task_alloc();
  v6 = sub_2CA630();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_149A9C, 0, 0);
}

uint64_t sub_149A9C(uint64_t a1)
{
  v2 = sub_2CB460();
  if (!v2)
  {
    sub_2CB180();
    v2 = sub_2CB170();
  }

  *(v1 + 192) = v2;
  v3 = swift_task_alloc();
  *(v1 + 200) = v3;
  *v3 = v1;
  v3[1] = sub_149B50;

  return sub_1BAD2C();
}

uint64_t sub_149B50(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 256) = a2;

  return _swift_task_switch(sub_149C54, 0, 0);
}

uint64_t sub_149C54()
{
  if (*(v0 + 256))
  {
    v28 = *(v0 + 208);
    v2 = *(v0 + 144);
    v1 = *(v0 + 152);
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v24 = *(v0 + 96);
    v25 = *(v0 + 104);
    v26 = *(v0 + 88);
    v27 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    (*(v2 + 104))(v1, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v3);
    (*(v5 + 104))(v4, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v6);
    sub_2CCAD0();
    (*(v5 + 8))(v4, v6);
    (*(v2 + 8))(v1, v3);
    sub_35E0((v7 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v7 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
    (*(v24 + 104))(v25, enum case for TypeOfIntent.openMediaItem(_:), v26);
    v9 = enum case for ActivityType.dialogFailed(_:);
    v10 = sub_2C9C20();
    v11 = *(v10 - 8);
    (*(v11 + 104))(v27, v9, v10);
    (*(v11 + 56))(v27, 0, 1, v10);
    v12 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v13 = sub_2C98F0();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v8, v12, v13);
    (*(v14 + 56))(v8, 0, 1, v13);
    sub_2CB4B0();

    sub_A41AC(v28, 1);
    sub_30B8(v8, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v27, &qword_34CB88, &unk_2D0D90);
    (*(v24 + 8))(v25, v26);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 208);
    v18 = *(v0 + 192);
    sub_2C9B50();
    v19 = swift_task_alloc();
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;
    sub_2CA560();

    sub_2CA080();
    swift_allocObject();
    *(v0 + 216) = sub_2CA070();
    sub_20410(&unk_351900, &unk_2D0960);
    v20 = swift_allocObject();
    *(v0 + 224) = v20;
    *(v20 + 16) = xmmword_2D0770;
    *(v20 + 32) = v17;
    v29 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v21 = v17;
    v22 = swift_task_alloc();
    *(v0 + 232) = v22;
    *v22 = v0;
    v22[1] = sub_14A120;
    v23 = *(v0 + 184);

    return v29(v0 + 16, v20, v23);
  }
}

uint64_t sub_14A120()
{

  return _swift_task_switch(sub_14A254, 0, 0);
}

uint64_t sub_14A254()
{
  v1 = (*(v0 + 64) + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_outputPublisher);
  v2 = v1[3];
  v3 = v1[4];
  sub_35E0(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  *v4 = v0;
  v4[1] = sub_14A31C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v2, v3);
}

uint64_t sub_14A31C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_14A7C8;
  }

  else
  {
    v2 = sub_14A430;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_14A430()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 88);
  v27 = *(v0 + 80);
  v8 = *(v0 + 64);
  v28 = *(v0 + 72);
  (*(v1 + 104))(v2, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v3);
  (*(v5 + 104))(v4, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v6);
  sub_2CCAD0();
  (*(v5 + 8))(v4, v6);
  (*(v1 + 8))(v2, v3);
  sub_35E0((v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
  (*(v7 + 104))(v25, enum case for TypeOfIntent.openMediaItem(_:), v26);
  v9 = enum case for ActivityType.failed(_:);
  v10 = sub_2C9C20();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v27, v9, v10);
  (*(v11 + 56))(v27, 0, 1, v10);
  v12 = enum case for SiriKitReliabilityCodes.success(_:);
  v13 = sub_2C98F0();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v28, v12, v13);
  (*(v14 + 56))(v28, 0, 1, v13);
  sub_2CB4B0();

  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v17 = *(v0 + 168);
  v19 = *(v0 + 96);
  v18 = *(v0 + 104);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  v22 = *(v0 + 72);
  sub_A41AC(*(v0 + 208), 0);
  sub_30B8(v22, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v21, &qword_34CB88, &unk_2D0D90);
  (*(v19 + 8))(v18, v20);
  sub_306C((v0 + 16));
  (*(v16 + 8))(v15, v17);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_14A7C8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 88);
  v27 = *(v0 + 80);
  v8 = *(v0 + 64);
  v28 = *(v0 + 72);
  (*(v2 + 104))(v1, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v3);
  (*(v5 + 104))(v4, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v6);
  sub_2CCAD0();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_35E0((v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
  (*(v7 + 104))(v25, enum case for TypeOfIntent.openMediaItem(_:), v26);
  v9 = enum case for ActivityType.failed(_:);
  v10 = sub_2C9C20();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v27, v9, v10);
  (*(v11 + 56))(v27, 0, 1, v10);
  v12 = enum case for SiriKitReliabilityCodes.renderingError(_:);
  v13 = sub_2C98F0();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v28, v12, v13);
  (*(v14 + 56))(v28, 0, 1, v13);
  sub_2CB4B0();

  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v17 = *(v0 + 168);
  v19 = *(v0 + 96);
  v18 = *(v0 + 104);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  v22 = *(v0 + 72);
  sub_A41AC(*(v0 + 208), 0);
  sub_30B8(v22, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v21, &qword_34CB88, &unk_2D0D90);
  (*(v19 + 8))(v18, v20);
  sub_306C((v0 + 16));
  (*(v16 + 8))(v15, v17);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_14AB6C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 200) = a4;
  *(v5 + 208) = v4;
  *(v5 + 440) = a2;
  *(v5 + 184) = a1;
  *(v5 + 192) = a3;
  sub_20410(&qword_34CB78, &unk_2D0D80);
  *(v5 + 216) = swift_task_alloc();
  sub_20410(&qword_34CB88, &unk_2D0D90);
  *(v5 + 224) = swift_task_alloc();
  v6 = sub_2CB970();
  *(v5 + 232) = v6;
  *(v5 + 240) = *(v6 - 8);
  *(v5 + 248) = swift_task_alloc();
  v7 = sub_2CCB20();
  *(v5 + 256) = v7;
  *(v5 + 264) = *(v7 - 8);
  *(v5 + 272) = swift_task_alloc();
  v8 = sub_2CCB30();
  *(v5 + 280) = v8;
  *(v5 + 288) = *(v8 - 8);
  *(v5 + 296) = swift_task_alloc();
  v9 = sub_2CCAC0();
  *(v5 + 304) = v9;
  *(v5 + 312) = *(v9 - 8);
  *(v5 + 320) = swift_task_alloc();
  sub_2C9B80();
  *(v5 + 328) = swift_task_alloc();
  v10 = sub_2CA630();
  *(v5 + 336) = v10;
  *(v5 + 344) = *(v10 - 8);
  *(v5 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_14AE40, 0, 0);
}

uint64_t sub_14AE40(uint64_t a1)
{
  v2 = sub_2CB460();
  if (!v2)
  {
    sub_2CB180();
    v2 = sub_2CB170();
  }

  *(v1 + 360) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  v5 = *(v1 + 440);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  strcpy((inited + 32), "mediaItemType");
  *(inited + 72) = &type metadata for String;
  *(inited + 46) = -4864;
  *(inited + 48) = v4;
  *(inited + 56) = v3;

  v7 = sub_112C0(inited);
  *(v1 + 368) = v7;
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  if (v5)
  {
    v8 = swift_task_alloc();
    *(v1 + 376) = v8;
    *v8 = v1;
    v8[1] = sub_14B034;
    v9 = *(v1 + 184);

    return sub_1BC31C(v9, v7);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v1 + 384) = v11;
    *v11 = v1;
    v11[1] = sub_14B68C;
    v12 = *(v1 + 184);

    return sub_1BB8B8(v12, v7);
  }
}

uint64_t sub_14B034(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 152) = a2;
  *(v3 + 136) = v2;
  *(v3 + 144) = a1;
  *(v3 + 441) = a2;

  return _swift_task_switch(sub_14B158, 0, 0);
}

uint64_t sub_14B158()
{
  v1 = *(v0 + 144);
  if (*(v0 + 441))
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v6 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v10 = *(v0 + 256);
    v26 = *(v0 + 240);
    v27 = *(v0 + 248);
    v28 = *(v0 + 232);
    v31 = *(v0 + 216);
    v29 = *(v0 + 208);
    v30 = *(v0 + 224);
    v32 = *(v0 + 144);
    (*(v3 + 104))(v2, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v4);
    (*(v7 + 104))(v5, enum case for AdditionalMetricsDescription.SourceFunction.noResultsDlg(_:), v6);
    (*(v9 + 104))(v8, enum case for AdditionalMetricsDescription.StatusReason.noSearchResults(_:), v10);
    sub_2CCAD0();
    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);
    sub_35E0((v29 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v29 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
    (*(v26 + 104))(v27, enum case for TypeOfIntent.openMediaItem(_:), v28);
    v11 = enum case for ActivityType.dialogFailed(_:);
    v12 = sub_2C9C20();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v30, v11, v12);
    (*(v13 + 56))(v30, 0, 1, v12);
    v14 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v15 = sub_2C98F0();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v31, v14, v15);
    (*(v16 + 56))(v31, 0, 1, v15);
    sub_2CB4B0();

    sub_A41AC(v32, 1);

    sub_30B8(v31, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v30, &qword_34CB88, &unk_2D0D90);
    (*(v26 + 8))(v27, v28);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 392) = v1;
    v19 = *(v0 + 360);
    v20 = v1;
    sub_2C9B20();
    v21 = swift_task_alloc();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    sub_2CA560();

    sub_2CA080();
    swift_allocObject();
    *(v0 + 400) = sub_2CA070();
    sub_20410(&unk_351900, &unk_2D0960);
    v22 = swift_allocObject();
    *(v0 + 408) = v22;
    *(v22 + 16) = xmmword_2D0770;
    *(v22 + 32) = v20;
    v33 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v23 = v20;
    v24 = swift_task_alloc();
    *(v0 + 416) = v24;
    *v24 = v0;
    v24[1] = sub_14BCE4;
    v25 = *(v0 + 352);

    return v33(v0 + 96, v22, v25);
  }
}

uint64_t sub_14B68C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 176) = a2;
  *(v3 + 160) = v2;
  *(v3 + 168) = a1;
  *(v3 + 442) = a2;

  return _swift_task_switch(sub_14B7B0, 0, 0);
}

uint64_t sub_14B7B0()
{
  v1 = *(v0 + 168);
  if (*(v0 + 442))
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v6 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v10 = *(v0 + 256);
    v26 = *(v0 + 240);
    v27 = *(v0 + 248);
    v28 = *(v0 + 232);
    v31 = *(v0 + 216);
    v29 = *(v0 + 208);
    v30 = *(v0 + 224);
    v32 = *(v0 + 168);
    (*(v3 + 104))(v2, enum case for AdditionalMetricsDescription.ModuleName.omif (_:), v4);
    (*(v7 + 104))(v5, enum case for AdditionalMetricsDescription.SourceFunction.noResultsDlg(_:), v6);
    (*(v9 + 104))(v8, enum case for AdditionalMetricsDescription.StatusReason.noSearchResults(_:), v10);
    sub_2CCAD0();
    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);
    sub_35E0((v29 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider), *(v29 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin17OpenMediaItemFlow_siriKitTaskLoggingProvider + 24));
    (*(v26 + 104))(v27, enum case for TypeOfIntent.openMediaItem(_:), v28);
    v11 = enum case for ActivityType.dialogFailed(_:);
    v12 = sub_2C9C20();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v30, v11, v12);
    (*(v13 + 56))(v30, 0, 1, v12);
    v14 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v15 = sub_2C98F0();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v31, v14, v15);
    (*(v16 + 56))(v31, 0, 1, v15);
    sub_2CB4B0();

    sub_A41AC(v32, 1);

    sub_30B8(v31, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v30, &qword_34CB88, &unk_2D0D90);
    (*(v26 + 8))(v27, v28);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 392) = v1;
    v19 = *(v0 + 360);
    v20 = v1;
    sub_2C9B20();
    v21 = swift_task_alloc();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    sub_2CA560();

    sub_2CA080();
    swift_allocObject();
    *(v0 + 400) = sub_2CA070();
    sub_20410(&unk_351900, &unk_2D0960);
    v22 = swift_allocObject();
    *(v0 + 408) = v22;
    *(v22 + 16) = xmmword_2D0770;
    *(v22 + 32) = v20;
    v33 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v23 = v20;
    v24 = swift_task_alloc();
    *(v0 + 416) = v24;
    *v24 = v0;
    v24[1] = sub_14BCE4;
    v25 = *(v0 + 352);

    return v33(v0 + 96, v22, v25);
  }
}