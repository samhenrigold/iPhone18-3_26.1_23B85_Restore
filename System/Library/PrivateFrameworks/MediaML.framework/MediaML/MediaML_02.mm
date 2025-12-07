void *MediaML.prepareCellDataForPrediction(data:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v92 = 0;
  v87 = 0;
  v82 = 0;
  v77 = 0;
  v72 = 0;
  v67 = 0;
  v62 = 0;
  v57 = 0;
  v93 = a1;
  v48 = *kMediaML_carrier.unsafeMutableAddressor();

  v89 = v48;
  MEMORY[0x259C87380](v90);
  outlined destroy of String(&v89);
  if (!v90[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v90, v91);
  swift_dynamicCast();
  carrier = v88;
  v87 = v88;
  v46 = *kMediaML_appName.unsafeMutableAddressor();

  v84 = v46;
  MEMORY[0x259C87380](v85);
  outlined destroy of String(&v84);
  if (!v85[3])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v85, v86);
  swift_dynamicCast();
  appName = v83;
  v82 = v83;
  v44 = *kMediaML_rssi.unsafeMutableAddressor();

  v80 = v44;
  MEMORY[0x259C87380](v81);
  outlined destroy of String(&v80);
  if (v81[3])
  {
    if (swift_dynamicCast())
    {
      v41 = v49;
      v42 = 0;
    }

    else
    {
      v41 = 0;
      v42 = 1;
    }

    v39 = v41;
    v40 = v42;
  }

  else
  {
    outlined destroy of Any?(v81);
    v39 = 0;
    v40 = 1;
  }

  v78 = v39;
  v79 = v40 & 1;
  if (v40)
  {
    v38 = 0;
  }

  else
  {
    v38 = v78;
  }

  v77 = v38;
  v37 = *kMediaML_rsrp.unsafeMutableAddressor();

  v75 = v37;
  MEMORY[0x259C87380](v76);
  outlined destroy of String(&v75);
  if (v76[3])
  {
    if (swift_dynamicCast())
    {
      v35 = v50;
      v36 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 1;
    }

    v33 = v35;
    v34 = v36;
  }

  else
  {
    outlined destroy of Any?(v76);
    v33 = 0;
    v34 = 1;
  }

  v73 = v33;
  v74 = v34 & 1;
  if (v34)
  {
    v32 = 0;
  }

  else
  {
    v32 = v73;
  }

  v72 = v32;
  v31 = *kMediaML_rsrq.unsafeMutableAddressor();

  v70 = v31;
  MEMORY[0x259C87380](v71);
  outlined destroy of String(&v70);
  if (v71[3])
  {
    if (swift_dynamicCast())
    {
      v29 = v51;
      v30 = 0;
    }

    else
    {
      v29 = 0;
      v30 = 1;
    }

    v27 = v29;
    v28 = v30;
  }

  else
  {
    outlined destroy of Any?(v71);
    v27 = 0;
    v28 = 1;
  }

  v68 = v27;
  v69 = v28 & 1;
  if (v28)
  {
    v26 = 0;
  }

  else
  {
    v26 = v68;
  }

  v67 = v26;
  v25 = *kMediaML_rscp.unsafeMutableAddressor();

  v65 = v25;
  MEMORY[0x259C87380](v66);
  outlined destroy of String(&v65);
  if (v66[3])
  {
    if (swift_dynamicCast())
    {
      v23 = v52;
      v24 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 1;
    }

    v21 = v23;
    v22 = v24;
  }

  else
  {
    outlined destroy of Any?(v66);
    v21 = 0;
    v22 = 1;
  }

  v63 = v21;
  v64 = v22 & 1;
  if (v22)
  {
    v20 = 0;
  }

  else
  {
    v20 = v63;
  }

  v62 = v20;
  v19 = *kMediaML_snr.unsafeMutableAddressor();

  v60 = v19;
  MEMORY[0x259C87380](v61);
  outlined destroy of String(&v60);
  if (v61[3])
  {
    if (swift_dynamicCast())
    {
      v17 = v53;
      v18 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    v15 = v17;
    v16 = v18;
  }

  else
  {
    outlined destroy of Any?(v61);
    v15 = 0;
    v16 = 1;
  }

  v58 = v15;
  v59 = v16 & 1;
  if (v16)
  {
    v14 = 0;
  }

  else
  {
    v14 = v58;
  }

  v57 = v14;
  v13 = *kMediaML_bars.unsafeMutableAddressor();

  v55 = v13;
  MEMORY[0x259C87380](v56);
  outlined destroy of String(&v55);
  if (v56[3])
  {
    if (swift_dynamicCast())
    {
      v11 = v54;
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 1;
    }

    v9 = v11;
    v10 = v12;
  }

  else
  {
    outlined destroy of Any?(v56);
    v9 = 0;
    v10 = 1;
  }

  if (v10)
  {
    bars = 0;
  }

  else
  {
    bars = v9;
  }

  v7 = *cell_signal_binsize.unsafeMutableAddressor();
  if (!v7)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v38 == 0x8000000000000000 && v7 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v6 = *cell_signal_binsize.unsafeMutableAddressor();
  if (!v6)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v32 == 0x8000000000000000 && v6 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = *cell_signal_binsize.unsafeMutableAddressor();
  if (!v5)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v26 == 0x8000000000000000 && v5 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v4 = *cell_signal_binsize.unsafeMutableAddressor();
  if (!v4)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v20 == 0x8000000000000000 && v4 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v3 = *cell_snr_binsize.unsafeMutableAddressor();
  if (!v3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v14 == 0x8000000000000000 && v3 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  CellDataPointForPrediction.init(appName:carrier:binnedRssi:binnedRsrp:binnedRscp:binnedRsrq:binnedSnr:bars:)(&v94, appName, carrier, v38 / v7, v32 / v6, v20 / v4, v26 / v5, v14 / v3, bars);
  return memcpy(a2, &v94, 0x50uLL);
}

uint64_t MediaML.getPredictionDictionary(data:)(uint64_t a1)
{
  *(v2 + 488) = v1;
  *(v2 + 480) = a1;
  *(v2 + 368) = v2;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0;
  *(v2 + 392) = 0;
  *(v2 + 336) = 0;
  *(v2 + 344) = 0;
  *(v2 + 440) = 0;
  *(v2 + 448) = 0;
  *(v2 + 464) = 0;
  v3 = type metadata accessor for Logger();
  *(v2 + 496) = v3;
  *(v2 + 504) = *(v3 - 8);
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();
  *(v2 + 376) = a1;
  *(v2 + 384) = v1;
  v4 = swift_task_alloc();
  *(v6 + 528) = v4;
  *v4 = *(v6 + 368);
  v4[1] = MediaML.getPredictionDictionary(data:);

  return MediaML.getPrediction(data:)(a1);
}

uint64_t MediaML.getPredictionDictionary(data:)(uint64_t a1, char a2)
{
  v10 = *v3;
  v8 = *v3 + 16;
  v9 = *v3 + 368;
  *(v10 + 368) = *v3;
  *(v10 + 536) = v2;
  *(v10 + 544) = a1;
  *(v10 + 329) = a2;

  if (v2)
  {

    v6 = *(*v9 + 8);

    return v6(v5);
  }

  else
  {
    v4 = *(v8 + 472);

    return MEMORY[0x2822009F8](MediaML.getPredictionDictionary(data:), v4);
  }
}

uint64_t MediaML.getPredictionDictionary(data:)()
{
  v1 = *(v0 + 329);
  v2 = *(v0 + 544);
  *(v0 + 368) = v0;
  *(v0 + 320) = v2;
  *(v0 + 328) = v1 & 1;
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SdtMd, &_sSS_SdtMR);
  _allocateUninitializedArray<A>(_:)();
  v66 = v3;
  v4 = kMediaML_throughputPrediction.unsafeMutableAddressor();
  outlined init with copy of String(v4, v66);
  v66[2] = 0;
  v5 = kMediaML_throughputStdDev.unsafeMutableAddressor();
  outlined init with copy of String(v5, v66 + 3);
  v66[5] = 0;
  _finalizeUninitializedArray<A>(_:)();
  v67 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 560) = v67;
  *(v0 + 392) = v67;
  v68 = *kMediaML_interfaceType.unsafeMutableAddressor();

  *(v0 + 304) = v68;
  MEMORY[0x259C87380]();
  outlined destroy of String(v0 + 304);
  if (*(v0 + 200))
  {
    if (swift_dynamicCast())
    {
      v63 = *(v65 + 472);
      v64 = 0;
    }

    else
    {
      v63 = 0;
      v64 = 1;
    }

    v61 = v63;
    v62 = v64;
  }

  else
  {
    outlined destroy of Any?((v65 + 176));
    v61 = 0;
    v62 = 1;
  }

  v6 = *(v65 + 329);
  *(v65 + 336) = v61;
  *(v65 + 344) = v62 & 1;
  *(v65 + 352) = 0;
  *(v65 + 360) = 1;
  if (v6)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (*(v65 + 544) < 0.0)
  {
    v16 = *(v65 + 520);
    v30 = *(v65 + 496);
    v29 = *(v65 + 504);
    v17 = MediaML.logger.unsafeMutableAddressor();
    (*(v29 + 16))(v16, v17, v30);
    oslog = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v33 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v31))
    {
      v18 = *(v65 + 536);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v26 = createStorage<A>(capacity:type:)(0, v24, v24);
      v27 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v65 + 400) = buf;
      *(v65 + 408) = v26;
      *(v65 + 416) = v27;
      serialize(_:at:)(0, (v65 + 400));
      serialize(_:at:)(0, (v65 + 400));
      *(v65 + 424) = v33;
      v28 = swift_task_alloc();
      v28[2] = v65 + 400;
      v28[3] = v65 + 408;
      v28[4] = v65 + 416;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v18)
      {
      }

      _os_log_impl(&dword_2586A4000, oslog, v31, "Failed to get prediction from model", buf, 2u);
      destroyStorage<A>(_:count:)(v26, 0, v24);
      destroyStorage<A>(_:count:)(v27, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v21 = *(v65 + 520);
    v22 = *(v65 + 496);
    v20 = *(v65 + 504);
    MEMORY[0x277D82BD8](oslog);
    (*(v20 + 8))(v21, v22);

    v23 = _dictionaryUpCast<A, B, C, D>(_:)();

    v49 = v23;
    goto LABEL_48;
  }

  v70 = *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor();
  if ((v62 & 1) != 0 || v70 != v61)
  {
    v69 = *kMediaML_InterfaceType_Cellular.unsafeMutableAddressor();
    if ((v62 & 1) != 0 || v69 != v61)
    {

      v34 = _dictionaryUpCast<A, B, C, D>(_:)();

      v49 = v34;
LABEL_48:

      v19 = *(*(v65 + 368) + 8);

      return v19(v49);
    }

    v46 = *(v65 + 488);
    MediaML.prepareCellDataForPrediction(data:)(*(v65 + 480), (v65 + 16));
    swift_beginAccess();
    v47 = *(v46 + 112);

    swift_endAccess();
    *(v65 + 432) = v47;
    if (!*(v65 + 432))
    {
      outlined destroy of DataWriter?((v65 + 432));
      *(v65 + 352) = 0x3FF0000000000000;
      *(v65 + 360) = 0;
      v43 = *(v65 + 329);
      v42 = *(v65 + 544);
      _allocateUninitializedArray<A>(_:)();
      v41 = v12;
      v13 = kMediaML_throughputPrediction.unsafeMutableAddressor();
      outlined init with copy of String(v13, v41);
      if (v43)
      {
        v41[2] = 0;
      }

      else
      {
        v41[2] = v42;
      }

      v15 = kMediaML_throughputStdDev.unsafeMutableAddressor();
      outlined init with copy of String(v15, v41 + 3);
      v41[5] = 0x3FF0000000000000;
      _finalizeUninitializedArray<A>(_:)();
      *(v65 + 440) = Dictionary.init(dictionaryLiteral:)();

      v35 = _dictionaryUpCast<A, B, C, D>(_:)();

      outlined destroy of CellDataPointForPrediction(v65 + 16);

      v49 = v35;
      goto LABEL_48;
    }

    outlined destroy of DataWriter?((v65 + 432));
    v44 = *(v65 + 488);
    swift_beginAccess();
    v45 = *(v44 + 112);
    *(v65 + 616) = v45;

    swift_endAccess();
    if (v45)
    {
      v40 = *(v65 + 16);
      v36 = *(v65 + 24);
      *(v65 + 624) = v36;

      v37 = *(v65 + 32);
      v38 = *(v65 + 40);
      *(v65 + 632) = v38;

      v39 = *(v65 + 88);
      v14 = swift_task_alloc();
      *(v65 + 640) = v14;
      *v14 = *(v65 + 368);
      v14[1] = MediaML.getPredictionDictionary(data:);

      return DataWriter.readCellStdDev(appName:carrier:bars:)(v40, v36, v37, v38, v39);
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v59 = *(v65 + 488);
  MediaML.prepareWifiDataForPrediction(data:)(*(v65 + 480), (v65 + 96));
  swift_beginAccess();
  v60 = *(v59 + 112);

  swift_endAccess();
  *(v65 + 456) = v60;
  if (!*(v65 + 456))
  {
    outlined destroy of DataWriter?((v65 + 456));
    *(v65 + 352) = 0x3FF0000000000000;
    *(v65 + 360) = 0;
    v56 = *(v65 + 329);
    v55 = *(v65 + 544);
    _allocateUninitializedArray<A>(_:)();
    v54 = v7;
    v8 = kMediaML_throughputPrediction.unsafeMutableAddressor();
    outlined init with copy of String(v8, v54);
    if (v56)
    {
      v54[2] = 0;
    }

    else
    {
      v54[2] = v55;
    }

    v11 = kMediaML_throughputStdDev.unsafeMutableAddressor();
    outlined init with copy of String(v11, v54 + 3);
    v54[5] = 0x3FF0000000000000;
    _finalizeUninitializedArray<A>(_:)();
    *(v65 + 464) = Dictionary.init(dictionaryLiteral:)();

    v48 = _dictionaryUpCast<A, B, C, D>(_:)();

    outlined destroy of WiFiDataPointForPrediciton(v65 + 96);

    v49 = v48;
    goto LABEL_48;
  }

  outlined destroy of DataWriter?((v65 + 456));
  v57 = *(v65 + 488);
  swift_beginAccess();
  v58 = *(v57 + 112);
  *(v65 + 568) = v58;

  swift_endAccess();
  if (!v58)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v53 = *(v65 + 96);
  v50 = *(v65 + 104);
  *(v65 + 576) = v50;

  v51 = *(v65 + 112);
  v52 = *(v65 + 120);
  *(v65 + 584) = v52;

  v9 = swift_task_alloc();
  *(v65 + 592) = v9;
  *v9 = *(v65 + 368);
  v9[1] = MediaML.getPredictionDictionary(data:);

  return DataWriter.readWiFiStdDev(appName:ssid:)(v53, v50, v51, v52);
}

{
  v8 = *(v0 + 600);
  *(v0 + 368) = v0;
  *(v0 + 352) = v8;
  *(v0 + 360) = 0;
  v11 = *(v0 + 329);
  v10 = *(v0 + 544);
  _allocateUninitializedArray<A>(_:)();
  v9 = v1;
  v2 = kMediaML_throughputPrediction.unsafeMutableAddressor();
  outlined init with copy of String(v2, v9);
  if (v11)
  {
    v9[2] = 0;
  }

  else
  {
    v9[2] = v10;
  }

  v3 = kMediaML_throughputStdDev.unsafeMutableAddressor();
  outlined init with copy of String(v3, v9 + 3);
  v9[5] = v8;
  _finalizeUninitializedArray<A>(_:)();
  *(v7 + 464) = Dictionary.init(dictionaryLiteral:)();

  v6 = _dictionaryUpCast<A, B, C, D>(_:)();

  outlined destroy of WiFiDataPointForPrediciton(v7 + 96);

  v4 = *(*(v7 + 368) + 8);

  return v4(v6);
}

{
  v8 = *(v0 + 648);
  *(v0 + 368) = v0;
  *(v0 + 352) = v8;
  *(v0 + 360) = 0;
  v11 = *(v0 + 329);
  v10 = *(v0 + 544);
  _allocateUninitializedArray<A>(_:)();
  v9 = v1;
  v2 = kMediaML_throughputPrediction.unsafeMutableAddressor();
  outlined init with copy of String(v2, v9);
  if (v11)
  {
    v9[2] = 0;
  }

  else
  {
    v9[2] = v10;
  }

  v3 = kMediaML_throughputStdDev.unsafeMutableAddressor();
  outlined init with copy of String(v3, v9 + 3);
  v9[5] = v8;
  _finalizeUninitializedArray<A>(_:)();
  *(v7 + 440) = Dictionary.init(dictionaryLiteral:)();

  v6 = _dictionaryUpCast<A, B, C, D>(_:)();

  outlined destroy of CellDataPointForPrediction(v7 + 16);

  v4 = *(*(v7 + 368) + 8);

  return v4(v6);
}

{
  v32 = v0;
  v0[46] = v0;

  outlined destroy of WiFiDataPointForPrediciton((v0 + 12));
  v17 = v0[76];
  v1 = v0[64];
  v15 = v0[63];
  v16 = v0[62];
  MEMORY[0x259C87ED0]();
  v0[56] = v17;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  MEMORY[0x259C87ED0](v17);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = 64;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for implicit closure #5 in MediaML.getPredictionDictionary(data:);
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v20 + 24) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v23 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v24 = v3;

  *v24 = closure #1 in OSLogArguments.append(_:)partial apply;
  v24[1] = v21;

  v24[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v24[3] = v22;

  v24[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v24[5] = v23;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v26))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(1, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v27 = buf;
    v28 = v12;
    v29 = v13;
    serialize(_:at:)(2, &v27);
    serialize(_:at:)(1, &v27);
    v30 = closure #1 in OSLogArguments.append(_:)partial apply;
    v31 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v30, &v27, &v28, &v29);
    v30 = closure #1 in OSLogArguments.append(_:)partial apply;
    v31 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v30, &v27, &v28, &v29);
    v30 = closure #1 in OSLogArguments.append(_:)partial apply;
    v31 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v30, &v27, &v28, &v29);
    _os_log_impl(&dword_2586A4000, oslog, v26, "Failed to get prediction from model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v12, 1, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v7 = v14[64];
  v8 = v14[62];
  v6 = v14[63];
  MEMORY[0x277D82BD8](oslog);
  (*(v6 + 8))(v7, v8);

  v9 = _dictionaryUpCast<A, B, C, D>(_:)();

  MEMORY[0x259C87EC0](v17);
  MEMORY[0x259C87EC0](v17);

  v4 = *(v14[46] + 8);

  return v4(v9);
}

{
  v32 = v0;
  v0[46] = v0;

  outlined destroy of CellDataPointForPrediction((v0 + 2));
  v17 = v0[82];
  v1 = v0[64];
  v15 = v0[63];
  v16 = v0[62];
  MEMORY[0x259C87ED0]();
  v0[56] = v17;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  MEMORY[0x259C87ED0](v17);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = 64;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for implicit closure #5 in MediaML.getPredictionDictionary(data:);
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v20 + 24) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v23 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v24 = v3;

  *v24 = closure #1 in OSLogArguments.append(_:)partial apply;
  v24[1] = v21;

  v24[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v24[3] = v22;

  v24[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v24[5] = v23;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v26))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(1, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v27 = buf;
    v28 = v12;
    v29 = v13;
    serialize(_:at:)(2, &v27);
    serialize(_:at:)(1, &v27);
    v30 = closure #1 in OSLogArguments.append(_:)partial apply;
    v31 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v30, &v27, &v28, &v29);
    v30 = closure #1 in OSLogArguments.append(_:)partial apply;
    v31 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v30, &v27, &v28, &v29);
    v30 = closure #1 in OSLogArguments.append(_:)partial apply;
    v31 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v30, &v27, &v28, &v29);
    _os_log_impl(&dword_2586A4000, oslog, v26, "Failed to get prediction from model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v12, 1, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v7 = v14[64];
  v8 = v14[62];
  v6 = v14[63];
  MEMORY[0x277D82BD8](oslog);
  (*(v6 + 8))(v7, v8);

  v9 = _dictionaryUpCast<A, B, C, D>(_:)();

  MEMORY[0x259C87EC0](v17);
  MEMORY[0x259C87EC0](v17);

  v4 = *(v14[46] + 8);

  return v4(v9);
}

uint64_t MediaML.getPredictionDictionary(data:)(double a1)
{
  v8 = *v2;
  v7 = *v2 + 16;
  *(v8 + 368) = *v2;
  *(v8 + 600) = a1;
  *(v8 + 608) = v1;

  if (v1)
  {
    v3 = *(v7 + 472);
    v4 = MediaML.getPredictionDictionary(data:);
  }

  else
  {
    v6 = *(v7 + 472);

    v3 = v6;
    v4 = MediaML.getPredictionDictionary(data:);
  }

  return MEMORY[0x2822009F8](v4, v3);
}

{
  v8 = *v2;
  v7 = *v2 + 16;
  *(v8 + 368) = *v2;
  *(v8 + 648) = a1;
  *(v8 + 656) = v1;

  if (v1)
  {
    v3 = *(v7 + 472);
    v4 = MediaML.getPredictionDictionary(data:);
  }

  else
  {
    v6 = *(v7 + 472);

    v3 = v6;
    v4 = MediaML.getPredictionDictionary(data:);
  }

  return MEMORY[0x2822009F8](v4, v3);
}

uint64_t MediaML.getPrediction(data:)(uint64_t a1)
{
  v2[39] = v1;
  v2[38] = a1;
  v2[28] = v2;
  v2[29] = 0;
  v2[30] = 0;
  v2[35] = 0;
  v2[36] = 0;
  v3 = type metadata accessor for Logger();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[29] = a1;
  v2[30] = v5;

  return (MEMORY[0x2822009F8])(MediaML.getPrediction(data:));
}

uint64_t MediaML.getPrediction(data:)()
{
  v113 = v0;
  v0[14]._countAndFlagsBits = v0;
  v96 = *kMediaML_interfaceType.unsafeMutableAddressor();

  v0[13] = v96;
  MEMORY[0x259C87380]();
  outlined destroy of String(&v0[13]);
  if (v0[12]._object)
  {
    if (swift_dynamicCast())
    {
      v93 = *(v95 + 296);
      v94 = 0;
    }

    else
    {
      v93 = 0;
      v94 = 1;
    }

    v91 = v93;
    v92 = v94;
  }

  else
  {
    outlined destroy of Any?((v95 + 176));
    v91 = 0;
    v92 = 1;
  }

  if (v92)
  {
    v16 = *(v95 + 344);
    v28 = *(v95 + 320);
    v27 = *(v95 + 328);
    v17 = MediaML.logger.unsafeMutableAddressor();
    (*(v27 + 16))(v16, v17, v28);
    v30 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v31 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v30, v29))
    {
      v23 = static UnsafeMutablePointer.allocate(capacity:)();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v24 = createStorage<A>(capacity:type:)(0, v22, v22);
      v25 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v95 + 248) = v23;
      *(v95 + 256) = v24;
      *(v95 + 264) = v25;
      serialize(_:at:)(0, (v95 + 248));
      serialize(_:at:)(0, (v95 + 248));
      *(v95 + 272) = v31;
      v26 = swift_task_alloc();
      v26[2] = v95 + 248;
      v26[3] = v95 + 256;
      v26[4] = v95 + 264;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2586A4000, v30, v29, "Wrong / No interface Type provided.", v23, 2u);
      destroyStorage<A>(_:count:)(v24, 0, v22);
      destroyStorage<A>(_:count:)(v25, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v23, MEMORY[0x277D84B78]);
    }

    v20 = *(v95 + 344);
    v21 = *(v95 + 320);
    v19 = *(v95 + 328);
    MEMORY[0x277D82BD8](v30);
    (*(v19 + 8))(v20, v21);
    goto LABEL_45;
  }

  *(v95 + 280) = v91;
  if (v91 != *kMediaML_InterfaceType_WiFi.unsafeMutableAddressor() && v91 != *kMediaML_InterfaceType_Cellular.unsafeMutableAddressor())
  {
    v13 = *(v95 + 352);
    v40 = *(v95 + 320);
    v39 = *(v95 + 328);
    v14 = MediaML.logger.unsafeMutableAddressor();
    (*(v39 + 16))(v13, v14, v40);
    v41 = swift_allocObject();
    *(v41 + 16) = v91;
    log = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v42 = swift_allocObject();
    *(v42 + 16) = partial apply for implicit closure #2 in MediaML.getPrediction(data:);
    *(v42 + 24) = v41;
    v45 = swift_allocObject();
    *(v45 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v45 + 24) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v46 = v15;

    *v46 = closure #1 in OSLogArguments.append(_:)partial apply;
    v46[1] = v43;

    v46[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v46[3] = v44;

    v46[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v46[5] = v45;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v48))
    {
      v36 = static UnsafeMutablePointer.allocate(capacity:)();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v37 = createStorage<A>(capacity:type:)(0, v35, v35);
      v38 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v97 = v36;
      v98 = v37;
      v99 = v38;
      serialize(_:at:)(0, &v97);
      serialize(_:at:)(1, &v97);
      v100 = closure #1 in OSLogArguments.append(_:)partial apply;
      v101 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
      v100 = closure #1 in OSLogArguments.append(_:)partial apply;
      v101 = v44;
      closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
      v100 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v101 = v45;
      closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
      _os_log_impl(&dword_2586A4000, log, v48, "Expected interfaceType to be in (3,5) but got %ld", v36, 0xCu);
      destroyStorage<A>(_:count:)(v37, 0, v35);
      destroyStorage<A>(_:count:)(v38, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v36, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v33 = *(v95 + 352);
    v34 = *(v95 + 320);
    v32 = *(v95 + 328);
    MEMORY[0x277D82BD8](log);
    (*(v32 + 8))(v33, v34);
    goto LABEL_45;
  }

  v1 = *(v95 + 360);
  v75 = *(v95 + 320);
  v76 = *(v95 + 304);
  v74 = *(v95 + 328);
  v2 = MediaML.logger.unsafeMutableAddressor();
  v3 = *(v74 + 16);
  *(v95 + 368) = v3;
  *(v95 + 376) = (v74 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v75);
  v78 = swift_allocObject();
  *(v78 + 16) = v91;

  v77 = swift_allocObject();
  *(v77 + 16) = v76;

  v80 = swift_allocObject();
  *(v80 + 16) = partial apply for implicit closure #4 in MediaML.getPrediction(data:);
  *(v80 + 24) = v77;

  oslog = Logger.logObject.getter();
  v90 = static os_log_type_t.debug.getter();
  v82 = swift_allocObject();
  *(v82 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = 8;
  v79 = swift_allocObject();
  *(v79 + 16) = partial apply for implicit closure #3 in MediaML.getPrediction(data:);
  *(v79 + 24) = v78;
  v84 = swift_allocObject();
  *(v84 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v84 + 24) = v79;
  v85 = swift_allocObject();
  *(v85 + 16) = 32;
  v86 = swift_allocObject();
  *(v86 + 16) = 8;
  v81 = swift_allocObject();
  *(v81 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v81 + 24) = v80;
  v87 = swift_allocObject();
  *(v87 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v87 + 24) = v81;
  *(v95 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v88 = v4;

  *v88 = closure #1 in OSLogArguments.append(_:)partial apply;
  v88[1] = v82;

  v88[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v88[3] = v83;

  v88[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v88[5] = v84;

  v88[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v88[7] = v85;

  v88[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v88[9] = v86;

  v88[10] = closure #1 in OSLogArguments.append(_:)partial apply;
  v88[11] = v87;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v90))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v72 = createStorage<A>(capacity:type:)(0, v70, v70);
    v73 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v108 = buf;
    v109 = v72;
    v110 = v73;
    serialize(_:at:)(2, &v108);
    serialize(_:at:)(2, &v108);
    v111 = closure #1 in OSLogArguments.append(_:)partial apply;
    v112 = v82;
    closure #1 in osLogInternal(_:log:type:)(&v111, &v108, &v109, &v110);
    v111 = closure #1 in OSLogArguments.append(_:)partial apply;
    v112 = v83;
    closure #1 in osLogInternal(_:log:type:)(&v111, &v108, &v109, &v110);
    v111 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v112 = v84;
    closure #1 in osLogInternal(_:log:type:)(&v111, &v108, &v109, &v110);
    v111 = closure #1 in OSLogArguments.append(_:)partial apply;
    v112 = v85;
    closure #1 in osLogInternal(_:log:type:)(&v111, &v108, &v109, &v110);
    v111 = closure #1 in OSLogArguments.append(_:)partial apply;
    v112 = v86;
    closure #1 in osLogInternal(_:log:type:)(&v111, &v108, &v109, &v110);
    v111 = closure #1 in OSLogArguments.append(_:)partial apply;
    v112 = v87;
    closure #1 in osLogInternal(_:log:type:)(&v111, &v108, &v109, &v110);
    _os_log_impl(&dword_2586A4000, oslog, v90, "Got data for prediction interface:%ld data:%s", buf, 0x16u);
    destroyStorage<A>(_:count:)(v72, 0, v70);
    destroyStorage<A>(_:count:)(v73, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v68 = *(v95 + 360);
  v69 = *(v95 + 320);
  v67 = *(v95 + 328);
  MEMORY[0x277D82BD8](oslog);
  v5 = *(v67 + 8);
  *(v95 + 392) = v5;
  *(v95 + 400) = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v68, v69);
  if (*kMediaML_InterfaceType_WiFi.unsafeMutableAddressor() != v91)
  {
    if (*kMediaML_InterfaceType_Cellular.unsafeMutableAddressor() != v91)
    {
      goto LABEL_45;
    }

    v53 = MediaML.validateCellDataForPrediction(data:)(*(v95 + 304));
    v102 = v53;
    v103 = 1;
    if (v53 == 2)
    {
      if (v103 != 2)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v104 = v53;
      if (v103 == 2 || (v104 & 1) != (v103 & 1))
      {
LABEL_45:

        v18 = *(*(v95 + 224) + 8);

        return v18(0, 0);
      }
    }

    v49 = *(v95 + 312);
    MediaML.prepareCellDataForPrediction(data:)(*(v95 + 304), (v95 + 16));
    v11 = *(v49 + 128);
    *(v95 + 456) = v11;

    *(v95 + 464) = *(v95 + 40);

    *(v95 + 472) = *(v95 + 24);

    v50 = *(v95 + 80);
    v51 = *(v95 + 88);
    v52 = *(*v11 + 184) + **(*v11 + 184);
    v12 = swift_task_alloc();
    *(v95 + 480) = v12;
    *v12 = *(v95 + 224);
    v12[1] = MediaML.getPrediction(data:);
    v115 = v50;
    v116 = v51;

    __asm { BRAA            X8, X16 }
  }

  v66 = MediaML.validateWifiDataForPrediction(data:)(*(v95 + 304));
  v105 = v66;
  v106 = 1;
  if (v66 == 2)
  {
    if (v106 != 2)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v107 = v66;
    if (v106 == 2 || (v107 & 1) != (v106 & 1))
    {
      goto LABEL_45;
    }
  }

  v54 = *(v95 + 312);
  MediaML.prepareWifiDataForPrediction(data:)(*(v95 + 304), (v95 + 96));
  v6 = *(v54 + 120);
  *(v95 + 408) = v6;

  v65 = *(v95 + 112);
  v55 = *(v95 + 120);
  *(v95 + 416) = v55;

  v56 = *(v95 + 96);
  v57 = *(v95 + 104);
  *(v95 + 424) = v57;

  v58 = *(v95 + 128);
  v59 = *(v95 + 136);
  v60 = *(v95 + 144);
  v61 = *(v95 + 152);
  v62 = *(v95 + 160);
  v63 = *(v95 + 168);
  v64 = (*(*v6 + 184) + **(*v6 + 184));
  v7 = swift_task_alloc();
  v8.n128_u64[0] = v62;
  v9.n128_u64[0] = v63;
  *(v95 + 432) = v7;
  *v7 = *(v95 + 224);
  v7[1] = MediaML.getPrediction(data:);

  return v64(v65, v55, v56, v57, v58, v59, v60, v61, v8, v9);
}

{
  v31 = v0;
  v0[28] = v0;

  outlined destroy of WiFiDataPointForPrediciton((v0 + 12));
  v16 = v0[55];
  v15 = v0[46];
  v1 = v0[42];
  v14 = v0[40];
  MEMORY[0x259C87ED0]();
  v0[36] = v16;
  v2 = MediaML.logger.unsafeMutableAddressor();
  v15(v1, v2, v14);
  MEMORY[0x259C87ED0](v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = 64;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for implicit closure #5 in MediaML.getPrediction(data:);
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v19 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v22 + 24) = v19;
  _allocateUninitializedArray<A>(_:)();
  v23 = v3;

  *v23 = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[1] = v20;

  v23[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[3] = v21;

  v23[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v24, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v26 = buf;
    v27 = v11;
    v28 = v12;
    serialize(_:at:)(2, &v26);
    serialize(_:at:)(1, &v26);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v20;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    _os_log_impl(&dword_2586A4000, v24, v25, "Failed to get prediction from model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v8 = v13[49];
  v6 = v13[42];
  v7 = v13[40];
  MEMORY[0x277D82BD8](v24);
  v8(v6, v7);
  MEMORY[0x259C87EC0](v16);
  MEMORY[0x259C87EC0](v16);

  v4 = *(v13[28] + 8);

  return v4(0, 0);
}

{
  v31 = v0;
  v0[28] = v0;

  outlined destroy of CellDataPointForPrediction((v0 + 2));
  v16 = v0[61];
  v15 = v0[46];
  v1 = v0[42];
  v14 = v0[40];
  MEMORY[0x259C87ED0]();
  v0[36] = v16;
  v2 = MediaML.logger.unsafeMutableAddressor();
  v15(v1, v2, v14);
  MEMORY[0x259C87ED0](v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = 64;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for implicit closure #5 in MediaML.getPrediction(data:);
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v19 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
  *(v22 + 24) = v19;
  _allocateUninitializedArray<A>(_:)();
  v23 = v3;

  *v23 = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[1] = v20;

  v23[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[3] = v21;

  v23[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v24, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = createStorage<A>(capacity:type:)(1, v9, v9);
    v12 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v26 = buf;
    v27 = v11;
    v28 = v12;
    serialize(_:at:)(2, &v26);
    serialize(_:at:)(1, &v26);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v20;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    _os_log_impl(&dword_2586A4000, v24, v25, "Failed to get prediction from model with error=%@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v11, 1, v9);
    destroyStorage<A>(_:count:)(v12, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v8 = v13[49];
  v6 = v13[42];
  v7 = v13[40];
  MEMORY[0x277D82BD8](v24);
  v8(v6, v7);
  MEMORY[0x259C87EC0](v16);
  MEMORY[0x259C87EC0](v16);

  v4 = *(v13[28] + 8);

  return v4(0, 0);
}

uint64_t MediaML.getPrediction(data:)(uint64_t a1, char a2)
{
  v8 = *v3;
  *(v8 + 224) = *v3;
  *(v8 + 440) = v2;
  *(v8 + 448) = a1;
  *(v8 + 504) = a2;

  if (v2)
  {
    v4 = *(v8 + 312);
    v5 = MediaML.getPrediction(data:);
  }

  else
  {
    v7 = *(v8 + 312);

    v4 = v7;
    v5 = MediaML.getPrediction(data:);
  }

  return MEMORY[0x2822009F8](v5, v4);
}

{
  v8 = *v3;
  *(v8 + 224) = *v3;
  *(v8 + 488) = v2;
  *(v8 + 496) = a1;
  *(v8 + 505) = a2;

  if (v2)
  {
    v4 = *(v8 + 312);
    v5 = MediaML.getPrediction(data:);
  }

  else
  {
    v7 = *(v8 + 312);

    v4 = v7;
    v5 = MediaML.getPrediction(data:);
  }

  return MEMORY[0x2822009F8](v5, v4);
}

uint64_t MediaML.getPrediction(data:)(__n128 a1)
{
  *(v1 + 224) = v1;
  outlined destroy of WiFiDataPointForPrediciton(v1 + 96);
  v5 = *(v1 + 504);
  v4 = *(v1 + 448);

  v2 = *(*(v1 + 224) + 8);

  return v2(v4, v5 & 1);
}

{
  *(v1 + 224) = v1;
  outlined destroy of CellDataPointForPrediction(v1 + 16);
  v5 = *(v1 + 505);
  v4 = *(v1 + 496);

  v2 = *(*(v1 + 224) + 8);

  return v2(v4, v5 & 1);
}

uint64_t implicit closure #4 in MediaML.getPrediction(data:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t MediaML.getModelStats()()
{
  v1[13] = v0;
  v1[8] = v1;
  v1[9] = 0;
  v1[11] = 0;
  v1[12] = 0;
  v2 = type metadata accessor for Logger();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[9] = v4;

  return (MEMORY[0x2822009F8])(MediaML.getModelStats());
}

{
  v7 = v0[13];
  v0[8] = v0;
  swift_beginAccess();
  v8 = *(v7 + 112);

  swift_endAccess();
  v0[10] = v8;
  if (v0[10])
  {
    outlined destroy of DataWriter?(v6 + 10);
    v4 = v6[13];
    swift_beginAccess();
    v5 = *(v4 + 112);
    v6[17] = v5;

    swift_endAccess();
    if (v5)
    {
      v3 = swift_task_alloc();
      v6[18] = v3;
      *v3 = v6[8];
      v3[1] = MediaML.getModelStats();

      return DataWriter.readModelStatsFromDB()();
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  else
  {
    outlined destroy of DataWriter?(v6 + 10);

    v1 = *(v6[8] + 8);

    return v1(0);
  }
}

{
  v1 = v0[19];
  v0[8] = v0;
  v0[12] = v1;
  v4 = v0[19];

  v2 = *(v0[8] + 8);

  return v2(v4);
}

{
  v31 = v0;
  v17 = v0[20];
  v1 = v0[16];
  v15 = v0[15];
  v16 = v0[14];
  v0[8] = v0;

  MEMORY[0x259C87ED0](v17);
  v0[11] = v17;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v15 + 16))(v1, v2, v16);
  MEMORY[0x259C87ED0](v17);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = 32;
  v21 = swift_allocObject();
  *(v21 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for implicit closure #1 in MediaML.getModelStats();
  *(v19 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v22 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v23 = v3;

  *v23 = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[1] = v20;

  v23[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[3] = v21;

  v23[4] = closure #1 in OSLogArguments.append(_:)partial apply;
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v24, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v26 = buf;
    v27 = v12;
    v28 = v13;
    serialize(_:at:)(2, &v26);
    serialize(_:at:)(1, &v26);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v20;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v21;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    v29 = closure #1 in OSLogArguments.append(_:)partial apply;
    v30 = v22;
    closure #1 in osLogInternal(_:log:type:)(&v29, &v26, &v27, &v28);
    _os_log_impl(&dword_2586A4000, v24, v25, "Failed to get model stats with err=%s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x259C87730](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v14[20];
  v7 = v14[16];
  v8 = v14[14];
  v6 = v14[15];
  MEMORY[0x277D82BD8](v24);
  (*(v6 + 8))(v7, v8);
  MEMORY[0x259C87EC0](v9);
  MEMORY[0x259C87EC0](v9);

  v4 = *(v14[8] + 8);

  return v4(0);
}

uint64_t MediaML.getModelStats()(uint64_t a1)
{
  v7 = *v2;
  v7[8] = *v2;
  v7[19] = a1;
  v7[20] = v1;

  if (v1)
  {
    v3 = v7[13];
    v4 = MediaML.getModelStats();
  }

  else
  {
    v6 = v7[13];

    v3 = v6;
    v4 = MediaML.getModelStats();
  }

  return MEMORY[0x2822009F8](v4, v3);
}

uint64_t MediaML.__allocating_init()()
{
  v3 = v0;
  *(v0 + 16) = v0;
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = MediaML.__allocating_init();

  return MediaML.init()();
}

uint64_t MediaML.__allocating_init()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t MediaML.init()()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = *v0;
  *(v1 + 16) = v1;
  *(v1 + 24) = 0;
  *(v1 + 176) = 0;
  v2 = type metadata accessor for URL();
  *(v1 + 72) = v2;
  *(v1 + 80) = *(v2 - 8);
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17URLResourceValuesVSgMd, &_s10Foundation17URLResourceValuesVSgMR);
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaML.init(), 0);
}

{
  v1 = v0[14];
  v77 = v0[10];
  v78 = v0[9];
  v76 = v0[7];
  v0[2] = v0;
  v0[3] = v76;
  swift_defaultActor_initialize();
  *(v76 + 112) = 0;
  v2 = mediaMLBaseDirectory.unsafeMutableAddressor();
  v79 = *(v77 + 16);
  v79(v1, v2, v78);
  type metadata accessor for NSURLResourceKey(0);
  _allocateUninitializedArray<A>(_:)();
  outlined init with copy of NSURLResourceKey(MEMORY[0x277CBE868], v3);
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  Set.init(arrayLiteral:)();
  URL.resourceValues(forKeys:)();
  v74 = *(v75 + 136);
  v72 = *(v75 + 112);
  v73 = *(v75 + 72);
  v71 = *(v75 + 80);

  (*(v71 + 8))(v72, v73);
  v4 = type metadata accessor for URLResourceValues();
  (*(*(v4 - 8) + 56))(v74, 0, 1);
  v67 = *(v75 + 136);
  v68 = type metadata accessor for URLResourceValues();
  v69 = *(v68 - 8);
  v70 = *(v69 + 48);
  if (v70(v67, 1) == 1)
  {
    outlined destroy of URLResourceValues?(*(v75 + 136));
    v66 = 2;
  }

  else
  {
    v64 = *(v75 + 136);
    v65 = URLResourceValues.isDirectory.getter();
    (*(v69 + 8))(v64, v68);
    v66 = v65;
  }

  if (v66 == 2 || (v66 & 1) != 1)
  {
    v54 = 0;
  }

  else
  {
    v5 = *(v75 + 104);
    v63 = *(v75 + 72);
    v6 = mediaMLModelDirectory.unsafeMutableAddressor();
    v79(v5, v6, v63);
    _allocateUninitializedArray<A>(_:)();
    outlined init with copy of NSURLResourceKey(MEMORY[0x277CBE868], v7);
    _finalizeUninitializedArray<A>(_:)();
    Set.init(arrayLiteral:)();
    URL.resourceValues(forKeys:)();
    v62 = *(v75 + 128);
    v60 = *(v75 + 104);
    v61 = *(v75 + 72);
    v59 = *(v75 + 80);

    (*(v59 + 8))(v60, v61);
    (*(v69 + 56))(v62, 0, 1, v68);
    if ((v70)(*(v75 + 128), 1, v68) == 1)
    {
      outlined destroy of URLResourceValues?(*(v75 + 128));
      v58 = 2;
    }

    else
    {
      v56 = *(v75 + 128);
      v57 = URLResourceValues.isDirectory.getter();
      (*(v69 + 8))(v56, v68);
      v58 = v57;
    }

    v55 = v58 != 2 && (v58 & 1) == 1;
    v54 = v55;
  }

  if (v54)
  {
    v8 = *(v75 + 96);
    v53 = *(v75 + 72);
    v9 = mediaMLDataDirectory.unsafeMutableAddressor();
    v79(v8, v9, v53);
    _allocateUninitializedArray<A>(_:)();
    outlined init with copy of NSURLResourceKey(MEMORY[0x277CBE868], v10);
    _finalizeUninitializedArray<A>(_:)();
    Set.init(arrayLiteral:)();
    URL.resourceValues(forKeys:)();
    v52 = *(v75 + 120);
    v50 = *(v75 + 96);
    v51 = *(v75 + 72);
    v49 = *(v75 + 80);

    (*(v49 + 8))(v50, v51);
    (*(v69 + 56))(v52, 0, 1, v68);
    if ((v70)(*(v75 + 120), 1, v68) == 1)
    {
      outlined destroy of URLResourceValues?(*(v75 + 120));
      v48 = 2;
    }

    else
    {
      v46 = *(v75 + 120);
      v47 = URLResourceValues.isDirectory.getter();
      (*(v69 + 8))(v46, v68);
      v48 = v47;
    }

    v45 = v48 != 2 && (v48 & 1) == 1;
    v44 = v45;
  }

  else
  {
    v44 = 0;
  }

  *(v75 + 176) = v44;
  if (v44)
  {
    goto LABEL_27;
  }

  v11 = *(v75 + 88);
  v38 = *(v75 + 72);
  v37 = *(v75 + 80);
  v42 = [objc_opt_self() defaultManager];
  v12 = mediaMLBaseDirectory.unsafeMutableAddressor();
  v79(v11, v12, v38);
  URL._bridgeToObjectiveC()(v13);
  v41 = v14;
  v39 = *(v37 + 8);
  v39(v11, v38);
  *(v75 + 32) = 0;
  v43 = [v42 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:v75 + 32];
  v40 = *(v75 + 32);
  MEMORY[0x277D82BE0](v40);
  MEMORY[0x277D82BD8](0);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  if (v43)
  {
    v15 = *(v75 + 88);
    v32 = *(v75 + 72);
    v35 = [objc_opt_self() defaultManager];
    v16 = mediaMLDataDirectory.unsafeMutableAddressor();
    v79(v15, v16, v32);
    URL._bridgeToObjectiveC()(v17);
    v34 = v18;
    v39(v15, v32);
    *(v75 + 40) = 0;
    v36 = [v35 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:v75 + 40];
    v33 = *(v75 + 40);
    MEMORY[0x277D82BE0](v33);
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    if (v36)
    {
      v19 = *(v75 + 88);
      v27 = *(v75 + 72);
      v30 = [objc_opt_self() defaultManager];
      v20 = mediaMLModelDirectory.unsafeMutableAddressor();
      v79(v19, v20, v27);
      URL._bridgeToObjectiveC()(v21);
      v29 = v22;
      v39(v19, v27);
      *(v75 + 48) = 0;
      v31 = [v30 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v75 + 48];
      v28 = *(v75 + 48);
      MEMORY[0x277D82BE0](v28);
      MEMORY[0x277D82BD8](0);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      if (v31)
      {
LABEL_27:
        type metadata accessor for WifiModel(0);
        v26 = swift_task_alloc();
        *(v75 + 144) = v26;
        *v26 = *(v75 + 16);
        v26[1] = MediaML.init();

        return WifiModel.__allocating_init()();
      }

      _convertNSErrorToError(_:)();
      MEMORY[0x277D82BD8](v28);
      swift_willThrow();
      v25 = *(v75 + 56);
    }

    else
    {
      _convertNSErrorToError(_:)();
      MEMORY[0x277D82BD8](v33);
      swift_willThrow();
      v25 = *(v75 + 56);
    }
  }

  else
  {
    _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](v40);
    swift_willThrow();
    v25 = *(v75 + 56);
  }

  outlined destroy of DataWriter?((v25 + 112));
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  v24 = *(*(v75 + 16) + 8);

  return v24();
}

{
  v1 = v0[19];
  v2 = v0[7];
  v0[2] = v0;
  *(v2 + 120) = v1;
  type metadata accessor for CellularModel(0);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0[2];
  v4[1] = MediaML.init();

  return CellularModel.__allocating_init()();
}

{
  v1 = v0[21];
  v2 = v0[7];
  v0[2] = v0;
  *(v2 + 128) = v1;

  return MEMORY[0x2822009F8](MediaML.init(), v2);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t MediaML.init()(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 16) = *v1;
  *(v3 + 152) = a1;

  return MEMORY[0x2822009F8](MediaML.init(), 0);
}

{
  v3 = *v1;
  *(v3 + 16) = *v1;
  *(v3 + 168) = a1;

  return MEMORY[0x2822009F8](MediaML.init(), 0);
}

uint64_t MediaML.deinit()
{
  v33 = 0;
  v41 = 0;
  v22 = 0;
  v30 = type metadata accessor for Logger();
  v24 = v30;
  v25 = *(v30 - 8);
  v29 = v25;
  v26 = v25;
  v27 = *(v25 + 64);
  MEMORY[0x28223BE20](v30 - 8, v30);
  v0 = &v7 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0;
  v41 = v1;
  v2 = MediaML.logger.unsafeMutableAddressor();
  (*(v29 + 16))(v0, v2, v30);
  v35 = Logger.logObject.getter();
  v31 = v35;
  v34 = static os_log_type_t.info.getter();
  v32 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v36 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v35, v34))
  {
    v3 = v22;
    v13 = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = v13;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v11 = 0;
    v14 = createStorage<A>(capacity:type:)(0, v10, v10);
    v12 = v14;
    v15 = createStorage<A>(capacity:type:)(v11, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v40 = v13;
    v39 = v14;
    v38 = v15;
    v16 = 0;
    v17 = &v40;
    serialize(_:at:)(0, &v40);
    serialize(_:at:)(v16, v17);
    v37 = v36;
    v18 = &v7;
    MEMORY[0x28223BE20](&v7, v4);
    v19 = &v7 - 6;
    *(&v7 - 4) = v5;
    *(&v7 - 3) = &v39;
    *(&v7 - 2) = &v38;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v21 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2586A4000, v31, v32, "MediaML deinit successful!", v9, 2u);
      v7 = 0;
      destroyStorage<A>(_:count:)(v12, 0, v10);
      destroyStorage<A>(_:count:)(v15, v7, MEMORY[0x277D84F70] + 8);
      MEMORY[0x259C87730](v9, MEMORY[0x277D84B78]);

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  (*(v26 + 8))(v28, v24);
  outlined destroy of DataWriter?((v23 + 112));

  swift_defaultActor_destroy();
  return v23;
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance NSURLResourceKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  lazy protocol witness table accessor for type String and conformance String();
  return _SwiftNewtypeWrapper<>._bridgeToObjectiveC()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  lazy protocol witness table accessor for type String and conformance String();
  return static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  lazy protocol witness table accessor for type String and conformance String();
  return static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)() & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSURLResourceKey(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  lazy protocol witness table accessor for type String and conformance String();
  return static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)();
}

NSURLResourceKey protocol witness for RawRepresentable.init(rawValue:) in conformance NSURLResourceKey@<X0>(Swift::String *a1@<X0>, NSURLResourceKey *a2@<X8>)
{
  result = NSURLResourceKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

NSURLResourceKey __swiftcall NSURLResourceKey.init(rawValue:)(Swift::String rawValue)
{

  v3 = MEMORY[0x259C87400](rawValue._countAndFlagsBits, rawValue._object);
  MEMORY[0x277D82BE0](v3);

  MEMORY[0x277D82BD8](v3);
  return v3;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  result = NSURLResourceKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t NSURLResourceKey.rawValue.getter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](a1);
  return v3;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

unint64_t lazy protocol witness table accessor for type DataWriter and conformance DataWriter()
{
  v2 = lazy protocol witness table cache variable for type DataWriter and conformance DataWriter;
  if (!lazy protocol witness table cache variable for type DataWriter and conformance DataWriter)
  {
    type metadata accessor for DataWriter();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DataWriter and conformance DataWriter);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_2(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

void *outlined init with copy of WiFiDataPointForWriting(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  a2[3] = a1[3];
  v4 = a1[4];

  a2[4] = v4;
  a2[5] = a1[5];
  v6 = a1[6];

  result = a2;
  a2[6] = v6;
  a2[7] = a1[7];
  a2[8] = a1[8];
  a2[9] = a1[9];
  a2[10] = a1[10];
  a2[11] = a1[11];
  a2[12] = a1[12];
  a2[13] = a1[13];
  a2[14] = a1[14];
  a2[15] = a1[15];
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of WiFiDataPointForWriting(void *a1)
{
}

void *outlined init with copy of CellDataPointForWriting(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  a2[3] = a1[3];
  v4 = a1[4];

  a2[4] = v4;
  a2[5] = a1[5];
  v6 = a1[6];

  result = a2;
  a2[6] = v6;
  a2[7] = a1[7];
  a2[8] = a1[8];
  a2[9] = a1[9];
  a2[10] = a1[10];
  a2[11] = a1[11];
  a2[12] = a1[12];
  a2[13] = a1[13];
  a2[14] = a1[14];
  a2[15] = a1[15];
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of CellDataPointForWriting(void *a1)
{
}

__n128 outlined init with take of Any(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v1 = lazy protocol witness table accessor for type [String : Any] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t type metadata accessor for NSURLResourceKey(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for NSURLResourceKey;
  if (!lazy cache variable for type metadata for NSURLResourceKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSURLResourceKey);
      return v2;
    }
  }

  return v5;
}

void *outlined init with copy of NSURLResourceKey(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey()
{
  v2 = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    type metadata accessor for NSURLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    type metadata accessor for NSURLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    type metadata accessor for NSURLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    type metadata accessor for NSURLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    type metadata accessor for NSURLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of URLResourceValues?(uint64_t a1)
{
  v3 = type metadata accessor for URLResourceValues();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for WiFiDataPointForWriting(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 128))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WiFiDataPointForWriting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CellDataPointForWriting(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 128))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CellDataPointForWriting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WiFiDataPointForPrediciton(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WiFiDataPointForPrediciton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CellDataPointForPrediction(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CellDataPointForPrediction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

Swift::String __swiftcall Character.init(_builtinExtendedGraphemeClusterLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinExtendedGraphemeClusterLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = MEMORY[0x2821FBAB0](_builtinExtendedGraphemeClusterLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = MEMORY[0x2821FBD90](_builtinStringLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t String.init(cString:)()
{
  return MEMORY[0x2821FBE78]();
}

{
  return MEMORY[0x2821FBE80]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE68]();
}

{
  return MEMORY[0x2821FDE70]();
}