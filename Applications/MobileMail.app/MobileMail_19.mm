id sub_10042CA14(void *a1)
{
  v4 = [v1 initWithImage:?];
  _objc_release(a1);
  return v4;
}

uint64_t sub_10042CA64()
{
  v35 = &v41;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v16 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v9 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v33 = &v9 - v9;
  v1 = sub_10025C9B0(&qword_1006DC4D0, &unk_10050BFD0);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v9 - v10;
  v2 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v11 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v32 = &v9 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v11);
  v31 = &v9 - v12;
  v17 = sub_10025C9B0(&qword_1006D8740, &unk_100501CB0);
  v13 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v19 = &v9 - v13;
  v4 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v14 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v29 = &v9 - v14;
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  v15 = v40;
  memset(v40, 0, sizeof(v40));
  sub_10000B074();
  sub_1003DC7F0();
  v38 = AppDependency.__allocating_init(key:manager:)();

  v41 = v38;
  sub_10025C9B0(&qword_1006DC4D8, &unk_10050BFE0);
  v21 = type metadata accessor for LocalizedStringResource();
  v5 = *(v21 - 8);
  v23 = *(v5 + 56);
  v22 = v5 + 56;
  v24 = 1;
  v23(v29, 1);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v19, v24);
  v25 = type metadata accessor for IntentDialog();
  v7 = *(v25 - 8);
  v27 = *(v7 + 56);
  v26 = v7 + 56;
  v27(v31, v24);
  v18 = sub_100341F40();
  sub_1004389E4(v20);
  sub_1003BD8F8(v33);
  v36 = IntentParameter<>.init(description:default:kind:requestValueDialog:inputConnectionBehavior:)();

  v42 = v36;
  sub_10025C9B0(&unk_1006DCC10, &unk_1005098B0);
  (v23)(v29, v24, v24, v21);
  memset(__src, 0, sizeof(__src));
  v30 = __dst;
  memcpy(__dst, __src, sizeof(__dst));
  (v27)(v31, v24, v24, v25);
  (v27)(v32, v24, v24, v25);
  v28 = sub_10028D658();
  v34 = sub_1002B9D60();
  sub_1003BD8F8(v33);
  v37 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v43 = v37;
  sub_1002FE5E4(v35);
  return v38;
}

uint64_t sub_10042D0A0(uint64_t a1, uint64_t a2)
{

  IntentParameter.wrappedValue.getter();
}

uint64_t sub_10042D104(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v8[0] = a2;
  v11 = a3;
  v8[1] = a4;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v9 = (*(*(sub_10025C9B0(&qword_1006D8740, &unk_100501CB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = v8 - v9;
  v16 = __chkstk_darwin(v12);
  v13 = v5;
  v14 = a3;
  v15 = v6;

  sub_1002F29E4(v12, v10);
  IntentParameter.wrappedValue.setter();

  return sub_1002A70C0(v12);
}

void *sub_10042D1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v6, sizeof(__dst));

  return memcpy(a4, __dst, 0x48uLL);
}

void *sub_10042D290(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[12] = a1;
  v7[9] = a2;
  v7[10] = a3;
  v7[11] = a4;

  sub_1002CD078(a1, v7);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10028D6D0(a1);
  return result;
}

uint64_t sub_10042D328@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Send a draft email";
  v4 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v3;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v3 - v5;
  v1 = type metadata accessor for String.LocalizationValue();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v6;
  v7 = 10;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send Draft", 0xAuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", v7, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 18;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10042D50C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v25 = 0;
  v24 = sub_10042D8BC;
  v1 = sub_10025C9B0(&qword_1006DC478, &qword_10050B2A0);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v28 = &v7 - v8;
  v19 = sub_10025C9B0(&qword_1006DC480, &qword_10050B2A8);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v16 = &v7 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v10);
  v20 = &v7 - v11;
  v27 = sub_10032C4C8();
  v12 = 5;
  v26 = &unk_10065FF90;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DC488, &qword_10050B2D8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v22 & 1);
  v15 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v21, v16, v19);
  (*(v17 + 8))(v20, v19);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v22 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:_:)();
}

uint64_t sub_10042D854@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342058(a1, v4);
  *a2 = sub_1003D6DCC(v4[0], v4[1], v4[2]);
}

uint64_t sub_10042D8BC()
{
  swift_getKeyPath();
  sub_10032C4C8();
  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10025C9B0(&qword_1006DC4C8, &unk_10050B570);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  sub_1002612B0();
  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_10042D990@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342058(a1, v4);
  *a2 = sub_1003D6C78(v4[0], v4[1]);
}

uint64_t sub_10042DA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[45] = a4;
  v4[44] = a3;
  v4[43] = a2;
  v4[42] = a1;
  v4[18] = v4;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[24] = 0;
  v4[14] = 0;
  v4[15] = 0;
  v4[16] = 0;
  v4[17] = 0;
  v4[33] = 0;
  type metadata accessor for LocalizedStringResource.BundleDescription();
  v4[46] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[47] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[48] = swift_task_alloc();
  v5 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v4[49] = v5;
  v4[50] = *(v5 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v4[54] = swift_task_alloc();
  v6 = type metadata accessor for IntentDialog();
  v4[55] = v6;
  v4[56] = *(v6 - 8);
  v4[57] = swift_task_alloc();
  v7 = type metadata accessor for Calendar();
  v4[58] = v7;
  v4[59] = *(v7 - 8);
  v4[60] = swift_task_alloc();
  v8 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v4[61] = v8;
  v4[62] = *(v8 - 8);
  v4[63] = swift_task_alloc();
  v9 = type metadata accessor for Date.FormatStyle.DateStyle();
  v4[64] = v9;
  v4[65] = *(v9 - 8);
  v4[66] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D8740, &unk_100501CB0);
  v4[67] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v4[68] = v10;
  v4[69] = *(v10 - 8);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v11 = sub_10025C9B0(&qword_1006D7C40, qword_100508520);
  v4[72] = v11;
  v4[73] = *(v11 - 8);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v4[76] = v12;
  v4[77] = *(v12 - 8);
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
  type metadata accessor for MainActor();
  v4[86] = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[87] = v18;
  v4[88] = v13;

  return _swift_task_switch(sub_10042E07C, v18);
}

uint64_t sub_10042E07C()
{
  v289 = v0;
  v1 = v0[45];
  v2 = v0[44];
  v3 = v0[43];
  v0[18] = v0;
  v265 = sub_1003D6B10(v3, v2, v1);
  sub_10035277C();
  v261 = *(v264 + 360);
  v260 = *(v264 + 352);
  v259 = *(v264 + 344);
  _objc_release(v265);
  v262 = sub_1003D6B10(v259, v260, v261);
  v263 = sub_10035333C();
  _objc_release(v262);
  *(v264 + 152) = v263;
  if (!*(v264 + 152))
  {
    sub_10026A58C((v264 + 152));
    v5 = *(v264 + 680);
    v253 = *(v264 + 608);
    v252 = *(v264 + 616);
    v6 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v252 + 16))(v5, v6, v253);
    oslog = Logger.logObject.getter();
    v254 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v256 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v254))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v247 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v249 = sub_1002641E8(0, v247, v247);
      v250 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v264 + 304) = buf;
      *(v264 + 312) = v249;
      *(v264 + 320) = v250;
      sub_10026423C(0, (v264 + 304));
      sub_10026423C(0, (v264 + 304));
      *(v264 + 328) = v256;
      v251 = swift_task_alloc();
      v251[2] = v264 + 304;
      v251[3] = v264 + 312;
      v251[4] = v264 + 320;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v254, "#SiriMail no compose sheet onscreen, launching draft message for SendDraftIntent", buf, 2u);
      sub_10026429C(v249, 0);
      sub_10026429C(v250, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v240 = *(v264 + 680);
    v241 = *(v264 + 608);
    v244 = *(v264 + 360);
    v243 = *(v264 + 352);
    v242 = *(v264 + 344);
    v239 = *(v264 + 616);
    _objc_release(oslog);
    (*(v239 + 8))(v240, v241);
    sub_1003D6DCC(v242, v243, v244);
    sub_1003DC448();
    nullsub_13();
    v245 = v7;
    v246 = v8;
    *(v264 + 712) = v7;
    *(v264 + 720) = v8;
    v9 = swift_task_alloc();
    v10 = v245;
    v11 = v246;
    *(v264 + 728) = v9;
    *v9 = *(v264 + 144);
    v9[1] = sub_100431978;
    v12 = *(v264 + 600);

    return sub_1003DABB0(v12, v10, v11);
  }

  sub_10026A58C((v264 + 152));
  v257 = sub_1003D6B10(*(v264 + 344), *(v264 + 352), *(v264 + 360));
  v4 = sub_10035333C();
  v258 = v4;
  *(v264 + 760) = v4;
  if (!v4)
  {
    _objc_release(v257);
    goto LABEL_17;
  }

  v235 = *(v264 + 360);
  v234 = *(v264 + 352);
  v233 = *(v264 + 344);
  *(v264 + 264) = v4;
  _objc_release(v257);
  sub_10042D1FC(v233, v234, v235, (v264 + 16));
  v236 = *(v264 + 16);
  v237 = *(v264 + 24);

  sub_10028D6D0((v264 + 16));
  v238 = sub_10047E92C(v236, v237);

  if ((v238 & 1) == 0)
  {
    v14 = *(v264 + 672);
    v229 = *(v264 + 608);
    v228 = *(v264 + 616);
    v15 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v228 + 16))(v14, v15, v229);
    log = Logger.logObject.getter();
    v230 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v232 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v230))
    {
      v224 = static UnsafeMutablePointer.allocate(capacity:)();
      v223 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v225 = sub_1002641E8(0, v223, v223);
      v226 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v264 + 272) = v224;
      *(v264 + 280) = v225;
      *(v264 + 288) = v226;
      sub_10026423C(0, (v264 + 272));
      sub_10026423C(0, (v264 + 272));
      *(v264 + 296) = v232;
      v227 = swift_task_alloc();
      v227[2] = v264 + 272;
      v227[3] = v264 + 280;
      v227[4] = v264 + 288;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, log, v230, "#SiriMail compose sheet onscreen but not the target one, launching draft message for SendDraftIntent", v224, 2u);
      sub_10026429C(v225, 0);
      sub_10026429C(v226, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v216 = *(v264 + 672);
    v217 = *(v264 + 608);
    v220 = *(v264 + 360);
    v219 = *(v264 + 352);
    v218 = *(v264 + 344);
    v215 = *(v264 + 616);
    _objc_release(log);
    (*(v215 + 8))(v216, v217);
    sub_1003D6DCC(v218, v219, v220);
    sub_1003DC448();
    nullsub_13();
    v221 = v16;
    v222 = v17;
    *(v264 + 768) = v16;
    *(v264 + 776) = v17;
    v18 = swift_task_alloc();
    v10 = v221;
    v11 = v222;
    *(v264 + 784) = v18;
    *v18 = *(v264 + 144);
    v18[1] = sub_100434AF4;
    v12 = *(v264 + 592);

    return sub_1003DABB0(v12, v10, v11);
  }

  _objc_release(v258);
LABEL_17:
  v213 = sub_1003D6B10(*(v264 + 344), *(v264 + 352), *(v264 + 360));
  v19 = sub_10035333C();
  v214 = v19;
  if (!v19)
  {
    v41 = *(v264 + 624);
    v57 = *(v264 + 608);
    v56 = *(v264 + 616);
    _objc_release(v213);
    v42 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v56 + 16))(v41, v42, v57);
    v59 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v60 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v59, v58))
    {
      v52 = static UnsafeMutablePointer.allocate(capacity:)();
      v51 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v53 = sub_1002641E8(0, v51, v51);
      v54 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v264 + 160) = v52;
      *(v264 + 168) = v53;
      *(v264 + 176) = v54;
      sub_10026423C(0, (v264 + 160));
      sub_10026423C(0, (v264 + 160));
      *(v264 + 184) = v60;
      v55 = swift_task_alloc();
      v55[2] = v264 + 160;
      v55[3] = v264 + 168;
      v55[4] = v264 + 176;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v59, v58, "#SiriMail could not find an active email composition, doing nothing.", v52, 2u);
      sub_10026429C(v53, 0);
      sub_10026429C(v54, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v45 = *(v264 + 624);
    v46 = *(v264 + 608);
    v49 = *(v264 + 456);
    v50 = *(v264 + 440);
    v47 = *(v264 + 368);
    v44 = *(v264 + 616);
    v48 = *(v264 + 448);
    _objc_release(v59);
    (*(v44 + 8))(v45, v46);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("There's nothing to send.", 0x18uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v47);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    static IntentResult.result<>(dialog:)();
    (*(v48 + 8))(v49, v50);
    goto LABEL_49;
  }

  *(v264 + 192) = v19;
  _objc_release(v213);
  v20 = [v214 sendButtonItem];
  v212 = v20;
  if (!v20)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v211 = [v20 isEnabled];
  _objc_release(v212);
  if ((v211 & 1) == 0)
  {
    v39 = *(v264 + 632);
    v74 = *(v264 + 608);
    v73 = *(v264 + 616);
    v40 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v73 + 16))(v39, v40, v74);
    v76 = Logger.logObject.getter();
    v75 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v77 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v76, v75))
    {
      v69 = static UnsafeMutablePointer.allocate(capacity:)();
      v68 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v70 = sub_1002641E8(0, v68, v68);
      v71 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v264 + 200) = v69;
      *(v264 + 208) = v70;
      *(v264 + 216) = v71;
      sub_10026423C(0, (v264 + 200));
      sub_10026423C(0, (v264 + 200));
      *(v264 + 224) = v77;
      v72 = swift_task_alloc();
      v72[2] = v264 + 200;
      v72[3] = v264 + 208;
      v72[4] = v264 + 216;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v76, v75, "#SiriMail send button is disabled, user is missing vital information in the message", v69, 2u);
      sub_10026429C(v70, 0);
      sub_10026429C(v71, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v62 = *(v264 + 632);
    v63 = *(v264 + 608);
    v66 = *(v264 + 456);
    v67 = *(v264 + 440);
    v64 = *(v264 + 368);
    v61 = *(v264 + 616);
    v65 = *(v264 + 448);
    _objc_release(v76);
    (*(v61 + 8))(v62, v63);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Sorry, I cannot send the email yet.", 0x23uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v64);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    static IntentResult.result<>(dialog:)();
    (*(v65 + 8))(v66, v67);
    _objc_release(v214);
    goto LABEL_49;
  }

  v210 = *(v264 + 544);
  v209 = *(v264 + 536);
  v208 = *(v264 + 552);
  sub_10042D0A0(*(v264 + 344), *(v264 + 352));
  if ((*(v208 + 48))(v209, 1, v210) == 1)
  {
    v37 = *(v264 + 640);
    v91 = *(v264 + 608);
    v90 = *(v264 + 616);
    sub_1002A70C0(*(v264 + 536));
    v38 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v90 + 16))(v37, v38, v91);
    v93 = Logger.logObject.getter();
    v92 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v94 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v93, v92))
    {
      v86 = static UnsafeMutablePointer.allocate(capacity:)();
      v85 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v87 = sub_1002641E8(0, v85, v85);
      v88 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v264 + 232) = v86;
      *(v264 + 240) = v87;
      *(v264 + 248) = v88;
      sub_10026423C(0, (v264 + 232));
      sub_10026423C(0, (v264 + 232));
      *(v264 + 256) = v94;
      v89 = swift_task_alloc();
      v89[2] = v264 + 232;
      v89[3] = v264 + 240;
      v89[4] = v264 + 248;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v93, v92, "#SiriMail sending the message now", v86, 2u);
      sub_10026429C(v87, 0);
      sub_10026429C(v88, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v79 = *(v264 + 640);
    v80 = *(v264 + 608);
    v83 = *(v264 + 456);
    v84 = *(v264 + 440);
    v81 = *(v264 + 368);
    v78 = *(v264 + 616);
    v82 = *(v264 + 448);
    _objc_release(v93);
    (*(v78 + 8))(v79, v80);
    [v214 performSend];
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it.", 0x11uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v81);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    static IntentResult.result<>(dialog:)();
    (*(v82 + 8))(v83, v84);
    _objc_release(v214);
    goto LABEL_49;
  }

  v203 = *(v264 + 528);
  v204 = *(v264 + 512);
  v199 = *(v264 + 504);
  v200 = *(v264 + 488);
  v202 = *(v264 + 520);
  v198 = *(v264 + 496);
  (*(*(v264 + 552) + 32))(*(v264 + 568), *(v264 + 536), *(v264 + 544));
  static Date.FormatStyle.DateStyle.omitted.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v206._countAndFlagsBits = Date.formatted(date:time:)();
  v206._object = v21;
  v201 = *(v198 + 8);
  v201(v199, v200);
  v205 = *(v202 + 8);
  v205(v203, v204);
  *(v264 + 112) = v206;
  v207 = [v214 compositionContext];
  if (!v207)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v190 = *(v264 + 560);
  v189 = *(v264 + 544);
  v195 = *(v264 + 480);
  v194 = *(v264 + 464);
  v188 = *(v264 + 552);
  v193 = *(v264 + 472);
  (*(v188 + 16))(v190);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v191 = *(v188 + 8);
  v191(v190, v189);
  [v207 setSendLaterDate:isa];
  _objc_release(isa);
  _objc_release(v207);
  [v214 performSend];
  static Calendar.current.getter();
  v197 = Calendar.isDateInToday(_:)();
  v196 = *(v193 + 8);
  v196(v195, v194);
  if (v197)
  {
    v22 = *(v264 + 664);
    v179 = *(v264 + 608);
    v178 = *(v264 + 616);
    v23 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v178 + 16))(v22, v23, v179);

    v180 = swift_allocObject();
    *(v180 + 16) = v206;
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.info.getter();
    v182 = swift_allocObject();
    *(v182 + 16) = 32;
    v183 = swift_allocObject();
    *(v183 + 16) = 8;
    v181 = swift_allocObject();
    *(v181 + 16) = sub_10035728C;
    *(v181 + 24) = v180;
    v184 = swift_allocObject();
    *(v184 + 16) = sub_10026EE84;
    *(v184 + 24) = v181;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    _allocateUninitializedArray<A>(_:)();
    v185 = v24;

    *v185 = sub_10026434C;
    v185[1] = v182;

    v185[2] = sub_10026434C;
    v185[3] = v183;

    v185[4] = sub_10026EF2C;
    v185[5] = v184;
    sub_1002612B0();

    if (os_log_type_enabled(v186, v187))
    {
      v175 = static UnsafeMutablePointer.allocate(capacity:)();
      v174 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v176 = sub_1002641E8(0, v174, v174);
      v177 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v284 = v175;
      v285 = v176;
      v286 = v177;
      sub_10026423C(2, &v284);
      sub_10026423C(1, &v284);
      v287 = sub_10026434C;
      v288 = v182;
      sub_100264250(&v287, &v284, &v285, &v286);
      v287 = sub_10026434C;
      v288 = v183;
      sub_100264250(&v287, &v284, &v285, &v286);
      v287 = sub_10026EF2C;
      v288 = v184;
      sub_100264250(&v287, &v284, &v285, &v286);
      _os_log_impl(&_mh_execute_header, v186, v187, "#SiriMail scheduling the message to be sent for today at %s", v175, 0xCu);
      sub_10026429C(v176, 0);
      sub_10026429C(v177, 1);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v161 = *(v264 + 664);
    v162 = *(v264 + 608);
    v172 = *(v264 + 568);
    v173 = *(v264 + 544);
    v170 = *(v264 + 456);
    v171 = *(v264 + 440);
    v166 = *(v264 + 424);
    v164 = *(v264 + 416);
    v167 = *(v264 + 408);
    v165 = *(v264 + 392);
    v168 = *(v264 + 368);
    v160 = *(v264 + 616);
    v169 = *(v264 + 448);
    v163 = *(v264 + 400);
    _objc_release(v186);
    (*(v160 + 8))(v161, v162);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it today at ", 0x1AuLL, 1);
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);

    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v206);
    v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);

    (*(v163 + 16))(v164, v166, v165);
    (*(v163 + 32))(v167, v164, v165);
    (*(v163 + 8))(v166, v165);
    String.LocalizationValue.init(stringInterpolation:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v168);
    v280 = "Dialog to show and say when message will be sent later today.";
    v281 = 61;
    v282 = 2;
    v283 = 0;
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    static IntentResult.result<>(dialog:)();
    (*(v169 + 8))(v170, v171);

    v191(v172, v173);
    _objc_release(v214);
  }

  else
  {
    v158 = *(v264 + 480);
    v157 = *(v264 + 464);
    static Calendar.current.getter();
    v159 = Calendar.isDateInTomorrow(_:)();
    v196(v158, v157);
    if (v159)
    {
      v27 = *(v264 + 656);
      v148 = *(v264 + 608);
      v147 = *(v264 + 616);
      v28 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v147 + 16))(v27, v28, v148);

      v149 = swift_allocObject();
      *(v149 + 16) = v206;
      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.info.getter();
      v151 = swift_allocObject();
      *(v151 + 16) = 32;
      v152 = swift_allocObject();
      *(v152 + 16) = 8;
      v150 = swift_allocObject();
      *(v150 + 16) = sub_10035728C;
      *(v150 + 24) = v149;
      v153 = swift_allocObject();
      *(v153 + 16) = sub_10026EE84;
      *(v153 + 24) = v150;
      sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      _allocateUninitializedArray<A>(_:)();
      v154 = v29;

      *v154 = sub_10026434C;
      v154[1] = v151;

      v154[2] = sub_10026434C;
      v154[3] = v152;

      v154[4] = sub_10026EF2C;
      v154[5] = v153;
      sub_1002612B0();

      if (os_log_type_enabled(v155, v156))
      {
        v144 = static UnsafeMutablePointer.allocate(capacity:)();
        v143 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v145 = sub_1002641E8(0, v143, v143);
        v146 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v275 = v144;
        v276 = v145;
        v277 = v146;
        sub_10026423C(2, &v275);
        sub_10026423C(1, &v275);
        v278 = sub_10026434C;
        v279 = v151;
        sub_100264250(&v278, &v275, &v276, &v277);
        v278 = sub_10026434C;
        v279 = v152;
        sub_100264250(&v278, &v275, &v276, &v277);
        v278 = sub_10026EF2C;
        v279 = v153;
        sub_100264250(&v278, &v275, &v276, &v277);
        _os_log_impl(&_mh_execute_header, v155, v156, "#SiriMail scheduling the message to be sent for tomorrow at %s", v144, 0xCu);
        sub_10026429C(v145, 0);
        sub_10026429C(v146, 1);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v130 = *(v264 + 656);
      v131 = *(v264 + 608);
      v141 = *(v264 + 568);
      v142 = *(v264 + 544);
      v139 = *(v264 + 456);
      v140 = *(v264 + 440);
      v135 = *(v264 + 424);
      v133 = *(v264 + 416);
      v136 = *(v264 + 408);
      v134 = *(v264 + 392);
      v137 = *(v264 + 368);
      v129 = *(v264 + 616);
      v138 = *(v264 + 448);
      v132 = *(v264 + 400);
      _objc_release(v155);
      (*(v129 + 8))(v130, v131);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it tomorrow at ", 0x1DuLL, 1);
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);

      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v206);
      v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);

      (*(v132 + 16))(v133, v135, v134);
      (*(v132 + 32))(v136, v133, v134);
      (*(v132 + 8))(v135, v134);
      String.LocalizationValue.init(stringInterpolation:)();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
      sub_100015CC0();
      sub_10025D410(v137);
      v271 = "Dialog to show and say when message will be sent some time tomorrow.";
      v272 = 68;
      v273 = 2;
      v274 = 0;
      LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      static IntentResult.result<>(dialog:)();
      (*(v138 + 8))(v139, v140);

      v191(v141, v142);
      _objc_release(v214);
    }

    else
    {
      v113 = *(v264 + 648);
      v119 = *(v264 + 608);
      v116 = *(v264 + 528);
      v117 = *(v264 + 512);
      v114 = *(v264 + 504);
      v115 = *(v264 + 488);
      v118 = *(v264 + 616);
      static Date.FormatStyle.DateStyle.abbreviated.getter();
      static Date.FormatStyle.TimeStyle.shortened.getter();
      v120._countAndFlagsBits = Date.formatted(date:time:)();
      v120._object = v32;
      v201(v114, v115);
      v205(v116, v117);
      *(v264 + 128) = v120;
      v33 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v118 + 16))(v113, v33, v119);

      v121 = swift_allocObject();
      *(v121 + 16) = v120;
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.info.getter();
      v123 = swift_allocObject();
      *(v123 + 16) = 32;
      v124 = swift_allocObject();
      *(v124 + 16) = 8;
      v122 = swift_allocObject();
      *(v122 + 16) = sub_10035728C;
      *(v122 + 24) = v121;
      v125 = swift_allocObject();
      *(v125 + 16) = sub_10026EE84;
      *(v125 + 24) = v122;
      sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      _allocateUninitializedArray<A>(_:)();
      v126 = v34;

      *v126 = sub_10026434C;
      v126[1] = v123;

      v126[2] = sub_10026434C;
      v126[3] = v124;

      v126[4] = sub_10026EF2C;
      v126[5] = v125;
      sub_1002612B0();

      if (os_log_type_enabled(v127, v128))
      {
        v110 = static UnsafeMutablePointer.allocate(capacity:)();
        v109 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v111 = sub_1002641E8(0, v109, v109);
        v112 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v266 = v110;
        v267 = v111;
        v268 = v112;
        sub_10026423C(2, &v266);
        sub_10026423C(1, &v266);
        v269 = sub_10026434C;
        v270 = v123;
        sub_100264250(&v269, &v266, &v267, &v268);
        v269 = sub_10026434C;
        v270 = v124;
        sub_100264250(&v269, &v266, &v267, &v268);
        v269 = sub_10026EF2C;
        v270 = v125;
        sub_100264250(&v269, &v266, &v267, &v268);
        _os_log_impl(&_mh_execute_header, v127, v128, "#SiriMail scheduling the message to be sent for %s", v110, 0xCu);
        sub_10026429C(v111, 0);
        sub_10026429C(v112, 1);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v96 = *(v264 + 648);
      v97 = *(v264 + 608);
      v107 = *(v264 + 568);
      v108 = *(v264 + 544);
      v105 = *(v264 + 456);
      v106 = *(v264 + 440);
      v101 = *(v264 + 424);
      v99 = *(v264 + 416);
      v102 = *(v264 + 408);
      v100 = *(v264 + 392);
      v103 = *(v264 + 368);
      v95 = *(v264 + 616);
      v104 = *(v264 + 448);
      v98 = *(v264 + 400);
      _objc_release(v127);
      (*(v95 + 8))(v96, v97);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it on ", 0x14uLL, 1);
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v35);

      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v120);
      v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v36);

      (*(v98 + 16))(v99, v101, v100);
      (*(v98 + 32))(v102, v99, v100);
      (*(v98 + 8))(v101, v100);
      String.LocalizationValue.init(stringInterpolation:)();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
      sub_100015CC0();
      sub_10025D410(v103);
      LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      static IntentResult.result<>(dialog:)();
      (*(v104 + 8))(v105, v106);

      v191(v107, v108);
      _objc_release(v214);
    }
  }

LABEL_49:

  v43 = *(*(v264 + 144) + 8);

  return v43();
}

uint64_t sub_100431978()
{
  v5 = *v1;
  v5[18] = *v1;
  v5[92] = v0;

  if (v0)
  {
    v2 = v5[87];
    v3 = sub_100437C8C;
  }

  else
  {

    v2 = v5[87];
    v3 = sub_100431B18;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_100431B18()
{
  v1 = v0[75];
  v2 = v0[73];
  v3 = v0[72];
  v0[18] = v0;
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  *(v6 + 744) = v4;
  *v4 = *(v6 + 144);
  v4[1] = sub_100431BF8;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_100431BF8()
{
  v5 = *v1;
  v5[18] = *v1;
  v5[94] = v0;

  if (v0)
  {
    v2 = v5[87];
    v3 = sub_100437EC4;
  }

  else
  {
    v2 = v5[87];
    v3 = sub_100431D7C;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_100431D7C()
{
  v223 = v0;
  v0[18] = v0;
  v197 = v0[94];
  v198 = sub_1003D6B10(v0[43], v0[44], v0[45]);
  v1 = sub_10035333C();
  v199 = v1;
  if (!v1)
  {
    v24 = *(v196 + 624);
    v40 = *(v196 + 608);
    v39 = *(v196 + 616);
    _objc_release(v198);
    v25 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v39 + 16))(v24, v25, v40);
    v42 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v43 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v42, v41))
    {
      v35 = static UnsafeMutablePointer.allocate(capacity:)();
      v34 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v36 = sub_1002641E8(0, v34, v34);
      v37 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v196 + 160) = v35;
      *(v196 + 168) = v36;
      *(v196 + 176) = v37;
      sub_10026423C(0, (v196 + 160));
      sub_10026423C(0, (v196 + 160));
      *(v196 + 184) = v43;
      v38 = swift_task_alloc();
      v38[2] = v196 + 160;
      v38[3] = v196 + 168;
      v38[4] = v196 + 176;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v197)
      {
      }

      _os_log_impl(&_mh_execute_header, v42, v41, "#SiriMail could not find an active email composition, doing nothing.", v35, 2u);
      sub_10026429C(v36, 0);
      sub_10026429C(v37, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v28 = *(v196 + 624);
    v29 = *(v196 + 608);
    v32 = *(v196 + 456);
    v33 = *(v196 + 440);
    v30 = *(v196 + 368);
    v27 = *(v196 + 616);
    v31 = *(v196 + 448);
    _objc_release(v42);
    (*(v27 + 8))(v28, v29);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("There's nothing to send.", 0x18uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v30);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    static IntentResult.result<>(dialog:)();
    (*(v31 + 8))(v32, v33);
    goto LABEL_48;
  }

  *(v196 + 192) = v1;
  _objc_release(v198);
  v2 = [v199 sendButtonItem];
  v195 = v2;
  if (!v2)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v194 = [v2 isEnabled];
  _objc_release(v195);
  if ((v194 & 1) == 0)
  {
    v22 = *(v196 + 632);
    v57 = *(v196 + 608);
    v56 = *(v196 + 616);
    v23 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v56 + 16))(v22, v23, v57);
    v59 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v60 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v59, v58))
    {

      goto LABEL_41;
    }

    v52 = static UnsafeMutablePointer.allocate(capacity:)();
    v51 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v53 = sub_1002641E8(0, v51, v51);
    v54 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v196 + 200) = v52;
    *(v196 + 208) = v53;
    *(v196 + 216) = v54;
    sub_10026423C(0, (v196 + 200));
    sub_10026423C(0, (v196 + 200));
    *(v196 + 224) = v60;
    v55 = swift_task_alloc();
    v55[2] = v196 + 200;
    v55[3] = v196 + 208;
    v55[4] = v196 + 216;
    sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (!v197)
    {

      _os_log_impl(&_mh_execute_header, v59, v58, "#SiriMail send button is disabled, user is missing vital information in the message", v52, 2u);
      sub_10026429C(v53, 0);
      sub_10026429C(v54, 0);
      UnsafeMutablePointer.deallocate()();

LABEL_41:
      v45 = *(v196 + 632);
      v46 = *(v196 + 608);
      v49 = *(v196 + 456);
      v50 = *(v196 + 440);
      v47 = *(v196 + 368);
      v44 = *(v196 + 616);
      v48 = *(v196 + 448);
      _objc_release(v59);
      (*(v44 + 8))(v45, v46);
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Sorry, I cannot send the email yet.", 0x23uLL, 1);
      String.LocalizationValue.init(stringLiteral:)();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
      sub_100015CC0();
      sub_10025D410(v47);
      LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      static IntentResult.result<>(dialog:)();
      (*(v48 + 8))(v49, v50);
      _objc_release(v199);
      goto LABEL_48;
    }
  }

  v193 = *(v196 + 544);
  v192 = *(v196 + 536);
  v191 = *(v196 + 552);
  sub_10042D0A0(*(v196 + 344), *(v196 + 352));
  if ((*(v191 + 48))(v192, 1, v193) != 1)
  {
    v186 = *(v196 + 528);
    v187 = *(v196 + 512);
    v182 = *(v196 + 504);
    v183 = *(v196 + 488);
    v185 = *(v196 + 520);
    v181 = *(v196 + 496);
    (*(*(v196 + 552) + 32))(*(v196 + 568), *(v196 + 536), *(v196 + 544));
    static Date.FormatStyle.DateStyle.omitted.getter();
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v189._countAndFlagsBits = Date.formatted(date:time:)();
    v189._object = v4;
    v184 = *(v181 + 8);
    v184(v182, v183);
    v188 = *(v185 + 8);
    v188(v186, v187);
    *(v196 + 112) = v189;
    v190 = [v199 compositionContext];
    if (v190)
    {
      v173 = *(v196 + 560);
      v172 = *(v196 + 544);
      v178 = *(v196 + 480);
      v177 = *(v196 + 464);
      v171 = *(v196 + 552);
      v176 = *(v196 + 472);
      (*(v171 + 16))(v173);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v174 = *(v171 + 8);
      v174(v173, v172);
      [v190 setSendLaterDate:isa];
      _objc_release(isa);
      _objc_release(v190);
      [v199 performSend];
      static Calendar.current.getter();
      v180 = Calendar.isDateInToday(_:)();
      v179 = *(v176 + 8);
      v179(v178, v177);
      if (v180)
      {
        v5 = *(v196 + 664);
        v162 = *(v196 + 608);
        v161 = *(v196 + 616);
        v6 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v161 + 16))(v5, v6, v162);

        v163 = swift_allocObject();
        *(v163 + 16) = v189;
        oslog = Logger.logObject.getter();
        v170 = static os_log_type_t.info.getter();
        v165 = swift_allocObject();
        *(v165 + 16) = 32;
        v166 = swift_allocObject();
        *(v166 + 16) = 8;
        v164 = swift_allocObject();
        *(v164 + 16) = sub_10035728C;
        *(v164 + 24) = v163;
        v167 = swift_allocObject();
        *(v167 + 16) = sub_10026EE84;
        *(v167 + 24) = v164;
        sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
        _allocateUninitializedArray<A>(_:)();
        v168 = v7;

        *v168 = sub_10026434C;
        v168[1] = v165;

        v168[2] = sub_10026434C;
        v168[3] = v166;

        v168[4] = sub_10026EF2C;
        v168[5] = v167;
        sub_1002612B0();

        if (os_log_type_enabled(oslog, v170))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          v157 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
          v159 = sub_1002641E8(0, v157, v157);
          v160 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
          v218 = buf;
          v219 = v159;
          v220 = v160;
          sub_10026423C(2, &v218);
          sub_10026423C(1, &v218);
          v221 = sub_10026434C;
          v222 = v165;
          sub_100264250(&v221, &v218, &v219, &v220);
          if (v197)
          {
          }

          v221 = sub_10026434C;
          v222 = v166;
          sub_100264250(&v221, &v218, &v219, &v220);
          v221 = sub_10026EF2C;
          v222 = v167;
          sub_100264250(&v221, &v218, &v219, &v220);
          _os_log_impl(&_mh_execute_header, oslog, v170, "#SiriMail scheduling the message to be sent for today at %s", buf, 0xCu);
          sub_10026429C(v159, 0);
          sub_10026429C(v160, 1);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        v144 = *(v196 + 664);
        v145 = *(v196 + 608);
        v155 = *(v196 + 568);
        v156 = *(v196 + 544);
        v153 = *(v196 + 456);
        v154 = *(v196 + 440);
        v149 = *(v196 + 424);
        v147 = *(v196 + 416);
        v150 = *(v196 + 408);
        v148 = *(v196 + 392);
        v151 = *(v196 + 368);
        v143 = *(v196 + 616);
        v152 = *(v196 + 448);
        v146 = *(v196 + 400);
        _objc_release(oslog);
        (*(v143 + 8))(v144, v145);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it today at ", 0x1AuLL, 1);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);

        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v189);
        v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);

        (*(v146 + 16))(v147, v149, v148);
        (*(v146 + 32))(v150, v147, v148);
        (*(v146 + 8))(v149, v148);
        String.LocalizationValue.init(stringInterpolation:)();
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
        sub_100015CC0();
        sub_10025D410(v151);
        v214 = "Dialog to show and say when message will be sent later today.";
        v215 = 61;
        v216 = 2;
        v217 = 0;
        LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
        IntentDialog.init(_:)();
        static IntentResult.result<>(dialog:)();
        (*(v152 + 8))(v153, v154);

        v174(v155, v156);
        _objc_release(v199);
      }

      else
      {
        v141 = *(v196 + 480);
        v140 = *(v196 + 464);
        static Calendar.current.getter();
        v142 = Calendar.isDateInTomorrow(_:)();
        v179(v141, v140);
        if (v142)
        {
          v10 = *(v196 + 656);
          v131 = *(v196 + 608);
          v130 = *(v196 + 616);
          v11 = Logger.appIntentLogger.unsafeMutableAddressor();
          (*(v130 + 16))(v10, v11, v131);

          v132 = swift_allocObject();
          *(v132 + 16) = v189;
          log = Logger.logObject.getter();
          v139 = static os_log_type_t.info.getter();
          v134 = swift_allocObject();
          *(v134 + 16) = 32;
          v135 = swift_allocObject();
          *(v135 + 16) = 8;
          v133 = swift_allocObject();
          *(v133 + 16) = sub_10035728C;
          *(v133 + 24) = v132;
          v136 = swift_allocObject();
          *(v136 + 16) = sub_10026EE84;
          *(v136 + 24) = v133;
          sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
          _allocateUninitializedArray<A>(_:)();
          v137 = v12;

          *v137 = sub_10026434C;
          v137[1] = v134;

          v137[2] = sub_10026434C;
          v137[3] = v135;

          v137[4] = sub_10026EF2C;
          v137[5] = v136;
          sub_1002612B0();

          if (os_log_type_enabled(log, v139))
          {
            v127 = static UnsafeMutablePointer.allocate(capacity:)();
            v126 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
            v128 = sub_1002641E8(0, v126, v126);
            v129 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
            v209 = v127;
            v210 = v128;
            v211 = v129;
            sub_10026423C(2, &v209);
            sub_10026423C(1, &v209);
            v212 = sub_10026434C;
            v213 = v134;
            sub_100264250(&v212, &v209, &v210, &v211);
            if (v197)
            {
            }

            v212 = sub_10026434C;
            v213 = v135;
            sub_100264250(&v212, &v209, &v210, &v211);
            v212 = sub_10026EF2C;
            v213 = v136;
            sub_100264250(&v212, &v209, &v210, &v211);
            _os_log_impl(&_mh_execute_header, log, v139, "#SiriMail scheduling the message to be sent for tomorrow at %s", v127, 0xCu);
            sub_10026429C(v128, 0);
            sub_10026429C(v129, 1);
            UnsafeMutablePointer.deallocate()();
          }

          else
          {
          }

          v113 = *(v196 + 656);
          v114 = *(v196 + 608);
          v124 = *(v196 + 568);
          v125 = *(v196 + 544);
          v122 = *(v196 + 456);
          v123 = *(v196 + 440);
          v118 = *(v196 + 424);
          v116 = *(v196 + 416);
          v119 = *(v196 + 408);
          v117 = *(v196 + 392);
          v120 = *(v196 + 368);
          v112 = *(v196 + 616);
          v121 = *(v196 + 448);
          v115 = *(v196 + 400);
          _objc_release(log);
          (*(v112 + 8))(v113, v114);
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it tomorrow at ", 0x1DuLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);

          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v189);
          v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);

          (*(v115 + 16))(v116, v118, v117);
          (*(v115 + 32))(v119, v116, v117);
          (*(v115 + 8))(v118, v117);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
          sub_100015CC0();
          sub_10025D410(v120);
          v205 = "Dialog to show and say when message will be sent some time tomorrow.";
          v206 = 68;
          v207 = 2;
          v208 = 0;
          LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
          IntentDialog.init(_:)();
          static IntentResult.result<>(dialog:)();
          (*(v121 + 8))(v122, v123);

          v174(v124, v125);
          _objc_release(v199);
        }

        else
        {
          v96 = *(v196 + 648);
          v102 = *(v196 + 608);
          v99 = *(v196 + 528);
          v100 = *(v196 + 512);
          v97 = *(v196 + 504);
          v98 = *(v196 + 488);
          v101 = *(v196 + 616);
          static Date.FormatStyle.DateStyle.abbreviated.getter();
          static Date.FormatStyle.TimeStyle.shortened.getter();
          v103._countAndFlagsBits = Date.formatted(date:time:)();
          v103._object = v15;
          v184(v97, v98);
          v188(v99, v100);
          *(v196 + 128) = v103;
          v16 = Logger.appIntentLogger.unsafeMutableAddressor();
          (*(v101 + 16))(v96, v16, v102);

          v104 = swift_allocObject();
          *(v104 + 16) = v103;
          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.info.getter();
          v106 = swift_allocObject();
          *(v106 + 16) = 32;
          v107 = swift_allocObject();
          *(v107 + 16) = 8;
          v105 = swift_allocObject();
          *(v105 + 16) = sub_10035728C;
          *(v105 + 24) = v104;
          v108 = swift_allocObject();
          *(v108 + 16) = sub_10026EE84;
          *(v108 + 24) = v105;
          sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
          _allocateUninitializedArray<A>(_:)();
          v109 = v17;

          *v109 = sub_10026434C;
          v109[1] = v106;

          v109[2] = sub_10026434C;
          v109[3] = v107;

          v109[4] = sub_10026EF2C;
          v109[5] = v108;
          sub_1002612B0();

          if (os_log_type_enabled(v110, v111))
          {
            v93 = static UnsafeMutablePointer.allocate(capacity:)();
            v92 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
            v94 = sub_1002641E8(0, v92, v92);
            v95 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
            v200 = v93;
            v201 = v94;
            v202 = v95;
            sub_10026423C(2, &v200);
            sub_10026423C(1, &v200);
            v203 = sub_10026434C;
            v204 = v106;
            sub_100264250(&v203, &v200, &v201, &v202);
            if (v197)
            {
            }

            v203 = sub_10026434C;
            v204 = v107;
            sub_100264250(&v203, &v200, &v201, &v202);
            v203 = sub_10026EF2C;
            v204 = v108;
            sub_100264250(&v203, &v200, &v201, &v202);
            _os_log_impl(&_mh_execute_header, v110, v111, "#SiriMail scheduling the message to be sent for %s", v93, 0xCu);
            sub_10026429C(v94, 0);
            sub_10026429C(v95, 1);
            UnsafeMutablePointer.deallocate()();
          }

          else
          {
          }

          v79 = *(v196 + 648);
          v80 = *(v196 + 608);
          v90 = *(v196 + 568);
          v91 = *(v196 + 544);
          v88 = *(v196 + 456);
          v89 = *(v196 + 440);
          v84 = *(v196 + 424);
          v82 = *(v196 + 416);
          v85 = *(v196 + 408);
          v83 = *(v196 + 392);
          v86 = *(v196 + 368);
          v78 = *(v196 + 616);
          v87 = *(v196 + 448);
          v81 = *(v196 + 400);
          _objc_release(v110);
          (*(v78 + 8))(v79, v80);
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it on ", 0x14uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);

          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v103);
          v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);

          (*(v81 + 16))(v82, v84, v83);
          (*(v81 + 32))(v85, v82, v83);
          (*(v81 + 8))(v84, v83);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
          sub_100015CC0();
          sub_10025D410(v86);
          LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
          IntentDialog.init(_:)();
          static IntentResult.result<>(dialog:)();
          (*(v87 + 8))(v88, v89);

          v174(v90, v91);
          _objc_release(v199);
        }
      }

      goto LABEL_48;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v20 = *(v196 + 640);
  v74 = *(v196 + 608);
  v73 = *(v196 + 616);
  sub_1002A70C0(*(v196 + 536));
  v21 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v73 + 16))(v20, v21, v74);
  v76 = Logger.logObject.getter();
  v75 = static os_log_type_t.info.getter();
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v77 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v76, v75))
  {
    v69 = static UnsafeMutablePointer.allocate(capacity:)();
    v68 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v70 = sub_1002641E8(0, v68, v68);
    v71 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v196 + 232) = v69;
    *(v196 + 240) = v70;
    *(v196 + 248) = v71;
    sub_10026423C(0, (v196 + 232));
    sub_10026423C(0, (v196 + 232));
    *(v196 + 256) = v77;
    v72 = swift_task_alloc();
    v72[2] = v196 + 232;
    v72[3] = v196 + 240;
    v72[4] = v196 + 248;
    sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (v197)
    {
    }

    _os_log_impl(&_mh_execute_header, v76, v75, "#SiriMail sending the message now", v69, 2u);
    sub_10026429C(v70, 0);
    sub_10026429C(v71, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v62 = *(v196 + 640);
  v63 = *(v196 + 608);
  v66 = *(v196 + 456);
  v67 = *(v196 + 440);
  v64 = *(v196 + 368);
  v61 = *(v196 + 616);
  v65 = *(v196 + 448);
  _objc_release(v76);
  (*(v61 + 8))(v62, v63);
  [v199 performSend];
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it.", 0x11uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
  sub_100015CC0();
  sub_10025D410(v64);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  IntentDialog.init(_:)();
  static IntentResult.result<>(dialog:)();
  (*(v65 + 8))(v66, v67);
  _objc_release(v199);
LABEL_48:

  v26 = *(*(v196 + 144) + 8);

  return v26();
}

uint64_t sub_100434AF4()
{
  v5 = *v1;
  v5[18] = *v1;
  v5[99] = v0;

  if (v0)
  {
    v2 = v5[87];
    v3 = sub_1004380E4;
  }

  else
  {

    v2 = v5[87];
    v3 = sub_100434C94;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_100434C94()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v0[18] = v0;
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  *(v6 + 800) = v4;
  *v4 = *(v6 + 144);
  v4[1] = sub_100434D78;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_100434D78()
{
  v5 = *v1;
  v5[18] = *v1;
  v5[101] = v0;

  if (v0)
  {
    v2 = v5[87];
    v3 = sub_100438338;
  }

  else
  {
    v2 = v5[87];
    v3 = sub_100434EFC;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_100434EFC()
{
  v224 = v0;
  v1 = v0[95];
  v0[18] = v0;
  _objc_release(v1);
  v198 = v0[101];
  v199 = sub_1003D6B10(v0[43], v0[44], v0[45]);
  v2 = sub_10035333C();
  v200 = v2;
  if (!v2)
  {
    v25 = *(v197 + 624);
    v41 = *(v197 + 608);
    v40 = *(v197 + 616);
    _objc_release(v199);
    v26 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v40 + 16))(v25, v26, v41);
    v43 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v44 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v43, v42))
    {
      v36 = static UnsafeMutablePointer.allocate(capacity:)();
      v35 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v37 = sub_1002641E8(0, v35, v35);
      v38 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v197 + 160) = v36;
      *(v197 + 168) = v37;
      *(v197 + 176) = v38;
      sub_10026423C(0, (v197 + 160));
      sub_10026423C(0, (v197 + 160));
      *(v197 + 184) = v44;
      v39 = swift_task_alloc();
      v39[2] = v197 + 160;
      v39[3] = v197 + 168;
      v39[4] = v197 + 176;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v198)
      {
      }

      _os_log_impl(&_mh_execute_header, v43, v42, "#SiriMail could not find an active email composition, doing nothing.", v36, 2u);
      sub_10026429C(v37, 0);
      sub_10026429C(v38, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v29 = *(v197 + 624);
    v30 = *(v197 + 608);
    v33 = *(v197 + 456);
    v34 = *(v197 + 440);
    v31 = *(v197 + 368);
    v28 = *(v197 + 616);
    v32 = *(v197 + 448);
    _objc_release(v43);
    (*(v28 + 8))(v29, v30);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("There's nothing to send.", 0x18uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v31);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    static IntentResult.result<>(dialog:)();
    (*(v32 + 8))(v33, v34);
    goto LABEL_48;
  }

  *(v197 + 192) = v2;
  _objc_release(v199);
  v3 = [v200 sendButtonItem];
  v196 = v3;
  if (!v3)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v195 = [v3 isEnabled];
  _objc_release(v196);
  if ((v195 & 1) == 0)
  {
    v23 = *(v197 + 632);
    v58 = *(v197 + 608);
    v57 = *(v197 + 616);
    v24 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v57 + 16))(v23, v24, v58);
    v60 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v61 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v60, v59))
    {

      goto LABEL_41;
    }

    v53 = static UnsafeMutablePointer.allocate(capacity:)();
    v52 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v54 = sub_1002641E8(0, v52, v52);
    v55 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v197 + 200) = v53;
    *(v197 + 208) = v54;
    *(v197 + 216) = v55;
    sub_10026423C(0, (v197 + 200));
    sub_10026423C(0, (v197 + 200));
    *(v197 + 224) = v61;
    v56 = swift_task_alloc();
    v56[2] = v197 + 200;
    v56[3] = v197 + 208;
    v56[4] = v197 + 216;
    sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (!v198)
    {

      _os_log_impl(&_mh_execute_header, v60, v59, "#SiriMail send button is disabled, user is missing vital information in the message", v53, 2u);
      sub_10026429C(v54, 0);
      sub_10026429C(v55, 0);
      UnsafeMutablePointer.deallocate()();

LABEL_41:
      v46 = *(v197 + 632);
      v47 = *(v197 + 608);
      v50 = *(v197 + 456);
      v51 = *(v197 + 440);
      v48 = *(v197 + 368);
      v45 = *(v197 + 616);
      v49 = *(v197 + 448);
      _objc_release(v60);
      (*(v45 + 8))(v46, v47);
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Sorry, I cannot send the email yet.", 0x23uLL, 1);
      String.LocalizationValue.init(stringLiteral:)();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
      sub_100015CC0();
      sub_10025D410(v48);
      LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      static IntentResult.result<>(dialog:)();
      (*(v49 + 8))(v50, v51);
      _objc_release(v200);
      goto LABEL_48;
    }
  }

  v194 = *(v197 + 544);
  v193 = *(v197 + 536);
  v192 = *(v197 + 552);
  sub_10042D0A0(*(v197 + 344), *(v197 + 352));
  if ((*(v192 + 48))(v193, 1, v194) != 1)
  {
    v187 = *(v197 + 528);
    v188 = *(v197 + 512);
    v183 = *(v197 + 504);
    v184 = *(v197 + 488);
    v186 = *(v197 + 520);
    v182 = *(v197 + 496);
    (*(*(v197 + 552) + 32))(*(v197 + 568), *(v197 + 536), *(v197 + 544));
    static Date.FormatStyle.DateStyle.omitted.getter();
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v190._countAndFlagsBits = Date.formatted(date:time:)();
    v190._object = v5;
    v185 = *(v182 + 8);
    v185(v183, v184);
    v189 = *(v186 + 8);
    v189(v187, v188);
    *(v197 + 112) = v190;
    v191 = [v200 compositionContext];
    if (v191)
    {
      v174 = *(v197 + 560);
      v173 = *(v197 + 544);
      v179 = *(v197 + 480);
      v178 = *(v197 + 464);
      v172 = *(v197 + 552);
      v177 = *(v197 + 472);
      (*(v172 + 16))(v174);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v175 = *(v172 + 8);
      v175(v174, v173);
      [v191 setSendLaterDate:isa];
      _objc_release(isa);
      _objc_release(v191);
      [v200 performSend];
      static Calendar.current.getter();
      v181 = Calendar.isDateInToday(_:)();
      v180 = *(v177 + 8);
      v180(v179, v178);
      if (v181)
      {
        v6 = *(v197 + 664);
        v163 = *(v197 + 608);
        v162 = *(v197 + 616);
        v7 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v162 + 16))(v6, v7, v163);

        v164 = swift_allocObject();
        *(v164 + 16) = v190;
        oslog = Logger.logObject.getter();
        v171 = static os_log_type_t.info.getter();
        v166 = swift_allocObject();
        *(v166 + 16) = 32;
        v167 = swift_allocObject();
        *(v167 + 16) = 8;
        v165 = swift_allocObject();
        *(v165 + 16) = sub_10035728C;
        *(v165 + 24) = v164;
        v168 = swift_allocObject();
        *(v168 + 16) = sub_10026EE84;
        *(v168 + 24) = v165;
        sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
        _allocateUninitializedArray<A>(_:)();
        v169 = v8;

        *v169 = sub_10026434C;
        v169[1] = v166;

        v169[2] = sub_10026434C;
        v169[3] = v167;

        v169[4] = sub_10026EF2C;
        v169[5] = v168;
        sub_1002612B0();

        if (os_log_type_enabled(oslog, v171))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          v158 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
          v160 = sub_1002641E8(0, v158, v158);
          v161 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
          v219 = buf;
          v220 = v160;
          v221 = v161;
          sub_10026423C(2, &v219);
          sub_10026423C(1, &v219);
          v222 = sub_10026434C;
          v223 = v166;
          sub_100264250(&v222, &v219, &v220, &v221);
          if (v198)
          {
          }

          v222 = sub_10026434C;
          v223 = v167;
          sub_100264250(&v222, &v219, &v220, &v221);
          v222 = sub_10026EF2C;
          v223 = v168;
          sub_100264250(&v222, &v219, &v220, &v221);
          _os_log_impl(&_mh_execute_header, oslog, v171, "#SiriMail scheduling the message to be sent for today at %s", buf, 0xCu);
          sub_10026429C(v160, 0);
          sub_10026429C(v161, 1);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        v145 = *(v197 + 664);
        v146 = *(v197 + 608);
        v156 = *(v197 + 568);
        v157 = *(v197 + 544);
        v154 = *(v197 + 456);
        v155 = *(v197 + 440);
        v150 = *(v197 + 424);
        v148 = *(v197 + 416);
        v151 = *(v197 + 408);
        v149 = *(v197 + 392);
        v152 = *(v197 + 368);
        v144 = *(v197 + 616);
        v153 = *(v197 + 448);
        v147 = *(v197 + 400);
        _objc_release(oslog);
        (*(v144 + 8))(v145, v146);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it today at ", 0x1AuLL, 1);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);

        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v190);
        v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);

        (*(v147 + 16))(v148, v150, v149);
        (*(v147 + 32))(v151, v148, v149);
        (*(v147 + 8))(v150, v149);
        String.LocalizationValue.init(stringInterpolation:)();
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
        sub_100015CC0();
        sub_10025D410(v152);
        v215 = "Dialog to show and say when message will be sent later today.";
        v216 = 61;
        v217 = 2;
        v218 = 0;
        LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
        IntentDialog.init(_:)();
        static IntentResult.result<>(dialog:)();
        (*(v153 + 8))(v154, v155);

        v175(v156, v157);
        _objc_release(v200);
      }

      else
      {
        v142 = *(v197 + 480);
        v141 = *(v197 + 464);
        static Calendar.current.getter();
        v143 = Calendar.isDateInTomorrow(_:)();
        v180(v142, v141);
        if (v143)
        {
          v11 = *(v197 + 656);
          v132 = *(v197 + 608);
          v131 = *(v197 + 616);
          v12 = Logger.appIntentLogger.unsafeMutableAddressor();
          (*(v131 + 16))(v11, v12, v132);

          v133 = swift_allocObject();
          *(v133 + 16) = v190;
          log = Logger.logObject.getter();
          v140 = static os_log_type_t.info.getter();
          v135 = swift_allocObject();
          *(v135 + 16) = 32;
          v136 = swift_allocObject();
          *(v136 + 16) = 8;
          v134 = swift_allocObject();
          *(v134 + 16) = sub_10035728C;
          *(v134 + 24) = v133;
          v137 = swift_allocObject();
          *(v137 + 16) = sub_10026EE84;
          *(v137 + 24) = v134;
          sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
          _allocateUninitializedArray<A>(_:)();
          v138 = v13;

          *v138 = sub_10026434C;
          v138[1] = v135;

          v138[2] = sub_10026434C;
          v138[3] = v136;

          v138[4] = sub_10026EF2C;
          v138[5] = v137;
          sub_1002612B0();

          if (os_log_type_enabled(log, v140))
          {
            v128 = static UnsafeMutablePointer.allocate(capacity:)();
            v127 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
            v129 = sub_1002641E8(0, v127, v127);
            v130 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
            v210 = v128;
            v211 = v129;
            v212 = v130;
            sub_10026423C(2, &v210);
            sub_10026423C(1, &v210);
            v213 = sub_10026434C;
            v214 = v135;
            sub_100264250(&v213, &v210, &v211, &v212);
            if (v198)
            {
            }

            v213 = sub_10026434C;
            v214 = v136;
            sub_100264250(&v213, &v210, &v211, &v212);
            v213 = sub_10026EF2C;
            v214 = v137;
            sub_100264250(&v213, &v210, &v211, &v212);
            _os_log_impl(&_mh_execute_header, log, v140, "#SiriMail scheduling the message to be sent for tomorrow at %s", v128, 0xCu);
            sub_10026429C(v129, 0);
            sub_10026429C(v130, 1);
            UnsafeMutablePointer.deallocate()();
          }

          else
          {
          }

          v114 = *(v197 + 656);
          v115 = *(v197 + 608);
          v125 = *(v197 + 568);
          v126 = *(v197 + 544);
          v123 = *(v197 + 456);
          v124 = *(v197 + 440);
          v119 = *(v197 + 424);
          v117 = *(v197 + 416);
          v120 = *(v197 + 408);
          v118 = *(v197 + 392);
          v121 = *(v197 + 368);
          v113 = *(v197 + 616);
          v122 = *(v197 + 448);
          v116 = *(v197 + 400);
          _objc_release(log);
          (*(v113 + 8))(v114, v115);
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it tomorrow at ", 0x1DuLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);

          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v190);
          v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);

          (*(v116 + 16))(v117, v119, v118);
          (*(v116 + 32))(v120, v117, v118);
          (*(v116 + 8))(v119, v118);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
          sub_100015CC0();
          sub_10025D410(v121);
          v206 = "Dialog to show and say when message will be sent some time tomorrow.";
          v207 = 68;
          v208 = 2;
          v209 = 0;
          LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
          IntentDialog.init(_:)();
          static IntentResult.result<>(dialog:)();
          (*(v122 + 8))(v123, v124);

          v175(v125, v126);
          _objc_release(v200);
        }

        else
        {
          v97 = *(v197 + 648);
          v103 = *(v197 + 608);
          v100 = *(v197 + 528);
          v101 = *(v197 + 512);
          v98 = *(v197 + 504);
          v99 = *(v197 + 488);
          v102 = *(v197 + 616);
          static Date.FormatStyle.DateStyle.abbreviated.getter();
          static Date.FormatStyle.TimeStyle.shortened.getter();
          v104._countAndFlagsBits = Date.formatted(date:time:)();
          v104._object = v16;
          v185(v98, v99);
          v189(v100, v101);
          *(v197 + 128) = v104;
          v17 = Logger.appIntentLogger.unsafeMutableAddressor();
          (*(v102 + 16))(v97, v17, v103);

          v105 = swift_allocObject();
          *(v105 + 16) = v104;
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.info.getter();
          v107 = swift_allocObject();
          *(v107 + 16) = 32;
          v108 = swift_allocObject();
          *(v108 + 16) = 8;
          v106 = swift_allocObject();
          *(v106 + 16) = sub_10035728C;
          *(v106 + 24) = v105;
          v109 = swift_allocObject();
          *(v109 + 16) = sub_10026EE84;
          *(v109 + 24) = v106;
          sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
          _allocateUninitializedArray<A>(_:)();
          v110 = v18;

          *v110 = sub_10026434C;
          v110[1] = v107;

          v110[2] = sub_10026434C;
          v110[3] = v108;

          v110[4] = sub_10026EF2C;
          v110[5] = v109;
          sub_1002612B0();

          if (os_log_type_enabled(v111, v112))
          {
            v94 = static UnsafeMutablePointer.allocate(capacity:)();
            v93 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
            v95 = sub_1002641E8(0, v93, v93);
            v96 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
            v201 = v94;
            v202 = v95;
            v203 = v96;
            sub_10026423C(2, &v201);
            sub_10026423C(1, &v201);
            v204 = sub_10026434C;
            v205 = v107;
            sub_100264250(&v204, &v201, &v202, &v203);
            if (v198)
            {
            }

            v204 = sub_10026434C;
            v205 = v108;
            sub_100264250(&v204, &v201, &v202, &v203);
            v204 = sub_10026EF2C;
            v205 = v109;
            sub_100264250(&v204, &v201, &v202, &v203);
            _os_log_impl(&_mh_execute_header, v111, v112, "#SiriMail scheduling the message to be sent for %s", v94, 0xCu);
            sub_10026429C(v95, 0);
            sub_10026429C(v96, 1);
            UnsafeMutablePointer.deallocate()();
          }

          else
          {
          }

          v80 = *(v197 + 648);
          v81 = *(v197 + 608);
          v91 = *(v197 + 568);
          v92 = *(v197 + 544);
          v89 = *(v197 + 456);
          v90 = *(v197 + 440);
          v85 = *(v197 + 424);
          v83 = *(v197 + 416);
          v86 = *(v197 + 408);
          v84 = *(v197 + 392);
          v87 = *(v197 + 368);
          v79 = *(v197 + 616);
          v88 = *(v197 + 448);
          v82 = *(v197 + 400);
          _objc_release(v111);
          (*(v79 + 8))(v80, v81);
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it on ", 0x14uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);

          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v104);
          v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);

          (*(v82 + 16))(v83, v85, v84);
          (*(v82 + 32))(v86, v83, v84);
          (*(v82 + 8))(v85, v84);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
          sub_100015CC0();
          sub_10025D410(v87);
          LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
          IntentDialog.init(_:)();
          static IntentResult.result<>(dialog:)();
          (*(v88 + 8))(v89, v90);

          v175(v91, v92);
          _objc_release(v200);
        }
      }

      goto LABEL_48;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v21 = *(v197 + 640);
  v75 = *(v197 + 608);
  v74 = *(v197 + 616);
  sub_1002A70C0(*(v197 + 536));
  v22 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v74 + 16))(v21, v22, v75);
  v77 = Logger.logObject.getter();
  v76 = static os_log_type_t.info.getter();
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v78 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v77, v76))
  {
    v70 = static UnsafeMutablePointer.allocate(capacity:)();
    v69 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v71 = sub_1002641E8(0, v69, v69);
    v72 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v197 + 232) = v70;
    *(v197 + 240) = v71;
    *(v197 + 248) = v72;
    sub_10026423C(0, (v197 + 232));
    sub_10026423C(0, (v197 + 232));
    *(v197 + 256) = v78;
    v73 = swift_task_alloc();
    v73[2] = v197 + 232;
    v73[3] = v197 + 240;
    v73[4] = v197 + 248;
    sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (v198)
    {
    }

    _os_log_impl(&_mh_execute_header, v77, v76, "#SiriMail sending the message now", v70, 2u);
    sub_10026429C(v71, 0);
    sub_10026429C(v72, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v63 = *(v197 + 640);
  v64 = *(v197 + 608);
  v67 = *(v197 + 456);
  v68 = *(v197 + 440);
  v65 = *(v197 + 368);
  v62 = *(v197 + 616);
  v66 = *(v197 + 448);
  _objc_release(v77);
  (*(v62 + 8))(v63, v64);
  [v200 performSend];
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it.", 0x11uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
  sub_100015CC0();
  sub_10025D410(v65);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  IntentDialog.init(_:)();
  static IntentResult.result<>(dialog:)();
  (*(v66 + 8))(v67, v68);
  _objc_release(v200);
LABEL_48:

  v27 = *(*(v197 + 144) + 8);

  return v27();
}

uint64_t sub_100437C8C()
{
  *(v0 + 144) = v0;

  v1 = *(*(v0 + 144) + 8);

  return v1();
}

uint64_t sub_100437EC4()
{
  *(v0 + 144) = v0;

  v1 = *(*(v0 + 144) + 8);

  return v1();
}

uint64_t sub_1004380E4()
{
  v3 = *(v0 + 760);
  *(v0 + 144) = v0;

  _objc_release(v3);

  v1 = *(*(v0 + 144) + 8);

  return v1();
}

uint64_t sub_100438338()
{
  v1 = *(v0 + 760);
  *(v0 + 144) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 144) + 8);

  return v2();
}

uint64_t sub_100438590()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0290;
  sub_10002094C(v7, qword_1006F0290);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_1004386D0();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1004386D0()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendDraftIntent", 0xFuLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_1004387A8()
{
  if (qword_1006D60D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0290);
}

uint64_t sub_100438814@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004387A8();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004388A8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_10042DA04(a1, v6, v7, v8);
}

uint64_t sub_100438980@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10042CA64();
  *a1 = result;
  a1[1] = v2;
  a1[2] = v3;
  return result;
}

uint64_t sub_1004389E4@<X0>(uint64_t a3@<X8>)
{
  v5 = enum case for IntentParameter.DateKind.dateTime<A>(_:);
  v3 = type metadata accessor for IntentParameter.DateKind();
  return (*(*(v3 - 8) + 104))(a3, v5);
}

unint64_t sub_100438A78()
{
  v2 = qword_1006DC490;
  if (!qword_1006DC490)
  {
    sub_10025CAA4(&qword_1006DC498, qword_10050B378);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100438B00()
{
  v2 = qword_1006DCB80;
  if (!qword_1006DCB80)
  {
    sub_10025CAA4(&qword_1006DC4A0, &qword_10050B3B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100438BB8()
{
  v2 = qword_1006DC4A8;
  if (!qword_1006DC4A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100438C34(uint64_t a1)
{
  result = sub_10032C4C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100438C60(uint64_t a1)
{
  result = sub_100438C8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100438C8C()
{
  v2 = qword_1006DC4B0;
  if (!qword_1006DC4B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100438D20()
{
  v2 = qword_1006DC4B8;
  if (!qword_1006DC4B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100438DB4()
{
  v2 = qword_1006DC4C0;
  if (!qword_1006DC4C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100438E9C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  memset(__b, 0, sizeof(__b));
  v42 = a1;
  v41 = a2 & 1;
  v39 = a3;
  v40 = a4 & 1;
  v37 = a5;
  v38 = a6 & 1;
  v35 = a7;
  v36 = a8 & 1;
  v33 = a10;
  v34 = a11 & 1;
  _allocateUninitializedArray<A>(_:)();
  sub_100439478();
  SetAlgebra<>.init(arrayLiteral:)();
  v30 = *__b;
  v31 = *&__b[16];
  if (a2)
  {
    result = sub_10043B978();
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 24);
    v15 = *(result + 32);
    *__b = *result;
    *&__b[8] = v12;
    *&__b[16] = v13;
    *&__b[24] = v14;
    *&__b[32] = v15;
    *&v30 = a1;
    if ((a4 & 1) == 0 && a3 > 0)
    {
      sub_10043BA74();
      sub_10043BCCC();
      result = OptionSet<>.insert(_:)();
      *(&v30 + 1) = a3;
    }

    if ((a6 & 1) == 0 && a5 > 0)
    {
      sub_10043BA74();
      sub_10043BCCC();
      result = OptionSet<>.contains(_:)();
      if (result)
      {
        sub_10043BB70();
        result = OptionSet<>.insert(_:)();
        *&v31 = a5;
      }
    }
  }

  else
  {
    result = sub_10043B87C();
    v16 = *(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 24);
    v19 = *(result + 32);
    *__b = *result;
    *&__b[8] = v16;
    *&__b[16] = v17;
    *&__b[24] = v18;
    *&__b[32] = v19;
    if ((a6 & 1) == 0 && a5 > 0)
    {
      sub_10043BB70();
      sub_10043BCCC();
      result = OptionSet<>.insert(_:)();
      *&v31 = a5;
    }
  }

  if ((a11 & 1) != 0 || a10 <= 0)
  {
    if ((a8 & 1) == 0 && a7 > 0)
    {
      sub_10043BC6C();
      sub_10043BCCC();
      result = OptionSet<>.insert(_:)();
      *(&v31 + 1) = a7;
    }
  }

  else
  {
    sub_10043BDE4();
    sub_10043BCCC();
    result = OptionSet<>.insert(_:)();
    *(&v31 + 1) = a10;
  }

  v20 = *&__b[32];
  *a9 = v30;
  *(a9 + 16) = v31;
  *(a9 + 32) = v20;
  return result;
}

unint64_t sub_100439478()
{
  v2 = qword_1006DC4E0;
  if (!qword_1006DC4E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1004394F4()
{
  v526 = 0;
  v521 = 0;
  v522 = 0;
  v513 = 0;
  v514 = 0;
  v511 = 0;
  v512 = 0;
  v509 = 0;
  v510 = 0;
  v353._countAndFlagsBits = 0;
  v353._object = 0;
  v527 = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ALL MESSAGES", 0xCuLL, 1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  bundle = sub_10028FEB4();
  v4._countAndFlagsBits = sub_100015E30();
  v4._object = v5;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, bundle, v4, v3);

  _objc_release(bundle);

  v525 = v6;
  v538 = *v0;
  v539 = v0[1];
  v523 = MUIBucket.localizedTitle.getter();
  v524 = v7;
  sub_1002686CC();
  v347 = StringProtocol.localizedUppercase.getter();
  v348 = v8;
  v521 = v347;
  v522 = v8;

  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SENDER_HEADER_BUTTON_TITLE_MESSAGE_COUNT", 0x28uLL, 1);
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v349 = sub_10028FEB4();
  v12._countAndFlagsBits = sub_100015E30();
  v12._object = v13;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v349, v12, v11);

  _objc_release(v349);

  sub_10025C9B0(&qword_1006DB0A8, &unk_100509130);
  _allocateUninitializedArray<A>(_:)();
  v351 = v14;
  memcpy(__dst, __src, sizeof(__dst));
  v15 = sub_10043BB70();
  v16 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  v19 = v15[4];
  v515 = *v15;
  v516 = v16;
  v517 = v17;
  v518 = v18;
  v519 = v19;
  sub_10043BCCC();
  if (OptionSet<>.contains(_:)())
  {
    v534 = *__src;
    v535 = __src[1];
    v345 = v535;
  }

  else
  {
    v536 = *__src;
    v537 = __src[1];
    v345 = *(&v536 + 1);
  }

  v351[3] = &type metadata for Int;
  v351[4] = &protocol witness table for Int;
  *v351 = v345;
  sub_1002612B0();
  v336 = static String.localizedStringWithFormat(_:_:)();
  v337 = v20;

  v513 = v336;
  v514 = v337;
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%lld NEW", 8uLL, 1);
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Number of new messages", 0x16uLL, 1);
  v338 = sub_10028FEB4();
  v24._countAndFlagsBits = sub_100015E30();
  v24._object = v25;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v338, v24, v23);

  _objc_release(v338);

  _allocateUninitializedArray<A>(_:)();
  v531 = *__src;
  v532 = __src[1];
  v533 = *(&v532 + 1);
  v26[3] = &type metadata for Int;
  v26[4] = &protocol witness table for Int;
  *v26 = v533;
  sub_1002612B0();
  v339 = static String.localizedStringWithFormat(_:_:)();
  v340 = v27;

  v511 = v339;
  v512 = v340;
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%lld UNREAD", 0xBuLL, 1);
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Number of unread messages", 0x19uLL, 1);
  v341 = sub_10028FEB4();
  v31._countAndFlagsBits = sub_100015E30();
  v31._object = v32;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v341, v31, v30);

  _objc_release(v341);

  _allocateUninitializedArray<A>(_:)();
  v528 = *__src;
  v529 = __src[1];
  v530 = *(&v529 + 1);
  v33[3] = &type metadata for Int;
  v33[4] = &protocol witness table for Int;
  *v33 = v530;
  sub_1002612B0();
  v342 = static String.localizedStringWithFormat(_:_:)();
  v343 = v34;

  v509 = v342;
  v510 = v343;
  memcpy(v508, __src, sizeof(v508));
  _allocateUninitializedArray<A>(_:)();
  v344 = v35;
  v36 = sub_10043B978();
  v37 = v36[1];
  v38 = v36[2];
  v39 = v36[3];
  v40 = v36[4];
  *v344 = *v36;
  v344[1] = v37;
  v344[2] = v38;
  v344[3] = v39;
  v344[4] = v40;
  v41 = sub_10043BA74();
  v42 = v41[1];
  v43 = v41[2];
  v44 = v41[3];
  v45 = v41[4];
  v344[5] = *v41;
  v344[6] = v42;
  v344[7] = v43;
  v344[8] = v44;
  v344[9] = v45;
  v46 = sub_10043BB70();
  v47 = v46[1];
  v48 = v46[2];
  v49 = v46[3];
  v50 = v46[4];
  v344[10] = *v46;
  v344[11] = v47;
  v344[12] = v48;
  v344[13] = v49;
  v344[14] = v50;
  v51 = sub_10043BDE4();
  v52 = v51[1];
  v53 = v51[2];
  v54 = v51[3];
  v55 = v51[4];
  v344[15] = *v51;
  v344[16] = v52;
  v344[17] = v53;
  v344[18] = v54;
  v344[19] = v55;
  sub_1002612B0();
  sub_100439478();
  SetAlgebra<>.init(arrayLiteral:)();
  v498 = v503;
  v499 = v504;
  v500 = v505;
  v501 = v506;
  v502 = v507;
  sub_10043BE44();
  if (== infix<A>(_:_:)())
  {
    _allocateUninitializedArray<A>(_:)();
    v333 = v56;
    *v56 = sub_10043BF10();
    v333[1] = v57;

    v333[2] = v336;
    v333[3] = v337;

    v333[4] = v339;
    v333[5] = v340;
    sub_1002612B0();
    v334 = v58;

    v526 = v334;
    v335 = v334;
  }

  else
  {
    memcpy(v497, __src, sizeof(v497));
    _allocateUninitializedArray<A>(_:)();
    v332 = v59;
    v60 = sub_10043B978();
    v61 = v60[1];
    v62 = v60[2];
    v63 = v60[3];
    v64 = v60[4];
    *v332 = *v60;
    v332[1] = v61;
    v332[2] = v62;
    v332[3] = v63;
    v332[4] = v64;
    v65 = sub_10043BA74();
    v66 = v65[1];
    v67 = v65[2];
    v68 = v65[3];
    v69 = v65[4];
    v332[5] = *v65;
    v332[6] = v66;
    v332[7] = v67;
    v332[8] = v68;
    v332[9] = v69;
    v70 = sub_10043BB70();
    v71 = v70[1];
    v72 = v70[2];
    v73 = v70[3];
    v74 = v70[4];
    v332[10] = *v70;
    v332[11] = v71;
    v332[12] = v72;
    v332[13] = v73;
    v332[14] = v74;
    v75 = sub_10043BC6C();
    v76 = v75[1];
    v77 = v75[2];
    v78 = v75[3];
    v79 = v75[4];
    v332[15] = *v75;
    v332[16] = v76;
    v332[17] = v77;
    v332[18] = v78;
    v332[19] = v79;
    sub_1002612B0();
    SetAlgebra<>.init(arrayLiteral:)();
    v487 = v492;
    v488 = v493;
    v489 = v494;
    v490 = v495;
    v491 = v496;
    if (== infix<A>(_:_:)())
    {
      _allocateUninitializedArray<A>(_:)();
      v329 = v80;
      *v80 = sub_10043BF10();
      v329[1] = v81;

      v329[2] = v336;
      v329[3] = v337;

      v329[4] = v342;
      v329[5] = v343;
      sub_1002612B0();
      v330 = v82;

      v526 = v330;
      v331 = v330;
    }

    else
    {
      memcpy(v486, __src, sizeof(v486));
      _allocateUninitializedArray<A>(_:)();
      v328 = v83;
      v84 = sub_10043B978();
      v85 = v84[1];
      v86 = v84[2];
      v87 = v84[3];
      v88 = v84[4];
      *v328 = *v84;
      v328[1] = v85;
      v328[2] = v86;
      v328[3] = v87;
      v328[4] = v88;
      v89 = sub_10043BA74();
      v90 = v89[1];
      v91 = v89[2];
      v92 = v89[3];
      v93 = v89[4];
      v328[5] = *v89;
      v328[6] = v90;
      v328[7] = v91;
      v328[8] = v92;
      v328[9] = v93;
      v94 = sub_10043BB70();
      v95 = v94[1];
      v96 = v94[2];
      v97 = v94[3];
      v98 = v94[4];
      v328[10] = *v94;
      v328[11] = v95;
      v328[12] = v96;
      v328[13] = v97;
      v328[14] = v98;
      sub_1002612B0();
      SetAlgebra<>.init(arrayLiteral:)();
      v476 = v481;
      v477 = v482;
      v478 = v483;
      v479 = v484;
      v480 = v485;
      if (== infix<A>(_:_:)())
      {
        _allocateUninitializedArray<A>(_:)();
        v325 = v99;
        *v99 = sub_10043BF10();
        v325[1] = v100;

        v325[2] = v336;
        v325[3] = v337;
        sub_1002612B0();
        v326 = v101;

        v526 = v326;
        v327 = v326;
      }

      else
      {
        memcpy(v475, __src, sizeof(v475));
        _allocateUninitializedArray<A>(_:)();
        v324 = v102;
        v103 = sub_10043B978();
        v104 = v103[1];
        v105 = v103[2];
        v106 = v103[3];
        v107 = v103[4];
        *v324 = *v103;
        v324[1] = v104;
        v324[2] = v105;
        v324[3] = v106;
        v324[4] = v107;
        v108 = sub_10043BA74();
        v109 = v108[1];
        v110 = v108[2];
        v111 = v108[3];
        v112 = v108[4];
        v324[5] = *v108;
        v324[6] = v109;
        v324[7] = v110;
        v324[8] = v111;
        v324[9] = v112;
        v113 = sub_10043BDE4();
        v114 = v113[1];
        v115 = v113[2];
        v116 = v113[3];
        v117 = v113[4];
        v324[10] = *v113;
        v324[11] = v114;
        v324[12] = v115;
        v324[13] = v116;
        v324[14] = v117;
        sub_1002612B0();
        SetAlgebra<>.init(arrayLiteral:)();
        v465 = v470;
        v466 = v471;
        v467 = v472;
        v468 = v473;
        v469 = v474;
        if (== infix<A>(_:_:)())
        {
          _allocateUninitializedArray<A>(_:)();
          v321 = v118;

          *v321 = v347;
          v321[1] = v348;

          v321[2] = v336;
          v321[3] = v337;

          v321[4] = v339;
          v321[5] = v340;
          sub_1002612B0();
          v322 = v119;

          v526 = v322;
          v323 = v322;
        }

        else
        {
          memcpy(v464, __src, sizeof(v464));
          _allocateUninitializedArray<A>(_:)();
          v320 = v120;
          v121 = sub_10043B978();
          v122 = v121[1];
          v123 = v121[2];
          v124 = v121[3];
          v125 = v121[4];
          *v320 = *v121;
          v320[1] = v122;
          v320[2] = v123;
          v320[3] = v124;
          v320[4] = v125;
          v126 = sub_10043BA74();
          v127 = v126[1];
          v128 = v126[2];
          v129 = v126[3];
          v130 = v126[4];
          v320[5] = *v126;
          v320[6] = v127;
          v320[7] = v128;
          v320[8] = v129;
          v320[9] = v130;
          v131 = sub_10043BC6C();
          v132 = v131[1];
          v133 = v131[2];
          v134 = v131[3];
          v135 = v131[4];
          v320[10] = *v131;
          v320[11] = v132;
          v320[12] = v133;
          v320[13] = v134;
          v320[14] = v135;
          sub_1002612B0();
          SetAlgebra<>.init(arrayLiteral:)();
          v454 = v459;
          v455 = v460;
          v456 = v461;
          v457 = v462;
          v458 = v463;
          if (== infix<A>(_:_:)())
          {
            _allocateUninitializedArray<A>(_:)();
            v317 = v136;

            *v317 = v347;
            v317[1] = v348;

            v317[2] = v336;
            v317[3] = v337;

            v317[4] = v342;
            v317[5] = v343;
            sub_1002612B0();
            v318 = v137;

            v526 = v318;
            v319 = v318;
          }

          else
          {
            memcpy(v453, __src, sizeof(v453));
            _allocateUninitializedArray<A>(_:)();
            v316 = v138;
            v139 = sub_10043B978();
            v140 = v139[1];
            v141 = v139[2];
            v142 = v139[3];
            v143 = v139[4];
            *v316 = *v139;
            v316[1] = v140;
            v316[2] = v141;
            v316[3] = v142;
            v316[4] = v143;
            v144 = sub_10043BA74();
            v145 = v144[1];
            v146 = v144[2];
            v147 = v144[3];
            v148 = v144[4];
            v316[5] = *v144;
            v316[6] = v145;
            v316[7] = v146;
            v316[8] = v147;
            v316[9] = v148;
            sub_1002612B0();
            SetAlgebra<>.init(arrayLiteral:)();
            v443 = v448;
            v444 = v449;
            v445 = v450;
            v446 = v451;
            v447 = v452;
            if (== infix<A>(_:_:)())
            {
              _allocateUninitializedArray<A>(_:)();
              v313 = v149;

              *v313 = v347;
              v313[1] = v348;

              v313[2] = v336;
              v313[3] = v337;
              sub_1002612B0();
              v314 = v150;

              v526 = v314;
              v315 = v314;
            }

            else
            {
              memcpy(v442, __src, sizeof(v442));
              _allocateUninitializedArray<A>(_:)();
              v312 = v151;
              v152 = sub_10043B978();
              v153 = v152[1];
              v154 = v152[2];
              v155 = v152[3];
              v156 = v152[4];
              *v312 = *v152;
              v312[1] = v153;
              v312[2] = v154;
              v312[3] = v155;
              v312[4] = v156;
              v157 = sub_10043BDE4();
              v158 = v157[1];
              v159 = v157[2];
              v160 = v157[3];
              v161 = v157[4];
              v312[5] = *v157;
              v312[6] = v158;
              v312[7] = v159;
              v312[8] = v160;
              v312[9] = v161;
              sub_1002612B0();
              SetAlgebra<>.init(arrayLiteral:)();
              v432 = v437;
              v433 = v438;
              v434 = v439;
              v435 = v440;
              v436 = v441;
              if (== infix<A>(_:_:)())
              {
                _allocateUninitializedArray<A>(_:)();
                v309 = v162;

                *v309 = v347;
                v309[1] = v348;

                v309[2] = v339;
                v309[3] = v340;
                sub_1002612B0();
                v310 = v163;

                v526 = v310;
                v311 = v310;
              }

              else
              {
                memcpy(v431, __src, sizeof(v431));
                _allocateUninitializedArray<A>(_:)();
                v308 = v164;
                v165 = sub_10043B978();
                v166 = v165[1];
                v167 = v165[2];
                v168 = v165[3];
                v169 = v165[4];
                *v308 = *v165;
                v308[1] = v166;
                v308[2] = v167;
                v308[3] = v168;
                v308[4] = v169;
                v170 = sub_10043BC6C();
                v171 = v170[1];
                v172 = v170[2];
                v173 = v170[3];
                v174 = v170[4];
                v308[5] = *v170;
                v308[6] = v171;
                v308[7] = v172;
                v308[8] = v173;
                v308[9] = v174;
                sub_1002612B0();
                SetAlgebra<>.init(arrayLiteral:)();
                v421 = v426;
                v422 = v427;
                v423 = v428;
                v424 = v429;
                v425 = v430;
                if (== infix<A>(_:_:)())
                {
                  _allocateUninitializedArray<A>(_:)();
                  v305 = v175;

                  *v305 = v347;
                  v305[1] = v348;

                  v305[2] = v342;
                  v305[3] = v343;
                  sub_1002612B0();
                  v306 = v176;

                  v526 = v306;
                  v307 = v306;
                }

                else
                {
                  memcpy(v420, __src, sizeof(v420));
                  _allocateUninitializedArray<A>(_:)();
                  v304 = v177;
                  v178 = sub_10043B87C();
                  v179 = v178[1];
                  v180 = v178[2];
                  v181 = v178[3];
                  v182 = v178[4];
                  *v304 = *v178;
                  v304[1] = v179;
                  v304[2] = v180;
                  v304[3] = v181;
                  v304[4] = v182;
                  v183 = sub_10043BB70();
                  v184 = v183[1];
                  v185 = v183[2];
                  v186 = v183[3];
                  v187 = v183[4];
                  v304[5] = *v183;
                  v304[6] = v184;
                  v304[7] = v185;
                  v304[8] = v186;
                  v304[9] = v187;
                  v188 = sub_10043BDE4();
                  v189 = v188[1];
                  v190 = v188[2];
                  v191 = v188[3];
                  v192 = v188[4];
                  v304[10] = *v188;
                  v304[11] = v189;
                  v304[12] = v190;
                  v304[13] = v191;
                  v304[14] = v192;
                  sub_1002612B0();
                  SetAlgebra<>.init(arrayLiteral:)();
                  v410 = v415;
                  v411 = v416;
                  v412 = v417;
                  v413 = v418;
                  v414 = v419;
                  if (OptionSet<>.contains(_:)())
                  {
                    _allocateUninitializedArray<A>(_:)();
                    v301 = v193;

                    *v301 = v6;

                    v301[1]._countAndFlagsBits = v336;
                    v301[1]._object = v337;

                    v301[2]._countAndFlagsBits = v339;
                    v301[2]._object = v340;
                    sub_1002612B0();
                    v302 = v194;

                    v526 = v302;
                    v303 = v302;
                  }

                  else
                  {
                    memcpy(v409, __src, sizeof(v409));
                    _allocateUninitializedArray<A>(_:)();
                    v300 = v195;
                    v196 = sub_10043B87C();
                    v197 = v196[1];
                    v198 = v196[2];
                    v199 = v196[3];
                    v200 = v196[4];
                    *v300 = *v196;
                    v300[1] = v197;
                    v300[2] = v198;
                    v300[3] = v199;
                    v300[4] = v200;
                    v201 = sub_10043BB70();
                    v202 = v201[1];
                    v203 = v201[2];
                    v204 = v201[3];
                    v205 = v201[4];
                    v300[5] = *v201;
                    v300[6] = v202;
                    v300[7] = v203;
                    v300[8] = v204;
                    v300[9] = v205;
                    v206 = sub_10043BC6C();
                    v207 = v206[1];
                    v208 = v206[2];
                    v209 = v206[3];
                    v210 = v206[4];
                    v300[10] = *v206;
                    v300[11] = v207;
                    v300[12] = v208;
                    v300[13] = v209;
                    v300[14] = v210;
                    sub_1002612B0();
                    SetAlgebra<>.init(arrayLiteral:)();
                    v399 = v404;
                    v400 = v405;
                    v401 = v406;
                    v402 = v407;
                    v403 = v408;
                    if (OptionSet<>.contains(_:)())
                    {
                      _allocateUninitializedArray<A>(_:)();
                      v297 = v211;

                      *v297 = v6;

                      v297[1]._countAndFlagsBits = v336;
                      v297[1]._object = v337;

                      v297[2]._countAndFlagsBits = v342;
                      v297[2]._object = v343;
                      sub_1002612B0();
                      v298 = v212;

                      v526 = v298;
                      v299 = v298;
                    }

                    else
                    {
                      memcpy(v398, __src, sizeof(v398));
                      _allocateUninitializedArray<A>(_:)();
                      v296 = v213;
                      v214 = sub_10043B87C();
                      v215 = v214[1];
                      v216 = v214[2];
                      v217 = v214[3];
                      v218 = v214[4];
                      *v296 = *v214;
                      v296[1] = v215;
                      v296[2] = v216;
                      v296[3] = v217;
                      v296[4] = v218;
                      v219 = sub_10043BB70();
                      v220 = v219[1];
                      v221 = v219[2];
                      v222 = v219[3];
                      v223 = v219[4];
                      v296[5] = *v219;
                      v296[6] = v220;
                      v296[7] = v221;
                      v296[8] = v222;
                      v296[9] = v223;
                      sub_1002612B0();
                      SetAlgebra<>.init(arrayLiteral:)();
                      v388 = v393;
                      v389 = v394;
                      v390 = v395;
                      v391 = v396;
                      v392 = v397;
                      if (OptionSet<>.contains(_:)())
                      {
                        _allocateUninitializedArray<A>(_:)();
                        v293 = v224;

                        *v293 = v6;

                        v293[1]._countAndFlagsBits = v336;
                        v293[1]._object = v337;
                        sub_1002612B0();
                        v294 = v225;

                        v526 = v294;
                        v295 = v294;
                      }

                      else
                      {
                        memcpy(v387, __src, sizeof(v387));
                        _allocateUninitializedArray<A>(_:)();
                        v292 = v226;
                        v227 = sub_10043B87C();
                        v228 = v227[1];
                        v229 = v227[2];
                        v230 = v227[3];
                        v231 = v227[4];
                        *v292 = *v227;
                        v292[1] = v228;
                        v292[2] = v229;
                        v292[3] = v230;
                        v292[4] = v231;
                        v232 = sub_10043BDE4();
                        v233 = v232[1];
                        v234 = v232[2];
                        v235 = v232[3];
                        v236 = v232[4];
                        v292[5] = *v232;
                        v292[6] = v233;
                        v292[7] = v234;
                        v292[8] = v235;
                        v292[9] = v236;
                        sub_1002612B0();
                        SetAlgebra<>.init(arrayLiteral:)();
                        v377 = v382;
                        v378 = v383;
                        v379 = v384;
                        v380 = v385;
                        v381 = v386;
                        if (OptionSet<>.contains(_:)())
                        {
                          _allocateUninitializedArray<A>(_:)();
                          v289 = v237;

                          *v289 = v6;

                          v289[1]._countAndFlagsBits = v339;
                          v289[1]._object = v340;
                          sub_1002612B0();
                          v290 = v238;

                          v526 = v290;
                          v291 = v290;
                        }

                        else
                        {
                          memcpy(v376, __src, sizeof(v376));
                          _allocateUninitializedArray<A>(_:)();
                          v288 = v239;
                          v240 = sub_10043B87C();
                          v241 = v240[1];
                          v242 = v240[2];
                          v243 = v240[3];
                          v244 = v240[4];
                          *v288 = *v240;
                          v288[1] = v241;
                          v288[2] = v242;
                          v288[3] = v243;
                          v288[4] = v244;
                          v245 = sub_10043BC6C();
                          v246 = v245[1];
                          v247 = v245[2];
                          v248 = v245[3];
                          v249 = v245[4];
                          v288[5] = *v245;
                          v288[6] = v246;
                          v288[7] = v247;
                          v288[8] = v248;
                          v288[9] = v249;
                          sub_1002612B0();
                          SetAlgebra<>.init(arrayLiteral:)();
                          v366 = v371;
                          v367 = v372;
                          v368 = v373;
                          v369 = v374;
                          v370 = v375;
                          if (OptionSet<>.contains(_:)())
                          {
                            _allocateUninitializedArray<A>(_:)();
                            v285 = v250;

                            *v285 = v6;

                            v285[1]._countAndFlagsBits = v342;
                            v285[1]._object = v343;
                            sub_1002612B0();
                            v286 = v251;

                            v526 = v286;
                            v287 = v286;
                          }

                          else
                          {
                            memcpy(v365, __src, sizeof(v365));
                            v252 = sub_10043B978();
                            v253 = v252[1];
                            v254 = v252[2];
                            v255 = v252[3];
                            v256 = v252[4];
                            v360 = *v252;
                            v361 = v253;
                            v362 = v254;
                            v363 = v255;
                            v364 = v256;
                            if (== infix<A>(_:_:)())
                            {
                              _allocateUninitializedArray<A>(_:)();
                              v282 = v257;

                              *v282 = v347;
                              v282[1] = v348;
                              sub_1002612B0();
                              v283 = v258;

                              v526 = v283;
                              v284 = v283;
                            }

                            else
                            {
                              memcpy(v359, __src, sizeof(v359));
                              v259 = sub_10043B87C();
                              v260 = v259[1];
                              v261 = v259[2];
                              v262 = v259[3];
                              v263 = v259[4];
                              v354 = *v259;
                              v355 = v260;
                              v356 = v261;
                              v357 = v262;
                              v358 = v263;
                              if (== infix<A>(_:_:)())
                              {
                                _allocateUninitializedArray<A>(_:)();
                                v279 = v264;

                                *v279 = v6;
                                sub_1002612B0();
                                v280 = v265;

                                v526 = v280;
                                v281 = v280;
                              }

                              else
                              {
                                v278 = _allocateUninitializedArray<A>(_:)();

                                v526 = v278;
                                v281 = v278;
                              }

                              v284 = v281;
                            }

                            v287 = v284;
                          }

                          v291 = v287;
                        }

                        v295 = v291;
                      }

                      v299 = v295;
                    }

                    v303 = v299;
                  }

                  v307 = v303;
                }

                v311 = v307;
              }

              v315 = v311;
            }

            v319 = v315;
          }

          v323 = v319;
        }

        v327 = v323;
      }

      v331 = v327;
    }

    v335 = v331;
  }

  v266 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" • ", 5uLL, 0);
  v267 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
  v268 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v276 = sub_10028FEB4();
  v269._countAndFlagsBits = sub_100015E30();
  v269._object = v270;
  v271 = NSLocalizedString(_:tableName:bundle:value:comment:)(v266, v267, v276, v269, v268);

  _objc_release(v276);

  v353 = v271;
  v352[1] = v335;
  sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
  sub_1002B76F0();
  v277 = Collection.isEmpty.getter();

  if (v277)
  {
    v275 = 0;
  }

  else
  {
    v273 = v526;

    v352[0] = v273;
    sub_1002C8C78();
    v274 = BidirectionalCollection<>.joined(separator:)();
    sub_100264880(v352);
    v275 = v274;
  }

  sub_100264880(&v526);
  return v275;
}

uint64_t sub_10043B800@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v2 = sub_10043B77C();
  result = a1;
  *a2 = v2;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = a1;
  return result;
}

void *sub_10043B87C()
{
  if (qword_1006D60D8 != -1)
  {
    swift_once();
  }

  return &unk_1006F02A8;
}

void *sub_10043B8DC@<X0>(void *a1@<X8>)
{
  result = sub_10043B87C();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *a1 = *result;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

void *sub_10043B978()
{
  if (qword_1006D60E0 != -1)
  {
    swift_once();
  }

  return &unk_1006F02D0;
}

void *sub_10043B9D8@<X0>(void *a1@<X8>)
{
  result = sub_10043B978();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *a1 = *result;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

void *sub_10043BA74()
{
  if (qword_1006D60E8 != -1)
  {
    swift_once();
  }

  return &unk_1006F02F8;
}

void *sub_10043BAD4@<X0>(void *a1@<X8>)
{
  result = sub_10043BA74();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *a1 = *result;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

void *sub_10043BB70()
{
  if (qword_1006D60F0 != -1)
  {
    swift_once();
  }

  return &unk_1006F0320;
}

void *sub_10043BBD0@<X0>(void *a1@<X8>)
{
  result = sub_10043BB70();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *a1 = *result;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

void *sub_10043BC6C()
{
  if (qword_1006D60F8 != -1)
  {
    swift_once();
  }

  return &unk_1006F0348;
}

unint64_t sub_10043BCCC()
{
  v2 = qword_1006DC4E8;
  if (!qword_1006DC4E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4E8);
    return WitnessTable;
  }

  return v2;
}

void *sub_10043BD48@<X0>(void *a1@<X8>)
{
  result = sub_10043BC6C();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *a1 = *result;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

void *sub_10043BDE4()
{
  if (qword_1006D6100 != -1)
  {
    swift_once();
  }

  return &unk_1006F0370;
}

unint64_t sub_10043BE44()
{
  v2 = qword_1006DC4F0;
  if (!qword_1006DC4F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4F0);
    return WitnessTable;
  }

  return v2;
}

void *sub_10043BEC0@<X0>(void *a1@<X8>)
{
  result = sub_10043BDE4();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *a1 = *result;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

uint64_t sub_10043BF10()
{
  v28 = *v0;
  if (*v0 == 2)
  {
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SENDER_HEADER_BUTTON_TITLE_TRANSACTIONS_COUNT", 0x2DuLL, 1);
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    bundle = sub_10028FEB4();
    v4._countAndFlagsBits = sub_100015E30();
    v4._object = v5;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, bundle, v4, v3);

    _objc_release(bundle);

    sub_10025C9B0(&qword_1006DB0A8, &unk_100509130);
    _allocateUninitializedArray<A>(_:)();
    v29 = *(v27 + 8);
    v6[3] = &type metadata for Int;
    v6[4] = &protocol witness table for Int;
    *v6 = v29;
    sub_1002612B0();
    v25 = static String.localizedStringWithFormat(_:_:)();

    return v25;
  }

  else if (v28 == 3)
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SENDER_HEADER_BUTTON_TITLE_UPDATES_COUNT", 0x28uLL, 1);
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v22 = sub_10028FEB4();
    v10._countAndFlagsBits = sub_100015E30();
    v10._object = v11;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v22, v10, v9);

    _objc_release(v22);

    sub_10025C9B0(&qword_1006DB0A8, &unk_100509130);
    _allocateUninitializedArray<A>(_:)();
    v30 = *(v27 + 8);
    v12[3] = &type metadata for Int;
    v12[4] = &protocol witness table for Int;
    *v12 = v30;
    sub_1002612B0();
    v23 = static String.localizedStringWithFormat(_:_:)();

    return v23;
  }

  else if (v28 == 4)
  {
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SENDER_HEADER_BUTTON_TITLE_PROMOTIONS_COUNT", 0x2BuLL, 1);
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
    v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v20 = sub_10028FEB4();
    v16._countAndFlagsBits = sub_100015E30();
    v16._object = v17;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v20, v16, v15);

    _objc_release(v20);

    sub_10025C9B0(&qword_1006DB0A8, &unk_100509130);
    _allocateUninitializedArray<A>(_:)();
    v31 = *(v27 + 8);
    v18[3] = &type metadata for Int;
    v18[4] = &protocol witness table for Int;
    *v18 = v31;
    sub_1002612B0();
    v21 = static String.localizedStringWithFormat(_:_:)();

    return v21;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }
}

uint64_t sub_10043C4B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v4 = result;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t sub_10043C510(uint64_t a1)
{
  sub_10043BCCC();
  sub_100267BF4();
  return OptionSet<>.init()();
}

uint64_t sub_10043C714(uint64_t a1, uint64_t a2)
{
  sub_10043BCCC();
  sub_100267BF4();
  return OptionSet<>.formUnion(_:)();
}

uint64_t sub_10043C758(uint64_t a1, uint64_t a2)
{
  sub_10043BCCC();
  sub_100267BF4();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t sub_10043C79C(uint64_t a1, uint64_t a2)
{
  sub_10043BCCC();
  sub_100267BF4();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t sub_10043C7E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10043B800(*a1, v8);
  v3 = v8[1];
  v4 = v8[2];
  v5 = v8[3];
  v6 = v8[4];
  *a2 = v8[0];
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10043C848@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_10043C4C4();
  *a1 = result;
  return result;
}

uint64_t sub_10043C950(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 40))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_10043CA30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3)
    {
      *(result + 40) = 1;
    }
  }

  else if (a3)
  {
    *(result + 40) = 0;
  }

  return result;
}

unint64_t sub_10043CC54()
{
  v2 = qword_1006DC4F8;
  if (!qword_1006DC4F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10043CCE8()
{
  v2 = qword_1006DC500;
  if (!qword_1006DC500)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC500);
    return WitnessTable;
  }

  return v2;
}

void *sub_10043CD64@<X0>(void *a1@<X8>)
{
  v5 = v1;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v4, sizeof(__dst));

  return memcpy(a1, __dst, 0x88uLL);
}

uint64_t sub_10043CDE8()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_10043CE50()
{

  IntentParameter.wrappedValue.getter();
}

uint64_t sub_10043CEA4()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_10043CF00()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F0398);
  sub_1000208F4(v1, qword_1006F0398);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_10043CF5C()
{
  if (qword_1006D6108 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F0398);
}

uint64_t sub_10043CFC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10043CF5C();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10043D038@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Send an email";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendMail", 8uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 13;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10043D21C(uint64_t a1)
{

  IntentParameter.wrappedValue.setter();
}

void (*sub_10043D290(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 64022);
  *a1 = v3;
  v3[4] = *v1;

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10043D328()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

void (*sub_10043D380(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 12520);
  *a1 = v3;
  v3[4] = *(v1 + 8);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

void (*sub_10043D418(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 63495);
  *a1 = v3;
  v3[4] = *(v1 + 16);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10043D4B0(uint64_t a1, uint64_t a2)
{

  IntentParameter.wrappedValue.setter();
}

void (*sub_10043D538(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 17047);
  *a1 = v3;
  v3[4] = *(v1 + 24);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10043D5D0(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380, &qword_100500790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 32);

  sub_100289B6C(v6, v4);
  IntentParameter.wrappedValue.setter();

  return sub_100285F68(v6);
}

void (*sub_10043D6A8(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 28324);
  *a1 = v3;
  v3[4] = *(v1 + 32);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10043D740(char *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006D9B50, &unk_1005044F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 40);

  sub_100358DBC(v6, v4);
  IntentParameter.wrappedValue.setter();

  return sub_100358F78(v6);
}

void (*sub_10043D818(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 53129);
  *a1 = v3;
  v3[4] = *(v1 + 40);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10043D8B0()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_10043D90C(uint64_t a1)
{

  IntentParameter.wrappedValue.setter();
}

void (*sub_10043D980(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 36521);
  *a1 = v3;
  v3[4] = *(v1 + 48);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

void *sub_10043DA18(void *a1)
{
  v7 = a1;
  v6 = v1;

  sub_10043DAA0(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  return sub_10043DCB8(a1);
}

void *sub_10043DAA0(void *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;

    *a2 = v3;
    v4 = a1[1];

    a2[1] = v4;
    v5 = a1[2];

    a2[2] = v5;
    v6 = a1[3];

    a2[3] = v6;
    v7 = a1[4];

    a2[4] = v7;
    v8 = a1[5];

    a2[5] = v8;
    v9 = a1[6];

    a2[6] = v9;
    v10 = a1[7];

    a2[7] = v10;
    v11 = a1[8];

    a2[8] = v11;
    v12 = a1[9];

    a2[9] = v12;
    v13 = a1[10];

    a2[10] = v13;
    v14 = a1[11];

    a2[11] = v14;
    v15 = a1[12];

    a2[12] = v15;
    v16 = a1[13];

    a2[13] = v16;
    v17 = a1[14];

    a2[14] = v17;
    a2[15] = a1[15];
    v18 = a1[16];

    a2[16] = v18;
  }

  else
  {
    memcpy(a2, a1, 0x88uLL);
  }

  return a2;
}

void *sub_10043DCB8(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

void (*sub_10043DDAC(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 63082);
  *a1 = v3;
  v3[4] = *(v1 + 56);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10043DE44(uint64_t a1)
{
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v2[5] = sub_10043E118();
  sub_1003D40AC();
  v3 = swift_task_alloc();
  *(v5 + 48) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10043DF24;

  return sub_1003D41E8(v6);
}

uint64_t sub_10043DF24(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 16) = *v1;
  *(v3 + 56) = a1;

  return _swift_task_switch(sub_10043E040, 0);
}

uint64_t sub_10043E040()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = v0;
  v2 = sub_10043ECA0(v1, 1, sub_10043E17C, 0);
  _objc_release(v2);
  static IntentResult.result<>()();
  v3 = *(*(v0 + 16) + 8);

  return v3();
}

unint64_t sub_10043E118()
{
  v2 = qword_1006DC508;
  if (!qword_1006DC508)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC508);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10043E17C(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v89 = a1;
  v109 = 0;
  v108 = 0;
  v88 = 0;
  v103 = 0;
  v90 = type metadata accessor for Logger();
  v91 = *(v90 - 8);
  v92 = v91;
  v93 = *(v91 + 64);
  v2 = __chkstk_darwin(v97);
  v95 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  v94 = &v28 - v95;
  v3 = __chkstk_darwin(v2);
  v96 = &v28 - v95;
  v109 = v4;
  v108 = v3;
  swift_errorRetain();
  if (v97)
  {
    v87 = v97;
    v7 = v94;
    v62 = v97;
    v103 = v97;
    v8 = sub_1003D4110();
    (*(v92 + 16))(v7, v8, v90);
    swift_errorRetain();
    v70 = 7;
    v71 = swift_allocObject();
    *(v71 + 16) = v62;
    v81 = Logger.logObject.getter();
    v63 = v81;
    v80 = static os_log_type_t.error.getter();
    v64 = v80;
    v65 = 17;
    v74 = swift_allocObject();
    v66 = v74;
    v67 = 32;
    *(v74 + 16) = 32;
    v9 = swift_allocObject();
    v10 = v67;
    v75 = v9;
    v68 = v9;
    *(v9 + 16) = 8;
    v69 = v10;
    v11 = swift_allocObject();
    v12 = v71;
    v72 = v11;
    *(v11 + 16) = sub_100441398;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v72;
    v78 = v13;
    v73 = v13;
    *(v13 + 16) = sub_10026EE84;
    *(v13 + 24) = v14;
    v79 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v76 = _allocateUninitializedArray<A>(_:)();
    v77 = v15;

    v16 = v74;
    v17 = v77;
    *v77 = sub_10026434C;
    v17[1] = v16;

    v18 = v75;
    v19 = v77;
    v77[2] = sub_10026434C;
    v19[3] = v18;

    v20 = v77;
    v21 = v78;
    v77[4] = sub_10026EF2C;
    v20[5] = v21;
    sub_1002612B0();

    if (os_log_type_enabled(v81, v80))
    {
      v23 = v88;
      v55 = static UnsafeMutablePointer.allocate(capacity:)();
      v52 = v55;
      v53 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v56 = sub_1002641E8(0, v53, v53);
      v54 = v56;
      v58 = 1;
      v57 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v102 = v55;
      v101 = v56;
      v100 = v57;
      v59 = &v102;
      sub_10026423C(2, &v102);
      sub_10026423C(v58, v59);
      v98 = sub_10026434C;
      v99 = v66;
      sub_100264250(&v98, v59, &v101, &v100);
      v60 = v23;
      v61 = v23;
      if (v23)
      {
        v50 = 0;

        __break(1u);
      }

      else
      {
        v98 = sub_10026434C;
        v99 = v68;
        sub_100264250(&v98, &v102, &v101, &v100);
        v48 = 0;
        v49 = 0;
        v98 = sub_10026EF2C;
        v99 = v73;
        sub_100264250(&v98, &v102, &v101, &v100);
        v46 = 0;
        v47 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "#SiriMail SendMail.perform: failed with error: %s", v52, 0xCu);
        sub_10026429C(v54, 0);
        sub_10026429C(v57, 1);
        UnsafeMutablePointer.deallocate()();

        v51 = v46;
      }
    }

    else
    {
      v24 = v88;

      v51 = v24;
    }

    v44 = v51;

    (*(v92 + 8))(v94, v90);

    return v44;
  }

  else
  {
    v5 = v96;
    v6 = sub_1003D4110();
    (*(v92 + 16))(v5, v6, v90);
    v85 = Logger.logObject.getter();
    v82 = v85;
    v84 = static os_log_type_t.info.getter();
    v83 = v84;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v86 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v85, v84))
    {
      v25 = v88;
      v35 = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = v35;
      v32 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v33 = 0;
      v36 = sub_1002641E8(0, v32, v32);
      v34 = v36;
      v37 = sub_1002641E8(v33, &type metadata for Any + 8, &type metadata for Any + 8);
      v107 = v35;
      v106 = v36;
      v105 = v37;
      v38 = 0;
      v39 = &v107;
      sub_10026423C(0, &v107);
      sub_10026423C(v38, v39);
      v104 = v86;
      v40 = &v28;
      __chkstk_darwin(&v28);
      v41 = &v28 - 6;
      *(&v28 - 4) = v26;
      *(&v28 - 3) = &v106;
      *(&v28 - 2) = &v105;
      v42 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v43 = v25;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v82, v83, "#SiriMail SendMail.perform: MSSendMail invoked", v31, 2u);
        v29 = 0;
        sub_10026429C(v34, 0);
        sub_10026429C(v37, v29);
        UnsafeMutablePointer.deallocate()();

        v30 = v43;
      }
    }

    else
    {

      v30 = v88;
    }

    v28 = v30;

    (*(v92 + 8))(v96, v90);
    return v28;
  }
}

id sub_10043ECA0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v15 = a3;
    v16 = a4;
    aBlock = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = 0;
    v13 = sub_10043FF28;
    v14 = &unk_1006601C8;
    v6 = _Block_copy(&aBlock);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() sendEmail:a1 playSound:a2 & 1 completionBlock:v7];
  _Block_release(v7);
  _objc_release(a1);
  return v5;
}

void *sub_10043EDC8@<X0>(void *a1@<X8>)
{
  v93 = a1;
  v22 = "To recipients field";
  v28 = "Cc recipients field";
  v33 = "Bcc recipients field";
  v39 = "Subject field";
  v44 = "Body field";
  v49 = "Account field";
  v57 = "Attachments field";
  v65 = "In reply to field";
  v90 = v123;
  v92 = 64;
  v68 = 0;
  memset(v123, 0, sizeof(v123));
  v54 = sub_10025C9B0(&qword_1006D9B50, &unk_1005044F8);
  v11 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v54);
  v55 = &v11 - v11;
  v46 = sub_10025C9B0(&unk_1006D7380, &qword_100500790);
  v12 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v47 = &v11 - v12;
  v1 = sub_10025C9B0(&unk_1006D8270, &unk_1004FF4D0);
  v13 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v43 = &v11 - v13;
  v52 = 0;
  v2 = type metadata accessor for InputConnectionBehavior();
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v88 = &v11 - v14;
  v3 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v15 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v87 = &v11 - v15;
  v16 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v11 - v15);
  v86 = &v11 - v16;
  v17 = (*(*(sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v84 = &v11 - v17;
  v18 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v72 = &v11 - v18;
  v19 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v71 = &v11 - v19;
  v20 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v69 = &v11 - v20;
  v73 = type metadata accessor for LocalizedStringResource();
  v24 = *(v73 - 8);
  v25 = v73 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v83 = &v11 - v21;
  v32 = sub_10025C9B0(&qword_1006DC538, &qword_10050BAB8);
  v27 = 2;
  v77 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("To", 2uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v63 = "AppIntents";
  v64 = 10;
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v77 & 1);
  sub_100015CC0();
  sub_10025D410(v72);
  v120[1] = v22;
  v29 = 19;
  v120[2] = 19;
  v67 = 2;
  v121 = 2;
  v122 = v68 & 1 & v77;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v75 = *(v24 + 56);
  v74 = v24 + 56;
  v75(v84, v77, v77, v73);
  v26 = v120;
  v120[0] = 0;
  v78 = type metadata accessor for IntentDialog();
  v5 = *(v78 - 8);
  v80 = *(v5 + 56);
  v79 = v5 + 56;
  v80(v86, v77);
  (v80)(v87, v77, v77, v78);
  v35 = sub_10025C9B0(&qword_1006DA330, &unk_10050BAC0);
  v36 = sub_100441050();
  v38 = sub_1002B9E5C();
  sub_1003BD8F8(v88);
  v123[0] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cc", v27, v77 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v63, v64, v77 & 1);
  sub_100015CC0();
  sub_10025D410(v72);
  v117[1] = v28;
  v117[2] = v29;
  v118 = v67;
  v119 = v68 & 1 & v77;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v75(v84, v77, v77, v73);
  v31 = v117;
  v117[0] = 0;
  (v80)(v86, v77, v77, v78);
  (v80)(v87, v77, v77, v78);
  sub_1003BD8F8(v88);
  v123[1] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Bcc", 3uLL, v77 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v63, v64, v77 & 1);
  sub_100015CC0();
  sub_10025D410(v72);
  v114[1] = v33;
  v114[2] = 20;
  v115 = v67;
  v116 = v68 & 1 & v77;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v75(v84, v77, v77, v73);
  v37 = v114;
  v114[0] = 0;
  (v80)(v86, v77, v77, v78);
  (v80)(v87, v77, v77, v78);
  sub_1003BD8F8(v88);
  v123[2] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7430, &unk_1004FF4F0);
  v48 = 7;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Subject", 7uLL, v77 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v63, v64, v77 & 1);
  sub_100015CC0();
  sub_10025D410(v72);
  v111[2] = v39;
  v50 = 13;
  v111[3] = 13;
  v112 = v67;
  v113 = v68 & 1 & v77;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v75(v84, v77, v77, v73);
  v42 = v111;
  v111[0] = 0;
  v111[1] = 0;
  v6 = type metadata accessor for String.IntentInputOptions();
  (*(*(v6 - 8) + 56))(v43, v77);
  (v80)(v86, v77, v77, v78);
  v41 = sub_10025C9B0(&unk_1006D7340, &unk_1005039F0);
  sub_10028DF54();
  sub_1003BD8F8(v88);
  v123[3] = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7450, &unk_1004FF500);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Body", 4uLL, v77 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v63, v64, v77 & 1);
  sub_100015CC0();
  sub_10025D410(v72);
  v107 = v44;
  v108 = v64;
  v109 = v67;
  v110 = v68 & 1 & v77;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v75(v84, v77, v77, v73);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 56))(v47, v77);
  (v80)(v86, v77, v77, v78);
  sub_10028E064();
  sub_1003BD8F8(v88);
  v123[4] = IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&qword_1006DC548, &qword_10050BAD0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Account", v48, v77 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v51 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v63, v64, v77 & 1);
  sub_100015CC0();
  sub_10025D410(v72);
  v103 = v49;
  v104 = v50;
  v105 = v67;
  v106 = v68 & 1 & v77;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v75(v84, v77, v77, v73);
  v8 = type metadata accessor for MailAccountEntity(v52);
  (*(*(v8 - 8) + 56))(v55, v77);
  (v80)(v86, v77, v77, v78);
  (v80)(v87, v77, v77, v78);
  v53 = sub_10035A384();
  v56 = sub_10034C204();
  sub_1003BD8F8(v88);
  v123[5] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7490, &qword_1004FF518);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Attachments", 0xBuLL, v77 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v63, v64, v77 & 1);
  sub_100015CC0();
  sub_10025D410(v72);
  v100[1] = v57;
  v66 = 17;
  v100[2] = 17;
  v101 = v67;
  v102 = v68 & 1 & v77;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v75(v84, v77, v77, v73);
  v61 = v100;
  v100[0] = 0;
  (v80)(v86, v77, v77, v78);
  v60 = sub_10025C9B0(&unk_1006D7270, &unk_1004FF0E0);
  v59 = sub_10028E214();
  sub_1004410E8();
  v62 = v9;
  sub_1003BD8F8(v88);
  v123[6] = IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&qword_1006DC550, &qword_10050BAD8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InReplyTo", 9uLL, v77 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v63, v64, v77 & 1);
  sub_100015CC0();
  sub_10025D410(v72);
  v96 = v65;
  v97 = v66;
  v98 = v67;
  v99 = v68 & 1 & v77;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v75(v84, v77, v77, v73);
  v76 = v124;
  sub_1004411BC(v124);
  v85 = v95;
  memcpy(v95, v76, sizeof(v95));
  (v80)(v86, v77, v77, v78);
  (v80)(v87, v77, v77, v78);
  v82 = sub_10025C9B0(&qword_1006DC558, &qword_10050BAE0);
  v81 = sub_100441204();
  v89 = sub_1002B9DE4();
  sub_1003BD8F8(v88);
  v123[7] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v91 = __dst;
  memcpy(__dst, v90, v92);
  sub_10028B3B4(v91, v94);
  sub_10028E32C(v90);
  return memcpy(v93, v91, v92);
}

uint64_t sub_10043FF28(uint64_t a1, void *a2, void *a3)
{
  v16 = a1;
  v21 = a2;
  v10 = a3;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v15 = v5 - v14;
  v17 = (*(*(sub_10025C9B0(&qword_1006D7250, &unk_1004FF0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v16);
  v18 = v5 - v17;
  v19 = *(v3 + 32);
  v20 = *(v3 + 40);

  _objc_retain(v21);
  if (v21)
  {
    v9 = v21;
    v8 = v21;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v12 + 32))(v18, v15, v11);
    (*(v12 + 56))(v18, 0, 1, v11);
    _objc_release(v8);
  }

  else
  {
    (*(v12 + 56))(v18, 1, 1, v11);
  }

  _objc_retain(v10);
  if (v10)
  {
    v7 = v10;
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v5[1] = v6;
  v19(v18);

  sub_100286140(v18);
}

void (*sub_100440224(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL, 56707);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D290(v3 + 8);
  return sub_1004402BC;
}

void sub_1004402BC(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 96))();
  free(v1);
}

void (*sub_100440388(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL, 36398);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D380(v3 + 8);
  return sub_1004402BC;
}

void (*sub_100440468(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL, 64313);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D418(v3 + 8);
  return sub_1004402BC;
}

void (*sub_100440590(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL, 2028);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D538(v3 + 8);
  return sub_1004402BC;
}

void (*sub_1004406B8(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL, 24550);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D6A8(v3 + 8);
  return sub_1004402BC;
}

void (*sub_100440798(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL, 4755);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D818(v3 + 8);
  return sub_1004402BC;
}

void (*sub_1004408B8(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL, 2714);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D980(v3 + 8);
  return sub_1004402BC;
}

void *sub_100440950@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_10043CD64(v4);
  return memcpy(a1, v4, 0x88uLL);
}

void *sub_1004409B0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, __srca, sizeof(v4));
  return sub_10043DA18(__dst);
}

void (*sub_100440A10(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL, 30250);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043DDAC(v3 + 8);
  return sub_1004402BC;
}

uint64_t sub_100440AA8(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return PreparableIntent.prepare()(a1, a2);
}

uint64_t sub_100440B7C(uint64_t a1)
{
  *(v2 + 80) = v2;
  memcpy((v2 + 16), v1, 0x40uLL);
  v3 = swift_task_alloc();
  *(v5 + 88) = v3;
  *v3 = *(v5 + 80);
  v3[1] = sub_10028D168;

  return sub_10043DE44(a1);
}

unint64_t sub_100440CB4()
{
  v2 = qword_1006DC510;
  if (!qword_1006DC510)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100440D48()
{
  v2 = qword_1006DC518;
  if (!qword_1006DC518)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC518);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100440DF4()
{
  v2 = qword_1006DC520;
  if (!qword_1006DC520)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100440E9C()
{
  v2 = qword_1006DC528;
  if (!qword_1006DC528)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC528);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100440F30()
{
  v2 = qword_1006DC530;
  if (!qword_1006DC530)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100441050()
{
  v2 = qword_1006DC540;
  if (!qword_1006DC540)
  {
    sub_10025CAA4(&qword_1006DA330, &unk_10050BAC0);
    sub_100352270();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC540);
    return WitnessTable;
  }

  return v2;
}

void sub_1004410E8()
{
  sub_10025C9B0(&unk_1006DC568, &qword_10050BAE8);
  type metadata accessor for UTType();
  v0 = swift_allocObject();
  sub_10044129C(v0, 1);
  static UTType.item.getter();
  sub_1002700CC();
}

void *sub_1004411BC(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  result[16] = 0;
  return result;
}

unint64_t sub_100441204()
{
  v2 = qword_1006DC560;
  if (!qword_1006DC560)
  {
    sub_10025CAA4(&qword_1006DC558, &qword_10050BAE0);
    sub_10038360C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC560);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10044129C(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  type metadata accessor for UTType();

  return a1;
}

uint64_t sub_100441334(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1004413A0()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F03B0);
  sub_1000208F4(v1, qword_1006F03B0);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_1004413FC()
{
  if (qword_1006D6110 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F03B0);
}

uint64_t sub_100441468@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004413FC();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004414CC()
{
  v9 = "Mark an email message as read";
  v4 = 0;
  v2 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v1 - v2;
  v3 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v1 - v3;
  v5 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v11 = &v1 - v5;
  v7 = type metadata accessor for LocalizedStringResource();
  v6 = qword_1006F03C8;
  sub_10002094C(v7, qword_1006F03C8);
  v10 = sub_1000208F4(v7, v6);
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SetMailMessageIsRead", 0x14uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 29;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1004416DC()
{
  if (qword_1006D6118 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  return sub_1000208F4(v0, qword_1006F03C8);
}

uint64_t sub_100441748@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004416DC();
  v1 = type metadata accessor for LocalizedStringResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void *sub_1004417BC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v7, sizeof(__dst));

  return memcpy(a5, __dst, 0x88uLL);
}

void *sub_100441864(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[22] = a1;
  v8[17] = a2;
  v8[18] = a3;
  v8[19] = a4;
  v8[20] = a5;

  sub_1003814E0(a1, v8);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_1003816C8(a1);
  return result;
}

void (*sub_100441900(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  v5 = sub_100294700(0x30uLL, 5311);
  *a1 = v5;
  v5[4] = a3;

  v5[5] = IntentParameter.wrappedValue.modify();
  return sub_10034F1C0;
}

uint64_t sub_1004419C8(uint64_t a1, uint64_t a2)
{

  v3 = IntentParameter.projectedValue.getter();

  return v3;
}

uint64_t sub_100441A34(uint64_t a1, uint64_t a2, uint64_t a3)
{

  IntentParameter.wrappedValue.getter();

  return v4 & 1;
}

uint64_t sub_100441AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  IntentParameter.wrappedValue.setter();
}

void (*sub_100441B28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v6 = sub_100294700(0x30uLL, 53888);
  *a1 = v6;
  v6[4] = a4;

  v6[5] = IntentParameter.wrappedValue.modify();
  return sub_10034F1C0;
}

uint64_t sub_100441BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = IntentParameter.projectedValue.getter();

  return v4;
}

uint64_t sub_100441C90()
{
  v50 = v62;
  v19 = "Email message to mark";
  v30 = "Is Read field";
  v51 = v63;
  memset(v63, 0, 32);
  v0 = sub_10025C9B0(&unk_1006DB310, &unk_10050D1D0);
  v10 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v46 = &v9 - v10;
  v49 = 0;
  v1 = type metadata accessor for InputConnectionBehavior();
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v48 = &v9 - v11;
  v2 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v26 = &v9 - v12;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v12);
  v47 = &v9 - v13;
  v14 = (*(*(sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v44 = &v9 - v14;
  v15 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v34 = &v9 - v15;
  v16 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v33 = &v9 - v16;
  v17 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v31 = &v9 - v17;
  v35 = type metadata accessor for LocalizedStringResource();
  v21 = *(v35 - 8);
  v22 = v35 - 8;
  v18 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v43 = &v9 - v18;
  v63[0] = 0;
  sub_10025C9B0(&qword_1006DC578, &unk_10050BB10);
  v39 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v28 = "AppIntents";
  v29 = 10;
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v39 & 1);
  sub_100015CC0();
  sub_10025D410(v34);
  v4 = v50;
  *v50 = v19;
  v4[1] = 21;
  v38 = 2;
  v62[16] = 2;
  v52 = 0;
  v62[17] = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v37 = *(v21 + 56);
  v36 = v21 + 56;
  v37(v44, v39, v39, v35);
  v23 = v64;
  sub_1004411BC(v64);
  v25 = v61;
  memcpy(v61, v23, sizeof(v61));
  v40 = type metadata accessor for IntentDialog();
  v5 = *(v40 - 8);
  v42 = *(v5 + 56);
  v41 = v5 + 56;
  v42(v47, v39);
  (v42)(v26, v39, v39, v40);
  v24 = sub_10038360C();
  v27 = sub_1002B9DE4();
  sub_1003BD8F8(v48);
  v53 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v50[4] = v53;
  sub_10025C9B0(&qword_1006DB330, &qword_1005095D8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IsRead", 6uLL, v39 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v28, v29, v39 & 1);
  sub_100015CC0();
  sub_10025D410(v34);
  v57 = v30;
  v58 = 13;
  v59 = v38;
  v60 = v52 & 1 & v39;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v37(v44, v39, v39, v35);
  v45 = &v56;
  v56 = v38;
  v6 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v6 - 8) + 56))(v46, v39);
  (v42)(v47, v39, v39, v40);
  sub_1003424B8();
  sub_1003BD8F8(v48);
  v54 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();

  v50[5] = v54;
  sub_10025C6A0();
  v55 = sub_10025C704();
  _objc_retain(v55);
  v7 = v51;
  v50[6] = v55;
  sub_1004451D8(v7);
  return v52 & 1;
}

uint64_t sub_100442400(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 344) = a5;
  *(v5 + 336) = a4;
  *(v5 + 328) = a3;
  *(v5 + 376) = a2 & 1;
  *(v5 + 320) = a1;
  *(v5 + 296) = v5;
  *(v5 + 248) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 304) = 0;
  *(v5 + 280) = 0;
  *(v5 + 288) = 0;
  *(v5 + 312) = 0;
  v6 = type metadata accessor for Logger();
  *(v5 + 352) = v6;
  *(v5 + 360) = *(v6 - 8);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 248) = a2;
  *(v5 + 256) = a3;
  *(v5 + 264) = a4;
  *(v5 + 272) = a5;

  return _swift_task_switch(sub_10044254C, 0);
}

uint64_t sub_10044254C()
{
  v47 = v0;
  v1 = *(v0 + 368);
  v30 = *(v0 + 360);
  v31 = *(v0 + 352);
  v2 = *(v0 + 344);
  v29 = v2;
  v28 = *(v0 + 336);
  v27 = *(v0 + 328);
  v26 = *(v0 + 376);
  *(v0 + 296) = v0;
  _objc_retain(v2);
  v25 = [v29 messageRepository];
  *(v0 + 304) = v25;
  _objc_release(v29);
  sub_1004417BC(v26 & 1, v27, v28, v29, (v0 + 16));

  v32 = String.uniqueIdentifier.getter();
  v33 = v3;
  *(v0 + 280) = v32;
  *(v0 + 288) = v3;

  sub_1003816C8((v0 + 16));
  v4 = sub_1004413FC();
  (*(v30 + 16))(v1, v4, v31);

  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = 32;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1002B77BC;
  *(v35 + 24) = v34;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_10026EE84;
  *(v38 + 24) = v35;
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  _allocateUninitializedArray<A>(_:)();
  v39 = v5;

  *v39 = sub_10026434C;
  v39[1] = v36;

  v39[2] = sub_10026434C;
  v39[3] = v37;

  v39[4] = sub_10026EF2C;
  v39[5] = v38;
  sub_1002612B0();

  if (os_log_type_enabled(v40, v41))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v22 = sub_1002641E8(0, v20, v20);
    v23 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v42 = buf;
    v43 = v22;
    v44 = v23;
    sub_10026423C(2, &v42);
    sub_10026423C(1, &v42);
    v45 = sub_10026434C;
    v46 = v36;
    sub_100264250(&v45, &v42, &v43, &v44);
    v45 = sub_10026434C;
    v46 = v37;
    sub_100264250(&v45, &v42, &v43, &v44);
    v45 = sub_10026EF2C;
    v46 = v38;
    sub_100264250(&v45, &v42, &v43, &v44);
    _os_log_impl(&_mh_execute_header, v40, v41, "#SiriMail SetMailMessageIsRead fetching message for ID %s", buf, 0xCu);
    sub_10026429C(v22, 0);
    sub_10026429C(v23, 1);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v19 = *(v24 + 368);
  v10 = *(v24 + 352);
  v15 = *(v24 + 344);
  v14 = *(v24 + 336);
  v13 = *(v24 + 328);
  v12 = *(v24 + 376);
  v9 = *(v24 + 360);
  _objc_release(v40);
  (*(v9 + 8))(v19, v10);

  v11 = String._bridgeToObjectiveC()();

  v18 = [v25 messageForSearchableItemIdentifier:v11];
  _objc_release(v11);
  *(v24 + 312) = v18;
  _objc_retain(v25);

  _objc_retain(v15);
  v6 = swift_allocObject();
  *(v6 + 16) = v25;
  *(v6 + 24) = v32;
  *(v6 + 32) = v33;
  *(v6 + 40) = v12;
  *(v6 + 48) = v13;
  *(v6 + 56) = v14;
  *(v6 + 64) = v15;
  *(v24 + 184) = sub_1004452CC;
  *(v24 + 192) = v6;
  *(v24 + 152) = _NSConcreteStackBlock;
  *(v24 + 160) = 1107296256;
  *(v24 + 164) = 0;
  *(v24 + 168) = sub_1002919E0;
  *(v24 + 176) = &unk_1006603A8;
  aBlock = _Block_copy((v24 + 152));

  [v18 addSuccessBlock:aBlock];
  _Block_release(aBlock);
  *(v24 + 232) = sub_1004448A0;
  *(v24 + 240) = 0;
  *(v24 + 200) = _NSConcreteStackBlock;
  *(v24 + 208) = 1107296256;
  *(v24 + 212) = 0;
  *(v24 + 216) = sub_100291B2C;
  *(v24 + 224) = &unk_1006603D0;
  v17 = _Block_copy((v24 + 200));
  [v18 addFailureBlock:?];
  _Block_release(v17);
  static IntentResult.result<>()();
  _objc_release(v18);

  _objc_release(v25);

  v7 = *(*(v24 + 296) + 8);

  return v7();
}

void sub_100442EBC(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v74 = a8;
  v73 = a7;
  v72 = a6;
  v71 = a5;
  v70 = a4;
  v69 = a3;
  v76 = a2;
  v75 = a1;
  v67 = a5;
  v85 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0u;
  v109 = 0u;
  v108 = 0;
  v107 = 0;
  v68 = 0;
  v82 = type metadata accessor for Logger();
  v77 = v82;
  v78 = *(v82 - 8);
  v81 = v78;
  v79 = v78;
  v8 = __chkstk_darwin(v75);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v10;
  v114 = v8;
  v113 = v11;
  v111 = v12;
  v112 = v13;
  LOBYTE(v109) = v14;
  *(&v109 + 1) = v15;
  *&v110 = v16;
  *(&v110 + 1) = v17;
  v18 = sub_1004413FC();
  (*(v81 + 16))(v10, v18, v82);
  v87 = Logger.logObject.getter();
  v83 = v87;
  v86 = static os_log_type_t.info.getter();
  v84 = v86;
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v88 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v87, v86))
  {
    v19 = v68;
    v58 = static UnsafeMutablePointer.allocate(capacity:)();
    v54 = v58;
    v55 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v56 = 0;
    v59 = sub_1002641E8(0, v55, v55);
    v57 = v59;
    v60 = sub_1002641E8(v56, &type metadata for Any + 8, &type metadata for Any + 8);
    v92 = v58;
    v91 = v59;
    v90 = v60;
    v61 = 0;
    v62 = &v92;
    sub_10026423C(0, &v92);
    sub_10026423C(v61, v62);
    v89 = v88;
    v63 = v41;
    __chkstk_darwin(v41);
    v64 = &v41[-6];
    v41[-4] = v20;
    v41[-3] = &v91;
    v41[-2] = &v90;
    v65 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v66 = v19;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v83, v84, "#SiriMail SetMailMessageIsRead: got message for ID, marking read", v54, 2u);
      v52 = 0;
      sub_10026429C(v57, 0);
      sub_10026429C(v60, v52);
      UnsafeMutablePointer.deallocate()();

      v53 = v66;
    }
  }

  else
  {

    v53 = v68;
  }

  (*(v79 + 8))(v80, v77);
  sub_1004456AC();
  v41[1] = sub_10025C9B0(&unk_1006D7220, &qword_1004FF600);
  v41[2] = _allocateUninitializedArray<A>(_:)();
  v41[0] = v21;
  v22 = v75;
  *v41[0] = v75;
  sub_1002612B0();
  v42 = v23;
  v24 = [objc_opt_self() setRead];
  v51 = sub_10044378C(v42, 6, 2, v24);
  v108 = v51;
  v50 = [v76 performMessageChangeActionReturningUndoAction:?];
  v107 = v50;

  v25 = v74;
  v44 = 64;
  v45 = 7;
  v26 = swift_allocObject();
  v27 = v67;
  v28 = v70;
  v29 = v72;
  v30 = v73;
  v31 = v74;
  *(v26 + 16) = v69;
  *(v26 + 24) = v28;
  v46 = v27 & 1;
  *(v26 + 32) = v27 & 1;
  *(v26 + 40) = v29;
  *(v26 + 48) = v30;
  *(v26 + 56) = v31;
  v105 = sub_100445710;
  v106 = v26;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v101 = 1107296256;
  v48 = 0;
  v102 = 0;
  v103 = sub_1002919E0;
  v104 = &unk_100660570;
  v43 = _Block_copy(&aBlock);

  [v50 addSuccessBlock:v43];
  _Block_release(v43);

  v32 = v74;
  v33 = swift_allocObject();
  v34 = v70;
  v35 = v46;
  v36 = v72;
  v37 = v73;
  v38 = v74;
  v39 = v47;
  v40 = v48;
  *(v33 + 16) = v69;
  *(v33 + 24) = v34;
  *(v33 + 32) = v35;
  *(v33 + 40) = v36;
  *(v33 + 48) = v37;
  *(v33 + 56) = v38;
  v98 = sub_100445794;
  v99 = v33;
  v93 = _NSConcreteStackBlock;
  v94 = v39;
  v95 = v40;
  v96 = sub_100291B2C;
  v97 = &unk_1006605C0;
  v49 = _Block_copy(&v93);

  [v50 addFailureBlock:v49];
  _Block_release(v49);
}

uint64_t sub_1004437E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a1;
  v50 = a2;
  v51 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  v53 = sub_1002B77BC;
  v57 = sub_10026EE84;
  v59 = sub_10026434C;
  v61 = sub_10026434C;
  v64 = sub_10026EF2C;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v75 = 0u;
  v76 = 0u;
  v39 = 0;
  v49 = type metadata accessor for Logger();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v45 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v30 - v45;
  v46 = v30 - v45;
  v79 = __chkstk_darwin(v44);
  v77 = v8;
  v78 = v9;
  LOBYTE(v75) = v10;
  *(&v75 + 1) = v11;
  *&v76 = v12;
  *(&v76 + 1) = v13;
  v14 = sub_1004413FC();
  (*(v47 + 16))(v7, v14, v49);

  v54 = 32;
  v55 = 7;
  v15 = swift_allocObject();
  v16 = v51;
  v56 = v15;
  *(v15 + 16) = v50;
  *(v15 + 24) = v16;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();
  v52 = 17;
  v60 = swift_allocObject();
  *(v60 + 16) = 32;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v17 = swift_allocObject();
  v18 = v56;
  v58 = v17;
  *(v17 + 16) = v53;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v58;
  v65 = v19;
  *(v19 + 16) = v57;
  *(v19 + 24) = v20;
  v67 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v63 = _allocateUninitializedArray<A>(_:)();
  v66 = v21;

  v22 = v60;
  v23 = v66;
  *v66 = v59;
  v23[1] = v22;

  v24 = v62;
  v25 = v66;
  v66[2] = v61;
  v25[3] = v24;

  v26 = v65;
  v27 = v66;
  v66[4] = v64;
  v27[5] = v26;
  sub_1002612B0();

  if (os_log_type_enabled(v68, v69))
  {
    v28 = v39;
    v32 = static UnsafeMutablePointer.allocate(capacity:)();
    v31 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v33 = sub_1002641E8(0, v31, v31);
    v34 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v35 = &v74;
    v74 = v32;
    v36 = &v73;
    v73 = v33;
    v37 = &v72;
    v72 = v34;
    sub_10026423C(2, &v74);
    sub_10026423C(1, v35);
    v70 = v59;
    v71 = v60;
    sub_100264250(&v70, v35, v36, v37);
    v38 = v28;
    if (v28)
    {

      __break(1u);
    }

    else
    {
      v70 = v61;
      v71 = v62;
      sub_100264250(&v70, &v74, &v73, &v72);
      v30[0] = 0;
      v70 = v64;
      v71 = v65;
      sub_100264250(&v70, &v74, &v73, &v72);
      _os_log_impl(&_mh_execute_header, v68, v69, "#SiriMail SetMailMessageIsRead: marked message %s as read", v32, 0xCu);
      sub_10026429C(v33, 0);
      sub_10026429C(v34, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v68);
  return (*(v47 + 8))(v46, v49);
}

uint64_t sub_100443E84(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a1;
  v60 = a2;
  v61 = a3;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  v54 = a7;
  v63 = sub_1002B77BC;
  v65 = sub_10026EE84;
  v70 = sub_100441398;
  v74 = sub_10026EE84;
  v76 = sub_10026434C;
  v78 = sub_10026434C;
  v80 = sub_10026EF2C;
  v82 = sub_10026434C;
  v84 = sub_10026434C;
  v87 = sub_10026EF2C;
  v102 = 0;
  v100 = 0;
  v101 = 0;
  v98 = 0u;
  v99 = 0u;
  v50 = 0;
  v59 = type metadata accessor for Logger();
  v57 = *(v59 - 8);
  v58 = v59 - 8;
  v55 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v40 - v55;
  v56 = v40 - v55;
  v102 = __chkstk_darwin(v62);
  v100 = v8;
  v101 = v9;
  LOBYTE(v98) = v10;
  *(&v98 + 1) = v11;
  *&v99 = v12;
  *(&v99 + 1) = v13;
  v14 = sub_1004413FC();
  (*(v57 + 16))(v7, v14, v59);

  v71 = 32;
  v72 = 7;
  v15 = swift_allocObject();
  v16 = v61;
  v64 = v15;
  *(v15 + 16) = v60;
  *(v15 + 24) = v16;
  swift_errorRetain();
  v73 = swift_allocObject();
  *(v73 + 16) = v62;
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.error.getter();
  v68 = 17;
  v77 = swift_allocObject();
  v67 = 32;
  *(v77 + 16) = 32;
  v79 = swift_allocObject();
  v69 = 8;
  *(v79 + 16) = 8;
  v17 = swift_allocObject();
  v18 = v64;
  v66 = v17;
  *(v17 + 16) = v63;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v66;
  v81 = v19;
  *(v19 + 16) = v65;
  *(v19 + 24) = v20;
  v83 = swift_allocObject();
  *(v83 + 16) = v67;
  v85 = swift_allocObject();
  *(v85 + 16) = v69;
  v21 = swift_allocObject();
  v22 = v73;
  v75 = v21;
  *(v21 + 16) = v70;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v75;
  v88 = v23;
  *(v23 + 16) = v74;
  *(v23 + 24) = v24;
  v90 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v86 = _allocateUninitializedArray<A>(_:)();
  v89 = v25;

  v26 = v77;
  v27 = v89;
  *v89 = v76;
  v27[1] = v26;

  v28 = v79;
  v29 = v89;
  v89[2] = v78;
  v29[3] = v28;

  v30 = v81;
  v31 = v89;
  v89[4] = v80;
  v31[5] = v30;

  v32 = v83;
  v33 = v89;
  v89[6] = v82;
  v33[7] = v32;

  v34 = v85;
  v35 = v89;
  v89[8] = v84;
  v35[9] = v34;

  v36 = v88;
  v37 = v89;
  v89[10] = v87;
  v37[11] = v36;
  sub_1002612B0();

  if (os_log_type_enabled(v91, v92))
  {
    v38 = v50;
    v42 = static UnsafeMutablePointer.allocate(capacity:)();
    v41 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v43 = sub_1002641E8(0, v41, v41);
    v44 = sub_1002641E8(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v46 = &v97;
    v97 = v42;
    v47 = &v96;
    v96 = v43;
    v48 = &v95;
    v95 = v44;
    v45 = 2;
    sub_10026423C(2, &v97);
    sub_10026423C(v45, v46);
    v93 = v76;
    v94 = v77;
    sub_100264250(&v93, v46, v47, v48);
    v49 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v93 = v78;
      v94 = v79;
      sub_100264250(&v93, &v97, &v96, &v95);
      v40[3] = 0;
      v93 = v80;
      v94 = v81;
      sub_100264250(&v93, &v97, &v96, &v95);
      v40[2] = 0;
      v93 = v82;
      v94 = v83;
      sub_100264250(&v93, &v97, &v96, &v95);
      v40[1] = 0;
      v93 = v84;
      v94 = v85;
      sub_100264250(&v93, &v97, &v96, &v95);
      v40[0] = 0;
      v93 = v87;
      v94 = v88;
      sub_100264250(&v93, &v97, &v96, &v95);
      _os_log_impl(&_mh_execute_header, v91, v92, "#SiriMail SetMailMessageIsRead: failed to mark message %s as read %s", v42, 0x16u);
      sub_10026429C(v43, 0);
      sub_10026429C(v44, 2);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v91);
  return (*(v57 + 8))(v56, v59);
}

uint64_t sub_1004448A0(uint64_t a1)
{
  v31 = a1;
  v33 = sub_100441398;
  v37 = sub_10026EE84;
  v39 = sub_10026434C;
  v41 = sub_10026434C;
  v44 = sub_10026EF2C;
  v55 = 0;
  v25 = 0;
  v30 = type metadata accessor for Logger();
  v28 = *(v30 - 8);
  v29 = v30 - 8;
  v26 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = v16 - v26;
  v27 = v16 - v26;
  v55 = __chkstk_darwin(v31);
  v2 = sub_1004413FC();
  (*(v28 + 16))(v1, v2, v30);
  swift_errorRetain();
  v35 = 7;
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  v32 = 17;
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v34 = 32;
  v3 = swift_allocObject();
  v4 = v36;
  v38 = v3;
  *(v3 + 16) = v33;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v38;
  v45 = v5;
  *(v5 + 16) = v37;
  *(v5 + 24) = v6;
  v47 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v43 = _allocateUninitializedArray<A>(_:)();
  v46 = v7;

  v8 = v40;
  v9 = v46;
  *v46 = v39;
  v9[1] = v8;

  v10 = v42;
  v11 = v46;
  v46[2] = v41;
  v11[3] = v10;

  v12 = v45;
  v13 = v46;
  v46[4] = v44;
  v13[5] = v12;
  sub_1002612B0();

  if (os_log_type_enabled(v48, v49))
  {
    v14 = v25;
    v18 = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v19 = sub_1002641E8(0, v17, v17);
    v20 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v21 = &v54;
    v54 = v18;
    v22 = &v53;
    v53 = v19;
    v23 = &v52;
    v52 = v20;
    sub_10026423C(2, &v54);
    sub_10026423C(1, v21);
    v50 = v39;
    v51 = v40;
    sub_100264250(&v50, v21, v22, v23);
    v24 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v50 = v41;
      v51 = v42;
      sub_100264250(&v50, &v54, &v53, &v52);
      v16[1] = 0;
      v50 = v44;
      v51 = v45;
      sub_100264250(&v50, &v54, &v53, &v52);
      _os_log_impl(&_mh_execute_header, v48, v49, "#SiriMail SetMailMessageIsRead: failed to get EMMessage from EMMessageRepository: %s", v18, 0xCu);
      sub_10026429C(v19, 0);
      sub_10026429C(v20, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v48);
  return (*(v28 + 8))(v27, v30);
}

void (*sub_100444F04(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = sub_100294700(0x28uLL, 13447);
  *a1 = v3;
  v3[4] = sub_100441900(v3, *v1 & 1, *(v1 + 8));
  return sub_10034C098;
}

void (*sub_100444FE8(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = sub_100294700(0x28uLL, 7035);
  *a1 = v3;
  v3[4] = sub_100441B28(v3, *v1 & 1, *(v1 + 8), *(v1 + 16));
  return sub_10034C098;
}

uint64_t sub_100445084(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_100442400(a1, v6 & 1, v7, v8, v9);
}

uint64_t sub_10044516C@<X0>(uint64_t a1@<X8>)
{
  result = sub_100441C90();
  *a1 = result & 1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

uint64_t sub_1004451D8(uint64_t a1)
{

  _objc_release(*(a1 + 24));
  return a1;
}

id sub_100445224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10025C9B0(&unk_1006D7220, &qword_1004FF600);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v5 initWithMessageListItems:? origin:? actor:? flagChange:?];
  _objc_release(a4);
  _objc_release(isa);

  return v8;
}

uint64_t sub_1004452F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100445354(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1004453B8()
{
  v2 = qword_1006DC588;
  if (!qword_1006DC588)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10044544C()
{
  v2 = qword_1006DC590;
  if (!qword_1006DC590)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004454F8()
{
  v2 = qword_1006DC5A0;
  if (!qword_1006DC5A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10044558C()
{
  v2 = qword_1006DC5A8;
  if (!qword_1006DC5A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC5A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004456AC()
{
  v2 = qword_1006DC5B0;
  if (!qword_1006DC5B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC5B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100445730(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1004457B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100445818()
{
  v17 = "Email messages to remind about";
  v31 = "Date to remind on";
  v53 = &v72;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v0 = sub_10025C9B0(&qword_1006DC4D0, &unk_10050BFD0);
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v50 = &v6 - v6;
  v22 = 0;
  v1 = type metadata accessor for InputConnectionBehavior();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v52 = &v6 - v7;
  v2 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v26 = &v6 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v8);
  v51 = &v6 - v9;
  v10 = (*(*(sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v49 = &v6 - v10;
  v11 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v37 = &v6 - v11;
  v12 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v36 = &v6 - v12;
  v13 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v34 = &v6 - v13;
  v39 = type metadata accessor for LocalizedStringResource();
  v20 = *(v39 - 8);
  v21 = v39 - 8;
  v14 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v48 = &v6 - v14;
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  v15 = v71;
  memset(v71, 0, sizeof(v71));
  sub_10000B074();
  sub_1003DC7F0();
  v56 = AppDependency.__allocating_init(key:manager:)();

  v72 = v56;
  sub_10025C9B0(&unk_1006D70A0, &qword_1004FEC80);
  v42 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Messages", 8uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v29 = "AppIntents";
  v30 = 10;
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v42 & 1);
  sub_100015CC0();
  sub_10025D410(v37);
  v68 = v17;
  v18 = 30;
  v69 = 30;
  v33 = 2;
  v70 = 2;
  v38 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REMIND_ME_ENTITY_DESCRIPTION", 0x1CuLL, v42 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v29, v30, v42 & 1);
  sub_100015CC0();
  sub_10025D410(v37);
  v65[1] = v17;
  v65[2] = v18;
  v66 = v33;
  v67 = v38 & 1 & v42;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v41 = *(v20 + 56);
  v40 = v20 + 56;
  v41(v49, v38, v42, v39);
  v25 = v65;
  v65[0] = 0;
  v43 = type metadata accessor for IntentDialog();
  v4 = *(v43 - 8);
  v45 = *(v4 + 56);
  v44 = v4 + 56;
  v45(v51, v42);
  (v45)(v26, v42, v42, v43);
  v24 = sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  v23 = sub_10027D124();
  v27 = sub_10027EAAC();
  sub_1003BD8F8(v52);
  v54 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v73 = v54;
  sub_10025C9B0(&qword_1006DC4D8, &unk_10050BFE0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Date", 4uLL, v42 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v29, v30, v42 & 1);
  sub_100015CC0();
  sub_10025D410(v37);
  v61 = v31;
  v32 = 17;
  v62 = 17;
  v63 = v33;
  v64 = v38 & 1 & v42;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REMIND_ME_DATE_DESCRIPTION", 0x1AuLL, v42 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v29, v30, v42 & 1);
  sub_100015CC0();
  sub_10025D410(v37);
  v57 = v31;
  v58 = v32;
  v59 = v33;
  v60 = v38 & 1 & v42;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v41(v49, v38, v42, v39);
  (v45)(v51, v42, v42, v43);
  v46 = sub_10025C9B0(&qword_1006D8740, &unk_100501CB0);
  v47 = sub_100341F40();
  sub_1004389E4(v50);
  sub_1003BD8F8(v52);
  v55 = IntentParameter<>.init(title:description:kind:requestValueDialog:inputConnectionBehavior:)();

  v74 = v55;
  sub_1002FE5E4(v53);
  return v56;
}

uint64_t sub_100446308(uint64_t a1, uint64_t a2)
{

  IntentParameter.wrappedValue.getter();

  return v3;
}

uint64_t sub_100446374(uint64_t a1, uint64_t a2, uint64_t a3)
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_1004463F8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  IntentParameter.wrappedValue.getter();
}

uint64_t sub_10044645C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v8[0] = a2;
  v8[1] = a3;
  v11 = a4;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v9 = (*(*(sub_10025C9B0(&qword_1006D8740, &unk_100501CB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = v8 - v9;
  v16 = __chkstk_darwin(v12);
  v13 = v5;
  v14 = v6;
  v15 = a4;

  sub_1002F29E4(v12, v10);
  IntentParameter.wrappedValue.setter();

  return sub_1002A70C0(v12);
}

uint64_t sub_100446554@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Mark one or more email messages to be reminded about";
  v1 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REMIND_ME_DESCRIPTION", 0x15uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 52;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_100446894@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Mark one or more email messages to be reminded about";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Set Read Later", 0xEuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 52;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100446A78@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_10025C9B0(&qword_1006DC5C0, &qword_10050BD28);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v27 = &v8 - v8;
  v20 = sub_10025C9B0(&qword_1006DC5C8, &qword_10050BD30);
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v9 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v22 = &v8 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v9);
  v17 = &v8 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v10);
  v21 = &v8 - v11;
  v26 = sub_10033F294();
  v25 = &unk_1006608D0;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remind me to read ", 0x12uLL, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DC5D8, &qword_10050BD60);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" on ", 4uLL, v23 & 1);
  v14 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  v15 = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DC5E0, &qword_10050BD90);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v23 & 1);
  v16 = v6._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);

  (*(v18 + 16))(v17, v21, v20);
  (*(v18 + 32))(v22, v17, v20);
  (*(v18 + 8))(v21, v20);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v23 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100446E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[52] = a4;
  v4[51] = a3;
  v4[50] = a2;
  v4[49] = a1;
  v4[44] = v4;
  v4[22] = 0;
  v4[23] = 0;
  v4[24] = 0;
  v4[45] = 0;
  v4[46] = 0;
  v4[38] = 0;
  v4[39] = 0;
  v4[40] = 0;
  v4[41] = 0;
  type metadata accessor for LocalizedStringResource.BundleDescription();
  v4[53] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[54] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[55] = swift_task_alloc();
  v5 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v4[56] = v5;
  v4[57] = *(v5 - 8);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v4[61] = swift_task_alloc();
  v6 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v4[62] = v6;
  v4[63] = *(v6 - 8);
  v4[64] = swift_task_alloc();
  v7 = type metadata accessor for Date.FormatStyle.DateStyle();
  v4[65] = v7;
  v4[66] = *(v7 - 8);
  v4[67] = swift_task_alloc();
  v8 = type metadata accessor for IntentDialog();
  v4[68] = v8;
  v4[69] = *(v8 - 8);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Component();
  v4[72] = v9;
  v4[73] = *(v9 - 8);
  v4[74] = swift_task_alloc();
  v10 = type metadata accessor for Calendar();
  v4[75] = v10;
  v4[76] = *(v10 - 8);
  v4[77] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D8740, &unk_100501CB0);
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v4[81] = v11;
  v4[82] = *(v11 - 8);
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[22] = a2;
  v4[23] = a3;
  v4[24] = a4;
  type metadata accessor for MainActor();
  v4[86] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[87] = v17;
  v4[88] = v12;

  return _swift_task_switch(sub_1004473CC, v17);
}

uint64_t sub_1004473CC()
{
  v1 = v0[52];
  v2 = v0[51];
  v3 = v0[50];
  v0[44] = v0;
  v12 = sub_1003D6B10(v3, v2, v1);
  sub_10035277C();
  v7 = v11[52];
  v6 = v11[51];
  v8 = v11[50];
  _objc_release(v12);
  v11[25] = v8;
  v11[26] = v6;
  v11[27] = v7;
  v10 = sub_100446308(v8, v6);
  v11[89] = v10;
  v9 = sub_1003D6B10(v8, v6, v7);
  v11[90] = v9;
  v4 = swift_task_alloc();
  v11[91] = v4;
  v11[92] = sub_100449878();
  *v4 = v11[44];
  v4[1] = sub_100447708;

  return sub_10045F520(v10, v9);
}

uint64_t sub_100447708(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[44] = *v2;
  v7[93] = a1;
  v7[94] = v1;

  if (v1)
  {
    v3 = *(v6 + 680);
    v4 = sub_100449688;
  }

  else
  {

    v3 = *(v6 + 680);
    v4 = sub_1004478AC;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1004478AC()
{
  v1 = v0[94];
  v117 = v0[93];
  v2 = v0[52];
  v3 = v0[51];
  v4 = v0[50];
  v0[44] = v0;
  v0[45] = v117;
  v118 = sub_1003D6B10(v4, v3, v2);
  sub_100352C0C(v117);
  v0[95] = v1;
  if (v1)
  {
    _objc_release(v118);

    v16 = *(*(v116 + 352) + 8);

    return v16();
  }

  else
  {
    v107 = *(v116 + 744);
    v114 = *(v116 + 648);
    v113 = *(v116 + 640);
    v109 = *(v116 + 416);
    v108 = *(v116 + 408);
    v110 = *(v116 + 400);
    v112 = *(v116 + 656);
    _objc_release(v118);
    sub_1002C058C();

    v104 = sub_1003D6B10(v110, v108, v109);
    v105 = sub_100353058();
    _objc_release(v104);
    *(v116 + 224) = v110;
    *(v116 + 232) = v108;
    *(v116 + 240) = v109;
    v106 = sub_10028E57C();
    *(v116 + 248) = v110;
    *(v116 + 256) = v108;
    *(v116 + 264) = v109;
    v5 = sub_10028E5B4();
    v111 = sub_10027D364(v107, v105, v106, v5);
    *(v116 + 768) = v111;
    *(v116 + 368) = v111;
    sub_1004463F8(v110, v108, v109);
    v115 = *(v112 + 48);
    if (v115(v113, 1, v114) == 1)
    {
      v96 = *(v116 + 672);
      v103 = *(v116 + 648);
      v102 = *(v116 + 632);
      v100 = *(v116 + 616);
      v101 = *(v116 + 600);
      v97 = *(v116 + 592);
      v98 = *(v116 + 576);
      v95 = *(v116 + 656);
      v99 = *(v116 + 608);
      v94 = *(v116 + 584);
      static Calendar.current.getter();
      (*(v94 + 104))(v97, enum case for Calendar.Component.hour(_:), v98);
      static Date.now.getter();
      variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v95 + 8))(v96, v103);
      (*(v94 + 8))(v97, v98);
      (*(v99 + 8))(v100, v101);
      if (v115(v102, 1, v103) == 1)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v92 = *(v116 + 648);
      v93 = *(v116 + 640);
      (*(*(v116 + 656) + 32))(*(v116 + 680), *(v116 + 632));
      if (v115(v93, 1, v92) != 1)
      {
        sub_1002A70C0(*(v116 + 640));
      }
    }

    else
    {
      (*(*(v116 + 656) + 32))(*(v116 + 680), *(v116 + 640), *(v116 + 648));
    }

    v85 = *(v116 + 680);
    v91 = *(v116 + 648);
    v90 = *(v116 + 624);
    v89 = *(v116 + 416);
    v88 = *(v116 + 408);
    v87 = *(v116 + 400);
    v86 = [v111 state];
    sub_1003CE220(v85);
    _objc_release(v86);
    sub_1004463F8(v87, v88, v89);
    if (v115(v90, 1, v91) == 1)
    {
      v26 = *(v116 + 568);
      v27 = *(v116 + 560);
      v28 = *(v116 + 544);
      v24 = *(v116 + 424);
      v25 = *(v116 + 552);
      sub_1002A70C0(*(v116 + 624));
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, Iʼll remind you.", 0x15uLL, 0);
      String.LocalizationValue.init(stringLiteral:)();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
      sub_100015CC0();
      sub_10025D410(v24);
      v17 = "Dialog to show and say when we are reminding the user about their message.";
      v18 = 74;
      LOWORD(v19) = 2;
      LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      (*(v25 + 32))(v26, v27, v28);
    }

    else
    {
      v82 = *(v116 + 616);
      v81 = *(v116 + 600);
      v76 = *(v116 + 536);
      v77 = *(v116 + 520);
      v72 = *(v116 + 512);
      v73 = *(v116 + 496);
      v80 = *(v116 + 608);
      v75 = *(v116 + 528);
      v71 = *(v116 + 504);
      (*(*(v116 + 656) + 32))(*(v116 + 664), *(v116 + 624), *(v116 + 648));
      static Date.FormatStyle.DateStyle.omitted.getter();
      static Date.FormatStyle.TimeStyle.shortened.getter();
      v79._countAndFlagsBits = Date.formatted(date:time:)();
      v79._object = v7;
      v74 = *(v71 + 8);
      v74(v72, v73);
      v78 = *(v75 + 8);
      v78(v76, v77);
      *(v116 + 304) = v79;
      static Calendar.current.getter();
      v84 = Calendar.isDateInToday(_:)();
      v83 = *(v80 + 8);
      v83(v82, v81);
      if (v84)
      {
        v68 = *(v116 + 568);
        v69 = *(v116 + 560);
        v70 = *(v116 + 544);
        v64 = *(v116 + 480);
        v62 = *(v116 + 472);
        v65 = *(v116 + 464);
        v63 = *(v116 + 448);
        v66 = *(v116 + 424);
        v67 = *(v116 + 552);
        v61 = *(v116 + 456);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, Iʼll remind you today at ", 0x1EuLL, 0);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);

        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v79);
        v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);

        (*(v61 + 16))(v62, v64, v63);
        (*(v61 + 32))(v65, v62, v63);
        (*(v61 + 8))(v64, v63);
        String.LocalizationValue.init(stringInterpolation:)();
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
        sub_100015CC0();
        sub_10025D410(v66);
        v17 = "Dialog to show and say when we are reminding the user about their message at a later time today.";
        v18 = 96;
        LOWORD(v19) = 2;
        LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
        IntentDialog.init(_:)();
        (*(v67 + 32))(v68, v69, v70);
      }

      else
      {
        v59 = *(v116 + 616);
        v58 = *(v116 + 600);
        static Calendar.current.getter();
        v60 = Calendar.isDateInTomorrow(_:)();
        v83(v59, v58);
        if (v60)
        {
          v55 = *(v116 + 568);
          v56 = *(v116 + 560);
          v57 = *(v116 + 544);
          v51 = *(v116 + 480);
          v49 = *(v116 + 472);
          v52 = *(v116 + 464);
          v50 = *(v116 + 448);
          v53 = *(v116 + 424);
          v54 = *(v116 + 552);
          v48 = *(v116 + 456);
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, Iʼll remind you tomorrow at ", 0x21uLL, 0);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);

          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v79);
          v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);

          (*(v48 + 16))(v49, v51, v50);
          (*(v48 + 32))(v52, v49, v50);
          (*(v48 + 8))(v51, v50);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
          sub_100015CC0();
          sub_10025D410(v53);
          v17 = "Dialog to show and say when we are reminding the user about their message some time tomorrow.";
          v18 = 93;
          LOWORD(v19) = 2;
          LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
          IntentDialog.init(_:)();
          (*(v54 + 32))(v55, v56, v57);
        }

        else
        {
          v44 = *(v116 + 568);
          v45 = *(v116 + 560);
          v46 = *(v116 + 544);
          v34 = *(v116 + 536);
          v35 = *(v116 + 520);
          v32 = *(v116 + 512);
          v33 = *(v116 + 496);
          v40 = *(v116 + 480);
          v38 = *(v116 + 472);
          v41 = *(v116 + 464);
          v39 = *(v116 + 448);
          v42 = *(v116 + 424);
          v43 = *(v116 + 552);
          v37 = *(v116 + 456);
          static Date.FormatStyle.DateStyle.abbreviated.getter();
          static Date.FormatStyle.TimeStyle.shortened.getter();
          v36 = Date.formatted(date:time:)();
          v47 = v12;
          v74(v32, v33);
          v78(v34, v35);
          *(v116 + 320) = v36;
          *(v116 + 328) = v47;
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, Iʼll remind you on ", 0x18uLL, 0);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);

          v14._countAndFlagsBits = v36;
          v14._object = v47;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);
          v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);

          (*(v37 + 16))(v38, v40, v39);
          (*(v37 + 32))(v41, v38, v39);
          (*(v37 + 8))(v40, v39);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
          sub_100015CC0();
          sub_10025D410(v42);
          v17 = "Dialog to show and say when we are reminding the user about their message on a later date.";
          v18 = 90;
          LOWORD(v19) = 2;
          LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
          IntentDialog.init(_:)();
          (*(v43 + 32))(v44, v45, v46);
        }
      }

      v30 = *(v116 + 664);
      v31 = *(v116 + 648);
      v29 = *(v116 + 656);

      (*(v29 + 8))(v30, v31);
    }

    v21 = *(v116 + 416);
    v20 = *(v116 + 408);
    v22 = *(v116 + 400);
    _objc_retain(v111);
    sub_1003D6B10(v22, v20, v21);
    [v111 setDelegate:{v17, v18, v19}];
    swift_unknownObjectRelease();
    _objc_release(v111);
    *(v116 + 16) = *(v116 + 352);
    *(v116 + 56) = v116 + 336;
    *(v116 + 24) = sub_100448DE4;
    v23 = swift_continuation_init();
    *(v116 + 136) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
    *(v116 + 112) = v23;
    *(v116 + 80) = _NSConcreteStackBlock;
    *(v116 + 88) = 1107296256;
    *(v116 + 92) = 0;
    *(v116 + 96) = sub_10027D41C;
    *(v116 + 104) = &unk_100660840;
    [v111 performInteractionWithCompletion:?];

    return _swift_continuation_await(v116 + 16);
  }
}

uint64_t sub_100448DE4()
{
  v3 = *v0;
  *(*v0 + 352) = *v0;
  v1 = *(v3 + 696);

  return _swift_task_switch(sub_100448EFC, v1);
}

uint64_t sub_100448EFC()
{
  *(v0 + 352) = v0;
  _objc_release(*(v0 + 336));
  v29 = [objc_opt_self() defaultCenter];
  _objc_retain(@"AppIntentDidSetReminder");
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  if (*(v0 + 168))
  {
    object = v28[10]._object;
    v22 = sub_10027EC3C(&v28[9]._countAndFlagsBits, object);
    v23 = *(object - 8);
    v25 = swift_task_alloc();
    (*(v23 + 16))(v25, v22, object);
    v26 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v23 + 8))(v25, object);

    sub_1000160F4(&v28[9]._countAndFlagsBits);
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v1 = v28[47]._object;
  v20 = v28[25]._object;
  countAndFlagsBits = v28[25]._countAndFlagsBits;
  sub_10025C9B0(&unk_1006DB9F0, &qword_1005001E8);
  _allocateUninitializedArray<A>(_:)();
  v18 = v2;
  v28[17] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailMessageIDs", 0xEuLL, 1);
  _convertToAnyHashable<A>(_:)();
  v28[23]._object = sub_100446308(countAndFlagsBits, v20);
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D6A0();
  result = Sequence.compactMap<A>(_:)();
  v21 = result;
  if (!v1)
  {
    v14 = v28[48]._countAndFlagsBits;
    v15 = v28[42]._object;
    v13 = v28[40]._object;
    v16 = v28[35]._object;
    v17 = v28[35]._countAndFlagsBits;
    v11 = v28[34]._countAndFlagsBits;
    v9 = v28[25]._object;
    v8 = v28[25]._countAndFlagsBits;
    v6 = v28[41]._countAndFlagsBits;
    v10 = v28[34]._object;
    sub_100264880(&v28[23]._object);
    v18[8] = sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
    v18[5] = v21;
    v28[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("date", 4uLL, 1);
    _convertToAnyHashable<A>(_:)();
    v18[17] = v13;
    v4 = sub_10026AC9C(v18 + 14);
    (*(v6 + 16))(v4, v15, v13);
    sub_1002612B0();
    sub_100268744(&v28[18]);
    sub_100268744(&v28[17]);
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v29 postNotificationName:@"AppIntentDidSetReminder" object:v27 userInfo:isa];
    _objc_release(isa);
    swift_unknownObjectRelease();
    _objc_release(@"AppIntentDidSetReminder");
    _objc_release(v29);
    v28[24]._countAndFlagsBits = sub_100446308(v8, v9);
    v10[2](v17, v16, v11);
    sub_10027D124();
    static IntentResult.result<A>(value:dialog:)();
    v12 = v10[1];
    (v12)(v17, v11);
    sub_100264880(&v28[24]._countAndFlagsBits);
    (v12)(v16, v11);
    (*(v6 + 8))(v15, v13);
    _objc_release(v14);

    v5 = *(v28[22]._countAndFlagsBits + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100449688()
{
  v1 = *(v0 + 720);
  *(v0 + 352) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 352) + 8);

  return v2();
}

unint64_t sub_100449878()
{
  v2 = qword_1006DC5E8;
  if (!qword_1006DC5E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC5E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100449934@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v13 = a1;
  v21 = 0;
  v2 = sub_10025C9B0(&qword_1006D7DF0, &qword_100500800);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v17 = &v9 - v14;
  v15 = *v3;
  v16 = v3[1];
  v21 = v3;

  MailMessageEntityID.init(with:)();
  v18 = type metadata accessor for MailMessageEntityID();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    result = sub_1002C1698(v17);
    v5 = v12;
    *v12 = 0;
    v5[1] = 0;
  }

  else
  {
    v10 = MailMessageEntityID.mailMessageID.getter();
    v11 = v6;
    (*(v19 + 8))(v17, v18);
    result = v10;
    v7 = v12;
    v8 = v11;
    *v12 = v10;
    v7[1] = v8;
  }

  return result;
}

uint64_t sub_100449AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v5 = [objc_opt_self() sharedApplication];
  v4 = [v5 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v5);
  v7[0] = v6;
  sub_10025C9B0(&unk_1006D72F0, &unk_1005001F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880(v7);
  _objc_release(v4);
  return v7[1];
}

uint64_t sub_100449C98(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_100446E20(a1, v6, v7, v8);
}

uint64_t sub_100449D70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100445818();
  *a1 = result;
  a1[1] = v2;
  a1[2] = v3;
  return result;
}

unint64_t sub_100449E4C()
{
  v2 = qword_1006DC600;
  if (!qword_1006DC600)
  {
    sub_10025CAA4(&qword_1006DC608, qword_10050BE40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC600);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100449ED4(uint64_t a1)
{
  result = sub_10033F294();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100449F18()
{
  v2 = qword_1006DC618;
  if (!qword_1006DC618)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC618);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100449FAC()
{
  v2 = qword_1006DC620;
  if (!qword_1006DC620)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC620);
    return WitnessTable;
  }

  return v2;
}

double sub_10044A094@<D0>(char *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_parent);
  swift_beginAccess();
  sub_10044A0F8(v3, a1);
  swift_endAccess();
  return result;
}

char *sub_10044A0F8(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v6 = *(sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0) + 32);
  v2 = type metadata accessor for _SiriMailMessage();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  return a2;
}

char *sub_10044A1C4(char *a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(type metadata accessor for SiriMailComposeViewRepresentable(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_10044A0F8(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_parent);
  v6 = &v8;
  swift_beginAccess();
  sub_10044A29C(v4, v5);
  swift_endAccess();
  return sub_10044A360(v7);
}

char *sub_10044A29C(char *a1, char *a2)
{
  *a2 = *a1;

  *(a2 + 1) = *(a1 + 1);

  v4 = *(sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0) + 32);
  v2 = type metadata accessor for _SiriMailMessage();
  (*(*(v2 - 8) + 40))(&a2[v4], &a1[v4]);
  return a2;
}

char *sub_10044A360(char *a1)
{

  v3 = *(sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0) + 32);
  v1 = type metadata accessor for _SiriMailMessage();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

uint64_t sub_10044A528()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_bodyWithoutSignature);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_10044A670(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_bodyWithoutSignature);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_10044A778()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_signature);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_10044A7EC(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_signature);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

char *sub_10044A8F4@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v7 = 0;
  v2 = type metadata accessor for SiriMailComposeViewRepresentable(0);
  v4 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v6 = &v4 - v4;
  v7 = v1;
  sub_10044A094(&v4 - v4);
  sub_100452254(v5);
  return sub_10044A360(v6);
}

uint64_t sub_10044A994()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

void sub_10044A9FC(void *a1)
{
  _objc_retain(a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  _objc_release(a1);
  swift_endAccess();
  _objc_release(a1);
}

void (*sub_10044AA94(void *a1))(id **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 16914);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_controller;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10044AB40;
}

void sub_10044AB40(id **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[3];
    _objc_retain(v2);
    swift_unknownObjectWeakAssign();
    _objc_release(v2);
    sub_10026A58C(v4 + 3);
  }

  else
  {
    v3 = v4[3];
    swift_unknownObjectWeakAssign();
    _objc_release(v3);
  }

  swift_endAccess();
  free(v4);
}

char *sub_10044AC48(char *a1)
{
  v21 = a1;
  v29 = 0;
  type metadata accessor for SiriMailComposeViewRepresentable(0);
  v2 = __chkstk_darwin(v21);
  v23 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  v35 = v1;
  v4 = &v1[OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_bodyWithoutSignature];
  *v4 = v5;
  *(v4 + 1) = v5;
  v6 = &v35[OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_signature];
  *v6 = v5;
  *(v6 + 1) = v5;
  swift_unknownObjectWeakInit();
  v22 = v35;
  sub_10044A0F8(v21, v23);
  sub_10044AF44(v23, &v22[OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_parent]);
  v24 = v35;
  v7 = type metadata accessor for SiriMailComposeCoordinator(v29);
  v33.receiver = v24;
  v33.super_class = v7;
  v26 = objc_msgSendSuper2(&v33, "init");
  v25 = v26;
  v8 = v26;
  v35 = v26;
  v27 = [objc_opt_self() defaultCenter];
  v9 = v26;
  v28 = "onHostAction:";
  v30 = static NSNotificationName.onReceiveActionFromHost.getter();
  v31[0] = v29;
  v31[1] = v29;
  v31[2] = v29;
  v32 = v29;
  if (v29)
  {
    v15 = v32;
    v18 = v31;
    sub_10027EC3C(v31, v32);
    v13 = *(v15 - 8);
    v14 = v13;
    v17 = v12;
    __chkstk_darwin(v12);
    v16 = v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))();
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v14 + 8))(v16, v15);
    sub_1000160F4(v18);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v12[1] = v20;
  [v27 addObserver:v25 selector:v28 name:v30 object:?];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10044A360(v21);

  return v25;
}

char *sub_10044AF44(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v4 = *(sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0) + 32);
  v2 = type metadata accessor for _SiriMailMessage();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t type metadata accessor for SiriMailComposeCoordinator(uint64_t a1)
{
  v2 = qword_1006DC6F8;
  if (!qword_1006DC6F8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_10044B060(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v56 = sub_10044B7E8;
  v60 = sub_10026EE84;
  v62 = sub_10026434C;
  v64 = sub_10026434C;
  v67 = sub_10026EF2C;
  v42 = &protocol witness table for MainActor;
  v43 = &unk_10050C000;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v44 = 0;
  v2 = sub_10025C9B0(&qword_1006D7ED8, &qword_1005093B0);
  v45 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v46 = &v30 - v45;
  v48 = type metadata accessor for Logger();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v53);
  v52 = &v30 - v51;
  v79 = v3;
  v80 = v4;
  v78 = v5;
  static Logger.siriMail.getter();

  v57 = 32;
  v58 = 7;
  v6 = swift_allocObject();
  v7 = v54;
  v59 = v6;
  *(v6 + 16) = v53;
  *(v6 + 24) = v7;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v55 = 17;
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v8 = swift_allocObject();
  v9 = v59;
  v61 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v61;
  v68 = v10;
  *(v10 + 16) = v60;
  *(v10 + 24) = v11;
  v70 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v66 = _allocateUninitializedArray<A>(_:)();
  v69 = v12;

  v13 = v63;
  v14 = v69;
  *v69 = v62;
  v14[1] = v13;

  v15 = v65;
  v16 = v69;
  v69[2] = v64;
  v16[3] = v15;

  v17 = v68;
  v18 = v69;
  v69[4] = v67;
  v18[5] = v17;
  sub_1002612B0();

  if (os_log_type_enabled(v71, v72))
  {
    v19 = v44;
    v35 = static UnsafeMutablePointer.allocate(capacity:)();
    v34 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v36 = sub_1002641E8(0, v34, v34);
    v37 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v38 = &v77;
    v77 = v35;
    v39 = &v76;
    v76 = v36;
    v40 = &v75;
    v75 = v37;
    sub_10026423C(2, &v77);
    sub_10026423C(1, v38);
    v73 = v62;
    v74 = v63;
    sub_100264250(&v73, v38, v39, v40);
    v41 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v73 = v64;
      v74 = v65;
      sub_100264250(&v73, &v77, &v76, &v75);
      v33 = 0;
      v73 = v67;
      v74 = v68;
      sub_100264250(&v73, &v77, &v76, &v75);
      _os_log_impl(&_mh_execute_header, v71, v72, "#SiriMailComposeCoordinator setSubject %s", v35, 0xCu);
      sub_10026429C(v36, 0);
      sub_10026429C(v37, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v71);
  (*(v49 + 8))(v52, v48);
  v31 = 0;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v46, 1);
  _objc_retain(v47);

  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v22 = v42;
  v23 = v47;
  v24 = v53;
  v25 = v54;
  v26 = v31;
  v27 = v46;
  v28 = v43;
  v21[2] = v32;
  v21[3] = v22;
  v21[4] = v23;
  v21[5] = v24;
  v21[6] = v25;
  sub_1002C7DB4(v26, v26, v27, v28, v21, &type metadata for () + 8);
}

uint64_t sub_10044B7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a6;
  v6[7] = a5;
  v6[6] = a4;
  v6[4] = v6;
  v6[5] = 0;
  v6[2] = 0;
  v6[3] = 0;
  type metadata accessor for _SiriMailMessage();
  v6[9] = swift_task_alloc();
  v6[10] = sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0);
  v6[11] = swift_task_alloc();
  v6[5] = a4;
  v6[2] = a5;
  v6[3] = a6;
  type metadata accessor for MainActor();
  v6[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044B964, v7);
}

uint64_t sub_10044B964()
{
  v1 = *(v0 + 88);
  v4 = v1;
  *(v0 + 32) = v0;
  sub_10044A8F4(v1);

  Binding.wrappedValue.getter();
  _SiriMailMessage.subject.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v4);

  v2 = *(*(v0 + 32) + 8);

  return v2();
}

uint64_t sub_10044BB04(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v56 = sub_10044B7E8;
  v60 = sub_10026EE84;
  v62 = sub_10026434C;
  v64 = sub_10026434C;
  v67 = sub_10026EF2C;
  v42 = &protocol witness table for MainActor;
  v43 = &unk_10050C018;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v44 = 0;
  v2 = sub_10025C9B0(&qword_1006D7ED8, &qword_1005093B0);
  v45 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v46 = &v30 - v45;
  v48 = type metadata accessor for Logger();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v53);
  v52 = &v30 - v51;
  v79 = v3;
  v80 = v4;
  v78 = v5;
  static Logger.siriMail.getter();

  v57 = 32;
  v58 = 7;
  v6 = swift_allocObject();
  v7 = v54;
  v59 = v6;
  *(v6 + 16) = v53;
  *(v6 + 24) = v7;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v55 = 17;
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v8 = swift_allocObject();
  v9 = v59;
  v61 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v61;
  v68 = v10;
  *(v10 + 16) = v60;
  *(v10 + 24) = v11;
  v70 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v66 = _allocateUninitializedArray<A>(_:)();
  v69 = v12;

  v13 = v63;
  v14 = v69;
  *v69 = v62;
  v14[1] = v13;

  v15 = v65;
  v16 = v69;
  v69[2] = v64;
  v16[3] = v15;

  v17 = v68;
  v18 = v69;
  v69[4] = v67;
  v18[5] = v17;
  sub_1002612B0();

  if (os_log_type_enabled(v71, v72))
  {
    v19 = v44;
    v35 = static UnsafeMutablePointer.allocate(capacity:)();
    v34 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v36 = sub_1002641E8(0, v34, v34);
    v37 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v38 = &v77;
    v77 = v35;
    v39 = &v76;
    v76 = v36;
    v40 = &v75;
    v75 = v37;
    sub_10026423C(2, &v77);
    sub_10026423C(1, v38);
    v73 = v62;
    v74 = v63;
    sub_100264250(&v73, v38, v39, v40);
    v41 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v73 = v64;
      v74 = v65;
      sub_100264250(&v73, &v77, &v76, &v75);
      v33 = 0;
      v73 = v67;
      v74 = v68;
      sub_100264250(&v73, &v77, &v76, &v75);
      _os_log_impl(&_mh_execute_header, v71, v72, "#SiriMailComposeCoordinator setBody %s", v35, 0xCu);
      sub_10026429C(v36, 0);
      sub_10026429C(v37, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v71);
  (*(v49 + 8))(v52, v48);
  v31 = 0;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v46, 1);
  _objc_retain(v47);

  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v22 = v42;
  v23 = v47;
  v24 = v53;
  v25 = v54;
  v26 = v31;
  v27 = v46;
  v28 = v43;
  v21[2] = v32;
  v21[3] = v22;
  v21[4] = v23;
  v21[5] = v24;
  v21[6] = v25;
  sub_1002C7DB4(v26, v26, v27, v28, v21, &type metadata for () + 8);
}

uint64_t sub_10044C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[11] = a5;
  v6[10] = a4;
  v6[8] = v6;
  v6[9] = 0;
  v6[2] = 0;
  v6[3] = 0;
  type metadata accessor for _SiriMailMessage();
  v6[13] = swift_task_alloc();
  v6[14] = sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0);
  v6[15] = swift_task_alloc();
  v7 = type metadata accessor for CharacterSet();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v6[9] = a4;
  v6[2] = a5;
  v6[3] = a6;
  type metadata accessor for MainActor();
  v6[19] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044C450, v8);
}

uint64_t sub_10044C450()
{
  v11 = v0[18];
  v4 = v0[17];
  v10 = v0[16];
  v12 = v0[15];
  v8 = v0[12];
  v7 = v0[11];
  v0[8] = v0;
  v0[4] = v7;
  v0[5] = v8;
  static CharacterSet.whitespaces.getter();
  sub_1002686CC();
  v5 = StringProtocol.trimmingCharacters(in:)();
  v6 = v1;
  v9 = *(v4 + 8);
  v9(v11, v10);
  sub_10044A670(v5, v6);
  sub_10044A8F4(v12);
  v0[6] = v7;
  v0[7] = v8;
  static CharacterSet.whitespaces.getter();
  StringProtocol.trimmingCharacters(in:)();
  v9(v11, v10);
  Binding.wrappedValue.getter();
  _SiriMailMessage.body.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v12);

  v2 = *(v0[8] + 8);

  return v2();
}

uint64_t sub_10044C6E4(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v56 = sub_10044B7E8;
  v60 = sub_10026EE84;
  v62 = sub_10026434C;
  v64 = sub_10026434C;
  v67 = sub_10026EF2C;
  v42 = &protocol witness table for MainActor;
  v43 = &unk_10050C028;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v44 = 0;
  v2 = sub_10025C9B0(&qword_1006D7ED8, &qword_1005093B0);
  v45 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v46 = &v30 - v45;
  v48 = type metadata accessor for Logger();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v53);
  v52 = &v30 - v51;
  v79 = v3;
  v80 = v4;
  v78 = v5;
  static Logger.siriMail.getter();

  v57 = 32;
  v58 = 7;
  v6 = swift_allocObject();
  v7 = v54;
  v59 = v6;
  *(v6 + 16) = v53;
  *(v6 + 24) = v7;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v55 = 17;
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v8 = swift_allocObject();
  v9 = v59;
  v61 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v61;
  v68 = v10;
  *(v10 + 16) = v60;
  *(v10 + 24) = v11;
  v70 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v66 = _allocateUninitializedArray<A>(_:)();
  v69 = v12;

  v13 = v63;
  v14 = v69;
  *v69 = v62;
  v14[1] = v13;

  v15 = v65;
  v16 = v69;
  v69[2] = v64;
  v16[3] = v15;

  v17 = v68;
  v18 = v69;
  v69[4] = v67;
  v18[5] = v17;
  sub_1002612B0();

  if (os_log_type_enabled(v71, v72))
  {
    v19 = v44;
    v35 = static UnsafeMutablePointer.allocate(capacity:)();
    v34 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v36 = sub_1002641E8(0, v34, v34);
    v37 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v38 = &v77;
    v77 = v35;
    v39 = &v76;
    v76 = v36;
    v40 = &v75;
    v75 = v37;
    sub_10026423C(2, &v77);
    sub_10026423C(1, v38);
    v73 = v62;
    v74 = v63;
    sub_100264250(&v73, v38, v39, v40);
    v41 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v73 = v64;
      v74 = v65;
      sub_100264250(&v73, &v77, &v76, &v75);
      v33 = 0;
      v73 = v67;
      v74 = v68;
      sub_100264250(&v73, &v77, &v76, &v75);
      _os_log_impl(&_mh_execute_header, v71, v72, "#SiriMailComposeCoordinator setSignature %s", v35, 0xCu);
      sub_10026429C(v36, 0);
      sub_10026429C(v37, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v71);
  (*(v49 + 8))(v52, v48);
  v31 = 0;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v46, 1);
  _objc_retain(v47);

  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v22 = v42;
  v23 = v47;
  v24 = v53;
  v25 = v54;
  v26 = v31;
  v27 = v46;
  v28 = v43;
  v21[2] = v32;
  v21[3] = v22;
  v21[4] = v23;
  v21[5] = v24;
  v21[6] = v25;
  sub_1002C7DB4(v26, v26, v27, v28, v21, &type metadata for () + 8);
}

uint64_t sub_10044CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a6;
  v6[7] = a5;
  v6[6] = a4;
  v6[4] = v6;
  v6[5] = 0;
  v6[2] = 0;
  v6[3] = 0;
  v6[5] = a4;
  v6[2] = a5;
  v6[3] = a6;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044CF28, v7);
}

uint64_t sub_10044CF28()
{
  v4 = v0[8];
  v3 = v0[7];
  v0[4] = v0;

  sub_10044A7EC(v3, v4);

  v1 = *(v0[4] + 8);

  return v1();
}

uint64_t sub_10044D06C(uint64_t a1)
{
  v48 = a1;
  v50 = sub_10045192C;
  v54 = sub_10026EE84;
  v56 = sub_10026434C;
  v58 = sub_10026434C;
  v61 = sub_10026EF2C;
  v37 = &protocol witness table for MainActor;
  v38 = &unk_10050C038;
  v73 = 0;
  v72 = 0;
  v39 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8, &qword_1005093B0);
  v40 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v41 = &v25 - v40;
  v43 = type metadata accessor for Logger();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v48);
  v47 = &v25 - v46;
  v73 = v2;
  v72 = v3;
  static Logger.siriMail.getter();

  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v50;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v62 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v64 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v60 = _allocateUninitializedArray<A>(_:)();
  v63 = v8;

  v9 = v57;
  v10 = v63;
  *v63 = v56;
  v10[1] = v9;

  v11 = v59;
  v12 = v63;
  v63[2] = v58;
  v12[3] = v11;

  v13 = v62;
  v14 = v63;
  v63[4] = v61;
  v14[5] = v13;
  sub_1002612B0();

  if (os_log_type_enabled(v65, v66))
  {
    v15 = v39;
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v31 = sub_1002641E8(0, v29, v29);
    v32 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v33 = &v71;
    v71 = v30;
    v34 = &v70;
    v70 = v31;
    v35 = &v69;
    v69 = v32;
    sub_10026423C(2, &v71);
    sub_10026423C(1, v33);
    v67 = v56;
    v68 = v57;
    sub_100264250(&v67, v33, v34, v35);
    v36 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_100264250(&v67, &v71, &v70, &v69);
      v28 = 0;
      v67 = v61;
      v68 = v62;
      sub_100264250(&v67, &v71, &v70, &v69);
      _os_log_impl(&_mh_execute_header, v65, v66, "#SiriMailComposeCoordinator setToRecipients %s", v30, 0xCu);
      sub_10026429C(v31, 0);
      sub_10026429C(v32, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v65);
  (*(v44 + 8))(v47, v43);
  v26 = 0;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v41, 1);
  _objc_retain(v42);

  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = v37;
  v19 = v42;
  v20 = v48;
  v21 = v26;
  v22 = v41;
  v23 = v38;
  v17[2] = v27;
  v17[3] = v18;
  v17[4] = v19;
  v17[5] = v20;
  sub_1002C7DB4(v21, v21, v22, v23, v17, &type metadata for () + 8);
}

uint64_t sub_10044D7B4(uint64_t a1)
{
  sub_100451AA0();
  Array.debugDescription.getter();
  v2 = String.partiallyRedactedString.getter();

  return v2;
}

uint64_t sub_10044D80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  type metadata accessor for _SiriMailMessage();
  v5[7] = swift_task_alloc();
  v5[8] = sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0);
  v5[9] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044D968, v6);
}

uint64_t sub_10044D968()
{
  v1 = *(v0 + 72);
  v4 = v1;
  *(v0 + 16) = v0;
  sub_10044A8F4(v1);
  sub_10044DA7C();
  Binding.wrappedValue.getter();
  _SiriMailMessage.to.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v4);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_10044DA7C()
{
  sub_10025C9B0(&qword_1006DC640, &qword_10050C040);
  type metadata accessor for _SiriMailMessage.Account();
  sub_100451A18();
  return Sequence.compactMap<A>(_:)();
}

uint64_t sub_10044DBC0(uint64_t a1)
{
  v48 = a1;
  v50 = sub_10045192C;
  v54 = sub_10026EE84;
  v56 = sub_10026434C;
  v58 = sub_10026434C;
  v61 = sub_10026EF2C;
  v37 = &protocol witness table for MainActor;
  v38 = &unk_10050C050;
  v73 = 0;
  v72 = 0;
  v39 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8, &qword_1005093B0);
  v40 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v41 = &v25 - v40;
  v43 = type metadata accessor for Logger();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v48);
  v47 = &v25 - v46;
  v73 = v2;
  v72 = v3;
  static Logger.siriMail.getter();

  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v50;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v62 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v64 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v60 = _allocateUninitializedArray<A>(_:)();
  v63 = v8;

  v9 = v57;
  v10 = v63;
  *v63 = v56;
  v10[1] = v9;

  v11 = v59;
  v12 = v63;
  v63[2] = v58;
  v12[3] = v11;

  v13 = v62;
  v14 = v63;
  v63[4] = v61;
  v14[5] = v13;
  sub_1002612B0();

  if (os_log_type_enabled(v65, v66))
  {
    v15 = v39;
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v31 = sub_1002641E8(0, v29, v29);
    v32 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v33 = &v71;
    v71 = v30;
    v34 = &v70;
    v70 = v31;
    v35 = &v69;
    v69 = v32;
    sub_10026423C(2, &v71);
    sub_10026423C(1, v33);
    v67 = v56;
    v68 = v57;
    sub_100264250(&v67, v33, v34, v35);
    v36 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_100264250(&v67, &v71, &v70, &v69);
      v28 = 0;
      v67 = v61;
      v68 = v62;
      sub_100264250(&v67, &v71, &v70, &v69);
      _os_log_impl(&_mh_execute_header, v65, v66, "#SiriMailComposeCoordinator setCcRecipients %s", v30, 0xCu);
      sub_10026429C(v31, 0);
      sub_10026429C(v32, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v65);
  (*(v44 + 8))(v47, v43);
  v26 = 0;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v41, 1);
  _objc_retain(v42);

  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = v37;
  v19 = v42;
  v20 = v48;
  v21 = v26;
  v22 = v41;
  v23 = v38;
  v17[2] = v27;
  v17[3] = v18;
  v17[4] = v19;
  v17[5] = v20;
  sub_1002C7DB4(v21, v21, v22, v23, v17, &type metadata for () + 8);
}

uint64_t sub_10044E308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  type metadata accessor for _SiriMailMessage();
  v5[7] = swift_task_alloc();
  v5[8] = sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0);
  v5[9] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044E464, v6);
}

uint64_t sub_10044E464()
{
  v1 = *(v0 + 72);
  v4 = v1;
  *(v0 + 16) = v0;
  sub_10044A8F4(v1);
  sub_10044DA7C();
  Binding.wrappedValue.getter();
  _SiriMailMessage.cc.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v4);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_10044E60C(uint64_t a1)
{
  v48 = a1;
  v50 = sub_10045192C;
  v54 = sub_10026EE84;
  v56 = sub_10026434C;
  v58 = sub_10026434C;
  v61 = sub_10026EF2C;
  v37 = &protocol witness table for MainActor;
  v38 = &unk_10050C060;
  v73 = 0;
  v72 = 0;
  v39 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8, &qword_1005093B0);
  v40 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v41 = &v25 - v40;
  v43 = type metadata accessor for Logger();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v48);
  v47 = &v25 - v46;
  v73 = v2;
  v72 = v3;
  static Logger.siriMail.getter();

  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v50;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v62 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v64 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v60 = _allocateUninitializedArray<A>(_:)();
  v63 = v8;

  v9 = v57;
  v10 = v63;
  *v63 = v56;
  v10[1] = v9;

  v11 = v59;
  v12 = v63;
  v63[2] = v58;
  v12[3] = v11;

  v13 = v62;
  v14 = v63;
  v63[4] = v61;
  v14[5] = v13;
  sub_1002612B0();

  if (os_log_type_enabled(v65, v66))
  {
    v15 = v39;
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v31 = sub_1002641E8(0, v29, v29);
    v32 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v33 = &v71;
    v71 = v30;
    v34 = &v70;
    v70 = v31;
    v35 = &v69;
    v69 = v32;
    sub_10026423C(2, &v71);
    sub_10026423C(1, v33);
    v67 = v56;
    v68 = v57;
    sub_100264250(&v67, v33, v34, v35);
    v36 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_100264250(&v67, &v71, &v70, &v69);
      v28 = 0;
      v67 = v61;
      v68 = v62;
      sub_100264250(&v67, &v71, &v70, &v69);
      _os_log_impl(&_mh_execute_header, v65, v66, "#SiriMailComposeCoordinator setBccRecipients %s", v30, 0xCu);
      sub_10026429C(v31, 0);
      sub_10026429C(v32, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v65);
  (*(v44 + 8))(v47, v43);
  v26 = 0;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v41, 1);
  _objc_retain(v42);

  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = v37;
  v19 = v42;
  v20 = v48;
  v21 = v26;
  v22 = v41;
  v23 = v38;
  v17[2] = v27;
  v17[3] = v18;
  v17[4] = v19;
  v17[5] = v20;
  sub_1002C7DB4(v21, v21, v22, v23, v17, &type metadata for () + 8);
}

uint64_t sub_10044ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  type metadata accessor for _SiriMailMessage();
  v5[7] = swift_task_alloc();
  v5[8] = sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0);
  v5[9] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044EEB0, v6);
}

uint64_t sub_10044EEB0()
{
  v1 = *(v0 + 72);
  v4 = v1;
  *(v0 + 16) = v0;
  sub_10044A8F4(v1);
  sub_10044DA7C();
  Binding.wrappedValue.getter();
  _SiriMailMessage.bcc.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v4);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_10044F058(void *a1)
{
  v48 = a1;
  v50 = sub_100451CCC;
  v54 = sub_10026EE84;
  v56 = sub_10026434C;
  v58 = sub_10026434C;
  v61 = sub_10026EF2C;
  v37 = &protocol witness table for MainActor;
  v38 = &unk_10050C070;
  v73 = 0;
  v72 = 0;
  v39 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8, &qword_1005093B0);
  v40 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v41 = &v25 - v40;
  v43 = type metadata accessor for Logger();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v48);
  v47 = &v25 - v46;
  v73 = v2;
  v72 = v3;
  static Logger.siriMail.getter();
  _objc_retain(v48);
  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v50;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v62 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v64 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v60 = _allocateUninitializedArray<A>(_:)();
  v63 = v8;

  v9 = v57;
  v10 = v63;
  *v63 = v56;
  v10[1] = v9;

  v11 = v59;
  v12 = v63;
  v63[2] = v58;
  v12[3] = v11;

  v13 = v62;
  v14 = v63;
  v63[4] = v61;
  v14[5] = v13;
  sub_1002612B0();

  if (os_log_type_enabled(v65, v66))
  {
    v15 = v39;
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v31 = sub_1002641E8(0, v29, v29);
    v32 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v33 = &v71;
    v71 = v30;
    v34 = &v70;
    v70 = v31;
    v35 = &v69;
    v69 = v32;
    sub_10026423C(2, &v71);
    sub_10026423C(1, v33);
    v67 = v56;
    v68 = v57;
    sub_100264250(&v67, v33, v34, v35);
    v36 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_100264250(&v67, &v71, &v70, &v69);
      v28 = 0;
      v67 = v61;
      v68 = v62;
      sub_100264250(&v67, &v71, &v70, &v69);
      _os_log_impl(&_mh_execute_header, v65, v66, "#SiriMailComposeCoordinator setFocusedField %s", v30, 0xCu);
      sub_10026429C(v31, 0);
      sub_10026429C(v32, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v65);
  (*(v44 + 8))(v47, v43);
  v26 = 0;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v41, 1);
  _objc_retain(v42);
  _objc_retain(v48);
  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = v37;
  v19 = v42;
  v20 = v48;
  v21 = v26;
  v22 = v41;
  v23 = v38;
  v17[2] = v27;
  v17[3] = v18;
  v17[4] = v19;
  v17[5] = v20;
  sub_1002C7DB4(v21, v21, v22, v23, v17, &type metadata for () + 8);
}

uint64_t sub_10044F7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  type metadata accessor for _SiriMailMessage();
  v5[7] = swift_task_alloc();
  sub_10025C9B0(&qword_1006DC710, &qword_10050C0F0);
  v5[8] = swift_task_alloc();
  v5[9] = sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0);
  v5[10] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044F960, v6);
}

uint64_t sub_10044F960()
{
  v1 = v0[10];
  v5 = v1;
  v4 = v0[6];
  v0[2] = v0;
  sub_10044A8F4(v1);
  sub_100261924(v4);
  _SiriMailMessage.Field.init(rawValue:)();
  Binding.wrappedValue.getter();
  _SiriMailMessage.focusedField.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v5);

  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_10044FAFC(void *a1)
{
  v68 = a1;
  v70 = sub_100451CCC;
  v74 = sub_10026EE84;
  v76 = sub_10026434C;
  v78 = sub_10026434C;
  v81 = sub_10026EF2C;
  v45 = &protocol witness table for MainActor;
  v46 = &unk_10050C088;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v47 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8, &qword_1005093B0);
  v48 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v49 = &v28 - v48;
  v2 = sub_10025C9B0(&qword_1006DC658, &qword_10050C078);
  v50 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v51 = &v28 - v50;
  v52 = 0;
  v53 = type metadata accessor for _SiriMailMessage.State();
  v55 = *(v53 - 8);
  v54 = v53 - 8;
  v56 = v55;
  v57 = *(v55 + 64);
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v52);
  v59 = &v28 - v58;
  v60 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v61 = &v28 - v60;
  v94 = &v28 - v60;
  v63 = type metadata accessor for Logger();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v68);
  v67 = &v28 - v66;
  v93 = v5;
  v92 = v6;
  static Logger.siriMail.getter();
  _objc_retain(v68);
  v72 = 7;
  v73 = swift_allocObject();
  *(v73 + 16) = v68;
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.debug.getter();
  v69 = 17;
  v77 = swift_allocObject();
  *(v77 + 16) = 32;
  v79 = swift_allocObject();
  *(v79 + 16) = 8;
  v71 = 32;
  v7 = swift_allocObject();
  v8 = v73;
  v75 = v7;
  *(v7 + 16) = v70;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v75;
  v82 = v9;
  *(v9 + 16) = v74;
  *(v9 + 24) = v10;
  v84 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v80 = _allocateUninitializedArray<A>(_:)();
  v83 = v11;

  v12 = v77;
  v13 = v83;
  *v83 = v76;
  v13[1] = v12;

  v14 = v79;
  v15 = v83;
  v83[2] = v78;
  v15[3] = v14;

  v16 = v82;
  v17 = v83;
  v83[4] = v81;
  v17[5] = v16;
  sub_1002612B0();

  if (os_log_type_enabled(v85, v86))
  {
    v18 = v47;
    v38 = static UnsafeMutablePointer.allocate(capacity:)();
    v37 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v39 = sub_1002641E8(0, v37, v37);
    v40 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v41 = &v91;
    v91 = v38;
    v42 = &v90;
    v90 = v39;
    v43 = &v89;
    v89 = v40;
    sub_10026423C(2, &v91);
    sub_10026423C(1, v41);
    v87 = v76;
    v88 = v77;
    sub_100264250(&v87, v41, v42, v43);
    v44 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v87 = v78;
      v88 = v79;
      sub_100264250(&v87, &v91, &v90, &v89);
      v36 = 0;
      v87 = v81;
      v88 = v82;
      sub_100264250(&v87, &v91, &v90, &v89);
      _os_log_impl(&_mh_execute_header, v85, v86, "#SiriMailComposeCoordinator setState %s", v38, 0xCu);
      sub_10026429C(v39, 0);
      sub_10026429C(v40, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v85);
  (*(v64 + 8))(v67, v63);
  sub_100261924(v68);
  _SiriMailMessage.State.init(rawValue:)();
  if ((*(v55 + 48))(v51, 1, v53) == 1)
  {
    return sub_100451DB8(v51);
  }

  v29 = v56;
  v33 = *(v55 + 32);
  v32 = v55 + 32;
  v33(v61, v51, v53);
  v34 = 0;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v49, 1);
  _objc_retain(v62);
  (*(v55 + 16))(v59, v61, v53);
  type metadata accessor for MainActor();
  v30 = static MainActor.shared.getter();
  v31 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v21 = swift_allocObject();
  v22 = v45;
  v23 = v62;
  v24 = v31;
  v25 = v59;
  v26 = v33;
  v27 = v53;
  v35 = v21;
  v21[2] = v30;
  v21[3] = v22;
  v21[4] = v23;
  v26(v21 + v24, v25, v27);
  sub_1002C7DB4(v34, v34, v49, v46, v35, &type metadata for () + 8);

  return (*(v55 + 8))(v61, v53);
}

uint64_t sub_10045058C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  type metadata accessor for _SiriMailMessage();
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for _SiriMailMessage.State();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0);
  v5[12] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100450754, v7);
}

uint64_t sub_100450754()
{
  v1 = v0[12];
  v7 = v1;
  v8 = v0[10];
  v4 = v0[9];
  v6 = v0[8];
  v5 = v0[6];
  v0[2] = v0;
  sub_10044A8F4(v1);
  (*(v4 + 16))(v8, v5, v6);
  Binding.wrappedValue.getter();
  _SiriMailMessage.state.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v7);

  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_100450914(uint64_t a1)
{
  v23 = a1;
  v2 = v1;
  v3 = v23;
  v27 = v2;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v24 = 0;
  v4 = sub_10025C9B0(&qword_1006DC660, &unk_10050C090);
  v25 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v26 = &v8 - v25;
  v28 = type metadata accessor for SiriMailAction();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v32 = *(v29 + 64);
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v33 = &v8 - v31;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v31);
  v35 = &v8 - v34;
  v44 = &v8 - v34;
  v43 = v3;
  v42 = v5;
  Notification.object.getter();
  if (v41[3])
  {
    result = swift_dynamicCast();
    if (result)
    {
      v21 = v36;
      v22 = v37;
    }

    else
    {
      v21 = 0;
      v22 = 0xF000000000000000;
    }

    v19 = v21;
    v20 = v22;
  }

  else
  {
    result = sub_10000B0D8(v41);
    v19 = 0;
    v20 = 0xF000000000000000;
  }

  v17 = v20;
  v18 = v19;
  if ((v20 & 0xF000000000000000) != 0xF000000000000000)
  {
    v15 = v18;
    v16 = v17;
    v7 = v24;
    v13 = v17;
    v12 = v18;
    v39 = v18;
    v40 = v17;
    type metadata accessor for JSONDecoder();
    v11 = JSONDecoder.__allocating_init()();
    sub_100451F80();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v14 = v7;
    if (v7)
    {
      v8 = v14;

      (*(v29 + 56))(v26, 1, 1, v28);
    }

    else
    {

      (*(v29 + 56))(v26, 0, 1, v28);
    }

    if ((*(v29 + 48))(v26, 1, v28) == 1)
    {
      sub_100452000(v26);
      return sub_100288010(v12, v13);
    }

    else
    {
      (*(v29 + 32))(v35, v26, v28);
      (*(v29 + 16))(v33, v35, v28);
      if ((*(v29 + 88))(v33, v28) == enum case for SiriMailAction.send(_:))
      {
        v38 = sub_10044A994();
        if (v38)
        {
          v9 = &v38;
          v10 = v38;
          _objc_retain(v38);
          sub_10026A58C(v9);
          [v10 performSend];
          _objc_release(v10);
        }

        else
        {
          sub_10026A58C(&v38);
        }
      }

      else
      {
        (*(v29 + 8))(v33, v28);
      }

      (*(v29 + 8))(v35, v28);
      return sub_100288010(v12, v13);
    }
  }

  return result;
}

id sub_100451060()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriMailComposeCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100451120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v38 = a1;
  v35 = "Fatal error";
  v36 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v37 = "MobileMail/SiriMailComposeCoordinator.swift";
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v39 = type metadata accessor for CharacterSet();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = v8 - v42;
  v44 = *__chkstk_darwin(v38);
  v50 = v44;
  v45 = [v44 address];
  if (v45)
  {
    v33 = v45;
    v28 = v45;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v2;
    _objc_release(v28);
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v26 = v32;
  v27 = v31;
  if (v32)
  {
    v24 = v27;
    v25 = v26;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v21 = v49;
  v49[0] = v24;
  v49[1] = v25;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1002686CC();
  v22 = StringProtocol.trimmingCharacters(in:)();
  v23 = v3;
  (*(v40 + 8))(v43, v39);
  sub_100268744(v21);
  v47 = v22;
  v48 = v23;
  v46 = [v44 contact];
  v20 = v46 != 0;
  v19 = v20;
  sub_10026A58C(&v46);
  if (v19)
  {
    v18 = [v44 contact];
    if (v18)
    {
      v17 = v18;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v15 = v17;
    v16 = [v17 displayName];
    if (v16)
    {
      v14 = v16;
      v9 = v16;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v4;
      _objc_release(v9);
      v12 = v10;
      v13 = v11;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v8[2] = v13;
    v8[1] = v12;
    _objc_release(v15);
    _SiriMailMessage.Account.init(name:address:)();
    v5 = type metadata accessor for _SiriMailMessage.Account();
    return (*(*(v5 - 8) + 56))(v34, 0, 1);
  }

  else
  {

    _SiriMailMessage.Account.init(name:address:)();
    v7 = type metadata accessor for _SiriMailMessage.Account();
    return (*(*(v7 - 8) + 56))(v34, 0, 1);
  }
}

uint64_t sub_10045165C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044B7F4(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_10045174C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044C274(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_10045183C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044CE54(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_100451934(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044D80C(a1, v6, v7, v8, v9);
}

unint64_t sub_100451A18()
{
  v2 = qword_1006DC648;
  if (!qword_1006DC648)
  {
    sub_10025CAA4(&qword_1006DC640, &qword_10050C040);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100451AA0()
{
  v2 = qword_1006DC650;
  if (!qword_1006DC650)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC650);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100451B04(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044E308(a1, v6, v7, v8, v9);
}

uint64_t sub_100451BE8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044ED54(a1, v6, v7, v8, v9);
}

uint64_t sub_100451CD4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044F7C8(a1, v6, v7, v8, v9);
}

uint64_t sub_100451DB8(uint64_t a1)
{
  v3 = type metadata accessor for _SiriMailMessage.State();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100451E60(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for _SiriMailMessage.State() - 8);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10025FAC4;

  return sub_10045058C(a1, v7, v8, v9, v1 + v10);
}

unint64_t sub_100451F80()
{
  v2 = qword_1006DC668;
  if (!qword_1006DC668)
  {
    type metadata accessor for SiriMailAction();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC668);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100452000(uint64_t a1)
{
  v3 = type metadata accessor for SiriMailAction();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1004520C4(uint64_t a1)
{
  updated = sub_1004521B8(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1004521B8(uint64_t a1)
{
  v5 = qword_1006DC708;
  if (!qword_1006DC708)
  {
    type metadata accessor for _SiriMailMessage();
    v4 = type metadata accessor for Binding();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1006DC708);
      return v2;
    }
  }

  return v5;
}

char *sub_100452254@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v7 = 0;
  v5 = sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v2 - v3;
  v7 = __chkstk_darwin(v2);
  sub_10044A0F8(v7, &v2 - v3);
  Binding.projectedValue.getter();
  return sub_10044A360(v6);
}

uint64_t sub_100452314(uint64_t a1, uint64_t a2)
{

  sub_10025C9B0(&qword_1006DC718, &qword_10050C0F8);
  sub_100452380();
  v3 = EnvironmentObject.wrappedValue.getter();

  return v3;
}

unint64_t sub_100452380()
{
  v2 = qword_1006DC720;
  if (!qword_1006DC720)
  {
    sub_10025CAA4(&qword_1006DC718, &qword_10050C0F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC720);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100452408(uint64_t a1, uint64_t a2)
{

  sub_10025C9B0(&qword_1006DC718, &qword_10050C0F8);
  sub_100452380();
  v3 = EnvironmentObject.projectedValue.getter();

  return v3;
}

uint64_t sub_1004524A4(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

char *sub_1004524EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v26 = a1;
  v23 = a2;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v15 = 0;
  v36 = type metadata accessor for _SiriMailMessage.State();
  v32 = *(v36 - 8);
  v33 = v36 - 8;
  v12 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(0);
  v34 = &v11 - v12;
  v13 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v35 = &v11 - v13;
  v30 = type metadata accessor for _SiriMailMessage();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v14 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v29 = &v11 - v14;
  v16 = (*(*(sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v15);
  v21 = &v11 - v16;
  v39 = type metadata accessor for SiriMailComposeViewRepresentable(v5);
  v17 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v41 = &v11 - v17;
  v43 = sub_10025C9B0(&qword_1006DC728, &qword_10050C100);
  v18 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v26);
  v45 = &v11 - v18;
  v19 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v46 = &v11 - v19;
  v49 = &v11 - v19;
  v47 = v8;
  v48 = v9;

  v24 = sub_10025C9B0(&qword_1006DC718, &qword_10050C0F8);
  v25 = sub_100452380();
  v20 = EnvironmentObject.projectedValue.getter();

  KeyPath = swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  sub_100452DD4(v21, v41);

  v31 = EnvironmentObject.wrappedValue.getter();

  SnippetClientContext.viewModel.getter();
  _SiriMailMessage.state.getter();
  (*(v27 + 8))(v29, v30);

  (*(v32 + 104))(v34, enum case for _SiriMailMessage.State.draft(_:), v36);
  sub_100452DF0();
  v40 = == infix<A>(_:_:)();
  v38 = *(v32 + 8);
  v37 = v32 + 8;
  v38(v34, v36);
  v38(v35, v36);
  sub_100452E70();
  View.allowsHitTesting(_:)();
  sub_10044A360(v41);
  v44 = sub_100452EF0();
  sub_1002EC85C(v45, v43, v46);
  sub_10044A360(v45);
  sub_100452F94(v46, v45);
  sub_1002EC85C(v45, v43, v42);
  sub_10044A360(v45);
  return sub_10044A360(v46);
}