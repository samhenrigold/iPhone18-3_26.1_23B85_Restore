uint64_t _s6FieldsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001E6EF0(uint64_t a1)
{
  result = sub_1001E6F18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001E6F18()
{
  result = qword_10093C988;
  if (!qword_10093C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C988);
  }

  return result;
}

unint64_t sub_1001E6F6C(uint64_t a1)
{
  result = sub_1001E6F94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001E6F94()
{
  result = qword_10093C990;
  if (!qword_10093C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C990);
  }

  return result;
}

unint64_t sub_1001E6FEC()
{
  result = qword_10093C998;
  if (!qword_10093C998)
  {
    sub_1000F514C(&qword_10093C9A0, &qword_10079A468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C998);
  }

  return result;
}

unint64_t sub_1001E7054()
{
  result = qword_10093C9A8;
  if (!qword_10093C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C9A8);
  }

  return result;
}

uint64_t sub_1001E70A8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093C9B0);
  v1 = sub_100006654(v0, qword_10093C9B0);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1001E71E4()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100935BE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10093C9B0);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    aBlock[0] = v7;
    *v6 = 136446210;
    v8 = sub_1003533B0();
    v10 = v9;
    v11 = sub_10000668C(v8, v9, aBlock);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "RDStoreControllerMigrator_AutoConvertSharedInlineTags.Runner BEGIN {persistentStore: %{public}s}", v6, 0xCu);
    sub_10000607C(v7);
  }

  v40 = 0;
  v41 = 0;
  v19 = v1[3];
  v20 = swift_allocObject();
  v20[2] = v1;
  v20[3] = &v41;
  v20[4] = &v40;
  v20[5] = v2;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1001E7CD8;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008E9DC8;
  v22 = _Block_copy(aBlock);

  [v19 performBlockAndWait:v22];
  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 134218498;
      swift_beginAccess();
      *(v25 + 4) = v41;
      *(v25 + 12) = 2048;
      swift_beginAccess();
      *(v25 + 14) = v40;
      *(v25 + 22) = 2082;
      v27 = sub_1003533B0();
      v29 = v28;
      v30 = sub_10000668C(v27, v28, &v38);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v25 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "RDStoreControllerMigrator_AutoConvertSharedInlineTags.Runner FINISH {successfulMigrationCount: %ld, failedMigrationCount: %ld, persistentStore: %{public}s}", v25, 0x20u);
      sub_10000607C(v26);
    }
  }
}

double sub_1001E75C8(uint64_t a1, void *a2, void *a3)
{
  v47 = sub_1001E7874();
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1001E7CE4();
  v22 = BidirectionalCollection<>.slices(by:)();
  v47, v23, v24, v25, v26, v27, v28, v29;
  v37 = *(v22 + 16);
  if (v37)
  {
    v46 = v22;
    v38 = (v22 + 56);
    while (1)
    {
      v39 = *(v38 - 2);
      v40 = *(v38 - 1);
      v41 = *v38;
      swift_unknownObjectRetain();
      v42 = objc_autoreleasePoolPush();
      v43 = sub_1001E82F0(v39, v40, v41);
      if (__OFADD__(*a2, v43))
      {
        break;
      }

      *a2 += v43;
      if (__OFADD__(*a3, v44))
      {
        goto LABEL_17;
      }

      v38 += 4;
      *a3 += v44;
      objc_autoreleasePoolPop(v42);
      swift_unknownObjectRelease();
      if (!--v37)
      {
        v45 = v46;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    swift_once();
    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10093C9B0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v47 = v9;
      *v8 = 136446210;
      swift_getErrorValue();
      v10 = Error.rem_errorDescription.getter();
      v12 = v11;
      v13 = sub_10000668C(v10, v11, &v47);
      v12, v14, v15, v16, v17, v18, v19, v20;
      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDStoreControllerMigrator_AutoConvertSharedInlineTags.Runner failed to fetch Reminders {error: %{public}s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }

  else
  {
    v45 = v22;
LABEL_14:
    v45, v30, v31, v32, v33, v34, v35, v36;
  }

  return result;
}

uint64_t sub_1001E7874()
{
  v1 = _s10PredicatesOMa(0);
  __chkstk_darwin(v1, v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796DA0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = swift_getKeyPath();
  *(inited + 96) = swift_getKeyPath();
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_100796900;
  *(v6 + 32) = swift_getKeyPath();
  *(v6 + 40) = swift_getKeyPath();
  *v4 = *(v0 + 16);
  swift_storeEnumTagMultiPayload();
  v7 = sub_100043AA8();
  sub_1000513B4(v4);
  v8 = sub_100050654(inited, v6, 0, v7);
  inited, v9, v10, v11, v12, v13, v14, v15;
  v6, v16, v17, v18, v19, v20, v21, v22;

  [(RDXPCStorePerformer *)v8 setFetchBatchSize:50];
  [(RDXPCStorePerformer *)v8 setReturnsObjectsAsFaults:0];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v23 = NSManagedObjectContext.fetch<A>(_:)();

  return v23;
}

void sub_1001E7AB8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 ckZoneOwnerName];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1001E7B20(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setCkZoneOwnerName:?];
}

uint64_t sub_1001E7B90()
{

  return swift_deallocClassInstance();
}

id sub_1001E7C10(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RDStoreControllerMigrator_AutoConvertSharedInlineTags();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1001E7CE4()
{
  result = qword_10093CAC8;
  if (!qword_10093CAC8)
  {
    sub_1000F514C(&qword_10093CAC0, &unk_10079E1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CAC8);
  }

  return result;
}

void sub_1001E7F10(char a1, void *a2)
{
  v4 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v5 = [a2 persistentStoreCoordinator];
  [v4 setPersistentStoreCoordinator:v5];

  [v4 setTransactionAuthor:RDStoreControllerAutoConvertSharedInlineTagsMigrationAuthor];
  [v4 setUndoManager:0];
  [v4 setRetainsRegisteredObjects:1];
  if (sub_1001E7D48(a2, v4))
  {
    type metadata accessor for RDStoreControllerMigrator_AutoConvertSharedInlineTags.Runner();
    v6 = swift_allocObject();
    *(v6 + 16) = a1 & 1;
    *(v6 + 24) = v4;
    *(v6 + 32) = a2;
    oslog = v4;
    v7 = a2;
    sub_1001E71E4();
  }

  else
  {
    if (qword_100935BE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10093C9B0);
    v9 = a2;
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136446210;
      v13 = sub_1003533B0();
      v15 = v14;
      v16 = sub_10000668C(v13, v14, &v25);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, oslog, v10, "RDStoreControllerMigrator_AutoConvertSharedInlineTags: Skipping persistentStore since its account is not a CK account {persistentStore: %{public}s}", v11, 0xCu);
      sub_10000607C(v12);
    }
  }
}

void sub_1001E8168(void *a1, void *a2)
{
  *&v8 = 0xD000000000000035;
  *(&v8 + 1) = 0x800000010079A530;
  v4 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
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
    sub_1001B2134(v10);
LABEL_9:
    sub_1001E7F10(1, a1);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v10[0] = 0xD000000000000035;
    *(&v10[0] + 1) = 0x800000010079A530;
    [a2 __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [v7 integerValue];

  if (v5 < 1)
  {
    goto LABEL_9;
  }
}

uint64_t sub_1001E82F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v177 = a1;
  v175 = type metadata accessor for CharacterSet();
  v8 = __chkstk_darwin(v175, v6);
  v174 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = 0;
  v189 = 0;
  v10 = a3 >> 1;
  v11 = 0;
  if (v10 != a2)
  {
    v11 = 0;
    v180 = 0;
    v189 = 0;
    v182 = 0;
    v173 = (v7 + 8);
    v8.n128_u64[0] = 136446722;
    v179 = v8;
    v8.n128_u64[0] = 136446466;
    v178 = v8;
    v176 = v10;
    do
    {
      if (a2 >= v10)
      {
        goto LABEL_70;
      }

      v14 = *(v177 + 8 * a2);
      if ([v14 isSharedViaICloud])
      {
        v15 = [v14 title];
        v183 = v14;
        if (v15)
        {
          v16 = v11;
          v17 = v15;
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          v194 = v18;
          v195 = v20;
          v21 = v174;
          static CharacterSet.hashtagTokenPrefixCharacters.getter();
          sub_10013BCF4();
          StringProtocol.rangeOfCharacter(from:options:range:)();
          LOBYTE(v17) = v22;
          (*v173)(v21, v175);
          v20, v23, v24, v25, v26, v27, v28, v29;
          if (v17)
          {
            v30 = &_swiftEmptyArrayStorage;
          }

          else
          {
            v197 = &_swiftEmptyArrayStorage;
            sub_1002537E0(0, 1, 1);
            v30 = v197;
            v32 = *v197->clientIdentity;
            v31 = *&v197->clientIdentity[8];
            if (v32 >= v31 >> 1)
            {
              sub_1002537E0((v31 > 1), v32 + 1, 1);
              v30 = v197;
            }

            *v30->clientIdentity = v32 + 1;
            v30->clientIdentity[v32 + 16] = 0;
          }

          v11 = v16;
          v14 = v183;
        }

        else
        {
          v30 = &_swiftEmptyArrayStorage;
        }

        v33 = [v14 notes];
        if (v33)
        {
          v34 = v11;
          v35 = v33;
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          v194 = v36;
          v195 = v38;
          v39 = v174;
          static CharacterSet.hashtagTokenPrefixCharacters.getter();
          sub_10013BCF4();
          StringProtocol.rangeOfCharacter(from:options:range:)();
          LOBYTE(v35) = v40;
          (*v173)(v39, v175);
          v38, v41, v42, v43, v44, v45, v46, v47;
          if ((v35 & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v197 = v30;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1002537E0(0, *v30->clientIdentity + 1, 1);
              v30 = v197;
            }

            v50 = *v30->clientIdentity;
            v49 = *&v30->clientIdentity[8];
            if (v50 >= v49 >> 1)
            {
              sub_1002537E0((v49 > 1), v50 + 1, 1);
              v30 = v197;
            }

            *v30->clientIdentity = v50 + 1;
            v30->clientIdentity[v50 + 16] = 1;
          }

          v11 = v34;
          v14 = v183;
        }

        v51 = *v30->clientIdentity;
        if (v51)
        {
          v172 = a2;
          v188 = *(v171 + 24);
          v187 = type metadata accessor for RDSharedInlineTagAutoConvertStoreHandler.ReminderFieldConverter();
          v52 = 32;
          v184 = v30;
          while (1)
          {
            v54 = *(&v30->super.isa + v52);
            v55 = v187;
            v56 = objc_allocWithZone(v187);
            *&v56[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_reminder] = v14;
            v190 = v54;
            v56[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_field] = v54;
            v57 = v188;
            *&v56[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_storeObjectContext] = v188;
            v58 = &v56[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_onlySpecificCanonicalName];
            *v58 = 0;
            v58[1] = 0;
            v59 = objc_allocWithZone(RDPersistentStoreLookupForREMCDObject);
            v3 = v14;
            v60 = v57;
            v61 = [v59 init:v3];
            *&v56[OBJC_IVAR____TtCC7remindd40RDSharedInlineTagAutoConvertStoreHandler22ReminderFieldConverter_persistentStoreLookup] = v61;
            v193.receiver = v56;
            v193.super_class = v55;
            v62 = objc_msgSendSuper2(&v193, "init");
            v192 = v3;

            v191 = v62;
            v64 = sub_1001B5774();
            v66 = v65;
            v67 = v63;
            v68 = v63;
            if (v63 >> 6)
            {
              if (v63 >> 6 != 1)
              {
                v89 = v51;
                if (qword_100935BE0 != -1)
                {
                  swift_once();
                }

                v90 = type metadata accessor for Logger();
                sub_100006654(v90, qword_10093C9B0);
                v91 = v192;
                v92 = Logger.logObject.getter();
                v93 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v92, v93))
                {
                  v186 = v11;
                  v94 = swift_slowAlloc();
                  v194 = swift_slowAlloc();
                  *v94 = v178.n128_u32[0];
                  v95 = [v91 remObjectID];
                  if (v95)
                  {
                    v96 = v95;
                    v3 = [v95 description];

                    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v99 = v98;
                  }

                  else
                  {
                    v99 = 0xE300000000000000;
                    v97 = 7104878;
                  }

                  v134 = sub_10000668C(v97, v99, &v194);
                  v99, v135, v136, v137, v138, v139, v140, v141;
                  *(v94 + 4) = v134;
                  *(v94 + 12) = 2082;
                  if (v190)
                  {
                    v142 = 0x636F447365746F6ELL;
                  }

                  else
                  {
                    v142 = 0x636F44656C746974;
                  }

                  v143 = sub_10000668C(v142, 0xED0000746E656D75, &v194);
                  0xED0000746E656D75, v144, v145, v146, v147, v148, v149, v150;
                  *(v94 + 14) = v143;
                  _os_log_impl(&_mh_execute_header, v92, v93, "Reminder[%{public}s] conversion succeeded for field %{public}s", v94, 0x16u);
                  swift_arrayDestroy();

                  v11 = v186;
                  v30 = v184;
                }

                else
                {
                }

                v14 = v183;
                if (__OFADD__(v182, 1))
                {
                  goto LABEL_69;
                }

                v53 = v89;
                v180 = ++v182;
                goto LABEL_32;
              }

              v68 = v63 & 0x3F;
            }

            v185 = v68;
            v189 = v51;
            if (qword_100935BE0 != -1)
            {
              swift_once();
            }

            v69 = type metadata accessor for Logger();
            sub_100006654(v69, qword_10093C9B0);
            v3 = v192;
            sub_1001E8F50(v64, v66, v67);
            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.error.getter();

            sub_1001E8F6C(v64, v66, v67, v72, v73, v74, v75, v76);
            if (os_log_type_enabled(v70, v71))
            {
              v186 = v11;
              v77 = swift_slowAlloc();
              v181 = swift_slowAlloc();
              v197 = v181;
              *v77 = v179.n128_u32[0];
              v78 = [v3 remObjectID];
              if (v78)
              {
                v79 = v78;
                v80 = [v78 description];

                v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v83 = v82;
              }

              else
              {
                v83 = 0xE300000000000000;
                v81 = 7104878;
              }

              v100 = sub_10000668C(v81, v83, &v197);
              v83, v101, v102, v103, v104, v105, v106, v107;
              *(v77 + 4) = v100;
              v3 = 2082;
              *(v77 + 12) = 2082;
              if (v190)
              {
                v108 = 0x636F447365746F6ELL;
              }

              else
              {
                v108 = 0x636F44656C746974;
              }

              v109 = sub_10000668C(v108, 0xED0000746E656D75, &v197);
              0xED0000746E656D75, v110, v111, v112, v113, v114, v115, v116;
              *(v77 + 14) = v109;
              *(v77 + 22) = 2082;
              v194 = v64;
              v195 = v66;
              v196 = v185;
              sub_1001E8F88();
              v117 = Error.rem_errorDescription.getter();
              v119 = v118;
              v120 = sub_10000668C(v117, v118, &v197);
              v119, v121, v122, v123, v124, v125, v126, v127;
              *(v77 + 24) = v120;
              sub_1001E8F6C(v64, v66, v67, v128, v129, v130, v131, v132);
              _os_log_impl(&_mh_execute_header, v70, v71, "Reminder[%{public}s] conversion failed for field %{public}s {error: %{public}s}", v77, 0x20u);
              swift_arrayDestroy();

              v11 = v186;
              v14 = v183;
            }

            else
            {

              sub_1001E8F6C(v64, v66, v67, v84, v85, v86, v87, v88);
            }

            v53 = v189;
            v133 = __OFADD__(v11++, 1);
            v30 = v184;
            if (v133)
            {
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              swift_once();
LABEL_62:
              v153 = type metadata accessor for Logger();
              sub_100006654(v153, qword_10093C9B0);
              swift_errorRetain();
              v154 = Logger.logObject.getter();
              v155 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v154, v155))
              {
                v156 = swift_slowAlloc();
                v157 = swift_slowAlloc();
                v194 = v157;
                *v156 = 136446210;
                swift_getErrorValue();
                v158 = Error.rem_errorDescription.getter();
                v160 = v159;
                v161 = sub_10000668C(v158, v159, &v194);
                v160, v162, v163, v164, v165, v166, v167, v168;
                *(v156 + 4) = v161;
                _os_log_impl(&_mh_execute_header, v154, v155, "RDStoreControllerMigrator_AutoConvertSharedInlineTags.Runner failed to save {error: %{public}s}", v156, 0xCu);
                sub_10000607C(v157);
              }

              else
              {
              }

              if (__OFADD__(v3, v180))
              {
                __break(1u);
              }

              return 0;
            }

            v189 = v11;
LABEL_32:
            ++v52;
            v51 = v53 - 1;
            if (!v51)
            {
              v151 = v192;

              a2 = v172;
              goto LABEL_8;
            }
          }
        }
      }

      else
      {
      }

LABEL_8:
      ++a2;
      v10 = v176;
    }

    while (a2 != v176);
  }

  v3 = v11;
  v12 = *(v171 + 24);
  if ([v12 hasChanges])
  {
    v194 = 0;
    if (![v12 save:&v194])
    {
      v152 = v194;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100935BE0 != -1)
      {
        goto LABEL_71;
      }

      goto LABEL_62;
    }

    v13 = v194;
  }

  return v180;
}

void sub_1001E8F50(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 != 1)
    {
      return;
    }

    a3 &= 0x3Fu;
  }

  sub_1001BC0BC(a1, a2, a3);
}

void sub_1001E8F6C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 != 1)
    {
      return;
    }

    a3 = (a3 & 0x3F);
  }

  sub_1001BC0F8(a1, a2, a3, a4, a5, a6, a7, a8);
}

unint64_t sub_1001E8F88()
{
  result = qword_10093CAD0;
  if (!qword_10093CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CAD0);
  }

  return result;
}

uint64_t sub_1001E8FDC@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v89 = a5;
  v9 = type metadata accessor for String.Encoding();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  if (v16 >> 60 == 15)
  {
    if (qword_100935BE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_10093CAE0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v92[0] = v21;
      *v20 = 136315138;
      v91[0] = v6;
      swift_getMetatypeMetadata();
      v22 = String.init<A>(describing:)();
      v24 = v23;
      v25 = sub_10000668C(v22, v23, v92);
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "RDJSONDecoding can't encode input string as utf8 data {class: %s}", v20, 0xCu);
      sub_10000607C(v21);
    }
  }

  else
  {
    v33 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v91[0] = 0;
    v35 = [v33 JSONObjectWithData:isa options:0 error:v91];

    v36 = v91[0];
    if (v35)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100005EF0(v92, v91);
      sub_1000F5104(&unk_100938CB0, &unk_100796A70);
      if (swift_dynamicCast())
      {
        v37 = v90;
        (*(a4 + 8))(v90, a3, a4);
        sub_100031A14(v14, v16);
        v37, v38, v39, v40, v41, v42, v43, v44;
        return sub_10000607C(v92);
      }

      if (qword_100935BE8 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_100006654(v73, qword_10093CAE0);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v91[0] = v77;
        *v76 = 136315138;
        v90 = v6;
        swift_getMetatypeMetadata();
        v78 = String.init<A>(describing:)();
        v80 = v79;
        v81 = sub_10000668C(v78, v79, v91);
        v80, v82, v83, v84, v85, v86, v87, v88;
        *(v76 + 4) = v81;
        _os_log_impl(&_mh_execute_header, v74, v75, "Invalid JSONSerialization.jsonObject return value {class: %s}", v76, 0xCu);
        sub_10000607C(v77);
      }

      sub_100031A14(v14, v16);

      sub_10000607C(v92);
    }

    else
    {
      v46 = v36;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100935BE8 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100006654(v47, qword_10093CAE0);
      swift_errorRetain();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v92[0] = swift_slowAlloc();
        *v50 = 136315394;
        v91[0] = v6;
        swift_getMetatypeMetadata();
        v51 = String.init<A>(describing:)();
        v53 = v52;
        v54 = sub_10000668C(v51, v52, v92);
        v53, v55, v56, v57, v58, v59, v60, v61;
        *(v50 + 4) = v54;
        *(v50 + 12) = 2080;
        swift_getErrorValue();
        v62 = Error.localizedDescription.getter();
        v64 = v63;
        v65 = sub_10000668C(v62, v63, v92);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v50 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v48, v49, "RDJSONDecoding can't decode JSON {class: %s, error: %s}", v50, 0x16u);
        swift_arrayDestroy();

        sub_100031A14(v14, v16);
      }

      else
      {
        sub_100031A14(v14, v16);
      }
    }
  }

  return (*(*(a3 - 8) + 56))(v89, 1, 1, a3);
}

uint64_t sub_1001E9670()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093CAE0);
  v1 = sub_100006654(v0, qword_10093CAE0);
  if (qword_1009364F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975218);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001E9AEC(unsigned __int8 *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v5 = v3;
  if (a3)
  {
    v4 = a3;
    v8 = OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_dicts;
    swift_beginAccess();
    v9 = *(v3 + v8);
    v10 = *v9->clientIdentity;
    sub_100005EF0(a1, v21);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v8) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = sub_100260B84(v9);
      *(v5 + v8) = v9;
      if (v10)
      {
LABEL_4:
        if (v10 <= *v9->clientIdentity)
        {
          sub_10031DE1C(v21, a2, v4);
          *(v5 + v8) = v9;
          return swift_endAccess();
        }

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_100260B70(v10);
    *(&v9->super.isa + v5) = v10;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v9 = OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_arrays;
  swift_beginAccess();
  v10 = *(&v9->super.isa + v3);
  v8 = *v10->clientIdentity;
  sub_100005EF0(a1, v21);
  swift_beginAccess();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *(&v9->super.isa + v5) = v10;
  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_8:
  if (v8 > *v10->clientIdentity)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  a1 = &v10->clientIdentity[8];
  v4 = *&v10->clientIdentity[8 * v8 + 8];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *&v10->clientIdentity[8 * v8 + 8] = v4;
  if ((v17 & 1) == 0)
  {
LABEL_20:
    v4 = sub_1003658F0(0, *v4->clientIdentity + 1, 1, v4, v13, v14, v15, v16);
    *&a1[8 * v8] = v4;
  }

  v19 = *v4->clientIdentity;
  v18 = *&v4->clientIdentity[8];
  if (v19 >= v18 >> 1)
  {
    v4 = sub_1003658F0((v18 > 1), v19 + 1, 1, v4, v13, v14, v15, v16);
    *&a1[8 * v8] = v4;
  }

  *v4->clientIdentity = v19 + 1;
  sub_100005EE0(v21, &v4->clientIdentity[32 * v19 + 16]);
  *(&v9->super.isa + v5) = v10;
  return swift_endAccess();
}

void sub_1001E9CF0(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v4 = v3;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v170 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014F5CC(a1, &v186);
  if (*(&v187[0] + 1))
  {
    if (swift_dynamicCast())
    {
      *(&v187[0] + 1) = &type metadata for String;
      v186 = v183;
      v17 = a2;
      v18 = a3;
LABEL_94:
      sub_1001E9AEC(&v186, v17, v18);
      goto LABEL_95;
    }
  }

  else
  {
    sub_1000050A4(&v186, &qword_100939ED0, &qword_100791B10);
  }

  sub_10014F5CC(a1, &v186);
  if (*(&v187[0] + 1))
  {
    v19 = swift_dynamicCast();
    (*(v13 + 56))(v11, v19 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v16, v11, v12);
      v20 = UUID.uuidString.getter();
      *(&v187[0] + 1) = &type metadata for String;
      *&v186 = v20;
      *(&v186 + 1) = v21;
      sub_1001E9AEC(&v186, a2, a3);
      (*(v13 + 8))(v16, v12);
LABEL_95:
      sub_10000607C(&v186);
      return;
    }
  }

  else
  {
    sub_1000050A4(&v186, &qword_100939ED0, &qword_100791B10);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_1000050A4(v11, &unk_100939D90, "8\n\r");
  sub_10014F5CC(a1, &v186);
  v178 = v4;
  v176 = a3;
  if (*(&v187[0] + 1))
  {
    v22 = sub_1000F5104(&qword_10093CB40, &qword_1007A4450);
    if (swift_dynamicCast())
    {
      v23 = v183;
      v24 = OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_arrays;
      swift_beginAccess();
      a1 = *(&v4->super.isa + v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&v4->super.isa + v24) = a1;
      v171 = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_12:
        v27 = *a1->clientIdentity;
        v26 = *&a1->clientIdentity[8];
        if (v27 >= v26 >> 1)
        {
          a1 = sub_100366818((v26 > 1), (v27 + 1), 1, a1);
        }

        *a1->clientIdentity = v27 + 1;
        *&a1->clientIdentity[8 * v27 + 16] = &_swiftEmptyArrayStorage;
        *(&v4->super.isa + v24) = a1;
        swift_endAccess();
        v35 = *(v23 + 16);
        if (v35)
        {
          v177 = v22;
          v175 = v23;
          v16 = v23 + 32;
          a3 = &type metadata for String;
          while (1)
          {
            sub_100005EF0(v16, &v186);
            sub_100005EF0(&v186, &v183);
            sub_10014F63C();
            if (swift_dynamicCast())
            {
              break;
            }

            sub_100005EF0(&v186, &v183);
            if (swift_dynamicCast())
            {
              *(&v181 + 1), v43, v44, v45, v46, v47, v48, v49;
              goto LABEL_22;
            }

            sub_100005EF0(&v186, &v183);
            sub_1001E9CF0(&v183, 0, 0);
            sub_1000050A4(&v183, &qword_100939ED0, &qword_100791B10);
            sub_10000607C(&v186);
LABEL_17:
            v16 += 32;
            if (!--v35)
            {
              v175, v36, v37, v38, v39, v40, v41, v42;
              v22 = v177;
              goto LABEL_90;
            }
          }

LABEL_22:
          a1 = *(&v4->super.isa + v24);
          v22 = *a1->clientIdentity;
          sub_100005EF0(&v186, &v183);
          swift_beginAccess();
          v50 = swift_isUniquelyReferenced_nonNull_native();
          *(&v4->super.isa + v24) = a1;
          if (v50)
          {
            if (!v22)
            {
              goto LABEL_114;
            }
          }

          else
          {
            a1 = sub_100260B70(a1);
            *(&v4->super.isa + v24) = a1;
            if (!v22)
            {
              goto LABEL_114;
            }
          }

          if (v22 > *a1->clientIdentity)
          {
            goto LABEL_115;
          }

          v51 = &a1->clientIdentity[8];
          v52 = *&a1->clientIdentity[8 * v22 + 8];
          v53 = swift_isUniquelyReferenced_nonNull_native();
          *&a1->clientIdentity[8 * v22 + 8] = v52;
          if ((v53 & 1) == 0)
          {
            v52 = sub_1003658F0(0, *v52->clientIdentity + 1, 1, v52, v54, v55, v56, v57);
            *&v51[8 * v22] = v52;
          }

          v59 = *v52->clientIdentity;
          v58 = *&v52->clientIdentity[8];
          v23 = v59 + 1;
          if (v59 >= v58 >> 1)
          {
            v52 = sub_1003658F0((v58 > 1), v59 + 1, 1, v52, v54, v55, v56, v57);
            *&v51[8 * v22] = v52;
          }

          *v52->clientIdentity = v23;
          sub_100005EE0(&v183, &v52->clientIdentity[32 * v59 + 16]);
          v4 = v178;
          *(&v178->super.isa + v24) = a1;
          swift_endAccess();
          sub_10000607C(&v186);
          goto LABEL_17;
        }

        v23, v28, v29, v30, v31, v32, v33, v34;
LABEL_90:
        v137 = *(&v4->super.isa + v24);
        v138 = *v137->clientIdentity;
        v139 = v176;
        if (!v138)
        {
          if (qword_100935BE8 == -1)
          {
LABEL_98:
            v151 = type metadata accessor for Logger();
            sub_100006654(v151, qword_10093CAE0);
            v152 = Logger.logObject.getter();
            v153 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v152, v153))
            {
              v154 = swift_slowAlloc();
              *v154 = 0;
              _os_log_impl(&_mh_execute_header, v152, v153, "JSON encode error: expected at least one array", v154, 2u);
            }

            return;
          }

LABEL_125:
          swift_once();
          goto LABEL_98;
        }

        v140 = *&v137->clientIdentity[8 * v138 + 8];
        swift_beginAccess();

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v141 = *v137->clientIdentity;
          if (v141)
          {
LABEL_93:
            v142 = v141 - 1;
            v143 = *&v137->clientIdentity[8 * v142 + 16];
            *v137->clientIdentity = v142;
            *(&v4->super.isa + v24) = v137;
            swift_endAccess();
            v143, v144, v145, v146, v147, v148, v149, v150;
            *(&v187[0] + 1) = v22;
            *&v186 = v140;
            v17 = v171;
            v18 = v139;
            goto LABEL_94;
          }
        }

        else
        {
          v137 = sub_100260B70(v137);
          v141 = *v137->clientIdentity;
          if (v141)
          {
            goto LABEL_93;
          }
        }

        __break(1u);
        goto LABEL_123;
      }

LABEL_120:
      a1 = sub_100366818(0, (*a1->clientIdentity + 1), 1, a1);
      *(&v4->super.isa + v24) = a1;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1000050A4(&v186, &qword_100939ED0, &qword_100791B10);
  }

  sub_10014F5CC(a1, &v186);
  if (!*(&v187[0] + 1))
  {
    sub_1000050A4(&v186, &qword_100939ED0, &qword_100791B10);
    return;
  }

  sub_1000F5104(&qword_10093AB30, &qword_100798088);
  if (swift_dynamicCast())
  {
    v60 = v183;
    v61 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v16 = OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_dicts;
    swift_beginAccess();
    v62 = *(&v4->super.isa + v16);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    *(&v4->super.isa + v16) = v62;
    v171 = a2;
    if ((v63 & 1) == 0)
    {
      v62 = sub_100366374(0, (*v62->clientIdentity + 1), 1, v62);
      *(&v4->super.isa + v16) = v62;
    }

    v65 = *v62->clientIdentity;
    v64 = *&v62->clientIdentity[8];
    if (v65 >= v64 >> 1)
    {
      v62 = sub_100366374((v64 > 1), (v65 + 1), 1, v62);
    }

    *v62->clientIdentity = v65 + 1;
    *&v62->clientIdentity[8 * v65 + 16] = v61;
    *(&v4->super.isa + v16) = v62;
    swift_endAccess();
    sub_10014F5CC(a1, &v186);
    if (*(&v187[0] + 1))
    {
      sub_1000F5104(&unk_100938CB0, &unk_100796A70);
      if (swift_dynamicCast())
      {
        v170 = v60;
        v23 = 0;
        v67 = v183 + 64;
        v66 = *(v183 + 64);
        v175 = v183;
        v68 = 1 << *(v183 + 32);
        v69 = -1;
        if (v68 < 64)
        {
          v69 = ~(-1 << v68);
        }

        v24 = v69 & v66;
        v22 = (v68 + 63) >> 6;
        v173 = v22;
        v172 = v16;
        v174 = v183 + 64;
        if ((v69 & v66) == 0)
        {
          goto LABEL_49;
        }

        while (2)
        {
          v84 = v23;
LABEL_57:
          v87 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          v88 = v87 | (v84 << 6);
          v89 = (*&v175->clientIdentity[32] + 16 * v88);
          v90 = *v89;
          a1 = v89[1];
          sub_100005EF0(*&v175->clientIdentity[40] + 32 * v88, &v181);
          *&v183 = v90;
          *(&v183 + 1) = a1;
          sub_100005EE0(&v181, &v184);

LABEL_58:
          v186 = v183;
          v187[0] = v184;
          v187[1] = v185;
          v91 = *(&v183 + 1);
          if (*(&v183 + 1))
          {
            v177 = v186;
            sub_100005EE0(v187, &v183);
            sub_100005EF0(&v183, &v181);
            sub_10014F63C();
            if (swift_dynamicCast())
            {
            }

            else
            {
              sub_100005EF0(&v183, &v181);
              if (!swift_dynamicCast())
              {
                sub_100005EF0(&v183, &v181);
                a1 = v4;
                sub_1001E9CF0(&v181, v177, v91);
                v91, v125, v126, v127, v128, v129, v130, v131;
                sub_1000050A4(&v181, &qword_100939ED0, &qword_100791B10);
                sub_10000607C(&v183);
                if (v24)
                {
                  continue;
                }

                goto LABEL_49;
              }

              v180[1], v92, v93, v94, v95, v96, v97, v98;
            }

            v22 = *(&v4->super.isa + v16);
            v99 = *(v22 + 16);
            sub_100005EF0(&v183, &v181);
            swift_beginAccess();

            v100 = swift_isUniquelyReferenced_nonNull_native();
            *(&v4->super.isa + v16) = v22;
            if (v100)
            {
              if (!v99)
              {
                goto LABEL_116;
              }
            }

            else
            {
              v22 = sub_100260B84(v22);
              *(&v4->super.isa + v16) = v22;
              if (!v99)
              {
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
                goto LABEL_119;
              }
            }

            if (v99 > *(v22 + 16))
            {
              goto LABEL_117;
            }

            v4 = (v22 + 24);
            if (v182)
            {
              sub_100005EE0(&v181, v180);
              v101 = swift_isUniquelyReferenced_nonNull_native();
              v179 = *(&v4->super.isa + v99);
              a1 = v179;
              *(&v4->super.isa + v99) = 0x8000000000000000;
              v16 = sub_100005F4C(v177, v91);
              v103 = *a1->clientIdentity;
              v104 = (v102 & 1) == 0;
              v105 = v103 + v104;
              if (__OFADD__(v103, v104))
              {
                goto LABEL_118;
              }

              a3 = v102;
              if (*&a1->clientIdentity[8] >= v105)
              {
                if ((v101 & 1) == 0)
                {
                  a1 = &v179;
                  sub_100374FD8();
                }
              }

              else
              {
                sub_10036D7E8(v105, v101);
                a1 = v179;
                v106 = sub_100005F4C(v177, v91);
                if ((a3 & 1) != (v107 & 1))
                {
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return;
                }

                v16 = v106;
              }

              v132 = v179;
              if (a3)
              {
                a1 = (*&v179->clientIdentity[40] + 32 * v16);
                sub_10000607C(a1);
                sub_100005EE0(v180, a1);
                v91, v70, v71, v72, v73, v74, v75, v76;
              }

              else
              {
                *&v179->storeProvider[8 * (v16 >> 6) + 2] |= 1 << v16;
                v133 = (*&v132->clientIdentity[32] + 16 * v16);
                *v133 = v177;
                v133[1] = v91;
                sub_100005EE0(v180, (*&v132->clientIdentity[40] + 32 * v16));
                v134 = *v132->clientIdentity;
                v135 = __OFADD__(v134, 1);
                v136 = v134 + 1;
                if (v135)
                {
LABEL_119:
                  __break(1u);
                  goto LABEL_120;
                }

                *v132->clientIdentity = v136;
              }

              *(&v4->super.isa + v99) = v132;
              v4 = v178;
              a3 = v176;
              v16 = v172;
            }

            else
            {
              sub_1000050A4(&v181, &qword_100939ED0, &qword_100791B10);
              a1 = *(&v4->super.isa + v99);
              v108 = sub_100005F4C(v177, v91);
              if (v109)
              {
                v116 = v108;
                v117 = swift_isUniquelyReferenced_nonNull_native();
                a1 = *(&v4->super.isa + v99);
                v179 = a1;
                *(&v4->super.isa + v99) = 0x8000000000000000;
                if ((v117 & 1) == 0)
                {
                  sub_100374FD8();
                  a1 = v179;
                }

                *(*&a1->clientIdentity[32] + 16 * v116 + 8), v118, v119, v120, v121, v122, v123, v124;
                sub_100005EE0((*&a1->clientIdentity[40] + 32 * v116), v180);
                sub_1003331C0(v116, a1);
                *(&v4->super.isa + v99) = a1;
              }

              else
              {
                memset(v180, 0, 32);
              }

              v91, v109, v110, v111, v112, v113, v114, v115;
              sub_1000050A4(v180, &qword_100939ED0, &qword_100791B10);
              v4 = v178;
            }

            v67 = v174;
            *(&v4->super.isa + v16) = v22;
            swift_endAccess();
            v91, v77, v78, v79, v80, v81, v82, v83;
            sub_10000607C(&v183);
            v22 = v173;
            if (v24)
            {
              continue;
            }

LABEL_49:
            if (v22 <= (v23 + 1))
            {
              v85 = v23 + 1;
            }

            else
            {
              v85 = v22;
            }

            v86 = v85 - 1;
            while (1)
            {
              v84 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                break;
              }

              if (v84 >= v22)
              {
                v24 = 0;
                v185 = 0u;
                v23 = v86;
                v183 = 0u;
                v184 = 0u;
                goto LABEL_58;
              }

              v24 = *(v67 + 8 * v84);
              ++v23;
              if (v24)
              {
                v23 = v84;
                goto LABEL_57;
              }
            }

            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          break;
        }

        goto LABEL_104;
      }
    }

    else
    {
      sub_1000050A4(&v186, &qword_100939ED0, &qword_100791B10);
    }

    [v60 encodeWithCoder:v4];
LABEL_104:
    v137 = *(&v4->super.isa + v16);
    v155 = *v137->clientIdentity;
    if (v155)
    {
      v140 = *&v137->clientIdentity[8 * v155 + 8];
      swift_beginAccess();

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v156 = *v137->clientIdentity;
        if (!v156)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

LABEL_107:
        v157 = v156 - 1;
        v158 = *&v137->clientIdentity[8 * v157 + 16];
        *v137->clientIdentity = v157;
        *(&v4->super.isa + v16) = v137;
        swift_endAccess();
        v158, v159, v160, v161, v162, v163, v164, v165;
        *(&v187[0] + 1) = sub_1000F5104(&unk_100938CB0, &unk_100796A70);
        *&v186 = v140;
        sub_1001E9AEC(&v186, v171, a3);
        swift_unknownObjectRelease();
        goto LABEL_95;
      }

LABEL_123:
      v137 = sub_100260B84(v137);
      v156 = *v137->clientIdentity;
      if (!v156)
      {
        goto LABEL_124;
      }

      goto LABEL_107;
    }

    if (qword_100935BE8 != -1)
    {
      swift_once();
    }

    v166 = type metadata accessor for Logger();
    sub_100006654(v166, qword_10093CAE0);
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&_mh_execute_header, v167, v168, "JSON encode error: expected at least one dict", v169, 2u);
    }

    swift_unknownObjectRelease();
  }
}

id sub_1001EAC8C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RDJSONCoder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001EAD48(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v80[1] = a3;
  v92 = a1;
  v4 = type metadata accessor for REMRemindersListDataView.Diff();
  v83 = *(v4 - 8);
  v84 = v4;
  __chkstk_darwin(v4, v5);
  v81 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v82 = v80 - v9;
  v10 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v87 = *(v10 - 8);
  v88 = v10;
  __chkstk_darwin(v10, v11);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v14 = *(v86 - 8);
  __chkstk_darwin(v86, v15);
  v17 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v18 - 8, v19);
  v21 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v22, v23);
  v25 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters();
  v90 = *(v26 - 8);
  v91 = v26;
  __chkstk_darwin(v26, v27);
  v29 = v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.AssignedInvocation());
  v80[3] = a2;
  v85 = [v30 initWithFetchResultTokenToDiffAgainst:a2];
  REMRemindersListDataView.DEBUG_AssignedCountInvocation.Parameters.currentUserShareParticipantIDsOverride.getter();
  v31 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v32 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v32 - 8) + 104))(v25, v31, v32);
  swift_storeEnumTagMultiPayload();
  sub_100539164(v21);
  sub_1001EB4C4(v25, v33);
  (*(v14 + 104))(v17, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v86);
  (*(v87 + 104))(v13, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v88);
  v34 = v92;
  REMRemindersListDataView.AssignedInvocation.Parameters.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:currentUserShareParticipantIDsOverride:)();
  v35 = v89;
  v36 = sub_100753DE0(v34);
  if (v35)
  {

    (*(v90 + 8))(v29, v91);
  }

  else
  {
    v38 = v84;
    v37 = v85;
    v39 = v36;
    sub_100754818(v36);
    v41 = v40;
    v89 = v29;
    v39, v42, v43, v44, v45, v46, v47, v48;
    if (qword_100936848 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    v50 = sub_100006654(v49, qword_100951B08);
    v88 = v80;
    v93 = v41;
    __chkstk_darwin(v50, v51);
    v80[-2] = v52;
    sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    sub_10000CB90(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280);
    v53 = Sequence.map<A>(skippingError:_:)();
    v41, v54, v55, v56, v57, v58, v59, v60;
    v93 = v53;
    sub_1000F5104(&qword_10093CB80, &qword_1007A7680);
    sub_10000CB90(&qword_10093CB88, &qword_10093CB80, &qword_1007A7680);
    sub_1001EB528();
    v61 = Sequence<>.unique()();

    (*(v90 + 8))(v89, v91);
    v53, v62, v63, v64, v65, v66, v67, v68;
    v69 = *(v61 + 16);
    v61, v70, v71, v72, v73, v74, v75, v76;
    v77 = [v80[2] fetchResultTokenToDiffAgainst];
    v78 = v82;
    sub_100534D44(v77, v82);

    v79 = v83;
    v93 = v69;
    (*(v83 + 16))(v81, v78, v38);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v79 + 8))(v78, v38);
  }
}

unint64_t sub_1001EB444(uint64_t a1)
{
  result = sub_1001EB46C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001EB46C()
{
  result = qword_10093CB68;
  if (!qword_10093CB68)
  {
    type metadata accessor for REMRemindersListDataView.DEBUG_AssignedCountInvocation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CB68);
  }

  return result;
}

uint64_t sub_1001EB4C4(uint64_t a1, __n128 a2)
{
  v3 = _s9UtilitiesO12SortingStyleOMa(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001EB528()
{
  result = qword_10093CB90;
  if (!qword_10093CB90)
  {
    sub_1000F514C(&unk_100939E40, &qword_100791BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CB90);
  }

  return result;
}

void sub_1001EB5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_10000CE28(&qword_10093CC38, &unk_10093F790, off_1008D4158);
    Set.Iterator.init(_cocoa:)();
    v4 = v17;
    v5 = v18;
    v6 = v19;
    v7 = v20;
    v8 = v21;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      do
      {
        v22 = v16;
        sub_1001EF00C(&v22);

        if (v3)
        {
          break;
        }

        v7 = v14;
        v8 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        sub_1000060C8(0, &unk_10093F790, off_1008D4158);
        swift_dynamicCast();
        v16 = v22;
        v14 = v7;
        v15 = v8;
      }

      while (v22);
    }

LABEL_19:
    sub_10001B860(v4);
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1001EB7C0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10000CE28(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
    Set.Iterator.init(_cocoa:)();
    v1 = v26;
    v2 = v27;
    v3 = v28;
    v4 = v29;
    v5 = v30;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v25 = &_swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000060C8(0, &qword_10093CFE0, off_1008D4190), swift_dynamicCast(), (v11 = v31) == 0))
    {
LABEL_25:
      sub_10001B860(v1);
      return;
    }

LABEL_18:
    v12 = [v11 hashtagLabel];
    if (v12 && (v13 = v12, v14 = [v12 name], v13, v14))
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_100365788(0, *v25->clientIdentity + 1, 1, v25, v17, v18, v19, v20);
      }

      v22 = *v25->clientIdentity;
      v21 = *&v25->clientIdentity[8];
      if (v22 >= v21 >> 1)
      {
        v25 = sub_100365788((v21 > 1), v22 + 1, 1, v25, v17, v18, v19, v20);
      }

      *v25->clientIdentity = v22 + 1;
      v23 = v25 + 16 * v22;
      *(v23 + 4) = v24;
      *(v23 + 5) = v16;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1001EBA94()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093CB98);
  v1 = sub_100006654(v0, qword_10093CB98);
  if (qword_1009364E8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975200);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1001EBBF0()
{
  v1 = OBJC_IVAR____TtC7remindd31RDCoreDataCoreSpotlightDelegate____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC7remindd31RDCoreDataCoreSpotlightDelegate____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7remindd31RDCoreDataCoreSpotlightDelegate____lazy_storage___contactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(CNContactStore) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

NSObject *sub_1001EBC64(void *a1)
{
  v2 = type metadata accessor for REMFeatureFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v8 = result;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = a1;
    if ([v8 isKindOfClass:ObjCClassFromMetadata])
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = v10;
        v14 = sub_1001EC7F4(v12);
LABEL_8:
        v17 = v14;

        return v17;
      }
    }

    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    if ([v8 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        v13 = v10;
        v14 = sub_1001EF264(v16);
        goto LABEL_8;
      }
    }

    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    if ([v8 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        v13 = v10;
        v14 = sub_1001F0EFC(v19);
        goto LABEL_8;
      }
    }

    type metadata accessor for REMCDListSection();
    if ([v8 isKindOfClass:swift_getObjCClassFromMetadata()]&& (v20 = swift_dynamicCastClass()) != 0)
    {
      v21 = v20;
      (*(v3 + 104))(v6, enum case for REMFeatureFlags.donateSectionsToSpotlight(_:), v2);
      v22 = v10;
      v23 = REMFeatureFlags.isEnabled.getter();
      (*(v3 + 8))(v6, v2);
      if (v23)
      {
        v24 = sub_1001F2694(v21);
LABEL_20:
        v28 = v24;

        return v28;
      }
    }

    else
    {
      type metadata accessor for REMCDSmartListSection();
      if (![v8 isKindOfClass:swift_getObjCClassFromMetadata()]|| (v25 = swift_dynamicCastClass()) == 0)
      {

        return 0;
      }

      v26 = v25;
      (*(v3 + 104))(v6, enum case for REMFeatureFlags.donateSectionsToSpotlight(_:), v2);
      v22 = v10;
      v27 = REMFeatureFlags.isEnabled.getter();
      (*(v3 + 8))(v6, v2);
      if (v27)
      {
        v24 = sub_1001F3D6C(v26);
        goto LABEL_20;
      }
    }

    return 0;
  }

  return result;
}

NSObject *sub_1001EC7F4(NSObject *a1)
{
  v2 = sub_1000F5104(&qword_10093CBE8, &qword_10079A888);
  __chkstk_darwin(v2 - 8, v3);
  v508 = &v482 - v4;
  v507 = type metadata accessor for LocalizedStringResource();
  v506 = *(v507 - 8);
  __chkstk_darwin(v507, v5);
  v505 = &v482 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v510 = type metadata accessor for DisplayRepresentation();
  v509 = *(v510 - 8);
  __chkstk_darwin(v510, v7);
  v522 = &v482 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMSpotlightReminderViewProxy();
  v523 = *(v9 - 8);
  v524 = v9;
  __chkstk_darwin(v9, v10);
  v521 = &v482 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&qword_10093CC40, &qword_10079A8A0);
  __chkstk_darwin(v12 - 8, v13);
  v488 = &v482 - v14;
  v490 = type metadata accessor for REMSpotlightAlarmVehicleTriggerEvent();
  v489 = *(v490 - 8);
  __chkstk_darwin(v490, v15);
  v491 = &v482 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F5104(&qword_10093CC48, &qword_10079A8A8);
  __chkstk_darwin(v17 - 8, v18);
  v492 = &v482 - v19;
  v494 = type metadata accessor for REMSpotlightAlarmProximity();
  v496 = *(v494 - 8);
  __chkstk_darwin(v494, v20);
  v495 = &v482 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000F5104(&qword_10093CC50, &qword_10079A8B0);
  __chkstk_darwin(v22 - 8, v23);
  v504 = &v482 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v493 = (&v482 - v27);
  __chkstk_darwin(v28, v29);
  v526 = &v482 - v30;
  v31 = sub_1000F5104(&qword_10093CBF0, &unk_10079A890);
  __chkstk_darwin(v31 - 8, v32);
  v520 = &v482 - v33;
  v515 = type metadata accessor for URL();
  v514 = *(v515 - 8);
  __chkstk_darwin(v515, v34);
  v513 = &v482 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = type metadata accessor for UTType();
  v518 = *(v519 - 1);
  __chkstk_darwin(v519, v36);
  v517 = &v482 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v39);
  v516 = &v482 - v40;
  v512 = type metadata accessor for Date();
  v511 = *(v512 - 8);
  __chkstk_darwin(v512, v41);
  v500 = &v482 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43, v44);
  v499 = &v482 - v45;
  __chkstk_darwin(v46, v47);
  v498 = &v482 - v48;
  __chkstk_darwin(v49, v50);
  v497 = &v482 - v51;
  v52 = _s10PredicatesOMa(0);
  __chkstk_darwin(v52, v53);
  v55 = &v482 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for UUID();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56, v58);
  v60 = &v482 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v61 - 8, v62);
  v501 = &v482 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64, v65);
  v67 = &v482 - v66;
  __chkstk_darwin(v68, v69);
  v71 = &v482 - v70;
  v530 = 0;
  v531 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v531, v72, v73, v74, v75, v76, v77, v78;
  v530 = 0xD000000000000017;
  v531 = 0x80000001007F0A00;
  v528 = a1;
  v79 = [a1 identifier];
  if (v79)
  {
    v80 = v79;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v57 + 56))(v67, 0, 1, v56);
  }

  else
  {
    (*(v57 + 56))(v67, 1, 1, v56);
  }

  sub_100031B58(v67, v71, &unk_100939D90, "8\n\r");
  v81 = (*(v57 + 48))(v71, 1, v56);
  v503 = v56;
  v502 = v57;
  if (v81)
  {
    sub_1000050A4(v71, &unk_100939D90, "8\n\r");
    v82 = 0xE300000000000000;
    v83 = 7104878;
  }

  else
  {
    (*(v57 + 16))(v60, v71, v56);
    sub_1000050A4(v71, &unk_100939D90, "8\n\r");
    v84 = UUID.uuidString.getter();
    v82 = v85;
    (*(v57 + 8))(v60, v56);
    v83 = v84;
  }

  v86 = v82;
  String.append(_:)(*&v83);
  v82, v87, v88, v89, v90, v91, v92, v93;
  v95 = v530;
  v94 = v531;
  swift_storeEnumTagMultiPayload();
  v96 = sub_100043AA8();
  sub_1001F6940(v55, _s10PredicatesOMa);
  if (!v96)
  {
    v103 = v528;
    if (qword_100935F50 != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    sub_100006654(v104, qword_1009442B0);
    v105 = v103;
    v97 = Logger.logObject.getter();
    v106 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v97, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v107 = 138412290;
      *(v107 + 4) = v105;
      *v108 = v105;
      v109 = v105;
      _os_log_impl(&_mh_execute_header, v97, v106, "Evaluating TypedPredicate with nil NSPredicate against object {object: %@}", v107, 0xCu);
      sub_1000050A4(v108, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_16;
  }

  v97 = v528;
  if (([v96 evaluateWithObject:v528] & 1) == 0)
  {
LABEL_16:
    sub_1001F6280();
    swift_allocError();
    *v110 = v95;
    *(v110 + 8) = v94;
    *(v110 + 16) = 0;
    *(v110 + 24) = 0;
    *(v110 + 32) = 0;
    swift_willThrow();
LABEL_17:

    return v97;
  }

  v98 = v527;
  v99 = sub_1002B3180(v97);
  if (v98)
  {
    swift_getErrorValue();
    v97 = Error.localizedDescription.getter();
    v101 = v100;
    sub_1001F6280();
    swift_allocError();
    *v102 = v95;
    *(v102 + 8) = v94;
    *(v102 + 16) = v97;
    *(v102 + 24) = v101;
    *(v102 + 32) = 1;
    swift_willThrow();

    return v97;
  }

  v112 = v99;
  v113 = [v99 titleAsString];
  if (!v113)
  {
    goto LABEL_29;
  }

  v114 = v113;
  v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v123 = v116;
  v124 = (v116 >> 56) & 0xF;
  v487 = v115;
  if ((v116 & 0x2000000000000000) == 0)
  {
    v124 = v115 & 0xFFFFFFFFFFFFLL;
  }

  if (!v124)
  {
    v116, v116, v117, v118, v119, v120, v121, v122;

LABEL_29:
    sub_1001F6280();
    swift_allocError();
    *v162 = v95;
    *(v162 + 8) = v94;
    *(v162 + 16) = 0;
    *(v162 + 24) = 0;
    v163 = 3;
LABEL_30:
    *(v162 + 32) = v163;
    swift_willThrow();

    goto LABEL_17;
  }

  v125 = type metadata accessor for RDCoreDataCoreSpotlightDelegate();
  v535.receiver = v525;
  v535.super_class = v125;
  v126 = [&v535 attributeSetForObject:v97];
  if (!v126)
  {
    v123, v127, v128, v129, v130, v131, v132, v133;

    sub_1001F6280();
    swift_allocError();
    *v162 = v95;
    *(v162 + 8) = v94;
    *(v162 + 16) = 0;
    *(v162 + 24) = 0;
    v163 = 5;
    goto LABEL_30;
  }

  v134 = v126;
  v484 = v123;
  v486 = 0;
  v94, v127, v128, v129, v130, v131, v132, v133;
  v483 = v134;
  v135 = [v134 attributeDictionary];
  v136 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v527 = v112;
  v137 = v136;

  v138 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v140 = v527;
  v137, v141, v142, v143, v144, v145, v146, v147;
  v148 = [v138 initWithAttributes:isa];

  v149 = [v140 displayDate];
  v150 = v512;
  v151 = v511;
  if (v149)
  {
    v152 = v149;
    [v149 isAllDay];
    v153 = Bool._bridgeToObjectiveC()().super.super.isa;
    [v148 setAllDay:v153];

    v154 = [v152 date];
    v155 = v497;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v156 = Date._bridgeToObjectiveC()().super.isa;
    (*(v151 + 8))(v155, v150);
    [v148 setDueDate:v156];
  }

  v157 = [v140 notesAsString];
  [v148 setComment:v157];

  v158 = [v140 completionDate];
  if (v158)
  {
    v159 = v498;
    v160 = v158;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v161.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v151 + 8))(v159, v150);
  }

  else
  {
    v161.super.isa = 0;
  }

  [v148 setCompletionDate:v161.super.isa];

  v164 = [v140 creationDate];
  if (v164)
  {
    v165 = v499;
    v166 = v164;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v167.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v151 + 8))(v165, v150);
  }

  else
  {
    v167.super.isa = 0;
  }

  [v148 setContentCreationDate:v167.super.isa];

  v168 = [v140 lastModifiedDate];
  v485 = v114;
  if (v168)
  {
    v169 = v500;
    v170 = v168;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v171.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v151 + 8))(v169, v150);
  }

  else
  {
    v171.super.isa = 0;
  }

  [v148 setContentModificationDate:v171.super.isa];

  v172 = v516;
  static UTType.toDoItem.getter();
  UTType.identifier.getter();
  v174 = v173;
  v175 = *(v518 + 8);
  v176 = v519;
  v175(v172, v519);
  v177 = String._bridgeToObjectiveC()();
  v174, v178, v179, v180, v181, v182, v183, v184;
  [v148 setContentType:v177];

  [v148 setDisplayName:v485];
  v185 = [v528 objectID];
  v186 = [v185 URIRepresentation];

  v187 = v513;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.description.getter();
  v189 = v188;
  (v514)[1](v187, v515);
  v190 = String._bridgeToObjectiveC()();
  v189, v191, v192, v193, v194, v195, v196, v197;
  [v148 setIdentifier:v190];

  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_100791320;
  *(v198 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v198 + 40) = v199;
  static UTType.utf8PlainText.getter();
  v200 = UTType.identifier.getter();
  v202 = v201;
  v175(v172, v176);
  *(v198 + 48) = v200;
  *(v198 + 56) = v202;
  v203 = v517;
  static UTType.utf16PlainText.getter();
  v204 = v148;
  v205 = UTType.identifier.getter();
  v207 = v206;
  v175(v203, v176);
  *(v198 + 64) = v205;
  *(v198 + 72) = v207;
  v208 = v204;
  v209 = Array._bridgeToObjectiveC()().super.isa;
  v198, v210, v211, v212, v213, v214, v215, v216;
  [v204 setProviderDataTypeIdentifiers:v209];

  v217 = v527;
  v218 = [v527 accountID];
  CSSearchableItemAttributeSet.rem_accountID.setter();
  [v217 flagged];
  CSSearchableItemAttributeSet.rem_flagged.setter();
  [v217 isRecurrent];
  CSSearchableItemAttributeSet.rem_isRecurrent.setter();
  v219 = enum case for REMSearchableItemType.reminder(_:);
  v220 = type metadata accessor for REMSearchableItemType();
  v221 = *(v220 - 8);
  v222 = v520;
  (*(v221 + 104))(v520, v219, v220);
  (*(v221 + 56))(v222, 0, 1, v220);
  CSSearchableItemAttributeSet.rem_itemType.setter();
  v223 = [v217 listID];
  CSSearchableItemAttributeSet.rem_listID.setter();
  v224 = [v217 objectID];
  CSSearchableItemAttributeSet.rem_objectID.setter();
  v225 = v485;
  [v208 setTitle:v485];

  v226 = type metadata accessor for REMSpotlightLocationType();
  v518 = *(v226 - 8);
  v228 = v518 + 56;
  v227 = *(v518 + 56);
  v227(v526, 1, 1, v226);
  v229 = [v217 alarms];
  v520 = v96;
  v519 = v208;
  if (v229)
  {
    v230 = v229;
    v517 = v227;
    sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
    v231 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v231 >> 62)
    {
      goto LABEL_81;
    }

    for (i = *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v515 = v228;
      v516 = v226;
      v228 = 0;
      v240 = v231 & 0xC000000000000001;
      v226 = v231 & 0xFFFFFFFFFFFFFF8;
      v241 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      while (1)
      {
        if (v240)
        {
          v242 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v228 >= *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v242 = *(v231 + 8 * v228 + 32);
        }

        v243 = v242;
        v244 = v228 + 1;
        if (__OFADD__(v228, 1))
        {
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v245 = v241;
        v246 = [v242 v241[268]];
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v228;
        v241 = v245;
        if (v244 == i)
        {
          goto LABEL_56;
        }
      }

      v247 = [v243 v245[268]];
      objc_opt_self();
      v248 = swift_dynamicCastObjCClass();
      if (v248)
      {
        v256 = v248;
        v514 = v247;
        v231, v249, v250, v251, v252, v253, v254, v255;
        v257 = [v256 structuredLocation];
        [v257 latitude];
        v258 = Double._bridgeToObjectiveC()().super.super.isa;
        v208 = v519;
        [v519 setLatitude:v258];

        [v257 longitude];
        v259 = Double._bridgeToObjectiveC()().super.super.isa;
        [v208 setLongitude:v259];

        v260 = [v257 displayName];
        [v208 setNamedLocation:v260];

        v261 = [v257 address];
        [v208 setFullyFormattedAddress:v261];

        [v256 proximity];
        v262 = v492;
        REMSpotlightAlarmProximity.init(rawValue:)();
        v263 = v496;
        v264 = *(v496 + 48);
        v265 = v494;
        if (v264(v262, 1, v494) == 1)
        {
          (*(v263 + 104))(v495, enum case for REMSpotlightAlarmProximity.none(_:), v265);
          if (v264(v262, 1, v265) != 1)
          {
            sub_1000050A4(v262, &qword_10093CC48, &qword_10079A8A8);
          }
        }

        else
        {
          (*(v263 + 32))(v495, v262, v265);
        }

        v286 = [v256 structuredLocation];
        v287 = [v286 displayName];

        if (v287)
        {
          v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v290 = v289;
        }

        else
        {

          v288 = 0;
          v290 = 0xE000000000000000;
        }

        v291 = v526;
        sub_1000050A4(v526, &qword_10093CC50, &qword_10079A8B0);
        v292 = v493;
        *v493 = v288;
        *(v292 + 8) = v290;
        v293 = sub_1000F5104(&qword_10093CC68, &qword_10079A8B8);
        (*(v496 + 32))(v292 + *(v293 + 48), v495, v265);
        v294 = v516;
        (*(v518 + 104))(v292, enum case for REMSpotlightLocationType.location(_:), v516);
        (v517)(v292, 0, 1, v294);
        sub_100031B58(v292, v291, &qword_10093CC50, &qword_10079A8B0);
        v217 = v527;
        goto LABEL_83;
      }

      v241 = v245;
LABEL_56:
      v228 = 0;
      while (1)
      {
        if (v240)
        {
          v266 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v228 >= *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_80;
          }

          v266 = *(v231 + 8 * v228 + 32);
        }

        v267 = v266;
        v268 = v228 + 1;
        if (__OFADD__(v228, 1))
        {
          break;
        }

        v269 = [v266 v241[268]];
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v231, v270, v271, v272, v273, v274, v275, v276;

          v277 = [v267 v245[268]];
          objc_opt_self();
          v278 = swift_dynamicCastObjCClass();
          v217 = v527;
          v208 = v519;
          if (v278)
          {
            [v278 event];
            v279 = v488;
            REMSpotlightAlarmVehicleTriggerEvent.init(rawValue:)();

            sub_1000050A4(v526, &qword_10093CC50, &qword_10079A8B0);
            v280 = v489;
            v281 = *(v489 + 48);
            v282 = v490;
            if (v281(v279, 1, v490) == 1)
            {
              v283 = v491;
              (*(v280 + 104))(v491, enum case for REMSpotlightAlarmVehicleTriggerEvent.none(_:), v282);
              v284 = v281(v279, 1, v282);
              v285 = v518;
              if (v284 != 1)
              {
                sub_1000050A4(v279, &qword_10093CC40, &qword_10079A8A0);
              }
            }

            else
            {
              v283 = v491;
              (*(v280 + 32))(v491, v279, v282);
              v285 = v518;
            }

            v295 = v526;
            (*(v280 + 32))(v526, v283, v282);
            v296 = v516;
            (*(v285 + 104))(v295, enum case for REMSpotlightLocationType.vehicle(_:), v516);
            (v517)(v295, 0, 1, v296);
          }

          else
          {
          }

          goto LABEL_83;
        }

        ++v228;
        v241 = v245;
        if (v268 == i)
        {
          goto LABEL_82;
        }
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      ;
    }

LABEL_82:
    v231, v232, v233, v234, v235, v236, v237, v238;
    v217 = v527;
    v208 = v519;
  }

LABEL_83:
  v297 = [v528 hashtags];
  if (v297)
  {
    v298 = v297;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10000CE28(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
    v299 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v300 = v486;
    sub_1001EB7C0(v299);
    v302 = v301;
    v303 = v300;
    v299, v304, v305, v306, v307, v308, v309, v310;
    v311 = *(v302 + 16);
    v312 = &selRef_hack_willSaveHandled;
    v313 = &selRef_setPublicLinkLastModifiedDate_;
    v518 = v302;
    if (v311)
    {

      v314 = Array<A>.removingDuplicates()();
      v302, v315, v316, v317, v318, v319, v320, v321;
      v322 = Array._bridgeToObjectiveC()().super.isa;
      v314, v323, v324, v325, v326, v327, v328, v329;
      [v208 setHashtags:v322];
    }

    v330 = &selRef_setPublicLinkLastModifiedDate_;
  }

  else
  {
    v518 = 0;
    v303 = v486;
    v330 = &selRef_setPublicLinkLastModifiedDate_;
    v312 = &selRef_hack_willSaveHandled;
    v313 = &selRef_setPublicLinkLastModifiedDate_;
  }

  v486 = v303;
  v331 = sub_1001EECC0(v528, v217);
  v332 = Array._bridgeToObjectiveC()().super.isa;
  v331, v333, v334, v335, v336, v337, v338, v339;
  [v208 setContactKeywords:v332];

  if ([v217 priority] - 10 >= 0xFFFFFFFFFFFFFFF7)
  {
    v340 = UInt._bridgeToObjectiveC()().super.super.isa;
    [v208 setRankingHint:v340];
  }

  [v217 v313[268]];
  v341 = [v217 attachments];
  if (v341)
  {
    sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
    v342 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v342 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    v342, v343, v344, v345, v346, v347, v348, v349;
    v217 = v527;
  }

  v350 = [v217 v330[381]];
  if (v350)
  {
    v351 = v350;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100010364(v526, v504, &qword_10093CC50, &qword_10079A8B0);
  v352 = [v527 v312[433]];
  v353 = [v352 uuid];

  v354 = v501;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v502 + 56))(v354, 0, 1, v503);
  v355 = v521;
  REMSpotlightReminderViewProxy.init(priority:flagged:hasAttachment:notes:hashtags:locationType:reminderID:)();
  v356 = v524;
  v532 = v524;
  v533 = sub_1001F68F8(&qword_10093CC58, &type metadata accessor for REMSpotlightReminderViewProxy, &protocol conformance descriptor for REMSpotlightReminderViewProxy);
  v534 = sub_1001F68F8(&qword_10093CC60, &type metadata accessor for REMSpotlightReminderViewProxy, &protocol conformance descriptor for REMSpotlightReminderViewProxy);
  v357 = sub_1000103CC(&v530);
  (*(v523 + 16))(v357, v355, v356);

  LocalizedStringResource.init(stringLiteral:)();
  (*(v506 + 56))(v508, 1, 1, v507);
  DisplayRepresentation.init(mangledViewName:viewCodableProxy:title:subtitle:)();
  v358 = v519;
  CSSearchableItemAttributeSet.displayRepresentation(displayRepresentation:)();
  if (qword_100935BF0 != -1)
  {
    swift_once();
  }

  v359 = type metadata accessor for Logger();
  v360 = sub_100006654(v359, qword_10093CB98);
  v97 = v358;
  v361 = Logger.logObject.getter();
  v362 = static os_log_type_t.default.getter();

  v363 = os_log_type_enabled(v361, v362);
  v528 = v360;
  if (v363)
  {
    v364 = swift_slowAlloc();
    v529 = swift_slowAlloc();
    *v364 = 136446466;
    v530 = CSSearchableItemAttributeSet.rem_objectID.getter();
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v365 = String.init<A>(describing:)();
    v367 = v366;
    v368 = sub_10000668C(v365, v366, &v529);
    v367, v369, v370, v371, v372, v373, v374, v375;
    *(v364 + 4) = v368;
    *(v364 + 12) = 2082;
    v376 = [v97 identifier];
    if (v376)
    {
      v377 = v376;
      v378 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v380 = v379;
    }

    else
    {
      v378 = 0;
      v380 = 0;
    }

    v530 = v378;
    v531 = v380;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v381 = String.init<A>(describing:)();
    v383 = v382;
    v384 = sub_10000668C(v381, v382, &v529);
    v383, v385, v386, v387, v388, v389, v390, v391;
    *(v364 + 14) = v384;
    _os_log_impl(&_mh_execute_header, v361, v362, "Successfully indexed reminder {reminder: %{public}s, CSSearchableItemAttributeSet.identifier: %{public}s}", v364, 0x16u);
    swift_arrayDestroy();
  }

  v392 = v520;
  v393 = v527;
  v394 = CSSearchableItemAttributeSet.rem_objectIDString.getter();
  if (v395)
  {
    v402 = v394;
    v403 = v395;
    v404 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v406 = v405;
    v407 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v409 = v408;
    propertyDictionary = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v481.value._object = v409;
    v481.value._countAndFlagsBits = v407;
    v411._countAndFlagsBits = v402;
    v411._object = v403;
    v412._countAndFlagsBits = v404;
    v412._object = v406;
    v413._countAndFlagsBits = v487;
    v414 = v484;
    v413._object = v484;
    CSSearchableItemAttributeSet.associate(entityInstanceIdentifier:entityTypeIdentifier:displayTitle:displaySubtitle:displaySynonyms:typeDisplayName:typeDisplaySynonyms:propertyDictionary:priority:)(v411, v412, v413, 0, &_swiftEmptyArrayStorage, v481, &_swiftEmptyArrayStorage, propertyDictionary, 0);
    v406, v415, v416, v417, v418, v419, v420, v421;
    v409, v422, v423, v424, v425, v426, v427, v428;
    propertyDictionary, v429, v430, v431, v432, v433, v434, v435;
    v414, v436, v437, v438, v439, v440, v441, v442;
    v403, v443, v444, v445, v446, v447, v448, v449;
    v450 = v97;
    v451 = Logger.logObject.getter();
    v452 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v451, v452))
    {
      v453 = swift_slowAlloc();
      v529 = swift_slowAlloc();
      *v453 = 136446466;
      v530 = CSSearchableItemAttributeSet.rem_objectID.getter();
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v454 = String.init<A>(describing:)();
      v456 = v455;
      v457 = sub_10000668C(v454, v455, &v529);
      v456, v458, v459, v460, v461, v462, v463, v464;
      *(v453 + 4) = v457;
      *(v453 + 12) = 2082;
      v465 = [v450 identifier];
      if (v465)
      {
        v466 = v465;
        v467 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v469 = v468;
      }

      else
      {
        v467 = 0;
        v469 = 0;
      }

      v530 = v467;
      v531 = v469;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v470 = String.init<A>(describing:)();
      v472 = v471;
      v473 = sub_10000668C(v470, v471, &v529);
      v472, v474, v475, v476, v477, v478, v479, v480;
      *(v453 + 14) = v473;
      _os_log_impl(&_mh_execute_header, v451, v452, "Associating reminder entity with attributes {reminder: %{public}s, CSSearchableItemAttributeSet.identifier: %{public}s}", v453, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v484, 0, v396, v397, v398, v399, v400, v401;
  }

  (*(v509 + 8))(v522, v510);
  (*(v523 + 8))(v521, v524);
  sub_1000050A4(v526, &qword_10093CC50, &qword_10079A8B0);
  return v97;
}

_TtC7remindd19RDXPCStorePerformer *sub_1001EECC0(void *a1, id a2)
{
  v94 = _swiftEmptySetSingleton;
  v3 = [a2 contactHandles];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100799D70;
  *(v5 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  *(v5 + 40) = CNContactPhoneNumbersKey;
  *(v5 + 48) = CNContactEmailAddressesKey;
  v6 = CNContactPhoneNumbersKey;
  v7 = CNContactEmailAddressesKey;
  v8 = sub_1001EBBF0();
  v9 = [v4 emails];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_100270804(v10);
  v10, v12, v13, v14, v15, v16, v17, v18;
  v19 = [v4 phones];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = sub_100270804(v20);
  v20, v22, v23, v24, v25, v26, v27, v28;
  v29 = CNContactStore.contactFrom(emailAddresses:phoneNumbers:keysToFetch:)(v11, v21, v5);

  v11, v30, v31, v32, v33, v34, v35, v36;
  v21, v37, v38, v39, v40, v41, v42, v43;
  v5, v44, v45, v46, v47, v48, v49, v50;
  if (v29)
  {
    v51 = [objc_allocWithZone(CNContactFormatter) init];
    v52 = [v51 stringFromContact:v29];

    if (v52)
    {
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      sub_100378434(v93, v53, v55);
      v93[1], v56, v57, v58, v59, v60, v61, v62;
      goto LABEL_7;
    }
  }

LABEL_7:
  v63 = [a1 assignments];
  if (v63)
  {
    v71 = v63;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_10000CE28(&qword_10093CC38, &unk_10093F790, off_1008D4158);
    v72 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001EB5A4(v72, &v94);
    v72, v73, v74, v75, v76, v77, v78, v79;
  }

  v80 = v94;
  v81 = *v94->clientIdentity;
  if (!v81)
  {
    v94, v64, v65, v66, v67, v68, v69, v70;
    return &_swiftEmptyArrayStorage;
  }

  v82 = sub_1003689CC(*v94->clientIdentity, 0);
  v83 = sub_1002791DC(v93, &v82->clientIdentity[16], v81, v80);
  v84 = v93[0];

  result = sub_10001B860(v84);
  if (v83 == v81)
  {
    v80, v86, v87, v88, v89, v90, v91, v92;
    return v82;
  }

  __break(1u);
  return result;
}

double sub_1001EF00C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 assignee];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 firstName];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      sub_100378434(&v68, v5, v7);
      v69, v8, v9, v10, v11, v12, v13, v14;
    }
  }

  v15 = [v1 assignee];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 lastName];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_100378434(&v68, v18, v20);
      v69, v21, v22, v23, v24, v25, v26, v27;
    }
  }

  v28 = [v1 assignee];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 middleName];

    if (v30)
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      sub_100378434(&v68, v31, v33);
      v69, v34, v35, v36, v37, v38, v39, v40;
    }
  }

  v41 = [v1 assignee];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 displayName];

    if (v43)
    {
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      sub_100378434(&v68, v44, v46);
      v69, v47, v48, v49, v50, v51, v52, v53;
    }
  }

  v54 = [v1 assignee];
  if (v54)
  {
    v56 = v54;
    v57 = [v54 nickname];

    if (v57)
    {
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      sub_100378434(&v68, v58, v60);
      v69, v61, v62, v63, v64, v65, v66, v67;
    }
  }

  return result;
}

id sub_1001EF264(void *a1)
{
  v2 = sub_1000F5104(&qword_10093CBE8, &qword_10079A888);
  __chkstk_darwin(v2 - 8, v3);
  v432 = &v408 - v4;
  v431 = type metadata accessor for LocalizedStringResource();
  v430 = *(v431 - 8);
  __chkstk_darwin(v431, v5);
  v429 = &v408 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v434 = type metadata accessor for DisplayRepresentation();
  v433 = *(v434 - 8);
  __chkstk_darwin(v434, v7);
  v439 = &v408 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMSpotlightListViewProxy();
  v442 = *(v9 - 8);
  v443 = v9;
  __chkstk_darwin(v9, v10);
  v438 = &v408 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMSpotlightBadgeType();
  v440 = *(v12 - 8);
  v441 = v12;
  __chkstk_darwin(v12, v13);
  v428 = &v408 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v437 = &v408 - v17;
  v18 = sub_1000F5104(&qword_10093CBF0, &unk_10079A890);
  __chkstk_darwin(v18 - 8, v19);
  v426 = &v408 - v20;
  v420 = type metadata accessor for URL();
  v419 = *(v420 - 8);
  __chkstk_darwin(v420, v21);
  v418 = &v408 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = type metadata accessor for UTType();
  v444 = *(v424 - 8);
  __chkstk_darwin(v424, v23);
  v423 = &v408 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v421 = &v408 - v27;
  v28 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v28, v29);
  v31 = &v408 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UUID();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32, v34);
  v416 = &v408 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v39 = &v408 - v38;
  v40 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v40 - 8, v41);
  v427 = &v408 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43, v44);
  v425 = &v408 - v45;
  __chkstk_darwin(v46, v47);
  v422 = &v408 - v48;
  __chkstk_darwin(v49, v50);
  v445 = &v408 - v51;
  __chkstk_darwin(v52, v53);
  v55 = &v408 - v54;
  __chkstk_darwin(v56, v57);
  v59 = &v408 - v58;
  v447 = 0;
  v448 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v448, v60, v61, v62, v63, v64, v65, v66;
  v447 = 0xD000000000000013;
  v448 = 0x80000001007F09E0;
  v446 = a1;
  v67 = [a1 identifier];
  if (v67)
  {
    v68 = v67;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = *(v33 + 56);
    v70 = v55;
    v71 = 0;
  }

  else
  {
    v69 = *(v33 + 56);
    v70 = v55;
    v71 = 1;
  }

  v417 = v69;
  v69(v70, v71, 1, v32);
  sub_100031B58(v55, v59, &unk_100939D90, "8\n\r");
  v72 = *(v33 + 48);
  if (v72(v59, 1, v32))
  {
    sub_1000050A4(v59, &unk_100939D90, "8\n\r");
    v73 = 0xE300000000000000;
    v74 = 7104878;
  }

  else
  {
    (*(v33 + 16))(v39, v59, v32);
    sub_1000050A4(v59, &unk_100939D90, "8\n\r");
    v75 = UUID.uuidString.getter();
    v73 = v76;
    (*(v33 + 8))(v39, v32);
    v74 = v75;
  }

  v77 = v73;
  String.append(_:)(*&v74);
  v73, v78, v79, v80, v81, v82, v83, v84;
  v85 = v447;
  v86 = v448;
  swift_storeEnumTagMultiPayload();
  v87 = sub_10001F6F4();
  sub_1001F6940(v31, _s10PredicatesOMa_1);
  if (!v87)
  {
    v195 = v85;
    v196 = v446;
    if (qword_100935F50 != -1)
    {
      swift_once();
    }

    v197 = type metadata accessor for Logger();
    sub_100006654(v197, qword_1009442B0);
    v198 = v196;
    v199 = Logger.logObject.getter();
    v200 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v199, v200))
    {
      v201 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      *v201 = 138412290;
      *(v201 + 4) = v198;
      *v202 = v198;
      v203 = v198;
      _os_log_impl(&_mh_execute_header, v199, v200, "Evaluating TypedPredicate with nil NSPredicate against object {object: %@}", v201, 0xCu);
      sub_1000050A4(v202, &unk_100938E70, &unk_100797230);
    }

    v85 = v195;
    goto LABEL_23;
  }

  v88 = v446;
  if (([v87 evaluateWithObject:v446] & 1) == 0)
  {
LABEL_23:
    sub_1001F6280();
    swift_allocError();
    *v204 = v85;
    *(v204 + 8) = v86;
    *(v204 + 16) = 0;
    *(v204 + 24) = 0;
    *(v204 + 32) = 0;
LABEL_27:
    swift_willThrow();

    return v85;
  }

  v415 = v87;
  v89 = v85;
  v90 = [v88 displayName];
  if (!v90)
  {
LABEL_25:
    sub_1001F6280();
    swift_allocError();
    *v205 = v89;
    *(v205 + 8) = v86;
    *(v205 + 16) = 0;
    *(v205 + 24) = 0;
    v206 = 3;
LABEL_26:
    *(v205 + 32) = v206;
    v87 = v415;
    goto LABEL_27;
  }

  v85 = v90;
  v414 = v72;
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v92;
  v92, v92, v94, v95, v96, v97, v98, v99;
  v100 = (v93 >> 56) & 0xF;
  if ((v93 & 0x2000000000000000) == 0)
  {
    v100 = v91 & 0xFFFFFFFFFFFFLL;
  }

  if (!v100)
  {

    goto LABEL_25;
  }

  v101 = type metadata accessor for RDCoreDataCoreSpotlightDelegate();
  v452.receiver = v436;
  v452.super_class = v101;
  v102 = objc_msgSendSuper2(&v452, "attributeSetForObject:", v88);
  if (!v102)
  {

    sub_1001F6280();
    swift_allocError();
    *v205 = v89;
    *(v205 + 8) = v86;
    *(v205 + 16) = 0;
    *(v205 + 24) = 0;
    v206 = 5;
    goto LABEL_26;
  }

  v110 = v102;
  v409 = v33;
  v86, v103, v104, v105, v106, v107, v108, v109;
  v111 = [objc_opt_self() displayNameFromListName:v85 isPlaceholder:{objc_msgSend(v88, "isPlaceholder")}];

  v112 = v111;
  v113 = v111;
  if (!v111)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;
    v113 = String._bridgeToObjectiveC()();
    v115, v116, v117, v118, v119, v120, v121, v122;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v123;
    v112 = String._bridgeToObjectiveC()();
    v124, v125, v126, v127, v128, v129, v130, v131;
  }

  v410 = v112;
  v412 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v436 = v132;
  v133 = v111;
  v413 = v110;
  v134 = [v110 attributeDictionary];
  v135 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v136 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v135, v138, v139, v140, v141, v142, v143, v144;
  v145 = [v136 initWithAttributes:isa];

  v146 = v421;
  static UTType.toDoItem.getter();
  UTType.identifier.getter();
  v148 = v147;
  v408 = v444[1];
  ++v444;
  v149 = v424;
  v408(v146, v424);
  v150 = String._bridgeToObjectiveC()();
  v148, v151, v152, v153, v154, v155, v156, v157;
  [v145 setContentType:v150];

  v411 = v145;
  [v145 setDisplayName:v113];

  v158 = [v446 objectID];
  v159 = [v158 URIRepresentation];

  v160 = v418;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.description.getter();
  v162 = v161;
  (*(v419 + 8))(v160, v420);
  v163 = String._bridgeToObjectiveC()();
  v162, v164, v165, v166, v167, v168, v169, v170;
  [v145 setIdentifier:v163];

  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_100791340;
  static UTType.utf8PlainText.getter();
  v172 = UTType.identifier.getter();
  v174 = v173;
  v175 = v408;
  v408(v146, v149);
  *(v171 + 32) = v172;
  *(v171 + 40) = v174;
  v176 = v423;
  static UTType.utf16PlainText.getter();
  v177 = UTType.identifier.getter();
  v179 = v178;
  v175(v176, v149);
  v180 = v411;
  *(v171 + 48) = v177;
  *(v171 + 56) = v179;
  v181 = Array._bridgeToObjectiveC()().super.isa;
  v171, v182, v183, v184, v185, v186, v187, v188;
  [v180 setProviderDataTypeIdentifiers:v181];

  v189 = v446;
  v190 = [v446 identifier];
  v191 = v415;
  if (v190)
  {
    v192 = v422;
    v193 = v190;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v194 = 0;
  }

  else
  {
    v194 = 1;
    v192 = v422;
  }

  v208 = v409;
  v417(v192, v194, 1, v32);
  v209 = v192;
  v210 = v445;
  sub_100031B58(v209, v445, &unk_100939D90, "8\n\r");
  v211 = v425;
  sub_100010364(v210, v425, &unk_100939D90, "8\n\r");
  if (v414(v211, 1, v32) == 1)
  {
    sub_1000050A4(v211, &unk_100939D90, "8\n\r");
  }

  else
  {
    v212 = v416;
    (*(v208 + 32))(v416, v211, v32);
    v213 = objc_opt_self();
    v214 = UUID._bridgeToObjectiveC()().super.isa;
    v215 = [v213 objectIDWithUUID:v214];

    CSSearchableItemAttributeSet.rem_objectID.setter();
    (*(v208 + 8))(v212, v32);
  }

  v216 = v437;
  v217 = enum case for REMSearchableItemType.list(_:);
  v218 = type metadata accessor for REMSearchableItemType();
  v219 = *(v218 - 8);
  v220 = v426;
  (*(v219 + 104))(v426, v217, v218);
  (*(v219 + 56))(v220, 0, 1, v218);
  CSSearchableItemAttributeSet.rem_itemType.setter();
  v221 = v410;
  [v180 setTitle:v410];

  [v189 shouldCategorizeGroceryItems];
  CSSearchableItemAttributeSet.rem_shouldCategorizeGroceryItems.setter();
  LODWORD(v221) = [v189 isShared];
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if (!v221)
  {
    v229.super.super.isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
    [v180 setShared:v229.super.super.isa];
LABEL_49:

    goto LABEL_50;
  }

  v222 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v180 setShared:v222];

  sub_100029560();
  v444 = v223;
  if (v223)
  {
    v224 = [v444 ckIdentifier];
    if (v224)
    {
      v225 = v224;
      v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v228 = v227;
    }

    else
    {
      v226 = 0;
      v228 = 0xE000000000000000;
    }

    v230 = [v189 sharedOwnerName];
    if (v230)
    {
      v231 = v230;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v233 = v232;
    }

    else
    {
      sub_1001F0DD4();
      if (v234)
      {
        v233 = v234;
      }

      else
      {
        v233 = 0xE000000000000000;
      }
    }

    v235 = objc_allocWithZone(CSPerson);
    v236 = String._bridgeToObjectiveC()();
    v233, v237, v238, v239, v240, v241, v242, v243;
    v244 = Array._bridgeToObjectiveC()().super.isa;
    v245 = String._bridgeToObjectiveC()();
    v246 = [v235 initWithDisplayName:v236 handles:v244 handleIdentifier:v245];

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v247 = swift_allocObject();
    *(v247 + 16) = xmmword_1007953F0;
    *(v247 + 32) = v246;
    sub_1000060C8(0, &qword_10093CC30, CSPerson_ptr);
    v248 = v246;
    v249 = Array._bridgeToObjectiveC()().super.isa;
    v247, v250, v251, v252, v253, v254, v255, v256;
    v180 = v411;
    [v411 setAuthors:v249];

    v257 = [v446 sharees];
    if (v257)
    {
      v265 = v257;
      sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
      v180 = v411;
      sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
      v266 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v267 = v435;
      sub_1001F62D4(v266, v226, v228);
      v269 = v268;
      v435 = v267;
      v266, v270, v271, v272, v273, v274, v275, v276;
      swift_bridgeObjectRelease_n();
      v229.super.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v228 = v269;
    }

    else
    {
      v229.super.super.isa = 0;
    }

    v216 = v437;
    v228, v258, v259, v260, v261, v262, v263, v264;
    [v180 setPrimaryRecipients:v229.super.super.isa];

    v189 = v446;
    goto LABEL_49;
  }

LABEL_50:
  sub_1001F5F1C(v189);
  v277 = [v189 color];
  if (v277)
  {
    v278 = v277;
    v279 = REMColor.codable.getter();
  }

  else
  {
    v279 = 0;
  }

  type metadata accessor for REMSpotlightColor();
  swift_allocObject();
  v426 = v279;
  v280 = REMSpotlightColor.init(remColor:)();
  (*(v440 + 16))(v428, v216, v441);
  sub_100010364(v445, v427, &unk_100939D90, "8\n\r");

  v281 = v438;
  v444 = v280;
  REMSpotlightListViewProxy.init(badgeType:color:listID:)();
  v282 = v443;
  v449 = v443;
  v450 = sub_1001F68F8(&qword_10093CC20, &type metadata accessor for REMSpotlightListViewProxy, &protocol conformance descriptor for REMSpotlightListViewProxy);
  v451 = sub_1001F68F8(&qword_10093CC28, &type metadata accessor for REMSpotlightListViewProxy, &protocol conformance descriptor for REMSpotlightListViewProxy);
  v283 = sub_1000103CC(&v447);
  (*(v442 + 16))(v283, v281, v282);

  LocalizedStringResource.init(stringLiteral:)();
  (*(v430 + 56))(v432, 1, 1, v431);
  DisplayRepresentation.init(mangledViewName:viewCodableProxy:title:subtitle:)();
  CSSearchableItemAttributeSet.displayRepresentation(displayRepresentation:)();
  if (qword_100935BF0 != -1)
  {
    swift_once();
  }

  v284 = type metadata accessor for Logger();
  v285 = sub_100006654(v284, qword_10093CB98);
  v85 = v180;
  v432 = v285;
  v286 = Logger.logObject.getter();
  v287 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v286, v287))
  {
    v288 = swift_slowAlloc();
    v453 = swift_slowAlloc();
    *v288 = 136446466;
    v447 = CSSearchableItemAttributeSet.rem_objectID.getter();
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v289 = String.init<A>(describing:)();
    v291 = v290;
    v292 = sub_10000668C(v289, v290, &v453);
    v291, v293, v294, v295, v296, v297, v298, v299;
    *(v288 + 4) = v292;
    *(v288 + 12) = 2082;
    v300 = [v85 identifier];
    if (v300)
    {
      v301 = v300;
      v302 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v304 = v303;
    }

    else
    {
      v302 = 0;
      v304 = 0;
    }

    v447 = v302;
    v448 = v304;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v305 = String.init<A>(describing:)();
    v307 = v306;
    v308 = sub_10000668C(v305, v306, &v453);
    v307, v309, v310, v311, v312, v313, v314, v315;
    *(v288 + 14) = v308;
    _os_log_impl(&_mh_execute_header, v286, v287, "Successfully indexed list {list: %{public}s, CSSearchableItemAttributeSet.identifier: %{public}s}", v288, 0x16u);
    swift_arrayDestroy();

    v191 = v415;
  }

  else
  {
  }

  v316 = v413;
  v317 = CSSearchableItemAttributeSet.rem_objectIDString.getter();
  if (v318)
  {
    v319 = v317;
    v320 = v318;
    v321 = v446;
    [v446 isGroup];
    v322 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v324 = v323;
    [v321 isGroup];
    v325 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v327 = v326;
    propertyDictionary = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v407.value._object = v327;
    v407.value._countAndFlagsBits = v325;
    v329._countAndFlagsBits = v319;
    v329._object = v320;
    v330._countAndFlagsBits = v322;
    v330._object = v324;
    v331._countAndFlagsBits = v412;
    v332 = v436;
    v331._object = v436;
    CSSearchableItemAttributeSet.associate(entityInstanceIdentifier:entityTypeIdentifier:displayTitle:displaySubtitle:displaySynonyms:typeDisplayName:typeDisplaySynonyms:propertyDictionary:priority:)(v329, v330, v331, 0, &_swiftEmptyArrayStorage, v407, &_swiftEmptyArrayStorage, propertyDictionary, 0);
    v327, v333, v334, v335, v336, v337, v338, v339;
    propertyDictionary, v340, v341, v342, v343, v344, v345, v346;
    v332, v347, v348, v349, v350, v351, v352, v353;
    v324, v354, v355, v356, v357, v358, v359, v360;
    v320, v361, v362, v363, v364, v365, v366, v367;
    v368 = v85;
    v369 = Logger.logObject.getter();
    v370 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v369, v370))
    {
      v371 = swift_slowAlloc();
      v453 = swift_slowAlloc();
      *v371 = 136446466;
      v447 = CSSearchableItemAttributeSet.rem_objectID.getter();
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v372 = String.init<A>(describing:)();
      v374 = v373;
      v375 = sub_10000668C(v372, v373, &v453);
      v374, v376, v377, v378, v379, v380, v381, v382;
      *(v371 + 4) = v375;
      *(v371 + 12) = 2082;
      v383 = [v368 identifier];
      if (v383)
      {
        v384 = v383;
        v385 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v387 = v386;
      }

      else
      {
        v385 = 0;
        v387 = 0;
      }

      v395 = v415;
      v447 = v385;
      v448 = v387;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v396 = String.init<A>(describing:)();
      v398 = v397;
      v399 = sub_10000668C(v396, v397, &v453);
      v398, v400, v401, v402, v403, v404, v405, v406;
      *(v371 + 14) = v399;
      _os_log_impl(&_mh_execute_header, v369, v370, "Associating group or list entity with attributes {objectID: %{public}s, CSSearchableItemAttributeSet.identifier: %{public}s}", v371, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v433 + 8))(v439, v434);
    (*(v442 + 8))(v438, v443);
    (*(v440 + 8))(v437, v441);
  }

  else
  {

    v436, v388, v389, v390, v391, v392, v393, v394;

    (*(v433 + 8))(v439, v434);
    (*(v442 + 8))(v438, v443);
    (*(v440 + 8))(v216, v441);
  }

  sub_1000050A4(v445, &unk_100939D90, "8\n\r");
  return v85;
}

id sub_1001F0DD4()
{
  v1 = [v0 firstName];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = [v0 lastName];
    if (v6)
    {
      v14 = v6;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19._countAndFlagsBits = v15;
      v19._object = v17;
      String.append(_:)(v19);
      v17, v20, v21, v22, v23, v24, v25, v26;
      return v3;
    }

    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  result = [v0 firstName];
  if (result || (result = [v0 lastName]) != 0)
  {
    v28 = result;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v29;
  }

  return result;
}

unint64_t sub_1001F0EFC(void *a1)
{
  v2 = sub_1000F5104(&qword_10093CBE8, &qword_10079A888);
  __chkstk_darwin(v2 - 8, v3);
  v372 = &v347 - v4;
  v371 = type metadata accessor for LocalizedStringResource();
  v370 = *(v371 - 8);
  __chkstk_darwin(v371, v5);
  v369 = &v347 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DisplayRepresentation();
  v373 = *(v7 - 8);
  v374 = v7;
  __chkstk_darwin(v7, v8);
  v377 = &v347 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMSpotlightListViewProxy();
  v380 = *(v10 - 8);
  v381 = v10;
  __chkstk_darwin(v10, v11);
  v376 = &v347 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMSpotlightBadgeType();
  v378 = *(v13 - 8);
  v379 = v13;
  __chkstk_darwin(v13, v14);
  v368 = &v347 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v375 = &v347 - v18;
  v19 = sub_1000F5104(&qword_10093CBF0, &unk_10079A890);
  __chkstk_darwin(v19 - 8, v20);
  v367 = &v347 - v21;
  v360 = type metadata accessor for URL();
  v359 = *(v360 - 8);
  __chkstk_darwin(v360, v22);
  v358 = &v347 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = type metadata accessor for UTType();
  v382 = *(v364 - 8);
  __chkstk_darwin(v364, v24);
  v363 = &v347 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v361 = &v347 - v28;
  v29 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v29, v30);
  v32 = &v347 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33, v35);
  v354 = &v347 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v38);
  v40 = &v347 - v39;
  v41 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v41 - 8, v42);
  v366 = &v347 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44, v45);
  v365 = &v347 - v46;
  __chkstk_darwin(v47, v48);
  v362 = &v347 - v49;
  __chkstk_darwin(v50, v51);
  v383 = &v347 - v52;
  __chkstk_darwin(v53, v54);
  v56 = &v347 - v55;
  __chkstk_darwin(v57, v58);
  v60 = &v347 - v59;
  v385 = 0;
  v386 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v386, v61, v62, v63, v64, v65, v66, v67;
  v385 = 0xD000000000000018;
  v386 = 0x80000001007F0970;
  v384 = a1;
  v68 = [a1 identifier];
  if (v68)
  {
    v69 = v68;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = *(v34 + 56);
    v71 = v56;
    v72 = 0;
  }

  else
  {
    v70 = *(v34 + 56);
    v71 = v56;
    v72 = 1;
  }

  v356 = v70;
  v70(v71, v72, 1, v33);
  sub_100031B58(v56, v60, &unk_100939D90, "8\n\r");
  v355 = *(v34 + 48);
  if (v355(v60, 1, v33))
  {
    sub_1000050A4(v60, &unk_100939D90, "8\n\r");
    v73 = 0xE300000000000000;
    v74 = 7104878;
  }

  else
  {
    (*(v34 + 16))(v40, v60, v33);
    sub_1000050A4(v60, &unk_100939D90, "8\n\r");
    v75 = UUID.uuidString.getter();
    v73 = v76;
    (*(v34 + 8))(v40, v33);
    v74 = v75;
  }

  v77 = v73;
  String.append(_:)(*&v74);
  v73, v78, v79, v80, v81, v82, v83, v84;
  v86 = v385;
  v85 = v386;
  swift_storeEnumTagMultiPayload();
  v87 = sub_10002DDAC();
  sub_1001F6940(v32, _s10PredicatesOMa_3);
  if (!v87)
  {
    v136 = v384;
    if (qword_100935F50 != -1)
    {
      swift_once();
    }

    v137 = type metadata accessor for Logger();
    sub_100006654(v137, qword_1009442B0);
    v73 = v136;
    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *v140 = 138412290;
      *(v140 + 4) = v73;
      *v141 = v73;
      v142 = v73;
      _os_log_impl(&_mh_execute_header, v138, v139, "Evaluating TypedPredicate with nil NSPredicate against object {object: %@}", v140, 0xCu);
      sub_1000050A4(v141, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_22;
  }

  v88 = v384;
  if (([v87 evaluateWithObject:v384] & 1) == 0)
  {
LABEL_22:
    sub_1001F6280();
    swift_allocError();
    *v143 = v86;
    *(v143 + 8) = v85;
    *(v143 + 16) = 0;
    *(v143 + 24) = 0;
    *(v143 + 32) = 0;
LABEL_25:
    swift_willThrow();

    return v73;
  }

  v89 = [v88 name];
  if (!v89)
  {
LABEL_24:
    sub_1001F6280();
    swift_allocError();
    *v144 = v86;
    *(v144 + 8) = v85;
    *(v144 + 16) = 0;
    *(v144 + 24) = 0;
    *(v144 + 32) = 3;
    goto LABEL_25;
  }

  v90 = v89;
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v92;
  v92, v92, v93, v94, v95, v96, v97, v98;
  v106 = HIBYTE(v73) & 0xF;
  if ((v73 & 0x2000000000000000) == 0)
  {
    v106 = v91 & 0xFFFFFFFFFFFFLL;
  }

  if (!v106)
  {

    goto LABEL_24;
  }

  v85, v99, v100, v101, v102, v103, v104, v105;
  v107 = objc_opt_self();
  v108 = v384;
  v109 = [v107 displayNameFromListName:v90 isPlaceholder:{objc_msgSend(v384, "isPlaceholder")}];

  v110 = v109;
  v111 = v109;
  if (!v109)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;
    v111 = String._bridgeToObjectiveC()();
    v113, v114, v115, v116, v117, v118, v119, v120;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;
    v110 = String._bridgeToObjectiveC()();
    v122, v123, v124, v125, v126, v127, v128, v129;
  }

  v347 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v351 = v130;
  v131 = type metadata accessor for RDCoreDataCoreSpotlightDelegate();
  v390.receiver = v357;
  v390.super_class = v131;
  v132 = v109;
  v133 = objc_msgSendSuper2(&v390, "attributeSetForObject:", v108);
  v353 = v87;
  v352 = v133;
  v350 = v110;
  v349 = v111;
  v348 = v34;
  if (v133)
  {
    v134 = [v133 attributeDictionary];
    v135 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v135 = sub_10038ED74(&_swiftEmptyArrayStorage);
  }

  v146 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v135, v148, v149, v150, v151, v152, v153, v154;
  v155 = [v146 initWithAttributes:isa];

  v156 = v361;
  static UTType.toDoItem.getter();
  UTType.identifier.getter();
  v158 = v157;
  v159 = v382[1];
  ++v382;
  v160 = v364;
  v159(v156, v364);
  v161 = String._bridgeToObjectiveC()();
  v158, v162, v163, v164, v165, v166, v167, v168;
  [v155 setContentType:v161];

  v357 = v155;
  v169 = v349;
  [v155 setDisplayName:v349];

  v170 = [v384 objectID];
  v171 = [v170 URIRepresentation];

  v172 = v358;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.description.getter();
  v174 = v173;
  (*(v359 + 8))(v172, v360);
  v175 = String._bridgeToObjectiveC()();
  v174, v176, v177, v178, v179, v180, v181, v182;
  [v155 setIdentifier:v175];

  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v183 = swift_allocObject();
  *(v183 + 16) = xmmword_100791340;
  static UTType.utf8PlainText.getter();
  v184 = UTType.identifier.getter();
  v186 = v185;
  v159(v156, v160);
  *(v183 + 32) = v184;
  *(v183 + 40) = v186;
  v187 = v363;
  static UTType.utf16PlainText.getter();
  v188 = UTType.identifier.getter();
  v190 = v189;
  v159(v187, v160);
  v191 = v384;
  *(v183 + 48) = v188;
  *(v183 + 56) = v190;
  v192 = Array._bridgeToObjectiveC()().super.isa;
  v183, v193, v194, v195, v196, v197, v198, v199;
  [v357 setProviderDataTypeIdentifiers:v192];

  v200 = [v191 identifier];
  if (v200)
  {
    v201 = v362;
    v202 = v200;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v203 = 0;
    v204 = v365;
  }

  else
  {
    v203 = 1;
    v204 = v365;
    v201 = v362;
  }

  v205 = v348;
  v356(v201, v203, 1, v33);
  v206 = v201;
  v207 = v383;
  sub_100031B58(v206, v383, &unk_100939D90, "8\n\r");
  sub_100010364(v207, v204, &unk_100939D90, "8\n\r");
  if (v355(v204, 1, v33) == 1)
  {
    sub_1000050A4(v204, &unk_100939D90, "8\n\r");
    v208 = v357;
  }

  else
  {
    v209 = v354;
    (*(v205 + 32))(v354, v204, v33);
    v210 = objc_opt_self();
    v211 = UUID._bridgeToObjectiveC()().super.isa;
    v212 = [v210 objectIDWithUUID:v211];

    v208 = v357;
    CSSearchableItemAttributeSet.rem_objectID.setter();
    (*(v205 + 8))(v209, v33);
  }

  v213 = enum case for REMSearchableItemType.customSmartList(_:);
  v214 = type metadata accessor for REMSearchableItemType();
  v215 = *(v214 - 8);
  v216 = v367;
  (*(v215 + 104))(v367, v213, v214);
  (*(v215 + 56))(v216, 0, 1, v214);
  CSSearchableItemAttributeSet.rem_itemType.setter();
  v217 = v350;
  [v208 setTitle:v350];

  CSSearchableItemAttributeSet.rem_shouldCategorizeGroceryItems.setter();
  v218 = v375;
  sub_1001F5F1C(v191);
  v219 = [v191 color];
  if (v219)
  {
    v220 = v219;
    v221 = REMColor.codable.getter();
  }

  else
  {
    v221 = 0;
  }

  type metadata accessor for REMSpotlightColor();
  swift_allocObject();
  v382 = v221;
  v222 = REMSpotlightColor.init(remColor:)();
  (*(v378 + 16))(v368, v218, v379);
  sub_100010364(v383, v366, &unk_100939D90, "8\n\r");

  v223 = v376;
  v384 = v222;
  REMSpotlightListViewProxy.init(badgeType:color:listID:)();
  v224 = v381;
  v387 = v381;
  v388 = sub_1001F68F8(&qword_10093CC20, &type metadata accessor for REMSpotlightListViewProxy, &protocol conformance descriptor for REMSpotlightListViewProxy);
  v389 = sub_1001F68F8(&qword_10093CC28, &type metadata accessor for REMSpotlightListViewProxy, &protocol conformance descriptor for REMSpotlightListViewProxy);
  v225 = sub_1000103CC(&v385);
  (*(v380 + 16))(v225, v223, v224);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v370 + 56))(v372, 1, 1, v371);
  DisplayRepresentation.init(mangledViewName:viewCodableProxy:title:subtitle:)();
  CSSearchableItemAttributeSet.displayRepresentation(displayRepresentation:)();
  if (qword_100935BF0 != -1)
  {
    swift_once();
  }

  v226 = type metadata accessor for Logger();
  v227 = sub_100006654(v226, qword_10093CB98);
  v73 = v208;
  v372 = v227;
  v228 = Logger.logObject.getter();
  v229 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v228, v229))
  {
    v230 = swift_slowAlloc();
    v391 = swift_slowAlloc();
    *v230 = 136446466;
    v385 = CSSearchableItemAttributeSet.rem_objectID.getter();
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v231 = String.init<A>(describing:)();
    v233 = v232;
    v234 = sub_10000668C(v231, v232, &v391);
    v233, v235, v236, v237, v238, v239, v240, v241;
    *(v230 + 4) = v234;
    *(v230 + 12) = 2082;
    v242 = [v73 identifier];
    if (v242)
    {
      v243 = v242;
      v244 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v246 = v245;
    }

    else
    {
      v244 = 0;
      v246 = 0;
    }

    v385 = v244;
    v386 = v246;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v247 = String.init<A>(describing:)();
    v249 = v248;
    v250 = sub_10000668C(v247, v248, &v391);
    v249, v251, v252, v253, v254, v255, v256, v257;
    *(v230 + 14) = v250;
    _os_log_impl(&_mh_execute_header, v228, v229, "Successfully indexed custom smart list {customSmartList: %{public}s, CSSearchableItemAttributeSet.identifier: %{public}s}", v230, 0x16u);
    swift_arrayDestroy();
  }

  v258 = CSSearchableItemAttributeSet.rem_objectIDString.getter();
  if (v259)
  {
    v260 = v258;
    v261 = v259;
    v262 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v264 = v263;
    v265 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v267 = v266;
    propertyDictionary = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v346.value._object = v267;
    v346.value._countAndFlagsBits = v265;
    v269._countAndFlagsBits = v260;
    v269._object = v261;
    v270._countAndFlagsBits = v262;
    v270._object = v264;
    v271._countAndFlagsBits = v347;
    v272 = v351;
    v271._object = v351;
    CSSearchableItemAttributeSet.associate(entityInstanceIdentifier:entityTypeIdentifier:displayTitle:displaySubtitle:displaySynonyms:typeDisplayName:typeDisplaySynonyms:propertyDictionary:priority:)(v269, v270, v271, 0, &_swiftEmptyArrayStorage, v346, &_swiftEmptyArrayStorage, propertyDictionary, 0);
    v264, v273, v274, v275, v276, v277, v278, v279;
    v267, v280, v281, v282, v283, v284, v285, v286;
    propertyDictionary, v287, v288, v289, v290, v291, v292, v293;
    v261, v294, v295, v296, v297, v298, v299, v300;
    v272, v301, v302, v303, v304, v305, v306, v307;
    v308 = v73;
    v309 = Logger.logObject.getter();
    v310 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v309, v310))
    {
      v311 = swift_slowAlloc();
      v391 = swift_slowAlloc();
      *v311 = 136446466;
      v385 = CSSearchableItemAttributeSet.rem_objectID.getter();
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v312 = String.init<A>(describing:)();
      v314 = v313;
      v315 = sub_10000668C(v312, v313, &v391);
      v314, v316, v317, v318, v319, v320, v321, v322;
      *(v311 + 4) = v315;
      *(v311 + 12) = 2082;
      v323 = [(RDXPCStorePerformer *)v308 identifier];
      if (v323)
      {
        v324 = v323;
        v325 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v327 = v326;
      }

      else
      {
        v325 = 0;
        v327 = 0;
      }

      v385 = v325;
      v386 = v327;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v335 = String.init<A>(describing:)();
      v337 = v336;
      v338 = sub_10000668C(v335, v336, &v391);
      v337, v339, v340, v341, v342, v343, v344, v345;
      *(v311 + 14) = v338;
      _os_log_impl(&_mh_execute_header, v309, v310, "Associating custom smart list entity with attributes {objectID: %{public}s, CSSearchableItemAttributeSet.identifier: %{public}s}", v311, 0x16u);
      swift_arrayDestroy();
    }

    (*(v373 + 8))(v377, v374);
    (*(v380 + 8))(v376, v381);
    (*(v378 + 8))(v375, v379);
  }

  else
  {

    v351, v328, v329, v330, v331, v332, v333, v334;

    (*(v373 + 8))(v377, v374);
    (*(v380 + 8))(v376, v381);
    (*(v378 + 8))(v218, v379);
  }

  sub_1000050A4(v383, &unk_100939D90, "8\n\r");
  return v73;
}

NSObject *sub_1001F2694(void *a1)
{
  v2 = sub_1000F5104(&qword_10093CBE8, &qword_10079A888);
  __chkstk_darwin(v2 - 8, v3);
  v337 = &v320 - v4;
  v334 = type metadata accessor for LocalizedStringResource();
  v333 = *(v334 - 8);
  __chkstk_darwin(v334, v5);
  v331 = &v320 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = type metadata accessor for DisplayRepresentation();
  v335 = *(v336 - 8);
  __chkstk_darwin(v336, v7);
  v330 = &v320 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = type metadata accessor for REMSpotlightSectionViewProxy();
  v329 = *&v332[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v332, v9);
  v328 = &v320 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = type metadata accessor for REMSpotlightBadgeType();
  v351 = *(v350 - 8);
  __chkstk_darwin(v350, v11);
  v349 = &v320 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v352 = &v320 - v15;
  v16 = sub_1000F5104(&qword_10093CBF0, &unk_10079A890);
  __chkstk_darwin(v16 - 8, v17);
  v347 = &v320 - v18;
  v342 = type metadata accessor for URL();
  v341 = *(v342 - 8);
  __chkstk_darwin(v342, v19);
  v21 = (&v320 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v353 = type metadata accessor for UTType();
  v345 = *(v353 - 8);
  __chkstk_darwin(v353, v22);
  v343 = &v320 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v27 = &v320 - v26;
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28, v30);
  v327 = &v320 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v35 = &v320 - v34;
  v36 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v36 - 8, v37);
  v348 = &v320 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v40);
  v346 = &v320 - v41;
  __chkstk_darwin(v42, v43);
  v344 = &v320 - v44;
  __chkstk_darwin(v45, v46);
  v354 = &v320 - v47;
  __chkstk_darwin(v48, v49);
  v51 = &v320 - v50;
  __chkstk_darwin(v52, v53);
  v55 = &v320 - v54;
  v356 = 0;
  v357[0] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v357[0], v56, v57, v58, v59, v60, v61, v62;
  v356 = 0xD00000000000001ALL;
  v357[0] = 0x80000001007F0950;
  v355 = a1;
  v63 = [a1 identifier];
  if (v63)
  {
    v64 = v63;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = *(v29 + 56);
    v66 = v51;
    v67 = 0;
  }

  else
  {
    v65 = *(v29 + 56);
    v66 = v51;
    v67 = 1;
  }

  v340 = v65;
  v65(v66, v67, 1, v28);
  sub_100031B58(v51, v55, &unk_100939D90, "8\n\r");
  v338 = *(v29 + 48);
  if (v338(v55, 1, v28))
  {
    sub_1000050A4(v55, &unk_100939D90, "8\n\r");
    v68 = 0xE300000000000000;
    v69 = 7104878;
  }

  else
  {
    (*(v29 + 16))(v35, v55, v28);
    sub_1000050A4(v55, &unk_100939D90, "8\n\r");
    v70 = UUID.uuidString.getter();
    v68 = v71;
    (*(v29 + 8))(v35, v28);
    v69 = v70;
  }

  v72 = v68;
  String.append(_:)(*&v69);
  v68, v73, v74, v75, v76, v77, v78, v79;
  v80 = v356;
  v81 = v357[0];
  v82 = sub_100596AB8(0, 0x80u);
  v83 = v82;
  if (!v82)
  {
    if (qword_100935F50 != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    sub_100006654(v99, qword_1009442B0);
    v100 = v355;
    v21 = Logger.logObject.getter();
    v101 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v21, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v102 = 138412290;
      *(v102 + 4) = v100;
      *v103 = v100;
      v104 = v100;
      _os_log_impl(&_mh_execute_header, v21, v101, "Evaluating TypedPredicate with nil NSPredicate against object {object: %@}", v102, 0xCu);
      sub_1000050A4(v103, &unk_100938E70, &unk_100797230);
      v83 = 0;
    }

    goto LABEL_20;
  }

  v84 = v355;
  if (([(RDXPCStorePerformer *)v82 evaluateWithObject:v355]& 1) == 0)
  {
LABEL_20:
    sub_1001F6280();
    swift_allocError();
    *v105 = v80;
    *(v105 + 8) = v81;
    *(v105 + 16) = 0;
    *(v105 + 24) = 0;
    *(v105 + 32) = 0;
LABEL_23:
    swift_willThrow();

    return v21;
  }

  v85 = [v84 displayName];
  if (!v85)
  {
LABEL_22:
    sub_1001F6280();
    swift_allocError();
    *v106 = v80;
    *(v106 + 8) = v81;
    *(v106 + 16) = 0;
    *(v106 + 24) = 0;
    *(v106 + 32) = 4;
    goto LABEL_23;
  }

  v322 = v21;
  v21 = v85;
  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = (v87 >> 56) & 0xF;
  v324 = v86;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v94 = v86 & 0xFFFFFFFFFFFFLL;
  }

  if (!v94)
  {
    v87, v87, v88, v89, v90, v91, v92, v93;

    goto LABEL_22;
  }

  v325 = v21;
  v323 = v87;
  v326 = v83;
  v81, v87, v88, v89, v90, v91, v92, v93;
  v95 = type metadata accessor for RDCoreDataCoreSpotlightDelegate();
  v358.receiver = v339;
  v358.super_class = v95;
  v96 = objc_msgSendSuper2(&v358, "attributeSetForObject:", v84);
  v321 = v96;
  v320 = v29;
  if (v96)
  {
    v97 = [v96 attributeDictionary];
    v98 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v98 = sub_10038ED74(&_swiftEmptyArrayStorage);
  }

  v108 = v322;
  v109 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v98, v111, v112, v113, v114, v115, v116, v117;
  v118 = [v109 initWithAttributes:isa];

  static UTType.toDoItem.getter();
  UTType.identifier.getter();
  v120 = v119;
  v345 = *(v345 + 8);
  (v345)(v27, v353);
  v121 = String._bridgeToObjectiveC()();
  v120, v122, v123, v124, v125, v126, v127, v128;
  [v118 setContentType:v121];

  v339 = v118;
  [v118 setDisplayName:v325];
  v129 = [v355 objectID];
  v130 = [v129 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.description.getter();
  v132 = v131;
  (*(v341 + 8))(v108, v342);
  v133 = String._bridgeToObjectiveC()();
  v132, v134, v135, v136, v137, v138, v139, v140;
  [v118 setIdentifier:v133];

  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_100791340;
  static UTType.utf8PlainText.getter();
  v142 = UTType.identifier.getter();
  v144 = v143;
  v145 = v353;
  v146 = v345;
  (v345)(v27, v353);
  *(v141 + 32) = v142;
  *(v141 + 40) = v144;
  v147 = v343;
  static UTType.utf16PlainText.getter();
  v148 = UTType.identifier.getter();
  v150 = v149;
  v146(v147, v145);
  v151 = v339;
  *(v141 + 48) = v148;
  *(v141 + 56) = v150;
  v152 = Array._bridgeToObjectiveC()().super.isa;
  v141, v153, v154, v155, v156, v157, v158, v159;
  [v151 setProviderDataTypeIdentifiers:v152];

  v160 = [v355 identifier];
  if (v160)
  {
    v161 = v344;
    v162 = v160;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v163 = 0;
    v164 = v326;
    v165 = v348;
  }

  else
  {
    v163 = 1;
    v164 = v326;
    v165 = v348;
    v161 = v344;
  }

  v166 = v320;
  v340(v161, v163, 1, v28);
  v167 = v161;
  v168 = v354;
  sub_100031B58(v167, v354, &unk_100939D90, "8\n\r");
  v169 = v346;
  sub_100010364(v168, v346, &unk_100939D90, "8\n\r");
  if (v338(v169, 1, v28) == 1)
  {
    sub_1000050A4(v169, &unk_100939D90, "8\n\r");
  }

  else
  {
    v170 = v327;
    (*(v166 + 32))(v327, v169, v28);
    sub_1000060C8(0, &qword_10093CC18, REMListSection_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v172 = UUID._bridgeToObjectiveC()().super.isa;
    v173 = [ObjCClassFromMetadata objectIDWithUUID:v172];

    CSSearchableItemAttributeSet.rem_objectID.setter();
    (*(v166 + 8))(v170, v28);
  }

  v174 = v349;
  v175 = v350;
  v176 = enum case for REMSearchableItemType.listSection(_:);
  v177 = type metadata accessor for REMSearchableItemType();
  v178 = *(v177 - 8);
  v179 = v347;
  (*(v178 + 104))(v347, v176, v177);
  (*(v178 + 56))(v179, 0, 1, v177);
  CSSearchableItemAttributeSet.rem_itemType.setter();
  v180 = v325;
  [v151 setTitle:v325];

  v181 = [v355 list];
  if (v181)
  {
    v182 = v181;
    sub_1001F5F1C(v181);
    v183 = [v182 color];
    if (v183)
    {
      v184 = v183;
      v185 = REMColor.codable.getter();
    }

    else
    {
      v185 = 0;
    }

    type metadata accessor for REMSpotlightColor();
    swift_allocObject();
    v355 = v185;
    REMSpotlightColor.init(remColor:)();
    (*(v351 + 16))(v174, v352, v175);
    sub_100010364(v354, v165, &unk_100939D90, "8\n\r");
    v186 = [v182 displayName];
    v187 = v175;
    if (v186)
    {
      v188 = v186;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v189 = v328;
    REMSpotlightSectionViewProxy.init(badgeType:color:sectionID:listDisplayName:)();
    v190 = v332;
    v357[2] = v332;
    v357[3] = sub_1001F68F8(&qword_10093CC00, &type metadata accessor for REMSpotlightSectionViewProxy, &protocol conformance descriptor for REMSpotlightSectionViewProxy);
    v357[4] = sub_1001F68F8(&qword_10093CC08, &type metadata accessor for REMSpotlightSectionViewProxy, &protocol conformance descriptor for REMSpotlightSectionViewProxy);
    v191 = sub_1000103CC(&v356);
    v192 = v329;
    (*(v329 + 16))(v191, v189, v190);

    LocalizedStringResource.init(stringLiteral:)();
    (*(v333 + 56))(v337, 1, 1, v334);
    v193 = v330;
    DisplayRepresentation.init(mangledViewName:viewCodableProxy:title:subtitle:)();
    v194 = v339;
    CSSearchableItemAttributeSet.displayRepresentation(displayRepresentation:)();

    (*(v335 + 8))(v193, v336);
    v195 = v190;
    v151 = v194;
    (*(v192 + 8))(v189, v195);
    (*(v351 + 8))(v352, v187);
    v164 = v326;
  }

  if (qword_100935BF0 != -1)
  {
    swift_once();
  }

  v196 = type metadata accessor for Logger();
  v197 = sub_100006654(v196, qword_10093CB98);
  v21 = v151;
  v198 = Logger.logObject.getter();
  v199 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v198, v199))
  {
    v200 = swift_slowAlloc();
    v359 = swift_slowAlloc();
    *v200 = 136446466;
    v356 = CSSearchableItemAttributeSet.rem_objectID.getter();
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v201 = String.init<A>(describing:)();
    v203 = v202;
    v204 = sub_10000668C(v201, v202, &v359);
    v203, v205, v206, v207, v208, v209, v210, v211;
    *(v200 + 4) = v204;
    *(v200 + 12) = 2082;
    v212 = [v21 identifier];
    if (v212)
    {
      v213 = v212;
      v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v216 = v215;
    }

    else
    {
      v214 = 0;
      v216 = 0;
    }

    v356 = v214;
    v357[0] = v216;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v217 = String.init<A>(describing:)();
    v219 = v218;
    v220 = sub_10000668C(v217, v218, &v359);
    v219, v221, v222, v223, v224, v225, v226, v227;
    *(v200 + 14) = v220;
    _os_log_impl(&_mh_execute_header, v198, v199, "Successfully indexed list section {listSection: %{public}s, CSSearchableItemAttributeSet.identifier: %{public}s}", v200, 0x16u);
    swift_arrayDestroy();

    v164 = v326;
  }

  else
  {
  }

  v228 = CSSearchableItemAttributeSet.rem_objectIDString.getter();
  if (v229)
  {
    v230 = v228;
    v231 = v229;
    v232 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v234 = v233;
    v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v237 = v236;
    v238 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v355 = v197;
    v239 = v238;
    propertyDictionary._rawValue = v238;
    v318.value._object = v237;
    v318.value._countAndFlagsBits = v235;
    v240._countAndFlagsBits = v230;
    v240._object = v231;
    v241._countAndFlagsBits = v232;
    v241._object = v234;
    v242._countAndFlagsBits = v324;
    v243 = v323;
    v242._object = v323;
    CSSearchableItemAttributeSet.associate(entityInstanceIdentifier:entityTypeIdentifier:displayTitle:displaySubtitle:displaySynonyms:typeDisplayName:typeDisplaySynonyms:propertyDictionary:priority:)(v240, v241, v242, 0, &_swiftEmptyArrayStorage, v318, &_swiftEmptyArrayStorage, propertyDictionary, 0);
    v234, v244, v245, v246, v247, v248, v249, v250;
    v237, v251, v252, v253, v254, v255, v256, v257;
    v239, v258, v259, v260, v261, v262, v263, v264;
    v243, v265, v266, v267, v268, v269, v270, v271;
    v231, v272, v273, v274, v275, v276, v277, v278;
    v279 = v21;
    v280 = Logger.logObject.getter();
    v281 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v280, v281))
    {
      v282 = swift_slowAlloc();
      v359 = swift_slowAlloc();
      *v282 = 136446466;
      v356 = CSSearchableItemAttributeSet.rem_objectID.getter();
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v283 = String.init<A>(describing:)();
      v285 = v284;
      v286 = sub_10000668C(v283, v284, &v359);
      v285, v287, v288, v289, v290, v291, v292, v293;
      *(v282 + 4) = v286;
      *(v282 + 12) = 2082;
      v294 = [v279 identifier];
      if (v294)
      {
        v295 = v294;
        v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v298 = v297;
      }

      else
      {
        v296 = 0;
        v298 = 0;
      }

      v356 = v296;
      v357[0] = v298;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v307 = String.init<A>(describing:)();
      v309 = v308;
      v310 = sub_10000668C(v307, v308, &v359);
      v309, v311, v312, v313, v314, v315, v316, v317;
      *(v282 + 14) = v310;
      _os_log_impl(&_mh_execute_header, v280, v281, "Associating list section entity with attributes {objectID: %{public}s, CSSearchableItemAttributeSet.identifier: %{public}s}", v282, 0x16u);
      swift_arrayDestroy();

      v306 = v357;
    }

    else
    {

      v306 = &v352;
    }

    sub_1000050A4(v354, &unk_100939D90, "8\n\r");
  }

  else
  {
    sub_1000050A4(v354, &unk_100939D90, "8\n\r");
    v323, v299, v300, v301, v302, v303, v304, v305;
  }

  return v21;
}

NSObject *sub_1001F3D6C(void *a1)
{
  v2 = sub_1000F5104(&qword_10093CBE8, &qword_10079A888);
  __chkstk_darwin(v2 - 8, v3);
  v337 = &v320 - v4;
  v334 = type metadata accessor for LocalizedStringResource();
  v333 = *(v334 - 8);
  __chkstk_darwin(v334, v5);
  v331 = &v320 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = type metadata accessor for DisplayRepresentation();
  v335 = *(v336 - 8);
  __chkstk_darwin(v336, v7);
  v330 = &v320 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = type metadata accessor for REMSpotlightSectionViewProxy();
  v329 = *&v332[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v332, v9);
  v328 = &v320 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = type metadata accessor for REMSpotlightBadgeType();
  v351 = *(v350 - 8);
  __chkstk_darwin(v350, v11);
  v349 = &v320 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v352 = &v320 - v15;
  v16 = sub_1000F5104(&qword_10093CBF0, &unk_10079A890);
  __chkstk_darwin(v16 - 8, v17);
  v347 = &v320 - v18;
  v342 = type metadata accessor for URL();
  v341 = *(v342 - 8);
  __chkstk_darwin(v342, v19);
  v21 = (&v320 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v353 = type metadata accessor for UTType();
  v345 = *(v353 - 8);
  __chkstk_darwin(v353, v22);
  v343 = &v320 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v27 = &v320 - v26;
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28, v30);
  v327 = &v320 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v35 = &v320 - v34;
  v36 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v36 - 8, v37);
  v348 = &v320 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v40);
  v346 = &v320 - v41;
  __chkstk_darwin(v42, v43);
  v344 = &v320 - v44;
  __chkstk_darwin(v45, v46);
  v354 = &v320 - v47;
  __chkstk_darwin(v48, v49);
  v51 = &v320 - v50;
  __chkstk_darwin(v52, v53);
  v55 = &v320 - v54;
  v356 = 0;
  v357[0] = 0xE000000000000000;
  _StringGuts.grow(_:)(33);
  v357[0], v56, v57, v58, v59, v60, v61, v62;
  v356 = 0xD00000000000001FLL;
  v357[0] = 0x80000001007F0900;
  v355 = a1;
  v63 = [a1 identifier];
  if (v63)
  {
    v64 = v63;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = *(v29 + 56);
    v66 = v51;
    v67 = 0;
  }

  else
  {
    v65 = *(v29 + 56);
    v66 = v51;
    v67 = 1;
  }

  v340 = v65;
  v65(v66, v67, 1, v28);
  sub_100031B58(v51, v55, &unk_100939D90, "8\n\r");
  v338 = *(v29 + 48);
  if (v338(v55, 1, v28))
  {
    sub_1000050A4(v55, &unk_100939D90, "8\n\r");
    v68 = 0xE300000000000000;
    v69 = 7104878;
  }

  else
  {
    (*(v29 + 16))(v35, v55, v28);
    sub_1000050A4(v55, &unk_100939D90, "8\n\r");
    v70 = UUID.uuidString.getter();
    v68 = v71;
    (*(v29 + 8))(v35, v28);
    v69 = v70;
  }

  v72 = v68;
  String.append(_:)(*&v69);
  v68, v73, v74, v75, v76, v77, v78, v79;
  v80 = v356;
  v81 = v357[0];
  v82 = sub_10024B964(0, 0x80u);
  v83 = v82;
  if (!v82)
  {
    if (qword_100935F50 != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    sub_100006654(v99, qword_1009442B0);
    v100 = v355;
    v21 = Logger.logObject.getter();
    v101 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v21, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v102 = 138412290;
      *(v102 + 4) = v100;
      *v103 = v100;
      v104 = v100;
      _os_log_impl(&_mh_execute_header, v21, v101, "Evaluating TypedPredicate with nil NSPredicate against object {object: %@}", v102, 0xCu);
      sub_1000050A4(v103, &unk_100938E70, &unk_100797230);
      v83 = 0;
    }

    goto LABEL_20;
  }

  v84 = v355;
  if (([(RDXPCStorePerformer *)v82 evaluateWithObject:v355]& 1) == 0)
  {
LABEL_20:
    sub_1001F6280();
    swift_allocError();
    *v105 = v80;
    *(v105 + 8) = v81;
    *(v105 + 16) = 0;
    *(v105 + 24) = 0;
    *(v105 + 32) = 0;
LABEL_23:
    swift_willThrow();

    return v21;
  }

  v85 = [v84 displayName];
  if (!v85)
  {
LABEL_22:
    sub_1001F6280();
    swift_allocError();
    *v106 = v80;
    *(v106 + 8) = v81;
    *(v106 + 16) = 0;
    *(v106 + 24) = 0;
    *(v106 + 32) = 4;
    goto LABEL_23;
  }

  v322 = v21;
  v21 = v85;
  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = (v87 >> 56) & 0xF;
  v324 = v86;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v94 = v86 & 0xFFFFFFFFFFFFLL;
  }

  if (!v94)
  {
    v87, v87, v88, v89, v90, v91, v92, v93;

    goto LABEL_22;
  }

  v325 = v21;
  v323 = v87;
  v326 = v83;
  v81, v87, v88, v89, v90, v91, v92, v93;
  v95 = type metadata accessor for RDCoreDataCoreSpotlightDelegate();
  v358.receiver = v339;
  v358.super_class = v95;
  v96 = objc_msgSendSuper2(&v358, "attributeSetForObject:", v84);
  v321 = v96;
  v320 = v29;
  if (v96)
  {
    v97 = [v96 attributeDictionary];
    v98 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v98 = sub_10038ED74(&_swiftEmptyArrayStorage);
  }

  v108 = v322;
  v109 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v98, v111, v112, v113, v114, v115, v116, v117;
  v118 = [v109 initWithAttributes:isa];

  static UTType.toDoItem.getter();
  UTType.identifier.getter();
  v120 = v119;
  v345 = *(v345 + 8);
  (v345)(v27, v353);
  v121 = String._bridgeToObjectiveC()();
  v120, v122, v123, v124, v125, v126, v127, v128;
  [v118 setContentType:v121];

  v339 = v118;
  [v118 setDisplayName:v325];
  v129 = [v355 objectID];
  v130 = [v129 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.description.getter();
  v132 = v131;
  (*(v341 + 8))(v108, v342);
  v133 = String._bridgeToObjectiveC()();
  v132, v134, v135, v136, v137, v138, v139, v140;
  [v118 setIdentifier:v133];

  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_100791340;
  static UTType.utf8PlainText.getter();
  v142 = UTType.identifier.getter();
  v144 = v143;
  v145 = v353;
  v146 = v345;
  (v345)(v27, v353);
  *(v141 + 32) = v142;
  *(v141 + 40) = v144;
  v147 = v343;
  static UTType.utf16PlainText.getter();
  v148 = UTType.identifier.getter();
  v150 = v149;
  v146(v147, v145);
  v151 = v339;
  *(v141 + 48) = v148;
  *(v141 + 56) = v150;
  v152 = Array._bridgeToObjectiveC()().super.isa;
  v141, v153, v154, v155, v156, v157, v158, v159;
  [v151 setProviderDataTypeIdentifiers:v152];

  v160 = [v355 identifier];
  if (v160)
  {
    v161 = v344;
    v162 = v160;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v163 = 0;
    v164 = v326;
    v165 = v348;
  }

  else
  {
    v163 = 1;
    v164 = v326;
    v165 = v348;
    v161 = v344;
  }

  v166 = v320;
  v340(v161, v163, 1, v28);
  v167 = v161;
  v168 = v354;
  sub_100031B58(v167, v354, &unk_100939D90, "8\n\r");
  v169 = v346;
  sub_100010364(v168, v346, &unk_100939D90, "8\n\r");
  if (v338(v169, 1, v28) == 1)
  {
    sub_1000050A4(v169, &unk_100939D90, "8\n\r");
  }

  else
  {
    v170 = v327;
    (*(v166 + 32))(v327, v169, v28);
    sub_1000060C8(0, &qword_10093CC10, REMSmartListSection_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v172 = UUID._bridgeToObjectiveC()().super.isa;
    v173 = [ObjCClassFromMetadata objectIDWithUUID:v172];

    CSSearchableItemAttributeSet.rem_objectID.setter();
    (*(v166 + 8))(v170, v28);
  }

  v174 = v349;
  v175 = v350;
  v176 = enum case for REMSearchableItemType.smartListSection(_:);
  v177 = type metadata accessor for REMSearchableItemType();
  v178 = *(v177 - 8);
  v179 = v347;
  (*(v178 + 104))(v347, v176, v177);
  (*(v178 + 56))(v179, 0, 1, v177);
  CSSearchableItemAttributeSet.rem_itemType.setter();
  v180 = v325;
  [v151 setTitle:v325];

  v181 = [v355 smartList];
  if (v181)
  {
    v182 = v181;
    sub_1001F5F1C(v181);
    v183 = v182;
    v184 = [v183 color];
    if (v184)
    {
      v185 = v184;
      v186 = REMColor.codable.getter();
    }

    else
    {
      v186 = 0;
    }

    type metadata accessor for REMSpotlightColor();
    swift_allocObject();
    v355 = v186;
    REMSpotlightColor.init(remColor:)();
    (*(v351 + 16))(v174, v352, v175);
    sub_100010364(v354, v165, &unk_100939D90, "8\n\r");
    v187 = [v183 name];

    v188 = v175;
    if (v187)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v189 = v328;
    REMSpotlightSectionViewProxy.init(badgeType:color:sectionID:listDisplayName:)();
    v190 = v332;
    v357[2] = v332;
    v357[3] = sub_1001F68F8(&qword_10093CC00, &type metadata accessor for REMSpotlightSectionViewProxy, &protocol conformance descriptor for REMSpotlightSectionViewProxy);
    v357[4] = sub_1001F68F8(&qword_10093CC08, &type metadata accessor for REMSpotlightSectionViewProxy, &protocol conformance descriptor for REMSpotlightSectionViewProxy);
    v191 = sub_1000103CC(&v356);
    v192 = v329;
    (*(v329 + 16))(v191, v189, v190);

    LocalizedStringResource.init(stringLiteral:)();
    (*(v333 + 56))(v337, 1, 1, v334);
    v193 = v330;
    DisplayRepresentation.init(mangledViewName:viewCodableProxy:title:subtitle:)();
    v194 = v339;
    CSSearchableItemAttributeSet.displayRepresentation(displayRepresentation:)();

    (*(v335 + 8))(v193, v336);
    v195 = v190;
    v151 = v194;
    (*(v192 + 8))(v189, v195);
    (*(v351 + 8))(v352, v188);
    v164 = v326;
  }

  if (qword_100935BF0 != -1)
  {
    swift_once();
  }

  v196 = type metadata accessor for Logger();
  v197 = sub_100006654(v196, qword_10093CB98);
  v21 = v151;
  v198 = Logger.logObject.getter();
  v199 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v198, v199))
  {
    v200 = swift_slowAlloc();
    v359 = swift_slowAlloc();
    *v200 = 136446466;
    v356 = CSSearchableItemAttributeSet.rem_objectID.getter();
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v201 = String.init<A>(describing:)();
    v203 = v202;
    v204 = sub_10000668C(v201, v202, &v359);
    v203, v205, v206, v207, v208, v209, v210, v211;
    *(v200 + 4) = v204;
    *(v200 + 12) = 2082;
    v212 = [v21 identifier];
    if (v212)
    {
      v213 = v212;
      v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v216 = v215;
    }

    else
    {
      v214 = 0;
      v216 = 0;
    }

    v356 = v214;
    v357[0] = v216;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v217 = String.init<A>(describing:)();
    v219 = v218;
    v220 = sub_10000668C(v217, v218, &v359);
    v219, v221, v222, v223, v224, v225, v226, v227;
    *(v200 + 14) = v220;
    _os_log_impl(&_mh_execute_header, v198, v199, "Successfully indexed smart list section {listSection: %{public}s, CSSearchableItemAttributeSet.identifier: %{public}s}", v200, 0x16u);
    swift_arrayDestroy();

    v164 = v326;
  }

  else
  {
  }

  v228 = CSSearchableItemAttributeSet.rem_objectIDString.getter();
  if (v229)
  {
    v230 = v228;
    v231 = v229;
    v232 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v234 = v233;
    v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v237 = v236;
    v238 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v355 = v197;
    v239 = v238;
    propertyDictionary._rawValue = v238;
    v318.value._object = v237;
    v318.value._countAndFlagsBits = v235;
    v240._countAndFlagsBits = v230;
    v240._object = v231;
    v241._countAndFlagsBits = v232;
    v241._object = v234;
    v242._countAndFlagsBits = v324;
    v243 = v323;
    v242._object = v323;
    CSSearchableItemAttributeSet.associate(entityInstanceIdentifier:entityTypeIdentifier:displayTitle:displaySubtitle:displaySynonyms:typeDisplayName:typeDisplaySynonyms:propertyDictionary:priority:)(v240, v241, v242, 0, &_swiftEmptyArrayStorage, v318, &_swiftEmptyArrayStorage, propertyDictionary, 0);
    v234, v244, v245, v246, v247, v248, v249, v250;
    v237, v251, v252, v253, v254, v255, v256, v257;
    v239, v258, v259, v260, v261, v262, v263, v264;
    v243, v265, v266, v267, v268, v269, v270, v271;
    v231, v272, v273, v274, v275, v276, v277, v278;
    v279 = v21;
    v280 = Logger.logObject.getter();
    v281 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v280, v281))
    {
      v282 = swift_slowAlloc();
      v359 = swift_slowAlloc();
      *v282 = 136446466;
      v356 = CSSearchableItemAttributeSet.rem_objectID.getter();
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v283 = String.init<A>(describing:)();
      v285 = v284;
      v286 = sub_10000668C(v283, v284, &v359);
      v285, v287, v288, v289, v290, v291, v292, v293;
      *(v282 + 4) = v286;
      *(v282 + 12) = 2082;
      v294 = [v279 identifier];
      if (v294)
      {
        v295 = v294;
        v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v298 = v297;
      }

      else
      {
        v296 = 0;
        v298 = 0;
      }

      v356 = v296;
      v357[0] = v298;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v307 = String.init<A>(describing:)();
      v309 = v308;
      v310 = sub_10000668C(v307, v308, &v359);
      v309, v311, v312, v313, v314, v315, v316, v317;
      *(v282 + 14) = v310;
      _os_log_impl(&_mh_execute_header, v280, v281, "Associating list section entity with attributes {objectID: %{public}s, CSSearchableItemAttributeSet.identifier: %{public}s}", v282, 0x16u);
      swift_arrayDestroy();

      v306 = v357;
    }

    else
    {

      v306 = &v352;
    }

    sub_1000050A4(v354, &unk_100939D90, "8\n\r");
  }

  else
  {
    sub_1000050A4(v354, &unk_100939D90, "8\n\r");
    v323, v299, v300, v301, v302, v303, v304, v305;
  }

  return v21;
}

void sub_1001F5450(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!a1)
  {
    if (qword_100935BF0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_10093CB98);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v23, v24, "CoreSpotlight deleteAllSearchableItems done, upgrading spotlightIndexVersion to %ld", v25, 0xCu);
    }

    v26 = [objc_opt_self() daemonUserDefaults];
    v6 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    [v26 setSpotlightIndexVersion:v6];

LABEL_11:
    if (!a3)
    {
      return;
    }

    goto LABEL_12;
  }

  swift_errorRetain();
  if (qword_100935BF0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10093CB98);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = v11;
    v13 = sub_10000668C(v10, v11, &v27);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error occured trying to deleteAllSearchableItems {error: %s}", v8, 0xCu);
    sub_10000607C(v9);

    goto LABEL_11;
  }

  if (!a3)
  {
    return;
  }

LABEL_12:
  a3(a1);
}

void sub_1001F57B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F5E20();
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100791300;
  v7 = [v2 domainIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6, v12, v13, v14, v15, v16, v17, v18;
  v20[4] = a1;
  v20[5] = a2;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100042968;
  v20[3] = &unk_1008E9EF0;
  v19 = _Block_copy(v20);

  [v5 deleteSearchableItemsWithDomainIdentifiers:isa completionHandler:v19];
  _Block_release(v19);
}

void sub_1001F599C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_10000F188;
  }

  else
  {
    v6 = REMCDList.cleanUpAfterLocalObjectMerge();
    v5 = 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_10003E124(a1, a2);
  v8 = sub_1001F5E20();
  v10[4] = sub_1001F6F98;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100019200;
  v10[3] = &unk_1008E9EA0;
  v9 = _Block_copy(v10);

  [v2 searchableIndex:v8 reindexAllSearchableItemsWithAcknowledgementHandler:v9];
  _Block_release(v9);
}

void sub_1001F5BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v7 = sub_100008D30;
  }

  else
  {
    v7 = REMCDList.cleanUpAfterLocalObjectMerge();
    v6 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  sub_10003E124(a2, a3);
  v9 = sub_1001F5E20();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12[4] = sub_1001F6258;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100019200;
  v12[3] = &unk_1008E9E28;
  v11 = _Block_copy(v12);

  [v3 searchableIndex:v9 reindexSearchableItemsWithIdentifiers:isa acknowledgementHandler:v11];
  _Block_release(v11);
}

id sub_1001F5E20()
{
  v1 = [v0 indexName];
  v2 = [v0 protectionClass];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v0 bundleIdentifier];
  if (v5)
  {
    v7 = String._bridgeToObjectiveC()();
    v5, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(CSSearchableIndex) initWithName:v1 protectionClass:v7 bundleIdentifier:v6];

  return v15;
}

uint64_t sub_1001F5F20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for REMSpotlightBadgeType();
  v40 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5, v6).n128_u64[0];
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = REMListBadgeEmblemDefault;
  v11 = [a1 badgeEmblem];
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v15;
  }

  v16 = objc_allocWithZone(REMListBadge);
  v17 = String._bridgeToObjectiveC()();
  v14, v18, v19, v20, v21, v22, v23, v24;
  v25 = [v16 initWithRawValue:v17];

  v26 = [v25 emoji];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *a2 = v28;
    a2[1] = v30;
    v31 = enum case for REMSpotlightBadgeType.emoji(_:);
    v32 = *(v40 + 104);

    return v32(a2, v31, v5);
  }

  else
  {
    v34 = [v25 emblem];
    if (!v34)
    {
      v34 = v10;
    }

    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *v9 = v36;
    v9[1] = v38;
    (*(v40 + 104))(v9, enum case for REMSpotlightBadgeType.emblem(_:), v5);
    return (*(v40 + 32))(a2, v9, v5);
  }
}

id sub_1001F61F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDCoreDataCoreSpotlightDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001F6280()
{
  result = qword_10093CBF8;
  if (!qword_10093CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CBF8);
  }

  return result;
}

void sub_1001F62D4(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
    Set.Iterator.init(_cocoa:)();
    v4 = v97;
    v5 = v98;
    v7 = v99;
    v6 = v100;
    v8 = v101;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v6 = 0;
  }

  v90 = v7;
  v91 = a3;
  v94 = v5;
  v95 = v4;
LABEL_8:
  v12 = v6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_46;
    }

    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    swift_dynamicCast();
    v16 = v96;
    v6 = v12;
    v15 = v8;
    if (!v96)
    {
LABEL_47:
      v4 = v95;
LABEL_46:
      sub_10001B860(v4);
      return;
    }

LABEL_18:
    v17 = [v16 ckIdentifier];
    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v19 == a2 && v21 == a3)
    {

      v21, v47, v48, v49, v50, v51, v52, v53;
LABEL_31:
      v12 = v6;
      v8 = v15;
      v5 = v94;
      v4 = v95;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v21, v24, v25, v26, v27, v28, v29, v30;
      if (v23)
      {

        goto LABEL_31;
      }

LABEL_25:
      v31 = [v16 displayName];
      v93 = v15;
      if (v31)
      {
        goto LABEL_26;
      }

      v54 = [v16 firstName];
      if (v54)
      {
        v55 = v54;
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v57;

        v58 = [v16 lastName];
        if (v58)
        {
          v66 = v58;
          v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v68;

          v96 = v56;
          v70._countAndFlagsBits = 32;
          v70._object = 0xE100000000000000;
          String.append(_:)(v70);
          v71._countAndFlagsBits = v67;
          v71._object = v69;
          String.append(_:)(v71);
          v69, v72, v73, v74, v75, v76, v77, v78;
          goto LABEL_27;
        }

        v34, v59, v60, v61, v62, v63, v64, v65;
      }

      v31 = [v16 firstName];
      if (v31 || (v31 = [v16 lastName]) != 0)
      {
LABEL_26:
        v32 = v31;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        goto LABEL_27;
      }

      v34 = 0;
LABEL_27:
      v35 = [v16 ckIdentifier];
      if (v35)
      {
        v36 = v35;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        if (!v34)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v38 = 0xE000000000000000;
        if (!v34)
        {
LABEL_36:
          v39 = 0;
          goto LABEL_37;
        }
      }

      v39 = String._bridgeToObjectiveC()();
      v34, v40, v41, v42, v43, v44, v45, v46;
LABEL_37:
      v79 = objc_allocWithZone(CSPerson);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v81 = String._bridgeToObjectiveC()();
      v38, v82, v83, v84, v85, v86, v87, v88;
      v89 = [v79 initWithDisplayName:v39 handles:isa handleIdentifier:v81];

      v12 = v6;
      v8 = v93;
      v5 = v94;
      a3 = v91;
      v4 = v95;
      if (v89)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v93;
        goto LABEL_8;
      }
    }
  }

  v13 = v12;
  v14 = v8;
  v6 = v12;
  if (v8)
  {
LABEL_14:
    v15 = (v14 - 1) & v14;
    v16 = *(*(v4 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v16)
    {
      goto LABEL_47;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 64) >> 6))
    {
      goto LABEL_46;
    }

    v14 = *(v5 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_1001F67C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943140, &qword_1007A3B60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010364(v4, &v13, &unk_100939260, &unk_100797220);
      v5 = v13;
      v6 = v14;
      result = sub_100005F4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005EE0(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1001F68F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F6940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1001F69A0(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, _TtC7remindd19RDXPCStorePerformer *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a5 - 2 < 4 || a5 == 0)
  {
    v10 = a2;

    goto LABEL_8;
  }

  if (a5 == 1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v10 = a4;

LABEL_8:
    v10, a2, a3, a4, a5, a6, a7, a8;
  }

  return result;
}

void sub_1001F6A10(void (*a1)(void), uint64_t a2)
{
  v4 = REMDaemonCoreSpotlightIndexName;
  v5 = static NSFileProtectionType.rem_spotlightIndexFileProtection.getter();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = REMAppBundleIdentifier;
    v10 = String._bridgeToObjectiveC()();
    v8, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    v9 = REMAppBundleIdentifier;
    v10 = 0;
  }

  v27 = [objc_allocWithZone(CSSearchableIndex) initWithName:v4 protectionClass:v10 bundleIdentifier:v9];

  v18 = [objc_opt_self() daemonUserDefaults];
  v19 = [v18 spotlightIndexVersion];

  if (v19)
  {
    v20 = [v19 integerValue];

    if (v20 >= 6)
    {
      if (a1)
      {
        a1(0);
      }

      return;
    }
  }

  else
  {
    v20 = -1;
  }

  if (qword_100935BF0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_10093CB98);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = v20;
    *(v24 + 12) = 2048;
    *(v24 + 14) = 6;
    _os_log_impl(&_mh_execute_header, v22, v23, "Device spotlight index is outdated, removing the index. {device: %ld, required: %ld}", v24, 0x16u);
  }

  v25 = swift_allocObject();
  v25[2] = 6;
  v25[3] = a1;
  v25[4] = a2;
  aBlock[4] = sub_1001F6D30;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008E9FE0;
  v26 = _Block_copy(aBlock);
  sub_10003E124(a1, a2);

  [v27 deleteAllSearchableItemsWithCompletionHandler:v26];
  _Block_release(v26);
}

double sub_1001F6D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 < 4 || a5 == 0)
  {

    goto LABEL_8;
  }

  if (a5 == 1)
  {

LABEL_8:
  }

  return result;
}

uint64_t initializeWithCopy for RDCoreDataCoreSpotlightDelegate.AttributeSetCreationError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1001F6D3C(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for RDCoreDataCoreSpotlightDelegate.AttributeSetCreationError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1001F6D3C(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_1001F69A0(v8, v9, v10, v11, v12, v13, v14, v15);
  return a1;
}

uint64_t assignWithTake for RDCoreDataCoreSpotlightDelegate.AttributeSetCreationError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(a2 + 32);
  v10 = *a1;
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v14;
  v15 = *(a1 + 32);
  *(a1 + 32) = v9;
  sub_1001F69A0(v10, v12, v11, v13, v15, a6, a7, a8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDCoreDataCoreSpotlightDelegate.AttributeSetCreationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDCoreDataCoreSpotlightDelegate.AttributeSetCreationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_1001F6FAC(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v65 = &v54 - v13;
  v66 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *(a1 + 16);
  }

  if (v14)
  {
    v74 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v14 & ~(v14 >> 63), 0);
    v69 = v74;
    if (v66)
    {
      v15 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v15 = _HashTable.startBucket.getter();
      v16 = *(a1 + 36);
    }

    v71 = v15;
    v72 = v16;
    v73 = v66 != 0;
    if ((v14 & 0x8000000000000000) == 0)
    {
      v54 = v1;
      v17 = 0;
      v62 = (v4 + 48);
      v63 = (v4 + 56);
      v57 = (v4 + 8);
      v58 = (v4 + 16);
      v56 = a1 + 56;
      v18 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v18 = a1;
      }

      v60 = v18;
      v55 = a1 + 64;
      v64 = v3;
      v67 = v10;
      v61 = v14;
      while (v17 < v14)
      {
        if (__OFADD__(v17++, 1))
        {
          goto LABEL_45;
        }

        v26 = v71;
        v27 = v73;
        v68 = v72;
        sub_100411D80(v71, v72, v73, a1);
        v29 = v28;
        v30 = [v28 identifier];
        if (v30)
        {
          v31 = v30;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        v33 = a1;
        (*v63)(v10, v32, 1, v3);
        v34 = v10;
        v35 = v65;
        sub_100031B58(v34, v65, &unk_100939D90, "8\n\r");
        if ((*v62)(v35, 1, v3))
        {
          sub_1000050A4(v35, &unk_100939D90, "8\n\r");
          v36 = 0xE300000000000000;
          v37 = 7104878;
        }

        else
        {
          v38 = v59;
          (*v58)(v59, v35, v3);
          sub_1000050A4(v35, &unk_100939D90, "8\n\r");
          v37 = UUID.uuidString.getter();
          v36 = v39;
          (*v57)(v38, v3);
        }

        v40 = v69;
        v74 = v69;
        v42 = *v69->clientIdentity;
        v41 = *&v69->clientIdentity[8];
        if (v42 >= v41 >> 1)
        {
          sub_100026EF4((v41 > 1), v42 + 1, 1);
          v40 = v74;
        }

        *v40->clientIdentity = v42 + 1;
        v43 = v40 + 16 * v42;
        *(v43 + 4) = v37;
        *(v43 + 5) = v36;
        v69 = v40;
        if (v66)
        {
          v3 = v64;
          v10 = v67;
          if (!v27)
          {
            goto LABEL_50;
          }

          a1 = v33;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v14 = v61;
          sub_1000F5104(&qword_10093B310, &qword_100798930);
          v19 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v19(v70, 0);
        }

        else
        {
          v3 = v64;
          v10 = v67;
          if (v27)
          {
            goto LABEL_51;
          }

          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          a1 = v33;
          v44 = (1 << *(v33 + 32));
          if (v26 >= v44)
          {
            goto LABEL_46;
          }

          v45 = v26 >> 6;
          v46 = *(v56 + 8 * (v26 >> 6));
          if (((v46 >> v26) & 1) == 0)
          {
            goto LABEL_47;
          }

          if (*(v33 + 36) != v68)
          {
            goto LABEL_48;
          }

          v47 = v46 & (-2 << (v26 & 0x3F));
          if (v47)
          {
            v44 = (__clz(__rbit64(v47)) | v26 & 0x7FFFFFFFFFFFFFC0);
            v14 = v61;
          }

          else
          {
            v48 = v45 << 6;
            v49 = v45 + 1;
            v50 = (v55 + 8 * v45);
            v14 = v61;
            while (v49 < &v44->storeProvider[1] >> 6)
            {
              v52 = *v50++;
              v51 = v52;
              v48 += 64;
              ++v49;
              if (v52)
              {
                sub_100010E34(v26, v68, 0, v20, v21, v22, v23, v24);
                v44 = (__clz(__rbit64(v51)) + v48);
                goto LABEL_40;
              }
            }

            sub_100010E34(v26, v68, 0, v20, v21, v22, v23, v24);
LABEL_40:
            v10 = v67;
          }

          v53 = *(a1 + 36);
          v71 = v44;
          v72 = v53;
          v73 = 0;
        }

        if (v17 == v14)
        {
          sub_100010E34(v71, v72, v73, v20, v21, v22, v23, v24);
          return;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }
}

void sub_1001F754C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if ((*(v0 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_started) & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    sub_1001F7AC0(v0);
    objc_autoreleasePoolPop(v13);
    return;
  }

  if (qword_100935BF8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10093CC70);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "RDHashtagLabelUpdater.start() must be called exactly once", v12, 2u);
  }
}

uint64_t sub_1001F773C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093CC70);
  v1 = sub_100006654(v0, qword_10093CC70);
  if (qword_100936470 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975098);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001F7804()
{
  v0 = sub_1000F5104(&unk_10093CFD0, qword_10079AA70);
  sub_1000EECAC(v0, qword_100974C50);
  v1 = sub_100006654(v0, qword_100974C50);
  v2 = sub_1000F5104(&unk_10093D1D8, &unk_10079ADD0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 64);
  if (qword_100935C18 != -1)
  {
    swift_once();
  }

  v5 = qword_10093CC90;
  *v1 = qword_10093CC90;
  v6 = qword_100935C08;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v9 = sub_100006654(v8, qword_100974C68);
  (*(*(v8 - 8) + 16))(&v1[v3], v9, v8);
  *&v1[v4] = 50;
  v10 = enum case for Publishers.TimeGroupingStrategy.byTimeOrCount<A>(_:);
  v11 = *(*(v0 - 8) + 104);

  return v11(v1, v10, v0);
}

uint64_t sub_1001F7990()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000EECAC(v0, qword_100974C68);
  sub_100006654(v0, qword_100974C68);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

void sub_1001F79E0()
{
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100791340;
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v1 = [swift_getObjCClassFromMetadata() cdEntityName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  v5 = [objc_opt_self() cdEntityName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v0 + 48) = v6;
  *(v0 + 56) = v8;
  qword_10093CC88 = v0;
}

double sub_1001F7AC0(uint64_t a1)
{
  v202 = *a1;
  v162 = type metadata accessor for DispatchWorkItemFlags();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162, v2);
  v159 = v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for DispatchQoS();
  v158 = *(v160 - 8);
  __chkstk_darwin(v160, v4);
  v157 = v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for DispatchTimeInterval();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156, v6);
  v154 = (v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v180 = type metadata accessor for DispatchTime();
  v193 = *(v180 - 8);
  __chkstk_darwin(v180, v8);
  v153 = v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v179 = v150 - v12;
  v171 = sub_1000F5104(&qword_10093D100, &qword_10079AD70);
  v170 = *(v171 - 8);
  __chkstk_darwin(v171, v13);
  v169 = v150 - v14;
  v174 = sub_1000F5104(&qword_10093D108, &qword_10079AD78);
  v173 = *(v174 - 8);
  __chkstk_darwin(v174, v15);
  v172 = v150 - v16;
  v177 = sub_1000F5104(&qword_10093D110, &qword_10079AD80);
  v176 = *(v177 - 8);
  __chkstk_darwin(v177, v17);
  v175 = v150 - v18;
  v191 = sub_1000F5104(&qword_10093D118, &qword_10079AD88);
  v197 = *(v191 - 8);
  __chkstk_darwin(v191, v19);
  v190 = v150 - v20;
  v192 = sub_1000F5104(&qword_10093D120, &qword_10079AD90);
  v199 = *(v192 - 8);
  __chkstk_darwin(v192, v21);
  v198 = v150 - v22;
  v168 = sub_1000F5104(&qword_10093D128, &qword_10079AD98);
  v167 = *(v168 - 8);
  __chkstk_darwin(v168, v23);
  v166 = v150 - v24;
  v165 = sub_1000F5104(&unk_10093D130, &unk_100791BA0);
  v164 = *(v165 - 8);
  __chkstk_darwin(v165, v25);
  v163 = v150 - v26;
  v201 = sub_1000F5104(&unk_100936FC0, &qword_10079C9A0);
  v178 = *(v201 - 8);
  __chkstk_darwin(v201, v27);
  v200 = v150 - v28;
  v29 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v29 - 8, v30);
  v194 = v150 - v31;
  v196 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v32 = *(v196 - 8);
  __chkstk_darwin(v196, v33);
  v35 = v150 - v34;
  v183 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v182 = *(v183 - 1);
  __chkstk_darwin(v183, v36);
  v38 = v150 - v37;
  v185 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v184 = *(v185 - 8);
  __chkstk_darwin(v185, v39);
  v181 = v150 - v40;
  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v152 = sub_100006654(v41, qword_10093CC70);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Starting RDHashtagLabelUpdater", v44, 2u);
  }

  v186 = sub_1001F96A4();
  aBlock[0] = sub_100441A9C(0xD000000000000015, 0x800000010079A920, 0);
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000F5104(&unk_100936F70, &unk_100791B60);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();
  sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40, &protocol conformance descriptor for Publishers.Map<A, B>);
  v45 = v196;
  Publisher.filter(_:)();

  (*(v32 + 8))(v35, v45);
  aBlock[0] = *(a1 + 16);
  v46 = aBlock[0];
  v47 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v48 = *(v47 - 8);
  v49 = v194;
  v188 = *(v48 + 56);
  v189 = v47;
  v187 = v48 + 56;
  v188(v194, 1, 1);
  v50 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0, &protocol conformance descriptor for Publishers.Filter<A>);
  v51 = sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v52 = v46;
  v53 = v181;
  v54 = v183;
  v195 = v51;
  v196 = v50;
  v55 = a1;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v49, &qword_100939980, &unk_10079ADA0);

  (*(v182 + 8))(v38, v54);
  sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v56 = v185;
  v57 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  v184[1](v53, v56);
  *(v55 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_cloudAccountsDidChangeCancellable) = v57;

  *(v55 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_started) = 1;
  v58 = v55 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v59 = *(v58 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v59) = (*(v59 + 16))(ObjectType, v59);
    swift_unknownObjectRelease();
    if ((v59 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v185 = v58;
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100792CE0;
  *(v68 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v68 + 40) = v69;
  *(v68 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v68 + 56) = v70;
  *(v68 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v68 + 72) = v71;
  *(v68 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v68 + 88) = v72;
  v73 = sub_100441DF8(*(v55 + 24), 0xD000000000000027, 0x80000001007EB340, v68);
  v68, v74, v75, v76, v77, v78, v79, v80;
  if (qword_100935C10 != -1)
  {
    swift_once();
  }

  v81 = qword_10093CC88;

  v83 = sub_1001A5660(v82);
  v81, v84, v85, v86, v87, v88, v89, v90;
  aBlock[0] = v73;
  *(swift_allocObject() + 16) = v83;
  sub_1000F5104(&unk_10093D170, &unk_100791BC0);
  sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
  sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v91 = v163;
  Publisher.map<A>(_:)();

  v184 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000CB48(&unk_100936FF0, &unk_10093D130, &unk_100791BA0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v92 = v165;
  Publisher.filter(_:)();

  v164[1](v91, v92);
  v165 = sub_10000CB48(&qword_10093D190, &unk_100936FC0, &qword_10079C9A0, &protocol conformance descriptor for Publishers.Filter<A>);
  v93 = v190;
  Publisher.filter(_:)();
  v94 = *(v55 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_highPrioritySubscriptionTransactionRegistrar);
  v95 = swift_allocObject();
  *(v95 + 16) = v94;
  *(v95 + 24) = 1;
  v163 = sub_10000CB48(&qword_10093D198, &qword_10093D118, &qword_10079AD88, &protocol conformance descriptor for Publishers.Filter<A>);

  v96 = v191;
  v97 = v198;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v98 = *(v197 + 8);
  v197 += 8;
  v151 = v98;
  v98(v93, v96);
  aBlock[0] = *(v55 + 16);
  v99 = aBlock[0];
  v100 = v194;
  (v188)(v194, 1, 1, v189);
  v150[1] = sub_10000CB48(&qword_10093D1A0, &qword_10093D120, &qword_10079AD90, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v101 = v99;
  v102 = v166;
  v103 = v192;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v100, &qword_100939980, &unk_10079ADA0);

  v104 = *(v199 + 8);
  v199 += 8;
  v164 = v104;
  (v104)(v97, v103);
  v105 = swift_allocObject();
  v105[2] = sub_1002119BC;
  v105[3] = 0;
  v105[4] = v94;
  v183 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000CB48(&qword_10093D1A8, &qword_10093D128, &qword_10079AD98, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v106 = v168;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v167 + 8))(v102, v106);
  v168 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_hashtagInsertEventCancellables;
  swift_beginAccess();
  v182 = sub_1000F5104(&unk_10093D1B0, &unk_10079ADC0);
  v181 = sub_10000CB48(&qword_100936FA0, &unk_10093D1B0, &unk_10079ADC0, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v107 = v190;
  Publisher.filter(_:)();
  v108 = *(v55 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_lowPrioritySubscriptionTransactionRegistrar);
  v150[0] = v55;
  v109 = swift_allocObject();
  v167 = v108;
  *(v109 + 16) = v108;
  *(v109 + 24) = 1;

  v110 = v191;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v151(v107, v110);
  v111 = v100;
  v113 = v188;
  v112 = v189;
  (v188)(v100, 1, 1, v189);
  v114 = v169;
  v115 = v192;
  Publisher.collect<A>(_:options:)();
  sub_10000CB48(&qword_10093D1C0, &qword_10093D100, &qword_10079AD70, &protocol conformance descriptor for Publishers.CollectByTime<A, B>);
  v116 = v172;
  v117 = v171;
  Publisher.map<A>(_:)();
  (*(v170 + 8))(v114, v117);
  sub_1000050A4(v111, &qword_100939980, &unk_10079ADA0);
  (v164)(v198, v115);
  v118 = v150[0];
  aBlock[0] = *(v150[0] + 16);
  v119 = aBlock[0];
  v113(v111, 1, 1, v112);
  sub_10000CB48(&qword_10093D1C8, &qword_10093D108, &qword_10079AD78, v184);
  v120 = v119;
  v121 = v175;
  v122 = v174;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v111, &qword_100939980, &unk_10079ADA0);

  (*(v173 + 8))(v116, v122);
  v123 = swift_allocObject();
  v123[2] = v167;
  v123[3] = sub_1002119BC;
  v123[4] = 0;
  sub_10000CB48(&qword_10093D1D0, &qword_10093D110, &qword_10079AD80, v183);

  v124 = v177;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v176 + 8))(v121, v124);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v125 = v185;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v126 = *(v125 + 8);
    v127 = swift_getObjectType();
    LOBYTE(v126) = (*(v126 + 24))(v127, v126);
    swift_unknownObjectRelease();
    if ((v126 & 1) == 0)
    {
      (*(v178 + 8))(v200, v201);
LABEL_17:
      v186, v61, v62, v63, v64, v65, v66, v67;
      return result;
    }
  }

  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    *v130 = 0;
    _os_log_impl(&_mh_execute_header, v128, v129, "os_transaction INIT {name: com.apple.remindd.RDHashtagLabelUpdater.start}", v130, 2u);
  }

  v131 = os_transaction_create();
  v132 = v153;
  static DispatchTime.now()();
  v133 = v154;
  *v154 = 5;
  v134 = v155;
  v135 = v156;
  (*(v155 + 104))(v133, enum case for DispatchTimeInterval.seconds(_:), v156);
  + infix(_:_:)();
  (*(v134 + 8))(v133, v135);
  v136 = *(v193 + 8);
  v193 += 8;
  v202 = v136;
  v136(v132, v180);
  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    *v139 = 134217984;
    *(v139 + 4) = 5;
    _os_log_impl(&_mh_execute_header, v137, v138, "RDHashtagLabelUpdater: dispatch to call refreshFromLastConsumedOnLaunchIfNeeded {after: %ld}", v139, 0xCu);
  }

  v140 = *(v118 + 16);
  v141 = swift_allocObject();
  v142 = v186;
  v141[2] = v118;
  v141[3] = v142;
  v141[4] = v131;
  aBlock[4] = sub_100211550;
  aBlock[5] = v141;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008EA1B0;
  v143 = _Block_copy(aBlock);
  v144 = v140;

  swift_unknownObjectRetain();
  v145 = v157;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = &_swiftEmptyArrayStorage;
  sub_10000D380(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v146 = v159;
  v147 = v162;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v148 = v179;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v143);
  swift_unknownObjectRelease();

  (*(v161 + 8))(v146, v147);
  (*(v158 + 8))(v145, v160);
  v202(v148, v180);
  (*(v178 + 8))(v200, v201);

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1001F96A4()
{
  v1 = v0;
  v110 = type metadata accessor for UUID();
  v2 = *(v110 - 8);
  __chkstk_darwin(v110, v3);
  v109 = v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v108 = v103 - v7;
  v8 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v0 + 32)];
  v114 = 0;
  v111 = v8;
  v9 = [v8 fetchActiveCloudKitAccountObjectIDsWithFetchOption:2 error:&v114];
  v10 = v114;
  if (!v9)
  {
    v91 = v114;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100935BF8 == -1)
    {
LABEL_18:
      v92 = type metadata accessor for Logger();
      sub_100006654(v92, qword_10093CC70);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "RDHashtagLabelUpdater: Not tracking changes since there's no active cloudkit account logged in or enabled", v95, 2u);
      }

      return &_swiftEmptyArrayStorage;
    }

LABEL_25:
    swift_once();
    goto LABEL_18;
  }

  v11 = v9;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v10;

  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_10093CC70);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  v12, v17, v18, v19, v20, v21, v22, v23;
  if (os_log_type_enabled(v15, v16))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v114 = v25;
    *v24 = 136446210;
    v26 = Array.description.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v114);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v15, v16, "RDHashtagLabelUpdater: active accounts supporting hashtags: %{public}s", v24, 0xCu);
    sub_10000607C(v25);
  }

  if (!(v12 >> 62))
  {
    v37 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_8;
    }

LABEL_22:

    v12, v96, v97, v98, v99, v100, v101, v102;
    return &_swiftEmptyArrayStorage;
  }

  v37 = _CocoaArrayWrapper.endIndex.getter();
  if (!v37)
  {
    goto LABEL_22;
  }

LABEL_8:
  v114 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v37 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v38 = 0;
  v105 = v1 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_changeTrackingClientName;
  v106 = v37;
  v39 = v12;
  v103[1] = v2 + 8;
  v104 = v12 & 0xC000000000000001;
  v107 = v12;
  v40 = (v2 + 8);
  do
  {
    if (v104)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v41 = *&v39->clientIdentity[8 * v38 + 16];
    }

    v42 = v41;
    v43 = [v41 uuid];
    v44 = v108;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = UUID.uuidString.getter();
    v47 = v46;
    v48 = *v40;
    v49 = v110;
    (*v40)(v44, v110);
    v112 = v42;
    v50 = [v112 uuid];
    v51 = v109;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = UUID.uuidString.getter();
    v54 = v53;
    v48(v51, v49);
    v55 = _s7remindd29ChangeTrackingAccountProviderCMa_0();
    v56 = objc_allocWithZone(v55);
    v57 = &v56[OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountID];
    *v57 = v45;
    v57[1] = v47;
    *&v56[OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_rem_accountObjectID] = v42;
    v58 = &v56[OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountDescription];
    *v58 = v52;
    v58[1] = v54;
    v113.receiver = v56;
    v113.super_class = v55;
    v59 = objc_msgSendSuper2(&v113, "init");
    v60 = *(v105 + 8);
    v61 = qword_100935C10;
    v62 = v59;

    v63 = v111;
    if (v61 != -1)
    {
      swift_once();
    }

    ++v38;
    v64 = qword_10093CC88;
    v65 = objc_allocWithZone(REMDAChangeTrackingHelper);

    v66 = String._bridgeToObjectiveC()();
    v60, v67, v68, v69, v70, v71, v72, v73;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v64, v75, v76, v77, v78, v79, v80, v81;
    v82 = [v65 initWithREMDAAccount:v62 clientName:v66 withREMStore:v63 entityNames:isa];

    v83 = [v82 fetchAndInitializeChangeTrackingStateIfNeeded];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v39 = v107;
  }

  while (v106 != v38);
  v107, v107, v84, v85, v86, v87, v88, v89;

  return v114;
}

void sub_1001F9D40(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  sub_1001F9D98();

  objc_autoreleasePoolPop(v1);
}

void sub_1001F9D98()
{
  v0 = [objc_opt_self() sharedBabysitter];
  if (v0)
  {
    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    [v1 giveAccountWithIDAnotherChance:v2];

    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10093CC70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31 = v7;
      *v6 = 136446210;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v8 = Optional.descriptionOrNil.getter();
      v10 = v9;
      v11 = sub_10000668C(v8, v9, &v31);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "RDHashtagLabelUpdater: Reset babysitter upon enabled/disabled CloudKit account(s) for {waiterID: %{public}s}", v6, 0xCu);
      sub_10000607C(v7);
    }
  }

  v19 = sub_1001F96A4();
  v19, v20, v21, v22, v23, v24, v25, v26;
  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_10093CC70);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "RDHashtagLabelUpdater: (Re-)initialized changeTrackingHelpers upon enabled/disabled CloudKit account(s).", v30, 2u);
  }
}

uint64_t sub_1001FA03C(unint64_t a1, char a2)
{
  v3 = v2;
  LOBYTE(v2) = a2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = (&v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 16);
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5, v8);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    goto LABEL_40;
  }

  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    while (1)
    {
      v14 = &OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumedOnLaunch;
      if ((v2 & 1) == 0)
      {
        v14 = &OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed;
      }

      v15 = *(v3 + *v14 + 8);

      v16 = [objc_opt_self() sharedBabysitter];
      if (!v16)
      {
        break;
      }

      v24 = v16;
      v25 = *(v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitTarget);
      v26 = String._bridgeToObjectiveC()();
      v15, v27, v28, v29, v30, v31, v32, v33;
      v2 = [v24 tokenByRegisteringAccount:v25 forOperationWithName:v26];

      if (!v2)
      {
        goto LABEL_20;
      }

      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v35 = *(a1 + 8 * i + 32);
        }

        v36 = v35;
        v37 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v106 = v35;
        sub_1001FB89C(&v106, v3);

        if (v37 == v13)
        {
          v38 = v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v39 = *(v38 + 8);

            ObjectType = swift_getObjectType();
            (*(v39 + 32))(1, ObjectType, v39);
            swift_unknownObjectRelease();
          }

          else
          {
          }

          return 1;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (!v13)
      {
        goto LABEL_42;
      }
    }

    v15, v17, v18, v19, v20, v21, v22, v23;
LABEL_20:
    v42 = objc_opt_self();
    v43 = v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed;
    v44 = *(v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed + 8);

    v45 = String._bridgeToObjectiveC()();
    v44, v46, v47, v48, v49, v50, v51, v52;
    v53 = [v42 babySatErrorWithOperationName:v45];

    sub_1000F5104(&unk_10093D030, &unk_10079C950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 0x696669746E656469;
    *(inited + 40) = 0xEA00000000007265;
    v55 = *(v43 + 8);

    v56 = String._bridgeToObjectiveC()();
    v55, v57, v58, v59, v60, v61, v62, v63;
    *(inited + 48) = v56;
    v64 = sub_10038D9FC(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &qword_100939270, &unk_100795D50);
    type metadata accessor for Analytics();
    v65 = *(v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_analyticsCrashDetected + 8);

    v66 = sub_1004646CC();
    v64, v67, v68, v69, v70, v71, v72, v73;
    v74 = v53;
    static Analytics.postEvent(_:payload:error:performAutoBugCaptureOnError:)();
    v65, v75, v76, v77, v78, v79, v80, v81;
    v66, v82, v83, v84, v85, v86, v87, v88;

    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_100006654(v89, qword_10093CC70);

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v106 = v93;
      *v92 = 136446210;
      *(v92 + 4) = sub_10000668C(0xD000000000000032, 0x80000001007F0D10, &v106);
      _os_log_impl(&_mh_execute_header, v90, v91, "Babysitting RDHashtagLabelUpdater because it failed too many times {waiterID: %{public}s}.", v92, 0xCu);
      sub_10000607C(v93);
    }

    v2 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v94 = *(a1 + 8 * v2 + 32);
      }

      v95 = v94;
      v96 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v106 = v94;
      sub_1001FB64C(&v106);

      ++v2;
    }

    while (v96 != v13);
    v97 = v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v98 = *(v97 + 8);

      goto LABEL_48;
    }

    return 0;
  }

LABEL_42:
  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v99 = type metadata accessor for Logger();
  sub_100006654(v99, qword_10093CC70);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&_mh_execute_header, v100, v101, "RDHashtagLabelUpdater: No account eligible for hashtag change tracking", v102, 2u);
  }

  v103 = v3 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v98 = *(v103 + 8);
LABEL_48:
    v104 = swift_getObjectType();
    (*(v98 + 32))(0, v104, v98);
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

void sub_1001FA758()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1001F96A4();
  sub_1001FA03C(v1, 0);
  v1, v2, v3, v4, v5, v6, v7, v8;

  objc_autoreleasePoolPop(v0);
}

void sub_1001FA7B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  sub_1001FA81C(a1, a2);

  objc_autoreleasePoolPop(v5);
}

void sub_1001FA81C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1001FAA08(a2);
  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10093CC70);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    if (v2)
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (v2)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    v10 = sub_10000668C(v8, v9, &v21);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "RDHashtagLabelUpdater: refreshFromLastConsumedOnLaunchIfNeeded completed {refreshed: %s}", v6, 0xCu);
    sub_10000607C(v7);
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "os_transaction RELEASE {name: com.apple.remindd.RDHashtagLabelUpdater.start}", v20, 2u);
  }
}

uint64_t sub_1001FAA08(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (2)
    {
      v3 = 0;
      LOBYTE(v4) = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      v64 = v2;
      v65 = v1;
      v66 = v1 & 0xFFFFFFFFFFFFFF8;
      v67 = v1 & 0xC000000000000001;
      if ((v1 & 0xC000000000000001) != 0)
      {
LABEL_7:
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_10;
      }

      while (v3 < *(v6 + 16))
      {
        v16 = *(v1 + 8 * v3 + 32);
LABEL_10:
        v17 = v16;
        v18 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
          break;
        }

        if (v4)
        {

          if (v18 == v2)
          {
            goto LABEL_23;
          }

          LOBYTE(v4) = 1;
          ++v3;
          if (v5)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v19 = [objc_msgSend(v16 "account")];
          swift_unknownObjectRelease();
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          v68 = 0;
          v69 = 0;
          if ([v17 compareCurrentChangeTokenToLastConsumedWithResult:&v69 error:&v68])
          {
            v7 = v69;
            v8 = v68;

            v22, v9, v10, v11, v12, v13, v14, v15;
            v4 = v7 == 4;
            if (v18 == v2)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v23 = v68;
            v24 = _convertNSErrorToError(_:)();

            swift_willThrow();
            if (qword_100935BF8 != -1)
            {
              swift_once();
            }

            v25 = type metadata accessor for Logger();
            sub_100006654(v25, qword_10093CC70);

            swift_errorRetain();
            v26 = Logger.logObject.getter();
            v27 = static os_log_type_t.error.getter();
            v22, v28, v29, v30, v31, v32, v33, v34;

            if (os_log_type_enabled(v26, v27))
            {
              v42 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              *v42 = 136446466;
              v43 = sub_10000668C(v20, v22, &v69);
              v22, v44, v45, v46, v47, v48, v49, v50;
              *(v42 + 4) = v43;
              *(v42 + 12) = 2080;
              v68 = v24;
              swift_errorRetain();
              sub_1000F5104(&unk_1009399E0, &qword_100795D00);
              v51 = String.init<A>(describing:)();
              v53 = v52;
              v54 = sub_10000668C(v51, v52, &v69);
              v53, v55, v56, v57, v58, v59, v60, v61;
              *(v42 + 14) = v54;
              _os_log_impl(&_mh_execute_header, v26, v27, "RDHashtagLabelUpdater: Failed to compareCurrentChangeTokenToLastConsumed {account: %{public}s, error: %s}", v42, 0x16u);
              swift_arrayDestroy();
              v1 = v65;

              v2 = v64;
            }

            else
            {
              v22, v35, v36, v37, v38, v39, v40, v41;
            }

            v4 = 0;
            v6 = v66;
            v5 = v67;
            if (v18 == v2)
            {
LABEL_22:
              if (!v4)
              {
                goto LABEL_27;
              }

LABEL_23:
              v62 = sub_1001FA03C(v1, 1);
              return v62 & 1;
            }
          }

          ++v3;
          if (v5)
          {
            goto LABEL_7;
          }
        }
      }

      __break(1u);
LABEL_26:
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:
  v62 = 0;
  return v62 & 1;
}

void sub_1001FADDC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  KeyPath = swift_getKeyPath();
  if ((v5 & 1) == 0)
  {
    v57 = (v5 >> 1) - v4;
    v7 = __OFSUB__(v5 >> 1, v4);
    goto LABEL_5;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = &_swiftEmptyArrayStorage;
  }

  v10 = *v9->clientIdentity;

  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_23;
  }

  v57 = (v5 >> 1) - v4;
  if (v10 != v57)
  {
LABEL_23:
    swift_unknownObjectRelease();
    v7 = 0;
LABEL_5:
    sub_100277FD4(v2, v3, v4, v5);
    goto LABEL_13;
  }

  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v7 = 0;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
  }

LABEL_13:
  v11 = sub_10004FAEC(v8);

  v12 = sub_1003E9F90(KeyPath, v11);

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  [v14 setAffectedStores:0];
  [v14 setPredicate:v12];

  sub_100050AD0(v16);
  inited, v17, v18, v19, v20, v21, v22, v23;
  v24 = sub_1003FE014(_swiftEmptySetSingleton);
  _swiftEmptySetSingleton, v25, v26, v27, v28, v29, v30, v31;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v24, v33, v34, v35, v36, v37, v38, v39;
  [v14 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v7)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_16;
  }

  [v14 setFetchLimit:v57];
  v40 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    sub_100271930(v40);

    return;
  }

  if (qword_100935BF8 != -1)
  {
    goto LABEL_21;
  }

LABEL_16:
  v41 = type metadata accessor for Logger();
  sub_100006654(v41, qword_10093CC70);
  swift_errorRetain();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v58 = v45;
    *v44 = 136315138;
    swift_getErrorValue();
    v46 = Error.rem_errorDescription.getter();
    v48 = v47;
    v49 = sub_10000668C(v46, v47, &v58);
    v48, v50, v51, v52, v53, v54, v55, v56;
    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "RDHashtagLabelUpdater: failed to fetch reminders from database {error: %s}", v44, 0xCu);
    sub_10000607C(v45);
  }

  else
  {
  }
}

uint64_t sub_1001FB24C()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v15 - 8);
  __chkstk_darwin(v15, v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4, v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8, v7);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v14[1] = "d.RDHashtagLabelUpdater.start";
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.utility(_:), v8);
  v14[0] = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_10000D380(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10093CC90 = result;
  return result;
}

id sub_1001FB614()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDHashtagLabelUpdater.BabysitTarget();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001FB64C(id *a1)
{
  v1 = *a1;
  v2 = [objc_msgSend(*a1 "account")];
  swift_unknownObjectRelease();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  [v1 markChangesConsumed:1];
  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10093CC70);

  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v5, v10, v11, v12, v13, v14, v15, v16;
  if (os_log_type_enabled(v8, v9))
  {
    v24 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v24 = 136446466;
    v25 = sub_10000668C(v3, v5, &v44);
    v5, v26, v27, v28, v29, v30, v31, v32;
    *(v24 + 4) = v25;
    *(v24 + 12) = 2082;
    [v7 upToToken];
    sub_1000F5104(&unk_100939330, qword_100795D90);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    v36 = sub_10000668C(v33, v34, &v44);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v24 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDHashtagLabelUpdater: Mark to current token as consumed due to Babysitting {account: %{public}s, token: %{public}s}", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v5, v17, v18, v19, v20, v21, v22, v23;
  }
}

void sub_1001FB89C(id *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = [objc_msgSend(*a1 "account")];
  swift_unknownObjectRelease();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [v4 sinceToken];
  if (!v9)
  {
LABEL_19:
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100006654(v50, qword_10093CC70);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v8, v53, v54, v55, v56, v57, v58, v59;
    if (os_log_type_enabled(v51, v52))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v324[0] = v68;
      *v67 = 136446210;
      v69 = sub_10000668C(v6, v8, v324);
      v8, v70, v71, v72, v73, v74, v75, v76;
      *(v67 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v51, v52, "RDHashtagLabelUpdater: No since-token from change tracking {account: %{public}s}", v67, 0xCu);
      sub_10000607C(v68);

LABEL_83:

      return;
    }

    goto LABEL_29;
  }

  v10 = v9;
  v11 = [v4 upToToken];
  if (!v11)
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100006654(v77, qword_10093CC70);

    v78 = v10;
    v51 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();

    v8, v80, v81, v82, v83, v84, v85, v86;
    if (os_log_type_enabled(v51, v79))
    {
      v87 = swift_slowAlloc();
      v88 = v8;
      v89 = v6;
      v90 = swift_slowAlloc();
      v317 = v10;
      v91 = swift_slowAlloc();
      v324[0] = v91;
      *v87 = 136446466;
      v92 = sub_10000668C(v89, v88, v324);
      v93 = v88;
      v94 = v92;
      v93, v93, v95, v96, v97, v98, v99, v100;
      *(v87 + 4) = v94;
      *(v87 + 12) = 2114;
      *(v87 + 14) = v78;
      *v90 = v317;
      v101 = v78;
      _os_log_impl(&_mh_execute_header, v51, v79, "RDHashtagLabelUpdater: No updated change token from change tracking (no changes) {account: %{public}s, since: %{public}@}", v87, 0x16u);
      sub_1000050A4(v90, &unk_100938E70, &unk_100797230);

      sub_10000607C(v91);

      return;
    }

LABEL_29:
    v103 = v8;
LABEL_82:
    v103, v60, v61, v62, v63, v64, v65, v66;
    goto LABEL_83;
  }

  v12 = v11;
  v313 = a2;
  v322 = v4;
  if (qword_100935BF8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    v14 = sub_100006654(v13, qword_10093CC70);

    v15 = v10;
    v16 = v12;
    v17 = v12;
    v321 = v14;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v8, v20, v21, v22, v23, v24, v25, v26;
    v316 = v6;
    v317 = v10;
    v311 = v17;
    v314 = v16;
    v315 = v15;
    if (os_log_type_enabled(v18, v19))
    {
      LODWORD(v320) = v19;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v6;
      v30 = v17;
      v31 = v29;
      v318 = v28;
      ObjCClassFromMetadata = v18;
      v32 = v8;
      v33 = v10;
      v34 = swift_slowAlloc();
      v324[0] = v34;
      *v27 = 136446722;
      *(v27 + 4) = sub_10000668C(v31, v32, v324);
      *(v27 + 12) = 2114;
      *(v27 + 14) = v15;
      *(v27 + 22) = 2114;
      *(v27 + 24) = v16;
      v35 = v318;
      v318->super.isa = v33;
      *v35->storeController = v30;
      v8 = v32;
      v36 = v15;
      v37 = v16;
      v18 = ObjCClassFromMetadata;
      _os_log_impl(&_mh_execute_header, ObjCClassFromMetadata, v320, "RDHashtagLabelUpdater: Processing change set {account: %{public}s, since: %{public}@, upTo: %{public}@}", v27, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v34);
    }

    sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
    v38 = v322;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v39 = [v322 changedIdentifiersOfModelClass:? ofChangeType:?];
    v320 = v8;
    if (!v39)
    {
      v102 = 0;
      goto LABEL_35;
    }

    v40 = v39;
    sub_1000F5104(&unk_10093D0B0, &unk_10079AC30);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v324[0] = &_swiftEmptyArrayStorage;
    if (!(v12 >> 62))
    {
      v48 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v48)
      {
        goto LABEL_33;
      }

      goto LABEL_9;
    }

    v48 = _CocoaArrayWrapper.endIndex.getter();
    if (!v48)
    {
LABEL_33:
      v102 = &_swiftEmptyArrayStorage;
LABEL_34:
      v12, v41, v42, v43, v44, v45, v46, v47;
LABEL_35:
      sub_1000060C8(0, &unk_10093D040, REMSharedToMeReminderPlaceholder_ptr);
      v104 = [v38 changedIdentifiersOfModelClass:swift_getObjCClassFromMetadata() ofChangeType:0];
      v312 = v102;
      if (v104)
      {
        v105 = v104;
        sub_1000F5104(&unk_10093D0B0, &unk_10079AC30);
        v106 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v324[0] = &_swiftEmptyArrayStorage;
        if (v106 >> 62)
        {
          goto LABEL_51;
        }

        v114 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v114)
        {
          while (1)
          {
            v115 = 0;
            v38 = (v106 & 0xFFFFFFFFFFFFFF8);
            while ((v106 & 0xC000000000000001) != 0)
            {
              v116 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v117 = v115 + 1;
              if (__OFADD__(v115, 1))
              {
LABEL_47:
                __break(1u);
LABEL_48:
                v318 = v324[0];
                v38 = v322;
                goto LABEL_53;
              }

LABEL_42:
              v326 = v116;
              sub_1001FC9A0(v324, &v326, "RDHashtagLabelUpdater: Tracked insertion is not an REMSharedToMeReminderPlaceholder, huh? {inserted: %s}", v310);
              if (v2)
              {
                goto LABEL_85;
              }

              swift_unknownObjectRelease();
              ++v115;
              if (v117 == v114)
              {
                goto LABEL_48;
              }
            }

            if (v115 < *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            __break(1u);
LABEL_51:
            v114 = _CocoaArrayWrapper.endIndex.getter();
            if (!v114)
            {
              goto LABEL_52;
            }
          }

          v116 = *(v106 + 8 * v115 + 32);
          swift_unknownObjectRetain();
          v117 = v115 + 1;
          if (__OFADD__(v115, 1))
          {
            goto LABEL_47;
          }

          goto LABEL_42;
        }

LABEL_52:
        v318 = &_swiftEmptyArrayStorage;
LABEL_53:
        v106, v107, v108, v109, v110, v111, v112, v113;
      }

      else
      {
        v318 = 0;
      }

      v118 = [v38 changeSet];
      v119 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
      if (v118)
      {
        v120 = v118;
        sub_1000F5104(&unk_100936FD0, &unk_100795D40);
        v121 = swift_allocObject();
        *(v121 + 16) = xmmword_100791320;
        *(v121 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v121 + 40) = v122;
        *(v121 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v121 + 56) = v123;
        *(v121 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v121 + 72) = v124;
        isa = Array._bridgeToObjectiveC()().super.isa;
        v121, v126, v127, v128, v129, v130, v131, v132;
        LOBYTE(v121) = [v120 applyFilterByTransactionAuthors:isa isExclusion:1];

        if ((v121 & 1) == 0)
        {
          v264 = v320;

          v265 = Logger.logObject.getter();
          v266 = static os_log_type_t.error.getter();
          v320, v267, v268, v269, v270, v271, v272, v273;
          v145 = &selRef_setPublicLinkLastModifiedDate_;
          if (os_log_type_enabled(v265, v266))
          {
            v274 = swift_slowAlloc();
            v275 = swift_slowAlloc();
            v324[0] = v275;
            *v274 = 136446210;
            *(v274 + 4) = sub_10000668C(v316, v264, v324);
            _os_log_impl(&_mh_execute_header, v265, v266, "RDHashtagLabelUpdater: Unexpected nil change set when trying to filter in ICCC authors {account: %{public}s}", v274, 0xCu);
            sub_10000607C(v275);

            v38 = v322;
            v119 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
          }

          else
          {

            v38 = v322;
          }

LABEL_61:
          v146 = [v38 changedIdentifiersOfModelClass:ObjCClassFromMetadata ofChangeType:2];
          if (v146)
          {
            v147 = v146;
            sub_1000F5104(&unk_10093D0B0, &unk_10079AC30);
            v148 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v149 = sub_1001FCCA4(v148);
            v148, v150, v151, v152, v153, v154, v155, v156;
          }

          else
          {
            v149 = 0;
          }

          v157 = [v38 v145[407]];
          if (v157)
          {
            v158 = v157;
            sub_1000F5104(&unk_100936FD0, &unk_100795D40);
            v159 = swift_allocObject();
            *(v159 + 16) = *&v119[100].entrysize;
            *(v159 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(v159 + 40) = v160;
            *(v159 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(v159 + 56) = v161;
            *(v159 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(v159 + 72) = v162;
            v163 = Array._bridgeToObjectiveC()().super.isa;
            v159, v164, v165, v166, v167, v168, v169, v170;
            [v158 applyFilterByTransactionAuthors:v163 isExclusion:0];
          }

          else
          {
            v171 = v320;

            v172 = Logger.logObject.getter();
            v173 = static os_log_type_t.error.getter();
            v320, v174, v175, v176, v177, v178, v179, v180;
            if (os_log_type_enabled(v172, v173))
            {
              v181 = swift_slowAlloc();
              v182 = swift_slowAlloc();
              v324[0] = v182;
              *v181 = 136446210;
              *(v181 + 4) = sub_10000668C(v316, v171, v324);
              _os_log_impl(&_mh_execute_header, v172, v173, "RDHashtagLabelUpdater: Unexpected nil change set when trying to filter in ICCC authors {account: %{public}s}", v181, 0xCu);
              sub_10000607C(v182);
            }
          }

          v184 = v314;
          v183 = v315;
          v185 = [v38 changedIdentifiersOfModelClass:ObjCClassFromMetadata ofChangeType:2];
          if (v185)
          {
            v187 = v185;
            sub_1000F5104(&unk_10093D0B0, &unk_10079AC30);
            v188 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v189 = sub_1001FCCA4(v188);
            v188, v190, v191, v192, v193, v194, v195, v196;
          }

          else
          {
            v189 = 0;
          }

          v324[0] = 0xD000000000000015;
          v324[1] = 0x800000010079A920;
          v324[3] = 0;
          v325[0] = 0;
          v324[2] = 0;
          *(v325 + 6) = 0;
          __chkstk_darwin(v185, v186);
          v197 = v312;
          v309[2] = v312;
          v309[3] = v198;
          v309[4] = v315;
          v309[5] = v314;
          v309[6] = v149;
          v309[7] = v189;
          v309[8] = v318;
          sub_100014A64(v324, sub_1002113AC, v309);
          if (v2)
          {
            v197, v199, v200, v201, v202, v203, v204, v205;
            v318, v206, v207, v208, v209, v210, v211, v212;
            v149, v213, v214, v215, v216, v217, v218, v219;
            v189, v220, v221, v222, v223, v224, v225, v226;
            swift_errorRetain();
            v227 = Logger.logObject.getter();
            v228 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v227, v228))
            {
              v229 = swift_slowAlloc();
              v230 = swift_slowAlloc();
              v326 = v230;
              *v229 = 136315138;
              v323 = v2;
              swift_errorRetain();
              sub_1000F5104(&unk_1009399E0, &qword_100795D00);
              v231 = String.init<A>(describing:)();
              v233 = v232;
              v234 = v184;
              v235 = sub_10000668C(v231, v232, &v326);
              v233, v236, v237, v238, v239, v240, v241, v242;
              *(v229 + 4) = v235;
              v184 = v234;
              _os_log_impl(&_mh_execute_header, v227, v228, "RDHashtagLabelUpdater: Failed to save hashtage label for %s", v229, 0xCu);
              sub_10000607C(v230);
            }

            else
            {
            }
          }

          else
          {
            v197, v199, v200, v201, v202, v203, v204, v205;
            v318, v243, v244, v245, v246, v247, v248, v249;
            v149, v250, v251, v252, v253, v254, v255, v256;
            v189, v257, v258, v259, v260, v261, v262, v263;
          }

          v276 = v320;
          [v322 markChangesConsumed];

          v277 = v183;
          v278 = v184;
          v51 = Logger.logObject.getter();
          v279 = static os_log_type_t.default.getter();

          v276, v280, v281, v282, v283, v284, v285, v286;
          if (os_log_type_enabled(v51, v279))
          {
            v287 = swift_slowAlloc();
            v288 = swift_slowAlloc();
            v289 = swift_slowAlloc();
            v326 = v289;
            *v287 = 136446722;
            v290 = sub_10000668C(v316, v276, &v326);
            v291 = v276;
            v292 = v290;
            v291, v291, v293, v294, v295, v296, v297, v298;
            *(v287 + 4) = v292;
            *(v287 + 12) = 2114;
            *(v287 + 14) = v277;
            *(v287 + 22) = 2114;
            *(v287 + 24) = v278;
            v299 = v311;
            *v288 = v317;
            v288[1] = v299;
            v300 = v277;
            v301 = v278;
            _os_log_impl(&_mh_execute_header, v51, v279, "RDHashtagLabelUpdater: Marked change set consumed {account: %{public}s, since: %{public}@, upTo: %{public}@}", v287, 0x20u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            sub_10000607C(v289);

            return;
          }

          v103 = v276;
          goto LABEL_82;
        }
      }

      else
      {
        v133 = v320;

        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.error.getter();
        v320, v136, v137, v138, v139, v140, v141, v142;
        if (os_log_type_enabled(v134, v135))
        {
          v143 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v324[0] = v144;
          *v143 = 136446210;
          *(v143 + 4) = sub_10000668C(v316, v133, v324);
          _os_log_impl(&_mh_execute_header, v134, v135, "RDHashtagLabelUpdater: Unexpected nil change set when trying to filter in ICCC authors {account: %{public}s}", v143, 0xCu);
          sub_10000607C(v144);
        }

        v38 = v322;
      }

      v145 = &selRef_setPublicLinkLastModifiedDate_;
      goto LABEL_61;
    }

LABEL_9:
    v10 = 0;
    v6 = "RDHashtagLabelUpdater: Tracked insertion is not an REMObjectID, huh? {inserted: %s}";
LABEL_10:
    if ((v12 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v10 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v12 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      v49 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v49 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  v326 = v8;
  sub_1001FC9A0(v324, &v326, "RDHashtagLabelUpdater: Tracked insertion is not an REMObjectID, huh? {inserted: %s}", v310);
  if (!v2)
  {
    swift_unknownObjectRelease();
    ++v10;
    if (v49 == v48)
    {
      v102 = v324[0];
      v38 = v322;
      goto LABEL_34;
    }

    goto LABEL_10;
  }

LABEL_85:

  swift_unknownObjectRelease();
  v324[0], v302, v303, v304, v305, v306, v307, v308;
  __break(1u);
}

void sub_1001FC9A0(_TtC7remindd19RDXPCStorePerformer **a1, void **a2, const char *a3, ...)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    v14 = [v13 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_100366328(0, *v15->clientIdentity + 1, 1, v15);
    }

    v17 = *v15->clientIdentity;
    v16 = *&v15->clientIdentity[8];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_100366328((v16 > 1), v17 + 1, 1, v15);
    }

    swift_unknownObjectRelease();
    *v15->clientIdentity = v17 + 1;
    (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v10, v6);
    *a1 = v15;
  }

  else
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10093CC70);
    swift_unknownObjectRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v22;
      *v21 = 136315138;
      v23 = [v11 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_10000668C(v24, v26, &v36);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, a3, v21, 0xCu);
      sub_10000607C(v22);
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1001FCCA4(unint64_t a1)
{
  v8 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_14:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_11:
            __break(1u);
            return v8;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v4 = *(a1 + 8 * i + 32);
          swift_unknownObjectRetain();
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_11;
          }
        }

        v7 = v4;
        sub_1002060C8(&v8, &v7);
        swift_unknownObjectRelease();
        if (v5 == v2)
        {
          return v8;
        }
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

void sub_1001FCDCC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _TtC7remindd19RDXPCStorePerformer *a6, uint64_t a7, uint64_t a8)
{
  v233 = a6;
  v234 = a7;
  v240 = a4;
  v238 = a3;
  v13 = type metadata accessor for RDHashtagLabelUpdater.HashtagTombstone(0);
  v230 = *(v13 - 8);
  __chkstk_darwin(v13 - 8, v14);
  v242 = &v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v243 = *(v16 - 8);
  __chkstk_darwin(v16, v17);
  v19 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __chkstk_darwin(v20, v21).n128_u64[0];
  v229 = &v224 - v23;
  [a1 setTransactionAuthor:{RDHashtagLabelUpdaterAuthor, v22}];
  v239 = v19;
  v235 = a8;
  v236 = v8;
  v232 = a5;
  if (a2 && *(a2 + 16))
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_10093CC70);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    a2, v27, v28, v29, v30, v31, v32, v33;
    if (os_log_type_enabled(v25, v26))
    {
      v34 = swift_slowAlloc();
      p_isa = swift_slowAlloc();
      v35 = p_isa;
      *v34 = 136315138;
      v36 = Array.description.getter();
      v38 = v37;
      v39 = a1;
      v40 = sub_10000668C(v36, v37, &p_isa);
      v38, v41, v42, v43, v44, v45, v46, v47;
      *(v34 + 4) = v40;
      a1 = v39;
      _os_log_impl(&_mh_execute_header, v25, v26, "RDHashtagLabelUpdater: inserted hashtag IDs: %s", v34, 0xCu);
      sub_10000607C(v35);
      a5 = v232;

      v19 = v239;
    }

    sub_1001FDFB8(a1, a2);
  }

  else
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_10093CC70);
    v49 = v240;
    v50 = a5;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = a1;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138543618;
      *(v54 + 4) = v49;
      *(v54 + 12) = 2114;
      *(v54 + 14) = v50;
      *v55 = v49;
      v55[1] = v50;
      v56 = v49;
      v57 = v50;
      _os_log_impl(&_mh_execute_header, v51, v52, "RDHashtagLabelUpdater: No inserted hashtags found in change {since: %{public}@, upTo: %{public}@}", v54, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      a1 = v53;
    }

    v19 = v239;
  }

  v58 = v233;
  v237 = a1;
  v231 = v16;
  if (!v233 || (v59 = *v233->clientIdentity) == 0)
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_100006654(v79, qword_10093CC70);
    v80 = v240;
    v81 = a5;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();

    v84 = os_log_type_enabled(v82, v83);
    v85 = v235;
    if (v84)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v86 = 138543618;
      *(v86 + 4) = v80;
      *(v86 + 12) = 2114;
      *(v86 + 14) = v81;
      *v87 = v80;
      v87[1] = v81;
      v88 = v80;
      v89 = v81;
      _os_log_impl(&_mh_execute_header, v82, v83, "RDHashtagLabelUpdater: No user initiated deleted hashtags found in change {since: %{public}@, upTo: %{public}@}", v86, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v90 = v236;
      v16 = v231;
      a5 = v232;

      a1 = v237;

      v91 = v234;
      v19 = v239;
      if (v234)
      {
        goto LABEL_32;
      }
    }

    else
    {

      v91 = v234;
      v19 = v239;
      v90 = v236;
      if (v234)
      {
        goto LABEL_32;
      }
    }

LABEL_41:
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v124 = type metadata accessor for Logger();
    sub_100006654(v124, qword_10093CC70);
    v125 = v240;
    v126 = a5;
    v127 = a5;
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v130 = 138543618;
      *(v130 + 4) = v125;
      *(v130 + 12) = 2114;
      *(v130 + 14) = v127;
      *v131 = v125;
      v131[1] = v127;
      v132 = v125;
      v133 = v127;
      _os_log_impl(&_mh_execute_header, v128, v129, "RDHashtagLabelUpdater: No ICCC deleted hashtags found in change {since: %{public}@, upTo: %{public}@}", v130, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    v134 = v126;
    a1 = v237;
    if (!v85)
    {
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_100006654(v60, qword_10093CC70);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();
  v58, v63, v64, v65, v66, v67, v68, v69;
  if (os_log_type_enabled(v61, v62))
  {
    v227 = v62;
    v228 = v61;
    v70 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    p_isa = v225;
    v226 = v70;
    *v70 = 136446210;
    v244 = &_swiftEmptyArrayStorage;
    sub_100253258(0, v59, 0);
    v71 = v229;
    v72 = v58 + ((*(v230 + 80) + 32) & ~*(v230 + 80));
    v241 = *(v230 + 72);
    v73 = v244;
    v74 = (v243 + 16);
    do
    {
      v75 = v242;
      sub_100211458(v72, v242);
      (*v74)(v71, v75, v16);
      sub_1002114BC(v75);
      v244 = v73;
      v76 = v16;
      v78 = *v73->clientIdentity;
      v77 = *&v73->clientIdentity[8];
      if (v78 >= v77 >> 1)
      {
        sub_100253258((v77 > 1), v78 + 1, 1);
        v73 = v244;
      }

      *v73->clientIdentity = v78 + 1;
      (*(v243 + 32))(v73 + ((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v78, v71, v76);
      v72 += v241;
      v59 = (v59 - 1);
      v16 = v76;
    }

    while (v59);
    v92 = Array.description.getter();
    v94 = v93;

    v95 = sub_10000668C(v92, v94, &p_isa);
    v94, v96, v97, v98, v99, v100, v101, v102;
    v103 = v226;
    *(v226 + 1) = v95;
    v104 = v228;
    _os_log_impl(&_mh_execute_header, v228, v227, "RDHashtagLabelUpdater: deleted hashtag IDs initiated by user: %{public}s", v103, 0xCu);
    sub_10000607C(v225);

    a1 = v237;
    a5 = v232;
    v58 = v233;
    v19 = v239;
  }

  else
  {
  }

  sub_1001FE050(a1, v58, 1);
  v91 = v234;
  v85 = v235;
  v90 = v236;
  if (!v234)
  {
    goto LABEL_41;
  }

LABEL_32:
  v105 = *(v91 + 16);
  if (!v105)
  {
    goto LABEL_41;
  }

  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v106 = type metadata accessor for Logger();
  sub_100006654(v106, qword_10093CC70);

  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.info.getter();
  v91, v109, v110, v111, v112, v113, v114, v115;
  LODWORD(v239) = v108;
  if (os_log_type_enabled(v107, v108))
  {
    v233 = v107;
    v116 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    p_isa = &v228->isa;
    v229 = v116;
    *v116 = 136446210;
    v244 = &_swiftEmptyArrayStorage;
    sub_100253258(0, v105, 0);
    v117 = v91 + ((*(v230 + 80) + 32) & ~*(v230 + 80));
    v241 = *(v230 + 72);
    v118 = v244;
    v119 = (v243 + 16);
    do
    {
      v120 = v242;
      sub_100211458(v117, v242);
      (*v119)(v19, v120, v16);
      sub_1002114BC(v120);
      v244 = v118;
      v121 = v16;
      v123 = *v118->clientIdentity;
      v122 = *&v118->clientIdentity[8];
      if (v123 >= v122 >> 1)
      {
        sub_100253258((v122 > 1), v123 + 1, 1);
        v118 = v244;
      }

      *v118->clientIdentity = v123 + 1;
      (*(v243 + 32))(v118 + ((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v123, v19, v121);
      v117 += v241;
      --v105;
      v16 = v121;
    }

    while (v105);
    v135 = Array.description.getter();
    v137 = v136;

    v138 = sub_10000668C(v135, v137, &p_isa);
    v137, v139, v140, v141, v142, v143, v144, v145;
    v146 = v229;
    *(v229 + 4) = v138;
    p_super = &v233->super;
    _os_log_impl(&_mh_execute_header, &v233->super, v239, "RDHashtagLabelUpdater: deleted hashtag IDs by ICCC: %{public}s", v146, 0xCu);
    sub_10000607C(v228);

    v90 = v236;
    a1 = v237;
    v91 = v234;
    v85 = v235;
  }

  else
  {
  }

  v134 = v232;
  sub_1001FE050(a1, v91, 0);
  if (!v85)
  {
    goto LABEL_56;
  }

LABEL_49:
  if (!*(v85 + 16))
  {
LABEL_56:
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v178 = type metadata accessor for Logger();
    sub_100006654(v178, qword_10093CC70);
    v179 = v240;
    v180 = v134;
    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      *v183 = 138543618;
      *(v183 + 4) = v179;
      *(v183 + 12) = 2114;
      *(v183 + 14) = v180;
      *v184 = v179;
      v184[1] = v180;
      v185 = v179;
      v186 = v180;
      _os_log_impl(&_mh_execute_header, v181, v182, "RDHashtagLabelUpdater: No shared reminder placeholders found in change {since: %{public}@, upTo: %{public}@}", v183, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    goto LABEL_61;
  }

  if (qword_100935BF8 != -1)
  {
    swift_once();
  }

  v148 = type metadata accessor for Logger();
  sub_100006654(v148, qword_10093CC70);

  v149 = Logger.logObject.getter();
  v150 = static os_log_type_t.info.getter();
  v85, v151, v152, v153, v154, v155, v156, v157;
  if (os_log_type_enabled(v149, v150))
  {
    v158 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    p_isa = v159;
    *v158 = 136446210;
    v160 = Array.description.getter();
    v162 = v161;
    v163 = sub_10000668C(v160, v161, &p_isa);
    v164 = v90;
    v165 = v85;
    v166 = a1;
    v167 = v165;
    v168 = v163;
    v162, v169, v170, v171, v172, v173, v174, v175;
    *(v158 + 4) = v168;
    v176 = v167;
    a1 = v166;
    v85 = v176;
    v90 = v164;
    _os_log_impl(&_mh_execute_header, v149, v150, "RDHashtagLabelUpdater: inserted sharedToMeReminderPlaceHolder IDs: %{public}s", v158, 0xCu);
    sub_10000607C(v159);
  }

  v177 = objc_autoreleasePoolPush();
  sub_100203610(v238, a1, v85);
  if (v90)
  {
    objc_autoreleasePoolPop(v177);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v177);
LABEL_61:
  if ([a1 hasChanges])
  {
    if (qword_100935BF8 != -1)
    {
      swift_once();
    }

    v187 = type metadata accessor for Logger();
    sub_100006654(v187, qword_10093CC70);
    v188 = a1;
    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v189, v190))
    {
      v191 = swift_slowAlloc();
      *v191 = 134218496;
      v192 = [v188 insertedObjects];
      sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
      sub_10000CDE4(&qword_10093B350, &qword_1009388B0, NSManagedObject_ptr, &protocol conformance descriptor for NSObject);
      v193 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v193 & 0xC000000000000001) != 0)
      {
        v201 = __CocoaSet.count.getter();
      }

      else
      {
        v201 = *(v193 + 16);
      }

      v193, v194, v195, v196, v197, v198, v199, v200;
      *(v191 + 4) = v201;

      *(v191 + 12) = 2048;
      v202 = [v188 updatedObjects];
      v203 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v203 & 0xC000000000000001) != 0)
      {
        v211 = __CocoaSet.count.getter();
      }

      else
      {
        v211 = *(v203 + 16);
      }

      v203, v204, v205, v206, v207, v208, v209, v210;
      *(v191 + 14) = v211;

      *(v191 + 22) = 2048;
      v212 = [v188 deletedObjects];
      v213 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v213 & 0xC000000000000001) != 0)
      {
        v221 = __CocoaSet.count.getter();
      }

      else
      {
        v221 = *(v213 + 16);
      }

      v213, v214, v215, v216, v217, v218, v219, v220;
      *(v191 + 24) = v221;

      _os_log_impl(&_mh_execute_header, v189, v190, "RDHashtagLabelUpdater: Saving changes - insert: %ld, update: %ld, delete: %ld", v191, 0x20u);
    }

    else
    {

      v189 = v188;
    }

    p_isa = 0;
    if ([v188 save:&p_isa])
    {
      v222 = p_isa;
    }

    else
    {
      v223 = p_isa;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_1001FDFB8(void *a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v5 = objc_autoreleasePoolPush();
  sub_1001FE0F0(v2, a1, a2);

  objc_autoreleasePoolPop(v5);
}

void sub_1001FE050(void *a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_autoreleasePoolPush();
  sub_100200CF8(a2, v3, a1, v4);

  objc_autoreleasePoolPop(v7);
}

void sub_1001FE0F0(uint64_t a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v437 = &v428 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v436 = &v428 - v12;
  __chkstk_darwin(v13, v14);
  v445 = &v428 - v15;
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v428 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v467 = &v428 - v22;
  __chkstk_darwin(v23, v24);
  v466 = &v428 - v25;

  v27 = sub_1001A59A4(v26);
  a3, v28, v29, v30, v31, v32, v33, v34;
  v473 = &_swiftEmptyArrayStorage;
  v42 = *(v27 + 16);
  if (v42)
  {
    v43 = sub_100368A1C(*(v27 + 16), 0);
    sub_1002799DC(&v472, v43 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v42, v27);
    v45 = v44;
    sub_10001B860(v472);
    if (v45 == v42)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v27, v35, v36, v37, v38, v39, v40, v41;
  v43 = &_swiftEmptyArrayStorage;
LABEL_5:
  v472 = v43;
  v46 = sub_1000F5104(&qword_10093D008, qword_10079AAC0);
  v47 = sub_10000CB48(&qword_10093D010, &qword_10093D008, qword_10079AAC0, &protocol conformance descriptor for [A]);
  v439 = v46;
  v438 = v47;
  v48 = BidirectionalCollection<>.slices(by:)();

  v49 = a2;
  sub_10020BD74(v48, 0);
  v457 = v3;
  v48, v50, v51, v52, v53, v54, v55, v56;
  v440 = v49;

  v64 = v473;
  if (v473 >> 62)
  {
    goto LABEL_149;
  }

  if (!*((v473 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_150:
    v64, v57, v58, v59, v60, v61, v62, v63;
    return;
  }

LABEL_7:
  v469 = v6;
  if (qword_100935BF8 != -1)
  {
LABEL_153:
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  v66 = sub_100006654(v65, qword_10093CC70);
  v472 = v64;
  __chkstk_darwin(v66, v67);
  v461 = v68;
  *(&v428 - 2) = v68;
  sub_1000F5104(&qword_10094F560, &qword_1007AC6A0);
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  sub_10000CB48(&unk_10093D0C0, &qword_10094F560, &qword_1007AC6A0, &protocol conformance descriptor for [A]);
  v69 = v457;
  v70 = Sequence.map<A>(skippingError:_:)();
  v441 = v7;
  if (v69)
  {

    v78 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v78 = v70;
  }

  v64, v71, v72, v73, v74, v75, v76, v77;
  v79 = sub_10020D4F0(v78);
  v457 = 0;
  v78, v80, v81, v82, v83, v84, v85, v86;
  v6 = 0;
  v96 = v79 + 8;
  v95 = v79[8];
  v458 = v79;
  v97 = 1 << *(v79 + 32);
  v473 = &_swiftEmptyArrayStorage;
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  else
  {
    v98 = -1;
  }

  v99 = v98 & v95;
  v100 = (v97 + 63) >> 6;
  v463 = (v441 + 56);
  v464 = (v441 + 48);
  v444 = (v441 + 16);
  v443 = (v441 + 8);
  v433 = (v441 + 32);
  *&v94 = 136315138;
  v447 = v94;
  *&v94 = 134218240;
  v434 = v94;
  *&v94 = 136315394;
  v435 = v94;
  *&v94 = 136446210;
  v432 = v94;
  v442 = &_swiftEmptyArrayStorage;
  v446 = &_swiftEmptyArrayStorage;
  v455 = v19;
  v453 = v96;
  v456 = v100;
  if ((v98 & v95) == 0)
  {
    goto LABEL_15;
  }

  while (2)
  {
    v102 = __clz(__rbit64(v99)) | (v6 << 6);
    v103 = v458[7];
    v104 = v458[6] + 16 * v102;
    v64 = *(v104 + 8);
    v460 = *v104;
    v7 = *(v103 + 8 * v102);

    v105 = Logger.logObject.getter();
    LODWORD(v459) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v105, v459))
    {

      goto LABEL_45;
    }

    v451 = v6;
    v106 = swift_slowAlloc();
    v448 = swift_slowAlloc();
    v472 = v448;
    v449 = v106;
    *v106 = v447;
    v468 = (v7 & 0xFFFFFFFFFFFFFF8);
    if (v7 >> 62)
    {
      v107 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v107 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v450 = v105;
    v452 = v64;
    v462 = v99;
    if (!v107)
    {
      v108 = &_swiftEmptyArrayStorage;
      goto LABEL_44;
    }

    v19 = 0;
    v465 = v7 & 0xC000000000000001;
    v108 = &_swiftEmptyArrayStorage;
    do
    {
      v454 = v108;
      v109 = v19;
      while (1)
      {
        if (v465)
        {
          v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v109 >= *v468->clientIdentity)
          {
            goto LABEL_146;
          }

          v110 = *(v7 + 8 * v109 + 32);
        }

        v111 = v110;
        v19 = v109 + 1;
        if (__OFADD__(v109, 1))
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_150;
          }

          goto LABEL_7;
        }

        v64 = v7;
        v112 = [v110 identifier];
        if (v112)
        {
          v113 = v112;
          v114 = v467;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v115 = 0;
        }

        else
        {
          v115 = 1;
          v114 = v467;
        }

        v116 = v469;
        (*v463)(v114, v115, 1, v469);
        v117 = v114;
        v118 = v466;
        v6 = "8\n\r";
        sub_100031B58(v117, v466, &unk_100939D90, "8\n\r");
        if (!(*v464)(v118, 1, v116))
        {
          break;
        }

        sub_1000050A4(v118, &unk_100939D90, "8\n\r");
        ++v109;
        v7 = v64;
        if (v19 == v107)
        {
          v108 = v454;
          goto LABEL_44;
        }
      }

      v119 = v445;
      v120 = v469;
      (*v444)(v445, v118, v469);
      sub_1000050A4(v118, &unk_100939D90, "8\n\r");
      v121 = UUID.uuidString.getter();
      v6 = v122;

      (*v443)(v119, v120);
      v108 = v454;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_100365788(0, *v108->clientIdentity + 1, 1, v108, v123, v124, v125, v126);
      }

      v7 = v64;
      v128 = *v108->clientIdentity;
      v127 = *&v108->clientIdentity[8];
      if (v128 >= v127 >> 1)
      {
        v108 = sub_100365788((v127 > 1), v128 + 1, 1, v108, v123, v124, v125, v126);
      }

      *v108->clientIdentity = v128 + 1;
      v129 = v108 + 16 * v128;
      *(v129 + 4) = v121;
      *(v129 + 5) = v6;
    }

    while (v19 != v107);
LABEL_44:
    v136 = Array.description.getter();
    v137 = v108;
    v139 = v138;
    v137, v138, v140, v141, v142, v143, v144, v145;
    v146 = sub_10000668C(v136, v139, &v472);
    v139, v147, v148, v149, v150, v151, v152, v153;
    v154 = v449;
    *(v449 + 1) = v146;
    v155 = v450;
    _os_log_impl(&_mh_execute_header, v450, v459, "RDHashtagLabelUpdater processing inserted hashtags: %s", v154, 0xCu);
    sub_10000607C(v448);

    v19 = v455;
    v96 = v453;
    v6 = v451;
    v99 = v462;
    v64 = v452;
LABEL_45:
    v462 = (v99 - 1) & v99;
    v156 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v156 = v460 & 0xFFFFFFFFFFFFLL;
    }

    if (!v156)
    {
      v7, v460, v130, v131, v132, v133, v134, v135;
      v64, v157, v158, v159, v160, v161, v162, v163;
      v164 = Logger.logObject.getter();
      v64 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v164, v64))
      {
        v165 = swift_slowAlloc();
        *v165 = 0;
        _os_log_impl(&_mh_execute_header, v164, v64, "RDHashtagLabelUpdater: Impossible to get here, nil canonical name should have been filtered", v165, 2u);
      }

LABEL_51:
      v100 = v456;
      v99 = v462;
      if (!v462)
      {
        do
        {
LABEL_15:
          v101 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_147;
          }

          if (v101 >= v100)
          {
            v446, v87, v88, v89, v90, v91, v92, v93;
            v442, v421, v422, v423, v424, v425, v426, v427;

            return;
          }

          v99 = v96[v101];
          ++v6;
        }

        while (!v99);
        v6 = v101;
      }

      continue;
    }

    break;
  }

  v452 = v64;
  v166 = sub_10020E138(v440, v460, v64);
  v167 = sub_1001FFB30(v166);
  v166, v168, v169, v170, v171, v172, v173, v174;
  v471 = v167;
  v175 = v457;
  v176 = sub_10020D874(v7);
  v457 = v175;
  v7, v177, v178, v179, v180, v181, v182, v183;
  v184 = 0;
  v7 = (v176 + 8);
  v185 = 1 << *(v176 + 32);
  if (v185 < 64)
  {
    v186 = ~(-1 << v185);
  }

  else
  {
    v186 = -1;
  }

  v64 = v186 & v176[8];
  v187 = (v185 + 63) >> 6;
  v429 = v176;
  v431 = (v176 + 8);
  v449 = v187;
  v451 = v6;
  if (!v64)
  {
    while (1)
    {
LABEL_60:
      v195 = v184 + 1;
      if (__OFADD__(v184, 1))
      {
        goto LABEL_148;
      }

      if (v195 >= v187)
      {
        break;
      }

      v64 = *(v7 + 8 * v195);
      ++v184;
      if (v64)
      {
        v184 = v195;
        goto LABEL_64;
      }
    }

    v452, v333, v334, v335, v336, v337, v338, v339;
    if (*v442->clientIdentity)
    {
      v472 = &_swiftEmptyArrayStorage;
      v470 = v442;
      v347 = BidirectionalCollection<>.slices(by:)();
      v348 = v440;
      v349 = v457;
      sub_10020BE20(v347, v348, &v472, sub_1001FADDC);
      v457 = v349;
      v347, v350, v351, v352, v353, v354, v355, v356;

      v357 = v472;
      v358 = sub_100200890(v472);
      v357, v359, v360, v361, v362, v363, v364, v365;
      v366 = v446;
      v459 = (v446 >> 62);
      if (v446 >> 62)
      {
        v367 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v367 = *((v446 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v367)
      {
        v375 = 0;
        v468 = (v366 & 0xC000000000000001);
        v465 = v366 & 0xFFFFFFFFFFFFFF8;
        v460 = v367;
        while (1)
        {
          if (v468)
          {
            v378 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v375 >= *(v465 + 16))
            {
              goto LABEL_152;
            }

            v378 = *(v366 + 8 * v375 + 32);
          }

          v379 = v378;
          v19 = (v375 + 1);
          if (__OFADD__(v375, 1))
          {
            break;
          }

          v64 = v366;
          v380 = v358;
          v7 = v6;
          v381 = [v378 sharedToMeReminderCKIdentifier];
          if (v381)
          {
            v389 = v381;
            v390 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v392 = v391;
          }

          else
          {
            v392 = 0xE300000000000000;
            v390 = 7104878;
          }

          v358 = v380;
          if (v380[2])
          {
            v393 = sub_100005F4C(v390, v392);
            v395 = v394;
            v392, v394, v396, v397, v398, v399, v400, v401;
            if (v395)
            {
              v376 = *(v358[7] + 8 * v393);
            }

            else
            {
              v376 = 0;
            }

            v6 = v7;
            v366 = v446;
          }

          else
          {
            v392, v382, v383, v384, v385, v386, v387, v388;
            v376 = 0;
            v6 = v7;
            v366 = v64;
          }

          [v379 setReminder:v376];

          ++v375;
          v377 = v19 == v460;
          v19 = v455;
          v96 = v453;
          if (v377)
          {
            goto LABEL_135;
          }
        }

        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

LABEL_135:
      v366, v368, v369, v370, v371, v372, v373, v374;

      v402 = Logger.logObject.getter();
      v64 = v358;
      v403 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v402, v403))
      {
        v411 = swift_slowAlloc();
        *v411 = v434;
        if (v459)
        {
          v412 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v412 = *((v366 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v411 + 4) = v412;
        *(v411 + 12) = 2048;
        v413 = *(v64 + 16);
        v64, v404, v405, v406, v407, v408, v409, v410;
        *(v411 + 14) = v413;
        v64, v414, v415, v416, v417, v418, v419, v420;
        _os_log_impl(&_mh_execute_header, v402, v403, "RDHashtagLabelUpdater updated hashtags that need to be associated to shared-to-me-reminders {hashtagsNeedAssociatingToReminder.count: %ld, shared-to-me-reminders.count: %ld}", v411, 0x16u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }

    v471, v340, v341, v342, v343, v344, v345, v346;
    goto LABEL_51;
  }

  while (1)
  {
LABEL_64:
    while (1)
    {
      v196 = __clz(__rbit64(v64));
      v64 &= v64 - 1;
      v197 = v196 | (v184 << 6);
      v198 = v176[7];
      v199 = v176[6] + 16 * v197;
      v200 = *(v199 + 8);
      v454 = *v199;
      v201 = *(v198 + 8 * v197);

      sub_1001FFEF8(v202);
      if (v203)
      {
        break;
      }

      v200, v204, v205, v206, v207, v208, v209, v210;
      v201, v188, v189, v190, v191, v192, v193, v194;
LABEL_59:
      v187 = v449;
      if (!v64)
      {
        goto LABEL_60;
      }
    }

    v211 = v203;
    v459 = v200;
    v212 = v471;
    v213 = *v471->clientIdentity;
    v465 = v201;
    if (v213)
    {
      v214 = sub_100005F4C(v454, v459);
      if (v215)
      {
        v468 = *(*&v212->clientIdentity[40] + 8 * v214);
        v216 = v468;
      }

      else
      {
        v468 = 0;
      }
    }

    else
    {
      v468 = 0;
    }

    v217 = v452;

    v448 = v211;
    v218 = v211;
    v219 = Logger.logObject.getter();
    v220 = static os_log_type_t.info.getter();

    v217, v221, v222, v223, v224, v225, v226, v227;
    v430 = v220;
    v228 = os_log_type_enabled(v219, v220);
    v450 = v218;
    if (v228)
    {
      v229 = swift_slowAlloc();
      v428 = swift_slowAlloc();
      v472 = v428;
      *v229 = v435;
      *(v229 + 4) = sub_10000668C(v460, v217, &v472);
      *(v229 + 12) = 2082;
      v230 = [v218 remObjectID];
      if (v230)
      {
        v231 = v230;
        v232 = v6;
        v233 = [v230 description];

        v234 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v236 = v235;

        v6 = v232;
        v7 = v431;
      }

      else
      {
        v236 = 0xE300000000000000;
        v234 = 7104878;
      }

      v19 = v455;
      v245 = sub_10000668C(v234, v236, &v472);
      v236, v246, v247, v248, v249, v250, v251, v252;
      *(v229 + 14) = v245;
      _os_log_impl(&_mh_execute_header, v219, v430, "RDHashtagLabelUpdater created new hashtag label {canonicalName: %s, firstHashtag.objectID: %{public}s}", v229, 0x16u);
      swift_arrayDestroy();

      v96 = v453;
      v176 = v429;
      v244 = v465;
    }

    else
    {

      v244 = v465;
      v19 = v455;
      v176 = v429;
    }

    v253 = v459;
    if (v468)
    {
      v459, v237, v238, v239, v240, v241, v242, v243;
      goto LABEL_80;
    }

    v254 = v450;
    v255 = sub_10020E700(v440, v450);
    if (v255)
    {
      break;
    }

    v253, v256, v257, v258, v259, v260, v261, v262;
    v244, v274, v275, v276, v277, v278, v279, v280;
    v281 = v254;
    v282 = Logger.logObject.getter();
    v283 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v282, v283))
    {
      LODWORD(v465) = v283;
      v284 = swift_slowAlloc();
      v459 = swift_slowAlloc();
      v472 = v459;
      v285 = v284;
      *v284 = v432;
      v468 = v281;
      v286 = [(RDXPCStorePerformer *)v281 remObjectID];
      v19 = v455;
      if (v286)
      {
        v287 = v286;
        v288 = [v286 description];

        v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v291 = v290;

        v176 = v429;
      }

      else
      {
        v291 = 0xE300000000000000;
        v289 = 7104878;
      }

      v292 = sub_10000668C(v289, v291, &v472);
      v291, v293, v294, v295, v296, v297, v298, v299;
      *(v285 + 1) = v292;
      _os_log_impl(&_mh_execute_header, v282, v465, "RDHashtagLabelUpdater: Cannot create hashtag label for hashtag: %{public}s", v285, 0xCu);
      sub_10000607C(v459);

      v96 = v453;
LABEL_83:
      v6 = v451;
LABEL_84:
      v7 = v431;
      goto LABEL_59;
    }

    v187 = v449;
    v19 = v455;
    if (!v64)
    {
      goto LABEL_60;
    }
  }

  v263 = v255;
  v468 = v255;
  v264 = v263;
  v244 = v465;
  sub_10031D998(v264, v454, v253);
  v19 = v455;
LABEL_80:
  v265 = v450;
  sub_10020C4A4(v468, v244, v448);

  if (v244 >> 62)
  {
    v266 = _CocoaArrayWrapper.endIndex.getter();
    if (!v266)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v266 = *((v244 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v266)
    {
LABEL_82:

      v244, v267, v268, v269, v270, v271, v272, v273;
      goto LABEL_83;
    }
  }

  if (v266 >= 1)
  {
    v300 = 0;
    v459 = (v244 & 0xC000000000000001);
    do
    {
      if (v459)
      {
        v302 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v302 = *(v244 + 8 * v300 + 32);
      }

      v303 = v302;
      v304 = [v302 reminder];
      if (v304)
      {
        v301 = v304;
      }

      else if ([v303 isConcealed] || (v305 = objc_msgSend(v303, "sharedToMeReminderCKIdentifier")) == 0)
      {
      }

      else
      {
        v306 = v305;
        v454 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v308 = v307;

        UUID.init(uuidString:)();
        v308, v309, v310, v311, v312, v313, v314, v315;
        v316 = v19;
        v317 = v19;
        v318 = v469;
        if ((*v464)(v316, 1, v469) == 1)
        {

          sub_1000050A4(v317, &unk_100939D90, "8\n\r");
          v19 = v317;
        }

        else
        {
          v319 = v436;
          v454 = *v433;
          (v454)(v436, v317, v318);
          swift_beginAccess();
          v320 = v303;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v473 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v473 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v450 = *((v473 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v446 = v473;
          swift_endAccess();
          (*v444)(v437, v319, v318);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v442 = sub_100366328(0, *v442->clientIdentity + 1, 1, v442);
          }

          v322 = *v442->clientIdentity;
          v321 = *&v442->clientIdentity[8];
          if (v322 >= v321 >> 1)
          {
            v442 = sub_100366328((v321 > 1), v322 + 1, 1, v442);
          }

          v323 = v441;
          v324 = v469;
          (*(v441 + 8))(v436, v469);
          v325 = v442;
          *v442->clientIdentity = v322 + 1;
          (v454)(v325 + ((*(v323 + 80) + 32) & ~*(v323 + 80)) + *(v323 + 72) * v322, v437, v324);
          v19 = v455;
        }

        v96 = v453;
      }

      ++v300;
      v244 = v465;
    }

    while (v266 != v300);

    v244, v326, v327, v328, v329, v330, v331, v332;
    v6 = v451;
    v176 = v429;
    goto LABEL_84;
  }

  __break(1u);
}