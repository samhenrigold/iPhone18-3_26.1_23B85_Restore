uint64_t sub_100770D78()
{
  v1 = *(sub_10010FC20(&qword_1011A1988, &qword_100EE12C8) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_100767F88(v2, v3, v4, v5);
}

double sub_100770DEC()
{
  v1 = *(sub_10010FC20(&qword_1011A1988, &qword_100EE12C8) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100768984(v2, v3);
}

unint64_t sub_100770E64()
{
  result = qword_1011A1990;
  if (!qword_1011A1990)
  {
    sub_1001109D0(&qword_1011A1980, &unk_100EC8E10);
    sub_100770F18(&qword_101188E70, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1990);
  }

  return result;
}

uint64_t sub_100770F18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100771190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v66 = &v54 - v6;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v64 = &v54 - v7;
  type metadata accessor for Lyrics.TextLine(0);
  __chkstk_darwin();
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_socialNetwork;
  v62 = v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_socialNetwork];
  v13 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_title + 8];
  v61 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_title];
  v14 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_subtitle + 8];
  v59 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_subtitle];
  v15 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_contentIdentifier + 8];
  v58 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_contentIdentifier];
  v65 = v3;
  v16 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_lines];
  v17 = *(v16 + 16);
  v67 = a2;
  v68 = a3;
  v60 = v13;
  if (v17)
  {
    v57 = OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_socialNetwork;
    v18 = &v11[*(v8 + 64)];
    v19 = v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v20 = *(v9 + 72);

    v56 = v14;

    v55 = v15;

    v54 = v16;

    v21 = 0;
    v22 = 0xE000000000000000;
    do
    {
      v23 = sub_1001EBDD4(v19, v11);
      v24 = (*v18)(v23);
      v26 = v25;
      v69 = v21;
      v70 = v22;

      v27._countAndFlagsBits = v24;
      v27._object = v26;
      String.append(_:)(v27);

      v28._countAndFlagsBits = 10;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);

      v21 = v69;
      v22 = v70;
      sub_1003407A4(v11);
      v19 += v20;
      --v17;
    }

    while (v17);

    v12 = v57;
    v14 = v56;
    v29 = v55;
  }

  else
  {

    v29 = v15;
  }

  v30 = String.trim()();

  v31 = v65;
  v32 = *&v65[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_language];
  v33 = *&v65[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_language + 8];
  type metadata accessor for ShareLyricsStoryRenderer();
  v34 = swift_allocObject();
  *(v34 + 16) = v62;
  v35 = v60;
  *(v34 + 24) = v61;
  *(v34 + 32) = v35;
  *(v34 + 40) = v59;
  *(v34 + 48) = v14;
  *(v34 + 56) = v58;
  *(v34 + 64) = v29;
  *(v34 + 72) = v30;
  *(v34 + 88) = v32;
  *(v34 + 96) = v33;
  v36 = v31[v12];
  v37 = v64;
  sub_100646F40(&v31[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_artwork], v64);
  sub_10012B7A8(&v31[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_presentationSource], &v69);
  v38 = swift_allocObject();
  *(v38 + 16) = v63;
  type metadata accessor for StorySharingController(0);
  v39 = swift_allocObject();
  v40 = (v39 + OBJC_IVAR____TtC5Music22StorySharingController_openURL);
  v41 = objc_opt_self();

  v42 = [v41 sharedApplication];
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *v40 = sub_1005535F0;
  v40[1] = v43;
  *(v39 + 16) = v36;
  sub_1005535F8(v37, v39 + OBJC_IVAR____TtC5Music22StorySharingController_artwork);
  sub_10012B828(&v69, v39 + OBJC_IVAR____TtC5Music22StorySharingController_presentationSource);
  v44 = (v39 + OBJC_IVAR____TtC5Music22StorySharingController_renderer);
  *v44 = v34;
  v44[1] = &off_1010B8C20;
  *(v39 + OBJC_IVAR____TtC5Music22StorySharingController_artworkSize) = vdupq_n_s64(0x404A000000000000uLL);
  v45 = (v39 + OBJC_IVAR____TtC5Music22StorySharingController_shareDataBuilder);
  *v45 = sub_1007722B0;
  v45[1] = v38;
  v46 = type metadata accessor for TaskPriority();
  v47 = v66;
  (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
  type metadata accessor for MainActor();

  v48 = v31;
  v50 = v67;
  v49 = v68;
  sub_100030444(v67, v68);
  v51 = static MainActor.shared.getter();
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = &protocol witness table for MainActor;
  v52[4] = v39;
  v52[5] = v48;
  v52[6] = v50;
  v52[7] = v49;
  sub_1001F4CB8(0, 0, v47, &unk_100EE1358, v52);

  return result;
}

void sub_10077175C(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_101194C20, &unk_100ED2940);
  __chkstk_darwin();
  v6 = &v18[-v5];
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v8 = &v18[-v7];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    if (*(a3 + 16))
    {
      sub_10000DD18(a3 + 32, v18);
      v14 = swift_dynamicCast();
      v15 = *(v10 + 56);
      v15(v8, v14 ^ 1u, 1, v9);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        (*(v10 + 32))(v13, v8, v9);
        (*(v10 + 16))(v6, v13, v9);
        v16 = type metadata accessor for StorySharingController.ShareData(0);
        v15(&v6[*(v16 + 20)], 1, 1, v9);
        (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
        a1(v6);
        sub_1000095E8(v6, &qword_101194C20, &unk_100ED2940);
        (*(v10 + 8))(v13, v9);
        return;
      }
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9, v11);
    }

    sub_1000095E8(v8, &qword_101183A20, &unk_100EBCF80);
    v17 = type metadata accessor for StorySharingController.ShareData(0);
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    a1(v6);
    sub_1000095E8(v6, &qword_101194C20, &unk_100ED2940);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100771AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v7[8] = v8;
  *v8 = v7;
  v8[1] = sub_100771B78;

  return sub_10072E678();
}

uint64_t sub_100771B78()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100771D50;
  }

  else
  {
    v4 = sub_100771CD4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100771CD4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v1();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100771D50()
{
  v13 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000105AC(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to share lyrics story: %s", v4, 0xCu);
    sub_10000959C(v5);
  }

  else
  {
  }

  v10 = v0[4];
  if (v10)
  {
    v10(v9);

    v11 = v0[1];

    v11();
  }

  else
  {
    __break(1u);
  }
}

id sub_10077201C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareLyricsStoryActivity(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ShareLyricsStoryActivity(uint64_t a1)
{
  result = qword_1011A1A10;
  if (!qword_1011A1A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007721A4(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_10053DD40(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1007722B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_100771AC4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10077238C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_socialNetwork;
  sub_10044B664(*(v1 + OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_socialNetwork), v5);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  LODWORD(v5) = [v6 canOpenURL:v10];

  if (v5)
  {
    v11 = sub_10044BC7C(*(v1 + v7));
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1007724D0@<X0>(uint64_t *a1@<X8>)
{
  result = TitledSection.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1007724FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v9 = _s18ResponseControllerC7RequestVMa(0, a3, a4, v8);
  return *(a1 + *(v9 + 36)) == *(a2 + *(v9 + 36));
}

uint64_t sub_10077256C(uint64_t a1)
{
  _StringGuts.grow(_:)(18);

  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0x527972617262694CLL;
}

uint64_t sub_100772608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = a3;
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for MusicLibrarySectionedResponse();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4, a1, v8);
  MusicLibrarySectionedResponse.sections.getter();
  type metadata accessor for MusicLibrarySection();
  type metadata accessor for TitledSection();
  type metadata accessor for MusicLibrarySection();
  v10 = _arrayConditionalCast<A, B>(_:)();

  if (v10)
  {
    __chkstk_darwin();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v11 = Sequence.compactMap<A>(_:)();
    (*(v9 + 8))(a1, v8);
  }

  else
  {
    (*(v9 + 8))(a1, v8);
    v11 = _swiftEmptyArrayStorage;
  }

  result = _s18ResponseControllerC7RequestV13ResultContentVMa(0, a2, v14, v12);
  *(a4 + *(result + 36)) = v11;
  return result;
}

void sub_1007728BC(uint64_t *a3@<X8>)
{
  swift_getKeyPath();
  v6 = type metadata accessor for TitledSection();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicLibrarySection();
  MusicLibrarySection.subscript.getter();

  v4 = HIBYTE(AssociatedTypeWitness) & 0xF;
  if ((AssociatedTypeWitness & 0x2000000000000000) == 0)
  {
    v4 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    swift_getKeyPath();
    MusicLibrarySection.subscript.getter();

    v4 = v6;
    v5 = AssociatedTypeWitness;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v4;
  a3[1] = v5;
}

double sub_100772A04@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v119 = a2;
  v120 = a3;
  v118 = a1;
  v121 = a5;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v127 = &v98 - v6;
  v123 = a4;
  v8 = *(a4 + 2);
  v7 = *(a4 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v133 = AssociatedTypeWitness;
  v134 = v10;
  v135 = AssociatedConformanceWitness;
  v136 = v12;
  v131 = type metadata accessor for MusicLibrarySectionedRequest();
  v114 = *(v131 - 8);
  __chkstk_darwin();
  v125 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v13;
  __chkstk_darwin();
  v126 = &v98 - v14;
  v130 = v7;
  _s18ResponseControllerC7RequestV13ResultContentVMa(255, v8, v7, v15);
  sub_1001109D0(&qword_1011824A0, &unk_100EBE390);
  v104 = type metadata accessor for Result();
  v103 = *(v104 - 8);
  __chkstk_darwin();
  v102 = &v98 - v16;
  v133 = AssociatedTypeWitness;
  v134 = v10;
  v135 = AssociatedConformanceWitness;
  v136 = v12;
  v17 = type metadata accessor for MusicLibrarySectionedResponse();
  v100 = type metadata accessor for Optional();
  v99 = *(v100 - 8);
  __chkstk_darwin();
  v105 = &v98 - v18;
  v107 = v17;
  v106 = *(v17 - 8);
  __chkstk_darwin();
  v98 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v98 - v20;
  v21 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v109 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v24 = &v98 - v23;
  v115 = v21;
  v124 = *(v21 - 8);
  __chkstk_darwin();
  v108 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v98 - v26;
  __chkstk_darwin();
  v29 = &v98 - v28;
  v30 = *(v8 - 8);
  __chkstk_darwin();
  v129 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v31;
  v32 = __chkstk_darwin();
  v34 = &v98 - v33;
  v35 = *(v30 + 16);
  v36 = v132;
  v35(&v98 - v33, v132, v8, v32);
  v122 = *(v36 + *(v123 + 9));
  v128 = v34;
  v37 = v34;
  v38 = v30 + 16;
  (v35)(v29, v37, v8);
  v132 = v30;
  v39 = *(v30 + 56);
  v40 = 1;
  v123 = v29;
  v39(v29, 0, 1, v8);
  v116 = v35;
  v117 = v38;
  if (v118)
  {
    (v35)(v27, v118 + *(*v118 + 96), v8);
    v40 = 0;
  }

  v39(v27, v40, 1, v8);
  v110 = TupleTypeMetadata2;
  v41 = *(TupleTypeMetadata2 + 48);
  v43 = v123;
  v42 = v124;
  v44 = *(v124 + 16);
  v45 = v115;
  v44(v24, v123, v115);
  v118 = v41;
  v44(&v24[v41], v27, v45);
  v46 = *(v132 + 48);
  if (v46(v24, 1, v8) != 1)
  {
    v51 = v108;
    v44(v108, v24, v45);
    v52 = v118;
    v53 = v45;
    if (v46(&v24[v118], 1, v8) != 1)
    {
      v55 = v132;
      v56 = v129;
      (*(v132 + 32))(v129, &v24[v52], v8);
      v57 = dispatch thunk of static Equatable.== infix(_:_:)();
      v58 = *(v55 + 8);
      v58(v56, v8);
      v59 = *(v124 + 8);
      v59(v27, v53);
      v59(v123, v53);
      v58(v51, v8);
      v49 = v130;
      v59(v24, v53);
      v50 = v116;
      if ((v57 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v54 = *(v124 + 8);
    v54(v27, v53);
    v54(v123, v53);
    (*(v132 + 8))(v51, v8);
    v49 = v130;
LABEL_8:
    (*(v109 + 8))(v24, v110);
    v50 = v116;
    goto LABEL_12;
  }

  v47 = *(v42 + 8);
  v47(v27, v45);
  v47(v43, v45);
  v48 = v46(&v24[v118], 1, v8);
  v49 = v130;
  if (v48 != 1)
  {
    goto LABEL_8;
  }

  v47(v24, v45);
  v50 = v116;
LABEL_10:
  v60 = v105;
  dispatch thunk of MusicAutoupdatingResponse.response.getter();
  v61 = v106;
  v62 = v107;
  if ((*(v106 + 48))(v60, 1, v107) != 1)
  {
    v88 = v49;
    v89 = v101;
    (*(v61 + 32))(v101, v60, v62);
    v90 = v98;
    (*(v61 + 16))(v98, v89, v62);
    v91 = v102;
    sub_100772608(v90, v8, v88, v102);
    v92 = v104;
    swift_storeEnumTagMultiPayload();
    _s18ResponseControllerC7RequestV11InvalidatorCMa(0, v8, v88, v93);
    swift_allocObject();

    v95 = sub_100774080(v94);
    WitnessTable = swift_getWitnessTable();
    v119(v91, v95, WitnessTable);

    (*(v103 + 8))(v91, v92);
    (*(v61 + 8))(v89, v62);
    (*(v132 + 8))(v128, v8);
    v97 = v121;
    *(v121 + 32) = 0;
    result = 0.0;
    *v97 = 0u;
    v97[1] = 0u;
    return result;
  }

  (*(v99 + 8))(v60, v100);
LABEL_12:
  v63 = v126;
  v64 = v128;
  (*(v49 + 48))(v8, v49);
  v65 = v127;
  static TaskPriority.userInitiated.getter();
  v66 = type metadata accessor for TaskPriority();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  v67 = v8;
  v111 = v8;
  v68 = v114;
  (*(v114 + 16))(v125, v63, v131);
  v50(v129, v64, v67);
  type metadata accessor for MainActor();
  v69 = v122;

  v70 = v120;

  v71 = static MainActor.shared.getter();
  v72 = (*(v68 + 80) + 48) & ~*(v68 + 80);
  v73 = (v113 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
  v75 = v132;
  v76 = (*(v132 + 80) + v74 + 8) & ~*(v132 + 80);
  v77 = swift_allocObject();
  *(v77 + 2) = v71;
  *(v77 + 3) = &protocol witness table for MainActor;
  v78 = v111;
  v80 = v130;
  v79 = v131;
  *(v77 + 4) = v111;
  *(v77 + 5) = v80;
  (*(v68 + 32))(&v77[v72], v125, v79);
  v81 = &v77[v73];
  *v81 = v119;
  v81[1] = v70;
  *&v77[v74] = v69;
  v82 = v78;
  (*(v75 + 32))(&v77[v76], v129, v78);
  v83 = v127;
  v84 = sub_10035EB10(0, 0, v127, &unk_100EE1558, v77);
  sub_1000095E8(v83, &unk_101181520, &qword_100EBCC60);
  v85 = sub_10010FC20(&qword_1011A0D90, &unk_100EE0410);
  v86 = v121;
  *(v121 + 24) = v85;
  v86[4] = &protocol witness table for Task<A, B>;
  *v86 = v84;
  (*(v68 + 8))(v126, v131);
  (*(v75 + 8))(v128, v82);
  return result;
}

uint64_t sub_1007737B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  *(v8 + 80) = v19;
  *(v8 + 88) = v20;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  v9 = *a7;
  *(v8 + 96) = *(v19 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  _s18ResponseControllerC7RequestV13ResultContentVMa(255, v19, v20, v10);
  sub_1001109D0(&qword_1011824A0, &unk_100EBE390);
  v11 = type metadata accessor for Result();
  *(v8 + 120) = v11;
  *(v8 + 128) = *(v11 - 8);
  *(v8 + 136) = swift_task_alloc();
  v12 = *(v9 + class metadata base offset for MusicAutoupdatingResponse);
  v13 = *(v12 + 32);
  *(v8 + 16) = *(v12 + 16);
  *(v8 + 32) = v13;
  v14 = type metadata accessor for MusicLibrarySectionedResponse();
  *(v8 + 144) = v14;
  *(v8 + 152) = *(v14 - 8);
  *(v8 + 160) = swift_task_alloc();
  v15 = swift_task_alloc();
  *(v8 + 168) = v15;
  *(v8 + 176) = type metadata accessor for MainActor();
  *(v8 + 184) = static MainActor.shared.getter();
  v16 = swift_task_alloc();
  *(v8 + 192) = v16;
  *v16 = v8;
  v16[1] = sub_100773A40;

  return MusicLibrarySectionedRequest.response()(v15, v12);
}

uint64_t sub_100773A40()
{
  *(*v1 + 200) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100773D58;
  }

  else
  {
    v4 = sub_100773B9C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100773B9C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v16 = v0[16];
  v6 = v0[15];
  v8 = v0[10];
  v7 = v0[11];
  v15 = v0[6];

  (*(v4 + 16))(v1, v2, v3);
  sub_100772608(v1, v8, v7, v5);
  swift_storeEnumTagMultiPayload();
  _s18ResponseControllerC7RequestV11InvalidatorCMa(0, v8, v7, v9);
  swift_allocObject();

  v11 = sub_100774080(v10);
  WitnessTable = swift_getWitnessTable();
  v15(v5, v11, WitnessTable);

  (*(v16 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100773D58()
{
  v35 = v0;

  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, static Logger.libraryView);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  if (v9)
  {
    v11 = v0[12];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v14 = 136446210;
    v6(v12, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_1000105AC(v15, v17, &v34);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to load response for viewType=%{public}s", v14, 0xCu);
    sub_10000959C(v33);
  }

  else
  {
    v19 = v0[12];
    v20 = v0[10];

    (*(v19 + 8))(v10, v20);
  }

  v22 = v0[16];
  v21 = v0[17];
  v23 = v0[15];
  v25 = v0[10];
  v24 = v0[11];
  v26 = v0[8];
  v27 = v0[6];
  *v21 = v0[25];
  swift_storeEnumTagMultiPayload();
  _s18ResponseControllerC7RequestV11InvalidatorCMa(0, v25, v24, v28);

  swift_errorRetain();
  swift_allocObject();
  v29 = sub_100774080(v26);
  WitnessTable = swift_getWitnessTable();
  v27(v21, v29, WitnessTable);

  (*(v22 + 8))(v21, v23);

  v31 = v0[1];

  return v31();
}

void *sub_100774080(void *a1)
{
  v2 = v1;
  v37 = a1;
  v40 = *v1;
  v3 = *a1;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v39 = &v29 - v4;
  v5 = *(v3 + class metadata base offset for MusicAutoupdatingResponse);
  v6 = *(v5 + 32);
  v41 = *(v5 + 16);
  v42 = v6;
  type metadata accessor for MusicLibrarySectionedResponse();
  type metadata accessor for Optional();
  v7 = type metadata accessor for Published.Publisher();
  v34 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v29 - v8;
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for Publishers.Drop();
  v35 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v29 - v11;
  v13 = sub_100027010();
  v14 = swift_getWitnessTable();
  v33 = v14;
  v32 = sub_1000206BC();
  *&v41 = v10;
  *(&v41 + 1) = v13;
  *&v42 = v14;
  *(&v42 + 1) = v32;
  v36 = type metadata accessor for Publishers.ReceiveOn();
  v38 = *(v36 - 8);
  __chkstk_darwin();
  v30 = &v29 - v15;
  v16 = *(v5 - 8);
  __chkstk_darwin();
  v18 = &v29 - v17;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 32) = 0;
  *(v2 + *(v40 + 120)) = 0;
  dispatch thunk of MusicAutoupdatingResponse.request.getter();
  (*(v16 + 32))(v2 + *(*v2 + 112), v18, v5);
  dispatch thunk of MusicAutoupdatingResponse.$response.getter();
  Publisher.dropFirst(_:)();
  (*(v34 + 8))(v9, v7);
  v19 = static OS_dispatch_queue.main.getter();
  *&v41 = v19;
  v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v21 = v39;
  (*(*(v20 - 8) + 56))(v39, 1, 1, v20);
  v22 = v30;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v21, &qword_101182140, &unk_100EBD2A0);

  (*(v35 + 8))(v12, v10);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v25 = v40;
  v24[2] = *(v40 + 80);
  v24[3] = *(v25 + 88);
  v24[4] = v23;
  v26 = v36;
  swift_getWitnessTable();
  v27 = Publisher<>.sink(receiveValue:)();

  (*(v38 + 8))(v22, v26);
  *(v2 + *(*v2 + 120)) = v27;

  return v2;
}

double sub_10077460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s18ResponseControllerC7RequestV11InvalidatorCMa(0, a3, a4, v6);
    swift_getWitnessTable();
    RequestResponseInvalidatable.invalidate()();
  }

  return result;
}

uint64_t sub_1007746AC()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v9[2] = swift_getAssociatedConformanceWitness();
  v9[3] = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for MusicLibrarySectionedRequest();
  v3 = __chkstk_darwin();
  v9[0] = 0xD000000000000020;
  v9[1] = 0x8000000100E57090;
  (*(v4 + 16))(v9 - v5, &v0[*(v1 + 112)], v2, v3);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9[0];
}

uint64_t *sub_100774894()
{
  sub_100020438(v0[2], v0[3]);
  v1 = *(*v0 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for MusicLibrarySectionedRequest();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100774A00()
{
  sub_100774894();

  return swift_deallocClassInstance();
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_100030444(v1, *(v0 + 24));
  return v1;
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100020438(v5, v6);
}

uint64_t sub_100774C48()
{
  sub_100020438(*(v0 + 16), *(v0 + 24));
  sub_100020438(*(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t sub_100774C98()
{
  sub_100774C48();

  return swift_deallocClassInstance();
}

uint64_t sub_100774CFC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for MusicLibrarySectionedRequest();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_100774E68(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_100774FA4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_100775158(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100775194(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v2[2] = AssociatedTypeWitness;
  v2[3] = v6;
  v2[4] = AssociatedConformanceWitness;
  v2[5] = v8;
  v9 = *(type metadata accessor for MusicLibrarySectionedRequest() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (*(*(v4 - 8) + 80) + v12 + 8) & ~*(*(v4 - 8) + 80);
  v14 = v1[3];
  v21 = v1[2];
  v15 = (v1 + v11);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v1 + v12);
  v19 = swift_task_alloc();
  v3[6] = v19;
  *v19 = v3;
  v19[1] = sub_1007753B8;

  return sub_1007737B8(a1, v21, v14, v1 + v10, v16, v17, v18, v1 + v13);
}

uint64_t sub_1007753B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Int sub_100775500()
{
  Hasher.init(_seed:)();
  sub_10000954C(v0, v0[3]);
  dispatch thunk of MusicItem.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100775580(uint64_t a1)
{
  sub_10000954C(v1, v1[3]);
  dispatch thunk of MusicItem.id.getter();
  String.hash(into:)();

  return result;
}

Swift::Int sub_1007755F4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10000954C(v1, v1[3]);
  dispatch thunk of MusicItem.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100775670(void *a1, void *a2)
{
  sub_10000954C(a1, a1[3]);
  v3 = dispatch thunk of MusicItem.id.getter();
  v5 = v4;
  sub_10000954C(a2, a2[3]);
  if (v3 == dispatch thunk of MusicItem.id.getter() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_10077572C(uint64_t a1, __n128 a2)
{
  v54 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v44 = *(v54 - 8);
  __chkstk_darwin();
  v55 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v53 = &v42[-v5];
  v59 = type metadata accessor for MusicLibrary.AddAction();
  v48 = *(v59 - 8);
  __chkstk_darwin();
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_10010FC20(&unk_101193E20, &qword_100EBF7D0);
  v47 = *(v58 - 8);
  __chkstk_darwin();
  v9 = &v42[-v8];
  sub_10010FC20(&qword_1011A1C88, &qword_100EE15C0);
  __chkstk_darwin();
  v52 = &v42[-v10];
  v11 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  v50 = *(v11 - 8);
  v51 = v11;
  __chkstk_darwin();
  v49 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for MusicAuthorization.Status();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v18 = &v42[-v17];
  type metadata accessor for MusicLibrary();
  v56 = v2;
  v19 = *v2;
  static MusicLibrary.shared.getter();
  v57 = v19;
  v20 = static MusicLibrary.== infix(_:_:)();

  if ((v20 & 1) == 0)
  {
    return 0;
  }

  static MusicAuthorization.currentStatus.getter();
  (*(v14 + 104))(v16, enum case for MusicAuthorization.Status.authorized(_:), v13);
  sub_100779DA0(&unk_1011948E0, &type metadata accessor for MusicAuthorization.Status, &protocol conformance descriptor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v60[0] == v60[9] && v60[1] == v60[10])
  {
    v21 = *(v14 + 8);
    v21(v16, v13);
    v21(v18, v13);
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v22 = *(v14 + 8);
    v22(v16, v13);
    v22(v18, v13);

    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = type metadata accessor for DragDropToPlaylist.Destination(0);
  v24 = v52;
  sub_100779C48(v56 + *(v23 + 20), v52);
  if ((*(v50 + 48))(v24, 1, v51) != 1)
  {
    v25 = v49;
    sub_10077A484(v24, v49, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    v27 = sub_100775FAC(a1, v26);
    sub_100779CD8(v25, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    if (v27)
    {
      goto LABEL_9;
    }

    return 0;
  }

  sub_1000095E8(v24, &qword_1011A1C88, &qword_100EE15C0);
LABEL_9:
  v28 = *(a1 + 16);
  if (!v28)
  {
    return 1;
  }

  v29 = a1 + 32;
  v30 = (v48 + 1);
  v31 = (v47 + 88);
  LODWORD(v56) = enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:);
  LODWORD(v52) = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  v51 = (v47 + 96);
  v49 = (v44 + 32);
  v48 = (v44 + 16);
  v32 = (v44 + 88);
  LODWORD(v47) = enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:);
  v46 = enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:);
  v45 = enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:);
  v43 = enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:);
  v50 = v44 + 8;
  while (1)
  {
    sub_100779D38(v29, v60);
    sub_10000954C(v60, v60[3]);
    static MusicLibraryAction<>.add.getter();
    v33 = v59;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*v30)(v7, v33);
    v34 = v58;
    v35 = (*v31)(v9, v58);
    if (v35 != v56)
    {
      break;
    }

    (*v51)(v9, v34);
    v37 = v53;
    v36 = v54;
    (*v49)(v53, v9, v54);
    v38 = v55;
    (*v48)(v55, v37, v36);
    v39 = (*v32)(v38, v36);
    if (v39 == v47)
    {
      v41 = *v50;
      (*v50)(v37, v36);
      v41(v55, v36);
LABEL_22:
      sub_100779D70(v60);
      return 0;
    }

    if (v39 == v46)
    {
      (*v50)(v37, v36);
      goto LABEL_22;
    }

    if (v39 != v45 && v39 != v43)
    {
      goto LABEL_26;
    }

    (*v50)(v37, v36);
LABEL_12:
    sub_100779D70(v60);
    v29 += 72;
    if (!--v28)
    {
      return 1;
    }
  }

  if (v35 == v52)
  {
    goto LABEL_12;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_26:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

BOOL sub_100775FAC(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for Playlist.EditableComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  __chkstk_darwin();
  v8 = &v22[-1] - v7;
  Playlist.editableComponents.getter();
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    sub_1000095E8(v8, &unk_10118D240, &unk_100EC8F50);
    return 0;
  }

  static Playlist.EditableComponents.tracklist.getter();
  sub_100779DA0(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
  v9 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v10(v8, v3);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v11 = a1 + 32;
  v12 = *(a1 + 16) + 1;
  do
  {
    v13 = --v12 == 0;
    if (!v12)
    {
      break;
    }

    sub_100779D38(v11, v22);
    sub_10000954C(v22, v22[3]);
    v14 = dispatch thunk of MusicItem.id.getter();
    v16 = v15;
    if (v14 == Playlist.id.getter() && v16 == v17)
    {

      sub_100779D70(v22);
      return v13;
    }

    v11 += 72;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_100779D70(v22);
  }

  while ((v19 & 1) == 0);
  return v13;
}

uint64_t sub_10077624C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(type metadata accessor for DragDropToPlaylist.Destination(0) - 8);
  v3[14] = v4;
  v3[15] = *(v4 + 64);
  v3[16] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v3[17] = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  v3[18] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v3[19] = v5;
  v6 = *(v5 - 8);
  v3[20] = v6;
  v3[21] = *(v6 + 64);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10077640C, 0, 0);
}

uint64_t sub_10077640C()
{
  v1 = v0[12];
  v0[25] = type metadata accessor for Track();
  MusicItemCollection.init(arrayLiteral:)();
  v2 = *(v1 + 16);
  v0[26] = v2;
  if (v2)
  {
    v3 = v0[12];
    v0[27] = 0;
    v0[28] = _swiftEmptyArrayStorage;
    sub_100779D38(v3 + 32, (v0 + 2));
    v4 = v0[5];
    sub_10000954C(v0 + 2, v4);
    v5 = swift_task_alloc();
    v0[29] = v5;
    *v5 = v0;
    v5[1] = sub_100776798;
    v7 = v0[18];

    return MusicPlaylistAddable.tracks.getter(v7, v4, v6);
  }

  else
  {
    v9 = v0[24];
    v10 = v0[22];
    v26 = v0[21];
    v27 = v9;
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[17];
    v14 = v0[16];
    v24 = v14;
    v25 = v0[15];
    v15 = v0[13];
    v16 = v0[14];
    v28 = v0[11];
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    sub_10077A41C(v15, v14, type metadata accessor for DragDropToPlaylist.Destination);
    (*(v11 + 16))(v10, v9, v12);
    type metadata accessor for MainActor();
    v18 = static MainActor.shared.getter();
    v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v20 = (v25 + *(v11 + 80) + v19) & ~*(v11 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = &protocol witness table for MainActor;
    sub_10077A484(v24, v21 + v19, type metadata accessor for DragDropToPlaylist.Destination);
    (*(v11 + 32))(v21 + v20, v10, v12);
    *(v21 + ((v26 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = _swiftEmptyArrayStorage;
    sub_1001F4CB8(0, 0, v13, &unk_100EE18B8, v21);

    (*(v11 + 8))(v27, v12);
    v22 = type metadata accessor for Notice(0);
    (*(*(v22 - 8) + 56))(v28, 1, 1, v22);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100776798()
{

  return _swift_task_switch(sub_100776894, 0, 0);
}

uint64_t sub_100776894()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(v3, &unk_1011842D0, &qword_100ECBF00);
  }

  else
  {
    v4 = v0[23];
    (*(v2 + 32))(v4, v3, v1);
    static MusicItemCollection.+= infix(_:_:)();
    (*(v2 + 8))(v4, v1);
  }

  v5 = v0[8];
  v6 = v0[28];
  if (v5)
  {
    v7 = v0[9];
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    sub_100030444(v5, v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_100498F80(0, v6[2] + 1, 1, v0[28]);
    }

    v11 = v6[2];
    v10 = v6[3];
    if (v11 >= v10 >> 1)
    {
      v6 = sub_100498F80((v10 > 1), v11 + 1, 1, v6);
    }

    sub_100020438(v5, v7);
    v6[2] = v11 + 1;
    v12 = &v6[2 * v11];
    v12[4] = sub_1004303F0;
    v12[5] = v8;
  }

  v13 = v0[26];
  v14 = v0[27] + 1;
  sub_100779D70((v0 + 2));
  if (v14 == v13)
  {
    v15 = v0[24];
    v16 = v0[22];
    v38 = v0[21];
    v39 = v15;
    v17 = v0[19];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[16];
    v36 = v20;
    v37 = v0[15];
    v21 = v0[13];
    v22 = v0[14];
    v40 = v0[11];
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    sub_10077A41C(v21, v20, type metadata accessor for DragDropToPlaylist.Destination);
    (*(v18 + 16))(v16, v15, v17);
    type metadata accessor for MainActor();
    v24 = static MainActor.shared.getter();
    v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v26 = (v37 + *(v18 + 80) + v25) & ~*(v18 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = &protocol witness table for MainActor;
    sub_10077A484(v36, v27 + v25, type metadata accessor for DragDropToPlaylist.Destination);
    (*(v18 + 32))(v27 + v26, v16, v17);
    *(v27 + ((v38 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
    sub_1001F4CB8(0, 0, v19, &unk_100EE18B8, v27);

    (*(v18 + 8))(v39, v17);
    v28 = type metadata accessor for Notice(0);
    (*(*(v28 - 8) + 56))(v40, 1, 1, v28);

    v29 = v0[1];

    return v29();
  }

  else
  {
    v31 = v0[27];
    v0[27] = v31 + 1;
    v0[28] = v6;
    sub_100779D38(v0[12] + 72 * v31 + 104, (v0 + 2));
    v32 = v0[5];
    sub_10000954C(v0 + 2, v32);
    v33 = swift_task_alloc();
    v0[29] = v33;
    *v33 = v0;
    v33[1] = sub_100776798;
    v35 = v0[18];

    return MusicPlaylistAddable.tracks.getter(v35, v32, v34);
  }
}

uint64_t sub_100776D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100776E10, v8, v7);
}

uint64_t sub_100776E10()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_100776E88(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_100776E88(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v52 = type metadata accessor for AppInterfaceContext.Activity(0);
  v53 = *(v52 - 8);
  v3 = *(v53 + 64);
  __chkstk_darwin();
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v56 = (&v51 - v4);
  __chkstk_darwin();
  v55 = &v51 - v5;
  v6 = type metadata accessor for DragDropToPlaylist.Destination(0);
  v59 = *(v6 - 8);
  __chkstk_darwin();
  v60 = v7;
  v66 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v63 = *(v8 - 8);
  v57 = *(v63 + 64);
  __chkstk_darwin();
  v64 = &v51 - v9;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v65 = &v51 - v10;
  sub_10010FC20(&qword_1011A1C88, &qword_100EE15C0);
  __chkstk_darwin();
  v12 = &v51 - v11;
  v13 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v58 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v51 - v16;
  sub_10077A680();
  dispatch thunk of Collection.startIndex.getter();
  v61 = v8;
  v62 = a1;
  dispatch thunk of Collection.endIndex.getter();
  if (v69[0] != v69[12])
  {
    v22 = v67;
    sub_100779C48(v67 + *(v6 + 20), v12);
    v23 = v14;
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1000095E8(v12, &qword_1011A1C88, &qword_100EE15C0);
      sub_10012B7A8(v22 + *(v6 + 24), v69);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10012BA6C(v69);
      if (!Strong)
      {
        return;
      }

      v25 = sub_10003169C();

      if (!v25)
      {
        return;
      }

      v26 = type metadata accessor for Playlist.Folder();
      v27 = v55;
      (*(*(v26 - 8) + 56))(v55, 1, 1, v26);
      v28 = type metadata accessor for PlaylistCreation.Context(0);
      v29 = v28[6];
      v30 = v63;
      v31 = v61;
      (*(v63 + 16))(v27 + v29, v62, v61);
      (*(v30 + 56))(v27 + v29, 0, 1, v31);
      v32 = (v27 + v28[5]);
      *v32 = 0;
      v32[1] = 0;
      v33 = (v27 + v28[7]);
      *v33 = 0;
      v33[1] = 0;
      swift_storeEnumTagMultiPayload();
      v34 = v56;
      sub_10077A41C(v27, v56, type metadata accessor for AppInterfaceContext.Activity);
      v35 = v54;
      sub_10077A41C(v34, v54, type metadata accessor for AppInterfaceContext.Activity);
      v36 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      sub_10077A484(v35, v37 + v36, type metadata accessor for AppInterfaceContext.Activity);
      sub_100706900(v34, sub_100115C18, v37);

      sub_100779CD8(v34, type metadata accessor for AppInterfaceContext.Activity);
      v38 = v27;
      v39 = type metadata accessor for AppInterfaceContext.Activity;
    }

    else
    {
      v56 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination;
      v40 = v17;
      sub_10077A484(v12, v17, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
      v41 = type metadata accessor for TaskPriority();
      (*(*(v41 - 8) + 56))(v65, 1, 1, v41);
      v42 = v58;
      sub_10077A41C(v17, v58, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
      v43 = v63;
      v44 = v61;
      (*(v63 + 16))(v64, v62, v61);
      sub_10077A41C(v22, v66, type metadata accessor for DragDropToPlaylist.Destination);
      type metadata accessor for MainActor();

      v45 = static MainActor.shared.getter();
      v46 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v47 = (v15 + *(v43 + 80) + v46) & ~*(v43 + 80);
      v48 = (v57 + *(v59 + 80) + v47) & ~*(v59 + 80);
      v49 = (v60 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      *(v50 + 16) = v45;
      *(v50 + 24) = &protocol witness table for MainActor;
      sub_10077A484(v42, v50 + v46, v56);
      (*(v43 + 32))(v50 + v47, v64, v44);
      sub_10077A484(v66, v50 + v48, type metadata accessor for DragDropToPlaylist.Destination);
      *(v50 + v49) = v68;
      sub_1001F4CB8(0, 0, v65, &unk_100EE18D0, v50);

      v39 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination;
      v38 = v40;
    }

    sub_100779CD8(v38, v39);
    return;
  }

  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000060E4(v18, qword_1012186C8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "No tracks to add to playlist.", v21, 2u);
  }
}

uint64_t sub_10077774C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v10;
  v7[11] = v9;

  return _swift_task_switch(sub_100777844, v10, v9);
}

uint64_t sub_100777844(__n128 a1)
{
  v2 = v1[2];
  v3 = (v2 + *(type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0) + 24));
  v4 = *v3;
  v1[12] = *v3;
  if (v4)
  {
    v1[13] = v3[1];

    v16 = (v4 + *v4);
    v5 = swift_task_alloc();
    v1[14] = v5;
    *v5 = v1;
    v5[1] = sub_100777A40;
    v6 = v1[3];

    return v16(v6);
  }

  else
  {
    v9 = v1[7];
    v8 = v1[8];
    v10 = v1[6];
    v11 = v1[4];
    v12 = *(type metadata accessor for DragDropToPlaylist.Destination(0) + 24);
    (*(v9 + 104))(v8, enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.checkForDuplicates(_:), v10);
    v13 = swift_task_alloc();
    v1[15] = v13;
    *v13 = v1;
    v13[1] = sub_100777C30;
    v14 = v1[8];
    v15 = v1[3];

    return Playlist.addTracks(_:duplicatePolicy:duplicateCount:presentationSource:presentNotice:mpModel:)(v15, v14, 0, 1, v11 + v12, 1, 0);
  }
}

uint64_t sub_100777A40()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100777B60, v3, v2);
}

uint64_t sub_100777B60()
{
  v1 = v0[12];
  v2 = v0[13];

  sub_100020438(v1, v2);
  v3 = v0[5];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  sub_1003C1864(sub_100430418, v5, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100777C30()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_100777DB4, v6, v5);
}

uint64_t sub_100777DB4()
{

  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  sub_1003C1864(sub_100430418, v3, v1);

  v4 = v0[1];

  return v4();
}

void sub_100777E74(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v18 = *(v2 - 8);
  __chkstk_darwin();
  v17 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A1C88, &qword_100EE15C0);
  __chkstk_darwin();
  v11 = &v17 - v10;
  v19[0] = *v1;
  type metadata accessor for MusicLibrary();
  sub_100779DA0(&qword_101180378, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  v12 = type metadata accessor for DragDropToPlaylist.Destination(0);
  sub_100779C48(v1 + *(v12 + 20), v11);
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_10077A484(v11, v9, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    Hasher._combine(_:)(1u);
    Playlist.id.getter();
    String.hash(into:)();

    sub_10077A41C(&v9[*(v6 + 20)], v5, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
    v13 = v18;
    if ((*(v18 + 48))(v5, 1, v2) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v14 = v17;
      (*(v13 + 32))(v17, v5, v2);
      Hasher._combine(_:)(1uLL);
      sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      dispatch thunk of Hashable.hash(into:)();
      (*(v13 + 8))(v14, v2);
    }

    sub_100779CD8(v9, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
  }

  sub_10012B7A8(v1 + *(v12 + 24), v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(v19);
  if (Strong)
  {
    Hasher._combine(_:)(1u);
    v16 = Strong;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1007782AC()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10077A41C(v1, v7, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    Hasher._combine(_:)(1uLL);
    sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

void sub_10077849C(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10077A41C(v1, v7, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    Hasher._combine(_:)(1uLL);
    sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }
}

Swift::Int sub_100778668(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10077A41C(v2, v8, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v8, v3);
    Hasher._combine(_:)(1uLL);
    sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100778860()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  Playlist.id.getter();
  String.hash(into:)();

  v7 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  sub_10077A41C(v0 + *(v7 + 20), v6, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v6, v1);
    Hasher._combine(_:)(1uLL);
    sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return Hasher._finalize()();
}

id sub_100778A78(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10077A41C(v2 + *(a2 + 20), v5, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  v6 = type metadata accessor for IndexPath();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  v8 = objc_allocWithZone(UICollectionViewDropProposal);
  if (v7 == 1)
  {
    return [v8 initWithDropOperation:2 intent:2];
  }

  v10 = [v8 initWithDropOperation:2 intent:1];
  sub_100779CD8(v5, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  return v10;
}

uint64_t sub_100778BC8()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

void sub_100778C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin();
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.id.getter();
  String.hash(into:)();

  sub_10077A41C(v2 + *(a2 + 20), v9, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  if ((*(v5 + 48))(v9, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v9, v4);
    Hasher._combine(_:)(1uLL);
    sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }
}

Swift::Int sub_100778E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin();
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  Playlist.id.getter();
  String.hash(into:)();

  sub_10077A41C(v2 + *(a2 + 20), v9, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  if ((*(v5 + 48))(v9, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v9, v4);
    Hasher._combine(_:)(1uLL);
    sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_100779094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = Playlist.id.getter();
  v8 = v7;
  if (v6 == Playlist.id.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a3 + 20);

  return sub_1007792AC(a1 + v11, a2 + v11);
}

uint64_t sub_100779178(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_10077624C(a1, a2);
}

Swift::Int sub_100779220()
{
  Hasher.init(_seed:)();
  sub_100777E74(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100779264(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100777E74(v2);
  return Hasher._finalize()();
}

uint64_t sub_1007792AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A1F58, &qword_100EE18E0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  v13 = *(v12 + 56);
  sub_10077A41C(a1, &v18 - v10, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  sub_10077A41C(a2, &v11[v13], type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_10077A41C(v11, v9, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v13], v4);
      v15 = static IndexPath.== infix(_:_:)();
      v16 = *(v5 + 8);
      v16(v7, v4);
      v16(v9, v4);
      sub_100779CD8(v11, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
      return v15 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v11, &qword_1011A1F58, &qword_100EE18E0);
    v15 = 0;
    return v15 & 1;
  }

  sub_100779CD8(v11, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_100779594(void *a1, void *a2, __n128 a3)
{
  v5 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10010FC20(&qword_1011A1C88, &qword_100EE15C0);
  __chkstk_darwin();
  v10 = &v32[-v9 - 8];
  v11 = sub_10010FC20(&qword_1011A1F50, &qword_100EE18D8);
  __chkstk_darwin();
  v13 = &v32[-v12 - 8];
  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_20;
  }

  v31 = type metadata accessor for DragDropToPlaylist.Destination(0);
  v14 = *(v31 + 20);
  v15 = *(v11 + 48);
  sub_100779C48(a1 + v14, v13);
  sub_100779C48(a2 + v14, &v13[v15]);
  v16 = *(v6 + 48);
  if (v16(v13, 1, v5) != 1)
  {
    sub_100779C48(v13, v10);
    if (v16(&v13[v15], 1, v5) == 1)
    {
      sub_100779CD8(v10, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
      goto LABEL_7;
    }

    sub_10077A484(&v13[v15], v8, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    v20 = Playlist.id.getter();
    v22 = v21;
    if (v20 == Playlist.id.getter() && v22 == v23)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        sub_100779CD8(v8, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
        sub_100779CD8(v10, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
        v17 = &qword_1011A1C88;
        v18 = &qword_100EE15C0;
        goto LABEL_8;
      }
    }

    v26 = sub_1007792AC(&v10[*(v5 + 20)], &v8[*(v5 + 20)]);
    sub_100779CD8(v8, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    sub_100779CD8(v10, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    sub_1000095E8(v13, &qword_1011A1C88, &qword_100EE15C0);
    if (v26)
    {
      goto LABEL_17;
    }

LABEL_20:
    v19 = 0;
    return v19 & 1;
  }

  if (v16(&v13[v15], 1, v5) != 1)
  {
LABEL_7:
    v17 = &qword_1011A1F50;
    v18 = &qword_100EE18D8;
LABEL_8:
    sub_1000095E8(v13, v17, v18);
    v19 = 0;
    return v19 & 1;
  }

  sub_1000095E8(v13, &qword_1011A1C88, &qword_100EE15C0);
LABEL_17:
  v27 = v31;
  sub_10012B7A8(a1 + *(v31 + 24), v33);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(v33);
  sub_10012B7A8(a2 + *(v27 + 24), v32);
  v29 = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(v32);
  if (Strong)
  {
    if (v29)
    {
      sub_10016F3C8();
      v19 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    if (!v29)
    {
      v19 = 1;
      return v19 & 1;
    }

    v19 = 0;
    Strong = v29;
  }

  return v19 & 1;
}

id sub_1007799D8()
{
  type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin();
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A1C88, &qword_100EE15C0);
  __chkstk_darwin();
  v4 = &v12 - v3;
  v5 = type metadata accessor for DragDropToPlaylist.Destination(0);
  sub_100779C48(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_1000095E8(v4, &qword_1011A1C88, &qword_100EE15C0);
    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:2 intent:2];
  }

  else
  {
    sub_10077A41C(&v4[*(v6 + 20)], v2, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
    v8 = type metadata accessor for IndexPath();
    v9 = (*(*(v8 - 8) + 48))(v2, 1, v8);
    v10 = objc_allocWithZone(UICollectionViewDropProposal);
    if (v9 == 1)
    {
      v11 = [v10 initWithDropOperation:2 intent:2];
    }

    else
    {
      v11 = [v10 initWithDropOperation:2 intent:1];
      sub_100779CD8(v2, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
    }

    sub_100779CD8(v4, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    return v11;
  }
}

uint64_t sub_100779C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A1C88, &qword_100EE15C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100779CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100779DA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100779E10(uint64_t a1)
{
  type metadata accessor for MusicLibrary();
  if (v1 <= 0x3F)
  {
    sub_100779E9C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100779E9C(uint64_t a1)
{
  if (!qword_1011A1CF8)
  {
    type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A1CF8);
    }
  }
}

uint64_t sub_100779F1C(uint64_t a1)
{
  v1 = type metadata accessor for IndexPath();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100779F9C(uint64_t a1)
{
  type metadata accessor for Playlist();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(319);
    if (v2 <= 0x3F)
    {
      sub_10002EF7C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10077A038(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10077A050(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10077A074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10077A0BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10077A168(uint64_t a1)
{
  result = sub_100779DA0(&qword_1011A1EA8, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination, &unk_100EE169C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10077A250(uint64_t a1)
{
  result = sub_100779DA0(&qword_1011A1EF8, type metadata accessor for DragDropToPlaylist.Destination, &unk_100EE1794);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10077A2F4()
{
  result = qword_1011A1F00;
  if (!qword_1011A1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1F00);
  }

  return result;
}

unint64_t sub_10077A348(uint64_t a1)
{
  result = sub_10077A370();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10077A370()
{
  result = qword_1011A1F40;
  if (!qword_1011A1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1F40);
  }

  return result;
}

unint64_t sub_10077A3C8()
{
  result = qword_1011A1F48;
  if (!qword_1011A1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1F48);
  }

  return result;
}

uint64_t sub_10077A41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10077A484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10077A4EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DragDropToPlaylist.Destination(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_100776D74(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

unint64_t sub_10077A680()
{
  result = qword_1011913B0;
  if (!qword_1011913B0)
  {
    sub_1001109D0(&unk_1011841D0, &qword_100EC5DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011913B0);
  }

  return result;
}

uint64_t sub_10077A6E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for DragDropToPlaylist.Destination(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10002F3F4;

  return sub_10077774C(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12, v15);
}

uint64_t sub_10077A8D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10077A91C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

NSString sub_10077A980()
{
  result = String._bridgeToObjectiveC()();
  qword_101219538 = result;
  return result;
}

id sub_10077AA14(void *a1, id a2, char a3)
{
  if (a3)
  {
    v4 = [a1 identifiers];
    v5 = [a2 identifiers];
    v6 = [v4 intersectsSet:v5];
    goto LABEL_6;
  }

  result = [a2 results];
  if (result)
  {
    v9 = result;
    v10 = [result firstSection];

    if (!v10)
    {
      return 0;
    }

    v4 = [a1 identifiers];
    v5 = [v10 identifiers];
    v6 = [v4 intersectsSet:v5];

LABEL_6:
    return v6;
  }

  __break(1u);
  return result;
}

void *sub_10077AB38()
{
  result = sub_10010DC6C(_swiftEmptyArrayStorage);
  off_1011A1F60 = result;
  return result;
}

id sub_10077AD48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttributionMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10077AE00(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v233 = (&v233 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v247 = &v233 - v6;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v236 = &v233 - v7;
  v238 = type metadata accessor for Artwork();
  v237 = *(v238 - 8);
  __chkstk_darwin();
  v235 = &v233 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v10 = &v233 - v9;
  v244 = type metadata accessor for SocialProfile();
  v242 = *(v244 - 1);
  __chkstk_darwin();
  v243 = &v233 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v233 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v234 = (&v233 - v16);
  __chkstk_darwin();
  v241 = &v233 - v17;
  __chkstk_darwin();
  v19 = &v233 - v18;
  *&v20 = __chkstk_darwin().n128_u64[0];
  v22 = &v233 - v21;
  v249 = v1;
  if ([v1 isSharedListeningSession])
  {
    v23 = [a1 enqueueingParticipant];
    if (v23)
    {
      v24 = v23;
      v25 = [objc_allocWithZone(type metadata accessor for AttributionMetadata()) init];
      v26 = [v24 displayName];
      if (v26)
      {
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v93 = &v25[OBJC_IVAR___MusicAttributionMetadata_displayName];
      *v93 = v28;
      v93[1] = v30;

      v94 = [v24 modelObject];
      v95 = [v94 artworkCatalog];

      v96 = *&v25[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog];
      *&v25[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog] = v95;

      return v25;
    }
  }

  v245 = a1;
  v239 = v3;
  v240 = v4;
  v246 = v13;
  v248 = v12;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v31 = (*qword_101218AC8 + 528);
  v32 = *v31;
  v33 = (*v31)();
  if (v33)
  {
    v34 = v33;
    if ((*((swift_isaMask & *v33) + 0x268))())
    {
      v35 = *((*((swift_isaMask & *v34) + 0x180))() + 16);

      if (v35)
      {
        v36 = [v245 enqueueingParticipant];
        if (v36)
        {
          v37 = v36;
          v38 = Logger.sharePlayTogether.unsafeMutableAddressor();
          v39 = v246;
          v40 = *(v246 + 16);
          v240 = v38;
          v41 = v248;
          v247 = (v246 + 16);
          v239 = v40;
          (v40)(v22);
          v42 = v37;
          v43 = v245;
          v44 = Logger.logObject.getter();
          LODWORD(v37) = static os_log_type_t.default.getter();

          LODWORD(v245) = v37;
          v45 = os_log_type_enabled(v44, v37);
          v249 = v42;
          if (v45)
          {
            v234 = v44;
            v46 = v42;
            v47 = swift_slowAlloc();
            v233 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v250 = v48;
            *v47 = 136446466;
            v49 = [v46 displayName];
            if (v49)
            {
              v50 = v49;
              v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v53 = v52;
            }

            else
            {
              v51 = 0;
              v53 = 0;
            }

            aBlock = v51;
            v252 = v53;
            sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
            v98 = String.init<A>(describing:)();
            v100 = sub_1000105AC(v98, v99, &v250);

            *(v47 + 4) = v100;
            *(v47 + 12) = 2114;
            *(v47 + 14) = v43;
            v101 = v233;
            *v233 = v43;
            v102 = v43;
            v103 = v234;
            _os_log_impl(&_mh_execute_header, v234, v245, "[AttributionMetadata] building metadata for %{public}s, item: %{public}@", v47, 0x16u);
            sub_1000095E8(v101, &unk_101183D70, &unk_100EC6540);

            sub_10000959C(v48);

            v97 = *(v246 + 8);
            v41 = v248;
            v97(v22, v248);
            v42 = v249;
          }

          else
          {

            v97 = *(v39 + 8);
            v97(v22, v41);
          }

          v25 = [objc_allocWithZone(type metadata accessor for AttributionMetadata()) init];
          v104 = [v42 displayName];
          v105 = v242;
          if (v104)
          {
            v106 = v104;
            v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v109 = v108;

            v42 = v249;
          }

          else
          {
            v107 = 0;
            v109 = 0;
          }

          v110 = &v25[OBJC_IVAR___MusicAttributionMetadata_displayName];
          *v110 = v107;
          v110[1] = v109;

          (*((swift_isaMask & *v34) + 0x370))(v42);
          v111 = v244;
          if ((v105[6])(v10, 1, v244) == 1)
          {
            sub_1000095E8(v10, &qword_101186E00, &qword_100EC31E0);
            v112 = v241;
LABEL_71:
            v163 = [v42 displayName];
            if (v163)
            {
              v164 = v163;
              v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v167 = v166;
            }

            else
            {
              v165 = 0;
              v167 = 0;
            }

            sub_100009F78(0, &qword_1011A1560, MPArtworkCatalog_ptr);
            v168 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v165, v167, 0, 1);

            if (!v168)
            {
              v239(v112, v240, v41);
              v170 = Logger.logObject.getter();
              v171 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v170, v171))
              {
                v172 = swift_slowAlloc();
                *v172 = 0;
                _os_log_impl(&_mh_execute_header, v170, v171, "[AttributionMetadata] failed to get monogram artwork", v172, 2u);
              }

              else
              {
              }

              v97(v112, v41);
              return v25;
            }

            goto LABEL_76;
          }

          (v105[4])(v243, v10, v111);
          v239(v19, v240, v41);
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            *v115 = 0;
            _os_log_impl(&_mh_execute_header, v113, v114, "[AttributionMetadata] found social profile", v115, 2u);
          }

          v97(v19, v41);
          if (qword_10117FCD0 != -1)
          {
            swift_once();
          }

          v116 = SocialProfile.id.getter();
          v118 = v117;
          swift_beginAccess();
          v119 = off_1011A1F60;
          if (*(off_1011A1F60 + 2))
          {
            v120 = sub_100019C10(v116, v118);
            v122 = v121;

            if (v122)
            {
              v123 = *(v119[7] + 8 * v120);
              swift_endAccess();
              v124 = objc_opt_self();
              v125 = v123;
              result = [v124 sharedStoreArtworkDataSource];
              v112 = v241;
              if (result)
              {
                v126 = result;
                v127 = objc_allocWithZone(MPArtworkCatalog);
                v128 = v125;
                v129 = [v127 initWithToken:v128 dataSource:v126];

                (v105)[1](v243, v244);
                v130 = *&v25[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog];
                *&v25[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog] = v129;

LABEL_70:
                v42 = v249;
                goto LABEL_71;
              }

              __break(1u);
              goto LABEL_105;
            }
          }

          else
          {
          }

          swift_endAccess();
          v131 = v236;
          v132 = v243;
          SocialProfile.artwork.getter();
          v133 = v237;
          v134 = v238;
          if ((*(v237 + 48))(v131, 1, v238) == 1)
          {
            (v105)[1](v132, v244);
            sub_1000095E8(v131, &unk_101188920, &qword_100EBCC50);
            goto LABEL_69;
          }

          (*(v133 + 32))(v235, v131, v134);
          type metadata accessor for JSONEncoder();
          swift_allocObject();
          JSONEncoder.init()();
          sub_10077D230(&qword_1011A1FB8, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
          v135 = dispatch thunk of JSONEncoder.encode<A>(_:)();
          v137 = v136;
          v138 = v135;

          v139 = objc_opt_self();
          isa = Data._bridgeToObjectiveC()().super.isa;
          v250 = 0;
          v141 = [v139 JSONObjectWithData:isa options:0 error:&v250];

          v142 = v250;
          v143 = v137;
          if (v141)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
            v144 = swift_dynamicCast();
            v145 = v235;
            if (v144)
            {
              v146 = objc_allocWithZone(ICStoreArtworkInfo);
              v147 = Dictionary._bridgeToObjectiveC()().super.isa;
              v148 = [v146 initWithArtworkResponseDictionary:v147];

              if (v148)
              {
                v149 = objc_opt_self();
                v245 = v148;
                v150 = [v149 tokenWithImageArtworkInfo:v148];
                v151 = objc_opt_self();
                v152 = v150;
                result = [v151 sharedStoreArtworkDataSource];
                if (!result)
                {
LABEL_106:
                  __break(1u);
                  goto LABEL_107;
                }

                v153 = result;

                v154 = objc_allocWithZone(MPArtworkCatalog);
                v155 = v152;
                v236 = [v154 initWithToken:v155 dataSource:v153];

                v156 = SocialProfile.id.getter();
                v158 = v157;
                swift_beginAccess();
                v159 = v155;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v250 = off_1011A1F60;
                off_1011A1F60 = 0x8000000000000000;
                sub_1006C7498(v159, v156, v158, isUniquelyReferenced_nonNull_native);

                off_1011A1F60 = v250;
                swift_endAccess();
                sub_10002C064(v138, v143);

                (*(v237 + 8))(v235, v238);
                (v242)[1](v243, v244);
                v161 = *&v25[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog];
                *&v25[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog] = v236;
              }

              else
              {
                sub_10002C064(v138, v143);

                (*(v237 + 8))(v145, v238);
                (v242)[1](v243, v244);
              }

              v41 = v248;
LABEL_69:
              v112 = v241;
              goto LABEL_70;
            }

            sub_10002C064(v138, v143);
            (*(v237 + 8))(v145, v238);
          }

          else
          {
            v162 = v142;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_10002C064(v138, v137);

            (*(v237 + 8))(v235, v238);
          }

          (v242)[1](v243, v244);
          goto LABEL_69;
        }
      }
    }
  }

  v54 = v249;
  v55 = [v249 tracklist];
  v56 = [v55 playingItemIndexPath];

  if (!v56)
  {
    goto LABEL_86;
  }

  v58 = v247;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v59 = [v54 tracklist];
  v60 = [v59 items];

  v61 = [v60 sectionAtIndex:IndexPath.section.getter()];
  v62 = [v61 metadataObject];

  if (!v62)
  {
    goto LABEL_85;
  }

  v63 = [v62 flattenedGenericObject];
  if (!v63)
  {
    (*(v240 + 8))(v58, v239);
LABEL_37:

    goto LABEL_86;
  }

  v64 = v63;
  v65 = [v63 anyObject];

  if (!v65)
  {
    (*(v240 + 8))(v247, v239);
    goto LABEL_37;
  }

  objc_opt_self();
  v66 = swift_dynamicCastObjCClass();
  if (!v66)
  {

    goto LABEL_41;
  }

  v67 = v66;
  v68 = v65;
  if ((sub_1004843F8() & 1) != 0 || (v69 = [v245 metadataObject]) == 0 || (v70 = v69, v71 = objc_msgSend(v69, "anyObject"), v70, !v71))
  {

LABEL_41:
    v57 = (*(v240 + 8))(v247, v239);
    goto LABEL_86;
  }

  objc_opt_self();
  v72 = swift_dynamicCastObjCClass();
  v58 = v247;
  if (!v72)
  {

LABEL_85:
    v57 = (*(v240 + 8))(v58, v239);
LABEL_86:
    v178 = (v32)(v57);
    if (v178)
    {
      v179 = v178;
      v180 = Logger.sharePlayTogether.unsafeMutableAddressor();
      v181 = v246;
      (*(v246 + 16))(v15, v180, v248);
      v182 = v245;
      v183 = v179;
      v184 = Logger.logObject.getter();
      v185 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v184, v185))
      {
        v186 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        *v186 = 67240706;
        *(v186 + 4) = (*((swift_isaMask & v183->isa) + 0x268))() & 1;
        *(v186 + 8) = 2112;
        v188 = [v182 enqueueingParticipant];
        *(v186 + 10) = v188;
        *v187 = v188;
        *(v186 + 18) = 2048;
        v181 = v246;
        v189 = *((*((swift_isaMask & v183->isa) + 0x180))() + 16);

        *(v186 + 20) = v189;

        _os_log_impl(&_mh_execute_header, v184, v185, "[AttributionMetadata] we have a session, but didn't build the attribution metadata. isActive: %{BOOL,public}d participant: %@ participant count: %ld", v186, 0x1Cu);
        sub_1000095E8(v187, &unk_101183D70, &unk_100EC6540);
      }

      else
      {

        v184 = v183;
      }

      (*(v181 + 8))(v15, v248);
    }

    return 0;
  }

  v244 = v68;
  v73 = byte_1011A1F70;
  v243 = v71;
  if (byte_1011A1F70 == 255)
  {
LABEL_93:
    v190 = v67;
    v191 = Logger.collaboration.unsafeMutableAddressor();
    v192 = v246;
    v193 = v234;
    v194 = v248;
    (*(v246 + 16))(v234, v191, v248);
    v195 = Logger.logObject.getter();
    v196 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v195, v196))
    {
      v197 = swift_slowAlloc();
      *v197 = 0;
      _os_log_impl(&_mh_execute_header, v195, v196, "Will perform Attribution metadata", v197, 2u);
    }

    (*(v192 + 8))(v193, v194);
    v198 = [objc_allocWithZone(MPModelLibraryRequest) init];
    v199 = String._bridgeToObjectiveC()();
    [v198 setLabel:v199];

    v200 = [objc_opt_self() deviceMediaLibrary];
    [v198 setMediaLibrary:v200];

    sub_100009F78(0, qword_101186D10, MPModelPlaylistEntry_ptr);
    v201 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v202 = objc_opt_self();
    v203 = [v202 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v201 options:0];
    [v198 setSectionKind:v203];

    [v198 setItemKind:v201];
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v204 = swift_allocObject();
    *(v204 + 16) = xmmword_100EBC6C0;
    v205 = v190;
    *(v204 + 32) = v190;
    sub_100009F78(0, &unk_101186F00, MPModelObject_ptr);
    v206 = Array._bridgeToObjectiveC()().super.isa;

    [v198 setScopedContainers:v206];

    sub_10010FC20(&qword_101186F10, &unk_100EC96E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v208;
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v209 = swift_allocObject();
    *(v209 + 16) = xmmword_100EBDC20;
    *(v209 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v209 + 40) = v210;
    *(v209 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v209 + 56) = v211;
    v212 = Array._bridgeToObjectiveC()().super.isa;

    v213 = [objc_opt_self() propertySetWithProperties:v212];

    *(inited + 48) = v213;
    sub_10000BFA0(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_101186F18, &unk_100EC96F0);
    v214 = objc_allocWithZone(MPPropertySet);
    v215 = Array._bridgeToObjectiveC()().super.isa;
    sub_100009F78(0, &qword_101186F20, MPPropertySet_ptr);
    v216 = Dictionary._bridgeToObjectiveC()().super.isa;

    v217 = [v214 initWithProperties:v215 relationships:v216];

    [v198 setItemProperties:v217];
    v218 = swift_allocObject();
    v219 = v249;
    *(v218 + 16) = v205;
    *(v218 + 24) = v219;
    v255 = sub_10077D220;
    v256 = v218;
    aBlock = _NSConcreteStackBlock;
    v252 = 1107296256;
    v253 = sub_10000B378;
    v254 = &unk_1010BE890;
    v220 = _Block_copy(&aBlock);
    v221 = v244;
    v222 = v219;

    [v198 performWithResponseHandler:v220];

    _Block_release(v220);
    (*(v240 + 8))(v247, v239);
    return 0;
  }

  v74 = qword_1011A1F68;
  if (byte_1011A1F70)
  {
LABEL_83:
    v173 = v74;
    v174 = sub_10077AA14(v67, v74, v73 & 1);
    v175 = v74;
    v176 = v174;
    sub_10004ADFC(v175, v73);
    if (v176)
    {

      v177 = v244;
      goto LABEL_85;
    }

    goto LABEL_93;
  }

  v241 = v72;
  v75 = qword_1011A1F68;
  v242 = v74;
  if ((sub_10077AA14(v67, v74, 0) & 1) == 0)
  {
    goto LABEL_81;
  }

  v238 = v75;
  result = [v75 results];
  if (!result)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v77 = result;
  v241 = [v241 identifiers];
  v78 = [v77 indexPathForItemWithIdentifiersIntersectingSet:v241];

  v79 = v238;
  if (!v78)
  {
LABEL_81:
    sub_10004ADFC(v242, v73);
    v73 = byte_1011A1F70;
    v71 = v243;
    if (byte_1011A1F70 == 255)
    {
      goto LABEL_93;
    }

    v74 = qword_1011A1F68;
    goto LABEL_83;
  }

  v80 = v233;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  result = [v79 results];
  if (result)
  {
    v81 = result;
    v82 = IndexPath._bridgeToObjectiveC()().super.isa;
    v83 = [v81 itemAtIndexPath:v82];

    v84 = [v83 socialContributor];
    v85 = v240;
    v86 = v239;
    if (v84)
    {
      v25 = [objc_allocWithZone(type metadata accessor for AttributionMetadata()) init];
      v87 = v84;
      v88 = [v87 name];
      if (v88)
      {
        v89 = v88;
        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;
      }

      else
      {
        v90 = 0;
        v92 = 0;
      }

      v224 = &v25[OBJC_IVAR___MusicAttributionMetadata_displayName];
      *v224 = v90;
      v224[1] = v92;

      v225 = [v87 artworkCatalog];
      v226 = *&v25[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog];
      *&v25[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog] = v225;

      v227 = [v87 name];
      if (v227)
      {
        v228 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v230 = v229;
      }

      else
      {
        v228 = 0;
        v230 = 0;
      }

      v231 = v243;
      sub_100009F78(0, &qword_1011A1560, MPArtworkCatalog_ptr);
      v168 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v228, v230, 0, 1);

      sub_10004ADFC(v242, v73);

      v232 = *(v85 + 8);
      v232(v233, v86);
      v232(v247, v86);
LABEL_76:
      v169 = *&v25[OBJC_IVAR___MusicAttributionMetadata_placeholderArtworkCatalog];
      *&v25[OBJC_IVAR___MusicAttributionMetadata_placeholderArtworkCatalog] = v168;

      return v25;
    }

    sub_10004ADFC(v242, v73);
    v223 = *(v85 + 8);
    v223(v80, v86);
    v223(v58, v86);
    return 0;
  }

LABEL_107:
  __break(1u);
  return result;
}

id sub_10077CD94(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v29 = a4;
  v30 = v11;
  v15 = v8;
  v16 = a1;
  result = [v16 results];
  if (result)
  {
    v18 = result;
    v19 = [result firstSection];

    if (v19)
    {

      v20 = qword_1011A1F68;
      qword_1011A1F68 = a1;
      v21 = byte_1011A1F70;
      byte_1011A1F70 = 0;
      sub_10004ADFC(v20, v21);
      v8 = v15;
      a4 = v29;
      v11 = v30;
LABEL_7:
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v25 = static OS_dispatch_queue.main.getter();
      v26 = swift_allocObject();
      *(v26 + 16) = a4;
      aBlock[4] = sub_10077D228;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010BE8E0;
      v27 = _Block_copy(aBlock);
      v28 = a4;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10077D230(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10010FC20(&qword_101182970, &qword_100EBD250);
      sub_10002489C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v27);

      (*(v8 + 8))(v10, v7);
      return (*(v12 + 8))(v14, v11);
    }

    v8 = v15;
    a4 = v29;
    v11 = v30;
LABEL_6:
    v22 = qword_1011A1F68;
    qword_1011A1F68 = a3;
    v23 = byte_1011A1F70;
    byte_1011A1F70 = 1;
    sub_10004ADFC(v22, v23);
    v24 = a3;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_10077D110(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_10117FCC8 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:qword_101219538 object:a1 userInfo:0];
}

uint64_t sub_10077D230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_10077D278()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC5Music24NowPlayingBottomScrubber_trackingView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC5Music24NowPlayingBottomScrubber_timeObserver;
  type metadata accessor for PlaybackTimeObserver(0);
  swift_allocObject();
  *&v1[v4] = PlaybackTimeObserver.init(name:)(0xD000000000000016, 0x8000000100E572E0);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v5 setUserInteractionEnabled:0];
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  v7 = OBJC_IVAR____TtC5Music24NowPlayingBottomScrubber_trackingView;
  v8 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingBottomScrubber_trackingView];
  v9 = objc_allocWithZone(UIColor);
  v14[4] = sub_10077D480;
  v14[5] = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10003640C;
  v14[3] = &unk_1010BE908;
  v10 = _Block_copy(v14);
  v11 = v8;
  v12 = [v9 initWithDynamicProvider:v10];
  _Block_release(v10);

  [v11 setBackgroundColor:v12];

  [v5 addSubview:*&v5[v7]];
  return v5;
}

id sub_10077D480(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  if (v1 == 2)
  {
    v3 = 0.24;
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
    v3 = 0.25;
  }

  return [v2 initWithWhite:v4 alpha:v3];
}

id sub_10077D5E8()
{
  v1 = v0;
  v12[0].receiver = v0;
  v12[0].super_class = swift_getObjectType();
  [(objc_super *)v12 layoutSubviews];
  PlaybackTimeObserver.effectiveElapsedTime.getter();
  v2 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingBottomScrubber_trackingView];
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v1 bounds];
  CGRectGetWidth(v14);
  sub_100058728(v4, v6, v8, v10, 0.0, 0.0);
  memset(&v12[1], 0, 32);
  v13 = 1;
  CGRect.applyingLayoutDirection(in:bounds:)();
  return [v2 setFrame:?];
}

void sub_10077D808(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  ObjectType = swift_getObjectType();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  if (objc_msgSendSuper2(&v9, "isHidden") != v3)
  {
    v5 = [v2 superview];
    if (v5)
    {

      v8.receiver = v2;
      v8.super_class = ObjectType;
      objc_msgSendSuper2(&v8, "alpha");
      if (v6 <= 0.0)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v7.receiver = v2;
        v7.super_class = ObjectType;
        LOBYTE(v5) = objc_msgSendSuper2(&v7, "isHidden") ^ 1;
      }
    }

    PlaybackTimeObserver.automaticallyUpdates.setter(v5);
  }
}

void sub_10077D99C(double a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "alpha");
  if (v4 != a1)
  {
    v5 = [v1 superview];
    if (v5)
    {

      v8.receiver = v1;
      v8.super_class = ObjectType;
      objc_msgSendSuper2(&v8, "alpha");
      if (v6 <= 0.0)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v7.receiver = v1;
        v7.super_class = ObjectType;
        LOBYTE(v5) = objc_msgSendSuper2(&v7, "isHidden") ^ 1;
      }
    }

    PlaybackTimeObserver.automaticallyUpdates.setter(v5);
  }
}

void sub_10077DDA8(uint64_t a1)
{
  sub_1000308A0(319, &qword_10118FC40, &type metadata for MusicItemID);
  if (v1 <= 0x3F)
  {
    sub_1000308A0(319, &unk_1011A20A0, &type metadata for PreviewOverlay.StopMode);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Player.NowPlayingObserver(319);
      if (v3 <= 0x3F)
      {
        sub_100238CF4(319);
        if (v4 <= 0x3F)
        {
          sub_100117C38(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10077DF04(uint64_t a1)
{
  sub_1000308A0(319, &qword_10118FC40, &type metadata for MusicItemID);
  if (v1 <= 0x3F)
  {
    sub_1000308A0(319, &unk_1011A20A0, &type metadata for PreviewOverlay.StopMode);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Player.NowPlayingObserver(319);
      if (v3 <= 0x3F)
      {
        sub_100238CF4(319);
        if (v4 <= 0x3F)
        {
          sub_100117C38(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10077DFF4()
{
  result = qword_1011A2180;
  if (!qword_1011A2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2180);
  }

  return result;
}

uint64_t sub_10077E064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a1;
  v35 = a2;
  v4 = sub_10010FC20(&qword_1011A2188, &qword_100EE1B00);
  __chkstk_darwin();
  v6 = &v33 - v5;
  v7 = sub_10010FC20(&qword_1011A2190, &qword_100EE1B08);
  __chkstk_darwin();
  v9 = &v33 - v8;
  v34 = sub_10010FC20(&qword_1011A2198, &qword_100EE1B10);
  __chkstk_darwin();
  v11 = &v33 - v10;
  v13 = *v2;
  v12 = *(v2 + 8);
  sub_10012BF2C(*v2, v12);
  v14 = 0;
  if (v15 != -1)
  {
    if (qword_10117F1F8 != -1)
    {
      swift_once();
    }

    sub_10012BF2C(v13, v12);
    if (v16 != 255 && (v16 != 1 || (*(v2 + 17) & 1) == 0))
    {
      if (qword_10117FCD8 != -1)
      {
        swift_once();
      }

      v14 = qword_1011A1FF8;
    }
  }

  v17 = sub_10010FC20(&qword_1011A21A0, &qword_100EE1B18);
  (*(*(v17 - 8) + 16))(v6, v33, v17);
  v18 = &v6[*(v4 + 36)];
  *v18 = v14;
  v18[8] = 0;
  v19 = static Animation.easeIn.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = &v9[*(v7 + 36)];
  v21 = sub_10010FC20(&qword_1011A21A8, &qword_100EE1B68);
  static Published.subscript.getter((v20 + *(v21 + 36)));

  *v20 = v19;
  sub_10003D17C(v6, v9, &qword_1011A2188, &qword_100EE1B00);
  v22 = static Animation.easeIn.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v36);

  v23 = v36;
  sub_1000089F8(v9, v11, &qword_1011A2190, &qword_100EE1B08);
  v24 = &v11[*(v34 + 36)];
  *v24 = v22;
  v24[8] = v23;
  sub_1000095E8(v9, &qword_1011A2190, &qword_100EE1B08);
  v25 = static Alignment.center.getter();
  v27 = v26;
  v28 = sub_10010FC20(&qword_1011A21B0, &qword_100EE1BB8);
  v29 = v35;
  v30 = v35 + *(v28 + 36);
  sub_10077E468(v3, v30);
  v31 = (v30 + *(sub_10010FC20(&qword_1011A21B8, &qword_100EE1BC0) + 36));
  *v31 = v25;
  v31[1] = v27;
  return sub_10003D17C(v11, v29, &qword_1011A2198, &qword_100EE1B10);
}

uint64_t sub_10077E468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011A21C0, &qword_100EE1BC8);
  v128 = *(v4 - 8);
  v129 = v4;
  __chkstk_darwin();
  v6 = &v91 - v5;
  v106 = type metadata accessor for CircularProgressView.LineStyle();
  v104 = *(v106 - 8);
  __chkstk_darwin();
  v108 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10010FC20(&qword_1011A21C8, &qword_100EE1BD0);
  __chkstk_darwin();
  v122 = &v91 - v8;
  v113 = sub_10010FC20(&qword_1011A21D0, &qword_100EE1BD8);
  __chkstk_darwin();
  v115 = &v91 - v9;
  v123 = sub_10010FC20(&qword_1011A21D8, &qword_100EE1BE0);
  __chkstk_darwin();
  v116 = &v91 - v10;
  v11 = sub_10010FC20(&qword_1011A21E0, &qword_100EE1BE8);
  v117 = *(v11 - 8);
  v118 = v11;
  __chkstk_darwin();
  v125 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v124 = &v91 - v13;
  v114 = type metadata accessor for DynamicTypeSize();
  v112 = *(v114 - 8);
  __chkstk_darwin();
  v111 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v91 - v15;
  __chkstk_darwin();
  v102 = &v91 - v16;
  __chkstk_darwin();
  v120 = &v91 - v17;
  __chkstk_darwin();
  v105 = &v91 - v18;
  __chkstk_darwin();
  v101 = &v91 - v19;
  v98 = sub_10010FC20(&qword_1011A21E8, &qword_100EE1BF0);
  v97 = *(v98 - 8);
  __chkstk_darwin();
  v96 = &v91 - v20;
  v95 = sub_10010FC20(&qword_1011A21F0, &qword_100EE1BF8);
  __chkstk_darwin();
  v99 = &v91 - v21;
  v119 = sub_10010FC20(&qword_1011A21F8, &qword_100EE1C00);
  __chkstk_darwin();
  v100 = &v91 - v22;
  v110 = sub_10010FC20(&qword_1011A2200, &unk_100EE1C08);
  v109 = *(v110 - 8);
  __chkstk_darwin();
  v121 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v127 = &v91 - v24;
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v26 = (&v91 - v25);
  v27 = type metadata accessor for PreviewPlaybackController.Context(0);
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v126 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v30 = *(a1 + 8);
  sub_10012BF2C(*a1, v30);
  if (v32 == -1)
  {
    goto LABEL_12;
  }

  v94 = v6;
  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  sub_10012BF2C(v31, v30);
  if (v33 == 255)
  {
    goto LABEL_12;
  }

  if (v33 == 1)
  {
    v34 = 1;
    if ((*(a1 + 17) & 1) != 0 || !v30)
    {
      return (*(v128 + 56))(a2, v34, 1, v129);
    }

    goto LABEL_10;
  }

  if (!v30)
  {
LABEL_12:
    v34 = 1;
    return (*(v128 + 56))(a2, v34, 1, v129);
  }

LABEL_10:
  v93 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v26);

  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1000095E8(v26, &unk_10119E440, &qword_100EDD2E0);
    v34 = 1;
    a2 = v93;
  }

  else
  {
    sub_100780BE4(v26, v126);
    if (qword_10117FCE8 != -1)
    {
      swift_once();
    }

    *&v130 = qword_1011A2008;
    sub_100561980();

    v36 = Color.init<A>(_:)();
    v37 = *(a1 + 16);
    v92 = v36;
    if (v37 == 2)
    {
      Player.NowPlayingObserver.isSharedListeningSession.getter();
    }

    sub_10012BF2C(v31, v30);
    v38 = Image.init(systemName:)();
    v39 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    if (qword_10117FD18 != -1)
    {
      swift_once();
    }

    v41 = qword_101219540;
    v42 = swift_getKeyPath();
    *&v130 = v38;
    *(&v130 + 1) = KeyPath;
    *&v131 = v39;
    *(&v131 + 1) = v42;
    *&v132 = v41;
    v91 = v38;
    v43 = qword_10117FD20;

    if (v43 != -1)
    {
      swift_once();
    }

    sub_10010FC20(&qword_101196750, &qword_100EDBCC0);
    sub_1005963C0();
    v44 = v96;
    View.fontWeight(_:)();

    if (qword_10117FCF0 != -1)
    {
      swift_once();
    }

    v45 = qword_1011A2010;
    v46 = v99;
    (*(v97 + 32))(v99, v44, v98);
    *(v46 + *(v95 + 36)) = v45;
    v97 = v45;

    v47 = static Animation.easeIn.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v48 = v100;
    v49 = &v100[*(v119 + 36)];
    v50 = sub_10010FC20(&qword_1011A21A8, &qword_100EE1B68);
    static Published.subscript.getter((v49 + *(v50 + 36)));

    *v49 = v47;
    sub_10003D17C(v46, v48, &qword_1011A21F0, &qword_100EE1BF8);
    v51 = type metadata accessor for PreviewOverlay.ArtworkVariant(0);
    v52 = v105;
    v98 = a1 + *(v51 + 36);
    sub_10056CABC(v105);
    v53 = enum case for DynamicTypeSize.accessibility3(_:);
    v54 = v112;
    v56 = v112 + 104;
    v55 = *(v112 + 13);
    v57 = v120;
    v58 = v114;
    (v55)(v120, enum case for DynamicTypeSize.accessibility3(_:), v114);
    v59 = static DynamicTypeSize.< infix(_:_:)();
    v60 = *(v54 + 1);
    v60(v57, v58);
    v60(v52, v58);
    LODWORD(v95) = v53;
    LODWORD(v96) = enum case for DynamicTypeSize.large(_:);
    if (v59)
    {
      v61 = enum case for DynamicTypeSize.large(_:);
    }

    else
    {
      v61 = v53;
    }

    v62 = v101;
    v112 = v55;
    v99 = v56;
    (v55)(v101, v61, v58);
    sub_100780C48();
    View.dynamicTypeSize(_:)();
    v60(v62, v58);
    sub_1000095E8(v48, &qword_1011A21F8, &qword_100EE1C00);
    if (qword_10117FCE0 != -1)
    {
      swift_once();
    }

    (*(v104 + 104))(v108, enum case for CircularProgressView.LineStyle.round(_:), v106);

    LOBYTE(v130) = 0;
    v63 = v122;
    CircularProgressView.init(value:trackColor:lineWidth:lineStyle:)();
    *(v63 + *(v107 + 36)) = static Color.white.getter();
    v64 = v102;
    sub_10056CABC(v102);
    v65 = v95;
    v66 = v112;
    (v112)(v52, v95, v58);
    LODWORD(v119) = static DynamicTypeSize.< infix(_:_:)();
    v60(v52, v58);
    v60(v64, v58);
    v67 = v103;
    sub_10056CABC(v103);
    v66(v52, v65, v58);
    v68 = v66;
    static DynamicTypeSize.< infix(_:_:)();
    v60(v52, v58);
    v60(v67, v58);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v69 = v115;
    sub_10003D17C(v122, v115, &qword_1011A21C8, &qword_100EE1BD0);
    v70 = (v69 + *(v113 + 36));
    v71 = v131;
    *v70 = v130;
    v70[1] = v71;
    v70[2] = v132;
    v72 = v116;
    sub_10003D17C(v69, v116, &qword_1011A21D0, &qword_100EE1BD8);
    *(v72 + *(v123 + 36)) = v97;

    sub_10056CABC(v52);
    v73 = v120;
    v74 = v65;
    v75 = v65;
    v76 = v60;
    v68(v120, v74, v58);
    LOBYTE(v69) = static DynamicTypeSize.< infix(_:_:)();
    v60(v73, v58);
    v60(v52, v58);
    if (v69)
    {
      v77 = v96;
    }

    else
    {
      v77 = v75;
    }

    v78 = v111;
    v68(v111, v77, v58);
    sub_100780DF4();
    v79 = v124;
    View.dynamicTypeSize(_:)();
    v76(v78, v58);
    sub_1000095E8(v72, &qword_1011A21D8, &qword_100EE1BE0);
    v80 = v109;
    v123 = *(v109 + 16);
    v81 = v121;
    v82 = v110;
    (v123)(v121, v127, v110);
    v84 = v117;
    v83 = v118;
    v85 = *(v117 + 16);
    v85(v125, v79, v118);
    v86 = v94;
    *v94 = v92;
    v87 = sub_10010FC20(&qword_1011A2240, &qword_100EE1C88);
    (v123)(v86 + *(v87 + 48), v81, v82);
    v88 = v125;
    v85((v86 + *(v87 + 64)), v125, v83);
    v89 = *(v84 + 8);

    v89(v124, v83);
    v90 = *(v80 + 8);
    v90(v127, v82);
    sub_100132630(v126);
    v89(v88, v83);
    v90(v121, v82);

    a2 = v93;
    sub_10003D17C(v86, v93, &qword_1011A21C0, &qword_100EE1BC8);
    v34 = 0;
  }

  return (*(v128 + 56))(a2, v34, 1, v129);
}

uint64_t sub_10077F65C()
{
  sub_1005954F4();
  UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(235, 235, 245, 0.6);
  result = Color.init(_:)();
  qword_1011A2000 = result;
  return result;
}

uint64_t sub_10077F6AC(__n128 a1)
{
  result = static Color.clear.getter();
  qword_1011A2008 = result;
  return result;
}

void sub_10077F6CC()
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn.getter();
  v0 = AnyTransition.animation(_:)();

  qword_1011A2010 = v0;
}

uint64_t sub_10077F728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v38 = a2;
  v3 = sub_10010FC20(&qword_1011A2248, &qword_100EE1C90);
  __chkstk_darwin();
  v5 = &v31 - v4;
  v36 = sub_10010FC20(&qword_1011A2250, &qword_100EE1C98);
  __chkstk_darwin();
  v7 = &v31 - v6;
  v37 = sub_10010FC20(&qword_1011A2258, &qword_100EE1CA0);
  __chkstk_darwin();
  v9 = &v31 - v8;
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v11 = (&v31 - v10);
  v12 = type metadata accessor for PreviewPlaybackController.Context(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + 8);
  if (!v17 || (v18 = v16, v33 = *v14, v34 = v14, sub_10012BF2C(v33, v17), v19 == -1))
  {
LABEL_5:
    if (qword_10117FD08 != -1)
    {
      swift_once();
    }

    v20 = qword_1011A2028;
    v21 = sub_10010FC20(&qword_1011A2260, &qword_100EE1CA8);
    (*(*(v21 - 8) + 16))(v5, v35, v21);
    *&v5[*(v3 + 36)] = v20;
    sub_1000089F8(v5, v7, &qword_1011A2248, &qword_100EE1C90);
    swift_storeEnumTagMultiPayload();
    sub_100781068();
    sub_100781290();

    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v5, &qword_1011A2248, &qword_100EE1C90);
  }

  v31 = v9;
  v32 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_10119E440, &qword_100EDD2E0);
    v3 = v32;
    goto LABEL_5;
  }

  sub_100780BE4(v11, v18);
  v23 = sub_10010FC20(&qword_1011A2260, &qword_100EE1CA8);
  v24 = v31;
  (*(*(v23 - 8) + 16))(v31, v35, v23);
  *(v24 + *(sub_10010FC20(&qword_1011A2288, &qword_100EE1CB8) + 36)) = 0;
  if (qword_10117FD08 != -1)
  {
    swift_once();
  }

  v25 = qword_1011A2028;
  *(v24 + *(sub_10010FC20(&qword_1011A2278, &qword_100EE1CB0) + 36)) = v25;

  v26 = static Alignment.center.getter();
  v28 = v27;
  v29 = (v24 + *(v37 + 36));
  sub_10077FC70(v33, v17, v34, v18, v29);
  v30 = &v29[*(sub_10010FC20(&qword_1011A22A0, &qword_100EE1CC0) + 36)];
  *v30 = v26;
  v30[1] = v28;
  sub_1000A9950(v24, v7);
  swift_storeEnumTagMultiPayload();
  sub_100781068();
  sub_100781290();
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v24, &qword_1011A2258, &qword_100EE1CA0);
  return sub_100132630(v18);
}

uint64_t sub_10077FC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X3>, _BYTE *a5@<X8>)
{
  v87 = a4;
  v101 = a5;
  v90 = type metadata accessor for CircularProgressView.LineStyle();
  v88 = *(v90 - 8);
  __chkstk_darwin();
  v89 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = type metadata accessor for CircularProgressView();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v106 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = sub_10010FC20(&qword_1011A22B0, &qword_100EE1CC8);
  __chkstk_darwin();
  v97 = &v77[-v11];
  v12 = sub_10010FC20(&qword_1011A22B8, &qword_100EE1CD0);
  v99 = *(v12 - 8);
  v100 = v12;
  __chkstk_darwin();
  v98 = &v77[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v108 = &v77[-v14];
  v15 = type metadata accessor for DynamicTypeSize();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v94 = &v77[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v86 = &v77[-v18];
  __chkstk_darwin();
  v85 = &v77[-v19];
  __chkstk_darwin();
  v21 = &v77[-v20];
  __chkstk_darwin();
  v23 = &v77[-v22];
  __chkstk_darwin();
  v84 = &v77[-v24];
  v102 = sub_10010FC20(&qword_1011A21E8, &qword_100EE1BF0);
  v81 = *(v102 - 8);
  __chkstk_darwin();
  v79 = &v77[-v25];
  v104 = sub_10010FC20(&qword_1011A22C0, &qword_100EE1CD8);
  __chkstk_darwin();
  v82 = &v77[-v26];
  v93 = sub_10010FC20(&qword_1011A22C8, &qword_100EE1CE0);
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v91 = &v77[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v28 = *(a3 + 16);
  v105 = v21;
  v109 = &v77[-v29];
  v103 = a3;
  v80 = v23;
  if (v28 == 2)
  {
    Player.NowPlayingObserver.isSharedListeningSession.getter();
  }

  v83 = v15;
  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  sub_10012BF2C(a1, a2);
  v30 = Image.init(systemName:)();
  v31 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  if (qword_10117FD18 != -1)
  {
    swift_once();
  }

  v33 = qword_101219540;
  v34 = swift_getKeyPath();
  *&v110 = v30;
  *(&v110 + 1) = KeyPath;
  *&v111 = v31;
  *(&v111 + 1) = v34;
  *&v112 = v33;
  v35 = qword_10117FD20;

  if (v35 != -1)
  {
    swift_once();
  }

  sub_10010FC20(&qword_101196750, &qword_100EDBCC0);
  sub_1005963C0();
  v36 = v79;
  View.fontWeight(_:)();

  v37 = static Animation.easeIn.getter();
  v38 = v103;
  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v82;
  v40 = &v82[*(v104 + 36)];
  v41 = sub_10010FC20(&qword_1011A21A8, &qword_100EE1B68);
  static Published.subscript.getter((v40 + *(v41 + 36)));

  *v40 = v37;
  v81[4](v39, v36, v102);
  v42 = type metadata accessor for PreviewOverlay.TrackNumberVariant(0);
  v43 = v80;
  v102 = v38 + *(v42 + 32);
  sub_10056CABC(v80);
  v44 = enum case for DynamicTypeSize.accessibility3(_:);
  v45 = *(v16 + 104);
  v46 = v105;
  v47 = v83;
  (v45)(v105, enum case for DynamicTypeSize.accessibility3(_:), v83);
  v48 = static DynamicTypeSize.< infix(_:_:)();
  v49 = *(v16 + 8);
  v49(v46, v47);
  v49(v43, v47);
  LODWORD(v79) = v44;
  v78 = enum case for DynamicTypeSize.large(_:);
  if (v48)
  {
    v50 = enum case for DynamicTypeSize.large(_:);
  }

  else
  {
    v50 = v44;
  }

  v51 = v84;
  v81 = v45;
  v103 = v16 + 104;
  (v45)(v84, v50, v47);
  sub_100781374();
  View.dynamicTypeSize(_:)();
  v49(v51, v47);
  sub_1000095E8(v39, &qword_1011A22C0, &qword_100EE1CD8);
  if (qword_10117FD10 != -1)
  {
    swift_once();
  }

  (*(v88 + 104))(v89, enum case for CircularProgressView.LineStyle.round(_:), v90);

  LOBYTE(v110) = 0;
  CircularProgressView.init(value:trackColor:lineWidth:lineStyle:)();
  v52 = v85;
  sub_10056CABC(v85);
  v53 = v79;
  v54 = v81;
  (v81)(v43, v79, v47);
  LODWORD(v104) = static DynamicTypeSize.< infix(_:_:)();
  v49(v43, v47);
  v49(v52, v47);
  v55 = v86;
  sub_10056CABC(v86);
  v54(v43, v53, v47);
  v56 = v54;
  static DynamicTypeSize.< infix(_:_:)();
  v49(v43, v47);
  v49(v55, v47);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v57 = v97;
  (*(v95 + 32))(v97, v106, v96);
  v58 = (v57 + *(v107 + 36));
  v59 = v111;
  *v58 = v110;
  v58[1] = v59;
  v58[2] = v112;
  sub_10056CABC(v43);
  v60 = v105;
  v54(v105, v53, v47);
  LOBYTE(v54) = static DynamicTypeSize.< infix(_:_:)();
  v49(v60, v47);
  v49(v43, v47);
  if (v54)
  {
    v61 = v78;
  }

  else
  {
    v61 = v53;
  }

  v62 = v94;
  v56(v94, v61, v47);
  sub_100781468();
  v63 = v108;
  View.dynamicTypeSize(_:)();
  v49(v62, v47);
  sub_1000095E8(v57, &qword_1011A22B0, &qword_100EE1CC8);
  v64 = v92;
  v65 = *(v92 + 16);
  v66 = v91;
  v67 = v93;
  v65(v91, v109, v93);
  v69 = v98;
  v68 = v99;
  v107 = *(v99 + 16);
  v70 = v63;
  v71 = v100;
  (v107)(v98, v70, v100);
  v72 = v101;
  v65(v101, v66, v67);
  v73 = sub_10010FC20(&qword_1011A22E0, &qword_100EE1CE8);
  (v107)(&v72[*(v73 + 48)], v69, v71);
  v74 = *(v68 + 8);
  v74(v108, v71);
  v75 = *(v64 + 8);
  v75(v109, v67);
  v74(v69, v71);
  return (v75)(v66, v67);
}

void sub_100780994()
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  Animation.delay(_:)();

  v0 = AnyTransition.animation(_:)();

  qword_1011A2018 = v0;
}

void sub_100780A14()
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  v0 = AnyTransition.animation(_:)();

  qword_1011A2020 = v0;
}

void sub_100780A78()
{
  if (qword_10117FCF8 != -1)
  {
    swift_once();
  }

  v0 = qword_10117FD00;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = static AnyTransition.asymmetric(insertion:removal:)();

  qword_1011A2028 = v1;
}

uint64_t sub_100780B44()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  result = Color.init(_:)();
  qword_1011A2030 = result;
  return result;
}

void *sub_100780BA4()
{
  result = static Font.caption.getter();
  qword_101219540 = result;
  return result;
}

uint64_t sub_100780BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewPlaybackController.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100780C48()
{
  result = qword_1011A2208;
  if (!qword_1011A2208)
  {
    sub_1001109D0(&qword_1011A21F8, &qword_100EE1C00);
    sub_100780D00();
    sub_100020674(&qword_1011A2218, &qword_1011A21A8, &qword_100EE1B68, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2208);
  }

  return result;
}

unint64_t sub_100780D00()
{
  result = qword_1011A2210;
  if (!qword_1011A2210)
  {
    sub_1001109D0(&qword_1011A21F0, &qword_100EE1BF8);
    sub_1001109D0(&qword_101196750, &qword_100EDBCC0);
    sub_1005963C0();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_101185858, &qword_10119A1A0, &qword_100EC1180, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2210);
  }

  return result;
}

unint64_t sub_100780DF4()
{
  result = qword_1011A2220;
  if (!qword_1011A2220)
  {
    sub_1001109D0(&qword_1011A21D8, &qword_100EE1BE0);
    sub_100780EAC();
    sub_100020674(&qword_101185858, &qword_10119A1A0, &qword_100EC1180, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2220);
  }

  return result;
}

unint64_t sub_100780EAC()
{
  result = qword_1011A2228;
  if (!qword_1011A2228)
  {
    sub_1001109D0(&qword_1011A21D0, &qword_100EE1BD8);
    sub_100780F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2228);
  }

  return result;
}

unint64_t sub_100780F38()
{
  result = qword_1011A2230;
  if (!qword_1011A2230)
  {
    sub_1001109D0(&qword_1011A21C8, &qword_100EE1BD0);
    sub_100781020(&qword_1011A2238, &type metadata accessor for CircularProgressView, &protocol conformance descriptor for CircularProgressView);
    sub_100020674(&unk_101199EA0, &qword_1011879C8, &qword_100EE1C80, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2230);
  }

  return result;
}

uint64_t sub_100781020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100781068()
{
  result = qword_1011A2268;
  if (!qword_1011A2268)
  {
    sub_1001109D0(&qword_1011A2258, &qword_100EE1CA0);
    sub_100781120();
    sub_100020674(&qword_1011A2298, &qword_1011A22A0, &qword_100EE1CC0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2268);
  }

  return result;
}

unint64_t sub_100781120()
{
  result = qword_1011A2270;
  if (!qword_1011A2270)
  {
    sub_1001109D0(&qword_1011A2278, &qword_100EE1CB0);
    sub_1007811D8();
    sub_100020674(&qword_101185858, &qword_10119A1A0, &qword_100EC1180, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2270);
  }

  return result;
}

unint64_t sub_1007811D8()
{
  result = qword_1011A2280;
  if (!qword_1011A2280)
  {
    sub_1001109D0(&qword_1011A2288, &qword_100EE1CB8);
    sub_100020674(&qword_1011A2290, &qword_1011A2260, &qword_100EE1CA8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2280);
  }

  return result;
}

unint64_t sub_100781290()
{
  result = qword_1011A22A8;
  if (!qword_1011A22A8)
  {
    sub_1001109D0(&qword_1011A2248, &qword_100EE1C90);
    sub_100020674(&qword_1011A2290, &qword_1011A2260, &qword_100EE1CA8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100020674(&qword_101185858, &qword_10119A1A0, &qword_100EC1180, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A22A8);
  }

  return result;
}

unint64_t sub_100781374()
{
  result = qword_1011A22D0;
  if (!qword_1011A22D0)
  {
    sub_1001109D0(&qword_1011A22C0, &qword_100EE1CD8);
    sub_1001109D0(&qword_101196750, &qword_100EDBCC0);
    sub_1005963C0();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A2218, &qword_1011A21A8, &qword_100EE1B68, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A22D0);
  }

  return result;
}

unint64_t sub_100781468()
{
  result = qword_1011A22D8;
  if (!qword_1011A22D8)
  {
    sub_1001109D0(&qword_1011A22B0, &qword_100EE1CC8);
    sub_100781020(&qword_1011A2238, &type metadata accessor for CircularProgressView, &protocol conformance descriptor for CircularProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A22D8);
  }

  return result;
}

unint64_t sub_100781524()
{
  result = qword_1011A22E8;
  if (!qword_1011A22E8)
  {
    sub_1001109D0(&qword_1011A21B0, &qword_100EE1BB8);
    sub_1007815DC();
    sub_100020674(&qword_1011A2310, &qword_1011A21B8, &qword_100EE1BC0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A22E8);
  }

  return result;
}

unint64_t sub_1007815DC()
{
  result = qword_1011A22F0;
  if (!qword_1011A22F0)
  {
    sub_1001109D0(&qword_1011A2198, &qword_100EE1B10);
    sub_100781694();
    sub_100020674(&qword_1011879E0, &qword_1011879E8, &qword_100EE1CF0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A22F0);
  }

  return result;
}

unint64_t sub_100781694()
{
  result = qword_1011A22F8;
  if (!qword_1011A22F8)
  {
    sub_1001109D0(&qword_1011A2190, &qword_100EE1B08);
    sub_10078174C();
    sub_100020674(&qword_1011A2218, &qword_1011A21A8, &qword_100EE1B68, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A22F8);
  }

  return result;
}

unint64_t sub_10078174C()
{
  result = qword_1011A2300;
  if (!qword_1011A2300)
  {
    sub_1001109D0(&qword_1011A2188, &qword_100EE1B00);
    sub_100020674(&qword_1011A2308, &qword_1011A21A0, &qword_100EE1B18, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2300);
  }

  return result;
}

unint64_t sub_100781804()
{
  result = qword_1011A2318;
  if (!qword_1011A2318)
  {
    sub_1001109D0(&qword_1011A2320, &qword_100EE1CF8);
    sub_100781068();
    sub_100781290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2318);
  }

  return result;
}

void sub_100781890()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v41 - v10;
  type metadata accessor for AttributeContainer();
  __chkstk_darwin();
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsText + 8);
  if (v16)
  {
    v41 = v13;
    v42 = v12;
    v44 = v11;
    v17 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsText);
    v18 = objc_opt_self();
    v46 = v7;
    v47 = v6;
    v19 = v18;

    v20 = [v19 defaultParagraphStyle];
    [v20 mutableCopy];
    v45 = v9;

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100009F78(0, &qword_101194D60, NSMutableParagraphStyle_ptr);
    swift_dynamicCast();
    v21 = v48;
    v43 = v2;
    v22 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsFont);
    [v22 _scaledValueForValue:6.0];
    [v21 setParagraphSpacing:?];
    v23 = String._bridgeToObjectiveC()();
    v24 = [v23 _isNaturallyRTL];

    if (v24)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    [v21 setAlignment:v25];
    AttributeContainer.init()();
    v49 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor);
    v26 = v49;
    sub_1001D29B8();
    v27 = v26;
    AttributeContainer.subscript.setter();
    v49 = v22;
    sub_10016D0B4();
    v28 = v22;
    AttributeContainer.subscript.setter();
    v49 = v21;
    sub_100784C5C();
    v29 = v21;
    AttributeContainer.subscript.setter();
    v49 = v17;
    v50 = v16;
    v30 = v44;
    sub_10010FC20(&qword_10119FB28, "E\v");
    swift_allocObject();

    MarkupRenderer.init(_:)();
    dispatch thunk of MarkupRenderer.attributedString.getter();

    v31 = v43;
    (*(v3 + 104))(v5, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v43);
    AttributedString.mergeAttributes(_:mergePolicy:)();
    (*(v3 + 8))(v5, v31);
    v32 = sub_100783138();
    [v32 setContentOffset:{0.0, 0.0}];

    v33 = sub_100783210();
    sub_100009F78(0, &unk_101189D70, NSAttributedString_ptr);
    v34 = v46;
    v35 = v47;
    (*(v46 + 16))(v45, v30, v47);
    v36 = NSAttributedString.init(_:)();
    [v33 setAttributedText:v36];

    [*(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView) setHidden:0];
    LOBYTE(v49) = 6;
    v37 = sub_100025CE0();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v37) & 1) != 0 && (v38 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController)) != 0)
    {
      v39 = [v38 view];
      if (!v39)
      {
        __break(1u);
        return;
      }

      v40 = v39;

      [v40 setHidden:1];

      v29 = v40;
    }

    else
    {
    }

    (*(v34 + 8))(v30, v35);
    (*(v41 + 8))(v15, v42);
  }
}

uint64_t sub_100781E38(uint64_t a1)
{
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
  swift_beginAccess();
  sub_100784BEC(a1, v1 + v5);
  swift_endAccess();
  v6 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController);
  if (v6)
  {
    sub_1007848EC(v1 + v5, v4);
    v7 = *((swift_isaMask & *v6) + 0x3A8);
    v8 = v6;
    v7(v4);
  }

  return sub_1000095E8(a1, &qword_101189A18, &unk_100EE1DA0);
}

void sub_100781F6C()
{
  v1 = sub_100783210();
  v2 = [v1 attributedText];

  if (v2)
  {
    v6 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v2];
    v3 = [v2 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100784020();

    sub_100364270(v4);

    type metadata accessor for Key(0);
    sub_10065AAEC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 setAttributes:isa range:{0, objc_msgSend(v2, "length")}];

    [*(v0 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView) setAttributedText:v6];
    sub_100783BB0();
  }
}

void sub_1007820F8(char a1)
{
  v2 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_shouldShowReportConcernButton;
  v3 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_shouldShowReportConcernButton);
  *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_shouldShowReportConcernButton) = a1;
  if (v3 != (a1 & 1))
  {
    v4 = v1;
    v5 = sub_1007832A4();
    [v5 setHidden:(*(v4 + v2) & 1) == 0];

    sub_100783BB0();
    LOBYTE(v15) = 6;
    v6 = sub_100025CE0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v6))
    {
      v7 = *(v4 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController);
      if (v7)
      {
        v8 = *(v4 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___reportConcernButton);
        UIView.Shadow.init(color:opacity:radius:offset:)(v8, &v12, 20.0, 0.0, 30.0, 0.0);
        v15 = v12;
        v16 = v13;
        v17 = v14;
        v9 = *((swift_isaMask & *v7) + 0x258);
        v10 = v7;
        v11 = v8;
        v9(&v15);
      }
    }
  }
}

void sub_10078223C()
{
  v1 = v0;
  v68.receiver = v0;
  v68.super_class = type metadata accessor for StaticLyricsContentViewController(0);
  objc_msgSendSuper2(&v68, "viewDidLoad");
  __dst[0] = 6;
  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    type metadata accessor for SyncedLyricsViewController(0);
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = SyncedLyricsViewController.Specs.static.unsafeMutableAddressor();
    memcpy(__dst, v4, 0x2B0uLL);
    v5 = *((swift_isaMask & *v3) + 0x1E0);
    sub_1002AD8C8(__dst, v67);
    v5(__dst);
    v6 = v3;
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      [v7 setClipsToBounds:1];

      v9 = *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController];
      *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController] = v3;
      v10 = v6;

      [v1 addChildViewController:v10];
      v11 = [v1 view];
      if (v11)
      {
        v12 = v11;
        v13 = [v10 view];

        if (v13)
        {
          [v12 addSubview:v13];

          v14 = sub_100783210();
          v15 = [objc_opt_self() clearColor];
          [v14 setBackgroundColor:v15];

          v16 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView;
          [*&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView] setShowsHorizontalScrollIndicator:0];
          [*&v1[v16] setEditable:0];
          [*&v1[v16] setSelectable:0];
          v17 = [*&v1[v16] textContainer];
          [v17 setLineFragmentPadding:0.0];

          [*&v1[v16] setTranslatesAutoresizingMaskIntoConstraints:0];
          v18 = [v1 view];
          if (v18)
          {
            v19 = v18;
            [v18 addSubview:*&v1[v16]];

            return;
          }

          goto LABEL_20;
        }

        goto LABEL_18;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = sub_100783138();
  [v20 setClipsToBounds:1];

  v21 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView;
  [*&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView] setMultipleTouchEnabled:0];
  [*&v1[v21] setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [v1 view];
  if (!v22)
  {
    goto LABEL_15;
  }

  v23 = v22;
  [v22 addSubview:*&v1[v21]];

  v24 = sub_100783210();
  v25 = [objc_opt_self() clearColor];
  [v24 setBackgroundColor:v25];

  v26 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView;
  [*&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView] setShowsHorizontalScrollIndicator:0];
  [*&v1[v26] setEditable:0];
  [*&v1[v26] setSelectable:0];
  v27 = [*&v1[v26] textContainer];
  [v27 setLineFragmentPadding:0.0];

  [*&v1[v26] setScrollEnabled:0];
  v28 = *&v1[v21];
  v29 = sub_100783284();
  [v28 addSubview:v29];

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBEE90;
  v31 = [*&v1[v21] topAnchor];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v30 + 32) = v35;
  v36 = [*&v1[v21] bottomAnchor];
  v37 = [v1 view];
  if (!v37)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = v37;
  v39 = [v37 bottomAnchor];

  v40 = [v36 constraintEqualToAnchor:v39];
  *(v30 + 40) = v40;
  v41 = [*&v1[v21] leadingAnchor];
  v42 = [v1 view];
  if (!v42)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = v42;
  v44 = [v42 leadingAnchor];

  v45 = [v41 constraintEqualToAnchor:v44];
  *(v30 + 48) = v45;
  v46 = [*&v1[v21] trailingAnchor];
  v47 = [v1 view];
  if (!v47)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v48 = v47;
  v49 = [v47 trailingAnchor];

  v50 = [v46 constraintEqualToAnchor:v49];
  *(v30 + 56) = v50;
  v51 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___stackView;
  v52 = [*&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___stackView] topAnchor];
  v53 = [*&v1[v21] topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v30 + 64) = v54;
  v55 = [*&v1[v51] bottomAnchor];
  v56 = [*&v1[v21] bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v30 + 72) = v57;
  v58 = [*&v1[v51] leadingAnchor];
  v59 = [*&v1[v21] leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v30 + 80) = v60;
  v61 = [*&v1[v51] trailingAnchor];
  v62 = [*&v1[v21] trailingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v30 + 88) = v63;
  v64 = [*&v1[v51] widthAnchor];
  v65 = [*&v1[v21] widthAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v30 + 96) = v66;
  Array<A>.activate()(v30);

  sub_100783BB0();
}

void sub_100782B08()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for StaticLyricsContentViewController(0);
  objc_msgSendSuper2(&v27, "viewDidLayoutSubviews");
  sub_100783BB0();
  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController];
    if (v3)
    {
      v4 = [v3 view];
      if (!v4)
      {
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      v5 = v4;
      v6 = [v1 view];
      if (!v6)
      {
LABEL_11:
        __break(1u);
        return;
      }

      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 setFrame:{v9, v11, v13, v15}];
    }

    v16 = sub_100783210();
    v17 = [v1 view];
    if (v17)
    {
      v18 = v17;
      [v17 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      [v16 setFrame:{v20, v22, v24, v26}];
      return;
    }

    __break(1u);
    goto LABEL_10;
  }
}

void sub_100782D34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10010FC20(&unk_101189A00, &unk_100EC5500);
  __chkstk_darwin();
  v7 = &v28[-v6];
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  __chkstk_darwin();
  v9 = &v28[-v8];
  if (a1)
  {
    *(v2 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyrics) = a1;
    swift_retain_n();

    v28[15] = 6;
    v10 = sub_100025CE0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v10))
    {
      sub_1007848EC(a2, v9);
      sub_100781E38(v9);
      v11 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController;
      v12 = *(v2 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController);
      if (v12)
      {
        v13 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
        v14 = *((swift_isaMask & *v12) + 0x4C8);
        v15 = v12;
        v14(a1, a2, v7);

        sub_1000095E8(v7, &unk_101189A00, &unk_100EC5500);
      }

      else
      {
      }

      v25 = sub_100783210();
      [v25 setHidden:1];

      v26 = *(v3 + v11);
      if (!v26)
      {
        goto LABEL_11;
      }

      v27 = [v26 view];
      if (!v27)
      {
        __break(1u);
        return;
      }

      v22 = v27;
      [v27 setHidden:0];
    }

    else
    {

      (*(*a1 + 384))(v16);
      v17 = sub_100784020();
      v18 = [objc_allocWithZone(NSMutableAttributedString) init];
      sub_100364270(v17);

      v19 = objc_allocWithZone(NSAttributedString);
      v20 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_10065AAEC();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v22 = [v19 initWithString:v20 attributes:isa];

      [v18 appendAttributedString:v22];
      v23 = sub_100783138();
      [v23 setContentOffset:{0.0, 0.0}];

      v24 = sub_100783210();
      [v24 setAttributedText:v18];

      [*(v3 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView) setHidden:0];
      sub_100783BB0();
    }

LABEL_11:
  }
}

id sub_100783138()
{
  v1 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView;
  v2 = *&v0[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView];
LABEL_5:
    v16 = v2;
    return v3;
  }

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [objc_allocWithZone(UIScrollView) initWithFrame:{v7, v9, v11, v13}];
    v15 = *&v0[v1];
    *&v0[v1] = v14;
    v3 = v14;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100783210()
{
  v1 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView);
  }

  else
  {
    v4 = [objc_allocWithZone(UITextView) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1007832C4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100783328(uint64_t a1)
{
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v2 = &v15[-v1];
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v3 = type metadata accessor for UIButton.Configuration();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [objc_opt_self() buttonWithType:0];
  static UIButton.Configuration.tinted()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIButton.Configuration.title.setter();
  v8 = [objc_opt_self() clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v9 = [v7 titleLabel];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v10 setFont:v11];
  }

  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  UIButton.configuration.setter();
  [v7 setHidden:1];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_100009F78(0, &qword_101183A18, UIButton_ptr);
  ControlEventHandling<>.on(_:handler:)(64, sub_100784ACC, v12, v13);

  (*(v4 + 8))(v6, v3);
  return v7;
}

void sub_1007836B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100783704();
  }
}

double sub_100783704()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v29 - v2;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v5 = &v29 - v4;
  v6 = type metadata accessor for Lyrics.Translation(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  *&result = __chkstk_darwin().n128_u64[0];
  v12 = &v29 - v11;
  v13 = *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_songIdentifier + 8];
  if (v13)
  {
    v30 = *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_songIdentifier];
    v14 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
    swift_beginAccess();
    sub_1007848EC(&v1[v14], v12);
    if ((*(v7 + 48))(v12, 1, v6))
    {

      sub_1000095E8(v12, &qword_101189A18, &unk_100EE1DA0);
      v15 = 0;
      v16 = 0;
    }

    else
    {
      sub_100784A0C(v12, v9);

      sub_1000095E8(v12, &qword_101189A18, &unk_100EE1DA0);
      v17 = &v9[*(v6 + 20)];
      v15 = *v17;
      v16 = *(v17 + 1);

      sub_100784A70(v9);
    }

    v18 = v3;
    v37 = v15;
    v38 = v16;
    v39 = 0u;
    v40 = 0u;
    v19 = Lyrics.ReportConcernData.dictionaryRepresentation()();

    v20 = sub_100363D38(v19);

    memset(v34, 0, sizeof(v34));
    v35 = 0;
    v36 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v1, v34, v31);
    v21 = type metadata accessor for Actions.MetricsReportingContext(0);
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v22 = swift_allocObject();
    v23 = v30;
    *(v22 + 16) = v30;
    *(v22 + 24) = v13;
    *(v22 + 32) = 2;
    *(v22 + 40) = v20;
    sub_10012B828(v31, v22 + 48);
    Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v23, v13, 1735290739, 0xE400000000000000, 40, variable initialization expression of _NSRange.NSRangeIterator.current, 0, &unk_100EBF410, v32, v22, v5);
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
    type metadata accessor for MainActor();

    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = &protocol witness table for MainActor;
    v27 = v32[1];
    v28 = v32[2];
    *(v26 + 32) = v32[0];
    *(v26 + 48) = v27;
    *(v26 + 64) = v28;
    *(v26 + 80) = v33;
    sub_10086E3AC(0, 0, v18, &unk_100EE1DB8, v26);
  }

  return result;
}

void sub_100783BB0()
{
  v1 = v0;
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v3 = &v40[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v40[-v4];
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100783210();
  [*&v0[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsFont] _bodyLeading];
  v12 = v11;
  v13 = &v0[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_contentMargins];
  if (v0[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_contentMargins + 8])
  {
    v14 = [v0 view];
    if (!v14)
    {
      __break(1u);
      goto LABEL_23;
    }

    v15 = v14;
    [v14 layoutMargins];
    v17 = v16;
  }

  else
  {
    v17 = *v13;
  }

  v18 = sub_1007832A4();
  v19 = [v18 isHidden];

  if (v19)
  {
    v20 = 80.0;
  }

  else
  {
    v20 = 0.0;
  }

  if (v13[1])
  {
    v21 = [v1 view];
    if (v21)
    {
      v22 = v21;
      [v21 layoutMargins];
      v24 = v23;

      v25 = v24;
      goto LABEL_12;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v25 = *v13;
LABEL_12:
  [v10 setTextContainerInset:{48.0 - v12, v17, v20, v25}];

  v40[0] = 6;
  v26 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v26))
  {
    v27 = *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController];
    if (v27)
    {
      v28 = *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___reportConcernButton];
      v29 = v27;
      v30 = 0;
      if (![v28 isHidden])
      {
LABEL_17:
        v34 = (*((swift_isaMask & *v29) + 0x1E8))(v40);
        *(v35 + 64) = v30;
        v34(v40, 0);

        return;
      }

      v31 = [v1 view];
      if (v31)
      {
        v32 = v31;
        [v31 layoutMargins];
        v30 = v33;

        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v36 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___reportConcernButton;
    v37 = *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___reportConcernButton];
    UIButton.configuration.getter();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000095E8(v5, &unk_101183AB0, &qword_100EBF4D0);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      UIButton.Configuration.contentInsets.setter();
      v38 = *&v1[v36];
      (*(v7 + 16))(v3, v9, v6);
      (*(v7 + 56))(v3, 0, 1, v6);
      v39 = v38;
      UIButton.configuration.setter();

      (*(v7 + 8))(v9, v6);
    }
  }
}

unint64_t sub_100784020()
{
  v1 = [objc_opt_self() defaultParagraphStyle];
  [v1 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100009F78(0, &qword_101194D60, NSMutableParagraphStyle_ptr);
  swift_dynamicCast();
  v2 = *(v0 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsFont);
  [v2 _scaledValueForValue:6.0];
  [v15 setParagraphSpacing:?];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v3 _isNaturallyRTL];

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [v15 setAlignment:v5];
  sub_10010FC20(&qword_1011A23A8, &qword_100EE1D88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  *(inited + 32) = NSForegroundColorAttributeName;
  v7 = *(v0 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor);
  *(inited + 40) = v7;
  *(inited + 48) = NSFontAttributeName;
  *(inited + 56) = v2;
  *(inited + 64) = NSParagraphStyleAttributeName;
  *(inited + 72) = v15;
  v8 = NSForegroundColorAttributeName;
  v9 = v7;
  v10 = NSFontAttributeName;
  v11 = v2;
  v12 = NSParagraphStyleAttributeName;
  v13 = sub_10010C988(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A23B0, &unk_100EE1D90);
  swift_arrayDestroy();
  return v13;
}

id sub_10078421C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsText];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyrics] = 0;
  v8 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
  v9 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor;
  *&v4[v10] = [objc_opt_self() labelColor];
  v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_shouldShowReportConcernButton] = 0;
  v11 = &v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_songIdentifier];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_contentMargins];
  *v12 = 0;
  v12[8] = 1;
  v13 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsFont;
  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  *&v4[v13] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView] = 0;
  *&v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView] = 0;
  *&v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController] = 0;
  *&v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___reportConcernButton] = 0;
  if (a2)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v4;
  v17.super_class = type metadata accessor for StaticLyricsContentViewController(0);
  v15 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", v14, a3);

  return v15;
}

id sub_10078445C(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsText];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyrics] = 0;
  v5 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
  v6 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor;
  *&v2[v7] = [objc_opt_self() labelColor];
  v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_shouldShowReportConcernButton] = 0;
  v8 = &v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_songIdentifier];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_contentMargins];
  *v9 = 0;
  v9[8] = 1;
  v10 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsFont;
  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  *&v2[v10] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView] = 0;
  *&v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView] = 0;
  *&v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___stackView] = 0;
  *&v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController] = 0;
  *&v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___reportConcernButton] = 0;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for StaticLyricsContentViewController(0);
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

id sub_100784638()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StaticLyricsContentViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StaticLyricsContentViewController(uint64_t a1)
{
  result = qword_1011A2390;
  if (!qword_1011A2390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007847B8(uint64_t a1)
{
  sub_100784894(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100784894(uint64_t a1)
{
  if (!qword_1011A23A0)
  {
    type metadata accessor for Lyrics.Translation(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A23A0);
    }
  }
}

uint64_t sub_1007848EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10078495C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1001E73E8(a1, v4, v5, v1 + 32);
}

uint64_t sub_100784A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100784A70(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100784AD4()
{
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6D0;
  *(v0 + 32) = sub_100783210();
  *(v0 + 40) = sub_1007832A4();
  v1 = objc_allocWithZone(UIStackView);
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArrangedSubviews:isa];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAlignment:0];
  [v3 setAxis:1];
  [v3 setSpacing:20.0];
  return v3;
}

uint64_t sub_100784BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101189A18, &unk_100EE1DA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100784C5C()
{
  result = qword_1011A23B8;
  if (!qword_1011A23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A23B8);
  }

  return result;
}

void sub_100784D64()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_dimmedBackgroundColor);
}

id sub_100784DC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingRepeatButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100784E88(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100784EA0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 4;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100784EC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100784F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100784FC4(uint64_t a1)
{
  result = type metadata accessor for DragDropToQueue.Origin(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100785060(uint64_t a1)
{
  result = type metadata accessor for GenericMusicItem();
  if (v2 <= 0x3F)
  {
    result = sub_100188C90();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_1007850E4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      while (v6 + v9 <= *(a4 + 16))
      {
        v10 = *(type metadata accessor for DragDropToQueue(0) - 8);
        v11 = *(v10 + 72);
        result = sub_100789D44(a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * (v6 + v9 - 1), v8);
        if (a3 + v9 == 1)
        {
          v12 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += v11;
        --v9;
        if (!(v6 + v9))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_9:
    v12 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10078525C(uint64_t a1)
{
  result = sub_1007852B4(&qword_1011A2540, type metadata accessor for DragDropToQueue.Origin, &unk_100EE1E94);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1007852B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007852FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 700) = a5;
  *(v5 + 432) = a2;
  *(v5 + 440) = a4;
  *(v5 + 424) = a1;
  *(v5 + 448) = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  *(v5 + 456) = swift_task_alloc();
  *(v5 + 464) = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v5 + 472) = swift_task_alloc();
  v6 = type metadata accessor for DragDropToQueue(0);
  *(v5 + 480) = v6;
  *(v5 + 488) = *(v6 - 8);
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 512) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 520) = v8;
  *(v5 + 528) = v7;

  return _swift_task_switch(sub_100785468, v8, v7);
}

void sub_100785468()
{
  v100 = v0;
  v1 = *(v0 + 432);
  v2 = *(v1 + 16);
  if (!v2)
  {

    sub_10078A448();
    swift_allocError();
    *v55 = 0;
    swift_willThrow();
LABEL_30:

    v56 = *(v0 + 8);
LABEL_31:

    v56();
    return;
  }

  v3 = *(v0 + 488);
  v4 = sub_1003ADD0C(*(v1 + 16), 0);
  v5 = *(v3 + 80);
  *(v0 + 696) = v5;
  v6 = (v5 + 32) & ~v5;
  v7 = sub_1007850E4(v99, v4 + v6, v2, v1);

  if (v7 != v2)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (qword_10117F5F8 != -1)
  {
LABEL_51:
    swift_once();
  }

  v8 = (*(*qword_101218AC8 + 432))();
  if (!v8 || (v9 = v8, v10 = [v8 tracklist], v9, v11 = objc_msgSend(v10, "playingItem"), v10, !v11))
  {
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_1012186C8);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Nothing playing adding first selected item to playImmediately", v40, 2u);
    }

    if (v4[2])
    {
      sub_100789D44(v4 + v6, *(v0 + 504));
      v41 = v4[2];
      if (v41)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 416) = v4;
        if (!isUniquelyReferenced_nonNull_native || (v41 - 1) > v4[3] >> 1)
        {
          v4 = sub_100498EE8(isUniquelyReferenced_nonNull_native, v41, 1, v4);
          *(v0 + 416) = v4;
        }

        *(v0 + 536) = v4;
        v43 = *(v0 + 504);
        v45 = *(v0 + 464);
        v44 = *(v0 + 472);
        v46 = *(v0 + 456);
        sub_1003BB984(0, 1, 0);
        v47 = *(v43 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
        *v46 = v47;
        swift_storeEnumTagMultiPayload();
        v98 = 0;
        memset(v97, 0, sizeof(v97));
        sub_10010FC20(&unk_101183930, &unk_100EC1690);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_100EBDC20;
        *(v48 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v48 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v48 + 32) = 0x706F724467617244;
        *(v48 + 40) = 0xEA00000000006F54;
        *(v48 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v48 + 104) = &off_10109DFB0;
        *(v48 + 72) = 3;
        v49 = v47;
        v50 = static Player.CommandIssuer<>.combining(_:)(v48);
        v52 = v51;

        v99[3] = &type metadata for Player.CommandIssuerIdentity;
        v99[4] = &protocol witness table for Player.CommandIssuerIdentity;
        v99[0] = v50;
        v99[1] = v52;
        PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v46, v97, 3, 0, 0, 1, 0, 1, v44, 0, v99);
        *(v44 + *(v45 + 20)) = 5;
        if (qword_10117F608 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_54;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_54:
    swift_once();
LABEL_26:
    v53 = swift_task_alloc();
    *(v0 + 544) = v53;
    *v53 = v0;
    v53[1] = sub_100786164;
    v54 = *(v0 + 472);

    PlaybackController.add(_:route:)(v54, 0);
    return;
  }

  *(v0 + 560) = v4;
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 568) = qword_101218AD8;
  v12 = v4[2];
  *(v0 + 576) = v12;
  if (!v12)
  {

    if (*(v0 + 700))
    {
      Player.InsertCommand.Location.notice.getter(*(v0 + 424));
      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v68 = *(v0 + 424);
    sub_100309AD8(0);
    v69 = type metadata accessor for Notice(0);
    (*(*(v69 - 8) + 56))(v68, v57, 1, v69);

    v56 = *(v0 + 8);
    goto LABEL_31;
  }

  v13 = *(v0 + 696);
  v14 = *(v0 + 440);
  *(v0 + 701) = 0;
  *(v0 + 584) = 0u;
  v15 = *(v0 + 560);
  if (!*(v15 + 16))
  {
    __break(1u);
    return;
  }

  sub_100789D44(v15 + ((v13 + 32) & ~v13), *(v0 + 496));
  v16 = *(v0 + 496);
  if (v14 == 4)
  {
    v17 = *(v0 + 701);
    v18 = *(v16 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v19 = Player.InsertCommand.init(location:playbackIntent:)(2, v18);
    v21 = v20;
    *(v0 + 616) = v19;
    *(v0 + 624) = v20;
    v22 = Player.InsertCommand.init(location:playbackIntent:)(0, v18);
    v24 = v23;
    *(v0 + 632) = v22;
    *(v0 + 640) = v23;
    if (v17 == 1)
    {
      *(v0 + 280) = &type metadata for Player.InsertCommand;
      *(v0 + 288) = &protocol witness table for Player.InsertCommand;
      *(v0 + 256) = v19;
      *(v0 + 264) = v21;
      v25 = v18;
      v26 = v19;
      sub_1001DFD48(v21);
      v27 = PlaybackController.canPerform(_:)((v0 + 256));
      sub_10000959C((v0 + 256));
      if (!v27)
      {
        v28 = *(v0 + 496);
        v29 = *(v0 + 480);
        *(v0 + 320) = &type metadata for Player.InsertCommand;
        *(v0 + 328) = &protocol witness table for Player.InsertCommand;
        *(v0 + 296) = v26;
        *(v0 + 304) = v21;
        v30 = *(v28 + *(v29 + 20));
        sub_10010FC20(&unk_101183930, &unk_100EC1690);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_100EBDC20;
        *(v31 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v31 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v31 + 32) = 0x706F724467617244;
        *(v31 + 40) = 0xEA00000000006F54;
        *(v31 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v31 + 104) = &off_10109DFB0;
        *(v31 + 72) = v30;
        v32 = v26;
        sub_1001DFD48(v21);
        v33 = static Player.CommandIssuer<>.combining(_:)(v31);
        v35 = v34;

        *(v0 + 360) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 368) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 336) = v33;
        *(v0 + 344) = v35;
        v36 = swift_task_alloc();
        *(v0 + 648) = v36;
        *v36 = v0;
        v36[1] = sub_100787550;

        PlaybackController.performWhenAvailable(_:issuer:timeout:)(v0 + 296, v0 + 336, 1.0);
        return;
      }
    }

    else
    {
      v70 = v18;
    }

    *(v0 + 40) = &type metadata for Player.InsertCommand;
    *(v0 + 48) = &protocol witness table for Player.InsertCommand;
    *(v0 + 16) = v19;
    *(v0 + 24) = v21;
    v71 = v19;
    sub_1001DFD48(v21);
    v72 = PlaybackController.canPerform(_:)((v0 + 16));
    sub_10000959C((v0 + 16));
    if (v72)
    {
      v73 = *(v0 + 496);
      v74 = *(v0 + 480);
      *(v0 + 200) = &type metadata for Player.InsertCommand;
      *(v0 + 208) = &protocol witness table for Player.InsertCommand;
      *(v0 + 176) = v71;
      *(v0 + 184) = v21;
      v75 = *(v73 + *(v74 + 20));
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_100EBDC20;
      *(v76 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v76 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v76 + 32) = 0x706F724467617244;
      *(v76 + 40) = 0xEA00000000006F54;
      *(v76 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v76 + 104) = &off_10109DFB0;
      *(v76 + 72) = v75;
      v77 = v71;
      sub_1001DFD48(v21);
      v78 = static Player.CommandIssuer<>.combining(_:)(v76);
      v80 = v79;

      *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 216) = v78;
      *(v0 + 224) = v80;
      v81 = swift_task_alloc();
      *(v0 + 664) = v81;
      *v81 = v0;
      v81[1] = sub_100787F68;
      v82 = v0 + 176;
      v83 = v0 + 216;
LABEL_46:

      PlaybackController.perform(_:route:intent:issuer:)(v82, 0, 0, v83);
      return;
    }

    *(v0 + 80) = &type metadata for Player.InsertCommand;
    *(v0 + 88) = &protocol witness table for Player.InsertCommand;
    *(v0 + 56) = v22;
    *(v0 + 64) = v24;
    v84 = v22;
    sub_1001DFD48(v24);
    v85 = PlaybackController.canPerform(_:)((v0 + 56));
    sub_10000959C((v0 + 56));
    if (v85)
    {
      v86 = *(v0 + 496);
      v87 = *(v0 + 480);
      *(v0 + 120) = &type metadata for Player.InsertCommand;
      *(v0 + 128) = &protocol witness table for Player.InsertCommand;
      *(v0 + 96) = v84;
      *(v0 + 104) = v24;
      v88 = *(v86 + *(v87 + 20));
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_100EBDC20;
      *(v89 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v89 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v89 + 32) = 0x706F724467617244;
      *(v89 + 40) = 0xEA00000000006F54;
      *(v89 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v89 + 104) = &off_10109DFB0;
      *(v89 + 72) = v88;
      v90 = v84;
      sub_1001DFD48(v24);
      v91 = static Player.CommandIssuer<>.combining(_:)(v89);
      v93 = v92;

      *(v0 + 160) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 168) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 136) = v91;
      *(v0 + 144) = v93;
      v94 = swift_task_alloc();
      *(v0 + 680) = v94;
      *v94 = v0;
      v94[1] = sub_100788970;
      v82 = v0 + 96;
      v83 = v0 + 136;
      goto LABEL_46;
    }

    v95 = *(v0 + 496);

    sub_10078A448();
    swift_allocError();
    *v96 = 1;
    swift_willThrow();
    sub_100309AD8(0);

    sub_100309AD8(v24);
    sub_100309AD8(v21);
    sub_10078A3E8(v95, type metadata accessor for DragDropToQueue);
    goto LABEL_30;
  }

  v58 = *(v0 + 480);
  v59 = *(v0 + 440);
  sub_1001DFD48(v59);
  sub_100309AD8(0);
  v60 = *(v16 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
  v61 = *(v16 + *(v58 + 20));
  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_100EBDC20;
  *(v62 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v62 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v62 + 32) = 0x706F724467617244;
  *(v62 + 40) = 0xEA00000000006F54;
  *(v62 + 96) = &type metadata for DragDropIntentIdentifier;
  *(v62 + 104) = &off_10109DFB0;
  *(v62 + 72) = v61;
  sub_1001DFD48(v59);
  v63 = static Player.CommandIssuer<>.combining(_:)(v62);
  v65 = v64;

  *(v0 + 400) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 408) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 376) = v63;
  *(v0 + 384) = v65;
  v66 = swift_task_alloc();
  *(v0 + 600) = v66;
  *v66 = v0;
  v66[1] = sub_100786B78;
  v67 = *(v0 + 440);

  PlaybackController.insert(_:location:issuer:)(v60, v67, v0 + 376);
}

uint64_t sub_100786164()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {

    v3 = *(v2 + 528);
    v4 = *(v2 + 520);
    v5 = sub_10078939C;
  }

  else
  {
    v3 = *(v2 + 528);
    v4 = *(v2 + 520);
    v5 = sub_100786288;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100786288()
{
  v1 = *(v0 + 504);
  sub_10078A3E8(*(v0 + 472), type metadata accessor for PlaybackIntentDescriptor);
  sub_10078A3E8(v1, type metadata accessor for DragDropToQueue);
  result = *(v0 + 536);
  *(v0 + 560) = result;
  if (qword_10117F608 != -1)
  {
    v69 = result;
    swift_once();
    result = v69;
  }

  *(v0 + 568) = qword_101218AD8;
  v3 = *(result + 16);
  *(v0 + 576) = v3;
  if (!v3)
  {

    if (*(v0 + 700))
    {
      Player.InsertCommand.Location.notice.getter(*(v0 + 424));
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v39 = *(v0 + 424);
    sub_100309AD8(2);
    v40 = type metadata accessor for Notice(0);
    (*(*(v40 - 8) + 56))(v39, v28, 1, v40);

    v41 = *(v0 + 8);
LABEL_18:

    return v41();
  }

  v4 = *(v0 + 696);
  v5 = *(v0 + 440);
  *(v0 + 701) = 0;
  *(v0 + 592) = 0;
  *(v0 + 584) = 2;
  v6 = *(v0 + 560);
  if (!*(v6 + 16))
  {
    __break(1u);
    return result;
  }

  sub_100789D44(v6 + ((v4 + 32) & ~v4), *(v0 + 496));
  v7 = *(v0 + 496);
  if (v5 == 4)
  {
    v8 = *(v0 + 701);
    v9 = *(v7 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v10 = Player.InsertCommand.init(location:playbackIntent:)(2, v9);
    v12 = v11;
    *(v0 + 616) = v10;
    *(v0 + 624) = v11;
    v13 = Player.InsertCommand.init(location:playbackIntent:)(0, v9);
    v15 = v14;
    *(v0 + 632) = v13;
    *(v0 + 640) = v14;
    if (v8 == 1)
    {
      *(v0 + 280) = &type metadata for Player.InsertCommand;
      *(v0 + 288) = &protocol witness table for Player.InsertCommand;
      *(v0 + 256) = v10;
      *(v0 + 264) = v12;
      v16 = v9;
      v17 = v10;
      sub_1001DFD48(v12);
      v18 = PlaybackController.canPerform(_:)((v0 + 256));
      sub_10000959C((v0 + 256));
      if (!v18)
      {
        v19 = *(v0 + 496);
        v20 = *(v0 + 480);
        *(v0 + 320) = &type metadata for Player.InsertCommand;
        *(v0 + 328) = &protocol witness table for Player.InsertCommand;
        *(v0 + 296) = v17;
        *(v0 + 304) = v12;
        v21 = *(v19 + *(v20 + 20));
        sub_10010FC20(&unk_101183930, &unk_100EC1690);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_100EBDC20;
        *(v22 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v22 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v22 + 32) = 0x706F724467617244;
        *(v22 + 40) = 0xEA00000000006F54;
        *(v22 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v22 + 104) = &off_10109DFB0;
        *(v22 + 72) = v21;
        v23 = v17;
        sub_1001DFD48(v12);
        v24 = static Player.CommandIssuer<>.combining(_:)(v22);
        v26 = v25;

        *(v0 + 360) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 368) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 336) = v24;
        *(v0 + 344) = v26;
        v27 = swift_task_alloc();
        *(v0 + 648) = v27;
        *v27 = v0;
        v27[1] = sub_100787550;

        return PlaybackController.performWhenAvailable(_:issuer:timeout:)(v0 + 296, v0 + 336, 1.0);
      }
    }

    else
    {
      v42 = v9;
    }

    *(v0 + 40) = &type metadata for Player.InsertCommand;
    *(v0 + 48) = &protocol witness table for Player.InsertCommand;
    *(v0 + 16) = v10;
    *(v0 + 24) = v12;
    v43 = v10;
    sub_1001DFD48(v12);
    v44 = PlaybackController.canPerform(_:)((v0 + 16));
    sub_10000959C((v0 + 16));
    if (v44)
    {
      v45 = *(v0 + 496);
      v46 = *(v0 + 480);
      *(v0 + 200) = &type metadata for Player.InsertCommand;
      *(v0 + 208) = &protocol witness table for Player.InsertCommand;
      *(v0 + 176) = v43;
      *(v0 + 184) = v12;
      v47 = *(v45 + *(v46 + 20));
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_100EBDC20;
      *(v48 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v48 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v48 + 32) = 0x706F724467617244;
      *(v48 + 40) = 0xEA00000000006F54;
      *(v48 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v48 + 104) = &off_10109DFB0;
      *(v48 + 72) = v47;
      v49 = v43;
      sub_1001DFD48(v12);
      v50 = static Player.CommandIssuer<>.combining(_:)(v48);
      v52 = v51;

      *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 216) = v50;
      *(v0 + 224) = v52;
      v53 = swift_task_alloc();
      *(v0 + 664) = v53;
      *v53 = v0;
      v53[1] = sub_100787F68;
      v54 = v0 + 176;
      v55 = v0 + 216;
LABEL_26:

      return PlaybackController.perform(_:route:intent:issuer:)(v54, 0, 0, v55);
    }

    *(v0 + 80) = &type metadata for Player.InsertCommand;
    *(v0 + 88) = &protocol witness table for Player.InsertCommand;
    *(v0 + 56) = v13;
    *(v0 + 64) = v15;
    v56 = v13;
    sub_1001DFD48(v15);
    v57 = PlaybackController.canPerform(_:)((v0 + 56));
    sub_10000959C((v0 + 56));
    if (v57)
    {
      v58 = *(v0 + 496);
      v59 = *(v0 + 480);
      *(v0 + 120) = &type metadata for Player.InsertCommand;
      *(v0 + 128) = &protocol witness table for Player.InsertCommand;
      *(v0 + 96) = v56;
      *(v0 + 104) = v15;
      v60 = *(v58 + *(v59 + 20));
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_100EBDC20;
      *(v61 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v61 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v61 + 32) = 0x706F724467617244;
      *(v61 + 40) = 0xEA00000000006F54;
      *(v61 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v61 + 104) = &off_10109DFB0;
      *(v61 + 72) = v60;
      v62 = v56;
      sub_1001DFD48(v15);
      v63 = static Player.CommandIssuer<>.combining(_:)(v61);
      v65 = v64;

      *(v0 + 160) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 168) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 136) = v63;
      *(v0 + 144) = v65;
      v66 = swift_task_alloc();
      *(v0 + 680) = v66;
      *v66 = v0;
      v66[1] = sub_100788970;
      v54 = v0 + 96;
      v55 = v0 + 136;
      goto LABEL_26;
    }

    v67 = *(v0 + 496);

    sub_10078A448();
    swift_allocError();
    *v68 = 1;
    swift_willThrow();
    sub_100309AD8(2);

    sub_100309AD8(v15);
    sub_100309AD8(v12);
    sub_10078A3E8(v67, type metadata accessor for DragDropToQueue);

    v41 = *(v0 + 8);
    goto LABEL_18;
  }

  v29 = *(v0 + 480);
  v30 = *(v0 + 440);
  sub_1001DFD48(v30);
  sub_100309AD8(2);
  v31 = *(v7 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
  v32 = *(v7 + *(v29 + 20));
  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100EBDC20;
  *(v33 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v33 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v33 + 32) = 0x706F724467617244;
  *(v33 + 40) = 0xEA00000000006F54;
  *(v33 + 96) = &type metadata for DragDropIntentIdentifier;
  *(v33 + 104) = &off_10109DFB0;
  *(v33 + 72) = v32;
  sub_1001DFD48(v30);
  v34 = static Player.CommandIssuer<>.combining(_:)(v33);
  v36 = v35;

  *(v0 + 400) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 408) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 376) = v34;
  *(v0 + 384) = v36;
  v37 = swift_task_alloc();
  *(v0 + 600) = v37;
  *v37 = v0;
  v37[1] = sub_100786B78;
  v38 = *(v0 + 440);

  return PlaybackController.insert(_:location:issuer:)(v31, v38, v0 + 376);
}

uint64_t sub_100786B78()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  sub_10078A49C(*(v2 + 440));
  if (v0)
  {

    v3 = *(v2 + 528);
    v4 = *(v2 + 520);
    v5 = sub_10078946C;
  }

  else
  {
    sub_100440B1C(v2 + 376);
    v3 = *(v2 + 528);
    v4 = *(v2 + 520);
    v5 = sub_100786CB8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100786CB8()
{
  result = sub_10078A3E8(*(v0 + 496), type metadata accessor for DragDropToQueue);
  v2 = *(v0 + 440);
  v3 = *(v0 + 592) + 1;
  if (v3 == *(v0 + 576))
  {

    if (*(v0 + 700) == 1)
    {
      Player.InsertCommand.Location.notice.getter(*(v0 + 424));
      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    v27 = *(v0 + 424);
    sub_100309AD8(v2);
    v28 = type metadata accessor for Notice(0);
    (*(*(v28 - 8) + 56))(v27, v4, 1, v28);

    v29 = *(v0 + 8);
    goto LABEL_13;
  }

  *(v0 + 592) = v3;
  *(v0 + 584) = v2;
  v5 = *(v0 + 560);
  if (v3 >= *(v5 + 16))
  {
    __break(1u);
    return result;
  }

  sub_100789D44(v5 + ((*(v0 + 696) + 32) & ~*(v0 + 696)) + *(*(v0 + 488) + 72) * v3, *(v0 + 496));
  if (v2 == 4)
  {
    v6 = *(v0 + 701);
    v7 = *(v0 + 496);
    v8 = *(v7 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v9 = Player.InsertCommand.init(location:playbackIntent:)(2, v8);
    v11 = v10;
    *(v0 + 616) = v9;
    *(v0 + 624) = v10;
    v12 = Player.InsertCommand.init(location:playbackIntent:)(0, v8);
    v14 = v13;
    *(v0 + 632) = v12;
    *(v0 + 640) = v13;
    if (v6 == 1)
    {
      *(v0 + 280) = &type metadata for Player.InsertCommand;
      *(v0 + 288) = &protocol witness table for Player.InsertCommand;
      *(v0 + 256) = v9;
      *(v0 + 264) = v11;
      v15 = v8;
      v16 = v9;
      sub_1001DFD48(v11);
      v17 = PlaybackController.canPerform(_:)((v0 + 256));
      sub_10000959C((v0 + 256));
      if (!v17)
      {
        v18 = *(v0 + 496);
        v19 = *(v0 + 480);
        *(v0 + 320) = &type metadata for Player.InsertCommand;
        *(v0 + 328) = &protocol witness table for Player.InsertCommand;
        *(v0 + 296) = v16;
        *(v0 + 304) = v11;
        v20 = *(v18 + *(v19 + 20));
        sub_10010FC20(&unk_101183930, &unk_100EC1690);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100EBDC20;
        *(v21 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v21 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v21 + 32) = 0x706F724467617244;
        *(v21 + 40) = 0xEA00000000006F54;
        *(v21 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v21 + 104) = &off_10109DFB0;
        *(v21 + 72) = v20;
        v22 = v16;
        sub_1001DFD48(v11);
        v23 = static Player.CommandIssuer<>.combining(_:)(v21);
        v25 = v24;

        *(v0 + 360) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 368) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 336) = v23;
        *(v0 + 344) = v25;
        v26 = swift_task_alloc();
        *(v0 + 648) = v26;
        *v26 = v0;
        v26[1] = sub_100787550;

        return PlaybackController.performWhenAvailable(_:issuer:timeout:)(v0 + 296, v0 + 336, 1.0);
      }
    }

    else
    {
      v41 = v8;
    }

    *(v0 + 40) = &type metadata for Player.InsertCommand;
    *(v0 + 48) = &protocol witness table for Player.InsertCommand;
    *(v0 + 16) = v9;
    *(v0 + 24) = v11;
    v42 = v9;
    sub_1001DFD48(v11);
    v43 = PlaybackController.canPerform(_:)((v0 + 16));
    sub_10000959C((v0 + 16));
    if (v43)
    {
      v44 = *(v0 + 496);
      v45 = *(v0 + 480);
      *(v0 + 200) = &type metadata for Player.InsertCommand;
      *(v0 + 208) = &protocol witness table for Player.InsertCommand;
      *(v0 + 176) = v42;
      *(v0 + 184) = v11;
      v46 = *(v44 + *(v45 + 20));
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_100EBDC20;
      *(v47 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v47 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v47 + 32) = 0x706F724467617244;
      *(v47 + 40) = 0xEA00000000006F54;
      *(v47 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v47 + 104) = &off_10109DFB0;
      *(v47 + 72) = v46;
      v48 = v42;
      sub_1001DFD48(v11);
      v49 = static Player.CommandIssuer<>.combining(_:)(v47);
      v51 = v50;

      *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 216) = v49;
      *(v0 + 224) = v51;
      v52 = swift_task_alloc();
      *(v0 + 664) = v52;
      *v52 = v0;
      v52[1] = sub_100787F68;
      v53 = v0 + 176;
      v54 = v0 + 216;
    }

    else
    {
      *(v0 + 80) = &type metadata for Player.InsertCommand;
      *(v0 + 88) = &protocol witness table for Player.InsertCommand;
      *(v0 + 56) = v12;
      *(v0 + 64) = v14;
      v55 = v12;
      sub_1001DFD48(v14);
      v56 = PlaybackController.canPerform(_:)((v0 + 56));
      sub_10000959C((v0 + 56));
      if (!v56)
      {
        v66 = *(v0 + 496);

        sub_10078A448();
        swift_allocError();
        *v67 = 1;
        swift_willThrow();
        sub_100309AD8(4);

        sub_100309AD8(v14);
        sub_100309AD8(v11);
        sub_10078A3E8(v66, type metadata accessor for DragDropToQueue);

        v29 = *(v0 + 8);
LABEL_13:

        return v29();
      }

      v57 = *(v0 + 496);
      v58 = *(v0 + 480);
      *(v0 + 120) = &type metadata for Player.InsertCommand;
      *(v0 + 128) = &protocol witness table for Player.InsertCommand;
      *(v0 + 96) = v55;
      *(v0 + 104) = v14;
      v59 = *(v57 + *(v58 + 20));
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100EBDC20;
      *(v60 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v60 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v60 + 32) = 0x706F724467617244;
      *(v60 + 40) = 0xEA00000000006F54;
      *(v60 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v60 + 104) = &off_10109DFB0;
      *(v60 + 72) = v59;
      v61 = v55;
      sub_1001DFD48(v14);
      v62 = static Player.CommandIssuer<>.combining(_:)(v60);
      v64 = v63;

      *(v0 + 160) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 168) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 136) = v62;
      *(v0 + 144) = v64;
      v65 = swift_task_alloc();
      *(v0 + 680) = v65;
      *v65 = v0;
      v65[1] = sub_100788970;
      v53 = v0 + 96;
      v54 = v0 + 136;
    }

    return PlaybackController.perform(_:route:intent:issuer:)(v53, 0, 0, v54);
  }

  else
  {
    v30 = *(v0 + 496);
    v31 = *(v0 + 480);
    v32 = *(v0 + 440);
    sub_1001DFD48(v32);
    sub_100309AD8(v2);
    v33 = *(v30 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v34 = *(v30 + *(v31 + 20));
    sub_10010FC20(&unk_101183930, &unk_100EC1690);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100EBDC20;
    *(v35 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v35 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v35 + 32) = 0x706F724467617244;
    *(v35 + 40) = 0xEA00000000006F54;
    *(v35 + 96) = &type metadata for DragDropIntentIdentifier;
    *(v35 + 104) = &off_10109DFB0;
    *(v35 + 72) = v34;
    sub_1001DFD48(v32);
    v36 = static Player.CommandIssuer<>.combining(_:)(v35);
    v38 = v37;

    *(v0 + 400) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 408) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 376) = v36;
    *(v0 + 384) = v38;
    v39 = swift_task_alloc();
    *(v0 + 600) = v39;
    *v39 = v0;
    v39[1] = sub_100786B78;
    v40 = *(v0 + 440);

    return PlaybackController.insert(_:location:issuer:)(v33, v40, v0 + 376);
  }
}

uint64_t sub_100787550(void *a1)
{
  v4 = *v2;
  *(*v2 + 656) = v1;

  if (v1)
  {

    v5 = v4[66];
    v6 = v4[65];
    v7 = sub_100789534;
  }

  else
  {

    sub_100440B1C((v4 + 42));
    sub_10000959C(v4 + 37);
    v5 = v4[66];
    v6 = v4[65];
    v7 = sub_100787694;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100787694()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 592);
  v5 = *(v0 + 576);
  v6 = *(v0 + 496);

  sub_100309AD8(v1);
  sub_100309AD8(v2);
  result = sub_10078A3E8(v6, type metadata accessor for DragDropToQueue);
  if (v4 + 1 == v5)
  {

    v8 = *(v0 + 584);
    if (*(v0 + 700))
    {
      Player.InsertCommand.Location.notice.getter(*(v0 + 424));
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v35 = *(v0 + 424);
    sub_100309AD8(v8);
    v36 = type metadata accessor for Notice(0);
    (*(*(v36 - 8) + 56))(v35, v9, 1, v36);

    v37 = *(v0 + 8);
    goto LABEL_13;
  }

  v10 = *(v0 + 584);
  v11 = *(v0 + 592) + 1;
  *(v0 + 701) = 1;
  *(v0 + 592) = v11;
  v12 = *(v0 + 560);
  if (v11 >= *(v12 + 16))
  {
    __break(1u);
    return result;
  }

  v13 = *(v0 + 440);
  sub_100789D44(v12 + ((*(v0 + 696) + 32) & ~*(v0 + 696)) + *(*(v0 + 488) + 72) * v11, *(v0 + 496));
  v14 = *(v0 + 496);
  if (v13 == 4)
  {
    v15 = *(v0 + 701);
    v16 = *(v14 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v17 = Player.InsertCommand.init(location:playbackIntent:)(2, v16);
    v19 = v18;
    *(v0 + 616) = v17;
    *(v0 + 624) = v18;
    v20 = Player.InsertCommand.init(location:playbackIntent:)(0, v16);
    v22 = v21;
    *(v0 + 632) = v20;
    *(v0 + 640) = v21;
    if (v15 == 1)
    {
      *(v0 + 280) = &type metadata for Player.InsertCommand;
      *(v0 + 288) = &protocol witness table for Player.InsertCommand;
      *(v0 + 256) = v17;
      *(v0 + 264) = v19;
      v23 = v16;
      v24 = v17;
      sub_1001DFD48(v19);
      v25 = PlaybackController.canPerform(_:)((v0 + 256));
      sub_10000959C((v0 + 256));
      if (!v25)
      {
        v26 = *(v0 + 496);
        v27 = *(v0 + 480);
        *(v0 + 320) = &type metadata for Player.InsertCommand;
        *(v0 + 328) = &protocol witness table for Player.InsertCommand;
        *(v0 + 296) = v24;
        *(v0 + 304) = v19;
        v28 = *(v26 + *(v27 + 20));
        sub_10010FC20(&unk_101183930, &unk_100EC1690);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_100EBDC20;
        *(v29 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v29 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v29 + 32) = 0x706F724467617244;
        *(v29 + 40) = 0xEA00000000006F54;
        *(v29 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v29 + 104) = &off_10109DFB0;
        *(v29 + 72) = v28;
        v30 = v24;
        sub_1001DFD48(v19);
        v31 = static Player.CommandIssuer<>.combining(_:)(v29);
        v33 = v32;

        *(v0 + 360) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 368) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 336) = v31;
        *(v0 + 344) = v33;
        v34 = swift_task_alloc();
        *(v0 + 648) = v34;
        *v34 = v0;
        v34[1] = sub_100787550;

        return PlaybackController.performWhenAvailable(_:issuer:timeout:)(v0 + 296, v0 + 336, 1.0);
      }
    }

    else
    {
      v48 = v16;
    }

    *(v0 + 40) = &type metadata for Player.InsertCommand;
    *(v0 + 48) = &protocol witness table for Player.InsertCommand;
    *(v0 + 16) = v17;
    *(v0 + 24) = v19;
    v49 = v17;
    sub_1001DFD48(v19);
    v50 = PlaybackController.canPerform(_:)((v0 + 16));
    sub_10000959C((v0 + 16));
    if (v50)
    {
      v51 = *(v0 + 496);
      v52 = *(v0 + 480);
      *(v0 + 200) = &type metadata for Player.InsertCommand;
      *(v0 + 208) = &protocol witness table for Player.InsertCommand;
      *(v0 + 176) = v49;
      *(v0 + 184) = v19;
      v53 = *(v51 + *(v52 + 20));
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100EBDC20;
      *(v54 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v54 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v54 + 32) = 0x706F724467617244;
      *(v54 + 40) = 0xEA00000000006F54;
      *(v54 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v54 + 104) = &off_10109DFB0;
      *(v54 + 72) = v53;
      v55 = v49;
      sub_1001DFD48(v19);
      v56 = static Player.CommandIssuer<>.combining(_:)(v54);
      v58 = v57;

      *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 216) = v56;
      *(v0 + 224) = v58;
      v59 = swift_task_alloc();
      *(v0 + 664) = v59;
      *v59 = v0;
      v59[1] = sub_100787F68;
      v60 = v0 + 176;
      v61 = v0 + 216;
    }

    else
    {
      *(v0 + 80) = &type metadata for Player.InsertCommand;
      *(v0 + 88) = &protocol witness table for Player.InsertCommand;
      *(v0 + 56) = v20;
      *(v0 + 64) = v22;
      v62 = v20;
      sub_1001DFD48(v22);
      v63 = PlaybackController.canPerform(_:)((v0 + 56));
      sub_10000959C((v0 + 56));
      if (!v63)
      {
        v73 = *(v0 + 496);

        sub_10078A448();
        swift_allocError();
        *v74 = 1;
        swift_willThrow();
        sub_100309AD8(v10);

        sub_100309AD8(v22);
        sub_100309AD8(v19);
        sub_10078A3E8(v73, type metadata accessor for DragDropToQueue);

        v37 = *(v0 + 8);
LABEL_13:

        return v37();
      }

      v64 = *(v0 + 496);
      v65 = *(v0 + 480);
      *(v0 + 120) = &type metadata for Player.InsertCommand;
      *(v0 + 128) = &protocol witness table for Player.InsertCommand;
      *(v0 + 96) = v62;
      *(v0 + 104) = v22;
      v66 = *(v64 + *(v65 + 20));
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_100EBDC20;
      *(v67 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v67 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v67 + 32) = 0x706F724467617244;
      *(v67 + 40) = 0xEA00000000006F54;
      *(v67 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v67 + 104) = &off_10109DFB0;
      *(v67 + 72) = v66;
      v68 = v62;
      sub_1001DFD48(v22);
      v69 = static Player.CommandIssuer<>.combining(_:)(v67);
      v71 = v70;

      *(v0 + 160) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 168) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 136) = v69;
      *(v0 + 144) = v71;
      v72 = swift_task_alloc();
      *(v0 + 680) = v72;
      *v72 = v0;
      v72[1] = sub_100788970;
      v60 = v0 + 96;
      v61 = v0 + 136;
    }

    return PlaybackController.perform(_:route:intent:issuer:)(v60, 0, 0, v61);
  }

  else
  {
    v38 = *(v0 + 480);
    v39 = *(v0 + 440);
    sub_1001DFD48(v39);
    sub_100309AD8(v10);
    v40 = *(v14 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v41 = *(v14 + *(v38 + 20));
    sub_10010FC20(&unk_101183930, &unk_100EC1690);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100EBDC20;
    *(v42 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v42 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v42 + 32) = 0x706F724467617244;
    *(v42 + 40) = 0xEA00000000006F54;
    *(v42 + 96) = &type metadata for DragDropIntentIdentifier;
    *(v42 + 104) = &off_10109DFB0;
    *(v42 + 72) = v41;
    sub_1001DFD48(v39);
    v43 = static Player.CommandIssuer<>.combining(_:)(v42);
    v45 = v44;

    *(v0 + 400) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 408) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 376) = v43;
    *(v0 + 384) = v45;
    v46 = swift_task_alloc();
    *(v0 + 600) = v46;
    *v46 = v0;
    v46[1] = sub_100786B78;
    v47 = *(v0 + 440);

    return PlaybackController.insert(_:location:issuer:)(v40, v47, v0 + 376);
  }
}

uint64_t sub_100787F68(void *a1)
{
  v4 = *v2;
  *(*v2 + 672) = v1;

  if (v1)
  {

    v5 = v4[66];
    v6 = v4[65];
    v7 = sub_100789634;
  }

  else
  {

    sub_100440B1C((v4 + 27));
    sub_10000959C(v4 + 22);
    v5 = v4[66];
    v6 = v4[65];
    v7 = sub_1007880AC;
  }

  return _swift_task_switch(v7, v6, v5);
}

void sub_1007880AC()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 616);
  v4 = *(v0 + 496);
  sub_100309AD8(*(v0 + 584));

  sub_100309AD8(v1);
  sub_10078A3E8(v4, type metadata accessor for DragDropToQueue);

  v5 = *(v0 + 624);
  v6 = *(v0 + 592) + 1;
  if (v6 == *(v0 + 576))
  {

    if (*(v0 + 700) == 1)
    {
      Player.InsertCommand.Location.notice.getter(*(v0 + 424));
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v31 = *(v0 + 424);
    sub_100309AD8(v5);
    v32 = type metadata accessor for Notice(0);
    (*(*(v32 - 8) + 56))(v31, v7, 1, v32);

    v33 = *(v0 + 8);
    goto LABEL_13;
  }

  *(v0 + 592) = v6;
  *(v0 + 584) = v5;
  v8 = *(v0 + 560);
  if (v6 >= *(v8 + 16))
  {
    __break(1u);
    return;
  }

  v9 = *(v0 + 440);
  sub_100789D44(v8 + ((*(v0 + 696) + 32) & ~*(v0 + 696)) + *(*(v0 + 488) + 72) * v6, *(v0 + 496));
  if (v9 == 4)
  {
    v10 = *(v0 + 701);
    v11 = *(v0 + 496);
    v12 = *(v11 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v13 = Player.InsertCommand.init(location:playbackIntent:)(2, v12);
    v15 = v14;
    *(v0 + 616) = v13;
    *(v0 + 624) = v14;
    v16 = Player.InsertCommand.init(location:playbackIntent:)(0, v12);
    v18 = v17;
    *(v0 + 632) = v16;
    *(v0 + 640) = v17;
    if (v10 == 1)
    {
      *(v0 + 280) = &type metadata for Player.InsertCommand;
      *(v0 + 288) = &protocol witness table for Player.InsertCommand;
      *(v0 + 256) = v13;
      *(v0 + 264) = v15;
      v19 = v12;
      v20 = v13;
      sub_1001DFD48(v15);
      v21 = PlaybackController.canPerform(_:)((v0 + 256));
      sub_10000959C((v0 + 256));
      if (!v21)
      {
        v22 = *(v0 + 496);
        v23 = *(v0 + 480);
        *(v0 + 320) = &type metadata for Player.InsertCommand;
        *(v0 + 328) = &protocol witness table for Player.InsertCommand;
        *(v0 + 296) = v20;
        *(v0 + 304) = v15;
        v24 = *(v22 + *(v23 + 20));
        sub_10010FC20(&unk_101183930, &unk_100EC1690);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_100EBDC20;
        *(v25 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v25 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v25 + 32) = 0x706F724467617244;
        *(v25 + 40) = 0xEA00000000006F54;
        *(v25 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v25 + 104) = &off_10109DFB0;
        *(v25 + 72) = v24;
        v26 = v20;
        sub_1001DFD48(v15);
        v27 = static Player.CommandIssuer<>.combining(_:)(v25);
        v29 = v28;

        *(v0 + 360) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 368) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 336) = v27;
        *(v0 + 344) = v29;
        v30 = swift_task_alloc();
        *(v0 + 648) = v30;
        *v30 = v0;
        v30[1] = sub_100787550;

        PlaybackController.performWhenAvailable(_:issuer:timeout:)(v0 + 296, v0 + 336, 1.0);
        return;
      }
    }

    else
    {
      v44 = v12;
    }

    *(v0 + 40) = &type metadata for Player.InsertCommand;
    *(v0 + 48) = &protocol witness table for Player.InsertCommand;
    *(v0 + 16) = v13;
    *(v0 + 24) = v15;
    v45 = v13;
    sub_1001DFD48(v15);
    v46 = PlaybackController.canPerform(_:)((v0 + 16));
    sub_10000959C((v0 + 16));
    if (v46)
    {
      v47 = *(v0 + 496);
      v48 = *(v0 + 480);
      *(v0 + 200) = &type metadata for Player.InsertCommand;
      *(v0 + 208) = &protocol witness table for Player.InsertCommand;
      *(v0 + 176) = v45;
      *(v0 + 184) = v15;
      v49 = *(v47 + *(v48 + 20));
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_100EBDC20;
      *(v50 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v50 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v50 + 32) = 0x706F724467617244;
      *(v50 + 40) = 0xEA00000000006F54;
      *(v50 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v50 + 104) = &off_10109DFB0;
      *(v50 + 72) = v49;
      v51 = v45;
      sub_1001DFD48(v15);
      v52 = static Player.CommandIssuer<>.combining(_:)(v50);
      v54 = v53;

      *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 216) = v52;
      *(v0 + 224) = v54;
      v55 = swift_task_alloc();
      *(v0 + 664) = v55;
      *v55 = v0;
      v55[1] = sub_100787F68;
      v56 = v0 + 176;
      v57 = v0 + 216;
    }

    else
    {
      *(v0 + 80) = &type metadata for Player.InsertCommand;
      *(v0 + 88) = &protocol witness table for Player.InsertCommand;
      *(v0 + 56) = v16;
      *(v0 + 64) = v18;
      v58 = v16;
      sub_1001DFD48(v18);
      v59 = PlaybackController.canPerform(_:)((v0 + 56));
      sub_10000959C((v0 + 56));
      if (!v59)
      {
        v69 = *(v0 + 496);

        sub_10078A448();
        swift_allocError();
        *v70 = 1;
        swift_willThrow();
        sub_100309AD8(v5);

        sub_100309AD8(v18);
        sub_100309AD8(v15);
        sub_10078A3E8(v69, type metadata accessor for DragDropToQueue);

        v33 = *(v0 + 8);
LABEL_13:

        v33();
        return;
      }

      v60 = *(v0 + 496);
      v61 = *(v0 + 480);
      *(v0 + 120) = &type metadata for Player.InsertCommand;
      *(v0 + 128) = &protocol witness table for Player.InsertCommand;
      *(v0 + 96) = v58;
      *(v0 + 104) = v18;
      v62 = *(v60 + *(v61 + 20));
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_100EBDC20;
      *(v63 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v63 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v63 + 32) = 0x706F724467617244;
      *(v63 + 40) = 0xEA00000000006F54;
      *(v63 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v63 + 104) = &off_10109DFB0;
      *(v63 + 72) = v62;
      v64 = v58;
      sub_1001DFD48(v18);
      v65 = static Player.CommandIssuer<>.combining(_:)(v63);
      v67 = v66;

      *(v0 + 160) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 168) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 136) = v65;
      *(v0 + 144) = v67;
      v68 = swift_task_alloc();
      *(v0 + 680) = v68;
      *v68 = v0;
      v68[1] = sub_100788970;
      v56 = v0 + 96;
      v57 = v0 + 136;
    }

    PlaybackController.perform(_:route:intent:issuer:)(v56, 0, 0, v57);
  }

  else
  {
    v34 = *(v0 + 496);
    v35 = *(v0 + 480);
    v36 = *(v0 + 440);
    sub_1001DFD48(v36);
    sub_100309AD8(v5);
    v37 = *(v34 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    LOBYTE(v34) = *(v34 + *(v35 + 20));
    sub_10010FC20(&unk_101183930, &unk_100EC1690);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100EBDC20;
    *(v38 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v38 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v38 + 32) = 0x706F724467617244;
    *(v38 + 40) = 0xEA00000000006F54;
    *(v38 + 96) = &type metadata for DragDropIntentIdentifier;
    *(v38 + 104) = &off_10109DFB0;
    *(v38 + 72) = v34;
    sub_1001DFD48(v36);
    v39 = static Player.CommandIssuer<>.combining(_:)(v38);
    v41 = v40;

    *(v0 + 400) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 408) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 376) = v39;
    *(v0 + 384) = v41;
    v42 = swift_task_alloc();
    *(v0 + 600) = v42;
    *v42 = v0;
    v42[1] = sub_100786B78;
    v43 = *(v0 + 440);

    PlaybackController.insert(_:location:issuer:)(v37, v43, v0 + 376);
  }
}

uint64_t sub_100788970(void *a1)
{
  v4 = *v2;
  *(*v2 + 688) = v1;

  if (v1)
  {

    v5 = v4[66];
    v6 = v4[65];
    v7 = sub_100789734;
  }

  else
  {

    sub_100440B1C((v4 + 17));
    sub_10000959C(v4 + 12);
    v5 = v4[66];
    v6 = v4[65];
    v7 = sub_100788AB4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100788AB4()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 616);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 496);

  sub_100309AD8(v1);
  sub_100309AD8(v4);

  result = sub_10078A3E8(v6, type metadata accessor for DragDropToQueue);
  if (v3 + 1 == v5)
  {

    v8 = *(v0 + 624);
    if (*(v0 + 700) == 1)
    {
      Player.InsertCommand.Location.notice.getter(*(v0 + 424));
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v34 = *(v0 + 424);
    sub_100309AD8(v8);
    v35 = type metadata accessor for Notice(0);
    (*(*(v35 - 8) + 56))(v34, v9, 1, v35);

    v36 = *(v0 + 8);
    goto LABEL_13;
  }

  v10 = *(v0 + 624);
  v11 = *(v0 + 592) + 1;
  *(v0 + 701) = 1;
  *(v0 + 592) = v11;
  *(v0 + 584) = v10;
  v12 = *(v0 + 560);
  if (v11 >= *(v12 + 16))
  {
    __break(1u);
    return result;
  }

  v13 = *(v0 + 440);
  sub_100789D44(v12 + ((*(v0 + 696) + 32) & ~*(v0 + 696)) + *(*(v0 + 488) + 72) * v11, *(v0 + 496));
  v14 = *(v0 + 496);
  if (v13 == 4)
  {
    v15 = *(v0 + 701);
    v16 = *(v14 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v17 = Player.InsertCommand.init(location:playbackIntent:)(2, v16);
    v19 = v18;
    *(v0 + 616) = v17;
    *(v0 + 624) = v18;
    v20 = Player.InsertCommand.init(location:playbackIntent:)(0, v16);
    *(v0 + 632) = v20;
    v74 = v21;
    *(v0 + 640) = v21;
    if (v15 == 1)
    {
      *(v0 + 280) = &type metadata for Player.InsertCommand;
      *(v0 + 288) = &protocol witness table for Player.InsertCommand;
      *(v0 + 256) = v17;
      *(v0 + 264) = v19;
      v22 = v16;
      v23 = v17;
      sub_1001DFD48(v19);
      v24 = PlaybackController.canPerform(_:)((v0 + 256));
      sub_10000959C((v0 + 256));
      if (!v24)
      {
        v25 = *(v0 + 496);
        v26 = *(v0 + 480);
        *(v0 + 320) = &type metadata for Player.InsertCommand;
        *(v0 + 328) = &protocol witness table for Player.InsertCommand;
        *(v0 + 296) = v23;
        *(v0 + 304) = v19;
        v27 = *(v25 + *(v26 + 20));
        sub_10010FC20(&unk_101183930, &unk_100EC1690);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100EBDC20;
        *(v28 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v28 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v28 + 32) = 0x706F724467617244;
        *(v28 + 40) = 0xEA00000000006F54;
        *(v28 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v28 + 104) = &off_10109DFB0;
        *(v28 + 72) = v27;
        v29 = v23;
        sub_1001DFD48(v19);
        v30 = static Player.CommandIssuer<>.combining(_:)(v28);
        v32 = v31;

        *(v0 + 360) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 368) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 336) = v30;
        *(v0 + 344) = v32;
        v33 = swift_task_alloc();
        *(v0 + 648) = v33;
        *v33 = v0;
        v33[1] = sub_100787550;

        return PlaybackController.performWhenAvailable(_:issuer:timeout:)(v0 + 296, v0 + 336, 1.0);
      }
    }

    else
    {
      v47 = v16;
    }

    *(v0 + 40) = &type metadata for Player.InsertCommand;
    *(v0 + 48) = &protocol witness table for Player.InsertCommand;
    *(v0 + 16) = v17;
    *(v0 + 24) = v19;
    v48 = v17;
    sub_1001DFD48(v19);
    v49 = PlaybackController.canPerform(_:)((v0 + 16));
    sub_10000959C((v0 + 16));
    if (v49)
    {
      v50 = *(v0 + 496);
      v51 = *(v0 + 480);
      *(v0 + 200) = &type metadata for Player.InsertCommand;
      *(v0 + 208) = &protocol witness table for Player.InsertCommand;
      *(v0 + 176) = v48;
      *(v0 + 184) = v19;
      v52 = *(v50 + *(v51 + 20));
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100EBDC20;
      *(v53 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v53 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v53 + 32) = 0x706F724467617244;
      *(v53 + 40) = 0xEA00000000006F54;
      *(v53 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v53 + 104) = &off_10109DFB0;
      *(v53 + 72) = v52;
      v54 = v48;
      sub_1001DFD48(v19);
      v55 = static Player.CommandIssuer<>.combining(_:)(v53);
      v57 = v56;

      *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 216) = v55;
      *(v0 + 224) = v57;
      v58 = swift_task_alloc();
      *(v0 + 664) = v58;
      *v58 = v0;
      v58[1] = sub_100787F68;
      v59 = v0 + 176;
      v60 = v0 + 216;
    }

    else
    {
      *(v0 + 80) = &type metadata for Player.InsertCommand;
      *(v0 + 88) = &protocol witness table for Player.InsertCommand;
      *(v0 + 56) = v20;
      *(v0 + 64) = v74;
      v61 = v20;
      sub_1001DFD48(v74);
      v62 = PlaybackController.canPerform(_:)((v0 + 56));
      sub_10000959C((v0 + 56));
      if (!v62)
      {
        v72 = *(v0 + 496);

        sub_10078A448();
        swift_allocError();
        *v73 = 1;
        swift_willThrow();
        sub_100309AD8(v10);

        sub_100309AD8(v74);
        sub_100309AD8(v19);
        sub_10078A3E8(v72, type metadata accessor for DragDropToQueue);

        v36 = *(v0 + 8);
LABEL_13:

        return v36();
      }

      v63 = *(v0 + 496);
      v64 = *(v0 + 480);
      *(v0 + 120) = &type metadata for Player.InsertCommand;
      *(v0 + 128) = &protocol witness table for Player.InsertCommand;
      *(v0 + 96) = v61;
      *(v0 + 104) = v74;
      v65 = *(v63 + *(v64 + 20));
      sub_10010FC20(&unk_101183930, &unk_100EC1690);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_100EBDC20;
      *(v66 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v66 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v66 + 32) = 0x706F724467617244;
      *(v66 + 40) = 0xEA00000000006F54;
      *(v66 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v66 + 104) = &off_10109DFB0;
      *(v66 + 72) = v65;
      v67 = v61;
      sub_1001DFD48(v74);
      v68 = static Player.CommandIssuer<>.combining(_:)(v66);
      v70 = v69;

      *(v0 + 160) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 168) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 136) = v68;
      *(v0 + 144) = v70;
      v71 = swift_task_alloc();
      *(v0 + 680) = v71;
      *v71 = v0;
      v71[1] = sub_100788970;
      v59 = v0 + 96;
      v60 = v0 + 136;
    }

    return PlaybackController.perform(_:route:intent:issuer:)(v59, 0, 0, v60);
  }

  else
  {
    v37 = *(v0 + 480);
    v38 = *(v0 + 440);
    sub_1001DFD48(v38);
    sub_100309AD8(v10);
    v39 = *(v14 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v40 = *(v14 + *(v37 + 20));
    sub_10010FC20(&unk_101183930, &unk_100EC1690);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100EBDC20;
    *(v41 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v41 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v41 + 32) = 0x706F724467617244;
    *(v41 + 40) = 0xEA00000000006F54;
    *(v41 + 96) = &type metadata for DragDropIntentIdentifier;
    *(v41 + 104) = &off_10109DFB0;
    *(v41 + 72) = v40;
    sub_1001DFD48(v38);
    v42 = static Player.CommandIssuer<>.combining(_:)(v41);
    v44 = v43;

    *(v0 + 400) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 408) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 376) = v42;
    *(v0 + 384) = v44;
    v45 = swift_task_alloc();
    *(v0 + 600) = v45;
    *v45 = v0;
    v45[1] = sub_100786B78;
    v46 = *(v0 + 440);

    return PlaybackController.insert(_:location:issuer:)(v39, v46, v0 + 376);
  }
}

uint64_t sub_10078939C()
{
  v1 = v0[63];
  v2 = v0[59];

  sub_10078A3E8(v2, type metadata accessor for PlaybackIntentDescriptor);
  sub_10078A3E8(v1, type metadata accessor for DragDropToQueue);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10078946C()
{
  v1 = *(v0 + 496);
  sub_10078A49C(*(v0 + 440));

  sub_10078A3E8(v1, type metadata accessor for DragDropToQueue);
  sub_100440B1C(v0 + 376);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100789534()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 496);
  sub_100309AD8(*(v0 + 584));

  sub_100309AD8(v1);

  sub_100309AD8(v3);
  sub_10078A3E8(v5, type metadata accessor for DragDropToQueue);
  sub_100440B1C(v0 + 336);
  sub_10000959C((v0 + 296));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100789634()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 496);
  sub_100309AD8(*(v0 + 584));

  sub_100309AD8(v1);

  sub_100309AD8(v3);
  sub_10078A3E8(v5, type metadata accessor for DragDropToQueue);
  sub_100440B1C(v0 + 216);
  sub_10000959C((v0 + 176));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100789734()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 496);
  sub_100309AD8(*(v0 + 584));

  sub_100309AD8(v1);

  sub_100309AD8(v3);
  sub_10078A3E8(v5, type metadata accessor for DragDropToQueue);
  sub_100440B1C(v0 + 136);
  sub_10000959C((v0 + 96));

  v6 = *(v0 + 8);

  return v6();
}

Swift::Int sub_100789834(void *a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = [a1 tracklist];
  v5 = [v4 uniqueIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  if (a2 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Player.InsertCommand.Location.hash(into:)(v7, a2);
  }

  return Hasher._finalize()();
}

id sub_10078990C()
{
  v0 = objc_allocWithZone(UICollectionViewDropProposal);

  return [v0 initWithDropOperation:2 intent:1];
}

uint64_t sub_100789954(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10002F3F4;

  return sub_1007852FC(a1, a2, v8, v6, v7);
}

void sub_100789A18(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = [*v1 tracklist];
  v5 = [v4 uniqueIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  if (v3 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Player.InsertCommand.Location.hash(into:)(a1, v3);
  }
}

Swift::Int sub_100789AF8(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  v4 = [v3 tracklist];
  v5 = [v4 uniqueIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  if (v2 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Player.InsertCommand.Location.hash(into:)(v7, v2);
  }

  return Hasher._finalize()();
}

unint64_t sub_100789BE0()
{
  result = qword_1011A2548;
  if (!qword_1011A2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2548);
  }

  return result;
}

unint64_t sub_100789C7C(uint64_t a1)
{
  result = sub_100789CA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100789CA4()
{
  result = qword_1011A2588;
  if (!qword_1011A2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2588);
  }

  return result;
}

uint64_t sub_100789D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragDropToQueue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100789DA8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = [a1 tracklist];
  v8 = [v7 uniqueIdentifier];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [a3 tracklist];
  v13 = [v12 uniqueIdentifier];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v9 == v14 && v11 == v16)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

  result = a4 == 4 && a2 == 4;
  if (a2 != 4 && a4 != 4)
  {
    sub_1001DFD48(a4);
    v20 = static Player.InsertCommand.Location.__derived_enum_equals(_:_:)(a2, a4);
    sub_10078A49C(a4);
    return v20;
  }

  return result;
}

uint64_t sub_100789F0C(uint64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v4 = *(v41 - 8);
  __chkstk_darwin();
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v37 - v6;
  type metadata accessor for DragDropToQueue(0);
  __chkstk_darwin();
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 1;
  }

  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v37 = *(v8 + 72);
  v39 = enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  v38 = (v4 + 104);
  v13 = (v4 + 8);
  while (1)
  {
    sub_100789D44(v12, v10);
    sub_100538C48(v10, v7);
    v15 = v40;
    v14 = v41;
    (*v38)(v40, v39, v41);
    v16 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
    v17 = *v13;
    (*v13)(v15, v14);
    v17(v7, v14);
    if (a2 != 4)
    {
      break;
    }

    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v18 = qword_101218AC8;
    v19 = (*(*qword_101218AC8 + 432))();
    if (v19 && (v20 = v19, v21 = [v19 tracklist], v20, v22 = objc_msgSend(v21, "playingItem"), v21, a2 = 4, v22))
    {

      if ((v16 & 1) == 0)
      {
        goto LABEL_19;
      }

      v23 = *&v10[*(type metadata accessor for DragDropToQueue.Origin(0) + 20)];
      v24 = Player.InsertCommand.init(location:playbackIntent:)(0, v23);
      v44 = &type metadata for Player.InsertCommand;
      v45 = &protocol witness table for Player.InsertCommand;
      v42 = v24;
      v43 = v25;
      v26 = *(*v18 + 760);
      v27 = v23;
      a2 = 4;
      v28 = v26(&v42);
      sub_10078A3E8(v10, type metadata accessor for DragDropToQueue);
      sub_10000959C(&v42);
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_10078A3E8(v10, type metadata accessor for DragDropToQueue);
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_4:
    v12 += v37;
    if (!--v11)
    {
      return 1;
    }
  }

  if (v16)
  {
    sub_1001DFD48(a2);
    v29 = a2;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v30 = qword_101218AC8;
    v31 = *&v10[*(type metadata accessor for DragDropToQueue.Origin(0) + 20)];
    v32 = Player.InsertCommand.init(location:playbackIntent:)(v29, v31);
    v44 = &type metadata for Player.InsertCommand;
    v45 = &protocol witness table for Player.InsertCommand;
    v42 = v32;
    v43 = v33;
    v34 = *(*v30 + 760);
    sub_10078A4AC(v29);
    v35 = v31;
    LOBYTE(v30) = v34(&v42);
    sub_10078A49C(v29);
    sub_10078A3E8(v10, type metadata accessor for DragDropToQueue);
    sub_10000959C(&v42);
    a2 = v29;
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_4;
  }

LABEL_19:
  sub_10078A3E8(v10, type metadata accessor for DragDropToQueue);
  return 0;
}

uint64_t sub_10078A3E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10078A448()
{
  result = qword_1011A25D0;
  if (!qword_1011A25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A25D0);
  }

  return result;
}

void sub_10078A49C(id a1)
{
  if (a1 != 4)
  {
    sub_100309AD8(a1);
  }
}

id sub_10078A4AC(id result)
{
  if (result != 4)
  {
    return sub_1001DFD48(result);
  }

  return result;
}

unint64_t sub_10078A4D0()
{
  result = qword_1011A25D8;
  if (!qword_1011A25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A25D8);
  }

  return result;
}

uint64_t sub_10078A524@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of AlbumFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_10078A56C(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = IndexPath.section.getter();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 >= *(a3 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10078A674(*(a3 + 16 * v9 + 32), *(a3 + 16 * v9 + 40), a2, a3, a4);
  if (!v10)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = IndexPath.row.getter();
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v13 = v12;
  if (v12 >= *(v11 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = type metadata accessor for Track();
  (*(*(v14 - 8) + 16))(a5, v11 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(*(v14 - 8) + 72) * v13, v14);
}

void sub_10078A674(Swift::UInt a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 + 16);
  if (a3)
  {
    v9 = sub_10079243C(a1, a2 & 1, a4 + 32, v8, (a3 + 16), a3 + 32);
    if (v10)
    {
      return;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
LABEL_13:
      if (v9 < *(a5 + 16))
      {

        return;
      }
    }

    __break(1u);
    return;
  }

  v9 = 0;
  if (v8)
  {
    v11 = (a4 + 40);
    do
    {
      if (*v11)
      {
        if (a2)
        {
          goto LABEL_13;
        }
      }

      else if ((a2 & 1) == 0 && *(v11 - 1) == a1)
      {
        goto LABEL_13;
      }

      ++v9;
      v11 += 16;
    }

    while (v8 != v9);
  }
}

uint64_t sub_10078A730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v41 = a2;
  v42 = a1;
  v40 = sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v40 - v7;
  if (qword_10117F5F8 != -1)
  {
    v6 = swift_once();
  }

  v9 = (*qword_101218AC8 + 432);
  v10 = *v9;
  v11 = (*v9)(v6);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 tracklist];

    sub_1001CC118(v8);
  }

  else
  {
    v14 = type metadata accessor for GenericMusicItem();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  v15 = sub_10010FC20(&qword_10119A880, &qword_100EE23F0);
  sub_1000089F8(v8, v5, &unk_101189DA0, &unk_100EBF370);
  State.init(wrappedValue:)();
  v16 = sub_1000095E8(v8, &unk_101189DA0, &unk_100EBF370);
  v17 = v10(v16);
  if (v17)
  {
    v18 = v17;
    v19 = [v17 state];

    v20 = v19 != 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = &a3[v15[12]];
  v43 = v20;
  State.init(wrappedValue:)();
  v22 = v45;
  *v21 = v44;
  *(v21 + 1) = v22;
  v23 = &a3[v15[13]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v15[14];
  *&a3[v24] = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
  swift_storeEnumTagMultiPayload();
  v25 = v15[9];
  v26 = type metadata accessor for Playlist.Entry();
  v27 = *(v26 - 8);
  v28 = v42;
  (*(v27 + 16))(&a3[v25], v42, v26);
  v29 = v15[10];
  v30 = type metadata accessor for Playlist();
  v31 = *(v30 - 8);
  v32 = *(v31 + 16);
  v33 = &a3[v29];
  v40 = a3;
  v34 = v41;
  v32(v33, v41, v30);
  Player.state<A>(for:)(v28, v26, &protocol witness table for Playlist.Entry);
  sub_10010FC20(&unk_1011A46E0, &qword_100EE4B50);
  sub_100020674(&qword_1011A2888, &unk_1011A46E0, &qword_100EE4B50, &protocol conformance descriptor for MusicItemState<A>);
  v35 = ObservedObject.init(wrappedValue:)();
  v37 = v36;
  (*(v31 + 8))(v34, v30);
  result = (*(v27 + 8))(v28, v26);
  v39 = v40;
  *v40 = v35;
  *(v39 + 1) = v37;
  return result;
}

uint64_t sub_10078AB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v41 = a2;
  v42 = a1;
  v40 = sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v40 - v7;
  if (qword_10117F5F8 != -1)
  {
    v6 = swift_once();
  }

  v9 = (*qword_101218AC8 + 432);
  v10 = *v9;
  v11 = (*v9)(v6);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 tracklist];

    sub_1001CC118(v8);
  }

  else
  {
    v14 = type metadata accessor for GenericMusicItem();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  v15 = sub_10010FC20(&qword_1011A2878, &qword_100EE2388);
  sub_1000089F8(v8, v5, &unk_101189DA0, &unk_100EBF370);
  State.init(wrappedValue:)();
  v16 = sub_1000095E8(v8, &unk_101189DA0, &unk_100EBF370);
  v17 = v10(v16);
  if (v17)
  {
    v18 = v17;
    v19 = [v17 state];

    v20 = v19 != 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = &a3[v15[12]];
  v43 = v20;
  State.init(wrappedValue:)();
  v22 = v45;
  *v21 = v44;
  *(v21 + 1) = v22;
  v23 = &a3[v15[13]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v15[14];
  *&a3[v24] = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
  swift_storeEnumTagMultiPayload();
  v25 = v15[9];
  v26 = type metadata accessor for Track();
  v27 = *(v26 - 8);
  v28 = v42;
  (*(v27 + 16))(&a3[v25], v42, v26);
  v29 = v15[10];
  v30 = type metadata accessor for Album();
  v31 = *(v30 - 8);
  v32 = *(v31 + 16);
  v33 = &a3[v29];
  v40 = a3;
  v34 = v41;
  v32(v33, v41, v30);
  Player.state<A>(for:)(v28, v26, &protocol witness table for Track);
  sub_10010FC20(&qword_10118A600, &qword_100EC5E48);
  sub_100020674(&qword_10118A608, &qword_10118A600, &qword_100EC5E48, &protocol conformance descriptor for MusicItemState<A>);
  v35 = ObservedObject.init(wrappedValue:)();
  v37 = v36;
  (*(v31 + 8))(v34, v30);
  result = (*(v27 + 8))(v28, v26);
  v39 = v40;
  *v40 = v35;
  *(v39 + 1) = v37;
  return result;
}

uint64_t sub_10078AF90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for Track.song(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Song();
    (*(*(v10 - 8) + 32))(a1, v8, v10);
    v11 = &enum case for GenericMusicItem.song(_:);
LABEL_5:
    v13 = *v11;
    v14 = type metadata accessor for GenericMusicItem();
    v15 = *(v14 - 8);
    (*(v15 + 104))(a1, v13, v14);
    return (*(v15 + 56))(a1, 0, 1, v14);
  }

  if (v9 == enum case for Track.musicVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v12 = type metadata accessor for MusicVideo();
    (*(*(v12 - 8) + 32))(a1, v8, v12);
    v11 = &enum case for GenericMusicItem.musicVideo(_:);
    goto LABEL_5;
  }

  v17 = type metadata accessor for GenericMusicItem();
  (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10078B234(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == enum case for Track.song(_:) || v6 == enum case for Track.musicVideo(_:))
  {
    v8 = v6 != enum case for Track.song(_:);
    (*(v2 + 8))(v5, a1);
    return v8;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10078B3EC(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v21 = a1;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v4 = &v18 - v3;
  v5 = type metadata accessor for Album();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Track();
  v19 = *(v9 - 8);
  v20 = v9;
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
  v13 = *(v2 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data + 8);
  v14 = *(v2 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data + 16);

  sub_10078A56C(v12, v13, v14, v11);

  v15 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum;
  swift_beginAccess();
  sub_1000089F8(v2 + v15, v4, &unk_101184730, &unk_100ECB920);
  v16 = *(v6 + 48);
  if (v16(v4, 1, v5) == 1)
  {
    (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album, v5);
    if (v16(v4, 1, v5) != 1)
    {
      sub_1000095E8(v4, &unk_101184730, &unk_100ECB920);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  __chkstk_darwin();
  *(&v18 - 2) = v11;
  *(&v18 - 1) = v8;
  v22[3] = sub_10010FC20(&qword_1011A2868, &qword_100EE2380);
  v22[4] = sub_100020674(&qword_1011A2870, &qword_1011A2868, &qword_100EE2380, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v22);
  sub_10010FC20(&qword_1011A2878, &qword_100EE2388);
  sub_100020674(&qword_1011A2880, &qword_1011A2878, &qword_100EE2388, &unk_100EDE7B8);
  UIHostingConfiguration<>.init(content:)();
  UITableViewCell.contentConfiguration.setter();
  (*(v6 + 8))(v8, v5);
  return (*(v19 + 8))(v11, v20);
}

uint64_t sub_10078B7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Track();
  v10 = __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  return sub_10078AB60(v12, v9, a3);
}

uint64_t sub_10078B958(void (*a1)(char *, uint64_t, uint64_t), char a2, uint64_t a3)
{
  v4 = v3;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v38 = &v35 - v8;
  v9 = sub_10010FC20(&qword_101199728, &unk_100ED91C0);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  __chkstk_darwin();
  v12 = &v35 - v11;
  v13 = sub_10010FC20(&qword_10119A800, &unk_100EE21E0);
  v41 = *(v13 - 8);
  v42 = v13;
  __chkstk_darwin();
  v15 = &v35 - v14;
  v16 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum;
  v17 = type metadata accessor for Album();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v4 + v16, 1, 1, v17);
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse) = 0xF000000000000007;
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_observers) = &_swiftEmptySetSingleton;
  v19 = (v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
  sub_1007935F0(_swiftEmptyArrayStorage);
  *v19 = v20;
  v19[1] = v21;
  v19[2] = v22;
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_playActivityFeature) = 0;
  v23 = a1;
  (*(v18 + 16))(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album, a1, v17);
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_onlyDownloaded) = a2;
  v24 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_preferredSource;
  v25 = type metadata accessor for MusicPropertySource();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v43 = a3;
  v37 = v25;
  v27(v4 + v24, a3);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v35 = v23;
  v36 = v17;
  v28 = Player.state<A>(for:)(v23, v17, &protocol witness table for Album);
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_state) = v28;
  (*(*v28 + 280))();
  sub_100027010();
  v29 = static OS_dispatch_queue.main.getter();
  v44 = v29;
  v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v31 = v38;
  (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
  sub_100020674(&qword_101199730, &qword_101199728, &unk_100ED91C0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10079392C(&qword_101184920, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
  v32 = v39;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v31, &qword_101182140, &unk_100EBD2A0);

  (*(v40 + 8))(v12, v32);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_10119A810, &qword_10119A800, &unk_100EE21E0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v33 = v42;
  Publisher<>.sink(receiveValue:)();

  (*(v41 + 8))(v15, v33);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10078C2A0();
  (*(v26 + 8))(v43, v37);
  (*(v18 + 8))(v35, v36);
  return v4;
}

double sub_10078BF48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v4 = sub_10028434C(v2);
      if (*(Strong + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
      {
        v5 = *(Strong + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
        ObjectType = swift_getObjectType();
        v7 = (*(v5 + 112))(ObjectType, v5);
      }

      else
      {
        v7 = 1;
      }

      [v4 setHidden:v7 & 1];

      sub_100283D74();
      [*(Strong + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
      swift_unknownObjectRelease();
    }
  }

  return v2.n128_f64[0];
}

uint64_t sub_10078C054(uint64_t a1)
{
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v4 = &v13 - v3;
  v5 = type metadata accessor for Album();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum;
  swift_beginAccess();
  sub_10079397C(a1, v1 + v9);
  swift_endAccess();
  v10 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_state);
  sub_1000089F8(v1 + v9, v4, &unk_101184730, &unk_100ECB920);
  v11 = *(v6 + 48);
  if (v11(v4, 1, v5) == 1)
  {
    (*(v6 + 16))(v8, v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album, v5);
    if (v11(v4, 1, v5) != 1)
    {
      sub_1000095E8(v4, &unk_101184730, &unk_100ECB920);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  (*(*v10 + 224))(v8);
  return sub_1000095E8(a1, &unk_101184730, &unk_100ECB920);
}

void sub_10078C2A0()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = v32 - v2;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v5 = v32 - v4;
  v6 = sub_10010FC20(&qword_101192888, &unk_100ECFBB0);
  v7 = *(v6 - 8);
  v33 = v6;
  v34 = v7;
  __chkstk_darwin();
  v9 = v32 - v8;
  v10 = sub_10010FC20(&qword_101192890, &qword_100EE2260);
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin();
  v12 = v32 - v11;
  v13 = sub_10010FC20(&qword_101188E88, &unk_100ECBD70);
  v37 = *(v13 - 8);
  __chkstk_darwin();
  v15 = v32 - v14;
  v16 = type metadata accessor for MusicPropertySource();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin();
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_preferredSource, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == enum case for MusicPropertySource.catalog(_:))
  {
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
    v23 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v24 = static MainActor.shared.getter();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = &protocol witness table for MainActor;
    v25[4] = v23;

    sub_1001F4CB8(0, 0, v3, &unk_100EE2270, v25);
  }

  else if (v21 == enum case for MusicPropertySource.library(_:))
  {
    type metadata accessor for Album();
    type metadata accessor for Track();
    MusicLibrarySectionedRequest.init()();
    MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
    swift_getKeyPath();
    LOBYTE(v38) = 1;
    MusicLibrarySectionedRequest<>.includeSections<A>(matching:equalTo:)();

    sub_100020674(&qword_101192898, &qword_101188E88, &unk_100ECBD70, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
    v26 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v27 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse);
    *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse) = v26;
    v32[1] = v26;

    sub_1004E6028(v27);
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v28 = static OS_dispatch_queue.main.getter();
    v38 = v28;
    v29 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
    sub_100020674(&qword_1011928A0, &qword_101192888, &unk_100ECFBB0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10079392C(&qword_101184920, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
    v30 = v33;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v5, &qword_101182140, &unk_100EBD2A0);

    (*(v34 + 8))(v9, v30);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_1011928A8, &qword_101192890, &qword_100EE2260, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v31 = v36;
    Publisher<>.sink(receiveValue:)();

    (*(v35 + 8))(v12, v31);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    (*(v37 + 8))(v15, v13);
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

void sub_10078CA7C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v58 = &v54 - v3;
  v4 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v54 - v7;
  sub_10010FC20(&unk_101188900, &qword_100ED9260);
  __chkstk_darwin();
  v10 = &v54 - v9;
  sub_10010FC20(&qword_1011928B0, &unk_100ECFBC0);
  __chkstk_darwin();
  v12 = &v54 - v11;
  sub_10010FC20(&qword_1011928B8, &unk_100EE2320);
  __chkstk_darwin();
  v14 = &v54 - v13;
  v15 = sub_10010FC20(&qword_1011928C0, &unk_100ECFBD0);
  v60 = *(v15 - 8);
  __chkstk_darwin();
  v59 = &v54 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v29 = swift_unknownObjectWeakLoadStrong();

      if (v29)
      {
        v30 = enum case for MusicPropertySource.library(_:);
        v31 = type metadata accessor for MusicPropertySource();
        (*(*(v31 - 8) + 104))(v10, v30, v31);
        v32 = _s14descr101094081C15DataSourceErrorOMa(0);
        (*(*(v32 - 8) + 56))(v10, 0, 1, v32);
        sub_10028555C(v10);
        swift_unknownObjectRelease();
        sub_1000095E8(v10, &unk_101188900, &qword_100ED9260);
      }
    }

    return;
  }

  v18 = Strong;
  v55 = v8;
  v56 = v5;
  v19 = v4;
  sub_1000089F8(a1, v12, &qword_1011928B0, &unk_100ECFBC0);
  v20 = sub_10010FC20(&qword_1011928C8, &unk_100EE2330);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {

    sub_1000095E8(v12, &qword_1011928B0, &unk_100ECFBC0);
    (*(v60 + 56))(v14, 1, 1, v15);
LABEL_9:
    sub_1000095E8(v14, &qword_1011928B8, &unk_100EE2320);
    goto LABEL_10;
  }

  v22 = MusicLibrarySectionedResponse.sections.getter();
  (*(v21 + 8))(v12, v20);
  v23 = *(v22 + 16);
  v54 = v19;
  if (v23)
  {
    v24 = v60;
    (*(v60 + 16))(v14, v22 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v15);
    v25 = 0;
    v26 = v55;
  }

  else
  {
    v25 = 1;
    v26 = v55;
    v24 = v60;
  }

  (*(v24 + 56))(v14, v25, 1, v15);
  v27 = (*(v24 + 48))(v14, 1, v15);
  v28 = v56;
  if (v27 == 1)
  {

    goto LABEL_9;
  }

  v33 = *(v24 + 32);
  v34 = v59;
  v33(v59, v14, v15);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = _s14descr101094081C15DataSourceErrorOMa(0);
    (*(*(v35 - 8) + 56))(v10, 1, 1, v35);
    sub_10028555C(v10);
    swift_unknownObjectRelease();
    sub_1000095E8(v10, &unk_101188900, &qword_100ED9260);
  }

  v36 = v26;
  MusicLibrarySection.items.getter();
  v37 = v58;
  MusicLibrarySection.item.getter();
  v38 = type metadata accessor for Album();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  sub_10078C054(v37);
  v39 = v57;
  v40 = v26;
  v41 = v54;
  (*(v28 + 16))(v57, v40, v54);
  v42 = sub_100792B6C(v39);
  v43 = (v18 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
  *v43 = v42;
  v43[1] = v44;
  v43[2] = v45;

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v48 = v46;
    v49 = sub_10028434C(v47);
    if (*(v48 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v50 = *(v48 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v52 = (*(v50 + 112))(ObjectType, v50);
    }

    else
    {
      v52 = 1;
    }

    v53 = v60;
    [v49 setHidden:{v52 & 1, v54}];

    sub_100283D74();
    [*(v48 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];

    swift_unknownObjectRelease();
  }

  else
  {

    v53 = v60;
  }

  (*(v28 + 8))(v36, v41);
  (*(v53 + 8))(v34, v15);
}

uint64_t sub_10078D278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  v4[16] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011928F8, &unk_100EE2340);
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_101192900, &unk_100ECFD20);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_101192908, &qword_100EE2350);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  sub_10010FC20(&unk_101188900, &qword_100ED9260);
  v4[26] = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  v4[27] = swift_task_alloc();
  v8 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v4[28] = v8;
  v4[29] = *(v8 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v4[32] = v9;
  v4[33] = *(v9 - 8);
  v4[34] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_101181C50, &qword_100EBD7B8);
  v4[35] = v10;
  v4[36] = *(v10 - 8);
  v4[37] = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v11 = type metadata accessor for Album();
  v4[40] = v11;
  v4[41] = *(v11 - 8);
  v4[42] = swift_task_alloc();
  v12 = sub_10010FC20(&unk_101192970, &qword_100EBD7C0);
  v4[43] = v12;
  v4[44] = *(v12 - 8);
  v4[45] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[46] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[47] = v14;
  v4[48] = v13;

  return _swift_task_switch(sub_10078D73C, v14, v13);
}

uint64_t sub_10078D73C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[49] = Strong;
  if (Strong)
  {
    v2 = Album.catalogID.getter();
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      swift_getKeyPath();
      v0[12] = v4;
      v0[13] = v5;
      sub_10079392C(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v6 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v6(v0 + 2, 0);
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100EBE270;
      sub_10010FC20(&qword_101192878, &qword_100ECFBA8);
      *(v7 + 32) = static PartialMusicProperty<A>.tracks.getter();
      *(v7 + 40) = static PartialMusicProperty<A>.tracksPopularity.getter();
      *(v7 + 48) = static PartialMusicProperty<A>.artists.getter();
      MusicCatalogResourceRequest.properties.setter();
      MusicCatalogResourceRequest.prewarmForPlayback.setter();
      v8 = swift_task_alloc();
      v0[50] = v8;
      *v8 = v0;
      v8[1] = sub_10078DA6C;
      v9 = v0[43];
      v10 = v0[37];

      return MusicCatalogResourceRequest.response()(v10, v9);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10078DA6C()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {

    v3 = *(v2 + 376);
    v4 = *(v2 + 384);
    v5 = sub_10078E5C4;
  }

  else
  {
    v3 = *(v2 + 376);
    v4 = *(v2 + 384);
    v5 = sub_10078DB94;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10078DB94()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v9 = v0[33];

  MusicCatalogResourceResponse.items.getter();
  (*(v5 + 8))(v4, v6);
  sub_10034DA18(v3);
  (*(v9 + 8))(v7, v8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(v0[39], &unk_101184730, &unk_100ECB920);
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = v0[44];
    v11 = v0[45];
    v13 = v0[43];
    if (Strong)
    {
      v14 = v0[26];
      v15 = enum case for MusicPropertySource.catalog(_:);
      v16 = type metadata accessor for MusicPropertySource();
      (*(*(v16 - 8) + 104))(v14, v15, v16);
      v17 = _s14descr101094081C15DataSourceErrorOMa(0);
      (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
      sub_10028555C(v14);
      swift_unknownObjectRelease();

      sub_1000095E8(v14, &unk_101188900, &qword_100ED9260);
    }

    else
    {
    }

    (*(v12 + 8))(v11, v13);
LABEL_23:

    v67 = v0[1];

    return v67();
  }

  v19 = v0[41];
  v18 = v0[42];
  v20 = v0[40];
  v21 = v0[38];
  v22 = v0[28];
  v23 = v0[29];
  v24 = v0[27];
  (*(v19 + 32))(v18, v0[39], v20);
  v81 = *(v19 + 16);
  v81(v21, v18, v20);
  (*(v19 + 56))(v21, 0, 1, v20);
  sub_10078C054(v21);
  Album.tracks.getter();
  v25 = *(v23 + 48);
  if (v25(v24, 1, v22) == 1)
  {
    v27 = v0[27];
    v26 = v0[28];
    type metadata accessor for Track();
    MusicItemCollection.init(arrayLiteral:)();
    if (v25(v27, 1, v26) != 1)
    {
      sub_1000095E8(v0[27], &unk_1011842D0, &qword_100ECBF00);
    }
  }

  else
  {
    (*(v0[29] + 32))(v0[31], v0[27], v0[28]);
  }

  v28 = v0[51];
  v29 = v0[30];
  (*(v0[29] + 16))(v29, v0[31], v0[28]);
  v30 = sub_100792B6C(v29);
  if (!v28)
  {
    v38 = v30;
    v39 = v31;
    v40 = v32;
    v41 = v0[49];
    (*(v0[29] + 8))(v0[31], v0[28]);
    v42 = (v41 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
    *v42 = v38;
    v42[1] = v39;
    v42[2] = v40;

    v43 = *(v40 + 16);

    if (!v43 && swift_unknownObjectWeakLoadStrong())
    {
      v44 = v0[26];
      v45 = enum case for MusicPropertySource.catalog(_:);
      v46 = type metadata accessor for MusicPropertySource();
      (*(*(v46 - 8) + 104))(v44, v45, v46);
      v47 = _s14descr101094081C15DataSourceErrorOMa(0);
      (*(*(v47 - 8) + 56))(v44, 0, 1, v47);
      sub_10028555C(v44);
      swift_unknownObjectRelease();
      sub_1000095E8(v44, &unk_101188900, &qword_100ED9260);
    }

    v48 = swift_unknownObjectWeakLoadStrong();
    if (v48)
    {
      v50 = v48;
      v51 = sub_10028434C(v49);
      if (*(v50 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
      {
        v52 = *(v50 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
        ObjectType = swift_getObjectType();
        v54 = (*(v52 + 112))(ObjectType, v52);
      }

      else
      {
        v54 = 1;
      }

      [v51 setHidden:v54 & 1];

      sub_100283D74();
      [*(v50 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
      swift_unknownObjectRelease();
    }

    v55 = v0[49];
    v80 = v0[45];
    v56 = v0[42];
    v78 = v0[44];
    v79 = v0[43];
    v58 = v0[40];
    v57 = v0[41];
    v59 = v0[25];
    v77 = v0[24];
    v74 = v0[21];
    v75 = v56;
    v72 = v0[23];
    v73 = v0[20];
    v68 = v0[19];
    v71 = v0[18];
    v60 = v0[16];
    v69 = v0[17];
    v70 = v0[22];
    sub_10010FC20(&qword_101192910, &qword_100ECFD30);
    v76 = v57;
    v61 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_100EBC6B0;
    v81(v62 + v61, v56, v58);
    sub_10079392C(&qword_101192918, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    MusicLibraryMapping.Request.init(mappingItems:)();
    sub_100020674(&qword_101192920, &qword_101192908, &qword_100EE2350, &protocol conformance descriptor for MusicLibraryMapping.Request<A>);
    v63 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v64 = *(v55 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse);
    *(v55 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse) = v63 | 0x8000000000000000;

    sub_1004E6028(v64);
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v65 = static OS_dispatch_queue.main.getter();
    v0[14] = v65;
    v66 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v66 - 8) + 56))(v60, 1, 1, v66);
    sub_100020674(&qword_101192928, &qword_1011928F8, &unk_100EE2340, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10079392C(&qword_101184920, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v60, &qword_101182140, &unk_100EBD2A0);

    (*(v71 + 8))(v68, v69);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_101192930, &qword_101192900, &unk_100ECFD20, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    Publisher<>.sink(receiveValue:)();

    (*(v74 + 8))(v70, v73);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    (*(v77 + 8))(v59, v72);
    (*(v76 + 8))(v75, v58);
    (*(v78 + 8))(v80, v79);
    goto LABEL_23;
  }

  v33 = v0[31];
  v35 = v0 + 28;
  v34 = v0[28];
  v82 = v35[1];

  v36 = *(v82 + 8);

  return v36(v33, v34);
}