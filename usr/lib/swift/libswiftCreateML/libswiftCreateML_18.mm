Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandPoseClassifierTrainingSessionDelegate.setUp()()
{
  v12 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, v11, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, &v10, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v10, 1, v5) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v10, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v10, &v10, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
  HandPoseClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(&v10, v1);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(&v10, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandPoseClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v181 = v1;
  v177 = v2;
  rawValue = from._rawValue;
  v4 = *(*(type metadata accessor for URL(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v167 = &v121;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v166 = &v121;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v165 = &v121;
  v11 = alloca(v4);
  v12 = alloca(v4);
  v170 = &v121;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v163 = &v121;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v178 = &v121;
  v179 = type metadata accessor for MLCheckpoint(0);
  v164 = *(v179 - 8);
  v18 = *(v164 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v168 = &v121;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v176 = &v121;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v182 = &v121;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v32 = v177 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v177 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, v160, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, &v121, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v121, 1, v28) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v121, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v121, &v121, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
  v33 = v178;
  specialized BidirectionalCollection.last.getter(rawValue);
  v34 = v179;
  v35 = &v121;
  if (__swift_getEnumTagSinglePayload(v33, 1, v179) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v178, &demangling cache variable for type metadata for MLCheckpoint?);
    v36 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v36, 0, 0);
    *v37 = 0xD00000000000001DLL;
    *(v37 + 8) = "reated." + 0x8000000000000000;
    *(v37 + 16) = 0;
    *(v37 + 32) = 0;
    *(v37 + 48) = 0;
    swift_willThrow();
LABEL_20:
    v51 = v35;
    goto LABEL_21;
  }

  v38 = 0xEB0000000064657ALL;
  v171 = 0x6974636172747865;
  v180 = &v121;
  v39 = v182;
  outlined init with take of MLClassifierMetrics(v178, v182, type metadata accessor for MLCheckpoint);
  v178 = *(v34 + 20);
  v40 = 0x696C616974696E69;
  v35 = v180;
  v41 = 110;
  switch(*(v39 + v178))
  {
    case 0:
      goto LABEL_8;
    case 1:
LABEL_10:
      v41;
      goto LABEL_14;
    case 2:
      v40 = 0x676E696E69617274;
      v38 = 0xE800000000000000;
      goto LABEL_8;
    case 3:
      v40 = 0x697461756C617665;
      v38 = 0xEA0000000000676ELL;
      goto LABEL_8;
    case 4:
      v40 = 0x636E657265666E69;
      v38 = &loc_308EF - 0x14FFFFFFFF9B9A86;
LABEL_8:
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)(v40, v38, 0x6974636172747865, 0xEA0000000000676ELL, 0);
      v38;
      if ((v42 & 1) == 0)
      {
        v41 = 0;
        switch(*(v39 + v178))
        {
          case 0:
            JUMPOUT(0x126B76);
          case 1:
            v43 = 0x6974636172747865;
            goto LABEL_13;
          case 2:
            goto LABEL_10;
          case 3:
            v43 = 0x697461756C617665;
LABEL_13:
            v44 = _stringCompareWithSmolCheck(_:_:expecting:)(v43, 0xEA0000000000676ELL, 0x676E696E69617274, 0xE800000000000000, 0);
            110;
            if (v44)
            {
              goto LABEL_14;
            }

            v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
            *v50 = 0xD00000000000003FLL;
            *(v50 + 8) = "not been properly initialized." + 0x8000000000000000;
            *(v50 + 16) = 0;
            *(v50 + 32) = 0;
            *(v50 + 48) = 0;
            swift_willThrow();
            v46 = v39;
            break;
          case 4:
            JUMPOUT(0x126B96);
        }

        goto LABEL_19;
      }

LABEL_14:
      v45 = v181;
      HandPoseClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(v35, v3);
      if (v45)
      {
        goto LABEL_15;
      }

      v181 = 0;
      v47 = 0x676E696E69617274;
      switch(*(v182 + v178))
      {
        case 0:
          v48 = 0xEB0000000064657ALL;
          v47 = 0x696C616974696E69;
          goto LABEL_26;
        case 1:
          110;
          goto LABEL_38;
        case 2:
          v48 = 0xE800000000000000;
          goto LABEL_26;
        case 3:
          v47 = 0x697461756C617665;
          v48 = 0xEA0000000000676ELL;
          goto LABEL_26;
        case 4:
          v47 = 0x636E657265666E69;
          v48 = &loc_308EF - 0x14FFFFFFFF9B9A86;
LABEL_26:
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)(v47, v48, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v48;
          if (v52)
          {
LABEL_38:
            URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
            LOBYTE(__src[0]) = 1;
            *(&__src[0] + 1) = 44;
            __src[1] = 0xE100000000000000;
            *&__src[2] = 0xE000000000000000;
            *(&__src[2] + 1) = 92;
            *&__src[3] = 0xE100000000000000;
            BYTE8(__src[3]) = 1;
            *&__src[4] = 34;
            *(&__src[4] + 1) = 0xE100000000000000;
            LOBYTE(__src[5]) = 1;
            *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&__src[6] = 10;
            *(&__src[6] + 1) = 0xE100000000000000;
            __src[7] = 0;
            LOBYTE(__src[8]) = 1;
            *(&__src[8] + 1) = 0;
            LOBYTE(__dst[0]) = 1;
            LOBYTE(v143) = 1;
            v144 = 44;
            v145 = 0xE100000000000000;
            v146 = 0;
            v147 = 0xE000000000000000;
            v148 = 92;
            v149 = 0xE100000000000000;
            v150 = 1;
            v151 = 34;
            v152 = 0xE100000000000000;
            v153 = 1;
            v154 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            v155 = 10;
            v156 = 0xE100000000000000;
            v157 = 0;
            v158 = 1;
            v159 = 0;
            outlined retain of MLDataTable.ParsingOptions(__src);
            outlined release of MLDataTable.ParsingOptions(&v143);
            memcpy(__dst, __src, sizeof(__dst));
            v63 = v181;
            MLDataTable.init(contentsOf:options:)(v170, __dst);
            if (v63)
            {
              goto LABEL_63;
            }

            v64 = v172;
            v65 = v173;
            v181 = 0;
            v66 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
            v67 = v177;
            swift_beginAccess(v177 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures, v161, 1, 0);
            v68 = *(v67 + v66);
            *(v67 + v66) = v64;
            v69 = *(v67 + v66 + 8);
            *(v67 + v66 + 8) = v65;
            outlined consume of Result<_DataTable, Error>(v68, v69);
            URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
            LOBYTE(v122[0]) = 1;
            *(&v122[0] + 1) = 44;
            v122[1] = 0xE100000000000000;
            *&v122[2] = 0xE000000000000000;
            *(&v122[2] + 1) = 92;
            *&v122[3] = 0xE100000000000000;
            BYTE8(v122[3]) = 1;
            *&v122[4] = 34;
            *(&v122[4] + 1) = 0xE100000000000000;
            LOBYTE(v122[5]) = 1;
            *(&v122[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&v122[6] = 10;
            *(&v122[6] + 1) = 0xE100000000000000;
            v3.i64[0] = 0;
            v122[7] = 0;
            LOBYTE(v122[8]) = 1;
            *(&v122[8] + 1) = 0;
            v142[0] = 1;
            LOBYTE(v124) = 1;
            v125 = 44;
            v126 = 0xE100000000000000;
            v127 = 0;
            v128 = 0xE000000000000000;
            v129 = 92;
            v130 = 0xE100000000000000;
            v131 = 1;
            v132 = 34;
            v133 = 0xE100000000000000;
            v134 = 1;
            v135 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            v136 = 10;
            v137 = 0xE100000000000000;
            v138 = 0;
            v139 = 1;
            v140 = 0;
            outlined retain of MLDataTable.ParsingOptions(v122);
            outlined release of MLDataTable.ParsingOptions(&v124);
            memcpy(v142, v122, sizeof(v142));
            v70 = v181;
            MLDataTable.init(contentsOf:options:)(v165, v142);
            v71 = v70;
            if (v70)
            {
              goto LABEL_63;
            }

            v72 = v174;
            LOBYTE(v179) = v175;
            v73 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
            swift_beginAccess(v67 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures, v142, 1, 0);
            v74 = *(v67 + v73);
            *(v67 + v73) = v72;
            v75 = *(v67 + v73 + 8);
            *(v67 + v73 + 8) = v179;
            outlined consume of Result<_DataTable, Error>(v74, v75);
            v76 = 0xEA0000000000676ELL;
            switch(*(v182 + v178))
            {
              case 0:
LABEL_47:
                v171 = 0x696C616974696E69;
                v76 = 0xEB0000000064657ALL;
                goto LABEL_56;
              case 1:
                goto LABEL_56;
              case 2:
LABEL_53:
                0;
                goto LABEL_57;
              case 3:
LABEL_55:
                v171 = 0x697461756C617665;
                goto LABEL_56;
              case 4:
LABEL_54:
                v171 = 0x636E657265666E69;
                v76 = 0xEB00000000676E69;
LABEL_56:
                v103 = _stringCompareWithSmolCheck(_:_:expecting:)(v171, v76, 0x676E696E69617274, 0xE800000000000000, 0);
                v76;
                v35 = v180;
                if ((v103 & 1) == 0)
                {
                  break;
                }

LABEL_57:
                v181 = v71;
                v104 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
                v105 = v177;
                swift_beginAccess(v177 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures, __src, 0, 0);
                v106 = *(v105 + v104);
                LOBYTE(v104) = *(v105 + v104 + 8);
                outlined copy of Result<_DataTable, Error>(v106, v104);
                v107._countAndFlagsBits = 0x6C6562616CLL;
                v107._object = 0xE500000000000000;
                specialized MLDataTable.subscript.getter(v107, v106, v104);
                outlined consume of Result<_DataTable, Error>(v106, v104);
                v108 = v124;
                LOBYTE(v104) = v125;
                specialized MLDataColumn.dropDuplicates()(v124, v125);
                outlined consume of Result<_DataTable, Error>(v108, v104);
                MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(__dst[0], __dst[1], *v3.i64);
                v110 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels;
                v107._countAndFlagsBits = *(v105 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
                *(v105 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
                v107._countAndFlagsBits;
                v111 = *(v105 + v110);
                if (!v111)
                {
                  v94 = "re not properly constructed." + 0x8000000000000000;
                  v118 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                  swift_allocError(&type metadata for MLCreateError, v118, 0, 0);
                  v97 = 0xD00000000000002ELL;
                  goto LABEL_62;
                }

                v112 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
                swift_allocObject(v112, *(v112 + 48), *(v112 + 52));

                v113 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v111, 0, 21, 3, 1);
                v114 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model;
                *(v105 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = v113;

                v115 = *(v105 + v114);
                v35 = v180;
                if (v115)
                {

                  v116 = v182;
                  v117 = v181;
                  MLHandActionClassifier.GraphCNN.updateGraphCNN(from:)(v182);
                  if (v117)
                  {

                    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v116, type metadata accessor for MLCheckpoint);
                    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v35, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
                    return;
                  }

                  MLHandActionClassifier.GraphCNN.initDevice()();
                }

                else
                {
                  v119 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                  swift_allocError(&type metadata for MLCreateError, v119, 0, 0);
                  *v120 = 0xD000000000000031;
                  *(v120 + 8) = "ning checkpoints are supported." + 0x8000000000000000;
                  *(v120 + 16) = 0;
                  *(v120 + 32) = 0;
                  *(v120 + 48) = 0;
                  swift_willThrow();
                }

                break;
            }

LABEL_15:
            v46 = v182;
LABEL_19:
            outlined destroy of MLActivityClassifier.ModelParameters.Validation(v46, type metadata accessor for MLCheckpoint);
            goto LABEL_20;
          }

          v143 = rawValue;
          v53 = *(rawValue + 16);
          v54 = 1;
          if (!v53)
          {
            v55 = 0;
            goto LABEL_44;
          }

          v55 = v53 - 1;
          v56 = v55 * *(v164 + 72) + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + rawValue;
          rawValue = -*(v164 + 72);
          v170 = 0xEB00000000676E69;
          break;
      }

      break;
  }

  while (2)
  {
    v57 = v168;
    outlined init with copy of MLTrainingSessionParameters(v56, v168, type metadata accessor for MLCheckpoint);
    switch(*(v57 + *(v179 + 20)))
    {
      case 0:
        v58 = v56;
        v59 = 0xEB0000000064657ALL;
        v60 = 0x696C616974696E69;
        goto LABEL_34;
      case 1:
        110;
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v168, type metadata accessor for MLCheckpoint);
        goto LABEL_43;
      case 2:
        v58 = v56;
        v59 = 0xE800000000000000;
        v60 = 0x676E696E69617274;
        goto LABEL_34;
      case 3:
        v58 = v56;
        v59 = 0xEA0000000000676ELL;
        v60 = 0x697461756C617665;
        goto LABEL_34;
      case 4:
        v58 = v56;
        v59 = v170;
        v60 = 0x636E657265666E69;
LABEL_34:
        v61 = _stringCompareWithSmolCheck(_:_:expecting:)(v60, v59, 0x6974636172747865, 0xEA0000000000676ELL, 0);
        v59;
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v168, type metadata accessor for MLCheckpoint);
        if ((v61 & 1) == 0)
        {
          v56 = rawValue + v58;
          if (v55-- == 0)
          {
            v55 = 0;
            v54 = 1;
            goto LABEL_44;
          }

          continue;
        }

LABEL_43:
        v54 = 0;
LABEL_44:
        v77 = alloca(24);
        v78 = alloca(32);
        *(&v122[0] + 1) = &v143;
        v79 = v163;
        v80 = v181;
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), &v121, v55, v54, v162);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v179);
        v181 = v80;
        if (EnumTagSinglePayload == 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v79, &demangling cache variable for type metadata for MLCheckpoint?);
          v82 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
          v83 = v177;
          swift_beginAccess(v177 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures, &v143, 0, 0);
          v84 = *(v83 + v82 + 8);
          *&__src[0] = *(v83 + v82);
          BYTE8(__src[0]) = v84;
          outlined copy of Result<_DataTable, Error>(*&__src[0], v84);
          v85 = MLDataTable.size.getter();
          outlined consume of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
          if (v85)
          {
            v71 = v181;
            v76 = 0xEA0000000000676ELL;
            switch(*(v182 + v178))
            {
              case 0:
                goto LABEL_47;
              case 1:
                goto LABEL_56;
              case 2:
                goto LABEL_53;
              case 3:
                goto LABEL_55;
              case 4:
                goto LABEL_54;
            }
          }

          v94 = "erly initialized." + 0x8000000000000000;
          v95 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v95, 0, 0);
          v97 = 0xD000000000000028;
LABEL_62:
          *v96 = v97;
          *(v96 + 8) = v94;
          *(v96 + 16) = 0;
          *(v96 + 32) = 0;
          *(v96 + 48) = 0;
          swift_willThrow();
LABEL_63:
          v93 = v182;
        }

        else
        {
          outlined init with take of MLClassifierMetrics(v79, v176, type metadata accessor for MLCheckpoint);
          URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
          LOBYTE(__src[0]) = 1;
          *(&__src[0] + 1) = 44;
          __src[1] = 0xE100000000000000;
          *&__src[2] = 0xE000000000000000;
          *(&__src[2] + 1) = 92;
          *&__src[3] = 0xE100000000000000;
          BYTE8(__src[3]) = 1;
          *&__src[4] = 34;
          *(&__src[4] + 1) = 0xE100000000000000;
          LOBYTE(__src[5]) = 1;
          *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
          *&__src[6] = 10;
          *(&__src[6] + 1) = 0xE100000000000000;
          __src[7] = 0;
          LOBYTE(__src[8]) = 1;
          *(&__src[8] + 1) = 0;
          LOBYTE(__dst[0]) = 1;
          LOBYTE(v143) = 1;
          v144 = 44;
          v145 = 0xE100000000000000;
          v146 = 0;
          v147 = 0xE000000000000000;
          v148 = 92;
          v149 = 0xE100000000000000;
          v150 = 1;
          v151 = 34;
          v152 = 0xE100000000000000;
          v153 = 1;
          v154 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
          v155 = 10;
          v156 = 0xE100000000000000;
          v157 = 0;
          v158 = 1;
          v159 = 0;
          outlined retain of MLDataTable.ParsingOptions(__src);
          outlined release of MLDataTable.ParsingOptions(&v143);
          memcpy(__dst, __src, sizeof(__dst));
          v86 = v181;
          MLDataTable.init(contentsOf:options:)(v166, __dst);
          if (!v86)
          {
            v87 = v172;
            LOBYTE(v179) = v173;
            v181 = 0;
            v88 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
            v89 = v177;
            swift_beginAccess(v177 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures, v161, 1, 0);
            v90 = *(v89 + v88);
            *(v89 + v88) = v87;
            v91 = *(v89 + v88 + 8);
            *(v89 + v88 + 8) = v179;
            outlined consume of Result<_DataTable, Error>(v90, v91);
            URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
            LOBYTE(v122[0]) = 1;
            *(&v122[0] + 1) = 44;
            v122[1] = 0xE100000000000000;
            *&v122[2] = 0xE000000000000000;
            *(&v122[2] + 1) = 92;
            *&v122[3] = 0xE100000000000000;
            BYTE8(v122[3]) = 1;
            *&v122[4] = 34;
            *(&v122[4] + 1) = 0xE100000000000000;
            LOBYTE(v122[5]) = 1;
            *(&v122[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&v122[6] = 10;
            *(&v122[6] + 1) = 0xE100000000000000;
            v3.i64[0] = 0;
            v122[7] = 0;
            LOBYTE(v122[8]) = 1;
            *(&v122[8] + 1) = 0;
            v142[0] = 1;
            LOBYTE(v124) = 1;
            v125 = 44;
            v126 = 0xE100000000000000;
            v127 = 0;
            v128 = 0xE000000000000000;
            v129 = 92;
            v130 = 0xE100000000000000;
            v131 = 1;
            v132 = 34;
            v133 = 0xE100000000000000;
            v134 = 1;
            v135 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            v136 = 10;
            v137 = 0xE100000000000000;
            v138 = 0;
            v139 = 1;
            v140 = 0;
            outlined retain of MLDataTable.ParsingOptions(v122);
            outlined release of MLDataTable.ParsingOptions(&v124);
            memcpy(v142, v122, sizeof(v142));
            v92 = v181;
            MLDataTable.init(contentsOf:options:)(v167, v142);
            v71 = v92;
            if (!v92)
            {
              outlined destroy of MLActivityClassifier.ModelParameters.Validation(v176, type metadata accessor for MLCheckpoint);
              v98 = v174;
              LOBYTE(v179) = v175;
              v99 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
              v100 = v177;
              swift_beginAccess(v177 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures, v142, 1, 0);
              v101 = *(v100 + v99);
              *(v100 + v99) = v98;
              v102 = *(v100 + v99 + 8);
              *(v100 + v99 + 8) = v179;
              outlined consume of Result<_DataTable, Error>(v101, v102);
              v76 = 0xEA0000000000676ELL;
              switch(*(v182 + v178))
              {
                case 0:
                  goto LABEL_47;
                case 1:
                  goto LABEL_56;
                case 2:
                  goto LABEL_53;
                case 3:
                  goto LABEL_55;
                case 4:
                  goto LABEL_54;
              }
            }
          }

          outlined destroy of MLActivityClassifier.ModelParameters.Validation(v176, type metadata accessor for MLCheckpoint);
          v93 = v182;
        }

        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v93, type metadata accessor for MLCheckpoint);
        v51 = v180;
LABEL_21:
        outlined destroy of MLActivityClassifier.ModelParameters.Validation(v51, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
        return;
    }
  }
}

Swift::Int_optional __swiftcall HandPoseClassifierTrainingSessionDelegate.itemCount(phase:)(CreateML::MLPhase phase)
{
  switch(*phase)
  {
    case 0:
    case 3:
    case 4:
      v2 = 1;
      v3 = 0;
      break;
    case 1:
      v5 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
      v6 = (OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable + v1);
      v3 = 0;
      swift_beginAccess(OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable + v1, v9, 0, 0);
      v7 = *(v1 + v5 + 8);
      if (v7 != -1)
      {
        v10 = *v6;
        v11 = v7 & 1;
        outlined copy of Result<_DataTable, Error>(v10, v7);
        v3 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(v10, v11);
      }

      v2 = 0;
      break;
    case 2:
      v4 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters + v1;
      v2 = 0;
      v3 = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 28) + v4);
      break;
  }

  v8.value = v3;
  v8.is_nil = v2;
  return v8;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandPoseClassifierTrainingSessionDelegate.extractFeatures(from:)(Swift::Int from)
{
  v48 = v1;
  v3 = v2;
  v38 = from;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, v33, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, v33, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  v8 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  LODWORD(v7) = __swift_getEnumTagSinglePayload(v33, 1, v8);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  if (v7 == 1)
  {
    BUG();
  }

  v9 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
  swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable, v34, 0, 0);
  LOBYTE(v10._0) = *(v3 + v9 + 8);
  v10.finished = 1;
  v11 = 1;
  if (LOBYTE(v10._0) != 0xFF)
  {
    v12 = *(v3 + v9);
    v43 = v3;
    v36 = v12;
    v13 = LOBYTE(v10._0);
    LOBYTE(v44) = v10._0 & 1;
    v37 = v10._0 & 1;
    outlined copy of Result<_DataTable, Error>(v12, v10._0);
    outlined copy of Result<_DataTable, Error>(v12, v13);
    MLDataTable.size.getter();
    v15 = v14;
    outlined consume of Result<_DataTable, Error>(v36, v37);
    if (v15 <= 0)
    {
      outlined consume of MLDataTable?(v12, v13);
      v10.finished = 1;
      v11 = 1;
    }

    else
    {
      v47 = v12;
      v49 = v13;
      v16 = *(v43 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount);
      v17 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount;
      v18 = *(v43 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount);
      v23 = __OFADD__(v16, v18);
      v19 = v16 + v18;
      if (v23)
      {
        BUG();
      }

      v20 = v38;
      if (v19 <= v38)
      {
        outlined consume of MLDataTable?(v47, v49);
        v11 = 0;
        v10.finished = 1;
      }

      else
      {
        v35 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount;
        v21 = v43 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters;
        v39 = v16;
        v22 = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 20) + v21);
        v23 = __OFADD__(v20, v22);
        v24 = v20 + v22;
        v41 = v17;
        if (v39 <= v20)
        {
          if (v23)
          {
            BUG();
          }
        }

        else
        {
          v19 = v39;
          if (v23)
          {
            BUG();
          }
        }

        if (v19 < v24)
        {
          v24 = v19;
        }

        v40 = v24;
        if (v24 < v20)
        {
          BUG();
        }

        v45 = v47;
        v46 = v44;
        outlined copy of Result<_DataTable, Error>(v47, v49);
        MLDataTable.subscript.getter(v20, v40);
        outlined consume of Result<_DataTable, Error>(v45, v46);
        v25 = v36;
        v26 = v37;
        type metadata accessor for MLHandPoseClassifier.FeatureExtractor();
        v45 = v25;
        v46 = v26;
        v27 = v48;
        static MLHandPoseClassifier.FeatureExtractor.extractFeatures(from:startingSessionId:)(&v45, v20);
        v28 = v20;
        if (v27)
        {
          outlined consume of MLDataTable?(v47, v49);
          v11 = v26;
          outlined consume of Result<_DataTable, Error>(v25, v26);
        }

        else
        {
          v44 = v25;
          v29 = v49;
          v48 = 0;
          v30 = v37;
          v42 = v36;
          v45 = v36;
          v46 = v37 & 1;
          if (v39 <= v28)
          {
            v31 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
          }

          else
          {
            v31 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
          }

          swift_beginAccess(v43 + v31, &v36, 33, 0);
          MLDataTable.append(contentsOf:)(&v45);
          swift_endAccess(&v36);
          outlined consume of MLDataTable?(v47, v29);
          outlined consume of Result<_DataTable, Error>(v44, v26);
          outlined consume of Result<_DataTable, Error>(v42, v30);
          v11 = v40 - v38;
          if (__OFSUB__(v40, v38))
          {
            BUG();
          }

          v32 = *(v43 + v35);
          v23 = __OFADD__(*(v43 + v41), v32);
          v10._0 = *(v43 + v41) + v32;
          if (v23)
          {
            BUG();
          }

          v10.finished = v40 == v10._0;
        }
      }
    }
  }

  v10._0 = v11;
  return v10;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandPoseClassifierTrainingSessionDelegate.transitionTo(phase:)(CreateML::MLPhase phase)
{
  v4 = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  if (*phase != 2)
  {
    return;
  }

  v33 = v1;
  v8 = v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, v27, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8, &v26, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  v9 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  LODWORD(v8) = __swift_getEnumTagSinglePayload(&v26, 1, v9);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v26, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  if (v8 == 1)
  {
    BUG();
  }

  v10 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
  swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures, v28, 0, 0);
  v11 = *(v4 + v10);
  LOBYTE(v10) = *(v4 + v10 + 8);
  outlined copy of Result<_DataTable, Error>(v11, v10);
  v12._countAndFlagsBits = 0x6C6562616CLL;
  v12._object = 0xE500000000000000;
  specialized MLDataTable.subscript.getter(v12, v11, v10);
  outlined consume of Result<_DataTable, Error>(v11, v10);
  v13 = v31;
  LOBYTE(v10) = v32;
  specialized MLDataColumn.dropDuplicates()(v31, v32);
  outlined consume of Result<_DataTable, Error>(v13, v10);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v29, v30, v3);
  v15 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels;
  v12._countAndFlagsBits = *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
  *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v12._countAndFlagsBits;
  v16 = *(v4 + v15);
  if (!v16)
  {
    v21 = "re not properly constructed." + 0x8000000000000000;
    v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
    v24 = 0xD00000000000002ELL;
LABEL_10:
    *v23 = v24;
    *(v23 + 8) = v21;
    *(v23 + 16) = 0;
    *(v23 + 32) = 0;
    *(v23 + 48) = 0;
    swift_willThrow();
    return;
  }

  v17 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
  swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  swift_bridgeObjectRetain_n(v16, 2);
  v18 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v16, 0, 21, 3, 1);
  v19 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model;
  *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = v18;

  if (!*(v4 + v19))
  {
    v16;
    v21 = "ve training parameters" + 0x8000000000000000;
    v25 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v25, 0, 0);
    v24 = 0xD00000000000003CLL;
    goto LABEL_10;
  }

  MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel()();
  if (!v20)
  {
    MLHandActionClassifier.GraphCNN.initDevice()();
  }

  v16;
}

Swift::tuple_Int_metrics_OpaquePointer_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandPoseClassifierTrainingSessionDelegate.train(from:)(Swift::Int from)
{
  v99 = v1;
  v110 = *&from;
  v95 = type metadata accessor for Tensor(0);
  v96 = *(v95 - 8);
  v3 = *(v96 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v97 = v88;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v103 = v88;
  v94 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
  v93 = *(v94 - 8);
  v9 = *(v93 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v102 = v88;
  v100 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v12 = *(*(v100 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v98 = v88;
  v15 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v16 = *(*(v15 - 1) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v109 = v88;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v108 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v22 = *(*(v108 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v114 = v88;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v104 = v88;
  v27 = &v2[OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters];
  v28 = type metadata accessor for MLTrainingSessionParameters(0);
  v29 = *&v27[*(v28 + 20)];
  if (__OFADD__(v29, *&v110))
  {
    BUG();
  }

  v111 = v2;
  v30 = *&v27[*(v28 + 28)];
  v31 = (v30 - *&v110);
  if (__OFSUB__(v30, *&v110))
  {
    BUG();
  }

  v92 = v30;
  v91 = &v29[*&v110];
  if (v29 < v31)
  {
    v31 = v29;
  }

  v32 = &v111[OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters];
  swift_beginAccess(&v111[OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters], v88, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, v88, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v88, 1, v15))
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v88, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
    v33 = "Augmentation options" + 0x8000000000000000;
    v34 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34, 0, 0);
    *v35 = 0xD000000000000026;
    *(v35 + 8) = "Augmentation options" + 0x8000000000000000;
    *(v35 + 16) = 0;
    *(v35 + 32) = 0;
    *(v35 + 48) = 0;
    v36 = swift_willThrow();
    goto LABEL_13;
  }

  v101 = v31;
  v37 = v109;
  outlined init with copy of MLTrainingSessionParameters(v88, v109, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v88, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  v38 = v114;
  outlined init with copy of MLTrainingSessionParameters(&v37[v15[5]], v114, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
  v39 = *&v37[v15[7]];
  v40 = *&v37[v15[8]];
  v41 = v108;
  *&v38[*(v108 + 20)] = *&v37[v15[6]];
  *&v38[v41[6]] = v39;
  *&v38[v41[7]] = v40;
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v37, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
  v42 = v104;
  outlined init with take of MLClassifierMetrics(v38, v104, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v31 = v111;
  v43 = *&v111[OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model];
  if (!v43 || (v44 = *&v111[OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels]) == 0)
  {
    v33 = "ve training parameters" + 0x8000000000000000;
    v59 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v59, 0, 0);
    *v60 = 0xD00000000000003CLL;
    *(v60 + 8) = "ve training parameters" + 0x8000000000000000;
    *(v60 + 16) = 0;
    *(v60 + 32) = 0;
    *(v60 + 48) = 0;
    swift_willThrow();
    v58 = v42;
    goto LABEL_12;
  }

  v114 = *&v42[v41[7]];
  v45 = *&v42[v41[5]];
  v46 = *&v42[v41[6]];
  v47 = v98;
  *v98 = 0;
  *(v47 + 8) = 256;
  v108 = v43;
  v109 = v44;
  v48 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload(v47, v48, 0);
  v49 = v100;
  *&v47[*(v100 + 20)] = v45;
  *&v47[v49[6]] = v46;
  *&v47[v49[7]] = 1;
  *&v47[v49[8]] = v114;
  *&v47[v49[10]] = 0x403E000000000000;
  v50 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
  swift_beginAccess(&v31[OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures], v89, 0, 0);
  v114 = *&v31[v50];
  v51 = v31[v50 + 8];
  LODWORD(v100) = v51;
  v105 = v114;
  LOBYTE(v106) = v51;
  v33 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
  swift_beginAccess(&v31[OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures], v90, 0, 0);
  v52 = *&v33[v31];
  LODWORD(v33) = *&v33[v31 + 8];
  v112 = v52;
  LOBYTE(v113) = v33 & 1;

  v53 = v109;

  outlined copy of Result<_DataTable, Error>(v114, v100);
  v54 = v52;
  v55 = v53;
  v56 = v33;
  LOBYTE(v33) = v47;
  outlined copy of Result<_DataTable, Error>(v54, v56);
  v31 = v103;
  v57 = v99;
  static MLHandActionClassifier.prepareDataset(classLabels:trainingFeatures:validationFeatures:parameters:)(v102, v103, v55, &v105, &v112, v47, 0.0);
  if (v57 != 0.0)
  {
    v55;

    outlined consume of MLDataTable?(v112, v113);
    outlined consume of Result<_DataTable, Error>(v105, v106);
    outlined destroy of MLActivityClassifier.ModelParameters.Validation(v47, type metadata accessor for MLHandActionClassifier.ModelParameters);
    v58 = v104;
LABEL_12:
    v36 = outlined destroy of MLActivityClassifier.ModelParameters.Validation(v58, type metadata accessor for MLHandPoseClassifier.ModelParameters);
    goto LABEL_13;
  }

  outlined consume of MLDataTable?(v112, v113);
  outlined consume of Result<_DataTable, Error>(v105, v106);
  if (v101 < 0)
  {
    BUG();
  }

  v63 = v110;
  if (v101)
  {
    v64 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary;
    v65 = 0;
    do
    {
      v66 = __OFADD__(v65, *&v63);
      v67 = v65 + *&v63;
      if (v66)
      {
        BUG();
      }

      v68 = MLHandActionClassifier.GraphCNN.iterateTraining(trainingData:validationData:epochCount:)(v102, v31, v67, 0.0);
      ++v65;
      v69 = *&v111[v64];
      *&v111[v64] = v68;
      v69;
      v31 = v103;
      v63 = v110;
    }

    while (v101 != v65);
  }

  v70 = v111;
  v110 = *&OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary;
  v71 = *&v111[OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary];

  specialized Dictionary.subscript.getter(0x676E696E69617274, 0xED000073736F6C5FLL, v71);
  v71;
  if (!v107)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v105, &demangling cache variable for type metadata for Any?);
    goto LABEL_23;
  }

  if (!swift_dynamicCast(&v112, &v105, &type metadata for Any + 8, &type metadata for Double, 6))
  {
LABEL_23:
    v73 = _swiftEmptyDictionarySingleton;
    goto LABEL_24;
  }

  v114 = v112;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
  v105 = _swiftEmptyDictionarySingleton;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, isUniquelyReferenced_nonNull_native, *&v114);
  v73 = v105;
  v70 = v111;
LABEL_24:
  v74 = *&v70[*&v110];

  specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEF73736F6C5F6E6FLL, v74);
  v74;
  if (v107)
  {
    if (swift_dynamicCast(&v112, &v105, &type metadata for Any + 8, &type metadata for Double, 6))
    {
      v114 = v112;
      v75 = swift_isUniquelyReferenced_nonNull_native(v73);
      v105 = v73;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(4, v75, *&v114);
      v114 = v105;
    }

    else
    {
      v114 = v73;
    }
  }

  else
  {
    v114 = v73;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v105, &demangling cache variable for type metadata for Any?);
  }

  v76 = *&v111[*&v110];

  specialized Dictionary.subscript.getter(0xD000000000000012, ("oseClassifier.swift" + 0x8000000000000000), v76);
  v76;
  if (v107)
  {
    v77 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    if (swift_dynamicCast(&v112, &v105, &type metadata for Any + 8, v77, 6))
    {
      v78 = v97;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0);
      v99 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v78, *(v109 + 2));
      (*(v96 + 8))(v78, v95);
      v79 = v114;
      v80 = swift_isUniquelyReferenced_nonNull_native(v114);
      v105 = v79;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, v80, v99);

      v114 = v105;
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v105, &demangling cache variable for type metadata for Any?);
  }

  v81 = *&v111[*&v110];

  specialized Dictionary.subscript.getter(0xD000000000000014, ("ve training confusion matrix" + 0x8000000000000000), v81);
  v81;
  if (v107)
  {
    v82 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    if (swift_dynamicCast(&v112, &v105, &type metadata for Any + 8, v82, 6))
    {
      v111 = v112;
      v83 = v97;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0);
      v84 = *(v109 + 2);
      v109;
      v110 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v83, v84);
      (*(v96 + 8))(v83, v95);
      v85 = v114;
      v86 = swift_isUniquelyReferenced_nonNull_native(v114);
      v105 = v85;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(5, v86, v110);

      v114 = v105;
    }

    else
    {
      v109;
    }
  }

  else
  {
    v109;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v105, &demangling cache variable for type metadata for Any?);
  }

  LOBYTE(v33) = v91 >= v92;
  v87 = v114;
  v31 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v114);
  v87;

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v103, &demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?);
  (*(v93 + 8))(v102, v94);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v98, type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v104, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v36 = v101;
LABEL_13:
  v61 = v31;
  v62 = v33;
  result.metrics._rawValue = v61;
  result._0 = v36;
  result.finished = v62;
  return result;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandPoseClassifierTrainingSessionDelegate.evaluate(from:)(Swift::Int from)
{
  v1._0 = 1;
  v1.finished = 1;
  return v1;
}

uint64_t HandPoseClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v87 = v2;
  v86 = a1;
  LODWORD(v4) = 0;
  v5 = type metadata accessor for URL(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = alloca(v6);
  v10 = alloca(v6);
  v11 = alloca(v6);
  v12 = alloca(v6);
  v13 = alloca(v6);
  v14 = alloca(v6);
  v15 = *a2;
  if (v15 == 2)
  {
    LOBYTE(v4) = 1;
    if (*(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model))
    {

      specialized _ModelCheckpoint<>.save(to:)(v86);
    }
  }

  else if (v15 == 1)
  {
    v85 = *(v5 - 8);
    v74 = __src;
    v84 = v5;
    v81 = __src;
    v75 = __src;
    v16 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
    v76 = (v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
    swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures, v55, 1, 0);
    v17 = *(v3 + v16);
    v18 = *(v3 + v16 + 8);
    v4 = &v57;
    v57 = v17;
    LOBYTE(v58) = v18;
    outlined copy of Result<_DataTable, Error>(v17, v18);
    URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
    v19 = v87;
    MLDataTable.write(to:)(__src);
    if (v19)
    {
      (*(v85 + 8))(__src, v84);
      outlined consume of Result<_DataTable, Error>(v57, v58);
    }

    else
    {
      v87 = *(v85 + 8);
      v87(__src, v84);
      outlined consume of Result<_DataTable, Error>(v57, v58);
      v20 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
      v85 = v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
      swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures, v56, 1, 0);
      v21 = *(v3 + v20 + 8);
      v82 = *(v3 + v20);
      LOBYTE(v83) = v21;
      outlined copy of Result<_DataTable, Error>(v82, v21);
      v22 = v74;
      URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
      MLDataTable.write(to:)(v22);
      LODWORD(v4) = 0;
      v87(v22, v84);
      outlined consume of Result<_DataTable, Error>(v82, v83);
      v87 = 0;
      URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
      LOBYTE(__src[0]) = 1;
      *(&__src[0] + 1) = 44;
      __src[1] = 0xE100000000000000;
      *&__src[2] = 0xE000000000000000;
      *(&__src[2] + 1) = 92;
      *&__src[3] = 0xE100000000000000;
      BYTE8(__src[3]) = 1;
      *&__src[4] = 34;
      *(&__src[4] + 1) = 0xE100000000000000;
      LOBYTE(__src[5]) = 1;
      *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      *&__src[6] = 10;
      *(&__src[6] + 1) = 0xE100000000000000;
      __src[7] = 0;
      LOBYTE(__src[8]) = 1;
      *(&__src[8] + 1) = 0;
      __dst[0] = 1;
      LOBYTE(v57) = 1;
      v58 = 44;
      v59 = 0xE100000000000000;
      v60 = 0;
      v61 = 0xE000000000000000;
      v62 = 92;
      v63 = 0xE100000000000000;
      v64 = 1;
      v65 = 34;
      v66 = 0xE100000000000000;
      v67 = 1;
      v68 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v69 = 10;
      v70 = 0xE100000000000000;
      v71 = 0;
      v72 = 1;
      v73 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v57);
      memcpy(__dst, __src, sizeof(__dst));
      v24 = v87;
      MLDataTable.init(contentsOf:options:)(v81, __dst);
      if (!v24)
      {
        v25 = v78;
        v26 = v76;
        v27 = *v76;
        *v76 = v77;
        v28 = *(v26 + 2);
        *(v26 + 8) = v25;
        outlined consume of Result<_DataTable, Error>(v27, v28);
        v4 = v75;
        v87 = 0;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
        LOBYTE(v53[0]) = 1;
        *(&v53[0] + 1) = 44;
        v53[1] = 0xE100000000000000;
        *&v53[2] = 0xE000000000000000;
        *(&v53[2] + 1) = 92;
        *&v53[3] = 0xE100000000000000;
        BYTE8(v53[3]) = 1;
        *&v53[4] = 34;
        *(&v53[4] + 1) = 0xE100000000000000;
        LOBYTE(v53[5]) = 1;
        *(&v53[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
        *&v53[6] = 10;
        *(&v53[6] + 1) = 0xE100000000000000;
        v53[7] = 0;
        LOBYTE(v53[8]) = 1;
        *(&v53[8] + 1) = 0;
        v54[0] = 1;
        v36[0] = 1;
        v37 = 44;
        v38 = 0xE100000000000000;
        v39 = 0;
        v40 = 0xE000000000000000;
        v41 = 92;
        v42 = 0xE100000000000000;
        v43 = 1;
        v44 = 34;
        v45 = 0xE100000000000000;
        v46 = 1;
        v47 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
        v48 = 10;
        v49 = 0xE100000000000000;
        v50 = 0;
        v51 = 1;
        v52 = 0;
        outlined retain of MLDataTable.ParsingOptions(v53);
        outlined release of MLDataTable.ParsingOptions(v36);
        memcpy(v54, v53, sizeof(v54));
        v29 = v87;
        MLDataTable.init(contentsOf:options:)(v4, v54);
        if (!v29)
        {
          v30 = v80;
          v31 = v85;
          v32 = *v85;
          *v85 = v79;
          v33 = *(v31 + 8);
          *(v31 + 8) = v30;
          outlined consume of Result<_DataTable, Error>(v32, v33);
          LOBYTE(v4) = 1;
        }
      }
    }
  }

  return v4;
}

uint64_t HandPoseClassifierTrainingSessionDelegate.save(to:)(uint64_t a1, __m128 a2)
{
  v17 = v2;
  v18 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters + v3;
  swift_beginAccess(v11, v16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, &v15, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v15, 1, v7) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v15, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
    v12 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v12, 0, 0);
    *v13 = 0xD000000000000030;
    *(v13 + 8) = "Feature Extractor" + 0x8000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 32) = 0;
    *(v13 + 48) = 2;
    return swift_willThrow();
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v15, &v15, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
    MLHandPoseClassifier.PersistentParameters.save(toSessionDirectory:)(v18, a2);
    return outlined destroy of MLActivityClassifier.ModelParameters.Validation(&v15, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
  }
}

NSURL *HandPoseClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1, __m128 a2)
{
  v37 = v2;
  v35 = v3;
  v31 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v33 = &v28;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v36 = &v28;
  v9 = type metadata accessor for URL(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v32 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v14 = *(*(v32 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v34 = &v28;
  v17 = alloca(v14);
  v18 = alloca(v14);
  (*(v10 + 16))(&v28, v31, v9);
  v19 = v37;
  result = MLHandPoseClassifier.PersistentParameters.init(sessionDirectory:)(&v28);
  if (!v19)
  {
    v37 = &v28;
    v21 = v35 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
    swift_beginAccess(v35 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, v29, 0, 0);
    v22 = v36;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, v36, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
    v23 = v22;
    v24 = v32;
    if (__swift_getEnumTagSinglePayload(v23, 1, v32) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
      v25 = v33;
      outlined init with take of MLClassifierMetrics(v37, v33, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
      swift_beginAccess(v21, v30, 33, 0);
      outlined assign with take of MLHandPoseClassifier.PersistentParameters?(v25, v21);
      return swift_endAccess(v30);
    }

    else
    {
      v26 = v34;
      outlined init with take of MLClassifierMetrics(v36, v34, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
      v27 = v37;
      HandPoseClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v37, v26, a2);
      outlined destroy of MLActivityClassifier.ModelParameters.Validation(v26, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters.Validation(v27, type metadata accessor for MLHandPoseClassifier.PersistentParameters);
    }
  }

  return result;
}

void *HandPoseClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, uint64_t a2, __m128 a3)
{
  v141 = v3;
  v122 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
  v5 = *(*(v122 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v119 = &v118;
  v8 = type metadata accessor for DataFrame(0);
  v132 = *(v8 - 8);
  v9 = v132[8];
  v10 = alloca(v9);
  v11 = alloca(v9);
  v133 = &v118;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v140 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v14 = *(*(v140 - 1) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v120._object = &v118;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v134 = &v118;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v126 = &v118;
  v21 = alloca(v14);
  v22 = alloca(v14);
  v137 = &v118;
  v23 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(0);
  v24 = v23[6];
  v25 = *(a2 + v24);
  if (*(a1 + v24) != v25)
  {
    v138 = *(a1 + v24);
    v34 = lazy protocol witness table accessor for type Int and conformance Int();
    v141 = BinaryInteger.description.getter(&type metadata for Int, v34);
    v140 = v35;
    v138 = v25;
    v36 = BinaryInteger.description.getter(&type metadata for Int, v34);
    v38 = v37;
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    *v40 = 0x6953206863746142;
    *(v40 + 8) = 0xEA0000000000657ALL;
LABEL_11:
    *(v40 + 16) = v141;
    *(v40 + 24) = v140;
    *(v40 + 32) = v36;
    *(v40 + 40) = v38;
    *(v40 + 48) = 3;
    return swift_willThrow();
  }

  v130 = &v118;
  v26 = v23[7];
  v27 = *(a2 + v26);
  if (*(a1 + v26) != v27)
  {
    v41 = "metricsAttributesDictionary" + 0x8000000000000000;
    v138 = *(a1 + v26);
    v42 = lazy protocol witness table accessor for type Int and conformance Int();
    v141 = BinaryInteger.description.getter(&type metadata for Int, v42);
    v140 = v43;
    v138 = v27;
    v36 = BinaryInteger.description.getter(&type metadata for Int, v42);
    v38 = v44;
    v45 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v45, 0, 0);
    v46 = 0xD000000000000012;
LABEL_10:
    *v40 = v46;
    *(v40 + 8) = v41;
    goto LABEL_11;
  }

  v28 = v23[8];
  v29 = *(a2 + v28);
  if (*(a1 + v28) != v29)
  {
    v41 = "Maximum Iterations" + 0x8000000000000000;
    v138 = *(a1 + v28);
    v47 = lazy protocol witness table accessor for type Int and conformance Int();
    v141 = BinaryInteger.description.getter(&type metadata for Int, v47);
    v140 = v48;
    v138 = v29;
    v36 = BinaryInteger.description.getter(&type metadata for Int, v47);
    v38 = v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    v46 = 0xD000000000000014;
    goto LABEL_10;
  }

  v124 = a2;
  v127 = v8;
  v30 = v141;
  result = MLHandPoseClassifier.DataSource.imagesWithAnnotations()(a3);
  if (v30)
  {
    return result;
  }

  v32 = v138;
  v33 = v139;
  MLHandPoseClassifier.DataSource.imagesWithAnnotations()(a3);
  v125 = 0;
  v141 = v138;
  v51 = v32;
  v52 = v139;
  v138 = v51;
  v53 = v33;
  v54 = v33 & 1;
  v139 = v54;
  v136 = v51;
  v142 = v53;
  outlined copy of Result<_DataTable, Error>(v51, v53);
  v135 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v138, v139);
  v143 = v52;
  if (v135 > 0)
  {
    v138 = v141;
    LOBYTE(v131) = v52 & 1;
    v139 = v52 & 1;
    outlined copy of Result<_DataTable, Error>(v141, v52);
    v135 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v138, v139);
    if (v135 > 0)
    {
      v138 = v136;
      v139 = v54;
      v55 = HandPoseClassifierTrainingSessionDelegate.pathsByLabel(for:)(&v138, *a3.i64);
      v138 = v141;
      v139 = v131;
      v56 = HandPoseClassifierTrainingSessionDelegate.pathsByLabel(for:)(&v138, *a3.i64);
      v57 = v56;
      v58 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SaySSGTt1g5(v55, v56);
      v55;
      v57;
      if (v58)
      {
        outlined consume of Result<_DataTable, Error>(v136, v142);
        v59 = v141;
        v60 = v143;
        return outlined consume of Result<_DataTable, Error>(v59, v60);
      }

      v81 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v81, 0, 0);
      *v82 = 1;
      *(v82 + 8) = 0;
      *(v82 + 24) = 0;
      *(v82 + 40) = 0;
      *(v82 + 48) = 4;
      swift_willThrow();
LABEL_39:
      outlined consume of Result<_DataTable, Error>(v141, v143);
      v59 = v136;
      v60 = v142;
      return outlined consume of Result<_DataTable, Error>(v59, v60);
    }
  }

  v61 = v137;
  outlined init with copy of MLTrainingSessionParameters(a1, v137, type metadata accessor for MLHandPoseClassifier.DataSource);
  v62 = v140;
  if (swift_getEnumCaseMultiPayload(v61, v140) == 3)
  {
    v63 = *v61;
    LOBYTE(v135) = *(v61 + 8);
    v120._countAndFlagsBits = *(v61 + 16);
    v131 = *(v61 + 24);
    v121 = *(v61 + 32);
    v123 = *(v61 + 40);
    *(v61 + 56);
    v64 = v126;
    outlined init with copy of MLTrainingSessionParameters(v124, v126, type metadata accessor for MLHandPoseClassifier.DataSource);
    if (swift_getEnumCaseMultiPayload(v64, v62) == 3)
    {
      v140 = *v64;
      LODWORD(v137) = *(v64 + 8);
      v122 = *(v64 + 16);
      v133 = *(v64 + 24);
      v120._object = *(v64 + 32);
      v65 = v63;
      v66 = *(v64 + 40);
      *(v64 + 56);
      v128 = v65;
      v67 = v135;
      LOBYTE(v135) = v135 & 1;
      v129 = v135;
      v134 = v65;
      LODWORD(v132) = v67;
      outlined copy of Result<_DataTable, Error>(v65, v67);
      v68._countAndFlagsBits = v121;
      v69 = v123;
      v68._object = v123;
      MLDataTable.subscript.getter(v68);
      v69;
      outlined consume of Result<_DataTable, Error>(v128, v129);
      v128 = v138;
      v129 = v139;
      v70 = Array<A>.init(_:)(&v128, *a3.i64);
      v128 = v140;
      LOBYTE(v126) = v137 & 1;
      v129 = v137 & 1;
      outlined copy of Result<_DataTable, Error>(v140, v137);
      v68._countAndFlagsBits = v120._object;
      v68._object = v66;
      MLDataTable.subscript.getter(v68);
      v66;
      outlined consume of Result<_DataTable, Error>(v128, v129);
      v128 = v138;
      v129 = v139;
      v71 = Array<A>.init(_:)(&v128, *a3.i64);
      LOBYTE(v66) = v71;
      LOBYTE(v65) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v70, v71);
      v70;
      v66;
      if (v65)
      {
        v128 = v134;
        v129 = v135;
        outlined copy of Result<_DataTable, Error>(v134, v132);
        v72._countAndFlagsBits = v120._countAndFlagsBits;
        v73 = v131;
        v72._object = v131;
        MLDataTable.subscript.getter(v72);
        v73;
        outlined consume of Result<_DataTable, Error>(v128, v129);
        v128 = v138;
        v129 = v139;
        v74 = Array<A>.init(_:)(&v128, *a3.i64);
        v128 = v140;
        v129 = v126;
        LODWORD(v137) = v137;
        outlined copy of Result<_DataTable, Error>(v140, v137);
        v72._countAndFlagsBits = v122;
        v75 = v133;
        v72._object = v133;
        MLDataTable.subscript.getter(v72);
        v75;
        outlined consume of Result<_DataTable, Error>(v128, v129);
        v128 = v138;
        v129 = v139;
        v76 = Array<A>.init(_:)(&v128, *a3.i64);
        v77 = v76;
        ML11MLDataValueO_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v74, v76);
        v74;
        v77;
        if (ML11MLDataValueO_Tt1g5)
        {
          outlined consume of Result<_DataTable, Error>(v136, v142);
          outlined consume of Result<_DataTable, Error>(v141, v143);
          outlined consume of Result<_DataTable, Error>(v140, v137);
          return outlined consume of Result<_DataTable, Error>(v134, v132);
        }

        v116 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v116, 0, 0);
        *v117 = 1;
        *(v117 + 8) = 0;
        *(v117 + 24) = 0;
        *(v117 + 40) = 0;
        *(v117 + 48) = 4;
        swift_willThrow();
        v112 = v140;
        v111 = v137;
      }

      else
      {
        v133;
        v131;
        v109 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v109, 0, 0);
        *v110 = 1;
        *(v110 + 8) = 0;
        *(v110 + 24) = 0;
        *(v110 + 40) = 0;
        *(v110 + 48) = 4;
        swift_willThrow();
        v111 = v137;
        v112 = v140;
      }

      outlined consume of Result<_DataTable, Error>(v112, v111);
      outlined consume of Result<_DataTable, Error>(v134, v132);
      goto LABEL_39;
    }

    outlined consume of Result<_DataTable, Error>(v63, v135);
    v123;
    v131;
    v80 = v136;
    v79 = v64;
  }

  else
  {
    v79 = v61;
    v80 = v136;
  }

  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v79, type metadata accessor for MLHandPoseClassifier.DataSource);
  v83 = a1;
  v84 = v134;
  outlined init with copy of MLTrainingSessionParameters(v83, v134, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(v84, v62) != 5)
  {
    outlined consume of Result<_DataTable, Error>(v80, v142);
    outlined consume of Result<_DataTable, Error>(v141, v143);
    v108 = v84;
    return outlined destroy of MLActivityClassifier.ModelParameters.Validation(v108, type metadata accessor for MLHandPoseClassifier.DataSource);
  }

  v85 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
  v86 = v85[12];
  v131 = *(v84 + v86);
  v137 = *(v84 + v86 + 8);
  v87 = v85[16];
  v135 = *(v84 + v87);
  v126 = *(v84 + v87 + 8);
  *(v84 + v85[20] + 8);
  v88 = v84;
  v89 = v132;
  v134 = v132[4];
  (v134)(v130, v88, v127);
  object = v120._object;
  outlined init with copy of MLTrainingSessionParameters(v124, v120._object, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(object, v62) != 5)
  {
    (v89[1])(v130, v127);
    outlined consume of Result<_DataTable, Error>(v136, v142);
    outlined consume of Result<_DataTable, Error>(v141, v143);
    v126;
    v137;
    v108 = object;
    return outlined destroy of MLActivityClassifier.ModelParameters.Validation(v108, type metadata accessor for MLHandPoseClassifier.DataSource);
  }

  v91 = v85[12];
  v121 = *&object[v91];
  v140 = *&object[v91 + 8];
  v92 = v85[16];
  v124 = *&object[v92];
  v123 = *&object[v92 + 8];
  *&object[v85[20] + 8];
  (v134)(v133, object, v127);
  v93 = v119;
  v94 = v126;
  DataFrame.subscript.getter(v135, v126);
  v94;
  v95 = v123;
  DataFrame.subscript.getter(v124, v123);
  v96 = v93;
  v95;
  v97 = v125;
  LOBYTE(v93) = specialized Sequence.allSatisfy(_:)(v93);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v96, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
  if (v93)
  {
    v98 = v137;
    v134 = v97;
    DataFrame.subscript.getter(v131, v137);
    v98;
    v99 = v140;
    DataFrame.subscript.getter(v121, v140);
    v99;
    v100 = specialized Sequence.allSatisfy(_:)(v96);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v96, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
    v101 = (v100 & 1) == 0;
    v102 = v136;
    v103 = v141;
    v104 = v132;
    if (v101)
    {
      v105 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v105, 0, 0);
      *v106 = 1;
      *(v106 + 8) = 0;
      *(v106 + 24) = 0;
      *(v106 + 40) = 0;
      *(v106 + 48) = 4;
      swift_willThrow();
    }

    outlined consume of Result<_DataTable, Error>(v103, v143);
    outlined consume of Result<_DataTable, Error>(v102, v142);
    v107 = v104[1];
  }

  else
  {
    v140;
    v137;
    v113 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v113, 0, 0);
    *v114 = 1;
    *(v114 + 8) = 0;
    *(v114 + 24) = 0;
    *(v114 + 40) = 0;
    *(v114 + 48) = 4;
    swift_willThrow();
    outlined consume of Result<_DataTable, Error>(v141, v143);
    outlined consume of Result<_DataTable, Error>(v136, v142);
    v107 = v132[1];
  }

  v115 = v127;
  v107(v133, v127);
  return (v107)(v130, v115);
}

uint64_t closure #1 in HandPoseClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, v10, &demangling cache variable for type metadata for Any?);
  if (v11)
  {
    if (swift_dynamicCast(&v15, v10, &type metadata for Any + 8, &type metadata for AnyHashable, 6))
    {
      goto LABEL_6;
    }

    v16 = 0;
    v15 = 0;
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for Any?);
    v15 = 0;
    v16 = 0;
  }

  v17 = 0;
LABEL_6:
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a2, v10, &demangling cache variable for type metadata for Any?);
  if (v11)
  {
    if (swift_dynamicCast(&v18, v10, &type metadata for Any + 8, &type metadata for AnyHashable, 6))
    {
      goto LABEL_11;
    }

    v19 = 0;
    v18 = 0;
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for Any?);
    v18 = 0;
    v19 = 0;
  }

  v20 = 0;
LABEL_11:
  v2 = v12;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v15, v10, &demangling cache variable for type metadata for AnyHashable?);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v18, v12, &demangling cache variable for type metadata for AnyHashable?);
  if (!v11)
  {
    if (!v13)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for AnyHashable?);
      LOBYTE(v2) = 1;
      goto LABEL_18;
    }

LABEL_17:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for (AnyHashable?, AnyHashable?));
    LODWORD(v2) = 0;
    goto LABEL_18;
  }

  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v9, &demangling cache variable for type metadata for AnyHashable?);
  if (!v13)
  {
    outlined destroy of AnyHashable(v9);
    goto LABEL_17;
  }

  LODWORD(v2) = static AnyHashable.== infix(_:_:)(v9, v8, v3, v4, v5, v6, v12[0], v12[1], v12[2], v13, v14);
  outlined destroy of AnyHashable(v8);
  outlined destroy of AnyHashable(v9);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for AnyHashable?);
LABEL_18:
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v18, &demangling cache variable for type metadata for AnyHashable?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v15, &demangling cache variable for type metadata for AnyHashable?);
  return v2;
}

void *HandPoseClassifierTrainingSessionDelegate.pathsByLabel(for:)(uint64_t a1, double a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined copy of Result<_DataTable, Error>(*a1, v3);
  v4._countAndFlagsBits = 0x7461506F65646976;
  v4._object = 0xE900000000000068;
  _s8CreateML11MLDataTableVyAA0C6ColumnVyxGSgSS_xmtcAA0C16ValueConvertibleRzluigSS_Tt1B5(v4, v2, v3);
  outlined consume of Result<_DataTable, Error>(v2, v3);
  v5 = v40;
  if (v40 == 0xFF)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    return Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v31, &protocol witness table for String);
  }

  else
  {
    v35 = v39;
    outlined copy of Result<_DataTable, Error>(v2, v3);
    v6._countAndFlagsBits = 0x6C6562616CLL;
    v6._object = 0xE500000000000000;
    _s8CreateML11MLDataTableVyAA0C6ColumnVyxGSgSS_xmtcAA0C16ValueConvertibleRzluigSS_Tt1B5(v6, v2, v3);
    outlined consume of Result<_DataTable, Error>(v2, v3);
    v7 = v39;
    if ((v40 & 1) != 0 || (v36 = v39, outlined copy of Result<_DataTable, Error>(v39, 0), v8 = CMLColumn.size.getter(), outlined consume of MLDataTable?(v39, v40), v32 = v8, v8 < 0))
    {
      BUG();
    }

    if (v8)
    {
      v9 = 0;
      v10 = v40;
      v37 = 0;
      v11 = v39;
      do
      {
        v43 = v9;
        if (v40)
        {
          outlined copy of MLDataTable?(v11, v10);
          v38 = 0;
          v42 = 0xE000000000000000;
        }

        else
        {
          outlined copy of MLDataTable?(v11, v10);
          _UntypedColumn.valueAtIndex(index:)(v37, a2);
          if (v41 == 2)
          {
            v38 = v39;
            v42 = v40;
          }

          else
          {
            outlined consume of MLDataValue(v39, v40, v41);
            v38 = 0;
            v42 = 0xE000000000000000;
          }

          v10 = v40;
        }

        outlined consume of MLDataTable?(v11, v10);
        outlined copy of MLDataTable?(v7, v5);
        _UntypedColumn.valueAtIndex(index:)(v37, a2);
        if (v41 == 2)
        {
          v34 = v40;
          v33 = v39;
        }

        else
        {
          outlined consume of MLDataValue(v39, v40, v41);
          v33 = 0;
          v34 = 0xE000000000000000;
        }

        outlined consume of MLDataTable?(v7, v5);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v43, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
        v39 = _swiftEmptyDictionarySingleton;
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v42);
        v14 = (v13 & 1) == 0;
        v15 = __OFADD__(_swiftEmptyDictionarySingleton[2], v14);
        v16 = _swiftEmptyDictionarySingleton[2] + v14;
        if (v15)
        {
          BUG();
        }

        v17 = v13;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [String]>);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v16))
        {
          v18 = v42;
          v44 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v42);
          LOBYTE(v20) = v20 & 1;
          if ((v17 & 1) != v20)
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v42, v20, v19);
            BUG();
          }
        }

        else
        {
          v18 = v42;
        }

        if ((v17 & 1) == 0)
        {
          _swiftEmptyDictionarySingleton[(v44 >> 6) + 8] |= 1 << v44;
          v21 = _swiftEmptyDictionarySingleton[6];
          v22 = 16 * v44;
          *(v21 + v22) = v38;
          *(v21 + v22 + 8) = v18;
          *(_swiftEmptyDictionarySingleton[7] + 8 * v44) = _swiftEmptyArrayStorage;
          v23 = _swiftEmptyDictionarySingleton[2];

          v15 = __OFADD__(1, v23);
          v24 = v23 + 1;
          if (v15)
          {
            BUG();
          }

          _swiftEmptyDictionarySingleton[2] = v24;
        }

        v25 = _swiftEmptyDictionarySingleton[7];

        v26 = *(v25 + 8 * v44);
        v27 = swift_isUniquelyReferenced_nonNull_native(v26);
        *(v25 + 8 * v44) = v26;
        if (!v27)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
          *(v25 + 8 * v44) = v26;
        }

        v28 = v26[2];
        if (v26[3] >> 1 <= v28)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26[3] >= 2uLL, v28 + 1, 1, v26);
          *(v25 + 8 * v44) = v26;
        }

        v26[2] = v28 + 1;
        v29 = 2 * v28;
        v26[v29 + 4] = v33;
        v26[v29 + 5] = v34;
        v42;
        v9 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
        ++v37;
        v7 = v35;
        v11 = v36;
        v5 = v40;
        v10 = v40;
      }

      while (v32 != v37);
      outlined consume of MLDataTable?(v35, v40);
      outlined consume of MLDataTable?(v36, v40);
      return _swiftEmptyDictionarySingleton;
    }

    else
    {
      outlined consume of MLDataTable?(v39, v40);
      outlined consume of MLDataTable?(v39, v40);
      return _swiftEmptyDictionarySingleton;
    }
  }
}

uint64_t HandPoseClassifierTrainingSessionDelegate.deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters.Validation(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  outlined consume of MLDataTable?(*(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable), *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable + 8));
  outlined consume of Result<_DataTable, Error>(*(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures), *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures + 8));
  outlined consume of Result<_DataTable, Error>(*(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures), *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures + 8));

  *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
  *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary);
  return v0;
}

uint64_t type metadata accessor for HandPoseClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for HandPoseClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for HandPoseClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for HandPoseClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for HandPoseClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLHandPoseClassifier.PersistentParameters?(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = "\t";
      v4[3] = &value witness table for Builtin.Int64 + 64;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &unk_341CA8;
      v4[6] = &unk_341CA8;
      v4[7] = &unk_341CC0;
      v4[8] = &unk_341CC0;
      v4[9] = &value witness table for Builtin.BridgeObject + 64;
      result = swift_updateClassMetadata2(a1, 256, 10, v4, a1 + 80);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for MLHandPoseClassifier.PersistentParameters?(uint64_t a1)
{
  result = lazy cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?;
  if (!lazy cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?)
  {
    v2 = type metadata accessor for MLHandPoseClassifier.PersistentParameters(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for MLHandPoseClassifier.PersistentParameters? = result;
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance HandPoseClassifierTrainingSessionDelegate(Swift::Int a1)
{
  *&v2 = HandPoseClassifierTrainingSessionDelegate.extractFeatures(from:)(a1);
  if (v5)
  {
    return (*(v1 + 8))(v3, v4, *(&v2 + 1));
  }

  else
  {
    return (*(v1 + 8))(v2, BYTE8(v2));
  }
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance HandPoseClassifierTrainingSessionDelegate(Swift::Int a1)
{
  v7 = HandPoseClassifierTrainingSessionDelegate.train(from:)(a1);
  if (v5)
  {
    return (*(v1 + 8))(v3, v4, v7.metrics._rawValue, *&v7.finished);
  }

  else
  {
    return (*(v1 + 8))(v7._0, v7.metrics._rawValue, v7.finished);
  }
}

uint64_t lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = type metadata accessor for AnyColumn(255);
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

uint64_t outlined assign with take of MLHandPoseClassifier.PersistentParameters?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandPoseClassifier.PersistentParameters?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t static _TextUtilities.getTextLabels(from:)(void *a1, uint64_t a2)
{
  *&v135 = v2;
  v131 = a2;
  v120 = a1;
  v3 = *(*(type metadata accessor for String.Encoding(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v111 = &v105;
  v124 = type metadata accessor for UTType(0);
  v125 = *(v124 - 8);
  v6 = *(v125 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v117 = &v105;
  v9 = type metadata accessor for URL(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v122 = &v105;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v128 = &v105;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v18 = *(*(type metadata accessor for MLTextClassifier.DataSource(0) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  outlined init with copy of MLTextClassifier.DataSource(v131, &v105);
  v21 = v10;
  (*(v10 + 32))(&v105, &v105, v9);
  v22 = v135;
  v23 = static _FileUtilities.getReadableSubdirectoriesOfDirectory(at:)();
  *&v135 = v22;
  if (v22)
  {
    (*(v10 + 8))(&v105, v9);
    return 0x6C6562616CLL;
  }

  v24 = v23;
  v126 = v23[2];
  v136 = v9;
  v137 = v10;
  v130 = &v105;
  if (v126 || (v23, v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<URL>), v26 = *(v10 + 80), v27 = (v26 + 32) & ~*(v10 + 80), v28 = swift_allocObject(v25, v27 + *(v137 + 72), v26 | 7), *(v28 + 16) = 1, *(v28 + 24) = 2, v29 = v28 + v27, v21 = v137, (*(v137 + 16))(v29, &v105, v9), v24 = v28, (v126 = *(v28 + 16)) != 0))
  {
    v119 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v118 = v24 + v119;
    v113 = "are not properly constructed." + 0x8000000000000000;
    v30 = 0;
    v134 = _swiftEmptyArrayStorage;
    v138 = _swiftEmptyArrayStorage;
    v129._object = v24;
    while (2)
    {
      if (v30 >= v24[2])
      {
        BUG();
      }

      v31 = *(v21 + 16);
      v121 = *(v21 + 72);
      v32 = v21;
      v33 = v30;
      v34 = &v118[v30 * v121];
      v35 = v128;
      v110 = v31;
      v31(v128, v34, v9);
      v36 = v35;
      v129._countAndFlagsBits = URL.lastPathComponent.getter();
      v132 = v37;
      v38 = v117;
      static UTType.text.getter();
      v39 = v135;
      v40 = static _FileUtilities.readableFiles(at:type:)(v36, v38);
      *&v135 = v39;
      if (v39)
      {
        (*(v125 + 8))(v38, v124);
        v132;
        v80 = *(v32 + 8);
        v81 = v136;
        v80(v36, v136);
        v134;
        v138;
        v129._object;
      }

      else
      {
        v127 = v40;
        (*(v125 + 8))(v38, v124);
        v41 = v127;
        v42 = v127[2];
        if (v42)
        {
          v112 = v127[2];
          v115 = v42 - 1;
          v43 = v127 + v119;
          v44 = 0;
          v45 = 0;
          v123 = v33 + 1;
          v116 = v127 + v119;
LABEL_10:
          v114 = v44;
          v46 = &v43[v45 * v121];
          v9 = v136;
          do
          {
            if (v45 >= v41[2])
            {
              BUG();
            }

            v47 = v122;
            v131 = v46;
            v110(v122, v46, v9);
            v48 = v111;
            static String.Encoding.utf8.getter();
            v49 = v135;
            v50 = String.init(contentsOf:encoding:)(v47, v48);
            if (!v49)
            {
              v65 = v50;
              v66 = v51;
              *&v135 = 0;
              if (swift_isUniquelyReferenced_nonNull_native(v134))
              {
                v67 = v134;
              }

              else
              {
                v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v134[2] + 1, 1, v134);
              }

              v68 = v67[2];
              v69 = v67[3];
              v70 = v68 + 1;
              if (v69 >> 1 <= v68)
              {
                v131 = v68 + 1;
                v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v69 >= 2, v70, 1, v67);
                v70 = v131;
              }

              v67[2] = v70;
              v71 = 2 * v68;
              v67[v71 + 4] = v65;
              v134 = v67;
              v67[v71 + 5] = v66;

              v72 = v138;
              if (!swift_isUniquelyReferenced_nonNull_native(v138))
              {
                v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72[2] + 1, 1, v72);
              }

              v73 = v72[2];
              if (v72[3] >> 1 <= v73)
              {
                v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v72[3] >= 2uLL, v73 + 1, 1, v72);
                v74 = v45;
                v138 = v79;
              }

              else
              {
                v74 = v45;
                v138 = v72;
              }

              v45 = v74 + 1;
              v75 = v138;
              v138[2] = v73 + 1;
              v76 = 2 * v73;
              v75[v76 + 4] = v129._countAndFlagsBits;
              v75[v76 + 5] = v132;
              v64 = *(v137 + 8);
              v77 = v74;
              v64(v122, v136);
              LOBYTE(v44) = 1;
              v78 = v115 == v77;
              v30 = v123;
              v41 = v127;
              v43 = v116;
              if (v78)
              {
                v127;
                v9 = v136;
                goto LABEL_29;
              }

              goto LABEL_10;
            }

            v108 = (v45 + 1);
            v49;
            *&v133 = 0;
            *(&v133 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(34);
            v52 = *(&v133 + 1);
            SBYTE8(v133);
            *&v133 = 0xD00000000000001FLL;
            *(&v133 + 1) = v113;
            v53._countAndFlagsBits = URL.path.getter(v52);
            object = v53._object;
            String.append(_:)(v53);
            object;
            v55._countAndFlagsBits = 46;
            v55._object = 0xE100000000000000;
            String.append(_:)(v55);
            v58 = v133;
            v57 = v58 >> 64;
            v56 = v58;
            v109 = v133;
            LOBYTE(v135) = static os_log_type_t.info.getter(46);
            v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
            v60 = swift_allocObject(v59, 64, 7);
            *(v60 + 16) = 1;
            *(v60 + 24) = 2;
            *(v60 + 56) = &type metadata for String;
            *(v60 + 32) = __PAIR128__(v57, v56);

            print(_:separator:terminator:)(v60, 32, 0xE100000000000000, 10, 0xE100000000000000);
            v60;
            type metadata accessor for OS_os_log();
            v61 = static OS_os_log.default.getter(0, 32);
            v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
            v63 = swift_allocObject(v62, 72, 7);
            v63[2] = 1;
            v63[3] = 2;
            v63[7] = &type metadata for String;
            v63[8] = lazy protocol witness table accessor for type String and conformance String();
            v63[4] = v109;
            v63[5] = v57;

            os_log(_:dso:log:type:_:)("%@\n");
            v57;

            v63;
            v64 = *(v137 + 8);
            v9 = v136;
            v64(v47, v136);
            v45 = v108;
            v46 = v121 + v131;
            *&v135 = 0;
            v30 = v123;
            v41 = v127;
          }

          while (v112 != v108);
          v127;
          if ((v114 & 1) == 0)
          {
            v83 = v129._object;
            goto LABEL_34;
          }

          *&v135 = 0;
LABEL_29:
          v64(v128, v9);
          v132;
          v21 = v137;
          v24 = v129._object;
          if (v30 != v126)
          {
            continue;
          }

          v129._object;
          v84 = v134;
          goto LABEL_37;
        }

        v82 = v127;
        v129._object;
        v83 = v82;
LABEL_34:
        v83;
        v134;
        v138;
        *&v133 = 0;
        *(&v133 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(29);
        SBYTE8(v133);
        *&v133 = 0xD000000000000019;
        *(&v133 + 1) = "tted text file " + 0x8000000000000000;
        v85._countAndFlagsBits = v129._countAndFlagsBits;
        v85._object = v132;
        String.append(_:)(v85);
        v85._object = 0xE200000000000000;
        v85._countAndFlagsBits = 11815;
        String.append(_:)(v85);
        v86 = *(&v133 + 1);
        v87 = v133;
        v88 = static os_log_type_t.error.getter(11815);
        log(_:type:)(__PAIR128__(v86, v87), v88);
        v86;
        *&v133 = 0;
        *(&v133 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(29);
        SBYTE8(v133);
        *&v133 = 0xD000000000000019;
        *(&v133 + 1) = "tted text file " + 0x8000000000000000;
        v85._countAndFlagsBits = v129._countAndFlagsBits;
        LOBYTE(v86) = v132;
        v85._object = v132;
        String.append(_:)(v85);
        v86;
        v85._countAndFlagsBits = 11815;
        v85._object = 0xE200000000000000;
        String.append(_:)(v85);
        v135 = v133;
        v89 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        v90 = swift_allocError(&type metadata for MLCreateError, v89, 0, 0);
        *v91 = v135;
        *(v91 + 16) = 0;
        *(v91 + 32) = 0;
        *(v91 + 48) = 0;
        *&v135 = v90;
        swift_willThrow();
        v80 = *(v137 + 8);
        v81 = v136;
        v80(v128, v136);
      }

      break;
    }

    v80(v130, v81);
    return 0x6C6562616CLL;
  }

  v28;
  v84 = _swiftEmptyArrayStorage;
  v138 = _swiftEmptyArrayStorage;
LABEL_37:
  v92 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v92, v106);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  *(inited + 32) = 1954047348;
  *(inited + 40) = 0xE400000000000000;
  *&v133 = v84;
  v94 = alloca(24);
  v95 = alloca(32);
  v107 = &v133;
  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v96 & 1;
  v133;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  *&v133 = v138;
  v97 = alloca(24);
  v98 = alloca(24);
  v107 = &v133;
  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 88) = v99 & 1;
  v133;
  v100 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  v101 = v135;
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v100);
  *&v135 = v101;
  if (!v101)
  {
    v102 = BYTE8(v133);
    v103 = v120;
    *v120 = v133;
    *(v103 + 8) = v102;
  }

  (*(v137 + 8))(v130, v136);
  return 0x6C6562616CLL;
}

void *static _TextUtilities.getTextLabeledDictionary(from:)(uint64_t a1, double a2)
{
  v4 = static _TextUtilities.getTextLabels(from:)(&v69, a1);
  if (!v2)
  {
    v72._countAndFlagsBits = v4;
    v8 = v69;
    v60 = v70;
    v54 = v69;
    v9 = v70 & 1;
    v55 = v70 & 1;
    v61 = v7;
    v63 = v6;
    v10 = v5;
    outlined copy of Result<_DataTable, Error>(v69, v70);
    v11._countAndFlagsBits = v72._countAndFlagsBits;
    v11._object = v10;
    MLDataTable.subscript.getter(v11);
    v10;
    outlined consume of Result<_DataTable, Error>(v54, v55);
    v12 = v69;
    LOBYTE(v72._countAndFlagsBits) = v70;
    v57 = v8;
    outlined copy of Result<_DataTable, Error>(v8, v60);
    v11._countAndFlagsBits = v63;
    v11._object = v61;
    MLDataTable.subscript.getter(v11);
    v61;
    outlined consume of Result<_DataTable, Error>(v8, v9);
    if (LOBYTE(v72._countAndFlagsBits) || (v58 = v69, HIBYTE(v72._object) = v70, outlined copy of Result<_DataTable, Error>(v12, 0), v13 = CMLColumn.size.getter(), outlined consume of Result<_DataTable, Error>(v12, 0), v56 = v13, v13 < 0))
    {
      BUG();
    }

    v3 = _swiftEmptyDictionarySingleton;
    if (v13)
    {
      v14 = 0;
      v59 = v12;
      do
      {
        v62 = v3;
        outlined copy of Result<_DataTable, Error>(v12, 0);
        v64 = v14;
        _UntypedColumn.valueAtIndex(index:)(v14, a2);
        outlined consume of Result<_DataTable, Error>(v12, 0);
        v15 = v69;
        v16 = v70;
        if (v71 != 2)
        {
          outlined consume of MLDataValue(v69, v70, v71);
          BUG();
        }

        if (v3[2] && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v70), (v18 & 1) != 0))
        {
          v72._countAndFlagsBits = *(v3[7] + 8 * v17);

          outlined consume of MLDataValue(v15, v16, 2);

          _UntypedColumn.valueAtIndex(index:)(v64, a2);
          outlined consume of Result<_DataTable, Error>(v12, 0);
          v65 = v69;
          v67 = v70;
          if (v71 != 2)
          {
            outlined consume of MLDataValue(v69, v70, v71);
            BUG();
          }

          if (HIBYTE(v72._object))
          {
            goto LABEL_47;
          }

          outlined copy of Result<_DataTable, Error>(v58, 0);
          _UntypedColumn.valueAtIndex(index:)(v64, a2);
          outlined consume of Result<_DataTable, Error>(v58, 0);
          v19 = v69;
          v20 = v70;
          if (v71 != 2)
          {
            outlined consume of MLDataValue(v69, v70, v71);
LABEL_47:
            BUG();
          }

          if (!swift_isUniquelyReferenced_nonNull_native(v72._countAndFlagsBits))
          {
            v72._countAndFlagsBits = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72._countAndFlagsBits + 16) + 1, 1, v72._countAndFlagsBits);
          }

          v21 = *(v72._countAndFlagsBits + 16);
          if (*(v72._countAndFlagsBits + 24) >> 1 <= v21)
          {
            v72._countAndFlagsBits = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v72._countAndFlagsBits + 24) >= 2uLL, v21 + 1, 1, v72._countAndFlagsBits);
          }

          countAndFlagsBits = v72._countAndFlagsBits;
          *(v72._countAndFlagsBits + 16) = v21 + 1;
          v23 = 16 * v21;
          *(countAndFlagsBits + v23 + 32) = v19;
          *(countAndFlagsBits + v23 + 40) = v20;
          outlined consume of MLDataValue(v19, v20, 2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v62);
          v69 = v62;
          v26 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v67);
          v27 = (v25 & 1) == 0;
          v28 = __OFADD__(v62[2], v27);
          v29 = v62[2] + v27;
          if (v28)
          {
            BUG();
          }

          v30 = v25;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [String]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v29))
          {
            v31 = v67;
            v26 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v67);
            LOBYTE(v33) = v33 & 1;
            if ((v30 & 1) != v33)
            {
LABEL_49:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v31, v33, v32);
              BUG();
            }
          }

          v3 = v69;
          if ((v30 & 1) == 0)
          {
            *(v69 + (v26 >> 6) + 8) |= 1 << v26;
            v50 = v3[6];
            v51 = 16 * v26;
            *(v50 + v51) = v65;
            *(v50 + v51 + 8) = v67;
            *(v3[7] + 8 * v26) = v72._countAndFlagsBits;
            v52 = v3[2];
            v28 = __OFADD__(1, v52);
            v49 = v52 + 1;
            v12 = v59;
            if (v28)
            {
              BUG();
            }

LABEL_34:
            v3[2] = v49;
            goto LABEL_35;
          }

          v34 = *(v69 + 7);
          *(v34 + 8 * v26);
          *(v34 + 8 * v26) = v72._countAndFlagsBits;
          outlined consume of MLDataValue(v65, v67, 2);
          v12 = v59;
        }

        else
        {
          outlined consume of MLDataValue(v15, v16, 2);

          _UntypedColumn.valueAtIndex(index:)(v64, a2);
          outlined consume of Result<_DataTable, Error>(v12, 0);
          v68 = v69;
          v72._countAndFlagsBits = v70;
          if (v71 != 2)
          {
            outlined consume of MLDataValue(v69, v72._countAndFlagsBits, v71);
            BUG();
          }

          v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
          v36 = swift_allocObject(v35, 48, 7);
          *(v36 + 16) = 1;
          *(v36 + 24) = 2;
          if (HIBYTE(v72._object))
          {
            goto LABEL_43;
          }

          v37 = v36;
          outlined copy of Result<_DataTable, Error>(v58, 0);
          _UntypedColumn.valueAtIndex(index:)(v64, a2);
          outlined consume of Result<_DataTable, Error>(v58, 0);
          v38 = v70;
          if (v71 != 2)
          {
            outlined consume of MLDataValue(v69, v70, v71);
LABEL_43:
            BUG();
          }

          *(v37 + 32) = v69;
          v66 = v37;
          *(v37 + 40) = v38;
          v39 = swift_isUniquelyReferenced_nonNull_native(v3);
          v69 = v3;
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v72._countAndFlagsBits);
          v42 = (v40 & 1) == 0;
          v28 = __OFADD__(v62[2], v42);
          v43 = v62[2] + v42;
          if (v28)
          {
            BUG();
          }

          v44 = v40;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [String]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v39, v43))
          {
            v31 = v72._countAndFlagsBits;
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v72._countAndFlagsBits);
            LOBYTE(v33) = v33 & 1;
            v12 = v59;
            if ((v44 & 1) != v33)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v12 = v59;
          }

          v3 = v69;
          if ((v44 & 1) == 0)
          {
            *(v69 + (v41 >> 6) + 8) |= 1 << v41;
            v46 = v3[6];
            v47 = 16 * v41;
            *(v46 + v47) = v68;
            *(v46 + v47 + 8) = v72._countAndFlagsBits;
            *(v3[7] + 8 * v41) = v66;
            v48 = v3[2];
            v28 = __OFADD__(1, v48);
            v49 = v48 + 1;
            if (v28)
            {
              BUG();
            }

            goto LABEL_34;
          }

          v45 = *(v69 + 7);
          *(v45 + 8 * v41);
          *(v45 + 8 * v41) = v66;
          outlined consume of MLDataValue(v68, v72._countAndFlagsBits, 2);
        }

LABEL_35:
        v14 = v64 + 1;
      }

      while (v56 != v64 + 1);
    }

    outlined consume of Result<_DataTable, Error>(v57, v60);
    outlined consume of Result<_DataTable, Error>(v12, 0);
    outlined consume of Result<_DataTable, Error>(v58, SHIBYTE(v72._object));
  }

  return v3;
}

uint64_t static _TextUtilities.optionsDictionary(from:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v72 = a1[2];
  v3 = a1[3];
  v73 = a1[4];
  v71 = a1[5];
  v70 = a1[6];
  v69 = a1[7];
  v4 = a1[8];
  v5 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  if (!v2)
  {
    v51 = NSFullUserName();
    v52 = v51;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)(v52);
    v55 = v54;

    v64 = &type metadata for String;
    *&v63 = v53;
    *(&v63 + 1) = v55;
    v74 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v5);
    v57 = 0x726F68747561;
    v58 = 0xE600000000000000;
    goto LABEL_40;
  }

  v68 = v4;
  v64 = &type metadata for String;
  *&v63 = v1;
  *(&v63 + 1) = v2;

  v6 = swift_isUniquelyReferenced_nonNull_native(v5);
  v74 = v5;
  specialized _NativeDictionary.updateValue(_:forKey:isUnique:)(&v63, 0x726F68747561, 0xE600000000000000, v6);
  v7 = v74;
  outlined destroy of Any?(v65);
  v64 = &type metadata for String;
  *&v63 = v72;
  *(&v63 + 1) = v3;

  v8 = swift_isUniquelyReferenced_nonNull_native(v7);
  v74 = v7;
  specialized _NativeDictionary.updateValue(_:forKey:isUnique:)(&v63, 0xD000000000000011, ("No data found for label '" + 0x8000000000000000), v8);
  v9 = v74;
  outlined destroy of Any?(v65);
  if (v71)
  {
    v64 = &type metadata for String;
    *&v63 = v73;
    *(&v63 + 1) = v71;

    v10 = swift_isUniquelyReferenced_nonNull_native(v9);
    v74 = v9;
    specialized _NativeDictionary.updateValue(_:forKey:isUnique:)(&v63, 0x65736E6563696CLL, 0xE700000000000000, v10);
    v9 = v74;
    outlined destroy of Any?(v65);
  }

  v64 = &type metadata for String;
  *&v63 = v70;
  *(&v63 + 1) = v69;

  v11 = swift_isUniquelyReferenced_nonNull_native(v9);
  v74 = v9;
  specialized _NativeDictionary.updateValue(_:forKey:isUnique:)(&v63, 0x5F6E6F6973726576, 0xEE00676E69727473, v11);
  v67 = v74;
  outlined destroy of Any?(v65);
  v12 = v68;
  if (!v68)
  {
    return v67;
  }

  v13 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  v14 = 1 << *(v12 + 32);
  v15 = ~(-1 << v14);
  if (v14 >= 64)
  {
    v15 = -1;
  }

  v16 = v13;
  v17 = *(v12 + 64) & v15;
  v75 = (v14 + 63) >> 6;
  v18 = 0;
  while (1)
  {
    if (v17)
    {
LABEL_9:
      v19 = v18;
      goto LABEL_24;
    }

    v20 = v18 + 1;
    if (__OFADD__(1, v18))
    {
      BUG();
    }

    if (v20 >= v75)
    {
      goto LABEL_39;
    }

    v17 = *(v12 + 8 * v20 + 64);
    if (v17)
    {
      v19 = v18 + 1;
      goto LABEL_24;
    }

    v19 = v18 + 2;
    if (v18 + 2 >= v75)
    {
      goto LABEL_39;
    }

    v17 = *(v12 + 8 * v20 + 72);
    if (!v17)
    {
      v19 = v18 + 3;
      if (v18 + 3 >= v75)
      {
        goto LABEL_39;
      }

      v17 = *(v12 + 8 * v20 + 80);
      if (!v17)
      {
        v19 = v18 + 4;
        if (v18 + 4 >= v75)
        {
          goto LABEL_39;
        }

        v17 = *(v12 + 8 * v20 + 88);
        if (!v17)
        {
          v19 = v18 + 5;
          if (v18 + 5 >= v75)
          {
            goto LABEL_39;
          }

          v17 = *(v12 + 8 * v20 + 96);
          if (!v17)
          {
            v19 = v18 + 6;
            if (v18 + 6 >= v75)
            {
              goto LABEL_39;
            }

            v17 = *(v12 + 8 * v20 + 104);
            if (!v17)
            {
              break;
            }
          }
        }
      }
    }

LABEL_24:
    v69 = v17;
    _BitScanForward64(&v21, v17);
    v66 = v19;
    v22 = (v19 << 10) | (16 * v21);
    v23 = *(v12 + 48);
    v24 = *(v12 + 56);
    v25 = *(v23 + v22);
    v26 = *(v23 + v22 + 8);
    v72 = *(v24 + v22);
    v27 = *(v24 + v22 + 8);

    v71 = v27;

    v28 = swift_isUniquelyReferenced_nonNull_native(v16);
    v65[0] = v16;
    v73 = v25;
    v29 = v25;
    v70 = v26;
    v30 = v16;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v26);
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v30[2], v33);
    v35 = v30[2] + v33;
    if (v34)
    {
      BUG();
    }

    v36 = v31;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, String>);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v28, v35))
    {
      v37 = v70;
      v38 = v70;
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v70);
      LOBYTE(v40) = v40 & 1;
      if ((v36 & 1) != v40)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v38, v40, v39);
        BUG();
      }

      v41 = v69;
    }

    else
    {
      v41 = v69;
      v37 = v70;
    }

    v17 = v41 & (v41 - 1);
    v16 = v65[0];
    if (v36)
    {
      v42 = *(v65[0] + 56);
      v43 = 16 * v32;
      v44 = *(v42 + v43 + 8);
      *(v42 + v43) = v72;
      *(v42 + v43 + 8) = v71;
      v37;
      v44;
    }

    else
    {
      *(v65[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v45 = v16[6];
      v46 = 16 * v32;
      *(v45 + v46) = v73;
      *(v45 + v46 + 8) = v37;
      v47 = v16[7];
      *(v47 + v46) = v72;
      *(v47 + v46 + 8) = v71;
      v48 = v16[2];
      v34 = __OFADD__(1, v48);
      v49 = v48 + 1;
      if (v34)
      {
        BUG();
      }

      v16[2] = v49;
    }

    v18 = v66;
    v12 = v68;
  }

  v50 = v18 + 7;
  while (v50 < v75)
  {
    v17 = *(v12 + 8 * v50++ + 64);
    if (v17)
    {
      v18 = v50 - 1;
      goto LABEL_9;
    }
  }

LABEL_39:

  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : String]);
  *&v63 = v16;
  v59 = v67;
  v60 = swift_isUniquelyReferenced_nonNull_native(v67);
  v74 = v59;
  isUniquelyReferenced_nonNull_native = v60;
  v57 = 0x6665645F72657375;
  v58 = 0xEC00000064656E69;
LABEL_40:
  specialized _NativeDictionary.updateValue(_:forKey:isUnique:)(&v63, v57, v58, isUniquelyReferenced_nonNull_native);
  v61 = v74;
  outlined destroy of Any?(v65);
  return v61;
}

uint64_t outlined init with copy of MLTextClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

_OWORD *specialized _NativeDictionary.updateValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, Swift::Bool a4)
{
  v6 = v5;
  v19 = v4;
  v7 = *v5;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v7[2], v10);
  v12 = v7[2] + v10;
  if (v11)
  {
    BUG();
  }

  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Any>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4, v12))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v15) = v15 & 1;
    if ((v13 & 1) != v15)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a3, v15, v14);
      BUG();
    }
  }

  v16 = *v6;
  if (v13)
  {
    v17 = 32 * v9;
    outlined init with take of Any((v17 + v16[7]), v19);
    return outlined init with take of Any(a1, (v16[7] + v17));
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a3, a1, v16);
    v19[1] = 0;
    *v19 = 0;
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML23MLBoostedTreeClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML23ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(uint64_t a1)
{
  v21 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v19 = &v17;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v17, &demangling cache variable for type metadata for DataFrame?);
  if (__swift_getEnumTagSinglePayload(&v17, 1, v2) == 1)
  {
    v9 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
    v10 = v21;
    v11 = 1;
    v12 = v9;
  }

  else
  {
    v13 = v19;
    v14 = v18;
    (*(v18 + 32))(v19, &v17, v2);
    v15 = v21;
    (*(v14 + 16))(v21, v13, v2);
    v20 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v15, v20, 2);
    (*(v14 + 8))(v13, v2);
    v10 = v15;
    v11 = 0;
    v12 = v20;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v9, &demangling cache variable for type metadata for Any?);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLBoostedTreeClassifier.ModelParameters.ValidationData.asTable()(a1);
  return outlined destroy of MLBoostedTreeClassifier.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLBoostedTreeClassifier.ModelParameters.validationData : MLBoostedTreeClassifier.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLBoostedTreeClassifier.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLBoostedTreeClassifier.ModelParameters.validationData : MLBoostedTreeClassifier.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *a1;
  v8 = *(a1 + 8);
  v15 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13 + 1);
  if (v8 == 0xFF)
  {
    v13 = 0;
    v14 = 256;
  }

  else
  {
    v16 = v7;
    v9 = v8;
    v10 = v8 & 1;
    v17 = v10;
    v21 = v9;
    outlined copy of Result<_DataTable, Error>(v7, v9);
    v20 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v16, v17);
    if (v20)
    {
      *&v13 = v7;
      BYTE8(v13) = v10;
      v12 = 1;
    }

    else
    {
      outlined consume of MLDataTable?(v7, v21);
      v12 = 3;
    }

    v2 = v12;
  }

  swift_storeEnumTagMultiPayload(&v13, v3, v2);
  outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v6, &demangling cache variable for type metadata for Any?);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t outlined destroy of MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t (*MLBoostedTreeClassifier.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLBoostedTreeClassifier.ModelParameters.validationData.getter(a2);
  return MLBoostedTreeClassifier.ModelParameters.validationData.modify;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v6 = *a1;
  v7 = v3;
  if ((a2 & 1) == 0)
  {
    return MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v6);
  }

  v4 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v6);
  return outlined consume of MLDataTable?(v2, v4);
}

uint64_t key path setter for MLBoostedTreeClassifier.ModelParameters.validation : MLBoostedTreeClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters.ValidationData(a1, v6);
  return MLBoostedTreeClassifier.ModelParameters.validation.setter(v6);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1);
}

void (*MLBoostedTreeClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, (v2 + 2), &demangling cache variable for type metadata for Any?);
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLBoostedTreeClassifier.ModelParameters.validation.modify;
}

void MLBoostedTreeClassifier.ModelParameters.validation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[19];
  v4 = (*a1)[18];
  v8 = (*a1)[16];
  v5 = (*a1)[17];
  if (a2)
  {
    outlined init with copy of MLBoostedTreeClassifier.ModelParameters.ValidationData(v3, v4);
    v2[11] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(v4, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v8);
    outlined destroy of MLBoostedTreeClassifier.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(v3, v7);
    outlined assign with take of Any?((v2 + 12), v8);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8, double a9, double a10, double a11)
{
  v22 = a4;
  v26 = a3;
  v12 = v11;
  v23 = a11;
  v24 = a10;
  v27 = a5;
  v28 = a9;
  v29 = a8;
  v30 = a7;
  v25 = a1;
  v14 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  *(v12 + 16) = 0;
  *v12 = 0;
  *(v12 + 32) = a2;
  *(v12 + 40) = v26;
  *(v12 + 48) = v30;
  *(v12 + 56) = v29;
  *(v12 + 64) = v22;
  *(v12 + 72) = v28;
  *(v12 + 80) = v27;
  *(v12 + 88) = a6 & 1;
  *(v12 + 96) = v24;
  *(v12 + 104) = v23;
  v18 = v25;
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters.ValidationData(v25, v21);
  v21[3] = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(v21, boxed_opaque_existential_0);
  outlined assign with take of Any?(v21, v12);
  return outlined destroy of MLBoostedTreeClassifier.ModelParameters.ValidationData(v18);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8, double a9, double a10, double a11)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 48) = a7;
  *(v11 + 56) = a8;
  *(v11 + 64) = a4;
  *(v11 + 72) = a9;
  *(v11 + 80) = a5;
  *(v11 + 88) = a6 & 1;
  *(v11 + 96) = a10;
  *(v11 + 104) = a11;
  v15 = v12;
  v16 = v13;
  return MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v15);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.init(configuration:validation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLBoostedTreeClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v19 = v16;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 32) = BoostedTreeConfiguration.maximumDepth.getter();
  *(v3 + 40) = BoostedTreeConfiguration.maximumIterations.getter(0);
  *(v3 + 48) = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(v3 + 56) = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(v3 + 64) = BoostedTreeConfiguration.randomSeed.getter();
  *(v3 + 72) = BoostedTreeConfiguration.learningRate.getter();
  *(v3 + 80) = BoostedTreeConfiguration.earlyStoppingIterationCount.getter();
  *(v3 + 88) = v11 & 1;
  *(v3 + 96) = BoostedTreeConfiguration.rowSubsample.getter();
  *(v3 + 104) = BoostedTreeConfiguration.columnSubsample.getter();
  v18 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML23MLBoostedTreeClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML23ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(a2);
  if (__swift_getEnumTagSinglePayload(v16, 1, v7) == 1)
  {
    v12 = v19;
    swift_storeEnumTagMultiPayload(v19, v7, 3);
    if (__swift_getEnumTagSinglePayload(v16, 1, v7) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, &demangling cache variable for type metadata for MLBoostedTreeClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    v12 = v19;
    outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(v16, v19);
  }

  v17[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  outlined init with take of MLBoostedTreeClassifier.ModelParameters.ValidationData(v12, boxed_opaque_existential_0);
  outlined assign with take of Any?(v17, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for DataFrame?);
  v14 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v14 - 8) + 8))(a1, v14);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.description.getter()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v0._object;
  String.append(_:)(v0);
  object;
  v2._object = 0xE100000000000000;
  v2._countAndFlagsBits = 10;
  String.append(_:)(v2);
  _StringGuts.grow(_:)(19);
  0;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v4 = v3._object;
  String.append(_:)(v3);
  v4;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v2._countAndFlagsBits = 0xD000000000000010;
  v2._object = "ansformer have different types." + 0x8000000000000000;
  String.append(_:)(v2);
  ("ansformer have different types." + 0x8000000000000000);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v2._object = "Max Iterations: " + 0x8000000000000000;
  v2._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v14, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v5 = v14._object;
  String.append(_:)(v14);
  v5;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v2._object = "Min Loss Reduction: " + 0x8000000000000000;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v14, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v6 = v14._object;
  String.append(_:)(v14);
  v6;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v14._object;
  strcpy(&v14, "Random Seed: ");
  HIWORD(v14._object) = -4864;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v8 = v7._object;
  String.append(_:)(v7);
  v8;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v9 = v14._object;
  String.append(_:)(v14);
  v9;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x7A69532070657453;
  v2._object = 0xEB00000000203A65;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v14, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v10 = v14._object;
  String.append(_:)(v14);
  v10;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v2._countAndFlagsBits = 0x7362755320776F52;
  v2._object = 0xEF203A656C706D61;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v14, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v11 = v14._object;
  String.append(_:)(v14);
  v11;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v2._object = "Min Child Weight: " + 0x8000000000000000;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v14, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v12 = v14._object;
  String.append(_:)(v14);
  v12;
  return 0x747065442078614DLL;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLBoostedTreeClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t type metadata completion function for RecommendationMetrics(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v5[0] = *(v1 - 8) + 64;
    v5[1] = &value witness table for Builtin.Int64 + 64;
    v5[2] = &value witness table for Builtin.Int64 + 64;
    v5[3] = &value witness table for Builtin.Int64 + 64;
    v5[4] = &value witness table for Builtin.Int64 + 64;
    v2 = 0;
    swift_initStructMetadata(a1, 0, 5, v5, a1 + 24);
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for RecommendationMetrics(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x1000F8) != 0 || (v6 = *(v4 + 64), ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18))
  {
    v13 = *a2;
    *v3 = *a2;
    v14 = v13 + (((v5 | 7) + 16) & ~(v5 | 7u));

    return v14;
  }

  else
  {
    (*(v4 + 16))(a1, a2);
    v7 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v8 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v7 = *v8;
    v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v9 = *v10;
    v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v11 = *v12;
    *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for RecommendationMetrics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 16))(a1);
  v4 = *(v3 + 64);
  v5 = ((v4 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for RecommendationMetrics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 24))(a1);
  v4 = *(v3 + 64);
  v5 = ((v4 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for RecommendationMetrics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 32))(a1);
  v4 = *(v3 + 64);
  v5 = ((v4 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for RecommendationMetrics(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 40))(a1);
  v4 = *(v3 + 64);
  v5 = ((v4 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RecommendationMetrics(int *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 < a2)
  {
    v7 = ((((((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v8 = a2 - v6 + 1;
    v9 = 2;
    if ((v7 & 0xFFFFFFF8) == 0)
    {
      v9 = v8;
    }

    v10 = 1;
    if (v9 >= 0x100)
    {
      v10 = 2 * (v9 >= &loc_10000) + 2;
    }

    result = 0;
    if (v9 < 2)
    {
      v10 = 0;
    }

    switch(v10)
    {
      case 0:
        goto LABEL_18;
      case 1:
        v12 = *(a1 + v7);
        goto LABEL_14;
      case 2:
        v12 = *(a1 + v7);
        goto LABEL_14;
      case 3:
        BUG();
      case 4:
        v12 = *(a1 + v7);
LABEL_14:
        if (v12)
        {
          v13 = v12 - 1;
          v14 = 0;
          if ((v7 & 0xFFFFFFF8) != 0)
          {
            v13 = 0;
            v14 = *a1;
          }

          return v6 + (v13 | v14) + 1;
        }

LABEL_18:
        if (!v6)
        {
          return result;
        }

        break;
    }
  }

  return __swift_getEnumTagSinglePayload(a1, v6, v4);
}

uint64_t storeEnumTagSinglePayload for RecommendationMetrics(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = ((((((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = 0;
  v9 = 1;
  if (v6 < a3)
  {
    v10 = a3 - v6 + 1;
    v11 = 2;
    if (!v7)
    {
      v11 = v10;
    }

    v12 = 2 * (v11 >= &loc_10000) + 2;
    if (v11 < 0x100)
    {
      v12 = 1;
    }

    v8 = 0;
    if (v11 >= 2)
    {
      v8 = v12;
    }
  }

  if (a2 > v6)
  {
    if (v7)
    {
      __bzero(a1, v7);
      *a1 = a2 + ~v6;
    }

    else
    {
      v9 = a2 - v6;
    }

    result = v8;
    switch(v8)
    {
      case 0u:
        return result;
      case 1u:
        *(a1 + v7) = v9;
        return result;
      case 2u:
        *(a1 + v7) = v9;
        return result;
      case 3u:
        goto LABEL_23;
      case 4u:
        *(a1 + v7) = v9;
        return result;
    }
  }

  result = v8;
  switch(v8)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v7) = 0;
      break;
    case 2u:
      *(a1 + v7) = 0;
      break;
    case 3u:
LABEL_23:
      BUG();
    case 4u:
      *(a1 + v7) = 0;
      break;
  }

  if (a2)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, v6, v4);
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.indices.getter()
{
  return specialized RandomAccessCollection<>.indices.getter(CMLDictionary.size.getter);
}

{
  if (CMLSequence.size.getter() < 0)
  {
    BUG();
  }

  return 0;
}

{
  return specialized RandomAccessCollection<>.indices.getter();
}

{

  v0 = CMLSequence.size.getter();
  v1 = specialized RandomAccessCollection<>.distance(from:to:)(0, v0);

  if (v1 < 0)
  {
    BUG();
  }

  return 0;
}

{
  return specialized RandomAccessCollection<>.indices.getter();
}

uint64_t specialized RandomAccessCollection<>.indices.getter(uint64_t a1, char a2)
{
  outlined copy of Result<_DataTable, Error>(a1, a2);
  v2 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a1, a2 & 1);
  if (v2 < 0)
  {
    BUG();
  }

  return 0;
}

uint64_t specialized RandomAccessCollection<>.indices.getter(uint64_t (__cdecl *a1)())
{
  if (a1() < 0)
  {
    BUG();
  }

  return 0;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2)
{
  return specialized RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, CMLDictionary.size.getter);
}

{
  v2 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    BUG();
  }

  v3 = CMLSequence.size.getter();
  if (v2 < 0 || v3 < v2)
  {
    BUG();
  }

  return a2 + a1;
}

{
  return specialized RandomAccessCollection<>.index(_:offsetBy:)(a1, a2);
}

{
  v2 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    BUG();
  }

  v3 = CMLSequence.size.getter();
  v4 = specialized RandomAccessCollection<>.distance(from:to:)(0, v3);

  if (v2 < 0 || v4 < v2)
  {
    BUG();
  }

  return a2 + a1;
}

{
  return specialized RandomAccessCollection<>.index(_:offsetBy:)(a1, a2);
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    BUG();
  }

  v8 = a4 & 1;
  outlined copy of Result<_DataTable, Error>(a3, a4);
  v5 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a3, v8);
  if (v4 < 0 || v5 < v4)
  {
    BUG();
  }

  return a2 + a1;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t (__cdecl *a3)())
{
  v3 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    BUG();
  }

  v4 = a3();
  if (v3 < 0 || v4 < v3)
  {
    BUG();
  }

  return a2 + a1;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3, specialized RandomAccessCollection<>.distance(from:to:), CMLDictionary.size.getter);
}

{
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(a1, a3);
  if (a2 <= 0)
  {
    v4 = v3 <= 0;
    v5 = v3 > a2;
  }

  else
  {
    v4 = v3 >= 0;
    v5 = v3 < a2;
  }

  if (v5 && v4)
  {
    return 0;
  }

  v6 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    BUG();
  }

  v7 = CMLSequence.size.getter();
  if (v6 < 0 || v7 < v6)
  {
    BUG();
  }

  return v6;
}

{
  return specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3);
}

{

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  if (a1 < 0 || v5 < a1)
  {
    BUG();
  }

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  if (a3 < 0 || v7 < a3)
  {
    BUG();
  }

  v8 = a3 - a1;
  if (a2 <= 0)
  {
    v9 = v8 <= 0;
    v10 = v8 > a2;
  }

  else
  {
    v9 = v8 >= 0;
    v10 = v8 < a2;
  }

  if (v10 && v9)
  {
    return 0;
  }

  v11 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    BUG();
  }

  v12 = CMLSequence.size.getter();
  v13 = specialized RandomAccessCollection<>.distance(from:to:)(0, v12);

  if (v11 < 0 || v13 < v11)
  {
    BUG();
  }

  return v11;
}

{
  return specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(a1, a2, a3);
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(Swift::Int a1, Swift::Int a2, Swift::Int a3, uint64_t a4, char a5)
{
  v6 = a5 & 1;
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(a1, a3, a4, a5 & 1);
  if (a2 <= 0)
  {
    v8 = v7 <= 0;
    v9 = v7 > a2;
  }

  else
  {
    v8 = v7 >= 0;
    v9 = v7 < a2;
  }

  if (v9 && v8)
  {
    return 0;
  }

  else
  {
    return specialized RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a4, v6);
  }
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1, uint64_t a2), uint64_t (__cdecl *a5)())
{
  v6 = a4(a1, a3);
  if (a2 <= 0)
  {
    v7 = v6 <= 0;
    v8 = v6 > a2;
  }

  else
  {
    v7 = v6 >= 0;
    v8 = v6 < a2;
  }

  if (v8 && v7)
  {
    return 0;
  }

  else
  {
    return specialized RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a5);
  }
}

uint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t a1)
{
  return specialized RandomAccessCollection<>.index(before:)(a1);
}

{
  v1 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  if (v1 < 0 || v1 >= v3)
  {
    BUG();
  }

  return a1 - 1;
}

{
  v1 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v2 = CMLSequence.size.getter();
  if (v1 < 0 || v1 >= v2)
  {
    BUG();
  }

  return a1 - 1;
}

{
  return specialized RandomAccessCollection<>.index(before:)(a1, CMLDictionary.size.getter);
}

{
  return specialized RandomAccessCollection<>.index(before:)(a1);
}

uint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v6 = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v4 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a2, v6);
  if (v3 < 0 || v3 >= v4)
  {
    BUG();
  }

  return a1 - 1;
}

uint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t a1, uint64_t (__cdecl *a2)())
{
  v2 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v3 = a2();
  if (v2 < 0 || v2 >= v3)
  {
    BUG();
  }

  return a1 - 1;
}

uint64_t specialized Collection<>.subscript.getter(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = specialized Dictionary.startIndex.getter(a2);
  if (v6)
  {
    BUG();
  }

  v7 = *(a2 + 36);
  v8 = 1 << *(a2 + 32);
  if (v7 != v5)
  {
    BUG();
  }

  if (v8 < v4)
  {
    BUG();
  }

  v9 = v4;
  v10 = v5;
  outlined copy of [A : B].Index._Variant<A, B>(v4, v5, 0);
  outlined copy of [A : B].Index._Variant<A, B>(v8, v7, 0);
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v8, v7, 0);
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v9, v10, 0);
  if (a1[2])
  {
    BUG();
  }

  if (*(a1 + 2) != v7)
  {
    BUG();
  }

  v11 = v9;
  if (*a1 < v9)
  {
    BUG();
  }

  if (a1[5])
  {
    BUG();
  }

  if (v7 != *(a1 + 8))
  {
    BUG();
  }

  v12 = a1[3];
  if (v8 < v12)
  {
    BUG();
  }

  v17 = *(a1 + 3);
  v16 = *(a1 + 9);
  v15 = *a1;
  v19 = *(a1 + 16);
  v18 = *(a1 + 40);
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v11, v10, 0);
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v8, v7, 0);
  *(v3 + 48) = a2;
  *v3 = v15;
  *(v3 + 8) = v7;
  *(v3 + 12) = v17;
  *(v3 + 16) = v19;
  *(v3 + 24) = v12;
  *(v3 + 32) = v7;
  *(v3 + 36) = v16;
  *(v3 + 40) = v18;

  return outlined retain of Range<MLDataValue.DictionaryType.Index>(a1);
}

uint64_t specialized Collection<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = CMLSequence.size.getter();
  if (v6 < 0)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  if (v6 < a2)
  {
    BUG();
  }

  v5[2] = a3;
  *v5 = a1;
  v5[1] = a2;
}

{
  return specialized Collection<>.subscript.getter(a1, a2, a3);
}

{
  v5 = v3;

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  if (v7 < 0)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  if (v7 < a2)
  {
    BUG();
  }

  v5[2] = a3;
  *v5 = a1;
  v5[1] = a2;
}

{
  return specialized Collection<>.subscript.getter(a1, a2, a3);
}

uint64_t specialized Collection<>.subscript.getter(uint64_t a1, Swift::Int a2, uint64_t a3, char a4)
{
  v7 = v4;
  v11 = a4 & 1;
  outlined copy of Result<_DataTable, Error>(a3, a4);
  v8 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(a3, v11);
  if (v8 < 0)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  if (v8 < a2)
  {
    BUG();
  }

  *(v7 + 16) = a3;
  *(v7 + 24) = a4 & 1;
  *v7 = a1;
  *(v7 + 8) = a2;
  return outlined copy of Result<_DataTable, Error>(a3, a4);
}

uint64_t specialized Collection<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;

  swift_retain_n(a5, 2);
  v9 = CMLSequence.size.getter();
  v10 = specialized RandomAccessCollection<>.distance(from:to:)(0, v9);

  v11 = CMLSequence.size.getter();
  v12 = specialized RandomAccessCollection<>.distance(from:to:)(0, v11);

  if (v12 < 0)
  {
    BUG();
  }

  v13 = CMLSequence.size.getter();
  v14 = specialized RandomAccessCollection<>.distance(from:to:)(0, v13);
  a4;

  a5;
  if (v10 < 0 || v14 < v10)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  if (v10 < a2)
  {
    BUG();
  }

  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  *v8 = a1;
  v8[1] = a2;
}

uint64_t specialized Collection<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (__cdecl *a3)())
{
  v3 = a3();
  if (v3 < 0)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  if (v3 < a2)
  {
    BUG();
  }

  return a1;
}

void specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < a3 || a4 < a2)
  {
    BUG();
  }
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4);
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) & 1) != 0 || (*(a2 + 16))
  {
    BUG();
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    BUG();
  }

  if (*a1 < *a2)
  {
    BUG();
  }

  if (*(a2 + 40) & 1) != 0 || (*(a1 + 40))
  {
    BUG();
  }

  if (*(a2 + 32) != *(a1 + 32))
  {
    BUG();
  }

  result = *(a1 + 24);
  if (*(a2 + 24) < result)
  {
    BUG();
  }

  return result;
}

uint64_t specialized Collection.underestimatedCount.getter()
{
  v0 = CMLDictionary.size.getter();
  return specialized RandomAccessCollection<>.distance(from:to:)(0, v0);
}

{
  return specialized Collection.underestimatedCount.getter();
}

{

  v0 = CMLSequence.size.getter();
  v1 = specialized RandomAccessCollection<>.distance(from:to:)(0, v0);

  v2 = CMLSequence.size.getter();
  v3 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);

  if (v3 < 0)
  {
    BUG();
  }

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  if (v1 < 0 || v5 < v1)
  {
    BUG();
  }

  return v1;
}

{
  v0 = CMLSequence.size.getter();
  return specialized RandomAccessCollection<>.distance(from:to:)(0, v0);
}

{
  return specialized Collection.underestimatedCount.getter();
}

uint64_t specialized Collection.underestimatedCount.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = CMLSequence.size.getter();
  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v4);

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  if (v7 < 0)
  {
    BUG();
  }

  v8 = CMLSequence.size.getter();
  v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v8);
  a3;
  if (v5 < 0 || v9 < v5)
  {
    BUG();
  }

  return v5;
}

uint64_t *specialized Collection._copyToContiguousArray()()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

void *specialized Collection._copyToContiguousArray()(uint64_t a1)
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);
  a1;
  return v1;
}

void *specialized Collection._copyToContiguousArray()(uint64_t a1, uint64_t a2, double a3)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3);

  return v3;
}

{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3);

  return v3;
}

void *specialized Collection._copyToContiguousArray()(uint64_t a1, char a2)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2 & 1);
  outlined consume of Result<_DataTable, Error>(a1, a2);
  return v2;
}

void *specialized Collection._copyToContiguousArray()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3);

  a2;

  return v3;
}

uint64_t *specialized Collection._copyToContiguousArray()(uint64_t a1, uint64_t a2)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);

  return v2;
}

void *specialized Collection._copyToContiguousArray()(uint64_t a1, uint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(v2, a2);

  return v3;
}

uint64_t specialized Sequence._copyContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, a5);
}

{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, a5);
}

uint64_t Array<A>.featureValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CMLFeatureValue();
  v4 = Array<A>.featureSequence.getter(a1, a2, a3);
  return CMLFeatureValue.__allocating_init(_:)(v4);
}

uint64_t MLDataValue.SequenceType.description.getter()
{
  return MLDataValue.SequenceType.description.getter();
}

{

  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<MLDataValue.SequenceType, String>);
  v1 = lazy protocol witness table accessor for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>(&lazy protocol witness table cache variable for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>, &demangling cache variable for type metadata for LazyMapSequence<MLDataValue.SequenceType, String>, lazy protocol witness table accessor for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType, &protocol conformance descriptor for <> LazyMapSequence<A, B>);
  v2 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v0, v1);
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);
  v4;

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  0;
  return 91;
}

uint64_t *MLDataValue.SequenceType.init<A>(_:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v41 = a1;
  v37 = v4;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  AssociatedConformanceWitness = v34;
  v47 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v38 = *(AssociatedTypeWitness - 8);
  v10 = *(v38 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v43 = v34;
  v13 = tc_v1_flex_list_create(0);
  if (!v13)
  {
    BUG();
  }

  v14 = v13;
  v15 = type metadata accessor for CMLSequence();
  v16 = swift_allocObject(v15, 25, 7);
  *(v16 + 16) = v14;
  v40 = v16;
  *(v16 + 24) = 1;
  v39 = v5;
  (*(v5 + 16))(AssociatedConformanceWitness, v41, a2);
  v17 = v47;
  dispatch thunk of Sequence.makeIterator()(a2, v47);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v17, a2, AssociatedTypeWitness, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v34[1] = a2;
  v35 = AssociatedTypeWitness;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()(AssociatedTypeWitness, AssociatedConformanceWitness);
    v18 = v46;
    v19 = v44;
    v20 = v45;
    v47 = v45;
    switch(v46)
    {
      case 0:
        v21 = specialized handling<A, B>(_:_:)(v44);
        if (!v21)
        {
          BUG();
        }

        v22 = type metadata accessor for CMLFeatureValue();
        swift_allocObject(v22, 25, 7);
        v23 = CMLFeatureValue.init(rawValue:ownsValue:)(v21, 1);
        v24 = v19;
        v25 = v47;
        v26 = 0;
        goto LABEL_14;
      case 1:
        a4 = *&v44;
        v29 = specialized handling<A, B>(_:_:)();
        if (!v29)
        {
          BUG();
        }

        v30 = type metadata accessor for CMLFeatureValue();
        swift_allocObject(v30, 25, 7);
        v23 = CMLFeatureValue.init(rawValue:ownsValue:)(v29, 1);
        v24 = v19;
        v25 = v47;
        v33 = 1;
        goto LABEL_13;
      case 2:
        v36 = type metadata accessor for CMLFeatureValue();
        outlined copy of MLDataValue(v19, v20, 2u);
        outlined copy of MLDataValue(v19, v20, 2u);
        v25 = v20;
        v23 = CMLFeatureValue.__allocating_init(_:)(v19, v20);
        v24 = v19;
        v33 = 2;
        goto LABEL_13;
      case 3:
        outlined copy of MLDataValue(v44, v45, 3u);
        outlined copy of MLDataValue(v19, v20, 3u);
        v28 = v20;
        v23 = MLDataValue.SequenceType.featureValue.getter(a4);

        v24 = v19;
        v25 = v28;
        v33 = 3;
        goto LABEL_13;
      case 4:
        outlined copy of MLDataValue(v44, v45, 4u);
        outlined copy of MLDataValue(v19, v20, 4u);
        v27 = v20;
        v23 = MLDataValue.DictionaryType.featureValue.getter(v19, v20);
        v44;
        v24 = v19;
        v25 = v27;
        v33 = 4;
        goto LABEL_13;
      case 5:
        outlined copy of MLDataValue(v44, v45, 5u);
        outlined copy of MLDataValue(v19, v20, 5u);
        v31 = v20;
        v23 = MLDataValue.MultiArrayType.featureValue.getter();

        v24 = v19;
        v25 = v31;
        v33 = 5;
        goto LABEL_13;
      case 6:
        type metadata accessor for CMLFeatureValue();
        v25 = v20;
        v23 = CMLFeatureValue.__allocating_init()();
        v24 = v19;
        v33 = 6;
LABEL_13:
        v26 = v33;
LABEL_14:
        outlined consume of MLDataValue?(v24, v25, v26);
        CMLSequence.append(_:)(v23);

        outlined consume of MLDataValue?(v19, v47, v18);
        AssociatedTypeWitness = v35;
        break;
      default:
        (*(v39 + 8))(v41, v44);
        (*(v38 + 8))(v43, v20);
        result = v37;
        *v37 = v40;
        return result;
    }
  }
}

uint64_t MLDataValue.SequenceType.init()()
{
  v1 = v0;
  v2 = tc_v1_flex_list_create(0);
  if (!v2)
  {
    BUG();
  }

  v3 = v2;
  v4 = type metadata accessor for CMLSequence();
  result = swift_allocObject(v4, 25, 7);
  *(result + 16) = v3;
  *(result + 24) = 1;
  *v1 = result;
  return result;
}

uint64_t *MLDataValue.SequenceType.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v6 = a2;
  v7 = a1;
  v36 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v40 = *(AssociatedTypeWitness - 8);
  v9 = *(v40 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v35 = v31;
  v37 = AssociatedTypeWitness;
  v12 = *(*(type metadata accessor for Optional(0, AssociatedTypeWitness) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v43 = v31;
  v42 = *(v6 - 8);
  v15 = *(v42 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v39 = v31;
  AssociatedConformanceWitness = a3;
  v44 = swift_getAssociatedTypeWitness(0, a3, v6, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v38 = *(v44 - 8);
  v18 = *(v38 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = tc_v1_flex_list_create(0);
  if (!v21)
  {
    BUG();
  }

  v22 = v21;
  v23 = type metadata accessor for CMLSequence();
  v24 = swift_allocObject(v23, 25, 7);
  *(v24 + 16) = v22;
  v41 = v24;
  *(v24 + 24) = 1;
  (*(v42 + 16))(v39, a1, v6);
  v45 = v31;
  v25 = AssociatedConformanceWitness;
  dispatch thunk of Sequence.makeIterator()(v6, AssociatedConformanceWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v25, v6, v44, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v26 = v37;
  v33 = a1;
  v34 = v6;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()(v44, AssociatedConformanceWitness);
    v27 = v43;
    if (__swift_getEnumTagSinglePayload(v43, 1, v26) == 1)
    {
      break;
    }

    v28 = v35;
    (*(v40 + 32))(v35, v27, v26);
    v29 = MLDataValueConvertible.featureValue.getter(v26, v32);
    CMLSequence.append(_:)(v29);
    (*(v40 + 8))(v28, v26);

    v6 = v34;
    v7 = v33;
  }

  (*(v42 + 8))(v7, v6);
  (*(v38 + 8))(v45, v44);
  result = v36;
  *v36 = v41;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance MLDataValue.SequenceType(uint64_t *a1)
{
  v2 = v1;
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *v2 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance MLDataValue.SequenceType(uint64_t *a1)
{
  v1 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    BUG();
  }

  result = CMLSequence.size.getter();
  if (v1 < 0 || v1 >= result)
  {
    BUG();
  }

  *a1 = v1;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance MLDataValue.SequenceType(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance MLDataValue.SequenceType()
{
  v1 = v0;
  result = MLDataValue.SequenceType.endIndex.getter();
  *v1 = result;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance MLDataValue.SequenceType()
{
  v1 = v0;
  result = specialized RandomAccessCollection<>.indices.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance MLDataValue.SequenceType(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *v4 = result;
  *(v4 + 8) = v6 & 1;
  return result;
}

{
  return protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance MLDataValue.SequenceType(a1, a2, a3);
}

void protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataValue.SequenceType(uint64_t *a1, uint64_t *a2)
{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

uint64_t protocol witness for Collection.index(after:) in conformance MLDataValue.SequenceType(uint64_t *a1)
{
  v2 = v1;
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *v2 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance MLDataValue.SequenceType(uint64_t *a1)
{
  v1 = *a1;
  result = CMLSequence.size.getter();
  if (v1 < 0 || v1 >= result)
  {
    BUG();
  }

  *a1 = v1 + 1;
  return result;
}

uint64_t *MLDataValue.SequenceType.init(arrayLiteral:)(uint64_t a1, double a2)
{
  v24 = v2;
  v3 = tc_v1_flex_list_create(0);
  if (!v3)
  {
    BUG();
  }

  v4 = v3;
  v5 = type metadata accessor for CMLSequence();
  v6 = swift_allocObject(v5, 25, 7);
  *(v6 + 16) = v4;
  v25 = v6;
  *(v6 + 24) = 1;
  v26 = a1;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v23 = *v8;
      v22 = v7;
      switch(*v8)
      {
        case 0:
          v11 = specialized handling<A, B>(_:_:)(v9);
          if (!v11)
          {
            BUG();
          }

          goto LABEL_11;
        case 1:
          a2 = *(v8 - 2);
          v11 = specialized handling<A, B>(_:_:)();
          if (!v11)
          {
            BUG();
          }

LABEL_11:
          v16 = type metadata accessor for CMLFeatureValue();
          swift_allocObject(v16, 25, 7);
          v17 = CMLFeatureValue.init(rawValue:ownsValue:)(v11, 1);
          goto LABEL_16;
        case 2:
          type metadata accessor for CMLFeatureValue();
          outlined copy of MLDataValue(v9, v10, 2u);
          swift_bridgeObjectRetain_n(v10, 2);
          v14 = CMLFeatureValue.__allocating_init(_:)(v9, v10);
          v15 = 2;
          v12 = v14;
          v13 = v10;
          goto LABEL_14;
        case 3:
          swift_retain_n(v9, 3);
          v12 = MLDataValue.SequenceType.featureValue.getter(a2);

          v13 = v10;
          v21 = 3;
          goto LABEL_13;
        case 4:
          swift_bridgeObjectRetain_n(v9, 3);
          v12 = MLDataValue.DictionaryType.featureValue.getter(v9, 3);
          v9;
          v13 = v10;
          v21 = 4;
          goto LABEL_13;
        case 5:
          v18 = v9;
          v19 = v18;
          v19;
          v12 = MLDataValue.MultiArrayType.featureValue.getter();

          v13 = v10;
          v21 = 5;
LABEL_13:
          v15 = v21;
LABEL_14:
          outlined consume of MLDataValue(v9, v13, v15);
          break;
        case 6:
          type metadata accessor for CMLFeatureValue();
          v17 = CMLFeatureValue.__allocating_init()();
LABEL_16:
          v12 = v17;
          break;
      }

      CMLSequence.append(_:)(v12);

      outlined consume of MLDataValue(v9, v10, v23);
      v8 += 24;
      --v7;
    }

    while (v22 != 1);
  }

  v26;
  result = v24;
  *v24 = v25;
  return result;
}

uint64_t static MLDataValue.SequenceType.== infix(_:_:)(uint64_t *a1, uint64_t *a2, double a3)
{
  v3 = *a1;
  v4 = *a2;

  v5 = CMLSequence.size.getter();
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, v5);
  v53 = v3;

  v7 = CMLSequence.size.getter();
  v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7);
  v52 = v4;

  v9 = 0;
  if (v6 == v8)
  {

    v10 = CMLSequence.size.getter();
    v11 = specialized RandomAccessCollection<>.distance(from:to:)(0, v10);

    v44 = v11;
    if (v11 < 0)
    {
      BUG();
    }

    if (v11)
    {
      --v44;
      v12 = 0;
      while (2)
      {

        v13 = CMLSequence.value(at:)(v12);
        switch(CMLFeatureValue.type.getter())
        {
          case 0u:
            v14 = *(v13 + 16);

            v15 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v14));

            v13;
            object = 0;
            v17 = 0;
            goto LABEL_18;
          case 1u:
            v27 = *(v13 + 16);

            specialized handling<A, B>(_:_:)(v27);
            v45 = a3;

            v13;
            a3 = v45;
            v15 = v45;
            v17 = 1;
            goto LABEL_17;
          case 2u:

            v22 = CMLFeatureValue.stringValue()();
            if (v23)
            {
              v23;

              BUG();
            }

            v15 = *&v22._countAndFlagsBits;
            object = v22._object;

            v13;
            v17 = 2;
            goto LABEL_18;
          case 3u:
            v24 = *(v13 + 16);

            v25 = specialized handling<A, B>(_:_:)(v24);
            if (!v25)
            {
              BUG();
            }

            v26 = type metadata accessor for CMLSequence();
            v15 = COERCE_DOUBLE(swift_allocObject(v26, 25, 7));
            *(*&v15 + 16) = v25;
            *(*&v15 + 24) = 1;

            v13;
            v17 = 3;
            goto LABEL_17;
          case 4u:
            v18 = *(v13 + 16);

            v19 = specialized handling<A, B>(_:_:)(v18);
            if (!v19)
            {
              BUG();
            }

            v20 = type metadata accessor for CMLDictionary();
            v21 = swift_allocObject(v20, 24, 7);
            *(v21 + 16) = v19;
            v42[0] = v21;
            v42[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
            v42[2] = 0;
            v42[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
            v42[4] = 0;
            v42[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
            v42[6] = 0;
            v46 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);

            specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v42, 1, &v46);

            v13;

            v15 = v46;
            v17 = 4;
            goto LABEL_17;
          case 5u:

            v17 = 6;
            v15 = 0.0;
            goto LABEL_17;
          case 6u:

            MLDataValue.MultiArrayType.init(from:)(v13);
            v15 = v46;
            if (v46 == 0.0)
            {
              BUG();
            }

            v17 = 5;
LABEL_17:
            object = 0;
LABEL_18:
            v46 = v15;
            v47 = object;
            LOBYTE(v48) = v17;

            v28 = CMLSequence.value(at:)(v12);
            switch(CMLFeatureValue.type.getter())
            {
              case 0u:
                v29 = *(v28 + 16);

                specialized handling<A, B>(_:_:)(v29);
                JUMPOUT(0x12F8E6);
              case 1u:
                v36 = *(v28 + 16);

                specialized handling<A, B>(_:_:)(v36);
                v45 = a3;
                JUMPOUT(0x12FAA5);
              case 2u:

                CMLFeatureValue.stringValue()();
                if (!v34)
                {
                  JUMPOUT(0x12F9FDLL);
                }

                v34;

                BUG();
              case 3u:
                v35 = *(v28 + 16);

                specialized handling<A, B>(_:_:)(v35);
                JUMPOUT(0x12FA2FLL);
              case 4u:
                v30 = *(v28 + 16);

                v31 = specialized handling<A, B>(_:_:)(v30);
                if (v31)
                {
                  v32 = type metadata accessor for CMLDictionary();
                  v33 = swift_allocObject(v32, 24, 7);
                  *(v33 + 16) = v31;
                  v43[0] = v33;
                  v43[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
                  v43[2] = 0;
                  v43[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                  v43[4] = 0;
                  v43[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                  v43[6] = 0;
                  v49 = _swiftEmptyDictionarySingleton;

                  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v43, 1, &v49);

                  JUMPOUT(0x12F9C6);
                }

                BUG();
              case 5u:

                v37 = 6;
                v38 = 0;
                break;
              case 6u:

                MLDataValue.MultiArrayType.init(from:)(v28);
                v38 = v49;
                if (!v49)
                {
                  BUG();
                }

                v37 = 5;
                break;
            }

            v49 = v38;
            v50 = 0;
            LOBYTE(v51) = v37;
            LOBYTE(v39) = static MLDataValue.== infix(_:_:)(&v46, &v49);
            v9 = v39;
            outlined consume of MLDataValue(v49, v50, v51);
            outlined consume of MLDataValue(*&v46, v47, v48);
            if ((v9 & 1) == 0)
            {
              return v9;
            }

            if (v44 == v12++)
            {
              return v9;
            }

            continue;
        }
      }
    }

    return 1;
  }

  return v9;
}

void closure #1 in MLDataValue.SequenceType.description.getter(uint64_t a1)
{
  v2 = v1;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  outlined copy of MLDataValue(*a1, v7, v8);
  v3 = MLDataValue.description.getter();
  v5 = v4;
  outlined consume of MLDataValue(v6, v7, v8);
  *v2 = v3;
  v2[1] = v5;
}

uint64_t closure #1 in MLDataValue.SequenceType.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = v4;
  outlined copy of MLDataValue(v7[0], v3, v4);
  result = String.init<A>(reflecting:)(v7, &type metadata for MLDataValue);
  *v2 = result;
  v2[1] = v6;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance CMLSequence(uint64_t *a1)
{
  v2 = v1;
  result = specialized RandomAccessCollection<>.index(before:)(*a1, CMLSequence.size.getter);
  *v2 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance CMLSequence(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, CMLSequence.size.getter);
  *a1 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance CMLSequence(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, CMLSequence.size.getter);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance CMLSequence()
{
  v1 = v0;
  result = CMLSequence.endIndex.getter();
  *v1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CMLSequence(uint64_t *a1, uint64_t *a2))()
{
  v2 = CMLSequence.subscript.getter(*a2);
  a1[1] = v2;
  *a1 = v2;
  return protocol witness for Collection.subscript.read in conformance CMLSequence;
}

uint64_t protocol witness for Collection.subscript.getter in conformance CMLSequence(uint64_t *a1)
{
  v2 = v1;
  result = specialized Collection<>.subscript.getter(*a1, a1[1], CMLSequence.size.getter);
  *v2 = result;
  v2[1] = v4;
  v2[2] = v5;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance CMLSequence()
{
  v1 = v0;
  result = specialized RandomAccessCollection<>.indices.getter(CMLSequence.size.getter);
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance CMLSequence(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, specialized RandomAccessCollection<>.distance(from:to:), CMLSequence.size.getter);
  *v4 = result;
  *(v4 + 8) = v6 & 1;
  return result;
}

{
  return protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance CMLSequence(a1, a2, a3);
}

void protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance CMLSequence(uint64_t *a1, uint64_t *a2)
{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, a1[1], *a2, a2[1]);
}

uint64_t protocol witness for Collection.index(after:) in conformance CMLSequence(uint64_t *a1)
{
  v2 = v1;
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *v2 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance CMLSequence(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *a1 = result;
  return result;
}

void MLDataValue.SequenceType.init(from:)(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5 != 3)
  {
    outlined consume of MLDataValue(v4, *(a1 + 8), v5);
    v4 = 0;
  }

  *v3 = v4;
}

uint64_t MLDataValue.SequenceType.dataValue.getter()
{
  *v0 = *v1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 3;
}

uint64_t MLDataValue.SequenceType.init(from:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized handling<A, B>(_:_:)(*(a1 + 16));
  if (!v3)
  {
    BUG();
  }

  v4 = type metadata accessor for CMLSequence();
  v5 = swift_allocObject(v4, 25, 7);
  *(v5 + 16) = v3;
  *(v5 + 24) = 1;

  *v2 = v5;
  return result;
}

uint64_t MLDataValue.SequenceType.featureValue.getter(double a1)
{
  v2 = *v1;
  v3 = tc_v1_flex_list_create(0);
  if (!v3)
  {
    BUG();
  }

  v4 = v3;
  v89 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v89, v79);
  *(inited + 16) = v4;
  v94 = inited;
  *(inited + 24) = 1;

  if (CMLSequence.size.getter())
  {
    v6 = 0;
    v88 = v2;
    while (2)
    {
      v7 = CMLSequence.value(at:)(v6);
      v8 = CMLFeatureValue.type.getter();
      v87 = v6;
      switch(v8)
      {
        case 0:
          v9 = *(v7 + 16);

          *&countAndFlagsBits = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v9));
          v7;
          object = 0;
          v11 = 0;
          goto LABEL_41;
        case 1:
          v53 = *(v7 + 16);

          specialized handling<A, B>(_:_:)(v53);
          v97 = a1;
          v7;
          a1 = v97;
          *&countAndFlagsBits = v97;
          v11 = 1;
          goto LABEL_40;
        case 2:

          v48 = CMLFeatureValue.stringValue()();
          countAndFlagsBits = v48._countAndFlagsBits;
          if (v49)
          {
            v49;

            BUG();
          }

          object = v48._object;
          v7;
          v11 = 2;
          goto LABEL_41;
        case 3:
          v50 = *(v7 + 16);

          v51 = specialized handling<A, B>(_:_:)(v50);
          if (!v51)
          {
            BUG();
          }

          v52 = swift_allocObject(v89, 25, 7);
          *(v52 + 16) = v51;
          countAndFlagsBits = v52;
          *(v52 + 24) = 1;
          v7;
          v11 = 3;
          goto LABEL_40;
        case 4:
          v12 = *(v7 + 16);

          v13 = specialized handling<A, B>(_:_:)(v12);
          if (!v13)
          {
            BUG();
          }

          v85 = v7;
          v86 = type metadata accessor for CMLDictionary();
          v14 = swift_initStackObject(v86, v80);
          *(v14 + 16) = v13;
          v90 = _swiftEmptyDictionarySingleton;
          v97 = *&v14;
          swift_retain_n(v14, 2);
          v15 = 0;
          *&countAndFlagsBits = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
          while (1)
          {
            v16 = *&v97;
            if (v15 == CMLDictionary.size.getter())
            {
              break;
            }

            CMLDictionary.keyAndValue(at:)(v15);
            v18 = v17;
            v15 = specialized RandomAccessCollection<>.index(after:)(v15);
            v19 = CMLFeatureValue.stringValue()();
            if (v20)
            {
              v20;
            }

            else
            {
              v91 = v19;

              switch(CMLFeatureValue.type.getter())
              {
                case 0u:
                  v21 = *(v18 + 16);

                  v95 = specialized handling<A, B>(_:_:)(v21);
                  JUMPOUT(0x13041FLL);
                case 1u:
                  v30 = *(v18 + 16);

                  specialized handling<A, B>(_:_:)(v30);
                  v95 = *&a1;
                  JUMPOUT(0x1305B2);
                case 2u:

                  v95 = CMLFeatureValue.stringValue()()._countAndFlagsBits;
                  if (!v25)
                  {
                    JUMPOUT(0x13050FLL);
                  }

                  v25;

                  BUG();
                case 3u:
                  v26 = *(v18 + 16);

                  v27 = specialized handling<A, B>(_:_:)(v26);
                  if (!v27)
                  {
                    BUG();
                  }

                  v28 = swift_allocObject(v89, 25, 7);
                  *(v28 + 16) = v27;
                  v95 = v28;
                  *(v28 + 24) = 1;

                  v18;
                  v29 = 3;
                  v96 = 0;
                  break;
                case 4u:
                  v22 = *(v18 + 16);

                  v23 = specialized handling<A, B>(_:_:)(v22);
                  if (v23)
                  {
                    v24 = swift_allocObject(v86, 24, 7);
                    *(v24 + 16) = v23;
                    v83[0] = v24;
                    v83[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
                    v83[2] = 0;
                    v83[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                    v83[4] = 0;
                    v83[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                    v83[6] = 0;
                    _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v83);
                    JUMPOUT(0x1304D3);
                  }

                  BUG();
                case 5u:
                  JUMPOUT(0x1305D5);
                case 6u:

                  MLDataValue.MultiArrayType.init(from:)(v18);
                  v95 = v92._countAndFlagsBits;
                  if (!v92._countAndFlagsBits)
                  {
                    BUG();
                  }

                  v18;
                  v29 = 5;
                  v96 = 0;
                  break;
              }

              v92 = v91;
              LOBYTE(v93) = 2;
              v31 = countAndFlagsBits;
              specialized __RawDictionaryStorage.find<A>(_:)(*&v91, 2, a1);
              v34 = (v33 & 1) == 0;
              v35 = __OFADD__(v31[2], v34);
              v36 = v31[2] + v34;
              if (v35)
              {
                BUG();
              }

              v37 = v33;
              if (v31[3] < v36)
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1u);
                v38 = v91;
                specialized __RawDictionaryStorage.find<A>(_:)(*&v91, 2, a1);
                LOBYTE(v39) = v39 & 1;
                v40 = v37;
                if ((v37 & 1) != v39)
                {
                  LOBYTE(v40) = v37 & 1;
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v38._object, v39, v40);
                  BUG();
                }
              }

              v41 = v96;
              if (v37)
              {
                v76 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                swift_willThrow();
                v84 = v76;
                swift_errorRetain(v76);
                v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v84, v77, &type metadata for _MergeError, 0))
                {
                  v81 = 0;
                  v82 = 0xE000000000000000;
                  _StringGuts.grow(_:)(30);
                  v78._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                  v78._countAndFlagsBits = 0xD00000000000001BLL;
                  String.append(_:)(v78);
                  _print_unlocked<A, B>(_:_:)(&v92, &v81, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                  v78._countAndFlagsBits = 39;
                  v78._object = 0xE100000000000000;
                  String.append(_:)(v78);
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v81, v82, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                  BUG();
                }

                outlined consume of MLDataValue(v95, v96, v29);
                outlined consume of MLDataValue(v92._countAndFlagsBits, v92._object, v93);

                v84;
                swift_unexpectedError(v76, "Swift/Dictionary.swift", 22, 1, 489);
                BUG();
              }

              v42 = v90;
              v90[(v32 >> 6) + 8] |= 1 << v32;
              v43 = v42[6];
              v44 = 24 * v32;
              *(v43 + v44) = v91;
              *(v43 + v44 + 16) = 2;
              v45 = v42[7];
              *(v45 + v44) = v95;
              *(v45 + v44 + 8) = v41;
              *(v45 + v44 + 16) = v29;
              v46 = v42[2];
              v35 = __OFADD__(1, v46);
              v47 = v46 + 1;
              if (v35)
              {
                BUG();
              }

              countAndFlagsBits = v42;
              v42[2] = v47;
            }
          }

          v85;
          v16;
          v11 = 4;
          object = 0;
          goto LABEL_41;
        case 5:

          v11 = 6;
          *&countAndFlagsBits = 0.0;
          goto LABEL_40;
        case 6:

          MLDataValue.MultiArrayType.init(from:)(v7);
          countAndFlagsBits = v92._countAndFlagsBits;
          if (!v92._countAndFlagsBits)
          {
            BUG();
          }

          v11 = 5;
LABEL_40:
          object = 0;
LABEL_41:
          if (v87 < CMLSequence.size.getter())
          {
            switch(v11)
            {
              case 0u:
                v54 = specialized handling<A, B>(_:_:)(countAndFlagsBits);
                if (!v54)
                {
                  BUG();
                }

                goto LABEL_49;
              case 1u:
                a1 = *&countAndFlagsBits;
                v54 = specialized handling<A, B>(_:_:)();
                if (!v54)
                {
                  BUG();
                }

LABEL_49:
                v65 = type metadata accessor for CMLFeatureValue();
                swift_allocObject(v65, 25, 7);
                v66 = CMLFeatureValue.init(rawValue:ownsValue:)(v54, 1);
                goto LABEL_53;
              case 2u:
                *&v97 = v11;
                type metadata accessor for CMLFeatureValue();
                swift_bridgeObjectRetain_n(object, 2);
                v60 = object;
                v61 = countAndFlagsBits;
                v58 = CMLFeatureValue.__allocating_init(_:)(countAndFlagsBits, v60);
                outlined consume of MLDataValue(v61, v60, 2);
                object = v60;
                v11 = LOBYTE(v97);
                goto LABEL_54;
              case 3u:
                *&v97 = v11;
                v62 = object;
                v63 = countAndFlagsBits;
                v92._countAndFlagsBits = countAndFlagsBits;
                swift_retain_n(countAndFlagsBits, 2);
                v58 = MLDataValue.SequenceType.featureValue.getter();

                v64 = v63;
                object = v62;
                v11 = LOBYTE(v97);
                outlined consume of MLDataValue(v64, object, 3);
                goto LABEL_54;
              case 4u:
                *&v97 = v11;
                v55 = object;
                v56 = countAndFlagsBits;
                v92._countAndFlagsBits = countAndFlagsBits;
                v57 = countAndFlagsBits;
                swift_bridgeObjectRetain_n(countAndFlagsBits, 2);
                v58 = MLDataValue.DictionaryType.featureValue.getter(v57, 2);
                v92._countAndFlagsBits;
                v59 = v56;
                object = v55;
                v11 = LOBYTE(v97);
                outlined consume of MLDataValue(v59, object, 4);
                goto LABEL_54;
              case 5u:
                *&v97 = v11;
                v67 = object;
                v68 = countAndFlagsBits;
                v92._countAndFlagsBits = countAndFlagsBits;
                v69 = countAndFlagsBits;
                v69;
                v58 = MLDataValue.MultiArrayType.featureValue.getter();

                v70 = v68;
                object = v67;
                v11 = LOBYTE(v97);
                outlined consume of MLDataValue(v70, object, 5);
                goto LABEL_54;
              case 6u:
                type metadata accessor for CMLFeatureValue();
                v66 = CMLFeatureValue.__allocating_init()();
LABEL_53:
                v58 = v66;
LABEL_54:
                CMLSequence.append(_:)(v58);

                v71 = v11;
                v6 = v87 + 1;
                outlined consume of MLDataValue(countAndFlagsBits, object, v71);
                if (v6 == CMLSequence.size.getter())
                {
                  goto LABEL_57;
                }

                continue;
            }
          }

          BUG();
      }
    }
  }

LABEL_57:

  type metadata accessor for CMLFeatureValue();
  v72 = v94;

  v73 = CMLFeatureValue.__allocating_init(_:)(v72);
  swift_setDeallocating(v72);
  v74 = CMLFeatureValue.deinit();
  swift_deallocClassInstance(v74, 25, 7);
  return v73;
}

uint64_t Array<A>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v41 = a3;
  v5 = type metadata accessor for Optional(0, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v42 = *(a2 - 8);
  v10 = *(v42 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v43 = v39;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v44 = v39;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  if (v17 != 3)
  {
    outlined consume of MLDataValue(*a1, v16, v17);
    return 0;
  }

  v46 = v5;
  v49 = v16;
  v56 = 0;
  v54 = a2;
  v18 = Array.init()(a2);
  v53 = v18;

  v58 = v15;
  if (CMLSequence.size.getter())
  {
    v47 = v6;
    v57 = 0;
    v45 = v39;
    while (1)
    {
      v19 = v56;
      v20 = CMLSequence.value(at:)(v57);
      v56 = v19;
      if (v19)
      {
        swift_unexpectedError(v56, "CreateML/SequenceType.swift", 27, 1, 36);
        BUG();
      }

      MLDataValue.init(_:)(v20, a4);
      v21 = v50;
      v22 = v51;
      v23 = v52;
      outlined copy of MLDataValue(v50, v51, v52);
      v55 = v21;
      v24 = v21;
      v25 = v23;
      outlined consume of MLDataValue(v24, v22, v23);
      if (v57 >= CMLSequence.size.getter())
      {
        BUG();
      }

      v50 = v55;
      v51 = v22;
      v52 = v23;
      v26 = v41;
      v40 = *(v41 + 16);
      v48 = v22;
      outlined copy of MLDataValue(v55, v22, v25);
      v27 = v45;
      v28 = v26;
      v29 = v54;
      v40(&v50, v54, v28);
      if (__swift_getEnumTagSinglePayload(v27, 1, v29) == 1)
      {
        break;
      }

      ++v57;
      v30 = v44;
      v31 = v27;
      v32 = v42;
      (*(v42 + 32))(v44, v31, v29);
      v33 = v43;
      (*(v32 + 16))(v43, v30, v29);
      v34 = type metadata accessor for Array(0, v29);
      Array.append(_:)(v33, v34);
      outlined consume of MLDataValue(v55, v48, v25);
      v35 = v30;
      v36 = v57;
      (*(v32 + 8))(v35, v29);
      v37 = v58;
      if (v36 == CMLSequence.size.getter())
      {
        v18 = v53;
        goto LABEL_11;
      }
    }

    outlined consume of MLDataValue(v55, v48, v25);
    outlined consume of MLDataValue(v58, v49, 3);

    v53;
    (*(v47 + 8))(v27, v46);
    return 0;
  }

  v37 = v58;
LABEL_11:

  outlined consume of MLDataValue(v37, v49, 3);
  return v18;
}

{
  v41 = a3;
  v45 = type metadata accessor for Optional(0, a2);
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v40 = v37;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v42 = v37;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v43 = v37;
  v14 = 0;
  v15 = specialized handling<A, B>(_:_:)(*(a1 + 16));
  v51 = a1;
  v44 = v8;
  v49 = a2;
  v46 = v4;
  if (!v15)
  {
    BUG();
  }

  v16 = v15;
  v17 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v17, v38);
  *(inited + 16) = v16;
  *(inited + 24) = 1;
  v19 = Array.init()(v49);
  v50 = v19;

  if (CMLSequence.size.getter())
  {
    v20 = 0;
    while (1)
    {
      v21 = CMLSequence.value(at:)(v20);
      v48 = v14;
      if (v14)
      {
        swift_unexpectedError(v48, "CreateML/SequenceType.swift", 27, 1, 76);
        BUG();
      }

      v22 = v21;
      v23 = specialized RandomAccessCollection<>.index(after:)(v20);
      v24 = inited;
      v25 = v40;
      v47 = v22;
      v26 = v49;
      static MLDataValueConvertible.makeInstance(featureValue:)(v22, v49, v41, a4);
      v27 = v25;
      v28 = v26;
      if (__swift_getEnumTagSinglePayload(v27, 1, v26) == 1)
      {
        break;
      }

      v39 = v23;
      v29 = v43;
      v30 = v27;
      v31 = v44;
      (*(v44 + 32))(v43, v30, v26);
      v32 = v42;
      (*(v31 + 16))(v42, v29, v28);
      v33 = type metadata accessor for Array(0, v28);
      Array.append(_:)(v32, v33);

      v34 = v29;
      v20 = v39;
      (*(v31 + 8))(v34, v28);
      inited = v24;
      v35 = CMLSequence.size.getter();
      v14 = v48;
      if (v20 == v35)
      {
        inited;
        v19 = v50;
        goto LABEL_9;
      }
    }

    v24;

    v50;
    (*(v46 + 8))(v27, v45);
    return 0;
  }

  else
  {
    inited;
LABEL_9:
  }

  return v19;
}

uint64_t Array<A>.dataValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v18 = v3;
  *&v13 = a1;
  v4 = type metadata accessor for Array(0, a2);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v4);
  v21 = WitnessTable;
  Sequence.lazy.getter(v4, WitnessTable);
  v20 = v15;
  v17 = v15;
  v6 = swift_allocObject(&unk_391800, 32, 7);
  *(v6 + 16) = a2;
  *(v6 + 24) = v19;
  v7 = type metadata accessor for LazySequence(0, v4, WitnessTable);
  v8 = swift_getWitnessTable(&protocol conformance descriptor for LazySequence<A>, v7);
  LazySequenceProtocol.map<A>(_:)(partial apply for closure #1 in Array<A>.dataValue.getter, v6, v7, &type metadata for MLDataValue, v8);
  v20;

  v15 = v13;
  v16 = v14;
  v9 = type metadata accessor for LazyMapSequence(0, v4, &type metadata for MLDataValue, v21);
  v10 = swift_getWitnessTable(&protocol conformance descriptor for LazyMapSequence<A, B>, v9);
  MLDataValue.SequenceType.init<A>(_:)(&v15, v9, v10, *&a1);
  result = v17;
  v12 = v18;
  *v18 = v17;
  v12[1] = 0;
  *(v12 + 16) = 3;
  return result;
}

uint64_t Array<A>.featureSequence.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v3 = a1;
  v38 = 0;
  v37 = *(a2 - 8);
  v4 = *(v37 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v31 = &v28;
  v33 = v4;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v9 = &v28;
  v10 = tc_v1_flex_list_create(0);
  if (!v10)
  {
    BUG();
  }

  v11 = v10;
  v12 = type metadata accessor for CMLSequence();
  v13 = swift_allocObject(v12, 25, 7);
  *(v13 + 16) = v11;
  v35 = v13;
  *(v13 + 24) = 1;

  v14 = Array.startIndex.getter(a1, a2);
  after = v14;
  if (v14 != Array.endIndex.getter(a1, a2))
  {
    v36 = a1;
    v32 = &v28;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)(v14, IsNativeType, v3, a2);
      if (IsNativeType)
      {
        v17 = v37;
        (*(v37 + 16))(v9, v3 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v14, a2);
        v18 = v9;
      }

      else
      {
        v23 = _ArrayBuffer._getElementSlowPath(_:)(v14, v3, a2);
        if (v33 != 8)
        {
          BUG();
        }

        v24 = v23;
        v29 = v23;
        v25 = v9;
        v18 = v9;
        v26 = v37;
        (*(v37 + 16))(v25, &v29, a2);
        v27 = v24;
        v17 = v26;
        swift_unknownObjectRelease(v27);
      }

      Array.formIndex(after:)(&after);
      v19 = v31;
      (*(v17 + 32))(v31, v18, a2);
      v20 = MLDataValueConvertible.featureValue.getter(a2, v30);
      v21 = v38;
      CMLSequence.append(_:)(v20);
      v38 = v21;
      if (v21)
      {

        swift_unexpectedError(v38, "CreateML/SequenceType.swift", 27, 1, 145);
        BUG();
      }

      (*(v37 + 8))(v19, a2);

      v3 = v36;
      v22 = Array.endIndex.getter(v36, a2);
      v14 = after;
      v9 = v32;
    }

    while (after != v22);
  }

  v3;
  return v35;
}

uint64_t Array<A>.featureColumn.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = Array<A>.featureSequence.getter(a1, a2, a3);
  (*(a3 + 8))(a2, a3);
  type metadata accessor for CMLColumn();
  return CMLColumn.__allocating_init(_:type:)(v4, 0x5060403020100uLL >> (8 * v6));
}

uint64_t protocol witness for MLDataValueConvertible.init(from:) in conformance <A> [A](uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  result = Array<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8), a4);
  *v5 = result;
  return result;
}

uint64_t protocol witness for MLDataValueConvertible.init() in conformance <A> [A](uint64_t a1)
{
  v2 = v1;
  result = Array.init()(*(a1 + 16));
  *v2 = result;
  return result;
}

uint64_t protocol witness for FeatureValueConvertible.init(from:) in conformance <A> [A](uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  result = Array<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8), a4);
  *v5 = result;
  return result;
}

void outlined consume of MLDataValue?(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of MLDataValue(a1, a2, a3);
  }
}

uint64_t lazy protocol witness table accessor for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>(uint64_t *a1, uint64_t *a2, void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!*a1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    a3();
    result = swift_getWitnessTable(a4, v7);
    *a1 = result;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> [A](uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], a2);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<CMLSequence> and conformance <> Slice<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!*a1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Slice<CMLSequence>);
    lazy protocol witness table accessor for type CMLSequence and conformance CMLSequence(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CMLSequence and conformance CMLSequence(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = type metadata accessor for CMLSequence();
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

uint64_t outlined retain of Range<MLDataValue.DictionaryType.Index>(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  outlined copy of [A : B].Index._Variant<A, B>(*a1, *(a1 + 8), *(a1 + 16));
  outlined copy of [A : B].Index._Variant<A, B>(v1, v2, v3);
  return a1;
}

void *initializeBufferWithCopyOfBuffer for MLLogisticRegressionClassifier.Model(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *v3 = *a2;
    v3 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v6 = a2[2];

    if (v6)
    {
      a1[2] = v6;
      a1[3] = a2[3];
      a1[4] = a2[4];
    }

    else
    {
      a1[4] = a2[4];
      *(a1 + 1) = *(a2 + 1);
    }

    v8 = *(a3 + 24);
    v9 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
    (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    v10 = *(a3 + 28);
    v11 = *(a2 + v10 + 8);
    *(a1 + v10) = *(a2 + v10);
    *(a1 + v10 + 8) = v11;
  }

  return v3;
}

uint64_t destroy for MLLogisticRegressionClassifier.Model(void *a1, uint64_t a2)
{
  a1[1];
  v3 = a1[2];
  if (v3)
  {
    v3;
    a1[4];
  }

  v4 = a1 + *(a2 + 24);
  v5 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  return *(a1 + *(a2 + 28));
}

void *initializeWithCopy for MLLogisticRegressionClassifier.Model(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a2[2];

  if (v4)
  {
    a1[2] = v4;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v5 = *(a3 + 24);
  v6 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  v7 = *(a3 + 28);
  v8 = *(a2 + v7 + 8);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 8) = v8;

  return a1;
}

void *assignWithCopy for MLLogisticRegressionClassifier.Model(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v4;
  v5 = a1 + 2;
  v6 = a2 + 2;
  v7 = a1[2];
  v8 = a2[2];
  if (v7)
  {
    if (v8)
    {
      a1[2] = v8;

      v7;
      a1[3] = a2[3];
      v9 = a1[4];
      a1[4] = a2[4];

      v9;
    }

    else
    {
      outlined destroy of FeatureVectorizer<Double>.Transformer((a1 + 2));
      *v5 = *v6;
      a1[4] = a2[4];
    }
  }

  else if (v8)
  {
    a1[2] = v8;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *v5 = *v6;
  }

  v10 = *(a3 + 24);
  v11 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  v12 = *(a3 + 28);
  v13 = *(a2 + v12 + 8);
  v14 = *(a1 + v12);
  *(a1 + v12) = *(a2 + v12);
  *(a1 + v12 + 8) = v13;

  v14;
  return a1;
}

uint64_t outlined destroy of FeatureVectorizer<Double>.Transformer(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t initializeWithTake for MLLogisticRegressionClassifier.Model(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a3 + 24);
  v5 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v5 - 8) + 32))(a1 + v4, a2 + v4, v5);
  v6 = *(a3 + 28);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  *(a1 + v6) = *(a2 + v6);
  return a1;
}

void *assignWithTake for MLLogisticRegressionClassifier.Model(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];
  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  if (v8)
  {
    v9 = a2[2];
    if (v9)
    {
      a1[2] = v9;
      v8;
      a1[3] = a2[3];
      v10 = a1[4];
      a1[4] = a2[4];
      v10;
    }

    else
    {
      outlined destroy of FeatureVectorizer<Double>.Transformer((a1 + 2));
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v11 = *(a3 + 24);
  v12 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = *(a3 + 28);
  v14 = *(a2 + v13 + 8);
  v15 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + v13 + 8) = v14;
  v15;
  return a1;
}

uint64_t sub_132242(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*(a1 + 8) & 0xFFFFFFFF00000001) == 0)
    {
      return (*(a1 + 8) >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 24) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_1322CA(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 24) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier.Model(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLogisticRegressionClassifier.Model;
  if (!type metadata singleton initialization cache for MLLogisticRegressionClassifier.Model)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLogisticRegressionClassifier.Model);
  }

  return result;
}

uint64_t type metadata completion function for MLLogisticRegressionClassifier.Model(uint64_t a1)
{
  v3[0] = &unk_342328;
  v3[1] = &unk_342340;
  result = type metadata accessor for BaseLogisticRegressionClassifierModel(319);
  if (v2 <= 0x3F)
  {
    v3[2] = *(result - 8) + 64;
    v3[3] = &unk_342358;
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Model.computeMetrics(on:)(uint64_t a1)
{
  v14[0] = v1;
  v4 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v15 = v14;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v20 = v14;
  v17 = type metadata accessor for DataFrame(0);
  v16 = *(v17 - 8);
  v9 = *(v16 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v14[1] = a1;
  result = MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(a1, 0, 0);
  if (!v2)
  {
    v18 = *v3;
    v19 = v3[1];
    DataFrame.subscript.getter(v18, v19);
    v13 = v15;
    DataFrame.subscript.getter(v18, v19);
    AnyClassificationMetrics.init(_:_:)(v20, v13);
    return (*(v16 + 8))(v14, v17);
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v32 = v4;
  v6 = v5;
  v31 = a3;
  v27 = a2;
  v29 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = v5[2];
  if (!v11)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, ("ressorModel.swift" + 0x8000000000000000), "CreateML/MLLogisticRegressionClassifier.Model.swift", 51, 2, 28, 0);
    BUG();
  }

  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(a1, 1, v11, v5[3], v5[4]);
  if (!v32)
  {
    v32 = 0;
    v30 = v7;
    v13 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    v28 = &v25;
    v14 = BaseLogisticRegressionClassifierModel.applied(features:eventHandler:)(&v25, v27, v31);
    v31 = &v25;
    v15 = *(v13 + 28);
    v16 = *(v6 + v15);
    v17 = alloca(32);
    v18 = alloca(32);
    v19 = *(v6 + v15 + 8) == 0;
    v27 = v6;
    v28 = v16;
    v20 = v32;
    if (v19)
    {
      MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5(partial apply for closure #1 in MLLogisticRegressionClassifier.Model.applied(to:eventHandler:), &v25, v14);
      v32 = v20;
      v14;
      v22 = MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5;
      specialized MLLogisticRegressionClassifier.Model.buildDataFrame<A>(_:)(MLComponents26ClassificationDistributionVySiGG_AIs5NeverOTg5);
    }

    else
    {
      MLComponents26ClassificationDistributionVySiGG_AHySSGs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_AHySSGs5NeverOTg5(partial apply for closure #2 in MLLogisticRegressionClassifier.Model.applied(to:eventHandler:), &v25, v14);
      v32 = v20;
      v14;
      v22 = MLComponents26ClassificationDistributionVySiGG_AHySSGs5NeverOTg5;
      specialized MLLogisticRegressionClassifier.Model.buildDataFrame<A>(_:)(MLComponents26ClassificationDistributionVySiGG_AHySSGs5NeverOTg5);
    }

    v24 = v30;
    v22;
    return (*(v26 + 8))(v28, v24);
  }

  return result;
}

uint64_t closure #1 in MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  return ClassificationDistribution.map<A>(_:)(partial apply for closure #1 in MLLogisticRegressionClassifier.Model.convertDistribution(_:labels:), v5, v3, &type metadata for Int, &protocol witness table for Int);
}

uint64_t specialized MLLogisticRegressionClassifier.Model.buildDataFrame<A>(_:)(uint64_t a1)
{
  v28[4] = v1;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = v28;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<ClassificationDistribution<Int>>);
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v33 = v28;
  v34 = *v2;
  v10 = v2[1];
  v38 = v34;
  v39 = v10;

  v11._countAndFlagsBits = 0x6C696261626F7250;
  v11._object = 0xEB00000000797469;
  String.append(_:)(v11);
  v36 = v38;
  v37 = v39;
  v35 = a1;
  v38 = a1;

  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<Int>]);
  v14 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [ClassificationDistribution<Int>] and conformance [A], &demangling cache variable for type metadata for [ClassificationDistribution<Int>]);
  Column.init<A>(name:contents:)(v36, v37, &v38, v12, v13, v14);
  v28[2] = &type metadata for Int;
  v28[3] = &protocol witness table for Int;
  KeyPath = swift_getKeyPath(&unk_3423D8);

  MLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n(v35, KeyPath);

  v38 = MLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_Si_TG5s7KeyPathCyAiKGTf1cn_n;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int?]);
  v18 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [Int?] and conformance [A], &demangling cache variable for type metadata for [Int?]);
  Column.init<A>(name:contents:)(v34, v10, &v38, &type metadata for Int, v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v20 = *(type metadata accessor for AnyColumn(0) - 8);
  v21 = swift_allocObject(v19, ((*(v20 + 80) + 32) & ~*(v20 + 80)) + 2 * *(v20 + 72), *(v20 + 80) | 7);
  *(v21 + 16) = 2;
  *(v21 + 24) = 4;
  v22 = v31;
  Column.eraseToAnyColumn()(v31);
  v23 = v32;
  v24 = v33;
  Column.eraseToAnyColumn()(v32);
  v38 = v21;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v26 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn]);
  DataFrame.init<A>(columns:)(&v38, v25, v26);
  (*(v29 + 8))(v40, v22);
  return (*(v30 + 8))(v24, v23);
}

{
  v28[4] = v1;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = v28;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<ClassificationDistribution<String>>);
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v33 = v28;
  v34 = *v2;
  v10 = v2[1];
  v38 = v34;
  v39 = v10;

  v11._countAndFlagsBits = 0x6C696261626F7250;
  v11._object = 0xEB00000000797469;
  String.append(_:)(v11);
  v36 = v38;
  v37 = v39;
  v35 = a1;
  v38 = a1;

  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<String>]);
  v14 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [ClassificationDistribution<String>] and conformance [A], &demangling cache variable for type metadata for [ClassificationDistribution<String>]);
  Column.init<A>(name:contents:)(v36, v37, &v38, v12, v13, v14);
  v28[2] = &type metadata for String;
  v28[3] = &protocol witness table for String;
  KeyPath = swift_getKeyPath(&unk_3423D8);

  MLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n(v35, KeyPath);

  v38 = MLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d81ML22AnyTreeClassifierModelV14buildDataFramey07TabularH00hI0VSay0A12MLComponents26fG26VyxGGSHRzlFxSgAKcfu_SS_TG5s7KeyPathCyAiKGTf1cn_n;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String?]);
  v18 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String?] and conformance [A], &demangling cache variable for type metadata for [String?]);
  Column.init<A>(name:contents:)(v34, v10, &v38, &type metadata for String, v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v20 = *(type metadata accessor for AnyColumn(0) - 8);
  v21 = swift_allocObject(v19, ((*(v20 + 80) + 32) & ~*(v20 + 80)) + 2 * *(v20 + 72), *(v20 + 80) | 7);
  *(v21 + 16) = 2;
  *(v21 + 24) = 4;
  v22 = v31;
  Column.eraseToAnyColumn()(v31);
  v23 = v32;
  v24 = v33;
  Column.eraseToAnyColumn()(v32);
  v38 = v21;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v26 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn]);
  DataFrame.init<A>(columns:)(&v38, v25, v26);
  (*(v29 + 8))(v40, v22);
  return (*(v30 + 8))(v24, v23);
}

uint64_t closure #2 in MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  return ClassificationDistribution.map<A>(_:)(partial apply for closure #1 in MLLogisticRegressionClassifier.Model.convertDistribution(_:labels:), v5, v3, &type metadata for String, &protocol witness table for String);
}

uint64_t closure #1 in MLLogisticRegressionClassifier.Model.convertDistribution(_:labels:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Classification<Int>);
  Classification.label.getter(v3);
  if (v5[0] < 0 || v5[0] >= v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, ("ClassifierModel.swift" + 0x8000000000000000), "CreateML/MLLogisticRegressionClassifier.Model.swift", 51, 2, 47, 0);
    BUG();
  }

  Classification.label.getter(v3);
  if (v5[0] >= v2)
  {
    BUG();
  }

  v5[0] = *(a2 + 8 * v5[0] + 32);
  Classification.probability.getter(v3);
  return Classification.init(label:probability:)(v5, &type metadata for Int, &protocol witness table for Int);
}

{
  v2 = *(a2 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Classification<Int>);
  Classification.label.getter(v3);
  if (v6[0] < 0 || v6[0] >= v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, ("ClassifierModel.swift" + 0x8000000000000000), "CreateML/MLLogisticRegressionClassifier.Model.swift", 51, 2, 57, 0);
    BUG();
  }

  Classification.label.getter(v3);
  if (v6[0] >= v2)
  {
    BUG();
  }

  v4 = *(a2 + 16 * v6[0] + 40);
  v6[0] = *(a2 + 16 * v6[0] + 32);
  v6[1] = v4;

  Classification.probability.getter(v3);
  return Classification.init(label:probability:)(v6, &type metadata for String, &protocol witness table for String);
}

uint64_t lazy protocol witness table accessor for type MLLogisticRegressionClassifier.Model and conformance MLLogisticRegressionClassifier.Model()
{
  result = lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Model and conformance MLLogisticRegressionClassifier.Model;
  if (!lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Model and conformance MLLogisticRegressionClassifier.Model)
  {
    v1 = type metadata accessor for MLLogisticRegressionClassifier.Model(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLLogisticRegressionClassifier.Model, v1);
    lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Model and conformance MLLogisticRegressionClassifier.Model = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in MLLogisticRegressionClassifier.Model.convertDistribution(_:labels:)(uint64_t a1)
{
  return closure #1 in MLLogisticRegressionClassifier.Model.convertDistribution(_:labels:)(a1, *(v1 + 16));
}

{
  return closure #1 in MLLogisticRegressionClassifier.Model.convertDistribution(_:labels:)(a1, *(v1 + 16));
}

void *initializeBufferWithCopyOfBuffer for ClassificationMetricsContainer(void *a1, void *a2)
{
  return initializeBufferWithCopyOfBuffer for ClassificationMetricsContainer(a1, a2);
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t destroy for ClassificationMetricsContainer(uint64_t a1)
{

  return *(a1 + 16);
}

void *assignWithCopy for ClassificationMetricsContainer(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v2 = a1[2];
  a1[2] = a2[2];

  v2;
  return a1;
}

uint64_t assignWithTake for ClassificationMetricsContainer(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v3;
  return a1;
}

uint64_t ClassificationMetricsContainer.init(classLabels:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  v5 = swift_allocObject(v4, *(v4 + 48), *(v4 + 52));

  v6 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v3);
  if (v1)
  {
    swift_bridgeObjectRelease_n(a1, 2);
  }

  else
  {
    v7 = v6;
    swift_allocObject(v4, *(v4 + 48), *(v4 + 52));

    _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v3);
    v2;
    v5 = v7;
  }

  return v5;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ClassificationMetricsContainer.resetIteration()()
{
  v9 = v1;
  v2 = v1[2];
  v3 = *(v2 + 16);
  v4 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  swift_allocObject(v4, *(v4 + 48), *(v4 + 52));
  v5 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v3);
  if (!v0)
  {
    v8 = v5;

    *v9 = v8;
    v6 = *(v2 + 16);
    swift_allocObject(v4, *(v4 + 48), *(v4 + 52));
    v7 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v6);

    v9[1] = v7;
  }
}

void *initializeBufferWithCopyOfBuffer for MLLogisticRegressionClassifier.Classifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *v3 = *a2;
    v3 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = a2[2];
    *(a1 + 24) = a2[3];
    v15 = (a1 + 32);
    v17 = a2 + 4;
    v6 = a2[7];

    if (v6)
    {
      *(a1 + 56) = v6;
      (**(v6 - 8))(v15, v17, v6);
    }

    else
    {
      v8 = *v17;
      *(a1 + 48) = *(a2 + 3);
      *v15 = v8;
    }

    *(a1 + 64) = *(a2 + 4);
    *(a1 + 80) = *(a2 + 5);
    *(a1 + 96) = *(a2 + 96);
    v9 = *(a2 + 112);
    *(a1 + 104) = a2[13];
    *(a1 + 112) = v9;
    *(a1 + 120) = a2[15];
    *(a1 + 128) = a2[16];
    *(a1 + 136) = a2[17];
    v10 = *(a3 + 36);
    v16 = a1 + v10;
    v11 = a2 + v10;
    v12 = type metadata accessor for BaseLogisticRegressionClassifier(0);
    v14 = *(*(v12 - 8) + 16);

    v14(v16, v11, v12);
  }

  return v3;
}

uint64_t destroy for MLLogisticRegressionClassifier.Classifier(void *a1, uint64_t a2)
{
  a1[1];
  a1[2];
  if (a1[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 4);
  }

  a1[13];
  a1[15];
  a1[17];
  v2 = a1 + *(a2 + 36);
  v3 = type metadata accessor for BaseLogisticRegressionClassifier(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

uint64_t initializeWithCopy for MLLogisticRegressionClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v13 = (a1 + 32);
  v3 = *(a2 + 56);

  if (v3)
  {
    *(a1 + 56) = v3;
    (**(v3 - 8))(v13, a2 + 32, v3);
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *v13 = v4;
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v5;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v6 = *(a3 + 36);
  v12 = a1 + v6;
  v7 = v6 + a2;
  v8 = type metadata accessor for BaseLogisticRegressionClassifier(0);
  v10 = *(*(v8 - 8) + 16);

  v10(v12, v7, v8);
  return a1;
}

uint64_t assignWithCopy for MLLogisticRegressionClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v5;
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (v6)
    {
      *(a1 + 56) = v6;
      (**(v6 - 8))(a1 + 32, a2 + 32);
      goto LABEL_8;
    }

LABEL_7:
    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
    goto LABEL_8;
  }

  if (!v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 32), (a2 + 32));
LABEL_8:
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v8;

  v9;
  v10 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v10;
  *(a1 + 128) = *(a2 + 128);
  v11 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);

  v11;
  v12 = *(a3 + 36);
  v13 = a1 + v12;
  v14 = v12 + a2;
  v15 = type metadata accessor for BaseLogisticRegressionClassifier(0);
  (*(*(v15 - 8) + 24))(v13, v14, v15);
  return a1;
}

uint64_t initializeWithTake for MLLogisticRegressionClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  qmemcpy((a1 + 24), (a2 + 24), 0x49uLL);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  v3 = *(a3 + 36);
  v4 = type metadata accessor for BaseLogisticRegressionClassifier(0);
  (*(*(v4 - 8) + 32))(a1 + v3, a2 + v3, v4);
  return a1;
}

uint64_t assignWithTake for MLLogisticRegressionClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v6;
  *(a1 + 24) = *(a2 + 24);
  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v8;
  v9;
  v10 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  v10;
  *(a1 + 128) = *(a2 + 128);
  v11 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);
  v11;
  v12 = *(a3 + 36);
  v13 = a1 + v12;
  v14 = v12 + a2;
  v15 = type metadata accessor for BaseLogisticRegressionClassifier(0);
  (*(*(v15 - 8) + 40))(v13, v14, v15);
  return a1;
}

uint64_t sub_133874(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*(a1 + 8) & 0xFFFFFFFF00000001) == 0)
    {
      return (*(a1 + 8) >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for BaseLogisticRegressionClassifier(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 36) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_1338FC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseLogisticRegressionClassifier(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 36) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier.Classifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLogisticRegressionClassifier.Classifier;
  if (!type metadata singleton initialization cache for MLLogisticRegressionClassifier.Classifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLogisticRegressionClassifier.Classifier);
  }

  return result;
}

uint64_t type metadata completion function for MLLogisticRegressionClassifier.Classifier(uint64_t a1)
{
  v3[0] = &unk_342480;
  v3[1] = &value witness table for Builtin.BridgeObject + 64;
  v3[2] = &unk_342498;
  v3[3] = &unk_3424B0;
  v3[4] = &unk_3424C8;
  result = type metadata accessor for BaseLogisticRegressionClassifier(319);
  if (v2 <= 0x3F)
  {
    v3[5] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 6, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Classifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v40 = a3;
  v8 = v6;
  v35 = v6;
  v38 = a2;
  v37 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Double, Int>.Configuration);
  v36 = *(v32 - 8);
  v11 = *(v36 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v31 = &v29;
  v14 = alloca(v11);
  v15 = alloca(v11);
  *v8 = v40;
  v8[1] = v39;
  v8[2] = a5;
  v34 = v8 + 3;
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(a6, (v8 + 3));
  v8[15] = a5;
  v8[16] = 0xD000000000000013;
  v8[17] = "raining samples." + 0x8000000000000000;
  v40 = a6;
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(a6, v30);
  v16 = lazy protocol witness table accessor for type Double and conformance Double();
  v33 = a5;

  v17 = v16;
  v18 = v32;
  LogisticRegressionClassifier.Configuration.init()(&type metadata for Double, &type metadata for Int, &protocol witness table for Double, v17, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int);
  LogisticRegressionClassifier.Configuration.maximumIterations.setter(*&v30[0], v18);
  LogisticRegressionClassifier.Configuration.l1Penalty.setter(v18, v30[5]);
  LogisticRegressionClassifier.Configuration.l2Penalty.setter(v18, v30[6]);
  LogisticRegressionClassifier.Configuration.stepSize.setter(v18, v30[7]);
  LogisticRegressionClassifier.Configuration.convergenceThreshold.setter(v18, v30[8]);
  outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v30);
  v19 = v31;
  (*(v36 + 16))(v31, &v29, v18);
  v20 = v35 + *(type metadata accessor for MLLogisticRegressionClassifier.Classifier(0) + 36);
  BaseLogisticRegressionClassifier.init(configuration:)(v19);
  v21 = static Labels.collected(from:_:)(v37, v38);
  if (v7)
  {
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v40);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, &demangling cache variable for type metadata for AnyColumn?);
    v23 = type metadata accessor for AnyColumn(0);
    (*(*(v23 - 8) + 8))(v37, v23);
    (*(v36 + 8))(&v29, v18);
    v24 = v33;
    v33;
    v39;
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v34);
    v24;
    v25 = type metadata accessor for BaseLogisticRegressionClassifier(0);
    return (*(*(v25 - 8) + 8))(v20, v25);
  }

  else
  {
    v27 = v22;
    v39 = v21;
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v40);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, &demangling cache variable for type metadata for AnyColumn?);
    v28 = type metadata accessor for AnyColumn(0);
    (*(*(v28 - 8) + 8))(v37, v28);
    (*(v36 + 8))(&v29, v18);
    result = v35;
    *(v35 + 104) = v39;
    *(result + 112) = v27 & 1;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Classifier.fitted(to:validateOn:eventHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = v5;
  v65 = a4;
  v66 = a3;
  v58 = a2;
  v85 = a1;
  v64 = v4;
  v61 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  v60 = *(v61 - 8);
  v7 = *(v60 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v67 = v56;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v68 = v56;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v59 = v56;
  v76 = type metadata accessor for DataFrame(0);
  v74 = *(v76 - 8);
  v15 = *(v74 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v82 = v56;
  v62 = type metadata accessor for AnyColumn(0);
  v73 = *(v62 - 8);
  v18 = *(v73 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v63 = v56;
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v21 = *(v77 - 8);
  v22 = *(v21 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v78 = v56;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v83 = v56;
  v72 = v6;
  v27 = *(v6 + 16);
  v57 = v85;

  v28 = v84;
  ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(closure #1 in FeatureVectorizer.fitted(to:)partial apply, v56, v27);
  result = v27;
  if (!v28)
  {
    v79 = v21;
    specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v85, 1, ML16ColumnDescriptorVsAE_pTg5, 0xD000000000000013, ("raining samples." + 0x8000000000000000));
    v84 = 0;
    v69 = "raining samples." + 0x8000000000000000;
    v80 = ML16ColumnDescriptorVsAE_pTg5;
    v31 = *(v72 + 104);
    v32 = *(v72 + 112);
    v33 = *(v72 + 8);
    v34 = v63;
    v71 = *v72;
    v70 = v33;
    DataFrame.subscript.getter(v71, v33);
    v75 = v31;
    v81 = v32;
    v85 = Labels.encodeAnnotations(_:)(v34, v31, v32);
    v73 = *(v73 + 8);
    (v73)(v34, v62);
    v35 = v59;
    outlined init with copy of DataFrame?(v58, v59);
    v36 = v76;
    if (__swift_getEnumTagSinglePayload(v35, 1, v76) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for DataFrame?);
      v37 = *(v75 + 16);
      type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
      v38 = v83;
      v39 = v85;
      v40 = v84;
      BaseLogisticRegressionClassifier.fitted(features:annotations:classCount:eventHandler:)(v83, v85, v37, v66, v65);
      (*(v79 + 8))(v38, v77);
      v39;
      v41 = v64;
      if (v40)
      {
        return v80;
      }

      v47 = v67;
    }

    else
    {
      v42 = v82;
      v43 = v36;
      v44 = v74;
      (*(v74 + 32))(v82, v35, v43);
      v45 = v80;
      v46 = v84;
      specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v42, 1, v80, 0xD000000000000013, v69);
      v41 = v64;
      if (v46)
      {
        v45;
        v85;
        (*(v44 + 8))(v82, v76);
        return (*(v79 + 8))(v83, v77);
      }

      v48 = v63;
      DataFrame.subscript.getter(v71, v70);
      v49 = v75;
      v84 = Labels.encodeAnnotations(_:)(v48, v75, v81);
      (v73)(v48, v62);
      v50 = *(v49 + 16);
      type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
      v51 = v84;
      BaseLogisticRegressionClassifier.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:classCount:eventHandler:)(v83, v85, v78, v84, v50, v66, v65);
      v51;
      v85;
      v52 = *(v79 + 8);
      v53 = v77;
      v52(v78, v77);
      (*(v74 + 8))(v82, v76);
      v52(v83, v53);
      v47 = v68;
    }

    v54 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    (*(v60 + 32))(&v41[*(v54 + 24)], v47, v61);
    *v41 = v71;
    *(v41 + 1) = v70;
    *(v41 + 2) = v80;
    *(v41 + 3) = 0xD000000000000013;
    *(v41 + 4) = v69;
    v55 = *(v54 + 28);
    *&v41[v55] = v75;
    v41[v55 + 8] = v81;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Classifier.init(labels:annotationColumnName:featureColumnNames:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v28 = a1;
  v9 = v5;
  *(&v25 + 1) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Double, Int>.Configuration);
  v26 = *(*(&v25 + 1) - 8);
  v10 = *(v26 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v27 = &v25;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v29 = &v25;
  v15 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  *v9 = v30;
  *(v9 + 8) = a4;
  *(v9 + 16) = a5;
  v25 = 0;
  LOWORD(v26) = 256;
  swift_storeEnumTagMultiPayload(&v25, v15, 0);

  MLLogisticRegressionClassifier.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(&v25, 10, 1, 0.0, 0.01, 1.0, 0.01);
  *(v9 + 104) = v28;
  *(v9 + 112) = a2 & 1;
  *(v9 + 120) = a5;
  *(v9 + 128) = 0xD000000000000013;
  *(v9 + 136) = "raining samples." + 0x8000000000000000;
  v19 = lazy protocol witness table accessor for type Double and conformance Double();
  v20 = v29;
  LogisticRegressionClassifier.Configuration.init()(&type metadata for Double, &type metadata for Int, &protocol witness table for Double, v19, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int);
  v21 = v27;
  v22 = *(&v25 + 1);
  v23 = v26;
  (*(v26 + 16))(v27, v20, *(&v25 + 1));
  type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
  BaseLogisticRegressionClassifier.init(configuration:)(v21);
  return (*(v23 + 8))(v20, v22);
}

uint64_t MLLogisticRegressionClassifier.Classifier.annotationColumnID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<String, Int>);

  return ColumnID.init(_:_:)(v1, v2, v3, v3);
}

uint64_t MLLogisticRegressionClassifier.Classifier.annotationColumnID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Either<String, Int>>);
  v3 = ColumnID.name.getter(v2);
  v5 = v4;
  (*(*(v2 - 8) + 8))(a1, v2);
  result = v1[1];
  *v1 = v3;
  v1[1] = v5;
  return result;
}

void (*protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance MLLogisticRegressionClassifier.Classifier(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0x28uLL);
  *a1 = v2;
  *v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Either<String, Int>>);
  v2[1] = v3;
  v4 = *(v3 - 8);
  v2[2] = v4;
  v5 = *(v4 + 64);
  v2[3] = malloc(v5);
  v2[4] = malloc(v5);
  MLLogisticRegressionClassifier.Classifier.annotationColumnID.getter();
  return protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance MLLogisticRegressionClassifier.Classifier;
}

void protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance MLLogisticRegressionClassifier.Classifier(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[1];
    (*(v5 + 16))(v3, v4);
    MLLogisticRegressionClassifier.Classifier.annotationColumnID.setter(v3);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    MLLogisticRegressionClassifier.Classifier.annotationColumnID.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);
  free(v2);
}

uint64_t MLLogisticRegressionClassifier.Classifier.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  v3 = *(a1 + 32);
  v15 = a1;
  v13 = *(a1 + 16);
  v14 = v3;
  v4 = *(a2 + 24);
  v17 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer?);
  v6 = lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer? and conformance <A> A?();
  result = dispatch thunk of EstimatorEncoder.encode<A>(_:)(&v13, v5, v6, v4, v17, v7, v13, *(&v13 + 1), v14);
  if (!v2)
  {
    v9 = *(type metadata accessor for MLLogisticRegressionClassifier.Model(0) + 24) + v15;
    v17 = *(a2 + 24);
    v16 = *(a2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
    v10 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
    v11 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseLogisticRegressionClassifierModel and conformance BaseLogisticRegressionClassifierModel, &type metadata accessor for BaseLogisticRegressionClassifierModel, &protocol conformance descriptor for BaseLogisticRegressionClassifierModel);
    return dispatch thunk of EstimatorEncoder.encode<A>(_:)(v9, v10, v11, v17, v16, v12, v13, *(&v13 + 1), v14);
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Classifier.decode(from:)(uint64_t a1)
{
  v29 = v2;
  v22 = v3;
  v21 = v1;
  v26 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  v23 = *(v26 - 8);
  v4 = *(v23 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v27 = v20;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
  v8 = *(a1 + 24);
  v30 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v9 = lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer(&lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
  v10 = v29;
  result = dispatch thunk of EstimatorDecoder.decode<A>(_:)(v7, v7, v9, v8, v30);
  if (!v10)
  {
    v29 = v20[1];
    v24 = v20[2];
    v30 = v20[3];
    v12 = *(a1 + 24);
    v28 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseLogisticRegressionClassifierModel and conformance BaseLogisticRegressionClassifierModel, &type metadata accessor for BaseLogisticRegressionClassifierModel, &protocol conformance descriptor for BaseLogisticRegressionClassifierModel);
    dispatch thunk of EstimatorDecoder.decode<A>(_:)(v26, v26, v13, v12, v28);
    v14 = v22;
    v28 = *v22;
    v25 = v22[1];
    v15 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    v16 = v21;
    (*(v23 + 32))(v21 + *(v15 + 24), v27, v26);
    v17 = v14[13];
    v18 = *(v14 + 112);
    *v16 = v28;
    v16[1] = v25;
    v16[2] = v29;
    v16[3] = v24;
    v16[4] = v30;
    v19 = *(v15 + 28);
    *(v16 + v19) = v17;
    *(v16 + v19 + 8) = v18;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.Classifier.makeTransformer()()
{
  v2 = v0;
  v11 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  v12 = *(v11 - 8);
  v3 = *(v12 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v13 = *v1;
  v6 = v1[1];
  v7 = v1[13];
  v15 = *(v1 + 112);
  v14 = *(v7 + 16);
  type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);

  BaseLogisticRegressionClassifier.makeTransformer(classCount:)(v14);
  *v2 = v13;
  *(v2 + 8) = v6;
  v8 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  (*(v12 + 32))(v2 + *(v8 + 24), &v11, v11);
  v9 = *(v8 + 28);
  *(v2 + v9) = v7;
  *(v2 + v9 + 8) = v15;
}

uint64_t MLLogisticRegressionClassifier.Classifier.update(_:with:eventHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = v5;
  v40 = a4;
  v42 = a3;
  v6 = a2;
  v7 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v46 = &v39;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v49 = &v39;
  v53 = type metadata accessor for AnyColumn(0);
  v48 = *(v53 - 8);
  v14 = *(v48 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v43 = &v39;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v55 = &v39;
  ML16ColumnDescriptorVsAE_pTg5 = a1[2];
  if (ML16ColumnDescriptorVsAE_pTg5)
  {
    v56 = v4;
    v54 = a1[3];
    v47 = a1[4];
  }

  else
  {
    v54 = &v39;
    v26 = v52[2];
    v27 = alloca(24);
    v28 = alloca(32);
    v51 = a2;
    v41 = a2;

    ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(partial apply for closure #1 in FeatureVectorizer.fitted(to:), &v39, v26);
    result = v26;
    v56 = v4;
    if (v4)
    {
      return result;
    }

    v6 = v51;
    a1[2] = ML16ColumnDescriptorVsAE_pTg5;
    v54 = 0xD000000000000013;
    a1[3] = 0xD000000000000013;
    v47 = "raining samples." + 0x8000000000000000;
    a1[4] = "raining samples." + 0x8000000000000000;
  }

  v44 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v20 = *(v44 + 28);
  v50 = *(a1 + v20);
  if (*(v50 + 16))
  {
    LOBYTE(v55) = *(a1 + v20 + 8);
  }

  else
  {
    v45 = a1;
    v29 = *v52;
    v30 = v52[1];
    v31 = v55;
    v51 = v6;
    DataFrame.subscript.getter(v29, v30);
    v32 = v49;
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v53);
    v33 = v56;
    v34 = static Labels.collected(from:_:)(v31, v32);
    v56 = v33;
    v36 = v32;
    if (v33)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, &demangling cache variable for type metadata for AnyColumn?);
      return (*(v48 + 8))(v55, v53);
    }

    v37 = v35;
    v49 = v34;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for AnyColumn?);
    (*(v48 + 8))(v55, v53);
    v50;
    v7 = v45;
    v38 = v49;
    *(v45 + v20) = v49;
    LOBYTE(v55) = v37;
    *(v7 + v20 + 8) = v37 & 1;
    v50 = v38;
    v6 = v51;
  }

  v21 = v56;
  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v6, 1, ML16ColumnDescriptorVsAE_pTg5, v54, v47);
  if (!v21)
  {
    v23 = v43;
    DataFrame.subscript.getter(*v52, v52[1]);
    v56 = Labels.encodeAnnotations(_:)(v23, v50, v55 & 1);
    (*(v48 + 8))(v23, v53);
    type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
    v24 = v7 + *(v44 + 24);
    v25 = v46;
    LOBYTE(v23) = v56;
    BaseLogisticRegressionClassifier.update(_:features:annotations:eventHandler:)(v24, v46, v56, v42, v40);
    (*(v39 + 8))(v25, v41);
    return v23;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation3URLVG_18CreateMLComponents16AnnotatedFeatureVyAHSSGs5NeverOTg503_s8f24ML17MLSoundClassifierV16i143ExtractorC12filesByLabel7optionsAESDySSSay10Foundation3URLVGG_AE13ConfigurationVtKc33_EF88DE97863F019753745A6AAFDAF1B0LlfcSay0A12MLComponents09H29E0VyAJSSGGSS_AKtXEfU_AsJXEfU_SSTf1cn_n(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v21 = a2;
  v22 = type metadata accessor for URL(0);
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v23 = &v19;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v25 = *(v24 - 8);
  v8 = *(v25 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v32 = a1;
  v11 = a1[2];
  if (v11)
  {
    v30 = v3;
    v31 = _swiftEmptyArrayStorage;
    v26 = v11;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v31;
    v13 = v32 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v27 = *(v4 + 16);
    v28 = *(v4 + 72);
    v29 = &v19;
    do
    {
      v32 = v12;
      v14 = v23;
      v15 = v22;
      v27(v23, v13, v22);
      v20[0] = v21;
      v20[1] = v33;

      v16 = v14;
      v12 = v32;
      AnnotatedFeature.init(feature:annotation:)(v16, v20, v15, &type metadata for String);
      v31 = v12;
      v17 = v12[2];
      if (v12[3] >> 1 <= v17)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12[3] >= 2uLL, v17 + 1, 1);
        v12 = v31;
      }

      v12[2] = v17 + 1;
      (*(v25 + 32))(v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v17, v29, v24);
      v13 += v28;
      --v26;
    }

    while (v26);
    v33;
  }

  else
  {
    v33;
    return _swiftEmptyArrayStorage;
  }

  return v12;
}

void *specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v2 = v1;
  specialized _NativeDictionary.makeIterator()(a1);
  v35 = v29;
  v3 = v30;
  v36 = (v28 + 64) >> 6;

  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v31 = v4;
    if (v3)
    {
      v5 = v35;
      goto LABEL_20;
    }

    v6 = v35 + 1;
    if (__OFADD__(1, v35))
    {
      BUG();
    }

    if (v6 >= v36)
    {
      goto LABEL_37;
    }

    v3 = *(v27 + 8 * v6);
    if (v3)
    {
LABEL_7:
      v5 = v6;
      goto LABEL_20;
    }

    v5 = v35 + 2;
    if (v35 + 2 >= v36)
    {
      goto LABEL_37;
    }

    v3 = *(v27 + 8 * v6 + 8);
    if (!v3)
    {
      v5 = v35 + 3;
      if (v35 + 3 >= v36)
      {
        goto LABEL_37;
      }

      v3 = *(v27 + 8 * v6 + 16);
      if (!v3)
      {
        v5 = v35 + 4;
        if (v35 + 4 >= v36)
        {
          goto LABEL_37;
        }

        v3 = *(v27 + 8 * v6 + 24);
        if (!v3)
        {
          v5 = v35 + 5;
          if (v35 + 5 >= v36)
          {
            goto LABEL_37;
          }

          v3 = *(v27 + 8 * v6 + 32);
          if (!v3)
          {
            v5 = v35 + 6;
            if (v35 + 6 >= v36)
            {
              goto LABEL_37;
            }

            v3 = *(v27 + 8 * v6 + 40);
            if (!v3)
            {
              v5 = v35 + 7;
              if (v35 + 7 >= v36)
              {
                goto LABEL_37;
              }

              v3 = *(v27 + 8 * v6 + 48);
              if (!v3)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_20:
    v34 = v3;
    _BitScanForward64(&v7, v3);
    v35 = v5;
    v8 = v7 | (v5 << 6);
    v9 = *(*(v26 + 56) + 8 * v8);
    v8 *= 16;
    v10 = *(v26 + 48);
    v11 = *(v10 + v8);
    v12 = *(v10 + v8 + 8);
    swift_bridgeObjectRetain_n(v12, 2);

    MLComponents16AnnotatedFeatureVyAHSSGs5NeverOTg503_s8f24ML17MLSoundClassifierV16i143ExtractorC12filesByLabel7optionsAESDySSSay10Foundation3URLVGG_AE13ConfigurationVtKc33_EF88DE97863F019753745A6AAFDAF1B0LlfcSay0A12MLComponents09H29E0VyAJSSGGSS_AKtXEfU_AsJXEfU_SSTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation3URLVG_18CreateMLComponents16AnnotatedFeatureVyAHSSGs5NeverOTg503_s8f24ML17MLSoundClassifierV16i143ExtractorC12filesByLabel7optionsAESDySSSay10Foundation3URLVGG_AE13ConfigurationVtKc33_EF88DE97863F019753745A6AAFDAF1B0LlfcSay0A12MLComponents09H29E0VyAJSSGGSS_AKtXEfU_AsJXEfU_SSTf1cn_n(v9, v11, v12);
    v33 = v2;
    v9;
    v12;
    v32 = MLComponents16AnnotatedFeatureVyAHSSGs5NeverOTg503_s8f24ML17MLSoundClassifierV16i143ExtractorC12filesByLabel7optionsAESDySSSay10Foundation3URLVGG_AE13ConfigurationVtKc33_EF88DE97863F019753745A6AAFDAF1B0LlfcSay0A12MLComponents09H29E0VyAJSSGGSS_AKtXEfU_AsJXEfU_SSTf1cn_n;
    v14 = MLComponents16AnnotatedFeatureVyAHSSGs5NeverOTg503_s8f24ML17MLSoundClassifierV16i143ExtractorC12filesByLabel7optionsAESDySSSay10Foundation3URLVGG_AE13ConfigurationVtKc33_EF88DE97863F019753745A6AAFDAF1B0LlfcSay0A12MLComponents09H29E0VyAJSSGGSS_AKtXEfU_AsJXEfU_SSTf1cn_n[2];
    v4 = v31;
    v15 = *(v31 + 16);
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      BUG();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v31);
    if (!isUniquelyReferenced_nonNull_native || *(v31 + 24) >> 1 < v16)
    {
      if (v15 > v16)
      {
        v16 = v15;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v31);
    }

    if (v32[2])
    {
      v18 = v4[2];
      if ((v4[3] >> 1) - v18 < v14)
      {
        BUG();
      }

      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
      v20 = *(v19 - 8);
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      swift_arrayInitWithCopy(v4 + *(v20 + 72) * v18 + v21, v32 + v21, v14, v19);
      if (v14)
      {
        v22 = __OFADD__(v4[2], v14);
        v23 = v4[2] + v14;
        if (v22)
        {
          BUG();
        }

        v4[2] = v23;
      }
    }

    else if (v14)
    {
      BUG();
    }

    v3 = (v34 - 1) & v34;
    v32;
    v2 = v33;
  }

  v24 = v35 + 8;
  while (v24 < v36)
  {
    v3 = *(v27 + 8 * v24++);
    if (v3)
    {
      v6 = v24 - 1;
      goto LABEL_7;
    }
  }

LABEL_37:
  outlined consume of [String : [Double]].Iterator._Variant(v26);
  return v4;
}

{
  specialized _NativeDictionary.makeIterator()(a1);
  v1 = v39;
  v2 = v42;
  v57 = (v41 + 64) >> 6;
  v3 = v43;

  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v3)
    {
      v5 = v2;
      goto LABEL_24;
    }

    v6 = v2 + 1;
    if (__OFADD__(1, v2))
    {
      BUG();
    }

    if (v6 >= v57)
    {
      goto LABEL_43;
    }

    v3 = *(v40 + 8 * v6);
    if (v3)
    {
      v5 = v2 + 1;
      goto LABEL_24;
    }

    v5 = v2 + 2;
    if (v2 + 2 >= v57)
    {
      goto LABEL_43;
    }

    v3 = *(v40 + 8 * v6 + 8);
    if (!v3)
    {
      v5 = v2 + 3;
      if (v2 + 3 >= v57)
      {
        goto LABEL_43;
      }

      v3 = *(v40 + 8 * v6 + 16);
      if (!v3)
      {
        v5 = v2 + 4;
        if (v2 + 4 >= v57)
        {
          goto LABEL_43;
        }

        v3 = *(v40 + 8 * v6 + 24);
        if (!v3)
        {
          v5 = v2 + 5;
          if (v2 + 5 >= v57)
          {
            goto LABEL_43;
          }

          v3 = *(v40 + 8 * v6 + 32);
          if (!v3)
          {
            v5 = v2 + 6;
            if (v2 + 6 >= v57)
            {
              goto LABEL_43;
            }

            v3 = *(v40 + 8 * v6 + 40);
            if (!v3)
            {
              v5 = v2 + 7;
              if (v2 + 7 >= v57)
              {
                goto LABEL_43;
              }

              v3 = *(v40 + 8 * v6 + 48);
              if (!v3)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_24:
    v51 = v3;
    _BitScanForward64(&v8, v3);
    v50 = v5;
    v9 = v8 | (v5 << 6);
    v10 = *(*(v1 + 56) + 8 * v9);
    v11 = *(v10 + 16);
    v12 = _swiftEmptyArrayStorage;
    if (v11)
    {
      v52 = v4;
      v13 = 16 * v9;
      v14 = *(v1 + 48);
      v47 = *(v14 + v13);
      v15 = *(v14 + v13 + 8);
      swift_bridgeObjectRetain_n(v15, 2);

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
      v16 = v15;
      v17 = _swiftEmptyArrayStorage;
      v53 = v10;
      v18 = (v10 + 40);
      v48 = v16;
      do
      {
        v54 = v17;
        v44 = v11;
        v45 = *(v18 - 1);
        v19 = *v18;
        v56 = v17;
        v20 = v17[2];
        v49 = v17[3];

        v46 = v19;
        v21 = v20 + 1;

        v17 = v54;
        if (v49 >> 1 <= v20)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49 >= 2, v21, 1);
          v17 = v56;
        }

        v17[2] = v21;
        v22 = 4 * v20;
        v17[v22 + 4] = v45;
        v17[v22 + 5] = v46;
        v17[v22 + 6] = v47;
        v17[v22 + 7] = v48;
        v18 += 2;
        v11 = v44 - 1;
      }

      while (v44 != 1);
      v23 = v17;
      v53;
      swift_bridgeObjectRelease_n(v48, 2);
      v12 = v23;
      v4 = v52;
    }

    v24 = v12[2];
    v25 = v4[2];
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      BUG();
    }

    v55 = v12;
    v27 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
    v29 = v27;
    if (!isUniquelyReferenced_nonNull_native || *(v27 + 24) >> 1 < v26)
    {
      if (v25 > v26)
      {
        v26 = v25;
      }

      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v26, 1, v27);
    }

    v30 = v55;
    if (v55[2])
    {
      v31 = v29[2];
      if ((v29[3] >> 1) - v31 < v24)
      {
        BUG();
      }

      v32 = v29;
      v33 = &v29[4 * v31 + 4];
      v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (predicted: String, label: String));
      swift_arrayInitWithCopy(v33, (v55 + 4), v24, v34);
      v30 = v55;
      if (v24)
      {
        v35 = __OFADD__(v32[2], v24);
        v36 = v32[2] + v24;
        if (v35)
        {
          BUG();
        }

        v32[2] = v36;
      }
    }

    else
    {
      v32 = v29;
      if (v24)
      {
        BUG();
      }
    }

    v3 = (v51 - 1) & v51;
    v30;
    v2 = v50;
    v4 = v32;
    v1 = v39;
  }

  v7 = v2 + 8;
  while (v7 < v57)
  {
    v3 = *(v40 + 8 * v7++);
    if (v3)
    {
      v5 = v7 - 1;
      goto LABEL_24;
    }
  }

LABEL_43:
  v37 = v4;
  outlined consume of [String : [String]].Iterator._Variant();
  return v37;
}

{
  specialized _NativeDictionary.makeIterator()(a1);
  v1 = v25;
  v2 = v26;
  v29 = (v24 + 64) >> 6;

  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v2)
    {
      v4 = v1;
      goto LABEL_24;
    }

    v5 = v1 + 1;
    if (__OFADD__(1, v1))
    {
      BUG();
    }

    if (v5 >= v29)
    {
      goto LABEL_37;
    }

    v2 = *(v23 + 8 * v5);
    if (v2)
    {
      v4 = v1 + 1;
      goto LABEL_24;
    }

    v4 = v1 + 2;
    if (v1 + 2 >= v29)
    {
      goto LABEL_37;
    }

    v2 = *(v23 + 8 * v5 + 8);
    if (!v2)
    {
      v4 = v1 + 3;
      if (v1 + 3 >= v29)
      {
        goto LABEL_37;
      }

      v2 = *(v23 + 8 * v5 + 16);
      if (!v2)
      {
        v4 = v1 + 4;
        if (v1 + 4 >= v29)
        {
          goto LABEL_37;
        }

        v2 = *(v23 + 8 * v5 + 24);
        if (!v2)
        {
          v4 = v1 + 5;
          if (v1 + 5 >= v29)
          {
            goto LABEL_37;
          }

          v2 = *(v23 + 8 * v5 + 32);
          if (!v2)
          {
            v4 = v1 + 6;
            if (v1 + 6 >= v29)
            {
              goto LABEL_37;
            }

            v2 = *(v23 + 8 * v5 + 40);
            if (!v2)
            {
              v4 = v1 + 7;
              if (v1 + 7 >= v29)
              {
                goto LABEL_37;
              }

              v2 = *(v23 + 8 * v5 + 48);
              if (!v2)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_24:
    v27 = v2;
    _BitScanForward64(&v7, v2);
    v8 = *(*(v22 + 56) + ((v4 << 9) | (8 * v7)));
    v9 = *(v8 + 16);
    v10 = v3[2];
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      BUG();
    }

    v28 = v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
    if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v11)
    {
      if (v10 > v11)
      {
        v11 = v10;
      }

      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
    }

    if (*(v8 + 16))
    {
      v13 = v3[2];
      v14 = v3;
      v15 = (v3[3] >> 1) - v13;
      v16 = type metadata accessor for URL(0);
      if (v15 < v9)
      {
        BUG();
      }

      v17 = *(v16 - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      swift_arrayInitWithCopy(v14 + *(v17 + 72) * v13 + v18, v8 + v18, v9, v16);
      v3 = v14;
      if (v9)
      {
        v19 = __OFADD__(v14[2], v9);
        v20 = v14[2] + v9;
        if (v19)
        {
          BUG();
        }

        v14[2] = v20;
      }
    }

    else if (v9)
    {
      BUG();
    }

    v2 = (v27 - 1) & v27;
    v8;
    v1 = v28;
  }

  v6 = v1 + 8;
  while (v6 < v29)
  {
    v2 = *(v23 + 8 * v6++);
    if (v2)
    {
      v4 = v6 - 1;
      goto LABEL_24;
    }
  }

LABEL_37:
  outlined consume of [String : [Double]].Iterator._Variant(v22);
  return v3;
}

uint64_t MLSoundClassifier.FeatureExtractor.Configuration.init(parameters:fileCount:)(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v3 = v2;
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v15 = *(a1 + *(v4 + 24));
  v16 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  outlined init with copy of Any?(a1 + *(v4 + 28), v9);
  if (!v10)
  {
    outlined destroy of Any?(v9);
    goto LABEL_5;
  }

  if (!swift_dynamicCast(&v11, v9, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_5:
    v6 = 1;
    v5 = 1;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v11;
  v6 = v12;
  v7 = v13;
LABEL_6:
  outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLSoundClassifier.ModelParameters);
  v7;
  *v3 = v15;
  *(v3 + 8) = v16;
  *(v3 + 16) = 0;
  result = v14;
  *(v3 + 24) = v14;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  return result;
}

void *static MLSoundClassifier.FeatureExtractor.extractFeatures(from:options:)(uint64_t a1, __int128 *a2)
{
  v10 = v3;
  v4 = *a2;
  v5 = a2[1];
  *(v9 + 9) = *(a2 + 25);
  v9[0] = v5;
  v8 = v4;

  v6 = specialized Sequence.flatMap<A>(_:)(a1);
  a1;
  swift_allocObject(v3, 88, 7);
  specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(v6, &v8);
  if (!v2)
  {
    v6 = MLSoundClassifier.FeatureExtractor.extractFeatures()();
  }

  return v6;
}

uint64_t MLSoundClassifier.FeatureExtractor.extractFeatures()()
{
  v149 = v0;
  v2 = v1->i64[0];
  v148 = v1;
  v131 = v2;
  v3 = 0;
  v110 = type metadata accessor for URL(0);
  v111 = *(v110 - 8);
  v4 = v111[8];
  v5 = alloca(v4);
  v6 = alloca(v4);
  v112 = v109;
  v143 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v141 = *(v143 - 8);
  v7 = *(v141 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v122 = v109;
  v124 = v7;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v142 = v109;
  v136 = type metadata accessor for Date(0);
  v137 = *(v136 - 8);
  v12 = *(v137 + 8);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v138 = v109;
  v146 = type metadata accessor for _TablePrinter(0);
  v115 = *(v146 - 8);
  v15 = *(v115 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v123 = v109;
  v125 = v15;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v139 = v109;
  v20 = v1[4].i64[0];
  v21 = *(v20 + 16);
  v22 = objc_opt_self(NSProgress);
  v23 = [v22 progressWithTotalUnitCount:v21];
  v24 = v23;
  aBlock.i64[0] = 0;
  v134 = v24;
  aBlock.i64[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  aBlock.i8[8];
  aBlock.i64[0] = 0x69737365636F7250;
  aBlock.i64[1] = 0xEB0000000020676ELL;
  v126 = v20;
  v109[1] = *(v20 + 16);
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  LOBYTE(v21) = v25._object;
  String.append(_:)(v25);
  v21;
  v26._countAndFlagsBits = 0x73656C696620;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  v28 = aBlock.u64[1];
  v27 = aBlock.i64[0];
  v29 = static os_log_type_t.info.getter(0x73656C696620);
  log(_:type:)(__PAIR128__(v28, v27), v29);
  v28;
  v135 = swift_allocObject(&unk_3919F8, 24, 7);
  *(v135 + 16) = 0;
  v30 = objc_allocWithZone(NSOperationQueue);
  v31 = [v30 init];
  v32 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSOperationQueue, NSOperationQueue_ptr);
  v33 = static Array._allocateBufferUninitialized(minimumCapacity:)(8, v32);
  v34 = (v33 & 0xFFFFFFFFFFFFF8);
  v34[2] = 8;
  v34[4] = v31;
  v34[5] = v31;
  v34[6] = v31;
  v34[7] = v31;
  v34[8] = v31;
  v34[9] = v31;
  v34[10] = v31;
  v34[11] = v31;
  v144 = swift_allocObject(&unk_391A20, 24, 7);
  v147 = v148[3].i64[0];
  LOBYTE(v132) = v148[3].i8[8];
  v26._countAndFlagsBits = v31;
  v35 = v33;
  v36 = v26._countAndFlagsBits;
  v37 = v36;
  v38 = v37;
  v39 = v38;
  aBlock = v148[1];
  v128 = v148[2];
  v129 = v147;
  LOBYTE(v130) = v132;
  v40 = v39;
  v41 = v40;
  v41;
  v42 = static MLSoundClassifier.FeatureExtractor.getFeaturePrintRequest(options:)(&aBlock);
  v43 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SNCreateFeaturePrintRequest, SNCreateFeaturePrintRequest_ptr);
  v44 = static Array._allocateBufferUninitialized(minimumCapacity:)(8, v43);
  v45 = (v44 & 0xFFFFFFFFFFFFF8);
  v45[2] = 8;
  v45[4] = v42;
  v45[5] = v42;
  v45[6] = v42;
  v45[7] = v42;
  v45[8] = v42;
  v45[9] = v42;
  v45[10] = v42;
  v45[11] = v42;
  *(v144 + 16) = v44;
  v46 = v148[1];
  v121 = v148[2];
  v140 = v148[3].i64[0];
  LOBYTE(v145) = v148[3].i8[8];
  v120 = v46;
  v47 = *v46.i64;
  *&v133 = v47;
  v48 = v42;
  v49 = v48;
  v50 = v49;
  v51 = v50;
  v52 = v51;
  v53 = v52;
  v53;
  do
  {
    v54 = objc_allocWithZone(NSOperationQueue);
    v55 = [v54 init];
    if ((swift_isUniquelyReferenced_nonNull_bridgeObject(v35) & ((v35 & 0x4000000000000001) == 0)) == 0)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
    }

    if (v3 >= *(&dword_10 + (v35 & 0xFFFFFFFFFFFFF8)))
    {
      BUG();
    }

    v56 = *(&stru_20.cmd + 8 * v3 + (v35 & 0xFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v3 + (v35 & 0xFFFFFFFFFFFFF8)) = v55;

    if (v3 >= *(&dword_10 + (v35 & 0xFFFFFFFFFFFFF8)))
    {
      BUG();
    }

    v132 = v35 & 0xFFFFFFFFFFFFF8;
    v147 = v35;
    [*(v35 + 8 * v3 + 32) setMaxConcurrentOperationCount:1];
    aBlock = v120;
    v128 = v121;
    v129 = v140;
    LOBYTE(v130) = v145;
    v57 = static MLSoundClassifier.FeatureExtractor.getFeaturePrintRequest(options:)(&aBlock);
    v58 = v144;
    v59 = *(v144 + 16);
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(v59);
    *(v58 + 16) = v59;
    if ((((v59 & 0x4000000000000001) == 0) & isUniquelyReferenced_nonNull_bridgeObject) == 0)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew()(v59);
      *(v58 + 16) = v59;
    }

    if (v3 >= *(&dword_10 + (v59 & 0xFFFFFFFFFFFFF8)))
    {
      BUG();
    }

    v61 = *(&stru_20.cmd + 8 * v3 + (v59 & 0xFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v3 + (v59 & 0xFFFFFFFFFFFFF8)) = v57;

    if ((v59 & 0xC000000000000003) != 0)
    {
      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)(v3);
      v35 = v147;
    }

    else
    {
      v35 = v147;
      if (v3 >= *(&dword_10 + (v59 & 0xFFFFFFFFFFFFF8)))
      {
        BUG();
      }

      v62 = *(v59 + 8 * v3 + 32);
    }

    ++v3;
    [v62 setOverlapFactor:COERCE_DOUBLE(v133)];
  }

  while (v3 != 8);
  v63 = v139;
  v64 = v139 + *(v146 + 20);
  Date.init()(v62);
  *v63 = _mm_extract_epi64(_mm_load_si128(&v121), 1);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v65 = OS_os_log.init(subsystem:category:)(0xD000000000000022, ("n" + 0x8000000000000000), 0x72705F656C626174, 0xED00007265746E69);
  v66 = v146;
  v67 = *(v146 + 24);
  v119 = v65;
  *(v63 + v67) = v65;
  v68 = *(v66 + 28);
  *(v63 + v68) = 0x73656C6946;
  *(v63 + v68 + 8) = 0xE500000000000000;
  v69 = v138;
  Date.init()(0xD000000000000022);
  (*(v137 + 5))(v64, v69, v136);
  _TablePrinter.beginTable()();
  _TablePrinter.printRow(currentFileIndex:)(0);
  v70 = 24;
  v71 = swift_allocObject(&unk_391A48, 24, 7);
  v73 = _swiftEmptyArrayStorage;
  v145 = v71;
  *(v71 + 16) = _swiftEmptyArrayStorage;
  v74 = *(v126 + 16);
  if (v74)
  {
    v133 = v148[5].i64[0];
    v75 = *(v141 + 80);
    v117 = ~v75;
    v76 = v126 + ((v75 + 32) & ~v75);
    v140 = *(v141 + 16);
    v136 = *(v141 + 72);
    v125 += 7;
    v116 = v75;
    v118 = v75 + 8;
    v124 += 7;

    v146 = 0;
    v77 = v143;
    v78 = v142;
    do
    {
      v121.i64[0] = v74;
      v120.i64[0] = v76;
      (v140)(v78, v76, v77);
      v79 = v112;
      AnnotatedFeature.feature.getter(v77);
      v80 = alloca(32);
      v81 = alloca(32);
      v110 = v148;
      v111 = v79;
      v82 = v149;
      v83 = v77;
      v84 = specialized NSLocking.withLock<A>(_:)(partial apply for closure #1 in MLSoundClassifier.FeatureExtractor.isProcessed(url:));
      v149 = v82;
      (v111[1])(v79, v110);
      if (v84)
      {
        v78 = v142;
        v70 = v83;
        (*(v141 + 8))(v142, v83);
        v77 = v83;
      }

      else
      {
        v85 = v146 % 8;
        if (v146 % 8 < 0)
        {
          BUG();
        }

        if (v85 >= *(v132 + 16))
        {
          BUG();
        }

        v137 = *(v147 + v85 + 4);
        v138 = v146 % 8;
        outlined init with copy of _TablePrinter(v139, v123);
        (v140)(v122, v142, v143);
        v86 = *(v115 + 80);
        v87 = ~*(v115 + 80) & (v86 + 48);
        v113 = (v87 + v125) & 0xFFFFFFFFFFFFFFF8;
        v114 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
        v88 = v117 & (v118 + v114);
        v89 = (v124 + v88) & 0xFFFFFFFFFFFFFFF8;
        v90 = swift_allocObject(&unk_391A70, v89 + 8, v116 | v86 | 7);
        *(v90 + 2) = v148;
        *(v90 + 3) = v145;
        *(v90 + 4) = v135;
        *(v90 + 5) = v134;
        outlined init with take of _TablePrinter(v123, &v90[v87]);
        *&v90[v113] = v144;
        *&v90[v114] = v138;
        (*(v141 + 32))(&v90[v88], v122, v143);
        *&v90[v89] = v131;
        v129 = partial apply for closure #1 in MLSoundClassifier.FeatureExtractor.extractFeatures();
        v130 = v90;
        aBlock.i64[0] = _NSConcreteStackBlock;
        aBlock.i64[1] = 1107296256;
        v128.i64[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v128.i64[1] = &block_descriptor_6;
        v91 = _Block_copy(&aBlock);
        v92 = v137;

        v134;

        v78 = v142;

        [v92 addOperationWithBlock:v91];
        _Block_release(v91);
        v93 = v92;
        v77 = v143;

        v70 = v77;
        (*(v141 + 8))(v78, v77);
        if (__OFADD__(1, v146++))
        {
          BUG();
        }
      }

      v76 = v136 + v120.i64[0];
      v74 = v121.i64[0] - 1;
    }

    while (v121.i64[0] != 1);
    v126;
  }

  v95 = v149;
  v96 = v147;
  v97 = v147;
  v98 = specialized Array._getCount()(v147, v70, v72, v73);
  if (v98)
  {
    if (v98 <= 0)
    {
      BUG();
    }

    v99 = v98;

    for (i = 0; i != v99; ++i)
    {
      v101 = *(v96 + 8 * i + 32);
      [v101 waitUntilAllOperationsAreFinished];
    }

    v149 = v95;
    v97 = v96;
    v96;
  }

  else
  {
    v149 = v95;
  }

  v102 = v145;
  v103 = v145 + 16;
  static os_log_type_t.info.getter(v97);
  v104 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v105 = swift_allocObject(v104, 72, 7);
  v106 = v105;
  v105[2] = 1;
  v105[3] = 2;
  v105[7] = &type metadata for Int;
  v105[8] = &protocol witness table for Int;
  v105[4] = 3;
  os_log(_:dso:log:type:_:)("event: %lu");

  v106;
  outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for _TablePrinter);
  swift_beginAccess(v103, &aBlock, 0, 0);
  v107 = *(v102 + 16);

  v147;

  return v107;
}

id static MLSoundClassifier.FeatureExtractor.getFeaturePrintRequest(options:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == -1)
  {
    v2 = objc_allocWithZone(SNCreateFeaturePrintRequest);
  }

  else
  {
    seconds = *(a1 + 8);
    v2 = objc_allocWithZone(SNCreateFeaturePrintRequest);
    if (v1)
    {
      v3 = [v2 initWithFeaturePrintType:3];
      v9 = CMTime.init(seconds:preferredTimescale:)(seconds, 16000);
      LODWORD(v7) = v9.timescale;
      *&v9.timescale >>= 32;
      HIDWORD(v7) = v9.timescale;
      [v3 setWindowDuration:{*&v9.timescale, v9.epoch, v4, v5, v9.value, v7, v9.epoch, v9.value, v7, v9.epoch}];
      return v3;
    }
  }

  return [v2 init];
}

NSURL *closure #1 in trainWork #1 (_:annotatedFeature:) in MLSoundClassifier.FeatureExtractor.extractFeatures()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v47 = a6;
  v39 = a5;
  v45 = a4;
  v42 = a3;
  v52 = a2;
  v41 = type metadata accessor for URL(0);
  v40 = *(v41 - 8);
  v7 = *(v40 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v44 = &v38;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v43 = &v38;
  v12 = alloca(v7);
  v13 = alloca(v7);
  v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  AnnotatedFeature.feature.getter(v46);
  objc_allocWithZone(SNAudioFileAnalyzer);
  v14 = @nonobjc SNAudioFileAnalyzer.init(url:)(&v38);
  v53 = v6;
  if (v6)
  {
    v34 = 123;
    v35 = v53;
    goto LABEL_12;
  }

  v15 = v14;
  v16 = objc_allocWithZone(SNResultsCollector);
  v17 = [v16 init];
  v56[0] = 0;
  v18 = [v15 addRequest:v52 withObserver:v17 error:v56];
  v19 = v56[0];
  if (!v18)
  {
    v36 = v56[0];
    v37 = _convertNSErrorToError(_:)(v19);

    swift_willThrow();
    v34 = 125;
    v35 = v37;
LABEL_12:
    swift_unexpectedError(v35, "CreateML/MLSoundClassifier.FeatureExtractor.swift", 49, 1, v34);
    BUG();
  }

  v56[0];
  v49 = v15;
  [v15 analyze];
  v20 = v42;
  v48 = *(v42 + 32);
  v50 = v17;
  v21 = static MLSoundClassifier.FeatureExtractor.convertResultsToShapedArrays(resultsCollector:options:)(v17);
  v51 = *(v20 + 80);
  [v51 lock];
  v52 = &v38;
  v22 = alloca(24);
  v23 = alloca(32);
  v40 = a1;
  v24 = v53;
  MLComponents16AnnotatedFeatureVyAISSGs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay6CoreML13MLShapedArrayVySfGG_18CreateMLComponents16AnnotatedFeatureVyAISSGs5NeverOTg5(partial apply for closure #1 in closure #1 in trainWork #1 (_:annotatedFeature:) in MLSoundClassifier.FeatureExtractor.extractFeatures(), &v38, v21);
  v53 = v24;
  v21;
  swift_beginAccess(v45, v56, 1, 0);
  specialized Array.append<A>(contentsOf:)(MLComponents16AnnotatedFeatureVyAISSGs5NeverOTg5);
  v26 = v44;
  AnnotatedFeature.feature.getter(v46);
  swift_beginAccess(v20 + 72, v55, 33, 0);
  v27 = v43;
  specialized Set._Variant.insert(_:)(v43, v26);
  swift_endAccess(v55);
  (*(v40 + 8))(v27, v41);
  v28 = v39;
  swift_beginAccess(v39, v55, 1, 0);
  if (__OFADD__(1, *v28))
  {
    BUG();
  }

  ++*v28;
  v29 = v47;
  v30 = [v47 completedUnitCount];
  v31 = __OFADD__(1, v30);
  v32 = v30 + 1;
  if (v31)
  {
    BUG();
  }

  [v29 setCompletedUnitCount:v32];
  swift_beginAccess(v28, v54, 0, 0);
  if (__OFADD__(*v28, v48))
  {
    BUG();
  }

  _TablePrinter.printRow(currentFileIndex:)(*v28 + v48);
  [v51 unlock];

  return __stack_chk_guard;
}

void *static MLSoundClassifier.FeatureExtractor.convertResultsToShapedArrays(resultsCollector:options:)(id a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v35 = *(v34 - 8);
  v1 = *(v35 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v33 = v26;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v36 = v26;
  v6 = [a1 results];
  v7 = v6;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v7, &type metadata for Any + 8);

  v9 = *(v8 + 16);
  v8;
  v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0, _swiftEmptyArrayStorage);
  v10 = [a1 results];
  v11 = v10;
  v31 = &type metadata for Any + 8;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v11, &type metadata for Any + 8);

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v35;
    v32 = v12;
    v15 = v12 + 32;
    v16 = v34;
    v17 = v36;
    v18 = v37;
    do
    {
      v37 = v18;
      v28 = v13;
      v29 = v15;
      outlined init with copy of Any(v15, v26);
      v19 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SNFeaturePrint, SNFeaturePrint_ptr);
      swift_dynamicCast(&v27, v26, v31, v19, 7);
      v30 = v27;
      v20 = [v27 featureVector];
      v21 = v20;
      static MLSoundClassifier.FeatureExtractor.convertVector(_:)(v21);
      (objc_release)(v21);
      (*(v14 + 16))(v33, v17, v16);
      v22 = v37;
      v23 = v37[2];
      if (v37[3] >> 1 <= v23)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37[3] >= 2uLL, v23 + 1, 1, v37);
      }

      v22[2] = v23 + 1;
      v14 = v35;
      v16 = v34;
      v18 = v22;
      (*(v35 + 32))(v22 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23, v33, v34);

      v17 = v36;
      (*(v14 + 8))(v36, v16);
      v15 = v29 + 32;
      v13 = v28 - 1;
    }

    while (v28 != 1);
    v37 = v18;
    v24 = v32;
  }

  else
  {
    v24 = v12;
  }

  v24;
  return v37;
}

uint64_t closure #1 in closure #1 in trainWork #1 (_:annotatedFeature:) in MLSoundClassifier.FeatureExtractor.extractFeatures()(uint64_t a1)
{
  v11 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  (*(v3 + 16))(&v9, a1, v2);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  AnnotatedFeature.annotation.getter(v7);
  v10 = v9;
  return AnnotatedFeature.init(feature:annotation:)(&v9, &v10, v2, &type metadata for String);
}

void closure #1 in MLSoundClassifier.FeatureExtractor.extractFeatures()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a5;
  v16 = a4;
  v17 = a3;
  swift_beginAccess(a6 + 16, v14, 32, 0);
  v10 = *(a6 + 16);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a7, (v10 & 0xC000000000000003) == 0, v10);
  if ((v10 & 0xC000000000000003) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)(a7);
  }

  else
  {
    v11 = *(v10 + 8 * a7 + 32);
  }

  v12 = v11;
  swift_endAccess(v14);
  *(&v13 + 1) = a9;
  *&v13 = v15;
  trainWork #1 (_:annotatedFeature:) in MLSoundClassifier.FeatureExtractor.extractFeatures()(v12, a8, a1, a2, v17, v16, v13);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v2);
}

uint64_t closure #1 in MLSoundClassifier.FeatureExtractor.isProcessed(url:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess(a1 + 72, v7, 0, 0);
  v4 = *(a1 + 72);

  v5 = specialized Set.contains(_:)(a2, v4);
  result = v4;
  *v3 = v5 & 1;
  return result;
}

void (__cdecl **static MLSoundClassifier.FeatureExtractor.extractFeatures(from:options:)(uint64_t a1, __int128 *a2))(id)
{
  v58 = a1;
  v4 = type metadata accessor for URL(0);
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v47 = &v45;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v60 = &v45;
  v10 = *(a2 + 4);
  LOBYTE(v5) = *(a2 + 40);
  v55 = *a2;
  v62 = v55;
  v63 = a2[1];
  HIDWORD(v11) = DWORD1(v63);
  v64 = v10;
  v65 = v5;
  v48 = v3;
  v12 = v4;
  v13 = static MLSoundClassifier.FeatureExtractor.getFeaturePrintRequest(options:)(&v62);
  *&v11 = *&v55;
  [v13 setOverlapFactor:v11];
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLShapedArray<Float>]);
  v15 = lazy protocol witness table accessor for type URL and conformance URL();
  v59 = v12;
  v16 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v12, v14, v15);
  if (*(v58 + 16))
  {
    v49 = *(v58 + 16);
    v61 = v16;
    *&v55 = v2;
    v57 = v13;
    v17 = v58 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v53 = *(v56 + 16);
    v54 = *(v56 + 72);

    v16 = v60;
    v18 = v59;
    while (1)
    {
      v50 = v17;
      v19 = v53;
      v53(v16, v17, v18);
      v20 = v47;
      v19(v47, v16, v18);
      objc_allocWithZone(SNAudioFileAnalyzer);
      v21 = v55;
      v22 = @nonobjc SNAudioFileAnalyzer.init(url:)(v20);
      if (v21)
      {

        (*(v56 + 8))(v60, v59);
        v61;
        v58;
        return v16;
      }

      v23 = v22;
      v24 = objc_allocWithZone(SNResultsCollector);
      v25 = [v24 init];
      *&v62 = 0;
      v26 = [v23 addRequest:v57 withObserver:v25 error:&v62];
      v27 = v62;
      v51 = v23;
      if (!v26)
      {
        break;
      }

      *&v55 = 0;
      v62;
      [v23 analyze];
      v46 = v25;
      v52 = static MLSoundClassifier.FeatureExtractor.convertResultsToShapedArrays(resultsCollector:options:)(v25);
      v28 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v61);
      *&v62 = v28;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v60);
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(*(v28 + 16), v32);
      v34 = *(v28 + 16) + v32;
      if (v33)
      {
        BUG();
      }

      LOBYTE(v61) = v30;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<URL, [MLShapedArray<Float>]>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
      {
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v60);
        LOBYTE(v35) = v35 & 1;
        LOBYTE(v36) = v61;
        v37 = v50;
        if ((v61 & 1) != v35)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v59, v34, v35, v36);
          BUG();
        }

        v38 = v59;
      }

      else
      {
        v38 = v59;
        v37 = v50;
        LOBYTE(v36) = v61;
      }

      v39 = v62;
      v61 = v62;
      if (v36)
      {
        v40 = *(v62 + 56);
        *(v40 + 8 * v31);
        *(v40 + 8 * v31) = v52;
      }

      else
      {
        *(v62 + 8 * (v31 >> 6) + 64) |= 1 << v31;
        v53((v39[6] + v54 * v31), v60, v38);
        *(v39[7] + 8 * v31) = v52;
        v41 = v39[2];
        v33 = __OFADD__(1, v41);
        v42 = v41 + 1;
        if (v33)
        {
          BUG();
        }

        v39[2] = v42;
      }

      v16 = v60;
      v18 = v38;
      (*(v56 + 8))(v60, v38);
      v17 = v54 + v37;
      if (!--v49)
      {

        v58;
        return v61;
      }
    }

    v43 = v62;
    v61;
    v58;
    _convertNSErrorToError(_:)(v27);
    v16 = &objc_release;

    swift_willThrow();
    (*(v56 + 8))(v60, v59);
  }

  else
  {
  }

  return v16;
}

uint64_t static MLSoundClassifier.FeatureExtractor.convertVector(_:)(id a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = a1;
  MLShapedArray.init(_:)(v8, &type metadata for Float, &protocol witness table for Float);
  v9 = MLShapedArray.shape.getter(v3);
  v10 = *(v9 + 16);
  result = v9;
  if (v10 == 2)
  {
    v12 = MLShapedArray.shape.getter(v3);
    if (!*(v12 + 16))
    {
      BUG();
    }

    v13 = *(v12 + 32);
    result = v12;
    if (v13 == 1)
    {
      v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
      v21 = MLShapedArrayProtocol.scalars.getter(v3, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v16 = swift_allocObject(v15, 40, 7);
      v16[2] = 1;
      v16[3] = 2;
      v17 = MLShapedArray.shape.getter(v3);
      if (*(v17 + 16) < 2uLL)
      {
        BUG();
      }

      v22 = &v21;
      v18 = *(v17 + 40);
      v17;
      v16[4] = v18;
      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
      v20 = v22;
      MLShapedArray.init<A>(scalars:shape:)(&v21, v16, &type metadata for Float, v23, &protocol witness table for Float, v19);
      (*(v4 + 8))(v2, v3);
      return (*(v4 + 32))(v2, v20, v3);
    }
  }

  return result;
}

uint64_t MLSoundClassifier.FeatureExtractor.deinit()
{
  *(v0 + 64);
  *(v0 + 72);

  return v0;
}

_OWORD *__swift_memcpy41_8(_OWORD *a1, __int128 *a2)
{
  result = a1;
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 25) = *(a2 + 25);
  a1[1] = v4;
  *a1 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLSoundClassifier.FeatureExtractor.Configuration(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 40) >= 2u)
      {
        v2 = (*(a1 + 40) ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLSoundClassifier.FeatureExtractor.Configuration(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 254;
    *(a1 + 40) = 0;
    if (a3 >= 0xFE)
    {
      *(a1 + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(a1 + 41) = 0;
    }

    if (a2)
    {
      *(a1 + 40) = ~a2;
    }
  }
}

id @nonobjc SNAudioFileAnalyzer.init(url:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [v1 initWithURL:v2 error:&v12];

  v5 = v12;
  v11 = v4;
  if (v4)
  {
    v6 = type metadata accessor for URL(0);
    v7 = *(*(v6 - 8) + 8);
    v5;
    v7(a1, v6);
  }

  else
  {
    v8 = v12;
    _convertNSErrorToError(_:)(v5);

    swift_willThrow();
    v9 = type metadata accessor for URL(0);
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v11;
}

uint64_t outlined init with copy of _TablePrinter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for _TablePrinter(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t sub_1371DB()
{
  v15 = type metadata accessor for _TablePrinter(0);
  v1 = *(v15 - 1);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (*(v1 + 80) + 48);
  v4 = (((v3 + *(v1 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v5 = *(v13 - 8);
  v6 = *(v5 + 80);
  v16 = v5;
  v7 = ~v6 & (v6 + v4 + 8);
  v14 = v6 | v2 | 7;
  v8 = ((*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;

  v9 = v0 + v3;
  v10 = v9 + v15[5];
  v11 = type metadata accessor for Date(0);
  (*(*(v11 - 8) + 8))(v10, v11);

  *(v15[7] + v9 + 8);

  (*(v16 + 8))(v0 + v7, v13);
  return swift_deallocObject(v0, v8, v14);
}