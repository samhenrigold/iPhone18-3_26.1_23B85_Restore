uint64_t closure #4 in MediaMLWorker.saveWiFiDataStandardDeviation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v16 = v8;

  *(v16 + 24) = &type metadata for String;
  *(v16 + 32) = &protocol witness table for String;
  *v16 = a2;
  *(v16 + 8) = a3;

  *(v16 + 64) = &type metadata for String;
  *(v16 + 72) = &protocol witness table for String;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 104) = &type metadata for Double;
  *(v16 + 112) = &protocol witness table for Double;
  *(v16 + 80) = a7;
  *(v16 + 144) = &type metadata for Int;
  *(v16 + 152) = &protocol witness table for Int;
  *(v16 + 120) = a6;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v18)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

void closure #2 in MediaMLWorker.getWiFiDataStandardDeviation()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v52 = partial apply for closure #1 in closure #2 in MediaMLWorker.getWiFiDataStandardDeviation();
  v65 = 0;
  v64 = 0;
  v48 = &v63;
  v63 = 0;
  v49 = &v62;
  v62 = 0;
  v50 = &v61;
  v61 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v35 = v8 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySSGMd, &_s11TabularData6ColumnVySSGMR);
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v40 = v8 - v39;
  v47 = 0;
  v41 = type metadata accessor for DataFrame();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v45 = v8 - v44;
  v65 = v8 - v44;
  v64 = a1;
  v46 = &type metadata for String;
  v63 = _allocateUninitializedArray<A>(_:)();
  v62 = _allocateUninitializedArray<A>(_:)();
  v3 = _allocateUninitializedArray<A>(_:)();
  v4 = v51;
  v61 = v3;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  (*(*a1 + 144))(v52, v55);
  v53 = v4;
  v54 = v4;
  if (v4)
  {
    v8[1] = v54;
    outlined destroy of [Double](&v61);
    outlined destroy of [String](&v62);
    outlined destroy of [String](&v63);
  }

  else
  {
    DataFrame.init()();
    v5 = kMediaML_appName.unsafeMutableAddressor();
    countAndFlagsBits = v5->_countAndFlagsBits;
    object = v5->_object;

    v29 = &v63;
    v9 = v63;

    v11 = &v60;
    v60 = v9;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v17 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v18 = &type metadata for String;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v20 = *(v37 + 8);
    v19 = v37 + 8;
    v20(v40, v36);
    v6 = kMediaML_ssid.unsafeMutableAddressor();
    v13 = v6->_countAndFlagsBits;
    v15 = v6->_object;

    v28 = &v62;
    v14 = v62;

    v59[1] = v14;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v20(v40, v36);
    v7 = kMediaML_throughputStdDev.unsafeMutableAddressor();
    v25 = v7->_countAndFlagsBits;
    v22 = v7->_object;

    v27 = &v61;
    v21 = v61;

    v23 = v59;
    v59[0] = v21;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    lazy protocol witness table accessor for type [Double] and conformance [A]();
    v26 = &type metadata for Double;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    (*(v32 + 8))(v35, v31);
    (*(v42 + 32))(v30, v45, v41);
    outlined destroy of [Double](v27);
    outlined destroy of [String](v28);
    outlined destroy of [String](v29);
  }
}

uint64_t closure #1 in closure #2 in MediaMLWorker.getWiFiDataStandardDeviation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, &type metadata for String, &protocol witness table for String);
  if (v19)
  {
    SQLiteDB.Row.get<A>(at:)(1, a1, &type metadata for String, &protocol witness table for String);
    if (v18)
    {
      SQLiteDB.Row.get<A>(at:)(2, a1, &type metadata for Double, &protocol witness table for Double);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      Array.append(_:)();

      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      Array.append(_:)();
    }

    else
    {
      v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ssid not of type String", 0x17uLL, 1);
      v21 = SQLError.init(code:desc:)(-1, v7);
      code = v21.code;
      countAndFlagsBits = v21.desc.value._countAndFlagsBits;
      object = v21.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v12 = swift_allocError();
      *v8 = code;
      *(v8 + 8) = countAndFlagsBits;
      *(v8 + 16) = object;
      swift_willThrow();

      return v12;
    }
  }

  else
  {
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name not of type String", 0x1BuLL, 1);
    v20 = SQLError.init(code:desc:)(-1, v4);
    v15 = v20.code;
    desc_8 = v20.desc.value._countAndFlagsBits;
    v14 = v20.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v16 = swift_allocError();
    *v5 = v15;
    *(v5 + 8) = desc_8;
    *(v5 + 16) = v14;
    swift_willThrow();
    return v16;
  }
}

uint64_t closure #2 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(uint64_t *a1, uint64_t a2)
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

uint64_t closure #3 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(uint64_t *a1, uint64_t a2)
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

BOOL closure #4 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(uint64_t *a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v4 = *a1;
  v5 = *(a1 + 8);
  v11 = *a1;
  v12 = v5 & 1;
  v10 = a2;
  outlined init with copy of Any?(a2, v7);
  if (!v8)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined init with take of Any(v7, v9);
  swift_dynamicCast();
  return (v5 & 1) == 0 && v4 == v6;
}

uint64_t closure #5 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v18 = v9;

  *(v18 + 24) = &type metadata for String;
  *(v18 + 32) = &protocol witness table for String;
  *v18 = a2;
  *(v18 + 8) = a3;

  *(v18 + 64) = &type metadata for String;
  *(v18 + 72) = &protocol witness table for String;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 104) = &type metadata for Int;
  *(v18 + 112) = &protocol witness table for Int;
  *(v18 + 80) = a6;
  *(v18 + 144) = &type metadata for Double;
  *(v18 + 152) = &protocol witness table for Double;
  *(v18 + 120) = a8;
  *(v18 + 184) = &type metadata for Int;
  *(v18 + 192) = &protocol witness table for Int;
  *(v18 + 160) = a7;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v20)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

void closure #2 in MediaMLWorker.getCellDataStandardDeviation()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v66 = partial apply for closure #1 in closure #2 in MediaMLWorker.getCellDataStandardDeviation();
  v82 = 0;
  v81 = 0;
  v61 = &v80;
  v80 = 0;
  v62 = &v79;
  v79 = 0;
  v63 = &v78;
  v78 = 0;
  v64 = &v77;
  v77 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySdGMd, &_s11TabularData6ColumnVySdGMR);
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v43 = &v9 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySiGMd, &_s11TabularData6ColumnVySiGMR);
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v44);
  v48 = &v9 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TabularData6ColumnVySSGMd, &_s11TabularData6ColumnVySSGMR);
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v53 = &v9 - v52;
  v60 = 0;
  v54 = type metadata accessor for DataFrame();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v60);
  v58 = &v9 - v57;
  v82 = &v9 - v57;
  v81 = a1;
  v59 = &type metadata for String;
  v80 = _allocateUninitializedArray<A>(_:)();
  v79 = _allocateUninitializedArray<A>(_:)();
  v78 = _allocateUninitializedArray<A>(_:)();
  v3 = _allocateUninitializedArray<A>(_:)();
  v4 = v65;
  v77 = v3;
  v70 = v61;
  v71 = v62;
  v72 = v63;
  v73 = v64;
  (*(*a1 + 144))(v66, v69);
  v67 = v4;
  v68 = v4;
  if (v4)
  {
    v9 = v68;
    outlined destroy of [Double](&v77);
    outlined destroy of [Int](&v78);
    outlined destroy of [String](&v79);
    outlined destroy of [String](&v80);
  }

  else
  {
    DataFrame.init()();
    v5 = kMediaML_appName.unsafeMutableAddressor();
    countAndFlagsBits = v5->_countAndFlagsBits;
    object = v5->_object;

    v37 = &v80;
    v10 = v80;

    v12 = &v76;
    v76 = v10;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v18 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v19 = &type metadata for String;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v21 = *(v50 + 8);
    v20 = v50 + 8;
    v21(v53, v49);
    v6 = kMediaML_carrier.unsafeMutableAddressor();
    v14 = v6->_countAndFlagsBits;
    v16 = v6->_object;

    v36 = &v79;
    v15 = v79;

    v75[1] = v15;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    v21(v53, v49);
    v7 = kMediaML_bars.unsafeMutableAddressor();
    v26 = v7->_countAndFlagsBits;
    v23 = v7->_object;

    v35 = &v78;
    v22 = v78;

    v24 = v75;
    v75[0] = v22;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v27 = &type metadata for Int;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    (*(v45 + 8))(v48, v44);
    v8 = kMediaML_throughputStdDev.unsafeMutableAddressor();
    v32 = v8->_countAndFlagsBits;
    v29 = v8->_object;

    v34 = &v77;
    v28 = v77;

    v30 = &v74;
    v74 = v28;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    lazy protocol witness table accessor for type [Double] and conformance [A]();
    v33 = &type metadata for Double;
    Column.init<A>(name:contents:)();
    DataFrame.append<A>(column:)();
    (*(v40 + 8))(v43, v39);
    (*(v55 + 32))(v38, v58, v54);
    outlined destroy of [Double](v34);
    outlined destroy of [Int](v35);
    outlined destroy of [String](v36);
    outlined destroy of [String](v37);
  }
}

uint64_t closure #1 in closure #2 in MediaMLWorker.getCellDataStandardDeviation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  SQLiteDB.Row.get<A>(at:)(0, a1, &type metadata for String, &protocol witness table for String);
  if (v20)
  {
    SQLiteDB.Row.get<A>(at:)(1, a1, &type metadata for String, &protocol witness table for String);
    if (v19)
    {
      SQLiteDB.Row.get<A>(at:)(2, a1, &type metadata for Int, &protocol witness table for Int);
      SQLiteDB.Row.get<A>(at:)(3, a1, &type metadata for Double, &protocol witness table for Double);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      Array.append(_:)();

      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      Array.append(_:)();
    }

    else
    {
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("carrier not of type String", 0x1AuLL, 1);
      v22 = SQLError.init(code:desc:)(-1, v8);
      code = v22.code;
      countAndFlagsBits = v22.desc.value._countAndFlagsBits;
      object = v22.desc.value._object;
      lazy protocol witness table accessor for type SQLError and conformance SQLError();
      v13 = swift_allocError();
      *v9 = code;
      *(v9 + 8) = countAndFlagsBits;
      *(v9 + 16) = object;
      swift_willThrow();

      return v13;
    }
  }

  else
  {
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app_name not of type String", 0x1BuLL, 1);
    v21 = SQLError.init(code:desc:)(-1, v5);
    v16 = v21.code;
    desc_8 = v21.desc.value._countAndFlagsBits;
    v15 = v21.desc.value._object;
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    v17 = swift_allocError();
    *v6 = v16;
    *(v6 + 8) = desc_8;
    *(v6 + 16) = v15;
    swift_willThrow();
    return v17;
  }
}

uint64_t closure #2 in MediaMLWorker.saveModelStatsToDB(modelStats:)(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MediaMLExtension11SQLBindable_pMd, &_s16MediaMLExtension11SQLBindable_pMR);
  _allocateUninitializedArray<A>(_:)();
  v17 = *a2;
  v3[3] = &type metadata for Int;
  v3[4] = &protocol witness table for Int;
  *v3 = v17;
  v16 = a2[1];
  v3[8] = &type metadata for Int;
  v3[9] = &protocol witness table for Int;
  v3[5] = v16;
  v15 = a2[2];
  v3[13] = &type metadata for Int;
  v3[14] = &protocol witness table for Int;
  v3[10] = v15;
  v14 = a2[3];
  v3[18] = &type metadata for Int;
  v3[19] = &protocol witness table for Int;
  v3[15] = v14;
  v13 = a2[4];
  v3[23] = &type metadata for Int;
  v3[24] = &protocol witness table for Int;
  v3[20] = v13;
  v12 = a2[5];
  v3[28] = &type metadata for Int;
  v3[29] = &protocol witness table for Int;
  v3[25] = v12;
  v11 = a2[6];
  v3[33] = &type metadata for Int;
  v3[34] = &protocol witness table for Int;
  v3[30] = v11;
  v10 = a2[7];
  v3[38] = &type metadata for Double;
  v3[39] = &protocol witness table for Double;
  v3[35] = v10;
  v9 = a2[8];
  v3[43] = &type metadata for Double;
  v3[44] = &protocol witness table for Double;
  v3[40] = v9;
  v8 = a2[9];
  v3[48] = &type metadata for Int;
  v3[49] = &protocol witness table for Int;
  v3[45] = v8;
  _finalizeUninitializedArray<A>(_:)();
  (*(*a1 + 192))();

  if (!v7)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t static MediaMLWorker.$main()()
{
  type metadata accessor for MediaMLWorker(0);
  lazy protocol witness table accessor for type MediaMLWorker and conformance MediaMLWorker();
  return static AppExtension.main()();
}

uint64_t MediaMLWorker.init()@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v16 = 0;
  v6[1] = 0;
  v13 = type metadata accessor for URL();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(0);
  v2 = v6 - v7;
  v12 = v6 - v7;
  v3 = type metadata accessor for MediaMLWorker(v1);
  v8 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v14 = v6 - v8;
  v16 = v6 - v8;
  v4 = mediaMLDataDirectory.unsafeMutableAddressor();
  (*(v10 + 16))(v2, v4, v13);
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("rawdata.db", 0xAuLL, 1)._object;
  URL.appendingPathComponent(_:isDirectory:)();

  (*(v10 + 8))(v12, v13);
  return outlined init with take of MediaMLWorker(v14, v15);
}

uint64_t protocol witness for MLHostExtension.shouldRun(context:) in conformance MediaMLWorker(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for MLHostExtension.shouldRun(context:) in conformance MediaMLWorker;

  return MediaMLWorker.shouldRun(context:)(a1);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t protocol witness for MLHostExtension.doWork(context:) in conformance MediaMLWorker(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = protocol witness for MLHostExtension.doWork(context:) in conformance MediaMLWorker;

  return MediaMLWorker.doWork(context:)(a1);
}

{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t protocol witness for MLHostExtension.loadConfig<A>(context:) in conformance MediaMLWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  *(v7 + 16) = v7;
  v8 = swift_task_alloc();
  *(v10 + 24) = v8;
  *v8 = *(v10 + 16);
  v8[1] = protocol witness for MLHostExtension.loadConfig<A>(context:) in conformance MediaMLWorker;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t protocol witness for MLHostExtension.loadConfig<A>(context:) in conformance MediaMLWorker()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

NSString __swiftcall NSString.__allocating_init(string:)(Swift::String string)
{
  countAndFlagsBits = string._countAndFlagsBits;
  object = string._object;
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return @nonobjc NSString.init(string:)(countAndFlagsBits, object);
}

id @nonobjc NSNumber.init(value:)(uint64_t a1)
{
  return [v1 initWithInteger:a1];
}

{
  return [v1 initWithInt:a1];
}

id @nonobjc NSString.init(string:)(uint64_t a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithString:?];

  return v5;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v10 = v7 - v7[0];
  v4();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t OSAllocatedUnfairLock.init(uncheckedState:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  v5 = static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
  (*(*(a2 - 8) + 8))(a1);
  return v5;
}

void *implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  v2;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t closure #1 in OSAllocatedUnfairLock.init(uncheckedState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a1 + ((*(*a1 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)) = 0;
  return (*(*(*(v3 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2);
}

void OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[1] = a5;
  partial apply for closure #1 in OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(a3 + *(*a3 + class metadata base offset for ManagedBuffer + 16), (a3 + ((*(*a3 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)), v5);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void closure #1 in OSAllocatedUnfairLock.withLockUncheckedInternal<A>(body:)(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    *a7 = v10;
  }
}

void closure #1 in OSLogArguments.append(_:)(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = (a4)(a1, a2, a3);
  v7 = *a1;
  v8;
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v8)
  {
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    v8;
    *v4 = v8;

    *a2 = v4 + 1;
  }

  else
  {
  }
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

unint64_t lazy protocol witness table accessor for type WorkerErrors and conformance WorkerErrors()
{
  v2 = lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors;
  if (!lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors;
  if (!lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors;
  if (!lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors;
  if (!lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WorkerErrors and conformance WorkerErrors);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of String(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  v2 = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Double and conformance Double);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of Order?(uint64_t a1)
{
  v3 = type metadata accessor for Order();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100064F64()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #13 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #13 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)(v2);
}

uint64_t sub_100065094()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #14 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #14 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)(v2);
}

uint64_t sub_100065494()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #10 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #10 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)(v2);
}

uint64_t sub_1000655C4()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #11 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #11 in MediaMLWorker.getAndSavePreProcessedCellData(dataFrame:)(v2);
}

__n128 outlined init with take of Any(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t closure #1 in osLogInternal(_:log:type:)partial apply(uint64_t (**a1)(uint64_t, uint64_t, uint64_t))
{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

{
  return closure #1 in osLogInternal(_:log:type:)(a1, v1[2], v1[3], v1[4]);
}

unint64_t lazy protocol witness table accessor for type AnyColumnSlice and conformance AnyColumnSlice()
{
  v2 = lazy protocol witness table cache variable for type AnyColumnSlice and conformance AnyColumnSlice;
  if (!lazy protocol witness table cache variable for type AnyColumnSlice and conformance AnyColumnSlice)
  {
    type metadata accessor for AnyColumnSlice();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AnyColumnSlice and conformance AnyColumnSlice);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of IndexingIterator<AnyColumnSlice>(uint64_t a1)
{
  v1 = type metadata accessor for AnyColumnSlice();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_10006602C()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #12 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #12 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(v2);
}

uint64_t sub_10006615C()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #13 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #13 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(v2);
}

uint64_t sub_1000665B4()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #8 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #8 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(v2);
}

uint64_t sub_1000666E4()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #9 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #9 in MediaMLWorker.getAndSavePreProcessedWifiData(dataFrame:)(v2);
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t sub_100066B74()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  }

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySayypGGMd, &_sSaySayypGGMR);
  v1 = lazy protocol witness table accessor for type [[Any]] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [[Any]] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [[Any]] and conformance [A];
  if (!lazy protocol witness table cache variable for type [[Any]] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySayypGGMd, &_sSaySayypGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [[Any]] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSNumber()
{
  v2 = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSNumber);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSString()
{
  v2 = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSString);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSObject()
{
  v2 = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSObject);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100067194()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #5 in MediaMLWorker.saveWiFiDataStandardDeviation()()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #5 in MediaMLWorker.saveWiFiDataStandardDeviation()(v2);
}

uint64_t sub_1000672C4()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #6 in MediaMLWorker.saveWiFiDataStandardDeviation()()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #6 in MediaMLWorker.saveWiFiDataStandardDeviation()(v2);
}

uint64_t sub_10006771C()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in MediaMLWorker.saveWiFiDataStandardDeviation()()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #3 in MediaMLWorker.saveWiFiDataStandardDeviation()(v2);
}

uint64_t sub_10006784C()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in MediaMLWorker.saveWiFiDataStandardDeviation()()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #4 in MediaMLWorker.saveWiFiDataStandardDeviation()(v2);
}

uint64_t sub_100067CB8()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #6 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #6 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(v2);
}

uint64_t sub_100067DE8()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #7 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #7 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(v2);
}

uint64_t sub_10006826C()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #4 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(v2);
}

uint64_t sub_10006839C()
{
  v2 = *(type metadata accessor for DataFrame() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #5 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)()
{
  v1 = *(type metadata accessor for DataFrame() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #5 in MediaMLWorker.saveCellDataStandardDeviation(dataFrame:)(v2);
}

uint64_t type metadata accessor for MediaMLWorker(uint64_t a1)
{
  v2 = type metadata singleton initialization cache for MediaMLWorker;
  if (!type metadata singleton initialization cache for MediaMLWorker)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type MediaMLWorker and conformance MediaMLWorker()
{
  v2 = lazy protocol witness table cache variable for type MediaMLWorker and conformance MediaMLWorker;
  if (!lazy protocol witness table cache variable for type MediaMLWorker and conformance MediaMLWorker)
  {
    type metadata accessor for MediaMLWorker(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type MediaMLWorker and conformance MediaMLWorker);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type MediaMLWorker and conformance MediaMLWorker;
  if (!lazy protocol witness table cache variable for type MediaMLWorker and conformance MediaMLWorker)
  {
    type metadata accessor for MediaMLWorker(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type MediaMLWorker and conformance MediaMLWorker);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined init with take of MediaMLWorker(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 32))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for WorkerErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WorkerErrors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for MediaMLWorker(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

void *outlined init with copy of SQLiteDB?(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *outlined init with copy of String?(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t outlined init with copy of MediaMLWorker(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

uint64_t sub_10006966C()
{
  v3 = *(type metadata accessor for MediaMLWorker(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in MediaMLWorker.doWork(context:)(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v6 = *(type metadata accessor for MediaMLWorker(0) - 8);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v3 = (v10 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + v3);
  v12 = *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = partial apply for closure #2 in closure #1 in MediaMLWorker.doWork(context:);

  return closure #2 in closure #1 in MediaMLWorker.doWork(context:)(a1, v8, v9, v1 + v10, v11, v12);
}

uint64_t partial apply for closure #2 in closure #1 in MediaMLWorker.doWork(context:)()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  v2 = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of TaskPriority?(const void *a1, void *a2)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v3 = type metadata accessor for TaskPriority();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_532(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_532TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_532TQ0_()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t type metadata accessor for os_unfair_lock_s(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for os_unfair_lock_s;
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
      return v2;
    }
  }

  return v5;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
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

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(_builtinStringLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}