uint64_t sub_1000020F0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002100()
{

  sub_100006270();

  return _swift_deallocObject(v0);
}

uint64_t sub_100002134()
{

  sub_1000062BC();

  return _swift_deallocObject(v0);
}

void MLDSpotlightIndexMusicAppEntityAssociator.associateAppEntityForEntity(of:persistentID:library:properties:with:)(uint64_t a1, NSObject *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v181 = a5;
  v183 = a3;
  v184 = a2;
  sub_100003470(0, &qword_100037D30, &type metadata accessor for URL);
  v8 = sub_1000064C0(v7);
  __chkstk_darwin(v8);
  v10 = &v177[-1] - v9;
  sub_100003470(0, &qword_100037D38, &type metadata accessor for Artwork);
  v12 = sub_1000064C0(v11);
  __chkstk_darwin(v12);
  v14 = (&v177[-1] - v13);
  sub_100006240();
  sub_100003470(0, v15, v16);
  v18 = sub_1000064C0(v17);
  __chkstk_darwin(v18);
  v20 = &v177[-1] - v19;
  v21 = type metadata accessor for MusicSiriRepresentation();
  v182 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v177[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v177[-1] - v25;
  sub_100006228();
  sub_100003470(0, v27, v28);
  v30 = sub_1000064C0(v29);
  v31 = __chkstk_darwin(v30);
  v33 = &v177[-1] - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  v36 = &v177[-1] - v35;
  __chkstk_darwin(v34);
  v185 = &v177[-1] - v37;
  switch(a1)
  {
    case 0:
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000627C(v38, v39);

      if (!v190)
      {
        sub_100003528(&v189);
LABEL_32:
        if (qword_1000384D0 != -1)
        {
          sub_1000060E8(&qword_1000384D0);
        }

        v120 = type metadata accessor for Logger();
        v121 = sub_100006308(v120, qword_100038508);

        v114 = Logger.logObject.getter();
        v122 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v114, v122))
        {
          v123 = swift_slowAlloc();
          sub_100006334();
          v124 = sub_100006448();
          *&v189 = v124;
          sub_100006424(5.8382e-34);
          v125 = Dictionary.description.getter();
          v127 = sub_100003D84(v125, v126, &v189);

          *(v123 + 14) = v127;
          sub_10000638C();
          _os_log_impl(v128, v129, v130, v131, v132, 0x16u);
          sub_100003B94(v14);
          sub_1000062F0(v14);
          sub_100004324(v124);
          sub_1000062D4();
          v133 = v123;
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      sub_1000062C8();
      if ((sub_100006374() & 1) == 0)
      {
        goto LABEL_32;
      }

      v180 = v187;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000627C(v40, v41);

      if (v190)
      {
        sub_1000062C8();
        if (sub_100006374())
        {
          v42 = v187;
          goto LABEL_55;
        }
      }

      else
      {
        sub_100003528(&v189);
      }

      v42 = 0;
LABEL_55:
      v147 = sub_10000366C(v180, v42);
      if (v147)
      {
        v179 = v147;
        v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000627C(v148, v149);

        if (v190)
        {
          sub_1000062C8();
          if (sub_100006374())
          {
            v178 = v24;
            v45 = v188;
            v180 = v187;
            v183 = sub_1000036D4(v184, 0, v179, a4, v183);
            v177[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v151 = v150;
            v176 = v183;
            sub_1000034C4(a4, &v189, v177[1], v151);

            if (v190)
            {
              sub_1000062C8();
              if (sub_100006374())
              {
                LODWORD(v183) = v187;
                v152 = type metadata accessor for ContentRating();
                v153 = &enum case for ContentRating.explicit(_:);
                if (!v183)
                {
                  v153 = &enum case for ContentRating.clean(_:);
                }

                (*(*(v152 - 8) + 104))(v36, *v153, v152);
                sub_100003C58(v36, 0, 1, v152);
                v154 = v36;
                v36 = v185;
                sub_1000043B0(v154, v185);
                goto LABEL_75;
              }
            }

            else
            {
              sub_100003528(&v189);
            }

            v172 = type metadata accessor for ContentRating();
            sub_1000061E8(v172);
LABEL_75:
            v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_10000627C(v173, v174);

            if (v190)
            {
              sub_1000062C8();
              sub_100006374();
            }

            else
            {
              sub_100003528(&v189);
            }

            v179 = 0xEE00797469746E45;
            strcpy(v177, "SongSiritrack");
            v183 = 0xE500000000000000;
            HIWORD(v177[1]) = 0;
            v51 = v176;
            goto LABEL_17;
          }
        }

        else
        {
          sub_100003528(&v189);
        }

        if (qword_1000384D0 != -1)
        {
          sub_1000060E8(&qword_1000384D0);
        }

        v159 = type metadata accessor for Logger();
        v160 = sub_100006308(v159, qword_100038508);

        v114 = Logger.logObject.getter();
        v161 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v114, v161))
        {
          v162 = swift_slowAlloc();
          sub_100006334();
          v163 = sub_100006448();
          *&v189 = v163;
          sub_100006424(5.8382e-34);
          v164 = Dictionary.description.getter();
          v166 = sub_100003D84(v164, v165, &v189);

          *(v162 + 14) = v166;
          sub_10000638C();
          _os_log_impl(v167, v168, v169, v170, v171, 0x16u);
          sub_100003B94(v14);
          sub_1000062F0(v14);
          sub_100004324(v163);
          sub_1000062D4();
          sub_1000062F0(v162);
        }
      }

      else
      {
        if (qword_1000384D0 != -1)
        {
          sub_1000060E8(&qword_1000384D0);
        }

        v155 = type metadata accessor for Logger();
        v156 = sub_100006308(v155, qword_100038508);
        v114 = Logger.logObject.getter();
        v157 = static os_log_type_t.error.getter();

        if (sub_10000653C())
        {
          v116 = swift_slowAlloc();
          v117 = sub_100006334();
          sub_1000062AC(v117, 5.8382e-34);
          *(v116 + 12) = 2050;
          *(v116 + 14) = v180;
          v158 = v156;
          v119 = "%{public}@ Unsupported track MPModelKind %{public}ld. Skipping association.";
          v140 = v157;
          v141 = v114;
          v142 = v116;
          v143 = 22;
          goto LABEL_47;
        }
      }

LABEL_49:

      return;
    case 1:
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000627C(v53, v54);

      if (v190)
      {
        sub_1000062C8();
        if (sub_100006374())
        {
          v178 = v24;
          v45 = v188;
          v179 = 0x80000001000251E0;
          v180 = v187;
          sub_100004370(0, &qword_100037D78, MPModelPlaylistKind_ptr);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

          v36 = [ObjCClassFromMetadata identityKind];
          v58 = sub_1000063EC(v184, 1, v56, v57, v183);

          v59 = type metadata accessor for ContentRating();
          sub_1000061E8(v59);
          v51 = v58;
          v177[0] = 0xD000000000000012;
          v183 = 0xE800000000000000;
          v52 = 0x7473696C79616C70;
          goto LABEL_16;
        }
      }

      else
      {
        sub_100003528(&v189);
      }

      if (qword_1000384D0 != -1)
      {
        sub_1000060E8(&qword_1000384D0);
      }

      v134 = type metadata accessor for Logger();
      v135 = sub_100006308(v134, qword_100038508);
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.error.getter();

      if (!sub_10000653C())
      {
        goto LABEL_49;
      }

      v116 = sub_1000063D4();
      v117 = sub_100006334();
      sub_1000062AC(v117, 5.8381e-34);
      v136 = v135;
      v119 = "%{public}@ Failed to fetch playlist name from properties";
      goto LABEL_46;
    case 4:
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000627C(v43, v44);

      if (v190)
      {
        sub_1000062C8();
        if (sub_100006374())
        {
          v178 = v24;
          v45 = v188;
          v180 = v187;
          sub_100004370(0, &qword_100037D70, MPModelAlbumKind_ptr);
          v46 = swift_getObjCClassFromMetadata();

          v36 = [v46 identityKind];
          v49 = sub_1000063EC(v184, 4, v47, v48, v183);

          v50 = type metadata accessor for ContentRating();
          sub_1000061E8(v50);
          v51 = v49;
          v179 = 0xEF797469746E4569;
          v177[0] = 0x7269536D75626C41;
          v183 = 0xE500000000000000;
          v52 = 0x6D75626C61;
          goto LABEL_16;
        }
      }

      else
      {
        sub_100003528(&v189);
      }

      if (qword_1000384D0 != -1)
      {
        sub_1000060E8(&qword_1000384D0);
      }

      v112 = type metadata accessor for Logger();
      v113 = sub_100006308(v112, qword_100038508);
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.error.getter();

      if (!sub_10000653C())
      {
        goto LABEL_49;
      }

      v116 = sub_1000063D4();
      v117 = sub_100006334();
      sub_1000062AC(v117, 5.8381e-34);
      v118 = v113;
      v119 = "%{public}@ Failed to fetch album name from properties";
      goto LABEL_46;
    case 7:
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000627C(v60, v61);

      if (v190)
      {
        sub_1000062C8();
        if (sub_100006374())
        {
          v178 = v24;
          v177[0] = 0xD000000000000010;
          v45 = v188;
          v179 = 0x80000001000251C0;
          v180 = v187;
          sub_100004370(0, &qword_100037D68, MPModelArtistKind_ptr);
          v62 = swift_getObjCClassFromMetadata();

          v36 = [v62 identityKind];
          v65 = sub_1000063EC(v184, 7, v63, v64, v183);

          v66 = type metadata accessor for ContentRating();
          sub_1000061E8(v66);
          v51 = v65;
          v183 = 0xE600000000000000;
          v52 = 0x747369747261;
LABEL_16:
          v177[1] = v52;
LABEL_17:
          v67 = type metadata accessor for Artwork();
          sub_100003C58(v14, 1, 1, v67);
          sub_100003C80(v36, v33);
          v68 = type metadata accessor for URL();
          sub_100003C58(v10, 1, 1, v68);
          v69 = v180;
          MusicSiriRepresentation.init(for:title:authorName:artwork:contentRating:url:isLibraryAdded:)();
          if (sub_100003D00(v20, 1, v21) == 1)
          {

            sub_100006240();
            sub_100003D28(v20, v70, v71);
            if (qword_1000384D0 != -1)
            {
              sub_1000060E8(&qword_1000384D0);
            }

            v72 = type metadata accessor for Logger();
            v73 = sub_100006308(v72, qword_100038508);
            v74 = v183;

            v75 = Logger.logObject.getter();
            v76 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              sub_100006334();
              v78 = sub_100006448();
              *&v189 = v78;
              *v77 = 138543874;
              *(v77 + 4) = v73;
              *v14 = v73;
              *(v77 + 12) = 2082;
              v79 = v73;
              v80 = sub_100003D84(v177[1], v74, &v189);

              *(v77 + 14) = v80;
              *(v77 + 22) = 2050;
              *(v77 + 24) = v184;
              sub_10000638C();
              _os_log_impl(v81, v82, v83, v84, v85, 0x20u);
              sub_100003B94(v14);
              sub_1000062F0(v14);
              sub_100004324(v78);
              sub_1000062F0(v78);
              sub_1000062F0(v77);
            }

            else
            {
            }
          }

          else
          {
            v176 = v51;
            v86 = v182;
            (*(v182 + 32))(v26, v20, v21);
            v87 = MusicSiriRepresentation.id.getter();
            v89 = v88;
            propertyDictionary = Dictionary.init(dictionaryLiteral:)();
            v90._countAndFlagsBits = v87;
            v90._object = v89;
            v91._countAndFlagsBits = v177[0];
            v91._object = v179;
            v92._countAndFlagsBits = v69;
            v92._object = v45;
            CSSearchableItemAttributeSet.associate(entityInstanceIdentifier:entityTypeIdentifier:displayTitle:displaySubtitle:displaySynonyms:typeDisplayName:typeDisplaySynonyms:propertyDictionary:priority:)(v90, v91, v92, 0, &_swiftEmptyArrayStorage, 0, &_swiftEmptyArrayStorage, propertyDictionary, 0);

            if (qword_1000384D0 != -1)
            {
              sub_1000060E8(&qword_1000384D0);
            }

            v93 = type metadata accessor for Logger();
            sub_1000039C0(v93, qword_100038508);
            v94 = v178;
            (*(v86 + 16))(v178, v26, v21);
            v95 = v186;
            v96 = v183;

            v97 = Logger.logObject.getter();
            v98 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              v100 = v86;
              v101 = sub_100006334();
              v186 = swift_slowAlloc();
              *&v189 = v186;
              *v99 = 138543874;
              *(v99 + 4) = v95;
              *v101 = v95;
              *(v99 + 12) = 2082;
              v102 = v95;
              v103 = sub_100003D84(v177[1], v96, &v189);
              v184 = v97;
              v104 = v103;

              *(v99 + 14) = v104;
              *(v99 + 22) = 2080;
              v105 = MusicSiriRepresentation.id.getter();
              v107 = v106;
              v108 = *(v100 + 8);
              v108(v94, v21);
              v109 = sub_100003D84(v105, v107, &v189);

              *(v99 + 24) = v109;
              v110 = v184;
              _os_log_impl(&_mh_execute_header, v184, v98, "%{public}@ Associated siri representation for %{public}s with id: %s", v99, 0x20u);
              sub_100003B94(v101);
              sub_1000062F0(v101);
              v111 = v186;
              swift_arrayDestroy();
              sub_1000062F0(v111);
              sub_1000062F0(v99);

              v108(v26, v21);
            }

            else
            {

              v144 = *(v86 + 8);
              v144(v94, v21);
              v144(v26, v21);
            }
          }

          sub_100006228();
          sub_100003D28(v185, v145, v146);
          return;
        }
      }

      else
      {
        sub_100003528(&v189);
      }

      if (qword_1000384D0 != -1)
      {
        sub_1000060E8(&qword_1000384D0);
      }

      v137 = type metadata accessor for Logger();
      v138 = sub_100006308(v137, qword_100038508);
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.error.getter();

      if (sub_10000653C())
      {
        v116 = sub_1000063D4();
        v117 = sub_100006334();
        sub_1000062AC(v117, 5.8381e-34);
        v139 = v138;
        v119 = "%{public}@ Failed to fetch artist name from properties";
LABEL_46:
        v140 = v115;
        v141 = v114;
        v142 = v116;
        v143 = 12;
LABEL_47:
        _os_log_impl(&_mh_execute_header, v141, v140, v119, v142, v143);
        sub_100003B94(v117);
        sub_1000062F0(v117);
        v133 = v116;
LABEL_48:
        sub_1000062F0(v133);
      }

      goto LABEL_49;
    default:
      return;
  }
}

void sub_100003470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1000034C4@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_100004504(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_100004454(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100003528(uint64_t a1)
{
  sub_1000044B0(0, &qword_100037D50, (&type metadata for Any + 1), &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10000366C(__int16 a1, char a2)
{
  if ((a1 & 0x408) != 8)
  {
    return 0;
  }

  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return [objc_opt_self() kindWithVariants:v2];
}

id sub_1000036D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v11 = sub_100005914(a5, &selRef_accountDSID);
  v22 = v11;
  v23 = v12;
  if (!v12)
  {
    v11 = [a5 jaliscoAccountID];
    if (v11)
    {
      v13 = v11;
      v14 = [v11 stringValue];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v22 = v15;
      v23 = v17;
    }
  }

  __chkstk_darwin(v11);
  v21[2] = a2;
  v21[3] = a5;
  v21[4] = a1;
  v21[5] = a4;
  v21[6] = &v22;
  v21[7] = v5;
  v18 = objc_allocWithZone(MPIdentifierSet);
  v19 = sub_1000039F8(0xD00000000000001ELL, 0x8000000100025260, a3, sub_100004630, v21);

  return v19;
}

uint64_t sub_10000382C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return _swift_unknownObjectRelease(a2);
}

id MLDSpotlightIndexMusicAppEntityAssociator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MLDSpotlightIndexMusicAppEntityAssociator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MLDSpotlightIndexMusicAppEntityAssociator();
  return objc_msgSendSuper2(&v2, "init");
}

id MLDSpotlightIndexMusicAppEntityAssociator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MLDSpotlightIndexMusicAppEntityAssociator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003940()
{
  v0 = type metadata accessor for Logger();
  sub_10000601C(v0, qword_100038508);
  v1 = sub_1000063C8();
  sub_1000039C0(v1, v2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000039C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1000039F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = String._bridgeToObjectiveC()();

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v15[4] = sub_1000058D4;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100003B48;
  v15[3] = &unk_100030AF0;
  v12 = _Block_copy(v15);

  v13 = [v6 initWithSource:v10 modelKind:a3 block:v12];

  _Block_release(v12);

  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if ((a3 & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

void sub_100003B48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_100003B94(uint64_t a1)
{
  sub_100003BF0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100003BF0(uint64_t a1)
{
  if (!qword_100037D58)
  {
    sub_100004370(255, &qword_100037D60, NSObject_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100037D58);
    }
  }
}

uint64_t sub_100003C80(uint64_t a1, uint64_t a2)
{
  sub_100003470(0, &qword_100037D48, &type metadata accessor for ContentRating);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003D28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100003470(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003D84(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003E48(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100004454(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100004324(v11);
  return v7;
}

unint64_t sub_100003E48(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100003F48(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_100003F48(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003F94(a1, a2);
  sub_1000040AC(&off_100030AA0);
  return v3;
}

char *sub_100003F94(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100004190(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000040AC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100004218(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100004190(uint64_t a1, uint64_t a2)
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

  sub_1000044B0(0, &qword_100037E08, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100004218(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000044B0(0, &qword_100037E08, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100004324(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100004370(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000043B0(uint64_t a1, uint64_t a2)
{
  sub_100003470(0, &qword_100037D48, &type metadata accessor for ContentRating);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004454(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000044B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100004504(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000457C(a1, a2, v4);
}

unint64_t sub_10000457C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100004630(void (*a1)())
{
  v2 = 0;
  v3 = 0;
  v4 = v1[3];
  v5 = v1[4];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  p_aBlock = 0;
  v11 = 0;
  v143 = v1[5];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  switch(v1[2])
  {
    case 0:
      v20 = v1[6];
      v148 = v1[7];
      result = sub_100005914(v4, &selRef_libraryUID);
      if (!v22)
      {
        goto LABEL_56;
      }

      String._bridgeToObjectiveC()();
      sub_100006464();
      sub_100006270();
      v14 = swift_allocObject();
      v2 = v143;
      v14[2] = v5;
      v14[3] = v143;
      sub_100006270();
      v23 = swift_allocObject();
      *(v23 + 16) = sub_100005D14;
      *(v23 + 24) = v14;
      v154 = sub_1000060E4;
      v155 = v23;
      p_aBlock = &aBlock;
      aBlock = _NSConcreteStackBlock;
      v151 = 1107296256;
      v24 = &v152;
      v152 = sub_1000060E0;
      v153 = &unk_100030FA0;
      v25 = _Block_copy(&aBlock);

      v12 = a1;
      [a1 setLibraryIdentifiersWithDatabaseID:0 block:v25];

      _Block_release(v25);
      v26 = sub_10000634C();
      sub_10000656C(v26, v27, v28, 187);
      sub_10000647C();
      sub_1000062BC();
      v11 = swift_allocObject();
      v11[2] = v143;
      sub_100006270();
      v29 = swift_allocObject();
      *(v29 + 16) = sub_100005D20;
      *(v29 + 24) = v11;
      v154 = sub_1000060E4;
      v155 = v29;
      aBlock = _NSConcreteStackBlock;
      v151 = 1107296256;
      v152 = sub_1000060E0;
      v153 = &unk_100031018;
      v30 = _Block_copy(&aBlock);

      [a1 setUniversalStoreIdentifiersWithBlock:v30];
      _Block_release(v30);
      v31 = sub_1000064A8();
      sub_100006524(v31, v32, v33, 194);
      sub_100006554();
      if (v30)
      {
        goto LABEL_47;
      }

      if (!*(v20 + 8))
      {
        if (qword_1000384D0 != -1)
        {
          sub_1000060E8(&qword_1000384D0);
        }

        v109 = type metadata accessor for Logger();
        sub_1000039C0(v109, qword_100038508);
        v110 = v148;
        v104 = Logger.logObject.getter();
        v111 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v104, v111))
        {
          v112 = sub_1000063D4();
          p_aBlock = sub_100006334();
          *v112 = 138543362;
          *(v112 + 4) = v110;
          *p_aBlock = v110;
          v113 = v110;
          _os_log_impl(&_mh_execute_header, v104, v111, "%{public}@ Library missing accountDSID. This will cause cloudID to not be set for the track identifier set.", v112, 0xCu);
          sub_100003B94(p_aBlock);
          sub_1000062F0(p_aBlock);
          sub_1000062F0(v112);
        }

        sub_1000063AC();
        goto LABEL_42;
      }

      v34 = String._bridgeToObjectiveC()();

      sub_1000062BC();
      v35 = swift_allocObject();
      *(v35 + 16) = v143;
      sub_100006270();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_100005F20;
      *(v36 + 24) = v35;
      v154 = sub_1000060E4;
      v155 = v36;
      sub_100006108();
      v152 = v37;
      v153 = &unk_100031090;
      p_aBlock = _Block_copy(&aBlock);
      v24 = v155;

      [a1 setPersonalStoreIdentifiersWithPersonID:v34 block:p_aBlock];

      _Block_release(p_aBlock);
      LOBYTE(v34) = sub_10000650C(v36, "", 134, 213);

      if (v34)
      {
        goto LABEL_51;
      }

      sub_1000061CC();
      sub_10000619C();
      sub_10000639C();
      sub_100006298();
      v18 = 0;
      v19 = 0;
      goto LABEL_45;
    case 1:
      v60 = v1[6];
      v2 = v1[7];
      result = sub_100005914(v4, &selRef_libraryUID);
      if (!v61)
      {
        goto LABEL_57;
      }

      String._bridgeToObjectiveC()();
      sub_100006464();
      sub_100006270();
      v62 = swift_allocObject();
      v12 = v143;
      v62[2] = v5;
      v62[3] = v143;
      sub_100006270();
      v63 = swift_allocObject();
      *(v63 + 16) = sub_100005BCC;
      *(v63 + 24) = v62;
      v141 = v62;
      v154 = sub_1000060E4;
      v155 = v63;
      sub_10000616C();
      aBlock = v64;
      sub_10000613C();
      v152 = v65;
      v153 = &unk_100030E38;
      _Block_copy(&aBlock);
      sub_1000063BC();

      v24 = a1;
      sub_100006408(v66, "setLibraryIdentifiersWithDatabaseID:block:");

      _Block_release(v62);
      v67 = sub_10000634C();
      sub_10000656C(v67, v68, v69, 225);
      sub_10000647C();
      sub_1000062BC();
      v11 = swift_allocObject();
      v11[2] = v143;
      sub_100006270();
      v70 = swift_allocObject();
      *(v70 + 16) = sub_100005BD8;
      *(v70 + 24) = v11;
      v154 = sub_1000060E4;
      v155 = v70;
      aBlock = _NSConcreteStackBlock;
      sub_100006188();
      v152 = v71;
      v153 = &unk_100030EB0;
      v72 = _Block_copy(&aBlock);
      v14 = v155;

      [a1 setUniversalStoreIdentifiersWithBlock:v72];
      _Block_release(v72);
      v73 = sub_1000064A8();
      sub_100006524(v73, v74, v75, 232);
      sub_100006554();
      if (v72)
      {
        goto LABEL_48;
      }

      v139 = v11;
      if (!*(v60 + 8))
      {
        if (qword_1000384D0 != -1)
        {
          sub_1000060E8(&qword_1000384D0);
        }

        v114 = type metadata accessor for Logger();
        sub_1000039C0(v114, qword_100038508);
        v115 = v2;
        v104 = Logger.logObject.getter();
        v116 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v104, v116))
        {
          v14 = sub_1000063D4();
          v11 = sub_100006334();
          *v14 = 138543362;
          *(v14 + 4) = v115;
          *v11 = v115;
          v117 = v115;
          sub_1000064EC(&_mh_execute_header, v118, v119, "%{public}@ Library missing accountDSID. This will cause cloudID to not be set for the container identifier set.");
          sub_100003B94(v11);
          sub_1000062D4();
          sub_1000062F0(v14);
          sub_10000619C();
          sub_100006494();
          a1 = sub_100005BD8;
          v2 = sub_100005BCC;
        }

        else
        {
          v2 = sub_100005BCC;
          a1 = sub_100005BD8;
LABEL_42:
          sub_10000619C();
          sub_100006494();
        }

        goto LABEL_44;
      }

      v76 = *v60;

      sub_1000063C8();
      String._bridgeToObjectiveC()();
      sub_100006464();
      sub_1000062BC();
      v14 = swift_allocObject();
      v14[2] = v143;
      sub_100006270();
      v77 = swift_allocObject();
      v148 = sub_100005CF8;
      *(v77 + 16) = sub_100005CF8;
      *(v77 + 24) = v14;
      v154 = sub_1000060E4;
      v155 = v77;
      sub_100006108();
      v152 = v78;
      v153 = &unk_100030F28;
      _Block_copy(&aBlock);
      sub_1000063BC();

      sub_100006408(v79, "setPersonalStoreIdentifiersWithPersonID:block:");

      _Block_release(v14);
      v80 = sub_10000634C();
      sub_10000650C(v80, v81, v82, 242);
      sub_10000647C();
      if (v76)
      {
        goto LABEL_52;
      }

      v2 = sub_100005BCC;
      sub_10000619C();
      sub_10000639C();
      sub_100006298();
      v19 = 0;
      v7 = v11;
      v3 = v141;
      v9 = v14;
      v18 = 0;
      v8 = sub_100005CF8;
      goto LABEL_45;
    case 2:
    case 3:
    case 5:
    case 6:
      goto LABEL_45;
    case 4:
      v38 = v1[4];
      v12 = v1[6];
      v24 = v1[7];
      result = sub_100005914(v4, &selRef_libraryUID);
      if (!v39)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        return result;
      }

      String._bridgeToObjectiveC()();
      sub_100006464();
      sub_100006270();
      v40 = swift_allocObject();
      v40[2] = v38;
      v40[3] = v143;
      sub_100006270();
      v41 = swift_allocObject();
      *(v41 + 16) = sub_1000059A4;
      *(v41 + 24) = v40;
      v137 = v40;
      v154 = sub_1000060E4;
      v155 = v41;
      sub_10000616C();
      aBlock = v42;
      sub_10000613C();
      v152 = v43;
      v153 = &unk_100030CD0;
      _Block_copy(&aBlock);
      sub_1000063BC();

      v2 = a1;
      [a1 setLibraryIdentifiersWithDatabaseID:0 block:v40];

      _Block_release(v40);
      v44 = sub_10000634C();
      sub_10000656C(v44, v45, v46, 251);
      sub_10000647C();
      sub_1000062BC();
      v47 = swift_allocObject();
      *(v47 + 16) = v143;
      sub_100006270();
      v48 = swift_allocObject();
      *(v48 + 16) = sub_100005A50;
      *(v48 + 24) = v47;
      v154 = sub_1000060E4;
      v155 = v48;
      aBlock = _NSConcreteStackBlock;
      sub_100006188();
      v152 = v49;
      v153 = &unk_100030D48;
      v50 = _Block_copy(&aBlock);

      [a1 setUniversalStoreIdentifiersWithBlock:v50];
      _Block_release(v50);
      v51 = sub_1000064A8();
      sub_100006524(v51, v52, v53, 258);
      sub_100006554();
      if (v50)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v138 = v47;
      if (*(v12 + 1))
      {
        v54 = *v12;

        sub_1000063C8();
        String._bridgeToObjectiveC()();
        sub_100006464();
        sub_1000062BC();
        v14 = swift_allocObject();
        v14[2] = v143;
        sub_100006270();
        v55 = swift_allocObject();
        v148 = sub_100005B18;
        *(v55 + 16) = sub_100005B18;
        *(v55 + 24) = v14;
        v24 = v14;
        v154 = sub_1000060E4;
        v155 = v55;
        sub_100006108();
        v152 = v56;
        v153 = &unk_100030DC0;
        _Block_copy(&aBlock);
        sub_1000063BC();

        [a1 setPersonalStoreIdentifiersWithPersonID:v54 block:v14];

        _Block_release(v14);
        v57 = sub_10000634C();
        sub_10000650C(v57, v58, v59, 265);
        sub_10000647C();
        sub_100006154();
        if ((v54 & 1) == 0)
        {
          p_aBlock = sub_1000059A4;
          sub_1000061CC();
          sub_100006298();
          v18 = 0;
          v19 = 0;
          v11 = v137;
          v13 = v138;
          goto LABEL_45;
        }

        goto LABEL_50;
      }

      if (qword_1000384D0 != -1)
      {
        goto LABEL_54;
      }

LABEL_24:
      v102 = type metadata accessor for Logger();
      sub_1000039C0(v102, qword_100038508);
      v103 = v24;
      v104 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      os_log_type_enabled(v104, v14);
      sub_100006154();
      if (v105)
      {
        v106 = sub_1000063D4();
        v107 = sub_100006334();
        *v106 = 138543362;
        *(v106 + 4) = v103;
        *v107 = v103;
        v108 = v103;
        _os_log_impl(&_mh_execute_header, v104, v14, "%{public}@ Library missing accountDSID. This will cause cloudID to not be set for the album identifier set.", v106, 0xCu);
        sub_100003B94(v107);
        sub_1000062D4();
        sub_1000062F0(v106);
        sub_100006358();
        sub_100006154();
        p_aBlock = sub_1000059A4;
      }

      else
      {
        p_aBlock = sub_1000059A4;
        sub_100006358();
      }

      v11 = v137;
LABEL_44:

      v8 = 0;
      v9 = 0;
      v18 = 0;
      v19 = 0;
      v7 = v139;
      v3 = v141;
      v17 = v146;
      v15 = v148;
      v13 = v138;
      v6 = a1;
      v16 = v24;
LABEL_45:
      v140 = v14;
      v142 = v16;
      v147 = v17;
      v149 = v15;
      v145 = v18;
      v128 = v2;
      v129 = p_aBlock;
      v130 = v6;
      v131 = v9;
      v132 = v8;
      v133 = v7;
      v134 = v13;
      sub_1000020F0(v128, v3);
      sub_1000020F0(v130, v133);
      sub_1000020F0(v132, v131);
      sub_1000020F0(v129, v11);
      sub_1000020F0(v12, v134);
      v135 = sub_1000063C8();
      sub_1000020F0(v135, v136);
      sub_1000020F0(v140, v149);
      sub_1000020F0(v142, v147);
      return sub_1000020F0(v145, v19);
    case 7:
      v83 = v1[6];
      v2 = v1[7];
      result = sub_100005914(v4, &selRef_libraryUID);
      if (!v84)
      {
        goto LABEL_58;
      }

      String._bridgeToObjectiveC()();
      sub_100006464();
      sub_100006270();
      v85 = swift_allocObject();
      v12 = v143;
      v85[2] = v5;
      v85[3] = v143;
      sub_100006270();
      v86 = swift_allocObject();
      *(v86 + 16) = sub_100005970;
      *(v86 + 24) = v85;
      v154 = sub_1000060E4;
      v155 = v86;
      sub_10000616C();
      v148 = v85;
      aBlock = v87;
      sub_10000613C();
      v152 = v88;
      v153 = &unk_100030B68;
      _Block_copy(&aBlock);
      sub_1000063BC();

      v24 = a1;
      sub_100006408(v89, "setLibraryIdentifiersWithDatabaseID:block:");

      _Block_release(v85);
      v90 = sub_10000634C();
      sub_10000656C(v90, v91, v92, 274);
      sub_10000647C();
      sub_1000062BC();
      v11 = swift_allocObject();
      v11[2] = v143;
      sub_100006270();
      v93 = swift_allocObject();
      *(v93 + 16) = sub_10000597C;
      *(v93 + 24) = v11;
      v154 = sub_1000060E4;
      v155 = v93;
      aBlock = _NSConcreteStackBlock;
      sub_100006188();
      v152 = v94;
      v153 = &unk_100030BE0;
      v95 = _Block_copy(&aBlock);

      [a1 setUniversalStoreIdentifiersWithBlock:v95];
      _Block_release(v95);
      v96 = sub_1000064A8();
      sub_100006524(v96, v97, v98, 281);
      sub_100006554();
      if (v95)
      {
        goto LABEL_49;
      }

      v146 = v11;
      if (!*(v83 + 8))
      {
        if (qword_1000384D0 != -1)
        {
          sub_1000060E8(&qword_1000384D0);
        }

        v120 = type metadata accessor for Logger();
        sub_1000039C0(v120, qword_100038508);
        v121 = v2;
        v104 = Logger.logObject.getter();
        v122 = static os_log_type_t.error.getter();

        os_log_type_enabled(v104, v122);
        sub_100006258();
        if (v123)
        {
          v124 = sub_1000063D4();
          v11 = sub_100006334();
          *v124 = 138543362;
          *(v124 + 4) = v121;
          *v11 = v121;
          v125 = v121;
          sub_1000064EC(&_mh_execute_header, v126, v127, "%{public}@ Library missing accountDSID. This will cause cloudID to not be set for the artist identifier set.");
          sub_100003B94(v11);
          sub_1000062D4();
          sub_1000062F0(v124);
          sub_1000063AC();
          sub_10000619C();
          v138 = 0;
          sub_100006258();
          v14 = sub_100005970;
        }

        else
        {
          v14 = sub_100005970;
          sub_1000063AC();
          sub_10000619C();
          v138 = 0;
        }

        goto LABEL_44;
      }

      v99 = String._bridgeToObjectiveC()();

      sub_1000062BC();
      v19 = swift_allocObject();
      *(v19 + 16) = v143;
      sub_100006270();
      v100 = swift_allocObject();
      v18 = sub_100005998;
      *(v100 + 16) = sub_100005998;
      *(v100 + 24) = v19;
      v154 = sub_1000060E4;
      v155 = v100;
      sub_100006108();
      v152 = v101;
      v153 = &unk_100030C58;
      v11 = _Block_copy(&aBlock);

      [a1 setPersonalStoreIdentifiersWithPersonID:v99 block:v11];

      _Block_release(v11);
      LOBYTE(v99) = sub_10000650C(v100, "", 134, 288);

      if ((v99 & 1) == 0)
      {
        v14 = sub_100005970;
        sub_1000061CC();
        sub_10000619C();
        sub_10000639C();
        v17 = v146;
        v15 = v148;
        goto LABEL_45;
      }

LABEL_53:
      __break(1u);
LABEL_54:
      sub_1000060E8(&qword_1000384D0);
      goto LABEL_24;
    default:
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      p_aBlock = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_45;
  }
}

uint64_t sub_1000058FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005914(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1000063C8();
}

uint64_t sub_1000059B0(void *a1, void *a2)
{
  [a1 setPersistentID:*(v2 + 16)];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000620C(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, *v16);

  if (!v17)
  {
    return sub_100003528(v16);
  }

  result = sub_100006374();
  if (result)
  {
    return [a1 setSyncID:v15];
  }

  return result;
}

uint64_t sub_100005A6C(void *a1, void *a2, uint64_t a3, SEL *a4)
{
  v7 = *(v4 + 16);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000034C4(v7, &v12, v8, v9);

  if (!v13)
  {
    return sub_100003528(&v12);
  }

  result = swift_dynamicCast();
  if (result)
  {
    return [a1 *a4];
  }

  return result;
}

void sub_100005B24()
{
  sub_1000064B4();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000620C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, *v12);

  if (v13)
  {
    if (sub_100006374())
    {
      v9 = String._bridgeToObjectiveC()();

      [v0 setCloudAlbumID:v9];
    }
  }

  else
  {
    sub_100003528(v12);
  }
}

void sub_100005BD8()
{
  sub_1000064B4();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000620C(v1, v2, v3, v4, v5, v6, v7, v8, v33, v36, v39);

  if (v40)
  {
    if (sub_1000061AC(v9, v10, v11, &type metadata for String, v12, v13, v14, v15, v34, v37, v39))
    {
      v16 = String._bridgeToObjectiveC()();

      [v0 setGlobalPlaylistID:v16];
    }
  }

  else
  {
    sub_100003528(&v39);
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000620C(v17, v18, v19, v20, v21, v22, v23, v24, v34, v37, v39);

  if (v40)
  {
    if (sub_1000061AC(v25, v26, v27, &type metadata for String, v28, v29, v30, v31, v35, v38, v39))
    {
      v32 = String._bridgeToObjectiveC()();

      [v0 setUniversalCloudLibraryID:v32];
    }
  }

  else
  {
    sub_100003528(&v39);
  }
}

uint64_t sub_100005D20()
{
  sub_1000064B4();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000620C(v1, v2, v3, v4, v5, v6, v7, v8, v78, v85, v91);

  if (v92)
  {
    if (sub_1000061AC(v9, v10, v11, &type metadata for String, v12, v13, v14, v15, v79, v86, v91))
    {
      v16 = String._bridgeToObjectiveC()();

      [v0 setUniversalCloudLibraryID:v16];
    }
  }

  else
  {
    sub_100003528(&v91);
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000620C(v17, v18, v19, v20, v21, v22, v23, v24, v79, v86, v91);

  if (v92)
  {
    if (sub_1000061AC(v25, v26, v27, &type metadata for Int64, v28, v29, v30, v31, v80, v87, v91))
    {
      [v0 setSubscriptionAdamID:v80];
    }
  }

  else
  {
    sub_100003528(&v91);
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000620C(v32, v33, v34, v35, v36, v37, v38, v39, v80, v87, v91);

  if (v92)
  {
    if (sub_1000061AC(v40, v41, v42, &type metadata for Int64, v43, v44, v45, v46, v81, v88, v91))
    {
      [v0 setAdamID:v81];
    }
  }

  else
  {
    sub_100003528(&v91);
  }

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000620C(v47, v48, v49, v50, v51, v52, v53, v54, v81, v88, v91);

  if (v92)
  {
    if (sub_1000061AC(v55, v56, v57, &type metadata for Int64, v58, v59, v60, v61, v82, v89, v91))
    {
      [v0 setReportingAdamID:v82];
    }
  }

  else
  {
    sub_100003528(&v91);
  }

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000620C(v62, v63, v64, v65, v66, v67, v68, v69, v82, v89, v91);

  if (!v92)
  {
    return sub_100003528(&v91);
  }

  result = sub_1000061AC(v70, v71, v72, &type metadata for Int64, v73, v74, v75, v76, v83, v90, v91);
  if (result)
  {
    return [v0 setAssetAdamID:v84];
  }

  return result;
}

void sub_100005F20()
{
  sub_1000064B4();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000620C(v1, v2, v3, v4, v5, v6, v7, v8, v32, v35, v38);

  if (v39)
  {
    if (sub_1000064CC(v9, v10, v11, &type metadata for UInt64, v12, v13, v14, v15, v33, v36, v38))
    {
      [v0 setCloudID:v33];
    }
  }

  else
  {
    sub_100003528(&v38);
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000620C(v16, v17, v18, v19, v20, v21, v22, v23, v33, v36, v38);

  if (v39)
  {
    if (sub_1000064CC(v24, v25, v26, &type metadata for String, v27, v28, v29, v30, v34, v37, v38))
    {
      v31 = String._bridgeToObjectiveC()();

      [v0 setCloudAlbumID:v31];
    }
  }

  else
  {
    sub_100003528(&v38);
  }
}

uint64_t *sub_10000601C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000060E8(uint64_t a1)
{

  return _swift_once(a1, sub_100003940);
}

uint64_t sub_1000061AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t sub_1000061E8(uint64_t a1)
{
  v4 = *(v1 - 144);

  return sub_100003C58(v4, 1, 1, a1);
}

double sub_10000620C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_1000034C4(v11, &a11, a1, a2);
}

double sub_10000627C(uint64_t a1, uint64_t a2)
{

  return sub_1000034C4(v2, (v3 - 112), a1, a2);
}

void *sub_1000062AC(void *result, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *result = v2;
  return result;
}

uint64_t sub_1000062D4()
{

  return _swift_slowDealloc(v0, -1, -1);
}

uint64_t sub_1000062F0(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

id sub_100006308(uint64_t a1, uint64_t a2)
{
  sub_1000039C0(a1, a2);
  v3 = *(v2 - 136);

  return v3;
}

uint64_t sub_100006334()
{

  return swift_slowAlloc();
}

uint64_t sub_100006374()
{

  return swift_dynamicCast();
}

uint64_t sub_1000063D4()
{

  return swift_slowAlloc();
}

id sub_1000063EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  return sub_1000036D4(a1, a2, v5, v6, a5);
}

id sub_100006408(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

id sub_100006424(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2082;

  return v2;
}

uint64_t sub_100006448()
{

  return swift_slowAlloc();
}

uint64_t sub_100006464()
{
}

uint64_t sub_10000647C()
{
}

uint64_t sub_1000064CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

void sub_1000064EC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_10000650C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t sub_100006524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_isEscapingClosureAtFileLocation();
}

BOOL sub_10000653C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100006554()
{
}

uint64_t sub_10000656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_isEscapingClosureAtFileLocation();
}

os_log_t sub_1000065EC()
{
  v0 = os_log_create("com.apple.amp.medialibraryd", "Default");

  return v0;
}

void sub_1000066D8(uint64_t a1)
{
  [*(a1 + 32) setWriterSuspended:{objc_msgSend(*(a1 + 40), "isSuspended")}];
  v2 = [*(a1 + 40) transactionMap];
  v3 = [v2 allValues];
  [*(a1 + 32) setActiveTransactions:v3];

  v4 = [*(a1 + 40) databaseOperationQueue];
  v5 = [v4 operations];
  [*(a1 + 32) setEnqueuedConcurrentOperations:v5];

  v6 = [*(a1 + 40) databaseOperationSerialQueue];
  v7 = [v6 operations];
  [*(a1 + 32) setEnqueuedSerialOperations:v7];

  v9 = [*(a1 + 40) databaseOperationLimitedQueue];
  v8 = [v9 operations];
  [*(a1 + 32) setEnqueuedLimitedQueueOperations:v8];
}

id sub_100007420(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 appendFormat:@"Library at path %@\n", a2];
  v7 = *(a1 + 40);
  v8 = [v6 writerAvailableConnections];
  [v7 _appendDescribableArray:v8 toString:*(a1 + 32) withTitle:@"Writer Available Connections" indentLevel:1];

  [*(a1 + 32) appendString:@"\n"];
  v9 = *(a1 + 40);
  v10 = [v6 writerBusyConnections];
  [v9 _appendDescribableArray:v10 toString:*(a1 + 32) withTitle:@"Writer Busy Connections" indentLevel:1];

  [*(a1 + 32) appendString:@"\n"];
  v11 = *(a1 + 40);
  v12 = [v6 readerAvailableConnections];
  [v11 _appendDescribableArray:v12 toString:*(a1 + 32) withTitle:@"Reader Available Connections" indentLevel:1];

  [*(a1 + 32) appendString:@"\n"];
  v13 = *(a1 + 40);
  v14 = [v6 readerBusyConnections];

  [v13 _appendDescribableArray:v14 toString:*(a1 + 32) withTitle:@"Reader Busy Connections" indentLevel:1];
  v15 = *(a1 + 32);

  return [v15 appendString:@"\n\n"];
}

uint64_t start()
{
  v0 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Starting medialibraryd", buf, 2u);
  }

  _set_user_dir_suffix();
  v1 = NSTemporaryDirectory();
  v2 = objc_autoreleasePoolPush();
  +[ML3MusicLibrary disableSharedLibrary];
  +[ML3MusicLibrary disableAutomaticDatabaseValidation];
  v3 = +[NSProcessInfo processInfo];
  [MLMediaLibraryService _setDaemonProcessInfo:v3];
  v4 = +[MLDMediaLibraryService sharedInstance];
  [v4 start];

  objc_autoreleasePoolPop(v2);
  v5 = +[NSRunLoop currentRunLoop];
  [v5 run];

  v6 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "medialibraryd exiting.", v8, 2u);
  }

  return 0;
}

void sub_100007C34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100007C68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007D5C;
    block[3] = &unk_1000313F0;
    v4 = WeakRetained;
    dispatch_async(v2, block);
  }
}

void sub_100007D18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _exitForLocalizationChange];
    WeakRetained = v2;
  }
}

void sub_100007E30(uint64_t a1)
{
  v2 = [*(a1 + 32) suspendedValidations];
  v3 = [v2 count];

  if (v3)
  {
    v4 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[LanguageChange] Validation operations are in progress. Suspending further validations...", buf, 2u);
    }
  }

  [*(a1 + 32) setSuspended:1];
  [*(a1 + 32) _purgePendingDatabaseValidations];
  v5 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[LanguageChange] exiting...", v6, 2u);
  }

  exit(0);
}

id sub_100008210(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) suspendedValidations];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unlock: resuming validation queue - %{public}@", &v5, 0xCu);
  }

  [*(a1 + 32) setSuspended:0];
  return [*(a1 + 32) _purgePendingDatabaseValidations];
}

id sub_1000083BC(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeAllObjects];
  v2 = *(*(a1 + 32) + 48);

  return [v2 removeAllObjects];
}

id sub_100008474(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) suspendedValidations];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Lock: suspending validation queue - %{public}@", &v5, 0xCu);
  }

  [*(a1 + 32) setSuspended:1];
  return [*(a1 + 32) _purgePendingDatabaseValidations];
}

uint64_t sub_100008620(void *a1)
{
  if ([*(a1[4] + 40) containsObject:a1[5]])
  {
    result = 1;
  }

  else
  {
    result = [*(a1[4] + 48) containsObject:a1[5]];
  }

  *(*(a1[6] + 8) + 24) = result;
  return result;
}

id sub_100008A54(uint64_t a1)
{
  result = [*(a1 + 32) shouldValidateDatabaseForLibrary:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_100008A98(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  dispatch_assert_queue_V2(*(a1[4] + 24));
  v6 = os_log_create("com.apple.amp.medialibraryd", "Service");
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfull validation of database at path %{public}@", &v11, 0xCu);
    }

    [*(a1[4] + 40) addObject:a1[5]];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[5];
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed validation of database at path %{public}@. error = %{public}@", &v11, 0x16u);
    }
  }

  [*(a1[4] + 48) removeObject:a1[5]];
  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }
}

void sub_100008C00(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    v2 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Validation queue suspended - Adding pending database validation for media library at path: %{public}@", &v6, 0xCu);
    }

    v4 = [*(a1 + 32) suspendedValidations];
    [v4 addObject:*(a1 + 48)];
  }

  else
  {
    v5 = *(a1 + 48);

    [v5 runValidation];
  }
}

void sub_1000093D8(uint64_t a1, const char *a2)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend__calculateUsageAnalytics(v3, a2);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v8 = *(a1 + 48);
  v10 = v13;
  v6[2] = sub_1000094C8;
  v6[3] = &unk_1000312F0;
  v6[4] = v4;
  v9 = *(a1 + 64);
  v11 = v14;
  v12 = v15;
  v7 = *(a1 + 40);
  v5 = objc_retainBlock(v6);
  AnalyticsSendEventLazy();
}

id sub_1000094C8(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 32);
  *v9 = *(a1 + 48);
  *&v9[16] = *(a1 + 64);
  [v3 _addPurgeableAnalytics:v9 toPayload:v2];
  v4 = *(a1 + 32);
  v5 = *(a1 + 88);
  *v9 = *(a1 + 72);
  *&v9[16] = v5;
  v10 = *(a1 + 104);
  [v4 _addUsageAnalytics:v9 toPayload:v2];
  [*(a1 + 32) _addOptimizeStorageAnalyticsToPayload:v2];
  v6 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    *v9 = 138478339;
    *&v9[4] = v2;
    *&v9[12] = 2114;
    *&v9[14] = v7;
    *&v9[22] = 2050;
    *&v9[24] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Generated CacheDeletePurgeableRequest event with payload:\n%{private}@, transaction: %{public}@ %{public}p", v9, 0x20u);
  }

  return v2;
}

void sub_1000096E8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 32) = *(v3 + 32) + fabs(*(a1 + 48));
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  if (v6 <= *(a1 + 72))
  {
    v6 = *(a1 + 72);
  }

  *(v5 + 40) = v6;
  *(*(a1 + 32) + 48) += *(a1 + 56);
  *(*(a1 + 32) + 56) += *(a1 + 64);
  if (!v4)
  {
    v14 = v1;
    v15 = v2;
    v8 = dispatch_time(0, 10000000000);
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(v10 + 72);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100009808;
    v12[3] = &unk_100031BA8;
    v12[4] = v10;
    v13 = v9;
    dispatch_after(v8, v11, v12);
  }
}

void sub_100009808(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v35 = *(v1 + 32);
  v36 = v2;
  v3 = *(v1 + 64);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = *(v1 + 24);
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = [v9 databasePath];
        if (v10)
        {
          v11 = v10;
          v12 = +[NSFileManager defaultManager];
          v13 = [v9 databasePath];
          v14 = [v12 fileExistsAtPath:v13];

          if (v14)
          {
            v3 += [v9 purgeableStorageSizeWithUrgency:3];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v6);
  }

  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v15 = *(a1 + 32);
  if (v15)
  {
    objc_msgSend__calculateUsageAnalytics(v15);
    v16 = *(a1 + 32);
  }

  else
  {
    v16 = 0;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v22 = v35;
  v23 = v36;
  v25 = v28;
  v20[2] = sub_100009A54;
  v20[3] = &unk_1000312A0;
  v20[4] = v16;
  v24 = v3;
  v26 = v29;
  v27 = v30;
  v21 = *(a1 + 40);
  v17 = objc_retainBlock(v20);
  AnalyticsSendEventLazy();
  v18 = *(a1 + 32);
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0;
}

id sub_100009A54(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  *v10 = *(a1 + 48);
  *&v10[16] = v4;
  v11 = *(a1 + 80);
  [v3 _addPurgeAnalytics:v10 toPayload:v2];
  v5 = *(a1 + 32);
  v6 = *(a1 + 104);
  *v10 = *(a1 + 88);
  *&v10[16] = v6;
  v11 = *(a1 + 120);
  [v5 _addUsageAnalytics:v10 toPayload:v2];
  [*(a1 + 32) _addOptimizeStorageAnalyticsToPayload:v2];
  v7 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *v10 = 138478339;
    *&v10[4] = v2;
    *&v10[12] = 2114;
    *&v10[14] = v8;
    *&v10[22] = 2050;
    *&v10[24] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Generated CacheDeletePurge event with payload:\n%{private}@, transaction: %{public}@ %{public}p", v10, 0x20u);
  }

  return v2;
}

void sub_100009E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 databasePath];
  if (v4)
  {
    v5 = v4;
    v6 = +[NSFileManager defaultManager];
    v7 = [v3 databasePath];
    if ([v6 fileExistsAtPath:v7])
    {
      v8 = [v3 currentDatabaseVersion];

      if (v8 == 2310000)
      {
        *(*(*(a1 + 32) + 8) + 40) += [v3 totalSizeForAllNonRedownloadableTracks];
        *(*(*(a1 + 32) + 8) + 32) += [v3 totalSizeForAllRedownloadableNonCacheTracks];
        *(*(*(a1 + 32) + 8) + 48) += [v3 totalSizeForArtwork];
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v9 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [v3 databasePath];
    v11 = 138543618;
    v12 = v10;
    v13 = 1024;
    v14 = [v3 currentDatabaseVersion];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Skipping usage calculation for library at path '%{public}@' because db file is not present or invalid (db version=%d)", &v11, 0x12u);
  }

LABEL_9:
}

void sub_10000AE40(uint64_t a1, void *a2)
{
  v4 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement_Oversize");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v37 = v5;
    v38 = 2114;
    v39 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ EnumerateRemovedFilesInDirectories events=%{public}@", buf, 0x16u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = a2;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v32;
    *&v8 = 138543618;
    v30 = v8;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:{@"rescan", v30, v31}];

        if (v13)
        {
          [*(a1 + 32) _reconcileAllOriginalArtworkForLibrary:*(a1 + 40) withCompletion:0];
          goto LABEL_23;
        }

        v14 = [v12 objectForKeyedSubscript:@"historyDone"];

        if (v14)
        {
          [*(a1 + 32) _reconcileOrginalArtworkWitRelativePaths:*(a1 + 48) forLibrary:*(a1 + 40) withCompletion:0];
          goto LABEL_23;
        }

        v15 = [v12 objectForKeyedSubscript:@"path"];
        v16 = [*(a1 + 40) originalArtworkDirectory];
        v17 = [v15 containsString:v16];

        v18 = *(a1 + 40);
        if (v17)
        {
          v19 = [v18 originalArtworkDirectory];
          v20 = [v15 rangeOfString:v19];
          v22 = v21;

          if (&v20[v22] >= [v15 length])
          {
            [*(a1 + 32) _reconcileAllOriginalArtworkForLibrary:*(a1 + 40) withCompletion:0];
          }

          else
          {
            v23 = [v15 substringFromIndex:&v20[v22 + 1]];
            v24 = *(a1 + 48);
            v25 = [v23 copy];
            [v24 addObject:v25];
          }
        }

        else
        {
          v26 = [v18 rootArtworkCacheDirectory];
          v27 = [v15 containsString:v26];

          if ((v27 & 1) == 0)
          {
            v28 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v29 = *(a1 + 32);
              *buf = v30;
              v37 = v29;
              v38 = 2114;
              v39 = v15;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@ _reconcilePurgeNotification - Ignoring unrecognized path %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
}

void sub_10000B258(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) databasePath];
  v4 = [v2 fileExistsAtPath:v3];
  v5 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) count];
      *buf = 138543618;
      v18 = v7;
      v19 = 2048;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Reconciling %lu paths of purged original artwork.", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000B474;
    v14[3] = &unk_100031200;
    v15 = *(a1 + 48);
    v13 = *(a1 + 32);
    v10 = v13.i64[0];
    v16 = vextq_s8(v13, v13, 8uLL);
    [v9 databaseConnectionAllowingWrites:1 withBlock:v14];
    [*(a1 + 32) cleanupArtworkWithOptions:16];

    v6 = v15;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = [*(a1 + 48) count];
    *buf = 134218242;
    v18 = v11;
    v19 = 2114;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Skipping artwork reconciliation for %lu paths. No file exists at path '%{public}@'", buf, 0x16u);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))();
  }
}

void sub_10000B474(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B52C;
  v7[3] = &unk_100031228;
  v4 = a1[4];
  v5 = a1[6];
  v7[4] = a1[5];
  v8 = v5;
  v9 = v3;
  v6 = v3;
  [v4 enumerateObjectsUsingBlock:v7];
}

void sub_10000B604(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) databasePath];
  v4 = [v2 fileExistsAtPath:v3];
  v5 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138543618;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Reconciling all original artwork for library %{public}@.", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000B7F8;
    v13[3] = &unk_100031200;
    v14 = v9;
    v10 = v2;
    v11 = *(a1 + 40);
    v15 = v10;
    v16 = v11;
    [v14 databaseConnectionAllowingWrites:1 withBlock:v13];
    [*(a1 + 32) cleanupArtworkWithOptions:16];

    v6 = v14;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Skipping artwork reconciliation. No file exists at path '%{public}@'", buf, 0xCu);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))();
  }
}

void sub_10000B7F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B8D0;
  v8[3] = &unk_1000311D8;
  v9 = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v12 = v3;
  v7 = v3;
  [v9 enumerateArtworkRelativePathsWithConnection:v7 matchingRelativePathContainer:0 block:v8];
}

void sub_10000B8D0(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 length])
  {
    v3 = [*(a1 + 32) originalArtworkDirectory];
    v4 = [v3 stringByAppendingPathComponent:v5];

    if (([*(a1 + 40) fileExistsAtPath:v4] & 1) == 0)
    {
      [*(a1 + 48) _updatePurgedOriginalWithRelativePath:v5 forLibrary:*(a1 + 32) usingConnection:*(a1 + 56)];
    }
  }
}

void sub_10000BB70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 intForColumnIndex:1];
  v6 = [v3 intForColumnIndex:2];

  [*(a1 + 32) updateBestArtworkTokenForEntityPersistentID:v4 entityType:v5 artworkType:v6 retrievalTime:0 preserveExistingAvailableToken:*(a1 + 40) usingConnection:0.0];
  v7 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated best artwork token for purged artwork with relativePath %{public}@.", &v10, 0x16u);
  }
}

void sub_10000BF54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v5 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_10000BF98(uint64_t a1, int a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = *(*(a1 + 32) + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C2FC;
  v11[3] = &unk_100031138;
  v12 = WeakRetained;
  v13 = &v16;
  v15 = a2;
  v14 = a3;
  v8 = WeakRetained;
  dispatch_sync(v7, v11);
  v9 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t sub_10000C080(uint64_t a1, int a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = *(*(a1 + 32) + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C2C0;
  v11[3] = &unk_100031138;
  v12 = WeakRetained;
  v13 = &v16;
  v15 = a2;
  v14 = a3;
  v8 = WeakRetained;
  dispatch_sync(v7, v11);
  v9 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_10000C168(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(*(a1 + 32) + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C2B4;
  v7[3] = &unk_1000317B0;
  v8 = WeakRetained;
  v9 = a2;
  v6 = WeakRetained;
  dispatch_sync(v5, v7);
}

void sub_10000C20C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C2AC;
  block[3] = &unk_1000313F0;
  v6 = WeakRetained;
  v4 = WeakRetained;
  dispatch_sync(v3, block);
}

id sub_10000C2C0(uint64_t a1)
{
  result = [*(a1 + 32) _handlePurgeRequestWithUrgency:*(a1 + 56) info:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10000C2FC(uint64_t a1)
{
  result = [*(a1 + 32) _handlePurgeableRequestWithUrgency:*(a1 + 56) info:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000CA10(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) UTF8String];
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v10 = 136446722;
    v11 = v3;
    v12 = 2050;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Authorizer flagged suspicious query=%{public}s with action=%{public}ld from bundleID=%{public}@", &v10, 0x20u);
  }

  v6 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v7 = [*(a1 + 32) UTF8String];
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = 136446722;
    v11 = v7;
    v12 = 2050;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Authorizer flagged suspicious query=%{public}s with action=%{public}ld from bundleID=%{public}@", &v10, 0x20u);
  }
}

uint64_t sub_10000CF14()
{
  if (qword_1000384F0 != -1)
  {
    dispatch_once(&qword_1000384F0, &stru_100031AC8);
  }

  if (MSVDeviceIsWatch())
  {
    v0 = qword_1000384E8;
    v1 = MSVGetDeviceHardwarePlatform();
    LOBYTE(v0) = [v0 containsObject:v1];

    v2 = v0 ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void sub_10000CF98(id a1)
{
  v1 = qword_1000384E8;
  qword_1000384E8 = &off_100033110;
}

void sub_10000D2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D2F0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [ML3MusicLibrary libraryPathForContainerPath:a2];
  if ([*(a1 + 32) isEqualToString:?])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

id sub_10000D5CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 endTransaction];
}

void sub_10000D7D0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 192) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v9 = v2;
    v3 = [v2 client];
    v4 = [v3 processID];
    if (v4 == [*(a1 + 48) processID])
    {
      v5 = [v3 bundleID];
      v6 = [*(a1 + 48) bundleID];
      v7 = v6;
      if (v5 == v6)
      {
      }

      else
      {
        v8 = [v5 isEqual:v6];

        if ((v8 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

LABEL_8:

    v2 = v9;
  }
}

void sub_10000D964(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 192) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    [*(*(a1 + 32) + 192) setObject:0 forKeyedSubscript:*(a1 + 40)];
    v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 138543618;
      v6 = v4;
      v7 = 2114;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unregistering transaction %{public}@:%{public}@", &v5, 0x16u);
    }
  }
}

void sub_10000DB24(void *a1)
{
  [*(a1[4] + 192) setObject:a1[6] forKeyedSubscript:a1[5]];
  v2 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering transaction %{public}@: %{public}@", &v5, 0x16u);
  }
}

void sub_10000DD8C(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Maintenance] Maintenance operation complete. Performing artwork reconciliation.", buf, 2u);
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 88);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DE7C;
  v5[3] = &unk_100031698;
  v6 = *(a1 + 48);
  [v4 reconcilePurgeableArtworkForLibrary:v3 withCompletion:v5];
}

uint64_t sub_10000DE7C(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Maintenance] Artwork reconciliation complete.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

id sub_10000E08C(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Maintenance] Synchronous maintenance operation complete. Performing artwork reconciliation.", v4, 2u);
  }

  return [*(*(a1 + 32) + 88) reconcilePurgeableArtworkForLibrary:*(a1 + 40) withCompletion:0];
}

void sub_10000E514(uint64_t a1)
{
  v2 = dispatch_time(0, 5000000000);
  v3 = *(*(a1 + 32) + 160);
  v4 = [*(a1 + 40) name];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 isEqualToString:ML3MusicLibraryContentsDidChangeNotification];

    if (v6)
    {
      v7 = os_log_create("com.apple.amp.medialibraryd", "Service");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [*(a1 + 40) name];
        *buf = 138543362;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Resetting spotlight update timer to 5s due to %{public}@", buf, 0xCu);
      }

      dispatch_source_set_timer(*(*(a1 + 32) + 160), v2, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    }
  }

  else
  {
    v9 = [v4 isEqualToString:ML3MusicLibraryNonContentsPropertiesDidChangeNotification];

    v10 = os_log_create("com.apple.amp.medialibraryd", "Service");
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Creating spotlight update timer for 1hr due to ML3MusicLibraryNonContentsPropertiesDidChangeNotification", buf, 2u);
      }

      v2 = dispatch_time(0, 3600000000000);
    }

    else
    {
      if (v11)
      {
        v12 = [*(a1 + 40) name];
        *buf = 138543362;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Creating spotlight update timer for 5s due to %{public}@", buf, 0xCu);
      }
    }

    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 16));
    v14 = *(a1 + 32);
    v15 = *(v14 + 160);
    *(v14 + 160) = v13;

    dispatch_source_set_timer(*(*(a1 + 32) + 160), v2, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v16 = *(a1 + 32);
    v17 = *(v16 + 160);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000E7D8;
    handler[3] = &unk_1000313F0;
    handler[4] = v16;
    dispatch_source_set_event_handler(v17, handler);
    dispatch_resume(*(*(a1 + 32) + 160));
  }
}

void sub_10000E7D8(uint64_t a1)
{
  [*(a1 + 32) updateSpotlightIndexForBundleID:ML3BundleIDMusic withCompletion:&stru_1000319E0];
  dispatch_source_cancel(*(*(a1 + 32) + 160));
  v2 = *(a1 + 32);
  v3 = *(v2 + 160);
  *(v2 + 160) = 0;
}

void sub_10000E83C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = os_log_create("com.apple.amp.medialibraryd", "Service");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      LOWORD(v10) = 0;
      v7 = "Successfully finished spotlight index for Music from library did change notification";
      v8 = v5;
      v9 = 2;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v6)
  {
    v10 = 138543362;
    v11 = v4;
    v7 = "Failed to index Music for spotlight from library did change notification with error: %{public}@";
    v8 = v5;
    v9 = 12;
    goto LABEL_6;
  }
}

void sub_10000F284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000F2A0(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Handling SIGUSR1 event", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDebugSignal];
}

void sub_10000F32C(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Handling SIGTERM event", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTerminationSignal];
  xpc_transaction_exit_clean();
}

void sub_10000F5D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 72);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F664;
  v4[3] = &unk_100031918;
  v4[4] = v1;
  v5 = v2;
  [v3 cancelDatabaseOperationsForClient:v5 completion:v4];
}

void sub_10000F664(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F6F4;
  v4[3] = &unk_100031BA8;
  v4[4] = v2;
  v5 = v1;
  dispatch_barrier_async(v3, v4);
}

uint64_t sub_10000F848(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F860(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 176) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000FA90(void *a1)
{
  v2 = [*(a1[4] + 176) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [[ML3MusicLibrary alloc] initWithPath:a1[5]];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(a1[6] + 8) + 40) setDelegate:a1[4]];
    v8 = [*(*(a1[6] + 8) + 40) connectionPool];
    [v8 setUseDistantWriterConnections:0];

    v9 = a1[5];
    v10 = *(a1[4] + 176);
    v11 = *(*(a1[6] + 8) + 40);

    [v10 setObject:v11 forKey:v9];
  }
}

id sub_10000FC20(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000FC9C;
  v3[3] = &unk_1000318A0;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

uint64_t sub_10000FC9C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 isEqualToString:MLMediaLibraryServiceMachServiceName])
  {
    v6 = 1;
  }

  else
  {
    if (![v8 isEqualToString:@"MLDSupportedServicesMediaLibraryResourcesService"])
    {
      goto LABEL_6;
    }

    v6 = 2;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  *a4 = 1;
LABEL_6:

  return _objc_release_x1();
}

void sub_10000FE2C(void *a1)
{
  v2 = a1[6];
  switch(v2)
  {
    case 1:
      v3 = MLMediaLibraryServiceMachServiceName;
      if (!v3)
      {
        break;
      }

LABEL_7:
      v4 = [*(a1[4] + 56) objectForKeyedSubscript:v3];

      if (v4)
      {
LABEL_23:
        v11 = [*(a1[4] + 56) objectForKeyedSubscript:v3];
        v12 = *(a1[5] + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        goto LABEL_24;
      }

      v5 = a1[6];
      if (v5 <= 1)
      {
        if (v5)
        {
          if (v5 == 1)
          {
            v4 = [[NSXPCListener alloc] initWithMachServiceName:v3];
            [v4 setDelegate:a1[4]];
          }
        }

        else
        {
          v8 = +[NSAssertionHandler currentHandler];
          [v8 handleFailureInMethod:a1[7] object:a1[4] file:@"MLDMediaLibraryService.m" lineNumber:1458 description:@"We should never get here"];

          v4 = 0;
        }

        goto LABEL_20;
      }

      if (v5 == 2)
      {
        v4 = +[NSXPCListener anonymousListener];
        v7 = +[MLMediaLibraryResourcesServiceServer sharedInstance];
      }

      else
      {
        if (v5 != 3)
        {
LABEL_20:
          v10 = os_log_create("com.apple.amp.medialibraryd", "Service");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 138543362;
            v15 = v3;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting service '%{public}@'", &v14, 0xCu);
          }

          [*(a1[4] + 56) setObject:v4 forKeyedSubscript:v3];
          [v4 resume];

          goto LABEL_23;
        }

        v4 = +[NSXPCListener anonymousListener];
        v7 = +[MLDClientImportService sharedService];
      }

      v9 = v7;
      [v4 setDelegate:v7];

      goto LABEL_20;
    case 2:
      v3 = @"MLDSupportedServicesMediaLibraryResourcesService";
      goto LABEL_7;
    case 3:
      v3 = @"MLDSupportedServiceMediaLibraryClientImportService";
      goto LABEL_7;
  }

  v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@ - Attempting to retrieve an XPC listener for an unknown service", &v14, 0xCu);
  }

LABEL_24:
}

void sub_1000101B4(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        [v7 setDelegate:{*(a1 + 40), v11}];
        v8 = [v7 connectionPool];
        [v8 setUseDistantWriterConnections:0];

        v9 = *(*(a1 + 40) + 176);
        v10 = [v7 databasePath];
        [v9 setObject:v7 forKey:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_100010394(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v28 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting up maintenance task", buf, 0xCu);
  }

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = dispatch_get_global_queue(21, 0);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000107EC;
  v26[3] = &unk_100031850;
  v26[4] = *(a1 + 32);
  v6 = [v4 registerForTaskWithIdentifier:@"com.apple.medialibraryd.maintainence" usingQueue:v5 launchHandler:v26];

  if ((v6 & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to set up maintenance task handler", buf, 0xCu);
    }
  }

  v9 = [v4 taskRequestForIdentifier:@"com.apple.medialibraryd.maintainence"];
  v10 = v9;
  if (v9)
  {
    [v9 interval];
    if (v11 == 86400.0 && [v10 priority] == 1 && objc_msgSend(v10, "requiresUserInactivity"))
    {
      v12 = os_log_create("com.apple.amp.medialibraryd", "Service");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        *buf = 138543362;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Have existing task scheduled - no need to register a new one", buf, 0xCu);
      }

      goto LABEL_25;
    }

    v25 = 0;
    v14 = [v4 cancelTaskRequestWithIdentifier:@"com.apple.medialibraryd.maintainence" error:&v25];
    v15 = v25;
    if ((v14 & 1) == 0)
    {
      v16 = os_log_create("com.apple.amp.medialibraryd", "Service");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to cancel existing task. err=%{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    *buf = 138543362;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering new background task", buf, 0xCu);
  }

  v20 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.medialibraryd.maintainence"];
  [v20 setInterval:86400.0];
  [v20 setPriority:1];
  [v20 setRequiresUserInactivity:1];
  v24 = v15;
  v21 = [v4 submitTaskRequest:v20 error:&v24];
  v12 = v24;

  if ((v21 & 1) == 0)
  {
    v22 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      *buf = 138543618;
      v28 = v23;
      v29 = 2114;
      v30 = v12;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@ Failed to submit new task. err=%{public}@", buf, 0x16u);
    }
  }

LABEL_25:
}

void sub_1000107EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing maintenance task", buf, 0xCu);
  }

  v6 = dispatch_group_create();
  v7 = +[ML3MusicLibrary allLibraries];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000109C0;
  v14[3] = &unk_100031828;
  v8 = *(a1 + 32);
  v15 = v6;
  v16 = v8;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v14];

  v10 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010AAC;
  block[3] = &unk_1000313F0;
  v13 = v3;
  v11 = v3;
  dispatch_group_notify(v9, v10, block);
}

void sub_1000109C0(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  v5 = [v3 databasePath];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010AB4;
  v9[3] = &unk_100031800;
  v10 = v3;
  v8 = *(a1 + 32);
  v6 = v8.i64[0];
  v11 = vextq_s8(v8, v8, 8uLL);
  v7 = v3;
  [v4 _performMaintenanceOnDatabaseAtPath:v5 withActivity:0 completion:v9];
}

void sub_100010AB4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Music" allowPlaceholder:1 error:0];
    v4 = [v3 applicationState];
    v5 = [v4 isValid];

    if (v5)
    {
      v17[0] = MLDatabaseOperationOptionDatabasePathKey;
      v6 = [*(a1 + 32) databasePath];
      v18[0] = v6;
      v18[1] = &off_100033140;
      v17[1] = MLDatabaseOperationOptionPriorityLevelKey;
      v17[2] = MLDatabaseOperationOptionReadOnlyKey;
      v17[3] = MLDatabaseOperationOptionEnqueueSerially;
      v18[2] = &__kCFBooleanTrue;
      v18[3] = &__kCFBooleanTrue;
      v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];

      v15 = MLDatabaseOperationAttributeBundleIDKey;
      v16 = @"com.apple.Music";
      v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v9 = [NSMutableDictionary dictionaryWithDictionary:v8];

      [v9 setValue:*(*(a1 + 40) + 128) forKey:MLDatabaseOperationAttributeSpotlightIndexAppEntityAssociatorKey];
      [*(a1 + 40) performDatabaseOperation:4 withAttributes:v9 options:v7 completionHandler:0];
    }

    if (sub_10000CF14())
    {
      v10 = [*(a1 + 32) databasePath];
      v14[0] = v10;
      v14[1] = &off_100033140;
      v13[1] = MLDatabaseOperationOptionPriorityLevelKey;
      v13[2] = MLDatabaseOperationOptionReadOnlyKey;
      v13[3] = MLDatabaseOperationOptionEnqueueSerially;
      v14[2] = &__kCFBooleanTrue;
      v14[3] = &__kCFBooleanTrue;
      v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

      [*(a1 + 40) performDatabaseOperation:8 withAttributes:&__NSDictionary0__struct options:v11 completionHandler:0];
    }

    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v12 = *(a1 + 48);

    dispatch_group_leave(v12);
  }
}

void sub_100010DE0(uint64_t a1, xpc_object_t xdict)
{
  v3 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, _xpc_event_key_name)];
  if ([v3 isEqualToString:@"com.apple.CascadeSets.DonateNow"] || objc_msgSend(v3, "isEqualToString:", @"com.apple.UserProfiles.ProfileStoreDidUpdate"))
  {
    [*(a1 + 32) updateSiriIndexMetadataForAllLibrariesWithCompletion:0];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Received unhandled notifyd.matching darwin notification: '%{public}@'", &v5, 0xCu);
    }
  }
}

void sub_100010F94(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 192) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [v1 privacyContext];

  if (v2)
  {
    v3 = [v1 privacyContext];
    [v3 logDatabasePrivacyAccess];
  }

  else
  {
    v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Could not log database access. privacyContext=nil", v4, 2u);
    }
  }
}

void sub_100011918(uint64_t a1)
{
  [*(a1 + 32) setLocked:*(*(a1 + 40) + 208)];
  v2 = +[MSVXPCTransaction activeTransactions];
  [*(a1 + 32) setActiveXPCTransactions:v2];

  [*(a1 + 32) setActiveClients:*(a1 + 48)];
  v3 = [*(*(a1 + 40) + 176) allValues];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableDictionary);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [MLDDatabaseFileDiagnostic alloc];
        v12 = [v10 databasePath];
        v13 = [(MLDDatabaseFileDiagnostic *)v11 initWithDatabasePath:v12];

        [v4 addObject:v13];
        v14 = [v10 connectionPool];
        v15 = [v14 _generateDiagnostic];
        v16 = [v10 databasePath];
        [v5 setObject:v15 forKey:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) setDatabaseFileDiagnostics:v4];
  [*(a1 + 32) setLibraryConnectionDiagnostics:v5];
  [*(*(a1 + 40) + 72) collectDiagnostic:*(a1 + 32)];
  [*(*(a1 + 40) + 80) collectDiagnostic:*(a1 + 32)];
}

void sub_100011FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_100011FF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Connection invalidated: %{public}@", &v5, 0xCu);
  }

  if (v3)
  {
    [WeakRetained _handleXPCDisconnect:v3];
  }
}

void sub_1000120E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Connection interrupted: %{public}@", &v5, 0xCu);
  }

  if (v3)
  {
    [WeakRetained _handleXPCDisconnect:v3];
  }
}

void sub_100012610(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  if (v1)
  {
    v3 = *(v2 + 16);
    v4 = a1[6];
    v5 = 0;
LABEL_5:

    v3(v4, v1, v5);
    return;
  }

  v5 = a1[5];
  if (v5)
  {
    v3 = *(v2 + 16);
    v4 = a1[6];
    v1 = 0;
    goto LABEL_5;
  }

  v6 = [NSError msv_errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:0 debugDescription:@"MLDMediaLibraryService securityScopedURLWrapperForItemPid: encountered nil wrapper"];
  (*(v2 + 16))(v2, 0, v6);
}

void sub_100012DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100012DFC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = a3;
    os_unfair_lock_lock(v4 + 8);
    [*(a1 + 32) addObject:v5];

    os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  }

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_100012E74(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ([*(a1 + 32) count])
    {
      v2 = [NSError msv_errorWithDomain:@"MLDMediaLibraryServiceErrorDomain" code:3000 underlyingErrors:*(a1 + 32) debugDescription:@"Updating Siri index failed"];
    }

    else
    {
      v2 = 0;
    }

    v3 = v2;
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100013608(uint64_t a1)
{
  v2 = [*(a1 + 32) isDatabaseLocked];
  v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unlocking database", buf, 2u);
    }

    v5 = *(a1 + 32);
    v6 = [v5 _allMediaLibraries];
    [v5 _reconnectLibraries:v6];

    [*(*(a1 + 32) + 96) clearValidatedPaths];
    [*(*(a1 + 32) + 96) resumeValidations];
    v7 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unlock: resuming media library writer", buf, 2u);
    }

    [*(*(a1 + 32) + 72) setSuspended:0];
    v8 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unlock: resuming the maintenance tasks queue", buf, 2u);
    }

    [*(*(a1 + 32) + 104) setSuspended:0];
    v9 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unlock: completed successfully", buf, 2u);
    }

    [*(a1 + 32) setCurrentLockReason:0];
    [*(a1 + 32) setDatabaseLocked:0];
    v10 = *(*(a1 + 32) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013938;
    block[3] = &unk_100031698;
    v19 = *(a1 + 40);
    dispatch_async(v10, block);
    v11 = v19;
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unlock: not locked", buf, 2u);
    }

    v12 = [ML3MediaLibraryWriter writerErrorWithCode:0 description:@"Database is not currently locked."];
    v13 = *(*(a1 + 32) + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100013950;
    v15[3] = &unk_1000316E8;
    v14 = *(a1 + 40);
    v16 = v12;
    v17 = v14;
    v11 = v12;
    dispatch_async(v13, v15);
  }
}

void sub_100013A6C(uint64_t a1)
{
  v2 = [*(a1 + 32) isDatabaseLocked];
  v3 = os_log_create("com.apple.amp.medialibraryd", "Service");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Lock: already locked", buf, 2u);
    }

    [*(a1 + 32) currentLockReason];
    v5 = MLServiceLockReasonDescription();
    v6 = [NSString stringWithFormat:@"Database is already locked. (Reason = %@)", v5];

    v7 = [ML3MediaLibraryWriter writerErrorWithCode:1000 description:v6];
    v8 = *(*(a1 + 32) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013EF8;
    block[3] = &unk_1000316E8;
    v9 = *(a1 + 40);
    v21 = v7;
    v22 = v9;
    v10 = v7;
    dispatch_async(v8, block);
  }

  else
  {
    if (v4)
    {
      v11 = MLServiceLockReasonDescription();
      *buf = 138543362;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Locking database for reason: %{public}@", buf, 0xCu);
    }

    v12 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Lock: cancelling all database operations", buf, 2u);
    }

    [*(*(a1 + 32) + 72) cancelAllActiveDatabaseOperationsAndWaitUntilFinished:1];
    [*(*(a1 + 32) + 96) suspendValidations];
    v13 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Lock: suspending the maintenance tasks queue", buf, 2u);
    }

    [*(*(a1 + 32) + 104) setSuspended:1];
    [*(*(a1 + 32) + 104) waitUntilAllOperationsAreFinished];
    v14 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Lock: cancelling all import operations", buf, 2u);
    }

    [*(*(a1 + 32) + 80) cancelAllImportOperations];
    v15 = *(a1 + 32);
    v16 = [v15 _allMediaLibraries];
    [v15 _disconnectLibraries:v16];

    v17 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Lock: suspending media library writer", buf, 2u);
    }

    [*(*(a1 + 32) + 72) setSuspended:1];
    v18 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Lock: completed successfully", buf, 2u);
    }

    [*(a1 + 32) setCurrentLockReason:*(a1 + 48)];
    [*(a1 + 32) setDatabaseLocked:1];
    v19 = *(*(a1 + 32) + 40);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100013EE0;
    v23[3] = &unk_100031698;
    v24 = *(a1 + 40);
    dispatch_async(v19, v23);
    v6 = v24;
  }
}

uint64_t sub_100014044(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001431C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [ML3DatabasePrivacyContext alloc];
    v7 = [*(a1 + 32) clientIdentity];
    v8 = [v6 initWithClientIdentity:v7];

    [v8 logDatabasePrivacyAccess];
    v9 = [*(a1 + 40) _mediaLibraryForPath:*(a1 + 48)];
    v10 = [[ML3ServiceDatabaseImport alloc] initWithDatabaseImport:*(a1 + 32) library:v9 writer:*(*(a1 + 40) + 72) client:*(a1 + 56)];
    v11 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Performing import: %{public}@", buf, 0xCu);
    }

    v12 = *(*(a1 + 40) + 80);
    v13 = *(a1 + 88);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000145EC;
    v19[3] = &unk_1000315F8;
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100014660;
    v16[3] = &unk_100031620;
    v18 = *(a1 + 80);
    v17 = *(a1 + 72);
    [v12 performImport:v10 fromSource:v13 progressBlock:v19 withCompletionHandler:v16];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Database validation failed. Aborting database import.", buf, 2u);
    }

    v15 = *(a1 + 80);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v5, 0);
    }

    [*(a1 + 72) endTransaction];
  }
}

void sub_1000145EC(uint64_t a1, float a2)
{
  v6 = [*(a1 + 32) connection];
  v4 = [v6 remoteObjectProxy];
  *&v5 = a2;
  [v4 importOperationWithIdentifier:*(a1 + 40) didUpdateWithProgress:v5];
}

id sub_100014660(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 endTransaction];
}

void sub_100014CD4(uint64_t a1)
{
  v2 = [*(a1 + 32) _mediaLibraryForPath:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 72);
  v4 = *(a1 + 88);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015000;
  v8[3] = &unk_100031580;
  v9 = v7;
  v11 = *(a1 + 80);
  v10 = *(a1 + 72);
  [v3 performDatabaseOperation:v4 onLibrary:v2 withAttributes:v5 options:v6 fromClient:v9 completionHandler:v8];
}

void sub_100014DE0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    *buf = 0u;
    v16 = 0u;
    v6 = [*(a1 + 32) connection];

    if (v6)
    {
      v7 = [*(a1 + 32) connection];
      v8 = v7;
      if (v7)
      {
        objc_msgSend_auditToken(v7);
      }

      else
      {
        v13 = 0u;
        v14 = 0u;
      }

      *buf = v13;
      v16 = v14;
    }

    else
    {
      MSVAuditTokenForCurrentProcess();
      v8 = os_log_create("com.apple.amp.medialibraryd", "Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Logging privacy access for daemon process", &v13, 2u);
      }
    }

    v13 = *buf;
    v14 = v16;
    [ML3DatabasePrivacyContext logDatabasePrivacyAccessWithAuditToken:&v13];
    v11 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 64);
      LODWORD(v13) = 134217984;
      *(&v13 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Validating successful - enqueing operation for type %lu", &v13, 0xCu);
    }

    dispatch_async(*(*(a1 + 40) + 32), *(a1 + 48));
  }

  else
  {
    v9 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Validation failed! Operation not enqueued. %{public}@", buf, 0xCu);
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v5);
    }
  }
}

void sub_100015000(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished database operation request on client: %{public}@. err=%{public}@", &v9, 0x16u);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  [*(a1 + 40) endTransaction];
}

void sub_100015668(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _logPrivacyAccessWithTransactionIdentifier:*(a1 + 40)];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 72);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v12 = 0;
  v8 = [v4 executeUntrustedQuery:v5 withParameters:v6 options:v7 onTransaction:v3 error:&v12];
  v9 = v12;
  [*(a1 + 32) faultForQuery:*(a1 + 48) fromClientBundleID:*(a1 + 72) onTrustError:v9];
  if (v8)
  {
    v10 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
    if (!v10)
    {
      v11 = [ML3MediaLibraryWriter writerErrorWithCode:200 description:@"Failed to serialize fetched query data."];

      v9 = v11;
    }
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 80) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1000159D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _logPrivacyAccessWithTransactionIdentifier:*(a1 + 40)];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 72);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v15 = 0;
  v7 = [v4 executeUntrustedUpdate:v5 withParameters:v6 onTransaction:v3 error:&v15];
  v8 = v15;
  [*(a1 + 32) faultForQuery:*(a1 + 48) fromClientBundleID:*(a1 + 64) onTrustError:v8];
  v9 = *(a1 + 72);
  if (v9)
  {
    v10 = *(*(a1 + 32) + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100015ADC;
    v11[3] = &unk_100031508;
    v13 = v9;
    v14 = v7;
    v12 = v8;
    dispatch_async(v10, v11);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100015C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100015CB8(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v10 = obj;
  v6 = a2;
  v7 = [*(*(a1 + 32) + 72) _transactionForIdentifier:v6];

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100016314(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = os_log_create("com.apple.amp.medialibraryd", "Default");
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Validating successful - starting transaction", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v16 = *(a1 + 32);
    v8 = *(v16 + 24);
    block[2] = sub_100016524;
    block[3] = &unk_100031490;
    v9 = *(&v16 + 1);
    v10 = *(a1 + 48);
    v11 = *(a1 + 96);
    v12 = *(a1 + 80);
    v23 = *(a1 + 88);
    v24 = v11;
    v22 = v12;
    v13 = *(a1 + 56);
    *&v14 = v10;
    *(&v14 + 1) = v13;
    v18 = v16;
    v19 = v14;
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    dispatch_async(v8, block);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Validation failed - skipping starting a transaction. err=%{public}@", buf, 0xCu);
    }

    v15 = *(a1 + 80);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v5);
    }
  }
}

void sub_100016524(uint64_t a1)
{
  v2 = [*(a1 + 32) _mediaLibraryForPath:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 72);
  v4 = *(a1 + 48);
  v5 = *(a1 + 88);
  v15 = 0;
  v6 = [v3 beginTransactionForLibrary:v2 withClient:v4 options:v5 error:&v15];
  v7 = v15;
  v8 = [v6 identifier];
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    if (!v7)
    {
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:*(a1 + 96) object:*(a1 + 32) file:@"MLDMediaLibraryService.m" lineNumber:484 description:@"Error cannot be nil even with nil transaction identifier"];
    }

    (*(*(a1 + 80) + 16))();
    [*(a1 + 56) endTransaction];
    [*(a1 + 64) invalidate];
    v12 = os_log_create("com.apple.amp.medialibraryd", "Service");
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 64);
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, &v12->super, OS_LOG_TYPE_DEFAULT, "Releasing task assertion %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v12 = objc_alloc_init(MLDTransactionInfo);
    [(MLDTransactionInfo *)v12 setTaskAssertion:*(a1 + 64)];
    [(MLDTransactionInfo *)v12 setClient:*(a1 + 48)];
    v13 = [*(a1 + 72) privacyContext];
    [(MLDTransactionInfo *)v12 setPrivacyContext:v13];

    [*(a1 + 32) _registerTransactionInfo:v12 forIdentitifer:v9];
    (*(*(a1 + 80) + 16))();
    [*(a1 + 56) endTransaction];
  }
}

void sub_100016D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100016D94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = os_log_create("com.apple.amp.medialibraryd", "Service");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Integrity check complete. err=%{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3 == 0, v3);
  [*(a1 + 32) endTransaction];
}

void sub_100017100(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000172B4;
  v9[3] = &unk_100031418;
  v11 = *(a1 + 56);
  v10 = *(a1 + 40);
  v3 = objc_retainBlock(v9);
  [v2 addObject:v3];

  v4 = [*(*(a1 + 32) + 112) operations];
  v5 = [v4 firstObject];

  if (!v5)
  {
    v5 = [[ML3DatabaseRecoveryOperation alloc] initWithDatabaseFilePath:*(a1 + 48)];
    objc_initWeak(&location, v5);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100017304;
    v6[3] = &unk_100031BD0;
    objc_copyWeak(&v7, &location);
    v6[4] = *(a1 + 32);
    [v5 setCompletionBlock:v6];
    [*(*(a1 + 32) + 112) addOperation:v5];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void sub_100017294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000172B4(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), a2 == 0, a2);
  v3 = *(a1 + 32);

  return [v3 endTransaction];
}

void sub_100017304(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000173BC;
  v7[3] = &unk_100031BA8;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

id sub_1000173BC(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 120);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 120) removeAllObjects];
}

void sub_100017728(uint64_t a1)
{
  [*(*(a1 + 32) + 56) enumerateKeysAndObjectsUsingBlock:&stru_1000313C8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;
}

void sub_100017778(id a1, NSString *a2, NSXPCListener *a3, BOOL *a4)
{
  v4 = a3;
  [(NSXPCListener *)v4 invalidate];
  [(NSXPCListener *)v4 suspend];
  [(NSXPCListener *)v4 setDelegate:0];
}

uint64_t sub_100017AF4(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v1 = &_dispatch_main_q;
  objc_copyWeak(&v4, &location);
  v2 = MSVLogAddStateHandler();
  objc_destroyWeak(&v4);

  objc_destroyWeak(&location);
  return v2;
}

void sub_100017BB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_100017BD4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained _stateDump];
      v9 = v5[2](v5, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_100017D00(id a1)
{
  qword_1000384D8 = [[MLDMediaLibraryService alloc] _init];

  _objc_release_x1();
}

void sub_100017FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to report progress to client. err=%{public}@", &v6, 0x16u);
  }
}

void sub_100018454(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to obtain client proxy object. err=%{public}@", &v6, 0x16u);
  }
}

void sub_10001852C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping failure", &v8, 0xCu);
    }

    *(*(a1 + 32) + 48) = 1;
  }
}

void sub_1000189DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to obtain client proxy object. err=%{public}@", &v6, 0x16u);
  }
}

void sub_100018AB4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping failure", &v8, 0xCu);
    }

    *(*(a1 + 32) + 48) = 1;
  }
}

void sub_100018F64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to obtain client proxy object. err=%{public}@", &v6, 0x16u);
  }
}

void sub_10001903C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping failure", &v8, 0xCu);
    }

    *(*(a1 + 32) + 48) = 1;
  }
}

void sub_1000194E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to obtain client proxy object. err=%{public}@", &v6, 0x16u);
  }
}

void sub_1000195BC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping failure", &v8, 0xCu);
    }

    *(*(a1 + 32) + 48) = 1;
  }
}

void sub_100019A6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to obtain client proxy object. err=%{public}@", &v6, 0x16u);
  }
}

void sub_100019B44(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping failure", &v8, 0xCu);
    }

    *(*(a1 + 32) + 48) = 1;
  }
}

void sub_10001A00C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to obtain client proxy object. err=%{public}@", &v6, 0x16u);
  }
}

void sub_10001A0E4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping failure", &v8, 0xCu);
    }

    *(*(a1 + 32) + 48) = 1;
  }
}

void sub_10001A4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10001A548(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001A560(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1[4] + 32) connection];
  v27 = v5;
  v7 = [NSArray arrayWithObjects:&v27 count:1];
  v8 = *(a1[6] + 8);
  obj = *(v8 + 40);
  v9 = [v6 executeUpdate:@"UPDATE item_store SET cloud_in_my_library=1 WHERE item_pid=?" withParameters:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(a1[5] + 8) + 24) = v9;

  if ((v9 & 1) == 0)
  {
    v14 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = [v5 longLongValue];
      v19 = *(*(a1[6] + 8) + 40);
      *buf = 134218242;
      v24 = v18;
      v25 = 2114;
      v26 = v19;
      v17 = "Could not update cloud in my library for track=%lld - error=%{public}@";
      goto LABEL_7;
    }

LABEL_8:

    *a3 = 1;
    goto LABEL_9;
  }

  v10 = [*(a1[4] + 32) connection];
  v22 = v5;
  v11 = [NSArray arrayWithObjects:&v22 count:1];
  v12 = *(a1[6] + 8);
  v20 = *(v12 + 40);
  v13 = [v10 executeUpdate:@"UPDATE item SET in_my_library=1 WHERE item_pid=?" withParameters:v11 error:&v20];
  objc_storeStrong((v12 + 40), v20);
  *(*(a1[5] + 8) + 24) = v13;

  if ((v13 & 1) == 0)
  {
    v14 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v5 longLongValue];
      v16 = *(*(a1[6] + 8) + 40);
      *buf = 134218242;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      v17 = "Could not update in my library for track=%lld - error=%{public}@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v17, buf, 0x16u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

void sub_10001AD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if ((v12 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001AE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if ((v12 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001AF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if ((v12 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001AFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if ((v12 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001B0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if ((v12 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001B1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if ((v12 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001B348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;
  if ((v12 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001B434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;
  if ((v13 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001B4D0(uint64_t a1)
{
  *(*(a1 + 32) + 49) = 0;
  v1 = [*(*(a1 + 32) + 80) getCFRunLoop];

  CFRunLoopStop(v1);
}

uint64_t sub_10001BDC4(void *a1, int a2, uint64_t *a3)
{
  if (a2 >= 1)
  {
    v3 = *a3;
    v4 = a1;
    v5 = [NSString stringWithUTF8String:v3];
    [v4 addObject:v5];
  }

  return 0;
}

void sub_10001C428(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 160));
  _Unwind_Resume(a1);
}

void sub_10001C46C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    *buf = 138543618;
    v10 = WeakRetained;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@ - Connection interrupted for session %{public}@", buf, 0x16u);
  }

  if (WeakRetained)
  {
    v5 = WeakRetained[2];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001C754;
    v6[3] = &unk_100031BA8;
    v7 = *(a1 + 32);
    v8 = WeakRetained;
    dispatch_sync(v5, v6);
  }
}

void sub_10001C5C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    *buf = 138543618;
    v10 = WeakRetained;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@ - Connection invalidated for session %{public}@ - removing", buf, 0x16u);
  }

  if (WeakRetained)
  {
    v5 = WeakRetained[2];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001C714;
    v6[3] = &unk_100031BA8;
    v7 = *(a1 + 32);
    v8 = WeakRetained;
    dispatch_sync(v5, v6);
  }
}

id sub_10001C714(uint64_t a1)
{
  [*(a1 + 32) stop];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);

  return [v3 removeObject:v2];
}

id sub_10001C754(uint64_t a1)
{
  [*(a1 + 32) stop];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);

  return [v3 removeObject:v2];
}

void sub_10001C884(id a1)
{
  qword_1000384F8 = objc_alloc_init(MLDClientImportService);

  _objc_release_x1();
}