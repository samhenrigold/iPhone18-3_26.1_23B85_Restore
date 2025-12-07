uint64_t ComponentRenderEventSignposts.capturePreloadStatus(isReadyForDisplay:)(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 48);
  if (v3 <= 2)
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      return result;
    }
  }

  else if (v3 == 3)
  {
  }

  if (v2)
  {
    *(v1 + 48) = 0;
    return result;
  }

  if (*(v1 + 24))
  {
    v5 = 1;
  }

  else
  {
    if (!*(v1 + 8))
    {
      return result;
    }

    v5 = 2;
  }

  *(v1 + 48) = v5;
  return result;
}

void ArtworkVideoReportingController.videoArtworkWillBeginLoading(at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v30 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    v36 = v9;
    swift_beginAccess();
    v14 = *(v5 + 88);

    v34 = v14;
    Dictionary.subscript.getter();

    v15 = v37;
    v35 = a1;
    if (v37 == 1)
    {
      v15 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v16 = 0;
    }

    else
    {
      v32 = v41;
      v33 = v42;
      v16 = v40;
      v31 = v39;
      v30 = v38;
    }

    v17 = objc_opt_self();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v13, v10);
    v19 = [v17 serverTimeFromDate:isa];

    (*(v7 + 16))(v36, v35, v6);
    v20 = v30;
    v37 = v15;
    v38 = v30;
    v21 = v31;
    v39 = v31;
    v40 = v19;
    v22 = v32;
    v23 = v33;
    v41 = v32;
    v42 = v33;
    v43 = 4;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v24 = v15;
    v25 = v20;
    v26 = v21;
    v27 = v19;
    v28 = v22;
    v29 = v23;
    Dictionary.subscript.setter();
    swift_endAccess();
  }
}

void ArtworkVideoReportingController.videoArtworkDidCancelLoading(at:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v32 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v2[16] == 1)
  {
    swift_beginAccess();
    v13 = *(v4 + 88);

    v39 = v13;
    Dictionary.subscript.getter();

    v14 = v40;
    if (v40 != 1)
    {
      v37 = v46;
      v32[0] = v45;
      v35 = v43;
      v36 = v44;
      v34 = v42;
      v33 = v41;
      v15 = objc_opt_self();
      Date.init()();
      v32[1] = v2;
      v16.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v17 = a1;
      v38 = a1;
      isa = v16.super.isa;
      (*(v10 + 8))(v12, v9);
      v19 = [v15 serverTimeFromDate:isa];

      (*(v6 + 16))(v8, v17, v5);
      v20 = v33;
      v40 = v14;
      v41 = v33;
      v21 = v34;
      v23 = v35;
      v22 = v36;
      v42 = v34;
      v43 = v35;
      v44 = v36;
      v45 = v19;
      v46 = v37;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      v39 = v14;
      v24 = v20;
      v25 = v21;
      v26 = v23;
      v27 = v22;
      v28 = v19;
      Dictionary.subscript.setter();
      swift_endAccess();
      v29 = v38;
      ArtworkVideoReportingController.recordEvent(at:)(v38, v30);
      ArtworkVideoReportingController.resetPlaybackEventProperties(at:)(v29, v31);
    }
  }
}

void ArtworkVideoReportingController.videoArtworkDidStartPlayback(at:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v30 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v2[16] == 1)
  {
    swift_beginAccess();
    v13 = *(v4 + 88);

    v37 = v13;
    Dictionary.subscript.getter();

    v14 = v38;
    if (v38 != 1)
    {
      v35 = v44;
      v34 = v43;
      v30[0] = v42;
      v33 = v41;
      v32 = v40;
      v31 = v39;
      v15 = objc_opt_self();
      Date.init()();
      v30[1] = v2;
      v16.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v17 = a1;
      v36 = a1;
      isa = v16.super.isa;
      (*(v10 + 8))(v12, v9);
      v19 = [v15 serverTimeFromDate:isa];

      (*(v6 + 16))(v8, v17, v5);
      v20 = v31;
      v38 = v14;
      v39 = v31;
      v21 = v32;
      v23 = v33;
      v22 = v34;
      v40 = v32;
      v41 = v33;
      v42 = v19;
      v43 = v34;
      v44 = v35;
      swift_beginAccess();
      type metadata accessor for Dictionary();
      v37 = v14;
      v24 = v20;
      v25 = v21;
      v26 = v23;
      v27 = v19;
      v28 = v22;
      Dictionary.subscript.setter();
      swift_endAccess();
      ArtworkVideoReportingController.recordEvent(at:)(v36, v29);
    }
  }
}

void ArtworkVideoReportingController.recordEvent(at:)(void *a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v53[-v8];
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    swift_beginAccess();

    Dictionary.subscript.getter();

    v10 = v82;
    if (v82 != 1)
    {
      v67 = a1;
      v60 = v7;
      v61 = v5;
      v65 = v9;
      v62 = v4;
      v11 = *(&v82 + 1);
      v12 = *(&v83 + 1);
      v13 = v83;
      v14 = *(&v84 + 1);
      v15 = v84;
      v16 = v85;
      v88[0] = v82;
      v88[1] = v83;
      v88[2] = v84;
      v89 = v85;
      swift_beginAccess();
      v17 = *(v2 + 24);
      if (v17)
      {
        v66 = v16;
        v18 = *(v2 + 32);

        v19 = v17(v67);
        v63 = v20;
        v64 = v19;
        v22 = v21;
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v17, v18);
        v23 = v14;
        v24 = v10;
        v25 = v11;
        v26 = v13;
        v27 = v12;
        v28 = v15;
        specialized MetricsEvent.ComponentRender.init(signposts:context:)(v88, v64, v63, v22, &v78);
        v76 = v80;
        v77[0] = *v81;
        *(v77 + 9) = *&v81[9];
        v74 = v78;
        v75 = v79;
        v29 = *v81;
        if (*v81)
        {
          v82 = v78;
          v83 = v79;
          v84 = v80;
          v85 = *v81;
          v86 = *&v81[8];
          v87 = v81[24];
          if (*&v81[8])
          {
            v56 = v11;
            v57 = v13;
            v58 = v10;
            v59 = v12;
            v63 = v15;
            v64 = v14;
            v30 = *&v81[8];
            [v30 doubleValue];
            v32 = v31;
            [v29 doubleValue];
            v34 = v33;
            if (one-time initialization token for motion != -1)
            {
              swift_once();
            }

            v35 = type metadata accessor for Logger();
            __swift_project_value_buffer(v35, static Logger.motion);
            v37 = v61;
            v36 = v62;
            v38 = *(v61 + 16);
            v39 = v65;
            v38(v65, v67, v62);
            v72[2] = v76;
            v73[0] = v77[0];
            *(v73 + 9) = *(v77 + 9);
            v72[0] = v74;
            v72[1] = v75;
            outlined init with copy of MetricsEvent.ComponentRender(v72, v71);
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.debug.getter();
            outlined destroy of MetricsEvent.ComponentRender?(&v78);
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v67 = v30;
              v43 = v37;
              v44 = v42;
              v55 = swift_slowAlloc();
              v70 = v55;
              *v44 = 136315650;
              v71[0] = v82;
              v69 = v82;
              v54 = v41;
              outlined init with copy of TaskPriority?(v71, &v68, &_sSSSgMd, &_sSSSgMR);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
              v45 = String.init<A>(describing:)();
              v47 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v45, v46, &v70);

              *(v44 + 4) = v47;
              *(v44 + 12) = 2080;
              v48 = v65;
              v38(v60, v65, v36);
              v49 = String.init<A>(describing:)();
              v51 = v50;
              (*(v43 + 8))(v48, v36);
              v52 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v49, v51, &v70);

              *(v44 + 14) = v52;
              *(v44 + 22) = 2048;
              *(v44 + 24) = v32 - v34;
              _os_log_impl(&_mh_execute_header, v40, v54, "Item with id: %s at index: %s loaded enough data to start playback in %f ms.", v44, 0x20u);
              swift_arrayDestroy();
            }

            else
            {

              (*(v37 + 8))(v39, v36);
            }

            v15 = v63;
            v14 = v64;
            v10 = v58;
            v12 = v59;
            v11 = v56;
            v13 = v57;
          }

          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          MetricsReportingController.recordComponentRenderEvent(_:)(&v82);
          outlined destroy of MetricsEvent.ComponentRender?(&v78);
        }
      }

      outlined consume of ComponentRenderEventSignposts?(v10, v11, v13, v12, v15, v14);
    }
  }
}

void ArtworkVideoReportingController.resetPlaybackEventProperties(at:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - v6;
  swift_beginAccess();

  Dictionary.subscript.getter();

  v8 = v20;
  if (v20 != 1)
  {
    v18 = v21;
    v9 = v24;
    v19 = v23;
    v10 = v25;
    v11 = v26;

    if (v9)
    {

      v11 = 3;
    }

    (*(v5 + 16))(v7, a1, v4);
    v13 = v18;
    v12 = v19;
    v20 = v8;
    v21 = v18;
    v22 = 0;
    v23 = v19;
    v24 = 0;
    v25 = 0;
    v26 = v11;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v14 = v8;
    v15 = v13;
    v16 = v12;
    Dictionary.subscript.setter();
    swift_endAccess();
  }
}

uint64_t *ArtworkVideoReportingController.deinit()
{
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t ArtworkVideoReportingController.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ComponentRenderEventSignposts(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ComponentRenderEventSignposts(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t specialized MetricsEvent.ComponentRender.init(signposts:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = a1[3];
  v43 = v8;
  if (v8)
  {
    v11 = *a1;
    v41 = a1[1];
    v42 = v11;
    v12 = a1[2];
    v13 = a1[5];
    v39 = a1[4];
    v40 = v12;
    v38 = v13;
    outlined init with copy of TaskPriority?(&v43, v29, &_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    outlined init with copy of TaskPriority?(&v42, v29, &_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    outlined init with copy of TaskPriority?(&v41, v29, &_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    outlined init with copy of TaskPriority?(&v40, v29, &_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    outlined init with copy of TaskPriority?(&v39, v29, &_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    outlined init with copy of TaskPriority?(&v38, v29, &_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    outlined destroy of ComponentRenderEventSignposts(a1);
    v14 = *(a1 + 48);
    *&v23 = a2;
    *(&v23 + 1) = a3;
    LOBYTE(v24) = a4;
    *(&v24 + 1) = v42;
    *&v25 = v41;
    *(&v25 + 1) = v40;
    *&v26 = v8;
    *(&v26 + 1) = v39;
    v27 = v38;
    v28 = v14;
    v29[0] = a2;
    v29[1] = a3;
    v30 = a4;
    v31 = v42;
    v32 = v41;
    v33 = v40;
    v34 = v8;
    v35 = v39;
    v36 = v38;
    v37 = v14;
    outlined init with copy of MetricsEvent.ComponentRender(&v23, &v22);
    result = outlined destroy of MetricsEvent.ComponentRender(v29);
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
  }

  else
  {

    result = outlined destroy of ComponentRenderEventSignposts(a1);
    v20 = 0;
    v21 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a5 = v16;
  *(a5 + 16) = v17;
  *(a5 + 32) = v18;
  *(a5 + 48) = v19;
  *(a5 + 64) = v20;
  *(a5 + 72) = v21;
  return result;
}

void outlined consume of ComponentRenderEventSignposts?(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1 != 1)
  {
  }
}

uint64_t outlined destroy of MetricsEvent.ComponentRender?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV15ComponentRenderVSgMd, &_s9MusicCore12MetricsEventV15ComponentRenderVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Library.Menu.Revision.selected.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t CarNowPlayingMetrics.Data.init(timePlayed:tracksPlayed:rangeStartTime:sharedSessionIds:sharedSessionMaxParticipants:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CarNowPlayingMetrics.Data.CodingKeys()
{
  v1 = *v0;
  v2 = 0x79616C50656D6974;
  v3 = 0x61745365676E6172;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50736B63617274;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CarNowPlayingMetrics.Data.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CarNowPlayingMetrics.Data.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CarNowPlayingMetrics.Data.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CarNowPlayingMetrics.Data.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CarNowPlayingMetrics.Data.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore20CarNowPlayingMetricsO4DataV10CodingKeys33_72B309D1889FEFB88219B42EA4FB9CB6LLOGMd, &_ss22KeyedEncodingContainerVy9MusicCore20CarNowPlayingMetricsO4DataV10CodingKeys33_72B309D1889FEFB88219B42EA4FB9CB6LLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 24);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[14] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys;
  if (!lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys;
  if (!lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys;
  if (!lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys;
  if (!lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys);
  }

  return result;
}

double CarNowPlayingMetrics.Data.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized CarNowPlayingMetrics.Data.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double static CarNowPlayingMetrics.persistedMetricsData(for:)@<D0>(uint64_t a2@<X8>)
{
  specialized static CarNowPlayingMetrics.persistedMetricsData(for:)(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t Logger.carMetrics.unsafeMutableAddressor()
{
  if (one-time initialization token for carMetrics != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.carMetrics);
}

void static CarNowPlayingMetrics.storeMetricsData(_:for:)(__int128 *a1, char a2)
{
  if (*(a1 + 3))
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    lazy protocol witness table accessor for type CarNowPlayingMetrics.Data and conformance CarNowPlayingMetrics.Data();
    v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v5 = v4;

    v6 = [objc_opt_self() standardUserDefaults];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = String._bridgeToObjectiveC()();

    [v6 setValue:isa forKey:v8];

    outlined consume of Data._Representation(v3, v5);
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v9 = String._bridgeToObjectiveC()();

    [v2 setValue:0 forKey:v9];
  }
}

Swift::Void __swiftcall CarNowPlayingMetrics.Reporter.reportPlaysSummaryEventIfNeeded(for:)(MusicCore::CarNowPlayingMetrics::EventType a1)
{
  v2 = a1;
  v62 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v61 = &v58 - v3;
  v4 = type metadata accessor for Calendar();
  v59 = *(v4 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v64 = *(v6 - 8);
  __chkstk_darwin();
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v58 - v8;
  if (one-time initialization token for carMetrics != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.carMetrics);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v65 = v2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v68 = v15;
    *v14 = 136446210;
    LOBYTE(v72[0]) = v2 & 1;
    v16 = String.init<A>(describing:)();
    v18 = v9;
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v68);

    *(v14 + 4) = v19;
    v9 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reporting %{public}s playsSummary event if needed", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = COERCE_DOUBLE(MetricsReportingController.carPlayPostFrequency.getter());
  if (v21)
  {
    v22 = 86400000.0;
  }

  else
  {
    v22 = v20;
  }

  v23 = v65 & 1;
  specialized static CarNowPlayingMetrics.persistedMetricsData(for:)(&v68);
  v24 = v70;
  if (v70)
  {
    v25 = v69;
    v26 = v71;
    *v72 = v68;
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v28 = v27;
    v29 = *(v64 + 8);
    v29(v9, v6);
    v30 = (v28 - v25) * 1000.0;
    if (v22 < v30)
    {
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v32 = v31;
      v29(v9, v6);
      v33 = v63;
      static Calendar.current.getter();
      v34 = v60;
      static Date.now.getter();
      Calendar.startOfDay(for:)();
      v29(v34, v6);
      (*(v59 + 8))(v33, v4);
      Date.timeIntervalSince1970.getter();
      v36 = v35;
      v29(v9, v6);
      v37 = type metadata accessor for TaskPriority();
      v38 = v61;
      (*(*(v37 - 8) + 56))(v61, 1, 1, v37);
      type metadata accessor for MainActor();
      v39 = static MainActor.shared.getter();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = &protocol witness table for MainActor;
      *(v40 + 32) = *v72;
      *(v40 + 48) = v25;
      *(v40 + 56) = v24;
      *(v40 + 64) = v26;
      *(v40 + 72) = v36;
      *(v40 + 80) = v23;
      *(v40 + 88) = v32;
      *(v40 + 96) = v62;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v38, &async function pointer to partial apply for closure #1 in CarNowPlayingMetrics.Reporter.reportPlaysSummaryEventIfNeeded(for:), v40);

      return;
    }

    outlined destroy of TaskPriority?(&v68, &_s9MusicCore20CarNowPlayingMetricsO4DataVSgMd, &_s9MusicCore20CarNowPlayingMetricsO4DataVSgMR);
    v41 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v53))
    {
      v54 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v67 = v44;
      *v54 = 136446722;
      v66 = v23;
      v55 = String.init<A>(describing:)();
      v57 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v56, &v67);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2050;
      *(v54 + 14) = v30;
      *(v54 + 22) = 2050;
      *(v54 + 24) = v22;
      v48 = "❌ Failed to configure %{public}s playsSummary event: range=%{public}f ms isn't greater than post frequency=%{public}f ms";
      v49 = v53;
      v50 = v41;
      v51 = v54;
      v52 = 32;
      goto LABEL_17;
    }
  }

  else
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v72[0] = v44;
      *v43 = 136446210;
      LOBYTE(v67) = v23;
      v45 = String.init<A>(describing:)();
      v47 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v45, v46, v72);

      *(v43 + 4) = v47;
      v48 = "❌ Failed to configure %{public}s playsSummary event: no persisted metrics data";
      v49 = v42;
      v50 = v41;
      v51 = v43;
      v52 = 12;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v50, v49, v48, v51, v52);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
    }
  }
}

uint64_t closure #1 in CarNowPlayingMetrics.Reporter.reportPlaysSummaryEventIfNeeded(for:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 624) = a2;
  *(v7 + 688) = a7;
  *(v7 + 616) = a1;
  *(v7 + 608) = a6;
  v8 = type metadata accessor for UUID();
  *(v7 + 632) = v8;
  *(v7 + 640) = *(v8 - 8);
  *(v7 + 648) = swift_task_alloc();
  v9 = type metadata accessor for DispatchPredicate();
  *(v7 + 656) = v9;
  *(v7 + 664) = *(v9 - 8);
  *(v7 + 672) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 680) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in CarNowPlayingMetrics.Reporter.reportPlaysSummaryEventIfNeeded(for:), v11, v10);
}

uint64_t closure #1 in CarNowPlayingMetrics.Reporter.reportPlaysSummaryEventIfNeeded(for:)()
{

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 688);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v35 = static MetricsReportingController.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_1004F2F50;
  strcpy((inited + 32), "totalDuration");
  *(inited + 46) = -4864;
  *(inited + 48) = round(*v7 * 1000.0);
  *(inited + 72) = &type metadata for Double;
  *(inited + 80) = 0x6E756F4379616C70;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = *(v7 + 8);
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0x6D6954746E657665;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = round(v6 * 1000.0);
  *(inited + 168) = &type metadata for Double;
  *(inited + 176) = 0x707954746E657665;
  *(inited + 184) = 0xE900000000000065;
  strcpy((inited + 192), "playsSummary");
  *(inited + 205) = 0;
  *(inited + 206) = -5120;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x6F436E6F69746361;
  v10 = v5 & 1;
  v11 = 0x79616C50726143;
  if (v10)
  {
    v11 = 0x746F6F7465756C62;
  }

  v12 = 0xE900000000000068;
  if (!v10)
  {
    v12 = 0xE700000000000000;
  }

  *(inited + 232) = 0xED0000747865746ELL;
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 264) = &type metadata for String;
  strcpy((inited + 272), "rangeStartTime");
  *(inited + 287) = -18;
  *(inited + 288) = round(*(v7 + 16) * 1000.0);
  *(inited + 312) = &type metadata for Double;
  strcpy((inited + 320), "rangeEndTime");
  *(inited + 333) = 0;
  *(inited + 334) = -5120;
  *(inited + 336) = round(v4 * 1000.0);
  *(inited + 360) = &type metadata for Double;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x80000001004C71F0;
  *(inited + 384) = *(*(v7 + 24) + 16);
  *(inited + 408) = &type metadata for Int;
  *(inited + 416) = 0xD000000000000018;
  *(inited + 424) = 0x80000001004C7210;
  v13 = specialized static MetricsReportingController.sharedActivityParticipantsBucket(for:)(*(v7 + 32));
  v9[57] = &type metadata for String;
  v9[54] = v13;
  v9[55] = v14;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd_0, &_sSS_yptMR_0);
  swift_arrayDestroy();
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  type metadata accessor for OS_dispatch_queue();
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v1, v3);
  if (v16)
  {
    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v34 = *(v0 + 632);
    v20 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:0];
    [v20 setShouldSuppressDSIDHeader:0];

    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_1004F2400;
    strcpy((v22 + 32), "clientEventId");
    *(v22 + 46) = -4864;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v19 + 8))(v18, v34);
    *(v22 + 72) = &type metadata for String;
    *(v22 + 48) = v23;
    *(v22 + 56) = v25;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v22);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v22 + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
    v26 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 addPropertiesWithDictionary:v26];

    v27 = *&v35[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v28 = swift_allocObject();
    v28[2] = v20;
    v28[3] = 0xD000000000000014;
    v28[4] = 0x80000001004C71D0;
    v28[5] = v35;
    v28[6] = partial apply for closure #1 in closure #1 in CarNowPlayingMetrics.Reporter.reportPlaysSummaryEventIfNeeded(for:);
    v28[7] = v15;
    *(v0 + 592) = partial apply for closure #1 in MetricsReportingController.recordCarPlayCustomEvent(with:properties:shouldSuppressUserInfo:completionHandler:);
    *(v0 + 600) = v28;
    *(v0 + 560) = _NSConcreteStackBlock;
    *(v0 + 568) = 1107296256;
    *(v0 + 576) = thunk for @escaping @callee_guaranteed () -> ();
    *(v0 + 584) = &block_descriptor_10;
    v29 = _Block_copy((v0 + 560));
    v30 = v27;
    v31 = v35;

    v32 = v20;

    [v32 setStandardPropertiesWith:v30 completionHandler:v29];
    _Block_release(v29);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in CarNowPlayingMetrics.Reporter.reportPlaysSummaryEventIfNeeded(for:)(uint64_t a1, char a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (one-time initialization token for carMetrics != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.carMetrics);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v5 = 136446466;
      v6 = String.init<A>(describing:)();
      v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v22);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2082;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v9 = String.init<A>(describing:)();
      v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v22);

      *(v5 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "❌ Failed to report %{public}s playsSummary event with error=%{public}s", v5, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for carMetrics != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.carMetrics);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      v17 = String.init<A>(describing:)();
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "✅ Reported %{public}s playsSummary event", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
    }

    v20 = [objc_opt_self() standardUserDefaults];
    v21 = String._bridgeToObjectiveC()();

    [v20 setValue:0 forKey:v21];
  }
}

uint64_t one-time initialization function for carMetrics()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.carMetrics);
  __swift_project_value_buffer(v0, static Logger.carMetrics);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.carMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for carMetrics != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.carMetrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t specialized CarNowPlayingMetrics.Data.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50736B63617274 && a2 == 0xEC00000064657961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61745365676E6172 && a2 == 0xEE00656D69547472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004C7190 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004C71B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized CarNowPlayingMetrics.Data.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore20CarNowPlayingMetricsO4DataV10CodingKeys33_72B309D1889FEFB88219B42EA4FB9CB6LLOGMd, &_ss22KeyedDecodingContainerVy9MusicCore20CarNowPlayingMetricsO4DataV10CodingKeys33_72B309D1889FEFB88219B42EA4FB9CB6LLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CarNowPlayingMetrics.Data.CodingKeys and conformance CarNowPlayingMetrics.Data.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  v21 = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  v19 = 3;
  lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v17[1];
  v18 = 4;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  return result;
}

uint64_t specialized static CarNowPlayingMetrics.persistedMetricsData(for:)@<X0>(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v11 = v16;
  v12 = v17;
  if (!*(&v17 + 1))
  {
    result = outlined destroy of TaskPriority?(&v11, &_sypSgMd_0, &_sypSgMR_0);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v7 = 0uLL;
    goto LABEL_9;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type CarNowPlayingMetrics.Data and conformance CarNowPlayingMetrics.Data();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v14, v15);

  v7 = v11;
  v9 = *(&v12 + 1);
  v8 = v12;
  v10 = v13;
LABEL_9:
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  return result;
}

unint64_t lazy protocol witness table accessor for type CarNowPlayingMetrics.Data and conformance CarNowPlayingMetrics.Data()
{
  result = lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data and conformance CarNowPlayingMetrics.Data;
  if (!lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data and conformance CarNowPlayingMetrics.Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data and conformance CarNowPlayingMetrics.Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data and conformance CarNowPlayingMetrics.Data;
  if (!lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data and conformance CarNowPlayingMetrics.Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarNowPlayingMetrics.Data and conformance CarNowPlayingMetrics.Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CarNowPlayingMetrics.EventType and conformance CarNowPlayingMetrics.EventType()
{
  result = lazy protocol witness table cache variable for type CarNowPlayingMetrics.EventType and conformance CarNowPlayingMetrics.EventType;
  if (!lazy protocol witness table cache variable for type CarNowPlayingMetrics.EventType and conformance CarNowPlayingMetrics.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarNowPlayingMetrics.EventType and conformance CarNowPlayingMetrics.EventType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarNowPlayingMetrics.Data(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for CarNowPlayingMetrics.Data(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000CEF5C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in CarNowPlayingMetrics.Reporter.reportPlaysSummaryEventIfNeeded(for:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in CarNowPlayingMetrics.Reporter.reportPlaysSummaryEventIfNeeded(for:)(v6, v8, a1, v4, v5, v1 + 32, v7);
}

uint64_t sub_1000CF094()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *MPModelObject.metricsDictionary.getter()
{
  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v1 = v0;
  v2 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 effectiveStorePlatformDictionary];

    if (v4)
    {
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 anyObject];
    goto LABEL_8;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v7 = [v8 innerObject];
LABEL_8:
    v9 = v7;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v9 = v1;
LABEL_10:
  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = [v10 identifiers];
  v13 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v12);
  v15 = v14;

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v17;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v13;
    *(inited + 80) = v15;
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (AnyHashable, Any)(inited + 32);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      AnyHashable.init<A>(_:)();
      v29 = &type metadata for String;
      *&v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v28 + 1) = v18;
      outlined init with take of Any(&v28, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, &v30, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v30);
    }
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v20 = MPModelPropertyPlaylistType;
      v21 = v1;
      if ([v5 hasLoadedValueForKey:v20] && objc_msgSend(v5, "type") == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_1004F2EF0;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        AnyHashable.init<A>(_:)();
        *(v22 + 96) = &type metadata for String;
        strcpy((v22 + 72), "FavoriteSongs");
        *(v22 + 86) = -4864;
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v23;
        AnyHashable.init<A>(_:)();
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v22 + 168) = &type metadata for String;
        *(v22 + 144) = v24;
        *(v22 + 152) = v25;
        v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(v22);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
        swift_arrayDestroy();
      }

      else
      {

        return 0;
      }
    }
  }

  return v5;
}

id static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, id a4)
{
  v5 = a2;
  if (a3 > 1u)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        result = [a4 library];
        if (!result)
        {
          return result;
        }

        v10 = result;
        if (![result persistentID])
        {
          goto LABEL_55;
        }

        [v10 persistentID];
        v11.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelPlaylist, MPModelPlaylist_ptr);
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_27;
      }

      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelSocialPerson, MPModelSocialPerson_ptr);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (a2)
      {
        result = [a4 personalizedStore];
        if (!result)
        {
          return result;
        }

        v13 = result;
        if (![result cloudID])
        {
          goto LABEL_55;
        }

        [v13 cloudID];
        v11.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelPlaylist, MPModelPlaylist_ptr);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_27;
      }
    }

    type metadata accessor for UIAction(v8, &lazy cache variable for type metadata for MPModelRadioStation, MPModelRadioStation_ptr);
    if (!swift_dynamicCastMetatype())
    {
      return MPIdentifierSet.bestStoreIdentifier.getter();
    }

LABEL_43:
    result = [a4 radio];
    if (!result)
    {
      return result;
    }

    v23 = result;
    v24 = [result stationStringID];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        goto LABEL_53;
      }
    }

    if (![v23 stationID])
    {
LABEL_55:
      swift_unknownObjectRelease();
      return 0;
    }

    [v23 stationID];
    v11.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
    v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
LABEL_51:
    v30 = v12;

    if (v30)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_53:
      swift_unknownObjectRelease();
      return v26;
    }

    goto LABEL_55;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelPlaylist, MPModelPlaylist_ptr);
  if (!swift_dynamicCastMetatype())
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelSocialPerson, MPModelSocialPerson_ptr);
    if (swift_dynamicCastMetatype())
    {
      if (v5)
      {
        result = MPIdentifierSet.bestLibraryIdentifier.getter();
        if (v9)
        {
          return result;
        }
      }

      if ((v5 & 2) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a4 universalStore];
      if (v17)
      {
        v15 = [v17 socialProfileID];
LABEL_36:
        v18 = v15;
        swift_unknownObjectRelease();
        if (v18)
        {
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          v22 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v22 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v22)
          {
            return v19;
          }
        }
      }

      return MPIdentifierSet.bestStoreIdentifier.getter();
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelRadioStation, MPModelRadioStation_ptr);
    if (!swift_dynamicCastMetatype())
    {
      if ((v5 & 1) == 0 || (result = MPIdentifierSet.bestLibraryIdentifier.getter(), !v16))
      {
        if ((v5 & 2) == 0)
        {
          return 0;
        }

        return MPIdentifierSet.bestStoreIdentifier.getter();
      }

      return result;
    }

    if ((v5 & 2) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  if ((v5 & 1) == 0 || (result = MPIdentifierSet.bestLibraryIdentifier.getter(), !v7))
  {
    if ((v5 & 2) == 0)
    {
      return 0;
    }

LABEL_27:
    v14 = [a4 universalStore];
    if (v14)
    {
      v15 = [v14 globalPlaylistID];
      goto LABEL_36;
    }

    return MPIdentifierSet.bestStoreIdentifier.getter();
  }

  return result;
}

uint64_t outlined destroy of (AnyHashable, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsEventSampler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, unsigned __int16 a12, uint64_t a13, uint64_t a14)
{
  v69 = a8;
  v64 = a6;
  v65 = a7;
  v61 = a5;
  v60 = a4;
  v63 = a12;
  v62 = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v67 = &v59[-v18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  __chkstk_darwin();
  v71 = &v59[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v70 = &v59[-v20];
  __chkstk_darwin();
  v68 = &v59[-v21];
  __chkstk_darwin();
  v66 = &v59[-v22];
  __chkstk_darwin();
  v24 = &v59[-v23];
  __chkstk_darwin();
  v26 = &v59[-v25];
  __chkstk_darwin();
  v28 = &v59[-v27];
  v29 = type metadata accessor for MetricsEvent.Click(0);
  *(a9 + v29[19]) = 0;
  v30 = (a9 + v29[20]);
  *v30 = 0;
  v30[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = v60;
  outlined init with take of URL?(v61, a9 + v29[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v31 = v65;
  *(a9 + v29[8]) = v64;
  v32 = (a9 + v29[9]);
  v33 = v69;
  *v32 = v31;
  v32[1] = v33;
  v34 = a9 + v29[10];
  *v34 = v62;
  *(v34 + 16) = a11;
  *(v34 + 24) = v63;
  v69 = a13;
  outlined init with copy of TaskPriority?(a13, v28, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v35 = type metadata accessor for MetricsEvent.Page(0);
  v36 = *(*(v35 - 1) + 48);
  if (v36(v28, 1, v35) == 1)
  {
    outlined destroy of TaskPriority?(v28, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v37 = *v28;
    v38 = v28[1];

    outlined destroy of MetricsEvent.Page(v28, type metadata accessor for MetricsEvent.Page);
  }

  v39 = (a9 + v29[12]);
  *v39 = v37;
  v39[1] = v38;
  v40 = v69;
  outlined init with copy of TaskPriority?(v69, v26, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v36(v26, 1, v35) == 1)
  {
    outlined destroy of TaskPriority?(v26, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v41 = *(v26 + 2);
    v42 = *(v26 + 3);

    outlined destroy of MetricsEvent.Page(v26, type metadata accessor for MetricsEvent.Page);
  }

  v43 = (a9 + v29[13]);
  *v43 = v41;
  v43[1] = v42;
  outlined init with copy of TaskPriority?(v40, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v36(v24, 1, v35);
  v45 = v67;
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v46 = type metadata accessor for URL();
    (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  }

  else
  {
    outlined init with copy of TaskPriority?(v24 + v35[6], v67, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of MetricsEvent.Page(v24, type metadata accessor for MetricsEvent.Page);
  }

  v47 = v70;
  v48 = v68;
  outlined init with take of URL?(v45, a9 + v29[14], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v49 = v66;
  outlined init with copy of TaskPriority?(v40, v66, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v36(v49, 1, v35) == 1)
  {
    outlined destroy of TaskPriority?(v49, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v50 = 0;
  }

  else
  {
    v50 = *(v49 + v35[7]);

    outlined destroy of MetricsEvent.Page(v49, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[15]) = v50;
  outlined init with copy of TaskPriority?(v40, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v36(v48, 1, v35) == 1)
  {
    outlined destroy of TaskPriority?(v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 1;
  }

  else
  {
    v51 = *(v48 + v35[9]);
    outlined destroy of MetricsEvent.Page(v48, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[16]) = v51;
  outlined init with copy of TaskPriority?(v40, v47, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v36(v47, 1, v35) == 1)
  {
    outlined destroy of TaskPriority?(v47, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v54 = (v47 + v35[8]);
    v52 = *v54;
    v53 = v54[1];

    outlined destroy of MetricsEvent.Page(v47, type metadata accessor for MetricsEvent.Page);
  }

  v55 = (a9 + v29[18]);
  *v55 = v52;
  v55[1] = v53;
  v56 = v71;
  outlined init with take of URL?(v40, v71, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v36(v56, 1, v35) == 1)
  {
    result = outlined destroy of TaskPriority?(v56, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v58 = 2;
  }

  else
  {
    v58 = *(v56 + v35[11]);
    result = outlined destroy of MetricsEvent.Page(v56, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[17]) = v58;
  *(a9 + v29[11]) = a14;
  return result;
}

uint64_t type metadata accessor for MetricsEvent.Click(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *MetricsReportingController.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MetricsReportingController.shared;
}

unint64_t MetricsEvent.Click.ActionContext.rawValue.getter(unint64_t a1, int64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          v2 = 0x6E654D6570697773;
          goto LABEL_27;
        case 10:
          v2 = 0xD000000000000010;
          goto LABEL_27;
        case 11:
          v2 = 0x6E65746E49707061;
          goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a2 == 6)
    {
      v2 = 0xD000000000000010;
    }

    else if (a2 == 7)
    {
      v2 = 0xD000000000000015;
    }

    else
    {
      v2 = 0x6853686372616573;
    }
  }

  else
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          v2 = 0x6E6F74747562;
          goto LABEL_27;
        case 1:
          v2 = 0x6472616F6279656BLL;
          goto LABEL_27;
        case 2:
          v2 = 0x79726F7473;
          goto LABEL_27;
      }

LABEL_26:
      v2 = a1;
      goto LABEL_27;
    }

    if (a2 == 3)
    {
      v2 = 1701998445;
    }

    else if (a2 == 4)
    {
      v2 = 0x636972796CLL;
    }

    else
    {
      v2 = 0x6B63617274;
    }
  }

LABEL_27:
  outlined copy of MetricsEvent.Click.ActionContext(a1, a2);
  return v2;
}

__n128 MetricsEvent.ComponentRender.init(componentIdentifier:componentType:componentAppearTime:componentPlaceholderAppearTime:componentMotionActivationTime:componentRequestTime:componentEndTime:componentInterruptTime:preloadStatus:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v16.n128_u8[0] = a3;
  v16.n128_u64[1] = a4;
  *&v17 = a5;
  *(&v17 + 1) = a6;
  *v18 = a7;
  *&v18[8] = a8;
  *&v18[16] = a10;
  v18[24] = a11;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a10;
  v27 = a11;
  outlined init with copy of MetricsEvent.ComponentRender(&v15, &v14);
  outlined destroy of MetricsEvent.ComponentRender(v19);
  v12 = *v18;
  *(a9 + 32) = v17;
  *(a9 + 48) = v12;
  *(a9 + 57) = *&v18[9];
  result = v16;
  *a9 = v15;
  *(a9 + 16) = result;
  return result;
}

uint64_t specialized MetricsEventSampler.shouldCollectMetricsForEvent(_:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v36 - v3;
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = type metadata accessor for Date();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  __chkstk_darwin();
  v13 = &v36 - v12;
  __chkstk_darwin();
  v15 = &v36 - v14;
  swift_beginAccess();
  v16 = *(v0 + 16);
  v17 = NSUserDefaults.forceComponentRenderSampling.getter();

  if (v17)
  {
    return 1;
  }

  v19 = Music_SSMetricsComponentRenderEvent.samplingPercentageUsers.getter();
  v18 = 1;
  if (v19)
  {
    v40 = 0.0;
    v41 = 1;
    v20 = v19;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v41 != 1)
    {
      v21 = v40;
      v22 = SSMetricsLoadURLEvent.sessionDuration.getter();
      if (v22)
      {
        v40 = 0.0;
        v41 = 1;
        v23 = v22;
        static Double._conditionallyBridgeFromObjectiveC(_:result:)();

        if ((v41 & 1) == 0)
        {
          Date.init()();
          v24 = *(v1 + 16);
          NSUserDefaults.metricsTimingWindowStartTime.getter(v4);
          outlined init with take of URL?(v4, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

          v25 = v38;
          v26 = v39;
          if ((*(v38 + 48))(v6, 1, v39))
          {
            outlined destroy of TaskPriority?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            v27 = v26;
            v28 = v25;
          }

          else
          {
            (*(v25 + 16))(v9, v6, v26);
            outlined destroy of TaskPriority?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            Date.addingTimeInterval(_:)();
            v29 = v9;
            v30 = *(v25 + 8);
            v30(v29, v26);
            (*(v25 + 32))(v13, v11, v26);
            v31 = static Date.< infix(_:_:)();
            v30(v13, v26);
            v27 = v26;
            v28 = v25;
            if (v31)
            {
              v30(v15, v26);
              return 1;
            }
          }

          v32 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
          if (v32 == 0x20000000000000)
          {
            if (v21 >= 1.0)
            {
LABEL_17:
              (*(v28 + 16))(v4, v15, v27);
              v18 = 1;
              (*(v28 + 56))(v4, 0, 1, v27);
              swift_beginAccess();
              v34 = v37;
              outlined init with copy of TaskPriority?(v4, v37, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              NSUserDefaults.metricsTimingWindowStartTime.setter(v34);
              swift_endAccess();
              outlined destroy of TaskPriority?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              (*(v28 + 8))(v15, v27);
              return v18;
            }
          }

          else
          {
            v33 = vcvtd_n_f64_u64(v32, 0x35uLL);
            if (v33 > 0.0 && v33 <= v21)
            {
              goto LABEL_17;
            }
          }

          (*(v28 + 8))(v15, v27);
          return 0;
        }
      }
    }
  }

  return v18;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v36 - v3;
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = type metadata accessor for Date();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  __chkstk_darwin();
  v13 = &v36 - v12;
  __chkstk_darwin();
  v15 = &v36 - v14;
  swift_beginAccess();
  v16 = *(v0 + 16);
  v17 = NSUserDefaults.forcePageRenderSampling.getter();

  if (v17)
  {
    return 1;
  }

  v19 = specialized Music_SSMetricsPageRenderEvent.subscript.getter();
  v18 = 1;
  if (v19)
  {
    v40 = 0.0;
    v41 = 1;
    v20 = v19;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v41 != 1)
    {
      v21 = v40;
      v22 = specialized Music_SSMetricsPageRenderEvent.subscript.getter();
      if (v22)
      {
        v40 = 0.0;
        v41 = 1;
        v23 = v22;
        static Double._conditionallyBridgeFromObjectiveC(_:result:)();

        if ((v41 & 1) == 0)
        {
          Date.init()();
          v24 = *(v1 + 16);
          NSUserDefaults.pageRenderSessionTimingWindowStartTime.getter(v4);
          outlined init with take of URL?(v4, v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

          v25 = v38;
          v26 = v39;
          if ((*(v38 + 48))(v6, 1, v39))
          {
            outlined destroy of TaskPriority?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            v27 = v26;
            v28 = v25;
          }

          else
          {
            (*(v25 + 16))(v9, v6, v26);
            outlined destroy of TaskPriority?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            Date.addingTimeInterval(_:)();
            v29 = v9;
            v30 = *(v25 + 8);
            v30(v29, v26);
            (*(v25 + 32))(v13, v11, v26);
            v31 = static Date.< infix(_:_:)();
            v30(v13, v26);
            v27 = v26;
            v28 = v25;
            if (v31)
            {
              v30(v15, v26);
              return 1;
            }
          }

          v32 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
          if (v32 == 0x20000000000000)
          {
            if (v21 >= 1.0)
            {
LABEL_17:
              (*(v28 + 16))(v4, v15, v27);
              v18 = 1;
              (*(v28 + 56))(v4, 0, 1, v27);
              swift_beginAccess();
              v34 = v37;
              outlined init with copy of TaskPriority?(v4, v37, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              NSUserDefaults.pageRenderSessionTimingWindowStartTime.setter(v34);
              swift_endAccess();
              outlined destroy of TaskPriority?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              (*(v28 + 8))(v15, v27);
              return v18;
            }
          }

          else
          {
            v33 = vcvtd_n_f64_u64(v32, 0x35uLL);
            if (v33 > 0.0 && v33 <= v21)
            {
              goto LABEL_17;
            }
          }

          (*(v28 + 8))(v15, v27);
          return 0;
        }
      }
    }
  }

  return v18;
}

uint64_t MetricsEvent.TargetType.init(contentItem:)(void *a1)
{
  v2 = [a1 itemType];
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 == 7)
      {

        return 21;
      }

      goto LABEL_8;
    }

    return 17;
  }

  else
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {

        return 3;
      }

LABEL_8:
      v4 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1004F2400;
      [a1 itemType];
      type metadata accessor for MPModelStoreBrowseContentItemType(0);
      v6 = String.init<A>(describing:)();
      v8 = v7;
      *(v5 + 56) = &type metadata for String;
      *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v5 + 32) = v6;
      *(v5 + 40) = v8;
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
      v9 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v9, "MPModelStoreBrowseContentItem.Kind.targetType: Returning nil for [targetType for this kind not yet implemented] self=%@", 119, 2, v5);

      return 27;
    }

    return 0;
  }
}

unint64_t MetricsEvent.TargetType.rawValue.getter(char a1)
{
  result = 0x6D75626C41;
  switch(a1)
  {
    case 1:
      result = 0x7465446D75626C41;
      break;
    case 2:
      result = 7368801;
      break;
    case 3:
      result = 0x747369747241;
      break;
    case 4:
      result = 0x72656E6E6162;
      break;
    case 5:
      result = 0x6E6F74747562;
      break;
    case 6:
      result = 0x6954656C62627562;
      break;
    case 7:
      result = 1685217603;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x7265746C6966;
      break;
    case 10:
      result = 0x7449726564616548;
      break;
    case 11:
      result = 0x7473694C746E6948;
      break;
    case 12:
      result = 7955819;
      break;
    case 13:
      result = 1802398060;
      break;
    case 14:
      result = 0x6E694C636972796CLL;
      break;
    case 15:
      result = 0x6D6574497473694CLL;
      break;
    case 16:
      result = 7235952;
      break;
    case 17:
    case 18:
      result = 0x7473696C79616C50;
      break;
    case 19:
      result = 0x4C746E65746E6F43;
      break;
    case 20:
      result = 0x726564696C73;
      break;
    case 21:
      result = 1735290707;
      break;
    case 22:
      result = 0x6974736567677573;
      break;
    case 23:
      result = 0x786F4274786574;
      break;
    case 24:
      result = 0x6C6C65737055;
      break;
    case 25:
      result = 0x657449666C656853;
      break;
    case 26:
      result = 0x6D65744964697247;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetricsEvent.TargetType@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsEvent::TargetType_optional *a2@<X8>)
{
  result = specialized MetricsEvent.TargetType.init(rawValue:)(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MetricsEvent.TargetType@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsEvent.TargetType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v18 = type metadata accessor for MetricsEvent.Page(0);
  result = outlined init with take of URL?(a5, a9 + v18[6], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(a9 + v18[7]) = a6;
  v20 = (a9 + v18[8]);
  *v20 = a7;
  v20[1] = a8;
  *(a9 + v18[9]) = a10 & 1;
  v21 = (a9 + v18[10]);
  *v21 = a11;
  v21[1] = a12;
  *(a9 + v18[11]) = a13;
  return result;
}

uint64_t static MetricsEvent.Page.contextualActionMenu(storeID:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0x80000001004C7320;
  }

  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = v6[6];
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  *a3 = v4;
  *(a3 + 1) = v5;
  *(a3 + 2) = 0xD000000000000014;
  *(a3 + 3) = 0x80000001004C7320;
  *&a3[v6[7]] = 0;
  v9 = &a3[v6[8]];
  *v9 = 0;
  *(v9 + 1) = 0;
  a3[v6[9]] = 1;
  v10 = &a3[v6[10]];
  *v10 = 0;
  *(v10 + 1) = 0;
  a3[v6[11]] = 2;
}

uint64_t one-time initialization function for libraryLanding()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryLanding);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryLanding);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x7972617262694CLL;
  *(v1 + 1) = 0xE700000000000000;
  *(v1 + 2) = 0x676E69646E614CLL;
  *(v1 + 3) = 0xE700000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryMenuEdit()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryMenuEdit);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryMenuEdit);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x4D7972617262694CLL;
  *(v1 + 1) = 0xEF74696445756E65;
  *(v1 + 2) = 0x72656B636950;
  *(v1 + 3) = 0xE600000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t MetricsEvent.Page.libraryLanding.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for MetricsEvent.Page(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static MetricsEvent.Page.libraryLanding.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return outlined init with copy of MetricsEvent.Page(v7, a4);
}

uint64_t one-time initialization function for libraryMadeForYou()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryMadeForYou);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryMadeForYou);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x59726F466564614DLL;
  *(v1 + 1) = 0xEA0000000000756FLL;
  *(v1 + 2) = 0x7972617262694CLL;
  *(v1 + 3) = 0xE700000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryAlbumsList()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryAlbumsList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryAlbumsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x80000001004C7880;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryArtistsList()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryArtistsList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryArtistsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x80000001004C7860;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryCompilationsList()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryCompilationsList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryCompilationsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000017;
  *(v1 + 1) = 0x80000001004C7840;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryComposersList()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryComposersList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryComposersList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x80000001004C7820;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryGenresList()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryGenresList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryGenresList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x80000001004C7800;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryMusicVideosList()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000016;
  *(v1 + 1) = 0x80000001004C77E0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryPlaylistsList()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x80000001004C77C0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for librarySongsList()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.librarySongsList);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.librarySongsList);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000010;
  *(v1 + 1) = 0x80000001004C77A0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryRecentlyAdded()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000018;
  *(v1 + 1) = 0x80000001004C7780;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryRecentlyDownloaded()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD00000000000001DLL;
  *(v1 + 1) = 0x80000001004C7760;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryAlbumDetail()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "LibraryAlbum");
  *(v1 + 13) = 0;
  *(v1 + 14) = -5120;
  *(v1 + 16) = 0x6D75626C41;
  *(v1 + 24) = 0xE500000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 1;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t one-time initialization function for libraryArtistDetail()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryArtistDetail);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryArtistDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "LibraryArtist");
  *(v1 + 14) = -4864;
  *(v1 + 16) = 0x747369747241;
  *(v1 + 24) = 0xE600000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 1;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t one-time initialization function for libraryPlaylistDetail()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x507972617262694CLL;
  *(v1 + 1) = 0xEF7473696C79616CLL;
  *(v1 + 2) = 0x7473696C79616C50;
  *(v1 + 3) = 0xE800000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryComposerDetail()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryComposerDetail);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryComposerDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x437972617262694CLL;
  *(v1 + 1) = 0xEF7265736F706D6FLL;
  *(v1 + 2) = 0x747369747241;
  *(v1 + 3) = 0xE600000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for libraryGenreDetail()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.libraryGenreDetail);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.libraryGenreDetail);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x80000001004C7740;
  *(v1 + 2) = 0x65726E6547;
  *(v1 + 3) = 0xE500000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for playlistCreation()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.playlistCreation);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.playlistCreation);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x6C79616C5077654ELL;
  *(v1 + 1) = 0xEB00000000747369;
  *(v1 + 2) = 0x7473696C79616C50;
  *(v1 + 3) = 0xE800000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 0;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t one-time initialization function for playlistPicker()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  __swift_allocate_value_buffer(v0, static MetricsEvent.Page.playlistPicker);
  v1 = __swift_project_value_buffer(v0, static MetricsEvent.Page.playlistPicker);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "PlaylistPicker");
  *(v1 + 15) = -18;
  *(v1 + 16) = 0x72656B636950;
  *(v1 + 24) = 0xE600000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 0;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t MetricsEvent.Page.metricsPageProperties.getter@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v4 = &v18 - v3;
  v5 = v1[1];
  v18 = *v1;
  v7 = v1[2];
  v6 = v1[3];
  v8 = type metadata accessor for MetricsEvent.Page(0);
  outlined init with copy of TaskPriority?(v1 + v8[6], v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(v1 + v8[7]);
  v10 = (v1 + v8[10]);
  v11 = v10[1];
  v19 = *v10;
  v12 = type metadata accessor for MetricsPageProperties(0);
  v13 = v12[6];
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v12[7];
  v16 = &a1[v12[8]];
  *a1 = v18;
  *(a1 + 1) = v5;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;

  result = outlined assign with take of URL?(v4, &a1[v13]);
  *&a1[v15] = v9;
  *v16 = v19;
  *(v16 + 1) = v11;
  return result;
}

BOOL MetricsEvent.Page.DisplayType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MetricsEvent.Page.DisplayType.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricsEvent.Page.DisplayType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricsEvent.Page.DisplayType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetricsEvent.Page.DisplayType@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance MetricsEvent.Page.DisplayType, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v29 = type metadata accessor for MetricsEvent.Click(0);
  *(a9 + v29[19]) = 0;
  v30 = (a9 + v29[20]);
  *v30 = 0;
  v30[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  outlined init with take of URL?(a5, a9 + v29[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(a9 + v29[8]) = a6;
  v31 = (a9 + v29[9]);
  *v31 = a7;
  v31[1] = a8;
  v32 = a9 + v29[10];
  *v32 = a10;
  *(v32 + 16) = a11;
  *(v32 + 24) = a12;
  v33 = (a9 + v29[12]);
  *v33 = a13;
  v33[1] = a14;
  v34 = (a9 + v29[13]);
  *v34 = a15;
  v34[1] = a16;
  result = outlined init with take of URL?(a17, a9 + v29[14], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(a9 + v29[15]) = a18;
  *(a9 + v29[16]) = a19 & 1;
  *(a9 + v29[17]) = a20;
  *(a9 + v29[11]) = a21;
  v36 = (a9 + v29[18]);
  *v36 = a22;
  v36[1] = a23;
  return result;
}

__n128 MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, unint64_t a11, unsigned __int16 a12, uint64_t *a13, uint64_t a14)
{
  v18 = a13[1];
  v33 = *a13;
  v19 = a13[3];
  v35 = a13[2];
  v20 = type metadata accessor for MetricsPageProperties(0);
  v21 = *(v20 + 24);
  v22 = type metadata accessor for MetricsEvent.Click(0);
  outlined init with copy of TaskPriority?(a13 + v21, a9 + v22[14], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = *(a13 + *(v20 + 28));

  outlined destroy of MetricsEvent.Page(a13, type metadata accessor for MetricsPageProperties);
  *(a9 + v22[19]) = 0;
  v24 = (a9 + v22[20]);
  *v24 = 0;
  v24[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  outlined init with take of URL?(a5, a9 + v22[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(a9 + v22[8]) = a6;
  v25 = (a9 + v22[9]);
  *v25 = a7;
  v25[1] = a8;
  v26 = (a9 + v22[10]);
  result = a10;
  *v26 = a10;
  v26[1].n128_u64[0] = a11;
  v26[1].n128_u16[4] = a12;
  v28 = (a9 + v22[12]);
  *v28 = v33;
  v28[1] = v18;
  v29 = (a9 + v22[13]);
  *v29 = v35;
  v29[1] = v19;
  *(a9 + v22[15]) = v23;
  *(a9 + v22[16]) = 1;
  *(a9 + v22[17]) = 2;
  *(a9 + v22[11]) = a14;
  v30 = (a9 + v22[18]);
  *v30 = 0;
  v30[1] = 0;
  return result;
}

uint64_t MetricsEvent.Click.isSharedContent.setter(char a1)
{
  result = type metadata accessor for MetricsEvent.Click(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t MetricsEvent.Click.dataRecoDataSetId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetricsEvent.Click(0) + 80));

  return v1;
}

uint64_t MetricsEvent.Click.dataRecoDataSetId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricsEvent.Click(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MetricsEvent.Click.ActionType.rawValue.getter(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      return 0x68536E6F69746361;
    case 2:
      return 0x6574617669746361;
    case 3:
      return 6579297;
    case 4:
      return 0x73676E6F53646461;
    case 5:
      return 0x62694C6F54646461;
    case 6:
      return 0x6575516F54646461;
    case 7:
      return 0x7473756A6461;
    case 8:
      return 0x616C506E69676562;
    case 9:
      return 0x6C65636E6163;
    case 10:
      return 0x726F62616C6C6F63;
    case 11:
      return 0x657461657263;
    case 12:
      return 0x7453657461657263;
    case 13:
      v4 = 5;
      goto LABEL_64;
    case 14:
      return 0x64616F6C6E776F64;
    case 15:
      return 0x6176697463616564;
    case 16:
      return 0x6574656C6564;
    case 17:
      return 0x7463656C65736564;
    case 18:
      return 0x7470697263736564;
    case 19:
      return 0x7373696D736964;
    case 20:
      return 1953064037;
    case 21:
      return 0x65766F4374696465;
    case 22:
      return 0x657469726F766166;
    case 23:
      return 0x69726F7661666E75;
    case 24:
      return 1702125928;
    case 25:
      return 0x657461686E75;
    case 26:
      return 1953393000;
    case 27:
      return 0x7475706E69;
    case 28:
      return 0x657461676976616ELL;
    case 29:
      return 7235952;
    case 30:
      return 0x6E69706E75;
    case 31:
      return 2036427888;
    case 32:
      v3 = 0x664179616C70;
      goto LABEL_49;
    case 33:
      v3 = 0x614C79616C70;
LABEL_49:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 34:
      result = 0x7478654E79616C70;
      break;
    case 35:
      result = 0x7463616572;
      break;
    case 36:
      result = 1868850546;
      break;
    case 37:
      result = 0x6F4465766F6D6572;
      break;
    case 38:
      v4 = 11;
LABEL_64:
      result = v4 | 0xD000000000000010;
      break;
    case 39:
      result = 0xD000000000000012;
      break;
    case 40:
      result = 0x726564726F6572;
      break;
    case 41:
      result = 0x6F4374726F706572;
      break;
    case 42:
      result = 0x686372616573;
      break;
    case 43:
      result = 1801807219;
      break;
    case 44:
      result = 0x7463656C6573;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    case 48:
      result = 0x6572616873;
      break;
    case 49:
      result = 0x694C646572616873;
      break;
    case 50:
      result = 0x72794C6572616873;
      break;
    case 51:
      result = 0x6972794C776F6873;
      break;
    case 52:
      result = 0x72506E4F776F6873;
      break;
    case 53:
      result = 0x656C6666756873;
      break;
    case 54:
      result = 0x74696D627573;
      break;
    case 55:
      result = 0x656C67676F74;
      break;
    case 56:
      result = 1868852853;
      break;
    case 57:
      result = 0x75626C4177656976;
      break;
    case 58:
      result = 0x6974724177656976;
      break;
    case 59:
      result = 0x6465724377656976;
      break;
    case 60:
      result = 0x79616C5077656976;
      break;
    case 61:
      result = 0x77656976657270;
      break;
    case 62:
      result = 0x6573756170;
      break;
    case 63:
      result = 0x68736572666572;
      break;
    case 64:
      result = 1735289203;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetricsEvent.TargetType(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricsEvent.TargetType(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MetricsEvent.TargetType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricsEvent.TargetType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetricsEvent.Click.ActionType@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsEvent::Click::ActionType_optional *a2@<X8>)
{
  result = specialized MetricsEvent.Click.ActionType.init(rawValue:)(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MetricsEvent.Click.ActionType@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsEvent.Click.ActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void MetricsEvent.Click.ActionContext.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 5)
  {
    if (a3 <= 8)
    {
      if (a3 == 6)
      {
        v3 = 6;
      }

      else if (a3 == 7)
      {
        v3 = 7;
      }

      else
      {
        v3 = 8;
      }

      goto LABEL_26;
    }

    switch(a3)
    {
      case 9:
        v3 = 9;
        goto LABEL_26;
      case 10:
        v3 = 11;
        goto LABEL_26;
      case 11:
        v3 = 12;
        goto LABEL_26;
    }
  }

  else
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v3 = 3;
      }

      else if (a3 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_26;
    }

    switch(a3)
    {
      case 0:
        v3 = 0;
        goto LABEL_26;
      case 1:
        v3 = 1;
        goto LABEL_26;
      case 2:
        v3 = 2;
LABEL_26:
        Hasher._combine(_:)(v3);
        return;
    }
  }

  Hasher._combine(_:)(0xAuLL);

  String.hash(into:)();
}

Swift::Int MetricsEvent.Click.ActionContext.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MetricsEvent.Click.ActionContext.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricsEvent.Click.ActionContext()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MetricsEvent.Click.ActionContext.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricsEvent.Click.ActionContext(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  MetricsEvent.Click.ActionContext.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

void *MetricsEvent.Click.ActionDetails.dictionary.getter(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (BYTE1(a4) > 1u)
  {
    if (BYTE1(a4) == 2)
    {
      if (!a2)
      {
        return 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004F2400;
      strcpy((inited + 32), "searchPrefix");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = v4;
      *(inited + 56) = a2;
      outlined copy of MetricsEvent.Click.ActionDetails(v4, a2, a3, a4, 2);
      v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      v7 = (inited + 32);
    }

    else
    {
      if (BYTE1(a4) == 3)
      {

        return v4;
      }

      v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #1 of MetricsEvent.Click.ActionDetails.dictionary.getter);
      v7 = &unk_1005A3E18;
    }

LABEL_10:
    outlined destroy of TaskPriority?(v7, &_sSS_SStMd, &_sSS_SStMR);
    return v4;
  }

  if (!BYTE1(a4))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1004F2400;
    strcpy((v5 + 32), "actionSubType");
    *(v5 + 46) = -4864;
    *(v5 + 48) = MetricsEvent.Click.ActionType.rawValue.getter(v4);
    *(v5 + 56) = v6;
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v5);
    swift_setDeallocating();
    v7 = (v5 + 32);
    goto LABEL_10;
  }

  v13 = a4;
  if (!a1)
  {
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of MetricsEvent.Click.ActionDetails.dictionary.getter);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    goto LABEL_37;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;

      v22 = [v21 artist];
      if (!v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();

      if (!v23)
      {
LABEL_26:
        v26 = 0;
        goto LABEL_27;
      }

      v22 = [v23 artist];
      if (!v22)
      {
LABEL_25:
        v23 = 0;
        goto LABEL_26;
      }
    }

    v24 = v22;
    v19 = [v22 name];

    if (v19)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v17 = v16;

  v18 = [v17 name];
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
LABEL_24:
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1004F2EB0;
  *(v27 + 32) = 1684957547;
  *(v27 + 40) = 0xE400000000000000;
  v28 = MetricsContentType.init(modelObject:)(v4);
  *(v27 + 48) = MetricsContentType.rawValue.getter(v28);
  *(v27 + 56) = v29;
  *(v27 + 64) = 0x614E747369747261;
  *(v27 + 72) = 0xEA0000000000656DLL;
  v30 = 16718;
  if (v26)
  {
    v30 = v23;
  }

  v31 = 0xE200000000000000;
  if (v26)
  {
    v31 = v26;
  }

  *(v27 + 80) = v30;
  *(v27 + 88) = v31;
  strcpy((v27 + 96), "lyricSnippet");
  *(v27 + 109) = 0;
  *(v27 + 110) = -5120;
  if (a3)
  {
    v32 = a2;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (a3)
  {
    v33 = a3;
  }

  *(v27 + 112) = v32;
  *(v27 + 120) = v33;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v27);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
LABEL_37:
  swift_arrayDestroy();
  if (v13 != 65)
  {
    v35 = MetricsEvent.Click.ActionType.rawValue.getter(v13);
    v36 = v34;
    if (v35 == 0xD000000000000015 && 0x80000001004C4860 == v34)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v36, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v4;
}

void __swiftcall MetricsEvent.Dialog.init(dialogID:dialogType:title:message:messageCode:options:subjectID:targetID:actionType:)(MusicCore::MetricsEvent::Dialog *__return_ptr retstr, Swift::String dialogID, MusicCore::MetricsEvent::Dialog::Type dialogType, Swift::String_optional title, Swift::String_optional message, Swift::String messageCode, Swift::OpaquePointer options, Swift::String_optional subjectID, Swift::String targetID, MusicCore::MetricsEvent::Dialog::ActionType actionType)
{
  v17 = dialogID;
  LOBYTE(v18) = dialogType & 1;
  *(&v18 + 1) = title.value._countAndFlagsBits;
  *&v19 = title.value._object;
  *(&v19 + 1) = message.value._countAndFlagsBits;
  *&v20 = message.value._object;
  *(&v20 + 1) = messageCode._countAndFlagsBits;
  *&v21 = messageCode._object;
  *(&v21 + 1) = options;
  v22 = subjectID;
  v23 = targetID;
  v24 = actionType & 1;
  v25 = dialogID;
  v26 = dialogType & 1;
  v27 = title;
  v28 = message;
  v29 = messageCode;
  rawValue = options._rawValue;
  v31 = subjectID;
  v32 = targetID;
  v33 = actionType & 1;
  outlined init with copy of MetricsEvent.Dialog(&v17, v16);
  outlined destroy of MetricsEvent.Dialog(&v25);
  v11 = v22;
  v12 = v23;
  v13 = v20;
  *&retstr->messageCode._object = v21;
  retstr->subjectID = v11;
  retstr->targetID = v12;
  v14 = v18;
  v15 = v19;
  retstr->dialogID = v17;
  *&retstr->dialogType = v14;
  retstr->actionType = v24;
  *&retstr->title.value._object = v15;
  *&retstr->message.value._object = v13;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.featureName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ApplicationCapabilities.RatingWarning.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MetricsEvent.Dialog.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetricsEvent.Dialog.Type(_BYTE *a1, _BYTE *a2)
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricsEvent.Dialog.Type()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MetricsEvent.Dialog.Type(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricsEvent.Dialog.Type(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MetricsEvent.Dialog.Type(uint64_t *a1@<X8>)
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

uint64_t MetricsEvent.Dialog.Type.init(rawValue:)(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetricsEvent.Dialog.ActionType(_BYTE *a1, _BYTE *a2)
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricsEvent.Dialog.ActionType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MetricsEvent.Dialog.ActionType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricsEvent.Dialog.ActionType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetricsEvent.Dialog.Type@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MetricsEvent.Dialog.ActionType(uint64_t *a1@<X8>)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricsEvent.ComponentRender.PreloadStatus()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MetricsEvent.ComponentRender.PreloadStatus(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricsEvent.ComponentRender.PreloadStatus(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetricsEvent.ComponentRender.PreloadStatus@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MetricsEvent.ComponentRender.PreloadStatus.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MetricsEvent.ComponentRender.PreloadStatus(uint64_t *a1@<X8>)
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

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for MetricsReportingController()) init];
  static MetricsReportingController.shared = result;
  return result;
}

{
  type metadata accessor for BackgroundRefreshController();
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = 0;
  result = [objc_allocWithZone(ICCloudClient) init];
  v0[4] = result;
  static BackgroundRefreshController.shared = v0;
  return result;
}

{
  type metadata accessor for NetworkMonitor(0);
  v0 = swift_allocObject();
  result = NetworkMonitor.init()();
  static NetworkMonitor.shared = v0;
  return result;
}

{
  v0 = type metadata accessor for PushNotificationObserver();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MusicCore24PushNotificationObserverC17RegisteredHandlerVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static PushNotificationObserver.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for PlaylistCovers.ArtworkDataSource()) init];
  static PlaylistCovers.ArtworkDataSource.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for EnvironmentMonitor(0)) init];
  static EnvironmentMonitor.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for NSUserDefaults._Observer()) init];
  static NSUserDefaults._Observer.shared = result;
  return result;
}

id static MetricsReportingController.shared.getter()
{
  if (one-time initialization token for shared != -1)
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
      specialized MetricsEvent.LoadUrl.init(performanceMetrics:)(v2, &v3);
      MetricsReportingController.recordLoadUrlEvent(_:)(&v3);
      outlined destroy of MetricsEvent.LoadUrl(&v3);
    }
  }
}

void MetricsReportingController.recordPageEvent(_:pageContext:sharedListeningContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v73 = a4;
  v70 = a5;
  v71 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v9 = &v70 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = [objc_allocWithZone(SSMetricsPageEvent) init];
    v16 = v15;
    if (a3)
    {
      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    [v15 setPageContext:{v17, v70, v71}];

    v19 = *a1;
    v18 = a1[1];
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    [v15 setProperty:v20 forBodyKey:v21];

    v23 = a1[2];
    v22 = a1[3];
    v24 = String._bridgeToObjectiveC()();
    [v15 setPageType:v24];

    v72 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v25 = *&v74[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v25 || (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR), v26 = swift_allocObject(), *(v26 + 16) = xmmword_1004F2EF0, *(v26 + 32) = v23, *(v26 + 40) = v22, *(v26 + 88) = &type metadata for String, *(v26 + 56) = &type metadata for String, *(v26 + 64) = v19, *(v26 + 72) = v18, , , v27 = v25, isa = Array._bridgeToObjectiveC()().super.isa, , v29 = [v27 compoundStringWithElements:isa], v27, isa, !v29))
    {
      v29 = 0;
    }

    [v15 setPageDescription:v29];

    v30 = type metadata accessor for MetricsEvent.Page(0);
    outlined init with copy of TaskPriority?(a1 + v30[6], v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v31 = type metadata accessor for URL();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v9, 1, v31) == 1)
    {
      outlined destroy of TaskPriority?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v33 = 0;
    }

    else
    {
      URL.absoluteString.getter();
      (*(v32 + 8))(v9, v31);
      v33 = String._bridgeToObjectiveC()();
    }

    [v15 setPageURL:v33];

    v34 = *(a1 + v30[7]);
    if (v34)
    {
      v35.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v35.super.isa = 0;
    }

    v36 = String._bridgeToObjectiveC()();
    [v15 setProperty:v35.super.isa forBodyKey:v36];

    swift_unknownObjectRelease();
    v37 = (a1 + v30[8]);
    v38 = v37[1];
    v39 = &stru_1005F2000;
    if (v38)
    {
      v40 = *v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
      inited = swift_initStackObject();
      *(inited + 32) = 0x6554686372616573;
      *(inited + 16) = xmmword_1004F2400;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEA00000000006D72;
      *(inited + 48) = v40;
      *(inited + 56) = v38;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(inited);
      swift_setDeallocating();
      v39 = &stru_1005F2000;
      outlined destroy of TaskPriority?(inited + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
      v42 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v15 addPropertiesWithDictionary:v42];
    }

    if ((*(a1 + v30[9]) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_1004F2400;
      *(v43 + 32) = 0x7073694465676170;
      v44 = v43 + 32;
      *(v43 + 72) = &type metadata for String;
      *(v43 + 40) = 0xEF6570795479616CLL;
      *(v43 + 48) = 0x7765695664726163;
      *(v43 + 56) = 0xE800000000000000;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v43);
      swift_setDeallocating();
      outlined destroy of TaskPriority?(v44, &_sSS_yptMd_0, &_sSS_yptMR_0);
      v45 = Dictionary._bridgeToObjectiveC()().super.isa;
      v39 = &stru_1005F2000;

      [v15 addPropertiesWithDictionary:v45];
    }

    v46 = *(a1 + v30[11]);
    if (v46 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_1004F2400;
      *(v47 + 32) = 0xD000000000000014;
      v48 = v47 + 32;
      *(v47 + 40) = 0x80000001004C7340;
      *(v47 + 72) = &type metadata for Bool;
      *(v47 + 48) = v46 & 1;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v47);
      swift_setDeallocating();
      outlined destroy of TaskPriority?(v48, &_sSS_yptMd_0, &_sSS_yptMR_0);
      v49 = Dictionary._bridgeToObjectiveC()().super.isa;
      v39 = &stru_1005F2000;

      [v15 addPropertiesWithDictionary:v49];
    }

    if (v34)
    {
      if (*(v34 + 16))
      {
        v50 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(0x4974655361746164, 0xE900000000000064);
        if (v51)
        {
          v52 = (*(v34 + 56) + 16 * v50);
          v54 = *v52;
          v53 = v52[1];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
          v55 = swift_initStackObject();
          *(v55 + 16) = xmmword_1004F2400;
          *(v55 + 32) = 0x4974655361746164;
          *(v55 + 72) = &type metadata for String;
          *(v55 + 40) = 0xE900000000000064;
          *(v55 + 48) = v54;
          *(v55 + 56) = v53;

          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v55);
          swift_setDeallocating();
          v39 = &stru_1005F2000;
          outlined destroy of TaskPriority?(v55 + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
          v56 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v15 addPropertiesWithDictionary:v56];
        }
      }
    }

    if (v73 != 2 && specialized MetricsReportingController.sharedListeningDictionary(context:)(v73 & 1, v70, v71))
    {
      v57 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v15 v39[54].attr];
    }

    v58 = (a1 + v30[10]);
    v59 = v58[1];
    if (v59)
    {
      v60 = *v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
      v61 = swift_initStackObject();
      *(v61 + 32) = 0x7255666552747865;
      *(v61 + 16) = xmmword_1004F2400;
      *(v61 + 72) = &type metadata for String;
      *(v61 + 40) = 0xE90000000000006CLL;
      *(v61 + 48) = v60;
      *(v61 + 56) = v59;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v61);
      swift_setDeallocating();
      outlined destroy of TaskPriority?(v61 + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
      v62 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v15 v39[54].attr];
    }

    v63 = v74;
    v64 = *&v74[v72];
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    *(v65 + 24) = v15;
    aBlock[4] = partial apply for closure #1 in MetricsReportingController.recordPageEvent(_:pageContext:sharedListeningContext:);
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_11;
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

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

{
  return (*(a1 + 32))();
}

void MetricsReportingController.recordImpressionsEvent(_:with:pageContext:sharedListeningContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v53 = a6;
  v57 = a5;
  v58 = a2;
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore21MetricsPagePropertiesVSgMd, &_s9MusicCore21MetricsPagePropertiesVSgMR);
  __chkstk_darwin();
  v54 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v11 = &v51 - v10;
  __chkstk_darwin();
  v13 = &v51 - v12;
  __chkstk_darwin();
  v15 = &v51 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v20 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v21 = [objc_allocWithZone(SSMetricsBaseEvent) init];
    v52 = a7;
    if (a4)
    {
      v22 = String._bridgeToObjectiveC()();
    }

    else
    {
      v22 = 0;
    }

    v23 = v58;
    [v21 setPageContext:v22];

    outlined init with copy of TaskPriority?(v23, v15, &_s9MusicCore21MetricsPagePropertiesVSgMd, &_s9MusicCore21MetricsPagePropertiesVSgMR);
    v24 = type metadata accessor for MetricsPageProperties(0);
    v25 = *(*(v24 - 8) + 48);
    if (v25(v15, 1, v24) == 1)
    {
      outlined destroy of TaskPriority?(v15, &_s9MusicCore21MetricsPagePropertiesVSgMd, &_s9MusicCore21MetricsPagePropertiesVSgMR);
      v26 = 0;
    }

    else
    {

      outlined destroy of MetricsEvent.Page(v15, type metadata accessor for MetricsPageProperties);
      v26 = String._bridgeToObjectiveC()();
    }

    v27 = String._bridgeToObjectiveC()();
    [v21 setProperty:v26 forBodyKey:v27];
    swift_unknownObjectRelease();

    outlined init with copy of TaskPriority?(v23, v13, &_s9MusicCore21MetricsPagePropertiesVSgMd, &_s9MusicCore21MetricsPagePropertiesVSgMR);
    if (v25(v13, 1, v24) == 1)
    {
      outlined destroy of TaskPriority?(v13, &_s9MusicCore21MetricsPagePropertiesVSgMd, &_s9MusicCore21MetricsPagePropertiesVSgMR);
      v28 = 0;
    }

    else
    {

      outlined destroy of MetricsEvent.Page(v13, type metadata accessor for MetricsPageProperties);
      v28 = String._bridgeToObjectiveC()();
    }

    [v21 setPageType:v28];

    v55 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v29 = *&v59[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v29)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1004F2EF0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    *(v30 + 56) = v31;
    outlined init with copy of TaskPriority?(v23, v11, &_s9MusicCore21MetricsPagePropertiesVSgMd, &_s9MusicCore21MetricsPagePropertiesVSgMR);
    if (v25(v11, 1, v24) == 1)
    {
      v32 = v29;
      outlined destroy of TaskPriority?(v11, &_s9MusicCore21MetricsPagePropertiesVSgMd, &_s9MusicCore21MetricsPagePropertiesVSgMR);
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v33 = *(v11 + 2);
      v34 = *(v11 + 3);
      v35 = v29;

      outlined destroy of MetricsEvent.Page(v11, type metadata accessor for MetricsPageProperties);
    }

    *(v30 + 32) = v33;
    *(v30 + 40) = v34;
    *(v30 + 88) = v31;
    v36 = v54;
    outlined init with copy of TaskPriority?(v58, v54, &_s9MusicCore21MetricsPagePropertiesVSgMd, &_s9MusicCore21MetricsPagePropertiesVSgMR);
    if (v25(v36, 1, v24) == 1)
    {
      outlined destroy of TaskPriority?(v36, &_s9MusicCore21MetricsPagePropertiesVSgMd, &_s9MusicCore21MetricsPagePropertiesVSgMR);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v37 = *v36;
      v38 = v36[1];

      outlined destroy of MetricsEvent.Page(v36, type metadata accessor for MetricsPageProperties);
    }

    *(v30 + 64) = v37;
    *(v30 + 72) = v38;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v40 = [v29 compoundStringWithElements:isa];

    if (!v40)
    {
LABEL_19:
      v40 = 0;
    }

    [v21 setPageDescription:v40];

    [v21 setEventType:SSMetricsEventTypeImpressions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = 0x6973736572706D69;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd, &_sSaySDys11AnyHashableVypGGMR);
    *(inited + 48) = v56;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(inited);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(inited + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
    v42 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v21 addPropertiesWithDictionary:v42];

    if (v57 != 2)
    {
      if (specialized MetricsReportingController.sharedListeningDictionary(context:)(v57 & 1, v53, v52))
      {
        v43 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v21 addPropertiesWithDictionary:v43];
      }
    }

    v44 = v59;
    v45 = *&v59[v55];
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v21;
    aBlock[4] = partial apply for closure #1 in MetricsReportingController.recordImpressionsEvent(_:with:pageContext:sharedListeningContext:);
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_18;
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

uint64_t closure #1 in MetricsReportingController.recordPageEvent(_:pageContext:sharedListeningContext:)(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v8 = aBlock - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v14 = [objc_allocWithZone(SSMetricsSearchEvent) init];
    v15 = v14;
    if (a3)
    {
      v16 = String._bridgeToObjectiveC()();
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      outlined destroy of TaskPriority?(aBlock, &_sSDyS2SGMd, &_sSDyS2SGMR);
    }

    else
    {
      v21 = 0;
    }

    [v14 setActionDetails:v21];
    swift_unknownObjectRelease();
    MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
    v22 = String._bridgeToObjectiveC()();

    [v14 setActionType:v22];

    v23 = String._bridgeToObjectiveC()();
    [v14 setTargetIdentifier:v23];

    outlined init with copy of TaskPriority?(a1 + v17[7], v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v24 = type metadata accessor for URL();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v8, 1, v24) == 1)
    {
      outlined destroy of TaskPriority?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v26 = 0;
    }

    else
    {
      URL.absoluteString.getter();
      (*(v25 + 8))(v8, v24);
      v26 = String._bridgeToObjectiveC()();
    }

    [v14 setTargetURL:v26];

    MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
    v27 = String._bridgeToObjectiveC()();

    [v14 setTargetType:v27];

    if (*(a1 + v17[13] + 8))
    {
      v28 = String._bridgeToObjectiveC()();
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
      v31 = String._bridgeToObjectiveC()();
    }

    v32 = String._bridgeToObjectiveC()();
    [v14 setProperty:v31 forBodyKey:v32];

    swift_unknownObjectRelease();
    if (*(a1 + v17[15]))
    {
      v33.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    v34 = String._bridgeToObjectiveC()();
    [v14 setProperty:v33.super.isa forBodyKey:v34];

    swift_unknownObjectRelease();
    if (*(a1 + v17[12] + 8))
    {
      v35 = String._bridgeToObjectiveC()();
    }

    else
    {
      v35 = 0;
    }

    v36 = String._bridgeToObjectiveC()();
    [v14 setProperty:v35 forBodyKey:v36];

    swift_unknownObjectRelease();
    isa = *(a1 + v17[8]);
    if (isa)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v38 = String._bridgeToObjectiveC()();
    [v14 setProperty:isa forBodyKey:v38];

    swift_unknownObjectRelease();
    if (*(a1 + v17[18] + 8))
    {
      v39 = String._bridgeToObjectiveC()();
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
    aBlock[4] = partial apply for closure #1 in MetricsReportingController.recordSearchEvent(_:pageContext:);
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_24_0;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v99 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    if (one-time initialization token for metrics == -1)
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
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.metrics);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "[MetricsReportingController] Recording click event", v22, 2u);
  }

  v23 = [objc_allocWithZone(SSMetricsClickEvent) init];
  v24 = String._bridgeToObjectiveC()();
  [v23 setTargetIdentifier:v24];

  MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
  v25 = String._bridgeToObjectiveC()();

  [v23 setTargetType:v25];

  MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
  v26 = String._bridgeToObjectiveC()();

  [v23 setActionType:v26];

  v27 = type metadata accessor for MetricsEvent.Click(0);
  outlined init with copy of TaskPriority?(a1 + v27[7], v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v104 = *(v29 + 48);
  v105 = v29 + 48;
  v30 = v104(v13, 1, v28);
  v106 = v28;
  v99 = v29;
  if (v30 == 1)
  {
    outlined destroy of TaskPriority?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v31 = 0;
  }

  else
  {
    URL.absoluteString.getter();
    (*(v29 + 8))(v13, v28);
    v31 = String._bridgeToObjectiveC()();
  }

  [v23 setTargetURL:{v31, v99}];

  isa = *(a1 + v27[8]);
  v33 = v23;
  v34 = v33;
  if (isa)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v35 = String._bridgeToObjectiveC()();
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
    v38 = String._bridgeToObjectiveC()();
  }

  v39 = String._bridgeToObjectiveC()();
  [v33 setProperty:v38 forBodyKey:v39];

  swift_unknownObjectRelease();
  v40 = a1 + v27[10];
  v41 = *(v40 + 24);
  if (v41 >> 8 <= 0xFE && (v42 = MetricsEvent.Click.ActionDetails.dictionary.getter(*v40, *(v40 + 8), *(v40 + 16), v41)) != 0)
  {
    aBlock[0] = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v43 = _bridgeAnythingToObjectiveC<A>(_:)();
    outlined destroy of TaskPriority?(aBlock, &_sSDyS2SGMd, &_sSDyS2SGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v44 = Array._bridgeToObjectiveC()().super.isa;
  }

  v103 = a3;
  [v33 setImpressions:v44];
  swift_unknownObjectRelease();
  if (*(a1 + v27[19]) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6F43646572616873;
    v46 = inited + 32;
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 40) = 0xED0000746E65746ELL;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(inited);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v46, &_sSS_yptMd_0, &_sSS_yptMR_0);
    v47 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 addPropertiesWithDictionary:v47];
  }

  v48 = (a1 + v27[20]);
  v49 = v48[1];
  if (v49)
  {
    v50 = *v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_1004F2400;
    *(v51 + 32) = 0xD000000000000013;
    *(v51 + 72) = &type metadata for String;
    *(v51 + 40) = 0x80000001004C7360;
    *(v51 + 48) = v50;
    *(v51 + 56) = v49;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v51);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v51 + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
    v52 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 addPropertiesWithDictionary:v52];
  }

  v53 = (a1 + v27[18]);
  v54 = v53[1];
  if (v54)
  {
    v55 = *v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
    v56 = swift_initStackObject();
    *(v56 + 32) = 0x6554686372616573;
    *(v56 + 16) = xmmword_1004F2400;
    *(v56 + 72) = &type metadata for String;
    *(v56 + 40) = 0xEA00000000006D72;
    *(v56 + 48) = v55;
    *(v56 + 56) = v54;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v56);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v56 + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
    v57 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 addPropertiesWithDictionary:v57];
  }

  v58 = v103;
  if (v108 != 2 && specialized MetricsReportingController.sharedListeningDictionary(context:)(v108 & 1, v100, v101))
  {
    v59 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 addPropertiesWithDictionary:v59];
  }

  v60 = v109;
  if (v58)
  {
    v61 = String._bridgeToObjectiveC()();
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
    v66 = String._bridgeToObjectiveC()();
    v65 = String._bridgeToObjectiveC()();
    [v33 setProperty:v66 forBodyKey:v65];
  }

  v67 = (a1 + v27[13]);
  v69 = *v67;
  v68 = v67[1];
  v70 = v33;
  if (v68)
  {
    v70 = String._bridgeToObjectiveC()();
    [v33 setPageType:v70];
  }

  v108 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
  v71 = *&v60[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  if (!v71 || (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR), v72 = swift_allocObject(), *(v72 + 16) = xmmword_1004F2EF0, v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR), *(v72 + 32) = v69, *(v72 + 40) = v68, *(v72 + 88) = v73, *(v72 + 56) = v73, *(v72 + 64) = v64, *(v72 + 72) = v63, , v74 = v71, , v75 = Array._bridgeToObjectiveC()().super.isa, , v76 = [v74 compoundStringWithElements:v75], v74, v75, !v76))
  {
    v76 = 0;
  }

  [v33 setPageDescription:v76];

  v77 = v107;
  outlined init with copy of TaskPriority?(a1 + v27[14], v107, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v78 = v106;
  if (v104(v77, 1, v106) == 1)
  {
    outlined destroy of TaskPriority?(v77, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v79 = 0;
  }

  else
  {
    URL.absoluteString.getter();
    (*(v99 + 8))(v77, v78);
    v79 = String._bridgeToObjectiveC()();
  }

  v80 = v109;
  [v33 setPageURL:v79];

  if (*(a1 + v27[15]))
  {
    v81.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v81.super.isa = 0;
  }

  v82 = String._bridgeToObjectiveC()();
  [v33 setProperty:v81.super.isa forBodyKey:v82];

  swift_unknownObjectRelease();
  if ((*(a1 + v27[16]) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
    v83 = swift_initStackObject();
    *(v83 + 16) = xmmword_1004F2400;
    *(v83 + 32) = 0x7073694465676170;
    v84 = v83 + 32;
    *(v83 + 72) = &type metadata for String;
    *(v83 + 40) = 0xEF6570795479616CLL;
    *(v83 + 48) = 0x7765695664726163;
    *(v83 + 56) = 0xE800000000000000;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v83);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v84, &_sSS_yptMd_0, &_sSS_yptMR_0);
    v85 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 addPropertiesWithDictionary:v85];
  }

  v86 = *(a1 + v27[17]);
  if (v86 != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_1004F2400;
    *(v87 + 32) = 0xD000000000000014;
    v88 = v87 + 32;
    *(v87 + 40) = 0x80000001004C7340;
    *(v87 + 72) = &type metadata for Bool;
    *(v87 + 48) = v86 & 1;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v87);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v88, &_sSS_yptMd_0, &_sSS_yptMR_0);
    v89 = Dictionary._bridgeToObjectiveC()().super.isa;

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
  aBlock[4] = partial apply for closure #1 in MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:);
  aBlock[5] = v94;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_30;
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
    v7 = String._bridgeToObjectiveC()();
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
    v8 = String._bridgeToObjectiveC()();
    [v3 setAppleTimingApp:v8];
  }

  if (a1->requestMessageSize)
  {
    v9 = String._bridgeToObjectiveC()();
    [v3 setConnectionType:v9];
  }

  if (a1->resolvedIPAddress.value._countAndFlagsBits)
  {
    v10 = String._bridgeToObjectiveC()();
    [v3 setEdgeNodeCacheStatus:v10];
  }

  if (*(&a1[1].domainLookupEndTime.value + 7))
  {
    v11 = String._bridgeToObjectiveC()();
    [v3 setResponseDate:v11];
  }

  if (*(&a1[1].responseStartTime.value + 2))
  {
    v12 = String._bridgeToObjectiveC()();
    [v3 setResolvedIPAddress:v12];
  }

  v24 = *&a1->resolvedIPAddress.value._object;
  v13 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v14 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x80000001004C7380;
    *(inited + 48) = v14;
    *(inited + 56) = v13;
    outlined init with copy of TaskPriority?(&v24, aBlock, &_sSSSgMd, &_sSSSgMR);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(inited);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(inited + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

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
      aBlock[4] = partial apply for closure #1 in MetricsReportingController.recordLoadUrlEvent(_:);
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_36;
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

void closure #1 in closure #1 in MetricsReportingController.recordLoadUrlEvent(_:)(void *a1)
{
  if (SSMetricsLoadURLEvent.shouldRecordLoadURLEvent()())
  {
    MetricsReportingController.insertMainWindowRelatedEvent(_:completionHandler:)(a1, CFRange.init(_:), 0);
  }
}

void MetricsReportingController.recordComponentRenderEvent(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsComponentRenderEvent()) init];
    if (*(a1 + 8))
    {
      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = 0;
    }

    v11 = String._bridgeToObjectiveC()();
    [v9 setProperty:v10 forBodyKey:v11];
    swift_unknownObjectRelease();

    v12 = *(a1 + 16);
    if (v12 == 27)
    {
      v13 = 0;
    }

    else
    {
      MetricsEvent.TargetType.rawValue.getter(v12);
      v13 = String._bridgeToObjectiveC()();
    }

    v14 = String._bridgeToObjectiveC()();
    [v9 setProperty:v13 forBodyKey:v14];
    swift_unknownObjectRelease();

    v15 = *(a1 + 24);
    v16 = String._bridgeToObjectiveC()();
    [v9 setProperty:v15 forBodyKey:v16];

    v17 = *(a1 + 32);
    v18 = String._bridgeToObjectiveC()();
    [v9 setProperty:v17 forBodyKey:v18];

    v19 = *(a1 + 40);
    v20 = String._bridgeToObjectiveC()();
    [v9 setProperty:v19 forBodyKey:v20];

    v21 = *(a1 + 48);
    v22 = String._bridgeToObjectiveC()();
    [v9 setProperty:v21 forBodyKey:v22];

    v23 = *(a1 + 56);
    v24 = String._bridgeToObjectiveC()();
    [v9 setProperty:v23 forBodyKey:v24];

    v25 = *(a1 + 64);
    v26 = String._bridgeToObjectiveC()();
    [v9 setProperty:v25 forBodyKey:v26];

    v27 = *(a1 + 72);
    if (v27 >= 4)
    {
      v28 = 0;
    }

    else
    {
      v28 = String._bridgeToObjectiveC()();
    }

    v29 = String._bridgeToObjectiveC()();
    [v9 setProperty:v28 forBodyKey:v29];
    swift_unknownObjectRelease();

    v30 = *&v2[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    *(v31 + 24) = v9;
    aBlock[4] = partial apply for closure #1 in MetricsReportingController.recordComponentRenderEvent(_:);
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_42;
    v32 = _Block_copy(aBlock);
    v33 = v30;
    v34 = v2;
    v35 = v9;

    [v35 setStandardPropertiesWith:v33 completionHandler:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v9 = &v99 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v101 = v9;
    v100 = a2;
    v103 = v4;
    v15 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsPageRenderEvent()) init];
    swift_beginAccess();
    v16 = *(a1 + 16);
    swift_beginAccess();
    v17 = *(a1 + 32);
    v102 = a3;
    if (v17)
    {
      v18 = v16;
      v19 = 0;
    }

    else
    {
      v20 = *(a1 + 24);
      v21 = objc_opt_self();
      v22 = v16;
      v23 = [v21 serverTimeFromTimeInterval:v20];
      v24 = [v23 unsignedLongLongValue];

      v106[15] = v24;
      v19 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v25 = String._bridgeToObjectiveC()();
    [v15 setProperty:v19 forBodyKey:v25];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v26 = 0;
    if ((*(a1 + 48) & 1) == 0)
    {
      v27 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 40)];
      v28 = [v27 unsignedLongLongValue];

      v106[12] = v28;
      v26 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v29 = String._bridgeToObjectiveC()();
    [v15 setProperty:v26 forBodyKey:v29];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v30 = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      v31 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 56)];
      v32 = [v31 unsignedLongLongValue];

      v106[9] = v32;
      v30 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v33 = String._bridgeToObjectiveC()();
    [v15 setProperty:v30 forBodyKey:v33];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v34 = 0;
    if ((*(a1 + 80) & 1) == 0)
    {
      v35 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 72)];
      v36 = [v35 unsignedLongLongValue];

      v106[6] = v36;
      v34 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v37 = String._bridgeToObjectiveC()();
    [v15 setProperty:v34 forBodyKey:v37];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v38 = 0;
    if ((*(a1 + 96) & 1) == 0)
    {
      v39 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 88)];
      v40 = [v39 unsignedLongLongValue];

      v106[3] = v40;
      v38 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v41 = String._bridgeToObjectiveC()();
    [v15 setProperty:v38 forBodyKey:v41];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v42 = 0;
    if ((*(a1 + 112) & 1) == 0)
    {
      v43 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 104)];
      v44 = [v43 unsignedLongLongValue];

      v106[0] = v44;
      v42 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v45 = String._bridgeToObjectiveC()();
    [v15 setProperty:v42 forBodyKey:v45];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v46 = 0;
    if ((*(a1 + 128) & 1) == 0)
    {
      v47 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 120)];
      v48 = [v47 unsignedLongLongValue];

      v104 = v48;
      v46 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v49 = String._bridgeToObjectiveC()();
    [v15 setProperty:v46 forBodyKey:v49];
    swift_unknownObjectRelease();

    if (v16)
    {
      [v16 requestStartTime];
      v51 = [objc_opt_self() serverTimeFromTimeInterval:v50];
      v52 = [v51 unsignedLongLongValue];

      v104 = v52;
      v53 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v53 = 0;
    }

    v54 = String._bridgeToObjectiveC()();
    [v15 setProperty:v53 forBodyKey:v54];
    swift_unknownObjectRelease();

    if (v16)
    {
      [v16 responseStartTime];
      v56 = [objc_opt_self() serverTimeFromTimeInterval:v55];
      v57 = [v56 unsignedLongLongValue];

      v104 = v57;
      v58 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v58 = 0;
    }

    v59 = String._bridgeToObjectiveC()();
    [v15 setProperty:v58 forBodyKey:v59];
    swift_unknownObjectRelease();

    if (v16)
    {
      [v16 responseEndTime];
      v61 = [objc_opt_self() serverTimeFromTimeInterval:v60];
      v62 = [v61 unsignedLongLongValue];

      v104 = v62;
      v63 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v64 = String._bridgeToObjectiveC()();
      [v15 setProperty:v63 forBodyKey:v64];
      swift_unknownObjectRelease();

      v65 = [v16 cachedResponse];
    }

    else
    {
      v66 = String._bridgeToObjectiveC()();
      [v15 setProperty:0 forBodyKey:v66];

      v65 = 0;
    }

    LOBYTE(v104) = v65;
    v67 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v68 = String._bridgeToObjectiveC()();
    [v15 setProperty:v67 forBodyKey:v68];
    swift_unknownObjectRelease();

    v69 = (a1 + *(*a1 + 160));
    v70 = v69[1];
    v104 = *v69;
    v105 = v70;

    v71 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v72 = String._bridgeToObjectiveC()();
    [v15 setProperty:v71 forBodyKey:v72];
    swift_unknownObjectRelease();

    v73 = v69[3];
    v104 = v69[2];
    v105 = v73;

    v74 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v75 = String._bridgeToObjectiveC()();
    [v15 setProperty:v74 forBodyKey:v75];
    swift_unknownObjectRelease();

    v76 = type metadata accessor for MetricsPageProperties(0);
    v77 = v101;
    outlined init with copy of TaskPriority?(v69 + *(v76 + 24), v101, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v78 = type metadata accessor for URL();
    v79 = *(v78 - 8);
    if ((*(v79 + 48))(v77, 1, v78) == 1)
    {
      outlined destroy of TaskPriority?(v77, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v80 = 0;
    }

    else
    {
      v81 = URL.absoluteString.getter();
      v83 = v82;
      (*(v79 + 8))(v77, v78);
      v104 = v81;
      v105 = v83;
      v80 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    v84 = v102;
    v85 = String._bridgeToObjectiveC()();
    [v15 setProperty:v80 forBodyKey:v85];
    swift_unknownObjectRelease();

    if (*(v69 + *(v76 + 28)))
    {
      v104 = *(v69 + *(v76 + 28));

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      v86 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v86 = 0;
    }

    v87 = String._bridgeToObjectiveC()();
    [v15 setProperty:v86 forBodyKey:v87];
    swift_unknownObjectRelease();

    if (v84)
    {
      v104 = v100;
      v105 = v84;

      v88 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v88 = 0;
    }

    v89 = String._bridgeToObjectiveC()();
    [v15 setProperty:v88 forBodyKey:v89];
    swift_unknownObjectRelease();

    v90 = v103;
    v91 = *&v103[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v92 = swift_allocObject();
    *(v92 + 16) = v90;
    *(v92 + 24) = v15;
    v93 = v91;
    v94 = v15;
    v95 = v93;
    v96 = v94;

    v97 = v90;
    v98 = v96;
    specialized Music_SSMetricsPageRenderEvent.setSamplingProperties(with:_:)(v91, v98, v98, v91, partial apply for closure #1 in MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:), v92);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in closure #1 in MetricsReportingController.recordComponentRenderEvent(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a4(a2))
  {
    MetricsReportingController.insertMainWindowRelatedEvent(_:completionHandler:)(a2, CFRange.init(_:), 0);
  }
}

void MetricsReportingController.recordCustomEvent(with:properties:sharedListeningContext:shouldSuppressUserInfo:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v23 = a6;
  v22 = a5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v17 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v18 = String._bridgeToObjectiveC()();
    [v17 setTopic:v18];

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v17 addPropertiesWithDictionary:isa];

    [v17 setShouldSuppressUserInfo:a7 & 1];
    [v17 setShouldSuppressDSIDHeader:a7 & 1];

    if (a4 != 2)
    {
      if (specialized MetricsReportingController.sharedListeningDictionary(context:)(a4 & 1, v22, v23))
      {
        v20 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v17 addPropertiesWithDictionary:v20];
      }
    }

    MetricsReportingController.insertMainWindowRelatedEvent(_:completionHandler:)(v17, a8, a9);
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
  v37 = type metadata accessor for UUID();
  v10 = *(v37 - 8);
  __chkstk_darwin();
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v18 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v36 = a6;
    v19 = v7;
    v20 = v18;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:a4 & 1];
    [v20 setShouldSuppressDSIDHeader:a4 & 1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v10 + 8))(v12, v37);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v23;
    *(inited + 56) = v25;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(inited);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(inited + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
    v26 = Dictionary._bridgeToObjectiveC()().super.isa;

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
    aBlock[4] = partial apply for closure #1 in MetricsReportingController.recordCarPlayCustomEvent(with:properties:shouldSuppressUserInfo:completionHandler:);
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_51;
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

void closure #1 in MetricsReportingController.recordCarPlayCustomEvent(with:properties:shouldSuppressUserInfo:completionHandler:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = String._bridgeToObjectiveC()();
  [a1 setTopic:v12];

  if (one-time initialization token for carMetrics != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.carMetrics);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(a2, a3, v20);
    _os_log_impl(&_mh_execute_header, v14, v15, "Inserting carPlay custom event with topic=%{public}s in metrics controller", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  v18 = *(a4 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
  v20[4] = a5;
  v20[5] = a6;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v20[3] = &block_descriptor_165;
  v19 = _Block_copy(v20);

  [v18 insertEvent:a1 withCompletionHandler:v19];
  _Block_release(v19);
}

Swift::Void __swiftcall MetricsReportingController.reportEventForLocalEvaluation(with:)(Swift::OpaquePointer with)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v5 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v6 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v6 addPropertiesWithDictionary:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t MetricsReportingController.flushUnreportedEvents()()
{
  *(v1 + 144) = v0;
  return _swift_task_switch(MetricsReportingController.flushUnreportedEvents(), 0, 0);
}

{
  if (one-time initialization token for metrics != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v1, static Logger.metrics);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MetricsReportingController] Attempting to flush unreported events", v4, 2u);
  }

  v5 = v0[18];

  v6 = *(v5 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
  v0[2] = v0;
  v0[3] = MetricsReportingController.flushUnreportedEvents();
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_54;
  v0[14] = v7;
  [v6 flushUnreportedEventsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = MetricsReportingController.flushUnreportedEvents();
  }

  else
  {
    v2 = MetricsReportingController.flushUnreportedEvents();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t MetricsReportingController.flushUnreportedEvents()(uint64_t a1)
{
  v13 = v1;
  swift_willThrow();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[20];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v1[10] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MetricsReportingController] Failed to flush unreported events with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
  }

  v10 = v1[1];

  return v10();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
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

uint64_t MetricsReportingController.carPlayPostFrequency.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    outlined destroy of TaskPriority?(&v8, &_sypSgMd_0, &_sypSgMR_0);
    return 0;
  }

  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForConfigurationKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
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

char *MetricsReportingController.().init()()
{
  v1 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_componentRenderEventSampler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore19MetricsEventSamplerCyAA0a25_SSMetricsComponentRenderD0CGMd, &_s9MusicCore19MetricsEventSamplerCyAA0a25_SSMetricsComponentRenderD0CGMR);
  v2 = swift_allocObject();
  v3 = objc_opt_self();
  *(v2 + 16) = [v3 standardUserDefaults];
  *&v0[v1] = v2;
  v4 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageRenderEventSampler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore19MetricsEventSamplerCyAA0a20_SSMetricsPageRenderD0CGMd, &_s9MusicCore19MetricsEventSamplerCyAA0a20_SSMetricsPageRenderD0CGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = [v3 standardUserDefaults];
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration] = 0;
  v6 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController;
  *&v0[v6] = [objc_allocWithZone(SSMetricsController) init];
  v7 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController;
  *&v0[v7] = [objc_allocWithZone(SSMetricsController) init];
  v8 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carMetricsReporter;
  type metadata accessor for CarNowPlayingMetrics.Reporter();
  *&v0[v8] = swift_allocObject();
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_backgroundObserver] = 0;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_urlBagObserver] = 0;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory] = _swiftEmptyArrayStorage;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for MetricsReportingController();
  v9 = objc_msgSendSuper2(&v19, "init");
  v10 = one-time initialization token for shared;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for BagProvider.Observer();
  v13 = swift_allocObject();
  swift_weakInit();
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  swift_weakAssign();
  v14 = *(v13 + 24);
  v15 = *(v13 + 32);
  *(v13 + 24) = partial apply for closure #1 in MetricsReportingController.().init();
  *(v13 + 32) = v12;
  swift_retain_n();
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v14, v15);
  __chkstk_darwin();
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.createObserver(handler:));
  BagProvider.fetchBag(forceReload:)(0);

  *&v11[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_urlBagObserver] = v13;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = UISceneDidEnterBackgroundNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v11[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, partial apply for closure #2 in MetricsReportingController.().init(), v16);

  return v11;
}

uint64_t closure #1 in MetricsReportingController.().init()(void *a1, uint64_t a2)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  v5 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(closure #1 in closure #1 in MetricsReportingController.().init()partial apply, v4);
}

void closure #1 in closure #1 in MetricsReportingController.().init()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MetricsReportingController.configure(with:)(a2);
  }
}

uint64_t closure #2 in MetricsReportingController.().init()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v3 = &v13 - v2;
  if (one-time initialization token for metrics != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.metrics);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
  }

  static TaskPriority.low.getter();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #2 in MetricsReportingController.().init(), v11);

  return outlined destroy of TaskPriority?(v3, &_sScPSgMd_0, &_sScPSgMR_0);
}

uint64_t closure #1 in closure #2 in MetricsReportingController.().init()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    CarNowPlayingMetrics.Reporter.reportPlaysSummaryEventIfNeeded(for:)(MusicCore_CarNowPlayingMetrics_EventType_carPlay);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;

    CarNowPlayingMetrics.Reporter.reportPlaysSummaryEventIfNeeded(for:)(MusicCore_CarNowPlayingMetrics_EventType_bluetooth);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  v0[12] = v5;
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = closure #1 in closure #2 in MetricsReportingController.().init();

    return MetricsReportingController.flushUnreportedEvents()();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void MetricsReportingController.configure(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
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
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v11 + 16))
    {

      return;
    }

    v12 = [a1 dictionaryForBagKey:SSVURLBagKeyMusicCommon];
    if (v12)
    {
      v13 = v12;
      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v27[0] = 0xD000000000000023;
      *(&v27[0] + 1) = 0x80000001004C76A0;
      AnyHashable.init<A>(_:)();
      if (*(v14 + 16))
      {
        v15 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
        if (v16)
        {
          outlined init with copy of Any(*(v14 + 56) + 32 * v15, v27);
          outlined destroy of AnyHashable(v28);

          outlined init with take of Any(v27, v29);
          strcpy(v27, "postFrequency");
          HIWORD(v27[0]) = -4864;
          AnyHashable.init<A>(_:)();
          outlined init with copy of Any(v29, v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v11;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v28, isUniquelyReferenced_nonNull_native);
          outlined destroy of AnyHashable(v28);
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
          v18 = 1;
          goto LABEL_11;
        }
      }

      outlined destroy of AnyHashable(v28);
    }

    v18 = 0;
LABEL_11:
    v19 = objc_allocWithZone(SSMetricsConfiguration);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

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

void MetricsReportingController.insertMainWindowRelatedEvent(_:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    MetricsReportingController.updatePageHistory(for:)(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v17;
    *(inited + 56) = v19;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(inited);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(inited + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 addPropertiesWithDictionary:isa];

    if (one-time initialization token for metrics == -1)
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
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.metrics);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
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
  aBlock[4] = partial apply for closure #1 in MetricsReportingController.insertMainWindowRelatedEvent(_:completionHandler:);
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_171;
  v27 = _Block_copy(aBlock);

  [v25 insertEvent:a1 withCompletionHandler:v27];
  _Block_release(v27);
}

uint64_t MetricsReportingController.updatePageHistory(for:)(void *a1)
{
  v3 = [a1 eventType];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_10;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v7)
  {
LABEL_10:
  }

  if (v5 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v13 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory;
  swift_beginAccess();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = String._bridgeToObjectiveC()();
  [a1 setProperty:isa forBodyKey:v15];

  v16 = v1;
  result = SSMetricsMutableEvent.pageHistoryIdentifier.getter();
  if (v17)
  {
    v18 = result;
    v19 = v17;
    v20 = *(v16 + v13);
    if (*(v20 + 16) >= 5uLL)
    {

      *(v16 + v13) = specialized Sequence.suffix(_:)(4uLL, v20);
    }

    swift_beginAccess();
    v21 = *(v16 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + v13) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      *(v16 + v13) = v21;
    }

    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      v27 = v21;
      v28 = *(v21 + 2);
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v23 + 1, 1, v27);
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

unint64_t specialized Sequence.suffix(_:)(unint64_t result, uint64_t a2)
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
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
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
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1);
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
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      if (v18 >= v7)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        v19 = _swiftEmptyArrayStorage[2];
        if (v19 >= v7 && v19 >= v18)
        {

          specialized ContiguousArray.append<A>(contentsOf:)(v20, &_swiftEmptyArrayStorage[4], v7, (2 * v18) | 1);

          specialized ContiguousArray.append<A>(contentsOf:)(_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage[4], 0, (2 * v7) | 1);

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

id MetricsReportingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsReportingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t specialized Music_SSMetricsPageRenderEvent.subscript.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_0, &_sypSgMR_0);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
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

uint64_t specialized static MetricsEvent.Click.ActionContext.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t specialized static MetricsReportingController.sharedActivityParticipantsBucket(for:)(unint64_t a1)
{
  if (a1 <= 1)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
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

unint64_t specialized MetricsReportingController.sharedListeningDictionary(context:)(char a1, unint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EB0;
    strcpy((inited + 32), "sharedActivity");
    *(inited + 47) = -18;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD00000000000001CLL;
    *(inited + 88) = 0x80000001004C7720;
    *(inited + 96) = specialized static MetricsReportingController.sharedActivityParticipantsBucket(for:)(a2);
    *(inited + 104) = v7;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0xD000000000000018;
    *(inited + 136) = 0x80000001004C7210;
    v8 = specialized static MetricsReportingController.sharedActivityParticipantsBucket(for:)(a3);
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v8;
    *(inited + 152) = v9;
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd_0, &_sSS_yptMR_0);
    swift_arrayDestroy();
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 32) = 0x6341646572616873;
    v12 = v11 + 32;
    *(v11 + 16) = xmmword_1004F2400;
    *(v11 + 40) = 0xEE00797469766974;
    *(v11 + 72) = &type metadata for Bool;
    *(v11 + 48) = 0;
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v11);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v12, &_sSS_yptMd_0, &_sSS_yptMR_0);
  }

  return v10;
}

unint64_t specialized MetricsEvent.TargetType.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v2;
  }
}

uint64_t outlined init with copy of MetricsEvent.Page(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MetricsEvent.Page(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t specialized MetricsEvent.Click.ActionType.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x41)
  {
    return 65;
  }

  else
  {
    return v2;
  }
}

double specialized MetricsEvent.LoadUrl.init(performanceMetrics:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
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
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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

unint64_t specialized MetricsEvent.ComponentRender.PreloadStatus.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MetricsEvent.ComponentRender.PreloadStatus.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000DD33C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *specialized ContiguousArray.append<A>(contentsOf:)(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
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
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1);
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

void specialized MetricsReportingController.recordDialogEvent(_:pageContext:)(uint64_t a1)
{
  v2 = type metadata accessor for Date.ISO8601FormatStyle();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin();
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Date();
  v50 = *(v52 - 8);
  __chkstk_darwin();
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SSMetricsDialogEvent) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setDialogId:v6];

  v7 = String._bridgeToObjectiveC()();

  [v5 setDialogType:v7];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x656C746974;
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(inited);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(inited + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 addPropertiesWithDictionary:isa];
  }

  if (*(a1 + 48))
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v5 setMessage:v12];

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
  v14 = swift_initStackObject();
  v56 = xmmword_1004F2400;
  *(v14 + 16) = xmmword_1004F2400;
  *(v14 + 32) = 0x436567617373656DLL;
  v16 = *(a1 + 56);
  v15 = *(a1 + 64);
  *(v14 + 72) = &type metadata for String;
  *(v14 + 40) = 0xEB0000000065646FLL;
  *(v14 + 48) = v16;
  *(v14 + 56) = v15;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v14);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v14 + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
  v17 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 addPropertiesWithDictionary:v17];

  v48 = v13;
  v18 = swift_initStackObject();
  *(v18 + 16) = v56;
  *(v18 + 32) = 0x736E6F6974706FLL;
  *(v18 + 40) = 0xE700000000000000;
  v19 = *(a1 + 72);
  *(v18 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *(v18 + 48) = v19;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v18);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v18 + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
  v20 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 addPropertiesWithDictionary:v20];

  v21 = String._bridgeToObjectiveC()();
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

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(v24);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v24 + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
    v25 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 addPropertiesWithDictionary:v25];
  }

  v27 = *(a1 + 96);
  v26 = *(a1 + 104);

  v28 = String._bridgeToObjectiveC()();
  [v5 setTargetId:v28];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v29 = swift_allocObject();
  v48 = v5;
  v30 = v29;
  *(v29 + 16) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1004F2EB0;
  strcpy((v31 + 32), "responseTime");
  *(v31 + 45) = 0;
  *(v31 + 46) = -5120;
  v32 = v49;
  static Date.now.getter();
  v33 = v51;
  static FormatStyle<>.iso8601.getter();
  lazy protocol witness table accessor for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle();
  v34 = v54;
  Date.formatted<A>(_:)();
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
  v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v31);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  *(v30 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  *(v30 + 32) = v38;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  v40 = v48;
  [v48 setUserActions:v39];

  v41 = v55;
  v42 = *&v55[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v40;
  v61 = partial apply for closure #1 in MetricsReportingController.recordDialogEvent(_:pageContext:);
  v62 = v43;
  v57 = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = thunk for @escaping @callee_guaranteed () -> ();
  v60 = &block_descriptor_183;
  v44 = _Block_copy(&v57);
  v45 = v42;
  v46 = v41;
  v47 = v40;

  [v47 setStandardPropertiesWith:v45 completionHandler:v44];
  _Block_release(v44);
}

uint64_t sub_1000DDEB8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  return outlined init with copy of Any(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type MetricsEvent.TargetType and conformance MetricsEvent.TargetType()
{
  result = lazy protocol witness table cache variable for type MetricsEvent.TargetType and conformance MetricsEvent.TargetType;
  if (!lazy protocol witness table cache variable for type MetricsEvent.TargetType and conformance MetricsEvent.TargetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsEvent.TargetType and conformance MetricsEvent.TargetType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricsEvent.Page.DisplayType and conformance MetricsEvent.Page.DisplayType()
{
  result = lazy protocol witness table cache variable for type MetricsEvent.Page.DisplayType and conformance MetricsEvent.Page.DisplayType;
  if (!lazy protocol witness table cache variable for type MetricsEvent.Page.DisplayType and conformance MetricsEvent.Page.DisplayType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsEvent.Page.DisplayType and conformance MetricsEvent.Page.DisplayType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricsEvent.Click.ActionType and conformance MetricsEvent.Click.ActionType()
{
  result = lazy protocol witness table cache variable for type MetricsEvent.Click.ActionType and conformance MetricsEvent.Click.ActionType;
  if (!lazy protocol witness table cache variable for type MetricsEvent.Click.ActionType and conformance MetricsEvent.Click.ActionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsEvent.Click.ActionType and conformance MetricsEvent.Click.ActionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricsEvent.Click.ActionContext and conformance MetricsEvent.Click.ActionContext()
{
  result = lazy protocol witness table cache variable for type MetricsEvent.Click.ActionContext and conformance MetricsEvent.Click.ActionContext;
  if (!lazy protocol witness table cache variable for type MetricsEvent.Click.ActionContext and conformance MetricsEvent.Click.ActionContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsEvent.Click.ActionContext and conformance MetricsEvent.Click.ActionContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricsEvent.Dialog.Type and conformance MetricsEvent.Dialog.Type()
{
  result = lazy protocol witness table cache variable for type MetricsEvent.Dialog.Type and conformance MetricsEvent.Dialog.Type;
  if (!lazy protocol witness table cache variable for type MetricsEvent.Dialog.Type and conformance MetricsEvent.Dialog.Type)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsEvent.Dialog.Type and conformance MetricsEvent.Dialog.Type);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricsEvent.Dialog.ActionType and conformance MetricsEvent.Dialog.ActionType()
{
  result = lazy protocol witness table cache variable for type MetricsEvent.Dialog.ActionType and conformance MetricsEvent.Dialog.ActionType;
  if (!lazy protocol witness table cache variable for type MetricsEvent.Dialog.ActionType and conformance MetricsEvent.Dialog.ActionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsEvent.Dialog.ActionType and conformance MetricsEvent.Dialog.ActionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricsEvent.ComponentRender.PreloadStatus and conformance MetricsEvent.ComponentRender.PreloadStatus()
{
  result = lazy protocol witness table cache variable for type MetricsEvent.ComponentRender.PreloadStatus and conformance MetricsEvent.ComponentRender.PreloadStatus;
  if (!lazy protocol witness table cache variable for type MetricsEvent.ComponentRender.PreloadStatus and conformance MetricsEvent.ComponentRender.PreloadStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricsEvent.ComponentRender.PreloadStatus and conformance MetricsEvent.ComponentRender.PreloadStatus);
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

uint64_t sub_1000DE320(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DE3F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MetricsEvent.Page(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [[String : Any]]?(319, &lazy cache variable for type metadata for [String : String]?, &_sSDyS2SGMd, &_sSDyS2SGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for String?, &type metadata for String);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for MetricsEvent.Page.DisplayType?, &type metadata for MetricsEvent.Page.DisplayType);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Bool?, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t sub_1000DE644(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DE714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MetricsEvent.Click(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [[String : Any]]?(319, &lazy cache variable for type metadata for [[String : Any]]?, &_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for MetricsEvent.Click.ActionContext?, &type metadata for MetricsEvent.Click.ActionContext);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for MetricsEvent.Click.ActionDetails?, &type metadata for MetricsEvent.Click.ActionDetails);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [[String : Any]]?(319, &lazy cache variable for type metadata for [[AnyHashable : Any]]?, &_sSaySDys11AnyHashableVypGGMd, &_sSaySDys11AnyHashableVypGGMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for String?, &type metadata for String);
            if (v6 <= 0x3F)
            {
              type metadata accessor for [[String : Any]]?(319, &lazy cache variable for type metadata for [String : String]?, &_sSDyS2SGMd, &_sSDyS2SGMR);
              if (v7 <= 0x3F)
              {
                type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for MetricsEvent.Page.DisplayType?, &type metadata for MetricsEvent.Page.DisplayType);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Bool?, &type metadata for Bool);
                  if (v9 <= 0x3F)
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

uint64_t get_enum_tag_for_layout_string_9MusicCore12MetricsEventV5ClickV13ActionContextO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Click.ActionContext(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetricsEvent.Click.ActionContext(uint64_t result, unsigned int a2, unsigned int a3)
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

void *destructiveInjectEnumTag for MetricsEvent.Click.ActionContext(void *result, int a2)
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

uint64_t get_enum_tag_for_layout_string_9MusicCore12MetricsEventV5ClickV13ActionDetailsO12SearchSourceO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore12MetricsEventV5ClickV13ActionDetailsO(uint64_t a1)
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Click.ActionDetails(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetricsEvent.Click.ActionDetails(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for MetricsEvent.Click.ActionDetails(uint64_t result, unsigned int a2)
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

__n128 __swift_memcpy24_8_0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Click.ActionDetails.SearchSource(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetricsEvent.Click.ActionDetails.SearchSource(uint64_t result, unsigned int a2, unsigned int a3)
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

void *destructiveInjectEnumTag for MetricsEvent.Click.ActionDetails.SearchSource(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for MetricsEvent.LoadUrl(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetricsEvent.LoadUrl(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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

uint64_t getEnumTagSinglePayload for MetricsEvent.Dialog(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MetricsEvent.Dialog(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for MetricsEvent.ComponentRender(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MetricsEvent.ComponentRender(uint64_t result, int a2, int a3)
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

uint64_t sub_1000DF108()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DF17C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in MetricsReportingController.().init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #2 in MetricsReportingController.().init()(a1, v4, v5, v6);
}

uint64_t objectdestroy_150Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF2B0()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle()
{
  result = lazy protocol witness table cache variable for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle;
  if (!lazy protocol witness table cache variable for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle)
  {
    type metadata accessor for Date.ISO8601FormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle);
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = &a9[v16[8]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  result = outlined assign with take of URL?(a5, &a9[v17]);
  *&a9[v19] = a6;
  *v20 = a7;
  *(v20 + 1) = a8;
  return result;
}

uint64_t type metadata accessor for MetricsPageProperties(uint64_t a1)
{
  result = type metadata singleton initialization cache for MetricsPageProperties;
  if (!type metadata singleton initialization cache for MetricsPageProperties)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MetricsContentType.init(modelObject:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 innermostModelObject];
LABEL_3:
    v4 = MetricsContentType.init(modelObject:)(v3);

    v5 = 0;
    v6 = 0;
LABEL_8:
    v30 = v4;
LABEL_9:
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
    return v4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 3;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 4;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v4 = 0;
    v5 = 0;
    v6 = 0;
    v30 = 0;
    goto LABEL_9;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 8;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 10;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 11;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 1;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 12;
    goto LABEL_8;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v30 = 2;
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = &v30;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in MetricsContentType.init(modelObject:);
    *(v12 + 24) = v11;
    v28 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v29 = v12;
    v23 = v11;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = thunk for @escaping @callee_guaranteed () -> ();
    v27 = &block_descriptor_177;
    v13 = _Block_copy(&aBlock);
    v14 = a1;

    [v10 performWithoutEnforcement:v13];

    _Block_release(v13);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      v5 = partial apply for closure #1 in MetricsContentType.init(modelObject:);
      v4 = v30;
      v6 = v23;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v6 = 0;
      v4 = 6;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v6 = 0;
      v4 = 7;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v6 = 0;
      v4 = 5;
      goto LABEL_8;
    }

    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = [v15 innermostModelObject];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v5 = 0;
        v6 = 0;
        v4 = 17;
        goto LABEL_8;
      }

      v3 = v16;
      goto LABEL_3;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v6 = 0;
      v4 = 19;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v6 = 0;
      v4 = 9;
      goto LABEL_8;
    }
  }

  aBlock = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  aBlock = 0xD00000000000002BLL;
  v25 = 0x80000001004C7D10;
  v17 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo13MPModelObjectC14MusicUtilitiesE16LoggingComponentO_Tt0gq5Tf4g_n(&outlined read-only object #0 of MetricsContentType.init(modelObject:));
  MPModelObject.humanDescription(including:)(v17);
  v19 = v18;
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  result = _assertionFailure(_:_:file:line:flags:)();
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

Swift::Bool __swiftcall SSMetricsLoadURLEvent.shouldRecordLoadURLEvent()()
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

id Double.toMillisecondsInServerTime.getter(double a1)
{
  v1 = [objc_opt_self() serverTimeFromTimeInterval:a1];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

uint64_t SSMetricsMutableEvent.pageHistoryIdentifier.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
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
    outlined destroy of TaskPriority?(v7, &_sypSgMd_0, &_sypSgMR_0);
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

  return outlined assign with take of URL?(a1, v3);
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetricsContentType(char *a1, char *a2)
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricsContentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MetricsContentType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MetricsContentType(uint64_t a1)
{
  MetricsContentType.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricsContentType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MetricsContentType.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MetricsContentType@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsContentType_optional *a2@<X8>)
{
  result = specialized MetricsContentType.init(rawValue:)(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MetricsContentType@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsContentType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *SSMetricsConfiguration.fieldsRequiringReducedResolution.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForConfigurationKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
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
    outlined destroy of TaskPriority?(v14, &_sypSgMd_0, &_sypSgMR_0);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
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
      outlined init with copy of Any(v4, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      if (swift_dynamicCast())
      {
        v6 = v15;
        AnyHashable.init<A>(_:)();
        if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v8 & 1) != 0))
        {
          outlined init with copy of Any(*(v6 + 56) + 32 * v7, &v15);
          outlined destroy of AnyHashable(v14);

          if (swift_dynamicCast())
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
            }

            v10 = *(v5 + 2);
            v9 = *(v5 + 3);
            if (v10 >= v9 >> 1)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v5);
            }

            *(v5 + 2) = v10 + 1;
            v11 = &v5[16 * v10];
            *(v11 + 4) = 0x6D614E646C656966;
            *(v11 + 5) = 0xE900000000000065;
          }
        }

        else
        {

          outlined destroy of AnyHashable(v14);
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