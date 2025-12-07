const char *ResponseCache.DBError.init(errorCode:)(const char *result)
{
  if (result == 101)
  {
    return 0;
  }

  if (result == 100)
  {
    return 0;
  }

  result = result;
  if (result)
  {
    v1 = result;
    result = sqlite3_errstr(result);
    if (result)
    {
      String.init(cString:)();
      return v1;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t ResponseCache.DBError.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      return 0x7274706C6C756ELL;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        return 0x44746F4E68746170;
      }

      goto LABEL_12;
    }

    return 0x6E65704F746F6ELL;
  }

  else
  {
    if (!a3)
    {
      return 0x4F5F4554494C5153;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return 0x445F4554494C5153;
      }

LABEL_12:
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223DDF6D0](v6);

      MEMORY[0x223DDF6D0](44, 0xE100000000000000);
      MEMORY[0x223DDF6D0](a2, a3);
      MEMORY[0x223DDF6D0](41, 0xE100000000000000);
      return 0x28726F727265;
    }

    return 0x525F4554494C5153;
  }
}

void ResponseCache.open(directoryPath:flags:)(uint64_t a1, int a2)
{
  v4 = v2;
  ppDb[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for URL();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PerformanceUtil.Ticket(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v2 + 128))(v10))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v14, v15, "ResponseCache : Cache database already open", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    return;
  }

  v48 = a2;
  Date.init()();
  v17 = &v12[v9[5]];
  *v17 = "SiriInformationSearch/ResponseCache.swift";
  *(v17 + 1) = 41;
  v17[16] = 2;
  *&v12[v9[6]] = 145;
  v18 = &v12[v9[7]];
  *v18 = "open(directoryPath:flags:)";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v19 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000012, 0x80000002234DE8A0);
  v20 = &v12[v9[8]];
  *v20 = v19;
  v20[1] = v21;
  if (URL.hasDirectoryPath.getter())
  {
    v47 = v3;
    URL.path.getter();
    v22 = String.utf8CString.getter();

    v23 = access((v22 + 32), 0);

    if (v23)
    {
      v24 = [objc_opt_self() defaultManager];
      v25 = URL.path.getter();
      v26 = MEMORY[0x223DDF550](v25);

      ppDb[0] = 0;
      v27 = [v24 createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:ppDb];

      if (!v27)
      {
        v41 = ppDb[0];
        _convertNSErrorToError(_:)();

        goto LABEL_25;
      }

      v28 = ppDb[0];
    }

    URL.appendingPathComponent(_:isDirectory:)();
    v29 = URL.path.getter();
    v31 = v30;
    (*(v49 + 8))(v8, v6);
    ppDb[0] = 0;
    v32 = String.utf8CString.getter();
    v33 = sqlite3_open_v2((v32 + 32), ppDb, v48, 0);

    switch(v33)
    {
      case 0x65u:

        v42 = 0;
        v43 = 0;
        v44 = 2;
        break;
      case 0x64u:

        v42 = 0;
        v43 = 0;
        v44 = 1;
        break;
      case 0u:
        *(v4 + 24) = ppDb[0];
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.pommes);

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v50 = v38;
          *v37 = 136315138;
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v50);

          *(v37 + 4) = v39;
          _os_log_impl(&dword_2232BB000, v35, v36, "ResponseCache : Opened database @ %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x223DE0F80](v38, -1, -1);
          MEMORY[0x223DE0F80](v37, -1, -1);
        }

        else
        {
        }

        ResponseCache.createTables()();
        goto LABEL_26;
      default:
        if (!sqlite3_errstr(v33))
        {
          __break(1u);
          return;
        }

        v43 = String.init(cString:)();
        v44 = v45;
        v42 = v33;
        break;
    }

    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    swift_allocError();
    *v46 = v42;
    v46[1] = v43;
    v46[2] = v44;
  }

  else
  {
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    swift_allocError();
    *v40 = 0;
    v40[1] = 0;
    v40[2] = 5;
  }

LABEL_25:
  swift_willThrow();
LABEL_26:
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v12, 0);
  outlined destroy of PerformanceUtil.Ticket(v12);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResponseCache.close()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v27 - v3;
  if ((*(*v0 + 16))(v2))
  {
    closure #1 in ResponseCache.close()(v0, v4);
    v5 = sqlite3_close(v0[3]);
    v0[3] = 0;
    if (!v5)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.pommes);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2232BB000, v22, v23, "ResponseCache : Closed database", v24, 2u);
        MEMORY[0x223DE0F80](v24, -1, -1);
      }

      specialized ResponseCache.markPurgeable(_:)(v4);
      goto LABEL_24;
    }

    LODWORD(v6) = v5;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pommes);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315138;
      v27[1] = v6;
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v28);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2232BB000, v8, v9, "ResponseCache : Database close failed : %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x223DE0F80](v11, -1, -1);
      MEMORY[0x223DE0F80](v10, -1, -1);
    }

    if (v6 == 101)
    {
      v6 = 0;
      v15 = 0;
      v16 = 2;
      goto LABEL_23;
    }

    if (v6 == 100)
    {
      v6 = 0;
      v15 = 0;
      v16 = 1;
LABEL_23:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      swift_allocError();
      *v26 = v6;
      v26[1] = v15;
      v26[2] = v16;
      swift_willThrow();
LABEL_24:
      outlined destroy of MediaUserStateCenter?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      return;
    }

    if (sqlite3_errstr(v6))
    {
      v15 = String.init(cString:)();
      v16 = v25;
      v6 = v6;
      goto LABEL_23;
    }

    __break(1u);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2232BB000, v18, v19, "ResponseCache : Ignoring request to close because database is not open", v20, 2u);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }
  }
}

uint64_t closure #1 in ResponseCache.close()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_db_filename(*(a1 + 24), "main") && (MEMORY[0x223DDF610](), v3))
  {
    URL.init(fileURLWithPath:)();

    v4 = 0;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pommes);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2232BB000, v6, v7, "ResponseCache : Unable to obtain file name for DB", v8, 2u);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }

    v4 = 1;
  }

  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v4, 1, v9);
}

uint64_t ResponseCache.store(response:expiration:)(uint64_t a1, double a2)
{
  v3 = v2;
  v113 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v7);
  v106 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v101 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v98 - v12;
  v14 = PommesResponse.metadataDomainName.getter();
  v107 = *(v3 + 16);
  v108 = v15;
  v16 = PommesResponse.requestId.getter();
  v18 = v17;
  v109 = a1;
  PommesResponse.pommesCandidateId.getter();
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (a2 <= -1.0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (a2 >= 4294967300.0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v107;
  (*(*v107 + 152))(v16, v18, v13, v14, v108, 8, a2);

  v20 = outlined destroy of MediaUserStateCenter?(v13, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (((*(*v3 + 128))(v20) & 1) == 0)
  {

    v43 = PommesResponse.requestId.getter();
    v45 = v44;
    PommesResponse.pommesCandidateId.getter();
    (*(*v19 + 160))(v43, v45, v13, 1);

    outlined destroy of MediaUserStateCenter?(v13, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    swift_allocError();
    *v46 = 0;
    v46[1] = 0;
    v46[2] = 4;
    swift_willThrow();
    return 1;
  }

  v21 = v106;
  Date.init()();
  v22 = &v21[v7[5]];
  *v22 = "SiriInformationSearch/ResponseCache.swift";
  *(v22 + 1) = 41;
  v22[16] = 2;
  *&v21[v7[6]] = 216;
  v23 = &v21[v7[7]];
  *v23 = "store(response:expiration:)";
  *(v23 + 1) = 27;
  v23[16] = 2;
  v24 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000013, 0x80000002234DE910);
  v25 = &v21[v7[8]];
  *v25 = v24;
  v25[1] = v26;
  ppStmt = 0;
  v112 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234DE950);
  MEMORY[0x223DDF6D0](0x6361437972657571, 0xEA00000000006568);
  MEMORY[0x223DDF6D0](0x220A282022, 0xE500000000000000);
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xED00006873614865);
  MEMORY[0x223DDF6D0](571092002, 0xE400000000000000);
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xE900000000000065);
  MEMORY[0x223DDF6D0](571092002, 0xE400000000000000);
  MEMORY[0x223DDF6D0](0x6E69616D6F64, 0xE600000000000000);
  MEMORY[0x223DDF6D0](571092002, 0xE400000000000000);
  MEMORY[0x223DDF6D0](0x65736E6F70736572, 0xE800000000000000);
  MEMORY[0x223DDF6D0](571092002, 0xE400000000000000);
  MEMORY[0x223DDF6D0](0x6974617269707865, 0xEA00000000006E6FLL);
  MEMORY[0x223DDF6D0](0xD00000000000001BLL, 0x80000002234DE970);
  v105 = v112;
  v27 = PommesResponse.searchRequestUtterance.getter();
  v29 = v28;
  v30 = PommesResponse.sharedUserId.getter();
  v32 = v31;
  v100 = v29;
  v33 = MEMORY[0x223DDF780](v27, v29);
  if (AFSupportsMultiUser() && v32)
  {
    v33 ^= MEMORY[0x223DDF780](v30, v32);
  }

  v104 = v32;
  v34 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  dispatch thunk of PommesResponse.encode(cachingCoder:)();
  v99 = v34;
  v35 = [v34 encodedData];
  v102 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v36;

  ppStmt = 0;
  v38 = *(v3 + 24);
  v37 = String.utf8CString.getter();
  LODWORD(v38) = sqlite3_prepare_v2(v38, (v37 + 32), -1, &ppStmt, 0);

  if (v38 == 101)
  {

    v38 = 0;
    v47 = 0;
    v48 = 2;
    goto LABEL_20;
  }

  if (v38 == 100)
  {

    v38 = 0;
    v47 = 0;
    v48 = 1;
    goto LABEL_20;
  }

  if (v38)
  {
    if (!sqlite3_errstr(v38))
    {
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v47 = String.init(cString:)();
    v48 = v49;
    v38 = v38;
LABEL_20:
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    v50 = swift_allocError();
    *v51 = v38;
    v51[1] = v47;
    v51[2] = v48;
    swift_willThrow();
LABEL_49:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.pommes);
    v69 = v50;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v110 = v50;
      ppStmt = v73;
      *v72 = 136315138;
      v74 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v75 = String.init<A>(describing:)();
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &ppStmt);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_2232BB000, v70, v71, "ResponseCache : Database INSERT INTO operation failed : %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x223DE0F80](v73, -1, -1);
      MEMORY[0x223DE0F80](v72, -1, -1);
    }

    v78 = v99;
    v79 = PommesResponse.requestId.getter();
    v81 = v80;
    PommesResponse.pommesCandidateId.getter();
    (*(*v107 + 160))(v79, v81, v13, 2);

    outlined destroy of MediaUserStateCenter?(v13, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    swift_willThrow();
    outlined consume of Data._Representation(v102, v103);

LABEL_54:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v82 = v106;
    (*(*static PerformanceUtil.shared + 184))(v106, 0);
    outlined destroy of PerformanceUtil.Ticket(v82);
    return 1;
  }

  v39 = sqlite3_bind_int64(ppStmt, 1, v33);
  if (v39)
  {
    if (v39 != 100)
    {
      if (v39 == 101)
      {
LABEL_14:

        v40 = 0;
        v41 = 0;
        v42 = 2;
LABEL_30:
        lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
        v50 = swift_allocError();
        *v58 = v40;
        v58[1] = v41;
        v58[2] = v42;
LABEL_48:
        swift_willThrow();
        sqlite3_finalize(ppStmt);
        goto LABEL_49;
      }

      LODWORD(v40) = v39;
      if (sqlite3_errstr(v39))
      {
LABEL_29:

        v41 = String.init(cString:)();
        v42 = v57;
        v40 = v40;
        goto LABEL_30;
      }

      goto LABEL_92;
    }

LABEL_21:

    v40 = 0;
    v41 = 0;
    v42 = 1;
    goto LABEL_30;
  }

  v52 = ppStmt;
  if (one-time initialization token for sqliteTransient != -1)
  {
    swift_once();
  }

  v53 = static ResponseCache.sqliteTransient;
  v54 = String.utf8CString.getter();
  LODWORD(v52) = sqlite3_bind_text(v52, 2, (v54 + 32), -1, v53);

  if (v52)
  {
    if (v52 == 100)
    {

      v52 = 0;
      v55 = 0;
      v56 = 1;
      goto LABEL_38;
    }

    if (v52 == 101)
    {

      v52 = 0;
      v55 = 0;
      v56 = 2;
LABEL_38:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v50 = swift_allocError();
      *v65 = v52;
      v65[1] = v55;
LABEL_47:
      v65[2] = v56;
      goto LABEL_48;
    }

    result = sqlite3_errstr(v52);
    if (result)
    {

      v55 = String.init(cString:)();
      v56 = v64;
      v52 = v52;
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_95;
  }

  v59 = ppStmt;
  v60 = String.utf8CString.getter();
  LODWORD(v61) = sqlite3_bind_text(v59, 3, (v60 + 32), -1, v53);

  if (v61)
  {
    if (v61 != 100)
    {
      if (v61 == 101)
      {

        v61 = 0;
        v62 = 0;
        v56 = 2;
LABEL_46:
        lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
        v50 = swift_allocError();
        *v65 = v61;
        v65[1] = v62;
        goto LABEL_47;
      }

      result = sqlite3_errstr(v61);
      if (!result)
      {
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

LABEL_45:

      v62 = String.init(cString:)();
      v56 = v67;
      v61 = v61;
      goto LABEL_46;
    }

LABEL_39:

    v61 = 0;
    v62 = 0;
    v56 = 1;
    goto LABEL_46;
  }

  v66 = specialized closure #5 in ResponseCache.store(response:expiration:)(v102, v103, &ppStmt);
  if (v66)
  {
    if (v66 == 100)
    {
      goto LABEL_21;
    }

    if (v66 == 101)
    {
      goto LABEL_14;
    }

    LODWORD(v40) = v66;
    result = sqlite3_errstr(v66);
    if (result)
    {
      goto LABEL_29;
    }

    goto LABEL_96;
  }

  v83 = sqlite3_bind_double(ppStmt, 5, a2);
  if (v83)
  {
    if (v83 == 100)
    {
      goto LABEL_21;
    }

    if (v83 == 101)
    {
      goto LABEL_14;
    }

    LODWORD(v40) = v83;
    result = sqlite3_errstr(v83);
    if (result)
    {
      goto LABEL_29;
    }

    goto LABEL_97;
  }

  v84 = sqlite3_step(ppStmt);
  if (!v84)
  {

    v61 = 0;
    v62 = 0;
    v56 = 0;
    goto LABEL_46;
  }

  LODWORD(v61) = v84;
  if (v84 == 100)
  {
    goto LABEL_39;
  }

  if (v84 == 101)
  {

    LODWORD(v14) = sqlite3_changes(*(v3 + 24));
    if (one-time initialization token for pommes == -1)
    {
LABEL_73:
      v85 = type metadata accessor for Logger();
      __swift_project_value_buffer(v85, static Logger.pommes);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v110 = v89;
        *v88 = 136315138;
        if (v14 <= 0)
        {
          v90 = 0x657461647075;
        }

        else
        {
          v90 = 0x65726F7473;
        }

        if (v14 <= 0)
        {
          v91 = 0xE600000000000000;
        }

        else
        {
          v91 = 0xE500000000000000;
        }

        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v110);

        *(v88 + 4) = v92;
        _os_log_impl(&dword_2232BB000, v86, v87, "ResponseCache : %s cache entry complete", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v89);
        MEMORY[0x223DE0F80](v89, -1, -1);
        MEMORY[0x223DE0F80](v88, -1, -1);
      }

      sqlite3_finalize(ppStmt);
      v93 = PommesResponse.requestId.getter();
      v95 = v94;
      v96 = v101;
      PommesResponse.pommesCandidateId.getter();
      if (v14 >= 1)
      {
        v97 = 1;
      }

      else
      {
        v97 = 2;
      }

      (*(*v107 + 168))(v93, v95, v96, v97);
      outlined consume of Data._Representation(v102, v103);

      outlined destroy of MediaUserStateCenter?(v96, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      goto LABEL_54;
    }

LABEL_93:
    swift_once();
    goto LABEL_73;
  }

  result = sqlite3_errstr(v84);
  if (result)
  {
    goto LABEL_45;
  }

LABEL_98:
  __break(1u);
  return result;
}

const char *ResponseCache.fetchResponse(with:domainWarmup:)(uint64_t a1, uint64_t a2)
{
  v123 = a2;
  v3 = v2;
  v137 = *MEMORY[0x277D85DE8];
  *&v126 = type metadata accessor for Date();
  *&v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v129);
  v132 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v121 = (&v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (&v118 - v10);
  v12 = v3[2];
  v130 = type metadata accessor for PommesSearchRequest(0);
  v13 = (a1 + *(v130 + 32));
  v14 = *v13;
  v15 = v13[1];
  v134 = a1;
  PommesSearchRequest.pommesCandidateId.getter(v11);
  v16 = type metadata accessor for PommesCandidateId();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(v11, 0, 1, v16);
  v20 = *(*v12 + 128);
  v133 = v14;
  v20(v14, v15, v11);
  v21 = outlined destroy of MediaUserStateCenter?(v11, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v22 = *(*v3 + 128);
  v131 = v3;
  if ((v22(v21) & 1) == 0)
  {
    PommesSearchRequest.pommesCandidateId.getter(v11);
    v18(v11, 0, 1, v16);
    (*(*v12 + 136))(v133, v15, v11, 1);
    outlined destroy of MediaUserStateCenter?(v11, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    swift_allocError();
    *v47 = 0;
    v47[1] = 0;
    v47[2] = 4;
    swift_willThrow();
    return v12;
  }

  v118 = v11;
  v127 = v18;
  v128 = v19;
  v119 = v16;
  v120 = v15;
  v122 = v12;
  v23 = v132;
  Date.init()();
  v24 = v129;
  v25 = &v23[*(v129 + 20)];
  *v25 = "SiriInformationSearch/ResponseCache.swift";
  *(v25 + 1) = 41;
  v25[16] = 2;
  *&v23[v24[6]] = 289;
  v26 = &v23[v24[7]];
  *v26 = "fetchResponse(with:domainWarmup:)";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v27 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000013, 0x80000002234DE990);
  v28 = &v23[v24[8]];
  *v28 = v27;
  v28[1] = v29;
  *&__dst = 0;
  *(&__dst + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  MEMORY[0x223DDF6D0](0x2A205443454C4553, 0xEF22204D4F524620);
  MEMORY[0x223DDF6D0](0x6361437972657571, 0xEA00000000006568);
  MEMORY[0x223DDF6D0](0xA45524548572022, 0xE900000000000022);
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xED00006873614865);
  MEMORY[0x223DDF6D0](0x4E41203F203D2022, 0xEB00000000220A44);
  v30 = v134;
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xE900000000000065);
  MEMORY[0x223DDF6D0](0x4E41203F203D2022, 0xEB00000000220A44);
  MEMORY[0x223DDF6D0](0x6974617269707865, 0xEA00000000006E6FLL);
  MEMORY[0x223DDF6D0](0x3B3F203D3E2022, 0xE700000000000000);
  v31 = (v30 + *(v130 + 20));
  v33 = *v31;
  v32 = v31[1];
  v34 = (v30 + *(v130 + 84));
  v36 = *v34;
  v35 = v34[1];
  v37 = MEMORY[0x223DDF780](v33, v32);
  if (AFSupportsMultiUser() && v35)
  {
    v37 ^= MEMORY[0x223DDF780](v36, v35);
  }

  ppStmt = 0;
  v38 = *(v131 + 24);
  v39 = String.utf8CString.getter();
  v40 = sqlite3_prepare_v2(v38, (v39 + 32), -1, &ppStmt, 0);

  if (v40 == 101)
  {

    v48 = 0;
    v49 = 0;
    v50 = 2;
    goto LABEL_15;
  }

  if (v40 == 100)
  {

    v48 = 0;
    v49 = 0;
    v50 = 1;
LABEL_15:
    v46 = v122;
    goto LABEL_18;
  }

  if (v40)
  {
    result = sqlite3_errstr(v40);
    v46 = v122;
    if (!result)
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v49 = String.init(cString:)();
    v50 = v52;
    v48 = v40;
LABEL_18:
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    v53 = swift_allocError();
    *v54 = v48;
    v54[1] = v49;
    v54[2] = v50;
    swift_willThrow();
    v45 = v127;
    goto LABEL_29;
  }

  v41 = v124;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v43 = v42;
  (*(v125 + 8))(v41, v126);
  v44 = sqlite3_bind_int64(ppStmt, 1, v37);
  if (v44)
  {
    v45 = v127;
    if (v44 == 100)
    {

      v55 = 0;
      v56 = 0;
      v57 = 1;
      v46 = v122;
LABEL_28:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v53 = swift_allocError();
      *v63 = v55;
      v63[1] = v56;
      v63[2] = v57;
      swift_willThrow();
      sqlite3_finalize(ppStmt);
LABEL_29:
      v64 = v46;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v65 = v120;
      v66 = type metadata accessor for Logger();
      __swift_project_value_buffer(v66, static Logger.pommes);
      v67 = v53;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        ppStmt = v53;
        *&__dst = v71;
        *v70 = 136315138;
        v72 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v73 = String.init<A>(describing:)();
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &__dst);

        *(v70 + 4) = v75;
        v45 = v127;
        _os_log_impl(&dword_2232BB000, v68, v69, "ResponseCache : SELECT failed : %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x223DE0F80](v71, -1, -1);
        MEMORY[0x223DE0F80](v70, -1, -1);
      }

      v76 = v133;
      v77 = v119;
      v12 = v118;
      PommesSearchRequest.pommesCandidateId.getter(v118);
      v45(v12, 0, 1, v77);
      (*(*v64 + 136))(v76, v65, v12, 2);
      outlined destroy of MediaUserStateCenter?(v12, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      swift_willThrow();
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_77;
    }

    v46 = v122;
    if (v44 == 101)
    {
LABEL_25:

      v55 = 0;
      v56 = 0;
      v57 = 2;
      goto LABEL_28;
    }

    LODWORD(v55) = v44;
    result = sqlite3_errstr(v44);
    if (result)
    {
LABEL_27:

      v56 = String.init(cString:)();
      v57 = v62;
      v55 = v55;
      goto LABEL_28;
    }

    goto LABEL_80;
  }

  v58 = ppStmt;
  v45 = v127;
  if (one-time initialization token for sqliteTransient != -1)
  {
    swift_once();
  }

  v59 = static ResponseCache.sqliteTransient;
  v60 = String.utf8CString.getter();
  v61 = sqlite3_bind_text(v58, 2, (v60 + 32), -1, v59);

  if (!v61)
  {
    v79 = sqlite3_bind_double(ppStmt, 3, v43);
    v46 = v122;
    v80 = v133;
    if (!v79)
    {

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v82 = type metadata accessor for Logger();
      v131 = __swift_project_value_buffer(v82, static Logger.pommes);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 134217984;
        *(v85 + 4) = v43;
        _os_log_impl(&dword_2232BB000, v83, v84, "ResponseCache : Fetching cached responses with expiration threshold %f", v85, 0xCu);
        v86 = v85;
        v80 = v133;
        MEMORY[0x223DE0F80](v86, -1, -1);
      }

      v87 = ppStmt;
      if (sqlite3_step(ppStmt) == 100)
      {
        v12 = 0;
        v129 = 0;
        v88 = 0;
        *(&v89 + 1) = 0x7FFFFFFFLL;
        v125 = xmmword_2234D58C0;
        *&v89 = 136315138;
        v126 = v89;
        do
        {
          v90 = sqlite3_column_blob(v87, 3);
          if (v90)
          {
            v91 = v90;
            v92 = sqlite3_column_bytes(v87, 3);
            if (v92 < 1)
            {
              v109 = Logger.logObject.getter();
              v110 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v109, v110))
              {
                v111 = swift_slowAlloc();
                *v111 = 0;
                _os_log_impl(&dword_2232BB000, v109, v110, "ResponseCache : Cached POMMES response 0 bytes", v111, 2u);
                MEMORY[0x223DE0F80](v111, -1, -1);
              }

              v80 = v133;
            }

            else
            {
              v93 = v92;
              if (sqlite3_column_text(ppStmt, 2))
              {
                v94 = String.init(cString:)();
                v96 = v95;
                swift_bridgeObjectRetain_n();

                v97 = Logger.logObject.getter();
                v98 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v97, v98))
                {
                  v99 = swift_slowAlloc();
                  v100 = swift_slowAlloc();
                  *&__dst = v100;
                  *v99 = v126;
                  *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, &__dst);
                  _os_log_impl(&dword_2232BB000, v97, v98, "ResponseCache : warmup domain %s", v99, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v100);
                  v101 = v100;
                  v46 = v122;
                  MEMORY[0x223DE0F80](v101, -1, -1);
                  v102 = v99;
                  v45 = v127;
                  MEMORY[0x223DE0F80](v102, -1, -1);
                }

                v103 = *(*v123 + 184);
                v129 = v94;
                v104 = v103(v134, v94, v96);

                v88 = v96;
              }

              else
              {
                v104 = MEMORY[0x277D84F90];
              }

              if (v93 <= 0xE)
              {
                *(&__dst + 6) = 0;
                *&__dst = 0;
                BYTE14(__dst) = v93;
                memcpy(&__dst, v91, v93);
                v113 = __dst;
                v114 = v130 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
                v130 = v114;
              }

              else
              {
                type metadata accessor for __DataStorage();
                swift_allocObject();
                if (v93 == 0x7FFFFFFF)
                {
                  v112 = __DataStorage.init(bytes:length:)();
                  type metadata accessor for Data.RangeReference();
                  v113 = swift_allocObject();
                  *(v113 + 16) = v125;
                  v114 = v112 | 0x8000000000000000;
                }

                else
                {
                  v113 = v93 << 32;
                  v114 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
                }
              }

              v115 = specialized ResponseCache.hydratePommesResponse(response:pommesSearchRequest:componentsWarmedUp:)(v113, v114, v134, v104);

              outlined consume of Data._Representation(v113, v114);

              v12 = v115;
              v80 = v133;
            }
          }

          else
          {
            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              *v107 = 0;
              _os_log_impl(&dword_2232BB000, v105, v106, "ResponseCache : Cached POMMES response is nil", v107, 2u);
              v108 = v107;
              v80 = v133;
              MEMORY[0x223DE0F80](v108, -1, -1);
            }
          }

          v87 = ppStmt;
        }

        while (sqlite3_step(ppStmt) == 100);
      }

      else
      {
        v12 = 0;
        v129 = 0;
        v88 = 0;
      }

      sqlite3_finalize(ppStmt);
      v116 = v121;
      PommesSearchRequest.pommesCandidateId.getter(v121);
      v45(v116, 0, 1, v119);
      if (v12)
      {
        v117 = 1;
      }

      else
      {
        v117 = 3;
      }

      (*(*v46 + 144))(v80, v120, v116, v117, v129, v88);

      outlined destroy of MediaUserStateCenter?(v116, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_34;
      }

LABEL_77:
      swift_once();
LABEL_34:
      v78 = v132;
      (*(*static PerformanceUtil.shared + 184))(v132, 0);
      outlined destroy of PerformanceUtil.Ticket(v78);
      return v12;
    }

    v61 = v128;
    if (v79 != 100)
    {
      if (v79 == 101)
      {
        goto LABEL_25;
      }

      LODWORD(v55) = v79;
      if (sqlite3_errstr(v79))
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_44:

    v55 = 0;
    v56 = 0;
    v57 = 1;
    goto LABEL_28;
  }

  v46 = v122;
  if (v61 == 100)
  {
    goto LABEL_44;
  }

  if (v61 == 101)
  {
    goto LABEL_25;
  }

LABEL_42:
  result = sqlite3_errstr(v61);
  if (result)
  {

    v56 = String.init(cString:)();
    v57 = v81;
    v55 = v61;
    goto LABEL_28;
  }

LABEL_81:
  __break(1u);
  return result;
}

const char *ResponseCache.delete(path:requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a1;
  ppDb[1] = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v5;
  v14 = *(v5 + 16);
  v15 = *(*v14 + 176);
  v66 = a2;
  v67 = a3;
  v69 = a4;
  v15(a2, a3, a4, a5);
  URL.appendingPathComponent(_:isDirectory:)();
  v16 = URL.path.getter();
  v18 = v17;
  (*(v11 + 8))(v13, v10);
  v19 = String.utf8CString.getter();
  v20 = access((v19 + 32), 0);

  if (v20)
  {

    v22 = v66;
    v21 = v67;
    v23 = v69;
    v24 = v14;
    (*(*v14 + 184))(v66, v67, v69, 1);
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    v25 = swift_allocError();
    *v26 = 0;
    v26[1] = 0;
    v26[2] = 5;
    swift_willThrow();
    v27 = v23;
    v28 = v21;
    v29 = v22;
LABEL_17:
    (*(*v24 + 184))(v29, v28, v27, 2);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pommes);
    v44 = v25;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      ppStmt = v25;
      ppDb[0] = v48;
      *v47 = 136315138;
      v49 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v50 = String.init<A>(describing:)();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, ppDb);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_2232BB000, v45, v46, "ResponseCache : purge failed : %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x223DE0F80](v48, -1, -1);
      MEMORY[0x223DE0F80](v47, -1, -1);
    }

    return swift_willThrow();
  }

  v68 = v14;
  v31 = v64;
  v30 = v65;
  v32 = v69;
  ppDb[0] = 0;
  v33 = v18;
  v34 = String.utf8CString.getter();
  v35 = sqlite3_open_v2((v34 + 32), ppDb, 2, 0);

  if (v35 == 101)
  {
    goto LABEL_11;
  }

  if (v35 == 100)
  {
    goto LABEL_10;
  }

  if (v35)
  {
    result = sqlite3_errstr(v35);
    if (result)
    {

      v38 = String.init(cString:)();
      v39 = v41;
      v37 = v35;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_37;
  }

  ppStmt = 0;
  v36 = sqlite3_prepare_v2(ppDb[0], "SELECT COUNT(*) FROM queryCache", -1, &ppStmt, 0);
  if (v36)
  {
    if (v36 != 100)
    {
      if (v36 == 101)
      {
LABEL_11:

        v37 = 0;
        v38 = 0;
        v39 = 2;
        goto LABEL_14;
      }

      LODWORD(v37) = v36;
      result = sqlite3_errstr(v36);
      if (result)
      {

        v38 = String.init(cString:)();
        v39 = v55;
        v37 = v37;
        goto LABEL_14;
      }

LABEL_37:
      __break(1u);
      return result;
    }

LABEL_10:

    v37 = 0;
    v38 = 0;
    v39 = 1;
LABEL_14:
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    v25 = swift_allocError();
    *v42 = v37;
    v42[1] = v38;
    v42[2] = v39;
LABEL_15:
    swift_willThrow();
LABEL_16:
    v27 = v32;
    v29 = v66;
    v28 = v67;
    v24 = v68;
    goto LABEL_17;
  }

  v53 = ppStmt;
  if (sqlite3_step(ppStmt) == 100)
  {
    do
    {
      v54 = sqlite3_column_int(v53, 0);
      v53 = ppStmt;
    }

    while (sqlite3_step(ppStmt) == 100);
  }

  else
  {
    v54 = 0;
  }

  v56 = sqlite3_finalize(ppStmt);
  (*(*v31 + 144))(v56);
  v25 = v30;
  if (v30)
  {

    goto LABEL_16;
  }

  v57 = [objc_opt_self() defaultManager];
  v58 = MEMORY[0x223DDF550](v16, v33);

  ppStmt = 0;
  v59 = [v57 removeItemAtPath:v58 error:&ppStmt];

  if ((v59 & 1) == 0)
  {
    v62 = ppStmt;
    v25 = _convertNSErrorToError(_:)();

    goto LABEL_15;
  }

  if ((v54 & 0x80000000) != 0)
  {
    __break(1u);
  }

  v60 = *(*v68 + 192);
  v61 = ppStmt;
  return v60(v66, v67, v32, v54);
}

const char *ResponseCache.purge(expirationThreshold:requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = v5;
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v7 + 16);
  v17 = (*(*v16 + 176))(a1, a2, a3, a4);
  if (((*(*v7 + 128))(v17) & 1) == 0)
  {
    (*(*v16 + 184))(a1, a2, a3, 1);
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    swift_allocError();
    *v28 = 0;
    v28[1] = 0;
    v28[2] = 4;
    swift_willThrow();
    return v7;
  }

  Date.init()();
  v18 = &v15[v13[5]];
  *v18 = "SiriInformationSearch/ResponseCache.swift";
  *(v18 + 1) = 41;
  v18[16] = 2;
  *&v15[v13[6]] = 415;
  v19 = &v15[v13[7]];
  *v19 = "purge(expirationThreshold:requestId:pommesCandidateId:reason:)";
  *(v19 + 1) = 62;
  v19[16] = 2;
  v20 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001ALL, 0x80000002234DEA10);
  v21 = &v15[v13[8]];
  *v21 = v20;
  v21[1] = v22;
  ppStmt[0] = 0;
  v23 = sqlite3_prepare_v2(*(v7 + 24), "DELETE FROM queryCache WHERE expiration < ?;", -1, ppStmt, 0);
  v67 = v16;
  if (v23 == 101)
  {
    v29 = 0;
    v30 = 0;
    v31 = 2;
    goto LABEL_14;
  }

  if (v23 == 100)
  {
    v29 = 0;
    v30 = 0;
    v31 = 1;
    goto LABEL_14;
  }

  if (v23)
  {
    LODWORD(v29) = v23;
    result = sqlite3_errstr(v23);
    if (!result)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v30 = String.init(cString:)();
    v31 = v33;
    v29 = v29;
LABEL_14:
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    v34 = swift_allocError();
    *v35 = v29;
    v35[1] = v30;
    v36 = v34;
    v35[2] = v31;
    swift_willThrow();
    goto LABEL_30;
  }

  v24 = 1;
  v25 = sqlite3_bind_double(ppStmt[0], 1, a5);
  if (v25)
  {
    if (v25 == 100)
    {
      v26 = 0;
      v27 = 0;
      goto LABEL_28;
    }

    if (v25 == 101)
    {
      v26 = 0;
      v27 = 0;
      v24 = 2;
LABEL_28:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v45 = swift_allocError();
      *v46 = v26;
      v46[1] = v27;
      v36 = v45;
      v46[2] = v24;
LABEL_29:
      swift_willThrow();
      sqlite3_finalize(ppStmt[0]);
LABEL_30:
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.pommes);
      v48 = v36;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v65 = v51;
        v66 = swift_slowAlloc();
        v68 = v36;
        ppStmt[0] = v66;
        *v51 = 136315138;
        v52 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v53 = String.init<A>(describing:)();
        v55 = a1;
        v56 = a2;
        v57 = v15;
        v58 = a3;
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, ppStmt);

        v60 = v65;
        *(v65 + 1) = v59;
        a3 = v58;
        v15 = v57;
        a2 = v56;
        a1 = v55;
        v61 = v60;
        _os_log_impl(&dword_2232BB000, v49, v50, "ResponseCache : DELETE FROM failed : %s", v60, 0xCu);
        v7 = v66;
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x223DE0F80](v7, -1, -1);
        MEMORY[0x223DE0F80](v61, -1, -1);
      }

      (*(*v67 + 184))(a1, a2, a3, 2);
      swift_willThrow();
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_44;
    }

    LODWORD(v26) = v25;
    result = sqlite3_errstr(v25);
    if (result)
    {
      v27 = String.init(cString:)();
      v24 = v44;
      v26 = v26;
      goto LABEL_28;
    }

    goto LABEL_46;
  }

  v37 = sqlite3_step(ppStmt[0]);
  v38 = v37;
  switch(v37)
  {
    case 0u:
      v62 = 0;
      v7 = 0;
      goto LABEL_41;
    case 0x64u:
      v38 = 0;
      v62 = 0;
      v7 = 1;
LABEL_41:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v36 = swift_allocError();
      *v64 = v38;
      v64[1] = v62;
      v64[2] = v7;
      goto LABEL_29;
    case 0x65u:
      v66 = v6;
      v39 = v16;
      v7 = sqlite3_changes(*(v7 + 24));
      sqlite3_finalize(ppStmt[0]);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.pommes);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 67109120;
        *(v43 + 4) = v7;
        _os_log_impl(&dword_2232BB000, v41, v42, "ResponseCache : Successfully purged %d expired entries", v43, 8u);
        MEMORY[0x223DE0F80](v43, -1, -1);
      }

      if ((v7 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        (*(*v39 + 192))(a1, a2, a3, v7);
        if (one-time initialization token for shared == -1)
        {
          goto LABEL_35;
        }
      }

LABEL_44:
      swift_once();
LABEL_35:
      (*(*static PerformanceUtil.shared + 184))(v15, 0);
      outlined destroy of PerformanceUtil.Ticket(v15);
      return v7;
  }

  result = sqlite3_errstr(v37);
  if (result)
  {
    v62 = String.init(cString:)();
    v7 = v63;
    goto LABEL_41;
  }

LABEL_47:
  __break(1u);
  return result;
}

const char *ResponseCache.purge(response:reason:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v5);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v62 - v8);
  v10 = PommesResponse.requestId.getter();
  v12 = v11;
  v67 = v9;
  PommesResponse.pommesCandidateId.getter();
  v13 = PommesResponse.searchRequestUtterance.getter();
  v15 = v14;
  v16 = PommesResponse.sharedUserId.getter();
  v18 = v17;
  v66 = v15;
  v19 = MEMORY[0x223DDF780](v13, v15);
  if (AFSupportsMultiUser() && v18)
  {
    v19 ^= MEMORY[0x223DDF780](v16, v18);
  }

  v64 = v19;
  v20 = *(v3 + 16);
  v21 = v67;
  v22 = (*(*v20 + 176))(v10, v12, v67, a2);
  if (((*(*v3 + 128))(v22) & 1) == 0)
  {

    (*(*v20 + 184))(v10, v12, v21, 1);

    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    swift_allocError();
    *v34 = 0;
    v34[1] = 0;
    v34[2] = 4;
    swift_willThrow();
LABEL_38:
    outlined destroy of MediaUserStateCenter?(v21, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    return v20;
  }

  v62 = v20;
  v63 = v10;
  v23 = v65;
  Date.init()();
  v24 = &v23[v5[5]];
  *v24 = "SiriInformationSearch/ResponseCache.swift";
  *(v24 + 1) = 41;
  v24[16] = 2;
  *&v23[v5[6]] = 461;
  v25 = &v23[v5[7]];
  *v25 = "purge(response:reason:)";
  *(v25 + 1) = 23;
  v25[16] = 2;
  v26 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001FLL, 0x80000002234DEA70);
  v27 = &v23[v5[8]];
  *v27 = v26;
  v27[1] = v28;
  ppStmt[0] = 0;
  v29 = sqlite3_prepare_v2(*(v3 + 24), "DELETE FROM queryCache WHERE utteranceHash = ?;", -1, ppStmt, 0);
  if (v29 == 101)
  {

    v35 = 0;
    v36 = 0;
    v37 = 2;
    goto LABEL_17;
  }

  if (v29 == 100)
  {

    v35 = 0;
    v36 = 0;
    v37 = 1;
    goto LABEL_17;
  }

  if (v29)
  {
    LODWORD(v35) = v29;
    result = sqlite3_errstr(v29);
    if (!result)
    {
      __break(1u);
      goto LABEL_47;
    }

    v36 = String.init(cString:)();
    v37 = v39;
    v35 = v35;
LABEL_17:
    lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
    v3 = swift_allocError();
    *v40 = v35;
    v40[1] = v36;
    v40[2] = v37;
    swift_willThrow();
    goto LABEL_32;
  }

  v30 = sqlite3_bind_int64(ppStmt[0], 1, v64);
  switch(v30)
  {
    case 0:
      v41 = sqlite3_step(ppStmt[0]);
      if (!v41)
      {

        v31 = 0;
        v32 = 0;
        v33 = 0;
        goto LABEL_31;
      }

      if (v41 == 100)
      {
        goto LABEL_28;
      }

      if (v41 != 101)
      {
        LODWORD(v31) = v41;
        if (!sqlite3_errstr(v41))
        {
          __break(1u);
          goto LABEL_43;
        }

        goto LABEL_30;
      }

      v20 = sqlite3_changes(*(v3 + 24));
      sqlite3_finalize(ppStmt[0]);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.pommes);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v63;
      if (v45)
      {
        v47 = swift_slowAlloc();
        *v47 = 67109120;
        *(v47 + 4) = v20;
        _os_log_impl(&dword_2232BB000, v43, v44, "ResponseCache : Successfully purged response with %d entries deleted", v47, 8u);
        MEMORY[0x223DE0F80](v47, -1, -1);
      }

      if ((v20 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v43 = v67;
        (*(*v62 + 192))(v46, v12, v67, v20);

        if (one-time initialization token for shared == -1)
        {
LABEL_27:
          v48 = v65;
          (*(*static PerformanceUtil.shared + 184))(v65, 0);
          outlined destroy of PerformanceUtil.Ticket(v48);
          outlined destroy of MediaUserStateCenter?(v43, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
          return v20;
        }
      }

      swift_once();
      goto LABEL_27;
    case 100:
LABEL_28:

      v31 = 0;
      v32 = 0;
      v33 = 1;
      goto LABEL_31;
    case 101:

      v31 = 0;
      v32 = 0;
      v33 = 2;
LABEL_31:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v3 = swift_allocError();
      *v50 = v31;
      v50[1] = v32;
      v50[2] = v33;
      swift_willThrow();
      sqlite3_finalize(ppStmt[0]);
LABEL_32:
      if (one-time initialization token for pommes == -1)
      {
LABEL_33:
        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static Logger.pommes);
        v52 = v3;
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          ppStmt[0] = v56;
          *v55 = 136315394;
          *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x65736E6F70736572, 0xE800000000000000, ppStmt);
          *(v55 + 12) = 2080;
          v68 = v3;
          v57 = v3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v58 = String.init<A>(describing:)();
          v20 = v59;
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, ppStmt);

          *(v55 + 14) = v60;
          _os_log_impl(&dword_2232BB000, v53, v54, "ResponseCache : DELETE FROM WHERE %s failed : %s", v55, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE0F80](v56, -1, -1);
          MEMORY[0x223DE0F80](v55, -1, -1);
        }

        v21 = v67;
        (*(*v62 + 184))(v63, v12, v67, 2);

        swift_willThrow();
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v61 = v65;
        (*(*static PerformanceUtil.shared + 184))(v65, 0);
        outlined destroy of PerformanceUtil.Ticket(v61);
        goto LABEL_38;
      }

LABEL_43:
      swift_once();
      goto LABEL_33;
  }

  LODWORD(v31) = v30;
  result = sqlite3_errstr(v30);
  if (result)
  {
LABEL_30:

    v32 = String.init(cString:)();
    v33 = v49;
    v31 = v31;
    goto LABEL_31;
  }

LABEL_47:
  __break(1u);
  return result;
}

id @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v13);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

const char *ResponseCache.createTables()()
{
  ppStmt[2] = *MEMORY[0x277D85DE8];
  ppStmt[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(159);
  MEMORY[0x223DDF6D0](0xD00000000000001CLL, 0x80000002234DEB30);
  MEMORY[0x223DDF6D0](0x6361437972657571, 0xEA00000000006568);
  MEMORY[0x223DDF6D0](0x220A282022, 0xE500000000000000);
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xED00006873614865);
  MEMORY[0x223DDF6D0](0xD000000000000021, 0x80000002234DEB50);
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xE900000000000065);
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DEB80);
  MEMORY[0x223DDF6D0](0x6E69616D6F64, 0xE600000000000000);
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DEB80);
  MEMORY[0x223DDF6D0](0x65736E6F70736572, 0xE800000000000000);
  MEMORY[0x223DDF6D0](0xD000000000000012, 0x80000002234DEBA0);
  MEMORY[0x223DDF6D0](0x6974617269707865, 0xEA00000000006E6FLL);
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DEBC0);
  ppStmt[0] = 0;
  v2 = *(v0 + 24);
  v1 = String.utf8CString.getter();
  LODWORD(v2) = sqlite3_prepare_v2(v2, (v1 + 32), -1, ppStmt, 0);

  switch(v2)
  {
    case 0x65:

      v2 = 0;
      v10 = 0;
      v11 = 2;
      break;
    case 0x64:

      v2 = 0;
      v10 = 0;
      v11 = 1;
      break;
    case 0:
      v3 = sqlite3_step(ppStmt[0]);
      if (v3)
      {
        if (v3 != 100)
        {
          if (v3 == 101)
          {

            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v4 = type metadata accessor for Logger();
            __swift_project_value_buffer(v4, static Logger.pommes);
            v5 = Logger.logObject.getter();
            v6 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v5, v6))
            {
              v7 = swift_slowAlloc();
              v8 = swift_slowAlloc();
              v30 = v8;
              *v7 = 136315138;
              *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6361437972657571, 0xEA00000000006568, &v30);
              _os_log_impl(&dword_2232BB000, v5, v6, "ResponseCache : Table created : %s", v7, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v8);
              MEMORY[0x223DE0F80](v8, -1, -1);
              MEMORY[0x223DE0F80](v7, -1, -1);
            }

            return sqlite3_finalize(ppStmt[0]);
          }

          LODWORD(v25) = v3;
          result = sqlite3_errstr(v3);
          if (result)
          {

            v26 = String.init(cString:)();
            v27 = v28;
            v25 = v25;
            goto LABEL_26;
          }

LABEL_28:
          __break(1u);
          return result;
        }

        v25 = 0;
        v26 = 0;
        v27 = 1;
      }

      else
      {

        v25 = 0;
        v26 = 0;
        v27 = 0;
      }

LABEL_26:
      lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
      v13 = swift_allocError();
      *v29 = v25;
      v29[1] = v26;
      v29[2] = v27;
      swift_willThrow();
      sqlite3_finalize(ppStmt[0]);
      goto LABEL_17;
    default:
      result = sqlite3_errstr(v2);
      if (!result)
      {
        __break(1u);
        goto LABEL_28;
      }

      v10 = String.init(cString:)();
      v11 = v12;
      v2 = v2;
      break;
  }

  lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError();
  v13 = swift_allocError();
  *v14 = v2;
  v14[1] = v10;
  v14[2] = v11;
  swift_willThrow();
LABEL_17:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.pommes);
  v16 = v13;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    v21 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v30);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_2232BB000, v17, v18, "ResponseCache : CREATE TABLE failed : %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x223DE0F80](v20, -1, -1);
    MEMORY[0x223DE0F80](v19, -1, -1);
  }

  return swift_willThrow();
}

void specialized ResponseCache.markPurgeable(_:)(uint64_t a1)
{
  v67[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v64 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v65 = &v61 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v61 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - v15;
  outlined init with copy of URL?(a1, v9);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v62 = v10;
    v63 = v1;
    outlined destroy of MediaUserStateCenter?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pommes);
    v19 = v65;
    outlined init with copy of URL?(a1, v65);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v67[0] = v61;
      *v22 = 136315138;
      v23 = v64;
      outlined init with copy of URL?(v19, v64);
      v24 = v62;
      if (v17(v23, 1, v62) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v25 = 0xE600000000000000;
        v26 = 0x3E656E6F6E3CLL;
      }

      else
      {
        v48 = v23;
        v26 = URL.path.getter();
        v25 = v49;
        (*(v11 + 8))(v48, v24);
      }

      outlined destroy of MediaUserStateCenter?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, v67);

      *(v22 + 4) = v50;
      _os_log_impl(&dword_2232BB000, v20, v21, "ResponseCache : Unable to mark %s purgeable because no file path exists", v22, 0xCu);
      v51 = v61;
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x223DE0F80](v51, -1, -1);
      MEMORY[0x223DE0F80](v22, -1, -1);
    }

    else
    {

      outlined destroy of MediaUserStateCenter?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    type metadata accessor for NSFileHandle();
    v27 = *(v11 + 16);
    v27(v14, v16, v10);
    v28 = @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(v14);
    v29 = v10;
    if (v1)
    {
      (*(v11 + 8))(v16, v10);
    }

    else
    {
      v30 = v28;
      v64 = v11;
      v65 = v16;
      v31 = [v28 fileDescriptor];
      v67[0] = 65541;
      v32 = ffsctl(v31, 0xC0084A44uLL, v67, 0);
      if (v32)
      {
        v33 = v32;
        v63 = v30;
        v34 = *MEMORY[0x277CCA5B8];
        v35 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2234CF920;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v37;
        *(inited + 72) = v10;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
        v62 = v10;
        v27(boxed_opaque_existential_1, v65, v10);
        v39 = v34;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of MediaUserStateCenter?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
        v40 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v40 initWithDomain:v39 code:v35 userInfo:isa];

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Logger.pommes);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        v45 = os_log_type_enabled(v43, v44);
        v46 = v63;
        if (v45)
        {
          v47 = swift_slowAlloc();
          *v47 = 67109120;
          *(v47 + 4) = v33;
          _os_log_impl(&dword_2232BB000, v43, v44, "ResponseCache : Unable to mark cache as purgeable error=%d", v47, 8u);
          MEMORY[0x223DE0F80](v47, -1, -1);
        }

        swift_willThrow();
        (*(v64 + 8))(v65, v62);
      }

      else
      {
        v66 = 0;
        if ([v30 closeAndReturnError_])
        {
          v52 = one-time initialization token for pommes;
          v53 = v66;
          v54 = v64;
          v55 = v65;
          if (v52 != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          __swift_project_value_buffer(v56, static Logger.pommes);
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 0;
            _os_log_impl(&dword_2232BB000, v57, v58, "ResponseCache : Database marked purgeable", v59, 2u);
            v54 = v64;
            v55 = v65;
            MEMORY[0x223DE0F80](v59, -1, -1);
          }

          (*(v54 + 8))(v55, v29);
        }

        else
        {
          v60 = v66;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          (*(v64 + 8))(v65, v10);
        }
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResponseCache.DBError and conformance ResponseCache.DBError()
{
  result = lazy protocol witness table cache variable for type ResponseCache.DBError and conformance ResponseCache.DBError;
  if (!lazy protocol witness table cache variable for type ResponseCache.DBError and conformance ResponseCache.DBError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseCache.DBError and conformance ResponseCache.DBError);
  }

  return result;
}

id specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)()
{
  v6[1] = *MEMORY[0x277D85DE8];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:isa error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t specialized ResponseCache.hydratePommesResponse(response:pommesSearchRequest:componentsWarmedUp:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v27 - v7);
  v9 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  outlined copy of Data._Representation(a1, a2);
  v10 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
  outlined consume of Data._Representation(a1, a2);
  if (!v10)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pommes);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2232BB000, v12, v13, "ResponseCache : Failed to hydrate POMMES response : nil unarchiver", v14, 2u);
      MEMORY[0x223DE0F80](v14, -1, -1);
    }

    goto LABEL_6;
  }

  type metadata accessor for PommesResponse();
  type metadata accessor for PommesSearchRequest(0);

  v12 = v10;
  PommesSearchRequest.pommesCandidateId.getter(v8);
  v16 = type metadata accessor for PommesCandidateId();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);

  v17 = PommesResponse.__allocating_init(cachingCoder:requestId:pommesCandidateId:componentsWarmedUp:)();
  if (!v17)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.pommes);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2232BB000, v24, v25, "ResponseCache : Failed to instantiate PommesResponse from cachingCoder", v26, 2u);
      MEMORY[0x223DE0F80](v26, -1, -1);
    }

LABEL_6:
    return 0;
  }

  v18 = v17;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.pommes);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2232BB000, v20, v21, "ResponseCache : Successfully hydrated response", v22, 2u);
    MEMORY[0x223DE0F80](v22, -1, -1);
  }

  return v18;
}

uint64_t specialized closure #5 in ResponseCache.store(response:expiration:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = a3;
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v24[0] = a1;
      LOWORD(v24[1]) = a2;
      BYTE2(v24[1]) = BYTE2(a2);
      BYTE3(v24[1]) = BYTE3(a2);
      BYTE4(v24[1]) = BYTE4(a2);
      BYTE5(v24[1]) = BYTE5(a2);
      a1 = *a3;
      LODWORD(v3) = BYTE6(a2);
      if (one-time initialization token for sqliteTransient == -1)
      {
LABEL_4:
        v5 = static ResponseCache.sqliteTransient;
        v6 = v3;
        return sqlite3_bind_blob(a1, 4, v24, v6, v5);
      }

LABEL_40:
      v22 = a1;
      swift_once();
      a1 = v22;
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  if (v4 != 2)
  {
    goto LABEL_30;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v10 = __DataStorage._offset.getter();
    if (__OFSUB__(v7, v10))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v9 += v7 - v10;
  }

  v11 = __OFSUB__(v8, v7);
  v12 = v8 - v7;
  if (v11)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  a1 = MEMORY[0x223DD8D40]();
  if (a1 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = a1;
  }

  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 < 0xFFFFFFFF80000000)
  {
    goto LABEL_44;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    goto LABEL_34;
  }

  __break(1u);
LABEL_19:
  v15 = a1;
  v16 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_42;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v15, v17))
    {
      v9 += v15 - v17;
      goto LABEL_23;
    }

LABEL_46:
    __break(1u);
  }

LABEL_23:
  a1 = MEMORY[0x223DD8D40]();
  if (a1 >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = a1;
  }

  if (v9)
  {
    if (v14 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v14 > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_30:
      memset(v24, 0, 14);
      a1 = *v3;
      if (one-time initialization token for sqliteTransient == -1)
      {
LABEL_31:
        v5 = static ResponseCache.sqliteTransient;
        v6 = 0;
        return sqlite3_bind_blob(a1, 4, v24, v6, v5);
      }

LABEL_42:
      v23 = a1;
      swift_once();
      a1 = v23;
      goto LABEL_31;
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

LABEL_34:
  v19 = *v3;
  if (one-time initialization token for sqliteTransient != -1)
  {
    v21 = *v3;
    swift_once();
    v19 = v21;
  }

  v20 = static ResponseCache.sqliteTransient;

  return sqlite3_bind_blob(v19, 4, v9, v14, v20);
}

uint64_t get_enum_tag_for_layout_string_21SiriInformationSearch13ResponseCacheC7DBErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ResponseCache.DBError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 24))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ResponseCache.DBError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 5;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ResponseCache.DBError(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NSFileHandle()
{
  result = lazy cache variable for type metadata for NSFileHandle;
  if (!lazy cache variable for type metadata for NSFileHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSFileHandle);
  }

  return result;
}

uint64_t ProfileSliceResolutionRequestInstrumentationUtil.__allocating_init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

id ProfileSliceResolutionRequestInstrumentationUtil.mockStream.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*ProfileSliceResolutionRequestInstrumentationUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ProfileSliceResolutionRequestInstrumentationUtil.mockStream.getter();
  return KnowledgeFallbackInstrumentationUtil.mockStream.modify;
}

uint64_t ProfileSliceResolutionRequestInstrumentationUtil.init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

unint64_t ProfileSliceResolutionRequestInstrumentationUtil.logProfileSliceResolutionRequestStarted(requestId:pommesCandidateId:profileSliceLabel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x277D5A068]) init];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(MEMORY[0x277D5A080]) init];
      if (v16)
      {
        v17 = v16;
        result = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (!HIDWORD(result))
        {
          [v17 setSliceLabel_];
          UUID.init()();
          v19 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v21 = [v19 initWithNSUUID_];

          (*(v9 + 8))(v11, v8);
          v22 = v21;
          [v15 setContextId_];
          [v15 setStartedOrChanged_];
          [v13 setProfileResolutionRequestContext_];
          v23 = [objc_opt_self() processInfo];
          v24 = NSProcessInfo.isRunningUnitTests.getter();

          if (v24)
          {
            v25 = (*(*v4 + 96))();
          }

          else
          {
            v25 = [objc_opt_self() sharedStream];
          }

          [v25 emitMessage_];

          swift_unknownObjectRelease();
          return v21;
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = v13;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.pommes);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2232BB000, v27, v28, "Unable to log ProfileSliceResolutionRequestStarted event", v29, 2u);
    MEMORY[0x223DE0F80](v29, -1, -1);
  }

  return 0;
}

void ProfileSliceResolutionRequestInstrumentationUtil.logProfileSliceResolutionRequestEnded(requestId:pommesCandidateId:contextId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D5A068]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D5A070]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setExists_];
        [v19 setContextId:a4];
        [v19 setEnded:v11];
        [v8 setProfileResolutionRequestContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log ProfileSliceResolutionRequestEnded event", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

void ProfileSliceResolutionRequestInstrumentationUtil.logProfileSliceResolutionRequestFailed(requestId:pommesCandidateId:contextId:failedReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277D5A068]) init];
    if (v11)
    {
      v21 = v11;
      v12 = [objc_allocWithZone(MEMORY[0x277D5A078]) init];
      if (v12)
      {
        v13 = v12;
        [v12 setReason_];
        [v21 setContextId:a4];
        [v21 setFailed:v13];
        [v10 setProfileResolutionRequestContext:v21];
        v14 = [objc_opt_self() processInfo];
        v15 = NSProcessInfo.isRunningUnitTests.getter();

        if (v15)
        {
          v16 = (*(*v6 + 96))();
        }

        else
        {
          v16 = [objc_opt_self() sharedStream];
        }

        [v16 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v17 = v21;
    }

    else
    {
      v17 = v10;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pommes);
  v21 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2232BB000, v21, v19, "Unable to log ProfileSliceResolutionRequestFailed event", v20, 2u);
    MEMORY[0x223DE0F80](v20, -1, -1);
  }

LABEL_15:
}

uint64_t ProfileSliceResolutionRequestInstrumentationUtil.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void AnalyticsComponentIdGenerator.derivedIdentifier(for:from:)(uint64_t a1)
{
  v2 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 derivedIdentifierForComponent:a1 fromSourceIdentifier:isa];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t PommesCodableLocation.timeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch21PommesCodableLocation_timeStamp;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *PommesCodableLocation.__allocating_init(fromCLLocation:)(void *a1)
{
  swift_allocObject();
  v2 = specialized PommesCodableLocation.init(fromCLLocation:)(a1);

  return v2;
}

void *PommesCodableLocation.init(fromCLLocation:)(void *a1)
{
  v2 = specialized PommesCodableLocation.init(fromCLLocation:)(a1);

  return v2;
}

CLLocation __swiftcall PommesCodableLocation.toCLLocation()()
{
  v1 = v0[3];
  v15 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = *(v0 + 10);
  v9 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithCoordinate:isa altitude:v15 horizontalAccuracy:v1 verticalAccuracy:v2 course:v4 courseAccuracy:v3 speed:v5 speedAccuracy:v6 timestamp:{v7, v8}];

  v13 = v11;
  result._internal = v12;
  result.super.isa = v13;
  return result;
}

uint64_t PommesCodableLocation.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6465657073;
    v6 = 0x6363416465657073;
    if (a1 != 8)
    {
      v6 = 0x6D617453656D6974;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x657372756F63;
    if (a1 != 5)
    {
      v7 = 0x6341657372756F63;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656475746974616CLL;
    v2 = 0x6564757469746C61;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x64757469676E6F6CLL;
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
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesCodableLocation.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PommesCodableLocation.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesCodableLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesCodableLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PommesCodableLocation.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch21PommesCodableLocation_timeStamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PommesCodableLocation.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch21PommesCodableLocation_timeStamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t PommesCodableLocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch21PommesCodableLocationC10CodingKeys019_33C0AF8967FD3841B4O12AA99C497965ELLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch21PommesCodableLocationC10CodingKeys019_33C0AF8967FD3841B4O12AA99C497965ELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[7] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[6] = 9;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9580]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PommesCodableLocation.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PommesCodableLocation.init(from:)(a1);
  return v2;
}

void *PommesCodableLocation.init(from:)(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch21PommesCodableLocationC10CodingKeys019_33C0AF8967FD3841B4O12AA99C497965ELLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch21PommesCodableLocationC10CodingKeys019_33C0AF8967FD3841B4O12AA99C497965ELLOGMR);
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v23 - v8;
  v10 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v22 = v29;
    type metadata accessor for PommesCodableLocation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v4;
    v25 = v6;
    v26 = v3;
    v39 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v29;
    v29[2] = v13;
    v38 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12[3] = v14;
    v37 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12[4] = v15;
    v36 = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12[5] = v16;
    v35 = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12[6] = v17;
    v34 = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12[7] = v18;
    v33 = 6;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12[8] = v19;
    v32 = 7;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12[9] = v20;
    v31 = 8;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12[10] = v21;
    v30 = 9;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC95A0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v27);
    v22 = v29;
    (*(v24 + 32))(v29 + OBJC_IVAR____TtC21SiriInformationSearch21PommesCodableLocation_timeStamp, v25, v26);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v22;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PommesCodableLocation@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *CLLocation.toCodableLocation()()
{
  type metadata accessor for PommesCodableLocation(0);
  swift_allocObject();
  v1 = v0;
  v2 = specialized PommesCodableLocation.init(fromCLLocation:)(v1);

  return v2;
}

void *specialized PommesCodableLocation.init(fromCLLocation:)(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 coordinate];
  v1[2] = v7;
  [a1 coordinate];
  v1[3] = v8;
  [a1 altitude];
  v1[4] = v9;
  [a1 verticalAccuracy];
  v1[5] = v10;
  [a1 horizontalAccuracy];
  v1[6] = v11;
  [a1 course];
  v1[7] = v12;
  [a1 courseAccuracy];
  v1[8] = v13;
  [a1 speed];
  v1[9] = v14;
  [a1 speedAccuracy];
  v1[10] = v15;
  v16 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 32))(v1 + OBJC_IVAR____TtC21SiriInformationSearch21PommesCodableLocation_timeStamp, v6, v3);
  return v1;
}

unint64_t lazy protocol witness table accessor for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCodableLocation.CodingKeys and conformance PommesCodableLocation.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for PommesCodableLocation(uint64_t a1)
{
  result = type metadata singleton initialization cache for PommesCodableLocation;
  if (!type metadata singleton initialization cache for PommesCodableLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for PommesCodableLocation(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t getEnumTagSinglePayload for PommesCodableLocation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesCodableLocation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized PommesCodableLocation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002234DECC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002234DECE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657372756F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6341657372756F63 && a2 == 0xEE00796361727563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465657073 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6363416465657073 && a2 == 0xED00007963617275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D617453656D6974 && a2 == 0xE900000000000070)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

id MockEmittableSiriAnalyticsMessageStream.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double MockEmittableSiriAnalyticsMessageStream.emittedMessages.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t MockEmittableSiriAnalyticsMessageStream.emittedMessages.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_emittedMessages;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MockEmittableSiriAnalyticsMessageStream.emitMessage(_:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in MockEmittableSiriAnalyticsMessageStream.emitMessage(_:);
  *(v5 + 24) = v4;
  v11[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_14;
  v6 = _Block_copy(v11);
  v7 = v1;
  v8 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MockEmittableSiriAnalyticsMessageStream.emitMessage(_:)(void *a1, void *a2)
{
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x70))(v8);
  v5 = v4;
  v6 = a2;
  MEMORY[0x223DDF820]();
  if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v3(v8, 0);
}

uint64_t MockEmittableSiriAnalyticsMessageStream.emittedMessages<A>(ofType:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Array();
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t closure #1 in MockEmittableSiriAnalyticsMessageStream.emittedMessages<A>(ofType:)@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x60))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25SISchemaTopLevelUnionTypeCGMd, &_sSaySo25SISchemaTopLevelUnionTypeCGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [SISchemaTopLevelUnionType] and conformance [A], &_sSaySo25SISchemaTopLevelUnionTypeCGMd, &_sSaySo25SISchemaTopLevelUnionTypeCGMR);
  v4 = Sequence.compactMap<A>(_:)();

  *a3 = v4;
  return result;
}

uint64_t closure #1 in closure #1 in MockEmittableSiriAnalyticsMessageStream.emittedMessages<A>(ofType:)@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SISchemaTopLevelUnionType, 0x277D5AA68);
  v6 = v5;
  v7 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v7 ^ 1u, 1, a2);
}

Swift::Void __swiftcall MockEmittableSiriAnalyticsMessageStream.clearEmittedMessages()()
{
  v1 = *&v0[OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in MockEmittableSiriAnalyticsMessageStream.clearEmittedMessages();
  *(v3 + 24) = v2;
  v7[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_13_1;
  v4 = _Block_copy(v7);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id MockEmittableSiriAnalyticsMessageStream.init()()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v16 = *(v0 - 8);
  v17 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_queue;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v14 = &unk_2234D5CE0;
  (*(v6 + 104))(v8, *MEMORY[0x277D851C8], v5);
  static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v5);
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v16 + 104))(v2, *MEMORY[0x277D85260], v17);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = v18;
  *&v18[v15] = v9;
  *&v10[OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_emittedMessages] = MEMORY[0x277D84F90];
  v11 = v10;
  v12 = type metadata accessor for MockEmittableSiriAnalyticsMessageStream();
  v19.receiver = v11;
  v19.super_class = v12;
  return objc_msgSendSuper2(&v19, sel_init);
}

id MockEmittableSiriAnalyticsMessageStream.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MockEmittableSiriAnalyticsMessageStream();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t specialized MockEmittableSiriAnalyticsMessageStream.emitMessage(_:timestamp:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC21SiriInformationSearch39MockEmittableSiriAnalyticsMessageStream_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in MockEmittableSiriAnalyticsMessageStream.emitMessage(_:timestamp:);
  *(v5 + 24) = v4;
  v11[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_26;
  v6 = _Block_copy(v11);
  v7 = v1;
  v8 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t static CarPlaySessionDataProvider.make()(uint64_t a1)
{
  v1 = type metadata accessor for CarPlaySessionDataProvider();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v2[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v2[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v2[v3] = 0;
  v6.receiver = v2;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v4);
}

id CarPlaySessionDataProvider.__allocating_init(carPlaySessionStatus:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v3[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v3[v4] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id CarPlaySessionDataProvider.init(carPlaySessionStatus:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v1[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v1[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v1[v2] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CarPlaySessionDataProvider();
  return objc_msgSendSuper2(&v4, sel_init);
}

void CarPlaySessionDataProvider.prepare(dispatchQueue:)()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  if (!*(v0 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus))
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CF89F8]) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    if (v4)
    {
      [v4 addSessionObserver_];
    }
  }
}

uint64_t CarPlaySessionDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus);
  if (v3 && (v4 = [v3 currentSession]) != 0)
  {
    v5 = v4;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, v7, v8, "CarPlaySessionDataProvider returning CarPlaySessionData", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }

    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData();
    MEMORY[0x28223BE20](v10);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_CarPlaySessionData and conformance Apple_Parsec_Siri_V2alpha_CarPlaySessionData();
    static Message.with(_:)();

    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pommes);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2232BB000, v13, v14, "CarPlaySessionDataProvider session did not connect or is nil, returning nil", v15, 2u);
      MEMORY[0x223DE0F80](v15, -1, -1);
    }

    v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData();
    v17 = *(*(v16 - 8) + 56);

    return v17(a1, 1, 1, v16);
  }
}

uint64_t closure #1 in CarPlaySessionDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(int a1, id a2)
{
  v3 = [a2 configuration];
  [v3 videoPlaybackSupported];

  Apple_Parsec_Siri_V2alpha_CarPlaySessionData.videoPlaybackSupported.setter();
  v4 = [a2 videoPlaybackAvailable];
  if (v4)
  {
    v5 = v4;
    [v4 BOOLValue];
  }

  return Apple_Parsec_Siri_V2alpha_CarPlaySessionData.videoPlaybackAvailable.setter();
}

id CarPlaySessionDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarPlaySessionDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlaySessionDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_CarPlaySessionData and conformance Apple_Parsec_Siri_V2alpha_CarPlaySessionData()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_CarPlaySessionData and conformance Apple_Parsec_Siri_V2alpha_CarPlaySessionData;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_CarPlaySessionData and conformance Apple_Parsec_Siri_V2alpha_CarPlaySessionData)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_CarPlaySessionData and conformance Apple_Parsec_Siri_V2alpha_CarPlaySessionData);
  }

  return result;
}

void specialized CarPlaySessionDataProvider.sessionDidDisconnect(_:)()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "CarPlaySessionDataProvider sessionDidDisconnect", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect) = 0;
}

uint64_t dispatch thunk of CarPlaySessionDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0xA8);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t SageSearch.__allocating_init(remoteSearchClient:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SageSearch.init(remoteSearchClient:)(a1);
  return v2;
}

uint64_t SageSearch.__allocating_init()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  type metadata accessor for PegasusProxyForIntelligenceFlow();
  v18 = static PegasusProxyForIntelligenceFlow.shared.getter();
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v17 = SiriEnvironment.networkAvailability.getter();

  type metadata accessor for AnalyticsComponentIdGenerator();
  v7 = swift_allocObject();
  type metadata accessor for PegasusInstrumentationUtil();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  v10 = PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, static Logger.sage);
  v12 = *(v1 + 16);
  v12(v6, v11, v0);
  type metadata accessor for SagePegasusProxy(0);
  v13 = swift_allocObject();
  v12(v4, v6, v0);
  v14 = specialized SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(v18, v17, v8, 0, v9, v10, v4, v13);
  (*(v1 + 8))(v6, v0);
  return (*(v19 + 88))(v14);
}

uint64_t SageSearch.init(remoteSearchClient:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  v3 = *(*a1 + 376);

  v3();
  swift_beginAccess();
  v4 = static ServiceHelperManager.shared;
  v5 = one-time initialization token for sage;
  swift_unknownObjectRetain();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.sage);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32AFRequestDispatcherServiceHelper_pSgMd, &_sSo32AFRequestDispatcherServiceHelper_pSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2232BB000, v7, v8, "ServiceHelperUtil: Retrieving service helper (underlying: %s)", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  if (v4)
  {
    v14 = *(**(v2 + 16) + 328);

    v14(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2232BB000, v15, v16, "Service helper missing when handling search tool global requests", v17, 2u);
      MEMORY[0x223DE0F80](v17, -1, -1);
    }
  }

  return v2;
}

Swift::Int SageSearch.SageSearchError.SageSearchErrorType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

uint64_t SageSearch.SageSearchError.debugMessage.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

SiriInformationSearch::SageSearch::SageSearchError __swiftcall SageSearch.SageSearchError.init(error:debugMessage:)(SiriInformationSearch::SageSearch::SageSearchError::SageSearchErrorType error, Swift::String_optional debugMessage)
{
  *v2 = *error;
  *(v2 + 8) = debugMessage;
  result.debugMessage = debugMessage;
  result.error = error;
  return result;
}

uint64_t SageSearch.search(query:location:)()
{
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.sage);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2232BB000, v1, v2, "The deprecated search API was called. Pegasus response is always nil.", v3, 2u);
    MEMORY[0x223DE0F80](v3, -1, -1);
  }

  return 0;
}

uint64_t SageSearch.search(query:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = SageSearch.search(query:location:);
  v9 = MEMORY[0x277D84F90];

  return v11(a1, a2, v9, a3);
}

uint64_t SageSearch.search(query:location:)(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t SageSearch.search(query:clientEntities:location:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for PommesSearchRequest(0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v5[16] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](SageSearch.search(query:clientEntities:location:), 0, 0);
}

uint64_t SageSearch.search(query:clientEntities:location:)(uint64_t a1)
{
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[18];
  v62 = v1[19];
  v7 = v1[17];
  v59 = v1[16];
  v8 = v1[14];
  v69 = v1[13];
  v73 = v1[12];
  v63 = v1[11];
  v66 = v1[10];
  v67 = v1[8];
  v68 = v1[7];
  v71 = v1[3];
  v64 = v1[2];
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v60 = v10;
  v61 = v9;
  v11 = *(v6 + 8);
  v11(v2, v7);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v57 = v13;
  v58 = v12;
  v11(v2, v7);
  UUID.init()();
  (*(v6 + 16))(v5, v3, v7);
  v14 = *(v6 + 32);
  v14(v4, v5, v7);
  v11(v3, v7);
  v15 = type metadata accessor for DateInterval();
  (*(*(v15 - 8) + 56))(v59, 1, 1, v15);
  type metadata accessor for PommesRequestContext(0);
  v16 = swift_allocObject();
  v1[24] = v16;
  *(v16 + 16) = v58;
  *(v16 + 24) = v57;
  v14(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId, v4, v7);
  v17 = (v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v17 = v61;
  v17[1] = v60;
  v18 = (v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v20 = 0;
  v20[1] = 0;
  *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = 0;
  *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = 0;
  *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = 0;
  *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
  *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = MEMORY[0x277D84F90];
  v22 = v21;
  outlined init with take of PommesSearchReason?(v59, v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v22;
  v23 = v22;
  *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  v11(v62, v7);
  v27 = type metadata accessor for PommesContext();
  (*(*(v27 - 8) + 56))(v73, 1, 1, v27);
  v28 = type metadata accessor for InputOrigin();
  (*(*(v28 - 8) + 56))(v63, 1, 1, v28);
  *(v8 + v69[23]) = v23;
  v29 = (v8 + v69[5]);
  *v29 = v64;
  v29[1] = v71;
  v30 = v69[6];
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v31 - 8) + 56))(v8 + v30, 1, 1, v31);
  v32 = *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v33 = (v8 + v69[8]);
  *v33 = *(v16 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  v33[1] = v32;
  v34 = (v8 + v69[9]);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48));
  *v8 = v24;
  v8[1] = v26;
  v36 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v65 = *(v36 - 8);
  v37 = *(v65 + 56);
  v37(v66, 1, 1, v36);
  v38 = type metadata accessor for NLXResultCandidate(0);
  v39 = *(v38 + 20);
  v37(v35 + v39, 1, 1, v36);
  v40 = (v35 + *(v38 + 24));
  *v35 = MEMORY[0x277D84F90];

  outlined assign with take of MediaUserStateCenter?(v66, v35 + v39, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v40 = 0;
  v40[1] = 0;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of MediaUserStateCenter?(v73, v8 + v69[10], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v37(v66, 1, 1, v36);
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(MEMORY[0x277D84F90], v66, v67);
  outlined destroy of MediaUserStateCenter?(v66, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v67, v68, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v41 - 8) + 48))(v68, 1, v41) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v1[7], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v42 = 1;
  }

  else
  {
    (*(v65 + 32))(v1[9], v1[7], v36);
    v42 = 0;
  }

  v43 = v1[14];
  v74 = v1[15];
  v44 = v1[13];
  v70 = v1[12];
  v45 = v1[11];
  v46 = v1[8];
  v47 = v1[9];
  v72 = v1[6];
  v37(v47, v42, 1, v36);
  outlined init with take of PommesSearchReason?(v47, v43 + v44[11], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *(v43 + v44[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v46, 0);
  v48 = *(v16 + 24);
  v49 = (v43 + v44[7]);
  *v49 = *(v16 + 16);
  v49[1] = v48;
  *(v43 + v44[13]) = v16;
  outlined init with copy of MediaUserStateCenter?(v45, v43 + v44[14], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  *(v43 + v44[15]) = 0;
  *(v43 + v44[18]) = 0;

  v50 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(MEMORY[0x277D84F90]);
  outlined destroy of MediaUserStateCenter?(v46, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  outlined destroy of MediaUserStateCenter?(v45, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v70, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  *(v43 + v44[19]) = v50;
  *(v43 + v44[20]) = 0;
  v51 = (v43 + v44[21]);
  *v51 = 0;
  v51[1] = 0;
  *(v43 + v44[22]) = 0;
  *(v43 + v44[16]) = 0;
  *(v43 + v44[17]) = 0;
  outlined init with take of PommesSearchRequest(v43, v74);
  v75 = (*(*v72 + 128) + **(*v72 + 128));
  v52 = swift_task_alloc();
  v1[25] = v52;
  *v52 = v1;
  v52[1] = SageSearch.search(query:clientEntities:location:);
  v53 = v1[15];
  v54 = v1[5];
  v55 = v1[4];

  return v75(v53, v55, v54, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = SageSearch.search(query:clientEntities:location:);
  }

  else
  {
    *(v4 + 216) = a1;
    v5 = SageSearch.search(query:clientEntities:location:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t SageSearch.search(query:clientEntities:location:)()
{
  v1 = v0[15];

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_0(v1, type metadata accessor for PommesSearchRequest);

  v2 = v0[1];
  v3 = v0[27];

  return v2(v3);
}

{
  v1 = *(v0 + 120);

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_0(v1, type metadata accessor for PommesSearchRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t SageSearch.search(request:clientEntities:location:searchToolClientId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = SageSearch.search(request:clientEntities:location:searchToolClientId:);

  return SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(a1, a2, a3, 8);
}

uint64_t SageSearch.search(request:clientEntities:location:searchToolClientId:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](SageSearch.search(request:clientEntities:location:searchToolClientId:), 0, 0);
  }
}

uint64_t SageSearch.search(request:clientEntities:location:searchToolClientId:)()
{
  v18 = v0;
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sage);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = dispatch thunk of PommesResponse.experiences.getter();
    v9 = type metadata accessor for Experience();
    v10 = MEMORY[0x223DDF850](v8, v9);
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v17);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_2232BB000, v4, v5, "Received experiences:\n%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223DE0F80](v7, -1, -1);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  v14 = *(v0 + 8);
  v15 = *(v0 + 24);

  return v14(v15);
}

uint64_t SageSearch.search(searchToolRequest:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for PommesSearchRequest(0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](SageSearch.search(searchToolRequest:), 0, 0);
}

{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_0(*(v4 + 32), type metadata accessor for PommesSearchRequest);
  if (v1)
  {

    return MEMORY[0x2822009F8](SageSearch.search(searchToolRequest:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t SageSearch.search(searchToolRequest:)()
{
  v1 = v0[3];
  v2 = v0[2];
  (*(*v1 + 144))(v2);
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_clientEntities);
  v4 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_location);
  v5 = v2 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId;
  v6 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_searchToolClientId);
  v7 = *(v5 + 8);
  v11 = (*(*v1 + 128) + **(*v1 + 128));
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = SageSearch.search(searchToolRequest:);
  v9 = v0[4];

  return v11(v9, v3, v4, v6, v7);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SageSearch.buildPommesSearchRequest(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v154 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v156 = &v128 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v155 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v153 = &v128 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v161 = &v128 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v162 = &v128 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v148 = &v128 - v16;
  v151 = type metadata accessor for UUID();
  v144 = *(v151 - 8);
  v17 = MEMORY[0x28223BE20](v151);
  v150 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v143 = &v128 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v136 = &v128 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v128 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v135 = &v128 - v26;
  MEMORY[0x28223BE20](v25);
  v133 = &v128 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v128 - v29;
  v31 = type metadata accessor for PommesSearchRequest.Builder(0);
  v32 = (v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = (&v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v37 = &v128 - v36;
  v38 = type metadata accessor for PommesSearchRequest(0);
  v39 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = (&v128 - v43);
  *v37 = 0;
  *(v37 + 1) = 0;
  v45 = v32[7];
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v47 = *(v46 - 8);
  v146 = *(v47 + 56);
  v147 = v46;
  v145 = v47 + 56;
  v146(&v37[v45], 1, 1);
  v48 = v32[8];
  v49 = type metadata accessor for PommesCandidateId();
  (*(*(v49 - 8) + 56))(&v37[v48], 1, 1, v49);
  v50 = &v37[v32[9]];
  *v50 = 0;
  *(v50 + 1) = 0;
  *&v37[v32[10]] = 0;
  v37[v32[11]] = 0;
  v37[v32[12]] = 0;
  v51 = v32[13];
  v52 = type metadata accessor for PommesContext();
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v142 = v52;
  v141 = v54;
  v140 = v53 + 56;
  (v54)(&v37[v51], 1, 1);
  v55 = v32[14];
  v56 = type metadata accessor for InputOrigin();
  v57 = *(v56 - 8);
  v58 = *(v57 + 56);
  v139 = v56;
  v138 = v58;
  v137 = v57 + 56;
  (v58)(&v37[v55], 1, 1);
  v59 = v32[15];
  v60 = type metadata accessor for TCUMappedNLResponse();
  (*(*(v60 - 8) + 56))(&v37[v59], 1, 1, v60);
  *&v37[v32[16]] = MEMORY[0x277D84F90];
  v61 = v32[17];
  v62 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v132 = *(v62 - 8);
  v63 = *(v132 + 56);
  v149 = v62;
  v158 = v63;
  v159 = v132 + 56;
  (v63)(&v37[v61], 1, 1);
  v64 = &v37[v32[18]];
  *v64 = 0;
  *(v64 + 1) = 0;
  *&v37[v32[19]] = 0;
  v37[v32[20]] = 0;
  v65 = &v37[v32[21]];
  *v65 = 0;
  *(v65 + 1) = 0;
  *&v37[v32[22]] = 0;
  v37[v32[23]] = 0;
  v152 = a1;
  closure #1 in SageSearch.buildPommesSearchRequest(from:)(v37, a1);
  outlined init with copy of PommesSearchRequest.Builder(v37, v35, type metadata accessor for PommesSearchRequest.Builder);
  PommesSearchRequest.init(builder:)(v35, v30);
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_0(v37, type metadata accessor for PommesSearchRequest.Builder);
  v66 = *(v39 + 48);
  v160 = v38;
  if (v66(v30, 1, v38))
  {
    outlined destroy of MediaUserStateCenter?(v30, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
    if (one-time initialization token for sage != -1)
    {
      swift_once();
    }

    v131 = v42;
    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.sage);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2232BB000, v68, v69, "Falling back to search request construction with less context", v70, 2u);
      MEMORY[0x223DE0F80](v70, -1, -1);
    }

    v71 = v133;
    UUID.init()();
    v130 = UUID.uuidString.getter();
    v129 = v72;
    v73 = v144;
    v74 = *(v144 + 8);
    v75 = v151;
    v74(v71, v151);
    v76 = v135;
    UUID.init()();
    v77 = v134;
    UUID.init()();
    v78 = UUID.uuidString.getter();
    v80 = v79;
    v74(v77, v75);
    v81 = v136;
    (*(v73 + 16))(v136, v76, v75);
    v82 = *(v73 + 32);
    v83 = v143;
    v82(v143, v81, v75);
    v74(v76, v75);
    v84 = type metadata accessor for DateInterval();
    v85 = v148;
    (*(*(v84 - 8) + 56))(v148, 1, 1, v84);
    type metadata accessor for PommesRequestContext(0);
    v86 = swift_allocObject();
    v87 = v129;
    *(v86 + 16) = v130;
    *(v86 + 24) = v87;
    v82((v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId), v83, v75);
    v88 = (v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    *v88 = v78;
    v88[1] = v80;
    v89 = (v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
    *v89 = 0;
    v89[1] = 0;
    v90 = (v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
    *v90 = 0;
    v90[1] = 0;
    v91 = (v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
    *v91 = 0;
    v91[1] = 0;
    *(v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = 0;
    *(v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = 0;
    *(v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = 0;
    *(v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
    *(v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = 0;
    v92 = MEMORY[0x277D84F90];
    *(v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = MEMORY[0x277D84F90];
    outlined init with take of PommesSearchReason?(v85, v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    *(v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v92;
    *(v86 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
    v93 = *(v152 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest);
    v94 = *(v93 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance);
    v95 = *(v93 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8);

    v96 = v150;
    UUID.init()();
    v97 = UUID.uuidString.getter();
    v148 = v98;
    v74(v96, v75);
    v99 = *(v93 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext);
    v100 = v131;
    if (v99)
    {
      v151 = *(v93 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext);
    }

    else
    {

      v151 = 0;
      v99 = v86;
    }

    v141(v162, 1, 1, v142);
    v138(v161, 1, 1, v139);
    v101 = v160;
    *(v100 + v160[23]) = MEMORY[0x277D84F90];
    v102 = (v100 + v101[5]);
    *v102 = v94;
    v102[1] = v95;
    (v146)(v100 + v101[6], 1, 1, v147);
    v152 = v99;
    v103 = *(v99 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    v150 = *(v99 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
    v104 = v150;
    v105 = (v100 + v101[8]);
    *v105 = v103;
    v105[1] = v104;
    v106 = (v100 + v101[9]);
    *v106 = 0;
    v106[1] = 0;
    v107 = v100 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);
    v108 = v148;
    *v100 = v97;
    v100[1] = v108;
    v109 = v153;
    v110 = v149;
    v111 = v158;
    v158(v153, 1, 1, v149);
    v112 = type metadata accessor for NLXResultCandidate(0);
    v113 = *(v112 + 20);
    v111(&v107[v113], 1, 1, v110);
    v114 = &v107[*(v112 + 24)];
    *v107 = MEMORY[0x277D84F90];

    outlined assign with take of MediaUserStateCenter?(v109, &v107[v113], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    type metadata accessor for PommesSearchRequest.ParseState(0);
    *v114 = 0;
    *(v114 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of MediaUserStateCenter?(v162, v100 + v101[10], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v111(v109, 1, 1, v110);
    v115 = v156;
    static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(MEMORY[0x277D84F90], v109, v156);
    outlined destroy of MediaUserStateCenter?(v109, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v116 = v154;
    outlined init with copy of MediaUserStateCenter?(v115, v154, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    if ((*(*(v117 - 8) + 48))(v116, 1, v117) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v116, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v118 = 1;
      v119 = v155;
    }

    else
    {
      v119 = v155;
      (*(v132 + 32))(v155, v116, v110);
      v118 = 0;
    }

    v158(v119, v118, 1, v110);
    v120 = v160;
    outlined init with take of PommesSearchReason?(v119, v100 + v160[11], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    *(v100 + v120[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v115, 0);
    v121 = v152;
    v122 = *(v152 + 24);
    v123 = (v100 + v120[7]);
    *v123 = *(v152 + 16);
    v123[1] = v122;
    *(v100 + v120[13]) = v121;
    v124 = v161;
    outlined init with copy of MediaUserStateCenter?(v161, v100 + v120[14], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    *(v100 + v120[15]) = 0;
    *(v100 + v120[18]) = 0;

    v125 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(MEMORY[0x277D84F90]);

    outlined destroy of MediaUserStateCenter?(v115, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    outlined destroy of MediaUserStateCenter?(v124, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    outlined destroy of MediaUserStateCenter?(v162, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    *(v100 + v120[19]) = v125;
    *(v100 + v120[20]) = 0;
    v126 = (v100 + v120[21]);
    *v126 = 0;
    v126[1] = 0;
    *(v100 + v120[22]) = 0;
    *(v100 + v120[16]) = 0;
    *(v100 + v120[17]) = 0;
  }

  else
  {
    outlined init with take of PommesSearchRequest(v30, v44);
    v100 = v44;
  }

  return outlined init with take of PommesSearchRequest(v100, v157);
}

uint64_t closure #1 in SageSearch.buildPommesSearchRequest(from:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v29 - v9);
  v11 = *(a2 + OBJC_IVAR____TtC21SiriInformationSearch26SearchToolGlobalRequestXPC_pommesSearchRequest);
  v13 = *(v11 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance);
  v12 = *(v11 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8);

  *a1 = v13;
  a1[1] = v12;
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  *v10 = v14;
  v10[1] = v16;
  v17 = *MEMORY[0x277D56618];
  v18 = type metadata accessor for PommesCandidateId();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v10, v17, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  v20 = type metadata accessor for PommesSearchRequest.Builder(0);
  outlined assign with take of MediaUserStateCenter?(v10, a1 + v20[6], &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  *(a1 + v20[9]) = *(v11 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser);
  *(a1 + v20[10]) = *(v11 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome);
  v22 = *(v11 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId);
  v21 = *(v11 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId + 8);
  v23 = (a1 + v20[19]);

  *v23 = v22;
  v23[1] = v21;
  *(a1 + v20[20]) = *(v11 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification);
  v24 = *(v11 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext);
  v25 = v20[8];

  *(a1 + v25) = v24;
  v26 = OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin;
  v27 = v20[12];
  outlined destroy of MediaUserStateCenter?(a1 + v27, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  return outlined init with copy of MediaUserStateCenter?(v11 + v26, a1 + v27, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
}

uint64_t SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for OS_dispatch_queue.Attributes();
  v5[23] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = type metadata accessor for PommesSearchRequest(0);
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), 0, 0);
}

uint64_t SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)()
{
  v1 = v0[29];
  v39 = v0[28];
  v2 = v0[26];
  v3 = v0[27];
  v34 = v0[25];
  v35 = v0[20];
  v36 = v0[21];
  v37 = v0[19];
  v32 = v1;
  v33 = v0[15];
  v38 = v0[14];
  v4 = *(v0[18] + 16);
  outlined init with copy of PommesSearchRequest.Builder(v38, v1, type metadata accessor for PommesSearchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF920;
  *(inited + 32) = 1;
  v6 = [objc_opt_self() indexMatcher];
  v7 = type metadata accessor for MusicDomain();
  v8 = swift_allocObject();
  v9 = specialized MusicDomain.init(spanMatcher:)(v6, v8);
  *(inited + 64) = v7;
  *(inited + 72) = &protocol witness table for MusicDomain;
  *(inited + 40) = v9;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch16LocalDomainTypesO_AC0fgE0_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of MediaUserStateCenter?(inited + 32, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMd, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMR);
  type metadata accessor for SageSearchRequestProcessor(0);
  v11 = swift_allocObject();
  v0[30] = v11;
  type metadata accessor for AnalyticsComponentIdGenerator();
  v12 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v12;
  v11[4] = v13;
  *(v11 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_attemptedProfileSliceLabels) = MEMORY[0x277D84FA0];
  v11[2] = v4;
  outlined init with copy of PommesSearchRequest.Builder(v1, v11 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);
  *(v11 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_clientEntities) = v33;
  v11[3] = v10;
  type metadata accessor for OS_dispatch_queue();
  v41 = v4;

  _StringGuts.grow(_:)(40);

  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v3, v34);
  MEMORY[0x223DDF6D0](v14, v16);

  static DispatchQoS.userInitiated.getter();
  v0[12] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v35 + 104))(v36, *MEMORY[0x277D85260], v37);
  v18 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_0(v32, type metadata accessor for PommesSearchRequest);
  *(v11 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_requestQueue) = v18;
  v19 = (v38 + *(v39 + 32));
  if (v19[1])
  {
    v20 = *v19;
    v21 = v19[1];
  }

  else
  {
    v22 = v0[27];
    v23 = v0[25];
    UUID.init()();
    v20 = UUID.uuidString.getter();
    v21 = v24;
    v17(v22, v23);
  }

  v25 = v0[16];
  v26 = v0[17];
  v27 = *(*v41 + 336);

  v27(v20, v21, v25);

  v28 = type metadata accessor for PommesResponse();
  v29 = swift_task_alloc();
  v0[31] = v29;
  *(v29 + 16) = v11;
  *(v29 + 24) = v26;
  v30 = swift_task_alloc();
  v0[32] = v30;
  *v30 = v0;
  v30[1] = SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);

  return MEMORY[0x282200740](v0 + 13, v28, v28, 0, 0, &async function pointer to partial apply for closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), v29, v28);
}

{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  }

  else
  {

    v2 = SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), 0, 0);
}

uint64_t closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF21SiriInformationSearch14PommesResponseC_s5Error_pTg5(v1, &async function pointer to partial apply for closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), v6);
  outlined destroy of MediaUserStateCenter?(v1, &_sScPSgMd, &_sScPSgMR);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF21SiriInformationSearch14PommesResponseC_s5Error_pTg5(v1, &async function pointer to partial apply for closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), v7);
  outlined destroy of MediaUserStateCenter?(v1, &_sScPSgMd, &_sScPSgMR);
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgy21SiriInformationSearch14PommesResponseCs5Error_pGMd, &_sScgy21SiriInformationSearch14PommesResponseCs5Error_pGMR);
  *v8 = v0;
  v8[1] = closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);

  return MEMORY[0x2822004D0](v0 + 2, 0, 0, v9);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  }

  else
  {
    v2 = closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 32);
    **(v0 + 24) = v1;
    v3 = *v2;
    v4 = type metadata accessor for PommesResponse();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x223DDFA00](v3, v4, v5, MEMORY[0x277D84950]);

    v6 = *(v0 + 8);
  }

  else
  {
    if (one-time initialization token for sage != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.sage);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2232BB000, v8, v9, "SageSearch encountered unknown error", v10, 2u);
      MEMORY[0x223DE0F80](v10, -1, -1);
    }

    lazy protocol witness table accessor for type SageSearch.SageSearchError and conformance SageSearch.SageSearchError();
    swift_allocError();
    *v11 = 1;
    *(v11 + 8) = 0xD000000000000024;
    *(v11 + 16) = 0x80000002234DEEE0;
    swift_willThrow();
    v12 = **(v0 + 32);
    v13 = type metadata accessor for PommesResponse();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x223DDFA00](v12, v13, v14, MEMORY[0x277D84950]);

    v6 = *(v0 + 8);
  }

  return v6();
}

{
  v1 = **(v0 + 32);
  v2 = type metadata accessor for PommesResponse();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x223DDFA00](v1, v2, v3, MEMORY[0x277D84950]);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = (*(*a4 + 216) + **(*a4 + 216));
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);

  return v7();
}

uint64_t closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), 0, 0);
  }
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF21SiriInformationSearch14PommesResponseC_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  outlined init with copy of MediaUserStateCenter?(a1, v18 - v8, &_sScPSgMd, &_sScPSgMR);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v9, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  type metadata accessor for PommesResponse();
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock.Instant();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:), 0, 0);
}

uint64_t closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v4 = *(v3 + 8);
  *(v0 + 104) = v4;
  *(v0 + 112) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  v6 = _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  *v5 = v0;
  v5[1] = closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  v7 = *(v0 + 96);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);

  return MEMORY[0x282200488](v7, v0 + 16, v8, v9, v6);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = v2[13];
  if (v0)
  {
    v4 = v2[12];
    v5 = v2[9];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v3(v4, v5);
    v6 = closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  }

  else
  {
    v7 = v2[12];
    v8 = v2[9];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v3(v7, v8);
    v6 = closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sage);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "SageSearch timed out waiting for Pegasus", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  lazy protocol witness table accessor for type SageSearch.SageSearchError and conformance SageSearch.SageSearchError();
  swift_allocError();
  *v5 = 0;
  *(v5 + 8) = 0xD000000000000028;
  *(v5 + 16) = 0x80000002234DEF10;
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SageSearch.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s21SiriInformationSearch06PommesC7RequestVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SageSearch.SageSearchError.SageSearchErrorType and conformance SageSearch.SageSearchError.SageSearchErrorType()
{
  result = lazy protocol witness table cache variable for type SageSearch.SageSearchError.SageSearchErrorType and conformance SageSearch.SageSearchError.SageSearchErrorType;
  if (!lazy protocol witness table cache variable for type SageSearch.SageSearchError.SageSearchErrorType and conformance SageSearch.SageSearchError.SageSearchErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SageSearch.SageSearchError.SageSearchErrorType and conformance SageSearch.SageSearchError.SageSearchErrorType);
  }

  return result;
}

uint64_t dispatch thunk of SageSearch.search(query:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 112) + **(*v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of SageSearch.search(query:location:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of SageSearch.search(query:location:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of SageSearch.search(query:clientEntities:location:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 120) + **(*v4 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = dispatch thunk of PommesSearchService.searchInfiEntity(request:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SageSearch.search(request:clientEntities:location:searchToolClientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 128) + **(*v5 + 128));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = dispatch thunk of PommesSearchService.searchInfiEntity(request:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SageSearch.search(searchToolRequest:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of PommesSearchService.searchToolGlobalSearch(request:);

  return v6(a1);
}

uint64_t getEnumTagSinglePayload for SageSearch.SageSearchError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SageSearch.SageSearchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of PommesSearchRequest.Builder(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #2 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:)(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type SageSearch.SageSearchError and conformance SageSearch.SageSearchError()
{
  result = lazy protocol witness table cache variable for type SageSearch.SageSearchError and conformance SageSearch.SageSearchError;
  if (!lazy protocol witness table cache variable for type SageSearch.SageSearchError and conformance SageSearch.SageSearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SageSearch.SageSearchError and conformance SageSearch.SageSearchError);
  }

  return result;
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall AudioResult.encode(with:)(NSCoder with)
{
  v2 = v1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem();
  v4 = Message.serializedData(partial:)();
  v6 = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = MEMORY[0x223DDF550](0x6574496F69647561, 0xE90000000000006DLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v8];

  outlined consume of Data._Representation(v4, v6);
  v9 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource);
  v10 = MEMORY[0x223DDF550](0x72756F536D657469, 0xEA00000000006563);
  [(objc_class *)with.super.isa encodeInteger:v9 forKey:v10];

  if ((*(v2 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId + 8) & 1) == 0)
  {
    v11 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId);
    v12 = MEMORY[0x223DDF550](0x6574736973726570, 0xEC0000006449746ELL);
    [(objc_class *)with.super.isa encodeInt64:v11 forKey:v12];
  }

  v13 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded);
  v14 = MEMORY[0x223DDF550](0x6F6C6E776F447369, 0xEC00000064656461);
  [(objc_class *)with.super.isa encodeBool:v13 forKey:v14];
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem);
  }

  return result;
}

id AudioResult.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v12 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v12)
  {
    v13 = v12;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
    (*(v9 + 16))(&v1[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem], v11, v8);
    v19 = MEMORY[0x223DDF550](0x6574736973726570, 0xEC0000006449746ELL);
    v20 = [a1 decodeObjectForKey_];

    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    v37 = v35;
    v38 = v36;
    if (*(&v36 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v21 = v33;
        v22 = [v33 longLongValue];

        v23 = 0;
LABEL_16:
        v24 = &v2[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
        *v24 = v22;
        v24[8] = v23;
        v25 = MEMORY[0x223DDF550](0x72756F536D657469, 0xEA00000000006563);
        v26 = [a1 decodeIntegerForKey_];

        v27 = v26 == 1;
        if (v26 == 2)
        {
          v27 = 2;
        }

        v2[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = v27;
        v28 = MEMORY[0x223DDF550](0x6F6C6E776F447369, 0xEC00000064656461);
        v29 = [a1 decodeBoolForKey_];

        (*(v9 + 8))(v11, v8);
        v2[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = v29;
        v30 = type metadata accessor for AudioResult(0);
        v34.receiver = v2;
        v34.super_class = v30;
        v31 = objc_msgSendSuper2(&v34, sel_init);

        return v31;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&v37, &_sypSgMd, &_sypSgMR);
    }

    v22 = 0;
    v23 = 1;
    goto LABEL_16;
  }

  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.music);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2232BB000, v15, v16, "Failed to decode AudioItem data", v17, 2u);
    MEMORY[0x223DE0F80](v17, -1, -1);
  }

  type metadata accessor for AudioResult(0);
  swift_deallocPartialClassInstance();
  return 0;
}

SiriInformationSearch::AudioResult::ItemSource_optional __swiftcall AudioResult.ItemSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t type metadata accessor for AudioResult(uint64_t a1)
{
  result = type metadata singleton initialization cache for AudioResult;
  if (!type metadata singleton initialization cache for AudioResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t AudioResult.ItemSource.description.getter()
{
  v1 = 0x726576726573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t AudioResult.audioItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static AudioResult.decodeSiriSyncId(id:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = Data.init(base64Encoded:options:)();
  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v5 = v3;
  v6 = v4;
  static String.Encoding.utf8.getter();
  v7 = String.init(data:encoding:)();
  v9 = v8;
  outlined consume of Data?(v5, v6);
  if (!v9)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

_BYTE *AudioResult.__allocating_init(itemSource:persistentId:audioItem:)(_BYTE *a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = *a1;
  v10 = &v9[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
  *v10 = a2;
  v10[8] = a3 & 1;
  v11 = OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v9[v11], a4, v12);
  v9[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = 0;
  v16.receiver = v9;
  v16.super_class = v4;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v13 + 8))(a4, v12);
  return v14;
}

_BYTE *AudioResult.init(itemSource:persistentId:audioItem:)(_BYTE *a1, uint64_t a2, char a3, uint64_t a4)
{
  v4[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = *a1;
  v6 = &v4[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
  *v6 = a2;
  v6[8] = a3 & 1;
  v7 = OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v4[v7], a4, v8);
  v4[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for AudioResult(0);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a4, v8);
  return v10;
}

_BYTE *AudioResult.__allocating_init(itemSource:audioItem:isDownloaded:)(_BYTE *a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = *a1;
  v8 = &v7[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
  *v8 = 0;
  v8[8] = 0;
  v9 = OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v7[v9], a2, v10);
  v7[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = a3;
  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a2, v10);
  return v12;
}

_BYTE *AudioResult.init(itemSource:audioItem:isDownloaded:)(_BYTE *a1, uint64_t a2, char a3)
{
  v3[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = *a1;
  v6 = &v3[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
  *v6 = 0;
  v6[8] = 0;
  v7 = OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a2, v8);
  v3[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for AudioResult(0);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a2, v8);
  return v10;
}

uint64_t AudioResult.__allocating_init(vocabularyResult:isDownloaded:)(void *a1, int a2)
{
  LODWORD(v33) = a2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  if (a1)
  {
    v32 = v2;
    v16 = a1;
    Apple_Parsec_Siri_V2alpha_AudioItem.init()();
    dispatch thunk of VocabularyResult.fieldType.getter();
    UInt16.audioType.getter();
    Apple_Parsec_Siri_V2alpha_AudioItem.type.setter();
    Apple_Parsec_Siri_V2alpha_AudioItem.type.getter();
    v17 = (*(v5 + 88))(v8, v4);
    if (v17 == *MEMORY[0x277D394D8] || v17 == *MEMORY[0x277D394E0])
    {
      goto LABEL_7;
    }

    if (v17 == *MEMORY[0x277D39500])
    {
      VocabularyResult.semanticValue.getter();
      Apple_Parsec_Siri_V2alpha_AudioItem.artist.setter();
      goto LABEL_15;
    }

    if (v17 == *MEMORY[0x277D394E8] || v17 == *MEMORY[0x277D39520] || v17 == *MEMORY[0x277D39488] || v17 == *MEMORY[0x277D394B0] || v17 == *MEMORY[0x277D39528] || v17 == *MEMORY[0x277D394F0] || v17 == *MEMORY[0x277D39508] || v17 == *MEMORY[0x277D394A8] || v17 == *MEMORY[0x277D39480] || v17 == *MEMORY[0x277D394B8])
    {
LABEL_7:
      VocabularyResult.semanticValue.getter();
      Apple_Parsec_Siri_V2alpha_AudioItem.title.setter();
LABEL_15:
      VocabularyResult.userId.getter();
      Apple_Parsec_Siri_V2alpha_AudioItem.sharedUserIDFromPlayableMusicAccount.setter();
      v34 = 2;
      (*(v10 + 16))(v13, v15, v9);
      v24 = (*(v32 + 136))(&v34, v13, v33 & 1);

      (*(v10 + 8))(v15, v9);
      return v24;
    }

    v33 = v5;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.pommes);
    v26 = v16;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 33554688;
      *(v29 + 4) = dispatch thunk of VocabularyResult.fieldType.getter();

      _os_log_impl(&dword_2232BB000, v27, v28, "vocabularyResult ontologyLabel ** %hu ** not handled", v29, 6u);
      MEMORY[0x223DE0F80](v29, -1, -1);
    }

    else
    {

      v27 = v26;
    }

    v30 = v33;

    (*(v10 + 8))(v15, v9);
    (*(v30 + 8))(v8, v4);
    return 0;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.pommes);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2232BB000, v20, v21, "cannot create AudioResult from nil vocabularyResult", v22, 2u);
      MEMORY[0x223DE0F80](v22, -1, -1);
    }

    return 0;
  }
}

uint64_t AudioResult.__allocating_init(clientAudioResult:)(void *a1)
{
  v2 = ClientAudioResult.vocabularyResult.getter();
  v3 = AudioResult.__allocating_init(vocabularyResult:isDownloaded:)(v2, 0);

  return v3;
}

uint64_t AudioResult.__allocating_init(clientAudioResult:isDownloaded:)(void *a1, int a2)
{
  v4 = ClientAudioResult.vocabularyResult.getter();
  v5 = AudioResult.__allocating_init(vocabularyResult:isDownloaded:)(v4, a2);

  return v5;
}

uint64_t AudioResult.__allocating_init(audioItem:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v15[-v11];
  outlined init with copy of Apple_Parsec_Siri_V2alpha_AudioItem?(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of MediaUserStateCenter?(a1, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMR);
    outlined destroy of MediaUserStateCenter?(v5, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMR);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    v16 = 1;
    (*(v7 + 16))(v10, v12, v6);
    v14 = (*(v1 + 136))(&v16, v10, 0);
    outlined destroy of MediaUserStateCenter?(a1, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMR);
    (*(v7 + 8))(v12, v6);
    return v14;
  }
}

uint64_t AudioResult.description.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_AudioItem.type.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D39518])
  {
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
  }

  else if (v6 == *MEMORY[0x277D394D8])
  {
    v7 = 0xE400000000000000;
    v8 = 1735290739;
  }

  else if (v6 == *MEMORY[0x277D394E0])
  {
    v7 = 0xE500000000000000;
    v8 = 0x6D75626C61;
  }

  else if (v6 == *MEMORY[0x277D39500])
  {
    v7 = 0xE600000000000000;
    v8 = 0x747369747261;
  }

  else if (v6 == *MEMORY[0x277D394E8])
  {
    v7 = 0xE500000000000000;
    v8 = 0x65726E6567;
  }

  else if (v6 == *MEMORY[0x277D39520])
  {
    v7 = 0xE800000000000000;
    v8 = 0x7473696C79616C70;
  }

  else
  {
    v8 = 0x5374736163646F70;
    if (v6 == *MEMORY[0x277D39488])
    {
      v7 = 0xEB00000000776F68;
    }

    else if (v6 == *MEMORY[0x277D394B0])
    {
      v7 = 0xEE0065646F736970;
      v8 = 0x4574736163646F70;
    }

    else if (v6 == *MEMORY[0x277D394C0])
    {
      v7 = 0xEF7473696C79616CLL;
      v8 = 0x5074736163646F70;
    }

    else
    {
      v7 = 0xEC0000006E6F6974;
      if (v6 == *MEMORY[0x277D39498])
      {
        v8 = 0x617453636973756DLL;
      }

      else if (v6 == *MEMORY[0x277D39528])
      {
        v7 = 0xE90000000000006BLL;
        v8 = 0x6F6F426F69647561;
      }

      else if (v6 == *MEMORY[0x277D394F0])
      {
        v7 = 0xE500000000000000;
        v8 = 0x6569766F6DLL;
      }

      else if (v6 == *MEMORY[0x277D39508])
      {
        v7 = 0xE600000000000000;
        v8 = 0x776F68537674;
      }

      else if (v6 == *MEMORY[0x277D394A8])
      {
        v7 = 0xED000065646F7369;
        v8 = 0x7045776F68537674;
      }

      else if (v6 == *MEMORY[0x277D39480])
      {
        v7 = 0xEA00000000006F65;
        v8 = 0x646956636973756DLL;
      }

      else if (v6 == *MEMORY[0x277D394B8])
      {
        v7 = 0xEE006E6F69746174;
      }

      else if (v6 == *MEMORY[0x277D394A0])
      {
        v8 = 0x6174536F69646172;
      }

      else if (v6 == *MEMORY[0x277D39510])
      {
        v7 = 0xE700000000000000;
        v8 = 0x6E6F6974617473;
      }

      else if (v6 == *MEMORY[0x277D394F8])
      {
        v7 = 0xE500000000000000;
        v8 = 0x636973756DLL;
      }

      else if (v6 == *MEMORY[0x277D394C8])
      {
        v7 = 0x80000002234DEF80;
        v8 = 0xD000000000000017;
      }

      else if (v6 == *MEMORY[0x277D394D0])
      {
        v7 = 0xE400000000000000;
        v8 = 1937204590;
      }

      else
      {
        (*(v3 + 8))(v5, v2);
        v7 = 0xEC00000044455A49;
        v8 = 0x4E474F4345524E55;
      }
    }
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  MEMORY[0x223DDF6D0](0xD000000000000019, 0x80000002234DEF60);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource))
  {
    if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource) == 1)
    {
      v9 = 0xE600000000000000;
      v1 = 0x726576726573;
    }

    else
    {
      v9 = 0x80000002234DEF40;
      v1 = 0xD000000000000011;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  MEMORY[0x223DDF6D0](v1, v9);

  MEMORY[0x223DDF6D0](0x69746E656469202CLL, 0xEE00203A72656966);
  v10 = Apple_Parsec_Siri_V2alpha_AudioItem.identifier.getter();
  MEMORY[0x223DDF6D0](v10);

  MEMORY[0x223DDF6D0](0x747369747261202CLL, 0xEB0000000022203ALL);
  v11 = Apple_Parsec_Siri_V2alpha_AudioItem.artist.getter();
  MEMORY[0x223DDF6D0](v11);

  MEMORY[0x223DDF6D0](0x656C746974202C22, 0xEB0000000022203ALL);
  v12 = Apple_Parsec_Siri_V2alpha_AudioItem.title.getter();
  MEMORY[0x223DDF6D0](v12);

  MEMORY[0x223DDF6D0](0x3A65707974202C22, 0xE900000000000020);
  MEMORY[0x223DDF6D0](v8, v7);

  MEMORY[0x223DDF6D0](32032, 0xE200000000000000);
  return v14[0];
}

id AudioResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioResult(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt16)@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_AudioItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMd, &_s10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AudioResult.ItemSource and conformance AudioResult.ItemSource()
{
  result = lazy protocol witness table cache variable for type AudioResult.ItemSource and conformance AudioResult.ItemSource;
  if (!lazy protocol witness table cache variable for type AudioResult.ItemSource and conformance AudioResult.ItemSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResult.ItemSource and conformance AudioResult.ItemSource);
  }

  return result;
}

uint64_t type metadata completion function for AudioResult(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
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

uint64_t PegasusInstrumentationUtil.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

id PegasusInstrumentationUtil.mockStream.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*PegasusInstrumentationUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PegasusInstrumentationUtil.mockStream.getter();
  return KnowledgeFallbackInstrumentationUtil.mockStream.modify;
}

uint64_t PegasusInstrumentationUtil.init(_:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void PegasusInstrumentationUtil.logStartOfPegasusRequest(requestId:pommesId:pommesCandidateId:payloadSizeInKB:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v13 = (*(*v3 + 136))();
  if (v13)
  {
    v8 = specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(a1, a2, a3);
    if (v8)
    {
      v9 = v8;
      [v8 setPegasusRequestContext_];
      v10 = [objc_opt_self() processInfo];
      v11 = NSProcessInfo.isRunningUnitTests.getter();

      if (v11)
      {
        v12 = (*(*v4 + 96))();
      }

      else
      {
        v12 = [objc_opt_self() sharedStream];
      }

      [v12 emitMessage_];
      swift_unknownObjectRelease();
    }
  }
}

void *PegasusInstrumentationUtil.createPegasusRequestStartedEvent(payloadSizeInKB:)(long double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D5A038]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D5A010]) init];
    if (v4)
    {
      v5 = v4;
      specialized PegasusInstrumentationUtil.roundToTwoSigFigs(_:)(a1);
      [v3 setPayloadSizeInKB:?];
      [v5 setStartedOrChanged_];
      goto LABEL_10;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2232BB000, v3, v7, "Failed to create the Start event and/or context", v8, 2u);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  v5 = 0;
LABEL_10:

  return v5;
}

void PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7, int a8, long double a9, long double a10, uint64_t a11)
{
  v91 = a3;
  v86 = a8;
  v85 = a6;
  v87 = a5;
  v89 = a1;
  v90 = a2;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x28223BE20](v15);
  v93 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v83 = *(v17 - 8);
  v84 = v17;
  MEMORY[0x28223BE20](v17);
  v82 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v80 = *(v19 - 8);
  v81 = v19;
  MEMORY[0x28223BE20](v19);
  v79 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v78 - v22;
  v96 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience();
  v24 = *(v96 - 8);
  v25 = MEMORY[0x28223BE20](v96);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v88 = &v78 - v28;
  v29 = type metadata accessor for Apple_Parsec_Siri_V1alpha_StatusCode();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v32, a4, v29);
  v33 = (*(v30 + 88))(v32, v29);
  v34 = *MEMORY[0x277D39258];
  (*(v30 + 8))(v32, v29);
  if (v33 == v34)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.pommes);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Incorrect logging method called. Should call logFailedPegasusRequest(pommesId:resultCandidateId:reason:).";
LABEL_18:
      _os_log_impl(&dword_2232BB000, v36, v37, v39, v38, 2u);
      MEMORY[0x223DE0F80](v38, -1, -1);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v40 = [objc_allocWithZone(MEMORY[0x277D5A018]) init];
  if (v40)
  {
    v41 = v40;
    v42 = [objc_allocWithZone(MEMORY[0x277D5A010]) init];
    if (v42)
    {
      v36 = v42;
      v78 = a11;
      [v41 setStatus_];
      specialized PegasusInstrumentationUtil.roundToTwoSigFigs(_:)(a9);
      [v41 setConfidenceScore_];
      specialized PegasusInstrumentationUtil.roundToTwoSigFigs(_:)(a10);
      [v41 setPayloadSizeInKB_];
      if (a7)
      {
        a7 = MEMORY[0x223DDF550](v85, a7);
      }

      v43 = v24;
      v45 = v95;
      v44 = v96;
      v46 = v93;
      [v41 setPegasusDomain_];

      [v41 setIsRewrittenUtteranceUsed_];
      v47 = specialized static PegasusInstrumentationUtil.kfedLatency(from:)();
      [v41 setKfedLatency_];

      outlined init with copy of MediaUserStateCenter?(v87, v23, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
      v48 = (*(v24 + 48))(v23, 1, v44);
      v49 = v94;
      if (v48 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v23, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
      }

      else
      {
        v52 = v88;
        (*(v43 + 32))(v88, v23, v44);
        (*(v43 + 16))(v27, v52, v44);
        v53 = (*(v43 + 88))(v27, v44);
        if (v53 == *MEMORY[0x277D38D80])
        {
          (*(v43 + 96))(v27, v44);
          v54 = (v49[4])(v46, v27, v45);
          v55 = v43;
          v56 = v46;
          if (one-time initialization token for shared != -1)
          {
            v54 = swift_once();
          }

          v87 = &v78;
          v57 = static PerformanceUtil.shared;
          MEMORY[0x28223BE20](v54);
          v58 = v92;
          v76 = v92;
          v77 = v56;
          v59 = v82;
          Date.init()();
          v60 = *(*v57 + 200);
          v76 = &v75;
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo52POMMESSchemaPOMMESPegasusResponseServerDrivenContextCSgMd, &_sSo52POMMESSchemaPOMMESPegasusResponseServerDrivenContextCSgMR);
          LOBYTE(v75) = 2;
          v50 = v58;
          v60(v97, 0xD00000000000001CLL, 0x80000002234DF060, 0, v59, "SiriInformationSearch/PegasusInstrumentationUtil.swift", 54, 2, 150, "logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)", 162, v75, partial apply for closure #3 in PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:));
          (*(v83 + 8))(v59, v84);
          v61 = v97[0];
          [v41 setServerDriven_];

          (*(v55 + 8))(v88, v96);
          (v94[1])(v93, v95);
          goto LABEL_27;
        }

        if (v53 == *MEMORY[0x277D38D78])
        {
          (*(v43 + 96))(v27, v44);
          v62 = v80;
          v63 = v79;
          v64 = (*(v80 + 32))();
          v95 = v43;
          if (one-time initialization token for shared != -1)
          {
            v64 = swift_once();
          }

          v94 = &v78;
          v65 = static PerformanceUtil.shared;
          MEMORY[0x28223BE20](v64);
          v66 = v92;
          v76 = v92;
          v77 = v63;
          v67 = v82;
          Date.init()();
          v93 = *(*v65 + 200);
          v76 = &v75;
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo52POMMESSchemaPOMMESPegasusResponseClientDrivenContextCSgMd, &_sSo52POMMESSchemaPOMMESPegasusResponseClientDrivenContextCSgMR);
          LOBYTE(v75) = 2;
          v50 = v66;
          (v93)(v97, 0xD00000000000001CLL, 0x80000002234DF170, 0, v67, "SiriInformationSearch/PegasusInstrumentationUtil.swift", 54, 2, 148, "logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)", 162, v75, partial apply for closure #2 in PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:));
          (*(v83 + 8))(v67, v84);
          v68 = v97[0];
          [v41 setClientDriven_];

          (*(v95 + 8))(v88, v96);
          (*(v62 + 8))(v63, v81);
          goto LABEL_27;
        }

        v74 = *(v43 + 8);
        v74(v88, v44);
        v74(v27, v44);
      }

      v50 = v92;
LABEL_27:
      [v36 setEnded:v41];
      v69 = specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(v89, v90, v91);
      if (v69)
      {
        v70 = v69;
        [v69 setPegasusRequestContext_];
        v71 = [objc_opt_self() processInfo];
        v72 = NSProcessInfo.isRunningUnitTests.getter();

        if (v72)
        {
          v73 = (*(*v50 + 96))();
        }

        else
        {
          v73 = [objc_opt_self() sharedStream];
        }

        [v73 emitMessage_];
        swift_unknownObjectRelease();
      }

      goto LABEL_33;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static Logger.pommes);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = "Failed to create the End event and/or context";
    goto LABEL_18;
  }

LABEL_33:
}

uint64_t closure #1 in PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V1alpha_StatusCode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D39260])
  {
    goto LABEL_2;
  }

  if (v6 == *MEMORY[0x277D39270])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277D39258])
  {
LABEL_2:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pommes);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2232BB000, v8, v9, "Unrecognized status from log end of request", v10, 2u);
      MEMORY[0x223DE0F80](v10, -1, -1);
    }

    return 0;
  }

  if (v6 != *MEMORY[0x277D39268])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pommes);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2232BB000, v13, v14, "Unknown status from log end of request", v15, 2u);
      MEMORY[0x223DE0F80](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return 3;
}

void closure #2 in PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)(void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D5A040]) init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    [v5 setType_];
  }

  *a2 = v4;
}

void PegasusInstrumentationUtil.logFailedPegasusRequest(requestId:pommesId:pommesCandidateId:reason:errorCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v13 = [objc_allocWithZone(MEMORY[0x277D5A020]) init];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x277D5A010]) init];
  if (!v15)
  {

LABEL_12:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.pommes);
    v25 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2232BB000, v25, v23, "Failed to create the Failed event and/or context", v24, 2u);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }

    goto LABEL_19;
  }

  v25 = v15;
  [v14 setReason_];
  if ((a6 & 1) != 0 || a4 != 1)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(a5))
  {
LABEL_23:
    __break(1u);
    return;
  }

  [v14 setErrorCode_];
LABEL_8:
  [v25 setFailed:v14];
  v16 = specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(a1, a2, a3);
  if (v16)
  {
    v17 = v16;
    v18 = v6;
    [v16 setPegasusRequestContext_];
    v19 = [objc_opt_self() processInfo];
    v20 = NSProcessInfo.isRunningUnitTests.getter();

    if (v20)
    {
      v21 = (*(*v18 + 96))();
    }

    else
    {
      v21 = [objc_opt_self() sharedStream];
    }

    [v21 emitMessage_];
    swift_unknownObjectRelease();
  }

LABEL_19:
}

id PegasusInstrumentationUtil.logPegasusSelfOpaquePayloads(requestId:payloads:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D5A828]) init];
  if (result)
  {
    v12 = result;
    outlined init with copy of MediaUserStateCenter?(a1, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return outlined destroy of MediaUserStateCenter?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v31 = v8;
      v32 = v7;
      (*(v8 + 32))(v10, v6, v7);
      [v12 setComponent_];
      v13 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v30 = v10;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v15 = [v13 initWithNSUUID_];

      [v12 setUuid_];
      v16 = *(a2 + 16);
      if (v16)
      {
        v34 = "handleSuccess(_:_:_:)";
        v17 = (a2 + 40);
        do
        {
          v18 = *(v17 - 1);
          v19 = *v17;
          v20 = objc_allocWithZone(MEMORY[0x277D5A970]);
          outlined copy of Data._Representation(v18, v19);
          v21 = [v20 init];
          if (v21)
          {
            v22 = v21;
            [v21 setComponentId_];
            v23 = Data._bridgeToObjectiveC()().super.isa;
            [v22 setAnyEventPayload_];

            v24 = [objc_opt_self() processInfo];
            v25 = [v24 environment];
            v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            if (*(v26 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, v34 | 0x8000000000000000), (v27 & 1) != 0))
            {

              v28 = (*(*v33 + 96))();
            }

            else
            {

              v28 = [objc_opt_self() sharedStream];
            }

            [v28 emitMessage_];
            outlined consume of Data._Representation(v18, v19);
            swift_unknownObjectRelease();
          }

          else
          {
            outlined consume of Data._Representation(v18, v19);
          }

          v17 += 2;
          --v16;
        }

        while (v16);
      }

      return (*(v31 + 8))(v30, v32);
    }
  }

  return result;
}

void PegasusInstrumentationUtil.logThirdPartyMapsAppSelectionResult(requestId:pommesId:pommesCandidateId:request:response:delegatedUDA:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v134 = a2;
  v135 = a3;
  v133 = a1;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v131 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v139 = &v129 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v130 = &v129 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v138 = &v129 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v129 - v16;
  v145 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v18 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v146 = *(v20 - 8);
  v147 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v23 = *(v143 - 1);
  MEMORY[0x28223BE20](v143);
  v25 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter();
  v27 = *(v26 + 16);
  if (v27)
  {
    v137 = v18;
    v140 = a5;
    v141 = v7;
    v142 = v6;
    v28 = 0;
    v29 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery() - 8);
    v30 = v26 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v31 = *(v29 + 72);
    while (1)
    {
      closure #1 in PegasusInstrumentationUtil.logThirdPartyMapsAppSelectionResult(requestId:pommesId:pommesCandidateId:request:response:delegatedUDA:)(&v148);
      v32 = v149;

      if (v32)
      {
        break;
      }

      ++v28;
      v30 += v31;
      if (v27 == v28)
      {
        goto LABEL_7;
      }
    }

    v27 = v28;
LABEL_7:
    v7 = v141;
    v6 = v142;
    v18 = v137;
  }

  v33 = *(v26 + 16);
  if (v27 == v33)
  {
    v132 = 0;
    v137 = 0;
  }

  else
  {
    if (v27 >= v33)
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
    closure #1 in PegasusInstrumentationUtil.logThirdPartyMapsAppSelectionResult(requestId:pommesId:pommesCandidateId:request:response:delegatedUDA:)(&v148);
    v137 = v149;
    if (!v149)
    {
LABEL_96:
      __break(1u);
LABEL_97:

      __break(1u);
      return;
    }

    v132 = v148;
  }

  v34 = v143;

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  v35 = (*(v23 + 8))(v25, v34);
  v36 = MEMORY[0x223DDB9C0](v35);
  v146[1](v22, v147);
  v37 = *(v36 + 16);
  v143 = (v18 + 8);
  v38 = (v7 + 8);
  v136 = v36;
  if (v37)
  {
    v39 = v36;
    v40 = v6;
    v41 = 0;
    v42 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent() - 8);
    v142 = v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v43 = *(v42 + 72);
    v140 = v37;
    v141 = v43;
    while (1)
    {
      v44 = v144;
      v45 = Apple_Parsec_Siri_V2alpha_ExperienceComponent.delayedActionComponent.getter();
      v46 = MEMORY[0x223DDB910](v45);
      (*v143)(v44, v145);
      v47 = *(v46 + 16);
      if (v47)
      {
        v147 = v41;
        v48 = 0;
        v49 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder() - 8);
        v50 = *(v49 + 80);
        v146 = v46;
        v51 = v46 + ((v50 + 32) & ~v50);
        v52 = *(v49 + 72);
        while (1)
        {
          v53 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
          v54 = MEMORY[0x223DDBA60](v53);
          v56 = v55;
          v57 = *v38;
          (*v38)(v17, v40);

          v58 = HIBYTE(v56) & 0xF;
          if ((v56 & 0x2000000000000000) == 0)
          {
            v58 = v54 & 0xFFFFFFFFFFFFLL;
          }

          if (v58)
          {
            break;
          }

          ++v48;
          v51 += v52;
          if (v47 == v48)
          {
            v48 = v47;
            goto LABEL_24;
          }
        }

        v59 = v138;
        v60 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
        MEMORY[0x223DDBA60](v60);
        v57(v59, v40);

LABEL_24:
        v46 = v146;
        v41 = v147;
        v37 = v140;
      }

      else
      {
        v48 = 0;
      }

      v61 = *(v46 + 16);
      if (v48 != v61)
      {
        break;
      }

      if (++v41 == v37)
      {
        v41 = v37;
        v6 = v40;
LABEL_34:
        v36 = v136;
        goto LABEL_35;
      }
    }

    if (v48 >= v61)
    {
      goto LABEL_93;
    }

    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
    v62 = v130;
    v63 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
    v64 = MEMORY[0x223DDBA60](v63);
    v66 = v65;
    v67 = *v38;
    v68 = v62;
    v6 = v40;
    (*v38)(v68, v40);

    v69 = HIBYTE(v66) & 0xF;
    if ((v66 & 0x2000000000000000) == 0)
    {
      v69 = v64 & 0xFFFFFFFFFFFFLL;
    }

    if (v69)
    {
      v70 = v138;
      v71 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
      MEMORY[0x223DDBA60](v71);
      v67(v70, v6);

      goto LABEL_34;
    }

    goto LABEL_94;
  }

  v41 = 0;
LABEL_35:
  v72 = *(v36 + 16);
  v73 = v137;
  if (v41 == v72)
  {

    v74 = 0;
    if (v73)
    {
      v75 = 0;
      v76 = 1;
      v77 = 0;
      goto LABEL_66;
    }

    v77 = 0;
    goto LABEL_63;
  }

  if (v41 >= v72)
  {
    goto LABEL_90;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v78 = v144;
  v79 = Apple_Parsec_Siri_V2alpha_ExperienceComponent.delayedActionComponent.getter();
  v80 = MEMORY[0x223DDB910](v79);
  (*v143)(v78, v145);
  v81 = *(v80 + 16);
  if (v81)
  {
    v137 = v73;
    v82 = v6;
    v83 = 0;
    v84 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder() - 8);
    v85 = *(v84 + 80);
    v147 = v80;
    v86 = v80 + ((v85 + 32) & ~v85);
    v87 = *(v84 + 72);
    while (1)
    {
      v88 = v139;
      v89 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
      v90 = MEMORY[0x223DDBA60](v89);
      v92 = v91;
      v93 = *v38;
      (*v38)(v88, v82);

      v94 = HIBYTE(v92) & 0xF;
      if ((v92 & 0x2000000000000000) == 0)
      {
        v94 = v90 & 0xFFFFFFFFFFFFLL;
      }

      if (v94)
      {
        break;
      }

      ++v83;
      v86 += v87;
      if (v81 == v83)
      {
        v83 = v81;
        v6 = v82;
        goto LABEL_49;
      }
    }

    v95 = v138;
    v96 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
    MEMORY[0x223DDBA60](v96);
    v97 = v95;
    v6 = v82;
    v93(v97, v82);

LABEL_49:
    v73 = v137;
    v80 = v147;
  }

  else
  {
    v83 = 0;
  }

  v98 = *(v80 + 16);
  if (v83 == v98)
  {
    goto LABEL_97;
  }

  if (v83 >= v98)
  {
    goto LABEL_91;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v99 = v131;
  v100 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
  v101 = MEMORY[0x223DDBA60](v100);
  v103 = v102;
  v104 = *v38;
  (*v38)(v99, v6);

  v105 = HIBYTE(v103) & 0xF;
  if ((v103 & 0x2000000000000000) == 0)
  {
    v105 = v101 & 0xFFFFFFFFFFFFLL;
  }

  if (!v105)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v106 = v138;
  v107 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.appPunchOut.getter();
  v77 = MEMORY[0x223DDBA60](v107);
  v74 = v108;
  v104(v106, v6);

  if (v73)
  {
    if (v74 && (v132 == v77 && v73 == v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v75 = 0;
      v76 = 2;
      goto LABEL_66;
    }

    v75 = 0;
  }

  else
  {
    if (!v74)
    {
LABEL_63:
      v76 = 3;
      v75 = 1;
      goto LABEL_66;
    }

    v75 = 1;
  }

  v76 = 1;
LABEL_66:
  v109 = [objc_allocWithZone(MEMORY[0x277D5A028]) init];
  if (!v109)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v110 = v109;
  v147 = v77;
  [v109 setGeoAppResolutionType_];
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, static Logger.pommes);

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v148 = v115;
    *v114 = 136315650;
    v146 = v110;
    if (v75)
    {
      v116 = 7104878;
    }

    else
    {
      v116 = v132;
    }

    if (v75)
    {
      v117 = 0xE300000000000000;
    }

    else
    {
      v117 = v73;
    }

    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, &v148);

    *(v114 + 4) = v118;
    *(v114 + 12) = 2080;
    if (v74)
    {
      v119 = v147;
    }

    else
    {
      v119 = 7104878;
    }

    if (!v74)
    {
      v74 = 0xE300000000000000;
    }

    v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v74, &v148);

    *(v114 + 14) = v120;
    *(v114 + 22) = 2080;
    v110 = v146;
    v121 = POMMESSchemaPOMMESPegasusRequestGeoAppResolutionType.description.getter();
    v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, &v148);

    *(v114 + 24) = v123;
    _os_log_impl(&dword_2232BB000, v112, v113, "Third party maps app bundle Id from request is %s, from response is %s). Reporting resolution type: %s.", v114, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v115, -1, -1);
    MEMORY[0x223DE0F80](v114, -1, -1);
  }

  else
  {
  }

  v124 = specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(v133, v134, v135);
  if (v124)
  {
    v125 = v124;
    [v124 setPommesPegasusRequestGeoAppResolutionReported_];
    v126 = [objc_opt_self() processInfo];
    v127 = NSProcessInfo.isRunningUnitTests.getter();

    if (v127)
    {
      v128 = (*(*v129 + 96))();
    }

    else
    {
      v128 = [objc_opt_self() sharedStream];
    }

    [v128 emitMessage_];
    swift_unknownObjectRelease();
  }
}

uint64_t closure #1 in PegasusInstrumentationUtil.logThirdPartyMapsAppSelectionResult(requestId:pommesId:pommesCandidateId:request:response:delegatedUDA:)@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v1 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v1 - 8);
  v66 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Google_Protobuf_Any();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVSgMd, &_s10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v59 - v5;
  v69 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v60 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v70 = *(v78 - 8);
  v7 = MEMORY[0x28223BE20](v78);
  v77 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v59 - v9;
  v73 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v79 = *(v73 - 8);
  v10 = MEMORY[0x28223BE20](v73);
  v72 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v59 - v13;
  MEMORY[0x28223BE20](v12);
  v62 = &v59 - v14;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v86 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = &v59 - v19;
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v87 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v71 = &v59 - v25;
  MEMORY[0x28223BE20](v24);
  v74 = &v59 - v26;
  result = Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.profileSlices.getter();
  v84 = *(result + 16);
  if (v84)
  {
    v28 = 0;
    v83 = (v87 + 16);
    LODWORD(v82) = *MEMORY[0x277D39708];
    v29 = (v16 + 8);
    v80 = (v87 + 8);
    v81 = (v16 + 104);
    while (1)
    {
      if (v28 >= *(result + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v30 = result;
      (*(v87 + 16))(v23, result + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v28, v20);
      v31 = v85;
      Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
      v32 = v86;
      (*v81)(v86, v82, v15);
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39758]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v33 = *v29;
      (*v29)(v32, v15);
      v33(v31, v15);
      if (v88 == v91)
      {
        break;
      }

      ++v28;
      (*v80)(v23, v20);
      result = v30;
      if (v84 == v28)
      {
        goto LABEL_6;
      }
    }

    v34 = *(v87 + 32);
    v35 = v71;
    v34(v71, v23, v20);
    v82 = v20;
    v34(v74, v35, v20);
    result = Apple_Parsec_Siri_V2alpha_ProfileSlice.values.getter();
    v36 = result;
    v37 = v73;
    v38 = v72;
    v87 = *(result + 16);
    if (!v87)
    {
LABEL_12:
      (*v80)(v74, v82);

      goto LABEL_14;
    }

    v39 = 0;
    v40 = v78;
    v85 = (v79 + 16);
    LODWORD(v84) = *MEMORY[0x277D39AE8];
    v83 = (v70 + 104);
    v41 = (v70 + 8);
    v86 = (v79 + 8);
    while (v39 < *(v36 + 16))
    {
      v42 = v36;
      (*(v79 + 16))(v38, v36 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v39, v37);
      v43 = v76;
      Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
      v44 = v77;
      (*v83)(v77, v84, v40);
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel, MEMORY[0x277D39AF8], MEMORY[0x277D39B00]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v45 = *v41;
      (*v41)(v44, v40);
      v45(v43, v40);
      if (v88 == v91)
      {

        v46 = *(v79 + 32);
        v47 = v61;
        v46(v61, v38, v37);
        v48 = v62;
        v46(v62, v47, v37);
        v49 = v63;
        Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.getter();
        Google_Protobuf_Any.value.getter();
        (*(v64 + 8))(v49, v65);
        v90 = 0;
        v88 = 0u;
        v89 = 0u;
        BinaryDecodingOptions.init()();
        _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo, MEMORY[0x277D39018], MEMORY[0x277D39010]);
        v50 = v68;
        v51 = v69;
        Message.init(serializedData:extensions:partial:options:)();
        v53 = v67;
        (*(v67 + 56))(v50, 0, 1, v51);
        v54 = v60;
        (*(v53 + 32))(v60, v50, v51);
        v55 = Apple_Parsec_Siri_V2alpha_AppInfo.bundleID.getter();
        v57 = v56;
        (*(v53 + 8))(v54, v51);
        (*v86)(v48, v37);
        result = (*v80)(v74, v82);
        v58 = v75;
        *v75 = v55;
        v58[1] = v57;
        return result;
      }

      ++v39;
      result = (*v86)(v38, v37);
      v36 = v42;
      if (v87 == v39)
      {
        goto LABEL_12;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_6:

LABEL_14:
    v52 = v75;
    *v75 = 0;
    v52[1] = 0;
  }

  return result;
}

void PegasusInstrumentationUtil.logPegasusKitPegasusRequest(requestId:pommesId:pommesCandidateId:startNetworkSearchFeedback:onDeviceLabels:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v43 = a1;
  v44 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x277D59FE8]) init];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_allocWithZone(MEMORY[0x277D59FF0]) init];
    if (v18)
    {
      v19 = v18;
      v39 = v6;
      v40 = a3;
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.bodyData.getter();
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      BinaryDecodingOptions.init()();
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest, MEMORY[0x277D38D70], MEMORY[0x277D38D68]);
      Message.init(serializedData:extensions:partial:options:)();
      (*(v13 + 16))(v10, v15, v12);
      (*(v13 + 56))(v10, 0, 1, v12);
      v29 = specialized static PegasusInstrumentationUtil.requestArguments(from:onDeviceLabels:)(v10, v41, v42);
      outlined destroy of MediaUserStateCenter?(v10, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMR);
      [v17 setPegasusRequestArguments_];

      (*(v13 + 8))(v15, v12);
      v30 = v40;
      while (1)
      {
        started = Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.rawRequestSize.getter();
        if (started >> 42)
        {
          __break(1u);
        }

        else
        {
          [v17 setRawRequestSizeInKB_];
          v32 = Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.compressedRequestSize.getter();
          if (!(v32 >> 42))
          {
            [v17 setCompressedRequestSizeInKB_];
            [v19 setStartedOrChanged_];
            v33 = specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(v43, v44, v30);
            if (v33)
            {
              v34 = v33;
              [v33 setPegasusKitRequestContext_];
              v35 = [objc_opt_self() processInfo];
              v36 = NSProcessInfo.isRunningUnitTests.getter();

              if (v36)
              {
                v37 = (*(*v39 + 96))();
              }

              else
              {
                v37 = [objc_opt_self() sharedStream];
              }

              [v37 emitMessage_];
              swift_unknownObjectRelease();
            }

            return;
          }
        }

        __break(1u);
        swift_once();
        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, static Logger.pommes);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        v23 = os_log_type_enabled(v21, v22);
        v30 = v40;
        if (v23)
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_2232BB000, v21, v22, "Unable to initialize pegasus request with serialized data", v24, 2u);
          MEMORY[0x223DE0F80](v24, -1, -1);
        }
      }
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.pommes);
  v44 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2232BB000, v44, v26, "Failed to initialize POMMESSchemaPOMMESPegasusKitPegasusRequest or POMMESSchemaPOMMESPegasusKitPegasusRequestContext", v27, 2u);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

  v28 = v44;
}

void PegasusInstrumentationUtil.logPegasusKitPegasusResponse(requestId:pommesId:pommesCandidateId:endNetworkSearchFeedback:)(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D59FF8]) init];
  if (v11)
  {
    v12 = v11;
    v35 = a3;
    v13 = [objc_allocWithZone(MEMORY[0x277D59FE0]) init];
    if (v13)
    {
      v14 = v13;
      v34 = [objc_allocWithZone(MEMORY[0x277D59FF0]) init];
      if (v34)
      {
        v33 = v3;
        Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.getter();
        v15 = Apple_Parsec_Feedback_V2_NetworkTimingData.requestStart.getter();
        v16 = *(v8 + 8);
        v16(v10, v7);
        [v14 setRequestStartOffsetInMS_];
        Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.getter();
        v17 = Apple_Parsec_Feedback_V2_NetworkTimingData.requestEnd.getter();
        v16(v10, v7);
        [v14 setRequestEndOffsetInMS_];
        Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.getter();
        v18 = Apple_Parsec_Feedback_V2_NetworkTimingData.responseStart.getter();
        v16(v10, v7);
        [v14 setResponseStartOffsetInMS_];
        Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.getter();
        v19 = Apple_Parsec_Feedback_V2_NetworkTimingData.responseEnd.getter();
        v16(v10, v7);
        [v14 setResponseEndOffsetInMS_];
        [v12 setTimingData_];
        v20 = Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.decompressedResponseSize.getter();
        if (v20 >> 42)
        {
          __break(1u);
        }

        else
        {
          [v12 setRawResponseSizeInKB_];
          v21 = Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.rawResponseSize.getter();
          if (!(v21 >> 42))
          {
            [v12 setCompressedResponseSizeInKB_];
            v22 = v34;
            [v34 setEnded_];
            v23 = specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(a1, a2, v35);
            if (v23)
            {
              v24 = v23;
              [v23 setPegasusKitRequestContext_];
              v25 = [objc_opt_self() processInfo];
              v26 = NSProcessInfo.isRunningUnitTests.getter();

              if (v26)
              {
                v27 = (*(*v33 + 96))();
              }

              else
              {
                v27 = [objc_opt_self() sharedStream];
              }

              [v27 emitMessage_];
              swift_unknownObjectRelease();
            }

            return;
          }
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v14 = v12;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.pommes);
  v35 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2232BB000, v35, v29, "Failed to initialize POMMESSchemaPOMMESPegasusKitPegasusResponse and POMMESSchemaPOMMESPegasusKitNetworkTimingData and POMMESSchemaPOMMESPegasusKitPegasusRequestContext", v30, 2u);
    MEMORY[0x223DE0F80](v30, -1, -1);
  }

  v31 = v35;
}

void closure #1 in static PegasusInstrumentationUtil.extractQueries(from:onDeviceLabels:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v58 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v7 = *(v58 - 8);
  v8 = MEMORY[0x28223BE20](v58);
  v60 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v45 - v10;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v57 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D5A050]) init];
  v14 = v13;
  if (v13)
  {
    v52 = v7;
    v48 = a3;
    v49 = v3;
    v15 = v13;
    v50 = a1;
    v16 = *(Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.rewrittenUtterances.getter() + 16);

    [v15 setHasRewrittenUtterances_];

    v65 = MEMORY[0x277D84F90];
    v17 = *(a2 + 16);
    v61 = v15;
    if (v17)
    {
      v18 = 0;
      v19 = a2 + 40;
      v56 = a2 + 40;
      while (2)
      {
        v20 = (v19 + 16 * v18);
        v21 = v18;
        while (1)
        {
          if (v21 >= v17)
          {
            __break(1u);
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
            return;
          }

          v18 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_20;
          }

          v23 = *(v20 - 1);
          v22 = *v20;
          v24 = objc_allocWithZone(MEMORY[0x277D5A060]);

          v25 = [v24 &selRef_statusType];
          if (v25)
          {
            break;
          }

          ++v21;
          v20 += 2;
          if (v18 == v17)
          {
            goto LABEL_13;
          }
        }

        v26 = v25;
        v27 = MEMORY[0x223DDF550](v23, v22);
        [v26 setLabel_];

        MEMORY[0x223DDF820](v28);
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v19 = v56;
        if (v18 != v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
    v47 = v14;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for POMMESSchemaPOMMESPegasusSearchQueryUserSpan, 0x277D5A060);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = v61;
    [v61 setUserSpans_];

    v46 = v30;
    v31 = Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.profileSlices.getter();
    v32 = 0;
    v61 = *(v31 + 16);
    v55 = v62 + 16;
    v54 = *MEMORY[0x277D396F0];
    v33 = v52++;
    v53 = (v33 + 13);
    v51 = v62 + 8;
    v56 = v31;
    do
    {
      v34 = v32;
      if (v61 == v32)
      {
        break;
      }

      if (v32 >= *(v31 + 16))
      {
        goto LABEL_21;
      }

      v35 = v62;
      v36 = v57;
      (*(v62 + 16))(v57, v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v32++, v63);
      v37 = v59;
      Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
      v38 = v60;
      v39 = v58;
      (*v53)(v60, v54, v58);
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39758]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v40 = *v52;
      (*v52)(v38, v39);
      v40(v37, v39);
      (*(v35 + 8))(v36, v63);
      v31 = v56;
    }

    while (v65 != v64);
    v41 = v61 != v34;

    v42 = v46;
    [v46 setHasAudioQueueStateInfo_];

    v43 = v42;
    v44 = closure #3 in closure #1 in static PegasusInstrumentationUtil.extractQueries(from:onDeviceLabels:)(v50);
    [v43 setAmpUserState_];

    a3 = v48;
    v14 = v47;
  }

  *a3 = v14;
}

char *closure #3 in closure #1 in static PegasusInstrumentationUtil.extractQueries(from:onDeviceLabels:)(uint64_t a1)
{
  v157 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  v156 = *(v157 - 8);
  v2 = MEMORY[0x28223BE20](v157);
  v153 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v130 = &v129 - v4;
  matched = type metadata accessor for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus();
  v137 = *(matched - 8);
  v5 = MEMORY[0x28223BE20](matched);
  v136 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v135 = &v129 - v7;
  v134 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus();
  v133 = *(v134 - 8);
  v8 = MEMORY[0x28223BE20](v134);
  v132 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v131 = &v129 - v10;
  v11 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v11 - 8);
  v144 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for Google_Protobuf_Any();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v145 = &v129 - v15;
  v148 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v139 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v149 = *(v160 - 8);
  v17 = MEMORY[0x28223BE20](v160);
  v159 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v158 = &v129 - v19;
  v152 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v161 = *(v152 - 8);
  v20 = MEMORY[0x28223BE20](v152);
  v140 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v151 = &v129 - v23;
  MEMORY[0x28223BE20](v22);
  v146 = &v129 - v24;
  v168 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v25 = *(v168 - 8);
  v26 = MEMORY[0x28223BE20](v168);
  v170 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v169 = &v129 - v28;
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v171 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v150 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v129 - v33;
  MEMORY[0x28223BE20](v32);
  v154 = &v129 - v35;
  v155 = a1;
  v36 = Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.profileSlices.getter();
  v166 = *(v36 + 16);
  if (v166)
  {
    v37 = 0;
    v167 = v171 + 16;
    LODWORD(v165) = *MEMORY[0x277D396E8];
    v163 = (v25 + 8);
    v164 = (v25 + 104);
    v162 = (v171 + 8);
    v38 = v169;
    while (1)
    {
      if (v37 >= *(v36 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v39 = v36;
      v40 = *(v171 + 2);
      v40(v34, v36 + ((v171[80] + 32) & ~v171[80]) + *(v171 + 9) * v37, v29);
      Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
      v41 = v170;
      v42 = v168;
      (*v164)(v170, v165, v168);
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39758]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v43 = *v163;
      (*v163)(v41, v42);
      v43(v38, v42);
      if (*&v172[0] == v174)
      {
        break;
      }

      ++v37;
      (*v162)(v34, v29);
      v36 = v39;
      if (v166 == v37)
      {
        goto LABEL_6;
      }
    }

    v164 = v40;

    v56 = *(v171 + 4);
    v129 = v29;
    v56(v154, v34, v29);
    v57 = Apple_Parsec_Siri_V2alpha_ProfileSlice.values.getter();
    v58 = v152;
    v59 = v151;
    v170 = *(v57 + 16);
    if (v170)
    {
      v60 = 0;
      v171 = (v161 + 16);
      LODWORD(v168) = *MEMORY[0x277D39AE0];
      v165 = (v149 + 8);
      v166 = (v149 + 104);
      v169 = (v161 + 8);
      while (v60 < *(v57 + 16))
      {
        v61 = v57;
        (*(v161 + 16))(v59, v57 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v60, v58);
        v62 = v158;
        Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
        v63 = v159;
        v64 = v160;
        (*v166)(v159, v168, v160);
        _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel, MEMORY[0x277D39AF8], MEMORY[0x277D39B00]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v65 = *v165;
        (*v165)(v63, v64);
        v65(v62, v64);
        if (*&v172[0] == v174)
        {

          v82 = v146;
          (*(v161 + 32))(v146, v59, v58);
          v83 = v141;
          Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.getter();
          v84 = Google_Protobuf_Any.value.getter();
          v86 = v85;
          (*(v142 + 8))(v83, v143);
          v174 = v84;
          v175 = v86;
          v173 = 0;
          memset(v172, 0, sizeof(v172));
          BinaryDecodingOptions.init()();
          _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState, MEMORY[0x277D39450], MEMORY[0x277D39448]);
          v87 = v145;
          v88 = v148;
          Message.init<A>(serializedBytes:extensions:partial:options:)();
          v89 = v58;
          v90 = v82;
          v91 = v147;
          (*(v147 + 56))(v87, 0, 1, v88);
          v92 = v139;
          (*(v91 + 32))(v139, v87, v88);
          v93 = [objc_allocWithZone(MEMORY[0x277D5A058]) init];
          v94 = v129;
          v95 = v154;
          if (v93)
          {
            v96 = v131;
            v171 = v93;
            Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.getter();
            v97 = v133;
            v98 = v132;
            v99 = v134;
            (*(v133 + 104))(v132, *MEMORY[0x277D39A18], v134);
            _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus and conformance Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus, MEMORY[0x277D39A28], MEMORY[0x277D39A30]);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            v100 = *(v97 + 8);
            v100(v98, v99);
            v100(v96, v99);
            [v171 setHasAmpSubscriptionStatus_];
            v101 = v135;
            Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.getter();
            v102 = v137;
            v103 = v136;
            v104 = matched;
            (*(v137 + 104))(v136, *MEMORY[0x277D39D08], matched);
            _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus and conformance Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus, MEMORY[0x277D39D18], MEMORY[0x277D39D20]);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            v105 = *(v102 + 8);
            v105(v103, v104);
            v105(v101, v104);
            [v171 setHasItunesSubscriptionStatus_];
            v106 = Apple_Parsec_Siri_V2alpha_AmpUserState.userToken.getter();
            v108 = v107;

            v109 = HIBYTE(v108) & 0xF;
            if ((v108 & 0x2000000000000000) == 0)
            {
              v109 = v106 & 0xFFFFFFFFFFFFLL;
            }

            [v171 setHasUserToken_];
            v110 = Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.getter();
            v112 = v111;

            v113 = HIBYTE(v112) & 0xF;
            if ((v112 & 0x2000000000000000) == 0)
            {
              v113 = v110 & 0xFFFFFFFFFFFFLL;
            }

            [v171 setHasSharedUserId_];
            (*(v91 + 8))(v92, v88);
            (*v169)(v90, v152);
            (*v162)(v154, v129);
            return v171;
          }

          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v115 = type metadata accessor for Logger();
          __swift_project_value_buffer(v115, static Logger.pommes);
          v116 = v156;
          v117 = v130;
          v118 = v157;
          (*(v156 + 16))(v130, v155, v157);
          v119 = Logger.logObject.getter();
          v120 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v119, v120))
          {
            v121 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            *&v172[0] = v122;
            *v121 = 136315138;
            _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PegasusSearchQuery and conformance Apple_Parsec_Siri_V2alpha_PegasusSearchQuery, MEMORY[0x277D38CA8], MEMORY[0x277D38CA0]);
            v123 = Message.debugDescription.getter();
            v124 = v118;
            v125 = v90;
            v127 = v126;
            (*(v116 + 8))(v117, v124);
            v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v127, v172);

            *(v121 + 4) = v128;
            _os_log_impl(&dword_2232BB000, v119, v120, "Unable to extract ampUserState requestQuery: %s", v121, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v122);
            MEMORY[0x223DE0F80](v122, -1, -1);
            MEMORY[0x223DE0F80](v121, -1, -1);

            (*(v147 + 8))(v139, v148);
            (*v169)(v125, v152);
            (*v162)(v154, v94);
          }

          else
          {

            (*(v116 + 8))(v117, v118);
            (*(v147 + 8))(v139, v148);
            (*v169)(v90, v89);
            (*v162)(v95, v94);
          }

          return 0;
        }

        ++v60;
        (*v169)(v59, v58);
        v57 = v61;
        if (v170 == v60)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_33;
    }

LABEL_15:

    v66 = v164;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.pommes);
    v68 = v150;
    v69 = v154;
    v70 = v129;
    v66(v150, v154, v129);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v172[0] = v74;
      *v73 = 136315138;
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460], MEMORY[0x277D39458]);
      v75 = Message.debugDescription.getter();
      v76 = v68;
      v78 = v77;
      v79 = *v162;
      (*v162)(v76, v70);
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v78, v172);

      *(v73 + 4) = v80;
      _os_log_impl(&dword_2232BB000, v71, v72, "ampUserState: profileSlice has no .valueLabelAmpUser: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v73, -1, -1);

      v79(v69, v70);
    }

    else
    {

      v81 = *v162;
      (*v162)(v68, v70);
      v81(v69, v70);
    }
  }

  else
  {
LABEL_6:

    if (one-time initialization token for pommes != -1)
    {
LABEL_34:
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.pommes);
    v45 = v156;
    v46 = v153;
    v47 = v157;
    (*(v156 + 16))(v153, v155, v157);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v172[0] = v51;
      *v50 = 136315138;
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PegasusSearchQuery and conformance Apple_Parsec_Siri_V2alpha_PegasusSearchQuery, MEMORY[0x277D38CA8], MEMORY[0x277D38CA0]);
      v52 = Message.debugDescription.getter();
      v54 = v53;
      (*(v45 + 8))(v46, v47);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v172);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_2232BB000, v48, v49, "ampUserState: requestQuery has no .sliceLabelAmpUsersState: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x223DE0F80](v51, -1, -1);
      MEMORY[0x223DE0F80](v50, -1, -1);
    }

    else
    {

      (*(v45 + 8))(v46, v47);
    }
  }

  return 0;
}

uint64_t closure #1 in PegasusInstrumentationUtil.buildClientDrivenContext(_:)()
{
  v76 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v0 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v91 = v70 - v3;
  v89 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
  v78 = *(v89 - 8);
  v4 = MEMORY[0x28223BE20](v89);
  v77 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentV06OneOf_H0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentV06OneOf_H0OSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v70 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v87 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v85 = v70 - v15;
  MEMORY[0x28223BE20](v14);
  v86 = v70 - v16;
  v84 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v17 = *(v84 - 8);
  v18 = MEMORY[0x28223BE20](v84);
  v20 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x223DDB8B0](v18);
  v22 = *(v21 + 16);
  if (v22)
  {
    v73 = v21;
    v74 = v0;
    v24 = *(v17 + 16);
    v23 = v17 + 16;
    v25 = v21 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v81 = *(v23 + 56);
    v82 = v24;
    v83 = v23;
    v26 = (v23 - 8);
    v27 = (v11 + 48);
    v90 = v11;
    v80 = (v11 + 32);
    v28 = MEMORY[0x277D84F90];
    v79 = v9;
    do
    {
      v29 = v84;
      v82(v20, v25, v84);
      Apple_Parsec_Siri_V2alpha_ClientComponent.component.getter();
      (*v26)(v20, v29);
      if ((*v27)(v9, 1, v10) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v9, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentV06OneOf_H0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentV06OneOf_H0OSgMR);
      }

      else
      {
        v30 = *v80;
        (*v80)(v85, v9, v10);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v31 = v28;
        }

        else
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
        }

        v33 = v31[2];
        v32 = v31[3];
        if (v33 >= v32 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
        }

        v31[2] = v33 + 1;
        v28 = v31;
        v30(v31 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v33, v85, v10);
        v9 = v79;
      }

      v25 += v81;
      --v22;
    }

    while (v22);

    v11 = v90;
    v0 = v74;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v34 = v28[2];
  v35 = v91;
  if (v34)
  {
    v37 = *(v11 + 16);
    v36 = v11 + 16;
    v85 = v37;
    v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
    v70[1] = v28;
    v39 = v28 + v38;
    v40 = *(v36 + 56);
    v83 = (v36 + 72);
    v84 = v40;
    LODWORD(v82) = *MEMORY[0x277D39660];
    v73 = (v36 + 80);
    v74 = (v78 + 56);
    v71 = (v0 + 1);
    v72 = (v0 + 4);
    v80 = (v78 + 48);
    v81 = (v36 - 8);
    v79 = (v78 + 32);
    v41 = MEMORY[0x277D84F90];
    v42 = v89;
    v90 = v36;
    do
    {
      v43 = v41;
      v44 = v85;
      v45 = v86;
      (v85)(v86, v39, v10);
      v46 = v87;
      (v44)(v87, v45, v10);
      v47 = (*v83)(v46, v10);
      if (v47 == v82)
      {
        (*v73)(v46, v10);
        v48 = v75;
        v49 = v46;
        v50 = v76;
        (*v72)(v75, v49, v76);
        Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
        v51 = v48;
        v35 = v91;
        (*v71)(v51, v50);
        (*v81)(v45, v10);
      }

      else
      {
        v52 = v46;
        v53 = *v81;
        (*v81)(v45, v10);
        (*v74)(v35, 1, 1, v42);
        v53(v52, v10);
      }

      v41 = v43;
      if ((*v80)(v35, 1, v42) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v35, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
      }

      else
      {
        v54 = v35;
        v55 = *v79;
        (*v79)(v88, v54, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
        }

        v57 = v41[2];
        v56 = v41[3];
        if (v57 >= v56 >> 1)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v41);
        }

        v41[2] = v57 + 1;
        v58 = v41 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v57;
        v42 = v89;
        v55(v58, v88, v89);
        v35 = v91;
      }

      v39 += v84;
      --v34;
    }

    while (v34);

    v60 = v41[2];
    if (!v60)
    {
      goto LABEL_36;
    }
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
    v60 = *(MEMORY[0x277D84F90] + 16);
    if (!v60)
    {
LABEL_36:

      return 0;
    }
  }

  v61 = 0;
  v90 = v78 + 88;
  v91 = (v78 + 16);
  v62 = *MEMORY[0x277D39A50];
  v63 = *MEMORY[0x277D39A58];
  v64 = *MEMORY[0x277D39A40];
  v65 = (v78 + 8);
  v66 = v89;
  while (v61 < v41[2])
  {
    v67 = v77;
    v68 = v78;
    (*(v78 + 16))(v77, v41 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v61, v66);
    v69 = (*(v68 + 88))(v67, v66);
    if (v69 == v62)
    {

      (*v65)(v77, v89);
      return 1;
    }

    if (v69 == v63)
    {

      (*v65)(v77, v89);
      return 2;
    }

    if (v69 == v64)
    {

      (*v65)(v77, v89);
      return 3;
    }

    ++v61;
    result = (*v65)(v77, v89);
    if (v60 == v61)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

id closure #1 in PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v83 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v81 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v78 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v78 - v19;
  v21 = [objc_allocWithZone(MEMORY[0x277D59F70]) init];
  if (v21)
  {
    v22 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v82 = v15;
    v23 = a3;
    v24 = v22;
    v25 = v20;
    v26 = v8;
    v27 = a2;
    v28 = v16;
    v29 = v21;
    v30 = v21;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v32 = [v24 initWithNSUUID_];

    [v30 setPommesId_];
    v21 = v29;
    v16 = v28;
    a2 = v27;
    v8 = v26;
    v20 = v25;

    a3 = v23;
    v15 = v82;
  }

  outlined init with copy of MediaUserStateCenter?(a2, v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v33 = *(v16 + 48);
  if (v33(v14, 1, v15) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v16 + 32))(v20, v14, v15);
    v34 = AFDeviceSupportsSAE();
    if (v21)
    {
      v35 = v34;
      v36 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v82 = a3;
      v37 = v36;
      v38 = v21;
      v79 = v33;
      v39 = v16;
      v40 = v21;
      v41 = v38;
      v42 = UUID._bridgeToObjectiveC()().super.isa;
      v43 = [v37 initWithNSUUID_];

      v44 = &selRef_setSubRequestId_;
      if (!v35)
      {
        v44 = &selRef_setRequestId_;
      }

      [v41 *v44];

      v21 = v40;
      v16 = v39;
      v33 = v79;

      a3 = v82;
    }

    (*(v16 + 8))(v20, v15);
  }

  v45 = v83;
  outlined init with copy of MediaUserStateCenter?(a3, v83, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v46 = type metadata accessor for PommesCandidateId();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.pommes);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_16;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "PommesCandidateId is nil";
LABEL_15:
    _os_log_impl(&dword_2232BB000, v49, v50, v52, v51, 2u);
    MEMORY[0x223DE0F80](v51, -1, -1);
LABEL_16:

    goto LABEL_37;
  }

  outlined init with copy of MediaUserStateCenter?(v45, v8, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v53 = (*(v47 + 88))(v8, v46);
  if (v53 == *MEMORY[0x277D56618])
  {
    goto LABEL_18;
  }

  if (v53 != *MEMORY[0x277D56620])
  {
    if (v53 != *MEMORY[0x277D56610])
    {
      (*(v47 + 8))(v8, v46);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, static Logger.pommes);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_16;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "Unknown PommesCandidateId";
      goto LABEL_15;
    }

LABEL_18:
    (*(v47 + 96))(v8, v46);
    v54 = v8[1];
    if (v21)
    {
      v55 = *v8;
      v56 = v21;
      v57 = v21;
      v58 = MEMORY[0x223DDF550](v55, v54);

      [v57 setResultCandidateId_];

      v21 = v56;
    }

    else
    {
    }

    goto LABEL_37;
  }

  (*(v47 + 96))(v8, v46);
  v60 = *v8;
  v59 = v8[1];

  v61 = v81;
  UUID.init(uuidString:)();
  if (v33(v61, 1, v15) == 1)
  {

    outlined destroy of MediaUserStateCenter?(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.pommes);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    v65 = os_log_type_enabled(v63, v64);
    v45 = v83;
    if (v65)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2232BB000, v63, v64, "Unable to create UUID from trpId. Returning nil for POMMESSchemaPOMMESClientEvent.", v66, 2u);
      MEMORY[0x223DE0F80](v66, -1, -1);
    }

    v21 = 0;
  }

  else
  {
    v68 = v80;
    (*(v16 + 32))(v80, v61, v15);
    if (v21)
    {
      v69 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v70 = v21;
      v71 = v21;
      v72 = UUID._bridgeToObjectiveC()().super.isa;
      v73 = [v69 initWithNSUUID_];

      [v71 setTrpId_];
      v74 = v71;
      v21 = v70;
      v75 = v74;
      v76 = MEMORY[0x223DDF550](v60, v59);

      [v75 setResultCandidateId_];

      (*(v16 + 8))(v68, v15);
    }

    else
    {
      (*(v16 + 8))(v68, v15);
    }

    v45 = v83;
  }

LABEL_37:
  outlined destroy of MediaUserStateCenter?(v45, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  return v21;
}

uint64_t PegasusInstrumentationUtil.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized PegasusInstrumentationUtil.roundToTwoSigFigs(_:)(long double a1)
{
  if (a1 != 0.0)
  {
    v1 = ceil(log10(a1));
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v1 > -9.22337204e18)
    {
      if (v1 < 9.22337204e18)
      {
        if (!__OFSUB__(2, v1))
        {
          __exp10((2 - v1));
          return;
        }

LABEL_11:
        __break(1u);
        return;
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_10;
  }
}

void *specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D59F68]) init];
  if (v6)
  {
    v7 = v6;
    v8 = closure #1 in PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(a2, a1, a3);
    [v7 setEventMetadata_];
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    v8 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2232BB000, v8, v10, "Failed to create POMMESSchemaPOMMESClientEvent", v11, 2u);
      MEMORY[0x223DE0F80](v11, -1, -1);
    }

    v7 = 0;
  }

  return v7;
}

void *specialized static PegasusInstrumentationUtil.kfedLatency(from:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D5A030]) init];
  if (v0)
  {
    v1 = v0;
    v2 = Latencyinfopb_KfedLatencyInfo.banyanMs.getter();
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v2))
    {
      [v1 setBanyanLatencyInMs_];
      v3 = Latencyinfopb_KfedLatencyInfo.overallMs.getter();
      if ((v3 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v3))
        {
          [v1 setOverallLatencyInMs_];
          return v1;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (one-time initialization token for pommes != -1)
  {
LABEL_16:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2232BB000, v5, v6, "Unable to initialize POMMESSchemaPOMMESPegasusRequestKfedLatency()", v7, 2u);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  return 0;
}

id partial apply for closure #3 in PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized PegasusInstrumentationUtil.buildServerDrivenContext(_:)();
  *a1 = result;
  return result;
}

id specialized PegasusInstrumentationUtil.buildServerDrivenContext(_:)()
{
  v49 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v0 = *(v49 - 1);
  MEMORY[0x28223BE20](v49);
  v2 = v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = v41 - v8;
  result = [objc_allocWithZone(MEMORY[0x277D5A048]) init];
  if (result)
  {
    v43 = result;
    v42 = result;
    v10 = MEMORY[0x223DDB9C0]();
    v11 = *(v10 + 16);
    v50 = v3;
    if (v11)
    {
      v51 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
      v12 = v51;
      v13 = v0 + 16;
      v14 = *(v0 + 16);
      v15 = *(v0 + 80);
      v41[1] = v10;
      v16 = v10 + ((v15 + 32) & ~v15);
      v46 = *(v13 + 56);
      v47 = v14;
      v48 = v13;
      v17 = (v13 - 8);
      v45 = v4 + 32;
      do
      {
        v18 = v49;
        v47(v2, v16, v49);
        Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter();
        (*v17)(v2, v18);
        v51 = v12;
        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v12 = v51;
        }

        *(v12 + 16) = v20 + 1;
        v21 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20;
        v3 = v50;
        (*(v4 + 32))(v21, v7, v50);
        v16 += v46;
        --v11;
      }

      while (v11);
    }

    else
    {

      v12 = MEMORY[0x277D84F90];
    }

    v22 = *(v12 + 16);
    v23 = v44;
    if (v22)
    {
      v25 = *(v4 + 16);
      v24 = v4 + 16;
      v26 = v12 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
      v48 = *(v24 + 56);
      v49 = v25;
      v27 = (v24 - 8);
      v28 = MEMORY[0x277D84F90];
      (v25)(v44, v26, v3);
      while (1)
      {
        v29 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
        v31 = v30;

        v32 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v32 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (v32)
        {
          v33 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
          v35 = v34;
          (*v27)(v23, v3);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
          }

          v37 = *(v28 + 2);
          v36 = *(v28 + 3);
          if (v37 >= v36 >> 1)
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v28);
          }

          *(v28 + 2) = v37 + 1;
          v38 = &v28[16 * v37];
          *(v38 + 4) = v33;
          *(v38 + 5) = v35;
          v3 = v50;
          v23 = v44;
        }

        else
        {
          (*v27)(v23, v3);
        }

        v26 += v48;
        if (!--v22)
        {
          break;
        }

        (v49)(v23, v26, v3);
      }
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    v40 = v42;
    [v42 setCatIds_];

    return v43;
  }

  return result;
}

uint64_t specialized static PegasusInstrumentationUtil.extractQueries(from:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter();
  v8 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v4 + 8);
    v16 = v9 - 1;
    v17 = v4 + 16;
    while (v10 < *(v7 + 16))
    {
      (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v3);
      closure #1 in static PegasusInstrumentationUtil.extractQueries(from:onDeviceLabels:)(v6, v18, &v20);
      v12 = (*v11)(v6, v3);
      if (v20)
      {
        MEMORY[0x223DDF820](v12);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v15 = v10 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v21;
        v13 = v16 == v10;
        v10 = v15;
        if (v13)
        {
          goto LABEL_11;
        }
      }

      else if (v9 == ++v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    (*v11)(v6, v3);

    __break(1u);
  }

  else
  {
LABEL_11:

    return v8;
  }

  return result;
}

void *specialized static PegasusInstrumentationUtil.extractQueryMetadata(from:)(uint64_t a1)
{
  v98 = a1;
  v1 = type metadata accessor for Apple_Parsec_Search_V2_PreciseStatus();
  v93 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v88 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Search_V2_Location.Source();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v92 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem();
  v96 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v95 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit();
  v91 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v97 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  v89 = *(v7 - 8);
  v90 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Google_Protobuf_Int32Value();
  v10 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v78 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v78 - v20;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v84 = *(Context - 8);
  MEMORY[0x28223BE20](Context);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_allocWithZone(MEMORY[0x277D5A000]) init];
  if (!v24)
  {
    if (one-time initialization token for pommes == -1)
    {
LABEL_11:
      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.pommes);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_2232BB000, v51, v52, "Unable to initialize POMMESSchemaPOMMESPegasusQueryMetadata()", v53, 2u);
        MEMORY[0x223DE0F80](v53, -1, -1);
      }

      return 0;
    }

LABEL_67:
    swift_once();
    goto LABEL_11;
  }

  v25 = v24;
  v78 = v19;
  v79 = v1;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
  v26 = Apple_Parsec_Search_PegasusQueryContext.location.getter();
  v27 = MEMORY[0x223DDA150](v26);
  v28 = *(v14 + 8);
  v28(v21, v13);
  [v25 setHasLatitude_];
  Apple_Parsec_Search_PegasusQueryContext.location.getter();
  Apple_Parsec_Search_V2_Location.longitude.getter();
  v30 = v29;
  v28(v21, v13);
  [v25 setHasLongitude_];
  Apple_Parsec_Search_PegasusQueryContext.location.getter();
  Apple_Parsec_Search_V2_Location.age.getter();
  v80 = v13;
  v28(v21, v13);
  v31 = Google_Protobuf_Int32Value.value.getter();
  (*(v10 + 8))(v12, v94);
  if ((v31 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  [v25 setLocationAgeInSeconds_];
  v32 = Apple_Parsec_Search_PegasusQueryContext.countryCode.getter();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  [v25 setHasCountryCode_];
  v36 = Apple_Parsec_Search_PegasusQueryContext.siriLocale.getter();
  v38 = v37;

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v36 & 0xFFFFFFFFFFFFLL;
  }

  [v25 setHasSiriLocale_];
  Apple_Parsec_Search_PegasusQueryContext.uiScale.getter();
  [v25 setUiScale_];
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  v40 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isNavigationMode.getter();
  (*(v89 + 8))(v9, v90);
  [v25 setIsNavigationMode_];
  v41 = Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.getter();
  v43 = v42 >> 62;
  if ((v42 >> 62) > 1)
  {
    v45 = v92;
    v44 = v93;
    v46 = v80;
    v47 = v91;
    if (v43 == 2)
    {
      v55 = *(v41 + 16);
      v54 = *(v41 + 24);
      v41 = outlined consume of Data._Representation(v41, v42);
      v49 = v54 - v55;
      if (__OFSUB__(v54, v55))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      outlined consume of Data._Representation(v41, v42);
      v49 = 0;
    }

LABEL_21:
    v59 = 10 * (v49 / 10);
    if ((v59 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v59))
      {
        [v25 setInstalledAppsSignatureLength_];
        v60 = Apple_Parsec_Search_PegasusQueryContext.storeFront.getter();
        v61 = MEMORY[0x223DDF550](v60);

        [v25 setStorefrontValue_];

        [v25 setHeySiriEnabled_];
        v62 = v97;
        Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.getter();
        v63 = v81;
        v64 = (*(v47 + 88))(v62, v81);
        if (v64 == *MEMORY[0x277D38C20])
        {
          [v25 setTemperatureScale_];
          v65 = v86;
        }

        else
        {
          v65 = v86;
          if (v64 == *MEMORY[0x277D38C18])
          {
            [v25 setTemperatureScale_];
          }

          else if (v64 == *MEMORY[0x277D38C10])
          {
            [v25 setTemperatureScale_];
          }

          else
          {
            [v25 setTemperatureScale_];
            (*(v47 + 8))(v97, v63);
          }
        }

        v66 = v95;
        Apple_Parsec_Search_PegasusQueryContext.measurementSystem.getter();
        v67 = v82;
        v68 = (*(v96 + 88))(v66, v82);
        if (v68 == *MEMORY[0x277D38C40])
        {
          [v25 setMeasurementSystem_];
        }

        else if (v68 == *MEMORY[0x277D38C28])
        {
          [v25 setMeasurementSystem_];
        }

        else if (v68 == *MEMORY[0x277D38C38])
        {
          [v25 setMeasurementSystem_];
        }

        else if (v68 == *MEMORY[0x277D38C30])
        {
          [v25 setMeasurementSystem_];
        }

        else
        {
          [v25 setMeasurementSystem_];
          (*(v96 + 8))(v95, v67);
        }

        v69 = v78;
        Apple_Parsec_Search_PegasusQueryContext.location.getter();
        Apple_Parsec_Search_V2_Location.source.getter();
        v28(v69, v46);
        v70 = v85;
        v71 = (*(v85 + 88))(v45, v65);
        if (v71 == *MEMORY[0x277D38F58])
        {
          [v25 setLocationSource_];
          v72 = v44;
          v73 = v88;
        }

        else
        {
          v72 = v44;
          if (v71 == *MEMORY[0x277D38F30])
          {
            [v25 setLocationSource_];
            v73 = v88;
          }

          else
          {
            v73 = v88;
            if (v71 == *MEMORY[0x277D38F28])
            {
              [v25 setLocationSource_];
            }

            else if (v71 == *MEMORY[0x277D38F50])
            {
              [v25 setLocationSource_];
            }

            else if (v71 == *MEMORY[0x277D38F48])
            {
              [v25 setLocationSource_];
            }

            else if (v71 == *MEMORY[0x277D38F38])
            {
              [v25 setLocationSource_];
            }

            else if (v71 == *MEMORY[0x277D38F60])
            {
              [v25 setLocationSource_];
            }

            else if (v71 == *MEMORY[0x277D38F40])
            {
              [v25 setLocationSource_];
            }

            else if (v71 == *MEMORY[0x277D38F20])
            {
              [v25 setLocationSource_];
            }

            else
            {
              [v25 setLocationSource_];
              (*(v70 + 8))(v45, v65);
            }
          }
        }

        v74 = v83;
        Apple_Parsec_Search_PegasusQueryContext.location.getter();
        Apple_Parsec_Search_V2_Location.preciseStatus.getter();
        v28(v74, v46);
        v75 = v79;
        v76 = (*(v72 + 88))(v73, v79);
        if (v76 == *MEMORY[0x277D39250])
        {
          [v25 setLocationPreciseStatus_];
          (*(v84 + 8))(v23, Context);
        }

        else
        {
          v77 = (v84 + 8);
          if (v76 == *MEMORY[0x277D39240])
          {
            [v25 setLocationPreciseStatus_];
            (*v77)(v23, Context);
          }

          else
          {
            [v25 setLocationPreciseStatus_];
            (*v77)(v23, Context);
            (*(v72 + 8))(v73, v75);
          }
        }

        return v25;
      }

      goto LABEL_66;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v45 = v92;
  v44 = v93;
  v46 = v80;
  v47 = v91;
  if (!v43)
  {
    v48 = BYTE6(v42);
    outlined consume of Data._Representation(v41, v42);
    v49 = v48;
    goto LABEL_21;
  }

LABEL_18:
  v56 = HIDWORD(v41);
  v57 = v41;
  result = outlined consume of Data._Representation(v41, v42);
  LODWORD(v49) = v56 - v57;
  if (!__OFSUB__(v56, v57))
  {
    v49 = v49;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void *specialized static PegasusInstrumentationUtil.extractDeviceState(from:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D59F80]) init];
  if (v8)
  {
    v9 = v8;
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusContext.deviceState.getter();
    (*(v1 + 8))(v3, v0);
    v10 = Apple_Parsec_Siri_V2alpha_DeviceState.companionName.getter();
    v11 = MEMORY[0x223DDF550](v10);

    [v9 setCompanionName_];

    [v9 setIsCarDoNotDisturbModeEnabled_];
    [v9 setIsCarPlayEnabled_];
    [v9 setIsEyesFreeEnabled_];
    [v9 setIsLockedWithPasscode_];
    [v9 setIsMultiUserDevice_];
    [v9 setIsTextToSpeechEnabled_];
    [v9 setIsVoiceTriggerEnabled_];
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pommes);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2232BB000, v13, v14, "Unable to initialize POMMESSchemaPOMMESDeviceState()", v15, 2u);
      MEMORY[0x223DE0F80](v15, -1, -1);
    }

    return 0;
  }

  return v9;
}