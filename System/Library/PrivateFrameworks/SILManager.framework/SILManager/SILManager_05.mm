unint64_t specialized SILRenderer.imageApplyOpacity(image:opacity:)(uint64_t a1, float a2)
{
  v3 = *a1;
  v4 = (*(**a1 + 304))();
  result = (*(*v3 + 144))();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  if (HIDWORD(result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = SILImage.inactiveBuffer.getter();
  result = (*(*v3 + 288))();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  if (HIDWORD(result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = (*(*v3 + 296))();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!HIDWORD(result))
  {
    result = sil_argb8888_apply_opacity(v4, v6, v7, v8, result, a2, v9, v10, v11, v12, v13, v14, v15);
    v3[9] = v3[9] == 0;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SILValidator.SILValidationErrors and conformance SILValidator.SILValidationErrors()
{
  result = lazy protocol witness table cache variable for type SILValidator.SILValidationErrors and conformance SILValidator.SILValidationErrors;
  if (!lazy protocol witness table cache variable for type SILValidator.SILValidationErrors and conformance SILValidator.SILValidationErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SILValidator.SILValidationErrors and conformance SILValidator.SILValidationErrors);
  }

  return result;
}

uint64_t specialized SILRenderer.dumpOpacity(_:_:)(unint64_t a1, float a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v65 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v65 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  if (a2 == 0.0)
  {
    v20 = SILLogger.unsafeMutableAddressor();
    (*(v5 + 16))(v19, v20, v4);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v66 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x646E45706177535BLL, a1, &v66);
      _os_log_impl(&dword_262A43000, v21, v22, "%s o:0", v23, 0xCu);
      v25 = __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x266730D70](v24, -1, -1, v25);
      MEMORY[0x266730D70](v23, -1, -1);
    }

    return (*(v5 + 8))(v19, v4);
  }

  else if (a2 <= 0.2)
  {
    v38 = SILLogger.unsafeMutableAddressor();
    (*(v5 + 16))(v17, v38, v4);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v66 = v42;
      *v41 = 136315394;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x646E45706177535BLL, a1, &v66);
      *(v41 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, ":X");
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_262A9ADB0;
      v44 = MEMORY[0x277D83B08];
      *(v43 + 56) = MEMORY[0x277D83A90];
      *(v43 + 64) = v44;
      *(v43 + 32) = a2;
      v45 = String.init(format:_:)();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v66);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_262A43000, v39, v40, "%s o<=0.2 (%s)", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266730D70](v42, -1, -1);
      MEMORY[0x266730D70](v41, -1, -1);
    }

    return (*(v5 + 8))(v17, v4);
  }

  else if (a2 >= 1.0)
  {
    v48 = SILLogger.unsafeMutableAddressor();
    v49 = *(v5 + 16);
    if (a2 == 1.0)
    {
      v49(v11, v48, v4);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v66 = v53;
        *v52 = 136315138;
        *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x646E45706177535BLL, a1, &v66);
        _os_log_impl(&dword_262A43000, v50, v51, "%s o:1", v52, 0xCu);
        v54 = __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x266730D70](v53, -1, -1, v54);
        MEMORY[0x266730D70](v52, -1, -1);
      }

      return (*(v5 + 8))(v11, v4);
    }

    else
    {
      v49(v8, v48, v4);

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v66 = v58;
        *v57 = 136315394;
        *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x646E45706177535BLL, a1, &v66);
        *(v57 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, ":X");
        v59 = swift_allocObject();
        v60 = MEMORY[0x277D83A90];
        *(v59 + 16) = xmmword_262A9ADB0;
        v61 = MEMORY[0x277D83B08];
        *(v59 + 56) = v60;
        *(v59 + 64) = v61;
        *(v59 + 32) = a2;
        v62 = String.init(format:_:)();
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v66);

        *(v57 + 14) = v64;
        _os_log_impl(&dword_262A43000, v55, v56, "%s o:%s", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266730D70](v58, -1, -1);
        MEMORY[0x266730D70](v57, -1, -1);
      }

      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    v27 = SILLogger.unsafeMutableAddressor();
    (*(v5 + 16))(v14, v27, v4);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v66 = v31;
      *v30 = 136315394;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x646E45706177535BLL, a1, &v66);
      *(v30 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, ":X");
      v32 = swift_allocObject();
      v33 = MEMORY[0x277D83A90];
      *(v32 + 16) = xmmword_262A9ADB0;
      v34 = MEMORY[0x277D83B08];
      *(v32 + 56) = v33;
      *(v32 + 64) = v34;
      *(v32 + 32) = a2;
      v35 = String.init(format:_:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v66);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_262A43000, v28, v29, "%s o<1 (%s)", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266730D70](v31, -1, -1);
      MEMORY[0x266730D70](v30, -1, -1);
    }

    return (*(v5 + 8))(v14, v4);
  }
}

void specialized SILRenderer.dumpSwapEnd(_:_:)()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v196 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v186 = &v176 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v185 = &v176 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v184 = &v176 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v183 = &v176 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v182 = &v176 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v181 = &v176 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v180 = &v176 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v179 = &v176 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v194 = &v176 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v193 = &v176 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v192 = &v176 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v191 = &v176 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v190 = &v176 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v189 = &v176 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v188 = &v176 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v187 = &v176 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v176 - v38;
  v40 = SILLogger.unsafeMutableAddressor();
  v41 = v3;
  v42 = *(v3 + 16);
  v205 = v3 + 16;
  v206 = v40;
  v204 = v42;
  (v42)(v39);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    v46 = (*(*v1 + 400))();
    if (v48 == 1)
    {
      goto LABEL_92;
    }

    v49 = v46;
    outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v46, v47, v48);
    *(v45 + 4) = v49;

    _os_log_impl(&dword_262A43000, v43, v44, "[SwapEnd] %llu", v45, 0xCu);
    MEMORY[0x266730D70](v45, -1, -1);
  }

  else
  {
  }

  v202 = *(v41 + 8);
  v203 = v41 + 8;
  v202(v39, v2);
  v50 = Log.unsafeMutableAddressor();
  swift_beginAccess();
  v51 = *v50;
  v229 = 0x646E45706177535BLL;
  v230 = 0xEA0000000000205DLL;
  v52 = *(*v1 + 400);

  v54 = v52(v53);
  if (v56 == 1)
  {
    goto LABEL_91;
  }

  v57 = v55;
  v58 = v56;
  v226[0] = v54;
  v59 = v54;
  v60 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26672FCC0](v60);
  outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v59, v57, v58);

  (*(*v51 + 144))(4, v229, v230);

  v62 = *v1;
  v200 = *(*v1 + 520);
  v201 = v62 + 520;
  v63 = v200(v61);
  v64 = (*(*v63 + 192))(v63);

  v212 = v64;
  v65 = *(v64 + 16);
  swift_beginAccess();
  v211 = v65;
  if (!v65)
  {
LABEL_89:

    return;
  }

  v66 = (v212 + 32);
  *(&v67 + 1) = 2;
  v197 = xmmword_262A9ADB0;
  *&v67 = 33555202;
  v195 = v67;
  *&v67 = 134218496;
  v178 = v67;
  *&v67 = 134218754;
  v176 = v67;
  *&v67 = 134219008;
  v177 = v67;
  v208 = v1;
  v198 = v50;
  v199 = v2;
  v68 = 0;
  while (v68 < *(v212 + 16))
  {
    v224[0] = *v66;
    v69 = v66[1];
    v70 = v66[2];
    v71 = v66[3];
    v225 = *(v66 + 8);
    v224[2] = v70;
    v224[3] = v71;
    v224[1] = v69;
    memmove(v226, v66, 0x48uLL);
    v72 = v226[0];
    if (v226[0])
    {
      v73 = v227;
      v216 = v228;
      v74 = *((*MEMORY[0x277D85000] & *v226[0]) + 0xA8);
      v75 = (*MEMORY[0x277D85000] & *v226[0]) + 168;
      outlined init with copy of SILBackend?(v224, &v220, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      v76 = outlined init with copy of SILBackend?(v226, &v220, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      v215 = (v74)(v76);
      v77 = outlined destroy of SILValidator.RegionState?(v226, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      v78 = v200(v77);
      (*(*v78 + 120))(&v229);

      v217 = v72;
      v209 = v75;
      v210 = v74;
      v79 = v74();
      outlined destroy of SILValidator.RegionState?(v226, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      SILValidator.IndicatorStates.subscript.getter(v79, v219);
      v213 = v66;
      v214 = v68;
      if (v219[3])
      {
        if (swift_dynamicCast())
        {
          v80 = v222;
          v81 = v223;
          goto LABEL_17;
        }
      }

      else
      {
        outlined destroy of SILValidator.RegionState?(v219, &_sypSgMd, &_sypSgMR);
      }

      v80 = 0;
      v81 = -1;
LABEL_17:
      v82 = static SILValidator.IndicatorState.getAnimStateChar(_:)(v80, v81);
      v84 = v83;
      v85 = *((*MEMORY[0x277D85000] & *v217) + 0xF8);
      v207 = v226[0];
      v86 = v216;
      v87 = v85(v216);
      outlined destroy of SILValidator.RegionState?(v226, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      v88 = *v198;
      v220 = 0;
      v221 = 0xE000000000000000;

      _StringGuts.grow(_:)(41);
      MEMORY[0x26672FCC0](0x646E45706177535BLL, 0xEB000000005B205DLL);
      v89 = v214;
      v218 = v214;
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26672FCC0](v90);

      MEMORY[0x26672FCC0](980688989, 0xE400000000000000);
      v218 = v215;
      v91 = v84;
      v92 = v82;
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26672FCC0](v93);

      MEMORY[0x26672FCC0](3827232, 0xE300000000000000);
      LOWORD(v218) = v86;
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26672FCC0](v94);

      MEMORY[0x26672FCC0](981103392, 0xE400000000000000);
      Float.write<A>(to:)();
      MEMORY[0x26672FCC0](980710176, 0xE400000000000000);
      MEMORY[0x26672FCC0](v82, v91);
      MEMORY[0x26672FCC0](3829536, 0xE300000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, ":X");
      v95 = swift_allocObject();
      *(v95 + 16) = v197;
      *(v95 + 56) = MEMORY[0x277D83A90];
      *(v95 + 64) = MEMORY[0x277D83B08];
      *(v95 + 32) = v73;
      v96 = String.init(format:_:)();
      MEMORY[0x26672FCC0](v96);

      (*(*v88 + 144))(4, v220, v221);

      v68 = v89;

      if (v89 != 1)
      {
        if (v89)
        {

          if (v89 != 3)
          {
            if (v89 != 2)
            {
              v146 = v199;
              v204(v196, v206, v199);
              v147 = v207;
              v148 = Logger.logObject.getter();
              v149 = static os_log_type_t.default.getter();
              outlined destroy of SILValidator.RegionState?(v226, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
              if (os_log_type_enabled(v148, v149))
              {
                v150 = swift_slowAlloc();
                *v150 = v177;
                *(v150 + 4) = v89;
                *(v150 + 12) = 2048;
                *(v150 + 14) = v215;
                *(v150 + 22) = 512;
                *(v150 + 24) = v216;
                *(v150 + 26) = 2048;
                *(v150 + 28) = v87;
                *(v150 + 36) = 2048;
                *(v150 + 38) = v73;
                _os_log_impl(&dword_262A43000, v148, v149, "[SwapEnd] [%ld] t:%ld f:%hu sz:%f o:%f", v150, 0x2Eu);
                MEMORY[0x266730D70](v150, -1, -1);

                outlined destroy of SILValidator.RegionState?(v226, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
              }

              else
              {
                outlined destroy of SILValidator.RegionState?(v226, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
              }

              v202(v196, v146);
              v66 = v213;
              goto LABEL_9;
            }

            v120 = v217;
            v121 = v210();
            outlined destroy of SILValidator.RegionState?(v226, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
            if (v121 == 2)
            {
              v123 = v181;
              v122 = v199;
              v204(v181, v206, v199);
              v124 = Logger.logObject.getter();
              v169 = static os_log_type_t.default.getter();
              if (!os_log_type_enabled(v124, v169))
              {
                goto LABEL_75;
              }

              v126 = swift_slowAlloc();
              *v126 = 33554944;
              *(v126 + 4) = v216;
              *(v126 + 6) = 2048;
              *(v126 + 8) = v87;
              v127 = v169;
              v128 = v124;
              v129 = "[SwapEnd] [2] t:2 f:%hu sz:%f";
            }

            else
            {
              v122 = v199;
              if (v121 != 1)
              {
                if (!v121)
                {
                  v123 = v179;
                  v204(v179, v206, v199);
                  v124 = Logger.logObject.getter();
                  v125 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v124, v125))
                  {
                    v126 = swift_slowAlloc();
                    *v126 = 33554944;
                    *(v126 + 4) = v216;
                    *(v126 + 6) = 2048;
                    *(v126 + 8) = v87;
                    v127 = v125;
                    v128 = v124;
                    v129 = "[SwapEnd] [2] t:0 f:%hu sz:%f";
                    goto LABEL_74;
                  }

LABEL_75:
                  v170 = v123;
LABEL_79:

                  v202(v170, v122);
                  v172 = 844832861;
LABEL_88:
                  specialized SILRenderer.dumpOpacity(_:_:)(v172 | 0xED00005D00000000, v73);
                  outlined destroy of SILValidator.RegionState?(v226, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
                  v66 = v213;
                  goto LABEL_9;
                }

                v170 = v182;
                v204(v182, v206, v199);
                v124 = Logger.logObject.getter();
                v171 = static os_log_type_t.default.getter();
                if (!os_log_type_enabled(v124, v171))
                {
                  goto LABEL_79;
                }

                v126 = swift_slowAlloc();
                *v126 = v178;
                *(v126 + 4) = v215;
                *(v126 + 12) = 512;
                *(v126 + 14) = v216;
                *(v126 + 16) = 2048;
                *(v126 + 18) = v87;
                _os_log_impl(&dword_262A43000, v124, v171, "[SwapEnd] [2] t:%ld f:%hu sz:%f", v126, 0x1Au);
LABEL_78:
                MEMORY[0x266730D70](v126, -1, -1);
                goto LABEL_79;
              }

              v123 = v180;
              v204(v180, v206, v199);
              v124 = Logger.logObject.getter();
              v167 = static os_log_type_t.default.getter();
              if (!os_log_type_enabled(v124, v167))
              {
                goto LABEL_75;
              }

              v126 = swift_slowAlloc();
              *v126 = 33554944;
              *(v126 + 4) = v216;
              *(v126 + 6) = 2048;
              *(v126 + 8) = v87;
              v127 = v167;
              v128 = v124;
              v129 = "[SwapEnd] [2] t:1 f:%hu sz:%f";
            }

LABEL_74:
            _os_log_impl(&dword_262A43000, v128, v127, v129, v126, 0x10u);
            v170 = v123;
            goto LABEL_78;
          }

          v136 = v217;
          v137 = v210();
          outlined destroy of SILValidator.RegionState?(v226, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
          if (v137 == 2)
          {
            v139 = v185;
            v138 = v199;
            v204(v185, v206, v199);
            v140 = Logger.logObject.getter();
            v173 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v140, v173))
            {
              goto LABEL_83;
            }

            v142 = swift_slowAlloc();
            *v142 = 33554944;
            *(v142 + 4) = v216;
            *(v142 + 6) = 2048;
            *(v142 + 8) = v87;
            v143 = v173;
            v144 = v140;
            v145 = "[SwapEnd] [3] t:2 f:%hu sz:%f";
          }

          else
          {
            v138 = v199;
            if (v137 != 1)
            {
              if (!v137)
              {
                v139 = v183;
                v204(v183, v206, v199);
                v140 = Logger.logObject.getter();
                v141 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v140, v141))
                {
                  v142 = swift_slowAlloc();
                  *v142 = 33554944;
                  *(v142 + 4) = v216;
                  *(v142 + 6) = 2048;
                  *(v142 + 8) = v87;
                  v143 = v141;
                  v144 = v140;
                  v145 = "[SwapEnd] [3] t:0 f:%hu sz:%f";
                  goto LABEL_82;
                }

LABEL_83:
                v174 = v139;
LABEL_87:

                v202(v174, v138);
                v172 = 861610077;
                goto LABEL_88;
              }

              v174 = v186;
              v204(v186, v206, v199);
              v140 = Logger.logObject.getter();
              v175 = static os_log_type_t.default.getter();
              if (!os_log_type_enabled(v140, v175))
              {
                goto LABEL_87;
              }

              v142 = swift_slowAlloc();
              *v142 = v178;
              *(v142 + 4) = v215;
              *(v142 + 12) = 512;
              *(v142 + 14) = v216;
              *(v142 + 16) = 2048;
              *(v142 + 18) = v87;
              _os_log_impl(&dword_262A43000, v140, v175, "[SwapEnd] [3] t:%ld f:%hu sz:%f", v142, 0x1Au);
LABEL_86:
              MEMORY[0x266730D70](v142, -1, -1);
              goto LABEL_87;
            }

            v139 = v184;
            v204(v184, v206, v199);
            v140 = Logger.logObject.getter();
            v168 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v140, v168))
            {
              goto LABEL_83;
            }

            v142 = swift_slowAlloc();
            *v142 = 33554944;
            *(v142 + 4) = v216;
            *(v142 + 6) = 2048;
            *(v142 + 8) = v87;
            v143 = v168;
            v144 = v140;
            v145 = "[SwapEnd] [3] t:1 f:%hu sz:%f";
          }

LABEL_82:
          _os_log_impl(&dword_262A43000, v144, v143, v145, v142, 0x10u);
          v174 = v139;
          goto LABEL_86;
        }

        v97 = v215;
        if (v215 == 2)
        {
          v99 = v189;
          v98 = v199;
          v204(v189, v206, v199);

          v100 = Logger.logObject.getter();
          v153 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v100, v153))
          {
            goto LABEL_61;
          }

          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v220 = v103;
          *v102 = v195;
          *(v102 + 4) = v216;
          *(v102 + 6) = 2048;
          *(v102 + 8) = v87;
          *(v102 + 16) = 2080;
          v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v91, &v220);

          *(v102 + 18) = v154;
          v68 = v214;
          v105 = v153;
          v106 = v100;
          v107 = "[SwapEnd] [0] t:2 f:%hu sz:%f st:%s";
        }

        else
        {
          v98 = v199;
          if (v215 != 1)
          {
            if (!v215)
            {
              v99 = v187;
              v204(v187, v206, v199);

              v100 = Logger.logObject.getter();
              v101 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v100, v101))
              {
                v102 = swift_slowAlloc();
                v103 = swift_slowAlloc();
                v220 = v103;
                *v102 = v195;
                *(v102 + 4) = v216;
                *(v102 + 6) = 2048;
                *(v102 + 8) = v87;
                *(v102 + 16) = 2080;
                v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v91, &v220);

                *(v102 + 18) = v104;
                v68 = v214;
                v105 = v101;
                v106 = v100;
                v107 = "[SwapEnd] [0] t:0 f:%hu sz:%f st:%s";
                goto LABEL_57;
              }

LABEL_61:

LABEL_62:
              v202(v99, v98);
              v66 = v213;
              specialized SILRenderer.dumpOpacity(_:_:)(0xED00005D305B205DLL, v73);
              outlined destroy of SILValidator.RegionState?(v226, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
              goto LABEL_9;
            }

            v99 = v190;
            v204(v190, v206, v199);

            v100 = Logger.logObject.getter();
            v157 = static os_log_type_t.default.getter();

            if (!os_log_type_enabled(v100, v157))
            {
              goto LABEL_61;
            }

            v158 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v220 = v159;
            *v158 = v176;
            *(v158 + 4) = v97;
            *(v158 + 12) = 512;
            *(v158 + 14) = v216;
            *(v158 + 16) = 2048;
            *(v158 + 18) = v87;
            *(v158 + 26) = 2080;
            v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v91, &v220);

            *(v158 + 28) = v160;
            _os_log_impl(&dword_262A43000, v100, v157, "[SwapEnd] [0] t:%ld f:%hu sz:%f st:%s", v158, 0x24u);
            v161 = __swift_destroy_boxed_opaque_existential_1Tm(v159);
            v162 = v159;
            v68 = v214;
            MEMORY[0x266730D70](v162, -1, -1, v161);
            v156 = v158;
LABEL_60:
            MEMORY[0x266730D70](v156, -1, -1);

            goto LABEL_62;
          }

          v99 = v188;
          v204(v188, v206, v199);

          v100 = Logger.logObject.getter();
          v151 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v100, v151))
          {
            goto LABEL_61;
          }

          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v220 = v103;
          *v102 = v195;
          *(v102 + 4) = v216;
          *(v102 + 6) = 2048;
          *(v102 + 8) = v87;
          *(v102 + 16) = 2080;
          v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v91, &v220);

          *(v102 + 18) = v152;
          v68 = v214;
          v105 = v151;
          v106 = v100;
          v107 = "[SwapEnd] [0] t:1 f:%hu sz:%f st:%s";
        }

LABEL_57:
        _os_log_impl(&dword_262A43000, v106, v105, v107, v102, 0x1Au);
        v155 = __swift_destroy_boxed_opaque_existential_1Tm(v103);
        MEMORY[0x266730D70](v103, -1, -1, v155);
        v156 = v102;
        goto LABEL_60;
      }

      v108 = v217;
      v109 = v210();
      outlined destroy of SILValidator.RegionState?(v226, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      if (v109 == 1)
      {
        v111 = v192;
        v110 = v199;
        v204(v192, v206, v199);

        v112 = Logger.logObject.getter();
        v130 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v112, v130))
        {
          goto LABEL_38;
        }

        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v220 = v115;
        *v114 = v195;
        *(v114 + 4) = v216;
        *(v114 + 6) = 2048;
        *(v114 + 8) = v87;
        *(v114 + 16) = 2080;
        v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v91, &v220);

        *(v114 + 18) = v131;
        v68 = v214;
        v117 = v130;
        v118 = v112;
        v119 = "[SwapEnd] [1] t:1 f:%hu sz:%f  st:%s";
LABEL_37:
        _os_log_impl(&dword_262A43000, v118, v117, v119, v114, 0x1Au);
        v132 = __swift_destroy_boxed_opaque_existential_1Tm(v115);
        MEMORY[0x266730D70](v115, -1, -1, v132);
        MEMORY[0x266730D70](v114, -1, -1);

LABEL_39:
        v202(v111, v110);
LABEL_40:
        v66 = v213;
      }

      else
      {
        v110 = v199;
        if (!v109)
        {
          v111 = v191;
          v204(v191, v206, v199);

          v112 = Logger.logObject.getter();
          v113 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v220 = v115;
            *v114 = v195;
            *(v114 + 4) = v216;
            *(v114 + 6) = 2048;
            *(v114 + 8) = v87;
            *(v114 + 16) = 2080;
            v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v91, &v220);

            *(v114 + 18) = v116;
            v68 = v214;
            v117 = v113;
            v118 = v112;
            v119 = "[SwapEnd] [1] t:0 f:%hu sz:%f st:%s";
            goto LABEL_37;
          }

LABEL_38:

          goto LABEL_39;
        }

        if (v109 == 2)
        {
          v204(v193, v206, v110);
          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            *v135 = 33554944;
            *(v135 + 4) = v216;
            *(v135 + 6) = 2048;
            *(v135 + 8) = v87;
            _os_log_impl(&dword_262A43000, v133, v134, "[SwapEnd] [1] t:2 f:%hu sz:%f", v135, 0x10u);
            MEMORY[0x266730D70](v135, -1, -1);
          }

          v202(v193, v110);
          goto LABEL_40;
        }

        v204(v194, v206, v110);
        v163 = Logger.logObject.getter();
        v164 = static os_log_type_t.default.getter();
        v165 = os_log_type_enabled(v163, v164);
        v66 = v213;
        if (v165)
        {
          v166 = swift_slowAlloc();
          *v166 = v178;
          *(v166 + 4) = v215;
          *(v166 + 12) = 512;
          *(v166 + 14) = v216;
          *(v166 + 16) = 2048;
          *(v166 + 18) = v87;
          _os_log_impl(&dword_262A43000, v163, v164, "[SwapEnd] [1] t:%ld f:%hu sz:%f", v166, 0x1Au);
          MEMORY[0x266730D70](v166, -1, -1);
        }

        v202(v194, v110);
      }

      specialized SILRenderer.dumpOpacity(_:_:)(0xED00005D315B205DLL, v73);
      outlined destroy of SILValidator.RegionState?(v226, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
      goto LABEL_9;
    }

    outlined init with copy of SILBackend?(v224, &v220, &_s10SILManager12SILValidatorC11RegionStateVSgMd, &_s10SILManager12SILValidatorC11RegionStateVSgMR);
LABEL_9:
    ++v68;
    v66 = (v66 + 72);
    if (v211 == v68)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:

  __break(1u);
}

BOOL partial apply for closure #2 in FlipBookStateHash.validateTransitionFunc()(unsigned int a1)
{
  v2 = *(v1 + 18);
  if (v2 != HIWORD(a1))
  {
    return 0;
  }

  return *(v1 + 16) == a1 || v2 == a1;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Rotation and conformance Rotation()
{
  result = lazy protocol witness table cache variable for type Rotation and conformance Rotation;
  if (!lazy protocol witness table cache variable for type Rotation and conformance Rotation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rotation and conformance Rotation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwapWaitType and conformance SwapWaitType()
{
  result = lazy protocol witness table cache variable for type SwapWaitType and conformance SwapWaitType;
  if (!lazy protocol witness table cache variable for type SwapWaitType and conformance SwapWaitType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwapWaitType and conformance SwapWaitType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SensorType and conformance SensorType()
{
  result = lazy protocol witness table cache variable for type SensorType and conformance SensorType;
  if (!lazy protocol witness table cache variable for type SensorType and conformance SensorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SensorType and conformance SensorType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PixelFormatInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for PixelFormatInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SwapWaitType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SwapWaitType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILRenderer.Region.PageContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 57))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SILRenderer.Region.PageContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SILRenderer.CursorState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for SILRenderer.CursorState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlipBookStateHash(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlipBookStateHash(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILIndicatorValidator.StateInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for SILIndicatorValidator.StateInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for BitmaskIterator(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BitmaskIterator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for BitmaskIterator(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SILManagerCursorInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SILManagerCursorInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SILError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_262A9B7AC[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SILError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_262A9B7AC[v2]);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SILError@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SILError.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance SILError(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type SILError and conformance SILError();
  v5 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t SILManager.Service.__allocating_init(endpoint:)(uint64_t a1)
{
  v2 = type metadata accessor for TightbeamEndpoint();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for ClientConnection();
  swift_allocObject();
  v7 = ClientConnection.init(endpoint:)();
  (*(v3 + 8))(a1, v2);
  *(v6 + 16) = v7;
  return v6;
}

uint64_t SILManager.Service.__allocating_init(connection:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SILManager.Service.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t protocol witness for TightbeamServiceInitProtocol.init(endpoint:) in conformance SILManager.Service@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for ClientConnection();
  swift_allocObject();
  v9 = ClientConnection.init(endpoint:)();
  result = (*(v5 + 8))(a1, v4);
  *(v8 + 16) = v9;
  *a2 = v8;
  return result;
}

uint64_t SILManager.Server.__allocating_init(endpoint:handler:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  outlined init with copy of SILFileHandle(a2, v8 + 24);
  (*(v5 + 16))(v7, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Tightbeam17ServiceConnectionCy10SILManagerADC6ServerCGMd, &_s9Tightbeam17ServiceConnectionCy10SILManagerADC6ServerCGMR);
  swift_allocObject();
  *(v8 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  v9 = __swift_destroy_boxed_opaque_existential_1Tm(a2);
  (*(v5 + 8))(a1, v4, v9);
  return v8;
}

uint64_t _s10SILManagerAAC6ServerC6decodey9Tightbeam0D7MessageVSgAF0D7DecoderVnSo10tb_error_taYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v160 = a3;
  v161 = a2;
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Tightbeam0A7EncoderVSgMd, &_s9Tightbeam0A7EncoderVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v157 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v156 = &v154 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v154 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v154 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v154 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v155 = &v154 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v154 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v154 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v154 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v154 - v31;
  v33 = type metadata accessor for TightbeamEncoder();
  v162 = *(v33 - 8);
  v34 = *(v162 + 56);
  v164 = v32;
  v165 = v33;
  v158 = v34;
  v159 = v162 + 56;
  (v34)(v32, 1, 1);
  v166 = a1;
  v35 = TightbeamDecoder.decode(as:)();
  v36 = v35;
  if (v35 <= 0xCD9A701BFAD00187)
  {
    if (v35 <= 0xA410C7076A35A6E7)
    {
      if (v35 == 0x8FCDC6E3802C9B2CLL)
      {
        v50 = TightbeamDecoder.decode(as:)();
        v51 = v4[6];
        v52 = v4[7];
        __swift_project_boxed_opaque_existential_1(v4 + 3, v51);
        v53 = v163;
        (*(v52 + 56))(v50, v51, v52);
        v45 = v164;
        v37 = v165;
        if (v53)
        {
          v167 = v53;
          v54 = v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          if (!swift_dynamicCast())
          {

            v153 = 0;
            v151 = 492;
            goto LABEL_109;
          }

          LODWORD(v49) = v169;
        }

        else
        {
          LODWORD(v49) = 24;
        }

        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        v166 = 0;
        v158(v13, 0, 1, v37);
        v133 = *(v162 + 48);
        if (v133(v45, 1, v37) != 1)
        {
          outlined destroy of TightbeamEncoder?(v45);
        }

        outlined init with take of TightbeamEncoder?(v13, v45);
        if (v133(v45, 1, v37))
        {
          goto LABEL_93;
        }

LABEL_89:
        if (v49 == 24)
        {
          TightbeamEncoder.encode(_:)(0);
          goto LABEL_93;
        }

        goto LABEL_91;
      }

      if (v35 == 0x957E8C1BCCAA14C5)
      {
        v84 = TightbeamDecoder.decode(as:)();
        v85 = TightbeamDecoder.decode(as:)();
        TightbeamDecoder.decode(as:)();
        v87 = v86;
        TightbeamDecoder.decode(as:)();
        v89 = v88;
        v90 = TightbeamDecoder.decode(as:)();
        v91 = TightbeamDecoder.decode(as:)();
        TightbeamDecoder.decode(as:)();
        v93 = v92;
        TightbeamDecoder.decode(as:)();
        v95 = v94;
        v96 = v4[6];
        v97 = v4[7];
        __swift_project_boxed_opaque_existential_1(v4 + 3, v96);
        v98 = v163;
        v99 = (*(v97 + 24))(v84, v85, v90, v91, v96, v97, v87, v89, v93, v95);
        v44 = v98;
        if (v98)
        {
          v167 = v98;
          v100 = v98;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v101 = swift_dynamicCast();
          v45 = v164;
          v102 = v162;
          if (!v101)
          {

            v153 = 0;
            v151 = 438;
            goto LABEL_109;
          }

          v103 = v24;

          v104 = v169;
        }

        else
        {
          v104 = v99;
          v45 = v164;
          v102 = v162;
          v103 = v24;
        }

        v37 = v165;
        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        v49 = v104;
        v166 = 0;
        v158(v103, 0, 1, v37);
        v133 = *(v102 + 48);
        if (v133(v45, 1, v37) != 1)
        {
          outlined destroy of TightbeamEncoder?(v45);
        }

        outlined init with take of TightbeamEncoder?(v103, v45);
        if (!v133(v45, 1, v37))
        {
          goto LABEL_69;
        }

        goto LABEL_93;
      }

LABEL_100:
      v167 = 0;
      v168 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v167 = 0xD000000000000029;
      v168 = 0x8000000262A9FC70;
      v169 = v36;
      v149 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26672FCC0](v149);

      v153 = 0;
      v152 = 675;
      goto LABEL_110;
    }

    if (v35 != 0xA410C7076A35A6E8)
    {
      v37 = v165;
      if (v35 == 0xAD54C35AA7A54D41)
      {
        v105 = v4[6];
        v106 = v4[7];
        __swift_project_boxed_opaque_existential_1(v4 + 3, v105);
        v107 = v163;
        (*(v106 + 48))(v105, v106);
        v109 = v162;
        if (v107)
        {
          v167 = v107;
          v110 = v107;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          if (!swift_dynamicCast())
          {

            v153 = 0;
            v152 = 479;
            goto LABEL_110;
          }

          LODWORD(v111) = v169;
        }

        else
        {
          v111 = v108;
        }

        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        v166 = 0;
        v158(v16, 0, 1, v37);
        v133 = *(v109 + 48);
        v138 = v164;
        v139 = v133(v164, 1, v37);
        if (v139 != 1)
        {
          outlined destroy of TightbeamEncoder?(v138);
        }

        outlined init with take of TightbeamEncoder?(v16, v138);
        v45 = v138;
        if (!v133(v138, 1, v37))
        {
          TightbeamEncoder.encode(_:)(0);
          TightbeamEncoder.encode(_:)(v111);
        }

        goto LABEL_93;
      }

      goto LABEL_100;
    }

    v55 = TightbeamDecoder.decode(as:)();
    v56 = TightbeamDecoder.decode(as:)();
    v57 = v4[6];
    v58 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v57);
    v59 = v163;
    (*(v58 + 16))(v55 & 1, v56 & 1, v57, v58);
    if (v59)
    {
      v167 = v59;
      v60 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v61 = swift_dynamicCast();
      v45 = v164;
      v62 = v162;
      if (!v61)
      {

        v153 = 0;
        v151 = 409;
        goto LABEL_109;
      }

      LODWORD(v49) = v169;
    }

    else
    {
      LODWORD(v49) = 24;
      v45 = v164;
      v62 = v162;
    }

    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    v166 = 0;
    v135 = v165;
    v158(v27, 0, 1, v165);
    v133 = *(v62 + 48);
    if (v133(v45, 1, v135) != 1)
    {
      outlined destroy of TightbeamEncoder?(v45);
    }

    outlined init with take of TightbeamEncoder?(v27, v45);
    v136 = v45;
    v37 = v165;
LABEL_74:
    if (v133(v136, 1, v37))
    {
      goto LABEL_93;
    }

    goto LABEL_89;
  }

  if (v35 <= 0xEAD9C28EE039BCEELL)
  {
    v37 = v165;
    if (v35 != 0xCD9A701BFAD00188)
    {
      v118 = v166;
      if (v35 == 0xE94B62118BC1ED97)
      {
        LODWORD(v157) = TightbeamDecoder.decode(as:)();
        TightbeamDecoder.decode(as:)();
        v120 = v119;
        v121 = TightbeamDecoder.decode(as:)();
        v122 = TightbeamDecoder.decode(as:)();
        v123 = TightbeamDecoder.decode(as:)();
        MEMORY[0x28223BE20](v123);
        v152 = v118;
        v124 = v163;
        _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sfs5NeverOTg5(_s10SILManagerAAC6ServerC6decodey9Tightbeam0D7MessageVSgAF0D7DecoderVnSo10tb_error_taYKFSfSiXEfU_TA, (&v154 - 4), 0, 9);
        v126 = v125;
        v127 = v4[6];
        v128 = v4[7];
        __swift_project_boxed_opaque_existential_1(v4 + 3, v127);
        (*(v128 + 64))(v157, v121, v122, v123, v126, v127, v128, v120);
        if (v124)
        {
          v167 = v124;
          v129 = v124;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v130 = swift_dynamicCast();
          v45 = v164;
          v37 = v165;
          v131 = v162;
          v132 = v156;
          if (!v130)
          {
            goto LABEL_111;
          }

          LODWORD(v49) = v169;
        }

        else
        {

          LODWORD(v49) = 24;
          v45 = v164;
          v37 = v165;
          v131 = v162;
          v132 = v156;
        }

        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        v166 = 0;
        v158(v132, 0, 1, v37);
        v133 = *(v131 + 48);
        if (v133(v45, 1, v37) != 1)
        {
          outlined destroy of TightbeamEncoder?(v45);
        }

        v137 = v132;
LABEL_88:
        outlined init with take of TightbeamEncoder?(v137, v45);
        if (v133(v45, 1, v37))
        {
          goto LABEL_93;
        }

        goto LABEL_89;
      }

      goto LABEL_100;
    }

    v63 = TightbeamDecoder.decode(as:)();
    v64 = TightbeamDecoder.decode(as:)();
    v65 = v4[6];
    v66 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v65);
    v67 = v163;
    (*(v66 + 40))(v63, v64 & 1, v65, v66);
    v45 = v164;
    if (v67)
    {
      v167 = v67;
      v68 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v69 = swift_dynamicCast();
      v70 = v162;
      if (!v69)
      {

        v153 = 0;
        v151 = 467;
        goto LABEL_109;
      }

      LODWORD(v49) = v169;
    }

    else
    {
      LODWORD(v49) = 24;
      v70 = v162;
    }

    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    v166 = 0;
    v158(v19, 0, 1, v37);
    v133 = *(v70 + 48);
    if (v133(v45, 1, v37) != 1)
    {
      outlined destroy of TightbeamEncoder?(v45);
    }

    outlined init with take of TightbeamEncoder?(v19, v45);
    v136 = v45;
    goto LABEL_74;
  }

  v37 = v165;
  if (v35 == 0xEAD9C28EE039BCEFLL)
  {
    v71 = TightbeamDecoder.decode(as:)();
    v72 = v4[6];
    v73 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v72);
    v74 = v163;
    v75 = (*(v73 + 72))(v71, v72, v73);
    if (v74)
    {
      v167 = v74;
      v78 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v79 = swift_dynamicCast();
      v80 = v157;
      if (!v79)
      {

        v153 = 0;
        v151 = 530;
        goto LABEL_109;
      }

      v81 = v169;
      v82 = 0;
      v83 = 0;
    }

    else
    {
      v81 = v75;
      v82 = v76;
      v83 = v77;
      v80 = v157;
    }

    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    v166 = 0;
    v158(v80, 0, 1, v37);
    v133 = *(v162 + 48);
    v134 = v164;
    if (v133(v164, 1, v37) != 1)
    {
      outlined destroy of TightbeamEncoder?(v134);
    }

    outlined init with take of TightbeamEncoder?(v157, v134);
    if (v133(v134, 1, v37))
    {
      v45 = v164;
      goto LABEL_93;
    }

    v146 = HIDWORD(v82);
    v147 = v164;
    TightbeamEncoder.encode(_:)(0);
    TightbeamEncoder.encode(_:)(v81);
    TightbeamEncoder.encode(_:)(HIDWORD(v81));
    v148 = v82;
    v45 = v147;
    TightbeamEncoder.encode(_:)(v148);
    TightbeamEncoder.encode(_:)(v146);
    v140 = v83;
    goto LABEL_92;
  }

  if (v35 != 0x67C81ED3212CD499)
  {
    if (v35 == 0x74E2ED7425CD826ALL)
    {
      v112 = v4[6];
      v113 = v4[7];
      __swift_project_boxed_opaque_existential_1(v4 + 3, v112);
      v114 = v163;
      (*(v113 + 8))(v112, v113);
      if (!v114)
      {
        LODWORD(v49) = 24;
        v45 = v164;
        v117 = v162;
        goto LABEL_77;
      }

      v167 = v114;
      v115 = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v116 = swift_dynamicCast();
      v45 = v164;
      v117 = v162;
      if (v116)
      {

        LODWORD(v49) = v169;
LABEL_77:
        _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
        v166 = 0;
        v158(v30, 0, 1, v37);
        v133 = *(v117 + 48);
        if (v133(v45, 1, v37) != 1)
        {
          outlined destroy of TightbeamEncoder?(v45);
        }

        v137 = v30;
        goto LABEL_88;
      }

      v153 = 0;
      v151 = 396;
LABEL_109:
      v152 = v151;
      goto LABEL_110;
    }

    goto LABEL_100;
  }

  v38 = TightbeamDecoder.decode(as:)();
  v39 = TightbeamDecoder.decode(as:)();
  v40 = v4[6];
  v41 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v40);
  v42 = v163;
  v43 = (*(v41 + 32))(v38, v39 & 1, v40, v41);
  v44 = v42;
  v45 = v164;
  if (v42)
  {
    v167 = v42;
    v46 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v47 = swift_dynamicCast();
    v48 = v155;
    if (!v47)
    {

      v153 = 0;
      for (i = 452; ; i = 518)
      {
        v152 = i;
LABEL_110:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_111:

        v153 = 0;
      }
    }

    v49 = v169;
  }

  else
  {
    v49 = v43;
    v48 = v155;
  }

  _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
  v166 = 0;
  v158(v48, 0, 1, v37);
  v133 = *(v162 + 48);
  if (v133(v45, 1, v37) != 1)
  {
    outlined destroy of TightbeamEncoder?(v45);
  }

  outlined init with take of TightbeamEncoder?(v48, v45);
  if (!v133(v45, 1, v37))
  {
LABEL_69:
    if (!v44)
    {
      TightbeamEncoder.encode(_:)(0);
      TightbeamEncoder.encode(_:)(v49);
      goto LABEL_93;
    }

LABEL_91:
    TightbeamEncoder.encode(_:)(1u);
    v140 = dword_262A9B7AC[v49];
LABEL_92:
    TightbeamEncoder.encode(_:)(v140);
  }

LABEL_93:
  v141 = (v133)(v45, 1, v37);
  v142 = v141;
  if (v141 == 1)
  {
    v143 = v160;
  }

  else
  {
    v143 = v160;
    if (v141)
    {
      outlined destroy of TightbeamEncoder?(v45);
      v142 = 1;
    }

    else
    {
      TightbeamEncoder.complete()();
    }
  }

  v144 = type metadata accessor for TightbeamMessage();
  return (*(*(v144 - 8) + 56))(v143, v142, 1, v144);
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sfs5NeverOTg5(void (*a1)(int *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v5)
  {
    return;
  }

  v19 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v19;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v7 < v5)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_17;
      }

      v17 = a3 + v7;
      a1(&v18, &v17);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v18;
      v19 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v14 + 1;
      *(v8 + 4 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v7)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
}

uint64_t SILManager.Server.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t _s10SILManagerAAC6ServerC9Tightbeam21MessageDecodeProtocolAaeFP6decodeyAE0cD0VSgAE0C7DecoderVnSo10tb_error_taYKFTW@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  result = _s10SILManagerAAC6ServerC6decodey9Tightbeam0D7MessageVSgAF0D7DecoderVnSo10tb_error_taYKF(a1, &v6, a3);
  if (v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t specialized SILError.init(rawValue:)(int a1)
{
  if (a1 > 511)
  {
    if (a1 > 517)
    {
      if (a1 > 520)
      {
        switch(a1)
        {
          case 521:
            return 21;
          case 522:
            return 22;
          case 4096:
            return 23;
        }

        return 24;
      }

      if (a1 == 518)
      {
        return 18;
      }

      else if (a1 == 519)
      {
        return 19;
      }

      else
      {
        return 20;
      }
    }

    else if (a1 > 514)
    {
      if (a1 == 515)
      {
        return 15;
      }

      else if (a1 == 516)
      {
        return 16;
      }

      else
      {
        return 17;
      }
    }

    else if (a1 == 512)
    {
      return 12;
    }

    else if (a1 == 513)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }

  else if (a1 > 6)
  {
    if (a1 > 9)
    {
      switch(a1)
      {
        case 10:
          return 9;
        case 11:
          return 10;
        case 12:
          return 11;
      }

      return 24;
    }

    if (a1 == 7)
    {
      return 6;
    }

    else if (a1 == 8)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }

  else
  {
    if (a1 <= 3)
    {
      switch(a1)
      {
        case 1:
          return 0;
        case 2:
          return 1;
        case 3:
          return 2;
      }

      return 24;
    }

    if (a1 == 4)
    {
      return 3;
    }

    else if (a1 == 5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void type metadata accessor for tb_error_t()
{
  if (!lazy cache variable for type metadata for tb_error_t)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for tb_error_t);
    }
  }
}

uint64_t outlined destroy of TightbeamEncoder?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Tightbeam0A7EncoderVSgMd, &_s9Tightbeam0A7EncoderVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of TightbeamEncoder?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Tightbeam0A7EncoderVSgMd, &_s9Tightbeam0A7EncoderVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type tb_error_t and conformance tb_error_t(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SILError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SILError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void SILServer_createSILServerClient(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_262A43000, a2, OS_LOG_TYPE_ERROR, "Error creating SILServerEndpoint (tbErr:%d)", v2, 8u);
}

{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_262A43000, a2, OS_LOG_TYPE_ERROR, "Error creating SILServerClientConnection (tbErr:%d)", v2, 8u);
}

void SILServer_createRenderer()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262A43000, v0, v1, "Error while making Tightbeam call for %s : %d", v2, v3, v4, v5, v6);
}

void SILServer_setPower()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262A43000, v0, v1, "Error while making Tightbeam call for %s : %d", v2, v3, v4, v5, v6);
}

void SILServer_swap()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262A43000, v0, v1, "Error while making Tightbeam call for %s : %d", v2, v3, v4, v5, v6);
}

void SILServer_turnOffIndicators()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262A43000, v0, v1, "Error while making Tightbeam call for %s : %d", v2, v3, v4, v5, v6);
}

void SILServer_swapEnd()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262A43000, v0, v1, "Error while making Tightbeam call for %s : %d", v2, v3, v4, v5, v6);
}

void SILServer_softBoundaryStrength()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262A43000, v0, v1, "Error while making Tightbeam call for %s : %d", v2, v3, v4, v5, v6);
}

void SILServer_softBoundaryStrength(uint64_t a1, void *a2, uint64_t a3, float *a4)
{
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 52);
  _Block_object_dispose(a2, 8);
  v7 = 1.0;
  if (!v5)
  {
    v7 = v6;
  }

  *a4 = v7;
}

void SILServer_setLogLevel()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262A43000, v0, v1, "Error while making Tightbeam call for %s : %d", v2, v3, v4, v5, v6);
}

void SILServer_updateCursorState()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262A43000, v0, v1, "Error while making Tightbeam call for %s : %d", v2, v3, v4, v5, v6);
}

void SILServer_getCursorInfo()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_262A43000, v0, v1, "Error while making Tightbeam call for %s : %d", v2, v3, v4, v5, v6);
}

__n128 SILServer_getCursorInfo(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a1 + 48);
  v8 = *(*a1 + 52);
  v6 = *(*a1 + 68);
  _Block_object_dispose(a2, 8);
  if (v5)
  {
    result.n128_u64[0] = INVALID_CURSOR_INFO;
    *(a4 + 16) = 0;
    *a4 = INVALID_CURSOR_INFO;
  }

  else
  {
    result = v8;
    *a4 = v8;
    *(a4 + 16) = v6;
  }

  return result;
}

void frame_distance()
{
  __assert_rtn("frame_distance", "SILStateMachine.mm", 125, "range_2 != tp.end");
}

{
  __assert_rtn("frame_distance", "SILStateMachine.mm", 124, "range_1 != tp.end");
}

{
  __assert_rtn("frame_distance", "SILStateMachine.mm", 112, "frame_2 >= range_1->from");
}

{
  __assert_rtn("frame_distance", "SILStateMachine.mm", 91, "frame_2 >= range_2->from && frame_2 <= range_2->to");
}

{
  __assert_rtn("frame_distance", "SILStateMachine.mm", 90, "frame_1 >= range_1->from && frame_1 <= range_1->to");
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  switch(__clz(**a1 ^ 0xFF))
  {
    case 0x18u:
      *a1 = v1 + 1;
      v2 = *v1;
      break;
    case 0x1Au:
      if (a1[1] - v1 < 2)
      {
        goto LABEL_31;
      }

      v9 = v1 + 1;
      if ((v1[1] & 0xC0) != 0x80)
      {
        goto LABEL_31;
      }

      *a1 = v9;
      v10 = *v1 & 0x1F;
      *a1 = v1 + 2;
      if (v10 < 2)
      {
        v2 = 2147549181;
      }

      else
      {
        v2 = *v9 & 0x3F | (v10 << 6);
      }

      break;
    case 0x1Bu:
      if (a1[1] - v1 < 3)
      {
        goto LABEL_31;
      }

      v3 = 1;
      do
      {
        v4 = v1[v3] & 0xC0;
      }

      while (v4 == 128 && v3++ != 2);
      if (v4 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v6 = *v1 & 0xF;
      *a1 = v1 + 2;
      v7 = (v6 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      if (v7 >= 0x800)
      {
        v8 = v7 | v1[2] & 0x3F;
        if ((v7 & 0xF800) == 0xD800)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v8;
        }
      }

      break;
    case 0x1Cu:
      if (a1[1] - v1 < 4)
      {
        goto LABEL_31;
      }

      v11 = 1;
      do
      {
        v12 = v1[v11] & 0xC0;
      }

      while (v12 == 128 && v11++ != 3);
      if (v12 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v14 = *v1 & 7;
      *a1 = v1 + 2;
      v15 = (v14 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      v16 = v1[2];
      *a1 = v1 + 4;
      if (v15 >= 0x400)
      {
        v17 = v1[3] & 0x3F | ((v15 | v16 & 0x3F) << 6);
        if (v15 >> 10 >= 0x11)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v17;
        }
      }

      break;
    default:
LABEL_31:
      v2 = 2147549181;
      *a1 = v1 + 1;
      break;
  }

  return v2;
}

uint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v17);
  std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:ne200100](&v18, v8 & 0x7FFFFFFF);
  if (a1 == a2)
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v10 = std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](v17);
    v12 = v11;
    v13 = std::__width_estimation_table::__estimated_width[abi:ne200100](v10);
    v14 = v9 + v13;
    if (!a4 && v14 > a3)
    {
      break;
    }

    v15 = v12 == a2 || v14 > a3;
    v9 += v13;
  }

  while (!v15);
  return v9;
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](unsigned __int8 **a1, _DWORD *a2, _BYTE *a3)
{
  v5 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](a1);
  v6 = v5 & 0x7FFFFFFF;
  v7 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v5 & 0x7FFFFFFF);
  v8 = v7;
  result = std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](a2, v6, v7);
  *a2 = v6;
  *a3 = v8;
  return result;
}

void silmanager_silerror__decode_cold_1(unsigned int a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/SILManager/install/TempContent/Objects/SILManager.build/SILManager.build/DerivedSources/SILManager_C.c", 206);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
  __DataStorage.init(bytes:length:)();
}

uint64_t TightbeamDecoder.decode(as:)()
{
  return MEMORY[0x2821D8ED0]();
}

{
  return MEMORY[0x2821D8EE0]();
}

{
  return MEMORY[0x2821D8EF0]();
}

{
  return MEMORY[0x2821D8F08]();
}

{
  return MEMORY[0x2821D8F18]();
}

{
  return MEMORY[0x2821D8F20]();
}

{
  return MEMORY[0x2821D8F28]();
}

{
  return MEMORY[0x2821D8F40]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD990]();
}

{
  return MEMORY[0x2821FD998]();
}

{
  return MEMORY[0x2821FD9A0]();
}

{
  return MEMORY[0x2821FD9A8]();
}

{
  return MEMORY[0x2821FD9C0]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA10]();
}

{
  return MEMORY[0x2821FDA18]();
}

{
  return MEMORY[0x2821FDA60]();
}

uint64_t dispatch thunk of UnkeyedDecodingContainer.decode(_:)()
{
  return MEMORY[0x2821FDC68]();
}

{
  return MEMORY[0x2821FDC70]();
}

{
  return MEMORY[0x2821FDC78]();
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2821F7E98](this, a2, a3, a4);
}

{
  return MEMORY[0x2821F7EB0](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2821F7EA0]();
}

{
  return MEMORY[0x2821F7EA8]();
}

{
  return MEMORY[0x2821F7EB8]();
}

{
  return MEMORY[0x2821F7EC0]();
}

{
  return MEMORY[0x2821F7ED0]();
}

{
  return MEMORY[0x2821F7ED8]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}