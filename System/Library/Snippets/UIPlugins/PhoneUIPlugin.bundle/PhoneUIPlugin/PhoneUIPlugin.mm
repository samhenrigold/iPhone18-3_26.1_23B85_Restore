uint64_t one-time initialization function for siriPhoneUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.siriPhoneUI);
  __swift_project_value_buffer(v0, static Logger.siriPhoneUI);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.siriPhoneUI.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPhoneUI != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for siriPhoneUI);
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.siriPhoneUI);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.siriPhoneUI.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for siriPhoneUI != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for siriPhoneUI);
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.siriPhoneUI);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a6;
  v33 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, v7, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  outlined init with copy of Logger?(v16, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
  {
    outlined destroy of Logger?(v14);
  }

  else
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = a3;
      v22 = v21;
      v30 = swift_slowAlloc();
      v34 = v30;
      *v22 = 136315650;
      v23 = StaticString.description.getter();
      v29 = v19;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v34);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v32;
      *(v22 + 22) = 2080;
      *(v22 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v34);
      v26 = v20;
      v27 = v29;
      _os_log_impl(&dword_0, v29, v26, "FatalError at %s:%lu - %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v18 + 8))(v14, v17);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t (**PhoneUIPlugin.snippet(for:mode:idiom:)(uint64_t a1))(void)
{
  v3 = type metadata accessor for SingleResultCallHistoryView();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v4);
  v6 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SingleResultCallHistoryModel();
  v8 = OUTLINED_FUNCTION_16(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_1();
  v174 = v9;
  OUTLINED_FUNCTION_12();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_15();
  v177 = v11;
  OUTLINED_FUNCTION_5();
  v176 = type metadata accessor for SingleResultVoicemailView();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_0_0();
  v175 = v13;
  OUTLINED_FUNCTION_5();
  v14 = type metadata accessor for SingleResultVoicemailModel();
  v15 = OUTLINED_FUNCTION_16(v14);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_1();
  v170 = v16;
  OUTLINED_FUNCTION_12();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_15();
  v173 = v18;
  OUTLINED_FUNCTION_5();
  v172 = type metadata accessor for ShowPlayVoicemailListView();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_0_0();
  v171 = v20;
  OUTLINED_FUNCTION_5();
  v21 = type metadata accessor for PlayVoicemailModel();
  v22 = OUTLINED_FUNCTION_16(v21);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_1();
  v166 = v23;
  OUTLINED_FUNCTION_12();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_15();
  v169 = v25;
  OUTLINED_FUNCTION_5();
  v168 = type metadata accessor for ShowCallHistoryListView();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_0_0();
  v167 = v27;
  OUTLINED_FUNCTION_5();
  v28 = type metadata accessor for SearchCallHistoryModel();
  v29 = OUTLINED_FUNCTION_16(v28);
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_15();
  v165 = v31;
  OUTLINED_FUNCTION_5();
  v164 = type metadata accessor for StackedButtonsView();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v33);
  v163 = type metadata accessor for LocalEmergencyCallDisambiguationView();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v35);
  v36 = type metadata accessor for LocalEmergencyCallDisambiguationModel();
  v37 = OUTLINED_FUNCTION_16(v36);
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4(v39);
  v161 = type metadata accessor for ForeignEmergencyCallDisambiguationView();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v41);
  v42 = type metadata accessor for ForeignEmergencyCallDisambiguationModel();
  v43 = OUTLINED_FUNCTION_16(v42);
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4(v45);
  v159 = type metadata accessor for EmergencyCountdownView();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v47);
  v48 = type metadata accessor for EmergencyCountdownModel();
  v49 = OUTLINED_FUNCTION_16(v48);
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  __chkstk_darwin(v50);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4(v51);
  v155 = type metadata accessor for AppDisambiguationView();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v52);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v53);
  v154 = type metadata accessor for AppDisambiguationViewSMART();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v55);
  v157 = type metadata accessor for YesNoConfirmationCarPlayView();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v56);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v57);
  v179 = type metadata accessor for YesNoConfirmationView();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v58);
  OUTLINED_FUNCTION_0_0();
  v180 = v59;
  OUTLINED_FUNCTION_5();
  v60 = type metadata accessor for YesNoConfirmationModel();
  v61 = OUTLINED_FUNCTION_16(v60);
  __chkstk_darwin(v61);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  __chkstk_darwin(v62);
  v181 = &v150 - v63;
  OUTLINED_FUNCTION_12();
  __chkstk_darwin(v64);
  OUTLINED_FUNCTION_15();
  v178 = v65;
  OUTLINED_FUNCTION_5();
  v184[1] = type metadata accessor for PhoneSnippetDataModels();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v66);
  OUTLINED_FUNCTION_1();
  v183 = v67;
  OUTLINED_FUNCTION_12();
  v69 = __chkstk_darwin(v68);
  v71 = &v150 - v70;
  __chkstk_darwin(v69);
  v73 = &v150 - v72;
  v74 = type metadata accessor for Logger();
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v150 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = Logger.phoneSnippetUI.unsafeMutableAddressor();
  v79 = *(v75 + 16);
  v182 = v74;
  v79(v77, v78, v74);
  OUTLINED_FUNCTION_3();
  v184[0] = a1;
  outlined init with copy of PhoneSnippetDataModels(a1, v73, v80);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v153 = v1;
    v84 = v83;
    v85 = swift_slowAlloc();
    v152 = v3;
    v86 = v85;
    v185 = v85;
    *v84 = 136315138;
    OUTLINED_FUNCTION_3();
    outlined init with copy of PhoneSnippetDataModels(v73, v71, v87);
    v88 = String.init<A>(describing:)();
    v151 = v6;
    v90 = v89;
    OUTLINED_FUNCTION_13();
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v185);
    v6 = v151;

    *(v84 + 4) = v91;
    _os_log_impl(&dword_0, v81, v82, "#PhoneUIPlugin getting snippet for %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v86);
    v3 = v152;
  }

  else
  {

    OUTLINED_FUNCTION_13();
  }

  (*(v75 + 8))(v77, v182);
  OUTLINED_FUNCTION_3();
  v92 = v183;
  outlined init with copy of PhoneSnippetDataModels(v184[0], v183, v93);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (static RFFeatureFlags.ResponseFramework.SMART.getter())
      {
        OUTLINED_FUNCTION_19();
        AppDisambiguationViewSMART.init(model:)();
        lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type AppDisambiguationViewSMART and conformance AppDisambiguationViewSMART, &type metadata accessor for AppDisambiguationViewSMART, &protocol conformance descriptor for AppDisambiguationViewSMART);
        v82 = View.eraseToAnyView()();
        v114 = &type metadata accessor for AppDisambiguationViewSMART;
      }

      else
      {
        OUTLINED_FUNCTION_19();
        AppDisambiguationView.init(model:)();
        lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type AppDisambiguationView and conformance AppDisambiguationView, &type metadata accessor for AppDisambiguationView, &protocol conformance descriptor for AppDisambiguationView);
        v82 = View.eraseToAnyView()();
        v114 = &type metadata accessor for AppDisambiguationView;
      }

      goto LABEL_22;
    case 2u:
      OUTLINED_FUNCTION_8();
      v121 = OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_20(v121, v122, &v179);
      v123 = v180;
      OUTLINED_FUNCTION_18();
      YesNoConfirmationView.init(model:)();
      OUTLINED_FUNCTION_10();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(v124, v125, &protocol conformance descriptor for YesNoConfirmationView);
      View.eraseToAnyView()();
      OUTLINED_FUNCTION_9();
      goto LABEL_18;
    case 3u:
      v104 = OUTLINED_FUNCTION_11();
      v3 = v158;
      outlined init with take of SingleResultCallHistoryModel(v104, v158, v105);
      v106 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_20(v106, v107, &v182);
      OUTLINED_FUNCTION_18();
      EmergencyCountdownView.init(model:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type EmergencyCountdownView and conformance EmergencyCountdownView, &type metadata accessor for EmergencyCountdownView, &protocol conformance descriptor for EmergencyCountdownView);
      v82 = View.eraseToAnyView()();
      v108 = OUTLINED_FUNCTION_17();
      outlined destroy of PhoneSnippetDataModels(v108, v109);
      v97 = &type metadata accessor for EmergencyCountdownModel;
      goto LABEL_19;
    case 4u:
      v129 = OUTLINED_FUNCTION_11();
      v3 = v160;
      outlined init with take of SingleResultCallHistoryModel(v129, v160, v130);
      v131 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_20(v131, v132, v184);
      OUTLINED_FUNCTION_18();
      ForeignEmergencyCallDisambiguationView.init(model:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationView and conformance ForeignEmergencyCallDisambiguationView, &type metadata accessor for ForeignEmergencyCallDisambiguationView, &protocol conformance descriptor for ForeignEmergencyCallDisambiguationView);
      v82 = View.eraseToAnyView()();
      v133 = OUTLINED_FUNCTION_17();
      outlined destroy of PhoneSnippetDataModels(v133, v134);
      v97 = &type metadata accessor for ForeignEmergencyCallDisambiguationModel;
      goto LABEL_19;
    case 5u:
      v135 = OUTLINED_FUNCTION_11();
      v3 = v162;
      outlined init with take of SingleResultCallHistoryModel(v135, v162, v136);
      v137 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_20(v137, v138, &v185);
      OUTLINED_FUNCTION_18();
      LocalEmergencyCallDisambiguationView.init(model:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationView and conformance LocalEmergencyCallDisambiguationView, &type metadata accessor for LocalEmergencyCallDisambiguationView, &protocol conformance descriptor for LocalEmergencyCallDisambiguationView);
      v82 = View.eraseToAnyView()();
      v139 = OUTLINED_FUNCTION_17();
      outlined destroy of PhoneSnippetDataModels(v139, v140);
      v97 = &type metadata accessor for LocalEmergencyCallDisambiguationModel;
      goto LABEL_19;
    case 6u:
      StackedButtonsView.init(model:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type StackedButtonsView and conformance StackedButtonsView, &type metadata accessor for StackedButtonsView, &protocol conformance descriptor for StackedButtonsView);
      v82 = View.eraseToAnyView()();
      v127 = OUTLINED_FUNCTION_17();
      goto LABEL_20;
    case 8u:
      OUTLINED_FUNCTION_8();
      v147 = OUTLINED_FUNCTION_7();
      v123 = v156;
      outlined init with copy of PhoneSnippetDataModels(v147, v156, v148);
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type YesNoConfirmationCarPlayView and conformance YesNoConfirmationCarPlayView, &type metadata accessor for YesNoConfirmationCarPlayView, &protocol conformance descriptor for YesNoConfirmationCarPlayView);
      v82 = View.eraseToAnyView()();
      v126 = &type metadata accessor for YesNoConfirmationCarPlayView;
LABEL_18:
      outlined destroy of PhoneSnippetDataModels(v123, v126);
      v97 = &type metadata accessor for YesNoConfirmationModel;
      goto LABEL_19;
    case 9u:
      v115 = OUTLINED_FUNCTION_11();
      v3 = v165;
      outlined init with take of SingleResultCallHistoryModel(v115, v165, v116);
      v117 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_20(v117, v118, &v186);
      OUTLINED_FUNCTION_18();
      ShowCallHistoryListView.init(model:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type ShowCallHistoryListView and conformance ShowCallHistoryListView, &type metadata accessor for ShowCallHistoryListView, &protocol conformance descriptor for ShowCallHistoryListView);
      v82 = View.eraseToAnyView()();
      v119 = OUTLINED_FUNCTION_17();
      outlined destroy of PhoneSnippetDataModels(v119, v120);
      v97 = &type metadata accessor for SearchCallHistoryModel;
      goto LABEL_19;
    case 0xAu:
      v141 = OUTLINED_FUNCTION_11();
      v3 = v169;
      outlined init with take of SingleResultCallHistoryModel(v141, v169, v142);
      v143 = OUTLINED_FUNCTION_14();
      outlined init with copy of PhoneSnippetDataModels(v143, v166, v144);
      OUTLINED_FUNCTION_18();
      ShowPlayVoicemailListView.init(model:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type ShowPlayVoicemailListView and conformance ShowPlayVoicemailListView, &type metadata accessor for ShowPlayVoicemailListView, &protocol conformance descriptor for ShowPlayVoicemailListView);
      v82 = View.eraseToAnyView()();
      v145 = OUTLINED_FUNCTION_17();
      outlined destroy of PhoneSnippetDataModels(v145, v146);
      v97 = &type metadata accessor for PlayVoicemailModel;
      goto LABEL_19;
    case 0xBu:
      v98 = OUTLINED_FUNCTION_11();
      v3 = v173;
      outlined init with take of SingleResultCallHistoryModel(v98, v173, v99);
      v100 = OUTLINED_FUNCTION_14();
      outlined init with copy of PhoneSnippetDataModels(v100, v170, v101);
      OUTLINED_FUNCTION_18();
      SingleResultVoicemailView.init(singleVoicemailModel:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type SingleResultVoicemailView and conformance SingleResultVoicemailView, &type metadata accessor for SingleResultVoicemailView, &protocol conformance descriptor for SingleResultVoicemailView);
      v82 = View.eraseToAnyView()();
      v102 = OUTLINED_FUNCTION_17();
      outlined destroy of PhoneSnippetDataModels(v102, v103);
      v97 = &type metadata accessor for SingleResultVoicemailModel;
      goto LABEL_19;
    case 0xCu:
      v110 = OUTLINED_FUNCTION_11();
      v92 = v177;
      outlined init with take of SingleResultCallHistoryModel(v110, v177, v111);
      v112 = OUTLINED_FUNCTION_11();
      outlined init with copy of PhoneSnippetDataModels(v112, v174, v113);
      SingleResultCallHistoryView.init(singleResultCallHistoryModel:)();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(&lazy protocol witness table cache variable for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView, &type metadata accessor for SingleResultCallHistoryView, &protocol conformance descriptor for SingleResultCallHistoryView);
      v82 = View.eraseToAnyView()();
      outlined destroy of PhoneSnippetDataModels(v6, &type metadata accessor for SingleResultCallHistoryView);
      v114 = &type metadata accessor for SingleResultCallHistoryModel;
LABEL_22:
      v128 = v114;
      v127 = v92;
      goto LABEL_20;
    default:
      v82 = &type metadata accessor for YesNoConfirmationModel;
      v94 = v178;
      outlined init with take of SingleResultCallHistoryModel(v92, v178, &type metadata accessor for YesNoConfirmationModel);
      outlined init with take of SingleResultCallHistoryModel(v94, v181, &type metadata accessor for YesNoConfirmationModel);
      v3 = v180;
      YesNoConfirmationView.init(model:)();
      OUTLINED_FUNCTION_10();
      lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(v95, v96, &protocol conformance descriptor for YesNoConfirmationView);
      View.eraseToAnyView()();
      OUTLINED_FUNCTION_9();
LABEL_19:
      v128 = v97;
      v127 = v3;
LABEL_20:
      outlined destroy of PhoneSnippetDataModels(v127, v128);
      return v82;
  }
}

uint64_t protocol witness for SnippetProviding.init() in conformance PhoneUIPlugin@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of PhoneSnippetDataModels(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of PhoneSnippetDataModels(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SingleResultCallHistoryView and conformance SingleResultCallHistoryView(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_8()
{
  v3 = *(v1 - 128);

  return outlined init with take of SingleResultCallHistoryModel(v0, v3, &type metadata accessor for YesNoConfirmationModel);
}

uint64_t OUTLINED_FUNCTION_13()
{

  return outlined destroy of PhoneSnippetDataModels(v0, &type metadata accessor for PhoneSnippetDataModels);
}

uint64_t OUTLINED_FUNCTION_20@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return outlined init with copy of PhoneSnippetDataModels(a1, v4, a2);
}

unint64_t PhoneUIPlugin.view(for:data:mode:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for siriPhoneUI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhoneUI);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v33 = a3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v29);
    _os_log_impl(&dword_0, v11, v12, "#PhoneUIPlugin creating view for id=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_0_1(v14);
    v15 = v13;
    v5 = v4;
    a3 = v33;
    OUTLINED_FUNCTION_0_1(v15);
  }

  v29[0] = &type metadata for PhoneContactHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14PhoneSnippetUI0A13ContactHeaderVmMd, &_s14PhoneSnippetUI0A13ContactHeaderVmMR);
  if (String.init<A>(describing:)() == a1 && v16 == a2)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      lazy protocol witness table accessor for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error();
      v19 = swift_allocError();
      swift_willThrow();
      goto LABEL_13;
    }
  }

  outlined copy of Data._Representation(a3, a4);
  lazy protocol witness table accessor for type PhoneContactHeader and conformance PhoneContactHeader();
  lazy protocol witness table accessor for type PhoneContactHeader and conformance PhoneContactHeader();
  CustomCanvasModel<>.init(serializedData:)();
  v19 = v5;
  if (!v5)
  {
    memcpy(__dst, __src, 0x41uLL);
    PhoneContactHeader.view.getter();
    outlined destroy of PhoneContactHeader(__dst);
    memcpy(v28, v31, 0x59uLL);
    lazy protocol witness table accessor for type ContactHeaderView and conformance ContactHeaderView();
    a2 = View.eraseToAnyView()();
    memcpy(v29, v28, 0x59uLL);
    outlined destroy of ContactHeaderView(v29);
    return a2;
  }

LABEL_13:

  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v29);
    *(v22 + 12) = 2080;
    v28[0] = v19;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v24 = String.init<A>(describing:)();
    a2 = v25;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v29);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_0, v20, v21, "#PhoneUIPlugin failed to create view component for id=%s: %s.", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1(v23);
    OUTLINED_FUNCTION_0_1(v22);
  }

  swift_willThrow();
  return a2;
}

Swift::Int PhoneUIPlugin.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneUIPlugin.Error(uint64_t a1)
{
  Hasher.init(_seed:)();
  PhoneUIPlugin.Error.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error()
{
  result = lazy protocol witness table cache variable for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error;
  if (!lazy protocol witness table cache variable for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error;
  if (!lazy protocol witness table cache variable for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneUIPlugin.Error and conformance PhoneUIPlugin.Error);
  }

  return result;
}

void outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t lazy protocol witness table accessor for type PhoneContactHeader and conformance PhoneContactHeader()
{
  result = lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader;
  if (!lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneContactHeader and conformance PhoneContactHeader);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactHeaderView and conformance ContactHeaderView()
{
  result = lazy protocol witness table cache variable for type ContactHeaderView and conformance ContactHeaderView;
  if (!lazy protocol witness table cache variable for type ContactHeaderView and conformance ContactHeaderView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactHeaderView and conformance ContactHeaderView);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneUIPlugin.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for PhoneUIPlugin.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x3ED8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{
}