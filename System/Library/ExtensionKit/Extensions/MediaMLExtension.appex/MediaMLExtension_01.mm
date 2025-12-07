void *closure #2 in closure #1 in MediaMLWorker.doWork(context:)()
{
  v95 = v0;
  v89 = v0[800];
  v1 = v0[775];
  v88 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v89(v1, v2, v88);
  v91 = Logger.logObject.getter();
  v90 = static os_log_type_t.info.getter();
  v92 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v91, v90))
  {
    v3 = *(v87 + 6512);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v84 = createStorage<A>(capacity:type:)(0, v82, v82);
    v85 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v87 + 6008) = buf;
    *(v87 + 6016) = v84;
    *(v87 + 6024) = v85;
    serialize(_:at:)(0, (v87 + 6008));
    serialize(_:at:)(0, (v87 + 6008));
    *(v87 + 6032) = v92;
    v86 = swift_task_alloc();
    v86[2] = v87 + 6008;
    v86[3] = v87 + 6016;
    v86[4] = v87 + 6024;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v91, v90, "Finished wifi model training and received modelStats", buf, 2u);
    destroyStorage<A>(_:count:)(v84, 0);
    destroyStorage<A>(_:count:)(v85, 0);
    UnsafeMutablePointer.deallocate()();

    v81 = 0;
  }

  else
  {

    v81 = *(v87 + 6512);
  }

  v78 = *(v87 + 6424);
  v76 = *(v87 + 6200);
  v77 = *(v87 + 6096);

  v78(v76, v77);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MLHost", 6uLL, 1);
  *(v87 + 6520) = v5;
  *(v87 + 5600) = v5;
  v79 = MLHostExtensionContext.taskName.getter();
  v80 = v6;
  *(v87 + 6536) = v79;
  *(v87 + 6544) = v6;
  *(v87 + 5616) = v79;
  *(v87 + 5624) = v6;
  *(v87 + 100) = 5001;
  if (isSeedBuild()())
  {
    *(v87 + 100) = 3001;
    v75 = 3001;
  }

  else
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.AppleMediaDiscoveryFramework", 0x26uLL, 1);
    String.utf8CString.getter();

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    swift_unknownObjectRelease();

    if (has_internal_diagnostics)
    {
      *(v87 + 100) = 1001;
      v73 = 1001;
    }

    else
    {
      v73 = 5001;
    }

    v75 = v73;
  }

  *(v87 + 188) = v75;
  memcpy((v87 + 368), (v87 + 192), 0x51uLL);
  memcpy(v93, (v87 + 368), sizeof(v93));
  if (v93[80])
  {
    v72 = v81;
  }

  else
  {
    memcpy((v87 + 2920), (v87 + 192), 0x51uLL);
    memcpy((v87 + 2832), (v87 + 2920), 0x51uLL);
    if (*(v87 + 2912))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v71 = *(v87 + 2832);
    memcpy((v87 + 3096), (v87 + 192), 0x51uLL);
    memcpy((v87 + 3008), (v87 + 3096), 0x51uLL);
    if (*(v87 + 3088))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v70 = *(v87 + 3072);
    memcpy((v87 + 3272), (v87 + 192), 0x51uLL);
    memcpy((v87 + 3184), (v87 + 3272), 0x51uLL);
    if (*(v87 + 3264))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v69 = *(v87 + 3240);
    memcpy((v87 + 3448), (v87 + 192), 0x51uLL);
    memcpy((v87 + 3360), (v87 + 3448), 0x51uLL);
    if (*(v87 + 3440))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v68 = *(v87 + 3384);
    memcpy((v87 + 3624), (v87 + 192), 0x51uLL);
    memcpy((v87 + 3536), (v87 + 3624), 0x51uLL);
    if (*(v87 + 3616))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v67 = *(v87 + 3576);
    memcpy((v87 + 3800), (v87 + 192), 0x51uLL);
    memcpy((v87 + 3712), (v87 + 3800), 0x51uLL);
    if (*(v87 + 3792))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v66 = *(v87 + 3760);
    memcpy((v87 + 3976), (v87 + 192), 0x51uLL);
    memcpy((v87 + 3888), (v87 + 3976), 0x51uLL);
    if (*(v87 + 3968))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v65 = *(v87 + 3920);
    memcpy((v87 + 4152), (v87 + 192), 0x51uLL);
    memcpy((v87 + 4064), (v87 + 4152), 0x51uLL);
    if (*(v87 + 4144))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v64 = *(v87 + 4072);
    memcpy((v87 + 4328), (v87 + 192), 0x51uLL);
    result = memcpy((v87 + 4240), (v87 + 4328), 0x51uLL);
    if (*(v87 + 4320))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v7 = *(v87 + 4256);
    if (__OFADD__(v64, v7))
    {
      goto LABEL_83;
    }

    v60 = *(v87 + 6400);
    v9 = *(v87 + 6192);
    v59 = *(v87 + 6096);
    reportErrorMetrics(interfaceType:validationMeanAbsPercentError:trainingMeanAbsPercentError:rmseError:experimentID:deploymentID:treatmentID:carrierCount:appCount:sessionCount:ssidCount:trainingDataCount:)(v71, v5._countAndFlagsBits, v5._object, v75, v79, v80, v68, v67, v70, v69, 1.2, v66, v65, v64 + v7);
    v10 = MediaMLWorker.logger.unsafeMutableAddressor();
    v60(v9, v10, v59);
    oslog = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    v63 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v61))
    {
      v55 = static UnsafeMutablePointer.allocate(capacity:)();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v56 = createStorage<A>(capacity:type:)(0, v54, v54);
      v57 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v87 + 5976) = v55;
      *(v87 + 5984) = v56;
      *(v87 + 5992) = v57;
      serialize(_:at:)(0, (v87 + 5976));
      serialize(_:at:)(0, (v87 + 5976));
      *(v87 + 6000) = v63;
      v58 = swift_task_alloc();
      v58[2] = v87 + 5976;
      v58[3] = v87 + 5984;
      v58[4] = v87 + 5992;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v81)
      {
      }

      _os_log_impl(&_mh_execute_header, oslog, v61, "Reported wifiModelStats to Core Analytics", v55, 2u);
      destroyStorage<A>(_:count:)(v56, 0);
      destroyStorage<A>(_:count:)(v57, 0);
      UnsafeMutablePointer.deallocate()();

      v53 = 0;
    }

    else
    {

      v53 = v81;
    }

    v52 = *(v87 + 6424);
    v50 = *(v87 + 6192);
    v51 = *(v87 + 6096);

    v52(v50, v51);
    memcpy((v87 + 4504), (v87 + 192), 0x51uLL);
    memcpy((v87 + 4416), (v87 + 4504), 0x51uLL);
    if (*(v87 + 4496))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v49 = *(v87 + 4480);
    if (v49 < *modelMAPEThreshold.unsafeMutableAddressor())
    {
      memcpy((v87 + 4680), (v87 + 192), 0x51uLL);
      memcpy((v87 + 4592), (v87 + 4680), 0x51uLL);
      if (*(v87 + 4672))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      memcpy((v87 + 5120), (v87 + 4592), 0x50uLL);
      v11 = swift_task_alloc();
      v12 = v87 + 5120;
      *(v87 + 6552) = v11;
      *v11 = *(v87 + 5632);
      v11[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

      return MediaMLWorker.saveModelStatsToDB(modelStats:)(v12);
    }

    v72 = v53;
  }

  memcpy((v87 + 456), (v87 + 280), 0x51uLL);
  memcpy(v94, (v87 + 456), sizeof(v94));
  if ((v94[80] & 1) == 0)
  {
    memcpy((v87 + 632), (v87 + 280), 0x51uLL);
    memcpy((v87 + 544), (v87 + 632), 0x51uLL);
    if (*(v87 + 624))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v48 = *(v87 + 544);
    memcpy((v87 + 808), (v87 + 280), 0x51uLL);
    memcpy((v87 + 720), (v87 + 808), 0x51uLL);
    if (*(v87 + 800))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v47 = *(v87 + 784);
    memcpy((v87 + 984), (v87 + 280), 0x51uLL);
    memcpy((v87 + 896), (v87 + 984), 0x51uLL);
    if (*(v87 + 976))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v46 = *(v87 + 952);
    memcpy((v87 + 1160), (v87 + 280), 0x51uLL);
    memcpy((v87 + 1072), (v87 + 1160), 0x51uLL);
    if (*(v87 + 1152))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v45 = *(v87 + 1096);
    memcpy((v87 + 1336), (v87 + 280), 0x51uLL);
    memcpy((v87 + 1248), (v87 + 1336), 0x51uLL);
    if (*(v87 + 1328))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v44 = *(v87 + 1288);
    memcpy((v87 + 1512), (v87 + 280), 0x51uLL);
    memcpy((v87 + 1424), (v87 + 1512), 0x51uLL);
    if (*(v87 + 1504))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v43 = *(v87 + 1472);
    memcpy((v87 + 1688), (v87 + 280), 0x51uLL);
    memcpy((v87 + 1600), (v87 + 1688), 0x51uLL);
    if (*(v87 + 1680))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v42 = *(v87 + 1632);
    memcpy((v87 + 1864), (v87 + 280), 0x51uLL);
    memcpy((v87 + 1776), (v87 + 1864), 0x51uLL);
    if (*(v87 + 1856))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v41 = *(v87 + 1784);
    memcpy((v87 + 2040), (v87 + 280), 0x51uLL);
    result = memcpy((v87 + 1952), (v87 + 2040), 0x51uLL);
    if (*(v87 + 2032))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v13 = *(v87 + 1968);
    if (!__OFADD__(v41, v13))
    {
      v37 = *(v87 + 6400);
      v15 = *(v87 + 6152);
      v36 = *(v87 + 6096);
      reportErrorMetrics(interfaceType:validationMeanAbsPercentError:trainingMeanAbsPercentError:rmseError:experimentID:deploymentID:treatmentID:carrierCount:appCount:sessionCount:ssidCount:trainingDataCount:)(v48, *(v87 + 6520), *(v87 + 6528), *(v87 + 188), *(v87 + 6536), *(v87 + 6544), v45, v44, v47, v46, 1.2, v43, v42, v41 + v13);
      v16 = MediaMLWorker.logger.unsafeMutableAddressor();
      v37(v15, v16, v36);
      log = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      v40 = _allocateUninitializedArray<A>(_:)();
      if (!os_log_type_enabled(log, v38))
      {

        goto LABEL_72;
      }

      v32 = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v33 = createStorage<A>(capacity:type:)(0, v31, v31);
      v34 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v87 + 5816) = v32;
      *(v87 + 5824) = v33;
      *(v87 + 5832) = v34;
      serialize(_:at:)(0, (v87 + 5816));
      serialize(_:at:)(0, (v87 + 5816));
      *(v87 + 5840) = v40;
      v35 = swift_task_alloc();
      v35[2] = v87 + 5816;
      v35[3] = v87 + 5824;
      v35[4] = v87 + 5832;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (!v72)
      {

        _os_log_impl(&_mh_execute_header, log, v38, "Reported cellModelStats to Core Analytics", v32, 2u);
        destroyStorage<A>(_:count:)(v33, 0);
        destroyStorage<A>(_:count:)(v34, 0);
        UnsafeMutablePointer.deallocate()();

LABEL_72:
        v30 = *(v87 + 6424);
        v28 = *(v87 + 6152);
        v29 = *(v87 + 6096);

        v30(v28, v29);
        memcpy((v87 + 2216), (v87 + 280), 0x51uLL);
        memcpy((v87 + 2128), (v87 + 2216), 0x51uLL);
        if (*(v87 + 2208))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v27 = *(v87 + 2192);
        if (v27 < *modelMAPEThreshold.unsafeMutableAddressor())
        {
          memcpy((v87 + 2392), (v87 + 280), 0x51uLL);
          memcpy((v87 + 2304), (v87 + 2392), 0x51uLL);
          if ((*(v87 + 2384) & 1) == 0)
          {
            memcpy((v87 + 5360), (v87 + 2304), 0x50uLL);
            v17 = swift_task_alloc();
            v12 = v87 + 5360;
            *(v87 + 6616) = v17;
            *v17 = *(v87 + 5632);
            v17[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

            return MediaMLWorker.saveModelStatsToDB(modelStats:)(v12);
          }

          return _assertionFailure(_:_:file:line:flags:)();
        }

        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
    return result;
  }

LABEL_79:
  v24 = *(v87 + 6264);
  v23 = *(v87 + 6256);
  v22 = *(v87 + 6248);
  v21 = *(v87 + 6240);
  v20 = *(v87 + 6232);
  v25 = *(v87 + 6216);
  v19 = *(v87 + 6224);

  v26 = *(v19 + 8);
  v26(v20, v25);
  v26(v21, v25);
  v26(v22, v25);
  v26(v23, v25);
  v26(v24, v25);
  OS_dispatch_semaphore.signal()();

  v18 = *(*(v87 + 5632) + 8);

  return v18();
}

{
  v57 = v0;
  v52 = v0[800];
  v1 = v0[770];
  v51 = v0[762];
  v0[704] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  v52(v1, v2, v51);
  v54 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();
  v55 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v54, v53))
  {
    v3 = *(v50 + 6608);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v47 = createStorage<A>(capacity:type:)(0, v45, v45);
    v48 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v50 + 5848) = buf;
    *(v50 + 5856) = v47;
    *(v50 + 5864) = v48;
    serialize(_:at:)(0, (v50 + 5848));
    serialize(_:at:)(0, (v50 + 5848));
    *(v50 + 5872) = v55;
    v49 = swift_task_alloc();
    v49[2] = v50 + 5848;
    v49[3] = v50 + 5856;
    v49[4] = v50 + 5864;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v54, v53, "Deleted previous wifiStandardDeviation from wifiStdDev table", buf, 2u);
    destroyStorage<A>(_:count:)(v47, 0);
    destroyStorage<A>(_:count:)(v48, 0);
    UnsafeMutablePointer.deallocate()();

    v44 = 0;
  }

  else
  {

    v44 = *(v50 + 6608);
  }

  v43 = *(v50 + 6424);
  v41 = *(v50 + 6160);
  v42 = *(v50 + 6096);

  v43(v41, v42);
  memcpy((v50 + 456), (v50 + 280), 0x51uLL);
  memcpy(v56, (v50 + 456), sizeof(v56));
  if (v56[80])
  {
    goto LABEL_39;
  }

  memcpy((v50 + 632), (v50 + 280), 0x51uLL);
  memcpy((v50 + 544), (v50 + 632), 0x51uLL);
  if (*(v50 + 624))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v40 = *(v50 + 544);
  memcpy((v50 + 808), (v50 + 280), 0x51uLL);
  memcpy((v50 + 720), (v50 + 808), 0x51uLL);
  if (*(v50 + 800))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v39 = *(v50 + 784);
  memcpy((v50 + 984), (v50 + 280), 0x51uLL);
  memcpy((v50 + 896), (v50 + 984), 0x51uLL);
  if (*(v50 + 976))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v38 = *(v50 + 952);
  memcpy((v50 + 1160), (v50 + 280), 0x51uLL);
  memcpy((v50 + 1072), (v50 + 1160), 0x51uLL);
  if (*(v50 + 1152))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v37 = *(v50 + 1096);
  memcpy((v50 + 1336), (v50 + 280), 0x51uLL);
  memcpy((v50 + 1248), (v50 + 1336), 0x51uLL);
  if (*(v50 + 1328))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v36 = *(v50 + 1288);
  memcpy((v50 + 1512), (v50 + 280), 0x51uLL);
  memcpy((v50 + 1424), (v50 + 1512), 0x51uLL);
  if (*(v50 + 1504))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v35 = *(v50 + 1472);
  memcpy((v50 + 1688), (v50 + 280), 0x51uLL);
  memcpy((v50 + 1600), (v50 + 1688), 0x51uLL);
  if (*(v50 + 1680))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v34 = *(v50 + 1632);
  memcpy((v50 + 1864), (v50 + 280), 0x51uLL);
  memcpy((v50 + 1776), (v50 + 1864), 0x51uLL);
  if (*(v50 + 1856))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v33 = *(v50 + 1784);
  memcpy((v50 + 2040), (v50 + 280), 0x51uLL);
  result = memcpy((v50 + 1952), (v50 + 2040), 0x51uLL);
  if (*(v50 + 2032))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v5 = *(v50 + 1968);
  if (__OFADD__(v33, v5))
  {
    __break(1u);
    return result;
  }

  v29 = *(v50 + 6400);
  v7 = *(v50 + 6152);
  v28 = *(v50 + 6096);
  reportErrorMetrics(interfaceType:validationMeanAbsPercentError:trainingMeanAbsPercentError:rmseError:experimentID:deploymentID:treatmentID:carrierCount:appCount:sessionCount:ssidCount:trainingDataCount:)(v40, *(v50 + 6520), *(v50 + 6528), *(v50 + 188), *(v50 + 6536), *(v50 + 6544), v37, v36, v39, v38, 1.2, v35, v34, v33 + v5);
  v8 = MediaMLWorker.logger.unsafeMutableAddressor();
  v29(v7, v8, v28);
  oslog = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v32 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v30))
  {
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0, v23, v23);
    v26 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v50 + 5816) = v24;
    *(v50 + 5824) = v25;
    *(v50 + 5832) = v26;
    serialize(_:at:)(0, (v50 + 5816));
    serialize(_:at:)(0, (v50 + 5816));
    *(v50 + 5840) = v32;
    v27 = swift_task_alloc();
    v27[2] = v50 + 5816;
    v27[3] = v50 + 5824;
    v27[4] = v50 + 5832;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v44)
    {
    }

    _os_log_impl(&_mh_execute_header, oslog, v30, "Reported cellModelStats to Core Analytics", v24, 2u);
    destroyStorage<A>(_:count:)(v25, 0);
    destroyStorage<A>(_:count:)(v26, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v22 = *(v50 + 6424);
  v20 = *(v50 + 6152);
  v21 = *(v50 + 6096);

  v22(v20, v21);
  memcpy((v50 + 2216), (v50 + 280), 0x51uLL);
  memcpy((v50 + 2128), (v50 + 2216), 0x51uLL);
  if (*(v50 + 2208))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v19 = *(v50 + 2192);
  if (v19 >= *modelMAPEThreshold.unsafeMutableAddressor())
  {
LABEL_39:
    v16 = *(v50 + 6264);
    v15 = *(v50 + 6256);
    v14 = *(v50 + 6248);
    v13 = *(v50 + 6240);
    v12 = *(v50 + 6232);
    v17 = *(v50 + 6216);
    v11 = *(v50 + 6224);

    v18 = *(v11 + 8);
    v18(v12, v17);
    v18(v13, v17);
    v18(v14, v17);
    v18(v15, v17);
    v18(v16, v17);
    OS_dispatch_semaphore.signal()();

    v10 = *(*(v50 + 5632) + 8);

    return v10();
  }

  else
  {
    memcpy((v50 + 2392), (v50 + 280), 0x51uLL);
    memcpy((v50 + 2304), (v50 + 2392), 0x51uLL);
    if (*(v50 + 2384))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    memcpy((v50 + 5360), (v50 + 2304), 0x50uLL);
    v9 = swift_task_alloc();
    *(v50 + 6616) = v9;
    *v9 = *(v50 + 5632);
    v9[1] = closure #2 in closure #1 in MediaMLWorker.doWork(context:);

    return MediaMLWorker.saveModelStatsToDB(modelStats:)(v50 + 5360);
  }
}

uint64_t MediaMLWorker.checkAndPruneProcessedCellDB()()
{
  v1[25] = v0;
  v1[13] = v1;
  v1[14] = 0;
  v1[16] = 0;
  v1[18] = 0;
  v1[19] = 0;
  v1[20] = 0;
  v1[21] = 0;
  v2 = type metadata accessor for Logger();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[14] = v0;

  return _swift_task_switch(MediaMLWorker.checkAndPruneProcessedCellDB(), 0);
}

{
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[30];
  v0[13] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #2 in MediaMLWorker.checkAndPruneProcessedCellDB());
  v0[34] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  else
  {

    v4 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  return _swift_task_switch(v4, 0);
}

{
  v71 = v0;
  v0[13] = v0;
  v65 = v0[17];
  v0[19] = v65;
  if (v65 >= *MAX_ALLOWED_PROCESSED_DATASIZE.unsafeMutableAddressor())
  {
    v1 = MAX_ALLOWED_PROCESSED_DATASIZE.unsafeMutableAddressor();
    v63 = v65 - *v1;
    if (__OFSUB__(v65, *v1))
    {
      __break(1u);
    }

    else
    {
      v1 = MAX_ALLOWED_PROCESSED_DATASIZE_PRUNE.unsafeMutableAddressor();
      v62 = v63 + *v1;
      v4 = __OFADD__(v63, *v1);
      *(v64 + 280) = v63 + *v1;
      if (!v4)
      {
        v5 = *(v64 + 232);
        v53 = *(v64 + 208);
        v52 = *(v64 + 216);
        *(v64 + 160) = v62;
        v51 = swift_allocObject();
        *(v64 + 288) = v51;
        *(v64 + 168) = v51 + 16;
        *(v51 + 16) = *DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor();
        v6 = MediaMLWorker.logger.unsafeMutableAddressor();
        v7 = *(v52 + 16);
        *(v64 + 296) = v7;
        *(v64 + 304) = (v52 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v7(v5, v6, v53);
        v54 = swift_allocObject();
        *(v54 + 16) = v62;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.info.getter();
        v56 = swift_allocObject();
        *(v56 + 16) = 0;
        v57 = swift_allocObject();
        *(v57 + 16) = 8;
        v55 = swift_allocObject();
        *(v55 + 16) = partial apply for implicit closure #1 in MediaMLWorker.checkAndPruneProcessedCellDB();
        *(v55 + 24) = v54;
        v58 = swift_allocObject();
        *(v58 + 16) = _sSiIegd_SiIegr_TRTA_0;
        *(v58 + 24) = v55;
        *(v64 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        _allocateUninitializedArray<A>(_:)();
        v59 = v8;

        *v59 = closure #1 in OSLogArguments.append(_:)partial apply;
        v59[1] = v56;

        v59[2] = closure #1 in OSLogArguments.append(_:)partial apply;
        v59[3] = v57;

        v59[4] = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
        v59[5] = v58;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v60, v61))
        {
          v9 = *(v64 + 272);
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v49 = createStorage<A>(capacity:type:)(0, v47, v47);
          v50 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
          v66 = buf;
          v67 = v49;
          v68 = v50;
          serialize(_:at:)(0, &v66);
          serialize(_:at:)(1, &v66);
          v69 = closure #1 in OSLogArguments.append(_:)partial apply;
          v70 = v56;
          closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
          if (v9)
          {
            goto LABEL_14;
          }

          v69 = closure #1 in OSLogArguments.append(_:)partial apply;
          v70 = v57;
          closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
          v69 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
          v70 = v58;
          closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
          _os_log_impl(&_mh_execute_header, v60, v61, "processedcell data too large, deleting %ld rows", buf, 0xCu);
          destroyStorage<A>(_:count:)(v49, 0);
          destroyStorage<A>(_:count:)(v50, 0);
          UnsafeMutablePointer.deallocate()();

          v46 = 0;
        }

        else
        {

          v46 = *(v64 + 272);
        }

        *(v64 + 320) = v46;
        v44 = *(v64 + 232);
        v45 = *(v64 + 208);
        v43 = *(v64 + 216);

        v11 = *(v43 + 8);
        *(v64 + 328) = v11;
        *(v64 + 336) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v11(v44, v45);
        if (v62 < *DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor())
        {
          v42 = *(v64 + 248);
          *(v64 + 344) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM processedcell LIMIT ?", 0x21uLL, 1);
          v12 = swift_task_alloc();
          v2 = v42;
          *(v64 + 360) = v12;
          *(v12 + 16) = v62;
          v1 = MediaMLWorker.checkAndPruneProcessedCellDB();

          return _swift_task_switch(v1, v2);
        }

        v39 = *(v64 + 288);
        v40 = *(v64 + 280);
        swift_beginAccess();
        v41 = *(v39 + 16);
        swift_endAccess();
        if (v41 >= v40)
        {
          *(v64 + 408) = v46;
          v19 = *(v64 + 248);
          v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
          v2 = v19;
          *(v64 + 416) = v17;
          v1 = MediaMLWorker.checkAndPruneProcessedCellDB();

          return _swift_task_switch(v1, v2);
        }

        v30 = *(v64 + 296);
        v31 = *(v64 + 288);
        v13 = *(v64 + 224);
        v29 = *(v64 + 208);
        v14 = MediaMLWorker.logger.unsafeMutableAddressor();
        v30(v13, v14, v29);

        oslog = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();
        v33 = swift_allocObject();
        *(v33 + 16) = 0;
        v34 = swift_allocObject();
        *(v34 + 16) = 8;
        v32 = swift_allocObject();
        *(v32 + 16) = partial apply for implicit closure #2 in MediaMLWorker.checkAndPruneProcessedCellDB();
        *(v32 + 24) = v31;
        v35 = swift_allocObject();
        *(v35 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
        *(v35 + 24) = v32;
        _allocateUninitializedArray<A>(_:)();
        v36 = v15;

        *v36 = closure #1 in OSLogArguments.append(_:)partial apply;
        v36[1] = v33;

        v36[2] = closure #1 in OSLogArguments.append(_:)partial apply;
        v36[3] = v34;

        v36[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v36[5] = v35;
        _finalizeUninitializedArray<A>(_:)();

        if (!os_log_type_enabled(oslog, v38))
        {

          v24 = v46;
LABEL_26:
          *(v64 + 376) = v24;
          v22 = *(v64 + 328);
          v23 = *(v64 + 248);
          v20 = *(v64 + 224);
          v21 = *(v64 + 208);

          v22(v20, v21);
          v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM processedcell LIMIT ?", 0x21uLL, 1);
          v2 = v23;
          *(v64 + 384) = v16;
          v1 = MediaMLWorker.checkAndPruneProcessedCellDB();

          return _swift_task_switch(v1, v2);
        }

        v26 = static UnsafeMutablePointer.allocate(capacity:)();
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v27 = createStorage<A>(capacity:type:)(0, v25, v25);
        v28 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v64 + 176) = v26;
        *(v64 + 184) = v27;
        *(v64 + 192) = v28;
        serialize(_:at:)(0, (v64 + 176));
        serialize(_:at:)(1, (v64 + 176));
        *(v64 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v64 + 96) = v33;
        closure #1 in osLogInternal(_:log:type:)((v64 + 88), v64 + 176, v64 + 184, v64 + 192);
        if (!v46)
        {
          *(v64 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
          *(v64 + 96) = v34;
          closure #1 in osLogInternal(_:log:type:)((v64 + 88), v64 + 176, v64 + 184, v64 + 192);
          *(v64 + 88) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          *(v64 + 96) = v35;
          closure #1 in osLogInternal(_:log:type:)((v64 + 88), v64 + 176, v64 + 184, v64 + 192);
          _os_log_impl(&_mh_execute_header, oslog, v38, "Deleting %ldth rows", v26, 0xCu);
          destroyStorage<A>(_:count:)(v27, 0);
          destroyStorage<A>(_:count:)(v28, 0);
          UnsafeMutablePointer.deallocate()();

          v24 = 0;
          goto LABEL_26;
        }

LABEL_14:
      }
    }

    __break(1u);
    return _swift_task_switch(v1, v2);
  }

  v18 = *(*(v64 + 104) + 8);

  return v18();
}

{
  v1 = v0[44];
  v2 = v0[43];
  v3 = v0[40];
  v0[13] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, partial apply for closure #3 in MediaMLWorker.checkAndPruneProcessedCellDB());
  v0[46] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  else
  {

    v4 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  return _swift_task_switch(v4, 0);
}

{
  v0[6]._object = v0;
  v0[25]._object = v0[23]._countAndFlagsBits;
  object = v0[15]._object;
  v0[26] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);

  return _swift_task_switch(MediaMLWorker.checkAndPruneProcessedCellDB(), object);
}

{
  v1 = v0[49];
  v2 = v0[48];
  v3 = v0[47];
  v0[13] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #4 in MediaMLWorker.checkAndPruneProcessedCellDB());
  v0[50] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  else
  {

    v4 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  return _swift_task_switch(v4, 0);
}

{
  v36 = *(v0 + 288);
  *(v0 + 104) = v0;
  swift_beginAccess();
  v37 = *(v36 + 16);
  swift_endAccess();
  v1 = DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor();
  v38 = v37 + *v1;
  if (__OFADD__(v37, *v1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v35 + 288);
    swift_beginAccess();
    *(v11 + 16) = v38;
    swift_endAccess();
    v20 = *(v35 + 400);
    v12 = *(v35 + 288);
    v13 = *(v35 + 280);
    swift_beginAccess();
    v14 = *(v12 + 16);
    swift_endAccess();
    if (v14 < v13)
    {
      v26 = *(v35 + 296);
      v27 = *(v35 + 288);
      v4 = *(v35 + 224);
      v25 = *(v35 + 208);
      v5 = MediaMLWorker.logger.unsafeMutableAddressor();
      v26(v4, v5, v25);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      v30 = swift_allocObject();
      *(v30 + 16) = 8;
      v28 = swift_allocObject();
      *(v28 + 16) = partial apply for implicit closure #2 in MediaMLWorker.checkAndPruneProcessedCellDB();
      *(v28 + 24) = v27;
      v31 = swift_allocObject();
      *(v31 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v31 + 24) = v28;
      _allocateUninitializedArray<A>(_:)();
      v32 = v6;

      *v32 = closure #1 in OSLogArguments.append(_:)partial apply;
      v32[1] = v29;

      v32[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v32[3] = v30;

      v32[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v32[5] = v31;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v33, v34))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v23 = createStorage<A>(capacity:type:)(0, v21, v21);
        v24 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v35 + 176) = buf;
        *(v35 + 184) = v23;
        *(v35 + 192) = v24;
        serialize(_:at:)(0, (v35 + 176));
        serialize(_:at:)(1, (v35 + 176));
        *(v35 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v35 + 96) = v29;
        closure #1 in osLogInternal(_:log:type:)((v35 + 88), v35 + 176, v35 + 184, v35 + 192);
        if (v20)
        {
        }

        *(v35 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v35 + 96) = v30;
        closure #1 in osLogInternal(_:log:type:)((v35 + 88), v35 + 176, v35 + 184, v35 + 192);
        *(v35 + 88) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v35 + 96) = v31;
        closure #1 in osLogInternal(_:log:type:)((v35 + 88), v35 + 176, v35 + 184, v35 + 192);
        _os_log_impl(&_mh_execute_header, v33, v34, "Deleting %ldth rows", buf, 0xCu);
        destroyStorage<A>(_:count:)(v23, 0);
        destroyStorage<A>(_:count:)(v24, 0);
        UnsafeMutablePointer.deallocate()();

        v19 = 0;
      }

      else
      {

        v19 = v20;
      }

      *(v35 + 376) = v19;
      v17 = *(v35 + 328);
      v18 = *(v35 + 248);
      v15 = *(v35 + 224);
      v16 = *(v35 + 208);

      v17(v15, v16);
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM processedcell LIMIT ?", 0x21uLL, 1);
      v2 = v18;
      *(v35 + 384) = v8;
      v1 = MediaMLWorker.checkAndPruneProcessedCellDB();
    }

    else
    {
      *(v35 + 408) = v20;
      v10 = *(v35 + 248);
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
      v2 = v10;
      *(v35 + 416) = v9;
      v1 = MediaMLWorker.checkAndPruneProcessedCellDB();
    }
  }

  return _swift_task_switch(v1, v2);
}

{
  v1 = *(v0 + 416);
  *(v0 + 104) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 432) = v2;
  if (v2)
  {
    v3 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  else
  {

    v3 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  return _swift_task_switch(v3, 0);
}

{
  v2 = *(v0 + 248);
  *(v0 + 104) = v0;
  *(v0 + 440) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pragma wal_checkpoint(truncate)", 0x1FuLL, 1);

  return _swift_task_switch(MediaMLWorker.checkAndPruneProcessedCellDB(), v2);
}

{
  v1 = *(v0 + 440);
  *(v0 + 104) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 456) = v2;
  if (v2)
  {
    v3 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  else
  {

    v3 = MediaMLWorker.checkAndPruneProcessedCellDB();
  }

  return _swift_task_switch(v3, 0);
}

{
  *(v0 + 104) = v0;

  v1 = *(*(v0 + 104) + 8);

  return v1();
}

{
  v0[13] = v0;

  v1 = v0[34];
  swift_errorRetain();
  v0[18] = v1;
  swift_willThrow();

  v2 = *(v0[13] + 8);

  return v2();
}

{
  v0[13] = v0;

  v1 = v0[46];
  swift_errorRetain();
  v0[18] = v1;
  swift_willThrow();

  v2 = *(v0[13] + 8);

  return v2();
}

{
  v0[13] = v0;

  v1 = v0[50];
  swift_errorRetain();
  v0[18] = v1;
  swift_willThrow();

  v2 = *(v0[13] + 8);

  return v2();
}

{
  v0[13] = v0;

  v1 = v0[54];
  swift_errorRetain();
  v0[18] = v1;
  swift_willThrow();

  v2 = *(v0[13] + 8);

  return v2();
}

{
  v0[13] = v0;

  v1 = v0[57];
  swift_errorRetain();
  v0[18] = v1;
  swift_willThrow();

  v2 = *(v0[13] + 8);

  return v2();
}

void MediaMLWorker.checkAndPruneProcessedCellDB()()
{
  *(v0 + 104) = v0;
  v10 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.checkAndPruneProcessedCellDB(), 0, v10, v1, v1);
  *(v0 + 240) = 0;

  object = v9[7]._object;
  v9[15]._object = object;
  if (object)
  {
    v9[8]._countAndFlagsBits = object;
    v9[16] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT COUNT(*) from processedcell", 0x22uLL, 1);

    _swift_task_switch(MediaMLWorker.checkAndPruneProcessedCellDB(), object);
  }

  else
  {
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v12 = SQLError.init(code:desc:)(-3, v2);
    code = v12.code;
    desc_8 = v12.desc.value._countAndFlagsBits;
    v6 = v12.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v3 = code;
    *(v3 + 8) = desc_8;
    *(v3 + 16) = v6;
    swift_willThrow();

    v4 = *(v9[6]._object + 1);

    v4();
  }
}

uint64_t MediaMLWorker.getRawCellDataFromDB()(uint64_t a1)
{
  v2[15] = v1;
  v2[14] = a1;
  v2[4] = v2;
  v2[5] = 0;
  v2[7] = 0;
  v2[13] = 0;
  v2[5] = v1;
  return _swift_task_switch(MediaMLWorker.getRawCellDataFromDB(), 0);
}

void MediaMLWorker.getRawCellDataFromDB()()
{
  *(v0 + 32) = v0;
  v18 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getRawCellDataFromDB(), 0, v18, v1, v1);
  *(v0 + 128) = 0;

  v16 = v17[6];
  v17[17] = v16;
  if (v16)
  {
    v17[7] = v16;
    v17[2] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v17[3] = v2;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("                                              WITH CTE AS (SELECT carrier, app_name, rssi/", 0x5AuLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v3);

    v17[8] = *cell_signal_binsize.unsafeMutableAddressor();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as binned_rssi, rsrp/", 0x16uLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v4);

    v17[9] = *cell_signal_binsize.unsafeMutableAddressor();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as binned_rsrp, rsrq/", 0x16uLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v5);

    v17[10] = *cell_signal_binsize.unsafeMutableAddressor();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as binned_rsrq, rscp/", 0x16uLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v6);

    v17[11] = *cell_signal_binsize.unsafeMutableAddressor();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as binned_rscp, snr/", 0x15uLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v7);

    v17[12] = *cell_snr_binsize.unsafeMutableAddressor();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as binned_snr, bars, throughput_true FROM cell) SELECT carrier, app_name, binned_rssi, binned_rsrp, binned_rsrq, binned_rscp, binned_snr, bars, throughput_true, COUNT(throughput_true) OVER (partition by carrier, carrier, app_name, binned_rssi, binned_rsrp, binned_rscp, binned_rsrq, binned_snr, bars) as rowcount FROM CTE", 0x142uLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v8);

    outlined destroy of DefaultStringInterpolation((v17 + 2));
    v17[18] = String.init(stringInterpolation:)();
    v17[19] = v9;

    _swift_task_switch(MediaMLWorker.getRawCellDataFromDB(), v16);
  }

  else
  {
    v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v20 = SQLError.init(code:desc:)(-3, v10);
    code = v20.code;
    desc_8 = v20.desc.value._countAndFlagsBits;
    object = v20.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v11 = code;
    *(v11 + 8) = desc_8;
    *(v11 + 16) = object;
    swift_willThrow();
    v12 = *(v17[4] + 8);

    v12();
  }
}

uint64_t MediaMLWorker.getRawCellDataFromDB()()
{
  v4 = v0[19];
  v5 = v0[18];
  v1 = v0[16];
  v0[4] = v0;
  type metadata accessor for DataFrame();
  SQLiteDB.withStatement<A>(sql:handler:)(v5, v4, closure #2 in MediaMLWorker.getRawCellDataFromDB());
  v0[20] = v1;
  if (v1)
  {
    v2 = MediaMLWorker.getRawCellDataFromDB();
  }

  else
  {

    v2 = MediaMLWorker.getRawCellDataFromDB();
  }

  return _swift_task_switch(v2, 0);
}

{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

{
  v1 = v0[20];
  v0[4] = v0;

  swift_errorRetain();
  v0[13] = v1;
  swift_willThrow();

  v2 = *(v0[4] + 8);

  return v2();
}

uint64_t MediaMLWorker.getCellDataStandardDeviation()(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = v1;
  return _swift_task_switch(MediaMLWorker.getCellDataStandardDeviation(), 0);
}

void MediaMLWorker.getCellDataStandardDeviation()()
{
  *(v0 + 16) = v0;
  v10 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getCellDataStandardDeviation(), 0, v10, v1, v1);
  *(v0 + 72) = 0;

  v8 = *(v9 + 32);
  *(v9 + 80) = v8;
  if (v8)
  {
    *(v9 + 40) = v8;
    *(v9 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("WITH CTE AS (SELECT app_name, carrier, bars, AVG(throughput_true) AS throughput_mean FROM cell GROUP BY app_name, carrier, bars, session_id)\nSELECT app_name, carrier, bars, AVG(throughput_mean*throughput_mean)-(AVG(throughput_mean)*AVG(throughput_mean)) AS throughput_var\nFROM CTE\nGROUP BY app_name, carrier, bars", 0x139uLL, 1);

    _swift_task_switch(MediaMLWorker.getCellDataStandardDeviation(), v8);
  }

  else
  {
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v12 = SQLError.init(code:desc:)(-3, v2);
    code = v12.code;
    desc_8 = v12.desc.value._countAndFlagsBits;
    object = v12.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v3 = code;
    *(v3 + 8) = desc_8;
    *(v3 + 16) = object;
    swift_willThrow();
    v4 = *(*(v9 + 16) + 8);

    v4();
  }
}

uint64_t MediaMLWorker.getCellDataStandardDeviation()()
{
  v4 = v0[12];
  v5 = v0[11];
  v1 = v0[9];
  v0[2] = v0;
  type metadata accessor for DataFrame();
  SQLiteDB.withStatement<A>(sql:handler:)(v5, v4, closure #2 in MediaMLWorker.getCellDataStandardDeviation());
  v0[13] = v1;
  if (v1)
  {
    v2 = MediaMLWorker.getCellDataStandardDeviation();
  }

  else
  {

    v2 = MediaMLWorker.getCellDataStandardDeviation();
  }

  return _swift_task_switch(v2, 0);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

{
  v1 = v0[13];
  v0[2] = v0;

  swift_errorRetain();
  v0[6] = v1;
  swift_willThrow();

  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 1072) = v2;
  *(v3 + 1064) = a2;
  *(v3 + 1056) = a1;
  *(v3 + 800) = v3;
  *(v3 + 808) = 0;
  *(v3 + 816) = 0;
  *(v3 + 832) = 0;
  *(v3 + 880) = 0;
  *(v3 + 912) = 0;
  *(v3 + 656) = 0;
  *(v3 + 664) = 0;
  *(v3 + 672) = 0;
  *(v3 + 680) = 0;
  *(v3 + 920) = 0;
  *(v3 + 736) = 0;
  *(v3 + 744) = 0;
  *(v3 + 768) = 0;
  *(v3 + 776) = 0;
  *(v3 + 936) = 0;
  *(v3 + 952) = 0;
  *(v3 + 968) = 0;
  *(v3 + 984) = 0;
  *(v3 + 1000) = 0;
  *(v3 + 1016) = 0;
  *(v3 + 1032) = 0;
  *(v3 + 1048) = 0;
  v4 = type metadata accessor for AnyColumn();
  *(v3 + 1080) = v4;
  *(v3 + 1088) = *(v4 - 8);
  *(v3 + 1096) = swift_task_alloc();
  *(v3 + 1104) = swift_task_alloc();
  *(v3 + 1112) = swift_task_alloc();
  *(v3 + 1120) = swift_task_alloc();
  *(v3 + 1128) = swift_task_alloc();
  *(v3 + 1136) = swift_task_alloc();
  *(v3 + 1144) = swift_task_alloc();
  *(v3 + 1152) = swift_task_alloc();
  *(v3 + 1160) = swift_task_alloc();
  *(v3 + 1168) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v3 + 1176) = v5;
  *(v3 + 1184) = *(v5 - 8);
  *(v3 + 1192) = swift_task_alloc();
  *(v3 + 1200) = swift_task_alloc();
  *(v3 + 1208) = swift_task_alloc();
  *(v3 + 1216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData5OrderOSgMd, &_s11TabularData5OrderOSgMR);
  *(v3 + 1224) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData0B13FrameProtocolPAAE7grouped2byQrSSd_tFQOyAA0bC0V_Qo_Md, &_s11TabularData0B13FrameProtocolPAAE7grouped2byQrSSd_tFQOyAA0bC0V_Qo_MR);
  *(v3 + 1232) = v6;
  *(v3 + 1240) = *(v6 - 8);
  *(v3 + 1248) = swift_task_alloc();
  v7 = type metadata accessor for DataFrame();
  *(v3 + 1256) = v7;
  v9 = *(v7 - 8);
  *(v3 + 1264) = v9;
  *(v3 + 1272) = *(v9 + 64);
  *(v3 + 1280) = swift_task_alloc();
  *(v3 + 1288) = swift_task_alloc();
  *(v3 + 1296) = swift_task_alloc();
  *(v3 + 808) = a2;
  *(v3 + 816) = v2;

  return _swift_task_switch(MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:), 0);
}

void MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)()
{
  v168 = v0;
  *(v0 + 800) = v0;
  v157 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:), 0, v157, v1, v1);

  v155 = *(v156 + 824);
  *(v156 + 1304) = v155;
  if (!v155)
  {
    v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v170 = SQLError.init(code:desc:)(-3, v28);
    code = v170.code;
    desc_8 = v170.desc.value._countAndFlagsBits;
    object = v170.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v29 = code;
    *(v29 + 8) = desc_8;
    *(v29 + 16) = object;
    swift_willThrow();
LABEL_53:

    v30 = *(*(v156 + 800) + 8);

    v30();
    return;
  }

  *(v156 + 832) = v155;
  v153 = *kMediaML_appName.unsafeMutableAddressor();

  v154 = DataFrame.containsColumn(_:)(v153);

  if (!v154 || (v151 = *kMediaML_carrier.unsafeMutableAddressor(), , v152 = DataFrame.containsColumn(_:)(v151), , !v152) || (v149 = *kMediaML_binnedRssi.unsafeMutableAddressor(), , v150 = DataFrame.containsColumn(_:)(v149), , !v150) || (v147 = *kMediaML_binnedRsrp.unsafeMutableAddressor(), , v148 = DataFrame.containsColumn(_:)(v147), , !v148) || (v145 = *kMediaML_binnedRsrq.unsafeMutableAddressor(), , v146 = DataFrame.containsColumn(_:)(v145), , !v146) || (v143 = *kMediaML_binnedRscp.unsafeMutableAddressor(), , v144 = DataFrame.containsColumn(_:)(v143), , !v144) || (v141 = *kMediaML_binnedSnr.unsafeMutableAddressor(), , v142 = DataFrame.containsColumn(_:)(v141), , !v142) || (v139 = *kMediaML_bars.unsafeMutableAddressor(), , v140 = DataFrame.containsColumn(_:)(v139), , !v140) || (v137 = *kMediaML_count.unsafeMutableAddressor(), , v138 = DataFrame.containsColumn(_:)(v137), , !v138) || (v135 = *kMediaML_throughputTrue.unsafeMutableAddressor(), , v136 = DataFrame.containsColumn(_:)(v135), , !v136))
  {
    v25 = *(v156 + 1192);
    v43 = *(v156 + 1176);
    v42 = *(v156 + 1184);
    v26 = MediaMLWorker.logger.unsafeMutableAddressor();
    (*(v42 + 16))(v25, v26, v43);
    v45 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v46 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v45, v44))
    {
      v38 = static UnsafeMutablePointer.allocate(capacity:)();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v39 = createStorage<A>(capacity:type:)(0, v37, v37);
      v40 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v156 + 840) = v38;
      *(v156 + 848) = v39;
      *(v156 + 856) = v40;
      serialize(_:at:)(0, (v156 + 840));
      serialize(_:at:)(0, (v156 + 840));
      *(v156 + 864) = v46;
      v41 = swift_task_alloc();
      v41[2] = v156 + 840;
      v41[3] = v156 + 848;
      v41[4] = v156 + 856;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v45, v44, "GetAndSavePreProcessedCellData: DataFrame did not contain all required columns", v38, 2u);
      destroyStorage<A>(_:count:)(v39, 0);
      destroyStorage<A>(_:count:)(v40, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v35 = *(v156 + 1192);
    v36 = *(v156 + 1176);
    v34 = *(v156 + 1184);

    (*(v34 + 8))(v35, v36);
    lazy protocol witness table accessor for type WorkerErrors and conformance WorkerErrors();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();

    goto LABEL_53;
  }

  v129 = *(v156 + 1256);
  v132 = *(v156 + 1248);
  v133 = *(v156 + 1232);
  v130 = *(v156 + 1224);
  v131 = *(v156 + 1240);
  _allocateUninitializedArray<A>(_:)();
  v128 = v2;
  v3 = kMediaML_appName.unsafeMutableAddressor();
  outlined init with copy of String(v3, v128);
  v4 = kMediaML_carrier.unsafeMutableAddressor();
  outlined init with copy of String(v4, v128 + 2);
  v5 = kMediaML_binnedRssi.unsafeMutableAddressor();
  outlined init with copy of String(v5, v128 + 4);
  v6 = kMediaML_binnedRsrp.unsafeMutableAddressor();
  outlined init with copy of String(v6, v128 + 6);
  v7 = kMediaML_binnedRsrq.unsafeMutableAddressor();
  outlined init with copy of String(v7, v128 + 8);
  v8 = kMediaML_binnedRscp.unsafeMutableAddressor();
  outlined init with copy of String(v8, v128 + 10);
  v9 = kMediaML_binnedSnr.unsafeMutableAddressor();
  outlined init with copy of String(v9, v128 + 12);
  v10 = kMediaML_bars.unsafeMutableAddressor();
  outlined init with copy of String(v10, v128 + 14);
  v11 = kMediaML_count.unsafeMutableAddressor();
  outlined init with copy of String(v11, v128 + 16);
  _finalizeUninitializedArray<A>(_:)();
  DataFrameProtocol.grouped(by:)();

  kMediaML_throughputTrue.unsafeMutableAddressor();

  *(v156 + 872) = 0.5;
  v12 = type metadata accessor for Order();
  (*(*(v12 - 8) + 56))(v130, 1);
  *(v156 + 688) = v129;
  *(v156 + 696) = &protocol witness table for DataFrame;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type Double and conformance Double();
  RowGroupingProtocol.quantiles<A>(_:_:quantile:order:)();
  outlined destroy of Order?(v130);

  (*(v131 + 8))(v132, v133);
  v13 = DataFrame.shape.getter();
  v134 = v13;
  *(v156 + 880) = v13;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
_swift_task_switch:
    _swift_task_switch(v13, v14);
    return;
  }

  *(v156 + 896) = v13 - 1;
  *(v156 + 904) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
  min<A>(_:_:)();
  v127 = *(v156 + 888);
  *(v156 + 912) = v127;
  if (v134 > 0)
  {
    v108 = *(v156 + 1296);
    v111 = *(v156 + 1288);
    v112 = *(v156 + 1256);
    v16 = *(v156 + 1216);
    v105 = *(v156 + 1176);
    v107 = *(v156 + 1264);
    v104 = *(v156 + 1184);
    v17 = MediaMLWorker.logger.unsafeMutableAddressor();
    v106 = *(v104 + 16);
    v106(v16, v17, v105);
    v109 = *(v107 + 16);
    v109(v111, v108, v112);
    v110 = *(v107 + 80);
    v114 = swift_allocObject();
    v113 = *(v107 + 32);
    v113(v114 + ((v110 + 16) & ~v110), v111, v112);
    v109(v111, v108, v112);
    v116 = swift_allocObject();
    v113(v116 + ((v110 + 16) & ~v110), v111, v112);
    oslog = Logger.logObject.getter();
    v126 = static os_log_type_t.info.getter();
    v118 = swift_allocObject();
    *(v118 + 16) = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = 8;
    v115 = swift_allocObject();
    *(v115 + 16) = partial apply for implicit closure #10 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
    *(v115 + 24) = v114;
    v120 = swift_allocObject();
    *(v120 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v120 + 24) = v115;
    v121 = swift_allocObject();
    *(v121 + 16) = 0;
    v122 = swift_allocObject();
    *(v122 + 16) = 8;
    v117 = swift_allocObject();
    *(v117 + 16) = partial apply for implicit closure #11 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
    *(v117 + 24) = v116;
    v123 = swift_allocObject();
    *(v123 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v123 + 24) = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v124 = v18;

    *v124 = closure #1 in OSLogArguments.append(_:)partial apply;
    v124[1] = v118;

    v124[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v124[3] = v119;

    v124[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v124[5] = v120;

    v124[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v124[7] = v121;

    v124[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v124[9] = v122;

    v124[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v124[11] = v123;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v126))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v102 = createStorage<A>(capacity:type:)(0, v100, v100);
      v103 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
      v163 = buf;
      v164 = v102;
      v165 = v103;
      serialize(_:at:)(0, &v163);
      serialize(_:at:)(2, &v163);
      v166 = closure #1 in OSLogArguments.append(_:)partial apply;
      v167 = v118;
      closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
      v166 = closure #1 in OSLogArguments.append(_:)partial apply;
      v167 = v119;
      closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
      v166 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v167 = v120;
      closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
      v166 = closure #1 in OSLogArguments.append(_:)partial apply;
      v167 = v121;
      closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
      v166 = closure #1 in OSLogArguments.append(_:)partial apply;
      v167 = v122;
      closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
      v166 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v167 = v123;
      closure #1 in osLogInternal(_:log:type:)(&v166, &v163, &v164, &v165);
      _os_log_impl(&_mh_execute_header, oslog, v126, "Processed cell data, shape =%ld,%ld", buf, 0x16u);
      destroyStorage<A>(_:count:)(v102, 0);
      destroyStorage<A>(_:count:)(v103, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v89 = *(v156 + 1216);
    v19 = *(v156 + 1208);
    v91 = *(v156 + 1176);
    v88 = *(v156 + 1184);

    v90 = *(v88 + 8);
    v90(v89, v91);
    v20 = MediaMLWorker.logger.unsafeMutableAddressor();
    v106(v19, v20, v91);
    v92 = swift_allocObject();
    *(v92 + 16) = v127;
    log = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();
    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = 8;
    v93 = swift_allocObject();
    *(v93 + 16) = partial apply for implicit closure #12 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
    *(v93 + 24) = v92;
    v96 = swift_allocObject();
    *(v96 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v96 + 24) = v93;
    _allocateUninitializedArray<A>(_:)();
    v97 = v21;

    *v97 = closure #1 in OSLogArguments.append(_:)partial apply;
    v97[1] = v94;

    v97[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v97[3] = v95;

    v97[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v97[5] = v96;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v99))
    {
      v85 = static UnsafeMutablePointer.allocate(capacity:)();
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v86 = createStorage<A>(capacity:type:)(0, v84, v84);
      v87 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
      v158 = v85;
      v159 = v86;
      v160 = v87;
      serialize(_:at:)(0, &v158);
      serialize(_:at:)(1, &v158);
      v161 = closure #1 in OSLogArguments.append(_:)partial apply;
      v162 = v94;
      closure #1 in osLogInternal(_:log:type:)(&v161, &v158, &v159, &v160);
      v161 = closure #1 in OSLogArguments.append(_:)partial apply;
      v162 = v95;
      closure #1 in osLogInternal(_:log:type:)(&v161, &v158, &v159, &v160);
      v161 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v162 = v96;
      closure #1 in osLogInternal(_:log:type:)(&v161, &v158, &v159, &v160);
      _os_log_impl(&_mh_execute_header, log, v99, "Writing %ld rows into processedcell table", v85, 0xCu);
      destroyStorage<A>(_:count:)(v86, 0);
      destroyStorage<A>(_:count:)(v87, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v82 = *(v156 + 1208);
    v83 = *(v156 + 1176);

    v90(v82, v83);
    if (v127 < 0)
    {
      goto LABEL_42;
    }

    *(v156 + 704) = 0;
    *(v156 + 712) = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
    *(v156 + 1312) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
    IndexingIterator.next()();
    if ((*(v156 + 792) & 1) == 0)
    {
      v79 = *(v156 + 1168);
      v80 = *(v156 + 1080);
      v78 = *(v156 + 1088);
      *(v156 + 920) = *(v156 + 784);
      kMediaML_carrier.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v81 = *(v78 + 8);
      v81(v79, v80);
      if (!*(v156 + 72)
        || (v76 = *(v156 + 1160), v77 = *(v156 + 1080), outlined init with take of Any(v156 + 48, v156 + 16), swift_dynamicCast(), v74 = *(v156 + 720), v75 = *(v156 + 728), *(v156 + 1320) = v75, *(v156 + 736) = v74, *(v156 + 744) = v75, , kMediaML_appName.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v81(v76, v77), !*(v156 + 136))
        || (v72 = *(v156 + 1152), v73 = *(v156 + 1080), outlined init with take of Any(v156 + 112, v156 + 80), swift_dynamicCast(), v70 = *(v156 + 752), v71 = *(v156 + 760), *(v156 + 1328) = v71, *(v156 + 768) = v70, *(v156 + 776) = v71, , kMediaML_binnedRssi.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v81(v72, v73), !*(v156 + 200))
        || (v68 = *(v156 + 1144), v69 = *(v156 + 1080), outlined init with take of Any(v156 + 176, v156 + 144), swift_dynamicCast(), v67 = *(v156 + 928), *(v156 + 936) = v67, , kMediaML_binnedRsrp.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v81(v68, v69), !*(v156 + 264))
        || (v65 = *(v156 + 1136), v66 = *(v156 + 1080), outlined init with take of Any(v156 + 240, v156 + 208), swift_dynamicCast(), v64 = *(v156 + 944), *(v156 + 952) = v64, , kMediaML_binnedRsrq.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v81(v65, v66), !*(v156 + 328))
        || (v62 = *(v156 + 1128), v63 = *(v156 + 1080), outlined init with take of Any(v156 + 304, v156 + 272), swift_dynamicCast(), v61 = *(v156 + 960), *(v156 + 968) = v61, , kMediaML_binnedRscp.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v81(v62, v63), !*(v156 + 392))
        || (v59 = *(v156 + 1120), v60 = *(v156 + 1080), outlined init with take of Any(v156 + 368, v156 + 336), swift_dynamicCast(), v58 = *(v156 + 976), *(v156 + 984) = v58, , kMediaML_binnedSnr.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v81(v59, v60), !*(v156 + 456))
        || (v56 = *(v156 + 1112), v57 = *(v156 + 1080), outlined init with take of Any(v156 + 432, v156 + 400), swift_dynamicCast(), v55 = *(v156 + 992), *(v156 + 1000) = v55, , kMediaML_bars.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v81(v56, v57), !*(v156 + 520))
        || (v53 = *(v156 + 1104), v54 = *(v156 + 1080), outlined init with take of Any(v156 + 496, v156 + 464), swift_dynamicCast(), v52 = *(v156 + 1008), *(v156 + 1016) = v52, , kMediaML_count.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v81(v53, v54), !*(v156 + 584))
        || (v50 = *(v156 + 1096), v51 = *(v156 + 1080), outlined init with take of Any(v156 + 560, v156 + 528), swift_dynamicCast(), v49 = *(v156 + 1024), *(v156 + 1032) = v49, , kMediaML_medianThroughputTrue.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v81(v50, v51), !*(v156 + 648)))
      {
LABEL_42:
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v48 = *(v156 + 1304);
      outlined init with take of Any(v156 + 624, v156 + 592);
      swift_dynamicCast();
      v47 = *(v156 + 1040);
      *(v156 + 1048) = v47;

      *(v156 + 1336) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO processedcell (carrier, app_name, binned_rssi, binned_rsrp, binned_rsrq, binned_rscp, binned_snr, bars, count, throughput_true) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0xB1uLL, 1);

      v22 = swift_task_alloc();
      v14 = v48;
      *(v156 + 1352) = v22;
      v22[2] = v74;
      v22[3] = v75;
      v22[4] = v70;
      v22[5] = v71;
      v22[6] = v67;
      v22[7] = v64;
      v22[8] = v61;
      v22[9] = v58;
      v22[10] = v55;
      v22[11] = v52;
      v22[12] = v49;
      v22[13] = v47;
      v13 = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);

      goto _swift_task_switch;
    }
  }

  v23 = swift_task_alloc();
  *(v156 + 1368) = v23;
  *v23 = *(v156 + 800);
  v23[1] = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  v24 = *(v156 + 1280);

  MediaMLWorker.getProcessedCellDataFromDB()(v24);
}

uint64_t MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)()
{
  v1 = v0[168];
  v2 = v0[167];
  v3 = v0[164];
  v0[100] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, partial apply for closure #2 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:));
  v0[170] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  }

  else
  {

    v4 = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  }

  return _swift_task_switch(v4, 0);
}

{
  *(v0 + 800) = v0;

  *(v0 + 1312) = *(v0 + 1360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
  IndexingIterator.next()();
  if (*(v0 + 792))
  {
    v3 = swift_task_alloc();
    *(v40 + 1368) = v3;
    *v3 = *(v40 + 800);
    v3[1] = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
    v4 = *(v40 + 1280);

    return MediaMLWorker.getProcessedCellDataFromDB()(v4);
  }

  else
  {
    v37 = *(v40 + 1168);
    v38 = *(v40 + 1080);
    v36 = *(v40 + 1088);
    *(v40 + 920) = *(v0 + 784);
    kMediaML_carrier.unsafeMutableAddressor();

    DataFrame.subscript.getter();
    AnyColumn.subscript.getter();
    v39 = *(v36 + 8);
    v39(v37, v38);
    if (*(v40 + 72)
      && (v34 = *(v40 + 1160), v35 = *(v40 + 1080), outlined init with take of Any(v40 + 48, v40 + 16), swift_dynamicCast(), v32 = *(v40 + 720), v33 = *(v40 + 728), *(v40 + 1320) = v33, *(v40 + 736) = v32, *(v40 + 744) = v33, , kMediaML_appName.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v39(v34, v35), *(v40 + 136))
      && (v30 = *(v40 + 1152), v31 = *(v40 + 1080), outlined init with take of Any(v40 + 112, v40 + 80), swift_dynamicCast(), v28 = *(v40 + 752), v29 = *(v40 + 760), *(v40 + 1328) = v29, *(v40 + 768) = v28, *(v40 + 776) = v29, , kMediaML_binnedRssi.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v39(v30, v31), *(v40 + 200))
      && (v26 = *(v40 + 1144), v27 = *(v40 + 1080), outlined init with take of Any(v40 + 176, v40 + 144), swift_dynamicCast(), v25 = *(v40 + 928), *(v40 + 936) = v25, , kMediaML_binnedRsrp.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v39(v26, v27), *(v40 + 264))
      && (v23 = *(v40 + 1136), v24 = *(v40 + 1080), outlined init with take of Any(v40 + 240, v40 + 208), swift_dynamicCast(), v22 = *(v40 + 944), *(v40 + 952) = v22, , kMediaML_binnedRsrq.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v39(v23, v24), *(v40 + 328))
      && (v20 = *(v40 + 1128), v21 = *(v40 + 1080), outlined init with take of Any(v40 + 304, v40 + 272), swift_dynamicCast(), v19 = *(v40 + 960), *(v40 + 968) = v19, , kMediaML_binnedRscp.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v39(v20, v21), *(v40 + 392))
      && (v17 = *(v40 + 1120), v18 = *(v40 + 1080), outlined init with take of Any(v40 + 368, v40 + 336), swift_dynamicCast(), v16 = *(v40 + 976), *(v40 + 984) = v16, , kMediaML_binnedSnr.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v39(v17, v18), *(v40 + 456))
      && (v14 = *(v40 + 1112), v15 = *(v40 + 1080), outlined init with take of Any(v40 + 432, v40 + 400), swift_dynamicCast(), v13 = *(v40 + 992), *(v40 + 1000) = v13, , kMediaML_bars.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v39(v14, v15), *(v40 + 520))
      && (v11 = *(v40 + 1104), v12 = *(v40 + 1080), outlined init with take of Any(v40 + 496, v40 + 464), swift_dynamicCast(), v10 = *(v40 + 1008), *(v40 + 1016) = v10, , kMediaML_count.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v39(v11, v12), *(v40 + 584))
      && (v8 = *(v40 + 1096), v9 = *(v40 + 1080), outlined init with take of Any(v40 + 560, v40 + 528), swift_dynamicCast(), v7 = *(v40 + 1024), *(v40 + 1032) = v7, , kMediaML_medianThroughputTrue.unsafeMutableAddressor(), , DataFrame.subscript.getter(), AnyColumn.subscript.getter(), v39(v8, v9), *(v40 + 648)))
    {
      v6 = *(v40 + 1304);
      outlined init with take of Any(v40 + 624, v40 + 592);
      swift_dynamicCast();
      v5 = *(v40 + 1040);
      *(v40 + 1048) = v5;

      *(v40 + 1336) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO processedcell (carrier, app_name, binned_rssi, binned_rsrp, binned_rsrq, binned_rscp, binned_snr, bars, count, throughput_true) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0xB1uLL, 1);

      v2 = swift_task_alloc();
      *(v40 + 1352) = v2;
      v2[2] = v32;
      v2[3] = v33;
      v2[4] = v28;
      v2[5] = v29;
      v2[6] = v25;
      v2[7] = v22;
      v2[8] = v19;
      v2[9] = v16;
      v2[10] = v13;
      v2[11] = v10;
      v2[12] = v7;
      v2[13] = v5;

      return _swift_task_switch(MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:), v6);
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }
}

{
  v4 = *v1;
  *(v4 + 800) = *v1;
  *(v4 + 1376) = v0;

  if (v0)
  {
    v2 = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  }

  else
  {
    v2 = MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v48 = v0;
  v27 = v0[161];
  v24 = v0[160];
  v23 = v0[158];
  v28 = v0[157];
  v1 = v0[150];
  v21 = v0[148];
  v22 = v0[147];
  v0[100] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v21 + 16))(v1, v2, v22);
  v25 = *(v23 + 16);
  v25(v27, v24, v28);
  v26 = *(v23 + 80);
  v30 = swift_allocObject();
  v29 = *(v23 + 32);
  v29(v30 + ((v26 + 16) & ~v26), v27, v28);
  v25(v27, v24, v28);
  v32 = swift_allocObject();
  v29(v32 + ((v26 + 16) & ~v26), v27, v28);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #13 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  *(v31 + 24) = v30;
  v36 = swift_allocObject();
  *(v36 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v36 + 24) = v31;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #14 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:);
  *(v33 + 24) = v32;
  v39 = swift_allocObject();
  *(v39 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v39 + 24) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v40 = v3;

  *v40 = closure #1 in OSLogArguments.append(_:)partial apply;
  v40[1] = v34;

  v40[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v40[3] = v35;

  v40[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v40[5] = v36;

  v40[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v40[7] = v37;

  v40[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v40[9] = v38;

  v40[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v40[11] = v39;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v41, v42))
  {
    v4 = v20[172];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0, v16, v16);
    v19 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v43 = buf;
    v44 = v18;
    v45 = v19;
    serialize(_:at:)(0, &v43);
    serialize(_:at:)(2, &v43);
    v46 = closure #1 in OSLogArguments.append(_:)partial apply;
    v47 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    if (v4)
    {
    }

    v46 = closure #1 in OSLogArguments.append(_:)partial apply;
    v47 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    v46 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v47 = v36;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    v46 = closure #1 in OSLogArguments.append(_:)partial apply;
    v47 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    v46 = closure #1 in OSLogArguments.append(_:)partial apply;
    v47 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    v46 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v47 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v46, &v43, &v44, &v45);
    _os_log_impl(&_mh_execute_header, v41, v42, "Returning a dataframe of size=%ld,%ld", buf, 0x16u);
    destroyStorage<A>(_:count:)(v18, 0);
    destroyStorage<A>(_:count:)(v19, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v13 = v20[162];
  v14 = v20[160];
  v11 = v20[157];
  v15 = v20[150];
  v8 = v20[147];
  v9 = v20[132];
  v10 = v20[158];
  v7 = v20[148];

  (*(v7 + 8))(v15, v8);
  v25(v9, v14, v11);
  v12 = *(v10 + 8);
  v12(v14, v11);
  v12(v13, v11);

  v6 = *(v20[100] + 8);

  return v6();
}

{
  v4 = v0[162];
  v3 = v0[158];
  v5 = v0[157];
  v0[100] = v0;

  (*(v3 + 8))(v4, v5);

  v1 = *(v0[100] + 8);

  return v1();
}

{
  v1 = v0[162];
  v2 = v0[158];
  v3 = v0[157];
  v0[100] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[100] + 8);

  return v4();
}

uint64_t MediaMLWorker.cleanRawCellDataFromDB()()
{
  v1[6] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[5] = 0;
  v1[3] = v0;
  return _swift_task_switch(MediaMLWorker.cleanRawCellDataFromDB(), 0);
}

{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[7];
  v0[2] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #2 in MediaMLWorker.cleanRawCellDataFromDB());
  v0[11] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.cleanRawCellDataFromDB();
  }

  else
  {

    v4 = MediaMLWorker.cleanRawCellDataFromDB();
  }

  return _swift_task_switch(v4, 0);
}

{
  countAndFlagsBits = v0[4]._countAndFlagsBits;
  v0[1]._countAndFlagsBits = v0;
  v0[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);

  return _swift_task_switch(MediaMLWorker.cleanRawCellDataFromDB(), countAndFlagsBits);
}

{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[11];
  v0[2] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #3 in MediaMLWorker.cleanRawCellDataFromDB());
  v0[14] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.cleanRawCellDataFromDB();
  }

  else
  {

    v4 = MediaMLWorker.cleanRawCellDataFromDB();
  }

  return _swift_task_switch(v4, 0);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

void MediaMLWorker.cleanRawCellDataFromDB()()
{
  *(v0 + 16) = v0;
  v10 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.cleanRawCellDataFromDB(), 0, v10, v1, v1);
  *(v0 + 56) = 0;

  v8 = *(v9 + 32);
  *(v9 + 64) = v8;
  if (v8)
  {
    *(v9 + 40) = v8;
    *(v9 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM cell", 0x10uLL, 1);

    _swift_task_switch(MediaMLWorker.cleanRawCellDataFromDB(), v8);
  }

  else
  {
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v12 = SQLError.init(code:desc:)(-3, v2);
    code = v12.code;
    desc_8 = v12.desc.value._countAndFlagsBits;
    object = v12.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v3 = code;
    *(v3 + 8) = desc_8;
    *(v3 + 16) = object;
    swift_willThrow();
    v4 = *(*(v9 + 16) + 8);

    v4();
  }
}

uint64_t MediaMLWorker.checkAndPruneProcessedWifiDB()()
{
  v1[25] = v0;
  v1[13] = v1;
  v1[14] = 0;
  v1[16] = 0;
  v1[18] = 0;
  v1[19] = 0;
  v1[20] = 0;
  v1[21] = 0;
  v2 = type metadata accessor for Logger();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[14] = v0;

  return _swift_task_switch(MediaMLWorker.checkAndPruneProcessedWifiDB(), 0);
}

{
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[30];
  v0[13] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #2 in MediaMLWorker.checkAndPruneProcessedWifiDB());
  v0[34] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  else
  {

    v4 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  return _swift_task_switch(v4, 0);
}

{
  v71 = v0;
  v0[13] = v0;
  v65 = v0[17];
  v0[19] = v65;
  if (v65 >= *MAX_ALLOWED_PROCESSED_DATASIZE.unsafeMutableAddressor())
  {
    v1 = MAX_ALLOWED_PROCESSED_DATASIZE.unsafeMutableAddressor();
    v63 = v65 - *v1;
    if (__OFSUB__(v65, *v1))
    {
      __break(1u);
    }

    else
    {
      v1 = MAX_ALLOWED_PROCESSED_DATASIZE_PRUNE.unsafeMutableAddressor();
      v62 = v63 + *v1;
      v4 = __OFADD__(v63, *v1);
      *(v64 + 280) = v63 + *v1;
      if (!v4)
      {
        v5 = *(v64 + 232);
        v53 = *(v64 + 208);
        v52 = *(v64 + 216);
        *(v64 + 160) = v62;
        v51 = swift_allocObject();
        *(v64 + 288) = v51;
        *(v64 + 168) = v51 + 16;
        *(v51 + 16) = *DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor();
        v6 = MediaMLWorker.logger.unsafeMutableAddressor();
        v7 = *(v52 + 16);
        *(v64 + 296) = v7;
        *(v64 + 304) = (v52 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v7(v5, v6, v53);
        v54 = swift_allocObject();
        *(v54 + 16) = v62;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.info.getter();
        v56 = swift_allocObject();
        *(v56 + 16) = 0;
        v57 = swift_allocObject();
        *(v57 + 16) = 8;
        v55 = swift_allocObject();
        *(v55 + 16) = partial apply for implicit closure #1 in MediaMLWorker.checkAndPruneProcessedWifiDB();
        *(v55 + 24) = v54;
        v58 = swift_allocObject();
        *(v58 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
        *(v58 + 24) = v55;
        *(v64 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        _allocateUninitializedArray<A>(_:)();
        v59 = v8;

        *v59 = closure #1 in OSLogArguments.append(_:)partial apply;
        v59[1] = v56;

        v59[2] = closure #1 in OSLogArguments.append(_:)partial apply;
        v59[3] = v57;

        v59[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v59[5] = v58;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v60, v61))
        {
          v9 = *(v64 + 272);
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v49 = createStorage<A>(capacity:type:)(0, v47, v47);
          v50 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
          v66 = buf;
          v67 = v49;
          v68 = v50;
          serialize(_:at:)(0, &v66);
          serialize(_:at:)(1, &v66);
          v69 = closure #1 in OSLogArguments.append(_:)partial apply;
          v70 = v56;
          closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
          if (v9)
          {
            goto LABEL_14;
          }

          v69 = closure #1 in OSLogArguments.append(_:)partial apply;
          v70 = v57;
          closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
          v69 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          v70 = v58;
          closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
          _os_log_impl(&_mh_execute_header, v60, v61, "processedWiFi raw data too large, deleting %ld rows", buf, 0xCu);
          destroyStorage<A>(_:count:)(v49, 0);
          destroyStorage<A>(_:count:)(v50, 0);
          UnsafeMutablePointer.deallocate()();

          v46 = 0;
        }

        else
        {

          v46 = *(v64 + 272);
        }

        *(v64 + 320) = v46;
        v44 = *(v64 + 232);
        v45 = *(v64 + 208);
        v43 = *(v64 + 216);

        v11 = *(v43 + 8);
        *(v64 + 328) = v11;
        *(v64 + 336) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v11(v44, v45);
        if (v62 < *DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor())
        {
          v42 = *(v64 + 248);
          *(v64 + 344) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM processedwifi LIMIT ?", 0x21uLL, 1);
          v12 = swift_task_alloc();
          v2 = v42;
          *(v64 + 360) = v12;
          *(v12 + 16) = v62;
          v1 = MediaMLWorker.checkAndPruneProcessedWifiDB();

          return _swift_task_switch(v1, v2);
        }

        v39 = *(v64 + 288);
        v40 = *(v64 + 280);
        swift_beginAccess();
        v41 = *(v39 + 16);
        swift_endAccess();
        if (v41 >= v40)
        {
          *(v64 + 408) = v46;
          v19 = *(v64 + 248);
          v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
          v2 = v19;
          *(v64 + 416) = v17;
          v1 = MediaMLWorker.checkAndPruneProcessedWifiDB();

          return _swift_task_switch(v1, v2);
        }

        v30 = *(v64 + 296);
        v31 = *(v64 + 288);
        v13 = *(v64 + 224);
        v29 = *(v64 + 208);
        v14 = MediaMLWorker.logger.unsafeMutableAddressor();
        v30(v13, v14, v29);

        oslog = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();
        v33 = swift_allocObject();
        *(v33 + 16) = 0;
        v34 = swift_allocObject();
        *(v34 + 16) = 8;
        v32 = swift_allocObject();
        *(v32 + 16) = partial apply for implicit closure #2 in MediaMLWorker.checkAndPruneProcessedWifiDB();
        *(v32 + 24) = v31;
        v35 = swift_allocObject();
        *(v35 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
        *(v35 + 24) = v32;
        _allocateUninitializedArray<A>(_:)();
        v36 = v15;

        *v36 = closure #1 in OSLogArguments.append(_:)partial apply;
        v36[1] = v33;

        v36[2] = closure #1 in OSLogArguments.append(_:)partial apply;
        v36[3] = v34;

        v36[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v36[5] = v35;
        _finalizeUninitializedArray<A>(_:)();

        if (!os_log_type_enabled(oslog, v38))
        {

          v24 = v46;
LABEL_26:
          *(v64 + 376) = v24;
          v22 = *(v64 + 328);
          v23 = *(v64 + 248);
          v20 = *(v64 + 224);
          v21 = *(v64 + 208);

          v22(v20, v21);
          v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM processedwifi LIMIT ?", 0x21uLL, 1);
          v2 = v23;
          *(v64 + 384) = v16;
          v1 = MediaMLWorker.checkAndPruneProcessedWifiDB();

          return _swift_task_switch(v1, v2);
        }

        v26 = static UnsafeMutablePointer.allocate(capacity:)();
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v27 = createStorage<A>(capacity:type:)(0, v25, v25);
        v28 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v64 + 176) = v26;
        *(v64 + 184) = v27;
        *(v64 + 192) = v28;
        serialize(_:at:)(0, (v64 + 176));
        serialize(_:at:)(1, (v64 + 176));
        *(v64 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v64 + 96) = v33;
        closure #1 in osLogInternal(_:log:type:)((v64 + 88), v64 + 176, v64 + 184, v64 + 192);
        if (!v46)
        {
          *(v64 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
          *(v64 + 96) = v34;
          closure #1 in osLogInternal(_:log:type:)((v64 + 88), v64 + 176, v64 + 184, v64 + 192);
          *(v64 + 88) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          *(v64 + 96) = v35;
          closure #1 in osLogInternal(_:log:type:)((v64 + 88), v64 + 176, v64 + 184, v64 + 192);
          _os_log_impl(&_mh_execute_header, oslog, v38, "Deleting %ldth rows", v26, 0xCu);
          destroyStorage<A>(_:count:)(v27, 0);
          destroyStorage<A>(_:count:)(v28, 0);
          UnsafeMutablePointer.deallocate()();

          v24 = 0;
          goto LABEL_26;
        }

LABEL_14:
      }
    }

    __break(1u);
    return _swift_task_switch(v1, v2);
  }

  v18 = *(*(v64 + 104) + 8);

  return v18();
}

{
  v1 = v0[44];
  v2 = v0[43];
  v3 = v0[40];
  v0[13] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, partial apply for closure #3 in MediaMLWorker.checkAndPruneProcessedWifiDB());
  v0[46] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  else
  {

    v4 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  return _swift_task_switch(v4, 0);
}

{
  v0[6]._object = v0;
  v0[25]._object = v0[23]._countAndFlagsBits;
  object = v0[15]._object;
  v0[26] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);

  return _swift_task_switch(MediaMLWorker.checkAndPruneProcessedWifiDB(), object);
}

{
  v1 = v0[49];
  v2 = v0[48];
  v3 = v0[47];
  v0[13] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #4 in MediaMLWorker.checkAndPruneProcessedWifiDB());
  v0[50] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  else
  {

    v4 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  return _swift_task_switch(v4, 0);
}

{
  v36 = *(v0 + 288);
  *(v0 + 104) = v0;
  swift_beginAccess();
  v37 = *(v36 + 16);
  swift_endAccess();
  v1 = DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor();
  v38 = v37 + *v1;
  if (__OFADD__(v37, *v1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v35 + 288);
    swift_beginAccess();
    *(v11 + 16) = v38;
    swift_endAccess();
    v20 = *(v35 + 400);
    v12 = *(v35 + 288);
    v13 = *(v35 + 280);
    swift_beginAccess();
    v14 = *(v12 + 16);
    swift_endAccess();
    if (v14 < v13)
    {
      v26 = *(v35 + 296);
      v27 = *(v35 + 288);
      v4 = *(v35 + 224);
      v25 = *(v35 + 208);
      v5 = MediaMLWorker.logger.unsafeMutableAddressor();
      v26(v4, v5, v25);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      v30 = swift_allocObject();
      *(v30 + 16) = 8;
      v28 = swift_allocObject();
      *(v28 + 16) = partial apply for implicit closure #2 in MediaMLWorker.checkAndPruneProcessedWifiDB();
      *(v28 + 24) = v27;
      v31 = swift_allocObject();
      *(v31 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v31 + 24) = v28;
      _allocateUninitializedArray<A>(_:)();
      v32 = v6;

      *v32 = closure #1 in OSLogArguments.append(_:)partial apply;
      v32[1] = v29;

      v32[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v32[3] = v30;

      v32[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v32[5] = v31;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v33, v34))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v23 = createStorage<A>(capacity:type:)(0, v21, v21);
        v24 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v35 + 176) = buf;
        *(v35 + 184) = v23;
        *(v35 + 192) = v24;
        serialize(_:at:)(0, (v35 + 176));
        serialize(_:at:)(1, (v35 + 176));
        *(v35 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v35 + 96) = v29;
        closure #1 in osLogInternal(_:log:type:)((v35 + 88), v35 + 176, v35 + 184, v35 + 192);
        if (v20)
        {
        }

        *(v35 + 88) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v35 + 96) = v30;
        closure #1 in osLogInternal(_:log:type:)((v35 + 88), v35 + 176, v35 + 184, v35 + 192);
        *(v35 + 88) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v35 + 96) = v31;
        closure #1 in osLogInternal(_:log:type:)((v35 + 88), v35 + 176, v35 + 184, v35 + 192);
        _os_log_impl(&_mh_execute_header, v33, v34, "Deleting %ldth rows", buf, 0xCu);
        destroyStorage<A>(_:count:)(v23, 0);
        destroyStorage<A>(_:count:)(v24, 0);
        UnsafeMutablePointer.deallocate()();

        v19 = 0;
      }

      else
      {

        v19 = v20;
      }

      *(v35 + 376) = v19;
      v17 = *(v35 + 328);
      v18 = *(v35 + 248);
      v15 = *(v35 + 224);
      v16 = *(v35 + 208);

      v17(v15, v16);
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM processedwifi LIMIT ?", 0x21uLL, 1);
      v2 = v18;
      *(v35 + 384) = v8;
      v1 = MediaMLWorker.checkAndPruneProcessedWifiDB();
    }

    else
    {
      *(v35 + 408) = v20;
      v10 = *(v35 + 248);
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);
      v2 = v10;
      *(v35 + 416) = v9;
      v1 = MediaMLWorker.checkAndPruneProcessedWifiDB();
    }
  }

  return _swift_task_switch(v1, v2);
}

{
  v1 = *(v0 + 416);
  *(v0 + 104) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 432) = v2;
  if (v2)
  {
    v3 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  else
  {

    v3 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  return _swift_task_switch(v3, 0);
}

{
  v2 = *(v0 + 248);
  *(v0 + 104) = v0;
  *(v0 + 440) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pragma wal_checkpoint(truncate)", 0x1FuLL, 1);

  return _swift_task_switch(MediaMLWorker.checkAndPruneProcessedWifiDB(), v2);
}

{
  v1 = *(v0 + 440);
  *(v0 + 104) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 456) = v2;
  if (v2)
  {
    v3 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  else
  {

    v3 = MediaMLWorker.checkAndPruneProcessedWifiDB();
  }

  return _swift_task_switch(v3, 0);
}

{
  *(v0 + 104) = v0;

  v1 = *(*(v0 + 104) + 8);

  return v1();
}

{
  v0[13] = v0;

  v1 = v0[34];
  swift_errorRetain();
  v0[18] = v1;
  swift_willThrow();

  v2 = *(v0[13] + 8);

  return v2();
}

{
  v0[13] = v0;

  v1 = v0[46];
  swift_errorRetain();
  v0[18] = v1;
  swift_willThrow();

  v2 = *(v0[13] + 8);

  return v2();
}

{
  v0[13] = v0;

  v1 = v0[50];
  swift_errorRetain();
  v0[18] = v1;
  swift_willThrow();

  v2 = *(v0[13] + 8);

  return v2();
}

{
  v0[13] = v0;

  v1 = v0[54];
  swift_errorRetain();
  v0[18] = v1;
  swift_willThrow();

  v2 = *(v0[13] + 8);

  return v2();
}

{
  v0[13] = v0;

  v1 = v0[57];
  swift_errorRetain();
  v0[18] = v1;
  swift_willThrow();

  v2 = *(v0[13] + 8);

  return v2();
}

void MediaMLWorker.checkAndPruneProcessedWifiDB()()
{
  *(v0 + 104) = v0;
  v10 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.checkAndPruneProcessedWifiDB(), 0, v10, v1, v1);
  *(v0 + 240) = 0;

  object = v9[7]._object;
  v9[15]._object = object;
  if (object)
  {
    v9[8]._countAndFlagsBits = object;
    v9[16] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT COUNT(*) from processedwifi", 0x22uLL, 1);

    _swift_task_switch(MediaMLWorker.checkAndPruneProcessedWifiDB(), object);
  }

  else
  {
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v12 = SQLError.init(code:desc:)(-3, v2);
    code = v12.code;
    desc_8 = v12.desc.value._countAndFlagsBits;
    v6 = v12.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v3 = code;
    *(v3 + 8) = desc_8;
    *(v3 + 16) = v6;
    swift_willThrow();

    v4 = *(v9[6]._object + 1);

    v4();
  }
}

uint64_t MediaMLWorker.getRawWiFiDataFromDB()(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = v1;
  return _swift_task_switch(MediaMLWorker.getRawWiFiDataFromDB(), 0);
}

void MediaMLWorker.getRawWiFiDataFromDB()()
{
  *(v0 + 16) = v0;
  v10 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getRawWiFiDataFromDB(), 0, v10, v1, v1);
  *(v0 + 72) = 0;

  v8 = *(v9 + 32);
  *(v9 + 80) = v8;
  if (v8)
  {
    *(v9 + 40) = v8;
    *(v9 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SELECT session_id, timestamp, app_name, ssid, hour, dow, rssi, cca, noise, snr, tx_rate, rx_rate, throughput_true FROM wifi", 0x7BuLL, 1);

    _swift_task_switch(MediaMLWorker.getRawWiFiDataFromDB(), v8);
  }

  else
  {
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v12 = SQLError.init(code:desc:)(-3, v2);
    code = v12.code;
    desc_8 = v12.desc.value._countAndFlagsBits;
    object = v12.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v3 = code;
    *(v3 + 8) = desc_8;
    *(v3 + 16) = object;
    swift_willThrow();
    v4 = *(*(v9 + 16) + 8);

    v4();
  }
}

uint64_t MediaMLWorker.getRawWiFiDataFromDB()()
{
  v4 = v0[12];
  v5 = v0[11];
  v1 = v0[9];
  v0[2] = v0;
  type metadata accessor for DataFrame();
  SQLiteDB.withStatement<A>(sql:handler:)(v5, v4, closure #2 in MediaMLWorker.getRawWiFiDataFromDB());
  v0[13] = v1;
  if (v1)
  {
    v2 = MediaMLWorker.getRawWiFiDataFromDB();
  }

  else
  {

    v2 = MediaMLWorker.getRawWiFiDataFromDB();
  }

  return _swift_task_switch(v2, 0);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

{
  v1 = v0[13];
  v0[2] = v0;

  swift_errorRetain();
  v0[6] = v1;
  swift_willThrow();

  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 1936) = v2;
  *(v3 + 1928) = a2;
  *(v3 + 1920) = a1;
  *(v3 + 1360) = v3;
  *(v3 + 1368) = 0;
  *(v3 + 1376) = 0;
  *(v3 + 1392) = 0;
  *(v3 + 1432) = 0;
  *(v3 + 1440) = 0;
  *(v3 + 1448) = 0;
  *(v3 + 1456) = 0;
  *(v3 + 1464) = 0;
  *(v3 + 1472) = 0;
  *(v3 + 1480) = 0;
  *(v3 + 1488) = 0;
  *(v3 + 1496) = 0;
  *(v3 + 1504) = 0;
  *(v3 + 1512) = 0;
  *(v3 + 1520) = 0;
  *(v3 + 1528) = 0;
  *(v3 + 1536) = 0;
  *(v3 + 1568) = 0;
  *(v3 + 1072) = 0;
  *(v3 + 1080) = 0;
  *(v3 + 1088) = 0;
  *(v3 + 1096) = 0;
  *(v3 + 1576) = 0;
  *(v3 + 1600) = 0;
  *(v3 + 1624) = 0;
  *(v3 + 1648) = 0;
  *(v3 + 1672) = 0;
  *(v3 + 1696) = 0;
  *(v3 + 1720) = 0;
  *(v3 + 1744) = 0;
  *(v3 + 1136) = 0;
  *(v3 + 1144) = 0;
  *(v3 + 1168) = 0;
  *(v3 + 1176) = 0;
  *(v3 + 1200) = 0;
  *(v3 + 1208) = 0;
  v4 = type metadata accessor for Logger();
  *(v3 + 1944) = v4;
  *(v3 + 1952) = *(v4 - 8);
  *(v3 + 1960) = swift_task_alloc();
  *(v3 + 1968) = swift_task_alloc();
  *(v3 + 1976) = swift_task_alloc();
  *(v3 + 1984) = swift_task_alloc();
  v5 = type metadata accessor for DataFrame();
  *(v3 + 1992) = v5;
  v10 = *(v5 - 8);
  *(v3 + 2000) = v10;
  *(v3 + 2008) = *(v10 + 64);
  *(v3 + 2016) = swift_task_alloc();
  *(v3 + 2024) = swift_task_alloc();
  *(v3 + 2032) = swift_task_alloc();
  v6 = type metadata accessor for DataFrame.Slice();
  *(v3 + 2040) = v6;
  *(v3 + 2048) = *(v6 - 8);
  *(v3 + 2056) = swift_task_alloc();
  *(v3 + 2064) = swift_task_alloc();
  *(v3 + 2072) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy11TabularData14AnyColumnSliceVGMd, &_ss16IndexingIteratorVy11TabularData14AnyColumnSliceVGMR);
  *(v3 + 2080) = swift_task_alloc();
  *(v3 + 2088) = swift_task_alloc();
  v7 = type metadata accessor for AnyColumn();
  *(v3 + 2096) = v7;
  *(v3 + 2104) = *(v7 - 8);
  *(v3 + 2112) = swift_task_alloc();
  *(v3 + 2120) = swift_task_alloc();
  *(v3 + 2128) = swift_task_alloc();
  *(v3 + 2136) = swift_task_alloc();
  *(v3 + 2144) = swift_task_alloc();
  *(v3 + 2152) = swift_task_alloc();
  *(v3 + 2160) = swift_task_alloc();
  *(v3 + 2168) = swift_task_alloc();
  *(v3 + 2176) = swift_task_alloc();
  *(v3 + 2184) = swift_task_alloc();
  *(v3 + 2192) = swift_task_alloc();
  v8 = type metadata accessor for AnyColumnSlice();
  *(v3 + 2200) = v8;
  *(v3 + 2208) = *(v8 - 8);
  *(v3 + 2216) = swift_task_alloc();
  *(v3 + 2224) = swift_task_alloc();
  *(v3 + 2232) = swift_task_alloc();
  *(v3 + 1368) = a2;
  *(v3 + 1376) = v2;

  return _swift_task_switch(MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:), 0);
}

void MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)()
{
  *(v0 + 1360) = v0;
  v190 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:), 0, v190, v1, v1);

  v188 = *(v189 + 1384);
  *(v189 + 2240) = v188;
  if (!v188)
  {
    v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v192 = SQLError.init(code:desc:)(-3, v24);
    code = v192.code;
    desc_8 = v192.desc.value._countAndFlagsBits;
    object = v192.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v25 = code;
    *(v25 + 8) = desc_8;
    *(v25 + 16) = object;
    swift_willThrow();
LABEL_70:

    v26 = *(*(v189 + 1360) + 8);

    v26();
    return;
  }

  *(v189 + 1392) = v188;
  v186 = *kMediaML_rssi.unsafeMutableAddressor();

  v187 = DataFrame.containsColumn(_:)(v186);

  if (!v187 || (v184 = *kMediaML_throughputTrue.unsafeMutableAddressor(), , v185 = DataFrame.containsColumn(_:)(v184), , !v185) || (v182 = *kMediaML_noise.unsafeMutableAddressor(), , v183 = DataFrame.containsColumn(_:)(v182), , !v183) || (v180 = *kMediaML_txRate.unsafeMutableAddressor(), , v181 = DataFrame.containsColumn(_:)(v180), , !v181) || (v178 = *kMediaML_rxRate.unsafeMutableAddressor(), , v179 = DataFrame.containsColumn(_:)(v178), , !v179) || (v176 = *kMediaML_dayOfWeek.unsafeMutableAddressor(), , v177 = DataFrame.containsColumn(_:)(v176), , !v177) || (v174 = *kMediaML_hourOfDay.unsafeMutableAddressor(), , v175 = DataFrame.containsColumn(_:)(v174), , !v175) || (v172 = *kMediaML_ssid.unsafeMutableAddressor(), , v173 = DataFrame.containsColumn(_:)(v172), , !v173))
  {
    v21 = *(v189 + 1960);
    v39 = *(v189 + 1944);
    v38 = *(v189 + 1952);
    v22 = MediaMLWorker.logger.unsafeMutableAddressor();
    (*(v38 + 16))(v21, v22, v39);
    v41 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v42 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v41, v40))
    {
      v34 = static UnsafeMutablePointer.allocate(capacity:)();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v35 = createStorage<A>(capacity:type:)(0, v33, v33);
      v36 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v189 + 1400) = v34;
      *(v189 + 1408) = v35;
      *(v189 + 1416) = v36;
      serialize(_:at:)(0, (v189 + 1400));
      serialize(_:at:)(0, (v189 + 1400));
      *(v189 + 1424) = v42;
      v37 = swift_task_alloc();
      v37[2] = v189 + 1400;
      v37[3] = v189 + 1408;
      v37[4] = v189 + 1416;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v41, v40, "getAndSavePreProcessedWifiData: DataFrame did not contain all required columns", v34, 2u);
      destroyStorage<A>(_:count:)(v35, 0);
      destroyStorage<A>(_:count:)(v36, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v31 = *(v189 + 1960);
    v32 = *(v189 + 1944);
    v30 = *(v189 + 1952);

    (*(v30 + 8))(v31, v32);
    lazy protocol witness table accessor for type WorkerErrors and conformance WorkerErrors();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

    goto LABEL_70;
  }

  v170 = *(v189 + 2232);
  v165 = *(v189 + 2224);
  v171 = *(v189 + 2200);
  v167 = *(v189 + 2192);
  v168 = *(v189 + 2096);
  v169 = *(v189 + 2208);
  v166 = *(v189 + 2104);
  kMediaML_sessionID.unsafeMutableAddressor();

  DataFrame.subscript.getter();
  AnyColumn.distinct()();
  v2 = *(v166 + 8);
  *(v189 + 2248) = v2;
  *(v189 + 2256) = (v166 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v167, v168);

  v3 = *(v169 + 16);
  *(v189 + 2264) = v3;
  *(v189 + 2272) = (v169 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v165, v170, v171);
  *(v189 + 2280) = lazy protocol witness table accessor for type AnyColumnSlice and conformance AnyColumnSlice();
  Collection<>.makeIterator()();
LABEL_13:
  IndexingIterator.next()();
  if (*(v189 + 40) == 1)
  {
    outlined destroy of IndexingIterator<AnyColumnSlice>(*(v189 + 2088));
    v19 = swift_task_alloc();
    *(v189 + 2384) = v19;
    *v19 = *(v189 + 1360);
    v19[1] = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
    v20 = *(v189 + 2016);

    MediaMLWorker.getProcessedWiFiDataFromDB()(v20);
  }

  else
  {
    *(v189 + 48) = *(v189 + 16);
    *(v189 + 64) = *(v189 + 32);
    kMediaML_sessionID.unsafeMutableAddressor();

    *(swift_task_alloc() + 16) = v189 + 48;
    DataFrame.filter<A>(on:_:_:)();
    v163 = *(v189 + 2264);
    v160 = *(v189 + 2224);
    v162 = *(v189 + 2216);
    v164 = *(v189 + 2200);
    v161 = *(v189 + 2208);

    kMediaML_ssid.unsafeMutableAddressor();

    DataFrame.Slice.subscript.getter();
    AnyColumnSlice.distinct()();
    v4 = *(v161 + 8);
    *(v189 + 2288) = v4;
    *(v189 + 2296) = (v161 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v4(v160, v164);

    v163(v160, v162, v164);
    Collection<>.makeIterator()();
    while (1)
    {
      IndexingIterator.next()();
      if (*(v189 + 104) == 1)
      {
        v44 = *(v189 + 2288);
        v45 = *(v189 + 2216);
        v43 = *(v189 + 2200);
        v47 = *(v189 + 2064);
        v48 = *(v189 + 2040);
        v46 = *(v189 + 2048);
        outlined destroy of IndexingIterator<AnyColumnSlice>(*(v189 + 2080));
        v44(v45, v43);
        (*(v46 + 8))(v47, v48);
        outlined destroy of Any?((v189 + 48));
        goto LABEL_13;
      }

      *(v189 + 112) = *(v189 + 80);
      *(v189 + 128) = *(v189 + 96);
      kMediaML_ssid.unsafeMutableAddressor();

      *(swift_task_alloc() + 16) = v189 + 112;
      DataFrame.Slice.filter<A>(on:_:_:)();
      v141 = *(v189 + 2032);
      v144 = *(v189 + 2024);
      v145 = *(v189 + 1992);
      v135 = *(v189 + 1984);
      v138 = *(v189 + 1944);
      v140 = *(v189 + 2000);
      v137 = *(v189 + 1952);

      DataFrame.init(_:)();
      *(v189 + 1432) = _allocateUninitializedArray<A>(_:)();
      *(v189 + 1440) = _allocateUninitializedArray<A>(_:)();
      *(v189 + 1448) = _allocateUninitializedArray<A>(_:)();
      *(v189 + 1456) = _allocateUninitializedArray<A>(_:)();
      *(v189 + 1464) = _allocateUninitializedArray<A>(_:)();
      *(v189 + 1472) = _allocateUninitializedArray<A>(_:)();
      *(v189 + 1480) = _allocateUninitializedArray<A>(_:)();
      *(v189 + 1488) = _allocateUninitializedArray<A>(_:)();
      *(v189 + 1496) = _allocateUninitializedArray<A>(_:)();
      *(v189 + 1504) = _allocateUninitializedArray<A>(_:)();
      *(v189 + 1512) = 0;
      v136 = DataFrame.shape.getter();
      *(v189 + 1520) = v136;
      v5 = MediaMLWorker.logger.unsafeMutableAddressor();
      v139 = *(v137 + 16);
      v139(v135, v5, v138);
      v142 = *(v140 + 16);
      v142(v144, v141, v145);
      v143 = *(v140 + 80);
      v147 = swift_allocObject();
      v146 = *(v140 + 32);
      v146(v147 + ((v143 + 16) & ~v143), v144, v145);
      v142(v144, v141, v145);
      v149 = swift_allocObject();
      v146(v149 + ((v143 + 16) & ~v143), v144, v145);
      oslog = Logger.logObject.getter();
      v159 = static os_log_type_t.debug.getter();
      v151 = swift_allocObject();
      *(v151 + 16) = 0;
      v152 = swift_allocObject();
      *(v152 + 16) = 8;
      v148 = swift_allocObject();
      *(v148 + 16) = partial apply for implicit closure #8 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v148 + 24) = v147;
      v153 = swift_allocObject();
      *(v153 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v153 + 24) = v148;
      v154 = swift_allocObject();
      *(v154 + 16) = 0;
      v155 = swift_allocObject();
      *(v155 + 16) = 8;
      v150 = swift_allocObject();
      *(v150 + 16) = partial apply for implicit closure #9 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v150 + 24) = v149;
      v156 = swift_allocObject();
      *(v156 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v156 + 24) = v150;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v157 = v6;

      *v157 = closure #1 in OSLogArguments.append(_:)partial apply;
      v157[1] = v151;

      v157[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v157[3] = v152;

      v157[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v157[5] = v153;

      v157[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v157[7] = v154;

      v157[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v157[9] = v155;

      v157[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v157[11] = v156;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v159))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v133 = createStorage<A>(capacity:type:)(0, v131, v131);
        v134 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v189 + 1896) = buf;
        *(v189 + 1904) = v133;
        *(v189 + 1912) = v134;
        serialize(_:at:)(0, (v189 + 1896));
        serialize(_:at:)(2, (v189 + 1896));
        *(v189 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v189 + 1336) = v151;
        closure #1 in osLogInternal(_:log:type:)((v189 + 1328), v189 + 1896, v189 + 1904, v189 + 1912);
        *(v189 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v189 + 1336) = v152;
        closure #1 in osLogInternal(_:log:type:)((v189 + 1328), v189 + 1896, v189 + 1904, v189 + 1912);
        *(v189 + 1328) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v189 + 1336) = v153;
        closure #1 in osLogInternal(_:log:type:)((v189 + 1328), v189 + 1896, v189 + 1904, v189 + 1912);
        *(v189 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v189 + 1336) = v154;
        closure #1 in osLogInternal(_:log:type:)((v189 + 1328), v189 + 1896, v189 + 1904, v189 + 1912);
        *(v189 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v189 + 1336) = v155;
        closure #1 in osLogInternal(_:log:type:)((v189 + 1328), v189 + 1896, v189 + 1904, v189 + 1912);
        *(v189 + 1328) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v189 + 1336) = v156;
        closure #1 in osLogInternal(_:log:type:)((v189 + 1328), v189 + 1896, v189 + 1904, v189 + 1912);
        _os_log_impl(&_mh_execute_header, oslog, v159, "Filtered dataframe shape=%ld,%ld", buf, 0x16u);
        destroyStorage<A>(_:count:)(v133, 0);
        destroyStorage<A>(_:count:)(v134, 0);
        UnsafeMutablePointer.deallocate()();
      }

      v127 = *(v189 + 1984);
      v128 = *(v189 + 1944);
      v126 = *(v189 + 1952);

      v129 = *(v126 + 8);
      v129(v127, v128);
      for (i = 0; i < v136; ++i)
      {
        v125 = *(v189 + 2248);
        v123 = *(v189 + 2184);
        v124 = *(v189 + 2096);
        kMediaML_rssi.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v125(v123, v124);
        if (!*(v189 + 488))
        {
          goto LABEL_54;
        }

        v122 = *(v189 + 2248);
        v120 = *(v189 + 2176);
        v121 = *(v189 + 2096);
        outlined init with take of Any(v189 + 464, v189 + 432);
        swift_dynamicCast();
        *(v189 + 1792) = *(v189 + 1784);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        Array.append(_:)();

        kMediaML_throughputTrue.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v122(v120, v121);
        if (!*(v189 + 552))
        {
          goto LABEL_54;
        }

        v119 = *(v189 + 2248);
        v117 = *(v189 + 2168);
        v118 = *(v189 + 2096);
        outlined init with take of Any(v189 + 528, v189 + 496);
        swift_dynamicCast();
        *(v189 + 1808) = *(v189 + 1800);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
        Array.append(_:)();

        kMediaML_noise.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v119(v117, v118);
        if (!*(v189 + 616))
        {
          goto LABEL_54;
        }

        v116 = *(v189 + 2248);
        v114 = *(v189 + 2160);
        v115 = *(v189 + 2096);
        outlined init with take of Any(v189 + 592, v189 + 560);
        swift_dynamicCast();
        *(v189 + 1824) = *(v189 + 1816);
        Array.append(_:)();

        kMediaML_txRate.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v116(v114, v115);
        if (!*(v189 + 680))
        {
          goto LABEL_54;
        }

        v113 = *(v189 + 2248);
        v111 = *(v189 + 2152);
        v112 = *(v189 + 2096);
        outlined init with take of Any(v189 + 656, v189 + 624);
        swift_dynamicCast();
        *(v189 + 1840) = *(v189 + 1832);
        Array.append(_:)();

        kMediaML_rxRate.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v113(v111, v112);
        if (!*(v189 + 744))
        {
          goto LABEL_54;
        }

        v110 = *(v189 + 2248);
        v108 = *(v189 + 2144);
        v109 = *(v189 + 2096);
        outlined init with take of Any(v189 + 720, v189 + 688);
        swift_dynamicCast();
        *(v189 + 1856) = *(v189 + 1848);
        Array.append(_:)();

        kMediaML_dayOfWeek.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v110(v108, v109);
        if (!*(v189 + 808))
        {
          goto LABEL_54;
        }

        v107 = *(v189 + 2248);
        v105 = *(v189 + 2136);
        v106 = *(v189 + 2096);
        outlined init with take of Any(v189 + 784, v189 + 752);
        swift_dynamicCast();
        *(v189 + 1872) = *(v189 + 1864);
        Array.append(_:)();

        kMediaML_hourOfDay.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v107(v105, v106);
        if (!*(v189 + 872))
        {
          goto LABEL_54;
        }

        v104 = *(v189 + 2248);
        v102 = *(v189 + 2128);
        v103 = *(v189 + 2096);
        outlined init with take of Any(v189 + 848, v189 + 816);
        swift_dynamicCast();
        *(v189 + 1888) = *(v189 + 1880);
        Array.append(_:)();

        kMediaML_ssid.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v104(v102, v103);
        if (!*(v189 + 936))
        {
          goto LABEL_54;
        }

        v101 = *(v189 + 2248);
        v99 = *(v189 + 2120);
        v100 = *(v189 + 2096);
        outlined init with take of Any(v189 + 912, v189 + 880);
        swift_dynamicCast();
        v7 = *(v189 + 1240);
        *(v189 + 1248) = *(v189 + 1232);
        *(v189 + 1256) = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();

        kMediaML_appName.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v101(v99, v100);
        if (!*(v189 + 1000))
        {
          goto LABEL_54;
        }

        v98 = *(v189 + 2248);
        v96 = *(v189 + 2112);
        v97 = *(v189 + 2096);
        outlined init with take of Any(v189 + 976, v189 + 944);
        swift_dynamicCast();
        v8 = *(v189 + 1272);
        *(v189 + 1280) = *(v189 + 1264);
        *(v189 + 1288) = v8;
        Array.append(_:)();

        kMediaML_sessionID.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v98(v96, v97);
        if (!*(v189 + 1064))
        {
          goto LABEL_54;
        }

        outlined init with take of Any(v189 + 1040, v189 + 1008);
        swift_dynamicCast();
        v9 = *(v189 + 1304);
        *(v189 + 1312) = *(v189 + 1296);
        *(v189 + 1320) = v9;
        Array.append(_:)();

        if (__OFADD__(i, 1))
        {
          goto LABEL_74;
        }

        *(v189 + 1512) = i + 1;
      }

      v13 = *(v189 + 1976);
      v80 = *(v189 + 1944);
      v79 = *(v189 + 1432);

      v78 = *(v189 + 1440);

      v77 = *(v189 + 1448);

      v76 = *(v189 + 1456);

      v75 = *(v189 + 1464);

      v74 = *(v189 + 1472);

      v73 = *(v189 + 1480);

      v72 = *(v189 + 1488);

      v81 = preprocessData(rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(v79, v78, v77, v76, v75, v74, v73, v72);
      *(v189 + 2304) = v81;

      *(v189 + 1528) = v81;
      v14 = MediaMLWorker.logger.unsafeMutableAddressor();
      v139(v13, v14, v80);
      outlined init with copy of Any?(v189 + 48, v189 + 144);
      v83 = swift_allocObject();
      *(v83 + 16) = *(v189 + 144);
      *(v83 + 32) = *(v189 + 160);

      v82 = swift_allocObject();
      *(v82 + 16) = v81;

      v85 = swift_allocObject();
      *(v85 + 16) = partial apply for implicit closure #11 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v85 + 24) = v82;

      log = Logger.logObject.getter();
      v95 = static os_log_type_t.debug.getter();
      v87 = swift_allocObject();
      *(v87 + 16) = 32;
      v88 = swift_allocObject();
      *(v88 + 16) = 8;
      v84 = swift_allocObject();
      *(v84 + 16) = partial apply for implicit closure #10 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v84 + 24) = v83;
      v89 = swift_allocObject();
      *(v89 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_0;
      *(v89 + 24) = v84;
      v90 = swift_allocObject();
      *(v90 + 16) = 32;
      v91 = swift_allocObject();
      *(v91 + 16) = 8;
      v86 = swift_allocObject();
      *(v86 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
      *(v86 + 24) = v85;
      v92 = swift_allocObject();
      *(v92 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
      *(v92 + 24) = v86;
      _allocateUninitializedArray<A>(_:)();
      v93 = v15;

      *v93 = closure #1 in OSLogArguments.append(_:)partial apply;
      v93[1] = v87;

      v93[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v93[3] = v88;

      v93[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v93[5] = v89;

      v93[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v93[7] = v90;

      v93[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v93[9] = v91;

      v93[10] = closure #1 in OSLogArguments.append(_:)partial apply;
      v93[11] = v92;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v95))
      {
        v69 = static UnsafeMutablePointer.allocate(capacity:)();
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v70 = createStorage<A>(capacity:type:)(0, v68, v68);
        v71 = createStorage<A>(capacity:type:)(2, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v189 + 1760) = v69;
        *(v189 + 1768) = v70;
        *(v189 + 1776) = v71;
        serialize(_:at:)(2, (v189 + 1760));
        serialize(_:at:)(2, (v189 + 1760));
        *(v189 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v189 + 1224) = v87;
        closure #1 in osLogInternal(_:log:type:)((v189 + 1216), v189 + 1760, v189 + 1768, v189 + 1776);
        *(v189 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v189 + 1224) = v88;
        closure #1 in osLogInternal(_:log:type:)((v189 + 1216), v189 + 1760, v189 + 1768, v189 + 1776);
        *(v189 + 1216) = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
        *(v189 + 1224) = v89;
        closure #1 in osLogInternal(_:log:type:)((v189 + 1216), v189 + 1760, v189 + 1768, v189 + 1776);
        *(v189 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v189 + 1224) = v90;
        closure #1 in osLogInternal(_:log:type:)((v189 + 1216), v189 + 1760, v189 + 1768, v189 + 1776);
        *(v189 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v189 + 1224) = v91;
        closure #1 in osLogInternal(_:log:type:)((v189 + 1216), v189 + 1760, v189 + 1768, v189 + 1776);
        *(v189 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v189 + 1224) = v92;
        closure #1 in osLogInternal(_:log:type:)((v189 + 1216), v189 + 1760, v189 + 1768, v189 + 1776);
        _os_log_impl(&_mh_execute_header, log, v95, "processedData for session=%s %s", v69, 0x16u);
        destroyStorage<A>(_:count:)(v70, 0);
        destroyStorage<A>(_:count:)(v71, 2);
        UnsafeMutablePointer.deallocate()();
      }

      v66 = *(v189 + 1976);
      v67 = *(v189 + 1944);

      v129(v66, v67);
      *(v189 + 2312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
      v10 = Array.count.getter();
      *(v189 + 1536) = v10;
      if (__OFSUB__(v10, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto _swift_task_switch;
      }

      *(v189 + 1552) = v10 - 1;
      *(v189 + 1560) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
      min<A>(_:_:)();
      v65 = *(v189 + 1544);
      *(v189 + 1568) = v65;
      if (Array.count.getter() > 0)
      {
        if (v65 < 0)
        {
          goto LABEL_54;
        }

        *(v189 + 1104) = 0;
        *(v189 + 1112) = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
        lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
        Collection<>.makeIterator()();
        *(v189 + 2320) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
        IndexingIterator.next()();
        if ((*(v189 + 1352) & 1) == 0)
        {
          break;
        }
      }

      v51 = *(v189 + 2032);
      v50 = *(v189 + 1992);
      v49 = *(v189 + 2000);

      outlined destroy of [String]((v189 + 1504));
      outlined destroy of [String]((v189 + 1496));
      outlined destroy of [String]((v189 + 1488));
      outlined destroy of [Int]((v189 + 1480));
      outlined destroy of [Int]((v189 + 1472));
      outlined destroy of [Double]((v189 + 1464));
      outlined destroy of [Double]((v189 + 1456));
      outlined destroy of [Int]((v189 + 1448));
      outlined destroy of [Double]((v189 + 1440));
      outlined destroy of [Int]((v189 + 1432));
      (*(v49 + 8))(v51, v50);
      outlined destroy of Any?((v189 + 112));
    }

    *(v189 + 1576) = *(v189 + 1344);
    Array.subscript.getter();
    Array.subscript.getter();

    swift_dynamicCast();
    v63 = *(v189 + 1592);
    *(v189 + 1600) = v63;
    Array.subscript.getter();
    Array.subscript.getter();

    swift_dynamicCast();
    v64 = *(v189 + 1616);
    if (((*&v64 >> 52) & 0x7FFLL) == 0x7FF || v64 <= -9.22337204e18 || v64 >= 9.22337204e18 || (*(v189 + 1624) = v64, Array.subscript.getter(), Array.subscript.getter(), , swift_dynamicCast(), v62 = *(v189 + 1640), ((*&v62 >> 52) & 0x7FFLL) == 0x7FF) || v62 <= -9.22337204e18 || v62 >= 9.22337204e18)
    {
LABEL_54:
      _assertionFailure(_:_:file:line:flags:)();
      return;
    }

    v61 = *(v189 + 2240);
    *(v189 + 1648) = v62;
    Array.subscript.getter();
    Array.subscript.getter();

    swift_dynamicCast();
    v59 = *(v189 + 1664);
    *(v189 + 1672) = v59;
    Array.subscript.getter();
    Array.subscript.getter();

    swift_dynamicCast();
    v60 = *(v189 + 1688);
    *(v189 + 1696) = v60;
    Array.subscript.getter();
    Array.subscript.getter();

    swift_dynamicCast();
    v58 = *(v189 + 1712);
    *(v189 + 1720) = v58;
    Array.subscript.getter();
    Array.subscript.getter();

    swift_dynamicCast();
    v57 = *(v189 + 1736);
    *(v189 + 1744) = v57;
    Array.subscript.getter();
    Array.subscript.getter();

    swift_dynamicCast();
    v55 = *(v189 + 1120);
    v56 = *(v189 + 1128);
    *(v189 + 2328) = v56;
    *(v189 + 1136) = v55;
    *(v189 + 1144) = v56;
    Array.subscript.getter();
    v53 = *(v189 + 1152);
    v54 = *(v189 + 1160);
    *(v189 + 2336) = v54;
    *(v189 + 1168) = v53;
    *(v189 + 1176) = v54;
    Array.subscript.getter();
    v17 = *(v189 + 1184);
    v52 = *(v189 + 1192);
    *(v189 + 2344) = v52;
    *(v189 + 1200) = v17;
    *(v189 + 1208) = v52;
    *(v189 + 2352) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO processedwifi (session_id, app_name, ssid, hour, dow, rssi, noise, tx_rate, rx_rate, throughput_true) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0x97uLL, 1);

    v18 = swift_task_alloc();
    v11 = v61;
    *(v189 + 2368) = v18;
    v18[2] = v17;
    v18[3] = v52;
    v18[4] = v53;
    v18[5] = v54;
    v18[6] = v55;
    v18[7] = v56;
    v18[8] = v57;
    v18[9] = v58;
    v18[10] = v64;
    v18[11] = v62;
    v18[12] = v59;
    v18[13] = v60;
    v18[14] = v63;
    v10 = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);

_swift_task_switch:
    _swift_task_switch(v10, v11);
  }
}

  _swift_task_switch(v8, v9);
}

uint64_t MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)()
{
  v1 = v0[295];
  v2 = v0[294];
  v3 = v0[290];
  v0[170] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, partial apply for closure #4 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:));
  v0[297] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
  }

  else
  {

    v4 = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
  }

  return _swift_task_switch(v4, 0);
}

{
  *(v0 + 1360) = v0;

  for (i = *(v0 + 2376); ; i = 0)
  {
    *(v143 + 2320) = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
    IndexingIterator.next()();
    if ((*(v143 + 1352) & 1) == 0)
    {
      break;
    }

    v28 = i;
    while (2)
    {
      v27 = *(v143 + 2032);
      v26 = *(v143 + 1992);
      v25 = *(v143 + 2000);

      outlined destroy of [String]((v143 + 1504));
      outlined destroy of [String]((v143 + 1496));
      outlined destroy of [String]((v143 + 1488));
      outlined destroy of [Int]((v143 + 1480));
      outlined destroy of [Int]((v143 + 1472));
      outlined destroy of [Double]((v143 + 1464));
      outlined destroy of [Double]((v143 + 1456));
      outlined destroy of [Int]((v143 + 1448));
      outlined destroy of [Double]((v143 + 1440));
      outlined destroy of [Int]((v143 + 1432));
      (*(v25 + 8))(v27, v26);
      outlined destroy of Any?((v143 + 112));
      for (j = v28; ; j = 0)
      {
        IndexingIterator.next()();
        if (*(v143 + 104) != 1)
        {
          break;
        }

        v20 = *(v143 + 2288);
        v21 = *(v143 + 2216);
        v19 = *(v143 + 2200);
        v23 = *(v143 + 2064);
        v24 = *(v143 + 2040);
        v22 = *(v143 + 2048);
        outlined destroy of IndexingIterator<AnyColumnSlice>(*(v143 + 2080));
        v20(v21, v19);
        (*(v22 + 8))(v23, v24);
        outlined destroy of Any?((v143 + 48));
        IndexingIterator.next()();
        if (*(v143 + 40) == 1)
        {
          outlined destroy of IndexingIterator<AnyColumnSlice>(*(v143 + 2088));
          v17 = swift_task_alloc();
          *(v143 + 2384) = v17;
          *v17 = *(v143 + 1360);
          v17[1] = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
          v18 = *(v143 + 2016);

          return MediaMLWorker.getProcessedWiFiDataFromDB()(v18);
        }

        *(v143 + 48) = *(v143 + 16);
        *(v143 + 64) = *(v143 + 32);
        kMediaML_sessionID.unsafeMutableAddressor();

        *(swift_task_alloc() + 16) = v143 + 48;
        DataFrame.filter<A>(on:_:_:)();
        if (j)
        {
        }

        v140 = *(v143 + 2264);
        v137 = *(v143 + 2224);
        v139 = *(v143 + 2216);
        v141 = *(v143 + 2200);
        v138 = *(v143 + 2208);

        kMediaML_ssid.unsafeMutableAddressor();

        DataFrame.Slice.subscript.getter();
        AnyColumnSlice.distinct()();
        v1 = *(v138 + 8);
        *(v143 + 2288) = v1;
        *(v143 + 2296) = (v138 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v1(v137, v141);

        v140(v137, v139, v141);
        Collection<>.makeIterator()();
      }

      *(v143 + 112) = *(v143 + 80);
      *(v143 + 128) = *(v143 + 96);
      kMediaML_ssid.unsafeMutableAddressor();

      *(swift_task_alloc() + 16) = v143 + 112;
      DataFrame.Slice.filter<A>(on:_:_:)();
      if (j)
      {
      }

      v118 = *(v143 + 2032);
      v121 = *(v143 + 2024);
      v122 = *(v143 + 1992);
      v112 = *(v143 + 1984);
      v115 = *(v143 + 1944);
      v117 = *(v143 + 2000);
      v114 = *(v143 + 1952);

      DataFrame.init(_:)();
      *(v143 + 1432) = _allocateUninitializedArray<A>(_:)();
      *(v143 + 1440) = _allocateUninitializedArray<A>(_:)();
      *(v143 + 1448) = _allocateUninitializedArray<A>(_:)();
      *(v143 + 1456) = _allocateUninitializedArray<A>(_:)();
      *(v143 + 1464) = _allocateUninitializedArray<A>(_:)();
      *(v143 + 1472) = _allocateUninitializedArray<A>(_:)();
      *(v143 + 1480) = _allocateUninitializedArray<A>(_:)();
      *(v143 + 1488) = _allocateUninitializedArray<A>(_:)();
      *(v143 + 1496) = _allocateUninitializedArray<A>(_:)();
      *(v143 + 1504) = _allocateUninitializedArray<A>(_:)();
      *(v143 + 1512) = 0;
      v113 = DataFrame.shape.getter();
      *(v143 + 1520) = v113;
      v2 = MediaMLWorker.logger.unsafeMutableAddressor();
      v116 = *(v114 + 16);
      v116(v112, v2, v115);
      v119 = *(v117 + 16);
      v119(v121, v118, v122);
      v120 = *(v117 + 80);
      v124 = swift_allocObject();
      v123 = *(v117 + 32);
      v123(v124 + ((v120 + 16) & ~v120), v121, v122);
      v119(v121, v118, v122);
      v126 = swift_allocObject();
      v123(v126 + ((v120 + 16) & ~v120), v121, v122);
      oslog = Logger.logObject.getter();
      v136 = static os_log_type_t.debug.getter();
      v128 = swift_allocObject();
      *(v128 + 16) = 0;
      v129 = swift_allocObject();
      *(v129 + 16) = 8;
      v125 = swift_allocObject();
      *(v125 + 16) = partial apply for implicit closure #8 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v125 + 24) = v124;
      v130 = swift_allocObject();
      *(v130 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v130 + 24) = v125;
      v131 = swift_allocObject();
      *(v131 + 16) = 0;
      v132 = swift_allocObject();
      *(v132 + 16) = 8;
      v127 = swift_allocObject();
      *(v127 + 16) = partial apply for implicit closure #9 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v127 + 24) = v126;
      v133 = swift_allocObject();
      *(v133 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v133 + 24) = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v134 = v3;

      *v134 = closure #1 in OSLogArguments.append(_:)partial apply;
      v134[1] = v128;

      v134[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v134[3] = v129;

      v134[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v134[5] = v130;

      v134[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v134[7] = v131;

      v134[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v134[9] = v132;

      v134[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v134[11] = v133;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v136))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v110 = createStorage<A>(capacity:type:)(0, v108, v108);
        v111 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v143 + 1896) = buf;
        *(v143 + 1904) = v110;
        *(v143 + 1912) = v111;
        serialize(_:at:)(0, (v143 + 1896));
        serialize(_:at:)(2, (v143 + 1896));
        *(v143 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v143 + 1336) = v128;
        closure #1 in osLogInternal(_:log:type:)((v143 + 1328), v143 + 1896, v143 + 1904, v143 + 1912);
        *(v143 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v143 + 1336) = v129;
        closure #1 in osLogInternal(_:log:type:)((v143 + 1328), v143 + 1896, v143 + 1904, v143 + 1912);
        *(v143 + 1328) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v143 + 1336) = v130;
        closure #1 in osLogInternal(_:log:type:)((v143 + 1328), v143 + 1896, v143 + 1904, v143 + 1912);
        *(v143 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v143 + 1336) = v131;
        closure #1 in osLogInternal(_:log:type:)((v143 + 1328), v143 + 1896, v143 + 1904, v143 + 1912);
        *(v143 + 1328) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v143 + 1336) = v132;
        closure #1 in osLogInternal(_:log:type:)((v143 + 1328), v143 + 1896, v143 + 1904, v143 + 1912);
        *(v143 + 1328) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v143 + 1336) = v133;
        closure #1 in osLogInternal(_:log:type:)((v143 + 1328), v143 + 1896, v143 + 1904, v143 + 1912);
        _os_log_impl(&_mh_execute_header, oslog, v136, "Filtered dataframe shape=%ld,%ld", buf, 0x16u);
        destroyStorage<A>(_:count:)(v110, 0);
        destroyStorage<A>(_:count:)(v111, 0);
        UnsafeMutablePointer.deallocate()();
      }

      v104 = *(v143 + 1984);
      v105 = *(v143 + 1944);
      v103 = *(v143 + 1952);

      v106 = *(v103 + 8);
      v106(v104, v105);
      for (k = 0; k < v113; ++k)
      {
        v102 = *(v143 + 2248);
        v100 = *(v143 + 2184);
        v101 = *(v143 + 2096);
        kMediaML_rssi.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v102(v100, v101);
        if (!*(v143 + 488))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v99 = *(v143 + 2248);
        v97 = *(v143 + 2176);
        v98 = *(v143 + 2096);
        outlined init with take of Any(v143 + 464, v143 + 432);
        swift_dynamicCast();
        *(v143 + 1792) = *(v143 + 1784);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        Array.append(_:)();

        kMediaML_throughputTrue.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v99(v97, v98);
        if (!*(v143 + 552))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v96 = *(v143 + 2248);
        v94 = *(v143 + 2168);
        v95 = *(v143 + 2096);
        outlined init with take of Any(v143 + 528, v143 + 496);
        swift_dynamicCast();
        *(v143 + 1808) = *(v143 + 1800);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
        Array.append(_:)();

        kMediaML_noise.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v96(v94, v95);
        if (!*(v143 + 616))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v93 = *(v143 + 2248);
        v91 = *(v143 + 2160);
        v92 = *(v143 + 2096);
        outlined init with take of Any(v143 + 592, v143 + 560);
        swift_dynamicCast();
        *(v143 + 1824) = *(v143 + 1816);
        Array.append(_:)();

        kMediaML_txRate.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v93(v91, v92);
        if (!*(v143 + 680))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v90 = *(v143 + 2248);
        v88 = *(v143 + 2152);
        v89 = *(v143 + 2096);
        outlined init with take of Any(v143 + 656, v143 + 624);
        swift_dynamicCast();
        *(v143 + 1840) = *(v143 + 1832);
        Array.append(_:)();

        kMediaML_rxRate.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v90(v88, v89);
        if (!*(v143 + 744))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v87 = *(v143 + 2248);
        v85 = *(v143 + 2144);
        v86 = *(v143 + 2096);
        outlined init with take of Any(v143 + 720, v143 + 688);
        swift_dynamicCast();
        *(v143 + 1856) = *(v143 + 1848);
        Array.append(_:)();

        kMediaML_dayOfWeek.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v87(v85, v86);
        if (!*(v143 + 808))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v84 = *(v143 + 2248);
        v82 = *(v143 + 2136);
        v83 = *(v143 + 2096);
        outlined init with take of Any(v143 + 784, v143 + 752);
        swift_dynamicCast();
        *(v143 + 1872) = *(v143 + 1864);
        Array.append(_:)();

        kMediaML_hourOfDay.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v84(v82, v83);
        if (!*(v143 + 872))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v81 = *(v143 + 2248);
        v79 = *(v143 + 2128);
        v80 = *(v143 + 2096);
        outlined init with take of Any(v143 + 848, v143 + 816);
        swift_dynamicCast();
        *(v143 + 1888) = *(v143 + 1880);
        Array.append(_:)();

        kMediaML_ssid.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v81(v79, v80);
        if (!*(v143 + 936))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v78 = *(v143 + 2248);
        v76 = *(v143 + 2120);
        v77 = *(v143 + 2096);
        outlined init with take of Any(v143 + 912, v143 + 880);
        swift_dynamicCast();
        v4 = *(v143 + 1240);
        *(v143 + 1248) = *(v143 + 1232);
        *(v143 + 1256) = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();

        kMediaML_appName.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v78(v76, v77);
        if (!*(v143 + 1000))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v75 = *(v143 + 2248);
        v73 = *(v143 + 2112);
        v74 = *(v143 + 2096);
        outlined init with take of Any(v143 + 976, v143 + 944);
        swift_dynamicCast();
        v5 = *(v143 + 1272);
        *(v143 + 1280) = *(v143 + 1264);
        *(v143 + 1288) = v5;
        Array.append(_:)();

        kMediaML_sessionID.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v75(v73, v74);
        if (!*(v143 + 1064))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        outlined init with take of Any(v143 + 1040, v143 + 1008);
        swift_dynamicCast();
        v6 = *(v143 + 1304);
        *(v143 + 1312) = *(v143 + 1296);
        *(v143 + 1320) = v6;
        Array.append(_:)();

        if (__OFADD__(k, 1))
        {
          goto LABEL_62;
        }

        *(v143 + 1512) = k + 1;
      }

      v10 = *(v143 + 1976);
      v57 = *(v143 + 1944);
      v56 = *(v143 + 1432);

      v55 = *(v143 + 1440);

      v54 = *(v143 + 1448);

      v53 = *(v143 + 1456);

      v52 = *(v143 + 1464);

      v51 = *(v143 + 1472);

      v50 = *(v143 + 1480);

      v49 = *(v143 + 1488);

      v58 = preprocessData(rssiList:obrList:noiseList:txRateList:rxRateList:dowList:hourList:ssidList:)(v56, v55, v54, v53, v52, v51, v50, v49);
      *(v143 + 2304) = v58;

      *(v143 + 1528) = v58;
      v11 = MediaMLWorker.logger.unsafeMutableAddressor();
      v116(v10, v11, v57);
      outlined init with copy of Any?(v143 + 48, v143 + 144);
      v60 = swift_allocObject();
      *(v60 + 16) = *(v143 + 144);
      *(v60 + 32) = *(v143 + 160);

      v59 = swift_allocObject();
      *(v59 + 16) = v58;

      v62 = swift_allocObject();
      *(v62 + 16) = partial apply for implicit closure #11 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v62 + 24) = v59;

      log = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      v64 = swift_allocObject();
      *(v64 + 16) = 32;
      v65 = swift_allocObject();
      *(v65 + 16) = 8;
      v61 = swift_allocObject();
      *(v61 + 16) = partial apply for implicit closure #10 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
      *(v61 + 24) = v60;
      v66 = swift_allocObject();
      *(v66 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_0;
      *(v66 + 24) = v61;
      v67 = swift_allocObject();
      *(v67 + 16) = 32;
      v68 = swift_allocObject();
      *(v68 + 16) = 8;
      v63 = swift_allocObject();
      *(v63 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:);
      *(v63 + 24) = v62;
      v69 = swift_allocObject();
      *(v69 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
      *(v69 + 24) = v63;
      _allocateUninitializedArray<A>(_:)();
      v70 = v12;

      *v70 = closure #1 in OSLogArguments.append(_:)partial apply;
      v70[1] = v64;

      v70[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v70[3] = v65;

      v70[4] = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      v70[5] = v66;

      v70[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v70[7] = v67;

      v70[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v70[9] = v68;

      v70[10] = closure #1 in OSLogArguments.append(_:)partial apply;
      v70[11] = v69;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v72))
      {
        v46 = static UnsafeMutablePointer.allocate(capacity:)();
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v47 = createStorage<A>(capacity:type:)(0, v45, v45);
        v48 = createStorage<A>(capacity:type:)(2, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v143 + 1760) = v46;
        *(v143 + 1768) = v47;
        *(v143 + 1776) = v48;
        serialize(_:at:)(2, (v143 + 1760));
        serialize(_:at:)(2, (v143 + 1760));
        *(v143 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v143 + 1224) = v64;
        closure #1 in osLogInternal(_:log:type:)((v143 + 1216), v143 + 1760, v143 + 1768, v143 + 1776);
        *(v143 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v143 + 1224) = v65;
        closure #1 in osLogInternal(_:log:type:)((v143 + 1216), v143 + 1760, v143 + 1768, v143 + 1776);
        *(v143 + 1216) = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
        *(v143 + 1224) = v66;
        closure #1 in osLogInternal(_:log:type:)((v143 + 1216), v143 + 1760, v143 + 1768, v143 + 1776);
        *(v143 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v143 + 1224) = v67;
        closure #1 in osLogInternal(_:log:type:)((v143 + 1216), v143 + 1760, v143 + 1768, v143 + 1776);
        *(v143 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v143 + 1224) = v68;
        closure #1 in osLogInternal(_:log:type:)((v143 + 1216), v143 + 1760, v143 + 1768, v143 + 1776);
        *(v143 + 1216) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v143 + 1224) = v69;
        closure #1 in osLogInternal(_:log:type:)((v143 + 1216), v143 + 1760, v143 + 1768, v143 + 1776);
        _os_log_impl(&_mh_execute_header, log, v72, "processedData for session=%s %s", v46, 0x16u);
        destroyStorage<A>(_:count:)(v47, 0);
        destroyStorage<A>(_:count:)(v48, 2);
        UnsafeMutablePointer.deallocate()();
      }

      v43 = *(v143 + 1976);
      v44 = *(v143 + 1944);

      v106(v43, v44);
      *(v143 + 2312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
      v7 = Array.count.getter();
      *(v143 + 1536) = v7;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
        return _swift_task_switch(v7, v8);
      }

      *(v143 + 1552) = v7 - 1;
      *(v143 + 1560) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
      min<A>(_:_:)();
      v42 = *(v143 + 1544);
      *(v143 + 1568) = v42;
      if (Array.count.getter() <= 0)
      {
        v28 = 0;
        continue;
      }

      break;
    }

    if (v42 < 0)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *(v143 + 1104) = 0;
    *(v143 + 1112) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
  }

  *(v143 + 1576) = *(v143 + 1344);
  Array.subscript.getter();
  Array.subscript.getter();

  swift_dynamicCast();
  v40 = *(v143 + 1592);
  *(v143 + 1600) = v40;
  Array.subscript.getter();
  Array.subscript.getter();

  swift_dynamicCast();
  v41 = *(v143 + 1616);
  if (((*&v41 >> 52) & 0x7FFLL) == 0x7FF)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (v41 <= -9.22337204e18)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (v41 >= 9.22337204e18)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  *(v143 + 1624) = v41;
  Array.subscript.getter();
  Array.subscript.getter();

  swift_dynamicCast();
  v39 = *(v143 + 1640);
  if (((*&v39 >> 52) & 0x7FFLL) == 0x7FF || v39 <= -9.22337204e18 || v39 >= 9.22337204e18)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v38 = *(v143 + 2240);
  *(v143 + 1648) = v39;
  Array.subscript.getter();
  Array.subscript.getter();

  swift_dynamicCast();
  v36 = *(v143 + 1664);
  *(v143 + 1672) = v36;
  Array.subscript.getter();
  Array.subscript.getter();

  swift_dynamicCast();
  v37 = *(v143 + 1688);
  *(v143 + 1696) = v37;
  Array.subscript.getter();
  Array.subscript.getter();

  swift_dynamicCast();
  v35 = *(v143 + 1712);
  *(v143 + 1720) = v35;
  Array.subscript.getter();
  Array.subscript.getter();

  swift_dynamicCast();
  v34 = *(v143 + 1736);
  *(v143 + 1744) = v34;
  Array.subscript.getter();
  Array.subscript.getter();

  swift_dynamicCast();
  v32 = *(v143 + 1120);
  v33 = *(v143 + 1128);
  *(v143 + 2328) = v33;
  *(v143 + 1136) = v32;
  *(v143 + 1144) = v33;
  Array.subscript.getter();
  v30 = *(v143 + 1152);
  v31 = *(v143 + 1160);
  *(v143 + 2336) = v31;
  *(v143 + 1168) = v30;
  *(v143 + 1176) = v31;
  Array.subscript.getter();
  v15 = *(v143 + 1184);
  v29 = *(v143 + 1192);
  *(v143 + 2344) = v29;
  *(v143 + 1200) = v15;
  *(v143 + 1208) = v29;
  *(v143 + 2352) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO processedwifi (session_id, app_name, ssid, hour, dow, rssi, noise, tx_rate, rx_rate, throughput_true) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0x97uLL, 1);

  v16 = swift_task_alloc();
  v8 = v38;
  *(v143 + 2368) = v16;
  v16[2] = v15;
  v16[3] = v29;
  v16[4] = v30;
  v16[5] = v31;
  v16[6] = v32;
  v16[7] = v33;
  v16[8] = v34;
  v16[9] = v35;
  v16[10] = v41;
  v16[11] = v39;
  v16[12] = v36;
  v16[13] = v37;
  v16[14] = v40;
  v7 = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);

  return _swift_task_switch(v7, v8);
}

{
  v4 = *v1;
  *(v4 + 1360) = *v1;
  *(v4 + 2392) = v0;

  if (v0)
  {
    v2 = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
  }

  else
  {
    v2 = MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
  }

  return _swift_task_switch(v2, 0);
}

{
  v49 = v0;
  v28 = v0[253];
  v25 = v0[252];
  v24 = v0[250];
  v29 = v0[249];
  v1 = v0[246];
  v22 = v0[244];
  v23 = v0[243];
  v0[170] = v0;
  v2 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  v26 = *(v24 + 16);
  v26(v28, v25, v29);
  v27 = *(v24 + 80);
  v31 = swift_allocObject();
  v30 = *(v24 + 32);
  v30(v31 + ((v27 + 16) & ~v27), v28, v29);
  v26(v28, v25, v29);
  v33 = swift_allocObject();
  v30(v33 + ((v27 + 16) & ~v27), v28, v29);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #12 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
  *(v32 + 24) = v31;
  v37 = swift_allocObject();
  *(v37 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v37 + 24) = v32;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #13 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:);
  *(v34 + 24) = v33;
  v40 = swift_allocObject();
  *(v40 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v40 + 24) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v41 = v3;

  *v41 = closure #1 in OSLogArguments.append(_:)partial apply;
  v41[1] = v35;

  v41[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v41[3] = v36;

  v41[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v41[5] = v37;

  v41[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v41[7] = v38;

  v41[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v41[9] = v39;

  v41[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v41[11] = v40;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v42, v43))
  {
    v4 = v21[299];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(0, v17, v17);
    v20 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v44 = buf;
    v45 = v19;
    v46 = v20;
    serialize(_:at:)(0, &v44);
    serialize(_:at:)(2, &v44);
    v47 = closure #1 in OSLogArguments.append(_:)partial apply;
    v48 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    if (v4)
    {
    }

    v47 = closure #1 in OSLogArguments.append(_:)partial apply;
    v48 = v36;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    v47 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v48 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    v47 = closure #1 in OSLogArguments.append(_:)partial apply;
    v48 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    v47 = closure #1 in OSLogArguments.append(_:)partial apply;
    v48 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    v47 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v48 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    _os_log_impl(&_mh_execute_header, v42, v43, "Returning a dataframe of size=%ld,%ld", buf, 0x16u);
    destroyStorage<A>(_:count:)(v19, 0);
    destroyStorage<A>(_:count:)(v20, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v14 = v21[279];
  v13 = v21[275];
  v15 = v21[252];
  v11 = v21[249];
  v16 = v21[246];
  v8 = v21[243];
  v9 = v21[240];
  v12 = v21[276];
  v10 = v21[250];
  v7 = v21[244];

  (*(v7 + 8))(v16, v8);
  v26(v9, v15, v11);
  (*(v10 + 8))(v15, v11);
  (*(v12 + 8))(v14, v13);

  v6 = *(v21[170] + 8);

  return v6();
}

{
  v13 = v0[286];
  v14 = v0[279];
  v7 = v0[277];
  v12 = v0[275];
  v11 = v0[261];
  v6 = v0[260];
  v9 = v0[258];
  v8 = v0[256];
  v10 = v0[255];
  v5 = v0[254];
  v3 = v0[250];
  v4 = v0[249];
  v0[170] = v0;

  outlined destroy of [String](v0 + 188);
  outlined destroy of [String](v0 + 187);
  outlined destroy of [String](v0 + 186);
  outlined destroy of [Int](v0 + 185);
  outlined destroy of [Int](v0 + 184);
  outlined destroy of [Double](v0 + 183);
  outlined destroy of [Double](v0 + 182);
  outlined destroy of [Int](v0 + 181);
  outlined destroy of [Double](v0 + 180);
  outlined destroy of [Int](v0 + 179);
  (*(v3 + 8))(v5, v4);
  outlined destroy of Any?(v0 + 14);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v6);
  v13(v7, v12);
  (*(v8 + 8))(v9, v10);
  outlined destroy of Any?(v0 + 6);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v11);
  v13(v14, v12);

  v1 = *(v0[170] + 8);

  return v1();
}

{
  v1 = v0[279];
  v2 = v0[276];
  v3 = v0[275];
  v0[170] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[170] + 8);

  return v4();
}

uint64_t MediaMLWorker.cleanRawWiFiDataFromDB()()
{
  v1[6] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[5] = 0;
  v1[3] = v0;
  return _swift_task_switch(MediaMLWorker.cleanRawWiFiDataFromDB(), 0);
}

{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[7];
  v0[2] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #2 in MediaMLWorker.cleanRawWiFiDataFromDB());
  v0[11] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.cleanRawWiFiDataFromDB();
  }

  else
  {

    v4 = MediaMLWorker.cleanRawWiFiDataFromDB();
  }

  return _swift_task_switch(v4, 0);
}

{
  countAndFlagsBits = v0[4]._countAndFlagsBits;
  v0[1]._countAndFlagsBits = v0;
  v0[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("VACUUM", 6uLL, 1);

  return _swift_task_switch(MediaMLWorker.cleanRawWiFiDataFromDB(), countAndFlagsBits);
}

{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[11];
  v0[2] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, closure #3 in MediaMLWorker.cleanRawWiFiDataFromDB());
  v0[14] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.cleanRawWiFiDataFromDB();
  }

  else
  {

    v4 = MediaMLWorker.cleanRawWiFiDataFromDB();
  }

  return _swift_task_switch(v4, 0);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

void MediaMLWorker.cleanRawWiFiDataFromDB()()
{
  *(v0 + 16) = v0;
  v10 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.cleanRawWiFiDataFromDB(), 0, v10, v1, v1);
  *(v0 + 56) = 0;

  v8 = *(v9 + 32);
  *(v9 + 64) = v8;
  if (v8)
  {
    *(v9 + 40) = v8;
    *(v9 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM wifi", 0x10uLL, 1);

    _swift_task_switch(MediaMLWorker.cleanRawWiFiDataFromDB(), v8);
  }

  else
  {
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v12 = SQLError.init(code:desc:)(-3, v2);
    code = v12.code;
    desc_8 = v12.desc.value._countAndFlagsBits;
    object = v12.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v3 = code;
    *(v3 + 8) = desc_8;
    *(v3 + 16) = object;
    swift_willThrow();
    v4 = *(*(v9 + 16) + 8);

    v4();
  }
}

void reportErrorMetrics(interfaceType:validationMeanAbsPercentError:trainingMeanAbsPercentError:rmseError:experimentID:deploymentID:treatmentID:carrierCount:appCount:sessionCount:ssidCount:trainingDataCount:)(Swift::Int a1, uint64_t a2, void *a3, Swift::Int32 a4, uint64_t a5, void *a6, Swift::Int a7, Swift::Int a8, double a9, double a10, Swift::Double a11, Swift::Int a12, Swift::Int a13, Swift::Int a14)
{
  string._countAndFlagsBits = a2;
  string._object = a3;
  v23._countAndFlagsBits = a5;
  v23._object = a6;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MediaML.ValidationError", 0x21uLL, 1);
  v26 = String._bridgeToObjectiveC()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  _allocateUninitializedArray<A>(_:)();
  v24 = v14;
  *v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InterfaceType", 0xDuLL, 1);
  type metadata accessor for NSNumber();
  v24[1]._countAndFlagsBits = NSNumber.__allocating_init(value:)(a1).super.super.isa;
  *(v24 + 24) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InterfaceType_string", 0x14uLL, 1);
  v24[2]._object = NSNumber.__allocating_init(value:)(a1).super.super.isa;
  v24[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ValidationError_MAPE", 0x14uLL, 1);
  v24[4]._countAndFlagsBits = NSNumber.__allocating_init(value:)(a9 * 1000.0).super.super.isa;
  *(v24 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TrainingError_MAPE", 0x12uLL, 1);
  v24[5]._object = NSNumber.__allocating_init(value:)(a10 * 1000.0).super.super.isa;
  v24[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ValidationError_RMSE", 0x14uLL, 1);
  v24[7]._countAndFlagsBits = NSNumber.__allocating_init(value:)(a11).super.super.isa;
  *(v24 + 120) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CarrierCount", 0xCuLL, 1);
  v24[8]._object = NSNumber.__allocating_init(value:)(a7).super.super.isa;
  v24[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppCount", 8uLL, 1);
  v24[10]._countAndFlagsBits = NSNumber.__allocating_init(value:)(a8).super.super.isa;
  *(v24 + 168) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SessionCount", 0xCuLL, 1);
  v24[11]._object = NSNumber.__allocating_init(value:)(a12).super.super.isa;
  v24[12] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SSIDCount", 9uLL, 1);
  v24[13]._countAndFlagsBits = NSNumber.__allocating_init(value:)(a13).super.super.isa;
  *(v24 + 216) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TrainingDataCount", 0x11uLL, 1);
  v24[14]._object = NSNumber.__allocating_init(value:)(a14).super.super.isa;
  v24[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("trialExperimentId", 0x11uLL, 1);
  type metadata accessor for NSString();

  v24[16]._countAndFlagsBits = NSString.__allocating_init(string:)(string);
  *(v24 + 264) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("trialDeploymentId", 0x11uLL, 1);
  v24[17]._object = NSNumber.__allocating_init(value:)(a4).super.super.isa;
  v24[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("trialTreatmentId", 0x10uLL, 1);

  v24[19]._countAndFlagsBits = NSString.__allocating_init(string:)(v23);
  _finalizeUninitializedArray<A>(_:)();
  type metadata accessor for NSObject();
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

uint64_t MediaMLWorker.saveModelStatsToDB(modelStats:)(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[6] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return _swift_task_switch(MediaMLWorker.saveModelStatsToDB(modelStats:), 0);
}

void MediaMLWorker.saveModelStatsToDB(modelStats:)()
{
  *(v0 + 16) = v0;
  v12 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.saveModelStatsToDB(modelStats:), 0, v12, v1, v1);
  *(v0 + 72) = 0;

  v10 = *(v11 + 40);
  *(v11 + 80) = v10;
  if (v10)
  {
    v9 = *(v11 + 56);
    *(v11 + 48) = v10;
    *(v11 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO modelStats (interfaceType, trainingRowCount, validationRowCount, carrierCount, ssidCount, appNameCount, sessionIDCount, trainingMAPE, validationMAPE, trainingDate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 0xD5uLL, 1);
    v2 = swift_task_alloc();
    *(v11 + 104) = v2;
    *(v2 + 16) = v9;

    _swift_task_switch(MediaMLWorker.saveModelStatsToDB(modelStats:), v10);
  }

  else
  {
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v14 = SQLError.init(code:desc:)(-3, v3);
    code = v14.code;
    desc_8 = v14.desc.value._countAndFlagsBits;
    object = v14.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v4 = code;
    *(v4 + 8) = desc_8;
    *(v4 + 16) = object;
    swift_willThrow();
    v5 = *(*(v11 + 16) + 8);

    v5();
  }
}

uint64_t MediaMLWorker.saveModelStatsToDB(modelStats:)()
{
  v1 = v0[12];
  v2 = v0[11];
  v3 = v0[9];
  v0[2] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, partial apply for closure #2 in MediaMLWorker.saveModelStatsToDB(modelStats:));
  v0[14] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.saveModelStatsToDB(modelStats:);
  }

  else
  {

    v4 = MediaMLWorker.saveModelStatsToDB(modelStats:);
  }

  return _swift_task_switch(v4, 0);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:)(uint64_t a1)
{
  v2[14] = v1;
  v2[13] = a1;
  v2[4] = v2;
  v2[7] = 0;
  v2[8] = 0;
  v2[10] = 0;
  v2[7] = a1;
  v2[8] = v1;
  return _swift_task_switch(MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:), 0);
}

void MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:)()
{
  *(v0 + 32) = v0;
  v16 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:), 0, v16, v1, v1);
  *(v0 + 120) = 0;

  v14 = v15[9];
  v15[16] = v14;
  if (v14)
  {
    v13 = v15[13];
    v15[10] = v14;
    v15[2] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v15[3] = v2;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM modelStats WHERE interfaceType = ", 0x2DuLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v3);

    v15[5] = *v13;
    v15[11] = v15[5];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" AND trainingDate < ", 0x14uLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v4);

    v15[6] = v13[9];
    v15[12] = v15[6];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v5);

    outlined destroy of DefaultStringInterpolation((v15 + 2));
    v15[17] = String.init(stringInterpolation:)();
    v15[18] = v6;

    _swift_task_switch(MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:), v14);
  }

  else
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v18 = SQLError.init(code:desc:)(-3, v7);
    code = v18.code;
    desc_8 = v18.desc.value._countAndFlagsBits;
    object = v18.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v8 = code;
    *(v8 + 8) = desc_8;
    *(v8 + 16) = object;
    swift_willThrow();
    v9 = *(v15[4] + 8);

    v9();
  }
}

uint64_t MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:)()
{
  v1 = *(v0 + 136);
  *(v0 + 32) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 152) = v2;
  if (v2)
  {
    v3 = MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:);
  }

  else
  {

    v3 = MediaMLWorker.deletePreviousModelStatsFromDB(modelStats:);
  }

  return _swift_task_switch(v3, 0);
}

{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t MediaMLWorker.saveWiFiDataStandardDeviation()()
{
  *(v1 + 680) = v0;
  *(v1 + 480) = v1;
  *(v1 + 488) = 0;
  *(v1 + 504) = 0;
  *(v1 + 512) = 0;
  *(v1 + 552) = 0;
  *(v1 + 560) = 0;
  *(v1 + 568) = 0;
  *(v1 + 576) = 0;
  *(v1 + 608) = 0;
  *(v1 + 336) = 0;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 616) = 0;
  *(v1 + 400) = 0;
  *(v1 + 408) = 0;
  *(v1 + 432) = 0;
  *(v1 + 440) = 0;
  *(v1 + 632) = 0;
  v2 = type metadata accessor for Logger();
  *(v1 + 688) = v2;
  *(v1 + 696) = *(v2 - 8);
  *(v1 + 704) = swift_task_alloc();
  *(v1 + 712) = swift_task_alloc();
  *(v1 + 720) = swift_task_alloc();
  v3 = type metadata accessor for DataFrame.Slice();
  *(v1 + 728) = v3;
  *(v1 + 736) = *(v3 - 8);
  *(v1 + 744) = swift_task_alloc();
  *(v1 + 752) = swift_task_alloc();
  *(v1 + 760) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy11TabularData14AnyColumnSliceVGMd, &_ss16IndexingIteratorVy11TabularData14AnyColumnSliceVGMR);
  *(v1 + 768) = swift_task_alloc();
  *(v1 + 776) = swift_task_alloc();
  v4 = type metadata accessor for AnyColumn();
  *(v1 + 784) = v4;
  *(v1 + 792) = *(v4 - 8);
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = swift_task_alloc();
  v5 = type metadata accessor for AnyColumnSlice();
  *(v1 + 816) = v5;
  *(v1 + 824) = *(v5 - 8);
  *(v1 + 832) = swift_task_alloc();
  *(v1 + 840) = swift_task_alloc();
  *(v1 + 848) = swift_task_alloc();
  v6 = type metadata accessor for DataFrame();
  *(v1 + 856) = v6;
  v8 = *(v6 - 8);
  *(v1 + 864) = v8;
  *(v1 + 872) = *(v8 + 64);
  *(v1 + 880) = swift_task_alloc();
  *(v1 + 888) = swift_task_alloc();
  *(v1 + 896) = swift_task_alloc();
  *(v1 + 488) = v0;

  return _swift_task_switch(MediaMLWorker.saveWiFiDataStandardDeviation(), 0);
}

{
  v4 = *v1;
  *(v4 + 480) = *v1;
  *(v4 + 920) = v0;

  if (v0)
  {
    v2 = MediaMLWorker.saveWiFiDataStandardDeviation();
  }

  else
  {
    v2 = MediaMLWorker.saveWiFiDataStandardDeviation();
  }

  return _swift_task_switch(v2, 0);
}

{
  v151 = v0;
  v0[60] = v0;
  DateIn = getDateInEpoch()();
  v0[116] = DateIn;
  v0[64] = DateIn;
  v144 = *kMediaML_appName.unsafeMutableAddressor();

  v145 = DataFrame.containsColumn(_:)(v144);

  if (!v145 || (v141 = *kMediaML_ssid.unsafeMutableAddressor(), , v142 = DataFrame.containsColumn(_:)(v141), , !v142) || (v139 = *kMediaML_throughputStdDev.unsafeMutableAddressor(), , v140 = DataFrame.containsColumn(_:)(v139), , !v140))
  {
    v17 = *(v143 + 704);
    v34 = *(v143 + 688);
    v33 = *(v143 + 696);
    v18 = MediaMLWorker.logger.unsafeMutableAddressor();
    (*(v33 + 16))(v17, v18, v34);
    v36 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v37 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v36, v35))
    {
      v19 = *(v143 + 920);
      v29 = static UnsafeMutablePointer.allocate(capacity:)();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v30 = createStorage<A>(capacity:type:)(0, v28, v28);
      v31 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v143 + 520) = v29;
      *(v143 + 528) = v30;
      *(v143 + 536) = v31;
      serialize(_:at:)(0, (v143 + 520));
      serialize(_:at:)(0, (v143 + 520));
      *(v143 + 544) = v37;
      v32 = swift_task_alloc();
      v32[2] = v143 + 520;
      v32[3] = v143 + 528;
      v32[4] = v143 + 536;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v19)
      {
      }

      _os_log_impl(&_mh_execute_header, v36, v35, "saveWiFiDataStandardDeviation: DataFrame stddevDF did not contain all required columns", v29, 2u);
      destroyStorage<A>(_:count:)(v30, 0);
      destroyStorage<A>(_:count:)(v31, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v26 = *(v143 + 896);
    v27 = *(v143 + 856);
    v23 = *(v143 + 704);
    v24 = *(v143 + 688);
    v25 = *(v143 + 864);
    v22 = *(v143 + 696);

    (*(v22 + 8))(v23, v24);
    lazy protocol witness table accessor for type WorkerErrors and conformance WorkerErrors();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    (*(v25 + 8))(v26, v27);

    v21 = *(*(v143 + 480) + 8);

    return v21();
  }

  v136 = *(v143 + 848);
  v131 = *(v143 + 840);
  v137 = *(v143 + 816);
  v133 = *(v143 + 808);
  v134 = *(v143 + 784);
  v135 = *(v143 + 824);
  v132 = *(v143 + 792);
  kMediaML_appName.unsafeMutableAddressor();

  DataFrame.subscript.getter();
  AnyColumn.distinct()();
  v2 = *(v132 + 8);
  *(v143 + 936) = v2;
  *(v143 + 944) = (v132 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v133, v134);

  v3 = *(v135 + 16);
  *(v143 + 952) = v3;
  *(v143 + 960) = (v135 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v131, v136, v137);
  *(v143 + 968) = lazy protocol witness table accessor for type AnyColumnSlice and conformance AnyColumnSlice();
  Collection<>.makeIterator()();
  v138 = *(v143 + 920);
LABEL_7:
  IndexingIterator.next()();
  if (*(v143 + 40) != 1)
  {
    *(v143 + 48) = *(v143 + 16);
    *(v143 + 64) = *(v143 + 32);
    kMediaML_appName.unsafeMutableAddressor();

    *(swift_task_alloc() + 16) = v143 + 48;
    DataFrame.filter<A>(on:_:_:)();
    if (!v138)
    {
      v129 = *(v143 + 952);
      v126 = *(v143 + 840);
      v128 = *(v143 + 832);
      v130 = *(v143 + 816);
      v127 = *(v143 + 824);

      kMediaML_ssid.unsafeMutableAddressor();

      DataFrame.Slice.subscript.getter();
      AnyColumnSlice.distinct()();
      v4 = *(v127 + 8);
      *(v143 + 976) = v4;
      *(v143 + 984) = (v127 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v4(v126, v130);

      v129(v126, v128, v130);
      Collection<>.makeIterator()();
      while (1)
      {
        IndexingIterator.next()();
        if (*(v143 + 104) == 1)
        {
          v74 = *(v143 + 976);
          v75 = *(v143 + 832);
          v73 = *(v143 + 816);
          v77 = *(v143 + 752);
          v78 = *(v143 + 728);
          v76 = *(v143 + 736);
          outlined destroy of IndexingIterator<AnyColumnSlice>(*(v143 + 768));
          v74(v75, v73);
          (*(v76 + 8))(v77, v78);
          outlined destroy of Any?((v143 + 48));
          v138 = 0;
          goto LABEL_7;
        }

        *(v143 + 112) = *(v143 + 80);
        *(v143 + 128) = *(v143 + 96);
        kMediaML_ssid.unsafeMutableAddressor();

        *(swift_task_alloc() + 16) = v143 + 112;
        DataFrame.Slice.filter<A>(on:_:_:)();
        v107 = *(v143 + 888);
        v110 = *(v143 + 880);
        v111 = *(v143 + 856);
        v102 = *(v143 + 720);
        v105 = *(v143 + 688);
        v106 = *(v143 + 864);
        v104 = *(v143 + 696);

        DataFrame.init(_:)();
        v103 = DataFrame.shape.getter();
        *(v143 + 552) = v103;
        *(v143 + 560) = _allocateUninitializedArray<A>(_:)();
        *(v143 + 568) = 0;
        v5 = MediaMLWorker.logger.unsafeMutableAddressor();
        (*(v104 + 16))(v102, v5, v105);
        v108 = *(v106 + 16);
        v108(v110, v107, v111);
        v109 = *(v106 + 80);
        v113 = swift_allocObject();
        v112 = *(v106 + 32);
        v112(v113 + ((v109 + 16) & ~v109), v110, v111);
        v108(v110, v107, v111);
        v115 = swift_allocObject();
        v112(v115 + ((v109 + 16) & ~v109), v110, v111);
        oslog = Logger.logObject.getter();
        v125 = static os_log_type_t.debug.getter();
        v117 = swift_allocObject();
        *(v117 + 16) = 0;
        v118 = swift_allocObject();
        *(v118 + 16) = 8;
        v114 = swift_allocObject();
        *(v114 + 16) = partial apply for implicit closure #3 in MediaMLWorker.saveWiFiDataStandardDeviation();
        *(v114 + 24) = v113;
        v119 = swift_allocObject();
        *(v119 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
        *(v119 + 24) = v114;
        v120 = swift_allocObject();
        *(v120 + 16) = 0;
        v121 = swift_allocObject();
        *(v121 + 16) = 8;
        v116 = swift_allocObject();
        *(v116 + 16) = partial apply for implicit closure #4 in MediaMLWorker.saveWiFiDataStandardDeviation();
        *(v116 + 24) = v115;
        v122 = swift_allocObject();
        *(v122 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
        *(v122 + 24) = v116;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        _allocateUninitializedArray<A>(_:)();
        v123 = v6;

        *v123 = closure #1 in OSLogArguments.append(_:)partial apply;
        v123[1] = v117;

        v123[2] = closure #1 in OSLogArguments.append(_:)partial apply;
        v123[3] = v118;

        v123[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v123[5] = v119;

        v123[6] = closure #1 in OSLogArguments.append(_:)partial apply;
        v123[7] = v120;

        v123[8] = closure #1 in OSLogArguments.append(_:)partial apply;
        v123[9] = v121;

        v123[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v123[11] = v122;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(oslog, v125))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v100 = createStorage<A>(capacity:type:)(0, v98, v98);
          v101 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
          *(v143 + 656) = buf;
          *(v143 + 664) = v100;
          *(v143 + 672) = v101;
          serialize(_:at:)(0, (v143 + 656));
          serialize(_:at:)(2, (v143 + 656));
          *(v143 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
          *(v143 + 456) = v117;
          closure #1 in osLogInternal(_:log:type:)((v143 + 448), v143 + 656, v143 + 664, v143 + 672);
          *(v143 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
          *(v143 + 456) = v118;
          closure #1 in osLogInternal(_:log:type:)((v143 + 448), v143 + 656, v143 + 664, v143 + 672);
          *(v143 + 448) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          *(v143 + 456) = v119;
          closure #1 in osLogInternal(_:log:type:)((v143 + 448), v143 + 656, v143 + 664, v143 + 672);
          *(v143 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
          *(v143 + 456) = v120;
          closure #1 in osLogInternal(_:log:type:)((v143 + 448), v143 + 656, v143 + 664, v143 + 672);
          *(v143 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
          *(v143 + 456) = v121;
          closure #1 in osLogInternal(_:log:type:)((v143 + 448), v143 + 656, v143 + 664, v143 + 672);
          *(v143 + 448) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          *(v143 + 456) = v122;
          closure #1 in osLogInternal(_:log:type:)((v143 + 448), v143 + 656, v143 + 664, v143 + 672);
          _os_log_impl(&_mh_execute_header, oslog, v125, "Filtered dataframe shape=%ld,%ld", buf, 0x16u);
          destroyStorage<A>(_:count:)(v100, 0);
          destroyStorage<A>(_:count:)(v101, 0);
          UnsafeMutablePointer.deallocate()();
        }

        v95 = *(v143 + 720);
        v96 = *(v143 + 688);
        v94 = *(v143 + 696);

        (*(v94 + 8))(v95, v96);
        for (i = 0; i < v103; ++i)
        {
          v93 = *(v143 + 936);
          v91 = *(v143 + 800);
          v92 = *(v143 + 784);
          kMediaML_throughputStdDev.unsafeMutableAddressor();

          DataFrame.subscript.getter();
          AnyColumn.subscript.getter();
          v93(v91, v92);
          if (!*(v143 + 328))
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          outlined init with take of Any(v143 + 304, v143 + 272);
          swift_dynamicCast();
          *(v143 + 648) = *(v143 + 640);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
          Array.append(_:)();

          if (__OFADD__(i, 1))
          {
            goto LABEL_55;
          }

          *(v143 + 568) = i + 1;
        }

        v90 = Array.count.getter();
        *(v143 + 576) = v90;

        v7 = v90;
        if (__OFSUB__(v90, 1))
        {
          __break(1u);
LABEL_55:
          __break(1u);
          return _swift_task_switch(v7, v8);
        }

        *(v143 + 592) = v90 - 1;
        *(v143 + 600) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
        min<A>(_:_:)();
        v89 = *(v143 + 584);
        *(v143 + 608) = v89;
        if (v90 > 0)
        {
          if (v89 < 0)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          *(v143 + 368) = 0;
          *(v143 + 376) = v89;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
          lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
          Collection<>.makeIterator()();
          *(v143 + 992) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
          IndexingIterator.next()();
          if ((*(v143 + 472) & 1) == 0)
          {
            break;
          }
        }

        v81 = *(v143 + 888);
        v80 = *(v143 + 856);
        v79 = *(v143 + 864);
        outlined destroy of [Double]((v143 + 560));
        (*(v79 + 8))(v81, v80);
        outlined destroy of Any?((v143 + 112));
      }

      *(v143 + 616) = *(v143 + 464);
      outlined init with copy of Any?(v143 + 48, v143 + 176);
      if (!*(v143 + 200))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      outlined init with take of Any(v143 + 176, v143 + 144);
      swift_dynamicCast();
      v87 = *(v143 + 384);
      v88 = *(v143 + 392);
      *(v143 + 1000) = v88;
      *(v143 + 400) = v87;
      *(v143 + 408) = v88;
      outlined init with copy of Any?(v143 + 112, v143 + 240);
      if (!*(v143 + 264))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v85 = *(v143 + 928);
      v86 = *(v143 + 904);
      outlined init with take of Any(v143 + 240, v143 + 208);
      swift_dynamicCast();
      v82 = *(v143 + 416);
      v83 = *(v143 + 424);
      *(v143 + 1008) = v83;
      *(v143 + 432) = v82;
      *(v143 + 440) = v83;
      Array.subscript.getter();
      v84 = *(v143 + 624);
      *(v143 + 632) = v84;
      *(v143 + 1016) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO wifiStdDev (app_name, ssid, throughput_stddev, training_date) VALUES (?, ?, ?, ?)", 0x5DuLL, 1);

      v12 = swift_task_alloc();
      v8 = v86;
      *(v143 + 1032) = v12;
      v12[2] = v87;
      v12[3] = v88;
      v12[4] = v82;
      v12[5] = v83;
      v12[6] = v84;
      v12[7] = v85;
      v7 = MediaMLWorker.saveWiFiDataStandardDeviation();

      return _swift_task_switch(v7, v8);
    }
  }

  v54 = *(v143 + 896);
  v57 = *(v143 + 880);
  v58 = *(v143 + 856);
  v13 = *(v143 + 712);
  v52 = *(v143 + 688);
  v53 = *(v143 + 864);
  v51 = *(v143 + 696);
  outlined destroy of IndexingIterator<AnyColumnSlice>(*(v143 + 776));
  v14 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v51 + 16))(v13, v14, v52);
  v55 = *(v53 + 16);
  v55(v57, v54, v58);
  v56 = *(v53 + 80);
  v60 = swift_allocObject();
  v59 = *(v53 + 32);
  v59(v60 + ((v56 + 16) & ~v56), v57, v58);
  v55(v57, v54, v58);
  v62 = swift_allocObject();
  v59(v62 + ((v56 + 16) & ~v56), v57, v58);
  log = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v61 = swift_allocObject();
  *(v61 + 16) = partial apply for implicit closure #5 in MediaMLWorker.saveWiFiDataStandardDeviation();
  *(v61 + 24) = v60;
  v66 = swift_allocObject();
  *(v66 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v66 + 24) = v61;
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v63 = swift_allocObject();
  *(v63 + 16) = partial apply for implicit closure #6 in MediaMLWorker.saveWiFiDataStandardDeviation();
  *(v63 + 24) = v62;
  v69 = swift_allocObject();
  *(v69 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v69 + 24) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v70 = v15;

  *v70 = closure #1 in OSLogArguments.append(_:)partial apply;
  v70[1] = v64;

  v70[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v70[3] = v65;

  v70[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v70[5] = v66;

  v70[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v70[7] = v67;

  v70[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v70[9] = v68;

  v70[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v70[11] = v69;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v72))
  {
    v48 = static UnsafeMutablePointer.allocate(capacity:)();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v49 = createStorage<A>(capacity:type:)(0, v47, v47);
    v50 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v146 = v48;
    v147 = v49;
    v148 = v50;
    serialize(_:at:)(0, &v146);
    serialize(_:at:)(2, &v146);
    v149 = closure #1 in OSLogArguments.append(_:)partial apply;
    v150 = v64;
    closure #1 in osLogInternal(_:log:type:)(&v149, &v146, &v147, &v148);
    if (v138)
    {
    }

    v149 = closure #1 in OSLogArguments.append(_:)partial apply;
    v150 = v65;
    closure #1 in osLogInternal(_:log:type:)(&v149, &v146, &v147, &v148);
    v149 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v150 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v149, &v146, &v147, &v148);
    v149 = closure #1 in OSLogArguments.append(_:)partial apply;
    v150 = v67;
    closure #1 in osLogInternal(_:log:type:)(&v149, &v146, &v147, &v148);
    v149 = closure #1 in OSLogArguments.append(_:)partial apply;
    v150 = v68;
    closure #1 in osLogInternal(_:log:type:)(&v149, &v146, &v147, &v148);
    v149 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v150 = v69;
    closure #1 in osLogInternal(_:log:type:)(&v149, &v146, &v147, &v148);
    _os_log_impl(&_mh_execute_header, log, v72, "Returning a dataframe of size=%ld,%ld", v48, 0x16u);
    destroyStorage<A>(_:count:)(v49, 0);
    destroyStorage<A>(_:count:)(v50, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v44 = *(v143 + 896);
  v43 = *(v143 + 856);
  v45 = *(v143 + 848);
  v41 = *(v143 + 816);
  v46 = *(v143 + 712);
  v39 = *(v143 + 688);
  v42 = *(v143 + 864);
  v40 = *(v143 + 824);
  v38 = *(v143 + 696);

  (*(v38 + 8))(v46, v39);
  (*(v40 + 8))(v45, v41);
  (*(v42 + 8))(v44, v43);

  v16 = *(*(v143 + 480) + 8);

  return v16();
}

{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[124];
  v0[60] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, partial apply for closure #4 in MediaMLWorker.saveWiFiDataStandardDeviation());
  v0[130] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.saveWiFiDataStandardDeviation();
  }

  else
  {

    v4 = MediaMLWorker.saveWiFiDataStandardDeviation();
  }

  return _swift_task_switch(v4, 0);
}

{
  v116 = v0;
  *(v0 + 480) = v0;

  for (i = *(v0 + 1040); ; i = 0)
  {
    *(v109 + 992) = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
    IndexingIterator.next()();
    if ((*(v109 + 472) & 1) == 0)
    {
      break;
    }

    v58 = i;
    while (2)
    {
      v57 = *(v109 + 888);
      v56 = *(v109 + 856);
      v55 = *(v109 + 864);
      outlined destroy of [Double]((v109 + 560));
      (*(v55 + 8))(v57, v56);
      outlined destroy of Any?((v109 + 112));
      for (j = v58; ; j = 0)
      {
        IndexingIterator.next()();
        if (*(v109 + 104) != 1)
        {
          break;
        }

        v50 = *(v109 + 976);
        v51 = *(v109 + 832);
        v49 = *(v109 + 816);
        v53 = *(v109 + 752);
        v54 = *(v109 + 728);
        v52 = *(v109 + 736);
        outlined destroy of IndexingIterator<AnyColumnSlice>(*(v109 + 768));
        v50(v51, v49);
        (*(v52 + 8))(v53, v54);
        outlined destroy of Any?((v109 + 48));
        IndexingIterator.next()();
        if (*(v109 + 40) == 1)
        {
          v30 = *(v109 + 896);
          v33 = *(v109 + 880);
          v34 = *(v109 + 856);
          v10 = *(v109 + 712);
          v28 = *(v109 + 688);
          v29 = *(v109 + 864);
          v27 = *(v109 + 696);
          outlined destroy of IndexingIterator<AnyColumnSlice>(*(v109 + 776));
          v11 = MediaMLWorker.logger.unsafeMutableAddressor();
          (*(v27 + 16))(v10, v11, v28);
          v31 = *(v29 + 16);
          v31(v33, v30, v34);
          v32 = *(v29 + 80);
          v36 = swift_allocObject();
          v35 = *(v29 + 32);
          v35(v36 + ((v32 + 16) & ~v32), v33, v34);
          v31(v33, v30, v34);
          v38 = swift_allocObject();
          v35(v38 + ((v32 + 16) & ~v32), v33, v34);
          log = Logger.logObject.getter();
          v48 = static os_log_type_t.debug.getter();
          v40 = swift_allocObject();
          *(v40 + 16) = 0;
          v41 = swift_allocObject();
          *(v41 + 16) = 8;
          v37 = swift_allocObject();
          *(v37 + 16) = partial apply for implicit closure #5 in MediaMLWorker.saveWiFiDataStandardDeviation();
          *(v37 + 24) = v36;
          v42 = swift_allocObject();
          *(v42 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
          *(v42 + 24) = v37;
          v43 = swift_allocObject();
          *(v43 + 16) = 0;
          v44 = swift_allocObject();
          *(v44 + 16) = 8;
          v39 = swift_allocObject();
          *(v39 + 16) = partial apply for implicit closure #6 in MediaMLWorker.saveWiFiDataStandardDeviation();
          *(v39 + 24) = v38;
          v45 = swift_allocObject();
          *(v45 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
          *(v45 + 24) = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          _allocateUninitializedArray<A>(_:)();
          v46 = v12;

          *v46 = closure #1 in OSLogArguments.append(_:)partial apply;
          v46[1] = v40;

          v46[2] = closure #1 in OSLogArguments.append(_:)partial apply;
          v46[3] = v41;

          v46[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          v46[5] = v42;

          v46[6] = closure #1 in OSLogArguments.append(_:)partial apply;
          v46[7] = v43;

          v46[8] = closure #1 in OSLogArguments.append(_:)partial apply;
          v46[9] = v44;

          v46[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          v46[11] = v45;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(log, v48))
          {
            v24 = static UnsafeMutablePointer.allocate(capacity:)();
            v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v25 = createStorage<A>(capacity:type:)(0, v23, v23);
            v26 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
            v111 = v24;
            v112 = v25;
            v113 = v26;
            serialize(_:at:)(0, &v111);
            serialize(_:at:)(2, &v111);
            v114 = closure #1 in OSLogArguments.append(_:)partial apply;
            v115 = v40;
            closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
            if (j)
            {
            }

            v114 = closure #1 in OSLogArguments.append(_:)partial apply;
            v115 = v41;
            closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
            v114 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
            v115 = v42;
            closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
            v114 = closure #1 in OSLogArguments.append(_:)partial apply;
            v115 = v43;
            closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
            v114 = closure #1 in OSLogArguments.append(_:)partial apply;
            v115 = v44;
            closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
            v114 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
            v115 = v45;
            closure #1 in osLogInternal(_:log:type:)(&v114, &v111, &v112, &v113);
            _os_log_impl(&_mh_execute_header, log, v48, "Returning a dataframe of size=%ld,%ld", v24, 0x16u);
            destroyStorage<A>(_:count:)(v25, 0);
            destroyStorage<A>(_:count:)(v26, 0);
            UnsafeMutablePointer.deallocate()();
          }

          else
          {
          }

          v20 = *(v109 + 896);
          v19 = *(v109 + 856);
          v21 = *(v109 + 848);
          v17 = *(v109 + 816);
          v22 = *(v109 + 712);
          v15 = *(v109 + 688);
          v18 = *(v109 + 864);
          v16 = *(v109 + 824);
          v14 = *(v109 + 696);

          (*(v14 + 8))(v22, v15);
          (*(v16 + 8))(v21, v17);
          (*(v18 + 8))(v20, v19);

          v13 = *(*(v109 + 480) + 8);

          return v13();
        }

        *(v109 + 48) = *(v109 + 16);
        *(v109 + 64) = *(v109 + 32);
        kMediaML_appName.unsafeMutableAddressor();

        *(swift_task_alloc() + 16) = v109 + 48;
        DataFrame.filter<A>(on:_:_:)();
        if (j)
        {
        }

        v106 = *(v109 + 952);
        v103 = *(v109 + 840);
        v105 = *(v109 + 832);
        v107 = *(v109 + 816);
        v104 = *(v109 + 824);

        kMediaML_ssid.unsafeMutableAddressor();

        DataFrame.Slice.subscript.getter();
        AnyColumnSlice.distinct()();
        v1 = *(v104 + 8);
        *(v109 + 976) = v1;
        *(v109 + 984) = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v1(v103, v107);

        v106(v103, v105, v107);
        Collection<>.makeIterator()();
      }

      *(v109 + 112) = *(v109 + 80);
      *(v109 + 128) = *(v109 + 96);
      kMediaML_ssid.unsafeMutableAddressor();

      *(swift_task_alloc() + 16) = v109 + 112;
      DataFrame.Slice.filter<A>(on:_:_:)();
      if (j)
      {
      }

      v84 = *(v109 + 888);
      v87 = *(v109 + 880);
      v88 = *(v109 + 856);
      v79 = *(v109 + 720);
      v82 = *(v109 + 688);
      v83 = *(v109 + 864);
      v81 = *(v109 + 696);

      DataFrame.init(_:)();
      v80 = DataFrame.shape.getter();
      *(v109 + 552) = v80;
      *(v109 + 560) = _allocateUninitializedArray<A>(_:)();
      *(v109 + 568) = 0;
      v2 = MediaMLWorker.logger.unsafeMutableAddressor();
      (*(v81 + 16))(v79, v2, v82);
      v85 = *(v83 + 16);
      v85(v87, v84, v88);
      v86 = *(v83 + 80);
      v90 = swift_allocObject();
      v89 = *(v83 + 32);
      v89(v90 + ((v86 + 16) & ~v86), v87, v88);
      v85(v87, v84, v88);
      v92 = swift_allocObject();
      v89(v92 + ((v86 + 16) & ~v86), v87, v88);
      oslog = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();
      v94 = swift_allocObject();
      *(v94 + 16) = 0;
      v95 = swift_allocObject();
      *(v95 + 16) = 8;
      v91 = swift_allocObject();
      *(v91 + 16) = partial apply for implicit closure #3 in MediaMLWorker.saveWiFiDataStandardDeviation();
      *(v91 + 24) = v90;
      v96 = swift_allocObject();
      *(v96 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v96 + 24) = v91;
      v97 = swift_allocObject();
      *(v97 + 16) = 0;
      v98 = swift_allocObject();
      *(v98 + 16) = 8;
      v93 = swift_allocObject();
      *(v93 + 16) = partial apply for implicit closure #4 in MediaMLWorker.saveWiFiDataStandardDeviation();
      *(v93 + 24) = v92;
      v99 = swift_allocObject();
      *(v99 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v99 + 24) = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v100 = v3;

      *v100 = closure #1 in OSLogArguments.append(_:)partial apply;
      v100[1] = v94;

      v100[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v100[3] = v95;

      v100[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v100[5] = v96;

      v100[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v100[7] = v97;

      v100[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v100[9] = v98;

      v100[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v100[11] = v99;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v102))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v77 = createStorage<A>(capacity:type:)(0, v75, v75);
        v78 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v109 + 656) = buf;
        *(v109 + 664) = v77;
        *(v109 + 672) = v78;
        serialize(_:at:)(0, (v109 + 656));
        serialize(_:at:)(2, (v109 + 656));
        *(v109 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v109 + 456) = v94;
        closure #1 in osLogInternal(_:log:type:)((v109 + 448), v109 + 656, v109 + 664, v109 + 672);
        *(v109 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v109 + 456) = v95;
        closure #1 in osLogInternal(_:log:type:)((v109 + 448), v109 + 656, v109 + 664, v109 + 672);
        *(v109 + 448) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v109 + 456) = v96;
        closure #1 in osLogInternal(_:log:type:)((v109 + 448), v109 + 656, v109 + 664, v109 + 672);
        *(v109 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v109 + 456) = v97;
        closure #1 in osLogInternal(_:log:type:)((v109 + 448), v109 + 656, v109 + 664, v109 + 672);
        *(v109 + 448) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v109 + 456) = v98;
        closure #1 in osLogInternal(_:log:type:)((v109 + 448), v109 + 656, v109 + 664, v109 + 672);
        *(v109 + 448) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        *(v109 + 456) = v99;
        closure #1 in osLogInternal(_:log:type:)((v109 + 448), v109 + 656, v109 + 664, v109 + 672);
        _os_log_impl(&_mh_execute_header, oslog, v102, "Filtered dataframe shape=%ld,%ld", buf, 0x16u);
        destroyStorage<A>(_:count:)(v77, 0);
        destroyStorage<A>(_:count:)(v78, 0);
        UnsafeMutablePointer.deallocate()();
      }

      v72 = *(v109 + 720);
      v73 = *(v109 + 688);
      v71 = *(v109 + 696);

      (*(v71 + 8))(v72, v73);
      for (k = 0; k < v80; ++k)
      {
        v70 = *(v109 + 936);
        v68 = *(v109 + 800);
        v69 = *(v109 + 784);
        kMediaML_throughputStdDev.unsafeMutableAddressor();

        DataFrame.subscript.getter();
        AnyColumn.subscript.getter();
        v70(v68, v69);
        if (!*(v109 + 328))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        outlined init with take of Any(v109 + 304, v109 + 272);
        swift_dynamicCast();
        *(v109 + 648) = *(v109 + 640);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
        Array.append(_:)();

        if (__OFADD__(k, 1))
        {
          goto LABEL_46;
        }

        *(v109 + 568) = k + 1;
      }

      v67 = Array.count.getter();
      *(v109 + 576) = v67;

      v4 = v67;
      if (__OFSUB__(v67, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        return _swift_task_switch(v4, v5);
      }

      *(v109 + 592) = v67 - 1;
      *(v109 + 600) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
      min<A>(_:_:)();
      v66 = *(v109 + 584);
      *(v109 + 608) = v66;
      if (v67 <= 0)
      {
        v58 = 0;
        continue;
      }

      break;
    }

    if (v66 < 0)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *(v109 + 368) = 0;
    *(v109 + 376) = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
  }

  *(v109 + 616) = *(v109 + 464);
  outlined init with copy of Any?(v109 + 48, v109 + 176);
  if (!*(v109 + 200))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  outlined init with take of Any(v109 + 176, v109 + 144);
  swift_dynamicCast();
  v64 = *(v109 + 384);
  v65 = *(v109 + 392);
  *(v109 + 1000) = v65;
  *(v109 + 400) = v64;
  *(v109 + 408) = v65;
  outlined init with copy of Any?(v109 + 112, v109 + 240);
  if (!*(v109 + 264))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v62 = *(v109 + 928);
  v63 = *(v109 + 904);
  outlined init with take of Any(v109 + 240, v109 + 208);
  swift_dynamicCast();
  v59 = *(v109 + 416);
  v60 = *(v109 + 424);
  *(v109 + 1008) = v60;
  *(v109 + 432) = v59;
  *(v109 + 440) = v60;
  Array.subscript.getter();
  v61 = *(v109 + 624);
  *(v109 + 632) = v61;
  *(v109 + 1016) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO wifiStdDev (app_name, ssid, throughput_stddev, training_date) VALUES (?, ?, ?, ?)", 0x5DuLL, 1);

  v9 = swift_task_alloc();
  v5 = v63;
  *(v109 + 1032) = v9;
  v9[2] = v64;
  v9[3] = v65;
  v9[4] = v59;
  v9[5] = v60;
  v9[6] = v61;
  v9[7] = v62;
  v4 = MediaMLWorker.saveWiFiDataStandardDeviation();

  return _swift_task_switch(v4, v5);
}

{
  *(v0 + 480) = v0;

  v1 = *(*(v0 + 480) + 8);

  return v1();
}

{
  v12 = v0[122];
  v14 = v0[112];
  v4 = v0[111];
  v3 = v0[108];
  v15 = v0[107];
  v13 = v0[106];
  v6 = v0[104];
  v11 = v0[102];
  v10 = v0[97];
  v5 = v0[96];
  v8 = v0[94];
  v7 = v0[92];
  v9 = v0[91];
  v0[60] = v0;

  outlined destroy of [Double](v0 + 70);
  v16 = *(v3 + 8);
  v16(v4, v15);
  outlined destroy of Any?(v0 + 14);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v5);
  v12(v6, v11);
  (*(v7 + 8))(v8, v9);
  outlined destroy of Any?(v0 + 6);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v10);
  v12(v13, v11);
  v16(v14, v15);

  v1 = *(v0[60] + 8);

  return v1();
}

void MediaMLWorker.saveWiFiDataStandardDeviation()()
{
  *(v0 + 480) = v0;
  v12 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.saveWiFiDataStandardDeviation(), 0, v12, v1, v1);

  v10 = v11[62];
  v11[113] = v10;
  if (v10)
  {
    v11[63] = v10;
    v2 = swift_task_alloc();
    v11[114] = v2;
    *v2 = v11[60];
    v2[1] = MediaMLWorker.saveWiFiDataStandardDeviation();
    v3 = v11[112];

    MediaMLWorker.getWiFiDataStandardDeviation()(v3);
  }

  else
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v14 = SQLError.init(code:desc:)(-3, v4);
    code = v14.code;
    desc_8 = v14.desc.value._countAndFlagsBits;
    object = v14.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v5 = code;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = object;
    swift_willThrow();

    v6 = *(v11[60] + 8);

    v6();
  }
}

uint64_t MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:)(uint64_t a1)
{
  v2[12] = v1;
  v2[11] = a1;
  v2[4] = v2;
  v2[6] = 0;
  v2[7] = 0;
  v2[9] = 0;
  v2[6] = a1;
  v2[7] = v1;
  return _swift_task_switch(MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:), 0);
}

void MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:)()
{
  *(v0 + 32) = v0;
  v15 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:), 0, v15, v1, v1);
  *(v0 + 104) = 0;

  v13 = v14[8];
  v14[14] = v13;
  if (v13)
  {
    v12 = v14[11];
    v14[9] = v13;
    v14[2] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v14[3] = v2;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM wifiStdDev WHERE training_date < ", 0x2DuLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v3);

    v14[5] = *(v12 + 72);
    v14[10] = v14[5];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v4);

    outlined destroy of DefaultStringInterpolation((v14 + 2));
    v14[15] = String.init(stringInterpolation:)();
    v14[16] = v5;

    _swift_task_switch(MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:), v13);
  }

  else
  {
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v17 = SQLError.init(code:desc:)(-3, v6);
    code = v17.code;
    desc_8 = v17.desc.value._countAndFlagsBits;
    object = v17.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v7 = code;
    *(v7 + 8) = desc_8;
    *(v7 + 16) = object;
    swift_willThrow();
    v8 = *(v14[4] + 8);

    v8();
  }
}

uint64_t MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:)()
{
  v1 = *(v0 + 120);
  *(v0 + 32) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 136) = v2;
  if (v2)
  {
    v3 = MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:);
  }

  else
  {

    v3 = MediaMLWorker.deletePreviousWiFiStdDevDB(modelStats:);
  }

  return _swift_task_switch(v3, 0);
}

{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(uint64_t a1)
{
  *(v2 + 840) = v1;
  *(v2 + 832) = a1;
  *(v2 + 608) = v2;
  *(v2 + 616) = 0;
  *(v2 + 624) = 0;
  *(v2 + 640) = 0;
  *(v2 + 680) = 0;
  *(v2 + 688) = 0;
  *(v2 + 696) = 0;
  *(v2 + 704) = 0;
  *(v2 + 712) = 0;
  *(v2 + 744) = 0;
  *(v2 + 464) = 0;
  *(v2 + 472) = 0;
  *(v2 + 480) = 0;
  *(v2 + 488) = 0;
  *(v2 + 752) = 0;
  *(v2 + 528) = 0;
  *(v2 + 536) = 0;
  *(v2 + 560) = 0;
  *(v2 + 568) = 0;
  *(v2 + 768) = 0;
  *(v2 + 784) = 0;
  v3 = type metadata accessor for Logger();
  *(v2 + 848) = v3;
  *(v2 + 856) = *(v3 - 8);
  *(v2 + 864) = swift_task_alloc();
  *(v2 + 872) = swift_task_alloc();
  *(v2 + 880) = swift_task_alloc();
  v4 = type metadata accessor for DataFrame();
  *(v2 + 888) = v4;
  v9 = *(v4 - 8);
  *(v2 + 896) = v9;
  *(v2 + 904) = *(v9 + 64);
  *(v2 + 912) = swift_task_alloc();
  *(v2 + 920) = swift_task_alloc();
  *(v2 + 928) = swift_task_alloc();
  v5 = type metadata accessor for DataFrame.Slice();
  *(v2 + 936) = v5;
  *(v2 + 944) = *(v5 - 8);
  *(v2 + 952) = swift_task_alloc();
  *(v2 + 960) = swift_task_alloc();
  *(v2 + 968) = swift_task_alloc();
  *(v2 + 976) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy11TabularData14AnyColumnSliceVGMd, &_ss16IndexingIteratorVy11TabularData14AnyColumnSliceVGMR);
  *(v2 + 984) = swift_task_alloc();
  *(v2 + 992) = swift_task_alloc();
  *(v2 + 1000) = swift_task_alloc();
  v6 = type metadata accessor for AnyColumn();
  *(v2 + 1008) = v6;
  *(v2 + 1016) = *(v6 - 8);
  *(v2 + 1024) = swift_task_alloc();
  *(v2 + 1032) = swift_task_alloc();
  v7 = type metadata accessor for AnyColumnSlice();
  *(v2 + 1040) = v7;
  *(v2 + 1048) = *(v7 - 8);
  *(v2 + 1056) = swift_task_alloc();
  *(v2 + 1064) = swift_task_alloc();
  *(v2 + 1072) = swift_task_alloc();
  *(v2 + 1080) = swift_task_alloc();
  *(v2 + 616) = a1;
  *(v2 + 624) = v1;

  return _swift_task_switch(MediaMLWorker.saveCellDataStandardDeviation(dataFrame:), 0);
}

void MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)()
{
  v166 = v0;
  *(v0 + 608) = v0;
  v160 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:), 0, v160, v1, v1);

  v158 = *(v159 + 632);
  *(v159 + 1088) = v158;
  if (!v158)
  {
    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v168 = SQLError.init(code:desc:)(-3, v20);
    code = v168.code;
    desc_8 = v168.desc.value._countAndFlagsBits;
    object = v168.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v21 = code;
    *(v21 + 8) = desc_8;
    *(v21 + 16) = object;
    swift_willThrow();
LABEL_53:

    v22 = *(*(v159 + 608) + 8);

    v22();
    return;
  }

  *(v159 + 640) = v158;
  v156 = *kMediaML_appName.unsafeMutableAddressor();

  v157 = DataFrame.containsColumn(_:)(v156);

  if (!v157 || (v154 = *kMediaML_carrier.unsafeMutableAddressor(), , v155 = DataFrame.containsColumn(_:)(v154), , !v155) || (v152 = *kMediaML_bars.unsafeMutableAddressor(), , v153 = DataFrame.containsColumn(_:)(v152), , !v153) || (v150 = *kMediaML_throughputStdDev.unsafeMutableAddressor(), , v151 = DataFrame.containsColumn(_:)(v150), , !v151))
  {
    v17 = *(v159 + 864);
    v35 = *(v159 + 848);
    v34 = *(v159 + 856);
    v18 = MediaMLWorker.logger.unsafeMutableAddressor();
    (*(v34 + 16))(v17, v18, v35);
    v37 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v38 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v37, v36))
    {
      v30 = static UnsafeMutablePointer.allocate(capacity:)();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v31 = createStorage<A>(capacity:type:)(0, v29, v29);
      v32 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v159 + 648) = v30;
      *(v159 + 656) = v31;
      *(v159 + 664) = v32;
      serialize(_:at:)(0, (v159 + 648));
      serialize(_:at:)(0, (v159 + 648));
      *(v159 + 672) = v38;
      v33 = swift_task_alloc();
      v33[2] = v159 + 648;
      v33[3] = v159 + 656;
      v33[4] = v159 + 664;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v37, v36, "saveCellDataStandardDeviation: DataFrame did not contain all required columns", v30, 2u);
      destroyStorage<A>(_:count:)(v31, 0);
      destroyStorage<A>(_:count:)(v32, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v27 = *(v159 + 864);
    v28 = *(v159 + 848);
    v26 = *(v159 + 856);

    (*(v26 + 8))(v27, v28);
    lazy protocol witness table accessor for type WorkerErrors and conformance WorkerErrors();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    goto LABEL_53;
  }

  v148 = *(v159 + 1080);
  v143 = *(v159 + 1072);
  v149 = *(v159 + 1040);
  v145 = *(v159 + 1032);
  v146 = *(v159 + 1008);
  v147 = *(v159 + 1048);
  v144 = *(v159 + 1016);
  DateIn = getDateInEpoch()();
  *(v159 + 1096) = DateIn;
  *(v159 + 680) = DateIn;
  kMediaML_appName.unsafeMutableAddressor();

  DataFrame.subscript.getter();
  AnyColumn.distinct()();
  v3 = *(v144 + 8);
  *(v159 + 1104) = v3;
  *(v159 + 1112) = (v144 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v145, v146);

  v4 = *(v147 + 16);
  *(v159 + 1120) = v4;
  *(v159 + 1128) = (v147 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4(v143, v148, v149);
  *(v159 + 1136) = lazy protocol witness table accessor for type AnyColumnSlice and conformance AnyColumnSlice();
  Collection<>.makeIterator()();
  while (1)
  {
    IndexingIterator.next()();
    if (*(v159 + 40) == 1)
    {
      v55 = *(v159 + 912);
      v56 = *(v159 + 888);
      v13 = *(v159 + 872);
      v50 = *(v159 + 848);
      v52 = *(v159 + 832);
      v51 = *(v159 + 896);
      v49 = *(v159 + 856);
      outlined destroy of IndexingIterator<AnyColumnSlice>(*(v159 + 1000));
      v14 = MediaMLWorker.logger.unsafeMutableAddressor();
      (*(v49 + 16))(v13, v14, v50);
      v53 = *(v51 + 16);
      v53(v55, v52, v56);
      v54 = *(v51 + 80);
      v58 = swift_allocObject();
      v57 = *(v51 + 32);
      v57(v58 + ((v54 + 16) & ~v54), v55, v56);
      v53(v55, v52, v56);
      v60 = swift_allocObject();
      v57(v60 + ((v54 + 16) & ~v54), v55, v56);
      log = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = 8;
      v59 = swift_allocObject();
      *(v59 + 16) = partial apply for implicit closure #6 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
      *(v59 + 24) = v58;
      v64 = swift_allocObject();
      *(v64 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v64 + 24) = v59;
      v65 = swift_allocObject();
      *(v65 + 16) = 0;
      v66 = swift_allocObject();
      *(v66 + 16) = 8;
      v61 = swift_allocObject();
      *(v61 + 16) = partial apply for implicit closure #7 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
      *(v61 + 24) = v60;
      v67 = swift_allocObject();
      *(v67 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
      *(v67 + 24) = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      _allocateUninitializedArray<A>(_:)();
      v68 = v15;

      *v68 = closure #1 in OSLogArguments.append(_:)partial apply;
      v68[1] = v62;

      v68[2] = closure #1 in OSLogArguments.append(_:)partial apply;
      v68[3] = v63;

      v68[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v68[5] = v64;

      v68[6] = closure #1 in OSLogArguments.append(_:)partial apply;
      v68[7] = v65;

      v68[8] = closure #1 in OSLogArguments.append(_:)partial apply;
      v68[9] = v66;

      v68[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      v68[11] = v67;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v70))
      {
        v46 = static UnsafeMutablePointer.allocate(capacity:)();
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v47 = createStorage<A>(capacity:type:)(0, v45, v45);
        v48 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
        v161 = v46;
        v162 = v47;
        v163 = v48;
        serialize(_:at:)(0, &v161);
        serialize(_:at:)(2, &v161);
        v164 = closure #1 in OSLogArguments.append(_:)partial apply;
        v165 = v62;
        closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
        v164 = closure #1 in OSLogArguments.append(_:)partial apply;
        v165 = v63;
        closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
        v164 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v165 = v64;
        closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
        v164 = closure #1 in OSLogArguments.append(_:)partial apply;
        v165 = v65;
        closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
        v164 = closure #1 in OSLogArguments.append(_:)partial apply;
        v165 = v66;
        closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
        v164 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
        v165 = v67;
        closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
        _os_log_impl(&_mh_execute_header, log, v70, "Returning a dataframe of size=%ld,%ld", v46, 0x16u);
        destroyStorage<A>(_:count:)(v47, 0);
        destroyStorage<A>(_:count:)(v48, 0);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v43 = *(v159 + 1080);
      v42 = *(v159 + 1040);
      v44 = *(v159 + 872);
      v40 = *(v159 + 848);
      v41 = *(v159 + 1048);
      v39 = *(v159 + 856);

      (*(v39 + 8))(v44, v40);
      (*(v41 + 8))(v43, v42);

      v16 = *(*(v159 + 608) + 8);

      v16();
      return;
    }

    *(v159 + 48) = *(v159 + 16);
    *(v159 + 64) = *(v159 + 32);
    kMediaML_appName.unsafeMutableAddressor();

    *(swift_task_alloc() + 16) = v159 + 48;
    DataFrame.filter<A>(on:_:_:)();
    v141 = *(v159 + 1120);
    v138 = *(v159 + 1072);
    v140 = *(v159 + 1064);
    v142 = *(v159 + 1040);
    v139 = *(v159 + 1048);

    kMediaML_carrier.unsafeMutableAddressor();

    DataFrame.Slice.subscript.getter();
    AnyColumnSlice.distinct()();
    v5 = *(v139 + 8);
    *(v159 + 1144) = v5;
    *(v159 + 1152) = (v139 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v138, v142);

    v141(v138, v140, v142);
    Collection<>.makeIterator()();
LABEL_11:
    IndexingIterator.next()();
    if (*(v159 + 104) != 1)
    {
      break;
    }

    v72 = *(v159 + 1144);
    v73 = *(v159 + 1064);
    v71 = *(v159 + 1040);
    v75 = *(v159 + 968);
    v76 = *(v159 + 936);
    v74 = *(v159 + 944);
    outlined destroy of IndexingIterator<AnyColumnSlice>(*(v159 + 992));
    v72(v73, v71);
    (*(v74 + 8))(v75, v76);
    outlined destroy of Any?((v159 + 48));
  }

  *(v159 + 112) = *(v159 + 80);
  *(v159 + 128) = *(v159 + 96);
  kMediaML_carrier.unsafeMutableAddressor();

  *(swift_task_alloc() + 16) = v159 + 112;
  DataFrame.Slice.filter<A>(on:_:_:)();
  v136 = *(v159 + 1120);
  v134 = *(v159 + 1104);
  v131 = *(v159 + 1072);
  v135 = *(v159 + 1056);
  v137 = *(v159 + 1040);
  v132 = *(v159 + 1032);
  v133 = *(v159 + 1008);

  DataFrame.init(_:)();
  kMediaML_bars.unsafeMutableAddressor();

  DataFrame.subscript.getter();
  AnyColumn.distinct()();
  v134(v132, v133);

  v136(v131, v135, v137);
  Collection<>.makeIterator()();
  while (1)
  {
    IndexingIterator.next()();
    if (*(v159 + 168) == 1)
    {
      v78 = *(v159 + 1144);
      v79 = *(v159 + 1056);
      v77 = *(v159 + 1040);
      v81 = *(v159 + 928);
      v82 = *(v159 + 888);
      v80 = *(v159 + 896);
      outlined destroy of IndexingIterator<AnyColumnSlice>(*(v159 + 984));
      v78(v79, v77);
      (*(v80 + 8))(v81, v82);
      outlined destroy of Any?((v159 + 112));
      goto LABEL_11;
    }

    *(v159 + 176) = *(v159 + 144);
    *(v159 + 192) = *(v159 + 160);
    kMediaML_bars.unsafeMutableAddressor();

    *(swift_task_alloc() + 16) = v159 + 176;
    DataFrame.filter<A>(on:_:_:)();
    v112 = *(v159 + 920);
    v115 = *(v159 + 912);
    v116 = *(v159 + 888);
    v107 = *(v159 + 880);
    v110 = *(v159 + 848);
    v111 = *(v159 + 896);
    v109 = *(v159 + 856);

    DataFrame.init(_:)();
    v108 = DataFrame.shape.getter();
    *(v159 + 688) = v108;
    *(v159 + 696) = _allocateUninitializedArray<A>(_:)();
    *(v159 + 704) = 0;
    v6 = MediaMLWorker.logger.unsafeMutableAddressor();
    (*(v109 + 16))(v107, v6, v110);
    v113 = *(v111 + 16);
    v113(v115, v112, v116);
    v114 = *(v111 + 80);
    v118 = swift_allocObject();
    v117 = *(v111 + 32);
    v117(v118 + ((v114 + 16) & ~v114), v115, v116);
    v113(v115, v112, v116);
    v120 = swift_allocObject();
    v117(v120 + ((v114 + 16) & ~v114), v115, v116);
    oslog = Logger.logObject.getter();
    v130 = static os_log_type_t.debug.getter();
    v122 = swift_allocObject();
    *(v122 + 16) = 0;
    v123 = swift_allocObject();
    *(v123 + 16) = 8;
    v119 = swift_allocObject();
    *(v119 + 16) = partial apply for implicit closure #4 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
    *(v119 + 24) = v118;
    v124 = swift_allocObject();
    *(v124 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v124 + 24) = v119;
    v125 = swift_allocObject();
    *(v125 + 16) = 0;
    v126 = swift_allocObject();
    *(v126 + 16) = 8;
    v121 = swift_allocObject();
    *(v121 + 16) = partial apply for implicit closure #5 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
    *(v121 + 24) = v120;
    v127 = swift_allocObject();
    *(v127 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v127 + 24) = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v128 = v7;

    *v128 = closure #1 in OSLogArguments.append(_:)partial apply;
    v128[1] = v122;

    v128[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v128[3] = v123;

    v128[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v128[5] = v124;

    v128[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v128[7] = v125;

    v128[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v128[9] = v126;

    v128[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v128[11] = v127;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v130))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v105 = createStorage<A>(capacity:type:)(0, v103, v103);
      v106 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v159 + 808) = buf;
      *(v159 + 816) = v105;
      *(v159 + 824) = v106;
      serialize(_:at:)(0, (v159 + 808));
      serialize(_:at:)(2, (v159 + 808));
      *(v159 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v159 + 584) = v122;
      closure #1 in osLogInternal(_:log:type:)((v159 + 576), v159 + 808, v159 + 816, v159 + 824);
      *(v159 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v159 + 584) = v123;
      closure #1 in osLogInternal(_:log:type:)((v159 + 576), v159 + 808, v159 + 816, v159 + 824);
      *(v159 + 576) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      *(v159 + 584) = v124;
      closure #1 in osLogInternal(_:log:type:)((v159 + 576), v159 + 808, v159 + 816, v159 + 824);
      *(v159 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v159 + 584) = v125;
      closure #1 in osLogInternal(_:log:type:)((v159 + 576), v159 + 808, v159 + 816, v159 + 824);
      *(v159 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v159 + 584) = v126;
      closure #1 in osLogInternal(_:log:type:)((v159 + 576), v159 + 808, v159 + 816, v159 + 824);
      *(v159 + 576) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      *(v159 + 584) = v127;
      closure #1 in osLogInternal(_:log:type:)((v159 + 576), v159 + 808, v159 + 816, v159 + 824);
      _os_log_impl(&_mh_execute_header, oslog, v130, "Filtered dataframe shape=%ld,%ld", buf, 0x16u);
      destroyStorage<A>(_:count:)(v105, 0);
      destroyStorage<A>(_:count:)(v106, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v100 = *(v159 + 880);
    v101 = *(v159 + 848);
    v99 = *(v159 + 856);

    (*(v99 + 8))(v100, v101);
    for (i = 0; i < v108; ++i)
    {
      v98 = *(v159 + 1104);
      v96 = *(v159 + 1024);
      v97 = *(v159 + 1008);
      kMediaML_throughputStdDev.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v98(v96, v97);
      if (!*(v159 + 456))
      {
        goto LABEL_36;
      }

      outlined init with take of Any(v159 + 432, v159 + 400);
      swift_dynamicCast();
      *(v159 + 800) = *(v159 + 792);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      Array.append(_:)();

      if (__OFADD__(i, 1))
      {
        goto LABEL_57;
      }

      *(v159 + 704) = i + 1;
    }

    v95 = Array.count.getter();
    *(v159 + 712) = v95;

    v8 = v95;
    if (__OFSUB__(v95, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto _swift_task_switch;
    }

    *(v159 + 728) = v95 - 1;
    *(v159 + 736) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
    min<A>(_:_:)();
    v94 = *(v159 + 720);
    *(v159 + 744) = v94;
    if (v95 > 0)
    {
      if (v94 < 0)
      {
        goto LABEL_36;
      }

      *(v159 + 496) = 0;
      *(v159 + 504) = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
      lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
      Collection<>.makeIterator()();
      *(v159 + 1160) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
      IndexingIterator.next()();
      if ((*(v159 + 600) & 1) == 0)
      {
        break;
      }
    }

    v85 = *(v159 + 920);
    v84 = *(v159 + 888);
    v83 = *(v159 + 896);
    outlined destroy of [Double]((v159 + 696));
    (*(v83 + 8))(v85, v84);
    outlined destroy of Any?((v159 + 176));
  }

  *(v159 + 752) = *(v159 + 592);
  outlined init with copy of Any?(v159 + 48, v159 + 240);
  if (!*(v159 + 264) || (outlined init with take of Any(v159 + 240, v159 + 208), swift_dynamicCast(), v92 = *(v159 + 512), v93 = *(v159 + 520), *(v159 + 1168) = v93, *(v159 + 528) = v92, *(v159 + 536) = v93, outlined init with copy of Any?(v159 + 112, v159 + 304), !*(v159 + 328)) || (outlined init with take of Any(v159 + 304, v159 + 272), swift_dynamicCast(), v90 = *(v159 + 544), v91 = *(v159 + 552), *(v159 + 1176) = v91, *(v159 + 560) = v90, *(v159 + 568) = v91, outlined init with copy of Any?(v159 + 176, v159 + 368), !*(v159 + 392)))
  {
LABEL_36:
    _assertionFailure(_:_:file:line:flags:)();
    return;
  }

  v88 = *(v159 + 1096);
  v89 = *(v159 + 1088);
  outlined init with take of Any(v159 + 368, v159 + 336);
  swift_dynamicCast();
  v86 = *(v159 + 760);
  *(v159 + 768) = v86;
  Array.subscript.getter();
  v87 = *(v159 + 776);
  *(v159 + 784) = v87;
  *(v159 + 1184) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO cellStdDev (app_name, carrier, bars, throughput_stddev, training_date) VALUES (?, ?, ?, ?, ?)", 0x69uLL, 1);

  v12 = swift_task_alloc();
  v9 = v89;
  *(v159 + 1200) = v12;
  v12[2] = v92;
  v12[3] = v93;
  v12[4] = v90;
  v12[5] = v91;
  v12[6] = v86;
  v12[7] = v87;
  v12[8] = v88;
  v8 = MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);

uint64_t MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)()
{
  v1 = v0[149];
  v2 = v0[148];
  v3 = v0[145];
  v0[76] = v0;
  SQLiteDB.withStatement<A>(sql:handler:)(v2, v1, partial apply for closure #5 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:));
  v0[151] = v3;
  if (v3)
  {
    v4 = MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
  }

  else
  {

    v4 = MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
  }

  return _swift_task_switch(v4, 0);
}

{
  v128 = v0;
  *(v0 + 608) = v0;

  for (i = *(v0 + 1208); ; i = 0)
  {
    *(v121 + 1160) = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
    IndexingIterator.next()();
    if ((*(v121 + 600) & 1) == 0)
    {
      *(v121 + 752) = *(v121 + 592);
      outlined init with copy of Any?(v121 + 48, v121 + 240);
      if (!*(v121 + 264))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      outlined init with take of Any(v121 + 240, v121 + 208);
      swift_dynamicCast();
      v68 = *(v121 + 512);
      v69 = *(v121 + 520);
      *(v121 + 1168) = v69;
      *(v121 + 528) = v68;
      *(v121 + 536) = v69;
      outlined init with copy of Any?(v121 + 112, v121 + 304);
      if (!*(v121 + 328))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      outlined init with take of Any(v121 + 304, v121 + 272);
      swift_dynamicCast();
      v66 = *(v121 + 544);
      v67 = *(v121 + 552);
      *(v121 + 1176) = v67;
      *(v121 + 560) = v66;
      *(v121 + 568) = v67;
      outlined init with copy of Any?(v121 + 176, v121 + 368);
      if (!*(v121 + 392))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v64 = *(v121 + 1096);
      v65 = *(v121 + 1088);
      outlined init with take of Any(v121 + 368, v121 + 336);
      swift_dynamicCast();
      v62 = *(v121 + 760);
      *(v121 + 768) = v62;
      Array.subscript.getter();
      v63 = *(v121 + 776);
      *(v121 + 784) = v63;
      *(v121 + 1184) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSERT INTO cellStdDev (app_name, carrier, bars, throughput_stddev, training_date) VALUES (?, ?, ?, ?, ?)", 0x69uLL, 1);

      v9 = swift_task_alloc();
      v5 = v65;
      *(v121 + 1200) = v9;
      v9[2] = v68;
      v9[3] = v69;
      v9[4] = v66;
      v9[5] = v67;
      v9[6] = v62;
      v9[7] = v63;
      v9[8] = v64;
      v4 = MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);

      return _swift_task_switch(v4, v5);
    }

    v61 = i;
LABEL_38:
    v60 = *(v121 + 920);
    v59 = *(v121 + 888);
    v58 = *(v121 + 896);
    outlined destroy of [Double]((v121 + 696));
    (*(v58 + 8))(v60, v59);
    outlined destroy of Any?((v121 + 176));
    v114 = v61;
LABEL_7:
    IndexingIterator.next()();
    if (*(v121 + 168) == 1)
    {
      break;
    }

    *(v121 + 176) = *(v121 + 144);
    *(v121 + 192) = *(v121 + 160);
    kMediaML_bars.unsafeMutableAddressor();

    *(swift_task_alloc() + 16) = v121 + 176;
    DataFrame.filter<A>(on:_:_:)();
    if (v114)
    {
    }

    v88 = *(v121 + 920);
    v91 = *(v121 + 912);
    v92 = *(v121 + 888);
    v83 = *(v121 + 880);
    v86 = *(v121 + 848);
    v87 = *(v121 + 896);
    v85 = *(v121 + 856);

    DataFrame.init(_:)();
    v84 = DataFrame.shape.getter();
    *(v121 + 688) = v84;
    *(v121 + 696) = _allocateUninitializedArray<A>(_:)();
    *(v121 + 704) = 0;
    v2 = MediaMLWorker.logger.unsafeMutableAddressor();
    (*(v85 + 16))(v83, v2, v86);
    v89 = *(v87 + 16);
    v89(v91, v88, v92);
    v90 = *(v87 + 80);
    v94 = swift_allocObject();
    v93 = *(v87 + 32);
    v93(v94 + ((v90 + 16) & ~v90), v91, v92);
    v89(v91, v88, v92);
    v96 = swift_allocObject();
    v93(v96 + ((v90 + 16) & ~v90), v91, v92);
    oslog = Logger.logObject.getter();
    v106 = static os_log_type_t.debug.getter();
    v98 = swift_allocObject();
    *(v98 + 16) = 0;
    v99 = swift_allocObject();
    *(v99 + 16) = 8;
    v95 = swift_allocObject();
    *(v95 + 16) = partial apply for implicit closure #4 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
    *(v95 + 24) = v94;
    v100 = swift_allocObject();
    *(v100 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v100 + 24) = v95;
    v101 = swift_allocObject();
    *(v101 + 16) = 0;
    v102 = swift_allocObject();
    *(v102 + 16) = 8;
    v97 = swift_allocObject();
    *(v97 + 16) = partial apply for implicit closure #5 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
    *(v97 + 24) = v96;
    v103 = swift_allocObject();
    *(v103 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
    *(v103 + 24) = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v104 = v3;

    *v104 = closure #1 in OSLogArguments.append(_:)partial apply;
    v104[1] = v98;

    v104[2] = closure #1 in OSLogArguments.append(_:)partial apply;
    v104[3] = v99;

    v104[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v104[5] = v100;

    v104[6] = closure #1 in OSLogArguments.append(_:)partial apply;
    v104[7] = v101;

    v104[8] = closure #1 in OSLogArguments.append(_:)partial apply;
    v104[9] = v102;

    v104[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v104[11] = v103;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v106))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v81 = createStorage<A>(capacity:type:)(0, v79, v79);
      v82 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v121 + 808) = buf;
      *(v121 + 816) = v81;
      *(v121 + 824) = v82;
      serialize(_:at:)(0, (v121 + 808));
      serialize(_:at:)(2, (v121 + 808));
      *(v121 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 584) = v98;
      closure #1 in osLogInternal(_:log:type:)((v121 + 576), v121 + 808, v121 + 816, v121 + 824);
      *(v121 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 584) = v99;
      closure #1 in osLogInternal(_:log:type:)((v121 + 576), v121 + 808, v121 + 816, v121 + 824);
      *(v121 + 576) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      *(v121 + 584) = v100;
      closure #1 in osLogInternal(_:log:type:)((v121 + 576), v121 + 808, v121 + 816, v121 + 824);
      *(v121 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 584) = v101;
      closure #1 in osLogInternal(_:log:type:)((v121 + 576), v121 + 808, v121 + 816, v121 + 824);
      *(v121 + 576) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v121 + 584) = v102;
      closure #1 in osLogInternal(_:log:type:)((v121 + 576), v121 + 808, v121 + 816, v121 + 824);
      *(v121 + 576) = closure #1 in OSLogArguments.append<A>(_:)partial apply;
      *(v121 + 584) = v103;
      closure #1 in osLogInternal(_:log:type:)((v121 + 576), v121 + 808, v121 + 816, v121 + 824);
      _os_log_impl(&_mh_execute_header, oslog, v106, "Filtered dataframe shape=%ld,%ld", buf, 0x16u);
      destroyStorage<A>(_:count:)(v81, 0);
      destroyStorage<A>(_:count:)(v82, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v76 = *(v121 + 880);
    v77 = *(v121 + 848);
    v75 = *(v121 + 856);

    (*(v75 + 8))(v76, v77);
    for (j = 0; j < v84; ++j)
    {
      v74 = *(v121 + 1104);
      v72 = *(v121 + 1024);
      v73 = *(v121 + 1008);
      kMediaML_throughputStdDev.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.subscript.getter();
      v74(v72, v73);
      if (!*(v121 + 456))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      outlined init with take of Any(v121 + 432, v121 + 400);
      swift_dynamicCast();
      *(v121 + 800) = *(v121 + 792);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      Array.append(_:)();

      if (__OFADD__(j, 1))
      {
        goto LABEL_51;
      }

      *(v121 + 704) = j + 1;
    }

    v71 = Array.count.getter();
    *(v121 + 712) = v71;

    v4 = v71;
    if (__OFSUB__(v71, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      return _swift_task_switch(v4, v5);
    }

    *(v121 + 728) = v71 - 1;
    *(v121 + 736) = *MAX_ALLOWED_PROCESSED_DATASIZE_WRITE.unsafeMutableAddressor();
    min<A>(_:_:)();
    v70 = *(v121 + 720);
    *(v121 + 744) = v70;
    if (v71 <= 0)
    {
      v61 = 0;
      goto LABEL_38;
    }

    if (v70 < 0)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *(v121 + 496) = 0;
    *(v121 + 504) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    Collection<>.makeIterator()();
  }

  v53 = *(v121 + 1144);
  v54 = *(v121 + 1056);
  v52 = *(v121 + 1040);
  v56 = *(v121 + 928);
  v57 = *(v121 + 888);
  v55 = *(v121 + 896);
  outlined destroy of IndexingIterator<AnyColumnSlice>(*(v121 + 984));
  v53(v54, v52);
  (*(v55 + 8))(v56, v57);
  outlined destroy of Any?((v121 + 112));
  for (k = v114; ; k = 0)
  {
    IndexingIterator.next()();
    if (*(v121 + 104) != 1)
    {
      *(v121 + 112) = *(v121 + 80);
      *(v121 + 128) = *(v121 + 96);
      kMediaML_carrier.unsafeMutableAddressor();

      *(swift_task_alloc() + 16) = v121 + 112;
      DataFrame.Slice.filter<A>(on:_:_:)();
      if (k)
      {
      }

      v112 = *(v121 + 1120);
      v110 = *(v121 + 1104);
      v107 = *(v121 + 1072);
      v111 = *(v121 + 1056);
      v113 = *(v121 + 1040);
      v108 = *(v121 + 1032);
      v109 = *(v121 + 1008);

      DataFrame.init(_:)();
      kMediaML_bars.unsafeMutableAddressor();

      DataFrame.subscript.getter();
      AnyColumn.distinct()();
      v110(v108, v109);

      v112(v107, v111, v113);
      Collection<>.makeIterator()();
      v114 = 0;
      goto LABEL_7;
    }

    v47 = *(v121 + 1144);
    v48 = *(v121 + 1064);
    v46 = *(v121 + 1040);
    v50 = *(v121 + 968);
    v51 = *(v121 + 936);
    v49 = *(v121 + 944);
    outlined destroy of IndexingIterator<AnyColumnSlice>(*(v121 + 992));
    v47(v48, v46);
    (*(v49 + 8))(v50, v51);
    outlined destroy of Any?((v121 + 48));
    IndexingIterator.next()();
    if (*(v121 + 40) == 1)
    {
      break;
    }

    *(v121 + 48) = *(v121 + 16);
    *(v121 + 64) = *(v121 + 32);
    kMediaML_appName.unsafeMutableAddressor();

    *(swift_task_alloc() + 16) = v121 + 48;
    DataFrame.filter<A>(on:_:_:)();
    if (k)
    {
    }

    v118 = *(v121 + 1120);
    v115 = *(v121 + 1072);
    v117 = *(v121 + 1064);
    v119 = *(v121 + 1040);
    v116 = *(v121 + 1048);

    kMediaML_carrier.unsafeMutableAddressor();

    DataFrame.Slice.subscript.getter();
    AnyColumnSlice.distinct()();
    v1 = *(v116 + 8);
    *(v121 + 1144) = v1;
    *(v121 + 1152) = (v116 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v1(v115, v119);

    v118(v115, v117, v119);
    Collection<>.makeIterator()();
  }

  v30 = *(v121 + 912);
  v31 = *(v121 + 888);
  v10 = *(v121 + 872);
  v25 = *(v121 + 848);
  v27 = *(v121 + 832);
  v26 = *(v121 + 896);
  v24 = *(v121 + 856);
  outlined destroy of IndexingIterator<AnyColumnSlice>(*(v121 + 1000));
  v11 = MediaMLWorker.logger.unsafeMutableAddressor();
  (*(v24 + 16))(v10, v11, v25);
  v28 = *(v26 + 16);
  v28(v30, v27, v31);
  v29 = *(v26 + 80);
  v33 = swift_allocObject();
  v32 = *(v26 + 32);
  v32(v33 + ((v29 + 16) & ~v29), v30, v31);
  v28(v30, v27, v31);
  v35 = swift_allocObject();
  v32(v35 + ((v29 + 16) & ~v29), v30, v31);
  log = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #6 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
  *(v34 + 24) = v33;
  v39 = swift_allocObject();
  *(v39 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v39 + 24) = v34;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = partial apply for implicit closure #7 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:);
  *(v36 + 24) = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  *(v42 + 24) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v43 = v12;

  *v43 = closure #1 in OSLogArguments.append(_:)partial apply;
  v43[1] = v37;

  v43[2] = closure #1 in OSLogArguments.append(_:)partial apply;
  v43[3] = v38;

  v43[4] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v43[5] = v39;

  v43[6] = closure #1 in OSLogArguments.append(_:)partial apply;
  v43[7] = v40;

  v43[8] = closure #1 in OSLogArguments.append(_:)partial apply;
  v43[9] = v41;

  v43[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v43[11] = v42;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v45))
  {
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0, v20, v20);
    v23 = createStorage<A>(capacity:type:)(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v123 = v21;
    v124 = v22;
    v125 = v23;
    serialize(_:at:)(0, &v123);
    serialize(_:at:)(2, &v123);
    v126 = closure #1 in OSLogArguments.append(_:)partial apply;
    v127 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v126, &v123, &v124, &v125);
    if (k)
    {
    }

    v126 = closure #1 in OSLogArguments.append(_:)partial apply;
    v127 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v126, &v123, &v124, &v125);
    v126 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v127 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v126, &v123, &v124, &v125);
    v126 = closure #1 in OSLogArguments.append(_:)partial apply;
    v127 = v40;
    closure #1 in osLogInternal(_:log:type:)(&v126, &v123, &v124, &v125);
    v126 = closure #1 in OSLogArguments.append(_:)partial apply;
    v127 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v126, &v123, &v124, &v125);
    v126 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
    v127 = v42;
    closure #1 in osLogInternal(_:log:type:)(&v126, &v123, &v124, &v125);
    _os_log_impl(&_mh_execute_header, log, v45, "Returning a dataframe of size=%ld,%ld", v21, 0x16u);
    destroyStorage<A>(_:count:)(v22, 0);
    destroyStorage<A>(_:count:)(v23, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v18 = *(v121 + 1080);
  v17 = *(v121 + 1040);
  v19 = *(v121 + 872);
  v15 = *(v121 + 848);
  v16 = *(v121 + 1048);
  v14 = *(v121 + 856);

  (*(v14 + 8))(v19, v15);
  (*(v16 + 8))(v18, v17);

  v13 = *(*(v121 + 608) + 8);

  return v13();
}

{
  v17 = v0[143];
  v18 = v0[135];
  v11 = v0[133];
  v6 = v0[132];
  v16 = v0[130];
  v15 = v0[125];
  v10 = v0[124];
  v5 = v0[123];
  v13 = v0[121];
  v12 = v0[118];
  v14 = v0[117];
  v7 = v0[116];
  v4 = v0[115];
  v3 = v0[112];
  v8 = v0[111];
  v0[76] = v0;

  outlined destroy of [Double](v0 + 87);
  v9 = *(v3 + 8);
  v9(v4, v8);
  outlined destroy of Any?(v0 + 22);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v5);
  v17(v6, v16);
  v9(v7, v8);
  outlined destroy of Any?(v0 + 14);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v10);
  v17(v11, v16);
  (*(v12 + 8))(v13, v14);
  outlined destroy of Any?(v0 + 6);
  outlined destroy of IndexingIterator<AnyColumnSlice>(v15);
  v17(v18, v16);

  v1 = *(v0[76] + 8);

  return v1();
}

uint64_t MediaMLWorker.deletePreviousCellStdDevDB(modelStats:)(uint64_t a1)
{
  v2[12] = v1;
  v2[11] = a1;
  v2[4] = v2;
  v2[6] = 0;
  v2[7] = 0;
  v2[9] = 0;
  v2[6] = a1;
  v2[7] = v1;
  return _swift_task_switch(MediaMLWorker.deletePreviousCellStdDevDB(modelStats:), 0);
}

void MediaMLWorker.deletePreviousCellStdDevDB(modelStats:)()
{
  *(v0 + 32) = v0;
  v15 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.deletePreviousCellStdDevDB(modelStats:), 0, v15, v1, v1);
  *(v0 + 104) = 0;

  v13 = v14[8];
  v14[14] = v13;
  if (v13)
  {
    v12 = v14[11];
    v14[9] = v13;
    v14[2] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v14[3] = v2;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE FROM cellStdDev WHERE training_date < ", 0x2DuLL, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v3);

    v14[5] = *(v12 + 72);
    v14[10] = v14[5];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    DefaultStringInterpolation.appendLiteral(_:)(v4);

    outlined destroy of DefaultStringInterpolation((v14 + 2));
    v14[15] = String.init(stringInterpolation:)();
    v14[16] = v5;

    _swift_task_switch(MediaMLWorker.deletePreviousCellStdDevDB(modelStats:), v13);
  }

  else
  {
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v17 = SQLError.init(code:desc:)(-3, v6);
    code = v17.code;
    desc_8 = v17.desc.value._countAndFlagsBits;
    object = v17.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v7 = code;
    *(v7 + 8) = desc_8;
    *(v7 + 16) = object;
    swift_willThrow();
    v8 = *(v14[4] + 8);

    v8();
  }
}

uint64_t MediaMLWorker.deletePreviousCellStdDevDB(modelStats:)()
{
  v1 = *(v0 + 120);
  *(v0 + 32) = v0;
  SQLiteDB.execute(_:)(v1);
  *(v0 + 136) = v2;
  if (v2)
  {
    v3 = MediaMLWorker.deletePreviousCellStdDevDB(modelStats:);
  }

  else
  {

    v3 = MediaMLWorker.deletePreviousCellStdDevDB(modelStats:);
  }

  return _swift_task_switch(v3, 0);
}

{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATu;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  outlined init with copy of TaskPriority?(v54, v57);
  v58 = type metadata accessor for TaskPriority();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    outlined destroy of TaskPriority?(v57);
    v44 = 0;
  }

  else
  {
    v43 = TaskPriority.rawValue.getter();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = dispatch thunk of Actor.unownedExecutor.getter();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = String.utf8CString.getter();

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    outlined destroy of TaskPriority?(v54);

    v18 = v16;
  }

  else
  {

    outlined destroy of TaskPriority?(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

uint64_t _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a5;
  v12 = a8;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v13 = *(a5 - 8);
  v14 = a5 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v16 = &v11 - v15;
  result = v9();
  v17 = v8;
  if (v8)
  {
    return (*(v13 + 32))(v12, v16, v11);
  }

  return result;
}

uint64_t closure #2 in MediaMLWorker.checkAndPruneProcessedWifiDB()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, &type metadata for Int, &protocol witness table for Int);
  if (v2)
  {

    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t closure #3 in MediaMLWorker.checkAndPruneProcessedWifiDB()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v3[3] = &type metadata for Int;
  v3[4] = &protocol witness table for Int;
  *v3 = a2;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v7)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t implicit closure #2 in MediaMLWorker.checkAndPruneProcessedWifiDB()(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  return v3;
}

uint64_t closure #4 in MediaMLWorker.checkAndPruneProcessedWifiDB()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v6 = v2;
  v3 = *DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor();
  v6[3] = &type metadata for Int;
  v6[4] = &protocol witness table for Int;
  *v6 = v3;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v7)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t closure #2 in MediaMLWorker.checkAndPruneProcessedCellDB()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[1] = a1;
  (*(*a1 + 160))(v7, &type metadata for Int, &protocol witness table for Int);
  if (v2)
  {

    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = v7[0];
    v5 = 0;
  }

  result = 0;
  if (v5)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t closure #3 in MediaMLWorker.checkAndPruneProcessedCellDB()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v3[3] = &type metadata for Int;
  v3[4] = &protocol witness table for Int;
  *v3 = a2;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v7)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t implicit closure #2 in MediaMLWorker.checkAndPruneProcessedCellDB()(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  return v3;
}

uint64_t closure #4 in MediaMLWorker.checkAndPruneProcessedCellDB()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v6 = v2;
  v3 = *DB_DELETION_BUCKET_SIZE.unsafeMutableAddressor();
  v6[3] = &type metadata for Int;
  v6[4] = &protocol witness table for Int;
  *v6 = v3;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v7)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

void closure #2 in MediaMLWorker.getRawCellDataFromDB()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v106 = partial apply for closure #1 in closure #2 in MediaMLWorker.getRawCellDataFromDB();
  v124 = 0;
  v123 = 0;
  v95 = &v122;
  v122 = 0;
  v96 = &v121;
  v121 = 0;
  v97 = &v120;
  v120 = 0;
  v98 = &v119;
  v119 = 0;
  v99 = &v118;
  v118 = 0;
  v100 = &v117;
  v117 = 0;
  v101 = &v116;
  v116 = 0;
  v102 = &v115;
  v115 = 0;
  v103 = &v114;
  v114 = 0;
  v104 = &v113;
  v113 = 0;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v72);
  v76 = &v15 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySiGMd, &_s11TabularData6ColumnVySiGMR);
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  v80 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v77);
  v81 = &v15 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySSGMd, &_s11TabularData6ColumnVySSGMR);
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v82);
  v86 = &v15 - v85;
  v94 = 0;
  v87 = type metadata accessor for DataFrame();
  v88 = *(v87 - 8);
  v89 = v87 - 8;
  v90 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v94);
  v91 = &v15 - v90;
  v124 = &v15 - v90;
  v123 = a1;
  v92 = &type metadata for String;
  v122 = _allocateUninitializedArray<A>(_:)();
  v121 = _allocateUninitializedArray<A>(_:)();
  v93 = &type metadata for Int;
  v120 = _allocateUninitializedArray<A>(_:)();
  v119 = _allocateUninitializedArray<A>(_:)();
  v118 = _allocateUninitializedArray<A>(_:)();
  v117 = _allocateUninitializedArray<A>(_:)();
  v116 = _allocateUninitializedArray<A>(_:)();
  v115 = _allocateUninitializedArray<A>(_:)();
  v114 = _allocateUninitializedArray<A>(_:)();
  v3 = _allocateUninitializedArray<A>(_:)();
  v4 = v105;
  v113 = v3;
  v109[2] = v95;
  v109[3] = v96;
  v109[4] = v97;
  v109[5] = v98;
  v109[6] = v99;
  v109[7] = v100;
  v109[8] = v101;
  v109[9] = v102;
  v109[10] = v103;
  v109[11] = v104;
  (*(*a1 + 144))(v106, v109);
  v107 = v4;
  v108 = v4;
  if (v4)
  {
    v15 = v108;
    outlined destroy of [Int](&v113);
    outlined destroy of [Double](&v114);
    outlined destroy of [Int](&v115);
    outlined destroy of [Int](&v116);
    outlined destroy of [Int](&v117);
    outlined destroy of [Int](&v118);
    outlined destroy of [Int](&v119);
    outlined destroy of [Int](&v120);
    outlined destroy of [String](&v121);
    outlined destroy of [String](&v122);
  }

  else
  {
    DataFrame.init()();
    v5 = kMediaML_carrier.unsafeMutableAddressor();
    countAndFlagsBits = v5->_countAndFlagsBits;
    object = v5->_object;

    v70 = &v122;
    v16 = v122;

    v18 = &v112;
    v112 = v16;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v24 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v25 = &type metadata for String;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v27 = *(v83 + 8);
    v26 = v83 + 8;
    v27(v86, v82);
    v6 = kMediaML_appName.unsafeMutableAddressor();
    v20 = v6->_countAndFlagsBits;
    v22 = v6->_object;

    v69 = &v121;
    v21 = v121;

    v111[1] = v21;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v27(v86, v82);
    v7 = kMediaML_binnedRssi.unsafeMutableAddressor();
    v31 = v7->_countAndFlagsBits;
    v29 = v7->_object;

    v68 = &v120;
    v28 = v120;

    v30 = v111;
    v111[0] = v28;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v57 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v58 = &type metadata for Int;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v60 = *(v78 + 8);
    v59 = v78 + 8;
    v60(v81, v77);
    v8 = kMediaML_binnedRsrp.unsafeMutableAddressor();
    v32 = v8->_countAndFlagsBits;
    v34 = v8->_object;

    v67 = &v119;
    v33 = v119;

    v110[5] = v33;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v60(v81, v77);
    v9 = kMediaML_binnedRsrq.unsafeMutableAddressor();
    v35 = v9->_countAndFlagsBits;
    v37 = v9->_object;

    v66 = &v118;
    v36 = v118;

    v110[4] = v36;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v60(v81, v77);
    v10 = kMediaML_binnedRscp.unsafeMutableAddressor();
    v38 = v10->_countAndFlagsBits;
    v40 = v10->_object;

    v65 = &v117;
    v39 = v117;

    v110[3] = v39;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v60(v81, v77);
    v11 = kMediaML_binnedSnr.unsafeMutableAddressor();
    v41 = v11->_countAndFlagsBits;
    v43 = v11->_object;

    v64 = &v116;
    v42 = v116;

    v110[2] = v42;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v60(v81, v77);
    v12 = kMediaML_bars.unsafeMutableAddressor();
    v44 = v12->_countAndFlagsBits;
    v46 = v12->_object;

    v63 = &v115;
    v45 = v115;

    v110[1] = v45;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v60(v81, v77);
    v13 = kMediaML_throughputTrue.unsafeMutableAddressor();
    v51 = v13->_countAndFlagsBits;
    v48 = v13->_object;

    v62 = &v114;
    v47 = v114;

    v49 = v110;
    v110[0] = v47;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    lazy protocol witness table accessor for type [Double] and conformance [A]();
    v52 = &type metadata for Double;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    (*(v73 + 8))(v76, v72);
    v14 = kMediaML_count.unsafeMutableAddressor();
    v53 = v14->_countAndFlagsBits;
    v55 = v14->_object;

    v61 = &v113;
    v54 = v113;

    v109[12] = v54;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v60(v81, v77);
    (*(v88 + 32))(v71, v91, v87);
    outlined destroy of [Int](v61);
    outlined destroy of [Double](v62);
    outlined destroy of [Int](v63);
    outlined destroy of [Int](v64);
    outlined destroy of [Int](v65);
    outlined destroy of [Int](v66);
    outlined destroy of [Int](v67);
    outlined destroy of [Int](v68);
    outlined destroy of [String](v69);
    outlined destroy of [String](v70);
  }
}

uint64_t closure #1 in closure #2 in MediaMLWorker.getRawCellDataFromDB()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, &type metadata for String, &protocol witness table for String);
  if (v26)
  {
    SQLiteDB.Row.get<A>(at:)(1, a1, &type metadata for String, &protocol witness table for String);
    if (v25)
    {
      SQLiteDB.Row.get<A>(at:)(2, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(3, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(4, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(5, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(6, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(7, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(8, a1, &type metadata for Double, &protocol witness table for Double);
      SQLiteDB.Row.get<A>(at:)(9, a1, &type metadata for Int, &protocol witness table for Int);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      Array.append(_:)();

      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      Array.append(_:)();
      Array.append(_:)();
    }

    else
    {
      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name not of type String", 0x1BuLL, 1);
      v28 = SQLError.init(code:desc:)(-1, v14);
      code = v28.code;
      countAndFlagsBits = v28.desc.value._countAndFlagsBits;
      object = v28.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v19 = swift_allocError();
      *v15 = code;
      *(v15 + 8) = countAndFlagsBits;
      *(v15 + 16) = object;
      swift_willThrow();

      return v19;
    }
  }

  else
  {
    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("carrier not of type String", 0x1AuLL, 1);
    v27 = SQLError.init(code:desc:)(-1, v11);
    v22 = v27.code;
    desc_8 = v27.desc.value._countAndFlagsBits;
    v21 = v27.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v23 = swift_allocError();
    *v12 = v22;
    *(v12 + 8) = desc_8;
    *(v12 + 16) = v21;
    swift_willThrow();
    return v23;
  }
}

void closure #2 in MediaMLWorker.getRawWiFiDataFromDB()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v132 = partial apply for closure #1 in closure #2 in MediaMLWorker.getRawWiFiDataFromDB();
  v153 = 0;
  v152 = 0;
  v118 = &v151;
  v151 = 0;
  v119 = &v150;
  v150 = 0;
  v120 = &v149;
  v149 = 0;
  v123 = &v148;
  v148 = 0;
  v121 = &v147;
  v147 = 0;
  v122 = &v146;
  v146 = 0;
  v124 = &v145;
  v145 = 0;
  v125 = &v144;
  v144 = 0;
  v126 = &v143;
  v143 = 0;
  v127 = &v142;
  v142 = 0;
  v128 = &v141;
  v141 = 0;
  v129 = &v140;
  v140 = 0;
  v130 = &v139;
  v139 = 0;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySiGMd, &_s11TabularData6ColumnVySiGMR);
  v95 = *(v94 - 8);
  v96 = v94 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v94);
  v98 = v18 - v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v100 = *(v99 - 8);
  v101 = v99 - 8;
  v102 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v99);
  v103 = v18 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySSGMd, &_s11TabularData6ColumnVySSGMR);
  v105 = *(v104 - 8);
  v106 = v104 - 8;
  v107 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v104);
  v108 = v18 - v107;
  v117 = 0;
  v109 = type metadata accessor for DataFrame();
  v110 = *(v109 - 8);
  v111 = v109 - 8;
  v112 = (*(v110 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v117);
  v113 = v18 - v112;
  v153 = v18 - v112;
  v152 = a1;
  v114 = &type metadata for String;
  v151 = _allocateUninitializedArray<A>(_:)();
  v116 = &type metadata for Double;
  v150 = _allocateUninitializedArray<A>(_:)();
  v149 = _allocateUninitializedArray<A>(_:)();
  v148 = _allocateUninitializedArray<A>(_:)();
  v115 = &type metadata for Int;
  v147 = _allocateUninitializedArray<A>(_:)();
  v146 = _allocateUninitializedArray<A>(_:)();
  v145 = _allocateUninitializedArray<A>(_:)();
  v144 = _allocateUninitializedArray<A>(_:)();
  v143 = _allocateUninitializedArray<A>(_:)();
  v142 = _allocateUninitializedArray<A>(_:)();
  v141 = _allocateUninitializedArray<A>(_:)();
  v140 = _allocateUninitializedArray<A>(_:)();
  v3 = _allocateUninitializedArray<A>(_:)();
  v4 = v131;
  v139 = v3;
  v135[2] = v118;
  v135[3] = v119;
  v135[4] = v120;
  v135[5] = v121;
  v135[6] = v122;
  v135[7] = v123;
  v135[8] = v124;
  v135[9] = v125;
  v135[10] = v126;
  v135[11] = v127;
  v135[12] = v128;
  v135[13] = v129;
  v135[14] = v130;
  (*(*a1 + 144))(v132, v135);
  v133 = v4;
  v134 = v4;
  if (v4)
  {
    v18[1] = v134;
    outlined destroy of [Double](&v139);
    outlined destroy of [Double](&v140);
    outlined destroy of [Double](&v141);
    outlined destroy of [Int](&v142);
    outlined destroy of [Int](&v143);
    outlined destroy of [Int](&v144);
    outlined destroy of [Int](&v145);
    outlined destroy of [Int](&v146);
    outlined destroy of [Int](&v147);
    outlined destroy of [String](&v148);
    outlined destroy of [String](&v149);
    outlined destroy of [Double](&v150);
    outlined destroy of [String](&v151);
  }

  else
  {
    DataFrame.init()();
    v71 = 1;
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("session_id", 0xAuLL, 1);
    countAndFlagsBits = v5._countAndFlagsBits;
    object = v5._object;
    v92 = &v151;
    v19 = v151;

    v21 = &v138;
    v138 = v19;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v34 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v35 = &type metadata for String;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v37 = *(v105 + 8);
    v36 = v105 + 8;
    v37(v108, v104);
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("timestamp", 9uLL, v71 & 1);
    v26 = v6._countAndFlagsBits;
    v24 = v6._object;
    v91 = &v150;
    v23 = v150;

    v25 = &v137;
    v137 = v23;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    v76 = lazy protocol witness table accessor for type [Double] and conformance [A]();
    v77 = &type metadata for Double;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v79 = *(v100 + 8);
    v78 = v100 + 8;
    v79(v103, v99);
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name", 8uLL, v71 & 1);
    v27 = v7._countAndFlagsBits;
    v29 = v7._object;
    v90 = &v149;
    v28 = v149;

    v136[2] = v28;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v37(v108, v104);
    v45 = 4;
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssid", 4uLL, v71 & 1);
    v30 = v8._countAndFlagsBits;
    v32 = v8._object;
    v89 = &v148;
    v31 = v148;

    v136[1] = v31;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v37(v108, v104);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hour", v45, v71 & 1);
    v41 = v9._countAndFlagsBits;
    v39 = v9._object;
    v88 = &v147;
    v38 = v147;

    v40 = v136;
    v136[0] = v38;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v60 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v61 = &type metadata for Int;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v63 = *(v95 + 8);
    v62 = v95 + 8;
    v63(v98, v94);
    v55 = 3;
    v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dow", 3uLL, v71 & 1);
    v42 = v10._countAndFlagsBits;
    v44 = v10._object;
    v87 = &v146;
    v43 = v146;

    v135[23] = v43;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v63(v98, v94);
    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rssi", v45, v71 & 1);
    v46 = v11._countAndFlagsBits;
    v48 = v11._object;
    v86 = &v145;
    v47 = v145;

    v135[22] = v47;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v63(v98, v94);
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cca", v55, v71 & 1);
    v49 = v12._countAndFlagsBits;
    v51 = v12._object;
    v85 = &v144;
    v50 = v144;

    v135[21] = v50;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v63(v98, v94);
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("noise", 5uLL, v71 & 1);
    v52 = v13._countAndFlagsBits;
    v54 = v13._object;
    v84 = &v143;
    v53 = v143;

    v135[20] = v53;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v63(v98, v94);
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("snr", v55, v71 & 1);
    v56 = v14._countAndFlagsBits;
    v58 = v14._object;
    v83 = &v142;
    v57 = v142;

    v135[19] = v57;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v63(v98, v94);
    v67 = 7;
    v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tx_rate", 7uLL, v71 & 1);
    v64 = v15._countAndFlagsBits;
    v66 = v15._object;
    v82 = &v141;
    v65 = v141;

    v135[18] = v65;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v79(v103, v99);
    v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rx_rate", v67, v71 & 1);
    v68 = v16._countAndFlagsBits;
    v70 = v16._object;
    v81 = &v140;
    v69 = v140;

    v135[17] = v69;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v79(v103, v99);
    v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("throughput_true", 0xFuLL, v71 & 1);
    v72 = v17._countAndFlagsBits;
    v74 = v17._object;
    v80 = &v139;
    v73 = v139;

    v135[16] = v73;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v79(v103, v99);
    (*(v110 + 32))(v93, v113, v109);
    outlined destroy of [Double](v80);
    outlined destroy of [Double](v81);
    outlined destroy of [Double](v82);
    outlined destroy of [Int](v83);
    outlined destroy of [Int](v84);
    outlined destroy of [Int](v85);
    outlined destroy of [Int](v86);
    outlined destroy of [Int](v87);
    outlined destroy of [Int](v88);
    outlined destroy of [String](v89);
    outlined destroy of [String](v90);
    outlined destroy of [Double](v91);
    outlined destroy of [String](v92);
  }
}

uint64_t closure #1 in closure #2 in MediaMLWorker.getRawWiFiDataFromDB()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, &type metadata for String, &protocol witness table for String);
  if (v36)
  {
    SQLiteDB.Row.get<A>(at:)(1, a1, &type metadata for Double, &protocol witness table for Double);
    SQLiteDB.Row.get<A>(at:)(2, a1, &type metadata for String, &protocol witness table for String);
    if (v35)
    {
      SQLiteDB.Row.get<A>(at:)(3, a1, &type metadata for String, &protocol witness table for String);
      if (v34)
      {
        SQLiteDB.Row.get<A>(at:)(4, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(5, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(6, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(7, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(8, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(9, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(10, a1, &type metadata for Double, &protocol witness table for Double);
        SQLiteDB.Row.get<A>(at:)(11, a1, &type metadata for Double, &protocol witness table for Double);
        SQLiteDB.Row.get<A>(at:)(12, a1, &type metadata for Double, &protocol witness table for Double);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
        Array.append(_:)();

        Array.append(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        Array.append(_:)();
        Array.append(_:)();

        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
      }

      else
      {
        v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssid not of type String", 0x17uLL, 1);
        v39 = SQLError.init(code:desc:)(-1, v19);
        code = v39.code;
        countAndFlagsBits = v39.desc.value._countAndFlagsBits;
        object = v39.desc.value._object;
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v24 = swift_allocError();
        *v20 = code;
        *(v20 + 8) = countAndFlagsBits;
        *(v20 + 16) = object;
        swift_willThrow();

        return v24;
      }
    }

    else
    {
      v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name not of type String", 0x1BuLL, 1);
      v38 = SQLError.init(code:desc:)(-1, v17);
      v27 = v38.code;
      v25 = v38.desc.value._countAndFlagsBits;
      v26 = v38.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v28 = swift_allocError();
      *v18 = v27;
      *(v18 + 8) = v25;
      *(v18 + 16) = v26;
      swift_willThrow();

      return v28;
    }
  }

  else
  {
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("session_id not of type String", 0x1DuLL, 1);
    v37 = SQLError.init(code:desc:)(-1, v14);
    v31 = v37.code;
    desc_8 = v37.desc.value._countAndFlagsBits;
    v30 = v37.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v32 = swift_allocError();
    *v15 = v31;
    *(v15 + 8) = desc_8;
    *(v15 + 16) = v30;
    swift_willThrow();
    return v32;
  }
}

uint64_t closure #2 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v24 = v14;

  *(v24 + 24) = &type metadata for String;
  *(v24 + 32) = &protocol witness table for String;
  *v24 = a2;
  *(v24 + 8) = a3;

  *(v24 + 64) = &type metadata for String;
  *(v24 + 72) = &protocol witness table for String;
  *(v24 + 40) = a4;
  *(v24 + 48) = a5;
  *(v24 + 104) = &type metadata for Int;
  *(v24 + 112) = &protocol witness table for Int;
  *(v24 + 80) = a6;
  *(v24 + 144) = &type metadata for Int;
  *(v24 + 152) = &protocol witness table for Int;
  *(v24 + 120) = a7;
  *(v24 + 184) = &type metadata for Int;
  *(v24 + 192) = &protocol witness table for Int;
  *(v24 + 160) = a8;
  *(v24 + 224) = &type metadata for Int;
  *(v24 + 232) = &protocol witness table for Int;
  *(v24 + 200) = a10;
  *(v24 + 264) = &type metadata for Int;
  *(v24 + 272) = &protocol witness table for Int;
  *(v24 + 240) = a11;
  *(v24 + 304) = &type metadata for Int;
  *(v24 + 312) = &protocol witness table for Int;
  *(v24 + 280) = a12;
  *(v24 + 344) = &type metadata for Int;
  *(v24 + 352) = &protocol witness table for Int;
  *(v24 + 320) = a13;
  *(v24 + 384) = &type metadata for Double;
  *(v24 + 392) = &protocol witness table for Double;
  *(v24 + 360) = a9;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v26)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t MediaMLWorker.getProcessedCellDataFromDB()(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = v1;
  return _swift_task_switch(MediaMLWorker.getProcessedCellDataFromDB(), 0);
}

void MediaMLWorker.getProcessedCellDataFromDB()()
{
  *(v0 + 16) = v0;
  v10 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getProcessedCellDataFromDB(), 0, v10, v1, v1);
  *(v0 + 72) = 0;

  v8 = *(v9 + 32);
  *(v9 + 80) = v8;
  if (v8)
  {
    *(v9 + 40) = v8;
    *(v9 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("WITH CarrierAppNamepair as (SELECT carrier, app_name FROM processedcell GROUP BY carrier, app_name HAVING COUNT(*) > 5)\nSELECT p.carrier, p.app_name, binned_rssi, binned_rsrp, binned_rsrq, binned_rscp, binned_snr, bars, throughput_true\nFROM processedcell p JOIN CarrierAppNamepair c\nON p.carrier = c.carrier AND p.app_name = c.app_name", 0x150uLL, 1);

    _swift_task_switch(MediaMLWorker.getProcessedCellDataFromDB(), v8);
  }

  else
  {
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v12 = SQLError.init(code:desc:)(-3, v2);
    code = v12.code;
    desc_8 = v12.desc.value._countAndFlagsBits;
    object = v12.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v3 = code;
    *(v3 + 8) = desc_8;
    *(v3 + 16) = object;
    swift_willThrow();
    v4 = *(*(v9 + 16) + 8);

    v4();
  }
}

uint64_t MediaMLWorker.getProcessedCellDataFromDB()()
{
  v4 = v0[12];
  v5 = v0[11];
  v1 = v0[9];
  v0[2] = v0;
  type metadata accessor for DataFrame();
  SQLiteDB.withStatement<A>(sql:handler:)(v5, v4, closure #2 in MediaMLWorker.getProcessedCellDataFromDB());
  v0[13] = v1;
  if (v1)
  {
    v2 = MediaMLWorker.getProcessedCellDataFromDB();
  }

  else
  {

    v2 = MediaMLWorker.getProcessedCellDataFromDB();
  }

  return _swift_task_switch(v2, 0);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

{
  v1 = v0[13];
  v0[2] = v0;

  swift_errorRetain();
  v0[6] = v1;
  swift_willThrow();

  v2 = *(v0[2] + 8);

  return v2();
}

void closure #2 in MediaMLWorker.getProcessedCellDataFromDB()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v100 = partial apply for closure #1 in closure #2 in MediaMLWorker.getProcessedCellDataFromDB();
  v117 = 0;
  v116 = 0;
  v90 = &v115;
  v115 = 0;
  v91 = &v114;
  v114 = 0;
  v92 = &v113;
  v113 = 0;
  v93 = &v112;
  v112 = 0;
  v94 = &v111;
  v111 = 0;
  v95 = &v110;
  v110 = 0;
  v96 = &v109;
  v109 = 0;
  v97 = &v108;
  v108 = 0;
  v98 = &v107;
  v107 = 0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v67);
  v71 = v14 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySiGMd, &_s11TabularData6ColumnVySiGMR);
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v72);
  v76 = v14 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySSGMd, &_s11TabularData6ColumnVySSGMR);
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  v80 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v77);
  v81 = v14 - v80;
  v89 = 0;
  v82 = type metadata accessor for DataFrame();
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v89);
  v86 = v14 - v85;
  v117 = v14 - v85;
  v116 = a1;
  v87 = &type metadata for String;
  v115 = _allocateUninitializedArray<A>(_:)();
  v114 = _allocateUninitializedArray<A>(_:)();
  v88 = &type metadata for Int;
  v113 = _allocateUninitializedArray<A>(_:)();
  v112 = _allocateUninitializedArray<A>(_:)();
  v111 = _allocateUninitializedArray<A>(_:)();
  v110 = _allocateUninitializedArray<A>(_:)();
  v109 = _allocateUninitializedArray<A>(_:)();
  v108 = _allocateUninitializedArray<A>(_:)();
  v3 = _allocateUninitializedArray<A>(_:)();
  v4 = v99;
  v107 = v3;
  v103[2] = v90;
  v103[3] = v91;
  v103[4] = v92;
  v103[5] = v93;
  v103[6] = v94;
  v103[7] = v95;
  v103[8] = v96;
  v103[9] = v97;
  v103[10] = v98;
  (*(*a1 + 144))(v100, v103);
  v101 = v4;
  v102 = v4;
  if (v4)
  {
    v14[1] = v102;
    outlined destroy of [Double](&v107);
    outlined destroy of [Int](&v108);
    outlined destroy of [Int](&v109);
    outlined destroy of [Int](&v110);
    outlined destroy of [Int](&v111);
    outlined destroy of [Int](&v112);
    outlined destroy of [Int](&v113);
    outlined destroy of [String](&v114);
    outlined destroy of [String](&v115);
  }

  else
  {
    DataFrame.init()();
    v5 = kMediaML_carrier.unsafeMutableAddressor();
    countAndFlagsBits = v5->_countAndFlagsBits;
    object = v5->_object;

    v65 = &v115;
    v15 = v115;

    v17 = &v106;
    v106 = v15;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v23 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v24 = &type metadata for String;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v26 = *(v78 + 8);
    v25 = v78 + 8;
    v26(v81, v77);
    v6 = kMediaML_appName.unsafeMutableAddressor();
    v19 = v6->_countAndFlagsBits;
    v21 = v6->_object;

    v64 = &v114;
    v20 = v114;

    v105[1] = v20;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v26(v81, v77);
    v7 = kMediaML_binnedRssi.unsafeMutableAddressor();
    v30 = v7->_countAndFlagsBits;
    v28 = v7->_object;

    v63 = &v113;
    v27 = v113;

    v29 = v105;
    v105[0] = v27;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v47 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v48 = &type metadata for Int;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v50 = *(v73 + 8);
    v49 = v73 + 8;
    v50(v76, v72);
    v8 = kMediaML_binnedRsrp.unsafeMutableAddressor();
    v31 = v8->_countAndFlagsBits;
    v33 = v8->_object;

    v62 = &v112;
    v32 = v112;

    v104[5] = v32;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v50(v76, v72);
    v9 = kMediaML_binnedRsrq.unsafeMutableAddressor();
    v34 = v9->_countAndFlagsBits;
    v36 = v9->_object;

    v61 = &v111;
    v35 = v111;

    v104[4] = v35;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v50(v76, v72);
    v10 = kMediaML_binnedRscp.unsafeMutableAddressor();
    v37 = v10->_countAndFlagsBits;
    v39 = v10->_object;

    v60 = &v110;
    v38 = v110;

    v104[3] = v38;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v50(v76, v72);
    v11 = kMediaML_binnedSnr.unsafeMutableAddressor();
    v40 = v11->_countAndFlagsBits;
    v42 = v11->_object;

    v59 = &v109;
    v41 = v109;

    v104[2] = v41;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v50(v76, v72);
    v12 = kMediaML_bars.unsafeMutableAddressor();
    v43 = v12->_countAndFlagsBits;
    v45 = v12->_object;

    v58 = &v108;
    v44 = v108;

    v104[1] = v44;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v50(v76, v72);
    v13 = kMediaML_throughputTrue.unsafeMutableAddressor();
    v55 = v13->_countAndFlagsBits;
    v52 = v13->_object;

    v57 = &v107;
    v51 = v107;

    v53 = v104;
    v104[0] = v51;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    lazy protocol witness table accessor for type [Double] and conformance [A]();
    v56 = &type metadata for Double;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    (*(v68 + 8))(v71, v67);
    (*(v83 + 32))(v66, v86, v82);
    outlined destroy of [Double](v57);
    outlined destroy of [Int](v58);
    outlined destroy of [Int](v59);
    outlined destroy of [Int](v60);
    outlined destroy of [Int](v61);
    outlined destroy of [Int](v62);
    outlined destroy of [Int](v63);
    outlined destroy of [String](v64);
    outlined destroy of [String](v65);
  }
}

uint64_t closure #1 in closure #2 in MediaMLWorker.getProcessedCellDataFromDB()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, &type metadata for String, &protocol witness table for String);
  if (v25)
  {
    SQLiteDB.Row.get<A>(at:)(1, a1, &type metadata for String, &protocol witness table for String);
    if (v24)
    {
      SQLiteDB.Row.get<A>(at:)(2, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(3, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(4, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(5, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(6, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(7, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(8, a1, &type metadata for Double, &protocol witness table for Double);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      Array.append(_:)();

      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      Array.append(_:)();
    }

    else
    {
      v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName not of type String", 0x1AuLL, 1);
      v27 = SQLError.init(code:desc:)(-1, v13);
      code = v27.code;
      countAndFlagsBits = v27.desc.value._countAndFlagsBits;
      object = v27.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v18 = swift_allocError();
      *v14 = code;
      *(v14 + 8) = countAndFlagsBits;
      *(v14 + 16) = object;
      swift_willThrow();

      return v18;
    }
  }

  else
  {
    v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("carrier not of type String", 0x1AuLL, 1);
    v26 = SQLError.init(code:desc:)(-1, v10);
    v21 = v26.code;
    desc_8 = v26.desc.value._countAndFlagsBits;
    v20 = v26.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v22 = swift_allocError();
    *v11 = v21;
    *(v11 + 8) = desc_8;
    *(v11 + 16) = v20;
    swift_willThrow();
    return v22;
  }
}

uint64_t closure #2 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(uint64_t *a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v17 = a2;
  v16[0] = v18;
  v16[1] = v2;
  outlined init with copy of Any?(a2, v13);
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v13, v15);
  swift_dynamicCast();
  v6 = v12;

  outlined init with copy of String?(v16, v10);
  v11 = v6;
  if (!v10[1])
  {
    if (!*(&v11 + 1))
    {
      outlined destroy of String?(v10);
      v5 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  outlined init with copy of String?(v10, &v9);
  if (!*(&v11 + 1))
  {
    outlined destroy of String(&v9);
LABEL_10:
    outlined destroy of (String?, String?)(v10);
    v5 = 0;
    goto LABEL_9;
  }

  v8 = v9;
  v7 = v11;
  v4 = static String.== infix(_:_:)();
  outlined destroy of String(&v7);
  outlined destroy of String(&v8);
  outlined destroy of String?(v10);
  v5 = v4;
LABEL_9:

  return v5 & 1;
}

uint64_t closure #3 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(uint64_t *a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v17 = a2;
  v16[0] = v18;
  v16[1] = v2;
  outlined init with copy of Any?(a2, v13);
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v13, v15);
  swift_dynamicCast();
  v6 = v12;

  outlined init with copy of String?(v16, v10);
  v11 = v6;
  if (!v10[1])
  {
    if (!*(&v11 + 1))
    {
      outlined destroy of String?(v10);
      v5 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  outlined init with copy of String?(v10, &v9);
  if (!*(&v11 + 1))
  {
    outlined destroy of String(&v9);
LABEL_10:
    outlined destroy of (String?, String?)(v10);
    v5 = 0;
    goto LABEL_9;
  }

  v8 = v9;
  v7 = v11;
  v4 = static String.== infix(_:_:)();
  outlined destroy of String(&v7);
  outlined destroy of String(&v8);
  outlined destroy of String?(v10);
  v5 = v4;
LABEL_9:

  return v5 & 1;
}

uint64_t implicit closure #11 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t closure #4 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v27 = v15;

  *(v27 + 24) = &type metadata for String;
  *(v27 + 32) = &protocol witness table for String;
  *v27 = a2;
  *(v27 + 8) = a3;

  *(v27 + 64) = &type metadata for String;
  *(v27 + 72) = &protocol witness table for String;
  *(v27 + 40) = a4;
  *(v27 + 48) = a5;

  *(v27 + 104) = &type metadata for String;
  *(v27 + 112) = &protocol witness table for String;
  *(v27 + 80) = a6;
  *(v27 + 88) = a7;
  *(v27 + 144) = &type metadata for Int;
  *(v27 + 152) = &protocol witness table for Int;
  *(v27 + 120) = a8;
  *(v27 + 184) = &type metadata for Int;
  *(v27 + 192) = &protocol witness table for Int;
  *(v27 + 160) = a12;
  *(v27 + 224) = &type metadata for Int;
  *(v27 + 232) = &protocol witness table for Int;
  *(v27 + 200) = a13;
  *(v27 + 264) = &type metadata for Int;
  *(v27 + 272) = &protocol witness table for Int;
  *(v27 + 240) = a14;
  *(v27 + 304) = &type metadata for Double;
  *(v27 + 312) = &protocol witness table for Double;
  *(v27 + 280) = a9;
  *(v27 + 344) = &type metadata for Double;
  *(v27 + 352) = &protocol witness table for Double;
  *(v27 + 320) = a10;
  *(v27 + 384) = &type metadata for Double;
  *(v27 + 392) = &protocol witness table for Double;
  *(v27 + 360) = a11;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v29)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t MediaMLWorker.getProcessedWiFiDataFromDB()(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = v1;
  return _swift_task_switch(MediaMLWorker.getProcessedWiFiDataFromDB(), 0);
}

void MediaMLWorker.getProcessedWiFiDataFromDB()()
{
  *(v0 + 16) = v0;
  v10 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getProcessedWiFiDataFromDB(), 0, v10, v1, v1);
  *(v0 + 72) = 0;

  v8 = *(v9 + 32);
  *(v9 + 80) = v8;
  if (v8)
  {
    *(v9 + 40) = v8;
    *(v9 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("WITH AppNameSSIDpairs as (SELECT app_name, ssid FROM processedwifi GROUP BY app_name, ssid HAVING COUNT(*)>20)\nSELECT session_id, p.app_name, p.ssid, hour, dow, rssi, noise, tx_rate, rx_rate, throughput_true\nFROM processedwifi p JOIN AppNameSSIDpairs a\nON p.app_name = a.app_name AND p.ssid = a.ssid", 0x12BuLL, 1);

    _swift_task_switch(MediaMLWorker.getProcessedWiFiDataFromDB(), v8);
  }

  else
  {
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v12 = SQLError.init(code:desc:)(-3, v2);
    code = v12.code;
    desc_8 = v12.desc.value._countAndFlagsBits;
    object = v12.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v3 = code;
    *(v3 + 8) = desc_8;
    *(v3 + 16) = object;
    swift_willThrow();
    v4 = *(*(v9 + 16) + 8);

    v4();
  }
}

uint64_t MediaMLWorker.getProcessedWiFiDataFromDB()()
{
  v4 = v0[12];
  v5 = v0[11];
  v1 = v0[9];
  v0[2] = v0;
  type metadata accessor for DataFrame();
  SQLiteDB.withStatement<A>(sql:handler:)(v5, v4, closure #2 in MediaMLWorker.getProcessedWiFiDataFromDB());
  v0[13] = v1;
  if (v1)
  {
    v2 = MediaMLWorker.getProcessedWiFiDataFromDB();
  }

  else
  {

    v2 = MediaMLWorker.getProcessedWiFiDataFromDB();
  }

  return _swift_task_switch(v2, 0);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

{
  v1 = v0[13];
  v0[2] = v0;

  swift_errorRetain();
  v0[6] = v1;
  swift_willThrow();

  v2 = *(v0[2] + 8);

  return v2();
}

void closure #2 in MediaMLWorker.getProcessedWiFiDataFromDB()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v110 = partial apply for closure #1 in closure #2 in MediaMLWorker.getProcessedWiFiDataFromDB();
  v128 = 0;
  v127 = 0;
  v99 = &v126;
  v126 = 0;
  v100 = &v125;
  v125 = 0;
  v103 = &v124;
  v124 = 0;
  v101 = &v123;
  v123 = 0;
  v102 = &v122;
  v122 = 0;
  v104 = &v121;
  v121 = 0;
  v105 = &v120;
  v120 = 0;
  v106 = &v119;
  v119 = 0;
  v107 = &v118;
  v118 = 0;
  v108 = &v117;
  v117 = 0;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v75);
  v79 = &v15 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySiGMd, &_s11TabularData6ColumnVySiGMR);
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80);
  v84 = &v15 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySSGMd, &_s11TabularData6ColumnVySSGMR);
  v86 = *(v85 - 8);
  v87 = v85 - 8;
  v88 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v85);
  v89 = &v15 - v88;
  v98 = 0;
  v90 = type metadata accessor for DataFrame();
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v98);
  v94 = &v15 - v93;
  v128 = &v15 - v93;
  v127 = a1;
  v95 = &type metadata for String;
  v126 = _allocateUninitializedArray<A>(_:)();
  v125 = _allocateUninitializedArray<A>(_:)();
  v124 = _allocateUninitializedArray<A>(_:)();
  v96 = &type metadata for Int;
  v123 = _allocateUninitializedArray<A>(_:)();
  v122 = _allocateUninitializedArray<A>(_:)();
  v121 = _allocateUninitializedArray<A>(_:)();
  v120 = _allocateUninitializedArray<A>(_:)();
  v97 = &type metadata for Double;
  v119 = _allocateUninitializedArray<A>(_:)();
  v118 = _allocateUninitializedArray<A>(_:)();
  v3 = _allocateUninitializedArray<A>(_:)();
  v4 = v109;
  v117 = v3;
  v113[2] = v99;
  v113[3] = v100;
  v113[4] = v101;
  v113[5] = v102;
  v113[6] = v103;
  v113[7] = v104;
  v113[8] = v105;
  v113[9] = v106;
  v113[10] = v107;
  v113[11] = v108;
  (*(*a1 + 144))(v110, v113);
  v111 = v4;
  v112 = v4;
  if (v4)
  {
    v15 = v112;
    outlined destroy of [Double](&v117);
    outlined destroy of [Double](&v118);
    outlined destroy of [Double](&v119);
    outlined destroy of [Int](&v120);
    outlined destroy of [Int](&v121);
    outlined destroy of [Int](&v122);
    outlined destroy of [Int](&v123);
    outlined destroy of [String](&v124);
    outlined destroy of [String](&v125);
    outlined destroy of [String](&v126);
  }

  else
  {
    DataFrame.init()();
    v5 = kMediaML_sessionID.unsafeMutableAddressor();
    countAndFlagsBits = v5->_countAndFlagsBits;
    object = v5->_object;

    v73 = &v126;
    v16 = v126;

    v18 = &v116;
    v116 = v16;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v27 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v28 = &type metadata for String;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v30 = *(v86 + 8);
    v29 = v86 + 8;
    v30(v89, v85);
    v6 = kMediaML_appName.unsafeMutableAddressor();
    v20 = v6->_countAndFlagsBits;
    v22 = v6->_object;

    v72 = &v125;
    v21 = v125;

    v115[2] = v21;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v30(v89, v85);
    v7 = kMediaML_ssid.unsafeMutableAddressor();
    v23 = v7->_countAndFlagsBits;
    v25 = v7->_object;

    v71 = &v124;
    v24 = v124;

    v115[1] = v24;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v30(v89, v85);
    v8 = kMediaML_hourOfDay.unsafeMutableAddressor();
    v34 = v8->_countAndFlagsBits;
    v32 = v8->_object;

    v70 = &v123;
    v31 = v123;

    v33 = v115;
    v115[0] = v31;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v45 = lazy protocol witness table accessor for type [Int] and conformance [A]();
    v46 = &type metadata for Int;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v48 = *(v81 + 8);
    v47 = v81 + 8;
    v48(v84, v80);
    v9 = kMediaML_dayOfWeek.unsafeMutableAddressor();
    v35 = v9->_countAndFlagsBits;
    v37 = v9->_object;

    v69 = &v122;
    v36 = v122;

    v114[3] = v36;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v48(v84, v80);
    v10 = kMediaML_rssi.unsafeMutableAddressor();
    v38 = v10->_countAndFlagsBits;
    v40 = v10->_object;

    v68 = &v121;
    v39 = v121;

    v114[2] = v39;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v48(v84, v80);
    v11 = kMediaML_noise.unsafeMutableAddressor();
    v41 = v11->_countAndFlagsBits;
    v43 = v11->_object;

    v67 = &v120;
    v42 = v120;

    v114[1] = v42;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v48(v84, v80);
    v12 = kMediaML_txRate.unsafeMutableAddressor();
    v52 = v12->_countAndFlagsBits;
    v50 = v12->_object;

    v66 = &v119;
    v49 = v119;

    v51 = v114;
    v114[0] = v49;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    v60 = lazy protocol witness table accessor for type [Double] and conformance [A]();
    v61 = &type metadata for Double;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v63 = *(v76 + 8);
    v62 = v76 + 8;
    v63(v79, v75);
    v13 = kMediaML_rxRate.unsafeMutableAddressor();
    v53 = v13->_countAndFlagsBits;
    v55 = v13->_object;

    v65 = &v118;
    v54 = v118;

    v113[13] = v54;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v63(v79, v75);
    v14 = kMediaML_throughputTrue.unsafeMutableAddressor();
    v56 = v14->_countAndFlagsBits;
    v58 = v14->_object;

    v64 = &v117;
    v57 = v117;

    v113[12] = v57;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v63(v79, v75);
    (*(v91 + 32))(v74, v94, v90);
    outlined destroy of [Double](v64);
    outlined destroy of [Double](v65);
    outlined destroy of [Double](v66);
    outlined destroy of [Int](v67);
    outlined destroy of [Int](v68);
    outlined destroy of [Int](v69);
    outlined destroy of [Int](v70);
    outlined destroy of [String](v71);
    outlined destroy of [String](v72);
    outlined destroy of [String](v73);
  }
}

uint64_t closure #1 in closure #2 in MediaMLWorker.getProcessedWiFiDataFromDB()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, &type metadata for String, &protocol witness table for String);
  if (v33)
  {
    SQLiteDB.Row.get<A>(at:)(1, a1, &type metadata for String, &protocol witness table for String);
    if (v32)
    {
      SQLiteDB.Row.get<A>(at:)(2, a1, &type metadata for String, &protocol witness table for String);
      if (v31)
      {
        SQLiteDB.Row.get<A>(at:)(3, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(4, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(5, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(6, a1, &type metadata for Int, &protocol witness table for Int);
        SQLiteDB.Row.get<A>(at:)(7, a1, &type metadata for Double, &protocol witness table for Double);
        SQLiteDB.Row.get<A>(at:)(8, a1, &type metadata for Double, &protocol witness table for Double);
        SQLiteDB.Row.get<A>(at:)(9, a1, &type metadata for Double, &protocol witness table for Double);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();

        Array.append(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        Array.append(_:)();
        Array.append(_:)();

        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
        Array.append(_:)();
        Array.append(_:)();
        Array.append(_:)();
      }

      else
      {
        v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssid not of type String", 0x17uLL, 1);
        v36 = SQLError.init(code:desc:)(-1, v16);
        code = v36.code;
        countAndFlagsBits = v36.desc.value._countAndFlagsBits;
        object = v36.desc.value._object;
        lazy protocol witness table accessor for type SQLError and conformance SQLError();
        v21 = swift_allocError();
        *v17 = code;
        *(v17 + 8) = countAndFlagsBits;
        *(v17 + 16) = object;
        swift_willThrow();

        return v21;
      }
    }

    else
    {
      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name not of type String", 0x1BuLL, 1);
      v35 = SQLError.init(code:desc:)(-1, v14);
      v24 = v35.code;
      v22 = v35.desc.value._countAndFlagsBits;
      v23 = v35.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v25 = swift_allocError();
      *v15 = v24;
      *(v15 + 8) = v22;
      *(v15 + 16) = v23;
      swift_willThrow();

      return v25;
    }
  }

  else
  {
    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("session_id not of type String", 0x1DuLL, 1);
    v34 = SQLError.init(code:desc:)(-1, v11);
    v28 = v34.code;
    desc_8 = v34.desc.value._countAndFlagsBits;
    v27 = v34.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v29 = swift_allocError();
    *v12 = v28;
    *(v12 + 8) = desc_8;
    *(v12 + 16) = v27;
    swift_willThrow();
    return v29;
  }
}

uint64_t MediaMLWorker.getWiFiDataStandardDeviation()(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = v1;
  return _swift_task_switch(MediaMLWorker.getWiFiDataStandardDeviation(), 0);
}

void MediaMLWorker.getWiFiDataStandardDeviation()()
{
  *(v0 + 16) = v0;
  v10 = MediaMLWorker.database.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension8SQLiteDBCSgMd, &_s16MediaMLExtension8SQLiteDBCSgMR);
  OSAllocatedUnfairLock.withLock<A>(_:)(closure #1 in MediaMLWorker.getWiFiDataStandardDeviation(), 0, v10, v1, v1);
  *(v0 + 72) = 0;

  v8 = *(v9 + 32);
  *(v9 + 80) = v8;
  if (v8)
  {
    *(v9 + 40) = v8;
    *(v9 + 88) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("WITH CTE as (SELECT app_name, ssid, AVG(throughput_true) AS throughput_mean FROM processedwifi GROUP BY app_name, ssid, session_id)\nSELECT app_name, ssid, AVG(throughput_mean*throughput_mean)-(AVG(throughput_mean)*AVG(throughput_mean)) AS throughput_var\nFROM CTE\nGROUP BY app_name, ssid", 0x11EuLL, 1);

    _swift_task_switch(MediaMLWorker.getWiFiDataStandardDeviation(), v8);
  }

  else
  {
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("database not available", 0x16uLL, 1);
    v12 = SQLError.init(code:desc:)(-3, v2);
    code = v12.code;
    desc_8 = v12.desc.value._countAndFlagsBits;
    object = v12.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    *v3 = code;
    *(v3 + 8) = desc_8;
    *(v3 + 16) = object;
    swift_willThrow();
    v4 = *(*(v9 + 16) + 8);

    v4();
  }
}

uint64_t MediaMLWorker.getWiFiDataStandardDeviation()()
{
  v4 = v0[12];
  v5 = v0[11];
  v1 = v0[9];
  v0[2] = v0;
  type metadata accessor for DataFrame();
  SQLiteDB.withStatement<A>(sql:handler:)(v5, v4, closure #2 in MediaMLWorker.getWiFiDataStandardDeviation());
  v0[13] = v1;
  if (v1)
  {
    v2 = MediaMLWorker.getWiFiDataStandardDeviation();
  }

  else
  {

    v2 = MediaMLWorker.getWiFiDataStandardDeviation();
  }

  return _swift_task_switch(v2, 0);
}

{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

{
  v1 = v0[13];
  v0[2] = v0;

  swift_errorRetain();
  v0[6] = v1;
  swift_willThrow();

  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t closure #2 in MediaMLWorker.saveWiFiDataStandardDeviation()(uint64_t *a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v17 = a2;
  v16[0] = v18;
  v16[1] = v2;
  outlined init with copy of Any?(a2, v13);
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v13, v15);
  swift_dynamicCast();
  v6 = v12;

  outlined init with copy of String?(v16, v10);
  v11 = v6;
  if (!v10[1])
  {
    if (!*(&v11 + 1))
    {
      outlined destroy of String?(v10);
      v5 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  outlined init with copy of String?(v10, &v9);
  if (!*(&v11 + 1))
  {
    outlined destroy of String(&v9);
LABEL_10:
    outlined destroy of (String?, String?)(v10);
    v5 = 0;
    goto LABEL_9;
  }

  v8 = v9;
  v7 = v11;
  v4 = static String.== infix(_:_:)();
  outlined destroy of String(&v7);
  outlined destroy of String(&v8);
  outlined destroy of String?(v10);
  v5 = v4;
LABEL_9:

  return v5 & 1;
}

uint64_t closure #3 in MediaMLWorker.saveWiFiDataStandardDeviation()(uint64_t *a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v17 = a2;
  v16[0] = v18;
  v16[1] = v2;
  outlined init with copy of Any?(a2, v13);
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v13, v15);
  swift_dynamicCast();
  v6 = v12;

  outlined init with copy of String?(v16, v10);
  v11 = v6;
  if (!v10[1])
  {
    if (!*(&v11 + 1))
    {
      outlined destroy of String?(v10);
      v5 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  outlined init with copy of String?(v10, &v9);
  if (!*(&v11 + 1))
  {
    outlined destroy of String(&v9);
LABEL_10:
    outlined destroy of (String?, String?)(v10);
    v5 = 0;
    goto LABEL_9;
  }

  v8 = v9;
  v7 = v11;
  v4 = static String.== infix(_:_:)();
  outlined destroy of String(&v7);
  outlined destroy of String(&v8);
  outlined destroy of String?(v10);
  v5 = v4;
LABEL_9:

  return v5 & 1;
}