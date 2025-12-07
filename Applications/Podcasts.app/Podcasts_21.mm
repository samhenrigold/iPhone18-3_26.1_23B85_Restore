void PodcastsStateCoordinator.disableSubscription(onPodcastUUID:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [*&v3[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_contextProvider] mainOrPrivateContext];
  [v3 disableSubscriptionOnPodcastUUID:v5 from:a3 context:v6];
}

void PodcastsStateCoordinator.disableSubscription(onPodcastUUID:from:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = v4;
  v9[6] = a3;
  v13[4] = sub_1002F90A0;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10000F038;
  v13[3] = &unk_1004EC4D8;
  v10 = _Block_copy(v13);
  v11 = a4;

  v12 = v4;

  [v11 performBlockAndWaitWithSave:v10];
  _Block_release(v10);
}

void sub_1002F33D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 podcastForUuid:v7];

  if (v8)
  {
    sub_1002F3480(v8, a5, a1);
  }
}

void sub_1002F3480(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = Logger.logObject.getter();
  v60 = v13;
  if (os_log_type_enabled(v14, v13))
  {
    v54 = v14;
    v55 = v9;
    v57 = v7;
    v58 = v6;
    v59 = a3;
    v15 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v15 = 136315907;
    v16 = PodcastsStateChangeOrigin.description.getter();
    v18 = sub_1000153E0(v16, v17, &v64);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2081;
    v19 = [a1 title];
    v56 = a2;
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v62 = v21;
    v63 = v23;
    sub_100168088(&qword_100574230, &qword_100401FE0);
    v25 = String.init<A>(describing:)();
    v27 = sub_1000153E0(v25, v26, &v64);

    *(v15 + 14) = v27;
    *(v15 + 22) = 2080;
    v28 = [a1 uuid];
    if (v28)
    {
      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v62 = v30;
    v63 = v32;
    v33 = String.init<A>(describing:)();
    v35 = sub_1000153E0(v33, v34, &v64);

    *(v15 + 24) = v35;
    *(v15 + 32) = 2081;
    v36 = MTPodcast.adamId.getter();
    a2 = v56;
    if (v37)
    {
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v62 = v36;
      sub_1000366D8();
      v38 = BinaryInteger.description.getter();
    }

    v24 = v59;
    v62 = v38;
    v63 = v39;
    v40 = String.init<A>(describing:)();
    v42 = sub_1000153E0(v40, v41, &v64);

    *(v15 + 34) = v42;
    v43 = v54;
    _os_log_impl(&_mh_execute_header, v54, v60, "Unfollowing podcast (origin: %s): %{private}s, uuid: %s, adamID: %{private}s.", v15, 0x2Au);
    swift_arrayDestroy();

    (*(v10 + 8))(v12, v55);
    v7 = v57;
    v6 = v58;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v24 = a3;
  }

  sub_1002C76C4(a1, [a1 syncType], 1u, a2);
  [a1 applyDefaultUnfollowedShowSettings];
  v44 = v61;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v46 = v45;
  (*(v7 + 8))(v44, v6);
  [a1 setLastRemovedFromUpNextDate:v46];
  v47 = [a1 nextEpisodeUuid];
  if (v47)
  {
    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      [a1 setNextEpisodeUuid:0];
      v53 = [v24 episodeForUuid:v48];

      if (!v53)
      {
        return;
      }

      [v53 setListenNowEpisode:0];
      v48 = v53;
    }
  }
}

void PodcastsStateCoordinator.disableSubscriptions(onPodcastUUIDs:from:context:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = v3;
  v7[5] = a2;
  v11[4] = sub_1002F90B8;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = &unk_1004EC528;
  v8 = _Block_copy(v11);
  v9 = a3;

  v10 = v3;

  [v9 performBlockAndWaitWithSave:v8];
  _Block_release(v8);
}

void sub_1002F3BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = kMTPodcastEntityName;
  v7 = objc_opt_self();
  v8 = v6;

  sub_10039B51C(v9);

  isa = Set._bridgeToObjectiveC()().super.isa;

  v11 = [v7 predicateForPodcastUuids:isa];

  v12 = [a1 objectsInEntity:v8 predicate:v11 sortDescriptors:0];
  if (!v12)
  {
    return;
  }

  sub_100009F1C(0, &qword_1005739D0, NSManagedObject_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_10037F7EC(v13);

  if (!v14)
  {
    return;
  }

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_5:
      if (v15 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v15; ++i)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v17 = *(v14 + 8 * i + 32);
        }

        v18 = v17;
        sub_1002F3480(v17, a4, a1);
      }
    }
  }
}

void sub_1002F3EC0(void *a1, void *a2, char a3, int a4, uint64_t a5)
{
  v6 = v5;
  LODWORD(v91) = a4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v92 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v82 - v14;
  static Logger.podcastsStatesCoordination.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  LODWORD(v89) = v16;
  v18 = os_log_type_enabled(v17, v16);
  v90 = *&a2;
  if (v18)
  {
    v83 = v17;
    v85 = v12;
    v86 = v11;
    v87 = v6;
    v19 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v95 = v84;
    *v19 = 136316163;
    v93 = a2;
    LOBYTE(v94) = a3 & 1;
    sub_100168088(&unk_10057E2F0, &qword_1004059D0);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000153E0(v20, v21, &v95);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v88 = a5;
    v23 = PodcastsStateChangeOrigin.description.getter();
    v25 = sub_1000153E0(v23, v24, &v95);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2081;
    v26 = [a1 title];
    v27 = a1;
    if (v26)
    {
      v28 = v26;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v93 = v29;
    v94 = v31;
    sub_100168088(&qword_100574230, &qword_100401FE0);
    v33 = String.init<A>(describing:)();
    v35 = sub_1000153E0(v33, v34, &v95);

    *(v19 + 24) = v35;
    *(v19 + 32) = 2080;
    v36 = [a1 uuid];
    if (v36)
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v93 = v38;
    v94 = v40;
    v41 = String.init<A>(describing:)();
    v43 = sub_1000153E0(v41, v42, &v95);

    *(v19 + 34) = v43;
    *(v19 + 42) = 2081;
    v93 = [a1 storeTrackId];
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = sub_1000153E0(v44, v45, &v95);

    *(v19 + 44) = v46;
    v47 = v83;
    _os_log_impl(&_mh_execute_header, v83, v89, "Bookmarking episode on timestamp %s (origin: %s): %{private}s, uuid: %s, adamID: %{private}s.", v19, 0x34u);
    swift_arrayDestroy();

    v11 = v86;
    v89 = *(v85 + 8);
    v89(v15, v86);
    v32 = v87;
    a5 = v88;
  }

  else
  {

    v89 = *(v12 + 8);
    v89(v15, v11);
    v27 = a1;
    v32 = v6;
  }

  v48 = v92;
  if (a3)
  {
    [v27 markAsBookmarked];
  }

  else
  {
    [v27 markAsBookmarkedOnTimestamp:v90];
  }

  v49 = [v27 podcast];
  if (v49)
  {
    v50 = v49;
    sub_1002C76C4(v49, [v27 bookmarksSyncType], 2u, a5);
  }

  if (v91)
  {
    v51 = [v27 uuid];
    if (v51)
    {
      v88 = a5;
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = [v27 managedObjectContext];
      if (v56)
      {
        v57 = v56;
        if (([v27 isDownloaded] & 1) == 0 && objc_msgSend(v27, "isEntitled"))
        {
          static Logger.podcastsStatesCoordination.getter();
          v58 = static os_log_type_t.default.getter();
          v59 = Logger.logObject.getter();
          if (os_log_type_enabled(v59, v58))
          {
            LODWORD(v90) = v58;
            v91 = v59;
            v86 = v11;
            v87 = v32;
            v60 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v95 = v85;
            *v60 = 136381187;
            v61 = [v27 title];
            v62 = v27;
            if (v61)
            {
              v63 = v61;
              v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v66 = v65;
            }

            else
            {
              v64 = 0;
              v66 = 0;
            }

            v93 = v64;
            v94 = v66;
            sub_100168088(&qword_100574230, &qword_100401FE0);
            v67 = String.init<A>(describing:)();
            v69 = sub_1000153E0(v67, v68, &v95);

            *(v60 + 4) = v69;
            *(v60 + 12) = 2080;
            v70 = [v62 uuid];
            if (v70)
            {
              v71 = v70;
              v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v74 = v73;
            }

            else
            {
              v72 = 0;
              v74 = 0;
            }

            v93 = v72;
            v94 = v74;
            v75 = String.init<A>(describing:)();
            v77 = sub_1000153E0(v75, v76, &v95);

            *(v60 + 14) = v77;
            *(v60 + 22) = 2081;
            v93 = [v62 storeTrackId];
            v78 = dispatch thunk of CustomStringConvertible.description.getter();
            v80 = sub_1000153E0(v78, v79, &v95);

            *(v60 + 24) = v80;
            v81 = v91;
            _os_log_impl(&_mh_execute_header, v91, LOBYTE(v90), "Automatically downloading recently saved episode %{private}s uuid: %s, adamID: %{private}s.", v60, 0x20u);
            swift_arrayDestroy();

            v89(v92, v86);
          }

          else
          {

            v89(v48, v11);
          }

          PodcastsStateCoordinator.downloadEpisode(withUUID:isFromSaving:from:in:)(v53, v55, 1, v88, v57);
        }
      }

      else
      {
      }
    }
  }
}

void PodcastsStateCoordinator.unsafeRemoveEpisodeFromBookmarks(episode:from:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = Logger.logObject.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v38 = v5;
    v39 = v2;
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v11 = 136315907;
    v40 = a2;
    v12 = PodcastsStateChangeOrigin.description.getter();
    v14 = sub_1000153E0(v12, v13, &v43);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2081;
    v15 = [a1 title];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v41 = v17;
    v42 = v19;
    sub_100168088(&qword_100574230, &qword_100401FE0);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000153E0(v20, v21, &v43);

    *(v11 + 14) = v22;
    *(v11 + 22) = 2080;
    v23 = [a1 uuid];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v41 = v25;
    v42 = v27;
    v28 = String.init<A>(describing:)();
    v30 = sub_1000153E0(v28, v29, &v43);

    *(v11 + 24) = v30;
    *(v11 + 32) = 2081;
    v41 = [a1 storeTrackId];
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = sub_1000153E0(v31, v32, &v43);

    *(v11 + 34) = v33;
    _os_log_impl(&_mh_execute_header, v10, v9, "Removing Bookmark for episode (origin: %s): %{private}s, uuid: %s, adamID: %{private}s.", v11, 0x2Au);
    swift_arrayDestroy();

    (*(v6 + 8))(v8, v38);
    a2 = v40;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  [a1 markAsUnbookmarked];
  v34 = [a1 podcast];
  if (v34)
  {
    v35 = v34;
    sub_1002C76C4(v34, [a1 bookmarksSyncType], 3u, a2);
  }
}

BOOL sub_1002F4AEC()
{
  v0 = *(EpisodeStateChanges.updated.getter() + 16);

  return v0 != 0;
}

uint64_t sub_1002F4B20@<X0>(uint64_t *a1@<X8>)
{
  result = EpisodeStateChanges.updated.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002F4B4C()
{
  sub_100168088(&qword_10057E220, &qword_10040BB10);
  sub_100009FAC(&qword_10057E308, &qword_10057E220, &qword_10040BB10, &protocol conformance descriptor for [A : B].Keys);
  return Sequence.publisher.getter();
}

void sub_1002F4BE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1002F4C44(a1);
  }
}

uint64_t sub_1002F4C44(uint64_t a1)
{
  sub_100168088(&unk_100575CE0, &unk_100402E80);
  __chkstk_darwin();
  v75 = &v64 - v2;
  v3 = type metadata accessor for PodcastStateModel();
  v81 = *(v3 - 8);
  v82 = v3;
  __chkstk_darwin();
  v73 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v4;
  __chkstk_darwin();
  v78 = &v64 - v5;
  v6 = type metadata accessor for EpisodeStateModel();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v77 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v64 - v9;
  __chkstk_darwin();
  v12 = &v64 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v79 = v13;
  v80 = v14;
  __chkstk_darwin();
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v64 - v17;
  static Logger.podcastsStatesCoordination.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = *(v7 + 16);
  v20(v12, a1, v6);
  v76 = a1;
  v68 = v20;
  v69 = v7 + 16;
  v20(v10, a1, v6);
  v21 = Logger.logObject.getter();
  v67 = v19;
  v22 = os_log_type_enabled(v21, v19);
  v74 = v7;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock[0] = v65;
    *v23 = 136380931;
    EpisodeStateModel.ids.getter();
    sub_1002FA480();
    v24 = Set.description.getter();
    v66 = v16;
    v25 = v24;
    v64 = v21;
    v27 = v26;

    v28 = *(v7 + 8);
    v28(v12, v6);
    v29 = v25;
    v30 = v79;
    v16 = v66;
    v31 = sub_1000153E0(v29, v27, aBlock);

    *(v23 + 4) = v31;
    *(v23 + 12) = 1024;
    LODWORD(v31) = EpisodeStateModel.isDownloaded.getter() & 1;
    v70 = v28;
    v28(v10, v6);
    *(v23 + 14) = v31;
    v32 = v64;
    _os_log_impl(&_mh_execute_header, v64, v67, "Update on download state of episode with IDs: %{private}s; isDownloaded: %{BOOL}d.", v23, 0x12u);
    sub_100004590(v65);

    v33 = *(v80 + 8);
    v33(v18, v30);
  }

  else
  {
    v34 = *(v7 + 8);
    v34(v10, v6);

    v70 = v34;
    v34(v12, v6);
    v33 = *(v80 + 8);
    v33(v18, v79);
  }

  v35 = v76;
  v36 = (EpisodeStateModel.isDownloaded.getter() & 1) == 0;
  v37 = v75;
  EpisodeStateModel.podcastStateModel.getter();
  v38 = (*(v81 + 48))(v37, 1, v82);
  v39 = v77;
  if (v38 == 1)
  {
    sub_1002FA418(v37);
    static Logger.podcastsStatesCoordination.getter();
    v68(v39, v35, v6);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v82 = v6;
      aBlock[0] = v43;
      *v42 = 136315395;
      v44 = sub_1002C99B4(v36, 4u);
      v46 = sub_1000153E0(v44, v45, aBlock);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2081;
      EpisodeStateModel.ids.getter();
      sub_1002FA480();
      v47 = Set.description.getter();
      v49 = v48;

      v70(v39, v82);
      v50 = sub_1000153E0(v47, v49, aBlock);

      *(v42 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "We can't process event %s because episode has no Podcast associated to it. Episode IDs: %{private}s.", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v70(v39, v6);
    }

    return (v33)(v16, v79);
  }

  else
  {
    v51 = v81;
    v79 = *(v81 + 32);
    v80 = v36;
    v52 = v78;
    v53 = v82;
    v79(v78, v37, v82);
    v77 = [*(v72 + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_contextProvider) mainOrPrivateContext];
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = v73;
    (*(v51 + 16))(v73, v52, v53);
    v56 = (*(v51 + 80) + 24) & ~*(v51 + 80);
    v57 = (v71 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *(v58 + 16) = v54;
    v79(v58 + v56, v55, v53);
    v59 = v77;
    *(v58 + v57) = v77;
    v60 = v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v60 = v80;
    *(v60 + 8) = 4;
    *(v58 + ((v57 + 31) & 0xFFFFFFFFFFFFFFF8)) = 3;
    aBlock[4] = sub_1002FA4D4;
    aBlock[5] = v58;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004EC708;
    v61 = _Block_copy(aBlock);
    v62 = v59;

    [v62 performBlockAndWaitWithSave:v61];
    _Block_release(v61);

    return (*(v51 + 8))(v78, v53);
  }
}

void sub_1002F54E8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = String._bridgeToObjectiveC()();
  v14 = [a1 episodeForUuid:v13];

  if (v14)
  {
    v15 = [v14 podcast];
    if (v15)
    {
      v21 = v15;
      sub_1002C76C4(v15, 0, 4u, a5);

      v16 = v21;

      return;
    }
  }

  static Logger.podcastsStatesCoordination.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000153E0(a2, a3, &v22);
    _os_log_impl(&_mh_execute_header, v17, v18, "Can't transition podcast to correct state because either the episode for %s was not found, or it has no associated podcast.", v19, 0xCu);
    sub_100004590(v20);
  }

  (*(v10 + 8))(v12, v9);
}

unint64_t sub_1002F574C@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v76 = a3;
  v77 = a4;
  v78 = a1;
  v74 = a5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Transitioning podcasts to download state", v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  result = NSManagedObjectContext.episodes(for:sortDescriptors:limit:)();
  if (v5)
  {
    return result;
  }

  isUniquelyReferenced_nonNull_native = result;
  v73 = 0;
  if (result >> 62)
  {
    goto LABEL_79;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v79 = isUniquelyReferenced_nonNull_native;
    v81 = i;
    if (i)
    {
      v16 = 0;
      v80 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v75 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v17 = &_swiftEmptyDictionarySingleton;
      while (1)
      {
        if (v80)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(v75 + 16))
          {
            goto LABEL_77;
          }

          v18 = *(isUniquelyReferenced_nonNull_native + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_72;
        }

        v21 = [v18 podcast];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 objectID];
          if ((v17 & 0xC000000000000001) != 0)
          {
            if (v17 >= 0)
            {
              v17 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v24 = v22;
            v25 = __CocoaDictionary.count.getter();
            if (__OFADD__(v25, 1))
            {
              goto LABEL_76;
            }

            v17 = sub_10025E6AC(v17, v25 + 1);
          }

          else
          {
            v26 = v22;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = v17;
          v28 = sub_100202334(v23);
          v29 = *(v17 + 16);
          v30 = (v27 & 1) == 0;
          v31 = v29 + v30;
          if (__OFADD__(v29, v30))
          {
            goto LABEL_75;
          }

          v32 = v27;
          if (*(v17 + 24) >= v31)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100260990();
            }
          }

          else
          {
            sub_10025D5B4(v31, isUniquelyReferenced_nonNull_native);
            v33 = sub_100202334(v23);
            if ((v32 & 1) != (v34 & 1))
            {
              sub_100009F1C(0, &unk_100573F30, NSManagedObjectID_ptr);
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v28 = v33;
          }

          isUniquelyReferenced_nonNull_native = v79;
          v17 = v83;
          if (v32)
          {
            v35 = v83[7];
            v36 = v83;
            v37 = *(v35 + 8 * v28);
            *(v35 + 8 * v28) = v22;

            v17 = v36;
          }

          else
          {
            v83[(v28 >> 6) + 8] |= 1 << v28;
            *(*(v17 + 48) + 8 * v28) = v23;
            *(*(v17 + 56) + 8 * v28) = v22;

            v38 = *(v17 + 16);
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_78;
            }

            *(v17 + 16) = v40;
          }
        }

        else
        {
        }

        ++v16;
        if (v20 == v81)
        {
          goto LABEL_33;
        }
      }
    }

    v17 = &_swiftEmptyDictionarySingleton;
LABEL_33:
    if ((v17 & 0xC000000000000001) != 0)
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v45 = -1 << *(v17 + 32);
      v42 = ~v45;
      v41 = v17 + 64;
      v46 = -v45;
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      else
      {
        v47 = -1;
      }

      v43 = v47 & *(v17 + 64);
      v44 = v17;
    }

    v75 = v17;

    v48 = 0;
    v80 = v42;
    isUniquelyReferenced_nonNull_native = (v42 + 64) >> 6;
    if ((v44 & 0x8000000000000000) != 0)
    {
LABEL_46:
      if (!__CocoaDictionary.Iterator.next()())
      {
        v52 = v78;
        goto LABEL_50;
      }

      v56 = v55;
      swift_unknownObjectRelease();
      v82 = v56;
      sub_100009F1C(0, &qword_100573AC0, MTPodcast_ptr);
      swift_dynamicCast();
      v54 = v83;
      v51 = v48;
      v53 = v43;
      v52 = v78;
      if (!v83)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    while (1)
    {
      v49 = v48;
      v50 = v43;
      v51 = v48;
      v52 = v78;
      if (!v43)
      {
        while (1)
        {
          v51 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (v51 >= isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_50;
          }

          v50 = *(v41 + 8 * v51);
          ++v49;
          if (v50)
          {
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

LABEL_44:
      v53 = (v50 - 1) & v50;
      v54 = *(*(v44 + 56) + ((v51 << 9) | (8 * __clz(__rbit64(v50)))));
      if (!v54)
      {
        break;
      }

LABEL_48:
      sub_1002C76C4(v54, 0, 4u, v77);

      v48 = v51;
      v43 = v53;
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    sub_1000319D8(v44);
    [v52 saveInCurrentBlock];
    isUniquelyReferenced_nonNull_native = v81;
    if (!v81)
    {
      break;
    }

    v57 = 0;
    v58 = v79;
    v59 = v79 & 0xC000000000000001;
    v60 = v79 & 0xFFFFFFFFFFFFFF8;
    v61 = _swiftEmptyArrayStorage;
LABEL_52:
    v62 = v57;
    while (1)
    {
      if (v59)
      {
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v62 >= *(v60 + 16))
        {
          goto LABEL_74;
        }

        v63 = *(v58 + 8 * v62 + 32);
      }

      v64 = v63;
      v57 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      v65 = [v63 uuid];
      if (v65)
      {
        v66 = v65;
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_100243134(0, *(v61 + 2) + 1, 1, v61);
        }

        v71 = *(v61 + 2);
        v70 = *(v61 + 3);
        if (v71 >= v70 >> 1)
        {
          v61 = sub_100243134((v70 > 1), v71 + 1, 1, v61);
        }

        *(v61 + 2) = v71 + 1;
        v72 = &v61[16 * v71];
        *(v72 + 4) = v67;
        *(v72 + 5) = v69;
        isUniquelyReferenced_nonNull_native = v81;
        v58 = v79;
        if (v57 != v81)
        {
          goto LABEL_52;
        }

        goto LABEL_68;
      }

      ++v62;
      if (v57 == isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_68;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  v61 = _swiftEmptyArrayStorage;
LABEL_68:

  *v74 = v61;
  return result;
}

void sub_1002F5E1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();
  v11 = [a1 episodeForUuid:v7];

  if (v11)
  {
    v8 = [v11 podcast];
    if (v8)
    {
      v9 = v8;
      sub_1002C76C4(v8, 1, 4u, a5);

      v10 = v9;
    }

    else
    {
      v10 = v11;
    }
  }
}

uint64_t sub_1002F5F00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10016AAC8(_swiftEmptyArrayStorage);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_9:
    v9 &= v9 - 1;

    v13 = String._bridgeToObjectiveC()();

    v14 = [a2 episodeForUuid:v13];

    if (v14)
    {
      v15 = [v14 podcast];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 uuid];
        if (v17)
        {
          v45 = v17;
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v18;

          v46 = v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v6;
          v20 = sub_10000F9A8(v47, v48);
          v21 = *(v6 + 16);
          v22 = (v19 & 1) == 0;
          v23 = v21 + v22;
          if (__OFADD__(v21, v22))
          {
            goto LABEL_40;
          }

          if (*(v6 + 24) >= v23)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v19 & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v30 = v19;
              sub_100260AF4();
              if ((v30 & 1) == 0)
              {
                goto LABEL_23;
              }
            }

LABEL_21:

            v6 = v50;
            v27 = v50[7];
            v28 = v20;
            v29 = *(v27 + 8 * v20);
            *(v27 + 8 * v28) = v46;
          }

          else
          {
            v24 = v19;
            sub_10025D828(v23, isUniquelyReferenced_nonNull_native);
            v25 = sub_10000F9A8(v47, v48);
            if ((v24 & 1) != (v26 & 1))
            {
              goto LABEL_42;
            }

            v20 = v25;
            if (v24)
            {
              goto LABEL_21;
            }

LABEL_23:
            v6 = v50;
            v50[(v20 >> 6) + 8] |= 1 << v20;
            v31 = (v50[6] + 16 * v20);
            *v31 = v47;
            v31[1] = v48;
            *(v50[7] + 8 * v20) = v46;

            v32 = v50[2];
            v33 = __OFADD__(v32, 1);
            v34 = v32 + 1;
            if (v33)
            {
              goto LABEL_41;
            }

            v50[2] = v34;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(a1 + 56 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v35 = 1 << *(v6 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v6 + 64);
  v38 = (v35 + 63) >> 6;

  v39 = 0;
  while (v37)
  {
    v40 = v39;
LABEL_33:
    v41 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v42 = *(*(v6 + 56) + ((v40 << 9) | (8 * v41)));
    sub_1002C76C4(v42, 1, 4u, a4);
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v40 >= v38)
    {
    }

    v37 = *(v6 + 64 + 8 * v40);
    ++v39;
    if (v37)
    {
      v39 = v40;
      goto LABEL_33;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void PodcastsStateCoordinator.removeDownload(forEpisodeWithUUID:from:shouldAllowAutomaticRedownloads:completionHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a5;
  v36 = a6;
  LODWORD(v8) = a4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = Logger.logObject.getter();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v34 = v8;
    v8 = v17;
    v18 = swift_slowAlloc();
    v33 = v7;
    aBlock[0] = v18;
    *v8 = 136315394;
    v19 = PodcastsStateChangeOrigin.description.getter();
    v21 = sub_1000153E0(v19, v20, aBlock);
    v32 = v11;
    v22 = a1;
    v23 = a2;
    v24 = v21;

    *(v8 + 4) = v24;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1000153E0(v22, v23, aBlock);
    _os_log_impl(&_mh_execute_header, v16, v15, "Removing download (origin: %s) for episode with UUID: %s.", v8, 0x16u);
    swift_arrayDestroy();
    v7 = v33;

    LOBYTE(v8) = v34;

    (*(v12 + 8))(v14, v32);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v25 = *(v7 + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_downloadsGateway);
  v26 = String._bridgeToObjectiveC()();
  v27 = swift_allocObject();
  v29 = v35;
  v28 = v36;
  *(v27 + 16) = v35;
  *(v27 + 24) = v28;
  aBlock[4] = sub_1002FA5A4;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002F6638;
  aBlock[3] = &unk_1004EC578;
  v30 = _Block_copy(aBlock);
  sub_100013CB4(v29, v28);

  [v25 removeDownload:v26 shouldAllowAutomaticRedownloads:v8 & 1 completion:v30];
  _Block_release(v30);
}

void sub_1002F65BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = [objc_opt_self() defaultCenter];
  [v6 postNotificationName:PFMediaDownloadWasDeletedNotification object:0];

  if (a5)
  {
    a5();
  }
}

uint64_t sub_1002F6638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v9;
  }

  else
  {
    v8 = 0;
  }

  v4(v5, v7, v8, a3);
}

uint64_t PodcastsStateCoordinator.insertNewImplicitFollowIfNeeded(for:from:completion:)(void *a1, uint64_t a2, void (*a3)(uint64_t, void, void, void, void), uint64_t a4)
{
  type metadata accessor for EpisodePlayerItem();
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastPlayerItem();
  __chkstk_darwin();
  v10 = type metadata accessor for PlayerItem();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  sub_10021C6D8(v14);
  sub_10021C844(v14, v9);
  PlayerItem.init(podcast:episode:)();
  PodcastsStateCoordinator.insertNewImplicitFollowIfNeeded(for:from:completion:)(v13, a2, a3, a4);
  return (*(v11 + 8))(v13, v10);
}

void sub_1002F6A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();
    if (a5)
    {
LABEL_3:
      v10 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v10;
  (*(a6 + 16))(a6, a1, v9);
}

void sub_1002F6B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a2;
  v78 = a3;
  v79 = a4;
  v70 = type metadata accessor for EpisodePlayerItem();
  v68 = *(v70 - 8);
  __chkstk_darwin();
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayerItem();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v75 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v59 - v10;
  __chkstk_darwin();
  v13 = &v59 - v12;
  v74 = v14;
  __chkstk_darwin();
  v16 = &v59 - v15;
  v69 = type metadata accessor for Logger();
  v72 = *(v69 - 8);
  __chkstk_darwin();
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v19 = static os_log_type_t.default.getter();
  v80 = v8;
  v21 = *(v8 + 16);
  v20 = v8 + 16;
  v21(v16, a1, v7);
  v21(v13, a1, v7);
  v73 = v21;
  v21(v11, a1, v7);
  v71 = v18;
  v22 = Logger.logObject.getter();
  v67 = v19;
  if (os_log_type_enabled(v22, v19))
  {
    v23 = swift_slowAlloc();
    v66 = a1;
    v24 = v23;
    v65 = swift_slowAlloc();
    v81 = v65;
    *v24 = 136381187;
    PlayerItem.episode.getter();
    v25 = EpisodePlayerItem.title.getter();
    v27 = v26;
    v63 = v11;
    isa = v68[1].isa;
    v64 = v20;
    (isa)(v6, v70);
    aBlock = v25;
    v83 = v27;
    v62 = sub_100168088(&qword_100574230, &qword_100401FE0);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v68 = v22;
    v31 = *(v80 + 8);
    v31(v16, v7);
    v32 = v31;
    v60 = v31;
    v33 = sub_1000153E0(v28, v30, &v81);

    *(v24 + 4) = v33;
    *(v24 + 12) = 2049;
    PlayerItem.episode.getter();
    v34 = EpisodePlayerItem.adamID.getter();
    v35 = v70;
    v36 = isa;
    (isa)(v6, v70);
    v32(v13, v7);
    *(v24 + 14) = v34;
    *(v24 + 22) = 2081;
    v37 = v63;
    PlayerItem.episode.getter();
    v38 = EpisodePlayerItem.guid.getter();
    v40 = v39;
    v36(v6, v35);
    aBlock = v38;
    v83 = v40;
    v41 = String.init<A>(describing:)();
    v43 = v42;
    v60(v37, v7);
    v44 = sub_1000153E0(v41, v43, &v81);

    *(v24 + 24) = v44;
    v45 = v68;
    _os_log_impl(&_mh_execute_header, v68, v67, "Inserting new Implicit Follow if needed for currently playing episode: %{private}s, adamID: %{private}lld, guid: %{private}s.", v24, 0x20u);
    swift_arrayDestroy();

    a1 = v66;
  }

  else
  {
    v46 = *(v80 + 8);
    v46(v13, v7);

    v46(v11, v7);
    v46(v16, v7);
  }

  (*(v72 + 8))(v71, v69);
  v47 = [*(v76 + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_contextProvider) privateQueueContext];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = v75;
  v73(v75, a1, v7);
  v50 = v80;
  v51 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v52 = (v74 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  *(v53 + 24) = v47;
  (*(v50 + 32))(v53 + v51, v49, v7);
  v54 = v78;
  *(v53 + v52) = v77;
  v55 = (v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8));
  v56 = v79;
  *v55 = v54;
  v55[1] = v56;
  v86 = sub_1002FA378;
  v87 = v53;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_10000F038;
  v85 = &unk_1004EC690;
  v57 = _Block_copy(&aBlock);
  v58 = v47;

  [v58 performBlock:v57];
  _Block_release(v57);
}

void PodcastsStateCoordinator.unsafeEpisodePlayedBeyondThresholdForFirstTime(_:from:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v53 - v8;
  if (!a1)
  {
    static Logger.podcastsStatesCoordination.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v56 = v16;
      *v15 = 136315138;
      v17 = PodcastsStateChangeOrigin.description.getter();
      v19 = sub_1000153E0(v17, v18, &v56);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "We can't transition podcast for nil MTEpisode; Origin: %s.", v15, 0xCu);
      sub_100004590(v16);
    }

    v20 = *(v5 + 8);
    v21 = v7;
    goto LABEL_13;
  }

  v10 = a1;
  v11 = [v10 podcast];
  if (v11)
  {
    v55 = v11;
    sub_1002C76C4(v11, 5, 4u, a2);

    v12 = v55;

    return;
  }

  static Logger.podcastsStatesCoordination.getter();
  v22 = v10;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v23, v24))
  {

    v20 = *(v5 + 8);
    v21 = v9;
LABEL_13:
    v20(v21, v4);
    return;
  }

  v55 = v4;
  v25 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  v58 = v54;
  *v25 = 136381443;
  v26 = [v22 title];
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

  v56 = v28;
  v57 = v30;
  sub_100168088(&qword_100574230, &qword_100401FE0);
  v31 = String.init<A>(describing:)();
  v33 = sub_1000153E0(v31, v32, &v58);

  *(v25 + 4) = v33;
  *(v25 + 12) = 2080;
  v34 = [v22 uuid];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v56 = v36;
  v57 = v38;
  v39 = String.init<A>(describing:)();
  v41 = sub_1000153E0(v39, v40, &v58);

  *(v25 + 14) = v41;
  *(v25 + 22) = 2081;
  v56 = [v22 storeTrackId];
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v44 = sub_1000153E0(v42, v43, &v58);

  *(v25 + 24) = v44;
  *(v25 + 32) = 2081;
  v45 = [v22 guid];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v56 = v47;
  v57 = v49;
  v50 = String.init<A>(describing:)();
  v52 = sub_1000153E0(v50, v51, &v58);

  *(v25 + 34) = v52;
  _os_log_impl(&_mh_execute_header, v23, v24, "We can't transition podcast. MTEpisode without an associated podcast: %{private}s, uuid: %s, adamID: %{private}s, guid: %{private}s.", v25, 0x2Au);
  swift_arrayDestroy();

  (*(v5 + 8))(v9, v55);
}

char *sub_1002F7818(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v107 = a6;
  v108 = a5;
  v106 = a4;
  v105 = type metadata accessor for Logger();
  v103 = *(v105 - 8);
  __chkstk_darwin();
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PodcastPlayerItem();
  v100 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EpisodePlayerItem();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v95 - v16;
  __chkstk_darwin();
  v18 = &v95 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v109 = result;
  if (result)
  {
    PlayerItem.episode.getter();
    v20 = EpisodePlayerItem.adamID.getter();
    v22 = *(v13 + 8);
    v21 = v13 + 8;
    v101 = v22;
    v102 = v12;
    v22(v18, v12);
    v23 = [a2 episodeForStoreTrackID:v20];
    if (v23)
    {
      v24 = v23;
      v100 = a2;
      static Logger.podcastsStatesCoordination.getter();
      v25 = v24;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v97 = v27;
        v98 = v26;
        v28 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v112 = v96;
        *v28 = 136381443;
        v29 = [v25 title];
        if (v29)
        {
          v30 = v29;
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;
        }

        else
        {
          v31 = 0;
          v33 = 0;
        }

        v110 = v31;
        v111 = v33;
        sub_100168088(&qword_100574230, &qword_100401FE0);
        v56 = String.init<A>(describing:)();
        v58 = sub_1000153E0(v56, v57, &v112);

        *(v28 + 4) = v58;
        *(v28 + 12) = 2080;
        v59 = [v25 uuid];
        v99 = v21;
        if (v59)
        {
          v60 = v59;
          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;
        }

        else
        {
          v61 = 0;
          v63 = 0;
        }

        v110 = v61;
        v111 = v63;
        v64 = String.init<A>(describing:)();
        v66 = sub_1000153E0(v64, v65, &v112);

        *(v28 + 14) = v66;
        *(v28 + 22) = 2081;
        v110 = [v25 storeTrackId];
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = sub_1000153E0(v67, v68, &v112);

        *(v28 + 24) = v69;
        *(v28 + 32) = 2081;
        v70 = [v25 guid];
        if (v70)
        {
          v71 = v70;
          v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v73;
        }

        else
        {
          v72 = 0;
          v74 = 0;
        }

        v50 = v102;
        v110 = v72;
        v111 = v74;
        v75 = String.init<A>(describing:)();
        v77 = sub_1000153E0(v75, v76, &v112);

        *(v28 + 34) = v77;
        v78 = v98;
        _os_log_impl(&_mh_execute_header, v98, v97, "Abort new Implicit Follow insertion: Episode already in the DB: %{private}s, uuid: %s, adamID: %{private}s, guid: %{private}s.", v28, 0x2Au);
        swift_arrayDestroy();

        (*(v103 + 8))(v8, v105);
        v49 = v109;
      }

      else
      {

        (*(v103 + 8))(v8, v105);
        v49 = v109;
        v50 = v102;
      }

      v79 = [v25 podcast];
      v80 = v100;
      if (v79)
      {
        v81 = v79;

        sub_1002C76C4(v81, 3, 4u, v106);
      }

      [v80 saveInCurrentBlock];
      v82 = v104;
      PlayerItem.episode.getter();
      v83 = EpisodePlayerItem.adamID.getter();
      v101(v82, v50);
      v84 = [v25 uuid];
      if (v84)
      {
        v85 = v84;
        v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v88 = v87;
      }

      else
      {
        v86 = 0;
        v88 = 0;
      }

      v89 = [v25 podcast];
      if (v89 && (v90 = v89, v91 = [v89 uuid], v90, v91))
      {
        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = v93;
      }

      else
      {
        v92 = 0;
        v94 = 0;
      }

      v108(v83, v86, v88, v92, v94);
    }

    else
    {
      v99 = v21;
      PlayerItem.podcast.getter();
      v34 = PodcastPlayerItem.adamID.getter();
      v35 = v100[1];
      v35(v11, v9);
      v36 = [a2 podcastForStoreId:v34];
      if (!v36)
      {
        v37 = *&v109[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore + 24];
        v105 = *&v109[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore + 32];
        v104 = sub_1000044A0(&v109[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore], v37);
        PlayerItem.podcast.getter();
        v36 = dispatch thunk of PodcastsStateCoordinatorPersistentStoreProtocol.insertPodcastInStoreState(in:for:)();
        v35(v11, v9);
      }

      v38 = v109;

      v25 = v36;
      sub_1002C76C4(v25, 3, 4u, v106);

      sub_1000044A0(&v38[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore], *&v38[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore + 24]);
      PlayerItem.episode.getter();
      v39 = dispatch thunk of PodcastsStateCoordinatorPersistentStoreProtocol.insertEpisode(in:for:asPartOf:)();
      v40 = v18;
      v42 = v101;
      v41 = v102;
      v101(v40, v102);
      [a2 saveInCurrentBlock];
      PlayerItem.episode.getter();
      v43 = EpisodePlayerItem.adamID.getter();
      v42(v15, v41);
      v44 = [v39 uuid];
      if (v44)
      {
        v45 = v44;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      v51 = [v25 uuid];
      if (v51)
      {
        v52 = v51;
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      v108(v43, v46, v48, v53, v55);

      v49 = v39;
    }
  }

  return result;
}

uint64_t PodcastsStateCoordinator.unsafeDidBumpLastDatePlayed(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v55 - v12;
  v14 = type metadata accessor for Podcasts();
  v64[3] = v14;
  v64[4] = sub_1000170B0(&qword_1005742C0, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  v15 = sub_10000E680(v64);
  (*(*(v14 - 8) + 104))(v15, enum case for Podcasts.simplifiedSyncDirtyHandling(_:), v14);
  LOBYTE(v14) = isFeatureEnabled(_:)();
  sub_100004590(v64);
  if (v14)
  {
    v61 = v7;
    v16 = v4;
    v17 = v8;
    static Logger.podcastsStatesCoordination.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = a1;
    v20 = Logger.logObject.getter();
    v62 = v18;
    if (os_log_type_enabled(v20, v18))
    {
      v58 = v20;
      v59 = v5;
      v60 = v2;
      v21 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v64[0] = v56;
      *v21 = 136381955;
      v22 = [v19 title];
      v57 = v17;
      v55 = v16;
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v26 = 0xEA00000000003E65;
        v24 = 0x6C746974206F6E3CLL;
      }

      v31 = 0x3E7974706D653CLL;
      v32 = sub_1000153E0(v24, v26, v64);

      *(v21 + 4) = v32;
      *(v21 + 12) = 2080;
      v33 = [v19 uuid];
      v34 = v61;
      if (v33)
      {
        v35 = v33;
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v37 = 0xE700000000000000;
      }

      v38 = sub_1000153E0(v31, v37, v64);

      *(v21 + 14) = v38;
      *(v21 + 22) = 2080;
      v63 = [v19 managedObjectContext];
      sub_100168088(&qword_1005737C8, &qword_100400FD0);
      v39 = String.init<A>(describing:)();
      v41 = sub_1000153E0(v39, v40, v64);

      *(v21 + 24) = v41;
      *(v21 + 32) = 2049;
      v42 = [v19 storeCollectionId];

      *(v21 + 34) = v42;
      *(v21 + 42) = 2081;
      v43 = [v19 feedURL];
      if (v43)
      {
        v44 = v43;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v47 = 0xE700000000000000;
        v45 = 0x3E7974706D653CLL;
      }

      v48 = sub_1000153E0(v45, v47, v64);

      *(v21 + 44) = v48;
      *(v21 + 52) = 2081;
      [v19 lastDatePlayed];
      Date.init(timeIntervalSinceReferenceDate:)();
      sub_1000170B0(&unk_10057E290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v49 = v55;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v59 + 8))(v34, v49);
      v53 = sub_1000153E0(v50, v52, v64);

      *(v21 + 54) = v53;
      v54 = v58;
      _os_log_impl(&_mh_execute_header, v58, v62, "Change detected in lastDatePlayed of podcast: %{private}s, uuid: %s, MOC: %s, adamID: %{private}lld, feedURL: %{private}s. New lastDatePlayed = %{private}s", v21, 0x3Eu);
      swift_arrayDestroy();

      (*(v9 + 8))(v13, v57);
    }

    else
    {

      (*(v9 + 8))(v13, v17);
    }

    return sub_1002C76C4(v19, 9, 4u, 4);
  }

  else
  {
    static Logger.podcastsStatesCoordination.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = Logger.logObject.getter();
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
    }

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1002F88D0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_1002F8964(void *a1, uint64_t a2)
{
  v74 = a1;
  v3 = type metadata accessor for RemoteNonFollowedShow();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v67 - v7;
  __chkstk_darwin();
  v10 = &v67 - v9;
  v11 = type metadata accessor for Logger();
  v75 = *(v11 - 8);
  v76 = v11;
  __chkstk_darwin();
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = *(v4 + 16);
  v15(v10, a2, v3);
  v15(v8, a2, v3);
  v77 = a2;
  v15(v6, a2, v3);
  v16 = v74;
  v17 = Logger.logObject.getter();
  LODWORD(v74) = v14;
  if (os_log_type_enabled(v17, v14))
  {
    v70 = v10;
    v71 = v17;
    v72 = v4;
    v73 = v3;
    v18 = v8;
    v19 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v78 = v69;
    *v19 = 136382467;
    v20 = [v16 title];
    v68 = v13;
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v24 = 0xEA00000000003E65;
      v22 = 0x6C746974206F6E3CLL;
    }

    v27 = v72;
    v28 = sub_1000153E0(v22, v24, &v78);

    *(v19 + 4) = v28;
    *(v19 + 12) = 2080;
    v29 = [v16 uuid];
    v30 = v6;
    if (v29)
    {
      v31 = v29;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v34 = 0xE90000000000003ELL;
      v32 = 0x64697575206F6E3CLL;
    }

    v35 = v18;
    v36 = sub_1000153E0(v32, v34, &v78);

    *(v19 + 14) = v36;
    *(v19 + 22) = 2049;
    v37 = [v16 storeCollectionId];

    *(v19 + 24) = v37;
    *(v19 + 32) = 2081;
    v38 = [v16 feedURL];
    v39 = v73;
    if (v38)
    {
      v40 = v38;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
    }

    else
    {
      v43 = 0xE700000000000000;
      v41 = 0x3E7974706D653CLL;
    }

    v44 = sub_1000153E0(v41, v43, &v78);

    *(v19 + 34) = v44;
    *(v19 + 42) = 2049;
    [v16 lastDatePlayed];
    *(v19 + 44) = v45;
    *(v19 + 52) = 2049;
    v46 = v70;
    v47 = RemoteNonFollowedShow.storeCollectionId.getter();
    v48 = *(v27 + 8);
    v48(v46, v39);
    *(v19 + 54) = v47;
    *(v19 + 62) = 2081;
    v49 = RemoteNonFollowedShow.feedURL.getter();
    v51 = v50;
    v48(v35, v39);
    v52 = sub_1000153E0(v49, v51, &v78);

    *(v19 + 64) = v52;
    *(v19 + 72) = 2049;
    *&v53 = COERCE_DOUBLE(RemoteNonFollowedShow.lastDatePlayed.getter());
    LOBYTE(v51) = v54;
    v48(v30, v39);
    v55 = *&v53;
    if (v51)
    {
      v55 = 0.0;
    }

    *(v19 + 74) = v55;
    v56 = v71;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v71, v74, "Updating local podcast %{private}s, uuid: %s, adamID: %{private}lld, feedURL: %{private}s, lastDatePlayed: %{private}f; For remote NonFollowedShow with adamID: %{private}lld, feedURL: %{private}s, lastDatePlayed: %{private}f.", v19, 0x52u);
    swift_arrayDestroy();

    (*(v75 + 8))(v68, v76);
  }

  else
  {
    v25 = *(v4 + 8);
    v25(v10, v3);

    v25(v6, v3);
    v25(v8, v3);
    (*(v75 + 8))(v13, v76);
    v26 = v16;
  }

  v78 = RemoteNonFollowedShow.unknownSyncProperties.getter();
  sub_100168088(&qword_10057E2E0, &qword_10040BC60);
  sub_100009FAC(&qword_10057E2E8, &qword_10057E2E0, &qword_10040BC60, &protocol conformance descriptor for [A : B]);
  v57 = Collection.isNotEmpty.getter();

  if (v57)
  {
    v58 = RemoteSyncTypeWithUnknownSyncProperties.encodeUnknownSyncProperties()();
    if (v59 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v61 = v58;
      v62 = v59;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1001F6D60(v61, v62);
    }

    [v26 setImplicitFollowsUnknownSyncProperties:isa];
  }

  else
  {
    [v26 setImplicitFollowsUnknownSyncProperties:0];
  }

  *&result = COERCE_DOUBLE(RemoteNonFollowedShow.lastDatePlayed.getter());
  if ((v64 & 1) == 0)
  {
    v65 = *&result;
    *&result = COERCE_DOUBLE([v26 lastDatePlayed]);
    if (v66 < v65)
    {
      *&result = COERCE_DOUBLE([v26 setLastDatePlayed:v65]);
    }
  }

  return result;
}

void sub_1002F9030()
{
  v1 = v0[2];
  v2 = v0[5];
  v3 = v0[6];
  v4 = String._bridgeToObjectiveC()();
  [v1 unsafeEnableSubscriptionOnPodcastUUID:v4 from:v2 context:v3];
}

uint64_t sub_1002F90C4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v56 = a2;
  v57 = a3;
  v60 = type metadata accessor for EpisodePlayerItem();
  v62 = *(v60 - 8);
  __chkstk_darwin();
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlayerItem();
  v64 = *(v8 - 8);
  __chkstk_darwin();
  v63 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v52 - v10;
  __chkstk_darwin();
  v13 = v52 - v12;
  v14 = type metadata accessor for Logger();
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin();
  v65 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PodcastPlayerItem();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  v61 = a4;
  _Block_copy(a4);
  PlayerItem.podcast.getter();
  LOBYTE(a4) = PodcastPlayerItem.isSubscribeable.getter();
  (*(v17 + 8))(v19, v16);
  if (a4)
  {
    sub_1002F6B1C(a1, v56, sub_1002FA304, v20);
  }

  else
  {
    v57 = v20;
    static Logger.podcastsStatesCoordination.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = *(v64 + 16);
    v22(v13, a1, v8);
    v22(v11, a1, v8);
    v22(v63, a1, v8);
    v23 = Logger.logObject.getter();
    if (os_log_type_enabled(v23, v21))
    {
      v24 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v68 = v55;
      *v24 = 136381187;
      PlayerItem.episode.getter();
      v25 = EpisodePlayerItem.title.getter();
      v54 = v21;
      v27 = v26;
      v56 = a1;
      v53 = v23;
      v52[0] = *(v62 + 8);
      v28 = v60;
      (v52[0])(v7, v60);
      v66 = v25;
      v67 = v27;
      v52[1] = sub_100168088(&qword_100574230, &qword_100401FE0);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      v64 = *(v64 + 8);
      (v64)(v13, v8);
      v32 = sub_1000153E0(v29, v31, &v68);

      *(v24 + 4) = v32;
      *(v24 + 12) = 2049;
      v33 = v24;
      PlayerItem.episode.getter();
      v34 = EpisodePlayerItem.adamID.getter();
      v35 = v52[0];
      (v52[0])(v7, v28);
      v36 = v11;
      v37 = v28;
      (v64)(v36, v8);
      v38 = v33;
      *(v33 + 14) = v34;
      *(v33 + 22) = 2081;
      v39 = v63;
      PlayerItem.episode.getter();
      v40 = EpisodePlayerItem.guid.getter();
      v42 = v41;
      v35(v7, v37);
      v43 = v62;
      v66 = v40;
      v67 = v42;
      v44 = String.init<A>(describing:)();
      v46 = v45;
      (v64)(v39, v8);
      v47 = sub_1000153E0(v44, v46, &v68);

      *(v38 + 24) = v47;
      v48 = v53;
      _os_log_impl(&_mh_execute_header, v53, v54, "Skip inserting new Implicit Follow for currently playing episode because the show is Not Subscribeable -- i.e. from a news diggest or some other type of 'fake' show: %{private}s, adamID: %{private}lld, guid: %{private}s.", v38, 0x20u);
      swift_arrayDestroy();

      (*(v58 + 8))(v65, v59);
    }

    else
    {
      v49 = *(v64 + 8);
      v49(v11, v8);

      v49(v63, v8);
      v49(v13, v8);
      (*(v58 + 8))(v65, v59);
      v37 = v60;
      v43 = v62;
    }

    PlayerItem.episode.getter();
    v50 = EpisodePlayerItem.adamID.getter();
    (*(v43 + 8))(v7, v37);
    (*(v61 + 2))(v61, v50, 0, 0);
  }
}

void sub_1002F9768(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v127 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v120 - v11;
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v120 - v14;
  if (!a2)
  {
    v16 = [a1 podcast];
    if (v16)
    {
      v17 = v16;
      sub_1002C76C4(v16, 6, 4u, a3);

      a2 = 0;
    }

    else
    {
      v126 = v3;
      static Logger.podcastsStatesCoordination.getter();
      v18 = a1;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v121 = v20;
        v122 = v19;
        v123 = 0;
        v128 = v9;
        v21 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v131 = v120;
        *v21 = 136381443;
        v22 = [v18 title];
        if (v22)
        {
          v23 = v22;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
        }

        else
        {
          v24 = 0;
          v26 = 0;
        }

        v124 = a3;
        v129 = v24;
        v130 = v26;
        sub_100168088(&qword_100574230, &qword_100401FE0);
        v27 = String.init<A>(describing:)();
        v29 = sub_1000153E0(v27, v28, &v131);

        *(v21 + 4) = v29;
        *(v21 + 12) = 2080;
        v30 = [v18 uuid];
        if (v30)
        {
          v31 = v30;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;
        }

        else
        {
          v32 = 0;
          v34 = 0;
        }

        v129 = v32;
        v130 = v34;
        v35 = String.init<A>(describing:)();
        v37 = sub_1000153E0(v35, v36, &v131);

        *(v21 + 14) = v37;
        *(v21 + 22) = 2081;
        v129 = [v18 storeTrackId];
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = sub_1000153E0(v38, v39, &v131);

        *(v21 + 24) = v40;
        *(v21 + 32) = 2081;
        v41 = [v18 guid];
        if (v41)
        {
          v42 = v41;
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;
        }

        else
        {
          v43 = 0;
          v45 = 0;
        }

        a3 = v124;
        v4 = v126;
        v129 = v43;
        v130 = v45;
        v46 = String.init<A>(describing:)();
        v48 = sub_1000153E0(v46, v47, &v131);

        *(v21 + 34) = v48;
        v49 = v122;
        _os_log_impl(&_mh_execute_header, v122, v121, "We can't transition podcast. MTEpisode without an associated podcast: %{private}s, uuid: %s, adamID: %{private}s, guid: %{private}s.", v21, 0x2Au);
        swift_arrayDestroy();

        v9 = v128;
        (*(v128 + 8))(v15, v8);
        a2 = v123;
      }

      else
      {

        (*(v9 + 8))(v15, v8);
        v4 = v126;
      }
    }
  }

  static Logger.podcastsStatesCoordination.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = Logger.logObject.getter();
  if (os_log_type_enabled(v51, v50))
  {
    v126 = v4;
    v124 = a3;
    v128 = v9;
    v52 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *v52 = 134219267;
    v123 = a2;
    *(v52 + 4) = a2;
    *(v52 + 12) = 2081;
    v53 = [a1 title];
    v125 = v8;
    if (v53)
    {
      v54 = v53;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v129 = v55;
    v130 = v57;
    sub_100168088(&qword_100574230, &qword_100401FE0);
    v59 = String.init<A>(describing:)();
    v61 = sub_1000153E0(v59, v60, &v131);

    *(v52 + 14) = v61;
    *(v52 + 22) = 2080;
    v62 = [a1 uuid];
    if (v62)
    {
      v63 = v62;
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;
    }

    else
    {
      v64 = 0;
      v66 = 0;
    }

    v129 = v64;
    v130 = v66;
    v67 = String.init<A>(describing:)();
    v69 = sub_1000153E0(v67, v68, &v131);

    *(v52 + 24) = v69;
    *(v52 + 32) = 2081;
    v129 = [a1 storeTrackId];
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = sub_1000153E0(v70, v71, &v131);

    *(v52 + 34) = v72;
    *(v52 + 42) = 2081;
    v73 = [a1 guid];
    if (v73)
    {
      v74 = v73;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;
    }

    else
    {
      v75 = 0;
      v77 = 0;
    }

    v129 = v75;
    v130 = v77;
    v78 = String.init<A>(describing:)();
    v80 = sub_1000153E0(v78, v79, &v131);

    *(v52 + 44) = v80;
    *(v52 + 52) = 2080;
    a3 = v124;
    v81 = PodcastsStateChangeOrigin.description.getter();
    v83 = sub_1000153E0(v81, v82, &v131);

    *(v52 + 54) = v83;
    _os_log_impl(&_mh_execute_header, v51, v50, "Marking as playState = %lld episode: %{private}s, uuid: %s, adamID: %{private}s, guid: %{private}s.; From origin: %s.", v52, 0x3Eu);
    swift_arrayDestroy();

    v9 = v128;
    v58 = *(v128 + 8);
    v8 = v125;
    v58(v12, v125);
    v4 = v126;
    a2 = v123;
  }

  else
  {

    v58 = *(v9 + 8);
    v58(v12, v8);
  }

  [*(v4 + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_library) setPlayState:a2 fromContextActions:1 manually:1 forUserActionOnEpisode:a1 saveChanges:1];
  if (a2 == 2)
  {
    v84 = [a1 podcast];
    if (v84)
    {
      v85 = v84;
      sub_1002C76C4(v84, 7, 4u, a3);
    }

    else
    {
      v86 = v127;
      static Logger.podcastsStatesCoordination.getter();
      v87 = a1;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v128 = v9;
        v125 = v8;
        v90 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *v90 = 136381443;
        v91 = [v87 title];
        if (v91)
        {
          v92 = v91;
          v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v95 = v94;
        }

        else
        {
          v93 = 0;
          v95 = 0;
        }

        v129 = v93;
        v130 = v95;
        sub_100168088(&qword_100574230, &qword_100401FE0);
        v98 = String.init<A>(describing:)();
        v100 = sub_1000153E0(v98, v99, &v131);

        *(v90 + 4) = v100;
        *(v90 + 12) = 2080;
        v101 = [v87 uuid];
        if (v101)
        {
          v102 = v101;
          v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;
        }

        else
        {
          v103 = 0;
          v105 = 0;
        }

        v129 = v103;
        v130 = v105;
        v106 = String.init<A>(describing:)();
        v108 = sub_1000153E0(v106, v107, &v131);

        *(v90 + 14) = v108;
        *(v90 + 22) = 2081;
        v129 = [v87 storeTrackId];
        v109 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = sub_1000153E0(v109, v110, &v131);

        *(v90 + 24) = v111;
        *(v90 + 32) = 2081;
        v112 = [v87 guid];
        if (v112)
        {
          v113 = v112;
          v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v116 = v115;
        }

        else
        {
          v114 = 0;
          v116 = 0;
        }

        v129 = v114;
        v130 = v116;
        v117 = String.init<A>(describing:)();
        v119 = sub_1000153E0(v117, v118, &v131);

        *(v90 + 34) = v119;
        _os_log_impl(&_mh_execute_header, v88, v89, "We can't transition podcast. MTEpisode without an associated podcast: %{private}s, uuid: %s, adamID: %{private}s, guid: %{private}s.", v90, 0x2Au);
        swift_arrayDestroy();

        v96 = v127;
        v97 = v125;
      }

      else
      {

        v96 = v86;
        v97 = v8;
      }

      v58(v96, v97);
    }
  }
}

uint64_t _s8Podcasts0A16StateCoordinatorC014currentPodcastB11Description4fromS2S_tF_0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  sub_100168088(&qword_10057E2D8, &qword_10040BC58);
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (v5 > 2u)
  {
    return 0x65726F7473;
  }

  if (!v5)
  {
    return 0x6465776F6C6C6F66;
  }

  if (v5 == 1)
  {
    return 0x7972617262696CLL;
  }

  return 0xD000000000000012;
}

uint64_t sub_1002FA30C()
{

  return _swift_deallocObject(v0, 48, 7);
}

char *sub_1002FA378()
{
  v1 = *(type metadata accessor for PlayerItem() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1002F7818(v4, v5, v0 + v2, v6, v8, v9);
}

uint64_t sub_1002FA418(uint64_t a1)
{
  v2 = sub_100168088(&unk_100575CE0, &unk_100402E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002FA480()
{
  result = qword_10057E300;
  if (!qword_10057E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057E300);
  }

  return result;
}

void sub_1002FA4D4()
{
  v1 = *(type metadata accessor for PodcastStateModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v0 + v4);
  v10 = *(v7 + 8);

  sub_1002C82C8(v6, v0 + v2, v5, v8, v10, v9);
}

void *sub_1002FA5D0(objc_class *a1)
{
  v2 = v1;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v139 = (&v106 - v6);
  __chkstk_darwin();
  v114 = &v106 - v7;
  __chkstk_darwin();
  v140 = &v106 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 1);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v1 playState];
  result = [v2 duration];
  *&v16 = v16;
  v17 = *&v16 * 1000.0;
  if (COERCE_INT(fabs(*&v16 * 1000.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_87;
  }

  if (v17 <= -9.2234e18)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v17 >= 9.2234e18)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v18 = [v2 bestSummary];
  v138 = v9;
  v130 = a1;
  if (v18 || (v18 = [v2 itemDescriptionWithoutHTML]) != 0)
  {
    v19 = v18;
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v20;
  }

  else
  {
    v113 = 0;
    v128 = 0;
  }

  v21 = objc_opt_self();
  [v21 legacyPlayCountForPlayState:v14 playCount:{objc_msgSend(v2, "playCount")}];
  [v21 hasBeenPlayedForPlayState:v14];
  v22 = [objc_opt_self() validatedIdNumberFromStoreId:{objc_msgSend(v2, "storeTrackId")}];
  v23 = v22;
  v106 = v5;
  if (v22)
  {
    v131 = [v22 longLongValue];
  }

  else
  {
    v131 = 0;
  }

  v24 = [v2 podcast];
  v137 = v10;
  if (v24)
  {
    v25 = v24;
    v126 = [v24 storeCollectionId];
  }

  else
  {
    v126 = [v2 storeTrackId];
  }

  static Date.timeIntervalSinceReferenceDate.getter();
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v26 = [v2 podcast];
  if (v26 && (v27 = v26, v28 = [v26 title], v27, v28))
  {
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v29;
  }

  else
  {
    v112 = 0;
    v125 = 0;
  }

  v30 = [v2 title];
  if (v30)
  {
    v31 = v30;
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v32;
  }

  else
  {
    v111 = 0;
    v124 = 0;
  }

  [v2 byteSize];
  v127 = Int64._bridgeToObjectiveC()().super.super.isa;
  v33 = [v2 guid];
  if (v33)
  {
    v34 = v33;
    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v35;
  }

  else
  {
    v110 = 0;
    v123 = 0;
  }

  result = [v2 playhead];
  v37 = v36 * 1000.0;
  if ((LODWORD(v37) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_89;
  }

  if (v37 <= -9.2234e18)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (v37 >= 9.2234e18)
  {
LABEL_91:
    __break(1u);
    return result;
  }

  v122 = Int._bridgeToObjectiveC()().super.super.isa;
  v38 = [v2 podcast];
  if (v38 && (v39 = v38, v40 = [v38 title], v39, v40))
  {
    v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = v41;
  }

  else
  {
    v109 = 0;
    v120 = 0;
  }

  v42 = v137;
  [v2 video];
  v121 = Bool._bridgeToObjectiveC()().super.super.isa;
  v43 = [v2 podcast];
  if (v43 && (v44 = v43, v45 = [v43 feedURL], v44, v45))
  {
    v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v46;
  }

  else
  {
    v108 = 0;
    v119 = 0;
  }

  v47 = [v2 podcast];
  if (v47)
  {
    v48 = v47;
    [v47 storeCollectionId];

    v136 = Int64._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v136 = 0;
  }

  [v2 pubDate];
  v135 = Double._bridgeToObjectiveC()().super.super.isa;
  v49 = [v2 podcast];
  if (v49 && (v50 = v49, v51 = [v49 author], v50, v51))
  {
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v107 = 0;
    v53 = 0;
  }

  v54.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  v133 = Int64._bridgeToObjectiveC()().super.super.isa;
  v132 = Bool._bridgeToObjectiveC()().super.super.isa;
  if (v23)
  {
    v131 = Int64._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v131 = 0;
  }

  v55 = v138;
  v134 = v54.super.super.isa;
  if (v130)
  {
    [(objc_class *)v130 longLongValue];
    v130 = Int64._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v130 = 0;
  }

  v56 = [v2 objectID];
  v57 = [v56 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v115 = URL.absoluteString.getter();
  v58 = v42[1];
  v118 = v42 + 1;
  v116 = v58;
  v58(v13, v55);
  v59 = [v2 assetURL];
  v117 = v53;
  if (!v59)
  {
    goto LABEL_50;
  }

  v60 = v59;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = v114;
  URL.init(string:)();

  if ((v42[6])(v61, 1, v55) == 1)
  {
    sub_1001FDD40(v61);
LABEL_50:
    v62 = 1;
    goto LABEL_52;
  }

  (v42[4])(v140, v61, v55);
  v62 = 0;
LABEL_52:
  v63 = v42[7];
  v64 = 1;
  v63(v140, v62, 1, v55);
  v65 = [v2 podcast];
  if (v65)
  {
    v66 = v65;
    v67 = [v65 imageURL];

    v68 = v140;
    if (!v67)
    {
LABEL_56:
      v64 = 1;
      goto LABEL_59;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = v106;
    URL.init(string:)();

    if ((v42[6])(v69, 1, v55) == 1)
    {
      sub_1001FDD40(v69);
      goto LABEL_56;
    }

    (v42[4])(v139, v69, v55);
    v64 = 0;
  }

  else
  {
    v68 = v140;
  }

LABEL_59:
  v63(v139, v64, 1, v55);
  v70.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
  if (v125)
  {
    v114 = String._bridgeToObjectiveC()();
  }

  else
  {
    v114 = 0;
  }

  v71 = v128;
  v72 = v123;
  v73 = v120;
  if (v124)
  {
    v140 = String._bridgeToObjectiveC()();

    if (v72)
    {
LABEL_64:
      v128 = String._bridgeToObjectiveC()();

      goto LABEL_67;
    }
  }

  else
  {
    v140 = 0;
    if (v123)
    {
      goto LABEL_64;
    }
  }

  v128 = 0;
LABEL_67:
  v74 = v119;
  if (v73)
  {
    v126 = String._bridgeToObjectiveC()();
  }

  else
  {
    v126 = 0;
  }

  v75 = v117;
  if (v71)
  {
    v125 = String._bridgeToObjectiveC()();
  }

  else
  {
    v125 = 0;
  }

  if (!v74)
  {
    v76 = 0;
    if (v75)
    {
      goto LABEL_75;
    }

LABEL_77:
    v77 = 0;
    goto LABEL_78;
  }

  v76 = String._bridgeToObjectiveC()();

  if (!v75)
  {
    goto LABEL_77;
  }

LABEL_75:
  v77 = String._bridgeToObjectiveC()();

LABEL_78:
  v78 = String._bridgeToObjectiveC()();

  v79 = v138;
  v80 = v137[6];
  if (v80(v68, 1, v138) == 1)
  {
    v82 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v81);
    v83 = v68;
    v82 = v84;
    v116(v83, v79);
  }

  v85 = v139;
  if (v80(v139, 1, v79) == 1)
  {
    v87 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v86);
    v87 = v88;
    v116(v85, v79);
  }

  v138 = v87;
  v89 = objc_allocWithZone(MediaLibraryItem);
  v104 = v87;
  v105 = v70.super.super.isa;
  v102 = v78;
  v103 = v82;
  v139 = v70.super.super.isa;
  v120 = v77;
  v101 = v77;
  v100 = v76;
  v90 = v76;
  v91 = v121;
  v124 = v78;
  v92 = v125;
  v93 = v126;
  v94 = isa;
  v95 = v114;
  v96 = v140;
  v97 = v127;
  v123 = v82;
  v98 = v128;
  v99 = v122;
  v137 = [v89 initWithDateAccessed:isa album:v114 title:v140 fileSize:v127 externalGuid:v128 bookmarkTimeMillis:v122 seriesName:v126 itemDescription:v125 hasVideo:v121 feedUrl:v100 playlistId:v136 dateReleased:v135 artist:v101 totalTimeMillis:v134 playCount:v133 hasBeenPlayed:v132 serpentId:v131 activeDsid:v130 statsDownloadIdentifier:v102 itemFilePath:v103 artworkUrl:v104 artworkTokenId:v105];

  return v137;
}

uint64_t sub_1002FB2BC(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  sub_100168088(&unk_100573A80, &unk_100401160);
  v2[38] = swift_task_alloc();
  v3 = type metadata accessor for MediaIdentifier();
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v4 = type metadata accessor for PlaybackIntent();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();

  return _swift_task_switch(sub_1002FB410, 0, 0);
}

uint64_t sub_1002FB410()
{
  v1 = v0[37];
  v0[2] = v0;
  v0[3] = sub_1002FB524;
  v2 = swift_continuation_init();
  v0[17] = sub_100168088(&unk_10057E310, qword_10040BC70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002FBF10;
  v0[13] = &unk_1004EC730;
  v0[14] = v2;
  [v1 load:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002FB524()
{

  return _swift_task_switch(sub_1002FB604, 0, 0);
}

void sub_1002FB604()
{
  v1 = v0[37];
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = (v2 + 16);
  v0[22] = sub_1002FC06C;
  v0[23] = v2;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1002FBFF4;
  v0[21] = &unk_1004EC780;
  v4 = _Block_copy(v0 + 18);
  v5 = v0[23];

  [v1 enumerateObjectsUsingBlock:v4];
  _Block_release(v4);
  type metadata accessor for NetworkMediaManifest(0);
  if (swift_dynamicCastClass())
  {
    swift_beginAccess();
    v5 = *v3;
    v6 = (*v3 & 0xFFFFFFFFFFFFFF8);
    if (*v3 >> 62)
    {
LABEL_74:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    v81 = _swiftEmptyArrayStorage;
    while (v7 != v8)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= v6[2])
        {
          goto LABEL_71;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v12 = IMPlayerItem.adamID.getter();
      v14 = v13;

      ++v8;
      if ((v14 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1002433B0(0, *(v81 + 2) + 1, 1, v81);
        }

        v16 = *(v81 + 2);
        v15 = *(v81 + 3);
        if (v16 >= v15 >> 1)
        {
          v81 = sub_1002433B0((v15 > 1), v16 + 1, 1, v81);
        }

        *(v81 + 2) = v16 + 1;
        *&v81[8 * v16 + 32] = v12;
        v8 = v11;
      }
    }

    v17 = &enum case for MediaIdentifier.episodes(_:);
    goto LABEL_100;
  }

  v18 = [v0[37] currentItem];
  v19 = &selRef_defaultInstance;
  if (!v18 || (v20 = v18, v21 = [v18 episodeUuid], v20, v19 = &selRef_defaultInstance, !v21))
  {
LABEL_78:
    swift_beginAccess();
    v52 = *v3;
    v53 = *v3 & 0xFFFFFFFFFFFFFF8;
    if (*v3 >> 62)
    {
LABEL_105:
      v54 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v54 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v54)
    {
      v55 = 0;
      v81 = _swiftEmptyArrayStorage;
      do
      {
        v56 = v55;
        while (1)
        {
          if ((v52 & 0xC000000000000001) != 0)
          {
            v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v56 >= *(v53 + 16))
            {
              goto LABEL_104;
            }

            v57 = *(v52 + 8 * v56 + 32);
          }

          v58 = v57;
          v55 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          v59 = [v57 v19[310]];
          if (v59)
          {
            break;
          }

          ++v56;
          if (v55 == v54)
          {
            goto LABEL_98;
          }
        }

        v60 = v59;
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_100243134(0, *(v81 + 2) + 1, 1, v81);
        }

        v65 = *(v81 + 2);
        v64 = *(v81 + 3);
        if (v65 >= v64 >> 1)
        {
          v81 = sub_100243134((v64 > 1), v65 + 1, 1, v81);
        }

        *(v81 + 2) = v65 + 1;
        v66 = &v81[16 * v65];
        *(v66 + 4) = v61;
        *(v66 + 5) = v63;
        v19 = &selRef_defaultInstance;
      }

      while (v55 != v54);
    }

    else
    {
      v81 = _swiftEmptyArrayStorage;
    }

LABEL_98:

    goto LABEL_99;
  }

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v22;

  swift_beginAccess();
  v23 = *v3;
  if (*v3 >> 62)
  {
LABEL_76:
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24)
    {
      goto LABEL_22;
    }

    goto LABEL_77;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
LABEL_77:

    goto LABEL_78;
  }

LABEL_22:

  v25 = 0;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_76;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    v6 = v26;
    v27 = [v26 v19[310]];
    if (!v27)
    {

      v33 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_72;
      }

      goto LABEL_37;
    }

    v5 = v27;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = v28 == v80 && v30 == v82;
    if (v31)
    {
      break;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_40;
    }

    v33 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_37:
    ++v25;
    v19 = &selRef_defaultInstance;
    if (v33 == v24)
    {

      goto LABEL_77;
    }
  }

LABEL_40:

  swift_beginAccess();
  v34 = *v3;
  v35 = v34 >> 62;
  if (v34 >> 62)
  {
    v77 = _CocoaArrayWrapper.endIndex.getter();
    if (v77 < v25)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v5 = v77;
    if (_CocoaArrayWrapper.endIndex.getter() < v25)
    {
LABEL_113:
      __break(1u);
      return;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v5)
    {
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_110;
  }

  v5 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < v25)
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

LABEL_42:
  if ((v34 & 0xC000000000000001) == 0 || v5 == v25)
  {

    if (!v35)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v25 >= v5)
  {
    goto LABEL_111;
  }

  sub_1001AD650();

  v36 = v25;
  do
  {
    v37 = v36 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v36);
    v36 = v37;
  }

  while (v5 != v37);
  if (!v35)
  {
LABEL_48:
    v38 = (v34 & 0xFFFFFFFFFFFFFF8) + 32;
    goto LABEL_51;
  }

LABEL_50:

  _CocoaArrayWrapper.subscript.getter();
  v38 = v39;
  v25 = v40;
  v5 = v41 >> 1;
LABEL_51:
  swift_endAccess();
  swift_unknownObjectRetain();
  if (v25 != v5)
  {
    v81 = _swiftEmptyArrayStorage;
    v42 = v25;
LABEL_55:
    if (v42 >= v25)
    {
      if (v42 <= v5)
      {
        v43 = v5;
      }

      else
      {
        v43 = v42;
      }

      while (v43 != v42)
      {
        v6 = (v42 + 1);
        v44 = *(v38 + 8 * v42);
        v45 = [v44 episodeUuid];
        if (v45)
        {
          v46 = v45;
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = v48;
          v79 = v47;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_100243134(0, *(v81 + 2) + 1, 1, v81);
          }

          v50 = *(v81 + 2);
          v49 = *(v81 + 3);
          if (v50 >= v49 >> 1)
          {
            v81 = sub_100243134((v49 > 1), v50 + 1, 1, v81);
          }

          *(v81 + 2) = v50 + 1;
          v51 = &v81[16 * v50];
          *(v51 + 4) = v79;
          *(v51 + 5) = v78;
          v31 = v5 - 1 == v42++;
          if (v31)
          {
            goto LABEL_53;
          }

          goto LABEL_55;
        }

        ++v42;
        if (v5 == v6)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_73;
  }

  v81 = _swiftEmptyArrayStorage;
LABEL_53:
  swift_unknownObjectRelease_n();
LABEL_99:
  v17 = &enum case for MediaIdentifier.localEpisodes(_:);
LABEL_100:
  v67 = v0[43];
  v68 = v0[44];
  v69 = v0[41];
  v70 = v0[42];
  v71 = v0[39];
  v72 = v0[40];
  v73 = v0[38];
  v74 = v0[36];
  *v69 = v81;
  (*(v72 + 104))(v69, *v17, v71);
  v75 = type metadata accessor for EpisodeListSettings();
  (*(*(v75 - 8) + 56))(v73, 1, 1, v75);
  static Set<>.default.getter();
  PlaybackIntent.init(id:baseListSettings:options:)();
  (*(v67 + 32))(v74, v68, v70);
  (*(v67 + 56))(v74, 0, 1, v70);

  v76 = v0[1];

  v76();
}

uint64_t sub_1002FBF10(uint64_t a1)
{
  v1 = *sub_1000044A0((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

void *sub_1002FBF44(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = v4;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  return result;
}

void sub_1002FBFF4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

id sub_1002FC074()
{
  v1 = OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation____lazy_storage___serialQueue;
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation____lazy_storage___serialQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation____lazy_storage___serialQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(NSOperationQueue) init];
    [v4 setMaxConcurrentOperationCount:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1002FC0FC()
{
  v1 = &v0[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input];
  if (v0[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input + 8])
  {
    goto LABEL_15;
  }

  v2 = v0;
  if (*(*v1 + 16))
  {
    v3 = OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_episodeStorage;
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v109 = *&v0[v3];
    swift_unknownObjectRetain();
    v4 = static OS_os_log.downloads.getter();
    v5 = sub_100168088(&qword_10057E3B0, &qword_10040BCE0);
    v6 = objc_allocWithZone(v5);
    v7 = &v6[*((swift_isaMask & *v6) + 0x198)];
    *v7 = 0;
    v7[8] = 2;
    v8 = &v6[*((swift_isaMask & *v6) + 0x1A8)];
    *v8 = sub_1002FCEA0;
    v8[1] = 0;
    *&v6[*((swift_isaMask & *v6) + 0x1A0)] = v109;
    *&v6[*((swift_isaMask & *v6) + 0x1B0)] = v4;
    v121.receiver = v6;
    v121.super_class = v5;
    v9 = objc_msgSendSuper2(&v121, "init");
    v10 = *v1;
    v11 = v9 + *((swift_isaMask & *v9) + 0x198);
    v12 = v1[8];
    swift_beginAccess();
    v13 = *v11;
    *v11 = v10;
    v14 = v11[8];
    v11[8] = v12;
    sub_10003B668(v10, v12);
    sub_10003B684(v13, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    v16 = sub_100168088(&qword_10057E3B8, &qword_10040BCE8);
    v17 = objc_allocWithZone(v16);
    v18 = &v17[*((swift_isaMask & *v17) + 0x180)];
    *v18 = 0;
    v18[8] = 2;
    v19 = &v17[*((swift_isaMask & *v17) + 0x188)];
    *v19 = sub_1002FE148;
    v19[1] = v15;
    v120.receiver = v17;
    v120.super_class = v16;
    v20 = v2;
    v21 = objc_msgSendSuper2(&v120, "init");
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_100168088(&unk_10057E3C0, &unk_10040BCF0);
    v24 = objc_allocWithZone(v23);
    v25 = &v24[*((swift_isaMask & *v24) + 0x180)];
    *v25 = 0;
    v25[8] = 2;
    v26 = &v24[*((swift_isaMask & *v24) + 0x188)];
    *v26 = sub_1002FE150;
    v26[1] = v22;
    v119.receiver = v24;
    v119.super_class = v23;
    v27 = objc_msgSendSuper2(&v119, "init");
    v28 = swift_allocObject();
    *(v28 + 16) = v20;
    v29 = sub_100168088(&qword_100574420, &unk_100401970);
    v30 = objc_allocWithZone(v29);
    v31 = &v30[*((swift_isaMask & *v30) + 0x180)];
    *v31 = 0;
    v31[8] = 2;
    v32 = &v30[*((swift_isaMask & *v30) + 0x188)];
    *v32 = sub_1002FE158;
    v32[1] = v28;
    v118.receiver = v30;
    v118.super_class = v29;
    v33 = v20;
    v108.receiver = objc_msgSendSuper2(&v118, "init");
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    v35 = sub_100168088(&unk_10057A690, &unk_100400AC0);
    v36 = objc_allocWithZone(v35);
    v37 = &v36[*((swift_isaMask & *v36) + 0x180)];
    *v37 = 0;
    v37[8] = 2;
    v38 = &v36[*((swift_isaMask & *v36) + 0x188)];
    *v38 = sub_1002FE160;
    v38[1] = v34;
    v117.receiver = v36;
    v117.super_class = v35;
    v33;
    v107 = objc_msgSendSuper2(&v117, "init");
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = (v9 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    v41 = *(v9 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    v42 = *(v9 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
    *v40 = sub_10027B824;
    v40[1] = v39;

    sub_1000112B4(v41, v42);

    ObjectType = swift_getObjectType();
    v44 = swift_conformsToProtocol2();
    if (v44)
    {
      v45 = v44;
      v46 = swift_allocObject();
      *(v46 + 24) = v45;
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      *(v48 + 16) = v47;
      *(v48 + 24) = v46;
      v49 = *(v45 + 72);
      v50 = v9;

      v49(sub_1000319D0, v48, ObjectType, v45);

      v116.receiver = v21;
      v116.super_class = type metadata accessor for BaseOperation();
      v108.super_class = v116.super_class;
      objc_msgSendSuper2(&v116, "addDependency:", v50);

      v106 = v50;
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = &v21[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      v53 = *&v21[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      v54 = *&v21[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
      *v52 = sub_10027B824;
      v52[1] = v51;

      sub_1000112B4(v53, v54);

      v55 = swift_getObjectType();
      v56 = swift_conformsToProtocol2();
      if (v56)
      {
        v57 = v56;
        v58 = swift_allocObject();
        *(v58 + 24) = v57;
        swift_unknownObjectWeakInit();
        v59 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v60 = swift_allocObject();
        *(v60 + 16) = v59;
        *(v60 + 24) = v58;
        v61 = *(v57 + 72);
        v62 = v21;

        v61(sub_10003B6A0, v60, v55, v57);

        v115.receiver = v27;
        v115.super_class = v108.super_class;
        objc_msgSendSuper2(&v115, "addDependency:", v62);

        v105 = v62;
        v63 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v64 = &v27[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
        v65 = *&v27[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
        v66 = *&v27[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
        *v64 = sub_100182704;
        v64[1] = v63;

        sub_1000112B4(v65, v66);

        v67 = swift_getObjectType();
        v68 = swift_conformsToProtocol2();
        if (v68)
        {
          v69 = v68;
          v70 = swift_allocObject();
          *(v70 + 24) = v69;
          swift_unknownObjectWeakInit();
          v71 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v72 = swift_allocObject();
          *(v72 + 16) = v71;
          *(v72 + 24) = v70;
          v73 = *(v69 + 72);
          v74 = v27;

          v73(sub_10003B6A0, v72, v67, v69);

          v114 = v108;
          objc_msgSendSuper2(&v114, "addDependency:", v74);

          v104 = v74;
          v75 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v76 = (v108.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
          v77 = *(v108.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
          v78 = *(v108.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
          *v76 = sub_100182704;
          v76[1] = v75;

          sub_1000112B4(v77, v78);

          v79 = swift_getObjectType();
          v80 = swift_conformsToProtocol2();
          if (v80)
          {
            v81 = v80;
            v82 = swift_allocObject();
            *(v82 + 24) = v81;
            swift_unknownObjectWeakInit();
            v83 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v84 = swift_allocObject();
            *(v84 + 16) = v83;
            *(v84 + 24) = v82;
            v85 = *(v81 + 72);
            v86 = v108.receiver;
            v87 = v107;

            v85(sub_10003B6A0, v84, v79, v81);

            v113.receiver = v87;
            v113.super_class = v108.super_class;
            objc_msgSendSuper2(&v113, "addDependency:", v86);

            v88 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v89 = &v87[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
            v90 = *&v87[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
            v91 = *&v87[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError + 8];
            *v89 = sub_1002FE17C;
            v89[1] = v88;

            sub_1000112B4(v90, v91);

            v92 = sub_1002FC074();
            sub_100168088(&unk_100574680, &qword_100401740);
            v93 = swift_allocObject();
            *(v93 + 16) = xmmword_1004007F0;
            *(v93 + 32) = v106;
            *(v93 + 40) = v105;
            *(v93 + 48) = v104;
            *(v93 + 56) = v86;
            *(v93 + 64) = v87;
            sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
            v94 = v106;
            v95 = v105;
            v96 = v104;
            v97 = v86;
            v98 = v87;
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v92 addOperations:isa waitUntilFinished:0];

            return;
          }

          goto LABEL_14;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  v100 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v101 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)(v100, &_mh_execute_header, v101, "No media library items to restore provided.", 43, 2, _swiftEmptyArrayStorage);

  v102 = *&v2[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  if (v102)
  {
    v103 = *&v2[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8];
    v112 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
    v110 = 0;
    v111 = 0;

    v102(&v110);
    sub_1000112B4(v102, v103);
    sub_100004590(&v110);
  }

  sub_10003172C();
}

void sub_1002FCEA0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  v9 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v10 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100400790;
  v12 = *(v7 + 16);
  *(v11 + 56) = &type metadata for Int;
  *(v11 + 64) = &protocol witness table for Int;
  *(v11 + 32) = v12;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Looking for %d episode uuids in podcasts library matching provided persistent ids", LODWORD(v19[0]));

  v13 = *(v6 + 16);

  v15 = v13(v14);

  v16 = swift_allocObject();
  v16[2] = v7;
  v16[3] = v15;
  v16[4] = sub_100183820;
  v16[5] = v8;
  v19[4] = sub_10027B89C;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_10000F038;
  v19[3] = &unk_1004ECB90;
  v17 = _Block_copy(v19);

  v18 = v15;

  [v18 performBlock:v17];
  _Block_release(v17);
}

void sub_1002FD0B4(uint64_t *a1, void (*a2)(void ***), uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v9 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v10 = swift_allocObject();
  *(&v30 + 1) = 2;
  *(v10 + 16) = xmmword_100400790;
  v11 = *(v6 + 16);
  *(v10 + 56) = &type metadata for Int;
  *(v10 + 64) = &protocol witness table for Int;
  *(v10 + 32) = v11;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Found for %d episodes uuids in podcasts library for provided persistent ids", 1);

  if (!*(v6 + 16))
  {

    v21 = static os_log_type_t.default.getter();
    v22 = static OS_os_log.restore.getter();
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "No episode uuids fetched from podcasts library, nothing to do.", 62, 2, _swiftEmptyArrayStorage);

    aBlock = v6;
    LOBYTE(v34) = 0;
    a2(&aBlock);
    return;
  }

  v12 = static os_log_type_t.default.getter();
  v13 = static OS_os_log.restore.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v30;
  v15 = *(v6 + 16);
  *(v14 + 56) = &type metadata for Int;
  *(v14 + 64) = &protocol witness table for Int;
  *(v14 + 32) = v15;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Clear asset url property for %d episodes.", v30);

  v16 = *(a4 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_episodeStorage);
  v17 = *(v6 + 16);
  if (v17)
  {
    v32 = sub_1002440D4(*(v6 + 16), 0);
    v18 = sub_1002FE644(&aBlock, v32 + 4, v17, v6);
    v19 = aBlock;

    sub_1000319D8(v19);
    if (v18 != v17)
    {
      __break(1u);
      return;
    }

    v20 = v32;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v23 = swift_allocObject();
  v23[2] = sub_10002DD38;
  v23[3] = v7;
  v23[4] = v6;
  v24 = *(v16 + 16);

  v26 = v24(v25);

  v27 = swift_allocObject();
  v27[2] = v20;
  v27[3] = v26;
  v27[4] = sub_1002FE7A4;
  v27[5] = v23;
  v37 = sub_1002FE7B4;
  v38 = v27;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10000F038;
  v36 = &unk_1004ECB18;
  v28 = _Block_copy(&aBlock);
  v29 = v26;

  [v29 performBlock:v28];
  _Block_release(v28);
}

uint64_t sub_1002FD478(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if ((a2 & 1) == 0)
  {
    return (a3)(a5, 0, a3, a4);
  }

  sub_100217988();
  v7 = swift_allocError();
  *v8 = a1;
  swift_errorRetain();
  a3(v7, 1);
}

void sub_1002FD51C(uint64_t *a1, void (*a2)(void ***), uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9 = *(v6 + 16);
  if (!v9)
  {

    v10 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_4;
    }

LABEL_7:

    v23 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v24 = static OS_os_log.restore.getter();
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "No episode uuids fetched. Nothing to download.", 46, 2, _swiftEmptyArrayStorage);

    aBlock = 0;
    LOBYTE(v28) = 0;
    a2(&aBlock);
    return;
  }

  v25 = a2;
  v26 = v7;
  v10 = sub_1002440D4(v9, 0);
  v11 = sub_1002FE644(&aBlock, v10 + 4, v9, v6);
  v12 = aBlock;

  sub_1000319D8(v12);
  if (v11 != v9)
  {
    __break(1u);
    return;
  }

  v8 = v26;
  if (!v10[2])
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v14 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100400790;
  v16 = v10[2];
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  *(v15 + 32) = v16;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Add restore downloads for %d episodes.", v25);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_downloadsManager);
    v19 = Strong;
    swift_unknownObjectRetain();

    sub_10039B51C(v10);

    isa = Set._bridgeToObjectiveC()().super.isa;

    v21 = swift_allocObject();
    *(v21 + 16) = sub_1002FE810;
    *(v21 + 24) = v8;
    v31 = sub_1002FE79C;
    v32 = v21;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1002FD9A8;
    v30 = &unk_1004ECA78;
    v22 = _Block_copy(&aBlock);

    [v18 restoreDownloadedEpisodes:isa completion:v22];
    swift_unknownObjectRelease();
    _Block_release(v22);
  }

  else
  {
  }
}

uint64_t sub_1002FD8A8(uint64_t a1, uint64_t (*a2)(void, void))
{
  if (*(a1 + 16))
  {
    v4 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v5 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100400790;
    v7 = *(a1 + 16);
    *(v6 + 56) = &type metadata for Int;
    *(v6 + 64) = &protocol witness table for Int;
    *(v6 + 32) = v7;
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "%d episodes have been dropped and won't be redownloaded.", v9);
  }

  return a2(0, 0);
}

uint64_t sub_1002FD9A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_1002FDA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v9 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100400790;
  v11 = (a4 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input);
  if (*(a4 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input + 8) || (v12 = *(*v11 + 16), *(v10 + 56) = &type metadata for Int, *(v10 + 64) = &protocol witness table for Int, *(v10 + 32) = v12, os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Delete %d episodes from media library.", v16), v9, , sub_1000044A0((a4 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_mediaLibrary), *(a4 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_mediaLibrary + 24)), v11[8]))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = *v11;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10002DD30;
    *(v14 + 24) = v7;

    dispatch thunk of MediaLibraryClientProtocol.deleteEpisodes(identifiers:completion:)();

    return sub_10003B684(v13, 0);
  }

  return result;
}

void sub_1002FDC80(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v5 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Restore operation has been completed.", 37, 2, _swiftEmptyArrayStorage);

  v6 = *(a1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  if (v6)
  {
    v7 = *(a1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
    v10 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
    v8 = 0;
    v9 = 0;

    v6(&v8);
    sub_1000112B4(v6, v7);
    sub_100004590(&v8);
  }

  sub_10003172C();
  *a2 = 0;
  *(a2 + 8) = 0;
}

void sub_1002FDD94(uint64_t a1, uint64_t a2)
{
  v3 = static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v4 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100400790;
  swift_getErrorValue();
  v6 = Error.localizedDescription.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100022C18();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Failed restore most recently downloaded episodes, error: %{public}s", 67, 2, v5);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (v11)
    {
      v12 = *(Strong + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler + 8);
      v17 = sub_100168088(&qword_100578BE0, &unk_100405DA0);
      v15 = a1;
      v16 = 1;
      sub_100013CB4(v11, v12);
      swift_errorRetain();
      v11(&v15);
      sub_1000112B4(v11, v12);
      sub_100004590(&v15);
    }

    v13 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
    v14 = *&v10[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock];
    swift_errorRetain();
    [v14 lock];
    *&v10[OBJC_IVAR____TtC8Podcasts13BaseOperation__error] = a1;
    swift_errorRetain();

    [*&v10[v13] unlock];

    sub_10003172C();
  }
}

void sub_1002FDFD4()
{
  sub_10003B684(*(v0 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input), *(v0 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input + 8));
  sub_100004590((v0 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_mediaLibrary));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation____lazy_storage___serialQueue);
}

id sub_1002FE04C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RestoreDownloadedEpisodesOperation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002FE128@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input;
  v3 = *(v1 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  return sub_10003B668(v3, v4);
}

void *sub_1002FE184(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
  sub_100276194();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_100009F1C(0, &qword_1005747D0, MPMediaItem_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_1002FE3A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v39 = type metadata accessor for MediaLibraryPid();
  v41 = *(v39 - 8);
  __chkstk_darwin();
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin();
  v38 = &v32 - v10;
  v11 = a4 + 64;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v30 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v11;
    *(a1 + 16) = ~v12;
    *(a1 + 24) = v30;
    *(a1 + 32) = v14;
    return;
  }

  if (!a3)
  {
    v30 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = -1 << *(a4 + 32);
    v33 = a1;
    v15 = 0;
    v16 = (63 - v12) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    a1 = 1;
    v36 = a4 + 64;
    v37 = a3;
    v17 = v38;
    while (v14)
    {
      v43 = a2;
LABEL_15:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v42 = v15;
      v21 = a4;
      v22 = *(a4 + 56);
      v23 = v40;
      v24 = v41;
      v25 = *(v41 + 72);
      v26 = v39;
      (*(v41 + 16))(v40, v22 + v25 * (v20 | (v15 << 6)), v39, v9);
      v27 = *(v24 + 32);
      v27(v17, v23, v26);
      v28 = v43;
      v27(v43, v17, v26);
      if (a1 == v37)
      {
        v12 = v32;
        a1 = v33;
        a4 = v21;
        v30 = v42;
        v11 = v36;
        goto LABEL_25;
      }

      a2 = &v28[v25];
      v29 = __OFADD__(a1++, 1);
      a4 = v21;
      v15 = v42;
      v11 = v36;
      if (v29)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v18 = v15;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v19 >= v16)
      {
        break;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        v43 = a2;
        v15 = v19;
        goto LABEL_15;
      }
    }

    v14 = 0;
    if (v16 <= v15 + 1)
    {
      v31 = v15 + 1;
    }

    else
    {
      v31 = v16;
    }

    v30 = v31 - 1;
    v12 = v32;
    a1 = v33;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1002FE644(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1002FE7C0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002FE81C(__int128 *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3 = [objc_opt_self() mainBundle];
  v15._object = 0x800000010046EAF0;
  v4._object = 0x800000010046EAD0;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x1000000000000016;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v15);

  *(v1 + 72) = v6;
  *(v1 + 88) = xmmword_10040BD00;
  v7 = OBJC_IVAR____TtC8Podcasts37RemoveFromLibraryEpisodeContextAction_metricsLabel;
  v8 = enum case for MetricsLabel.removeEpisodeFromLibrary(_:);
  v9 = type metadata accessor for MetricsLabel();
  (*(*(v9 - 8) + 104))(v1 + v7, v8, v9);
  v10 = OBJC_IVAR____TtC8Podcasts37RemoveFromLibraryEpisodeContextAction_contextActionType;
  v11 = enum case for ContextActionType.removeEpisodeFromLibrary(_:);
  v12 = type metadata accessor for ContextActionType();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v1 + v10, v11, v12);
  (*(v13 + 56))(v1 + v10, 0, 1, v12);
  sub_100184658(a1, v1 + 32);
  return v1;
}

uint64_t sub_1002FE9CC(__n128 a1)
{
  v2 = v1;
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v4 = (v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InteractionContext();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(v1 + 24))
  {
    return 0;
  }

  dispatch thunk of ContextActionsConfiguration.context.getter();

  InteractionContext.page.getter();
  v11 = *(v8 + 8);
  v11(v10, v7);
  v12 = InteractionContext.Page.isEpisodePage.getter();
  sub_10027F15C(v6, &type metadata accessor for InteractionContext.Page);
  if (*(v1 + 24))
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    v11(v10, v7);
    v13 = InteractionContext.Page.isUnfollowedLibraryShow.getter();
    sub_10027F15C(v6, &type metadata accessor for InteractionContext.Page);
    if (((v13 | v12) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v12 & 1) == 0)
  {
    return 0;
  }

  v14 = *(v2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v14 + v15, v4, v16);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10027F15C(v4, type metadata accessor for EpisodeContextActionDataType);
    return 0;
  }

  v18 = *v4;

  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 mainOrPrivateContext];

  v46 = _swiftEmptyArrayStorage;
  v21 = v18[2];
  if (!v21)
  {
    v36 = 0;
    v24 = 0;
    goto LABEL_18;
  }

  v38[1] = v14;
  v39 = v18;
  v23 = v18[4];
  v22 = v18[5];
  v24 = swift_allocObject();
  v24[2] = v20;
  v24[3] = v23;
  v24[4] = v22;
  v24[5] = &v46;

  v38[0] = v20;
  v25 = v20;
  sub_1000112B4(0, 0);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1002FF700;
  *(v26 + 24) = v24;
  v44 = sub_10002D7F0;
  v45 = v26;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_10002D904;
  v43 = &unk_1004ECCA0;
  v27 = _Block_copy(&aBlock);

  [v25 performBlockAndWait:v27];
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if ((v27 & 1) == 0)
  {
    v28 = v21 - 1;
    if (v21 != 1)
    {
      v29 = v39 + 7;
      do
      {
        v31 = *(v29 - 1);
        v30 = *v29;
        v32 = swift_allocObject();
        v32[2] = v25;
        v32[3] = v31;
        v32[4] = v30;
        v32[5] = &v46;

        v33 = v25;
        sub_1000112B4(sub_1002FF700, v24);
        v34 = swift_allocObject();
        *(v34 + 16) = sub_1002FF700;
        *(v34 + 24) = v32;
        v44 = sub_10002D7F0;
        v45 = v34;
        aBlock = _NSConcreteStackBlock;
        v41 = 1107296256;
        v42 = sub_10002D904;
        v43 = &unk_1004ECCA0;
        v35 = _Block_copy(&aBlock);

        [v33 performBlockAndWait:v35];
        _Block_release(v35);
        LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

        if (v33)
        {
          goto LABEL_19;
        }

        v24 = v32;
        v29 += 2;
      }

      while (--v28);
    }

    v36 = sub_1002FF700;
    v20 = v38[0];
LABEL_18:

    v37 = v46[2];

    sub_1000112B4(v36, v24);
    return v37 != 0;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1002FEFC8(void *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v8 = String._bridgeToObjectiveC()();
  v16 = [a1 episodeForUuid:v8];

  if (v16)
  {
    if (([v16 isDownloaded] & 1) != 0 || objc_msgSend(v16, "isBookmarked") || (objc_msgSend(v16, "isBookmarksMigrationRecoveredEpisode") & 1) == 0)
    {
    }

    else
    {
      v9 = *a4;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_100243134(0, *(v9 + 2) + 1, 1, v9);
        *a4 = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v16;
      if (v12 >= v11 >> 1)
      {
        *a4 = sub_100243134((v11 > 1), v12 + 1, 1, v9);
        v13 = v16;
      }

      v14 = *a4;
      *(v14 + 2) = v12 + 1;
      v15 = &v14[16 * v12];
      *(v15 + 4) = a2;
      *(v15 + 5) = a3;
    }
  }
}

void sub_1002FF138(__n128 a1)
{
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v1[2];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v4 + v5, v3, v6);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10027F15C(v3, type metadata accessor for EpisodeContextActionDataType);
    }

    else
    {

      sub_1000044A0(v1 + 4, v1[7]);
      dispatch thunk of LibraryActionControllerProtocol.removeRecoveredEpisodes(with:)();
    }
  }
}

uint64_t sub_1002FF264()
{

  sub_100004590((v0 + 32));

  v1 = OBJC_IVAR____TtC8Podcasts37RemoveFromLibraryEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1001C2B94(v0 + OBJC_IVAR____TtC8Podcasts37RemoveFromLibraryEpisodeContextAction_contextActionType);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoveFromLibraryEpisodeContextAction(uint64_t a1)
{
  result = qword_10057E408;
  if (!qword_10057E408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FF38C(uint64_t a1)
{
  type metadata accessor for MetricsLabel();
  if (v1 <= 0x3F)
  {
    sub_1001C25E8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002FF480@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts37RemoveFromLibraryEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002FF510(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1002FF570(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002FF5D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002FF634(uint64_t a1)
{
  result = sub_1002FF6BC(&qword_10057E568, &unk_10040BDD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002FF678(uint64_t a1)
{
  result = sub_1002FF6BC(&unk_10057E570, &unk_10040BE30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002FF6BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveFromLibraryEpisodeContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002FF7B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeDownloadStateControllerProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002FF8A4()
{
  v1 = v0;
  sub_100168088(&qword_10057D398, &qword_10040AC00);
  __chkstk_darwin();
  v3 = &v20[-v2];
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.navigation.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Storefront change detected, re-running storefront bootstrap.", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  *(v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_objectGraph) = static Dependencies.allDependencies()();

  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v20[7] = 1;
  sub_1000090B0();
  AnyHashable.init<A>(_:)();
  type metadata accessor for BaseObjectGraph();

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009104(v21, &unk_10057E698, &qword_10040BF78);
  v11 = (v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_urlActionRunner);
  *v11 = 0;
  v11[1] = 0;
  swift_unknownObjectRelease();
  v12 = type metadata accessor for PPTViewControllerProxy();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = OBJC_IVAR____TtC8Podcasts11AppDelegate_pptViewHierarchyProxy;
  swift_beginAccess();
  sub_10002C62C(v3, v1 + v13);
  swift_endAccess();
  v14 = (v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_flowController);
  *v14 = 0;
  v14[1] = 0;
  swift_unknownObjectRelease();
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 delegate];

  if (!v16)
  {
  }

  if ([v16 respondsToSelector:"window"])
  {
    v17 = [v16 window];
    swift_unknownObjectRelease();
    if (v17)
    {
      v18 = sub_10001DB48();
      [v17 setRootViewController:v18];
    }
  }

  return swift_unknownObjectRelease();
}

void sub_1002FFC58(void *a1)
{
  v57 = a1;
  v55 = type metadata accessor for NSFastEnumerationIterator();
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v56 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v3 = &v46 - v2;
  v4 = type metadata accessor for URL();
  v60 = *(v4 - 8);
  __chkstk_darwin();
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 stringForKey:v8];

  if (!v9)
  {
    return;
  }

  v10 = [v6 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  if (!v12)
  {
    return;
  }

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_100301FEC(v3);
  v15 = v60;
  if ((*(v60 + 48))(v3, 1, v4) == 1)
  {

    sub_100009104(v3, &qword_100574040, &unk_100400AD0);
    return;
  }

  v16 = v58;
  (*(v15 + 32))(v58, v3, v4);
  v17 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 contentsAtPath:v18];

  if (!v19)
  {
    (*(v15 + 8))(v16, v4);
    goto LABEL_34;
  }

  v50 = v4;
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = objc_opt_self();
  v51 = v20;
  v52 = v22;
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v66 = 0;
  v25 = [v23 propertyListWithData:isa options:1 format:0 error:&v66];

  v26 = v66;
  if (!v25)
  {
LABEL_37:
    v45 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001B944(v68, &v66);
  sub_100009F1C(0, &qword_10057A450, NSArray_ptr);
  v27 = swift_dynamicCast();
  v28 = v56;
  if (!v27)
  {
    sub_1001F6D74(v51, v52);

    sub_100004590(v68);
    (*(v15 + 8))(v16, v50);
    return;
  }

  v59 = v14;
  v49 = *&v65[0];
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!v67)
  {
    goto LABEL_33;
  }

  v29 = _swiftEmptyArrayStorage;
  v30 = &qword_10057E7C0;
  v31 = &type metadata for String;
  v32 = &protocol witness table for AnyHashable;
  do
  {
    v48 = v29;
    while (1)
    {
      sub_10016B7CC(&v66, v65);
      sub_100009F1C(0, v30, NSDictionary_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_13;
      }

      v33 = v32;
      v34 = v63;
      *&v63 = 0x656D614E74736574;
      *(&v63 + 1) = 0xE800000000000000;
      v35 = [v34 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v35)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v63 = 0u;
        v64 = 0u;
      }

      v65[0] = v63;
      v65[1] = v64;
      v32 = v33;
      if (!*(&v64 + 1))
      {
        sub_100009104(v65, &unk_1005783D0, &qword_1004031E0);
LABEL_12:

        goto LABEL_13;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v36 = v31;
      v37 = v30;
      v39 = v61;
      v38 = v62;
      if ((v53 != v61 || v59 != v62) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v40 = String._bridgeToObjectiveC()();
      *&v65[0] = 0;
      v26 = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
      if (!*&v65[0])
      {
        __break(1u);
        goto LABEL_37;
      }

      v41 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v57 runTest:v40 options:v41];

      v30 = v37;
      v31 = v36;
      v32 = v33;
LABEL_13:
      NSFastEnumerationIterator.next()();
      if (!v67)
      {
        goto LABEL_33;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_100243134(0, *(v48 + 2) + 1, 1, v48);
    }

    v43 = *(v48 + 2);
    v42 = *(v48 + 3);
    v47 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      v48 = sub_100243134((v42 > 1), v43 + 1, 1, v48);
    }

    v29 = v48;
    *(v48 + 2) = v47;
    v44 = &v29[16 * v43];
    *(v44 + 4) = v39;
    *(v44 + 5) = v38;
    NSFastEnumerationIterator.next()();
    v30 = v37;
    v31 = v36;
    v32 = v33;
  }

  while (v67);
LABEL_33:
  sub_1001F6D74(v51, v52);

  (*(v54 + 8))(v28, v55);
  sub_100004590(v68);
  (*(v60 + 8))(v58, v50);
LABEL_34:
}

id sub_100300658@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22 = a1;
  v26 = a2;
  v2 = sub_100168088(&qword_10057E778, &qword_10040BFE0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = sub_100168088(&qword_10057E780, &qword_10040BFE8);
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin();
  v8 = &v21 - v7;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = objc_opt_self();
  v10 = [v9 predicateForNotSubscribedAndNotHiddenAndNotImplicitlyFollowed];
  v11 = [v9 predicateForPodcastsWithLibraryEpisodes];
  v12 = [v10 AND:v11];

  v13 = [v9 predicateForSubscribedAndNotHidden];
  v14 = [v13 OR:v12];

  result = [v9 sortDescriptorsForSortType:1];
  if (result)
  {
    v16 = result;
    sub_100009F1C(0, &qword_10057B1F0, NSSortDescriptor_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [*(v22 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
    sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.main.getter();
    type metadata accessor for ShowInfo();
    sub_100009F1C(0, &qword_100573AC0, MTPodcast_ptr);
    static FetchedResultsListPublisher.unsafeUnlimitedListPublisher(identifier:entityName:predicate:sortDescriptors:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();

    __chkstk_darwin();
    swift_getKeyPath();
    sub_100009FAC(&qword_10057E788, &qword_10057E778, &qword_10040BFE0, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
    Publisher.map<A>(_:)();

    (*(v3 + 8))(v5, v2);
    sub_100009FAC(&unk_10057E790, &qword_10057E780, &qword_10040BFE8, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
    v19 = v25;
    v20 = Publisher.eraseToAnyPublisher()();
    result = (*(v24 + 8))(v8, v19);
    *v26 = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100300AB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 uuid];
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [a1 addedDate];
    Date.init(timeIntervalSinceReferenceDate:)();
    Date.timeIntervalSince1970.getter();
    v12 = v11;
    result = (*(v5 + 8))(v8, v4);
    v14 = v12 * 1000.0;
    if (COERCE__INT64(fabs(v12 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        [a1 storeCollectionId];
        v18[1] = AdamID.init(rawValue:)();
        sub_1000366D8();
        BinaryInteger.description.getter();
        ShowInfo.init(adamId:deviceShowId:followTime:)();
        v15 = type metadata accessor for ShowInfo();
        return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v16 = type metadata accessor for ShowInfo();
  v17 = *(*(v16 - 8) + 56);

  return v17(a2, 1, 1, v16);
}

BOOL sub_100300D2C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ShowInfo();
  sub_10002C074(&unk_100581820, &type metadata accessor for ShowInfo, &protocol conformance descriptor for ShowInfo);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

void sub_100300DB8(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v44 = a2;
  v4 = type metadata accessor for MetricsPipeline();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin();
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&qword_100577768, &qword_1004049C8);
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin();
  v39 = &v34 - v7;
  v8 = sub_100168088(&qword_10057E760, &qword_1004049D0);
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin();
  v10 = &v34 - v9;
  v40 = type metadata accessor for MetricsFieldsContext();
  v11 = *(v40 - 8);
  __chkstk_darwin();
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v34 - v14;
  __chkstk_darwin();
  v17 = &v34 - v16;
  v18 = type metadata accessor for FollowMetricsEvent.FollowType();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsData();
  v24 = __chkstk_darwin();
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16))
  {
    v27 = *(v19 + 104);
    v35 = v23;
    v36 = v22;
    v27(v21, enum case for FollowMetricsEvent.FollowType.followedShows(_:), v18, v24);
    static FollowMetricsEvent.makeData(followType:shows:)();
    (*(v19 + 8))(v21, v18);
    MetricsFieldsContext.init()();
    type metadata accessor for PageContextTracker();
    v47 = static PageContextTracker.shared.getter();
    static MetricsFieldsContext.Property<A>.pageContextTracker.getter();
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v37 + 8))(v10, v38);

    v28 = *(v11 + 8);
    v29 = v40;
    v28(v13, v40);
    type metadata accessor for MetricsActivity();
    v30 = static MetricsActivity.shared.getter();
    v31 = MetricsActivity.currentPageFields.getter();

    v47 = v31;
    v32 = v39;
    static MetricsFieldsContext.Property<A>.pageFields.getter();
    sub_100168088(&qword_100574880, &unk_100401D30);
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v41 + 8))(v32, v42);

    v28(v15, v29);
    v33 = v43;
    dispatch thunk of BaseFlowController.metricsPipeline.getter();
    MetricsPipeline.process(_:using:)();

    (*(v45 + 8))(v33, v46);
    v28(v17, v29);
    (*(v35 + 8))(v26, v36);
  }
}

uint64_t sub_1003012EC@<X0>(uint64_t *a2@<X8>)
{

  v4 = sub_100304498(v3);

  *a2 = v4;
  return result;
}

double sub_100301334@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  *a3 = *a2;
  a3[1] = v3;

  return result;
}

uint64_t *sub_100301374@<X0>(uint64_t *result@<X0>, char **a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  if (*result)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    if (v4[2] <= *(v3 + 16) >> 3)
    {
      v7 = *result;

      sub_10036DCA8(v4);
      v6 = v7;
    }

    else
    {

      v6 = sub_10036E680(v4, v3);
    }

    if (*(v3 + 16) <= v4[2] >> 3)
    {
      sub_10036DCA8(v3);
      result = v4;
    }

    else
    {
      result = sub_10036E680(v3, v4);
    }

    *a2 = v6;
    a2[1] = result;
  }

  return result;
}

void sub_100301454(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v108 = a2;
  v107 = type metadata accessor for MetricsPipeline();
  v4 = *(v107 - 8);
  __chkstk_darwin();
  v106 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100168088(&qword_100577768, &qword_1004049C8);
  v6 = *(v105 - 8);
  __chkstk_darwin();
  v104 = &v75 - v7;
  v103 = sub_100168088(&qword_10057E760, &qword_1004049D0);
  v8 = *(v103 - 8);
  __chkstk_darwin();
  v102 = &v75 - v9;
  v101 = type metadata accessor for MetricsFieldsContext();
  v10 = *(v101 - 8);
  __chkstk_darwin();
  v100 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v75 - v12;
  __chkstk_darwin();
  v98 = &v75 - v13;
  v97 = type metadata accessor for FollowMetricsEvent.FollowType();
  v14 = *(v97 - 8);
  __chkstk_darwin();
  v96 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for MetricsData();
  v16 = *(v95 - 8);
  __chkstk_darwin();
  v109 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ShowInfo();
  __chkstk_darwin();
  v78 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v75 - v20;
  v21 = *a1;
  v82 = a1[1];
  v22 = *(v21 + 56);
  v77 = v21 + 56;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v76 = (v23 + 63) >> 6;
  v92 = v19 + 16;
  LODWORD(v79) = enum case for FollowMetricsEvent.FollowType.follow(_:);
  v93 = v19;
  v90 = v19 + 32;
  v91 = (v14 + 104);
  v89 = (v14 + 8);
  v88 = (v8 + 8);
  v87 = (v10 + 8);
  v86 = (v6 + 8);
  v85 = (v4 + 8);
  v84 = (v16 + 8);
  v81 = v21;

  v26 = 0;
  v83 = xmmword_100400790;
  v27 = v87;
  if (v25)
  {
    while (1)
    {
      v28 = v26;
LABEL_9:
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v31 = v93;
      v30 = v94;
      v32 = v80;
      (*(v93 + 16))(v80, *(v81 + 48) + *(v93 + 72) * (v29 | (v28 << 6)), v94);
      v34 = v96;
      v33 = v97;
      (*v91)(v96, v79, v97);
      sub_100168088(&qword_10057E768, &qword_10040BFD8);
      v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v83;
      (*(v31 + 32))(v36 + v35, v32, v30);
      static FollowMetricsEvent.makeData(followType:shows:)();

      (*v89)(v34, v33);
      v37 = v100;
      MetricsFieldsContext.init()();
      type metadata accessor for PageContextTracker();
      v110 = static PageContextTracker.shared.getter();
      v38 = v102;
      static MetricsFieldsContext.Property<A>.pageContextTracker.getter();
      v39 = v99;
      MetricsFieldsContext.addingValue<A>(_:forProperty:)();
      (*v88)(v38, v103);

      v40 = *v27;
      v41 = v37;
      v42 = v101;
      (*v27)(v41, v101);
      type metadata accessor for MetricsActivity();
      v43 = static MetricsActivity.shared.getter();
      v44 = MetricsActivity.currentPageFields.getter();

      v110 = v44;
      v45 = v104;
      static MetricsFieldsContext.Property<A>.pageFields.getter();
      sub_100168088(&qword_100574880, &unk_100401D30);
      v46 = v98;
      MetricsFieldsContext.addingValue<A>(_:forProperty:)();
      (*v86)(v45, v105);

      v40(v39, v42);
      v47 = v106;
      dispatch thunk of BaseFlowController.metricsPipeline.getter();
      v48 = v109;
      MetricsPipeline.process(_:using:)();

      (*v85)(v47, v107);
      v40(v46, v42);
      (*v84)(v48, v95);
      if (!v25)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v28 >= v76)
    {
      break;
    }

    v25 = *(v77 + 8 * v28);
    ++v26;
    if (v25)
    {
      v26 = v28;
      goto LABEL_9;
    }
  }

  v49 = *(v82 + 56);
  v80 = (v82 + 56);
  v50 = 1 << *(v82 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v49;
  v79 = (v50 + 63) >> 6;
  LODWORD(v81) = enum case for FollowMetricsEvent.FollowType.unfollow(_:);

  v53 = 0;
  while (v52)
  {
    v54 = v53;
LABEL_19:
    v55 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v57 = v93;
    v56 = v94;
    v58 = v78;
    (*(v93 + 16))(v78, *(v82 + 48) + *(v93 + 72) * (v55 | (v54 << 6)), v94);
    v60 = v96;
    v59 = v97;
    (*v91)(v96, v81, v97);
    sub_100168088(&qword_10057E768, &qword_10040BFD8);
    v61 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v83;
    (*(v57 + 32))(v62 + v61, v58, v56);
    static FollowMetricsEvent.makeData(followType:shows:)();

    (*v89)(v60, v59);
    v63 = v100;
    MetricsFieldsContext.init()();
    type metadata accessor for PageContextTracker();
    v110 = static PageContextTracker.shared.getter();
    v64 = v102;
    static MetricsFieldsContext.Property<A>.pageContextTracker.getter();
    v65 = v99;
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*v88)(v64, v103);

    v66 = *v87;
    v67 = v63;
    v68 = v101;
    (*v87)(v67, v101);
    type metadata accessor for MetricsActivity();
    v69 = static MetricsActivity.shared.getter();
    v70 = MetricsActivity.currentPageFields.getter();

    v110 = v70;
    v71 = v104;
    static MetricsFieldsContext.Property<A>.pageFields.getter();
    sub_100168088(&qword_100574880, &unk_100401D30);
    v72 = v98;
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*v86)(v71, v105);

    v66(v65, v68);
    v73 = v106;
    dispatch thunk of BaseFlowController.metricsPipeline.getter();
    v74 = v109;
    MetricsPipeline.process(_:using:)();

    (*v85)(v73, v107);
    v66(v72, v68);
    (*v84)(v74, v95);
  }

  while (1)
  {
    v54 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v54 >= v79)
    {

      return;
    }

    v52 = *&v80[8 * v54];
    ++v53;
    if (v52)
    {
      v53 = v54;
      goto LABEL_19;
    }
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_100301FEC@<X0>(uint64_t a1@<X8>)
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v20 - v4;
  __chkstk_darwin();
  v7 = &v20 - v6;
  sub_100009F1C(0, &qword_10057BC40, UITraitCollection_ptr);
  v8 = static UITraitCollection.interfaceIdiomIsMac.getter();
  v9 = [objc_opt_self() mainBundle];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 resourceURL];

    if (v11)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = type metadata accessor for URL();
      (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    }

    else
    {
      v12 = type metadata accessor for URL();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    }

    sub_1001B8A3C(v5, v7);
    type metadata accessor for URL();
    v17 = *(v12 - 8);
    if ((*(v17 + 48))(v7, 1, v12) == 1)
    {
      sub_100009104(v7, &qword_100574040, &unk_100400AD0);
      return (*(v17 + 56))(a1, 1, 1, v12);
    }

    else
    {
      URL.appendingPathComponent(_:)();
      (*(v17 + 8))(v7, v12);
      return (*(v17 + 56))(a1, 0, 1, v12);
    }
  }

  else
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v10 URLForResource:v13 withExtension:v14];

    if (v15)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
    }

    else
    {
      v19 = type metadata accessor for URL();
      (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    }

    return sub_1001B8A3C(v3, a1);
  }
}

uint64_t sub_1003023A0(unint64_t a1, uint64_t a2, __n128 a3)
{
  v57 = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin();
  v4 = type metadata accessor for OSLogger();
  v53 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v52 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for FlowDestinationPageHeader();
  v49 = *(v50 - 8);
  __chkstk_darwin();
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowPresentationContext();
  v47 = *(v9 - 8);
  __chkstk_darwin();
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowDestination();
  v46 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ActionMetricsBehavior();
  v55 = *(v56 - 8);
  __chkstk_darwin();
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v19 = [v15 isDebugUrl:v17];

  if (v19)
  {
    [v15 showDebugUI];
  }

  else
  {
    type metadata accessor for PodcastsURLScheme();
    if (!static PodcastsURLScheme.commandType(for:)() || (type metadata accessor for PodcastsURLOpenCommand(), v20 = swift_dynamicCastClass(), , !v20))
    {
      if (!*(v58 + OBJC_IVAR____TtC8Podcasts11AppDelegate_urlActionRunner))
      {
        static OSLogger.actions.getter();
        sub_100168088(&unk_10057E660, qword_100403D70);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_100400790;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v26._object = 0x800000010046EE00;
        v26._countAndFlagsBits = 0xD000000000000013;
        LogMessage.StringInterpolation.appendLiteral(_:)(v26);
        v27 = type metadata accessor for URL();
        v62[3] = v27;
        v28 = sub_10000E680(v62);
        (*(*(v27 - 8) + 16))(v28, a1, v27);
        LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
        sub_100009104(v62, &unk_1005783D0, &qword_1004031E0);
        v29._countAndFlagsBits = 0xD00000000000001ALL;
        v29._object = 0x800000010046CEC0;
        LogMessage.StringInterpolation.appendLiteral(_:)(v29);
        LogMessage.init(stringInterpolation:)();
        Logger.error(_:)();

        (*(v53 + 8))(v6, v4);
        return 0;
      }

      v21 = *(v58 + OBJC_IVAR____TtC8Podcasts11AppDelegate_urlActionRunner + 8);
      sub_100168088(&qword_10057E670, &unk_100405FE0);
      swift_unknownObjectRetain();
      BaseObjectGraph.inject<A>(_:)();
      sub_10033D904(a1, &v59);
      if (v60)
      {
        sub_100184658(&v59, v61);
        swift_getObjectType();
        v22 = v55;
        v23 = v54;
        v24 = v56;
        (*(v55 + 104))(v54, enum case for ActionMetricsBehavior.notProcessed(_:), v56);
        ActionRunner.perform(_:withMetrics:asPartOf:)();
        swift_unknownObjectRelease();

        (*(v22 + 8))(v23, v24);
        sub_100004590(v61);
        v25 = v62;
      }

      else
      {
        v58 = v21;
        sub_100009104(&v59, &qword_100578C20, &unk_100403D30);
        sub_100168088(&unk_1005747F0, &unk_1004091D0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_100400790;
        v32 = *(sub_100168088(&qword_10057E678, &qword_10040BF70) + 48);
        v33 = type metadata accessor for URL();
        (*(*(v33 - 8) + 16))(v13, a1, v33);
        v34 = enum case for FlowOrigin.external(_:);
        v35 = type metadata accessor for FlowOrigin();
        (*(*(v35 - 8) + 104))(&v13[v32], v34, v35);
        (*(v46 + 104))(v13, enum case for FlowDestination.unknown(_:), v11);
        (*(v47 + 104))(v48, enum case for FlowPresentationContext.infer(_:), v9);
        sub_100168088(&qword_1005742B0, &qword_100406C70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004007C0;
        v37 = static Link.Presentation.textFollowsTintColor.getter();
        *(inited + 32) = v37;
        v38 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
        *(inited + 33) = v38;
        Link.Presentation.init(rawValue:)();
        Link.Presentation.init(rawValue:)();
        if (Link.Presentation.init(rawValue:)() != v37)
        {
          Link.Presentation.init(rawValue:)();
        }

        Link.Presentation.init(rawValue:)();
        if (Link.Presentation.init(rawValue:)() != v38)
        {
          Link.Presentation.init(rawValue:)();
        }

        (*(v49 + 104))(v51, enum case for FlowDestinationPageHeader.standard(_:), v50);
        static ActionMetrics.notInstrumented.getter();
        v39 = type metadata accessor for FlowAction();
        swift_allocObject();
        v40 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
        *(v31 + 56) = v39;
        *(v31 + 64) = sub_10002C074(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
        *(v31 + 32) = v40;
        Link.Presentation.init(rawValue:)();
        static ActionMetrics.notInstrumented.getter();
        v41 = type metadata accessor for TabChangeAction();
        swift_allocObject();
        v42 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
        swift_getObjectType();
        v61[3] = v41;
        v61[4] = sub_10002C074(&qword_10057ADD0, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);
        v61[0] = v42;
        v43 = v55;
        v44 = v54;
        v45 = v56;
        (*(v55 + 104))(v54, enum case for ActionMetricsBehavior.notProcessed(_:), v56);

        ActionRunner.perform(_:withMetrics:asPartOf:)();

        swift_unknownObjectRelease();

        (*(v43 + 8))(v44, v45);
        sub_100004590(v62);
        v25 = v61;
      }

      sub_100004590(v25);
    }
  }

  return 1;
}

void sub_100303068(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MetricsData();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    static WelcomeSheetMetricsEvent.makeData()();
    MetricsController.process(_:)();
    (*(v3 + 8))(v5, v2);
    if (qword_100572848 != -1)
    {
      swift_once();
    }

    ForegroundSyncUtil.startCloudSyncAfterPrivacy()();
  }
}

void sub_1003031A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

double sub_100303314(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v9 = v7(v8, a2, a3, a4);

  return v9;
}

id sub_100303384(void *a1)
{
  v3 = type metadata accessor for FlowPresentationHints();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowDestination();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 state];
  if (result == 3)
  {
    if (*(v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_flowController))
    {
      swift_getObjectType();
      (*(v8 + 104))(v11, enum case for FlowDestination.debugSettings(_:), v7);
      swift_unknownObjectRetain();
      static FlowPresentationHints.default.getter();
      dispatch thunk of FlowController.show(destination:hints:referrer:)();
      swift_unknownObjectRelease();
      (*(v4 + 8))(v6, v3);
      return (*(v8 + 8))(v11, v7);
    }
  }

  return result;
}

uint64_t sub_1003035E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030364C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003036B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100303718()
{
  v18 = v0;

  static Logger.downloads.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[10];
    v4 = v0[5];
    v16 = v0[6];
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[3] = v3;
    swift_errorRetain();
    sub_100168088(&qword_100575C50, &unk_100402650);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000153E0(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to start cache delete observer: %s", v6, 0xCu);
    sub_100004590(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10030390C()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v2 = type metadata accessor for ContinuousPlaybackAllowedObserver();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100303A34;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_100303A34()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100303DA0, v4, v3);
  }

  else
  {
    v2[10] = v2[2];
    v7 = (&async function pointer to dispatch thunk of ContinuousPlaybackAllowedObserver.observe() + async function pointer to dispatch thunk of ContinuousPlaybackAllowedObserver.observe());
    v5 = swift_task_alloc();
    v2[11] = v5;
    *v5 = v2;
    v5[1] = sub_100303BD8;

    return v7();
  }
}

uint64_t sub_100303BD8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100303D38, v1, v0);
}

uint64_t sub_100303D38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100303DA0()
{

  static Logger.settings.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to observe ContinuousPlaybackAllowed with error: %@", v3, 0xCu);
    sub_100009104(v4, &qword_100575B20, &qword_100401F90);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100303FC8(__n128 a1)
{
  v2 = type metadata accessor for StorageAnalyticsResponder();
  v3 = *(v2 - 8);
  v20 = v2;
  v21 = v3;
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppExitMetricsEvent.ExitKind();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for MetricsPipeline();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;

  BaseObjectGraph.inject<A>(_:)();

  (*(v7 + 104))(v9, enum case for AppExitMetricsEvent.ExitKind.taskSwitch(_:), v6);
  v14 = [objc_opt_self() sharedApplication];
  sub_10020B430(v9, v13, v14);

  (*(v7 + 8))(v9, v6);
  v15 = v19;

  v16 = v20;
  BaseObjectGraph.inject<A>(_:)();
  StorageAnalyticsResponder.endObserving()();

  (*(v21 + 8))(v5, v16);
  result = (*(v11 + 8))(v13, v10);
  *(v15 + OBJC_IVAR____TtC8Podcasts11AppDelegate_appHasBeenInBackground) = 1;
  return result;
}

uint64_t sub_1003042A4(__n128 a1)
{
  v1 = type metadata accessor for AppExitMetricsEvent.ExitKind();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for MetricsPipeline();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  BaseObjectGraph.inject<A>(_:)();

  (*(v2 + 104))(v4, enum case for AppExitMetricsEvent.ExitKind.quit(_:), v1);
  v9 = [objc_opt_self() sharedApplication];
  sub_10020B430(v4, v8, v9);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100304498(uint64_t a1)
{
  v2 = type metadata accessor for ShowInfo();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = *(a1 + 16);
  sub_10002C074(&qword_10057E770, &type metadata accessor for ShowInfo, &protocol conformance descriptor for ShowInfo);
  result = Set.init(minimumCapacity:)();
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
      sub_10038EB7C(v7, v5);
      (*(v10 - 8))(v7, v2);
      v13 += v14;
      --v8;
    }

    while (v8);
    return v16;
  }

  return result;
}

uint64_t sub_100304634(__n128 a1)
{
  v2 = type metadata accessor for ActionMetricsBehavior();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  result = NSUserActivity.stateRestorationNavigationTab.getter();
  if (result != 19)
  {
    v7 = result;
    sub_100304FEC(result);
    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    v8 = type metadata accessor for TabChangeAction();
    swift_allocObject();
    v9 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
    if (*(v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_urlActionRunner))
    {
      v10 = v9;
      swift_getObjectType();
      v12[3] = v8;
      v12[4] = sub_10002C074(&qword_10057ADD0, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);
      v12[0] = v10;
      (*(v3 + 104))(v5, enum case for ActionMetricsBehavior.notProcessed(_:), v2);
      swift_unknownObjectRetain();

      ActionRunner.perform(_:withMetrics:asPartOf:)();

      swift_unknownObjectRelease();

      sub_100305000(v7);
      (*(v3 + 8))(v5, v2);
      return sub_100004590(v12);
    }

    else
    {

      return sub_100305000(v7);
    }
  }

  return result;
}

uint64_t sub_1003048D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a1;
  v5 = type metadata accessor for MetricsActivity.PageReferrer();
  v61 = *(v5 - 8);
  __chkstk_darwin();
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v51 - v9;
  __chkstk_darwin();
  v62 = &v51 - v10;
  __chkstk_darwin();
  v12 = &v51 - v11;
  __chkstk_darwin();
  v14 = &v51 - v13;
  if (*(a2 + 16))
  {
    v15 = sub_100202D0C();
    if (v16)
    {
      sub_10001B944(*(a2 + 56) + 32 * v15, v65);
      v17 = swift_dynamicCast();
      if (v17)
      {
        v18 = v63;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = v64;
      }

      else
      {
        v19 = 0;
      }

      v56 = v19;
      v57 = v18;
      if (!*(a2 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v56 = 0;
      v57 = 0;
      if (!*(a2 + 16))
      {
        goto LABEL_16;
      }
    }

    v20 = sub_100202D0C();
    if (v21)
    {
      sub_10001B944(*(a2 + 56) + 32 * v20, v65);
      sub_100168088(&qword_100574880, &unk_100401D30);
      if (swift_dynamicCast())
      {
        v22 = v63;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

LABEL_16:
  v22 = 0;
LABEL_17:
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v25(v14, 1, 1, v23);
  if (!v22)
  {
    v25(v12, 1, 1, v23);
    sub_100009104(v12, &qword_100574040, &unk_100400AD0);
    goto LABEL_34;
  }

  v53 = v14;
  v54 = v8;
  v55 = v3;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (*(v22 + 16))
  {
    v29 = v26;
    v52 = v5;

    v30 = sub_10000F9A8(v29, v28);
    v32 = v31;

    if (v32)
    {
      sub_10001B944(*(v22 + 56) + 32 * v30, v65);

      v33 = swift_dynamicCast();
      v25(v12, v33 ^ 1u, 1, v23);
      v34 = (*(v24 + 48))(v12, 1, v23);
      v8 = v54;
      if (v34 != 1)
      {
        v14 = v53;
        sub_100009104(v53, &qword_100574040, &unk_100400AD0);

        (*(v24 + 32))(v14, v12, v23);
        v25(v14, 0, 1, v23);
        v5 = v52;
        v3 = v55;
        goto LABEL_34;
      }

      sub_100009104(v12, &qword_100574040, &unk_100400AD0);
      v5 = v52;
      goto LABEL_26;
    }

    v5 = v52;
  }

  else
  {
  }

  v8 = v54;
  v25(v12, 1, 1, v23);
  sub_100009104(v12, &qword_100574040, &unk_100400AD0);
LABEL_26:
  v3 = v55;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v22 + 16))
  {
    v37 = sub_10000F9A8(v35, v36);
    v39 = v38;

    if (v39)
    {
      sub_10001B944(*(v22 + 56) + 32 * v37, v65);

      v40 = swift_dynamicCast();
      v14 = v53;
      if (v40)
      {
        v41 = v62;
        URL.init(string:)();

        sub_100009104(v14, &qword_100574040, &unk_100400AD0);
        sub_1001B8A3C(v41, v14);
      }

      v8 = v54;
      v3 = v55;
    }

    else
    {

      v8 = v54;
      v3 = v55;
      v14 = v53;
    }
  }

  else
  {

    v14 = v53;
  }

LABEL_34:
  v42 = v62;
  v43 = v60;
  (*(v24 + 16))(v62, v60, v23);
  v25(v42, 0, 1, v23);
  sub_1001BB0E0(v14, v58);
  sub_1001BB0E0(v42, v8);
  v44 = v59;
  MetricsActivity.PageReferrer.init(app:externalURL:openURL:)();
  sub_100009104(v42, &qword_100574040, &unk_100400AD0);
  type metadata accessor for MetricsActivity();
  v45 = static MetricsActivity.shared.getter();
  MetricsActivity.firstPageEventWithReferrer.setter();

  v46 = static MetricsActivity.shared.getter();
  MetricsActivity.beginActiveCrossfireReferral(_:)();

  v47 = static MetricsActivity.shared.getter();
  MetricsActivity.setupWidgetData(_:)();

  v48 = *(v3 + OBJC_IVAR____TtC8Podcasts11AppDelegate_objectGraph);

  LOBYTE(v47) = sub_1003023A0(v43, v48, v49);

  (*(v61 + 8))(v44, v5);
  sub_100009104(v14, &qword_100574040, &unk_100400AD0);
  return v47 & 1;
}

double sub_100304FEC(uint64_t a1)
{
  if ((a1 - 1) >= 0x12)
  {
  }

  return result;
}

uint64_t sub_100305000(uint64_t result)
{
  if (result != 19)
  {
    return sub_10002ACE0(result);
  }

  return result;
}

uint64_t sub_100305010@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();
  *a1 = result;
  return result;
}

void sub_100305090(__n128 a1)
{
  v2 = *(type metadata accessor for AppEnterMetricsEvent.EnterKind() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for MetricsPipeline() - 8);
  sub_10020AFD4(v1 + v3, v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80)));
}

uint64_t sub_10030518C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10021A620;

  return sub_10030390C();
}

double sub_100305264@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

id sub_100305280()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = [objc_allocWithZone(NSOperationQueue) init];
    [v3 setMaxConcurrentOperationCount:1];
    v4 = *(v0 + 72);
    *(v0 + 72) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_100305300(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v37 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for DispatchQoS() - 8);
  __chkstk_darwin();
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      v19 = static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v20 = a5;
      v21 = static OS_os_log.restore.getter();
      os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v21, "App needs to re-download most recent episodes first.", 52, 2, _swiftEmptyArrayStorage);

      v22 = [objc_opt_self() sharedApplication];
      v23 = String._bridgeToObjectiveC()();
      v42 = sub_1003061EC;
      v43 = v6;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10000F038;
      v41 = &unk_1004ED0E8;
      v24 = _Block_copy(&aBlock);

      v25 = [v22 beginBackgroundTaskWithName:v23 expirationHandler:v24];
      _Block_release(v24);

      v6[7] = v25;
      sub_100305D20(v25, v37, v20);
    }

    else
    {
      v36 = v16;
      v28 = swift_allocObject();
      v35 = v12;
      v29 = v28;
      *(v28 + 16) = v37;
      *(v28 + 24) = a5;
      sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);

      v37 = static OS_dispatch_queue.main.getter();
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      v31[2] = a1;
      v31[3] = v30;
      v31[4] = a2;
      v31[5] = a3;
      v31[6] = sub_1003061B4;
      v31[7] = v29;
      v42 = sub_1003061C8;
      v43 = v31;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10000F038;
      v41 = &unk_1004ED0C0;
      v32 = _Block_copy(&aBlock);
      sub_1003061D8(a1, a2, a3);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1001D293C();
      sub_100168088(&unk_100575CD0, &unk_100400B50);
      sub_100182E30();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v33 = v37;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      (*(v35 + 8))(v14, v11);
      (*(v15 + 8))(v18, v36);
    }
  }

  else
  {
    v26 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v27 = static OS_os_log.restore.getter();
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Post-restore is not needed.", 27, 2, _swiftEmptyArrayStorage);

    v37(1);
  }
}

void sub_100305820(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v3 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Time given to kick off downloads restoration is up.", 51, 2, _swiftEmptyArrayStorage);

  v4 = [objc_opt_self() sharedApplication];
  [v4 endBackgroundTask:*(a1 + 56)];
}

uint64_t sub_1003058F4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t (*a4)(uint64_t))
{
  if ((a3 & 0x100) != 0)
  {
    v8 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v9 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100400790;
    sub_100030C30();
    v11 = Error.localizedDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100022C18();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Error occured during post-restore episode downloads run, error: %{public}s", 74, 2, v10);

    v7 = 0;
  }

  else
  {
    v5 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v6 = static OS_os_log.restore.getter();
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Post-restore run has been completed successfully.", 49, 2, _swiftEmptyArrayStorage);

    v7 = 1;
  }

  return a4(v7);
}

uint64_t sub_100305A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v12 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100400790;
  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = a1;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Number of episodes for post-restore download %d", v16);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = a5;
    v15[5] = a6;

    sub_1001FDE18(a1, sub_1003061F4, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100305C30(char a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v10 = static OS_os_log.restore.getter();
  if (a1)
  {
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "User decided to delete all remaining episodes in post-restore prompt.", 69, 2, _swiftEmptyArrayStorage);
    v11 = 0;
  }

  else
  {
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "User decided to download all remaining episodes in post-restore prompt.", 71, 2, _swiftEmptyArrayStorage);
    v11 = 1;
  }

  return a2(v11, a4, a5);
}

void sub_100305D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v9 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Restore previously downloaded episodes.", 39, 2, _swiftEmptyArrayStorage);

  v10 = swift_allocObject();
  *(v10 + 2) = v4;
  *(v10 + 3) = a2;
  *(v10 + 4) = a3;
  *(v10 + 5) = a1;
  v11 = sub_100168088(&qword_100574420, &unk_100401970);
  v12 = objc_allocWithZone(v11);
  v13 = &v12[*((swift_isaMask & *v12) + 0x180)];
  *v13 = 0;
  v13[8] = 2;
  v14 = &v12[*((swift_isaMask & *v12) + 0x188)];
  *v14 = sub_100306190;
  v14[1] = v10;
  v20.receiver = v12;
  v20.super_class = v11;

  v15 = objc_msgSendSuper2(&v20, "init");
  v16 = sub_100305280();
  sub_100168088(&unk_100574680, &qword_100401740);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004007B0;
  *(v17 + 32) = v15;
  sub_100009F1C(0, &unk_10057A6A0, NSOperation_ptr);
  v18 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 addOperations:isa waitUntilFinished:{0, v20.receiver, v20.super_class}];
}

uint64_t sub_100305F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a7;

  v11 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v12 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "About to restore previously downloaded episodes.", 48, 2, _swiftEmptyArrayStorage);

  sub_10027A0B4(0, sub_10030619C, v10);
}

void sub_100306030(uint64_t a1, uint64_t a2, __int16 a3, void (*a4)(BOOL, uint64_t), uint64_t a5, uint64_t a6)
{
  a4((a3 & 0x100) == 0, a2);
  v7 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v8 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Restore attempt has been processed.", 35, 2, _swiftEmptyArrayStorage);

  if (UIBackgroundTaskInvalid != a6)
  {
    v9 = [objc_opt_self() sharedApplication];
    [v9 endBackgroundTask:a6];
  }
}

uint64_t sub_100306140()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1003061D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t CarPlayBootstrap.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t CarPlayBootstrap.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

id sub_100306240()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_100306298();
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_100306298()
{
  v0 = qword_100593598;
  if (qword_100593598)
  {
    v1 = qword_100593598;
  }

  else
  {
    v2 = [objc_allocWithZone(type metadata accessor for AppDelegate(0)) init];
    v1 = v2;
    if (!qword_100593598)
    {
      qword_100593598 = v2;
      v1 = v2;
    }
  }

  v3 = objc_opt_self();
  v4 = v0;
  v5 = [v3 sharedApplication];
  v6 = [v5 delegate];

  if (v6)
  {
    if ([v6 respondsToSelector:"window"])
    {
      v7 = [v6 window];
      swift_unknownObjectRelease();
      if (v7)
      {
        v8 = sub_10001DB48();
        [v7 setRootViewController:v8];
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v1;
}

uint64_t sub_1003063C4@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v62 = type metadata accessor for PlayQueueItemActionImplementation();
  v63 = *(v62 - 8);
  __chkstk_darwin();
  v61 = v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100168088(&qword_10057AC60, &qword_100408258);
  v60 = *(v59 - 8);
  __chkstk_darwin();
  v58 = v53 - v2;
  v56 = sub_100168088(&qword_10057AC68, &unk_10040C1A0);
  v57 = *(v56 - 8);
  __chkstk_darwin();
  v55 = v53 - v3;
  v4 = sub_100168088(&qword_10057AC70, &qword_100408260);
  v54 = *(v4 - 8);
  __chkstk_darwin();
  v6 = v53 - v5;
  v7 = sub_100168088(&qword_10057AB40, &qword_10040B770);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v75 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = v53 - v10;
  __chkstk_darwin();
  v82 = v53 - v11;
  __chkstk_darwin();
  v81 = v53 - v12;
  __chkstk_darwin();
  v71 = v53 - v13;
  __chkstk_darwin();
  v70 = v53 - v14;
  __chkstk_darwin();
  v80 = v53 - v15;
  __chkstk_darwin();
  v79 = v53 - v16;
  __chkstk_darwin();
  v78 = v53 - v17;
  __chkstk_darwin();
  v72 = v53 - v18;
  __chkstk_darwin();
  v73 = v53 - v19;
  __chkstk_darwin();
  v74 = v53 - v20;
  __chkstk_darwin();
  v76 = v53 - v21;
  __chkstk_darwin();
  v77 = v53 - v22;
  __chkstk_darwin();
  v24 = v53 - v23;
  __chkstk_darwin();
  v26 = v53 - v25;
  __chkstk_darwin();
  v28 = v53 - v27;
  v69 = v53 - v27;
  v84[3] = type metadata accessor for SyncTaskScheduler();
  v84[4] = &protocol witness table for SyncTaskScheduler;
  sub_10000E680(v84);
  SyncTaskScheduler.init()();
  v29 = type metadata accessor for BaseObjectGraph();
  ClosureActionImplementation.init(scheduler:)();
  ActionDispatcher.init()();
  v53[0] = *(v8 + 16);
  (v53[0])(v28, v26, v7);
  sub_100009FAC(&qword_10057ADE0, &qword_10057AC70, &qword_100408260, &protocol conformance descriptor for ClosureActionImplementation<A>);
  ActionDispatcher.add<A>(_:)();
  v30 = *(v8 + 8);
  v65 = v8 + 8;
  v30(v26, v7);
  (*(v54 + 8))(v6, v4);
  v31 = v55;
  CompoundActionImplementation.init()();
  ActionDispatcher.init()();
  v68 = v26;
  v32 = v53[0];
  (v53[0])(v26, v24, v7);
  sub_100009FAC(&qword_10057ADE8, &qword_10057AC68, &unk_10040C1A0, &protocol conformance descriptor for CompoundActionImplementation<A>);
  v33 = v56;
  ActionDispatcher.add<A>(_:)();
  v34 = v24;
  v35 = v65;
  v30(v24, v7);
  (*(v57 + 8))(v31, v33);
  v36 = v58;
  EmptyActionImplementation.init()();
  v37 = v77;
  ActionDispatcher.init()();
  v67 = v34;
  (v32)(v34, v37, v7);
  sub_100009FAC(&qword_10057ADF0, &qword_10057AC60, &qword_100408258, &protocol conformance descriptor for EmptyActionImplementation<A>);
  v38 = v59;
  ActionDispatcher.add<A>(_:)();
  v39 = v37;
  v30(v37, v7);
  (*(v60 + 8))(v36, v38);
  v40 = v76;
  ActionDispatcher.init()();
  (v32)(v39, v40, v7);
  sub_1001BB014();
  ActionDispatcher.add<A>(_:)();
  v41 = v40;
  v30(v40, v7);
  v42 = v74;
  ActionDispatcher.init()();
  (v32)(v41, v42, v7);
  sub_1002033F8();
  ActionDispatcher.add<A>(_:)();
  v43 = v42;
  v30(v42, v7);
  v44 = v73;
  v66 = v29;
  ActionDispatcher.init()();
  (v32)(v43, v44, v7);
  sub_1003082B4();
  ActionDispatcher.add<A>(_:)();
  v30(v44, v7);
  v45 = v72;
  ActionDispatcher.init()();
  (v32)(v44, v45, v7);
  sub_10029072C();
  ActionDispatcher.add<A>(_:)();
  v30(v45, v7);
  sub_100168088(&qword_10057AE00, &unk_10040C1B0);
  sub_100009FAC(&qword_10057AE08, &qword_10057AE00, &unk_10040C1B0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057AE10, &qword_1004082B8);
  sub_100009FAC(&qword_10057AE18, &qword_10057AE10, &qword_1004082B8, &protocol conformance descriptor for PlaybackActionImplementation<A>);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057AE20, &unk_10040C1C0);
  sub_100009FAC(&qword_10057AE28, &qword_10057AE20, &unk_10040C1C0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057AE30, &qword_1004082C0);
  sub_100009FAC(&qword_10057AE38, &qword_10057AE30, &qword_1004082C0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  v46 = v61;
  PlayQueueItemActionImplementation.init()();
  v47 = v71;
  ActionDispatcher.init()();
  (v32)(v70, v47, v7);
  sub_100308308();
  v48 = v62;
  ActionDispatcher.add<A>(_:)();
  v30(v47, v7);
  (*(v63 + 8))(v46, v48);
  sub_100168088(&qword_10057AE48, &unk_10040C1D0);
  sub_100009FAC(&qword_10057AE50, &qword_10057AE48, &unk_10040C1D0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057AE58, &qword_1004082C8);
  sub_100009FAC(&qword_10057AE60, &qword_10057AE58, &qword_1004082C8, &protocol conformance descriptor for PlaybackActionImplementation<A>);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057AE68, &unk_10040C1E0);
  sub_100009FAC(&qword_10057AE70, &qword_10057AE68, &unk_10040C1E0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057AE78, &qword_1004082D0);
  sub_100009FAC(&qword_10057AE80, &qword_10057AE78, &qword_1004082D0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057E9F0, &unk_10040C1F0);
  sub_100009FAC(&qword_10057E9F8, &qword_10057E9F0, &unk_10040C1F0, &protocol conformance descriptor for PlaybackActionImplementation<A>);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057ADF8, &qword_1004082B0);
  v49 = *(v35 + 64);
  v50 = (*(v35 + 72) + 32) & ~*(v35 + 72);
  v63 = swift_allocObject();
  v51 = v63 + v50;
  (v32)(v63 + v50, v69, v7);
  (v32)(v51 + v49, v68, v7);
  v60 = 2 * v49;
  (v32)(v51 + 2 * v49, v67, v7);
  v62 = 3 * v49;
  (v32)(v51 + 3 * v49, v77, v7);
  (v32)(v51 + 4 * v49, v76, v7);
  v61 = 5 * v49;
  (v32)(v51 + 5 * v49, v74, v7);
  v59 = v51 + 6 * v49;
  v32();
  v58 = 7 * v49;
  (v32)(v51 + 7 * v49, v72, v7);
  (v32)(v51 + 8 * v49, v78, v7);
  v57 = 9 * v49;
  (v32)(v51 + 9 * v49, v79, v7);
  v56 = v51 + 10 * v49;
  v32();
  v55 = (v51 + 11 * v49);
  v32();
  v54 = v51 + 12 * v49;
  v32();
  v53[3] = v51 + 13 * v49;
  v32();
  v53[2] = v51 + 14 * v49;
  v32();
  v53[1] = 16 * v49;
  (v32)(v51 + 15 * v49, v83, v7);
  (v32)(v51 + 16 * v49, v75, v7);
  ActionDispatcher.init()();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v30(v75, v7);
  v30(v83, v7);
  v30(v82, v7);
  v30(v81, v7);
  v30(v71, v7);
  v30(v70, v7);
  v30(v80, v7);
  v30(v79, v7);
  v30(v78, v7);
  v30(v72, v7);
  v30(v73, v7);
  v30(v74, v7);
  v30(v76, v7);
  v30(v77, v7);
  v30(v67, v7);
  v30(v68, v7);
  return (v30)(v69, v7);
}

uint64_t sub_100307584(uint64_t a1)
{
  v35 = a1;
  v41 = *v1;
  v2 = sub_100168088(&qword_10057AB40, &qword_10040B770);
  v39 = *(v2 - 8);
  __chkstk_darwin();
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v33 - v4;
  v5 = type metadata accessor for OSSignposter();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = type metadata accessor for OSSignpostID();
  v40 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v33 - v14;
  static OSSignposter.bootstrap.getter();
  OSSignposter.logHandle.getter();
  v16 = v15;
  OSSignpostID.init(log:)();
  v17 = *(v6 + 8);
  v33 = v5;
  v17(v10, v5);
  static OSSignposter.bootstrap.getter();
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v20 = swift_slowAlloc();
    v34 = v11;
    v21 = v20;
    *v20 = 0;
    v22 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v22, "CarPlayBootstrap", "", v21, 2u);
    v11 = v34;
  }

  v23 = v40;
  v24 = *(v40 + 16);
  v36 = v16;
  v24(v13, v16, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v34 = OSSignpostIntervalState.init(id:isOpen:)();
  v17(v8, v33);
  v25 = sub_100306240();

  sub_100009F1C(0, &qword_100575D00, CPInterfaceController_ptr);
  v42 = v35;
  BaseObjectGraph.satisfying<A>(_:with:)();

  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_10057DDA0, &unk_10040C180);
  v26 = [objc_allocWithZone(PFCoreAnalyticsChannel) init];
  v42 = v26;
  BaseObjectGraph.satisfying<A>(_:with:)();

  v27 = v37;
  sub_1003063C4(v37);
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  v29 = v38;
  v28 = v39;
  (*(v39 + 16))(v38, v27, v2);
  ActionDispatcher.targetQueue.setter();
  v30 = *(v28 + 8);
  v30(v27, v2);
  BaseObjectGraph.satisfying<A>(_:with:)();

  v30(v29, v2);
  sub_100168088(&qword_10057A160, &qword_1004076B0);
  *(swift_allocObject() + 16) = v41;
  BaseObjectGraph.satisfying<A>(_:with:)();

  type metadata accessor for FreezableContentSubject();
  swift_allocObject();
  v42 = FreezableContentSubject.init(initialState:)();
  v31 = BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100307BA4("CarPlayBootstrap", 16, 2, v34);

  (*(v23 + 8))(v36, v11);
  return v31;
}

uint64_t sub_100307BA4(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = a3;
  v28 = a1;
  v4 = type metadata accessor for OSSignpostError();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignposter();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignposter.bootstrap.getter();
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v24 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }

  v23 = v11;
  if ((v27 & 1) == 0)
  {
    if (v28)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      v18 = v25;
      v17 = v26;
      if ((*(v25 + 88))(v6, v26) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v6, v17);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v24, v21, v28, v19, v20, 2u);

      v11 = v23;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v28 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_100307EE8(double *a1@<X8>)
{
  sub_100009F1C(0, &qword_100575D00, CPInterfaceController_ptr);
  BaseObjectGraph.inject<A>(_:)();
  v2 = [v6 carTraitCollection];
  [v2 displayScale];
  v4 = v3;

  v5 = 2.0;
  if (v4 > 0.0)
  {
    v5 = v4;
  }

  *a1 = v5;
}

uint64_t sub_100307F90@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for NativeIntentDispatcher();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_10057A160, &qword_1004076B0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  NativeIntentDispatcher.init()();
  a1[3] = v3;
  a1[4] = &protocol witness table for NativeIntentDispatcher;
  sub_10000E680(a1);
  (*(v4 + 16))();
  sub_1003081DC(v9, v8);
  NativeIntentDispatcher.next.setter();
  (*(v4 + 8))(v6, v3);
  return sub_10030824C(v9);
}

uint64_t CarPlayBootstrap.start(with:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = sub_100307584(a1);
    *(v1 + 16) = v2;
  }

  return v2;
}

uint64_t CarPlayBootstrap.deinit()
{

  return v0;
}

uint64_t CarPlayBootstrap.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003081DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057AEA0, &unk_10040C190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030824C(uint64_t a1)
{
  v2 = sub_100168088(&qword_10057AEA0, &unk_10040C190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003082B4()
{
  result = qword_10057E9E8;
  if (!qword_10057E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057E9E8);
  }

  return result;
}

unint64_t sub_100308308()
{
  result = qword_10057AE40;
  if (!qword_10057AE40)
  {
    type metadata accessor for PlayQueueItemActionImplementation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AE40);
  }

  return result;
}

uint64_t sub_100308360()
{

  v1 = OBJC_IVAR____TtC8Podcasts28PlayNextPodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayNextPodcastContextAction(uint64_t a1)
{
  result = qword_10057EA28;
  if (!qword_10057EA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100308468(uint64_t a1)
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_100308514@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28PlayNextPodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10030858C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.playPodcastNext(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_100308664(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1003086C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_100308724(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_100308784(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100318730(a1, WitnessTable);
}

uint64_t sub_1003087D8(uint64_t a1)
{
  result = sub_1003088A4(&qword_10057EB20, &unk_10040C268);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10030881C(uint64_t a1)
{
  result = sub_1003088A4(&qword_10057EB28, &unk_10040C2C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100308860(uint64_t a1)
{
  result = sub_1003088A4(&unk_10057EB30, &unk_10040C2DC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003088A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayNextPodcastContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100308914()
{
  result = qword_10057EBE0;
  if (!qword_10057EBE0)
  {
    type metadata accessor for PlayStationIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057EBE0);
  }

  return result;
}

uint64_t sub_10030896C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for TaskPriority();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for PlaybackController();
  v6 = swift_task_alloc();
  v3[10] = v6;
  *v6 = v3;
  v6[1] = sub_100308A80;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v5, v5);
}

uint64_t sub_100308A80()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100308F38;
  }

  else
  {
    v2 = sub_100308B94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100308B94()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[12] = v2;
  *v1 = v2;
  v3 = sub_100168088(&unk_1005738E0, &qword_1004010A0);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_100308C60;

  return BaseObjectGraph.inject<A>(_:)(v0 + 3, v3, v3);
}

uint64_t sub_100308C60()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100308FDC;
  }

  else
  {
    v2 = sub_100308D74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100308D74()
{
  v1 = v0[14];
  swift_getObjectType();
  j___sScTss5NeverORszABRs_rlE15currentPriorityScPvgZ();
  v2 = NSManagedObjectContextProvider.managedObjectContext(for:)();
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  if (v1)
  {
    swift_unknownObjectRelease();

    v7 = type metadata accessor for PlayStationIntent();
    (*(*(v7 - 8) + 8))(v5, v7);
    (*(v4 + 8))(v3, v6);
  }

  else
  {
    v9 = v2;
    v10 = v0[4];
    (*(v4 + 8))(v0[9], v0[7]);
    swift_unknownObjectRelease();

    *(v10 + 8) = v9;
    v11 = *(type metadata accessor for PlayStationIntentImplementation(0) + 24);
    v12 = type metadata accessor for PlayStationIntent();
    (*(*(v12 - 8) + 32))(v10 + v11, v5, v12);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100308F38()
{
  v1 = *(v0 + 48);

  v2 = type metadata accessor for PlayStationIntent();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100308FDC()
{
  v1 = *(v0 + 48);

  v2 = type metadata accessor for PlayStationIntent();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100309088()
{
  v1[2] = v0;
  sub_100168088(&unk_100573A80, &unk_100401160);
  v1[3] = swift_task_alloc();
  sub_100168088(&qword_10057EBF0, &qword_10040C3B0);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for MediaIdentifier();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for PlaybackIntent();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for StationEntity();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_10030927C, 0, 0);
}

uint64_t sub_10030927C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  type metadata accessor for PlayStationIntentImplementation(0);
  PlayStationIntent.station.getter();
  v4 = StationEntity.uuid.getter();
  v6 = v5;
  v7 = *(v3 + 8);
  v7(v1, v2);
  if (v6)
  {
    v8 = v0[13];
    v9 = v0[11];
    PlayStationIntent.station.getter();
    v10 = StationEntity.objectID.getter();
    v0[15] = v10;
    v7(v8, v9);
    if (v10)
    {
      v11 = v0[4];
      PlayStationIntent.firstEpisode.getter();
      v12 = type metadata accessor for EpisodeEntity();
      v13 = *(v12 - 8);
      v14 = (*(v13 + 48))(v11, 1, v12);
      v15 = v0[4];
      if (v14 == 1)
      {
        sub_100309A04(v0[4]);
        v16 = 0;
        v17 = 0;
      }

      else
      {
        v16 = EpisodeEntity.uuid.getter();
        v17 = v21;
        (*(v13 + 8))(v15, v12);
      }

      v22 = v0[6];
      v23 = v0[7];
      v24 = v0[5];
      v25 = v0[3];
      *v23 = v4;
      v23[1] = v6;
      v23[2] = v16;
      v23[3] = v17;
      (*(v22 + 104))(v23, enum case for MediaIdentifier.station(_:), v24);
      v26 = type metadata accessor for EpisodeListSettings();
      (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
      static Set<>.default.getter();
      PlaybackIntent.init(id:baseListSettings:options:)();
      v27 = swift_task_alloc();
      v0[16] = v27;
      *v27 = v0;
      v27[1] = sub_1003095B4;
      v28 = v0[10];

      return PlaybackController.performIntent(_:whenPossible:)(v28, 0);
    }
  }

  sub_1003099B0();
  swift_allocError();
  *v18 = 0;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_1003095B4(void *a1)
{
  *(*v2 + 136) = v1;

  if (v1)
  {
    v4 = sub_1003097A4;
  }

  else
  {

    v4 = sub_1003096D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003096D0()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1003097A4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100309874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10021A620;

  return sub_10030896C(a1, a2, a3);
}

uint64_t sub_100309924()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C51C;

  return sub_100309088();
}

unint64_t sub_1003099B0()
{
  result = qword_10057EBF8;
  if (!qword_10057EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057EBF8);
  }

  return result;
}

uint64_t sub_100309A04(uint64_t a1)
{
  v2 = sub_100168088(&qword_10057EBF0, &qword_10040C3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100309A80()
{
  result = qword_10057EC08;
  if (!qword_10057EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057EC08);
  }

  return result;
}

id AccessAppDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessAppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100309B78(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_100309D80()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedApplication];
  v5 = [v4 delegate];

  if (!v5)
  {
    goto LABEL_7;
  }

  if (([v5 respondsToSelector:"window"] & 1) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v6 = [v5 window];
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_7:

    return 0;
  }

  v7 = [v6 rootViewController];

  result = 0;
  if (v7)
  {
    type metadata accessor for NowPlayingTabController();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100309EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  sub_10016A31C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10000E584(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey, &unk_100400148);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 openURL:v10 options:isa completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10030A104(void *a1, char a2)
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v4 = type metadata accessor for FlowDestinationPageHeader();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin();
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowPresentationContext();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = v32 - v10;
  v11 = type metadata accessor for FlowDestination();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F1C(0, &qword_10057BC40, UITraitCollection_ptr);
  if ((static UITraitCollection.interfaceIdiomIsMac.getter() & 1) == 0)
  {
    type metadata accessor for FlowAction();
    (*(v7 + 104))(v9, enum case for FlowPresentationContext.showDetail(_:), v6);
    v27 = a1;
    v29 = FlowAction.init(station:presentationContext:)(v27, v9, v28);
    if (!v29)
    {
      v30 = _swiftEmptyArrayStorage;
      v17 = 7;
      goto LABEL_14;
    }

    v26 = v29;
    v17 = 7;
    goto LABEL_11;
  }

  type metadata accessor for StationDetail();
  v15 = a1;
  result = StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)();
  if (result)
  {
    v17 = result;

    if ((a2 & 1) == 0)
    {
      v30 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    v18 = StationDetail.uuid.getter();
    v20 = v19;

    *v14 = v18;
    v14[1] = v20;
    (*(v12 + 104))(v14, enum case for FlowDestination.stationSettings(_:), v11);
    v21 = [objc_opt_self() mainBundle];
    v39._object = 0xE000000000000000;
    v22._object = 0x800000010046F680;
    v22._countAndFlagsBits = 0xD000000000000010;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0;
    v32[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v39)._countAndFlagsBits;

    (*(v7 + 104))(v33, enum case for FlowPresentationContext.presentModalFormSheet(_:), v6);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;
    LOBYTE(v18) = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v18;
    v25 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v25;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v18)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v25)
    {
      Link.Presentation.init(rawValue:)();
    }

    (*(v34 + 104))(v36, enum case for FlowDestinationPageHeader.standard(_:), v35);
    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v26 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
LABEL_11:
    sub_100168088(&unk_100574680, &qword_100401740);
    v30 = swift_allocObject();
    *(v30 + 1) = xmmword_1004007B0;
    v30[4] = v26;
LABEL_14:
    sub_1001A5564(v30);

    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for TabChangeAction();
    swift_allocObject();
    v31 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
    memset(v38, 0, sizeof(v38));
    sub_10030CDE8(v31, v38, 0, v37, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

    sub_10002ACE0(v17);
    return sub_100009104(v38, &unk_1005783D0, &qword_1004031E0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10030AA54()
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  sub_100004428(v0 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appTraits, &v5);
  v1 = *(&v6 + 1);
  v2 = v7;
  sub_1000044A0(&v5, *(&v6 + 1));
  (*(v2 + 16))(v1, v2);
  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for TabChangeAction();
  swift_allocObject();
  TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  sub_100004590(&v5);
  v5 = 0u;
  v6 = 0u;

  sub_10030CDE8(v3, &v5, 0, v0, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

  sub_100009104(&v5, &unk_1005783D0, &qword_1004031E0);
}

uint64_t sub_10030ACC4(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v4 = a1;
  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for TabChangeAction();
  swift_allocObject();
  v5 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  memset(v7, 0, sizeof(v7));
  sub_10030CDE8(v5, v7, 0, v4, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

  sub_100009104(v7, &unk_1005783D0, &qword_1004031E0);
}

uint64_t sub_10030B1AC()
{
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  __chkstk_darwin();
  v1 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v23 - v13;
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v8 = 1;
  (*(v6 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v5);
  + infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  v15 = *(v10 + 8);
  v15(v12, v9);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 16) = v24;
  aBlock[4] = sub_10030D3D4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004ED4A8;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E584(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100182E30();
  v20 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v23;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v28 + 8))(v1, v20);
  (*(v26 + 8))(v4, v27);
  return (v15)(v14, v9);
}

void sub_10030B614(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
    goto LABEL_10;
  }

  if (([v6 respondsToSelector:"window"] & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v7 = [v6 window];
  swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_10:

LABEL_12:
    sub_10030B8A0(v9);
    return;
  }

  v8 = [v7 rootViewController];

  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = [v8 presentedViewController];

  if (!v10)
  {
    goto LABEL_12;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    goto LABEL_12;
  }

  v11 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v12 = static OS_os_log.iTunesMigration.getter();
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Deferring presentation of migration screen until user acknowledgement received.", 79, 2, _swiftEmptyArrayStorage);

  swift_getObjectType();
  *(swift_allocObject() + 16) = a1;
  v13 = a1;
  dispatch thunk of UserAcknowledgementRequiring.deferUntilAcknowledged(_:)();
}

void sub_10030B8A0(__n128 a1)
{
  v2 = type metadata accessor for FlowPresentationContext();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowPresentationHints();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FlowDestination();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin();
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_migrationPresentationCanceled) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_migrationPresentationCanceled) = 0;
    (*(v11 + 104))(v14, enum case for FlowDestination.migration(_:), v10, v12);
    (*(v3 + 104))(v5, enum case for FlowPresentationContext.presentModalCard(_:), v2);
    FlowPresentationHints.init(context:animate:)();
    v17 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v18 = v1;
    v19 = static OS_os_log.iTunesMigration.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v19, "Present migration screen.", 25, 2, _swiftEmptyArrayStorage);

    v20 = *(v18 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate);
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 sharedApplication];
    v24 = [v23 delegate];

    if (v24)
    {
      if (([v24 respondsToSelector:"window"] & 1) == 0)
      {

LABEL_13:
        swift_unknownObjectRelease();
        goto LABEL_14;
      }

      v25 = [v24 window];
      swift_unknownObjectRelease();
      if (v25)
      {
        v26 = [v25 rootViewController];

        if (!v26)
        {
          goto LABEL_14;
        }

        v27 = UIResponder.nearestFlowController.getter();

        if (!v27)
        {
          goto LABEL_14;
        }

        swift_getObjectType();
        dispatch thunk of FlowController.show(destination:hints:referrer:)();
        goto LABEL_13;
      }
    }

LABEL_14:
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
    return;
  }

  v15 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v29 = static OS_os_log.iTunesMigration.getter();
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v29, "Not showing migration screen, presentation has been cancelled.", 62, 2, _swiftEmptyArrayStorage);
  v16 = v29;
}

void sub_10030BCF8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v34 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v36 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v30 - v10;
  v0[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_migrationPresentationCanceled] = 1;
  v12 = *&v0[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate];
  v13 = objc_opt_self();
  v37 = v12;
  v14 = [v13 sharedApplication];
  v15 = [v14 delegate];

  if (!v15)
  {
LABEL_9:
    v29 = v37;

    return;
  }

  if ([v15 respondsToSelector:"window"])
  {
    v16 = [v15 window];
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = [v16 rootViewController];

      if (!v17)
      {
        return;
      }

      v37 = [v17 presentedViewController];

      if (!v37)
      {
        return;
      }

      type metadata accessor for MigrationViewController();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = v18;
        v31 = v0;
        dispatch thunk of MigrationViewController.isAcknowledgementRequired.setter();
        v20 = static os_log_type_t.default.getter();
        sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
        v21 = static OS_os_log.iTunesMigration.getter();
        os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Dismiss migration screen.", 25, 2, _swiftEmptyArrayStorage);

        sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
        v32 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v22 = *(v36 + 8);
        v36 += 8;
        v33 = v22;
        v22(v9, v7);
        v23 = swift_allocObject();
        v24 = v31;
        *(v23 + 16) = v31;
        *(v23 + 24) = v19;
        aBlock[4] = sub_10030CDE0;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000F038;
        aBlock[3] = &unk_1004ED458;
        v25 = _Block_copy(aBlock);
        v26 = v24;
        v27 = v37;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10000E584(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100168088(&unk_100575CD0, &unk_100400B50);
        sub_100182E30();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v28 = v32;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v25);

        (*(v35 + 8))(v3, v1);
        (*(v34 + 8))(v6, v4);
        v33(v11, v7);
        return;
      }
    }

    goto LABEL_9;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_10030C2C0(uint64_t a1, void *a2)
{
  v4 = static Link.Presentation.textFollowsTintColor.getter();
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v4)
  {
    Link.Presentation.init(rawValue:)();
  }

  type metadata accessor for DismissAction();
  swift_allocObject();
  v5 = DismissAction.init(title:animationBehavior:presentationStyle:)();
  v8[3] = type metadata accessor for MigrationViewController();
  v6 = [a2 view];
  sub_10030CDE8(v5, v8, v6, a1, &type metadata accessor for DismissAction, &qword_10057EEC8, &type metadata accessor for DismissAction);

  return sub_100009104(v8, &unk_1005783D0, &qword_1004031E0);
}

uint64_t sub_10030C448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v27 = *(v11 - 8);
  v28 = v11;
  __chkstk_darwin();
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057EEB8, &qword_10040C520);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_100400790;
  static UTType.folder.getter();
  v14 = objc_allocWithZone(UIDocumentPickerViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v14 initForOpeningContentTypes:isa];

  [v16 setDelegate:v3];
  [v16 setAllowsMultipleSelection:0];
  v17 = &v3[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_onLibrarySelection];
  v18 = *&v3[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_onLibrarySelection];
  v19 = *&v3[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_onLibrarySelection + 8];
  *v17 = v26;
  v17[1] = a2;

  sub_1000112B4(v18, v19);
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v16;
  aBlock[4] = sub_10030CDD8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004ED408;
  v22 = _Block_copy(aBlock);
  v23 = v3;
  v24 = v16;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E584(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100182E30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v31 + 8))(v7, v5);
  (*(v29 + 8))(v10, v30);
  return (*(v27 + 8))(v13, v28);
}

void sub_10030C8E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate);
  v4 = objc_opt_self();
  v10 = v3;
  v5 = [v4 sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
    goto LABEL_6;
  }

  if ([v6 respondsToSelector:"window"])
  {
    v7 = [v6 window];
    swift_unknownObjectRelease();
    if (v7)
    {
      v9 = [v7 rootViewController];

      if (!v9)
      {
        return;
      }

      [v9 presentViewController:a2 animated:1 completion:0];
      v8 = v9;
      goto LABEL_7;
    }

LABEL_6:
    v8 = v10;
LABEL_7:

    return;
  }

  swift_unknownObjectRelease();
}

void sub_10030CAF0(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v5 = &v11 - v4;
  sub_1001BB0E0(a1, &v11 - v4);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9 = 0;
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v9 = v10;
    (*(v7 + 8))(v5, v6);
  }

  (*(a2 + 16))(a2, v9);
}

id sub_10030CD40(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10030CDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v41 = a3;
  v42 = a4;
  v40 = a2;
  v11 = type metadata accessor for ActionOutcome();
  v38 = *(v11 - 8);
  v39 = v11;
  __chkstk_darwin();
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin();
  v13 = type metadata accessor for OSLogger();
  v35 = *(v13 - 8);
  v36 = v13;
  __chkstk_darwin();
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActionMetricsBehavior();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB60, &unk_100409160);
  v20 = __chkstk_darwin();
  v22 = &v34 - v21;
  v45 = a5(0, v20);
  v23 = sub_10000E584(a6, a7, &protocol conformance descriptor for Action);
  v24 = *(v42 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate);
  v46 = v23;
  v44[0] = a1;
  if (*(v24 + OBJC_IVAR____TtC8Podcasts11AppDelegate_urlActionRunner))
  {
    type metadata accessor for ActionRunnerOptions();
    swift_retain_n();

    swift_unknownObjectRetain();
    BaseObjectGraph.__allocating_init(_:)();
    v25 = type metadata accessor for InteractionContext();
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    ActionRunnerOptions.withActionOrigin(context:sender:view:)();

    sub_100009104(v22, &unk_10057BB60, &unk_100409160);
    swift_getObjectType();
    (*(v17 + 104))(v19, enum case for ActionMetricsBehavior.fromAction(_:), v16);
    v26 = ActionRunner.perform(_:withMetrics:asPartOf:)();

    swift_unknownObjectRelease();

    (*(v17 + 8))(v19, v16);
  }

  else
  {

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660, qword_100403D70);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._object = 0x800000010046F5B0;
    v27._countAndFlagsBits = 0xD000000000000012;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    v28 = v45;
    v29 = sub_1000044A0(v44, v45);
    v43[3] = v28;
    v30 = sub_10000E680(v43);
    (*(*(v28 - 8) + 16))(v30, v29, v28);
    LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
    sub_100009104(v43, &unk_1005783D0, &qword_1004031E0);
    v31._countAndFlagsBits = 0xD00000000000001ALL;
    v31._object = 0x800000010046CEC0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    LogMessage.init(stringInterpolation:)();
    v32 = v36;
    Logger.error(_:)();

    (*(v35 + 8))(v15, v32);
    sub_100168088(&unk_100578110, &qword_1004056D0);
    (*(v38 + 104))(v37, enum case for ActionOutcome.unsupported(_:), v39);
    v26 = Promise.__allocating_init(value:)();
  }

  sub_100004590(v44);
  return v26;
}

void sub_10030D400()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v14 - v4;
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_self() searchUrlForSearchText:v7];

  if (v8)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v5, v3, v0);
    v9 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    sub_10016A31C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_10000E584(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey, &unk_100400148);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 openURL:v12 options:isa completionHandler:0];

    (*(v1 + 8))(v5, v0);
  }
}

uint64_t sub_10030D638()
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v0 = type metadata accessor for FlowDestinationPageHeader();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowPresentationContext();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlowDestination();
  v8 = __chkstk_darwin();
  (*(v10 + 104))(v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowDestination.downloadingEpisodes(_:), v8);
  (*(v5 + 104))(v7, enum case for FlowPresentationContext.infer(_:), v4);
  sub_100168088(&qword_1005742B0, &qword_100406C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  v12 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v12;
  v13 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v13;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v12)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v13)
  {
    Link.Presentation.init(rawValue:)();
  }

  (*(v1 + 104))(v3, enum case for FlowDestinationPageHeader.standard(_:), v0);
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v14 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
  memset(v17, 0, sizeof(v17));
  sub_10030CDE8(v14, v17, 0, v16[1], &type metadata accessor for FlowAction, &unk_10057A0D0, &type metadata accessor for FlowAction);

  return sub_100009104(v17, &unk_1005783D0, &qword_1004031E0);
}

uint64_t sub_10030D9F8(void (*a1)(char *, void, uint64_t), void *a2, int a3, __n128 a4)
{
  v48 = a3;
  v44 = a1;
  v6 = type metadata accessor for FlowDestinationPageHeader();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin();
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FlowPresentationContext();
  v10 = *(v53 - 8);
  __chkstk_darwin();
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v44 - v13;
  v15 = type metadata accessor for FlowDestination();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin().n128_u64[0];
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v12;
  v52 = v9;
  if (a2 && (v20 = [a2 uuid]) != 0)
  {
    v21 = v20;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v50 = 0;
    v23 = 0;
  }

  v49 = v4;
  sub_100168088(&unk_10057AB00, &qword_100406C50);

  BaseObjectGraph.inject<A>(_:)();

  sub_1000044A0(&v55, *(&v56 + 1));
  dispatch thunk of EpisodeControllerProtocol.dismissNowPlaying(animated:completion:)();
  sub_100004590(&v55);
  if (v23)
  {
    LOBYTE(v55) = 1;
    v54 = 1;
    *v19 = v50;
    *(v19 + 1) = v23;
    *(v19 + 3) = 0;
    *(v19 + 4) = 0;
    *(v19 + 2) = 0;
    v19[40] = 1;
    *(v19 + 6) = 0;
    v19[56] = 1;
    (*(v16 + 104))(v19, enum case for FlowDestination.episodeDetails(_:), v15);
    v24 = *(v10 + 104);
    v24(v14, enum case for FlowPresentationContext.infer(_:), v53);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;

    v26 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v26;
    v27 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v27;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v26)
    {
      Link.Presentation.init(rawValue:)();
    }

    v44 = v24;

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v27)
    {
      Link.Presentation.init(rawValue:)();
    }

    v28 = v51;
    (*(v45 + 104))(v47, enum case for FlowDestinationPageHeader.standard(_:), v46);
    static ActionMetrics.notInstrumented.getter();
    v29 = type metadata accessor for FlowAction();
    swift_allocObject();
    v30 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    if (v48)
    {
      v31 = objc_opt_self();
      v32 = String._bridgeToObjectiveC()();
      v33 = [v31 playEpisodeUuid:v32];

      v34 = v53;
      if (!v33)
      {
      }

      v35 = [objc_opt_self() defaultInstance];
      [v35 playManifest:v33 reason:3];

      v44(v28, enum case for FlowPresentationContext.showDetail(_:), v34);
      goto LABEL_17;
    }

    v36 = v44;
    v37 = v53;
  }

  else
  {
    v29 = type metadata accessor for FlowAction();
    v36 = *(v10 + 104);
    v28 = v51;
    v37 = v53;
    v36(v51, enum case for FlowPresentationContext.infer(_:), v53);
    v38 = v44;
    v39 = v52;
    static ActionMetrics.notInstrumented.getter();
    result = FlowAction.init(podcast:presentationContext:actionMetrics:)(v38, v28, v39, v40);
    if (!result)
    {
      return result;
    }

    v30 = result;
  }

  v36(v28, enum case for FlowPresentationContext.showDetail(_:), v37);
LABEL_17:
  dispatch thunk of FlowAction.presentationContext.setter();
  sub_100168088(&unk_1005747F0, &unk_1004091D0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100400790;
  type metadata accessor for FlowAction();
  *(v42 + 56) = v29;
  *(v42 + 64) = sub_10000E584(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  *(v42 + 32) = v30;
  swift_retain_n();
  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for TabChangeAction();
  swift_allocObject();
  v43 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  v55 = 0u;
  v56 = 0u;
  sub_10030CDE8(v43, &v55, 0, v49, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

  return sub_100009104(&v55, &unk_1005783D0, &qword_1004031E0);
}

void sub_10030E15C(char *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v46 = a5;
  LODWORD(v40) = a4;
  v49 = a2;
  v50 = a3;
  v41 = a1;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowDestinationPageHeader();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin();
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FlowPresentationContext();
  v10 = *(v48 - 8);
  __chkstk_darwin();
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v39 - v13;
  v14 = type metadata accessor for FlowDestination();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v5;
  sub_100168088(&unk_10057AB00, &qword_100406C50);

  BaseObjectGraph.inject<A>(_:)();

  sub_1000044A0(&v52, *(&v53 + 1));
  dispatch thunk of EpisodeControllerProtocol.dismissNowPlaying(animated:completion:)();
  v18 = v50;
  sub_100004590(&v52);
  if (v18)
  {
    v41 = v12;
    LOBYTE(v52) = 1;
    v51 = 1;
    *v17 = v49;
    *(v17 + 1) = v18;
    *(v17 + 3) = 0;
    *(v17 + 4) = 0;
    *(v17 + 2) = 0;
    v17[40] = 1;
    *(v17 + 6) = 0;
    v17[56] = 1;
    (*(v15 + 104))(v17, enum case for FlowDestination.episodeDetails(_:), v14);
    v19 = v48;
    v40 = *(v10 + 104);
    v40(v42, enum case for FlowPresentationContext.infer(_:), v48);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;

    v21 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v21;
    v22 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v22;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v21)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v22)
    {
      Link.Presentation.init(rawValue:)();
    }

    v12 = v41;
    (*(v43 + 104))(v45, enum case for FlowDestinationPageHeader.standard(_:), v44);
    static ActionMetrics.notInstrumented.getter();
    v23 = type metadata accessor for FlowAction();
    swift_allocObject();
    v24 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    if (v46)
    {
      v25 = objc_opt_self();
      v26 = String._bridgeToObjectiveC()();
      v27 = [v25 playEpisodeUuid:v26];

      v28 = v40;
      if (!v27)
      {

        return;
      }

      v29 = [objc_opt_self() defaultInstance];
      [v29 playManifest:v27 reason:3];
    }

    else
    {
      v28 = v40;
    }

    goto LABEL_12;
  }

  v23 = type metadata accessor for FlowAction();
  v28 = *(v10 + 104);
  v19 = v48;
  v28(v12, enum case for FlowPresentationContext.infer(_:), v48);
  v30 = v41;
  static ActionMetrics.notInstrumented.getter();
  v32 = FlowAction.init(podcast:presentationContext:actionMetrics:)(v30, v12, v7, v31);
  if (v32)
  {
    v24 = v32;
LABEL_12:
    v28(v12, enum case for FlowPresentationContext.showDetail(_:), v19);
    dispatch thunk of FlowAction.presentationContext.setter();
    sub_100168088(&unk_1005747F0, &unk_1004091D0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100400790;
    type metadata accessor for FlowAction();
    *(v33 + 56) = v23;
    *(v33 + 64) = sub_10000E584(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    *(v33 + 32) = v24;
    swift_retain_n();
    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for TabChangeAction();
    swift_allocObject();
    v34 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
    v52 = 0u;
    v53 = 0u;
    sub_10030CDE8(v34, &v52, 0, v47, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

    sub_100009104(&v52, &unk_1005783D0, &qword_1004031E0);
    return;
  }

  if (v40)
  {
    v35 = [objc_allocWithZone(MTEpisodeUnavailableUtil) init];
    v36 = [v30 title];
    if (v36)
    {
      v37 = v36;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v38 = String._bridgeToObjectiveC()();

    [v35 showDialogForReason:3 podcastTitle:v38 completion:0];
  }
}

void sub_10030E928()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    if ([v1 respondsToSelector:"window"])
    {
      v2 = [v1 window];
      swift_unknownObjectRelease();
      v1 = [v2 rootViewController];
    }

    else
    {
      swift_unknownObjectRelease();
      v1 = 0;
    }
  }

  v3 = [v1 tabBarController];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 selectedViewController];
  if (!v5)
  {

LABEL_10:
    return;
  }

  v6 = v5;
  v7 = [v5 tabBarItem];

  if (v7)
  {
    [v7 tag];
  }

  else
  {
    __break(1u);
  }
}