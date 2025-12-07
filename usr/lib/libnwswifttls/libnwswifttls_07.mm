uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO22receivedClientFinished_5bytesAA07PartialD6ResultVAA0H7MessageV_AA10ByteBufferVtAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a6;
  v44 = a4;
  v45 = a5;
  v42 = a2;
  v43 = a3;
  v40 = a8;
  v41 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for SymmetricKey();
  v50 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  MEMORY[0x1EEE9AC00](ready);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ServerHandshakeState(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v8, v23, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v23, type metadata accessor for ServerHandshakeState);
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  outlined init with take of ServerHandshakeState.IdleState(v23, v20, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  v24 = v47;
  _s15SwiftTLSLibrary20ServerHandshakeStateO05ReadyE0V23receivingClientFinished08originalE006clientI00kI5BytesAeC0ciE0V_AA0I7MessageVAA10ByteBufferVtAA8TLSErrorOYKFZ(v20, v41, v42, v43, v44, v45, v46, v48, v17);
  if (v24)
  {
    v25 = v48[0];
    v26 = v48[1];
    v27 = v49;
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v20, type metadata accessor for ServerHandshakeState.ServerFinishedState);
    *a7 = v25;
    *(a7 + 8) = v26;
    *(a7 + 16) = v27;
    return result;
  }

  v47 = 0;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v8, type metadata accessor for ServerHandshakeState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v17, v8, type metadata accessor for ServerHandshakeState.ReadyState);
  swift_storeEnumTagMultiPayload();
  specialized ServerSessionKeyManager.clientApplicationTrafficSecret.getter(v12);
  v29 = v50;
  v30 = v13;
  result = (*(v50 + 48))(v12, 1, v13);
  if (result == 1)
  {
    goto LABEL_8;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v17, type metadata accessor for ServerHandshakeState.ReadyState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v20, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  v31 = *(v29 + 32);
  v50 = v29 + 32;
  v32 = v39;
  v31(v39, v12, v30);
  v33 = type metadata accessor for PartialHandshakeResult(0);
  v34 = v33[5];
  v35 = type metadata accessor for EncryptionLevel(0);
  v36 = *(*(v35 - 8) + 56);
  v37 = v40;
  v36(v40 + v34, 1, 1, v35);
  v38 = v33[6];
  v31((v37 + v38), v32, v30);
  swift_storeEnumTagMultiPayload();
  result = (v36)(v37 + v38, 0, 1, v35);
  *v37 = xmmword_1B26C5EF0;
  *(v37 + 16) = 0;
  *(v37 + v33[7]) = xmmword_1B26C5EF0;
  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZ@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = v10;
  LODWORD(v306) = a8;
  v279 = a4;
  v280 = a5;
  v278 = a3;
  v308 = a1;
  v270 = a9;
  v307 = type metadata accessor for ServerHandshakeState.IdleState(0);
  MEMORY[0x1EEE9AC00](v307);
  v274 = &v251 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v282 = &v251 - v17;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v286);
  v287 = &v251 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v277 = &v251 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v300 = &v251 - v22;
  v23 = type metadata accessor for Date();
  v283 = *(v23 - 8);
  v284 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v290 = &v251 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v272 = &v251 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v299 = &v251 - v28;
  v29 = type metadata accessor for SymmetricKey();
  v294 = *(v29 - 8);
  v295 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v273 = &v251 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v281 = &v251 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v301 = &v251 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v293 = &v251 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v288 = &v251 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v251 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v271 = &v251 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v302 = (&v251 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v296 = &v251 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v297 = &v251 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v305 = &v251 - v51;
  v52 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
  v303 = *(v52 - 8);
  v304 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v285 = (&v251 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
  v55 = MEMORY[0x1EEE9AC00](v54 - 8);
  v276 = &v251 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v275 = &v251 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v251 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v292 = &v251 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v291 = &v251 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v289 = (&v251 - v67);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v298 = &v251 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v251 - v70;
  v72 = *a2;
  v419 = a2;
  v73 = a2[1];
  if (__PAIR64__(v73, v72) != 0x300000003 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(*(v419 + 11), &_s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZTv_r) & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, logger);
    v90 = v419;
    outlined init with copy of ClientHello(v419, v356);
    outlined init with copy of ClientHello(v90, v356);
    outlined init with copy of ClientHello(v90, v356);
    outlined init with copy of ClientHello(v90, v356);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v91, v92))
    {
      outlined destroy of ClientHello(v90);
      outlined destroy of ClientHello(v90);
      outlined destroy of ClientHello(v90);
      outlined destroy of ClientHello(v90);
LABEL_21:

      v356[0] = xmmword_1B26C6410;
      v106 = 2;
      LOBYTE(v356[1]) = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      result = swift_willThrowTypedImpl();
      v108 = 0;
      goto LABEL_22;
    }

    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *&v356[0] = v94;
    *v93 = 136315906;
    v95 = ProtocolVersion.description.getter(771);
    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v356);

    *(v93 + 4) = v97;
    *(v93 + 12) = 2080;
    v98 = ProtocolVersion.description.getter(v72 | (v73 << 8));
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v356);

    *(v93 + 14) = v100;
    v101 = v419;
    *(v93 + 22) = 2048;
    v102 = *(v101 + 11);
    v103 = *(v102 + 16);
    outlined destroy of ClientHello(v101);
    *(v93 + 24) = v103;
    outlined destroy of ClientHello(v101);
    *(v93 + 32) = 1024;
    if (v103)
    {
      v104 = *(v102 + 32);
      outlined destroy of ClientHello(v101);
      if (!v104)
      {
        v105 = 1;
LABEL_20:
        *(v93 + 34) = v105;
        outlined destroy of ClientHello(v101);
        _os_log_impl(&dword_1B25F5000, v91, v92, "client hello legacy version and/or legacy compression methods incorrect. version expected %s, got %s, legacy compression methods expected [0], got array of length %ld with first value == 0? %{BOOL}d.", v93, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x1B274ECF0](v94, -1, -1);
        MEMORY[0x1B274ECF0](v93, -1, -1);
        goto LABEL_21;
      }
    }

    else
    {
      outlined destroy of ClientHello(v101);
    }

    v105 = 0;
    goto LABEL_20;
  }

  v266 = v61;
  v267 = v41;
  v269 = v71;
  v75 = v307;
  v74 = v308;
  if (*(v308 + *(v307 + 24)))
  {
    v76 = *(v308 + *(v307 + 24));
  }

  else
  {
    v76 = MEMORY[0x1E69E7CC0];
  }

  v268 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v77 = *(v74 + v268[10]);
  v78 = (v74 + *(v75 + 32));
  v79 = *v78;
  v80 = v78[1];
  v81 = v306 & 1;
  *(v356 + 8) = 0u;
  *(&v356[2] + 8) = 0u;
  *&v356[0] = MEMORY[0x1E69E7CD0];
  *(&v356[3] + 1) = 0;
  *(&v356[1] + 8) = 0u;
  *&v357[0] = 0xF000000000000000;
  BYTE8(v357[2]) = 0;
  *(&v357[1] + 8) = 0u;
  *(v357 + 8) = 0u;
  v360 = 0u;
  v359 = 0u;
  v358 = 0u;
  *&v361 = 0;
  *(&v361 + 1) = &_s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZTv0_r;
  *&v362 = &_s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZTv1_r;
  *(&v362 + 1) = &_s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZTv2_r;
  *&v363 = &_s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZTv3_r;
  *(&v363 + 1) = v76;
  LODWORD(v306) = v77;
  LOBYTE(v364) = v77;
  *(&v364 + 1) = a6;
  *&v365[0] = a7;
  *(&v365[0] + 1) = v79;
  *&v365[1] = v80;
  BYTE8(v365[1]) = v81;
  v82 = *(v419 + 12);
  v83 = *(v82 + 16);

  outlined copy of PAKEServerRecords?(v79, v80);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(a6, a7);
  if (v83)
  {
    v84 = v82 + 32;
    while (1)
    {
      v85 = *(v84 + 16);
      v417[0] = *v84;
      v417[1] = v85;
      v86 = *(v84 + 32);
      v87 = *(v84 + 48);
      v88 = *(v84 + 64);
      v418 = *(v84 + 80);
      v417[3] = v87;
      v417[4] = v88;
      v417[2] = v86;
      outlined init with copy of Extension(v417, &v341);
      _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV16processExtensionyyAA0J0OAA8TLSErrorOYKF(v417);
      if (v11)
      {
        break;
      }

      v11 = 0;
      outlined destroy of Extension(v417);
      v84 += 88;
      if (!--v83)
      {
        goto LABEL_24;
      }
    }

    outlined destroy of Extension(v417);
    v353 = v363;
    v354 = v364;
    v355[0] = v365[0];
    *(v355 + 9) = *(v365 + 9);
    v349 = v359;
    v350 = v360;
    v351 = v361;
    v352 = v362;
    v345 = v357[0];
    v346 = v357[1];
    v347 = v357[2];
    v348 = v358;
    v341 = v356[0];
    v342 = v356[1];
    v343 = v356[2];
    v344 = v356[3];
    result = outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v341);
    v108 = 0;
    v106 = 2;
LABEL_22:
    v109 = 5;
    goto LABEL_23;
  }

LABEL_24:
  v414 = v363;
  v415 = v364;
  v416[0] = v365[0];
  *(v416 + 9) = *(v365 + 9);
  v410 = v359;
  v411 = v360;
  v412 = v361;
  v413 = v362;
  v406 = v357[0];
  v407 = v357[1];
  v408 = v357[2];
  v409 = v358;
  v403[0] = v356[0];
  v403[1] = v356[1];
  v404 = v356[2];
  v405 = v356[3];
  outlined init with copy of ServerHandshakeState.ClientHelloVerifier(v403, &v341);
  _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV18validateExtensionsyyAA8TLSErrorOYKF();
  if (v11)
  {
    v109 = v110;
    v108 = v111;
    v106 = v112;
    v353 = v363;
    v354 = v364;
    v355[0] = v365[0];
    *(v355 + 9) = *(v365 + 9);
    v349 = v359;
    v350 = v360;
    v351 = v361;
    v352 = v362;
    v345 = v357[0];
    v346 = v357[1];
    v347 = v357[2];
    v348 = v358;
    v341 = v356[0];
    v342 = v356[1];
    v343 = v356[2];
    v344 = v356[3];
    outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v341);
    result = outlined destroy of ServerHandshakeState.ClientHelloVerifier(v403);
    goto LABEL_23;
  }

  outlined destroy of ServerHandshakeState.ClientHelloVerifier(v403);
  v265 = _s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V20negotiateCipherSuite33_03AB5AB83506F65A656301CC88CAC942LLyAA0iJ0VSayAIG_AJtAA8TLSErrorOYKFZTf4nnd_n(*(v419 + 10), &_s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V07readingfG008originalE006clientG00jG5Bytes28externalPSKSelectionCallback15transportIsQUICAeC04IdleE0V_AA0fG0VAA10ByteBufferVySayAA0A11OfferedEPSKVG_ySi_AA0V0VSgtctcSgSbtAA8TLSErrorOYKFZTv4_r);
  if (*(&v404 + 1) && (v113 = *(*(&v404 + 1) + 16)) != 0)
  {
    v114 = 0;
    do
    {
      v115 = *(*(&v404 + 1) + 32 + v114++);
      v116 = *(*(&v413 + 1) + 16);
      v117 = (*(&v413 + 1) + 32);
      while (v116)
      {
        v118 = *v117++;
        --v116;
        if (v118 == v115)
        {
          v119 = 0;
          goto LABEL_37;
        }
      }

      LOBYTE(v115) = 0;
      v119 = 1;
    }

    while (v114 != v113);
  }

  else
  {
    LOBYTE(v115) = 0;
    v119 = 1;
  }

LABEL_37:
  v264 = v119;
  v401[12] = v363;
  v401[13] = v364;
  v402[0] = v365[0];
  *(v402 + 9) = *(v365 + 9);
  v401[8] = v359;
  v401[9] = v360;
  v401[10] = v361;
  v401[11] = v362;
  v401[4] = v357[0];
  v401[5] = v357[1];
  v401[6] = v357[2];
  v401[7] = v358;
  v401[0] = v356[0];
  v401[1] = v356[1];
  v401[2] = v356[2];
  v401[3] = v356[3];
  outlined init with copy of ServerHandshakeState.ClientHelloVerifier(v401, &v341);
  _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV14negotiateGroupAA05NamedJ0VSgyAA8TLSErrorOYKF();
  v121 = v120;
  outlined destroy of ServerHandshakeState.ClientHelloVerifier(v401);
  v398 = v363;
  v399 = v364;
  v400[0] = v365[0];
  *(v400 + 9) = *(v365 + 9);
  v394 = v359;
  v395 = v360;
  v396 = v361;
  v397 = v362;
  v390[4] = v357[0];
  v391 = v357[1];
  v392 = v357[2];
  v393 = v358;
  v390[0] = v356[0];
  v390[1] = v356[1];
  v390[2] = v356[2];
  v390[3] = v356[3];
  outlined init with copy of ServerHandshakeState.ClientHelloVerifier(v390, &v341);
  v260 = _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV27negotiateSignatureAlgorithmAA0J6SchemeVSgyAA8TLSErrorOYKF();
  outlined destroy of ServerHandshakeState.ClientHelloVerifier(v390);
  if ((v121 & 0x10000) != 0)
  {
    v122 = 0;
    v123 = 0;
    v263 = 0;
    v124 = 0xF000000000000000;
    v125 = *(&v391 + 1);
  }

  else
  {
    v261 = *(&v357[1] + 1);
    v126 = _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV03getF8KeyShareyAA9ExtensionO0jK0O0jK5EntryVAA10NamedGroupVAA8TLSErrorOYKF(v121);
    v123 = v127;
    v124 = v128;
    v263 = v129;
    v122 = v126;
    v125 = v261;
  }

  v262 = v122;
  if (v265 != 4866)
  {
    v341 = xmmword_1B26C76D0;
    v131 = v124;
    v106 = 2;
    LOBYTE(v342) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Extension.KeyShare.KeyShareEntry?(v262, v123, v131);
    v353 = v363;
    v354 = v364;
    v355[0] = v365[0];
    *(v355 + 9) = *(v365 + 9);
    v349 = v359;
    v350 = v360;
    v351 = v361;
    v352 = v362;
    v345 = v357[0];
    v346 = v357[1];
    v347 = v357[2];
    v348 = v358;
    v341 = v356[0];
    v342 = v356[1];
    v343 = v356[2];
    v344 = v356[3];
    result = outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v341);
    v108 = 0;
    v109 = 26;
    goto LABEL_23;
  }

  v261 = v125;
  v259 = v124;
  v130 = v361;
  v388[14] = v363;
  v388[15] = v364;
  v389[0] = v365[0];
  *(v389 + 9) = *(v365 + 9);
  v388[10] = v359;
  v388[11] = v360;
  v388[12] = v361;
  v388[13] = v362;
  v388[6] = v357[0];
  v388[7] = v357[1];
  v388[8] = v357[2];
  v388[9] = v358;
  v388[2] = v356[0];
  v388[3] = v356[1];
  v388[4] = v356[2];
  v388[5] = v356[3];
  _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV12negotiatePSK14externalPSKKDFAE20negotiatedEPSKResultVSgAA16TLSKDFIdentifierV_tAA8TLSErrorOYKF(2, 48, &v338, v269);
  v377 = v356[3];
  v376 = v356[2];
  v381 = v358;
  v380 = v357[2];
  v379 = v357[1];
  v378 = v357[0];
  v385 = v362;
  v384 = v361;
  v383 = v360;
  v382 = v359;
  *(v388 + 9) = *(v365 + 9);
  v388[0] = v365[0];
  v387 = v364;
  v386 = v363;
  v375 = v356[1];
  v374 = v356[0];
  v132 = _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV16getALPNSelection8selfALPNSS_SitSgSaySSGSg_tAA8TLSErrorOYKF(*(v308 + v268[7]));
  v135 = v134;
  v257 = v121;
  v258 = v123;
  v255 = 0;
  v256 = v133;
  v253 = v132;
  v254 = v130;
  if ((BYTE8(v380) & 1) == 0 || *(v308 + v268[8]) != 1)
  {
    LODWORD(v285) = 0;
    goto LABEL_76;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_137;
  }

  while (1)
  {
    v136 = type metadata accessor for Logger();
    __swift_project_value_buffer(v136, logger);
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&dword_1B25F5000, v137, v138, "Client requested early data and server configured to allow early data. Checking conditions...", v139, 2u);
      MEMORY[0x1B274ECF0](v139, -1, -1);
    }

    v140 = v298;
    outlined init with copy of Any?(v269, v298, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
    v141 = *(v303 + 48);
    if (v141(v140, 1, v304) == 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v298, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      goto LABEL_53;
    }

    v142 = v285;
    outlined init with take of ServerHandshakeState.IdleState(v298, v285, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
    if (*(v142 + v304[5]))
    {
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v285, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
LABEL_53:
      outlined init with copy of Any?(v269, v289, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      v143 = Logger.logObject.getter();
      LODWORD(v298) = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v143, v298))
      {
        v144 = swift_slowAlloc();
        v285 = swift_slowAlloc();
        *&v341 = v285;
        *v144 = 136315138;
        v145 = v289;
        v146 = v141(v289, 1, v304);
        if (v146 == 1)
        {
          v147 = 0xD000000000000012;
        }

        else
        {
          v147 = 0xD00000000000001CLL;
        }

        if (v146 == 1)
        {
          v148 = ".supportedGroups";
        }

        else
        {
          v148 = "psk not negotiated";
        }

        outlined destroy of P256.Signing.PrivateKey?(v145, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
        v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v148 | 0x8000000000000000, &v341);

        *(v144 + 4) = v149;
        _os_log_impl(&dword_1B25F5000, v143, v298, "Early data not authorized: %s", v144, 0xCu);
        v150 = v285;
        __swift_destroy_boxed_opaque_existential_0(v285);
        MEMORY[0x1B274ECF0](v150, -1, -1);
        MEMORY[0x1B274ECF0](v144, -1, -1);
      }

      else
      {

        outlined destroy of P256.Signing.PrivateKey?(v289, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      }

      goto LABEL_74;
    }

    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&dword_1B25F5000, v151, v152, "Early data compatibly psk negotiated. Continuing checks...", v153, 2u);
      MEMORY[0x1B274ECF0](v153, -1, -1);
    }

    if (v379)
    {
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.debug.getter();
      v156 = os_log_type_enabled(v154, v155);
      if (v256 && !v135)
      {
        if (v156)
        {
          v157 = swift_slowAlloc();
          *v157 = 0;
          _os_log_impl(&dword_1B25F5000, v154, v155, "Server supports ALPN protocol associated with early data. Accepting early data.", v157, 2u);
          MEMORY[0x1B274ECF0](v157, -1, -1);
        }

        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v285, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
        LODWORD(v285) = 1;
        goto LABEL_75;
      }

      if (v156)
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&dword_1B25F5000, v154, v155, "Server does not support the ALPN protocol associated with early data. Rejecting early data.", v158, 2u);
        MEMORY[0x1B274ECF0](v158, -1, -1);
      }
    }

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v285, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
LABEL_74:
    LODWORD(v285) = 0;
LABEL_75:
    LODWORD(v121) = v257;
LABEL_76:
    v159 = _s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgWOi0_(&v328);
    if ((v121 & 0x10000) != 0 && (v260 & 0x10000) != 0 && (*(v303 + 48))(v269, 1, v304, v159) == 1)
    {
      v160 = v361;
      if (v361 && (v161 = v358, v372[0] = v358, v268 = *(&v359 + 1), v252 = v359, v372[1] = v359, v298 = *(&v360 + 1), v289 = v360, v372[2] = v360, v373 = v361, (v162 = *(&v388[0] + 1)) != 0))
      {
        outlined copy of Extension.PAKE.PAKEClientHello?(v358, *(&v358 + 1), v252, v268, v289, v298, v361);
        v163 = v255;
        _s15SwiftTLSLibrary17PAKEServerRecordsV29findMatchingPAKERecordOrDummyyAA0C6RecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgAJ15PAKEClientHelloVAA8TLSErrorOYKFTf4nx_n(v372, v162, &v338, v366);
        v255 = v163;
        if (v163)
        {
          v109 = v338;
          v164 = v339;
          v106 = v340;
          outlined consume of Extension.PAKE.PAKEClientHello?(v161, *(&v161 + 1), v252, v268, v289, v298, v160);
          outlined consume of Extension.KeyShare.KeyShareEntry?(v262, v258, v259);

          v353 = v363;
          v354 = v364;
          v355[0] = v365[0];
          *(v355 + 9) = *(v365 + 9);
          v349 = v359;
          v350 = v360;
          v351 = v361;
          v352 = v362;
          v345 = v357[0];
          v346 = v357[1];
          v347 = v357[2];
          v348 = v358;
          v341 = v356[0];
          v342 = v356[1];
          v343 = v356[2];
          v344 = v356[3];
          outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v341);
          result = outlined destroy of P256.Signing.PrivateKey?(v269, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
          v108 = v164;
          goto LABEL_23;
        }

        v315[0] = v366[6];
        v315[1] = v366[7];
        v316 = v366[8];
        v317 = v366[9];
        v311 = v366[2];
        v312 = v366[3];
        v313 = v366[4];
        v314 = v366[5];
        v309 = v366[0];
        v310 = v366[1];
        outlined consume of Extension.PAKE.PAKEClientHello?(v161, *(&v161 + 1), v252, v268, v289, v298, v160);
      }

      else
      {
        v315[0] = v334;
        v315[1] = v335;
        v316 = v336;
        v317 = v337;
        v311 = v330;
        v312 = v331;
        v313 = v332;
        v314 = v333;
        v309 = v328;
        v310 = v329;
      }

      v324 = v315[0];
      v325 = v315[1];
      v326 = v316;
      v327 = v317;
      v320 = v311;
      v321 = v312;
      v322 = v313;
      v323 = v314;
      v165 = v309;
      v166 = v310;
    }

    else
    {
      v324 = v334;
      v325 = v335;
      v326 = v336;
      v327 = v337;
      v320 = v330;
      v321 = v331;
      v322 = v332;
      v323 = v333;
      v165 = v328;
      v166 = v329;
    }

    v318 = v165;
    v319 = v166;
    v167 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
    v168 = *(v167 - 8);
    v169 = *(v168 + 56);
    v169(v305, 1, 1, v167);
    v170 = type metadata accessor for PAKEServerState(0);
    v298 = *(v170 - 8);
    v289 = *(v298 + 56);
    (v289)(v267, 1, 1, v170);
    if ((v257 & 0x10000) != 0 || v259 >> 60 == 15)
    {
      break;
    }

    outlined copy of Data._Representation(v258, v259);
    v171 = v296;
    generateEphemeralKeyForNamedGroup(_:)(v257, v296);
    v172 = *(v168 + 48);
    v135 = v168 + 48;
    v298 = v172;
    result = v172(v171, 1, v167);
    if (result == 1)
    {
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v173 = v305;
    outlined destroy of P256.Signing.PrivateKey?(v305, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v174 = v171;
    v175 = v297;
    outlined init with take of ServerHandshakeState.IdleState(v174, v297, type metadata accessor for GeneratedEphemeralPrivateKey);
    v169(v175, 0, 1, v167);
    outlined init with take of P256.Signing.PublicKey?(v175, v173, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    v176 = v302;
    outlined init with copy of Any?(v173, v302, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    result = (v298)(v176, 1, v167);
    if (result == 1)
    {
      goto LABEL_139;
    }

    v177 = v259 >> 62;
    if ((v259 >> 62) <= 1)
    {
      if (!v177)
      {
        v178 = BYTE6(v259);
        goto LABEL_106;
      }

      v190 = v258;
      v178 = v258 >> 32;
      goto LABEL_104;
    }

    if (v177 == 2)
    {
      v190 = v258;
      v178 = *(v258 + 24);
LABEL_104:
      outlined copy of Data._Representation(v190, v259);
      goto LABEL_106;
    }

    v178 = 0;
LABEL_106:
    if (v178 >= v263)
    {
      v192 = v258;
      v191 = v259;
      v193 = v263;
      v194 = Data._Representation.subscript.getter();
      v196 = v195;
      v197 = v262;
      v263 = v193;
      outlined consume of Extension.KeyShare.KeyShareEntry?(v262, v192, v191);
      v198 = v302;
      v297 = v194;
      v298 = v196;
      v199 = v255;
      v200 = _s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyO5encap06publicF4Data10Foundation0I0V_9CryptoKit09SymmetricF0VtAH_tAA8TLSErrorOYKF(v301, v194, v196, &v338);
      v288 = v199;
      v289 = v200;
      v296 = v201;
      if (v199)
      {
        v109 = v338;
        v202 = v339;
        v106 = v340;
        outlined destroy of P256.Signing.PrivateKey?(v305, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
        outlined consume of Data._Representation(v297, v298);

        outlined consume of Extension.KeyShare.KeyShareEntry?(v197, v192, v191);
        outlined destroy of P256.Signing.PrivateKey?(&v318, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
        outlined consume of Extension.KeyShare.KeyShareEntry?(v197, v192, v191);
        v353 = v363;
        v354 = v364;
        v355[0] = v365[0];
        *(v355 + 9) = *(v365 + 9);
        v349 = v359;
        v350 = v360;
        v351 = v361;
        v352 = v362;
        v345 = v357[0];
        v346 = v357[1];
        v347 = v357[2];
        v348 = v358;
        v341 = v356[0];
        v342 = v356[1];
        v343 = v356[2];
        v344 = v356[3];
        outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v341);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v198, type metadata accessor for GeneratedEphemeralPrivateKey);
        outlined destroy of P256.Signing.PrivateKey?(v267, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
        result = outlined destroy of P256.Signing.PrivateKey?(v269, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
        v108 = v202;
        goto LABEL_23;
      }

      outlined consume of Extension.KeyShare.KeyShareEntry?(v197, v192, v191);
      outlined consume of Data._Representation(v297, v298);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v198, type metadata accessor for GeneratedEphemeralPrivateKey);
      v302 = *(v294 + 32);
      (v302)(v293, v301, v295);
LABEL_110:
      outlined init with copy of Any?(v308 + *(v307 + 20), v299, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      Date.init()();
      v203 = v291;
      outlined init with copy of Any?(v269, v291, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      v204 = *(v303 + 48);
      v303 += 48;
      v307 = v204;
      if (v204(v203, 1, v304) == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v291, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
        v205 = 1;
      }

      else
      {
        v206 = v291;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v291, v300, type metadata accessor for GeneralEPSK);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v206, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
        v205 = 0;
      }

      v207 = type metadata accessor for GeneralEPSK(0);
      v208 = *(v207 - 8);
      v209 = *(v208 + 56);
      v301 = v207;
      v297 = v208 + 56;
      v298 = v209;
      v209(v300, v205, 1);
      v210 = v292;
      outlined init with copy of Any?(v269, v292, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      if ((v307)(v210, 1, v304) == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v292, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
        v211 = 0;
        v212 = 0;
        v213 = 0xF000000000000000;
      }

      else
      {
        v214 = v292;
        v215 = (v292 + v304[6]);
        v211 = *v215;
        v213 = v215[1];
        v212 = v215[2];
        outlined copy of Data._Representation(*v215, v213);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v214, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
      }

      v216 = v266;
      outlined init with copy of Any?(v269, v266, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      v217 = (v307)(v216, 1, v304);
      if (v217 == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v266, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
        v218 = 0;
      }

      else
      {
        v218 = *&v266[v304[7]];
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v266, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
      }

      outlined init with copy of Any?(v299, v287, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
      if (swift_getEnumCaseMultiPayload() >= 4)
      {
        v219 = v288;
        _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV12serverCreate16clientHelloBytes13negotiatedPSK11useRawEPSKs11binderValue18bindersArrayLengthAHyx__GAA10ByteBufferV_AA11GeneralEPSKVSgSbAQSgSiSgtAA8TLSErrorOYKFZ9CryptoKit6SHA384V_Tt5g5(v278, v279, v280, v300, v306, v211, v213, v212, v282, v218, v217 == 1, &v338);
        v306 = v219;
        if (!v219)
        {
          outlined consume of ByteBuffer?(v211, v213);
          outlined destroy of P256.Signing.PrivateKey?(&v318, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
          outlined destroy of P256.Signing.PrivateKey?(v300, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
          (*(v283 + 8))(v290, v284);
          v221 = v299;
          outlined destroy of P256.Signing.PrivateKey?(v299, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
          outlined init with take of P256.Signing.PublicKey?(v282, v221, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
          swift_storeEnumTagMultiPayload();
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v308, v274, type metadata accessor for ServerHandshakeState.IdleState);
          outlined init with take of P256.Signing.PublicKey?(v221, v272, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
          outlined init with take of P256.Signing.PublicKey?(v305, v271, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
          v294 += 32;
          (v302)(v273, v293, v295);
          v308 = *(&v356[3] + 1);
          v305 = *&v357[0];
          v222 = v253;
          if (!v256)
          {
            v222 = 0;
          }

          v299 = v222;
          v300 = *(&v357[0] + 1);
          v223 = v275;
          outlined init with copy of Any?(v269, v275, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
          if ((v307)(v223, 1, v304) == 1)
          {
            outlined copy of Data?(v308, v305);
            outlined destroy of P256.Signing.PrivateKey?(v275, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
            v224 = 1;
          }

          else
          {
            v225 = v275;
            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v275, v277, type metadata accessor for GeneralEPSK);
            outlined copy of Data?(v308, v305);
            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v225, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
            v224 = 0;
          }

          (v298)(v277, v224, 1, v301);
          v226 = v276;
          outlined init with copy of Any?(v269, v276, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
          if ((v307)(v226, 1, v304) == 1)
          {
            outlined destroy of P256.Signing.PrivateKey?(v276, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
            LODWORD(v307) = 0;
          }

          else
          {
            LODWORD(v307) = *(v276 + v304[5]);
            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v276, type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult);
          }

          v227 = v254 != 0;
          v228 = v261 != 0;
          v229 = *(v419 + 56);
          v367 = *(v419 + 40);
          v368 = v229;
          v369 = *(v419 + 9);
          v230 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
          v231 = v270;
          v232 = v267;
          outlined init with copy of Any?(v267, v270 + v230[21], &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
          v233 = v274;
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v274, v231, type metadata accessor for ServerHandshakeStateMachine.Configuration);
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v233, type metadata accessor for ServerHandshakeState.IdleState);
          outlined init with take of P256.Signing.PublicKey?(v272, v231 + v230[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
          *(v231 + v230[6]) = v265;
          v234 = v231 + v230[7];
          v235 = BYTE2(v257);
          *v234 = v257;
          *(v234 + 2) = v235 & 1;
          v236 = v231 + v230[8];
          v237 = BYTE2(v260);
          *v236 = v260;
          *(v236 + 2) = v237 & 1;
          v238 = (v231 + v230[9]);
          *v238 = v115;
          v238[1] = v264;
          v239 = (v231 + v230[10]);
          v241 = v258;
          v240 = v259;
          *v239 = v262;
          v239[1] = v241;
          v239[2] = v240;
          v239[3] = v263;
          v242 = v231 + v230[14];
          v243 = v368;
          *v242 = v367;
          *(v242 + 16) = v243;
          *(v242 + 32) = v369;
          outlined init with take of P256.Signing.PublicKey?(v271, v231 + v230[11], &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
          (v302)(v231 + v230[12], v273, v295);
          v244 = (v231 + v230[13]);
          v245 = v296;
          *v244 = v289;
          v244[1] = v245;
          v246 = (v231 + v230[15]);
          v247 = v305;
          *v246 = v308;
          v246[1] = v247;
          v248 = v299;
          v246[2] = v300;
          v249 = (v231 + v230[16]);
          v250 = v256;
          *v249 = v248;
          v249[1] = v250;
          *(v231 + v230[17]) = v228;
          outlined init with take of P256.Signing.PublicKey?(v277, v231 + v230[18], &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
          *(v231 + v230[19]) = v307;
          *(v231 + v230[20]) = v285;
          *(v231 + v230[22]) = v81;
          *(v231 + v230[23]) = v227;
          v341 = v356[0];
          v342 = v356[1];
          v343 = v356[2];
          v344 = v356[3];
          v348 = v358;
          v347 = v357[2];
          v345 = v357[0];
          v346 = v357[1];
          v352 = v362;
          v351 = v361;
          v350 = v360;
          v349 = v359;
          *(v355 + 9) = *(v365 + 9);
          v355[0] = v365[0];
          v354 = v364;
          v353 = v363;
          outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v341);
          outlined destroy of P256.Signing.PrivateKey?(v232, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
          return outlined destroy of P256.Signing.PrivateKey?(v269, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
        }

        v109 = v338;
        v220 = v339;
        v106 = v340;
        outlined consume of ByteBuffer?(v289, v296);
        outlined consume of ByteBuffer?(v211, v213);

        outlined consume of Extension.KeyShare.KeyShareEntry?(v262, v258, v259);
        outlined destroy of P256.Signing.PrivateKey?(&v318, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
        outlined destroy of P256.Signing.PrivateKey?(v300, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
        (*(v283 + 8))(v290, v284);
        (*(v294 + 8))(v293, v295);
        outlined destroy of P256.Signing.PrivateKey?(v305, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
        v108 = v220;
      }

      else
      {

        outlined destroy of P256.Signing.PrivateKey?(v287, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
        v341 = xmmword_1B26C6450;
        v109 = 2;
        LOBYTE(v342) = 2;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined consume of ByteBuffer?(v289, v296);
        outlined consume of ByteBuffer?(v211, v213);
        outlined consume of Extension.KeyShare.KeyShareEntry?(v262, v258, v259);
        outlined destroy of P256.Signing.PrivateKey?(&v318, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
        outlined destroy of P256.Signing.PrivateKey?(v300, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
        (*(v283 + 8))(v290, v284);
        (*(v294 + 8))(v293, v295);
        outlined destroy of P256.Signing.PrivateKey?(v305, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
        v108 = 0;
        v106 = 2;
      }

      outlined destroy of P256.Signing.PrivateKey?(v299, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v353 = v363;
      v354 = v364;
      v355[0] = v365[0];
      *(v355 + 9) = *(v365 + 9);
      v349 = v359;
      v350 = v360;
      v351 = v361;
      v352 = v362;
      v345 = v357[0];
      v346 = v357[1];
      v347 = v357[2];
      v348 = v358;
      v341 = v356[0];
      v342 = v356[1];
      v343 = v356[2];
      v344 = v356[3];
      outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v341);
      outlined destroy of P256.Signing.PrivateKey?(v267, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
      result = outlined destroy of P256.Signing.PrivateKey?(v269, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      goto LABEL_23;
    }

    __break(1u);
LABEL_137:
    swift_once();
  }

  v315[0] = v324;
  v315[1] = v325;
  v316 = v326;
  v317 = v327;
  v311 = v320;
  v312 = v321;
  v313 = v322;
  v314 = v323;
  v309 = v318;
  v310 = v319;
  if (_s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(&v309) != 1)
  {
    v370[4] = v313;
    v370[5] = v314;
    v371[0] = v315[0];
    *(v371 + 10) = *(v315 + 10);
    v370[0] = v309;
    v370[1] = v310;
    v370[2] = v311;
    v370[3] = v312;
    v183 = v316;
    v301 = *(&v317 + 1);
    v184 = v317;
    v302 = *(&v316 + 1);
    outlined init with copy of Any?(&v318, &v341, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
    outlined init with copy of Any?(&v318, &v341, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
    outlined init with copy of PAKEServerRecord(&v309, &v341);
    v185 = v255;
    _s15SwiftTLSLibrary15PAKEServerStateVyAcA0C6RecordVAA8TLSErrorOYKcfC(v370, &v338, v288);
    if (v185)
    {
      v109 = v338;
      v189 = v339;
      v106 = v340;
      outlined destroy of P256.Signing.PrivateKey?(v305, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
      outlined consume of Data._Representation(v302, v184);

      outlined destroy of PAKEServerRecord(&v309);
      outlined destroy of P256.Signing.PrivateKey?(&v318, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
      outlined destroy of P256.Signing.PrivateKey?(&v318, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
      outlined consume of Extension.KeyShare.KeyShareEntry?(v262, v258, v259);
      v353 = v363;
      v354 = v364;
      v355[0] = v365[0];
      *(v355 + 9) = *(v365 + 9);
      v349 = v359;
      v350 = v360;
      v351 = v361;
      v352 = v362;
      v345 = v357[0];
      v346 = v357[1];
      v347 = v357[2];
      v348 = v358;
      v341 = v356[0];
      v342 = v356[1];
      v343 = v356[2];
      v344 = v356[3];
      outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v341);
      outlined destroy of P256.Signing.PrivateKey?(v267, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
      result = outlined destroy of P256.Signing.PrivateKey?(v269, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
      v108 = v189;
      goto LABEL_23;
    }

    v186 = v288;
    (v289)(v288, 0, 1, v170);
    v187 = v186;
    v188 = v267;
    outlined assign with take of PartialHandshakeResult?(v187, v267, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    result = (*(v298 + 48))(v188, 1, v170);
    if (result != 1)
    {
      _s15SwiftTLSLibrary15PAKEServerStateV26deriveKeysAndServerMessage11clientShare9CryptoKit12SymmetricKeyVAA9ExtensionO4PAKEO9PAKEShareV_tAA8TLSErrorOYKF(v183, v302, v184, v301, &v338, v281);
      v288 = 0;
      outlined destroy of P256.Signing.PrivateKey?(&v318, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
      outlined destroy of PAKEServerRecord(&v309);
      outlined consume of Data._Representation(v302, v184);
      v302 = *(v294 + 32);
      (v302)(v293, v281, v295);
      v289 = 0;
      v296 = 0xF000000000000000;
      goto LABEL_110;
    }

LABEL_140:
    __break(1u);
    return result;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v179 = type metadata accessor for Logger();
  __swift_project_value_buffer(v179, logger);
  v180 = Logger.logObject.getter();
  v181 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v180, v181))
  {
    v182 = swift_slowAlloc();
    *v182 = 0;
    _os_log_impl(&dword_1B25F5000, v180, v181, "no group or PAKE negotiated", v182, 2u);
    MEMORY[0x1B274ECF0](v182, -1, -1);
  }

  v341 = xmmword_1B26C6450;
  v109 = 2;
  LOBYTE(v342) = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of Extension.KeyShare.KeyShareEntry?(v262, v258, v259);
  outlined destroy of P256.Signing.PrivateKey?(&v318, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMd, &_s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgMR);
  outlined destroy of P256.Signing.PrivateKey?(v305, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v353 = v363;
  v354 = v364;
  v355[0] = v365[0];
  *(v355 + 9) = *(v365 + 9);
  v349 = v359;
  v350 = v360;
  v351 = v361;
  v352 = v362;
  v345 = v357[0];
  v346 = v357[1];
  v347 = v357[2];
  v348 = v358;
  v341 = v356[0];
  v342 = v356[1];
  v343 = v356[2];
  v344 = v356[3];
  outlined destroy of ServerHandshakeState.ClientHelloVerifier(&v341);
  outlined destroy of P256.Signing.PrivateKey?(v267, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  result = outlined destroy of P256.Signing.PrivateKey?(v269, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMd, &_s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV20negotiatedEPSKResultVSgMR);
  v108 = 0;
  v106 = 2;
LABEL_23:
  *a10 = v109;
  *(a10 + 8) = v108;
  *(a10 + 16) = v106;
  return result;
}

uint64_t specialized ServerSessionKeyManager.clientEarlyTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  outlined init with copy of Any?(v2, &v16 - v8, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with take of P256.Signing.PublicKey?(v9, v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
      v11 = *(v4 + 44);
      v12 = type metadata accessor for SymmetricKey();
      v13 = *(v12 - 8);
      (*(v13 + 16))(a1, &v6[v11], v12);
      outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
      return (*(v13 + 56))(a1, 0, 1, v12);
    }
  }

  else
  {
    outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  }

  v15 = type metadata accessor for SymmetricKey();
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

uint64_t outlined init with take of ServerHandshakeState.IdleState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO0c5HelloE0V07sendingcF008originalE006serverF0AE5state_AA10ByteBufferV0iF5BytestAC06ClientfE0V_AA0cF0VtAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v65 = a4;
  v73 = a3;
  v62 = a1;
  v5 = type metadata accessor for SymmetricKey();
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v71 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v59 - v8;
  v9 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v59 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v77 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v64 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v60 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = a2 + v9[5];
  v70 = &v59 - v27;
  outlined init with copy of Any?(v26, &v59 - v27, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  outlined init with copy of Any?(a2 + v9[18], v22, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v28 = type metadata accessor for GeneralEPSK(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v63 = v29 + 48;
  v31 = v30(v22, 1, v28);
  v68 = v9;
  if (v31 == 1)
  {
    v66 = *(a2 + v9[17]);
  }

  else
  {
    v66 = 0;
  }

  outlined destroy of P256.Signing.PrivateKey?(v22, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v32 = v77;
  v33 = v67;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, logger);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a2, v33, type metadata accessor for ServerHandshakeState.ClientHelloState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a2, v32, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v69 = a2;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a2, v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v37 = v14;
  if (os_log_type_enabled(v35, v36))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109632;
    v39 = v30;
    v40 = v68;
    v41 = v64;
    outlined init with copy of Any?(v33 + v68[18], v64, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    v42 = v39(v41, 1, v28) != 1;
    outlined destroy of P256.Signing.PrivateKey?(v41, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v33, type metadata accessor for ServerHandshakeState.ClientHelloState);
    *(v38 + 4) = v42;
    *(v38 + 8) = 1024;
    LODWORD(v39) = *(v77 + v40[17]);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v77, type metadata accessor for ServerHandshakeState.ClientHelloState);
    *(v38 + 10) = v39;
    *(v38 + 14) = 1024;
    v43 = *(v37 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 40));
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v37, type metadata accessor for ServerHandshakeState.ClientHelloState);
    *(v38 + 16) = v43;
    _os_log_impl(&dword_1B25F5000, v35, v36, "selectedPSK? = %{BOOL}d, pskNegotiationAttempted? = %{BOOL}d, useRawEPSKs? = %{BOOL}d", v38, 0x14u);
    MEMORY[0x1B274ECF0](v38, -1, -1);
    v44 = v76;
    v45 = v70;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v14, type metadata accessor for ServerHandshakeState.ClientHelloState);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v32, type metadata accessor for ServerHandshakeState.ClientHelloState);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v33, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v44 = v76;
    v45 = v70;
    v40 = v68;
  }

  v46 = v75;
  v47 = v69;
  (*(v75 + 16))(v71, v69 + v40[12], v44);
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x1E6966458], MEMORY[0x1E6966450]);
  v48 = v72;
  SymmetricKey.init<A>(data:)();
  v49 = v74;
  v50 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18sendingServerHello__9pskFailedAA10ByteBufferVAA0nO0V_9CryptoKit09SymmetricD0VSbtAA8TLSErrorOYKFAK6SHA384V_Tg5(v73, v48, v66);
  v52 = v51;
  v54 = v53;
  (*(v46 + 8))(v48, v44);
  if (v49)
  {
    outlined destroy of P256.Signing.PrivateKey?(v45, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v55 = v65;
    *v65 = v50;
    v55[1] = v52;
    *(v55 + 16) = v54;
  }

  else
  {
    v56 = v61;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v47, v61, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v57 = v60;
    outlined init with copy of Any?(v45, v60, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    ServerHandshakeState.ServerHelloState.init(originalState:keyScheduler:)(v56, v57, v62);
    outlined destroy of P256.Signing.PrivateKey?(v45, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  }

  return v50;
}

uint64_t specialized ServerSessionKeyManager.clientHandshakeTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  outlined init with copy of Any?(v2, &v22 - v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_7:
      v14 = type metadata accessor for SymmetricKey();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    outlined init with take of P256.Signing.PublicKey?(v12, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    v19 = *(v7 + 40);
    v20 = type metadata accessor for SymmetricKey();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v9[v19], v20);
    outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    outlined init with take of P256.Signing.PublicKey?(v12, v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    v16 = *(v4 + 40);
    v17 = type metadata accessor for SymmetricKey();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1, &v6[v16], v17);
    outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

uint64_t specialized ServerSessionKeyManager.serverHandshakeTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  outlined init with copy of Any?(v2, &v22 - v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_7:
      v14 = type metadata accessor for SymmetricKey();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    outlined init with take of P256.Signing.PublicKey?(v12, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    v19 = *(v7 + 44);
    v20 = type metadata accessor for SymmetricKey();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v9[v19], v20);
    outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    outlined init with take of P256.Signing.PublicKey?(v12, v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    v16 = *(v4 + 44);
    v17 = type metadata accessor for SymmetricKey();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1, &v6[v16], v17);
    outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO0c19EncryptedExtensionsE0V07sendingcfG008originalE006serverfG0AE5state_AA10ByteBufferV0jfG5BytestAC0c5HelloE0V_AA0fG0VtAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v41 - v12;
  outlined init with copy of Any?(a2 + v8[5], v41 - v12, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v43 = xmmword_1B26C6130;
  v44 = 0;
  specialized ByteBuffer.writeHandshakeMessage<A>(_:)(a3);
  v42 = *(&v43 + 1);
  v45 = v43;
  v41[1] = v44;
  v14 = v41[2];
  v15 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v43, *(&v43 + 1), v44);
  if (v14)
  {
    v18 = v15;
    v19 = v16;
    v20 = v17;
    outlined destroy of P256.Signing.PrivateKey?(v13, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    outlined consume of Data._Representation(v45, v42);
    *a4 = v18;
    *(a4 + 8) = v19;
    *(a4 + 16) = v20;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a2, v10, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v21 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
    outlined init with take of P256.Signing.PublicKey?(v13, a1 + v21[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v10, a1, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v22 = &v10[v8[6]];
    v23 = *v22;
    LOBYTE(v22) = v22[2];
    v24 = a1 + v21[6];
    *v24 = v23;
    *(v24 + 2) = v22;
    v25 = &v10[v8[7]];
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    v29 = (a1 + v21[7]);
    *v29 = v26;
    v29[1] = v27;
    v29[2] = v28;
    v30 = &v10[v8[8]];
    v31 = *v30;
    v32 = *(v30 + 1);
    v33 = (a1 + v21[8]);
    *v33 = v31;
    v33[1] = v32;
    *(a1 + v21[9]) = *&v10[v8[9]];
    *(a1 + v21[10]) = v10[v8[10]];
    *(a1 + v21[11]) = v10[v8[11]];
    v34 = &v10[v8[12]];
    LOWORD(v31) = *v34;
    LOBYTE(v34) = v34[2];
    v35 = a1 + v21[12];
    *v35 = v31;
    *(v35 + 2) = v34;
    v36 = &v10[v8[13]];
    LOWORD(v31) = *v36;
    LOBYTE(v36) = v36[2];
    v37 = a1 + v21[13];
    *v37 = v31;
    *(v37 + 2) = v36;
    *(a1 + v21[14]) = v10[v8[15]];
    outlined init with copy of Any?(&v10[v8[16]], a1 + v21[15], &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v38 = v10[v8[17]];
    outlined copy of Data?(v26, v27);

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v10, type metadata accessor for ServerHandshakeState.ServerHelloState);
    *(a1 + v21[16]) = v38;
    a1 = v45;
    v39 = v42;
    outlined copy of Data._Representation(v45, v42);
    outlined consume of Data._Representation(a1, v39);
  }

  return a1;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO0c11CertificateE0V07sendingcF008originalE0AE5state_AA10ByteBufferV06serverF5BytestAC0c19EncryptedExtensionsE0V_tAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v72 = a3;
  v67 = a1;
  v75 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v75);
  v66 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for P256.Signing.PublicKey();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v61 - v11;
  v13 = type metadata accessor for P256.Signing.PrivateKey();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v18 = a2;
  outlined init with copy of Any?(a2 + *(v17 + 20), v12, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v12, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B25F5000, v20, v21, "server attempting to send Certificate message but was not configured with a signing key. EPSK or PAKE negotiation probably failed.", v22, 2u);
      MEMORY[0x1B274ECF0](v22, -1, -1);
    }

    v73 = xmmword_1B26C94A0;
    v23 = 2;
    LOBYTE(v74) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v24 = 0;
    v25 = 24;
  }

  else
  {
    v63 = v14;
    v64 = v13;
    (*(v14 + 32))(v16, v12, v13);
    v26 = a2 + *(v75 + 20);
    v27 = v68;
    outlined init with copy of Any?(v26, v68, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary18CertificateMessageV0F5EntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary18CertificateMessageV0F5EntryVGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B26C6030;
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v29 = P256.Signing.PublicKey.derRepresentation.getter();
    v31 = v30;
    (*(v69 + 8))(v7, v70);
    v32 = 0;
    v33 = v31 >> 62;
    v62 = v18;
    v65 = v16;
    if ((v31 >> 62) > 1)
    {
      if (v33 == 2)
      {
        v32 = *(v29 + 16);
      }
    }

    else if (v33)
    {
      v32 = v29;
    }

    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    v34 = MEMORY[0x1E69E7CC0];
    *(v28 + 48) = v32;
    *(v28 + 56) = v34;
    v73 = xmmword_1B26C6130;
    v74 = 0;
    specialized ByteBuffer.writeHandshakeMessage<A>(_:)(0, 0xC000000000000000, 0, v28);
    v35 = v71;
    v36 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v73, *(&v73 + 1), v74);
    v39 = v75;
    if (!v35)
    {
      outlined consume of Data._Representation(0, 0xC000000000000000);

      (*(v63 + 8))(v65, v64);
      v42 = v66;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v62, v66, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v43 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
      v44 = v67;
      outlined init with take of P256.Signing.PublicKey?(v27, v67 + v43[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v42, v44, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v45 = v42 + v39[6];
      v46 = *v45;
      LOBYTE(v45) = *(v45 + 2);
      v47 = v44 + v43[6];
      *v47 = v46;
      *(v47 + 2) = v45;
      v48 = (v42 + v39[7]);
      v49 = *v48;
      v50 = v48[1];
      v51 = v48[2];
      v52 = (v44 + v43[7]);
      *v52 = v49;
      v52[1] = v50;
      v52[2] = v51;
      v53 = (v42 + v39[8]);
      v54 = *v53;
      v55 = v53[1];
      v56 = (v44 + v43[8]);
      *v56 = v54;
      v56[1] = v55;
      *(v44 + v43[9]) = *(v42 + v39[9]);
      *(v44 + v43[10]) = *(v42 + v39[11]);
      v57 = v42 + v39[13];
      LOWORD(v54) = *v57;
      LOBYTE(v57) = *(v57 + 2);
      v58 = v44 + v43[11];
      *v58 = v54;
      *(v58 + 2) = v57;
      *(v44 + v43[12]) = *(v42 + v39[14]);
      v59 = *(v42 + v39[16]);
      outlined copy of Data?(v49, v50);

      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v42, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      *(v44 + v43[13]) = v59;
      v60 = *(&v73 + 1);
      v24 = v73;
      outlined copy of Data._Representation(v73, *(&v73 + 1));
      outlined consume of Data._Representation(v24, v60);
      return v24;
    }

    v25 = v36;
    v24 = v37;
    v23 = v38;
    outlined consume of Data._Representation(0, 0xC000000000000000);

    outlined destroy of P256.Signing.PrivateKey?(v27, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    (*(v63 + 8))(v65, v64);
    outlined consume of Data._Representation(v73, *(&v73 + 1));
  }

  v40 = v72;
  *v72 = v25;
  v40[1] = v24;
  *(v40 + 16) = v23;
  return v24;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO0c17CertificateVerifyE0V07sendingcfG008originalE0AE5state_AA10ByteBufferV06serverfG5BytestAC0cfE0V_tAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v86 = a3;
  v79 = a1;
  v4 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for P256.Signing.ECDSASignature();
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v70 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v70 - v12;
  v14 = type metadata accessor for P256.Signing.PrivateKey();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  outlined init with copy of Any?(a2 + *(v18 + 20), v13, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v13, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B25F5000, v20, v21, "server attempting to send Certificate message but was not configured with a signing key. shouldn't get here", v22, 2u);
      MEMORY[0x1B274ECF0](v22, -1, -1);
    }

    v84 = xmmword_1B26C94A0;
    v23 = 2;
    LOBYTE(v85) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v24 = 0;
    v25 = 24;
    goto LABEL_25;
  }

  (*(v15 + 32))(v17, v13, v14);
  outlined init with copy of Any?(a2 + *(v4 + 20), v10, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v26 = (a2 + *(v4 + 24));
  if (v26[1])
  {
    v27 = v14;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, logger);
    v29 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v21))
    {
      v30 = v17;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B25F5000, v29, v21, "missing negotiated signature algorithm in server certificate verify", v31, 2u);
      v32 = v31;
      v17 = v30;
      MEMORY[0x1B274ECF0](v32, -1, -1);
    }

    v84 = xmmword_1B26C6400;
    v23 = 2;
    LOBYTE(v85) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of P256.Signing.PrivateKey?(v10, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    (*(v15 + 8))(v17, v27);
    v24 = 0;
    v25 = 6;
    goto LABEL_25;
  }

  v76 = v14;
  v77 = v17;
  v33 = *v26;
  v21 = v10;
  v34 = v83;
  result = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV35dataToSignInServerCertificateVerifyAA10ByteBufferVyAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5();
  v25 = result;
  v24 = v36;
  v23 = v37;
  if (v34)
  {
    outlined destroy of P256.Signing.PrivateKey?(v10, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    (*(v15 + 8))(v77, v76);
    goto LABEL_25;
  }

  v38 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    if (v38 == 2)
    {
      v39 = *(result + 24);
    }

    else
    {
      v39 = 0;
    }
  }

  else if (v38)
  {
    v39 = result >> 32;
  }

  else
  {
    v39 = BYTE6(v36);
  }

  v83 = 0;
  v75 = v33;
  if (v39 >= v37)
  {
    v40 = Data._Representation.subscript.getter();
    v42 = v41;
    v43 = v25;
    v44 = v40;
    outlined consume of Data._Representation(v43, v24);
    *&v84 = v44;
    *(&v84 + 1) = v42;
    lazy protocol witness table accessor for type Data and conformance Data();
    v46 = v82;
    v45 = v83;
    v21 = v77;
    P256.Signing.PrivateKey.signature<A>(for:)();
    if (!v45)
    {
      v73 = v44;
      v48 = P256.Signing.ECDSASignature.derRepresentation.getter();
      v50 = v49;
      (*(v80 + 8))(v46, v81);
      v51 = v50 >> 62;
      v71 = a2;
      v72 = v4;
      v74 = v42;
      if ((v50 >> 62) > 1)
      {
        v52 = 0;
        v53 = v48;
        if (v51 == 2)
        {
          v52 = *(v48 + 16);
        }
      }

      else
      {
        if (v51)
        {
          v52 = v48;
        }

        else
        {
          v52 = 0;
        }

        v53 = v48;
      }

      v84 = xmmword_1B26C6130;
      v85 = 0;
      specialized ByteBuffer.writeHandshakeMessage<A>(_:)(v75, v53, v50, v52);
      v82 = *(&v84 + 1);
      v83 = v84;
      _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV36addPreFinishedMessageToTransportHashyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v84, *(&v84 + 1), v85);
      outlined consume of Data._Representation(v73, v74);
      outlined consume of Data._Representation(v53, v50);
      v54 = v78;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v71, v78, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      v55 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
      v56 = v79;
      outlined init with take of P256.Signing.PublicKey?(v10, v79 + v55[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v57 = (v56 + v55[7]);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v54, v56, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v58 = v72;
      v59 = (v54 + v72[7]);
      v60 = *v59;
      v61 = v59[1];
      v62 = v59[2];
      v63 = (v56 + v55[6]);
      *v63 = v60;
      v63[1] = v61;
      v63[2] = v62;
      v64 = (v54 + v58[8]);
      v65 = v64[1];
      *v57 = *v64;
      v57[1] = v65;
      *(v56 + v55[8]) = *(v54 + v58[9]);
      *(v56 + v55[9]) = *(v54 + v58[10]);
      v66 = v54 + v58[11];
      v67 = *v66;
      LOBYTE(v66) = *(v66 + 2);
      v68 = v56 + v55[10];
      *v68 = v67;
      *(v68 + 2) = v66;
      *(v56 + v55[11]) = *(v54 + v58[12]);
      LOBYTE(v57) = *(v54 + v58[13]);
      outlined copy of Data?(v60, v61);

      v21 = v83;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v54, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      *(v56 + v55[12]) = v57;
      v69 = v82;
      outlined copy of Data._Representation(v21, v82);
      outlined consume of Data._Representation(v21, v69);
      (*(v15 + 8))(v77, v76);
      return v21;
    }

    v84 = xmmword_1B26C6420;
    v23 = 2;
    LOBYTE(v85) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v44, v42);
    outlined destroy of P256.Signing.PrivateKey?(v10, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    (*(v15 + 8))(v21, v76);
    v24 = 0;
    v25 = 32;
LABEL_25:
    v47 = v86;
    *v86 = v25;
    v47[1] = v24;
    *(v47 + 16) = v23;
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO0c8FinishedE0V07sendingcF0023serverCertificateVerifyE0AE5state_AA10ByteBufferV0hF5BytestAC0cijE0V_tAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v57 = a3;
  v48 = a1;
  v5 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - v12;
  outlined init with copy of Any?(a2 + *(v5 + 20), &v44 - v12, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v55, v10);
  if (v3)
  {
    v14 = v55[0];
    v15 = v55[1];
    v16 = v56;
    outlined destroy of P256.Signing.PrivateKey?(v13, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v25 = v57;
    *v57 = v14;
    v25[1] = v15;
    *(v25 + 16) = v16;
  }

  else
  {
    v45 = v5;
    v46 = a2;
    v47 = v7;
    v53 = v8;
    v54 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x1E69664B0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
    v18 = v49;
    (*(v49 + 16))(boxed_opaque_existential_1, v10, v8);
    __swift_project_boxed_opaque_existential_0(v52, v53);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v18 + 8))(v10, v8);
    v20 = v50;
    v19 = v51;
    __swift_destroy_boxed_opaque_existential_0(v52);
    v21 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      v22 = 0;
      v24 = v46;
      v23 = v47;
      if (v21 == 2)
      {
        v22 = *(v20 + 16);
      }
    }

    else
    {
      if (v21)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }

      v24 = v46;
      v23 = v47;
    }

    v14 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21sendingServerFinishedyAA10ByteBufferVAA0O7MessageVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v20, v19, v22);
    outlined consume of Data._Representation(v20, v19);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v24, v23, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
    v27 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
    v28 = v48;
    outlined init with take of P256.Signing.PublicKey?(v13, v48 + v27[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v23, v28, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v29 = v45;
    v30 = v23 + v45[6];
    v31 = *(v30 + 8);
    v57 = *v30;
    v49 = v31;
    v32 = *(v30 + 16);
    v33 = (v28 + v27[6]);
    *v33 = v57;
    v33[1] = v31;
    v33[2] = v32;
    v34 = (v23 + v29[7]);
    v35 = *v34;
    v46 = v34[1];
    v36 = v46;
    v47 = v32;
    v37 = (v28 + v27[7]);
    *v37 = v35;
    v37[1] = v36;
    *(v28 + v27[8]) = *(v23 + v29[8]);
    *(v28 + v27[9]) = *(v23 + v29[9]);
    v38 = v28 + v27[10];
    *v38 = 0;
    *(v38 + 2) = 1;
    v39 = v23 + v29[10];
    LOWORD(v35) = *v39;
    LOBYTE(v39) = *(v39 + 2);
    v40 = v28 + v27[11];
    *v40 = v35;
    *(v40 + 2) = v39;
    *(v28 + v27[12]) = 0;
    *(v28 + v27[13]) = *(v23 + v29[11]);
    v41 = v23;
    v42 = v27[14];
    v43 = type metadata accessor for PAKEServerState(0);
    (*(*(v43 - 8) + 56))(v28 + v42, 1, 1, v43);
    LOBYTE(v42) = *(v41 + v29[12]);
    outlined copy of Data?(v57, v49);

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v41, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
    *(v28 + v27[15]) = v42;
  }

  return v14;
}

uint64_t specialized ServerSessionKeyManager.serverApplicationTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  outlined init with copy of Any?(v2, &v22 - v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with take of P256.Signing.PublicKey?(v12, v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
      v14 = *(v4 + 36);
      v15 = type metadata accessor for SymmetricKey();
      v16 = *(v15 - 8);
      (*(v16 + 16))(a1, &v6[v14], v15);
      outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
      return (*(v16 + 56))(a1, 0, 1, v15);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
    v18 = type metadata accessor for SymmetricKey();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  outlined init with take of P256.Signing.PublicKey?(v12, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v19 = *(v7 + 52);
  v20 = type metadata accessor for SymmetricKey();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a1, &v9[v19], v20);
  outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  return (*(v21 + 56))(a1, 0, 1, v20);
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO0c8FinishedE0V07sendingcF0025serverEncryptedExtensionsE0AE5state_AA10ByteBufferV0hF5BytestAC0cijE0V_tAA8TLSErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v16;
  if (*(a2 + v7[10]) & 1) == 0 && (*(a2 + v7[12] + 2))
  {
    __break(1u);
  }

  else
  {
    v30 = v17;
    outlined init with copy of Any?(a2 + v7[5], &v29 - v16, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21serverFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v36, v12);
    if (v3)
    {
      v19 = v36[0];
      v20 = v36[1];
      v21 = v37;
      outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      *a3 = v19;
      *(a3 + 8) = v20;
      *(a3 + 16) = v21;
    }

    else
    {
      v29 = a1;
      v34 = v9;
      v35 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x1E69664B0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
      (*(v10 + 16))(boxed_opaque_existential_1, v12, v9);
      __swift_project_boxed_opaque_existential_0(v33, v34);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v10 + 8))(v12, v9);
      v24 = v31;
      v23 = v32;
      __swift_destroy_boxed_opaque_existential_0(v33);
      v25 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        v26 = 0;
        if (v25 == 2)
        {
          v26 = *(v24 + 16);
        }
      }

      else if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      v19 = _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21sendingServerFinishedyAA10ByteBufferVAA0O7MessageVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v24, v23, v26);
      v27 = v38;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a2, v38, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v28 = v30;
      outlined init with copy of Any?(v18, v30, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      ServerHandshakeState.ServerFinishedState.init(originalState:keyScheduler:)(v27, v28, v29);
      outlined consume of Data._Representation(v24, v23);
      outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    }

    return v19;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO05ReadyE0V23receivingClientFinished08originalE006clientI00kI5BytesAeC0ciE0V_AA0I7MessageVAA10ByteBufferVtAA8TLSErrorOYKFZ@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v96 = a3;
  v97 = a8;
  v90 = a7;
  v94 = a5;
  v95 = a6;
  v92 = a2;
  v93 = a4;
  v88 = a9;
  v10 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v87 = &v82 - v13;
  v86 = type metadata accessor for PAKEServerState(0);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v91 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v82 - v20;
  v22 = a1;
  outlined init with copy of Any?(a1 + *(v10 + 20), &v82 - v20, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v23 = v104;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21clientFinishedPayload9CryptoKit24HashedAuthenticationCodeVyxGyAA8TLSErrorOYKFAF6SHA384V_Tg5(v100, v18);
  if (v23)
  {
    v25 = v100[0];
    v24 = v100[1];
    v26 = v101;
    result = outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
LABEL_17:
    v42 = v97;
    *v97 = v25;
    v42[1] = v24;
    *(v42 + 16) = v26;
    return result;
  }

  v29 = v94;
  v28 = v95;
  v104 = v22;
  v82 = v15;
  v83 = v10;
  v30 = v96 >> 62;
  v84 = v21;
  if ((v96 >> 62) > 1)
  {
    v31 = v16;
    if (v30 == 2)
    {
      v32 = *(v92 + 24);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v31 = v16;
    if (v30)
    {
      v32 = v92 >> 32;
    }

    else
    {
      v32 = BYTE6(v96);
    }
  }

  if (v32 < v93)
  {
    __break(1u);
    goto LABEL_35;
  }

  v16 = Data._Representation.subscript.getter();
  v10 = v33;
  *&v98 = v16;
  *(&v98 + 1) = v33;
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x1E69664B8]);
  lazy protocol witness table accessor for type Data and conformance Data();
  if ((static MessageAuthenticationCode.== infix<A>(_:_:)() & 1) == 0)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_14:
      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, logger);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v91;
      if (v37)
      {
        v39 = v16;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1B25F5000, v35, v36, "invalid client finished payload", v40, 2u);
        v41 = v40;
        v16 = v39;
        MEMORY[0x1B274ECF0](v41, -1, -1);
      }

      v98 = xmmword_1B26C6400;
      v26 = 2;
      v99 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v16, v10);
      (*(v38 + 8))(v18, v31);
      result = outlined destroy of P256.Signing.PrivateKey?(v84, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v24 = 0;
      v25 = 6;
      goto LABEL_17;
    }

LABEL_35:
    swift_once();
    goto LABEL_14;
  }

  v93 = v16;
  v96 = v10;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18postClientFinishedyyAA10ByteBufferVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(v29, v28, v90);
  v95 = v18;
  v43 = v83;
  v44 = v104;
  v45 = v87;
  outlined init with copy of Any?(v104 + v83[14], v87, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v46 = v86;
  v47 = (*(v85 + 48))(v45, 1, v86);
  v48 = v91;
  if (v47 == 1)
  {
    (*(v91 + 8))(v95, v31);
    outlined consume of Data._Representation(v93, v96);
    outlined destroy of P256.Signing.PrivateKey?(v45, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v49 = v88;
    v50 = v89;
  }

  else
  {
    v51 = v82;
    outlined init with take of ServerHandshakeState.IdleState(v45, v82, type metadata accessor for PAKEServerState);
    v52 = v51 + *(v46 + 32);
    v53 = *(v52 + 104);
    v103 = *(v52 + 120);
    v54 = *(v52 + 88);
    v102[0] = *(v52 + 72);
    v102[1] = v54;
    v102[2] = v53;
    v49 = v88;
    if (one-time initialization token for SwiftTLSPAKELimiter != -1)
    {
      swift_once();
    }

    v55 = (*(*SwiftTLSPAKELimiter + 112))(v102);
    v50 = v89;
    if ((v55 & 1) == 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, logger);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      v79 = os_log_type_enabled(v77, v78);
      v80 = v96;
      if (v79)
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_1B25F5000, v77, v78, "error restoring PAKE Credential Attempt. This should never happen.", v81, 2u);
        MEMORY[0x1B274ECF0](v81, -1, -1);
      }

      v25 = 0xD000000000000027;

      v24 = 0x80000001B26CDDC0;
      *&v98 = 0xD000000000000027;
      *(&v98 + 1) = 0x80000001B26CDDC0;
      v26 = 1;
      v99 = 1;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v93, v80);
      (*(v48 + 8))(v95, v31);
      outlined destroy of P256.Signing.PrivateKey?(v84, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v82, type metadata accessor for PAKEServerState);
      goto LABEL_17;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, logger);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1B25F5000, v57, v58, "restored PAKE credential attempt", v59, 2u);
      v60 = v59;
      v43 = v83;
      MEMORY[0x1B274ECF0](v60, -1, -1);
    }

    outlined consume of Data._Representation(v93, v96);

    (*(v48 + 8))(v95, v31);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v82, type metadata accessor for PAKEServerState);
    v44 = v104;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v44, v50, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v44, v49, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  outlined init with take of P256.Signing.PublicKey?(v84, v49 + ready[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v62 = (v50 + v43[6]);
  v63 = *v62;
  v64 = v62[1];
  v65 = v62[2];
  v66 = (v49 + ready[6]);
  *v66 = v63;
  v66[1] = v64;
  v66[2] = v65;
  v67 = (v50 + v43[7]);
  v68 = *v67;
  v69 = v67[1];
  v70 = (v49 + ready[7]);
  *v70 = v68;
  v70[1] = v69;
  *(v49 + ready[8]) = *(v50 + v43[8]);
  *(v49 + ready[9]) = *(v50 + v43[9]);
  v71 = v50 + v43[10];
  LOWORD(v68) = *v71;
  LOBYTE(v71) = *(v71 + 2);
  v72 = v49 + ready[10];
  *v72 = v68;
  *(v72 + 2) = v71;
  v73 = v50 + v43[11];
  LOWORD(v68) = *v73;
  LOBYTE(v73) = *(v73 + 2);
  v74 = v49 + ready[11];
  *v74 = v68;
  *(v74 + 2) = v73;
  *(v49 + ready[12]) = *(v50 + v43[12]);
  *(v49 + ready[13]) = *(v50 + v43[13]);
  v75 = *(v50 + v43[15]);
  outlined copy of Data?(v63, v64);

  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v50, type metadata accessor for ServerHandshakeState.ServerFinishedState);
  *(v49 + ready[14]) = v75;
  return result;
}

uint64_t specialized ServerSessionKeyManager.clientApplicationTrafficSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  outlined init with copy of Any?(v2, &v21 - v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with take of P256.Signing.PublicKey?(v12, v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
      v14 = type metadata accessor for SymmetricKey();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a1, v6, v14);
      outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO10AllSecretsVy9CryptoKit6SHA384V__GMR);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    outlined destroy of P256.Signing.PrivateKey?(v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
    v17 = type metadata accessor for SymmetricKey();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  outlined init with take of P256.Signing.PublicKey?(v12, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  v18 = *(v7 + 48);
  v19 = type metadata accessor for SymmetricKey();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a1, &v9[v18], v19);
  outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretVy9CryptoKit6SHA384V__GMR);
  return (*(v20 + 56))(a1, 0, 1, v19);
}

uint64_t ServerHandshakeState.IdleState.epsks.getter()
{
  type metadata accessor for ServerHandshakeState.IdleState(0);
}

uint64_t ServerHandshakeState.IdleState.externalPSKSelectionCallback.getter()
{
  v1 = (v0 + *(type metadata accessor for ServerHandshakeState.IdleState(0) + 28));
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t ServerHandshakeState.IdleState.pakeRecords.getter()
{
  v1 = (v0 + *(type metadata accessor for ServerHandshakeState.IdleState(0) + 32));
  v2 = *v1;
  outlined copy of PAKEServerRecords?(*v1, v1[1]);
  return v2;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.clientOfferedSignatureAlgs.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.clientRequestedServerCertificateTypes.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.clientALPN.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.clientOfferedPSKs.getter()
{
  v1 = *(v0 + 88);
  outlined copy of PAKEServerRecords?(v1, *(v0 + 96));
  return v1;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.clientOfferedPSKs.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Extension.PreSharedKey.OfferedPSKs?(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.externalPSKSelectionCallback.getter()
{
  v1 = *(v0 + 216);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(v1, *(v0 + 224));
  return v1;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.pakeRecords.getter()
{
  v1 = *(v0 + 232);
  outlined copy of PAKEServerRecords?(v1, *(v0 + 240));
  return v1;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV16processExtensionyyAA0J0OAA8TLSErrorOYKF(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v53 = *(a1 + 40);
  v54 = *(a1 + 24);
  v52 = *(a1 + 56);
  v5 = *(a1 + 9);
  v6 = *(a1 + 80);
  v8 = 0;
  switch(v6 >> 4)
  {
    case 1u:
      v8 = 10;
      break;
    case 2u:
      v8 = 43;
      break;
    case 3u:
      v8 = 16;
      break;
    case 4u:
      v8 = 51;
      break;
    case 5u:
      v8 = 42;
      break;
    case 6u:
      v8 = 13;
      break;
    case 7u:
      v8 = 20;
      break;
    case 8u:
      v8 = 57;
      break;
    case 9u:
      v8 = 45;
      break;
    case 0xAu:
      v8 = 41;
      break;
    case 0xBu:
      v8 = 58;
      break;
    case 0xCu:
      v8 = 35387;
      break;
    case 0xDu:
      v8 = *a1;
      break;
    default:
      break;
  }

  if (specialized Set._Variant.insert(_:)(&v66, v8, &_ss11_SetStorageCy15SwiftTLSLibrary13ExtensionTypeVGMd, &_ss11_SetStorageCy15SwiftTLSLibrary13ExtensionTypeVGMR, &type metadata for ExtensionType))
  {
    v9 = v3;
    v10 = *a1;
    v11 = a1[1];
    v13 = *(a1 + 4);
    v12 = *(a1 + 5);
    v14 = *(a1 + 6);
    v15 = *(a1 + 80);
    switch(v15 >> 4)
    {
      case 1u:
        v55 = *a1;

        *(v1 + 16) = v55;
        return 5;
      case 2u:
        if (BYTE8(v10))
        {
          goto LABEL_42;
        }

        v59 = *a1;
        sub_1B260EDD8(v2, v9 & 1);

        *(v1 + 24) = v59;
        return 5;
      case 3u:
        if (v11)
        {
          goto LABEL_42;
        }

        v57 = *a1;
        outlined copy of Extension.ApplicationLayerProtocolNegotiation(v2, v9, v4 & 1);

        *(v1 + 80) = v57;
        return 5;
      case 4u:
        if ((v11 & 0x3000000000000000) != 0)
        {
          goto LABEL_42;
        }

        v61 = *a1;
        outlined copy of Extension.KeyShare(v2, v9, v4);

        *(v1 + 8) = v61;
        return 5;
      case 5u:
        *(v1 + 104) = 1;
        return 5;
      case 6u:
        v60 = *a1;

        *(v1 + 32) = v60;
        return 5;
      case 7u:
        if (BYTE8(v10))
        {
          goto LABEL_42;
        }

        v64 = *a1;
        sub_1B260EDD8(v2, v9 & 1);

        *(v1 + 40) = v64;
        return 5;
      case 8u:
        v29 = *(v1 + 56);
        v30 = *(v1 + 64);
        v58 = v10;
        v50 = v11;
        outlined copy of Data._Representation(v2, v9);
        outlined consume of ByteBuffer?(v29, v30);
        *(v1 + 56) = v58;
        *(v1 + 72) = v50;
        return 5;
      case 9u:
        v63 = *a1;

        *(v1 + 48) = v63;
        return 5;
      case 0xAu:
        if (v11)
        {
          goto LABEL_42;
        }

        v22 = *(v1 + 88);
        v23 = *(v1 + 96);
        v56 = v10;

        outlined consume of Extension.PreSharedKey.OfferedPSKs?(v22, v23);
        *(v1 + 88) = v56;
        return 5;
      case 0xBu:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, logger);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v25, v26))
        {
          goto LABEL_76;
        }

        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1B25F5000, v25, v26, "skipped processing ticket_request in CH", v27, 2u);
        v28 = v27;
        goto LABEL_75;
      case 0xCu:
        if (v15)
        {
          goto LABEL_42;
        }

        v31 = *(v1 + 112);
        v48 = *(v1 + 128);
        v49 = *(v1 + 120);
        v46 = *(v1 + 144);
        v47 = *(v1 + 136);
        v44 = *(v1 + 160);
        v45 = *(v1 + 152);
        *&v66 = v2;
        *(&v66 + 1) = v9;
        v51 = v11;
        v68 = v54;
        v69 = v53;
        v70 = v52;
        v67 = v4;
        v71 = v5;
        v72 = v6 & 0xF;
        v62 = v10;
        outlined init with copy of Extension.PAKE(&v66, v65);
        outlined consume of Extension.PAKE.PAKEClientHello?(v31, v49, v48, v47, v46, v45, v44);
        *(v1 + 112) = v62;
        *(v1 + 128) = v51;
        *(v1 + 144) = v13;
        *(v1 + 152) = v12;
        *(v1 + 160) = v14;
        break;
      case 0xDu:
LABEL_42:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, logger);
        outlined init with copy of Extension(a1, &v66);
        v25 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        outlined destroy of Extension(a1);
        if (os_log_type_enabled(v25, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *&v66 = v35;
          *v34 = 136315138;
          v36 = 0;
          switch(*(a1 + 80) >> 4)
          {
            case 1:
              v36 = 10;
              break;
            case 2:
              v36 = 43;
              break;
            case 3:
              v36 = 16;
              break;
            case 4:
              v36 = 51;
              break;
            case 5:
              v36 = 42;
              break;
            case 6:
              v36 = 13;
              break;
            case 7:
              v36 = 20;
              break;
            case 8:
              v36 = 57;
              break;
            case 9:
              v36 = 45;
              break;
            case 0xA:
              v36 = 41;
              break;
            case 0xB:
              v36 = 58;
              break;
            case 0xC:
              v36 = -30149;
              break;
            case 0xD:
              v36 = *a1;
              break;
            default:
              break;
          }

          v40 = ExtensionType.description.getter(v36);
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v66);

          *(v34 + 4) = v42;
          _os_log_impl(&dword_1B25F5000, v25, v33, "skipped unknown/unsupported client extension with raw value %s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x1B274ECF0](v35, -1, -1);
          v28 = v34;
LABEL_75:
          MEMORY[0x1B274ECF0](v28, -1, -1);
        }

LABEL_76:

        break;
      default:
        return 5;
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);
    outlined init with copy of Extension(a1, &v66);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    outlined destroy of Extension(a1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v66 = v20;
      *v19 = 136315138;
      v21 = 0;
      switch(*(a1 + 80) >> 4)
      {
        case 1:
          v21 = 10;
          break;
        case 2:
          v21 = 43;
          break;
        case 3:
          v21 = 16;
          break;
        case 4:
          v21 = 51;
          break;
        case 5:
          v21 = 42;
          break;
        case 6:
          v21 = 13;
          break;
        case 7:
          v21 = 20;
          break;
        case 8:
          v21 = 57;
          break;
        case 9:
          v21 = 45;
          break;
        case 0xA:
          v21 = 41;
          break;
        case 0xB:
          v21 = 58;
          break;
        case 0xC:
          v21 = -30149;
          break;
        case 0xD:
          v21 = *a1;
          break;
        default:
          break;
      }

      v37 = ExtensionType.description.getter(v21);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v66);

      *(v19 + 4) = v39;
      _os_log_impl(&dword_1B25F5000, v17, v18, "client offered duplicate extension of type %s on server hello", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B274ECF0](v20, -1, -1);
      MEMORY[0x1B274ECF0](v19, -1, -1);
    }

    v66 = xmmword_1B26C6410;
    LOBYTE(v67) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v73 = 1;
  }

  return 5;
}

uint64_t ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult.binderValue.getter()
{
  v1 = v0 + *(type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0) + 24);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

int *ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult.init(negotiatedPSK:pskIndex:binderValue:bindersArrayLength:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  outlined init with take of ServerHandshakeState.IdleState(a1, a7, type metadata accessor for GeneralEPSK);
  result = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
  *(a7 + result[5]) = a2;
  v14 = (a7 + result[6]);
  *v14 = a3;
  v14[1] = a4;
  v14[2] = a5;
  *(a7 + result[7]) = a6;
  return result;
}

void _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV12negotiatePSK14externalPSKKDFAE20negotiatedEPSKResultVSgAA16TLSKDFIdentifierV_tAA8TLSErrorOYKF(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = v5;
  v366 = a2;
  v365 = a1;
  v402 = *MEMORY[0x1E69E9840];
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  MEMORY[0x1EEE9AC00](v368);
  v11 = &v341 - v10;
  v12 = type metadata accessor for RawEPSK(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v372 = (&v341 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ImportedPSK(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v371 = &v341 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v373 = &v341 - v17;
  v381 = type metadata accessor for PSK(0);
  v18 = MEMORY[0x1EEE9AC00](v381);
  v377 = &v341 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v374 = &v341 - v20;
  v21 = type metadata accessor for GeneralEPSK(0);
  v370 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v375 = &v341 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v376 = &v341 - v27;
  v28 = v4[11];
  if (!v28)
  {
    goto LABEL_396;
  }

  v358 = v11;
  v359 = v26;
  v379 = v4;
  v29 = v4[12];
  v362 = v25;
  v363 = v29;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_417;
  }

  while (1)
  {
    v30 = type metadata accessor for Logger();
    v382 = __swift_project_value_buffer(v30, logger);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B25F5000, v31, v32, "client offered psks, attempting to negotiate", v6, 2u);
      MEMORY[0x1B274ECF0](v6, -1, -1);
    }

    v33 = v379;
    v34 = v379[6];
    if (!v34)
    {
      v285 = Logger.logObject.getter();
      v286 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v285, v286))
      {
        v287 = swift_slowAlloc();
        *v287 = 0;
        _os_log_impl(&dword_1B25F5000, v285, v286, "client sent psk extension without psk_key_exchange_modes", v287, 2u);
        MEMORY[0x1B274ECF0](v287, -1, -1);
      }

      v388 = xmmword_1B26C94C0;
      v389 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v288 = 25;
      goto LABEL_386;
    }

    v35 = *(v34 + 16);
    v36 = (v34 + 32);
    do
    {
      if (!v35)
      {
        v289 = Logger.logObject.getter();
        v290 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v289, v290))
        {
          v291 = swift_slowAlloc();
          *v291 = 0;
          _os_log_impl(&dword_1B25F5000, v289, v290, "server ignoring offererd pre shared keys because it did not offer psk_dhe mode", v291, 2u);
          MEMORY[0x1B274ECF0](v291, -1, -1);
        }

        goto LABEL_396;
      }

      v37 = *v36++;
      --v35;
    }

    while (v37 != 1);
    v38 = *(v28 + 16);
    if (v38 != *(v363 + 16))
    {
      v292 = Logger.logObject.getter();
      v293 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v292, v293))
      {
        v294 = swift_slowAlloc();
        *v294 = 0;
        _os_log_impl(&dword_1B25F5000, v292, v293, "offered psk identities doesn't match number of binders", v294, 2u);
        MEMORY[0x1B274ECF0](v294, -1, -1);
      }

      v388 = xmmword_1B26C94B0;
      v389 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v288 = 33;
LABEL_386:
      *a3 = v288;
      *(a3 + 8) = 0;
      *(a3 + 16) = 2;
      return;
    }

    v348 = a4;
    v369 = v38;
    if (!v38)
    {
      v346 = 0;
      v353 = MEMORY[0x1E69E7CC0];
      v354 = MEMORY[0x1E69E7CC0];
LABEL_388:
      v295 = swift_allocBox();
      v297 = v296;
      (*(v370 + 56))(v296, 1, 1, v362);
      v298 = swift_allocObject();
      *(v298 + 16) = 0;
      *(v298 + 18) = 1;
      v299 = v379;
      v300 = v379[27];
      if (v300)
      {
        v301 = v379[28];
        v302 = swift_allocObject();
        v367 = v8;
        v303 = v302;
        v304 = v299[13];
        *(v302 + 208) = v299[12];
        *(v302 + 224) = v304;
        *(v302 + 240) = v299[14];
        *(v302 + 249) = *(v299 + 233);
        v305 = v299[9];
        *(v302 + 144) = v299[8];
        *(v302 + 160) = v305;
        v306 = v299[11];
        *(v302 + 176) = v299[10];
        *(v302 + 192) = v306;
        v307 = v299[5];
        *(v302 + 80) = v299[4];
        *(v302 + 96) = v307;
        v308 = v299[7];
        *(v302 + 112) = v299[6];
        *(v302 + 128) = v308;
        v309 = v299[1];
        *(v302 + 16) = *v299;
        *(v302 + 32) = v309;
        v310 = v299[3];
        *(v302 + 48) = v299[2];
        *(v302 + 64) = v310;
        v311 = v353;
        *(v302 + 272) = v298;
        *(v302 + 280) = v311;
        *(v302 + 288) = v295;
        *(v302 + 296) = v365;
        *(v302 + 304) = v366;
        outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(v300, v301);
        outlined init with copy of ServerHandshakeState.ClientHelloVerifier(v299, &v388);

        v300(v354, _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV12negotiatePSK14externalPSKKDFAE20negotiatedEPSKResultVSgAA16TLSKDFIdentifierV_tAA8TLSErrorOYKFySi_AA4EPSKVSgtcfU_Tf2nnnninn_nTA, v303);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v300, v301);
      }

      else
      {
      }

      v312 = v359;
      swift_beginAccess();
      v313 = v358;
      outlined init with copy of Any?(v297, v358, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
      if ((*(v370 + 48))(v313, 1, v362) == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v313, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
      }

      else
      {
        outlined init with take of ServerHandshakeState.IdleState(v313, v312, type metadata accessor for GeneralEPSK);
        swift_beginAccess();
        if (*(v298 + 18) != 1)
        {
          v315 = *(v298 + 16);
          v316 = Logger.logObject.getter();
          v317 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v316, v317))
          {
            v318 = v315;
            v319 = swift_slowAlloc();
            *v319 = 0;
            _os_log_impl(&dword_1B25F5000, v316, v317, "epsk selected", v319, 2u);
            v320 = v319;
            v315 = v318;
            MEMORY[0x1B274ECF0](v320, -1, -1);
          }

          v386 = v295;

          v321 = v359;
          v322 = v348;
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v359, v348, type metadata accessor for GeneralEPSK);
          if (v369 <= v315)
          {
            goto LABEL_453;
          }

          v323 = (v363 + 24 * v315);
          v324 = v323[4];
          v325 = v323[5];
          v326 = v323[6];
          outlined copy of Data._Representation(v324, v325);
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v321, type metadata accessor for GeneralEPSK);
          v327 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
          *(v322 + v327[5]) = v315;
          v328 = (v322 + v327[6]);
          *v328 = v324;
          v328[1] = v325;
          v328[2] = v326;
          *(v322 + v327[7]) = v346;
          (*(*(v327 - 1) + 56))(v322, 0, 1, v327);

          return;
        }

        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v312, type metadata accessor for GeneralEPSK);
      }

      a4 = v348;
LABEL_396:
      v314 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
      (*(*(v314 - 8) + 56))(a4, 1, 1, v314);
      return;
    }

    v39 = 0;
    v40 = (v363 + 48);
    v41 = v38;
LABEL_12:
    v42 = *(v40 - 2);
    v43 = *(v40 - 1);
    v44 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      v46 = v44 == 2 ? *(v42 + 24) : 0;
    }

    else
    {
      v45 = BYTE6(v43);
      v46 = v42 >> 32;
      if (!v44)
      {
        v46 = v45;
      }
    }

    v47 = __OFSUB__(v46, *v40);
    v48 = v46 - *v40;
    if (v47)
    {
      break;
    }

    v47 = __OFADD__(v39, v48);
    v39 += v48;
    if (v47)
    {
      goto LABEL_412;
    }

    v40 += 3;
    if (--v41)
    {
      goto LABEL_12;
    }

    v346 = v39;
    v49 = 0;
    v361 = &v388;
    v50 = v28 + 56;
    v51 = v363 + 48;
    v355 = xmmword_1B26C6130;
    v353 = MEMORY[0x1E69E7CC0];
    v354 = MEMORY[0x1E69E7CC0];
    v344 = v363 + 48;
    v345 = v28 + 56;
LABEL_23:
    v28 = v50 + 32 * v49;
    v52 = (v51 + 24 * v49);
    v53 = v49;
    while (v53 < v38)
    {
      if (__OFADD__(v53, 1))
      {
        goto LABEL_415;
      }

      v383 = v52;
      v384 = v53 + 1;
      v54 = *(v28 - 24);
      v6 = *(v28 - 16);
      v55 = *(v28 - 8);
      v56 = *v28;
      v385 = v53;
      v386 = v54;
      outlined copy of Data._Representation(v54, v6);
      if (v56)
      {
        v57 = Logger.logObject.getter();
        a3 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v57, a3))
        {
          v58 = v55;
          v59 = v6;
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_1B25F5000, v57, a3, "psk has non 0 obfuscated ticket age. still attempting to treat as an epsk.", v60, 2u);
          v61 = v60;
          v6 = v59;
          v55 = v58;
          MEMORY[0x1B274ECF0](v61, -1, -1);
        }
      }

      if (*(v33 + 208))
      {
        v67 = *(v33 + 200);
        a4 = *(v67 + 16);
        v68 = v377;
        v380 = v6;
        if (!a4)
        {
          v70 = v386;
LABEL_366:
          outlined copy of Data._Representation(v70, v6);
          specialized SwiftOfferedEPSK.init(external_identity:context:)(v70, v6, v55, 0, 0xF000000000000000, 0);
          v271 = v270;
          v273 = v272;
          v275 = v274;
          v277 = v276;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v354 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v354 + 2) + 1, 1, v354);
          }

          v279 = *(v354 + 2);
          v278 = *(v354 + 3);
          if (v279 >= v278 >> 1)
          {
            v354 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v278 > 1), v279 + 1, 1, v354);
          }

          v280 = v354;
          *(v354 + 2) = v279 + 1;
          v281 = &v280[32 * v279];
          *(v281 + 4) = v271;
          *(v281 + 5) = v273;
          *(v281 + 6) = v275;
          *(v281 + 7) = v277;
          if (v385 >= 0x10000)
          {
            goto LABEL_451;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = v379;
          v6 = v380;
          v267 = v386;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v353 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v353 + 2) + 1, 1, v353);
          }

          a3 = *(v353 + 2);
          v283 = *(v353 + 3);
          v269 = a3 + 1;
          if (a3 >= v283 >> 1)
          {
            v353 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v283 > 1), a3 + 1, 1, v353);
          }

          goto LABEL_375;
        }

        v69 = v67 + ((*(v370 + 80) + 32) & ~*(v370 + 80));
        v70 = v386;
        v343 = v386 >> 32;
        v347 = BYTE6(v6);
        v351 = *(v370 + 72);
        v352 = v6 >> 62;
        v71 = v375;
        v360 = v55;
        while (2)
        {
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v69, v71, type metadata accessor for GeneralEPSK);
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v71, v68, type metadata accessor for PSK);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v356 = v69;
          if (EnumCaseMultiPayload == 1)
          {
            v73 = v372;
            outlined init with take of ServerHandshakeState.IdleState(v68, v372, type metadata accessor for RawEPSK);
            v74 = v70;
            v75 = a4;
            v77 = *v73;
            v76 = v73[1];
            v78 = v73[2];
            outlined copy of Data._Representation(v74, v6);
            v364 = v77;
            v378 = v76;
            v79 = v76;
            v80 = v75;
            outlined copy of Data._Representation(v77, v79);
            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v73, type metadata accessor for RawEPSK);
            v81 = v352;
            goto LABEL_112;
          }

          v350 = a4;
          v367 = v8;
          v82 = v68;
          v83 = v371;
          outlined init with take of ServerHandshakeState.IdleState(v82, v371, type metadata accessor for ImportedPSK);
          v85 = *v83;
          v84 = *(v83 + 8);
          v86 = *(v83 + 16);
          v357 = *(v83 + 24);
          v87 = *(v83 + 32);
          v349 = *(v83 + 40);
          v88 = *(v83 + 48);
          v89 = *(v83 + 50);
          v392 = v355;
          v393 = 0;
          v90 = v84 >> 62;
          if ((v84 >> 62) > 1)
          {
            v91 = 0;
            if (v90 == 2)
            {
              v91 = *(v85 + 24);
            }
          }

          else if (v90)
          {
            v91 = v85 >> 32;
          }

          else
          {
            v91 = BYTE6(v84);
          }

          v47 = __OFSUB__(v91, v86);
          v92 = v91 - v86;
          if (v47)
          {
            goto LABEL_427;
          }

          if ((v92 & 0x8000000000000000) != 0)
          {
            goto LABEL_428;
          }

          LODWORD(v364) = v88;
          LODWORD(v378) = v89;
          if (v92 >> 16)
          {
            goto LABEL_429;
          }

          v387 = bswap32(v92) >> 16;
          v390 = MEMORY[0x1E69E6290];
          v391 = MEMORY[0x1E6969DF8];
          *&v388 = &v387;
          *(&v388 + 1) = v361;
          __swift_project_boxed_opaque_existential_0(&v388, MEMORY[0x1E69E6290]);
          outlined copy of Data._Representation(v386, v380);
          Data._Representation.append(contentsOf:)();
          __swift_destroy_boxed_opaque_existential_0(&v388);
          if (v90 > 1)
          {
            v95 = v87;
            if (v90 == 2)
            {
              v94 = *(v85 + 16);
              v93 = *(v85 + 24);
            }

            else
            {
              v93 = 0;
              v94 = 0;
            }
          }

          else
          {
            if (v90)
            {
              v93 = v85 >> 32;
            }

            else
            {
              v93 = BYTE6(v84);
            }

            if (v90)
            {
              v94 = v85;
            }

            else
            {
              v94 = 0;
            }

            v95 = v87;
          }

          if (v93 < v86 || v93 < v94)
          {
            goto LABEL_430;
          }

          v96 = Data._Representation.subscript.getter();
          v98 = v97;
          Data.append(_:)();
          outlined consume of Data._Representation(v96, v98);
          if (v95 >> 60 == 15)
          {
            v387 = 0;
            v99 = MEMORY[0x1E69E6290];
            v390 = MEMORY[0x1E69E6290];
            v100 = MEMORY[0x1E6969DF8];
            v391 = MEMORY[0x1E6969DF8];
            v101 = v361;
            *&v388 = &v387;
            *(&v388 + 1) = v361;
            __swift_project_boxed_opaque_existential_0(&v388, MEMORY[0x1E69E6290]);
            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_0(&v388);
            v8 = v367;
            goto LABEL_99;
          }

          v102 = v95 >> 62;
          v8 = v367;
          if ((v95 >> 62) > 1)
          {
            v103 = MEMORY[0x1E6969DF8];
            v104 = v357;
            v105 = v349;
            if (v102 != 2)
            {
              v106 = 0;
              goto LABEL_83;
            }

            v106 = *(v357 + 24);
          }

          else
          {
            v103 = MEMORY[0x1E6969DF8];
            v104 = v357;
            v105 = v349;
            if (!v102)
            {
              v106 = BYTE6(v95);
LABEL_83:
              v107 = v106 - v105;
              if (__OFSUB__(v106, v105))
              {
                goto LABEL_436;
              }

              if ((v107 & 0x8000000000000000) != 0)
              {
                goto LABEL_437;
              }

              if (v107 >> 16)
              {
                goto LABEL_438;
              }

              v387 = bswap32(v107) >> 16;
              v390 = MEMORY[0x1E69E6290];
              v391 = v103;
              *&v388 = &v387;
              *(&v388 + 1) = v361;
              __swift_project_boxed_opaque_existential_0(&v388, MEMORY[0x1E69E6290]);
              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_0(&v388);
              if (v102 > 1)
              {
                if (v102 == 2)
                {
                  v109 = *(v104 + 16);
                  v108 = *(v104 + 24);
                }

                else
                {
                  v108 = 0;
                  v109 = 0;
                }
              }

              else
              {
                if (v102)
                {
                  v108 = v104 >> 32;
                }

                else
                {
                  v108 = BYTE6(v95);
                }

                if (v102)
                {
                  v109 = v104;
                }

                else
                {
                  v109 = 0;
                }
              }

              if (v108 < v105 || v108 < v109)
              {
                goto LABEL_439;
              }

              v110 = Data._Representation.subscript.getter();
              v112 = v111;
              Data.append(_:)();
              outlined consume of ByteBuffer?(v104, v95);
              outlined consume of Data._Representation(v110, v112);
              v101 = v361;
              v99 = MEMORY[0x1E69E6290];
              v100 = MEMORY[0x1E6969DF8];
LABEL_99:
              v387 = __rev16(v364);
              v390 = v99;
              v391 = v100;
              *&v388 = &v387;
              *(&v388 + 1) = v101;
              __swift_project_boxed_opaque_existential_0(&v388, v99);
              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_0(&v388);
              v387 = __rev16(v378);
              v390 = v99;
              v391 = v100;
              *&v388 = &v387;
              *(&v388 + 1) = v101;
              __swift_project_boxed_opaque_existential_0(&v388, v99);
              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_0(&v388);
              v113 = v392;
              v114 = *(&v392 + 1) >> 62;
              if ((*(&v392 + 1) >> 62) <= 1)
              {
                v55 = v360;
                v115 = v350;
                if (!v114)
                {
                  goto LABEL_106;
                }

                v116 = v392 >> 32;
LABEL_105:
                if (v116 < 0)
                {
                  goto LABEL_431;
                }

                goto LABEL_106;
              }

              v55 = v360;
              v115 = v350;
              if (v114 == 2)
              {
                v116 = *(v392 + 24);
                goto LABEL_105;
              }

LABEL_106:
              v364 = Data._Representation.subscript.getter();
              v118 = v117;
              outlined consume of Data._Representation(v113, *(&v113 + 1));
              v78 = 0;
              v378 = v118;
              v119 = v118 >> 62;
              if ((v118 >> 62) > 1)
              {
                v81 = v352;
                if (v119 == 2)
                {
                  v78 = *(v364 + 16);
                }
              }

              else
              {
                v81 = v352;
                if (v119)
                {
                  v78 = v364;
                }
              }

              _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v371, type metadata accessor for ImportedPSK);
              v80 = v115;
LABEL_112:
              v33 = v364;
              if (v81 > 1)
              {
                if (v81 == 2)
                {
                  v120 = *(v386 + 24);
                }

                else
                {
                  v120 = 0;
                }
              }

              else
              {
                v120 = v347;
                if (v81)
                {
                  v120 = v343;
                }
              }

              if (v120 < v55)
              {
                goto LABEL_420;
              }

              v357 = Data._Representation.subscript.getter();
              v6 = v121;
              v122 = v378 >> 62;
              if ((v378 >> 62) > 1)
              {
                if (v122 == 2)
                {
                  v123 = *(v33 + 24);
                }

                else
                {
                  v123 = 0;
                }
              }

              else if (v122)
              {
                v123 = v33 >> 32;
              }

              else
              {
                v123 = BYTE6(v378);
              }

              if (v123 < v78)
              {
LABEL_421:
                __break(1u);
LABEL_422:
                __break(1u);
LABEL_423:
                __break(1u);
LABEL_424:
                __break(1u);
LABEL_425:
                __break(1u);
LABEL_426:
                __break(1u);
LABEL_427:
                __break(1u);
LABEL_428:
                __break(1u);
LABEL_429:
                __break(1u);
LABEL_430:
                __break(1u);
LABEL_431:
                __break(1u);
LABEL_432:
                __break(1u);
LABEL_433:
                __break(1u);
LABEL_434:
                __break(1u);
LABEL_435:
                __break(1u);
LABEL_436:
                __break(1u);
LABEL_437:
                __break(1u);
LABEL_438:
                __break(1u);
LABEL_439:
                __break(1u);
LABEL_440:
                __break(1u);
LABEL_441:
                __break(1u);
LABEL_442:
                __break(1u);
LABEL_443:
                __break(1u);
LABEL_444:
                __break(1u);
LABEL_445:
                __break(1u);
LABEL_446:
                __break(1u);
LABEL_447:
                __break(1u);
LABEL_448:
                __break(1u);
LABEL_449:
                __break(1u);
LABEL_450:
                __break(1u);
LABEL_451:
                __break(1u);
LABEL_452:
                __break(1u);
LABEL_453:
                __break(1u);
LABEL_454:
                __break(1u);
LABEL_455:
                __break(1u);
LABEL_456:
                __break(1u);
LABEL_457:
                __break(1u);
LABEL_458:
                __break(1u);
                goto LABEL_459;
              }

              v124 = Data._Representation.subscript.getter();
              a3 = v124;
              v28 = v125;
              v126 = v6 >> 62;
              v127 = v125 >> 62;
              if (v6 >> 62 == 3)
              {
                v128 = 0;
                v129 = v357;
                if (!v357 && v6 == 0xC000000000000000 && v125 >> 62 == 3)
                {
                  v128 = 0;
                  if (!v124 && v125 == 0xC000000000000000)
                  {
                    outlined consume of Data._Representation(0, 0xC000000000000000);
                    v337 = 0;
                    v338 = 0xC000000000000000;
                    goto LABEL_407;
                  }
                }

LABEL_147:
                if (v127 <= 1)
                {
                  goto LABEL_148;
                }

LABEL_137:
                if (v127 == 2)
                {
                  v131 = *(v124 + 16);
                  v130 = *(v124 + 24);
                  v47 = __OFSUB__(v130, v131);
                  v132 = v130 - v131;
                  if (v47)
                  {
                    goto LABEL_443;
                  }

LABEL_150:
                  if (v128 == v132)
                  {
                    goto LABEL_154;
                  }
                }

                else if (!v128)
                {
                  goto LABEL_402;
                }

LABEL_47:
                outlined consume of Data._Representation(v124, v125);
                outlined consume of Data._Representation(v129, v6);
                outlined consume of Data._Representation(v33, v378);
                v70 = v386;
                v6 = v380;
                outlined consume of Data._Representation(v386, v380);
                v55 = v360;
                v71 = v375;
LABEL_48:
                _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v71, type metadata accessor for GeneralEPSK);
                v69 = v356 + v351;
                a4 = v80 - 1;
                v68 = v377;
                if (!a4)
                {
                  goto LABEL_366;
                }

                continue;
              }

              v129 = v357;
              if (v126 > 1)
              {
                if (v126 == 2)
                {
                  v134 = *(v357 + 16);
                  v133 = *(v357 + 24);
                  v47 = __OFSUB__(v133, v134);
                  v128 = v133 - v134;
                  if (v47)
                  {
                    goto LABEL_447;
                  }

                  goto LABEL_147;
                }

                v128 = 0;
                if (v127 <= 1)
                {
                  goto LABEL_148;
                }

                goto LABEL_137;
              }

              if (v126)
              {
                LODWORD(v128) = HIDWORD(v357) - v357;
                if (__OFSUB__(HIDWORD(v357), v357))
                {
                  goto LABEL_446;
                }

                v128 = v128;
                goto LABEL_147;
              }

              v128 = BYTE6(v6);
              if (v127 > 1)
              {
                goto LABEL_137;
              }

LABEL_148:
              if (!v127)
              {
                v132 = BYTE6(v125);
                goto LABEL_150;
              }

              if (__OFSUB__(HIDWORD(v124), v124))
              {
                goto LABEL_442;
              }

              if (v128 != HIDWORD(v124) - v124)
              {
                goto LABEL_47;
              }

LABEL_154:
              if (v128 < 1)
              {
LABEL_402:
                outlined consume of Data._Representation(v124, v125);
                v337 = v129;
                goto LABEL_403;
              }

              if (v126 > 1)
              {
                if (v126 != 2)
                {
                  *(&v388 + 6) = 0;
                  *&v388 = 0;
LABEL_169:
                  closure #1 in static Data.== infix(_:_:)(&v388, v124, v125, &v392);
                  if (v8)
                  {
                    goto LABEL_473;
                  }

                  outlined consume of Data._Representation(v129, v6);
                  outlined consume of Data._Representation(v33, v378);
                  v142 = v386;
                  v6 = v380;
                  outlined consume of Data._Representation(v386, v380);
                  v143 = v28;
                  v70 = v142;
                  outlined consume of Data._Representation(a3, v143);
                  v55 = v360;
                  v71 = v375;
                  if (v392)
                  {
                    goto LABEL_408;
                  }

                  goto LABEL_48;
                }

                v367 = v8;
                v135 = *(v129 + 16);
                v136 = __DataStorage._bytes.getter();
                if (v136)
                {
                  v137 = v136;
                  v138 = __DataStorage._offset.getter();
                  if (__OFSUB__(v135, v138))
                  {
                    goto LABEL_456;
                  }

                  v349 = v135 - v138 + v137;
                }

                else
                {
                  v349 = 0;
                }

                v33 = v364;
                v129 = v6 & 0x3FFFFFFFFFFFFFFFLL;
                MEMORY[0x1B274CD90]();
                v8 = v367;
                if (v127 == 2)
                {
                  v150 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(*(a3 + 16), *(a3 + 24), v28 & 0x3FFFFFFFFFFFFFFFLL, v349);
                  outlined consume of Data._Representation(a3, v28);
                  outlined consume of Data._Representation(v357, v6);
                  outlined consume of Data._Representation(v33, v378);
                  v70 = v386;
                  v6 = v380;
                  outlined consume of Data._Representation(v386, v380);
                  v55 = v360;
                  v71 = v375;
                  if (v150)
                  {
                    goto LABEL_408;
                  }

                  goto LABEL_48;
                }

                if (v127 == 1)
                {
                  if (a3 >> 32 < a3)
                  {
                    goto LABEL_460;
                  }

                  v144 = __DataStorage._bytes.getter();
                  if (v144)
                  {
                    v145 = v144;
                    v146 = __DataStorage._offset.getter();
                    if (__OFSUB__(a3, v146))
                    {
                      goto LABEL_464;
                    }

                    v342 = (a3 - v146 + v145);
                  }

                  else
                  {
                    v342 = 0;
                  }

                  v55 = v360;
                  v129 = v28 & 0x3FFFFFFFFFFFFFFFLL;
                  v160 = MEMORY[0x1B274CD90]();
                  if (v160 >= (a3 >> 32) - a3)
                  {
                    v161 = (a3 >> 32) - a3;
                  }

                  else
                  {
                    v161 = v160;
                  }

                  v8 = v367;
                  v151 = v349;
                  if (!v349)
                  {
                    goto LABEL_467;
                  }

                  v33 = v364;
                  v159 = v342;
                  if (!v342)
                  {
                    goto LABEL_466;
                  }

                  goto LABEL_216;
                }

                v151 = v349;
                *&v388 = a3;
                WORD4(v388) = v28;
                BYTE10(v388) = BYTE2(v28);
                BYTE11(v388) = BYTE3(v28);
                BYTE12(v388) = BYTE4(v28);
                BYTE13(v388) = BYTE5(v28);
                v55 = v360;
                if (!v349)
                {
                  __break(1u);
LABEL_466:
                  __break(1u);
LABEL_467:
                  __break(1u);
LABEL_468:
                  __break(1u);
LABEL_469:
                  __break(1u);
LABEL_470:
                  __break(1u);
LABEL_471:
                  __break(1u);
LABEL_472:
                  __break(1u);
LABEL_473:

                  __break(1u);
LABEL_474:

                  __break(1u);
                  return;
                }
              }

              else
              {
                if (!v126)
                {
                  *&v388 = v129;
                  WORD4(v388) = v6;
                  BYTE10(v388) = BYTE2(v6);
                  BYTE11(v388) = BYTE3(v6);
                  BYTE12(v388) = BYTE4(v6);
                  BYTE13(v388) = BYTE5(v6);
                  goto LABEL_169;
                }

                v367 = v8;
                if (v129 > v129 >> 32)
                {
                  goto LABEL_450;
                }

                v139 = __DataStorage._bytes.getter();
                if (v139)
                {
                  v140 = v139;
                  v141 = __DataStorage._offset.getter();
                  if (__OFSUB__(v129, v141))
                  {
                    goto LABEL_457;
                  }

                  v349 = v129 - v141 + v140;
                }

                else
                {
                  v349 = 0;
                }

                v33 = v364;
                v129 = v6 & 0x3FFFFFFFFFFFFFFFLL;
                MEMORY[0x1B274CD90]();
                v8 = v367;
                if (v127 == 2)
                {
                  v152 = *(a3 + 16);
                  v153 = *(a3 + 24);
                  v154 = __DataStorage._bytes.getter();
                  if (v154)
                  {
                    v155 = v154;
                    v156 = __DataStorage._offset.getter();
                    if (__OFSUB__(v152, v156))
                    {
                      goto LABEL_463;
                    }

                    v157 = (v152 - v156 + v155);
                  }

                  else
                  {
                    v157 = 0;
                  }

                  v342 = v157;
                  v47 = __OFSUB__(v153, v152);
                  v162 = v153 - v152;
                  v8 = v367;
                  if (v47)
                  {
                    goto LABEL_462;
                  }

                  v129 = v28 & 0x3FFFFFFFFFFFFFFFLL;
                  v163 = MEMORY[0x1B274CD90]();
                  if (v163 >= v162)
                  {
                    v161 = v162;
                  }

                  else
                  {
                    v161 = v163;
                  }

                  v55 = v360;
                  v151 = v349;
                  if (!v349)
                  {
                    goto LABEL_469;
                  }

                  v33 = v364;
                  v159 = v342;
                  if (!v342)
                  {
                    goto LABEL_468;
                  }

                  goto LABEL_216;
                }

                if (v127 == 1)
                {
                  if (a3 >> 32 < a3)
                  {
                    goto LABEL_461;
                  }

                  v147 = __DataStorage._bytes.getter();
                  if (v147)
                  {
                    v148 = v147;
                    v149 = __DataStorage._offset.getter();
                    if (__OFSUB__(a3, v149))
                    {
                      goto LABEL_465;
                    }

                    v342 = (a3 - v149 + v148);
                  }

                  else
                  {
                    v342 = 0;
                  }

                  v8 = v367;
                  v55 = v360;
                  v129 = v28 & 0x3FFFFFFFFFFFFFFFLL;
                  v164 = MEMORY[0x1B274CD90]();
                  if (v164 >= (a3 >> 32) - a3)
                  {
                    v161 = (a3 >> 32) - a3;
                  }

                  else
                  {
                    v161 = v164;
                  }

                  v151 = v349;
                  if (!v349)
                  {
                    goto LABEL_472;
                  }

                  v33 = v364;
                  v159 = v342;
                  if (!v342)
                  {
                    goto LABEL_471;
                  }

LABEL_216:
                  if (v151 == v159)
                  {
                    goto LABEL_413;
                  }

                  v158 = v161;
LABEL_218:
                  v165 = memcmp(v151, v159, v158);
                  outlined consume of Data._Representation(a3, v28);
                  outlined consume of Data._Representation(v357, v6);
                  outlined consume of Data._Representation(v33, v378);
                  v70 = v386;
                  v6 = v380;
                  outlined consume of Data._Representation(v386, v380);
                  v71 = v375;
                  if (!v165)
                  {
                    goto LABEL_408;
                  }

                  goto LABEL_48;
                }

                v151 = v349;
                *&v388 = a3;
                WORD4(v388) = v28;
                BYTE10(v388) = BYTE2(v28);
                BYTE11(v388) = BYTE3(v28);
                BYTE12(v388) = BYTE4(v28);
                BYTE13(v388) = BYTE5(v28);
                v55 = v360;
                if (!v349)
                {
                  goto LABEL_470;
                }
              }

              v158 = BYTE6(v28);
              v159 = &v388;
              goto LABEL_218;
            }

            v106 = v357 >> 32;
          }

          break;
        }

        outlined copy of Data._Representation(v104, v95);
        goto LABEL_83;
      }

      a4 = (v6 >> 62);
      if ((v6 >> 62) <= 1)
      {
        if (!a4)
        {
          if (BYTE6(v6) < v55)
          {
            goto LABEL_416;
          }

          goto LABEL_41;
        }

        v62 = v386;
        v63 = v386 >> 32;
        goto LABEL_38;
      }

      if (a4 == 2)
      {
        v62 = v386;
        v63 = *(v386 + 24);
LABEL_38:
        outlined copy of Data._Representation(v62, v6);
        if (v63 < v55)
        {
          goto LABEL_416;
        }

        goto LABEL_41;
      }

      if (v55 > 0)
      {
        goto LABEL_416;
      }

LABEL_41:
      v378 = v6 >> 62;
      a4 = v55;
      v64 = v386;
      a3 = Data._Representation.subscript.getter();
      v66 = v65;
      outlined consume of Data._Representation(v64, v6);
      outlined copy of Data._Representation(a3, v66);
      _s15SwiftTLSLibrary16ImportedIdentityV10serializedAC10Foundation4DataV_tAA8TLSErrorOYKcfCTf4nd_n(a3, v66, v394, &v396);
      if (!v8)
      {
        v166 = 0;
        v360 = a4;
        outlined consume of Data._Representation(a3, v66);
        v167 = *(v33 + 200);
        v168 = *(v167 + 16);
        v380 = v6;
        if (v168)
        {
          v169 = v167 + ((*(v370 + 80) + 32) & ~*(v370 + 80));
          v170 = v386;
          v343 = v386 >> 32;
          v347 = BYTE6(v6);
          v352 = *(v370 + 72);
          v171 = v376;
          while (1)
          {
            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v169, v171, type metadata accessor for GeneralEPSK);
            v172 = v374;
            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v171, v374, type metadata accessor for PSK);
            v173 = swift_getEnumCaseMultiPayload();
            v367 = v166;
            if (v173 == 1)
            {
              v174 = v372;
              outlined init with take of ServerHandshakeState.IdleState(v172, v372, type metadata accessor for RawEPSK);
              v175 = v174[1];
              v176 = v174[2];
              v357 = *v174;
              outlined copy of Data._Representation(v357, v175);
              _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v174, type metadata accessor for RawEPSK);
              v364 = v175;
              v177 = v175 >> 62;
              if ((v175 >> 62) <= 1)
              {
                goto LABEL_227;
              }

              goto LABEL_290;
            }

            v357 = v168;
            v180 = v172;
            v181 = v373;
            outlined init with take of ServerHandshakeState.IdleState(v180, v373, type metadata accessor for ImportedPSK);
            v183 = *v181;
            v182 = *(v181 + 8);
            v184 = *(v181 + 16);
            v349 = *(v181 + 24);
            v185 = *(v181 + 40);
            v364 = *(v181 + 32);
            v186 = *(v181 + 48);
            v187 = *(v181 + 50);
            v392 = v355;
            v393 = 0;
            v188 = v182 >> 62;
            if ((v182 >> 62) > 1)
            {
              v189 = 0;
              if (v188 == 2)
              {
                v189 = *(v183 + 24);
              }
            }

            else if (v188)
            {
              v189 = v183 >> 32;
            }

            else
            {
              v189 = BYTE6(v182);
            }

            v47 = __OFSUB__(v189, v184);
            v190 = v189 - v184;
            if (v47)
            {
              goto LABEL_422;
            }

            if ((v190 & 0x8000000000000000) != 0)
            {
              goto LABEL_423;
            }

            LODWORD(v351) = v186;
            if (v190 >> 16)
            {
              goto LABEL_424;
            }

            v387 = bswap32(v190) >> 16;
            v390 = MEMORY[0x1E69E6290];
            v391 = MEMORY[0x1E6969DF8];
            *&v388 = &v387;
            *(&v388 + 1) = v361;
            __swift_project_boxed_opaque_existential_0(&v388, MEMORY[0x1E69E6290]);
            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_0(&v388);
            if (v188 > 1)
            {
              if (v188 == 2)
              {
                v192 = *(v183 + 16);
                v191 = *(v183 + 24);
              }

              else
              {
                v191 = 0;
                v192 = 0;
              }
            }

            else
            {
              if (v188)
              {
                v191 = v183 >> 32;
              }

              else
              {
                v191 = BYTE6(v182);
              }

              if (v188)
              {
                v192 = v183;
              }

              else
              {
                v192 = 0;
              }
            }

            v193 = v185;
            v194 = v364;
            if (v191 < v184 || v191 < v192)
            {
              goto LABEL_425;
            }

            v195 = Data._Representation.subscript.getter();
            v197 = v196;
            Data.append(_:)();
            outlined consume of Data._Representation(v195, v197);
            v356 = v169;
            LODWORD(v350) = v187;
            if (v194 >> 60 == 15)
            {
              v387 = 0;
              v198 = MEMORY[0x1E69E6290];
              v390 = MEMORY[0x1E69E6290];
              v199 = MEMORY[0x1E6969DF8];
              v391 = MEMORY[0x1E6969DF8];
              v200 = v361;
              *&v388 = &v387;
              *(&v388 + 1) = v361;
              __swift_project_boxed_opaque_existential_0(&v388, MEMORY[0x1E69E6290]);
              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_0(&v388);
              v6 = v380;
              v170 = v386;
              goto LABEL_277;
            }

            v201 = v194 >> 62;
            if ((v194 >> 62) > 1)
            {
              break;
            }

            v202 = MEMORY[0x1E6969DF8];
            if (v201)
            {
              v204 = v349;
              v203 = v349 >> 32;
LABEL_259:
              outlined copy of Data._Representation(v204, v194);
              goto LABEL_261;
            }

            v203 = BYTE6(v194);
LABEL_261:
            v205 = v203 - v193;
            if (__OFSUB__(v203, v193))
            {
              goto LABEL_432;
            }

            if ((v205 & 0x8000000000000000) != 0)
            {
              goto LABEL_433;
            }

            if (v205 >> 16)
            {
              goto LABEL_434;
            }

            v387 = bswap32(v205) >> 16;
            v390 = MEMORY[0x1E69E6290];
            v391 = v202;
            *&v388 = &v387;
            *(&v388 + 1) = v361;
            __swift_project_boxed_opaque_existential_0(&v388, MEMORY[0x1E69E6290]);
            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_0(&v388);
            if (v201 > 1)
            {
              v206 = v349;
              if (v201 == 2)
              {
                v208 = *(v349 + 16);
                v207 = *(v349 + 24);
              }

              else
              {
                v207 = 0;
                v208 = 0;
              }
            }

            else
            {
              v206 = v349;
              if (v201)
              {
                v207 = v349 >> 32;
              }

              else
              {
                v207 = BYTE6(v194);
              }

              if (v201)
              {
                v208 = v349;
              }

              else
              {
                v208 = 0;
              }
            }

            if (v207 < v193 || v207 < v208)
            {
              goto LABEL_435;
            }

            v209 = Data._Representation.subscript.getter();
            v211 = v210;
            Data.append(_:)();
            outlined consume of ByteBuffer?(v206, v194);
            v212 = v211;
            v6 = v380;
            v170 = v386;
            outlined consume of Data._Representation(v209, v212);
            v200 = v361;
            v198 = MEMORY[0x1E69E6290];
            v199 = MEMORY[0x1E6969DF8];
LABEL_277:
            v387 = __rev16(v351);
            v390 = v198;
            v391 = v199;
            *&v388 = &v387;
            *(&v388 + 1) = v200;
            __swift_project_boxed_opaque_existential_0(&v388, v198);
            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_0(&v388);
            v387 = __rev16(v350);
            v390 = v198;
            v391 = v199;
            *&v388 = &v387;
            *(&v388 + 1) = v200;
            __swift_project_boxed_opaque_existential_0(&v388, v198);
            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_0(&v388);
            v213 = v392;
            v214 = *(&v392 + 1) >> 62;
            if ((*(&v392 + 1) >> 62) > 1)
            {
              v169 = v356;
              v168 = v357;
              if (v214 != 2)
              {
                goto LABEL_284;
              }

              v215 = *(v392 + 24);
            }

            else
            {
              v169 = v356;
              v168 = v357;
              if (!v214)
              {
                goto LABEL_284;
              }

              v215 = v392 >> 32;
            }

            if (v215 < 0)
            {
              goto LABEL_426;
            }

LABEL_284:
            v357 = Data._Representation.subscript.getter();
            v217 = v216;
            outlined consume of Data._Representation(v213, *(&v213 + 1));
            v176 = 0;
            v364 = v217;
            v177 = v217 >> 62;
            if ((v217 >> 62) > 1)
            {
              if (v177 == 2)
              {
                v176 = *(v357 + 16);
              }
            }

            else if (v177)
            {
              v176 = v357;
            }

            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v373, type metadata accessor for ImportedPSK);
            if (v177 <= 1)
            {
LABEL_227:
              v178 = v357;
              if (v177)
              {
                v179 = v357 >> 32;
              }

              else
              {
                v179 = BYTE6(v364);
              }

              goto LABEL_293;
            }

LABEL_290:
            v178 = v357;
            if (v177 == 2)
            {
              v179 = *(v357 + 24);
            }

            else
            {
              v179 = 0;
            }

LABEL_293:
            if (v179 < v176)
            {
              __break(1u);
LABEL_419:
              __break(1u);
LABEL_420:
              __break(1u);
              goto LABEL_421;
            }

            outlined copy of Data._Representation(v170, v6);
            v218 = Data._Representation.subscript.getter();
            v220 = v219;
            if (v378 > 1)
            {
              v222 = v360;
              if (v378 == 2)
              {
                v221 = *(v170 + 24);
              }

              else
              {
                v221 = 0;
              }
            }

            else
            {
              v221 = v347;
              v222 = v360;
              if (v378)
              {
                v221 = v343;
              }
            }

            if (v221 < v222)
            {
              goto LABEL_419;
            }

            v223 = Data._Representation.subscript.getter();
            v225 = v223;
            v226 = v224;
            v227 = v220 >> 62;
            v228 = v224 >> 62;
            if (v220 >> 62 == 3)
            {
              v229 = 0;
              if (!v218 && v220 == 0xC000000000000000 && v224 >> 62 == 3)
              {
                v229 = 0;
                if (!v223 && v224 == 0xC000000000000000)
                {
                  outlined consume of Data._Representation(0, 0xC000000000000000);
                  v329 = 0;
                  v330 = 0xC000000000000000;
LABEL_404:
                  outlined consume of Data._Representation(v329, v330);
                  outlined consume of Data._Representation(v386, v380);
                  outlined consume of Data._Representation(v178, v364);
                  v171 = v376;
LABEL_405:

                  v331 = v348;
                  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v171, v348, type metadata accessor for GeneralEPSK);
                  v332 = v385;
                  if (v385 < 0x10000)
                  {
                    v333 = v171;
                    v334 = *(v383 - 2);
                    v335 = *(v383 - 1);
                    v336 = *v383;
                    outlined copy of Data._Representation(v334, v335);
                    outlined destroy of ImportedIdentity(&v396);
                    goto LABEL_410;
                  }

LABEL_459:
                  __break(1u);
LABEL_460:
                  __break(1u);
LABEL_461:
                  __break(1u);
LABEL_462:
                  __break(1u);
LABEL_463:
                  __break(1u);
LABEL_464:
                  __break(1u);
LABEL_465:
                  __break(1u);
                }
              }

LABEL_321:
              if (v228 > 1)
              {
                goto LABEL_311;
              }

              goto LABEL_322;
            }

            if (v227 <= 1)
            {
              if (!v227)
              {
                v229 = BYTE6(v220);
                if (v228 > 1)
                {
                  goto LABEL_311;
                }

                goto LABEL_322;
              }

              LODWORD(v229) = HIDWORD(v218) - v218;
              if (__OFSUB__(HIDWORD(v218), v218))
              {
                goto LABEL_444;
              }

              v229 = v229;
              goto LABEL_321;
            }

            if (v227 == 2)
            {
              v234 = *(v218 + 16);
              v233 = *(v218 + 24);
              v47 = __OFSUB__(v233, v234);
              v229 = v233 - v234;
              if (v47)
              {
                goto LABEL_445;
              }

              goto LABEL_321;
            }

            v229 = 0;
            if (v228 > 1)
            {
LABEL_311:
              if (v228 != 2)
              {
                if (!v229)
                {
                  goto LABEL_401;
                }

LABEL_223:
                outlined consume of Data._Representation(v223, v224);
                outlined consume of Data._Representation(v218, v220);
                v170 = v386;
                v6 = v380;
                outlined consume of Data._Representation(v386, v380);
                outlined consume of Data._Representation(v178, v364);
                v166 = v367;
                v171 = v376;
                goto LABEL_224;
              }

              v231 = *(v223 + 16);
              v230 = *(v223 + 24);
              v47 = __OFSUB__(v230, v231);
              v232 = v230 - v231;
              if (v47)
              {
                goto LABEL_440;
              }

              goto LABEL_324;
            }

LABEL_322:
            if (!v228)
            {
              v232 = BYTE6(v224);
LABEL_324:
              if (v229 != v232)
              {
                goto LABEL_223;
              }

              goto LABEL_328;
            }

            if (__OFSUB__(HIDWORD(v223), v223))
            {
              goto LABEL_441;
            }

            if (v229 != HIDWORD(v223) - v223)
            {
              goto LABEL_223;
            }

LABEL_328:
            if (v229 < 1)
            {
LABEL_401:
              outlined consume of Data._Representation(v223, v224);
              v329 = v218;
              v330 = v220;
              goto LABEL_404;
            }

            if (v227 <= 1)
            {
              if (!v227)
              {
                *&v388 = v218;
                WORD4(v388) = v220;
                BYTE10(v388) = BYTE2(v220);
                BYTE11(v388) = BYTE3(v220);
                BYTE12(v388) = BYTE4(v220);
                BYTE13(v388) = BYTE5(v220);
                goto LABEL_343;
              }

              v356 = v169;
              v357 = (v218 >> 32) - v218;
              if (v218 >> 32 < v218)
              {
                goto LABEL_448;
              }

              v240 = __DataStorage._bytes.getter();
              if (v240)
              {
                v351 = v240;
                v241 = __DataStorage._offset.getter();
                if (__OFSUB__(v218, v241))
                {
                  goto LABEL_455;
                }

                v351 += v218 - v241;
              }

              else
              {
                v351 = 0;
              }

              MEMORY[0x1B274CD90]();
              v247 = v367;
              closure #1 in static Data.== infix(_:_:)(v351, v225, v226, &v388);
              v129 = v247;
              v169 = v356;
              if (v247)
              {
                goto LABEL_474;
              }

              outlined consume of Data._Representation(v225, v226);
              outlined consume of Data._Representation(v218, v220);
              v170 = v386;
              v6 = v380;
              outlined consume of Data._Representation(v386, v380);
              outlined consume of Data._Representation(v178, v364);
              v245 = v388;
LABEL_353:
              v166 = 0;
              v171 = v376;
              if (v245)
              {
                goto LABEL_405;
              }

              goto LABEL_224;
            }

            if (v227 != 2)
            {
              *(&v388 + 6) = 0;
              *&v388 = 0;
LABEL_343:
              v242 = v367;
              closure #1 in static Data.== infix(_:_:)(&v388, v223, v224, &v392);
              v129 = v242;
              if (v242)
              {
                goto LABEL_474;
              }

              outlined consume of Data._Representation(v218, v220);
              v243 = v386;
              v6 = v380;
              outlined consume of Data._Representation(v386, v380);
              outlined consume of Data._Representation(v357, v364);
              v244 = v226;
              v170 = v243;
              outlined consume of Data._Representation(v225, v244);
              v245 = v392;
              goto LABEL_353;
            }

            v357 = v168;
            v235 = *(v218 + 16);
            v351 = *(v218 + 24);
            v236 = __DataStorage._bytes.getter();
            if (v236)
            {
              v349 = v235;
              v237 = v236;
              v238 = __DataStorage._offset.getter();
              v239 = v349;
              if (__OFSUB__(v349, v238))
              {
                goto LABEL_454;
              }

              v350 = (v349 - v238 + v237);
            }

            else
            {
              v350 = 0;
              v239 = v235;
            }

            if (__OFSUB__(v351, v239))
            {
              goto LABEL_449;
            }

            MEMORY[0x1B274CD90]();
            v246 = v367;
            closure #1 in static Data.== infix(_:_:)(v350, v225, v226, &v388);
            v129 = v246;
            if (v246)
            {
              goto LABEL_474;
            }

            outlined consume of Data._Representation(v225, v226);
            outlined consume of Data._Representation(v218, v220);
            v170 = v386;
            v6 = v380;
            outlined consume of Data._Representation(v386, v380);
            outlined consume of Data._Representation(v178, v364);
            v166 = 0;
            v171 = v376;
            v168 = v357;
            if (v388)
            {
              goto LABEL_405;
            }

LABEL_224:
            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v171, type metadata accessor for GeneralEPSK);
            v169 += v352;
            if (!--v168)
            {
              goto LABEL_355;
            }
          }

          v202 = MEMORY[0x1E6969DF8];
          if (v201 != 2)
          {
            v203 = 0;
            goto LABEL_261;
          }

          v204 = v349;
          v203 = *(v349 + 24);
          goto LABEL_259;
        }

LABEL_355:
        v248 = v166;
        v249 = v396;
        v250 = v397;
        a4 = v398;
        v251 = v399;
        v253 = v400;
        v252 = v401;
        outlined copy of Data._Representation(v396, v397);
        outlined copy of Data?(v251, v253);
        specialized SwiftOfferedEPSK.init(external_identity:context:)(v249, v250, a4, v251, v253, v252);
        v255 = v254;
        v257 = v256;
        v259 = v258;
        v261 = v260;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v354 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v354 + 2) + 1, 1, v354);
        }

        v263 = *(v354 + 2);
        v262 = *(v354 + 3);
        if (v263 >= v262 >> 1)
        {
          v354 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v262 > 1), v263 + 1, 1, v354);
        }

        v264 = v354;
        *(v354 + 2) = v263 + 1;
        v265 = &v264[32 * v263];
        *(v265 + 4) = v255;
        *(v265 + 5) = v257;
        *(v265 + 6) = v259;
        *(v265 + 7) = v261;
        if (v385 >= 0x10000)
        {
          goto LABEL_452;
        }

        v266 = swift_isUniquelyReferenced_nonNull_native();
        v8 = v248;
        v33 = v379;
        v6 = v380;
        v267 = v386;
        if ((v266 & 1) == 0)
        {
          v353 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v353 + 2) + 1, 1, v353);
        }

        a3 = *(v353 + 2);
        v268 = *(v353 + 3);
        v269 = a3 + 1;
        if (a3 >= v268 >> 1)
        {
          v353 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v268 > 1), a3 + 1, 1, v353);
        }

        outlined destroy of ImportedIdentity(&v396);
LABEL_375:
        outlined consume of Data._Representation(v267, v6);
        v284 = v353;
        *(v353 + 2) = v269;
        v49 = v384;
        *&v284[2 * a3 + 32] = v385;
        v38 = v369;
        v51 = v344;
        v50 = v345;
        if (v49 == v369)
        {
          goto LABEL_388;
        }

        goto LABEL_23;
      }

      v8 = 0;
      outlined consume of TLSError(v394[0], v394[1], v395);
      outlined consume of Data._Representation(a3, v66);
      outlined consume of Data._Representation(v64, v6);
      v53 = v385 + 1;
      v28 += 32;
      v52 = v383 + 3;
      v38 = v369;
      if (v384 == v369)
      {
        goto LABEL_388;
      }
    }

    __break(1u);
LABEL_415:
    __break(1u);
LABEL_416:
    __break(1u);
LABEL_417:
    swift_once();
  }

  __break(1u);
LABEL_412:
  __break(1u);
LABEL_413:
  outlined consume of Data._Representation(a3, v28);
  v337 = v357;
LABEL_403:
  v338 = v6;
LABEL_407:
  outlined consume of Data._Representation(v337, v338);
  outlined consume of Data._Representation(v33, v378);
  outlined consume of Data._Representation(v386, v380);
  v71 = v375;
LABEL_408:

  v331 = v348;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v71, v348, type metadata accessor for GeneralEPSK);
  v332 = v385;
  if (v385 >= 0x10000)
  {
    goto LABEL_458;
  }

  v333 = v71;
  v334 = *(v383 - 2);
  v335 = *(v383 - 1);
  v336 = *v383;
  outlined copy of Data._Representation(v334, v335);
LABEL_410:
  outlined consume of Data._Representation(v386, v380);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v333, type metadata accessor for GeneralEPSK);
  v339 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
  *(v331 + v339[5]) = v332;
  v340 = (v331 + v339[6]);
  *v340 = v334;
  v340[1] = v335;
  v340[2] = v336;
  *(v331 + v339[7]) = v346;
  (*(*(v339 - 1) + 56))(v331, 0, 1, v339);
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV12negotiatePSK14externalPSKKDFAE20negotiatedEPSKResultVSgAA16TLSKDFIdentifierV_tAA8TLSErrorOYKFySi_AA4EPSKVSgtcfU_Tf2nnnninn_n(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v61 = a8;
  v65 = a7;
  v66 = a4;
  v67 = a5;
  v68 = a1;
  v10 = type metadata accessor for ImportedPSK(0);
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for RawEPSK(0);
  MEMORY[0x1EEE9AC00](v62);
  v63 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v56 - v17;
  v18 = type metadata accessor for EPSK(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v69 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v70 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v56 - v24;
  v26 = swift_projectBox();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, logger);
  outlined init with copy of Any?(a2, v25, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
  outlined init with copy of ServerHandshakeState.ClientHelloVerifier(a3, &v71);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v58 = v26;
    v31 = v30;
    *v30 = 67109376;
    v32 = (*(v19 + 48))(v25, 1, v18);
    v57 = a2;
    v33 = v16;
    v34 = v32 == 1;
    outlined destroy of P256.Signing.PrivateKey?(v25, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
    v31[1] = v34;
    v16 = v33;
    a2 = v57;
    *(v31 + 4) = 1024;
    *(v31 + 10) = *(a3 + 208) & 1;
    outlined destroy of ServerHandshakeState.ClientHelloVerifier(a3);
    _os_log_impl(&dword_1B25F5000, v28, v29, "in server handshake state machine completion block... epsk == nil? %{BOOL}d usingRawEPSKs: %{BOOL}d", v31, 0xEu);
    v35 = v31;
    v26 = v58;
    MEMORY[0x1B274ECF0](v35, -1, -1);
  }

  else
  {
    outlined destroy of P256.Signing.PrivateKey?(v25, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
    outlined destroy of ServerHandshakeState.ClientHelloVerifier(a3);
  }

  v36 = v70;
  outlined init with copy of Any?(a2, v70, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
  if ((*(v19 + 48))(v36, 1, v18) == 1)
  {
    return outlined destroy of P256.Signing.PrivateKey?(v36, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
  }

  v38 = v18;
  v39 = v69;
  result = outlined init with take of ServerHandshakeState.IdleState(v36, v69, type metadata accessor for EPSK);
  if ((v68 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v67 + 16) <= v68)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v40 = *(v67 + 2 * v68 + 32);
  v41 = v66;
  swift_beginAccess();
  *(v41 + 16) = v40;
  *(v41 + 18) = 0;
  if (*(a3 + 208))
  {
    v42 = *v39;
    v43 = v39[1];
    v44 = v39[2];
    v45 = *(v38 + 20);
    v46 = *(v62 + 20);
    v47 = type metadata accessor for SymmetricKey();
    v48 = v63;
    (*(*(v47 - 8) + 16))(v63 + v46, v39 + v45, v47);
    outlined copy of Data._Representation(v42, v43);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v39, type metadata accessor for EPSK);
    *v48 = v42;
    v48[1] = v43;
    v48[2] = v44;
    v49 = v64;
    outlined init with take of ServerHandshakeState.IdleState(v48, v64, type metadata accessor for RawEPSK);
    type metadata accessor for PSK(0);
    swift_storeEnumTagMultiPayload();
    v50 = type metadata accessor for GeneralEPSK(0);
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    swift_beginAccess();
    v51 = v49;
    return outlined assign with take of PartialHandshakeResult?(v51, v26, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary16TLSKDFIdentifierVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary16TLSKDFIdentifierVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B26C6030;
  *(inited + 32) = v65;
  *(inited + 40) = v61;
  v53 = _s15SwiftTLSLibrary4EPSKV18deriveImportedPSKs3forSayAA0E3PSKVGSayAA16TLSKDFIdentifierVG_tAA8TLSErrorOYKF(inited);
  result = swift_setDeallocating();
  if (*(v53 + 16))
  {
    v54 = v59;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v53 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v59, type metadata accessor for ImportedPSK);

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v39, type metadata accessor for EPSK);
    outlined init with take of ServerHandshakeState.IdleState(v54, v16, type metadata accessor for ImportedPSK);
    type metadata accessor for PSK(0);
    swift_storeEnumTagMultiPayload();
    v55 = type metadata accessor for GeneralEPSK(0);
    (*(*(v55 - 8) + 56))(v16, 0, 1, v55);
    swift_beginAccess();
    v51 = v16;
    return outlined assign with take of PartialHandshakeResult?(v51, v26, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  }

LABEL_17:
  __break(1u);
  return result;
}

void _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV25validateSupportedVersions33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = (v1 + 33);
    v3 = *(v1 + 16) + 1;
    while (--v3)
    {
      v4 = v2;
      v2 += 2;
      if (*(v4 - 1) == 3 && *v4 == 4)
      {
        return;
      }
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v6 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B25F5000, v6, v10, "TLS 1.3 Client Hello missing TLS 1.3 version in supported_versions extension", v11, 2u);
      MEMORY[0x1B274ECF0](v11, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B25F5000, v6, v7, "Client Hello without supported_versions extension received", v8, 2u);
      MEMORY[0x1B274ECF0](v8, -1, -1);
    }
  }

  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV23validateSupportedGroups33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF()
{
  if (!*(v0 + 16) && !*(v0 + 160))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B25F5000, v2, v3, "client hello missing required supported_groups extension", v4, 2u);
      MEMORY[0x1B274ECF0](v4, -1, -1);
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  return 14;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV35validateAndDetermineCertificateType33_03AB5AB83506F65A656301CC88CAC942LLAA0lM0VyAA8TLSErrorOYKF()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = v1 + 32;
      v5 = *(v0 + 184);
      v6 = *(v5 + 16);
      v7 = (v5 + 32);
      do
      {
        v8 = *(v4 + v3++);
        v9 = v6;
        v10 = v7;
        while (v9)
        {
          v11 = *v10++;
          --v9;
          if (v11 == v8)
          {
            return v8;
          }
        }
      }

      while (v3 != v2);
    }

    if (one-time initialization token for logger == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v17 = *(v0 + 184);
  if (!*(v17 + 16))
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_10:
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B25F5000, v13, v14, "client requested unsupported server certificate type", v15, 2u);
      MEMORY[0x1B274ECF0](v15, -1, -1);
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 15;
  }

  return *(v17 + 32);
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV27validateSignatureAlgorithms33_03AB5AB83506F65A656301CC88CAC942LL21serverCertificateTypeyAA0sT0V_tAA8TLSErrorOYKF(char a1)
{
  if (*(v1 + 16))
  {
    v2 = 0;
  }

  else
  {
    v2 = a1 == 0;
  }

  if (v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B25F5000, v4, v5, "client hello missing required signature_algorithms extension", v6, 2u);
      MEMORY[0x1B274ECF0](v6, -1, -1);
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  return 14;
}

void _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV17validateKeyShares33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF()
{
  if (!*(v0 + 160))
  {
    v1 = *(v0 + 8);
    if (v1)
    {
      if (*(v1 + 16))
      {
        return;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, logger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_1B25F5000, v3, v4, "no client key shares", v5, 2u);
        MEMORY[0x1B274ECF0](v5, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, logger);
      v3 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1B25F5000, v3, v7, "client hello missing required key_shares extension", v8, 2u);
        MEMORY[0x1B274ECF0](v8, -1, -1);
      }
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV12validatePAKE33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF()
{
  if (*(v0 + 160) && !*(v0 + 232))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B25F5000, v2, v3, "server was not configured with PAKE support", v4, 2u);
      MEMORY[0x1B274ECF0](v4, -1, -1);
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
  }

  return 16;
}

void _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV13negotiatePAKEAA16PAKEServerRecordV_AA9ExtensionO0J0O9PAKEShareVtSgyAA8TLSErrorOYKF(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v5 = *(v2 + 128);
  v22[0] = *(v2 + 112);
  v22[1] = v5;
  v22[2] = *(v2 + 144);
  v6 = *(v2 + 160);
  v23 = v6;
  if (v6 && (v7 = *(v2 + 128), v24[0] = *(v2 + 112), v24[1] = v7, v24[2] = *(v2 + 144), v25 = v6, (v8 = *(v2 + 232)) != 0))
  {
    outlined init with copy of Any?(v22, v20, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSgMd, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSgMR);
    _s15SwiftTLSLibrary17PAKEServerRecordsV29findMatchingPAKERecordOrDummyyAA0C6RecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgAJ15PAKEClientHelloVAA8TLSErrorOYKFTf4nx_n(v24, v8, v18, v21);
    if (v3)
    {
      v10 = v18[0];
      v11 = v18[1];
      v12 = v19;
      outlined destroy of P256.Signing.PrivateKey?(v22, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSgMd, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSgMR);
      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 16) = v12;
      return;
    }

    v32 = v21[6];
    v33 = v21[7];
    v34 = v21[8];
    v35 = v21[9];
    v28 = v21[2];
    v29 = v21[3];
    v30 = v21[4];
    v31 = v21[5];
    v26 = v21[0];
    v27 = v21[1];
    outlined destroy of P256.Signing.PrivateKey?(v22, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSgMd, &_s15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSgMR);
  }

  else
  {
    _s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgWOi0_(&v26);
  }

  v13 = v33;
  a2[6] = v32;
  a2[7] = v13;
  v14 = v35;
  a2[8] = v34;
  a2[9] = v14;
  v15 = v29;
  a2[2] = v28;
  a2[3] = v15;
  v16 = v31;
  a2[4] = v30;
  a2[5] = v16;
  v17 = v27;
  *a2 = v26;
  a2[1] = v17;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV27negotiateSignatureAlgorithmAA0J6SchemeVSgyAA8TLSErrorOYKF()
{
  v1 = v0[20];
  if (v1)
  {
    v2 = 0;
    return v2 | ((v1 != 0) << 16);
  }

  v4 = v0[4];
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v4 + 32;
      v8 = v0[22];
      v9 = *(v8 + 16);
      v10 = (v8 + 32);
      do
      {
        v2 = *(v7 + 2 * v6++);
        v11 = v9;
        v12 = v10;
        while (v11)
        {
          v13 = *v12++;
          --v11;
          if (v13 == v2)
          {
            return v2 | ((v1 != 0) << 16);
          }
        }
      }

      while (v6 != v5);
    }

    if (one-time initialization token for logger == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = v0[22];
    if (*(v18 + 16))
    {
      v2 = *(v18 + 32);
      return v2 | ((v1 != 0) << 16);
    }

    __break(1u);
  }

  swift_once();
LABEL_13:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1B25F5000, v15, v16, "signature algorithm negotiation failed", v17, 2u);
    MEMORY[0x1B274ECF0](v17, -1, -1);
  }

  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 6;
}

unint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV09negotiateC15CertificateTypeAA0jK0VSgyAA8TLSErrorOYKF()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    v1 = 0;
LABEL_11:
    v11 = 1;
    return v1 | (v11 << 8);
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = *(v0 + 184);
  v6 = *(v5 + 16);
  v7 = (v5 + 32);
  do
  {
    v1 = *(v4 + v3++);
    v8 = v6;
    v9 = v7;
    while (v8)
    {
      v10 = *v9++;
      --v8;
      if (v10 == v1)
      {
        v11 = 0;
        return v1 | (v11 << 8);
      }
    }

    v1 = 0;
    v11 = 1;
  }

  while (v3 != v2);
  return v1 | (v11 << 8);
}

void _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV14negotiateGroupAA05NamedJ0VSgyAA8TLSErrorOYKF()
{
  if (!v0[20])
  {
    v1 = v0[2];
    if (v1)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = 0;
        v4 = v1 + 32;
        v5 = v0[21];
        v6 = *(v5 + 16);
        v7 = (v5 + 32);
        do
        {
          v8 = *(v4 + 2 * v3++);
          v9 = v6;
          v10 = v7;
          while (v9)
          {
            v11 = *v10++;
            --v9;
            if (v11 == v8)
            {
              return;
            }
          }
        }

        while (v3 != v2);
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, logger);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1B25F5000, v13, v14, "key exchange group negotiation failed", v15, 2u);
        MEMORY[0x1B274ECF0](v15, -1, -1);
      }

      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV03getF8KeyShareyAA9ExtensionO0jK0O0jK5EntryVAA10NamedGroupVAA8TLSErrorOYKF(uint64_t result)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = result;
      v7 = v2 + 56;
      v8 = 0xF000000000000000;
      do
      {
        if (*(v7 - 24) == v6)
        {
          v9 = *(v7 - 8);
          v10 = v5;
          v5 = *(v7 - 16);
          outlined copy of Data._Representation(v5, v9);
          outlined consume of Extension.KeyShare.KeyShareEntry?(v4, v10, v8);
          v4 = v6;
          v8 = v9;
        }

        v7 += 32;
        --v3;
      }

      while (v3);
      if (v8 >> 60 != 15)
      {
        return v4;
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v8 = 0xF000000000000000;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v4;
      v15 = v5;
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B25F5000, v12, v13, "no client key share matching group received", v16, 2u);
      v17 = v16;
      v5 = v15;
      v4 = v14;
      MEMORY[0x1B274ECF0](v17, -1, -1);
    }

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Extension.KeyShare.KeyShareEntry?(v4, v5, v8);
    return 16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV18validateExtensionsyyAA8TLSErrorOYKF()
{
  _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV25validateSupportedVersions33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF();
  if (!v1)
  {
    _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV23validateSupportedGroups33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF();
    v2 = _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV35validateAndDetermineCertificateType33_03AB5AB83506F65A656301CC88CAC942LLAA0lM0VyAA8TLSErrorOYKF();
    _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV27validateSignatureAlgorithms33_03AB5AB83506F65A656301CC88CAC94221serverCertificateTypeyAA0sT0V_tAA8TLSErrorOYKF(v2);
    _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV17validateKeyShares33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF();
    v3 = *(v0 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = *(v0 + 192);
        v7 = v3 + 32;
        v8 = *(v6 + 16);
        v9 = (v6 + 32);
        do
        {
          v10 = *(v7 + v5++);
          v11 = v8;
          v12 = v9;
          do
          {
            if (!v11)
            {
              break;
            }

            v13 = *v12++;
            --v11;
          }

          while (v13 != v10);
        }

        while (v5 != v4);
      }
    }

    _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV12validatePAKE33_03AB5AB83506F65A656301CC88CAC942LLyyAA8TLSErrorOYKF();
    if ((*(v0 + 248) & 1) != 0 && !*(v0 + 80))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, logger);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1B25F5000, v15, v16, "no alpn negotiated when required by QUIC", v17, 2u);
        MEMORY[0x1B274ECF0](v17, -1, -1);
      }

      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
    }
  }
}

unint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO19ClientHelloVerifierV16getALPNSelection8selfALPNSS_SitSgSaySSGSg_tAA8TLSErrorOYKF(uint64_t a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B25F5000, v4, v5, "server selecting ALPN protocol", v6, 2u);
    MEMORY[0x1B274ECF0](v6, -1, -1);
  }

  v7 = *(v1 + 80);
  if (v7 && a1)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v7 + 32;
      v11 = (a1 + 40);
      v25 = a1;
      v26 = v10;
      do
      {
        v12 = (v10 + 16 * v9);
        v14 = *v12;
        v13 = v12[1];
        ++v9;
        v15 = *(a1 + 16) + 1;
        v16 = v11;
        v17 = v11;
        while (--v15)
        {
          v18 = v17 + 2;
          v19 = specialized Sequence<>.elementsEqual<A>(_:)(v14, v13, *(v17 - 1), *v17);
          v17 = v18;
          if (v19)
          {

            return v14;
          }
        }

        v11 = v16;
        a1 = v25;
        v10 = v26;
      }

      while (v9 != v8);
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_20;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "alpn negotiation failed";
    goto LABEL_19;
  }

  if ((*(v1 + 248) & 1) == 0)
  {
    return 0;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "quic requires alpn";
LABEL_19:
    _os_log_impl(&dword_1B25F5000, v20, v21, v23, v22, 2u);
    MEMORY[0x1B274ECF0](v22, -1, -1);
  }

LABEL_20:

  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 17;
}

unint64_t specialized Sequence<>.elementsEqual<A>(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v5;
  v6 = 4 * v5;
  v7 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v37 = 4 << v7;
  v29 = a4 & 0xFFFFFFFFFFFFFFLL;
  v28 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v8;
  v9 = 4 * v8;
  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = 15;
  v13 = 15;
  v36 = v6;
  v31 = 4 << v10;
  while (1)
  {
    v14 = v13 >> 14;
    if (v13 >> 14 == v6)
    {
      v15 = 0;
      goto LABEL_29;
    }

    result = v13;
    if ((v13 & 0xC) == v37)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a3, a4);
      v11 = v31;
    }

    v17 = result >> 16;
    v18 = a4;
    if (result >> 16 >= v34)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v18 = a4;
      v11 = v31;
      v15 = result;
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v38 = a3;
      v39 = v29;
      v15 = *(&v38 + v17);
    }

    else
    {
      result = v28;
      if ((a3 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
        v18 = a4;
        v11 = v31;
      }

      v15 = *(result + v17);
    }

    if ((v13 & 0xC) == v37)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a3, v18);
      v11 = v31;
      v13 = result;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_26:
        if (v34 <= v13 >> 16)
        {
          goto LABEL_55;
        }

        v19 = String.UTF8View._foreignIndex(after:)();
        v11 = v31;
        v13 = v19;
        goto LABEL_28;
      }
    }

    else if ((v18 & 0x1000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_28:
    v6 = v36;
LABEL_29:
    v20 = v12 >> 14;
    v21 = v12 >> 14 == v9;
    if (v12 >> 14 == v9)
    {
      v22 = 0;
      if (v14 == v6)
      {
        return v21;
      }

      goto LABEL_47;
    }

    v23 = v12 & 0xC;
    result = v12;
    if (v23 == v11)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
      v11 = v31;
      v6 = v36;
    }

    v24 = result >> 16;
    if (result >> 16 >= v32)
    {
      goto LABEL_54;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v11 = v31;
      v6 = v36;
      v22 = result;
      if (v23 != v31)
      {
        goto LABEL_45;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v38 = a1;
      v39 = v27;
      v22 = *(&v38 + v24);
      if (v23 != v11)
      {
        goto LABEL_45;
      }
    }

    else
    {
      result = v26;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
        v11 = v31;
        v6 = v36;
      }

      v22 = *(result + v24);
      if (v23 != v11)
      {
LABEL_45:
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_46:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          if (v14 == v6)
          {
            return v21;
          }

          goto LABEL_47;
        }

        goto LABEL_41;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
    v11 = v31;
    v6 = v36;
    v12 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_41:
    if (v32 <= v12 >> 16)
    {
      goto LABEL_56;
    }

    v25 = String.UTF8View._foreignIndex(after:)();
    v11 = v31;
    v6 = v36;
    v12 = v25;
    if (v14 == v36)
    {
      return v21;
    }

LABEL_47:
    v21 = 0;
    if (v20 == v9 || v15 != v22)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

__n128 ServerHandshakeState.ClientHelloVerifier.init(observedExtensionTypes:clientKeyShares:clientOfferedGroups:clientOfferedSupportedVersions:clientOfferedSignatureAlgs:clientRequestedServerCertificateTypes:clientRequestPSKKexModes:clientQUICTransportParameters:clientALPN:clientOfferedPSKs:clientIndicatedEarlyData:clientOfferedPAKE:serverSupportedGroups:serverSupportedSignatureAlgs:serverSupportedCertificateTypes:serverSupportedPSKKexModes:serverSupportedPSKs:useRawEPSKs:externalPSKSelectionCallback:pakeRecords:transportIsQuic:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, char a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, char a18, __n128 a19, uint64_t a20, uint64_t a21, char a22)
{
  result = a19;
  v23 = *(a14 + 48);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  v24 = *(a14 + 16);
  *(a9 + 112) = *a14;
  *(a9 + 128) = v24;
  *(a9 + 144) = *(a14 + 32);
  *(a9 + 160) = v23;
  *(a9 + 168) = a15;
  *(a9 + 184) = a16;
  *(a9 + 200) = a17;
  *(a9 + 208) = a18;
  *(a9 + 216) = a19;
  *(a9 + 232) = a20;
  *(a9 + 240) = a21;
  *(a9 + 248) = a22;
  return result;
}

uint64_t ServerHandshakeState.ClientHelloState.clientKeyShare.getter()
{
  v1 = v0 + *(type metadata accessor for ServerHandshakeState.ClientHelloState(0) + 40);
  v2 = *v1;
  outlined copy of Extension.KeyShare.KeyShareEntry?(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t ServerHandshakeState.ClientHelloState.sharedSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ServerHandshakeState.ClientHelloState(0) + 48);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ServerHandshakeState.ClientHelloState.publicKeyShare.getter()
{
  v1 = v0 + *(type metadata accessor for ServerHandshakeState.ClientHelloState(0) + 52);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

__n128 ServerHandshakeState.ClientHelloState.legacySessionIDEcho.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ServerHandshakeState.ClientHelloState(0) + 56);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t ServerHandshakeState.ClientHelloState.clientQUICTransportParameters.getter()
{
  v1 = v0 + *(type metadata accessor for ServerHandshakeState.ClientHelloState(0) + 60);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t ServerHandshakeState.ClientHelloState.selectedALPN.getter()
{
  v1 = *(v0 + *(type metadata accessor for ServerHandshakeState.ClientHelloState(0) + 64));

  return v1;
}

uint64_t ServerHandshakeState.ClientHelloState.init(originalState:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, int a4@<W3>, int a5@<W4>, __int16 a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, __int16 a23, char a24, uint64_t a25, char a26, char a27)
{
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a9, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.IdleState);
  v34 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  outlined init with take of P256.Signing.PublicKey?(a2, a9 + v34[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  *(a9 + v34[6]) = a3;
  v35 = a9 + v34[7];
  *v35 = a4;
  *(v35 + 2) = BYTE2(a4) & 1;
  v36 = a9 + v34[8];
  *v36 = a5;
  *(v36 + 2) = BYTE2(a5) & 1;
  v37 = (a9 + v34[9]);
  *v37 = a6;
  v37[1] = HIBYTE(a6) & 1;
  v38 = (a9 + v34[10]);
  *v38 = a7;
  v38[1] = a8;
  v38[2] = a10;
  v38[3] = a11;
  v39 = a9 + v34[14];
  v40 = *(a12 + 16);
  *v39 = *a12;
  *(v39 + 16) = v40;
  *(v39 + 32) = *(a12 + 32);
  outlined init with take of P256.Signing.PublicKey?(a13, a9 + v34[11], &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v41 = v34[12];
  v42 = type metadata accessor for SymmetricKey();
  (*(*(v42 - 8) + 32))(a9 + v41, a14, v42);
  v43 = (a9 + v34[13]);
  *v43 = a15;
  v43[1] = a16;
  v44 = a9 + v34[15];
  *v44 = a17;
  *(v44 + 16) = a18;
  v45 = (a9 + v34[16]);
  *v45 = a19;
  v45[1] = a20;
  *(a9 + v34[17]) = a21;
  outlined init with take of P256.Signing.PublicKey?(a22, a9 + v34[18], &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  *(a9 + v34[19]) = a23;
  *(a9 + v34[20]) = a24;
  result = outlined init with take of P256.Signing.PublicKey?(a25, a9 + v34[21], &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  *(a9 + v34[22]) = a26;
  *(a9 + v34[23]) = a27;
  return result;
}

uint64_t ServerHandshakeState.ServerHelloState.negotiatedSignatureAlgorithm.setter(int a1)
{
  result = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t ServerHandshakeState.ServerHelloState.init(originalState:keyScheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v12 = a3 + v11[6];
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  outlined init with take of P256.Signing.PublicKey?(a2, a3 + v11[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v13 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v14 = (a1 + v13[8]);
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 2);
  *v12 = v15;
  *(v12 + 2) = v14;
  v16 = (a1 + v13[15]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = (a3 + v11[7]);
  *v20 = v17;
  v20[1] = v18;
  v20[2] = v19;
  v21 = (a1 + v13[16]);
  v22 = *v21;
  v23 = v21[1];
  v24 = (a3 + v11[8]);
  *v24 = v22;
  v24[1] = v23;
  *(a3 + v11[9]) = *(a1 + v13[6]);
  outlined init with copy of Any?(a1 + v13[18], v10, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v25 = type metadata accessor for GeneralEPSK(0);
  v26 = (*(*(v25 - 8) + 48))(v10, 1, v25) != 1;
  outlined copy of Data?(v17, v18);

  outlined destroy of P256.Signing.PrivateKey?(v10, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  *(a3 + v11[10]) = v26;
  v27 = v40;
  *(a3 + v11[11]) = *(a1 + v13[20]);
  v28 = v13[21];
  outlined init with copy of Any?(a1 + v28, v27, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v29 = type metadata accessor for PAKEServerState(0);
  v30 = (*(*(v29 - 8) + 48))(v27, 1, v29);
  if (v30 == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v27, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v31 = 0;
  }

  else
  {
    v31 = *(v27 + *(v29 + 32));
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v27, type metadata accessor for PAKEServerState);
  }

  v32 = a3 + v11[12];
  *v32 = v31;
  *(v32 + 2) = v30 == 1;
  v33 = a1 + v13[7];
  LOWORD(v32) = *v33;
  LOBYTE(v33) = *(v33 + 2);
  v34 = a3 + v11[13];
  *v34 = v32;
  *(v34 + 2) = v33;
  *(a3 + v11[15]) = *(a1 + v13[17]);
  v35 = (a1 + v13[9]);
  LOBYTE(v32) = *v35;
  LOBYTE(v35) = v35[1];
  v36 = (a3 + v11[14]);
  *v36 = v32;
  v36[1] = v35;
  outlined init with copy of Any?(a1 + v28, a3 + v11[16], &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v37 = *(a1 + v13[23]);
  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.ClientHelloState);
  *(a3 + v11[17]) = v37;
  return result;
}

uint64_t ServerHandshakeState.ServerHelloState.clientQUICTransportParameters.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

uint64_t ServerHandshakeState.ServerHelloState.selectedALPN.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 32));

  return v2;
}

uint64_t ServerHandshakeState.ServerEncryptedExtensionsState.init(originalState:keyScheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  outlined init with take of P256.Signing.PublicKey?(a2, a3 + v6[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v7 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v8 = (a1 + v7[6]);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 2);
  v10 = a3 + v6[6];
  *v10 = v9;
  *(v10 + 2) = v8;
  v11 = (a1 + v7[7]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = (a3 + v6[7]);
  *v15 = v12;
  v15[1] = v13;
  v15[2] = v14;
  v16 = (a1 + v7[8]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (a3 + v6[8]);
  *v19 = v17;
  v19[1] = v18;
  *(a3 + v6[9]) = *(a1 + v7[9]);
  *(a3 + v6[10]) = *(a1 + v7[10]);
  *(a3 + v6[11]) = *(a1 + v7[11]);
  v20 = a1 + v7[12];
  LOWORD(v17) = *v20;
  LOBYTE(v20) = *(v20 + 2);
  v21 = a3 + v6[12];
  *v21 = v17;
  *(v21 + 2) = v20;
  v22 = a1 + v7[13];
  LOWORD(v17) = *v22;
  LOBYTE(v22) = *(v22 + 2);
  v23 = a3 + v6[13];
  *v23 = v17;
  *(v23 + 2) = v22;
  *(a3 + v6[14]) = *(a1 + v7[15]);
  outlined init with copy of Any?(a1 + v7[16], a3 + v6[15], &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  LOBYTE(v7) = *(a1 + v7[17]);
  outlined copy of Data?(v12, v13);

  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.ServerHelloState);
  *(a3 + v6[16]) = v7;
  return result;
}

uint64_t ServerHandshakeState.ServerCertificateState.init(originalState:keyScheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  outlined init with take of P256.Signing.PublicKey?(a2, a3 + v6[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v7 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v8 = (a1 + v7[6]);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 2);
  v10 = a3 + v6[6];
  *v10 = v9;
  *(v10 + 2) = v8;
  v11 = (a1 + v7[7]);
  v13 = *v11;
  v12 = v11[1];
  v14 = v11[2];
  v15 = (a3 + v6[7]);
  *v15 = v13;
  v15[1] = v12;
  v15[2] = v14;
  v16 = (a1 + v7[8]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (a3 + v6[8]);
  *v19 = v17;
  v19[1] = v18;
  *(a3 + v6[9]) = *(a1 + v7[9]);
  *(a3 + v6[10]) = *(a1 + v7[11]);
  v20 = a1 + v7[13];
  LOWORD(v17) = *v20;
  LOBYTE(v20) = *(v20 + 2);
  v21 = a3 + v6[11];
  *v21 = v17;
  *(v21 + 2) = v20;
  *(a3 + v6[12]) = *(a1 + v7[14]);
  v22 = *(a1 + v7[16]);
  outlined copy of Data?(v13, v12);

  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  *(a3 + v6[13]) = v22;
  return result;
}

uint64_t ServerHandshakeState.ServerCertificateVerifyState.selectedALPN.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ServerHandshakeState.ServerCertificateVerifyState.init(originalState:keyScheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v7 = (a3 + v6[7]);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  outlined init with take of P256.Signing.PublicKey?(a2, a3 + v6[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v8 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v9 = (a1 + v8[7]);
  v11 = *v9;
  v10 = v9[1];
  v12 = v9[2];
  v13 = (a3 + v6[6]);
  *v13 = v11;
  v13[1] = v10;
  v13[2] = v12;
  v14 = (a1 + v8[8]);
  v15 = v14[1];
  *v7 = *v14;
  v7[1] = v15;
  *(a3 + v6[8]) = *(a1 + v8[9]);
  *(a3 + v6[9]) = *(a1 + v8[10]);
  v16 = (a1 + v8[11]);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 2);
  v18 = a3 + v6[10];
  *v18 = v17;
  *(v18 + 2) = v16;
  *(a3 + v6[11]) = *(a1 + v8[12]);
  LOBYTE(v7) = *(a1 + v8[13]);
  outlined copy of Data?(v11, v10);

  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.ServerCertificateState);
  *(a3 + v6[12]) = v7;
  return result;
}

uint64_t ServerHandshakeState.ServerCertificateVerifyState.clientQUICTransportParameters.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

uint64_t ServerHandshakeState.ServerCertificateVerifyState.selectedALPN.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

uint64_t ServerHandshakeState.ServerFinishedState.init(originalState:keyScheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v6 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  outlined init with take of P256.Signing.PublicKey?(a2, a3 + v6[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v7 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v8 = (a1 + v7[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = (a3 + v6[6]);
  *v12 = v9;
  v12[1] = v10;
  v12[2] = v11;
  v13 = (a1 + v7[7]);
  v14 = *v13;
  v15 = v13[1];
  v16 = (a3 + v6[7]);
  *v16 = v14;
  v16[1] = v15;
  *(a3 + v6[8]) = *(a1 + v7[8]);
  *(a3 + v6[9]) = *(a1 + v7[9]);
  v17 = a3 + v6[10];
  *v17 = 0;
  *(v17 + 2) = 1;
  v18 = a1 + v7[10];
  LOWORD(v14) = *v18;
  LOBYTE(v18) = *(v18 + 2);
  v19 = a3 + v6[11];
  *v19 = v14;
  *(v19 + 2) = v18;
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = *(a1 + v7[11]);
  v20 = v6[14];
  v21 = type metadata accessor for PAKEServerState(0);
  (*(*(v21 - 8) + 56))(a3 + v20, 1, 1, v21);
  LOBYTE(v7) = *(a1 + v7[12]);
  outlined copy of Data?(v9, v10);

  result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
  *(a3 + v6[15]) = v7;
  return result;
}

int *ServerHandshakeState.ServerFinishedState.init(originalState:keyScheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  result = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v10 = result;
  v11 = *(a1 + result[10]);
  if (v11 & 1) == 0 && (*(a1 + result[12] + 2))
  {
    __break(1u);
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v12 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
    outlined init with take of P256.Signing.PublicKey?(a2, a3 + v12[5], &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v13 = (a1 + v10[7]);
    v14 = v13[1];
    v29 = *v13;
    v15 = v13[2];
    v16 = (a3 + v12[6]);
    *v16 = v29;
    v16[1] = v14;
    v16[2] = v15;
    v17 = (a1 + v10[8]);
    v18 = *v17;
    v19 = v17[1];
    v20 = (a3 + v12[7]);
    *v20 = v18;
    v20[1] = v19;
    *(a3 + v12[8]) = *(a1 + v10[9]);
    *(a3 + v12[9]) = *(a1 + v10[11]);
    v21 = a1 + v10[12];
    LOWORD(v18) = *v21;
    LOBYTE(v21) = *(v21 + 2);
    v22 = a3 + v12[10];
    *v22 = v18;
    *(v22 + 2) = v21;
    v23 = a1 + v10[13];
    LOWORD(v18) = *v23;
    LOBYTE(v23) = *(v23 + 2);
    v24 = a3 + v12[11];
    *v24 = v18;
    *(v24 + 2) = v23;
    *(a3 + v12[12]) = v11;
    *(a3 + v12[13]) = *(a1 + v10[14]);
    v25 = v10[15];
    outlined init with copy of Any?(a1 + v25, a3 + v12[14], &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    outlined init with copy of Any?(a1 + v25, v8, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    outlined copy of Data?(v29, v14);

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(a1, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v26 = type metadata accessor for PAKEServerState(0);
    v27 = (*(*(v26 - 8) + 48))(v8, 1, v26) != 1;
    result = outlined destroy of P256.Signing.PrivateKey?(v8, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    *(a3 + v12[15]) = v27;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV18sendingServerHello__9pskFailedAA10ByteBufferVAA0nO0V_9CryptoKit09SymmetricD0VSbtAA8TLSErrorOYKFAK6SHA384V_Tg5(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v35 = a3;
  v41 = a2;
  v38 = a1;
  v34 = type metadata accessor for SymmetricKey();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  outlined init with copy of Any?(v4, &v32 - v16, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 3)
  {
    outlined destroy of P256.Signing.PrivateKey?(v17, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_5:
    v39 = xmmword_1B26C6450;
    v26 = 2;
    LOBYTE(v40) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v26;
  }

  v19 = v14;
  v20 = v37;
  v21 = v36;
  v32 = v8;
  v33 = v4;
  v22 = v41;
  if (EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  v23 = v19;
  outlined init with take of P256.Signing.PublicKey?(v17, v19, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v39 = xmmword_1B26C6130;
  v40 = 0;
  specialized ByteBuffer.writeHandshakeMessage<A>(_:)();
  outlined init with copy of Any?(v23, v12, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v24 = *(v20 + 16);
  v25 = v21;
  v24(v21, v22, v34);
  v27 = *(&v39 + 1);
  v26 = v39;
  v28 = v40;
  outlined copy of Data._Representation(v39, *(&v39 + 1));
  v29 = v32;
  _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretV05earlyO005ecdheO016serverHelloBytes9pskFailedAHyx__GAF05EarlyO0Vyx__G_9CryptoKit09SymmetricD0VAA10ByteBufferVSbtcfCAQ6SHA384V_Tt4g5(v12, v25, v26, v27, v28, v35 & 1, v32);
  outlined destroy of P256.Signing.PrivateKey?(v23, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
  v30 = v33;
  outlined destroy of P256.Signing.PrivateKey?(v33, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  outlined init with take of P256.Signing.PublicKey?(v29, v30, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  swift_storeEnumTagMultiPayload();
  return v26;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV21sendingServerFinishedyAA10ByteBufferVAA0O7MessageVAA8TLSErrorOYKF9CryptoKit6SHA384V_Tg5(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v28 = a2;
  v4 = v3;
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  outlined init with copy of Any?(v4, &v26 - v16, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v19 = a1;
    v27 = v4;
    v20 = v28;
    v21 = v31;
    if (EnumCaseMultiPayload)
    {
      outlined init with take of P256.Signing.PublicKey?(v17, v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      v29 = xmmword_1B26C6130;
      v30 = 0;
      specialized ByteBuffer.writeHandshakeMessage<A>(_:)(v19, v20, v21);
      outlined init with copy of Any?(v11, v9, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      v24 = *(&v29 + 1);
      v22 = v29;
      v25 = v30;
      outlined copy of Data._Representation(v29, *(&v29 + 1));
      _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO12MasterSecretV09handshakeO019serverFinishedBytesAHyx__GAF09HandshakeO0Vyx__G_AA10ByteBufferVtcfC9CryptoKit6SHA384V_Tt2g5(v9, v22, v24, v25, v15);
      outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO15HandshakeSecretVy9CryptoKit6SHA384V__GMR);
      swift_storeEnumTagMultiPayload();
      outlined assign with take of PartialHandshakeResult?(v15, v27, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
      return v22;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  outlined destroy of P256.Signing.PrivateKey?(v17, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
LABEL_6:
  v29 = xmmword_1B26C6450;
  v22 = 2;
  LOBYTE(v30) = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return v22;
}

uint64_t _s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretV12serverCreate16clientHelloBytes13negotiatedPSK11useRawEPSKs11binderValue18bindersArrayLengthAHyx__GAA10ByteBufferV_AA11GeneralEPSKVSgSbAQSgSiSgtAA8TLSErrorOYKFZ9CryptoKit6SHA384V_Tt5g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int64_t a3@<X2>, char *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  v146 = a8;
  v156 = a7;
  v148 = a6;
  LODWORD(v157) = a5;
  v167 = a4;
  v158 = a3;
  v164 = a1;
  v150 = a9;
  v13 = type metadata accessor for SHA384Digest();
  v160 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v149 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v145 = &v136 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v170 = &v136 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR);
  v155 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v143 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v166 = &v136 - v22;
  v141 = type metadata accessor for RawEPSK(0);
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for PSK(0);
  MEMORY[0x1EEE9AC00](v147);
  v26 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v136 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v136 - v31;
  v33 = type metadata accessor for SymmetricKey();
  v173 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v144 = &v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v169 = &v136 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v165 = &v136 - v38;
  v39 = type metadata accessor for SHA384();
  v162 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v163 = &v136 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v136 - v42;
  v44 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  v176 = v43;
  v168 = v39;
  v172 = v44;
  dispatch thunk of HashFunction.init()();
  v45 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v46 = 0;
    if (v45 == 2)
    {
      v46 = *(v164 + 24);
    }
  }

  else if (v45)
  {
    v46 = v164 >> 32;
  }

  else
  {
    v46 = BYTE6(a2);
  }

  if (v46 < v158)
  {
    __break(1u);
    goto LABEL_66;
  }

  v137 = a2 >> 62;
  v138 = a2;
  v47 = Data._Representation.subscript.getter();
  v49 = v48;
  v50 = v171;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v47, v48, v176);
  outlined consume of Data._Representation(v47, v49);
  v171 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E6966400]);
  v51 = dispatch thunk of static Digest.byteCount.getter();
  if (v51 < 0)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
    goto LABEL_28;
  }

  v154 = v19;
  if (v51)
  {
    v52 = v51;
    v53 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v53 + 16) = v52;
    bzero((v53 + 32), v52);
  }

  else
  {
    v53 = MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any?(v167, v29, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v54 = type metadata accessor for GeneralEPSK(0);
  v55 = *(v54 - 8);
  v152 = *(v55 + 48);
  v151 = v55 + 48;
  v56 = v152(v29, 1, v54);
  v161 = v33;
  v159 = v13;
  v153 = v50;
  if (v56 == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v29, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    v57 = v173;
    (*(v173 + 56))(v32, 1, 1, v33);
    *&v174 = v53;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E08]);
    SymmetricKey.init<A>(data:)();
    v58 = (*(v57 + 48))(v32, 1, v33);
    v19 = v156;
    if (v58 != 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v32, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    }
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_1(v29, v26, type metadata accessor for PSK);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v60 = (v173 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      v61 = v142;
      outlined init with take of ServerHandshakeState.IdleState(v26, v142, type metadata accessor for RawEPSK);
      v62 = v161;
      (*v60)(v32, v61 + *(v141 + 20), v161);
      v63 = type metadata accessor for RawEPSK;
    }

    else
    {
      v61 = v140;
      outlined init with take of ServerHandshakeState.IdleState(v26, v140, type metadata accessor for ImportedPSK);
      v62 = v161;
      (*v60)(v32, v61 + *(v139 + 20), v161);
      v63 = type metadata accessor for ImportedPSK;
    }

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v61, v63);
    v19 = v156;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_1(v29, type metadata accessor for GeneralEPSK);
    v64 = v173;
    (*(v173 + 56))(v32, 0, 1, v62);
    (*(v64 + 32))(v165, v32, v62);
  }

  *&v174 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E6969E00]);
  v65 = v168;
  static HKDF.extract<A>(inputKeyMaterial:salt:)();

  if (v157)
  {
    v66 = 0x646E696220747865;
  }

  else
  {
    v66 = 0x646E696220706D69;
  }

  v67 = v163;
  dispatch thunk of HashFunction.init()();
  v68 = v170;
  dispatch thunk of HashFunction.finalize()();
  v29 = (v162 + 8);
  v157 = *(v162 + 8);
  v157(v67, v65);
  v69 = v159;
  v70 = dispatch thunk of static Digest.byteCount.getter();
  _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(v66, 0xEA00000000007265, v70, v169);

  v72 = v160 + 8;
  v71 = *(v160 + 8);
  v71(v68, v69);
  if (v152(v167, 1, v54) == 1)
  {
    v152 = v71;
    v167 = v29;
LABEL_24:
    v73 = v168;
    dispatch thunk of HashFunction.finalize()();
    v74 = dispatch thunk of static Digest.byteCount.getter();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateO11EarlySecretVy9CryptoKit6SHA384V__GMR);
    v76 = *(v75 + 44);
    v77 = v75;
    v164 = v75;
    v78 = v150;
    v79 = v166;
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x6661727420652063, 0xEB00000000636966, v74, v150 + v76);
    v80 = dispatch thunk of static Digest.byteCount.getter();
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x616D207078652065, 0xEC00000072657473, v80, v78 + *(v77 + 48));
    v81 = v163;
    dispatch thunk of HashFunction.init()();
    v82 = v149;
    dispatch thunk of HashFunction.finalize()();
    v157(v81, v73);
    v83 = dispatch thunk of static Digest.byteCount.getter();
    v84 = v164;
    _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AA24HashedAuthenticationCodeVyAOGAA0Q6DigestVTt4g5(0x64657669726564, 0xE700000000000000, v83, v78 + *(v164 + 36));
    v85 = v152;
    (v152)(v82, v69);
    v85(v170, v69);
    (*(v155 + 8))(v79, v154);
    v86 = v173;
    v87 = v161;
    (*(v173 + 8))(v165, v161);
    (*(v162 + 32))(v78, v176, v73);
    return (*(v86 + 32))(v78 + *(v84 + 40), v169, v87);
  }

  v13 = v154;
  if (v19 >> 60 == 15 || (a11 & 1) != 0)
  {
    v96 = 0x80000001B26CDE70;
    v97 = v154;
    v98 = 0xD00000000000002CLL;
    *&v174 = 0xD00000000000002CLL;
    *(&v174 + 1) = 0x80000001B26CDE70;
    v99 = 1;
    v175 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v100 = *(v173 + 8);
    v101 = v161;
    v100(v169, v161);
    (*(v155 + 8))(v166, v97);
    v100(v165, v101);
    result = (v157)(v176, v168);
LABEL_64:
    *a12 = v98;
    *(a12 + 8) = v96;
    *(a12 + 16) = v99;
    return result;
  }

  v152 = v71;
  v160 = v72;
  outlined copy of Data._Representation(v148, v19);
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_67;
  }

LABEL_28:
  v89 = type metadata accessor for Logger();
  v147 = __swift_project_value_buffer(v89, logger);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  v92 = os_log_type_enabled(v90, v91);
  v93 = v143;
  if (v92)
  {
    v94 = swift_slowAlloc();
    *v94 = 134217984;
    *(v94 + 4) = a10;
    _os_log_impl(&dword_1B25F5000, v90, v91, "bindersArrayLength: %ld", v94, 0xCu);
    MEMORY[0x1B274ECF0](v94, -1, -1);
  }

  if (v137 > 1)
  {
    if (v137 == 2)
    {
      v95 = *(v164 + 24);
    }

    else
    {
      v95 = 0;
    }
  }

  else if (v137)
  {
    v95 = v164 >> 32;
  }

  else
  {
    v95 = BYTE6(v138);
  }

  result = v158;
  if (v95 < v158)
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v102 = Data._Representation.subscript.getter();
  specialized BidirectionalCollection.dropLast(_:)(a10 + 3, v102, v103, &v174);
  v104 = v174;
  v105 = v93;
  v106 = v13;
  v107 = v163;
  v108 = v168;
  v167 = v29;
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v104, *(&v104 + 1));
  v109 = v153;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v104, *(&v104 + 1), v107);
  v164 = v109;
  v158 = *(&v104 + 1);
  v151 = v104;
  outlined consume of Data._Representation(v104, *(&v104 + 1));
  dispatch thunk of HashFunction.finalize()();
  v157(v107, v108);
  v110 = dispatch thunk of static Digest.byteCount.getter();
  v111 = v144;
  v112 = _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5(0x64656873696E6966, 0xE800000000000000, MEMORY[0x1E69E7CC0], v110, v144);
  MEMORY[0x1EEE9AC00](v112);
  *(&v136 - 2) = v111;
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384Digest and conformance SHA384Digest, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
  v113 = v105;
  v114 = v164;
  result = dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v153 = v114;
  v115 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    v116 = v146;
    v117 = v148;
    if (v115 == 2)
    {
      v118 = *(v148 + 24);
    }

    else
    {
      v118 = 0;
    }
  }

  else
  {
    v116 = v146;
    v117 = v148;
    if (v115)
    {
      v118 = v148 >> 32;
    }

    else
    {
      v118 = BYTE6(v19);
    }
  }

  if (v118 < v116)
  {
    goto LABEL_69;
  }

  *&v174 = Data._Representation.subscript.getter();
  *(&v174 + 1) = v119;
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type HashedAuthenticationCode<SHA384> and conformance HashedAuthenticationCode<A>, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA384VGMR, MEMORY[0x1E69664B8]);
  lazy protocol witness table accessor for type Data and conformance Data();
  v120 = static MessageAuthenticationCode.== infix<A>(_:_:)();
  outlined consume of Data._Representation(v174, *(&v174 + 1));
  if (v120)
  {
    outlined consume of ByteBuffer?(v117, v19);
    outlined consume of Data._Representation(v151, v158);
    (*(v155 + 8))(v113, v106);
    v69 = v159;
    (v152)(v145, v159);
    (*(v173 + 8))(v144, v161);
    goto LABEL_24;
  }

  result = HashedAuthenticationCode.byteCount.getter();
  if (v115 > 1)
  {
    v121 = v146;
    v122 = v156;
    v123 = v148;
    if (v115 == 2)
    {
      v124 = *(v148 + 24);
    }

    else
    {
      v124 = 0;
    }
  }

  else
  {
    v121 = v146;
    v122 = v156;
    v123 = v148;
    if (v115)
    {
      v124 = v148 >> 32;
    }

    else
    {
      v124 = BYTE6(v156);
    }
  }

  v125 = __OFSUB__(v124, v121);
  v126 = v124 - v121;
  if (!v125)
  {
    if (result != v126)
    {
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        _os_log_impl(&dword_1B25F5000, v127, v128, "psk binder value not of expected length. likely epsk hash algorithm mismatch.", v129, 2u);
        MEMORY[0x1B274ECF0](v129, -1, -1);
      }
    }

    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_1B25F5000, v130, v131, "client binder value incorrect. aborting handshake.", v132, 2u);
      MEMORY[0x1B274ECF0](v132, -1, -1);
    }

    v174 = xmmword_1B26C9520;
    v99 = 2;
    v175 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(v123, v122);
    outlined consume of Data._Representation(v151, v158);
    v133 = *(v155 + 8);
    v133(v113, v106);
    (v152)(v145, v159);
    v134 = *(v173 + 8);
    v135 = v161;
    v134(v169, v161);
    v133(v166, v106);
    v134(v165, v135);
    v134(v144, v135);
    result = (v157)(v176, v168);
    v96 = 0;
    v98 = 31;
    goto LABEL_64;
  }

LABEL_70:
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 2 * v16) = *(*(v4 + 48) + 2 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary20ServerHandshakeStateO011ClientHelloE0V20negotiateCipherSuite33_03AB5AB83506F65A656301CC88CAC942LLyAA0iJ0VSayAIG_AJtAA8TLSErrorOYKFZTf4nnd_n(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    do
    {
      result = *(v4 + 2 * v3++);
      v6 = *(a2 + 16);
      v7 = (a2 + 32);
      while (v6)
      {
        v8 = *v7++;
        --v6;
        if (v8 == result)
        {
          return result;
        }
      }
    }

    while (v3 != v2);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B25F5000, v10, v11, "no common ciphersuites", v12, 2u);
    MEMORY[0x1B274ECF0](v12, -1, -1);
  }

  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return 6;
}

double _s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 2;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

char *specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x1B274CD90]();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t outlined copy of Extension.PAKE.PAKEClientHello?(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    outlined copy of Data._Representation(result, a2);
    outlined copy of Data._Representation(a4, a5);
  }

  return result;
}

uint64_t outlined consume of Extension.PAKE.PAKEClientHello?(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    outlined consume of Data._Representation(result, a2);
    outlined consume of Data._Representation(a4, a5);
  }

  return result;
}

uint64_t outlined assign with take of ServerHandshakeStateMachine.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of PAKEServerRecords?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of Extension.PreSharedKey.OfferedPSKs?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata completion function for ServerHandshakeState(uint64_t a1)
{
  result = type metadata accessor for ServerHandshakeState.IdleState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ServerHandshakeState.ClientHelloState(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ServerHandshakeState.ServerHelloState(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ServerHandshakeState.ServerCertificateState(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for ServerHandshakeState.ServerFinishedState(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for ServerHandshakeState.ReadyState(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void type metadata completion function for ServerHandshakeState.IdleState(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [GeneralEPSK]?(319, &lazy cache variable for type metadata for [GeneralEPSK]?, &_sSay15SwiftTLSLibrary11GeneralEPSKVGMd, &_sSay15SwiftTLSLibrary11GeneralEPSKVGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [GeneralEPSK]?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for PAKEServerRecords?, &type metadata for PAKEServerRecords);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for ServerSessionKeyManager<SHA384>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ServerSessionKeyManager<SHA384>)
  {
    v2 = type metadata accessor for SHA384();
    v3 = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
    v5 = type metadata accessor for ServerSessionKeyManager(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ServerSessionKeyManager<SHA384>);
    }
  }
}

void type metadata accessor for [GeneralEPSK]?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_memcpy5_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ServerHandshakeState.NegotiatedParams(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ServerHandshakeState.NegotiatedParams(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15SwiftTLSLibrary9ExtensionO4PAKEO15PAKEClientHelloVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ServerHandshakeState.ClientHelloVerifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 249))
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

uint64_t storeEnumTagSinglePayload for ServerHandshakeState.ClientHelloVerifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(uint64_t a1)
{
  result = type metadata accessor for GeneralEPSK(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for ServerHandshakeState.ClientHelloState(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?, &type metadata for NamedGroup);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for SignatureScheme?, &type metadata for SignatureScheme);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for CertificateType?, &type metadata for CertificateType);
          if (v5 <= 0x3F)
          {
            type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for Extension.KeyShare.KeyShareEntry?, &type metadata for Extension.KeyShare.KeyShareEntry);
            if (v6 <= 0x3F)
            {
              type metadata accessor for GeneratedEphemeralPrivateKey?(319, &lazy cache variable for type metadata for GeneratedEphemeralPrivateKey?, type metadata accessor for GeneratedEphemeralPrivateKey);
              if (v7 <= 0x3F)
              {
                type metadata accessor for SymmetricKey();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for GeneratedEphemeralPrivateKey?(319, &lazy cache variable for type metadata for GeneralEPSK?, type metadata accessor for GeneralEPSK);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for GeneratedEphemeralPrivateKey?(319, &lazy cache variable for type metadata for PAKEServerState?, type metadata accessor for PAKEServerState);
                          if (v13 <= 0x3F)
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
      }
    }
  }
}

void type metadata accessor for GeneratedEphemeralPrivateKey?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata completion function for ServerHandshakeState.ServerHelloState(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for SignatureScheme?, &type metadata for SignatureScheme);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for PAKEScheme?, &type metadata for PAKEScheme);
            if (v6 <= 0x3F)
            {
              type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?, &type metadata for NamedGroup);
              if (v7 <= 0x3F)
              {
                type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for CertificateType?, &type metadata for CertificateType);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for GeneratedEphemeralPrivateKey?(319, &lazy cache variable for type metadata for PAKEServerState?, type metadata accessor for PAKEServerState);
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

void type metadata accessor for PAKEServerRecords?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for ServerHandshakeState.ServerEncryptedExtensionsState(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for SignatureScheme?, &type metadata for SignatureScheme);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for PAKEScheme?, &type metadata for PAKEScheme);
            if (v6 <= 0x3F)
            {
              type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?, &type metadata for NamedGroup);
              if (v7 <= 0x3F)
              {
                type metadata accessor for GeneratedEphemeralPrivateKey?(319, &lazy cache variable for type metadata for PAKEServerState?, type metadata accessor for PAKEServerState);
                if (v8 <= 0x3F)
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

void type metadata completion function for ServerHandshakeState.ServerCertificateState(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for SignatureScheme?, &type metadata for SignatureScheme);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?, &type metadata for NamedGroup);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for ServerHandshakeState.ServerCertificateVerifyState(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?, &type metadata for NamedGroup);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for ServerHandshakeState.ServerFinishedState(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for PAKEScheme?, &type metadata for PAKEScheme);
          if (v5 <= 0x3F)
          {
            type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?, &type metadata for NamedGroup);
            if (v6 <= 0x3F)
            {
              type metadata accessor for GeneratedEphemeralPrivateKey?(319, &lazy cache variable for type metadata for PAKEServerState?, type metadata accessor for PAKEServerState);
              if (v7 <= 0x3F)
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

uint64_t __swift_get_extra_inhabitant_index_77Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_78Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for ServerHandshakeState.ReadyState(uint64_t a1)
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ServerSessionKeyManager<SHA384>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for ByteBuffer?, &type metadata for ByteBuffer);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for PAKEScheme?, &type metadata for PAKEScheme);
          if (v5 <= 0x3F)
          {
            type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for NamedGroup?, &type metadata for NamedGroup);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance knownTLSAlert()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_1B26C9BD0[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance knownTLSAlert(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_1B26C9BD0[v2]);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance knownTLSAlert@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized knownTLSAlert.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void Alert.hash(into:)(int a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
}

Swift::Int Alert.hashValue.getter(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Alert()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Alert()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Alert(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t Alert.description.getter(__int16 a1)
{
  v1 = HIBYTE(a1);
  if (a1 == 2)
  {
    result = 0x6F63657220646162;
    switch(v1)
    {
      case 10:
        result = 0xD000000000000012;
        break;
      case 20:
        return result;
      case 22:
        result = 0x6F2064726F636572;
        break;
      case 40:
        result = 0xD000000000000011;
        break;
      case 42:
        result = 0x7472656320646162;
        break;
      case 43:
      case 120:
        result = 0xD000000000000017;
        break;
      case 44:
      case 45:
      case 46:
        result = 0xD000000000000013;
        break;
      case 47:
        result = 0xD000000000000011;
        break;
      case 48:
        result = 0x206E776F6E6B6E75;
        break;
      case 49:
        result = 0x6420737365636361;
        break;
      case 50:
        result = 0x652065646F636564;
        break;
      case 51:
        result = 0x2074707972636564;
        break;
      case 70:
        result = 0xD000000000000010;
        break;
      case 71:
      case 110:
        result = 0xD000000000000015;
        break;
      case 80:
        result = 0x6C616E7265746E69;
        break;
      case 86:
        result = 0xD000000000000016;
        break;
      case 90:
        result = 0x6E61632072657375;
        break;
      case 109:
        result = 0xD000000000000011;
        break;
      case 112:
        result = 0xD000000000000011;
        break;
      case 113:
        result = 0xD00000000000001FLL;
        break;
      case 115:
      case 116:
        result = 0xD000000000000014;
        break;
      default:
        goto LABEL_4;
    }
  }

  else if (a1 == 1 && !HIBYTE(a1))
  {
    return 0x6F6E2065736F6C63;
  }

  else
  {
LABEL_4:
    _StringGuts.grow(_:)(22);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v2);

    MEMORY[0x1B274D610](41, 0xE100000000000000);
    return 0xD000000000000013;
  }

  return result;
}

uint64_t ByteBuffer.writeAlert(_:)(unsigned int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1 >> 8;
  v5 = a1;
  v2 = MEMORY[0x1E69E6290];
  v3 = MEMORY[0x1E6969DF8];
  v8 = MEMORY[0x1E69E6290];
  v9 = MEMORY[0x1E6969DF8];
  v6 = &v5;
  v7 = &v6;
  __swift_project_boxed_opaque_existential_0(&v6, MEMORY[0x1E69E6290]);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v6);
  v5 = v1;
  v8 = v2;
  v9 = v3;
  v6 = &v5;
  v7 = &v6;
  __swift_project_boxed_opaque_existential_0(&v6, v2);
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v6);
  return 2;
}

uint64_t ByteBuffer.readAlert()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  v1 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  v2 = (v0 | v1) >> 8;
  if (((v0 | v1) & 0x100) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = (v0 | (v1 << 8));
  }

  return v3 & 0xFFFEFFFF | ((v2 & 1) << 16);
}

unint64_t lazy protocol witness table accessor for type knownTLSAlert and conformance knownTLSAlert()
{
  result = lazy protocol witness table cache variable for type knownTLSAlert and conformance knownTLSAlert;
  if (!lazy protocol witness table cache variable for type knownTLSAlert and conformance knownTLSAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type knownTLSAlert and conformance knownTLSAlert);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Alert and conformance Alert()
{
  result = lazy protocol witness table cache variable for type Alert and conformance Alert;
  if (!lazy protocol witness table cache variable for type Alert and conformance Alert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Alert and conformance Alert);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for knownTLSAlert(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for knownTLSAlert(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Alert(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for Alert(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

void _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKF(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  v11 = 0uLL;
  if ((v10 & 0x10000) != 0)
  {
    v20 = -2;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    goto LABEL_6;
  }

  v48 = a3;
  v12 = v10;
  v14 = *v4;
  v13 = v4[1];
  v15 = v4[2];
  outlined copy of Data._Representation(*v4, v13);
  v16 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v16 & 0x10000) != 0 || (v17 = ByteBuffer.readSlice(length:)(v16), v18 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v14;
    v4[1] = v13;
    v20 = -2;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v4[2] = v15;
    v11 = 0uLL;
LABEL_6:
    *a4 = v11;
    *(a4 + 16) = v21;
    *(a4 + 32) = v22;
    *(a4 + 48) = v23;
    *(a4 + 64) = v24;
    *(a4 + 80) = v20;
    return;
  }

  v45 = v17;
  v46 = v18;
  v47 = v19;
  _s15SwiftTLSLibrary10ByteBufferV13readExtension11messageType17helloRetryRequestAA0F0OSgAA09HandshakeH0V_SbtAA8TLSErrorOYKFAhCzAMYKXEfU_(&v45, v12, a1, a2 & 1, v37, &v39);
  if (v5)
  {
    v26 = v37[0];
    v25 = v37[1];
    v27 = v38;
    v28 = v45;
    v29 = v46;
LABEL_20:
    outlined consume of Data._Representation(v28, v29);
    outlined consume of Data._Representation(*v4, v4[1]);
    *v4 = v14;
    v4[1] = v13;
    v4[2] = v15;
    *&v39 = v26;
    *(&v39 + 1) = v25;
    LOBYTE(v40) = v27;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v34 = v48;
    *v48 = v26;
    v34[1] = v25;
    *(v34 + 16) = v27;
    return;
  }

  v30 = v46 >> 62;
  if ((v46 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v31 = *(v45 + 24);
    }

    else
    {
      v31 = 0;
    }
  }

  else if (v30)
  {
    v31 = v45 >> 32;
  }

  else
  {
    v31 = BYTE6(v46);
  }

  if (!__OFSUB__(v31, v47))
  {
    if (v31 == v47)
    {
      outlined consume of Data._Representation(v45, v46);
      outlined consume of Data._Representation(v14, v13);
      v11 = v39;
      v21 = v40;
      v22 = v41;
      v23 = v42;
      v24 = v43;
      v20 = v44;
      goto LABEL_6;
    }

    v27 = 2;
    v32 = v45;
    v33 = v46;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    v35[2] = v41;
    v35[3] = v42;
    v35[4] = v43;
    v36 = v44;
    v35[0] = v39;
    v35[1] = v40;
    outlined destroy of Extension(v35);
    v29 = v33;
    v28 = v32;
    v25 = 0;
    v26 = 1;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t Extension.type.getter()
{
  result = 0;
  switch(*(v0 + 80) >> 4)
  {
    case 1:
      result = 10;
      break;
    case 2:
      result = 43;
      break;
    case 3:
      result = 16;
      break;
    case 4:
      result = 51;
      break;
    case 5:
      result = 42;
      break;
    case 6:
      result = 13;
      break;
    case 7:
      result = 20;
      break;
    case 8:
      result = 57;
      break;
    case 9:
      result = 45;
      break;
    case 0xA:
      result = 41;
      break;
    case 0xB:
      result = 58;
      break;
    case 0xC:
      result = 35387;
      break;
    case 0xD:
      result = *v0;
      break;
    default:
      return result;
  }

  return result;
}

void Extension.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = *(v1 + 64);
  v10 = *(v1 + 72);
  v12 = *(v1 + 80);
  switch(v12 >> 4)
  {
    case 1u:
      MEMORY[0x1B274DB20](1);
      v22 = *(v2 + 16);
      MEMORY[0x1B274DB20](v22);
      if (v22)
      {
        v23 = (v2 + 32);
        do
        {
          v24 = *v23++;
          Hasher._combine(_:)(v24);
          --v22;
        }

        while (v22);
      }

      return;
    case 2u:
      MEMORY[0x1B274DB20](2);
      if (v3)
      {
        v14 = v2 >> 8;
        v15 = 1;
        goto LABEL_20;
      }

      MEMORY[0x1B274DB20](0);
      v34 = *(v2 + 16);
      MEMORY[0x1B274DB20](v34);
      if (v34)
      {
        v35 = (v2 + 33);
        do
        {
          v36 = *(v35 - 1);
          v37 = *v35;
          v35 += 2;
          Hasher._combine(_:)(v36);
          Hasher._combine(_:)(v37);
          --v34;
        }

        while (v34);
      }

      return;
    case 3u:
      MEMORY[0x1B274DB20](3);
      if (v4)
      {
        MEMORY[0x1B274DB20](1);

        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1B274DB20](0);
        v38 = *(v2 + 16);
        MEMORY[0x1B274DB20](v38);
        if (v38)
        {
          v39 = v2 + 40;
          do
          {

            String.hash(into:)();

            v39 += 16;
            --v38;
          }

          while (v38);
        }
      }

      return;
    case 4u:
      MEMORY[0x1B274DB20](4);

      Extension.KeyShare.hash(into:)(a1, v2, v3, v4, v5);
      return;
    case 5u:
      MEMORY[0x1B274DB20](5);
      if (BYTE4(v2) == 1)
      {
        goto LABEL_116;
      }

      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v2);
      return;
    case 6u:
      MEMORY[0x1B274DB20](6);
      v27 = *(v2 + 16);
      MEMORY[0x1B274DB20](v27);
      if (v27)
      {
        v28 = (v2 + 32);
        do
        {
          v29 = *v28++;
          Hasher._combine(_:)(v29);
          --v27;
        }

        while (v27);
      }

      return;
    case 7u:
      MEMORY[0x1B274DB20](7);
      if (v3)
      {
        goto LABEL_26;
      }

      MEMORY[0x1B274DB20](0);
      v40 = *(v2 + 16);
      MEMORY[0x1B274DB20](v40);
      if (v40)
      {
        v41 = (v2 + 32);
        do
        {
          v42 = *v41++;
          Hasher._combine(_:)(v42);
          --v40;
        }

        while (v40);
      }

      return;
    case 8u:
      MEMORY[0x1B274DB20](8);
      v30 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        if (v30 == 2)
        {
          v31 = *(v2 + 24);
        }

        else
        {
          v31 = 0;
        }
      }

      else if (v30)
      {
        v31 = v2 >> 32;
      }

      else
      {
        v31 = BYTE6(v3);
      }

      if (v31 < v4)
      {
        goto LABEL_129;
      }

      goto LABEL_92;
    case 9u:
      MEMORY[0x1B274DB20](9);
      v18 = *(v2 + 16);
      MEMORY[0x1B274DB20](v18);
      if (v18)
      {
        v19 = (v2 + 32);
        do
        {
          v20 = *v19++;
          Hasher._combine(_:)(v20);
          --v18;
        }

        while (v18);
      }

      return;
    case 0xAu:
      MEMORY[0x1B274DB20](10);
      if (v4)
      {
        MEMORY[0x1B274DB20](1);
        Hasher._combine(_:)(v2);
      }

      else
      {
        MEMORY[0x1B274DB20](0);
        specialized Array<A>.hash(into:)(a1, v2);

        specialized Array<A>.hash(into:)(a1, v3);
      }

      return;
    case 0xBu:
      MEMORY[0x1B274DB20](11);
      if ((v2 & 0x10000) != 0)
      {
LABEL_26:
        MEMORY[0x1B274DB20](1);
        v21 = v2;
      }

      else
      {
        v14 = v2 >> 8;
        v15 = 0;
LABEL_20:
        MEMORY[0x1B274DB20](v15);
        Hasher._combine(_:)(v2);
        v21 = v14;
      }

      goto LABEL_117;
    case 0xCu:
      v66 = v9;
      v67 = v8;
      MEMORY[0x1B274DB20](12);
      if ((v12 & 1) == 0)
      {
        MEMORY[0x1B274DB20](0);
        v32 = v3 >> 62;
        if ((v3 >> 62) > 1)
        {
          v33 = 0;
          if (v32 == 2)
          {
            v33 = *(v2 + 24);
          }
        }

        else if (v32)
        {
          v33 = v2 >> 32;
        }

        else
        {
          v33 = BYTE6(v3);
        }

        if (v33 < v4)
        {
          goto LABEL_130;
        }

        v45 = Data._Representation.subscript.getter();
        v47 = v46;
        Data.hash(into:)();
        outlined consume of Data._Representation(v45, v47);
        v48 = v6 >> 62;
        if ((v6 >> 62) > 1)
        {
          if (v48 == 2)
          {
            v49 = *(v5 + 24);
          }

          else
          {
            v49 = 0;
          }
        }

        else if (v48)
        {
          v49 = v5 >> 32;
        }

        else
        {
          v49 = BYTE6(v6);
        }

        if (v49 < v7)
        {
          goto LABEL_132;
        }

        v58 = Data._Representation.subscript.getter();
        v60 = v59;
        Data.hash(into:)();
        outlined consume of Data._Representation(v58, v60);

        specialized Array<A>.hash(into:)();
        return;
      }

      MEMORY[0x1B274DB20](1);
      Hasher._combine(_:)(v2);
      v16 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v16 == 2)
        {
          v17 = *(v3 + 24);
        }

        else
        {
          v17 = 0;
        }
      }

      else if (v16)
      {
        v17 = v3 >> 32;
      }

      else
      {
        v17 = BYTE6(v4);
      }

      if (v17 < v5)
      {
        goto LABEL_131;
      }

      v53 = Data._Representation.subscript.getter();
      v55 = v54;
      Data.hash(into:)();
      outlined consume of Data._Representation(v53, v55);
      if (v7 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        v56 = v7 >> 62;
        if ((v7 >> 62) > 1)
        {
          if (v56 == 2)
          {
            v57 = *(v6 + 24);
          }

          else
          {
            v57 = 0;
          }
        }

        else if (v56)
        {
          v57 = v6 >> 32;
        }

        else
        {
          v57 = BYTE6(v7);
        }

        if (v57 < v67)
        {
          goto LABEL_133;
        }

        v61 = Data._Representation.subscript.getter();
        v63 = v62;
        Data.hash(into:)();
        outlined consume of Data._Representation(v61, v63);
      }

      if (v11 >> 60 == 15)
      {
LABEL_116:
        v21 = 0;
LABEL_117:
        Hasher._combine(_:)(v21);
        return;
      }

      Hasher._combine(_:)(1u);
      v64 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v64 == 2)
        {
          v65 = *(v66 + 24);
        }

        else
        {
          v65 = 0;
        }
      }

      else if (v64)
      {
        v65 = v66 >> 32;
      }

      else
      {
        v65 = BYTE6(v11);
      }

      if (v65 < v10)
      {
        goto LABEL_134;
      }

      goto LABEL_92;
    case 0xDu:
      MEMORY[0x1B274DB20](13);
      Hasher._combine(_:)(v2);
      v25 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v25 != 2)
        {
          goto LABEL_87;
        }

        v26 = *(v3 + 24);
      }

      else if (v25)
      {
        v26 = v3 >> 32;
      }

      else
      {
        v26 = BYTE6(v4);
      }

      goto LABEL_88;
    default:
      MEMORY[0x1B274DB20](0);
      if (v3 >> 60 == 15)
      {
        MEMORY[0x1B274DB20](1);
      }

      else
      {
        MEMORY[0x1B274DB20](0);
        v43 = v3 >> 62;
        if ((v3 >> 62) > 1)
        {
          v44 = 0;
          if (v43 == 2)
          {
            v44 = *(v2 + 24);
          }
        }

        else if (v43)
        {
          v44 = v2 >> 32;
        }

        else
        {
          v44 = BYTE6(v3);
        }

        if (v44 >= v4)
        {
          goto LABEL_92;
        }

        __break(1u);
LABEL_87:
        v26 = 0;
LABEL_88:
        if (v26 < v5)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
        }

        else
        {
LABEL_92:
          v50 = Data._Representation.subscript.getter();
          v52 = v51;
          Data.hash(into:)();

          outlined consume of Data._Representation(v50, v52);
        }
      }

      return;
  }
}