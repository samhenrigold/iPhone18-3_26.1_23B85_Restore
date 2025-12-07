uint64_t protocol witness for UpdateFrequencyDependentFormatStyle.updateFrequency(_:) in conformance SystemFormatStyle.DateOffset@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = outlined init with copy of SystemFormatStyle.DateOffset(v3, a3, type metadata accessor for SystemFormatStyle.DateOffset);
  *(a3 + *(a2 + 44)) = v6;
  return result;
}

uint64_t static SystemFormatStyle.DateOffset.representation<A>(of:for:)@<X0>(char *a1@<X0>, char *a2@<X1>, void *a3@<X2>, int *a4@<X3>, uint64_t *a5@<X8>)
{
  v186 = a3;
  v187 = a4;
  v191 = a1;
  v189 = a5;
  v190 = type metadata accessor for Date();
  v185 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v173 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v172 = &v169 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v169 - v10;
  v177 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v181 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v182 = &v169 - v15;
  v16 = type metadata accessor for Calendar();
  v180 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v178 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v179 = &v169 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v188 = &v169 - v21;
  v22 = type metadata accessor for Locale();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v169 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v169 - v30;
  v32 = type metadata accessor for SystemFormatStyle.DateOffset(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset, protocol conformance descriptor for SystemFormatStyle.DateOffset);
  if (a2 > 1)
  {
    v192 = v186;
    v193 = v32;
    v194 = v187;
    v195 = v35;
    v196 = &protocol witness table for AttributedString;
    v80 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v192);
    v81 = v189;
    v189[3] = v80;
    v81[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
    return (*(*(v80 - 8) + 16))(boxed_opaque_existential_1, v191, v80);
  }

  v174 = v11;
  v192 = v186;
  v193 = v32;
  v194 = v187;
  v195 = v35;
  v196 = &protocol witness table for AttributedString;
  v36 = type metadata accessor for TimeDataFormatting.Resolvable(0, &v192);
  outlined init with copy of SystemFormatStyle.DateOffset(&v191[*(v36 + 60)], v34, type metadata accessor for SystemFormatStyle.DateOffset);
  EnvironmentValues.init()(&v192);
  v187 = v32;
  v37 = *(v32 + 36);
  v38 = *(v23 + 16);
  v191 = v34;
  v38(v31, &v34[v37], v22);
  v38(v28, v31, v22);
  v39 = v192;
  v171 = v23 + 16;
  v170 = v38;
  v38(v25, v28, v22);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v192, v25);

  v40 = *(v23 + 8);
  v186 = v22;
  v40(v25, v22);
  v41 = v193;
  if (v193)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v39, v192);
  }

  v42 = v186;
  v40(v28, v186);
  v40(v31, v42);
  v43 = v188;
  v44 = v180;
  v45 = *(v180 + 16);
  v46 = v191;
  v45(v188, &v191[v187[10]], v16);
  v47 = v179;
  v45(v179, v43, v16);
  v48 = v192;
  v49 = v178;
  v45(v178, v47, v16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v192, v49);
  v169 = 0;

  v50 = *(v44 + 8);
  v50(v49, v16);
  v51 = v181;
  if (v41)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08CalendarK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v48, v192);
  }

  v50(v47, v16);
  v50(v188, v16);
  v52 = v187;
  v53 = v46[v187[13]];
  v54 = v185;
  if ((v53 & 1) == 0 && (v46[v187[12]] & 1) == 0)
  {
    SystemFormatStyle.DateOffset.unitsConfigurationAllowsTimeStyle.getter();
    v55 = v184;
    v56 = v183;
    v57 = v182;
    goto LABEL_17;
  }

  v55 = v184;
  v56 = v183;
  v57 = v182;
  if (v46[v187[11]] > 1u || (SystemFormatStyle.DateOffset.unitsConfigurationAllowsTimeStyle.getter(), (v53 & v58 & 1) == 0))
  {
LABEL_17:
    v84 = *&v46[v52[8]];
    if (v84 > 1)
    {
      static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    }

    else if (v84 == 1)
    {
      if (v46[v52[12]])
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      }
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    }

    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth, MEMORY[0x1E696A1E8], MEMORY[0x1E696A1F0]);
    v85 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *(v56 + 8);
    v86(v51, v55);
    if (v85)
    {
      v86(v57, v55);
      LODWORD(v188) = 0;
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      v87 = dispatch thunk of static Equatable.== infix(_:_:)();
      v86(v51, v55);
      if (v87)
      {
        v86(v57, v55);
        v88 = 1;
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
        v89 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86(v51, v55);
        v86(v57, v55);
        if (v89)
        {
          v88 = 1;
        }

        else
        {
          v88 = 2;
        }
      }

      LODWORD(v188) = v88;
    }

    v90 = *&v46[v52[5]];
    type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_18DDAC2E0;
    static Date.ComponentsFormatStyle.Style.wide.getter();
    static Date.ComponentsFormatStyle.Style.narrow.getter();
    static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
    static Date.ComponentsFormatStyle.Style.spellOut.getter();
    static Date.ComponentsFormatStyle.Field.minute.getter();
    static Date.ComponentsFormatStyle.Field.second.getter();
    v92 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n(v91);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    _sSh2eeoiySbShyxG_ABtFZ10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(v90, v92);
    v94 = v93;

    v95 = 0;
    if ((v94 & 1) == 0)
    {

      specialized NSCalendarUnit.init(_:)(v96);
      v95 = v97;
    }

    v98 = v52[7];
    v99 = v175;
    static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
    v100 = v191;
    v101 = MEMORY[0x193ABCC70](&v191[v98], v99);
    v102 = *(v176 + 8);
    v103 = v177;
    v102(v99, v177);
    if (v101 & 1) != 0 || (static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)(), v104 = MEMORY[0x193ABCC70](&v100[v98], v99), v102(v99, v103), (v104))
    {
      if (one-time initialization token for offset != -1)
      {
        swift_once();
      }

      v105 = &static Text.DateStyle.offset;
    }

    else
    {
      if (one-time initialization token for relative != -1)
      {
        swift_once();
      }

      v105 = &static Text.DateStyle.relative;
    }

    v107 = v189;
    v106 = v190;
    v108 = v105[16];
    v109 = *(v105 + 1);
    LODWORD(v189) = *v105;
    if (v94)
    {
      v110 = v109;
    }

    else
    {
      v110 = v95;
    }

    if (v94)
    {
      v111 = v108;
    }

    else
    {
      v111 = v188;
    }

    v112 = *(v54 + 16);
    v113 = v174;
    v112(v174, v191, v190);
    v115 = v192;
    v114 = v193;
    v116 = type metadata accessor for ResolvableAbsoluteDate(0);
    v107[3] = v116;
    v107[4] = &protocol witness table for ResolvableAbsoluteDate;
    v117 = __swift_allocate_boxed_opaque_existential_1(v107);
    v112(v117, v113, v106);
    v118 = v117 + v116[5];
    *v118 = v189;
    *(v118 + 1) = v110;
    v118[16] = v111;
    v119 = v116[6];
    if (v114)
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v115, v117 + v119);

      v120 = v116[7];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v115, v117 + v120);

      v121 = v116[8];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v115, v117 + v121);

      (*(v185 + 8))(v174, v190);
      v122 = v191;
    }

    else
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v123, v117 + v119);
      v124 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v115);
      v125 = v190;
      v122 = v191;
      v126 = v185;
      v127 = v174;
      if (v124)
      {
        v128 = *(*v124 + 248);
        v129 = v124;
        v130 = v117 + v116[7];
        v131 = v129 + v128;
        v132 = v186;
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v133 = v186;
        v131 = __swift_project_value_buffer(v186, static LocaleKey.defaultValue);
        v130 = v117 + v116[7];
        v132 = v133;
      }

      v170(v130, v131, v132);
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v115, v117 + v116[8]);
      (*(v126 + 8))(v127, v125);
    }

    v134 = v122;
    return outlined destroy of SystemFormatStyle.DateOffset(v134, type metadata accessor for SystemFormatStyle.DateOffset);
  }

  v59 = *&v46[v52[5]];
  type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
  type metadata accessor for Date.ComponentsFormatStyle.Field();
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_18DDAF080;
  static Date.ComponentsFormatStyle.Style.spellOut.getter();
  static Date.ComponentsFormatStyle.Field.minute.getter();
  static Date.ComponentsFormatStyle.Field.second.getter();
  v61 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n(v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  _sSh2eeoiySbShyxG_ABtFZ10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(v59, v61);
  LOBYTE(v60) = v62;

  v63 = v46;
  v64 = *(v54 + 16);
  if (v60)
  {
    v65 = v172;
    v64(v172, v63, v190);
    v66 = v189;
    if (one-time initialization token for timer != -1)
    {
      swift_once();
    }

    v67 = static Text.DateStyle.timer;
    v68 = qword_1EAB1F268;
    v69 = byte_1EAB1F270;
    v70 = v192;
    v71 = v193;
    v72 = type metadata accessor for ResolvableAbsoluteDate(0);
    v66[3] = v72;
    v66[4] = &protocol witness table for ResolvableAbsoluteDate;
    v73 = __swift_allocate_boxed_opaque_existential_1(v66);
    v64(v73, v65, v190);
    v74 = v73 + v72[5];
    *v74 = v67;
    *(v74 + 1) = v68;
    v74[16] = v69;
    v75 = v72[6];
    if (v71)
    {
      v76 = v65;

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v70, v73 + v75);

      v77 = v72[7];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v70, v73 + v77);

      v78 = v72[8];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v70, v73 + v78);

      (*(v185 + 8))(v76, v190);
      v79 = v191;
    }

    else
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v150, v73 + v75);
      v151 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v70);
      v152 = v190;
      v153 = v185;
      if (v151)
      {
        v154 = *(*v151 + 248);
        v155 = v151;
        v156 = v73 + v72[7];
        v157 = v155 + v154;
        v158 = v186;
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v167 = v186;
        v157 = __swift_project_value_buffer(v186, static LocaleKey.defaultValue);
        v156 = v73 + v72[7];
        v158 = v167;
      }

      v170(v156, v157, v158);
      v79 = v191;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v70, v73 + v72[8]);
      (*(v153 + 8))(v172, v152);
    }

    v134 = v79;
  }

  else
  {
    v135 = v173;
    v136 = v190;
    v64(v173, v63, v190);

    specialized NSCalendarUnit.init(_:)(v137);
    v139 = v138;
    v140 = v192;
    v141 = v193;
    v142 = type metadata accessor for ResolvableAbsoluteDate(0);
    v143 = v189;
    v189[3] = v142;
    v143[4] = &protocol witness table for ResolvableAbsoluteDate;
    v144 = __swift_allocate_boxed_opaque_existential_1(v143);
    v64(v144, v135, v136);
    v145 = v144 + v142[5];
    *v145 = 4;
    *(v145 + 1) = v139;
    v145[16] = 2;
    v146 = v142[6];
    if (v141)
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v140, v144 + v146);

      v147 = v142[7];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v140, v144 + v147);

      v148 = v142[8];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v140, v144 + v148);

      (*(v54 + 8))(v173, v136);
      v149 = v191;
    }

    else
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v159, v144 + v146);
      v160 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v140);
      v149 = v191;
      v161 = v173;
      if (v160)
      {
        v162 = *(*v160 + 248);
        v163 = v160;
        v164 = v144 + v142[7];
        v165 = v163 + v162;
        v166 = v186;
      }

      else
      {
        v168 = v186;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v165 = __swift_project_value_buffer(v168, static LocaleKey.defaultValue);
        v164 = v144 + v142[7];
        v166 = v168;
      }

      v170(v164, v165, v166);
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v140, v144 + v142[8]);
      (*(v54 + 8))(v161, v136);
    }

    v134 = v149;
  }

  return outlined destroy of SystemFormatStyle.DateOffset(v134, type metadata accessor for SystemFormatStyle.DateOffset);
}

uint64_t one-time initialization function for orderedFields()
{
  type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
  type metadata accessor for Date.ComponentsFormatStyle.Field();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDACAA0;
  static Date.ComponentsFormatStyle.Style.wide.getter();
  static Date.ComponentsFormatStyle.Style.narrow.getter();
  static Date.ComponentsFormatStyle.Style.abbreviated.getter();
  static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
  static Date.ComponentsFormatStyle.Style.spellOut.getter();
  static Date.ComponentsFormatStyle.Field.minute.getter();
  result = static Date.ComponentsFormatStyle.Field.second.getter();
  static Date.ComponentsFormatStyle.Field.orderedFields = v0;
  return result;
}

uint64_t SystemFormatStyle.DateOffset.interfaceIdiom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  outlined init with copy of SystemFormatStyle.DateOffset(v2, a2, type metadata accessor for SystemFormatStyle.DateOffset);
  type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<ComplicationInterfaceIdiom>, &type metadata for ComplicationInterfaceIdiom, &protocol witness table for ComplicationInterfaceIdiom);
  v5 = *(v4 + 16);
  if (v5())
  {
    v6 = 1;
  }

  else
  {
    type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<WatchInterfaceIdiom>, &type metadata for WatchInterfaceIdiom, &protocol witness table for WatchInterfaceIdiom);
    v6 = v5() & 1;
  }

  result = type metadata accessor for SystemFormatStyle.DateOffset(0);
  *(a2 + *(result + 48)) = v6;
  return result;
}

uint64_t protocol witness for InterfaceIdiomDependentFormatStyle.interfaceIdiom(_:) in conformance SystemFormatStyle.DateOffset@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  outlined init with copy of SystemFormatStyle.DateOffset(v3, a3, type metadata accessor for SystemFormatStyle.DateOffset);
  type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<ComplicationInterfaceIdiom>, &type metadata for ComplicationInterfaceIdiom, &protocol witness table for ComplicationInterfaceIdiom);
  v7 = *(v6 + 16);
  result = v7();
  v9 = 1;
  if ((result & 1) == 0)
  {
    type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<WatchInterfaceIdiom>, &type metadata for WatchInterfaceIdiom, &protocol witness table for WatchInterfaceIdiom);
    result = v7();
    if ((result & 1) == 0)
    {
      v9 = 0;
    }
  }

  *(a3 + *(a2 + 48)) = v9;
  return result;
}

uint64_t outlined init with take of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(uint64_t a1)
{
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Date.ComponentsFormatStyle.Field();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Date.ComponentsFormatStyle.Field() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v61 - v19;
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v77 = &v61 - v23;
  v63 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v75 = *(v21 + 16);
    v76 = v21 + 16;
    v25 = *(v21 + 72);
    v81 = (v21 + 8);
    v26 = (v24 + v25 * (a3 - 1));
    v68 = -v25;
    v69 = (v21 + 32);
    v27 = a1 - a3;
    v70 = v24;
    v62 = v25;
    v28 = v24 + v25 * a3;
    v74 = v17;
    v72 = v11;
LABEL_5:
    v66 = v26;
    v67 = a3;
    v64 = v28;
    v65 = v27;
    v78 = v26;
    v79 = v28;
    v29 = v27;
    v30 = v73;
    while (1)
    {
      v31 = v77;
      v32 = v75;
      (v75)(v77, v79, v30, v22);
      v32(v80, v78, v30);
      v32(v17, v31, v30);
      v33 = v81;
      static Date.ComponentsFormatStyle.Style.wide.getter();
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *v33;
      (*v33)(v14, v30);
      if (v34)
      {
        v35(v17, v30);
        v36 = 0x417E133800000000;
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.narrow.getter();
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35(v14, v30);
        if (v37)
        {
          v35(v17, v30);
          v36 = 0x4143C68000000000;
        }

        else
        {
          static Date.ComponentsFormatStyle.Style.abbreviated.getter();
          v38 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35(v14, v30);
          if (v38)
          {
            v35(v17, v30);
            v36 = 0x4122750000000000;
          }

          else
          {
            static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
            v39 = dispatch thunk of static Equatable.== infix(_:_:)();
            v35(v14, v30);
            if (v39)
            {
              v35(v17, v30);
              v36 = 0x40F5180000000000;
            }

            else
            {
              static Date.ComponentsFormatStyle.Style.spellOut.getter();
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v35(v14, v30);
              if (v40)
              {
                v35(v17, v30);
                v36 = 0x40AC200000000000;
              }

              else
              {
                static Date.ComponentsFormatStyle.Field.minute.getter();
                v41 = dispatch thunk of static Equatable.== infix(_:_:)();
                v35(v14, v30);
                if ((v41 & 1) == 0)
                {
                  static Date.ComponentsFormatStyle.Field.second.getter();
                  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v35(v14, v30);
                  v35(v17, v73);
                  v30 = v73;
                  if (v51)
                  {
                    v42 = 1.0;
                  }

                  else
                  {
                    v42 = INFINITY;
                  }

                  goto LABEL_19;
                }

                v35(v17, v30);
                v36 = 0x404E000000000000;
              }
            }
          }
        }
      }

      v42 = *&v36;
LABEL_19:
      v43 = v72;
      v75(v72, v80, v30);
      static Date.ComponentsFormatStyle.Style.wide.getter();
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35(v14, v30);
      if (v44)
      {
        v35(v43, v30);
        v45 = 31536000.0;
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.narrow.getter();
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35(v14, v30);
        if (v46)
        {
          v35(v43, v30);
          v45 = 2592000.0;
        }

        else
        {
          static Date.ComponentsFormatStyle.Style.abbreviated.getter();
          v47 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35(v14, v30);
          if (v47)
          {
            v35(v43, v30);
            v45 = 604800.0;
          }

          else
          {
            static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
            v48 = dispatch thunk of static Equatable.== infix(_:_:)();
            v35(v14, v30);
            if (v48)
            {
              v35(v43, v30);
              v45 = 86400.0;
            }

            else
            {
              static Date.ComponentsFormatStyle.Style.spellOut.getter();
              v49 = dispatch thunk of static Equatable.== infix(_:_:)();
              v35(v14, v30);
              if (v49)
              {
                v35(v43, v30);
                v45 = 3600.0;
              }

              else
              {
                static Date.ComponentsFormatStyle.Field.minute.getter();
                v50 = dispatch thunk of static Equatable.== infix(_:_:)();
                v35(v14, v30);
                if (v50)
                {
                  v35(v43, v30);
                  v45 = 60.0;
                }

                else
                {
                  static Date.ComponentsFormatStyle.Field.second.getter();
                  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v35(v14, v30);
                  v35(v43, v73);
                  v30 = v73;
                  if (v52)
                  {
                    v45 = 1.0;
                  }

                  else
                  {
                    v45 = INFINITY;
                  }
                }
              }
            }
          }
        }
      }

      v35(v80, v30);
      v35(v77, v30);
      v17 = v74;
      if (v45 >= v42)
      {
LABEL_4:
        a3 = v67 + 1;
        v26 = &v66[v62];
        v27 = v65 - 1;
        v28 = v64 + v62;
        if (v67 + 1 == v63)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v70)
      {
        __break(1u);
        return;
      }

      v53 = *v69;
      v54 = v71;
      v55 = v14;
      v56 = v29;
      v57 = v79;
      v30 = v73;
      (*v69)(v71, v79, v73);
      v58 = v78;
      swift_arrayInitWithTakeFrontToBack();
      v53(v58, v54, v30);
      v78 = &v58[v68];
      v79 = v57 + v68;
      v59 = v56;
      v14 = v55;
      v17 = v74;
      v60 = __CFADD__(v59, 1);
      v29 = v59 + 1;
      if (v60)
      {
        goto LABEL_4;
      }
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v162 = a1;
  v8 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  MEMORY[0x1EEE9AC00](a3);
  v164 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v179 = &v158 - v11;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v158 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v189 = &v158 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v187 = &v158 - v19;
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v158 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v176 = &v158 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v174 = &v158 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v158 = &v158 - v29;
  v36.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
  v37 = &v158 - v32;
  v38 = v31[1];
  v172 = v33;
  if (v38 < 1)
  {
    v40 = MEMORY[0x1E69E7CC0];
LABEL_161:
    v37 = *v162;
    if (!*v162)
    {
      goto LABEL_200;
    }

    v8 = v31;
    a4 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v172;
    if (isUniquelyReferenced_nonNull_native)
    {
      v153 = a4;
LABEL_164:
      v192 = v153;
      a4 = *(v153 + 2);
      if (a4 >= 2)
      {
        while (*v8)
        {
          v154 = *&v153[16 * a4];
          v155 = v153;
          v156 = *&v153[16 * a4 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v8 + *(v39 + 72) * v154, *v8 + *(v39 + 72) * *&v153[16 * a4 + 16], *v8 + *(v39 + 72) * v156, v37);
          if (v5)
          {
            goto LABEL_172;
          }

          if (v156 < v154)
          {
            goto LABEL_187;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v155 = specialized _ArrayBuffer._consumeAndCreateNew()(v155);
          }

          if (a4 - 2 >= *(v155 + 2))
          {
            goto LABEL_188;
          }

          v157 = &v155[16 * a4];
          *v157 = v154;
          *(v157 + 1) = v156;
          v192 = v155;
          specialized Array.remove(at:)(a4 - 1);
          v153 = v192;
          a4 = *(v192 + 2);
          if (a4 <= 1)
          {
            goto LABEL_172;
          }
        }

        goto LABEL_198;
      }

LABEL_172:

      return;
    }

LABEL_194:
    v153 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    goto LABEL_164;
  }

  v170 = v23;
  v39 = 0;
  v188 = v33 + 16;
  v181 = (v33 + 8);
  v182 = (v33 + 32);
  v40 = MEMORY[0x1E69E7CC0];
  v173 = v31;
  v161 = a4;
  v180 = v34;
  v183 = v15;
  v171 = v35;
  v186 = &v158 - v32;
LABEL_4:
  v165 = v40;
  if (v39 + 1 >= v38)
  {
    v51 = v39 + 1;
    goto LABEL_56;
  }

  v160 = v5;
  v175 = v38;
  v41 = *v31;
  v42 = v172;
  v43 = *(v172 + 72);
  v44 = *(v172 + 16);
  v185 = (*v31 + v43 * (v39 + 1));
  v44(v37, v36);
  v45 = v158;
  v184 = v44;
  (v44)(v158, v41 + v43 * v39, v8);
  Date.ComponentsFormatStyle.Field.magnitude.getter(&v191);
  v46 = v191;
  Date.ComponentsFormatStyle.Field.magnitude.getter(&v190);
  v47 = v190;
  v48 = *(v42 + 8);
  v48(v45, v8);
  v48(v37, v8);
  v159 = v39;
  v49 = v39 + 2;
  v177 = v43;
  v50 = v41 + v43 * (v39 + 2);
  v51 = v175;
  while (v51 != v49)
  {
    v52 = v174;
    v178 = v50;
    v53 = v184;
    (v184)(v174);
    (v53)(v176, v185, v8);
    v54 = v170;
    (v53)(v170, v52, v8);
    static Date.ComponentsFormatStyle.Style.wide.getter();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
    LOBYTE(v52) = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v52)
    {
      v48(v54, v8);
      *&v55 = 31536000.0;
LABEL_19:
      v61 = *&v55;
      goto LABEL_20;
    }

    static Date.ComponentsFormatStyle.Style.narrow.getter();
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v56)
    {
      v48(v54, v8);
      *&v55 = 2592000.0;
      goto LABEL_19;
    }

    static Date.ComponentsFormatStyle.Style.abbreviated.getter();
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v57)
    {
      v48(v54, v8);
      *&v55 = 604800.0;
      goto LABEL_19;
    }

    static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v58)
    {
      v48(v54, v8);
      *&v55 = 86400.0;
      goto LABEL_19;
    }

    static Date.ComponentsFormatStyle.Style.spellOut.getter();
    v59 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v59)
    {
      v48(v54, v8);
      *&v55 = 3600.0;
      goto LABEL_19;
    }

    static Date.ComponentsFormatStyle.Field.minute.getter();
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v60)
    {
      v48(v54, v8);
      *&v55 = 60.0;
      goto LABEL_19;
    }

    static Date.ComponentsFormatStyle.Field.second.getter();
    v71 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    v48(v54, v8);
    if (v71)
    {
      v61 = 1.0;
    }

    else
    {
      v61 = INFINITY;
    }

LABEL_20:
    v62 = v171;
    (v184)(v171, v176, v8);
    static Date.ComponentsFormatStyle.Style.wide.getter();
    v63 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v37, v8);
    if (v63)
    {
      v48(v62, v8);
      *&v64 = 31536000.0;
    }

    else
    {
      static Date.ComponentsFormatStyle.Style.narrow.getter();
      v65 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48(v37, v8);
      if (v65)
      {
        v48(v62, v8);
        *&v64 = 2592000.0;
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.abbreviated.getter();
        v66 = dispatch thunk of static Equatable.== infix(_:_:)();
        v48(v37, v8);
        if (v66)
        {
          v48(v62, v8);
          *&v64 = 604800.0;
        }

        else
        {
          static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
          v67 = dispatch thunk of static Equatable.== infix(_:_:)();
          v48(v37, v8);
          if (v67)
          {
            v48(v62, v8);
            *&v64 = 86400.0;
          }

          else
          {
            static Date.ComponentsFormatStyle.Style.spellOut.getter();
            v68 = dispatch thunk of static Equatable.== infix(_:_:)();
            v48(v37, v8);
            if (v68)
            {
              v48(v62, v8);
              *&v64 = 3600.0;
            }

            else
            {
              static Date.ComponentsFormatStyle.Field.minute.getter();
              v69 = dispatch thunk of static Equatable.== infix(_:_:)();
              v48(v37, v8);
              if ((v69 & 1) == 0)
              {
                static Date.ComponentsFormatStyle.Field.second.getter();
                v72 = dispatch thunk of static Equatable.== infix(_:_:)();
                v48(v37, v8);
                v48(v62, v8);
                if (v72)
                {
                  v70 = 1.0;
                }

                else
                {
                  v70 = INFINITY;
                }

                goto LABEL_33;
              }

              v48(v62, v8);
              *&v64 = 60.0;
            }
          }
        }
      }
    }

    v70 = *&v64;
LABEL_33:
    v48(v176, v8);
    v48(v174, v8);
    ++v49;
    v50 = v178 + v177;
    v185 += v177;
    v51 = v175;
    if (v47 < v46 == v70 >= v61)
    {
      v51 = v49 - 1;
      break;
    }
  }

  v5 = v160;
  v31 = v173;
  a4 = v161;
  v73 = v165;
  v15 = v183;
  v39 = v159;
  if (v47 < v46)
  {
    if (v51 < v159)
    {
      goto LABEL_191;
    }

    if (v159 < v51)
    {
      v74 = v177 * (v51 - 1);
      v75 = v51 * v177;
      v175 = v51;
      v76 = v159 * v177;
      do
      {
        if (v39 != --v51)
        {
          v77 = *v31;
          if (!*v31)
          {
            goto LABEL_197;
          }

          v185 = *v182;
          (v185)(v164, v77 + v76, v8, v73);
          if (v76 < v74 || v77 + v76 >= (v77 + v75))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v76 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          (v185)(v77 + v74, v164, v8);
          v31 = v173;
          v73 = v165;
          v15 = v183;
        }

        ++v39;
        v74 -= v177;
        v75 -= v177;
        v76 += v177;
      }

      while (v39 < v51);
      v5 = v160;
      a4 = v161;
      v39 = v159;
      v51 = v175;
    }
  }

LABEL_56:
  v78 = v31[1];
  if (v51 >= v78)
  {
    goto LABEL_65;
  }

  if (__OFSUB__(v51, v39))
  {
    goto LABEL_190;
  }

  if (v51 - v39 >= a4)
  {
LABEL_65:
    v80 = v51;
    if (v51 < v39)
    {
      goto LABEL_189;
    }

    goto LABEL_66;
  }

  if (__OFADD__(v39, a4))
  {
    goto LABEL_192;
  }

  if ((v39 + a4) >= v78)
  {
    v79 = v31[1];
  }

  else
  {
    v79 = v39 + a4;
  }

  if (v79 < v39)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  if (v51 == v79)
  {
    goto LABEL_65;
  }

  v160 = v5;
  v127 = *v31;
  v128 = *(v172 + 72);
  v185 = *(v172 + 16);
  v129 = v127 + v128 * (v51 - 1);
  v177 = -v128;
  v159 = v39;
  v130 = (v39 - v51);
  v178 = v127;
  v163 = v128;
  v131 = v127 + v51 * v128;
  v166 = v79;
  while (2)
  {
    v175 = v51;
    v167 = v131;
    v168 = v130;
    v132 = v130;
    v169 = v129;
    v133 = v129;
LABEL_120:
    v184 = v132;
    v134 = v187;
    v135 = v185;
    (v185)(v187, v131, v8, v36);
    v135(v189, v133, v8);
    v135(v15, v134, v8);
    static Date.ComponentsFormatStyle.Style.wide.getter();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
    LOBYTE(v134) = dispatch thunk of static Equatable.== infix(_:_:)();
    v136 = *v181;
    (*v181)(v37, v8);
    if (v134)
    {
      v136(v15, v8);
      *&v137 = 31536000.0;
      goto LABEL_132;
    }

    static Date.ComponentsFormatStyle.Style.narrow.getter();
    v138 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v37, v8);
    if (v138)
    {
      v136(v15, v8);
      *&v137 = 2592000.0;
      goto LABEL_132;
    }

    static Date.ComponentsFormatStyle.Style.abbreviated.getter();
    v139 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v37, v8);
    if (v139)
    {
      v136(v15, v8);
      *&v137 = 604800.0;
      goto LABEL_132;
    }

    static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
    v140 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v37, v8);
    if (v140)
    {
      v136(v15, v8);
      *&v137 = 86400.0;
      goto LABEL_132;
    }

    static Date.ComponentsFormatStyle.Style.spellOut.getter();
    v141 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v37, v8);
    if (v141)
    {
      v136(v15, v8);
      *&v137 = 3600.0;
      goto LABEL_132;
    }

    static Date.ComponentsFormatStyle.Field.minute.getter();
    v142 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v37, v8);
    if (v142)
    {
      v136(v15, v8);
      *&v137 = 60.0;
LABEL_132:
      v143 = *&v137;
    }

    else
    {
      static Date.ComponentsFormatStyle.Field.second.getter();
      v151 = dispatch thunk of static Equatable.== infix(_:_:)();
      v136(v37, v8);
      v136(v15, v8);
      if (v151)
      {
        v143 = 1.0;
      }

      else
      {
        v143 = INFINITY;
      }
    }

    v144 = v180;
    (v185)(v180, v189, v8);
    v145 = v186;
    static Date.ComponentsFormatStyle.Style.wide.getter();
    a4 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v145, v8);
    if (a4)
    {
      v136(v144, v8);
      *&v146 = 31536000.0;
      goto LABEL_145;
    }

    static Date.ComponentsFormatStyle.Style.narrow.getter();
    a4 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v145, v8);
    if (a4)
    {
      v136(v144, v8);
      *&v146 = 2592000.0;
      goto LABEL_145;
    }

    static Date.ComponentsFormatStyle.Style.abbreviated.getter();
    a4 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v145, v8);
    if (a4)
    {
      v136(v144, v8);
      *&v146 = 604800.0;
      goto LABEL_145;
    }

    static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
    a4 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v145, v8);
    if (a4)
    {
      v136(v144, v8);
      *&v146 = 86400.0;
      goto LABEL_145;
    }

    static Date.ComponentsFormatStyle.Style.spellOut.getter();
    a4 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v145, v8);
    if (a4)
    {
      v136(v144, v8);
      *&v146 = 3600.0;
      goto LABEL_145;
    }

    static Date.ComponentsFormatStyle.Field.minute.getter();
    a4 = dispatch thunk of static Equatable.== infix(_:_:)();
    v136(v145, v8);
    if (a4)
    {
      v136(v144, v8);
      *&v146 = 60.0;
LABEL_145:
      v147 = *&v146;
    }

    else
    {
      static Date.ComponentsFormatStyle.Field.second.getter();
      a4 = dispatch thunk of static Equatable.== infix(_:_:)();
      v136(v145, v8);
      v136(v144, v8);
      if (a4)
      {
        v147 = 1.0;
      }

      else
      {
        v147 = INFINITY;
      }
    }

    v136(v189, v8);
    v136(v187, v8);
    v15 = v183;
    if (v147 >= v143)
    {
      v37 = v186;
LABEL_118:
      v51 = v175 + 1;
      v129 = v169 + v163;
      v130 = (v168 - 1);
      v131 = v167 + v163;
      v80 = v166;
      if (v175 + 1 != v166)
      {
        continue;
      }

      v5 = v160;
      v39 = v159;
      if (v166 < v159)
      {
        goto LABEL_189;
      }

LABEL_66:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v40 = v165;
      }

      else
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v165 + 2) + 1, 1, v165);
      }

      v82 = *(v40 + 2);
      v81 = *(v40 + 3);
      a4 = v82 + 1;
      v31 = v173;
      if (v82 >= v81 >> 1)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v40);
        v31 = v173;
      }

      *(v40 + 2) = a4;
      v83 = &v40[16 * v82];
      *(v83 + 4) = v39;
      *(v83 + 5) = v80;
      v166 = v80;
      v84 = *v162;
      if (!*v162)
      {
        goto LABEL_199;
      }

      if (v82)
      {
        while (2)
        {
          v39 = a4 - 1;
          if (a4 >= 4)
          {
            v89 = &v40[16 * a4 + 32];
            v90 = *(v89 - 64);
            v91 = *(v89 - 56);
            v95 = __OFSUB__(v91, v90);
            v92 = v91 - v90;
            if (v95)
            {
              goto LABEL_176;
            }

            v94 = *(v89 - 48);
            v93 = *(v89 - 40);
            v95 = __OFSUB__(v93, v94);
            v87 = v93 - v94;
            v88 = v95;
            if (v95)
            {
              goto LABEL_177;
            }

            v96 = &v40[16 * a4];
            v98 = *v96;
            v97 = *(v96 + 1);
            v95 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v95)
            {
              goto LABEL_179;
            }

            v95 = __OFADD__(v87, v99);
            v100 = v87 + v99;
            if (v95)
            {
              goto LABEL_182;
            }

            if (v100 >= v92)
            {
              v118 = &v40[16 * v39 + 32];
              v120 = *v118;
              v119 = *(v118 + 1);
              v95 = __OFSUB__(v119, v120);
              v121 = v119 - v120;
              if (v95)
              {
                goto LABEL_186;
              }

              if (v87 < v121)
              {
                v39 = a4 - 2;
              }
            }

            else
            {
LABEL_85:
              if (v88)
              {
                goto LABEL_178;
              }

              v101 = &v40[16 * a4];
              v103 = *v101;
              v102 = *(v101 + 1);
              v104 = __OFSUB__(v102, v103);
              v105 = v102 - v103;
              v106 = v104;
              if (v104)
              {
                goto LABEL_181;
              }

              v107 = &v40[16 * v39 + 32];
              v109 = *v107;
              v108 = *(v107 + 1);
              v95 = __OFSUB__(v108, v109);
              v110 = v108 - v109;
              if (v95)
              {
                goto LABEL_184;
              }

              if (__OFADD__(v105, v110))
              {
                goto LABEL_185;
              }

              if (v105 + v110 < v87)
              {
                goto LABEL_99;
              }

              if (v87 < v110)
              {
                v39 = a4 - 2;
              }
            }
          }

          else
          {
            if (a4 == 3)
            {
              v85 = *(v40 + 4);
              v86 = *(v40 + 5);
              v95 = __OFSUB__(v86, v85);
              v87 = v86 - v85;
              v88 = v95;
              goto LABEL_85;
            }

            v111 = &v40[16 * a4];
            v113 = *v111;
            v112 = *(v111 + 1);
            v95 = __OFSUB__(v112, v113);
            v105 = v112 - v113;
            v106 = v95;
LABEL_99:
            if (v106)
            {
              goto LABEL_180;
            }

            v114 = &v40[16 * v39];
            v116 = *(v114 + 4);
            v115 = *(v114 + 5);
            v95 = __OFSUB__(v115, v116);
            v117 = v115 - v116;
            if (v95)
            {
              goto LABEL_183;
            }

            if (v117 < v105)
            {
              break;
            }
          }

          v122 = v39 - 1;
          if (v39 - 1 >= a4)
          {
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
            goto LABEL_193;
          }

          if (!*v31)
          {
            goto LABEL_196;
          }

          v123 = v40;
          a4 = *&v40[16 * v122 + 32];
          v124 = *&v40[16 * v39 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v31 + *(v172 + 72) * a4, *v31 + *(v172 + 72) * *&v40[16 * v39 + 32], *v31 + *(v172 + 72) * v124, v84);
          if (v5)
          {
            goto LABEL_172;
          }

          if (v124 < a4)
          {
            goto LABEL_174;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v125 = v123;
          }

          else
          {
            v125 = specialized _ArrayBuffer._consumeAndCreateNew()(v123);
          }

          v15 = v183;
          if (v122 >= *(v125 + 2))
          {
            goto LABEL_175;
          }

          v126 = &v125[16 * v122];
          *(v126 + 4) = a4;
          *(v126 + 5) = v124;
          v192 = v125;
          specialized Array.remove(at:)(v39);
          v40 = v192;
          a4 = *(v192 + 2);
          v31 = v173;
          if (a4 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v38 = v31[1];
      v39 = v166;
      a4 = v161;
      if (v166 >= v38)
      {
        goto LABEL_161;
      }

      goto LABEL_4;
    }

    break;
  }

  v37 = v186;
  v148 = v184;
  if (v178)
  {
    a4 = *v182;
    v149 = v179;
    (*v182)(v179, v131, v8);
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v133, v149, v8);
    v133 += v177;
    v131 += v177;
    v150 = __CFADD__(v148, 1);
    v132 = (v148 + 1);
    if (v150)
    {
      goto LABEL_118;
    }

    goto LABEL_120;
  }

  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v60 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v8 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v48 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v65 = a1;
  v64 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v52 = a4;
      v53 = (v8 + 16);
      v50 = (v8 + 8);
      v51 = a1;
      v33 = v31;
      v54 = -v13;
      do
      {
        v49 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v56 = v34;
        v57 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v65 = v34;
            v63 = *&v49;
            goto LABEL_58;
          }

          v37 = a3;
          v55 = v31;
          v38 = a3 + v32;
          v39 = v33 + v32;
          v40 = *v53;
          v41 = v58;
          v42 = v60;
          (*v53)(v58, v39, v60);
          v43 = v35;
          v44 = v59;
          (v40)(v59, v43, v42);
          Date.ComponentsFormatStyle.Field.magnitude.getter(&v63);
          v45 = v63;
          Date.ComponentsFormatStyle.Field.magnitude.getter(&v62);
          v46 = v62;
          v47 = *v50;
          (*v50)(v44, v42);
          v47(v41, v42);
          if (v46 < v45)
          {
            break;
          }

          v31 = v39;
          a3 = v38;
          if (v37 < v33 || v38 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v57;
            a1 = v51;
          }

          else
          {
            v35 = v57;
            a1 = v51;
            if (v37 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v39;
          v36 = v39 > v52;
          v32 = v54;
          v34 = v56;
          if (!v36)
          {
            a2 = v56;
            goto LABEL_57;
          }
        }

        a3 = v38;
        if (v37 < v56 || v38 >= v56)
        {
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v51;
          v32 = v54;
          v31 = v55;
        }

        else
        {
          a2 = v57;
          a1 = v51;
          v32 = v54;
          v31 = v55;
          if (v37 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v52);
    }

LABEL_57:
    v65 = a2;
    v63 = *&v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v16;
    *&v63 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v55 = a3;
      v56 = v8 + 16;
      v53 = (v8 + 8);
      v54 = v19;
      v20 = v59;
      do
      {
        v21 = a1;
        v22 = v58;
        v23 = a2;
        v24 = v60;
        v25 = a2;
        v26 = v54;
        (v54)(v58, v23, v60);
        v26(v20, a4, v24);
        Date.ComponentsFormatStyle.Field.magnitude.getter(&v62);
        v27 = v62;
        Date.ComponentsFormatStyle.Field.magnitude.getter(&v61);
        v28 = v61;
        v29 = *v53;
        (*v53)(v20, v24);
        v29(v22, v24);
        if (v28 >= v27)
        {
          v30 = v21;
          if (v21 < a4 || v21 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v21 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = a4 + v13;
          a4 += v13;
        }

        else
        {
          a2 = v25 + v13;
          v30 = v21;
          if (v21 < v25 || v21 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v21 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v30 + v13;
        v65 = a1;
      }

      while (a4 < v57 && a2 < v55);
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v65, &v64, &v63);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_11:
    v12 = *(a2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5))));
    v13 = *v12;
    v14 = *(v12 + 8);
    Hasher.init(_seed:)();
    if (v14 < 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v13;
    }

    else
    {
      dispatch thunk of static AttributedStringKey.name.getter();
    }

    v5 &= v5 - 1;
    String.hash(into:)();

    v10 = Hasher._finalize()();
    outlined consume of AttributedString.AnyAttribute(v13, v14);
    v7 ^= v10;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      MEMORY[0x193AC11A0](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

{
  v4 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v24 = a1[2];
  v25 = v8;
  v26 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v21[0] = a1;
  v22 = v10;
  v23 = v9;
  v11 = Hasher._finalize()();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v21[2] = v5 + 16;
  v21[3] = v11;
  v21[1] = v5 + 8;

  v16 = 0;
  for (i = 0; v14; v16 ^= v20)
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v19 | (v18 << 6)), v4);
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      MEMORY[0x193AC11A0](v16);
      return;
    }

    v14 = *(a2 + 56 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t specialized static SystemFormatStyle.DateOffset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static Date.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for SystemFormatStyle.DateOffset(0), _sSh2eeoiySbShyxG_ABtFZ10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt1g5(*(a1 + v4[5]), *(a2 + v4[5])), (v5) && *(a1 + v4[6]) == *(a2 + v4[6]) && (MEMORY[0x193ABCC70](a1 + v4[7], a2 + v4[7]) & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && (MEMORY[0x193ABDB20](a1 + v4[9], a2 + v4[9]) & 1) != 0 && (MEMORY[0x193ABDC80](a1 + v4[10], a2 + v4[10]) & 1) != 0 && *(a1 + v4[11]) == *(a2 + v4[11]) && *(a1 + v4[12]) == *(a2 + v4[12]))
  {
    v6 = *(a1 + v4[13]) ^ *(a2 + v4[13]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void lazy protocol witness table accessor for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SystemFormatStyle.DateOffset.CodingKeys, &unk_1F00707A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SystemFormatStyle.DateOffset.CodingKeys, &unk_1F00707A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SystemFormatStyle.DateOffset.CodingKeys, &unk_1F00707A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SystemFormatStyle.DateOffset.CodingKeys, &unk_1F00707A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys);
  }
}

void type metadata accessor for Set<Date.ComponentsFormatStyle.Field>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Set<Date.ComponentsFormatStyle.Field>)
  {
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Set<Date.ComponentsFormatStyle.Field>);
    }
  }
}

void lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency()
{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency, &type metadata for TimeDataFormatting.UpdateFrequency, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency);
  }
}

{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency, &type metadata for TimeDataFormatting.UpdateFrequency, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency);
  }
}

{
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency)
  {
    swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.UpdateFrequency, &type metadata for TimeDataFormatting.UpdateFrequency, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency and conformance TimeDataFormatting.UpdateFrequency);
  }
}

void type metadata accessor for KeyedEncodingContainer<SystemFormatStyle.DateOffset.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys();
    v7 = a3(a1, &unk_1F00707A0, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void lazy protocol witness table accessor for type Set<Date.ComponentsFormatStyle.Field> and conformance <> Set<A>(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for Set<Date.ComponentsFormatStyle.Field>(255);
    v7 = v6;
    v9 = a2();
    swift_getWitnessTable(a3, v7, &v9);
    atomic_store(v8, a1);
  }
}

void type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void type metadata accessor for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field))
  {
    type metadata accessor for Duration.TimeFormatStyle.Attributed();
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Duration.TimeFormatStyle.Attributed, Date.ComponentsFormatStyle.Field));
    }
  }
}

void instantiation function for generic protocol witness table for SystemFormatStyle.DateOffset(uint64_t a1)
{
  lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset, protocol conformance descriptor for SystemFormatStyle.DateOffset);
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset, protocol conformance descriptor for SystemFormatStyle.DateOffset);
  *(a1 + 8) = v2;
}

{
  _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(&lazy protocol witness table cache variable for type SystemFormatStyle.DateOffset and conformance SystemFormatStyle.DateOffset, type metadata accessor for SystemFormatStyle.DateOffset, protocol conformance descriptor for SystemFormatStyle.DateOffset);
  *(a1 + 8) = v2;
}

char *initializeBufferWithCopyOfBuffer for SystemFormatStyle.DateOffset(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = (v17 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *&a1[a3[5]] = *&a2[a3[5]];
    *&a1[v8] = *&a2[v8];
    v9 = a3[7];
    v10 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
    v11 = *(*(v10 - 8) + 16);

    v11(&a1[v9], &a2[v9], v10);
    v12 = a3[9];
    *&a1[a3[8]] = *&a2[a3[8]];
    v13 = type metadata accessor for Locale();
    (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
    v14 = a3[10];
    v15 = type metadata accessor for Calendar();
    (*(*(v15 - 8) + 16))(&a1[v14], &a2[v14], v15);
    v16 = a3[12];
    a1[a3[11]] = a2[a3[11]];
    a1[v16] = a2[v16];
    a1[a3[13]] = a2[a3[13]];
  }

  return a1;
}

uint64_t destroy for SystemFormatStyle.DateOffset(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a2[7];
  v6 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a2[9];
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = a2[10];
  v10 = type metadata accessor for Calendar();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1 + v9, v10);
}

uint64_t initializeWithCopy for SystemFormatStyle.DateOffset(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[7];
  v9 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v10 = *(*(v9 - 8) + 16);

  v10(a1 + v8, a2 + v8, v9);
  v11 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
  v13 = a3[10];
  v14 = type metadata accessor for Calendar();
  (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
  v15 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v15) = *(a2 + v15);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t assignWithCopy for SystemFormatStyle.DateOffset(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);
  v7 = a3[7];
  v8 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v9 = a3[9];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = a3[10];
  v12 = type metadata accessor for Calendar();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t initializeWithTake for SystemFormatStyle.DateOffset(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[7];
  v9 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v10 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v11 = type metadata accessor for Locale();
  (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
  v12 = a3[10];
  v13 = type metadata accessor for Calendar();
  (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
  v14 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v14) = *(a2 + v14);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t assignWithTake for SystemFormatStyle.DateOffset(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  v7 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v8 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[10];
  v12 = type metadata accessor for Calendar();
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t type metadata completion function for SystemFormatStyle.DateOffset(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Locale();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Calendar();
        if (v5 <= 0x3F)
        {
          swift_initStructMetadata();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t specialized SystemFormatStyle.DateOffset.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x466465776F6C6C61 && a2 == 0xED000073646C6569 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C65694678616DLL && a2 == 0xED0000746E756F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1852270963 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69726156657A6973 && a2 == 0xEB00000000746E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7246657461647075 && a2 == 0xEF79636E65757165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6964496863746177 && a2 == 0xEA00000000006D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000018DD7ABF0 == a2)
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

uint64_t outlined init with copy of SystemFormatStyle.DateOffset(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Int specialized LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = HIDWORD(a7);
  v16 = type metadata accessor for IndexSet();
  v50 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  v51 = a4;
  if (a4)
  {
    HasDeadlinePassed = AGGraphHasDeadlinePassed();
    if (HasDeadlinePassed)
    {
      AGGraphCancelUpdate();
      v24 = 0.0;
    }

    else
    {
      v54 = 0;
      v55 = 0.0;
      MEMORY[0x1EEE9AC00](HasDeadlinePassed);
      *(&v46 - 2) = &v55;
      *&v53 = 2;
      _LazyLayout_Subviews.apply(from:style:to:)(&v54, &v53, partial apply for specialized closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:), (&v46 - 4));
      v24 = v55;
    }

    v25 = *&v24;
  }

  else
  {
    v24 = *&a3;
    v25 = a3;
  }

  v55 = *&v25;
  if (v24 <= 0.0)
  {
    return _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu0_12CoreGraphics7CGFloatVTf1c_n(&v55);
  }

  v48 = a9;
  v49 = a10;
  outlined init with copy of _LazyLayout_Subview?(a8, v22, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  if (*MEMORY[0x1E698D3F8] != v12)
  {
    Value = AGGraphGetValue();
    v26.n128_u64[0] = *(v22 + 13);
    if (v26.n128_f64[0] > 0.0 && *Value > 0.0 && vabdd_f64(v26.n128_f64[0], *Value) >= 0.01)
    {
      v47 = &v22[*(v20 + 60)];
      v41 = v47;
      v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

      *v41 = v42;
      v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

      v41[1] = v43;
      v54 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
      v46 = v44;
      type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v45 = type metadata accessor for EstimationCache(0);
      (*(v50 + 40))(&v47[*(v45 + 24)], v18, v16);
    }
  }

  v53 = 0.0;
  v54 = 0;
  LOBYTE(v52) = a11 & 1;
  v26.n128_f64[0] = v24;
  specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(&v53, &v54, 1, a5, v22, v48, v49, a11 & 0xFFFFFFFF00000001, v26, v24);
  *&v27 = COERCE_DOUBLE(EstimationCache.average.getter());
  v29 = v28;
  v30 = *&v27;
  v32 = v31;
  v52 = 2;
  result = _ViewList_Node.estimatedCount(style:)(&v52);
  v34 = result - v54;
  if (__OFSUB__(result, v54))
  {
    __break(1u);
  }

  else
  {
    if (v32)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v30;
    }

    v36 = (v29 + v35) * (v34 & ~(v34 >> 63)) + v53;
    if (v54)
    {
      v37 = 1;
    }

    else
    {
      v37 = v34 < 1;
    }

    v38 = v37;
    if ((v38 | v32))
    {
      v39 = v36;
    }

    else
    {
      v39 = v36 - v30;
    }

    v53 = v39;
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu2_12CoreGraphics7CGFloatVAPTf1c_n(&v55, &v53);
    return outlined destroy of _LazyLayout_Subview?(v22, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  }

  return result;
}

Swift::Int specialized LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = HIDWORD(a7);
  v16 = type metadata accessor for IndexSet();
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v47 - v21;
  v52 = a2;
  if (a2)
  {
    HasDeadlinePassed = AGGraphHasDeadlinePassed();
    if (HasDeadlinePassed)
    {
      AGGraphCancelUpdate();
      v24 = 0.0;
    }

    else
    {
      v55 = 0;
      v56 = 0.0;
      MEMORY[0x1EEE9AC00](HasDeadlinePassed);
      *(&v47 - 2) = &v56;
      *&v54 = 2;
      _LazyLayout_Subviews.apply(from:style:to:)(&v55, &v54, partial apply for specialized closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:), (&v47 - 4));
      v24 = v56;
    }

    v25 = *&v24;
  }

  else
  {
    v24 = *&a1;
    v25 = a1;
  }

  v56 = *&v25;
  if (v24 <= 0.0)
  {
    return _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu0_12CoreGraphics7CGFloatVTf1c_n(&v56);
  }

  v49 = a9;
  v50 = a10;
  outlined init with copy of _LazyLayout_Subview?(a8, v22, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  if (*MEMORY[0x1E698D3F8] != v12)
  {
    Value = AGGraphGetValue();
    v26.n128_u64[0] = *(v22 + 13);
    if (v26.n128_f64[0] > 0.0)
    {
      v41 = *(Value + 8);
      if (v41 > 0.0 && vabdd_f64(v26.n128_f64[0], v41) >= 0.01)
      {
        v48 = &v22[*(v20 + 60)];
        v42 = v48;
        v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

        *v42 = v43;
        v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

        v42[1] = v44;
        v55 = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        v47 = v45;
        type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E6328]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v46 = type metadata accessor for EstimationCache(0);
        (*(v51 + 40))(&v48[*(v46 + 24)], v18, v16);
      }
    }
  }

  v54 = 0.0;
  v55 = 0;
  LOBYTE(v53) = a11 & 1;
  v26.n128_f64[0] = v24;
  specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(&v54, &v55, 1, a5, v22, v49, v50, a11 & 0xFFFFFFFF00000001, v26, v24);
  *&v27 = COERCE_DOUBLE(EstimationCache.average.getter());
  v29 = v28;
  v30 = *&v27;
  v32 = v31;
  v53 = 2;
  result = _ViewList_Node.estimatedCount(style:)(&v53);
  v34 = result - v55;
  if (__OFSUB__(result, v55))
  {
    __break(1u);
  }

  else
  {
    if (v32)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v30;
    }

    v36 = (v29 + v35) * (v34 & ~(v34 >> 63)) + v54;
    if (v55)
    {
      v37 = 1;
    }

    else
    {
      v37 = v34 < 1;
    }

    v38 = v37;
    if ((v38 | v32))
    {
      v39 = v36;
    }

    else
    {
      v39 = v36 - v30;
    }

    v54 = v39;
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu2_12CoreGraphics7CGFloatVAPTf1c_n(&v56, &v54);
    return outlined destroy of _LazyLayout_Subview?(v22, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  }

  return result;
}

uint64_t LazyStack<>.proposeSizes(at:subviews:context:cache:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v31 = a1;
  v32 = a5;
  v30[1] = a2;
  v11 = type metadata accessor for MinorProperties(255, a6, a7, a4);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = *(v11 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (v30 - v19);
  (*(v13 + 16))(v15, a4, v12, v18);
  if ((*(v16 + 48))(v15, 1, v11) == 1)
  {
    return (*(v13 + 8))(v15, v12);
  }

  (*(v16 + 32))(v20, v15, v11);
  v22 = *v20;
  if (*v20 < 1)
  {
    return (*(v16 + 8))(v20, v11);
  }

  v30[0] = v7;

  v36 = MEMORY[0x1E69E7CC0];
  result = (*(a7 + 32))(a6, a7);
  v23 = v31 / v22 * v22;
  if ((v31 / v22 * v22) >> 64 == v23 >> 63)
  {
    v24 = result;
    v25 = Array.init()();
    v34 = v23;
    v35 = v25;
    v33 = 2 * v22;
    MEMORY[0x1EEE9AC00](v25);
    v30[-6] = a6;
    v30[-5] = a7;
    v30[-4] = &v35;
    v30[-3] = v20;
    LOBYTE(v30[-2]) = v24 & 1;
    v30[-1] = &v36;
    _LazyLayout_Subviews.apply(from:style:to:)(&v34, &v33, partial apply for closure #1 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:), &v30[-8]);
    v26 = v35;
    v33 = v35;
    type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [_LazyLayout_Subview] and conformance [A], &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6340]);
    v27 = Collection.isEmpty.getter();
    if ((v27 & 1) == 0)
    {
      v28 = MEMORY[0x1EEE9AC00](v27);
      v30[-2] = &v36;
      (*(a7 + 88))(v26, 0, 1, v20 + v29, partial apply for closure #2 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:), v28);
    }

    *v32 = v36;
    return (*(v16 + 8))(v20, v11);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyHStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  *&v10 = &unk_1F0070998;
  *(&v10 + 1) = partial apply for specialized implicit closure #2 in implicit closure #1 in LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:);
  return protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyHStackLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, v10, closure #1 in LazyStack<>.placementOfNearbySubview(_:subviews:context:cache:)partial apply, specialized LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:));
}

uint64_t protocol witness for LazyLayout.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:) in conformance LazyHStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  *&v10 = &unk_1F0070970;
  *(&v10 + 1) = partial apply for specialized implicit closure #2 in implicit closure #1 in LazyStack<>.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:);
  return protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyHStackLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, v10, closure #1 in LazyStack<>.placementOfNearbySubview(_:subviews:context:cache:)partial apply, specialized LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:));
}

void specialized LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, double (*a13)(uint64_t, double, double, double, double, double, double, double, double), uint64_t a14)
{
  if (a4)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a2 + 16) > a1)
    {
      v17 = a2 + 80 * a1;
      v18 = *(v17 + 56);
      *a9 = *(v17 + 40);
      *(a9 + 16) = v18;
      v19 = *(v17 + 88);
      *(a9 + 32) = *(v17 + 72);
      *(a9 + 48) = v19;
      return;
    }

    __break(1u);
    goto LABEL_84;
  }

  v20 = a8;
  v92 = a6;
  v93 = a7;
  v94 = a11;
  v95 = a10;
  v22 = *(a5 + 280);
  v23 = *(a5 + 288);
  v24 = *(a5 + 296);
  v25 = *(a5 + 104);
  v26 = *(a5 + 136);
  v109 = *(a5 + 120);
  v110 = v26;
  v111 = *(a5 + 152);
  v27 = *(a5 + 72);
  v106 = *(a5 + 56);
  v107 = v27;
  v91 = a5;
  v108[0] = *(a5 + 88);
  v108[1] = v25;
  if (v24)
  {
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v23, v22));
    v20 = a8;
  }

  v29 = v110;
  v30 = v111;
  LOBYTE(v106) = v94 & 1;
  v31 = swift_allocObject();
  v32 = v95;
  *(v31 + 16) = v20;
  *(v31 + 24) = v32;
  *(v31 + 32) = v106;
  *(v31 + 36) = HIDWORD(a11);
  Array<A>.motionVectors(closestTo:in:avoiding:distance:)(a1, a3, a13, a2, v112, v29.x, v29.y, v30.width, v30.height);
  if (v113)
  {

    if ((a1 & 0x8000000000000000) != 0)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (*(a2 + 16) <= a1)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v90 = v20;
    v33 = a2 + 80 * a1;
    v34 = *(v33 + 80);
    v108[0] = *(v33 + 64);
    v108[1] = v34;
    v109 = *(v33 + 96);
    v35 = *(v33 + 48);
    v106 = *(v33 + 32);
    v107 = v35;
    v36 = *(v93 + 96);
    type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
    v38 = *(v93 + *(v37 + 60));
    if (*(v38 + 16))
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v106, v104);
      *&v39 = COERCE_DOUBLE(EstimationCache.average.getter());
      v41 = *&v39;
      if (v42)
      {
        v41 = 0.0;
      }

      v43 = v40 + v41;
      if (*(v93 + 24))
      {
        goto LABEL_57;
      }
    }

    else
    {
      *&v39 = COERCE_DOUBLE(outlined init with copy of _LazyLayout_PlacedSubview(&v106, v104));
      v43 = 32.0;
      if (*(v93 + 24))
      {
LABEL_57:
        v67 = *(v33 + 40);
        v68 = *(v33 + 48);
        v103[0] = *(v33 + 49);
        *(v103 + 7) = *(v33 + 56);
        v69 = *(v33 + 64);
        v102[0] = *(v33 + 65);
        *(v102 + 3) = *(v33 + 68);
        v71 = *(v33 + 72);
        v70 = *(v33 + 80);
        v72 = *(v33 + 88);
        v94 = *(v33 + 96);
        v95 = v70;
        v114.origin = v29;
        v114.size = v30;
        v73 = 0.0;
        v74 = 0.0;
        if (!CGRectIsNull(v114))
        {
          v75 = v29.x + v30.width >= v29.x ? v29.x : v29.x + v30.width;
          v74 = v29.x > v29.x + v30.width ? v29.x : v29.x + v30.width;
          if (v75 > v74)
          {
            v74 = 0.0;
          }
        }

        v115.origin = v29;
        v115.size = v30;
        IsNull = CGRectIsNull(v115);
        outlined destroy of _LazyLayout_PlacedSubview(&v106);
        if (!IsNull)
        {
          v77 = v29.x + v30.width;
          if (v29.x + v30.width >= v29.x)
          {
            x = v29.x;
          }

          else
          {
            x = v29.x + v30.width;
          }

          if (v29.x > v77)
          {
            v77 = v29.x;
          }

          if (x > v77)
          {
            v73 = 0.0;
          }

          else
          {
            v73 = v77 - x;
          }
        }

        v79 = v67;
        if (v68)
        {
          v79 = 10.0;
        }

        v80 = v74 + v73 + v71 * v79;
        *a9 = v67;
        v81 = v72 + v79;
        *(a9 + 8) = v68;
        *(a9 + 9) = v103[0];
        if (v80 > v81)
        {
          v82 = v80;
        }

        else
        {
          v82 = v81;
        }

        *(a9 + 16) = *(v103 + 7);
        *(a9 + 24) = v69;
        *(a9 + 25) = v102[0];
        *(a9 + 28) = *(v102 + 3);
        v83 = v95;
        *(a9 + 32) = v71;
        *(a9 + 40) = v83;
        v84 = v94;
        *(a9 + 48) = v82;
        *(a9 + 56) = v84;
        return;
      }
    }

    if (*(v38 + 16))
    {
      v57 = (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v58 = ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v36 >= 0.0)
      {
        v58 = 0;
        v57 = 0;
      }

      if ((*&v36 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v57 = 1;
      }

      if ((*&v36 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
      {
        v57 = 1;
      }

      if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v57 = 1;
      }

      v59 = (*&v36 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v36 & 0x7FF0000000000000) == 0;
      if (!v59 && !v57 && !v58)
      {
        v60 = (*&v43 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v61 = ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (v43 >= 0.0)
        {
          v61 = 0;
          v60 = 0;
        }

        if ((*&v43 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v60 = 1;
        }

        if ((*&v43 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
        {
          v60 = 1;
        }

        if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
        {
          v60 = 1;
        }

        v62 = (*&v43 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v43 & 0x7FF0000000000000) == 0;
        if (!v62 && !v60 && !v61)
        {
          v63 = v36 / v43;
          if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          if (v63 <= -9.22337204e18)
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          if (v63 >= 9.22337204e18)
          {
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          v64 = *(v93 + 56);
          if (__OFADD__(v64, v63))
          {
LABEL_91:
            __break(1u);
            return;
          }

          v65 = *(v106 + 152);
          v100 = *(v93 + 56);
          v101 = v64;
          v98 = 0;
          v99 = 1;
          *&v104[0].f64[0] = 2;
          v89[2] = &v101;
          v89[3] = MEMORY[0x1EEE9AC00](v39);
          v89[4] = v65;
          v89[5] = &v98;
          v89[6] = v66;

          _LazyLayout_Subviews.apply(from:style:to:)(&v100, v104, a14, v89);

          if ((v99 & 1) == 0)
          {
            LOBYTE(v104[0].f64[0]) = v94 & 1;
            specialized LazyStack<>.boundingRect(at:subviews:context:cache:)(v98, v92, v91, v93, v90, v95, v94 & 0xFFFFFFFF00000001, v104);
            if ((v105 & 1) == 0)
            {
              outlined destroy of _LazyLayout_PlacedSubview(&v106);
              v85 = v107;
              v86 = *(&v107 + 1);
              v97 = v107;
              v96 = v108[0];
              v87 = v108[0];
              *a9 = *(&v106 + 1);
              *(a9 + 8) = v85;
              *(a9 + 16) = v86;
              *(a9 + 24) = v87;
              v88 = vaddq_f64(v104[0], vmulq_f64(v104[1], *(v108 + 8)));
              *(a9 + 32) = *(v108 + 8);
              *(a9 + 48) = v88;
              return;
            }
          }
        }
      }
    }

    goto LABEL_57;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v44 = v112[2];
  v45 = v112[3];
  v46 = a2 + 80 * a1;
  LODWORD(v98) = *(v46 + 49);
  *(&v98 + 3) = *(v46 + 52);
  v104[0] = *(v46 + 65);
  *(&v104[0].f64[1] + 7) = *(v46 + 80);
  v47 = v112[0] + *(v46 + 88);
  v48 = v112[1] + *(v46 + 96);
  v49 = *(v46 + 80);
  v108[0] = *(v46 + 64);
  v108[1] = v49;
  v109 = *(v46 + 96);
  v50 = *(v46 + 48);
  v106 = *(v46 + 32);
  v107 = v50;
  _LazyLayout_PlacedSubview.size.getter();
  v52 = v51;
  v54 = v53;

  v55 = v44 * v52;
  if (v52 == 0.0)
  {
    v55 = 0.0;
  }

  LOBYTE(v101) = 0;
  LOBYTE(v100) = 0;
  *a9 = v55;
  *(a9 + 8) = 0;
  if (v54 == 0.0)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = v45 * v54;
  }

  *(a9 + 9) = v98;
  *(a9 + 12) = *(&v98 + 3);
  *(a9 + 16) = v56;
  *(a9 + 24) = 0;
  *(a9 + 25) = v104[0];
  *(a9 + 40) = *(&v104[0].f64[1] + 7);
  *(a9 + 48) = v47;
  *(a9 + 56) = v48;
}

void specialized LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, double (*a13)(uint64_t, double, double, double, double, double, double, double, double), uint64_t a14)
{
  if (a4)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a2 + 16) > a1)
    {
      v17 = a2 + 80 * a1;
      v18 = *(v17 + 56);
      *a9 = *(v17 + 40);
      *(a9 + 16) = v18;
      v19 = *(v17 + 88);
      *(a9 + 32) = *(v17 + 72);
      *(a9 + 48) = v19;
      return;
    }

    __break(1u);
    goto LABEL_83;
  }

  v20 = a8;
  v21 = a7;
  v22 = a3;
  v92 = a6;
  v94 = a13;
  v23 = a11;
  v24 = a10;
  v93 = HIDWORD(a11);
  v25 = *(a5 + 280);
  v26 = *(a5 + 288);
  v27 = *(a5 + 296);
  v28 = *(a5 + 104);
  v29 = *(a5 + 136);
  v108 = *(a5 + 120);
  v109 = v29;
  v110 = *(a5 + 152);
  v30 = *(a5 + 72);
  v105 = *(a5 + 56);
  v106 = v30;
  v91 = a5;
  v107[0] = *(a5 + 88);
  v107[1] = v28;
  if (v27)
  {
    v90[9] = a9;
    ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v26, v25));
    v22 = a3;
    v20 = a8;
    v21 = a7;
    v24 = a10;
    v23 = a11;
  }

  v34 = v109;
  v35 = v110;
  LOBYTE(v105) = v23 & 1;
  v36 = swift_allocObject();
  *(v36 + 16) = v20;
  *(v36 + 24) = v24;
  *(v36 + 32) = v105;
  v37 = v94;
  *(v36 + 36) = v93;
  Array<A>.motionVectors(closestTo:in:avoiding:distance:)(a1, v22, v37, a2, v111, v34.x, v34.y, v35.width, v35.height);
  if (v112)
  {

    if ((a1 & 0x8000000000000000) != 0)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (*(a2 + 16) <= a1)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v93 = v23;
    v94 = v20;
    v38 = a2 + 80 * a1;
    v39 = *(v38 + 80);
    v107[0] = *(v38 + 64);
    v107[1] = v39;
    v108 = *(v38 + 96);
    v40 = *(v38 + 48);
    v105 = *(v38 + 32);
    v106 = v40;
    v41 = *(v21 + 96);
    type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
    v43 = *(v21 + *(v42 + 60));
    if (*(v43 + 16))
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v105, v103);
      *&v44 = COERCE_DOUBLE(EstimationCache.average.getter());
      v46 = *&v44;
      if (v47)
      {
        v46 = 0.0;
      }

      v48 = v45 + v46;
      if (*(v21 + 24))
      {
        goto LABEL_57;
      }
    }

    else
    {
      *&v44 = COERCE_DOUBLE(outlined init with copy of _LazyLayout_PlacedSubview(&v105, v103));
      v48 = 32.0;
      if (*(v21 + 24))
      {
LABEL_57:
        v102 = *(v38 + 40);
        v72 = *(v38 + 56);
        v73 = *(v38 + 64);
        v101[0] = *(v38 + 65);
        *(v101 + 7) = *(v38 + 72);
        v74 = *(v38 + 80);
        v94 = *(v38 + 88);
        v75 = *(v38 + 96);
        v113.origin = v34;
        v113.size = v35;
        v76 = 0.0;
        v77 = 0.0;
        if (!CGRectIsNull(v113))
        {
          v78 = v34.y + v35.height >= v34.y ? v34.y : v34.y + v35.height;
          v77 = v34.y > v34.y + v35.height ? v34.y : v34.y + v35.height;
          if (v78 > v77)
          {
            v77 = 0.0;
          }
        }

        v114.origin = v34;
        v114.size = v35;
        IsNull = CGRectIsNull(v114);
        outlined destroy of _LazyLayout_PlacedSubview(&v105);
        if (!IsNull)
        {
          v80 = v34.y + v35.height;
          if (v34.y + v35.height >= v34.y)
          {
            y = v34.y;
          }

          else
          {
            y = v34.y + v35.height;
          }

          if (v34.y > v80)
          {
            v80 = v34.y;
          }

          if (y > v80)
          {
            v76 = 0.0;
          }

          else
          {
            v76 = v80 - y;
          }
        }

        v82 = v72;
        if (v73)
        {
          v82 = 10.0;
        }

        v83 = v74 * v82 + v77 + v76;
        v84 = v75 + v82;
        if (v83 <= v84)
        {
          v83 = v84;
        }

        *a9 = v102;
        *(a9 + 16) = v72;
        *(a9 + 24) = v73;
        *(a9 + 25) = v101[0];
        *(a9 + 32) = *(v101 + 7);
        v85 = v94;
        *(a9 + 40) = v74;
        *(a9 + 48) = v85;
        *(a9 + 56) = v83;
        return;
      }
    }

    if (*(v43 + 16))
    {
      v62 = (*&v41 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v63 = ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v41 >= 0.0)
      {
        v63 = 0;
        v62 = 0;
      }

      if ((*&v41 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v62 = 1;
      }

      if ((*&v41 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
      {
        v62 = 1;
      }

      if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v62 = 1;
      }

      v64 = (*&v41 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v41 & 0x7FF0000000000000) == 0;
      if (!v64 && !v62 && !v63)
      {
        v65 = (*&v48 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v66 = ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (v48 >= 0.0)
        {
          v66 = 0;
          v65 = 0;
        }

        if ((*&v48 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v65 = 1;
        }

        if ((*&v48 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
        {
          v65 = 1;
        }

        if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
        {
          v65 = 1;
        }

        v67 = (*&v48 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v48 & 0x7FF0000000000000) == 0;
        if (!v67 && !v65 && !v66)
        {
          v68 = v41 / v48;
          if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          if (v68 <= -9.22337204e18)
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          if (v68 >= 9.22337204e18)
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          v69 = *(v21 + 56);
          if (__OFADD__(v69, v68))
          {
LABEL_90:
            __break(1u);
            return;
          }

          v70 = *(v105 + 152);
          v99 = *(v21 + 56);
          v100 = v69;
          v97 = 0;
          v98 = 1;
          *&v103[0].f64[0] = 2;
          v90[2] = &v100;
          v90[3] = MEMORY[0x1EEE9AC00](v44);
          v90[4] = v70;
          v90[5] = &v97;
          v90[6] = v71;

          _LazyLayout_Subviews.apply(from:style:to:)(&v99, v103, a14, v90);

          if ((v98 & 1) == 0)
          {
            LOBYTE(v103[0].f64[0]) = v93 & 1;
            specialized LazyStack<>.boundingRect(at:subviews:context:cache:)(v97, v92, v91, v21, v94, v24, v93 & 0xFFFFFFFF00000001, v103);
            if ((v104 & 1) == 0)
            {
              outlined destroy of _LazyLayout_PlacedSubview(&v105);
              v86 = v106;
              v87 = *(&v106 + 1);
              v96 = v106;
              v95 = v107[0];
              v88 = v107[0];
              *a9 = *(&v105 + 1);
              *(a9 + 8) = v86;
              *(a9 + 16) = v87;
              *(a9 + 24) = v88;
              v89 = vaddq_f64(v103[0], vmulq_f64(v103[1], *(v107 + 8)));
              *(a9 + 32) = *(v107 + 8);
              *(a9 + 48) = v89;
              return;
            }
          }
        }
      }
    }

    goto LABEL_57;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v49 = v111[2];
  v50 = v111[3];
  v51 = a2 + 80 * a1;
  LODWORD(v97) = *(v51 + 49);
  *(&v97 + 3) = *(v51 + 52);
  v103[0] = *(v51 + 65);
  *(&v103[0].f64[1] + 7) = *(v51 + 80);
  v52 = v111[0] + *(v51 + 88);
  v53 = v111[1] + *(v51 + 96);
  v54 = *(v51 + 80);
  v107[0] = *(v51 + 64);
  v107[1] = v54;
  v108 = *(v51 + 96);
  v55 = *(v51 + 48);
  v105 = *(v51 + 32);
  v106 = v55;
  _LazyLayout_PlacedSubview.size.getter();
  v57 = v56;
  v59 = v58;

  v60 = v49 * v57;
  if (v57 == 0.0)
  {
    v60 = 0.0;
  }

  LOBYTE(v100) = 0;
  LOBYTE(v99) = 0;
  *a9 = v60;
  *(a9 + 8) = 0;
  if (v59 == 0.0)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = v50 * v59;
  }

  *(a9 + 9) = v97;
  *(a9 + 12) = *(&v97 + 3);
  *(a9 + 16) = v61;
  *(a9 + 24) = 0;
  *(a9 + 25) = v103[0];
  *(a9 + 40) = *(&v103[0].f64[1] + 7);
  *(a9 + 48) = v52;
  *(a9 + 56) = v53;
}

uint64_t LazyStack<>.firstIndex<A>(of:subviews:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v22 - v15;
  v17 = *(a3 + 32);
  v18 = *(a3 + 40);
  if ((*(a6 + 32))(a4, a6, v14))
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v25 = v19;
  v20 = (*(a6 + 72))(v16, &v25, a4, a6);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  result = 0;
  if (v20 >= 1 && v25 > 0.0)
  {
    v24 = 2 * v20;
    return _LazyLayout_Subviews.firstIndex<A>(id:style:)(a1, &v24, a5, v23);
  }

  return result;
}

double LazyStack.headerAnchor.getter()
{
  return 0.5;
}

{
  return 0.5;
}

uint64_t implicit closure #2 in LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:)(double *a1)
{
  _StringGuts.grow(_:)(24);

  strcpy(v3, "sizeThatFits(");
  v1 = Double.description.getter();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](0x72657A203E2D2029, 0xE90000000000006FLL);
  return v3[0];
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e76VyxG0E0RtzrlE12boundingRect2at8subviews7context5cacheSo6CGRectVSgSi_AA01_C15M50_SubviewsVAA01_cM17_PlacementContextVAFtFSSyXEfu0_SiSo0Z0VTf1c_n(uint64_t a1, double a2, double a3, double a4, double a5)
{
  type metadata accessor for Logger?(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, static Log.lazyStack);
  outlined init with copy of EstimationCache(v18, v13, type metadata accessor for Logger?);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of EstimationCache(v13, type metadata accessor for Logger?);
  }

  (*(v15 + 32))(v17, v13, v14);
  v28 = 0;
  v29 = -2.68156159e154;
  _StringGuts.grow(_:)(25);
  v32 = v28;
  v33 = v29;
  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7AD70);
  v28 = a1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v20);

  MEMORY[0x193ABEDD0](544434464, 0xE400000000000000);
  v28 = *&a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  v22 = v32;
  v21 = *&v33;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v28);
    *(v25 + 12) = 2080;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v28);

    *(v25 + 14) = v27;
    _os_log_impl(&dword_18D018000, v23, v24, "%s: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v26, -1, -1);
    MEMORY[0x193AC4820](v25, -1, -1);
  }

  else
  {
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk57LL8subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M43_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu_SNy12CoreGraphics7CGFloatVGTf1c_n(double a1, double a2)
{
  type metadata accessor for Logger?(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Log.lazyStack);
  outlined init with copy of EstimationCache(v12, v7, type metadata accessor for Logger?);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of EstimationCache(v7, type metadata accessor for Logger?);
  }

  (*(v9 + 32))(v11, v7, v8);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v25 = 0xD00000000000001BLL;
  v26 = 0x800000018DD7ADB0;
  v23 = a2;
  v24 = a1;
  v21 = 0;
  v22 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v21, v22);

  v15 = v25;
  v14 = v26;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v25);
    *(v18 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v25);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v19, -1, -1);
    MEMORY[0x193AC4820](v18, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk57LL8subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M44_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu0_SNy12CoreGraphics7CGFloatVGTf1c_n(double a1, double a2)
{
  type metadata accessor for Logger?(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Log.lazyStack);
  outlined init with copy of EstimationCache(v12, v7, type metadata accessor for Logger?);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of EstimationCache(v7, type metadata accessor for Logger?);
  }

  (*(v9 + 32))(v11, v7, v8);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v25 = 0x28646563616C70;
  v26 = 0xE700000000000000;
  v23 = a2;
  v24 = a1;
  v21 = 0;
  v22 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v21, v22);

  MEMORY[0x193ABEDD0](0x5D5B203E2D2029, 0xE700000000000000);
  v15 = v25;
  v14 = v26;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v25);
    *(v18 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v25);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v19, -1, -1);
    MEMORY[0x193AC4820](v18, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e45VyxG0E0RtzrlE24resolvedPlacerProperties33_973ghijk73LL8subviews7context5cacheAA0D9PlacementAJLLVyxG_AA0qH0AJLLVyxGtSgAA01_C15m49_SubviewsV_AA01_cr1_Q7ContextVAFztFSSyXEfu0_AA0c6L7R0V_Tg5AEyALGTf1c_n(uint64_t a1, double a2)
{
  type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  type metadata accessor for Logger?(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, static Log.lazyStack);
  outlined init with copy of EstimationCache(v15, v10, type metadata accessor for Logger?);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of EstimationCache(v10, type metadata accessor for Logger?);
  }

  (*(v12 + 32))(v14, v10, v11);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v25 = 0xD000000000000016;
  v26 = 0x800000018DD7AD90;
  outlined init with copy of _LazyLayout_Subview?(a1, v6, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  if (*(*&v6[*(v4 + 60)] + 16))
  {
    EstimationCache.average.getter();
  }

  outlined destroy of _LazyLayout_Subview?(v6, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  v17 = Double.description.getter();
  MEMORY[0x193ABEDD0](v17);

  v19 = v25;
  v18 = v26;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136315394;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v25);
    *(v22 + 12) = 2080;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v25);

    *(v22 + 14) = v24;
    _os_log_impl(&dword_18D018000, v20, v21, "%s: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v23, -1, -1);
    MEMORY[0x193AC4820](v22, -1, -1);
  }

  else
  {
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu0_12CoreGraphics7CGFloatVTf1c_n(double *a1)
{
  type metadata accessor for Logger?(0);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, static Log.lazyStack);
  outlined init with copy of EstimationCache(v9, v4, type metadata accessor for Logger?);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of EstimationCache(v4, type metadata accessor for Logger?);
  }

  (*(v6 + 32))(v8, v4, v5);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  strcpy(v19, "sizeThatFits(");
  HIWORD(v19[1]) = -4864;
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  MEMORY[0x193ABEDD0](0x72657A203E2D2029, 0xE90000000000006FLL);
  v13 = v19[0];
  v12 = v19[1];
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, v19);
    *(v16 + 12) = 2080;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v19);

    *(v16 + 14) = v18;
    _os_log_impl(&dword_18D018000, v14, v15, "%s: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v17, -1, -1);
    MEMORY[0x193AC4820](v16, -1, -1);
  }

  else
  {
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu2_12CoreGraphics7CGFloatVAPTf1c_n(double *a1, double *a2)
{
  type metadata accessor for Logger?(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, static Log.lazyStack);
  outlined init with copy of EstimationCache(v10, v5, type metadata accessor for Logger?);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of EstimationCache(v5, type metadata accessor for Logger?);
  }

  (*(v7 + 32))(v9, v5, v6);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  strcpy(v21, "sizeThatFits(");
  HIWORD(v21[1]) = -4864;
  v12 = Double.description.getter();
  MEMORY[0x193ABEDD0](v12);

  MEMORY[0x193ABEDD0](0x203E2D2029, 0xE500000000000000);
  v13 = Double.description.getter();
  MEMORY[0x193ABEDD0](v13);

  v15 = v21[0];
  v14 = v21[1];
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, v21);
    *(v18 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v21);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v19, -1, -1);
    MEMORY[0x193AC4820](v18, -1, -1);
  }

  else
  {
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu1_12CoreGraphics7CGFloatVTf1c_n(double *a1)
{
  type metadata accessor for Logger?(0);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, static Log.lazyStack);
  outlined init with copy of EstimationCache(v9, v4, type metadata accessor for Logger?);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of EstimationCache(v4, type metadata accessor for Logger?);
  }

  (*(v6 + 32))(v8, v4, v5);
  strcpy(v19, "translate by ");
  HIWORD(v19[1]) = -4864;
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  v13 = v19[0];
  v12 = v19[1];
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, v19);
    *(v16 + 12) = 2080;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v19);

    *(v16 + 14) = v18;
    _os_log_impl(&dword_18D018000, v14, v15, "%s: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v17, -1, -1);
    MEMORY[0x193AC4820](v16, -1, -1);
  }

  else
  {
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzx34_cK11_PlacementsVztFSSyXEfu6_AA0c6L7K0V_Tg5SNy12CoreGraphics7CGFloatVGAEyALGAA01_cM11_PlacementsVTf1c_n(double *a1, uint64_t a2, double a3, double a4)
{
  type metadata accessor for Logger?(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, static Log.lazyStack);
  outlined init with copy of EstimationCache(v16, v11, type metadata accessor for Logger?);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of EstimationCache(v11, type metadata accessor for Logger?);
  }

  (*(v13 + 32))(v15, v11, v12);
  v30 = a2;
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v35 = 0x28646563616C70;
  v36 = 0xE700000000000000;
  v33 = a4;
  v34 = a3;
  v31 = 0;
  v32 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v31, v32);

  MEMORY[0x193ABEDD0](0x203E2D2029, 0xE500000000000000);
  v18 = a1[6];
  v33 = a1[7];
  v34 = v18;
  v31 = 0;
  v32 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v31, v32);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v19 = a1[8];
  v33 = a1[9];
  v34 = v19;
  v31 = 0;
  v32 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v31, v32);

  MEMORY[0x193ABEDD0](0x696C61766E69202CLL, 0xEB00000000203A64);
  if (*(v30 + 40))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v30 + 40))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v20, v21);

  v23 = v35;
  v22 = v36;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v35);
    *(v26 + 12) = 2080;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v35);

    *(v26 + 14) = v28;
    _os_log_impl(&dword_18D018000, v24, v25, "%s: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v27, -1, -1);
    MEMORY[0x193AC4820](v26, -1, -1);
  }

  else
  {
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu2_12CoreGraphics7CGFloatVAA01_cM17_PlacementContextVAA4AxisOTf1c_nTm(uint64_t a1, char a2, unint64_t a3, double a4)
{
  type metadata accessor for Logger?(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, static Log.lazyStack);
  outlined init with copy of EstimationCache(v13, v8, type metadata accessor for Logger?);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of EstimationCache(v8, type metadata accessor for Logger?);
  }

  (*(v10 + 32))(v12, v8, v9);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v24 = 0x2064696C61766E69;
  v25 = a3;
  v15 = Double.description.getter();
  MEMORY[0x193ABEDD0](v15);

  MEMORY[0x193ABEDD0](544437792, 0xE400000000000000);
  v16 = Double.description.getter();
  MEMORY[0x193ABEDD0](v16);

  v18 = v24;
  v17 = v25;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, &v24);
    *(v21 + 12) = 2080;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v24);

    *(v21 + 14) = v23;
    _os_log_impl(&dword_18D018000, v19, v20, "%s: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v22, -1, -1);
    MEMORY[0x193AC4820](v21, -1, -1);
  }

  else
  {
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu5_12CoreGraphics7CGFloatVAPTf1c_n(double a1, double a2)
{
  type metadata accessor for Logger?(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, static Log.lazyStack);
  outlined init with copy of EstimationCache(v10, v5, type metadata accessor for Logger?);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of EstimationCache(v5, type metadata accessor for Logger?);
  }

  (*(v7 + 32))(v9, v5, v6);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  strcpy(v21, "invalid #3; ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  v12 = Double.description.getter();
  MEMORY[0x193ABEDD0](v12);

  MEMORY[0x193ABEDD0](544437792, 0xE400000000000000);
  v13 = Double.description.getter();
  MEMORY[0x193ABEDD0](v13);

  v15 = v21[0];
  v14 = v21[1];
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD75AB0, v21);
    *(v18 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v21);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v19, -1, -1);
    MEMORY[0x193AC4820](v18, -1, -1);
  }

  else
  {
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e76VyxG0E0RtzrlE12boundingRect2at8subviews7context5cacheSo6CGRectVSgSi_AA01_C15M50_SubviewsVAA01_cM17_PlacementContextVAFtFSSyXEfu0_SiSo0Z0VTf1c_n(uint64_t a1, double a2, double a3, double a4, double a5)
{
  type metadata accessor for Logger?(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, static Log.lazyStack);
  outlined init with copy of EstimationCache(v18, v13, type metadata accessor for Logger?);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of EstimationCache(v13, type metadata accessor for Logger?);
  }

  (*(v15 + 32))(v17, v13, v14);
  v28 = 0;
  v29 = -2.68156159e154;
  _StringGuts.grow(_:)(25);
  v32 = v28;
  v33 = v29;
  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7AD70);
  v28 = a1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v20);

  MEMORY[0x193ABEDD0](544434464, 0xE400000000000000);
  v28 = *&a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  v22 = v32;
  v21 = *&v33;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v28);
    *(v25 + 12) = 2080;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v28);

    *(v25 + 14) = v27;
    _os_log_impl(&dword_18D018000, v23, v24, "%s: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v26, -1, -1);
    MEMORY[0x193AC4820](v25, -1, -1);
  }

  else
  {
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk57LL8subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M43_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu_SNy12CoreGraphics7CGFloatVGTf1c_n(double a1, double a2)
{
  type metadata accessor for Logger?(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Log.lazyStack);
  outlined init with copy of EstimationCache(v12, v7, type metadata accessor for Logger?);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of EstimationCache(v7, type metadata accessor for Logger?);
  }

  (*(v9 + 32))(v11, v7, v8);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v25 = 0xD00000000000001BLL;
  v26 = 0x800000018DD7ADB0;
  v23 = a2;
  v24 = a1;
  v21 = 0;
  v22 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v21, v22);

  v15 = v25;
  v14 = v26;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v25);
    *(v18 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v25);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v19, -1, -1);
    MEMORY[0x193AC4820](v18, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk57LL8subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M44_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu0_SNy12CoreGraphics7CGFloatVGTf1c_n(double a1, double a2)
{
  type metadata accessor for Logger?(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Log.lazyStack);
  outlined init with copy of EstimationCache(v12, v7, type metadata accessor for Logger?);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of EstimationCache(v7, type metadata accessor for Logger?);
  }

  (*(v9 + 32))(v11, v7, v8);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v25 = 0x28646563616C70;
  v26 = 0xE700000000000000;
  v23 = a2;
  v24 = a1;
  v21 = 0;
  v22 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v21, v22);

  MEMORY[0x193ABEDD0](0x5D5B203E2D2029, 0xE700000000000000);
  v15 = v25;
  v14 = v26;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v25);
    *(v18 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v25);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v19, -1, -1);
    MEMORY[0x193AC4820](v18, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e45VyxG0E0RtzrlE24resolvedPlacerProperties33_973ghijk73LL8subviews7context5cacheAA0D9PlacementAJLLVyxG_AA0qH0AJLLVyxGtSgAA01_C15m49_SubviewsV_AA01_cr1_Q7ContextVAFztFSSyXEfu0_AA0c6L7R0V_Tg5AEyALGTf1c_n(uint64_t a1, double a2)
{
  type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  type metadata accessor for Logger?(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, static Log.lazyStack);
  outlined init with copy of EstimationCache(v15, v10, type metadata accessor for Logger?);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of EstimationCache(v10, type metadata accessor for Logger?);
  }

  (*(v12 + 32))(v14, v10, v11);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v25 = 0xD000000000000016;
  v26 = 0x800000018DD7AD90;
  outlined init with copy of _LazyLayout_Subview?(a1, v6, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  if (*(*&v6[*(v4 + 60)] + 16))
  {
    EstimationCache.average.getter();
  }

  outlined destroy of _LazyLayout_Subview?(v6, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache<LazyVStackLayout>);
  v17 = Double.description.getter();
  MEMORY[0x193ABEDD0](v17);

  v19 = v25;
  v18 = v26;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136315394;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v25);
    *(v22 + 12) = 2080;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v25);

    *(v22 + 14) = v24;
    _os_log_impl(&dword_18D018000, v20, v21, "%s: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v23, -1, -1);
    MEMORY[0x193AC4820](v22, -1, -1);
  }

  else
  {
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu0_12CoreGraphics7CGFloatVTf1c_n(double *a1)
{
  type metadata accessor for Logger?(0);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, static Log.lazyStack);
  outlined init with copy of EstimationCache(v9, v4, type metadata accessor for Logger?);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of EstimationCache(v4, type metadata accessor for Logger?);
  }

  (*(v6 + 32))(v8, v4, v5);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  strcpy(v19, "sizeThatFits(");
  HIWORD(v19[1]) = -4864;
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  MEMORY[0x193ABEDD0](0x72657A203E2D2029, 0xE90000000000006FLL);
  v13 = v19[0];
  v12 = v19[1];
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, v19);
    *(v16 + 12) = 2080;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v19);

    *(v16 + 14) = v18;
    _os_log_impl(&dword_18D018000, v14, v15, "%s: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v17, -1, -1);
    MEMORY[0x193AC4820](v16, -1, -1);
  }

  else
  {
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e103VyxG0E0RtzrlE12sizeThatFits12proposedSize8subviews7context5cacheSo6CGSizeVAA012ProposedViewJ0V_AA01_C15M53_SubviewsVAA01_cq1_J17AndSpacingContextVAFtFSSyXEfu2_12CoreGraphics7CGFloatVAPTf1c_n(double *a1, double *a2)
{
  type metadata accessor for Logger?(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, static Log.lazyStack);
  outlined init with copy of EstimationCache(v10, v5, type metadata accessor for Logger?);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of EstimationCache(v5, type metadata accessor for Logger?);
  }

  (*(v7 + 32))(v9, v5, v6);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  strcpy(v21, "sizeThatFits(");
  HIWORD(v21[1]) = -4864;
  v12 = Double.description.getter();
  MEMORY[0x193ABEDD0](v12);

  MEMORY[0x193ABEDD0](0x203E2D2029, 0xE500000000000000);
  v13 = Double.description.getter();
  MEMORY[0x193ABEDD0](v13);

  v15 = v21[0];
  v14 = v21[1];
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, v21);
    *(v18 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v21);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v19, -1, -1);
    MEMORY[0x193AC4820](v18, -1, -1);
  }

  else
  {
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu1_12CoreGraphics7CGFloatVTf1c_n(double *a1)
{
  type metadata accessor for Logger?(0);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, static Log.lazyStack);
  outlined init with copy of EstimationCache(v9, v4, type metadata accessor for Logger?);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of EstimationCache(v4, type metadata accessor for Logger?);
  }

  (*(v6 + 32))(v8, v4, v5);
  strcpy(v19, "translate by ");
  HIWORD(v19[1]) = -4864;
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  v13 = v19[0];
  v12 = v19[1];
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, v19);
    *(v16 + 12) = 2080;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v19);

    *(v16 + 14) = v18;
    _os_log_impl(&dword_18D018000, v14, v15, "%s: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v17, -1, -1);
    MEMORY[0x193AC4820](v16, -1, -1);
  }

  else
  {
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzx34_cK11_PlacementsVztFSSyXEfu6_AA0c6L7K0V_Tg5SNy12CoreGraphics7CGFloatVGAEyALGAA01_cM11_PlacementsVTf1c_n(double *a1, uint64_t a2, double a3, double a4)
{
  type metadata accessor for Logger?(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, static Log.lazyStack);
  outlined init with copy of EstimationCache(v16, v11, type metadata accessor for Logger?);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of EstimationCache(v11, type metadata accessor for Logger?);
  }

  (*(v13 + 32))(v15, v11, v12);
  v30 = a2;
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v35 = 0x28646563616C70;
  v36 = 0xE700000000000000;
  v33 = a4;
  v34 = a3;
  v31 = 0;
  v32 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v31, v32);

  MEMORY[0x193ABEDD0](0x203E2D2029, 0xE500000000000000);
  v18 = a1[6];
  v33 = a1[7];
  v34 = v18;
  v31 = 0;
  v32 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v31, v32);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v19 = a1[8];
  v33 = a1[9];
  v34 = v19;
  v31 = 0;
  v32 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v31, v32);

  MEMORY[0x193ABEDD0](0x696C61766E69202CLL, 0xEB00000000203A64);
  if (*(v30 + 40))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v30 + 40))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v20, v21);

  v23 = v35;
  v22 = v36;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v35);
    *(v26 + 12) = 2080;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v35);

    *(v26 + 14) = v28;
    _os_log_impl(&dword_18D018000, v24, v25, "%s: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v27, -1, -1);
    MEMORY[0x193AC4820](v26, -1, -1);
  }

  else
  {
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu2_12CoreGraphics7CGFloatVAA01_cM17_PlacementContextVAA4AxisOTf1c_nTm(uint64_t a1, char a2, unint64_t a3, double a4)
{
  type metadata accessor for Logger?(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, static Log.lazyStack);
  outlined init with copy of EstimationCache(v13, v8, type metadata accessor for Logger?);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of EstimationCache(v8, type metadata accessor for Logger?);
  }

  (*(v10 + 32))(v12, v8, v9);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v24 = 0x2064696C61766E69;
  v25 = a3;
  v15 = Double.description.getter();
  MEMORY[0x193ABEDD0](v15);

  MEMORY[0x193ABEDD0](544437792, 0xE400000000000000);
  v16 = Double.description.getter();
  MEMORY[0x193ABEDD0](v16);

  v18 = v24;
  v17 = v25;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, &v24);
    *(v21 + 12) = 2080;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v24);

    *(v21 + 14) = v23;
    _os_log_impl(&dword_18D018000, v19, v20, "%s: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v22, -1, -1);
    MEMORY[0x193AC4820](v21, -1, -1);
  }

  else
  {
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e54VyxG0E0RtzrlE5place8subviews7context5cache2inyAA01_C15m11_SubviewsV_x26_cK17_PlacementContextVAFzX29_cK11_PlacementsVztFSSyXEfu5_12CoreGraphics7CGFloatVAPTf1c_n(double a1, double a2)
{
  type metadata accessor for Logger?(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, static Log.lazyStack);
  outlined init with copy of EstimationCache(v10, v5, type metadata accessor for Logger?);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of EstimationCache(v5, type metadata accessor for Logger?);
  }

  (*(v7 + 32))(v9, v5, v6);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  strcpy(v21, "invalid #3; ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  v12 = Double.description.getter();
  MEMORY[0x193ABEDD0](v12);

  MEMORY[0x193ABEDD0](544437792, 0xE400000000000000);
  v13 = Double.description.getter();
  MEMORY[0x193ABEDD0](v13);

  v15 = v21[0];
  v14 = v21[1];
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018DD758E0, v21);
    *(v18 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v21);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v19, -1, -1);
    MEMORY[0x193AC4820](v18, -1, -1);
  }

  else
  {
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t implicit closure #4 in LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:)(double *a1, double *a2)
{
  _StringGuts.grow(_:)(22);

  strcpy(v5, "sizeThatFits(");
  v2 = Double.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](0x203E2D2029, 0xE500000000000000);
  v3 = Double.description.getter();
  MEMORY[0x193ABEDD0](v3);

  return v5[0];
}

uint64_t implicit closure #3 in LazyStack<>.place(subviews:context:cache:in:)(double *a1)
{
  strcpy(v3, "translate by ");
  v1 = Double.description.getter();
  MEMORY[0x193ABEDD0](v1);

  return v3[0];
}

uint64_t implicit closure #4 in LazyStack<>.place(subviews:context:cache:in:)(uint64_t a1, char a2, double a3)
{
  _StringGuts.grow(_:)(20);

  v3 = Double.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](544437792, 0xE400000000000000);
  v4 = Double.description.getter();
  MEMORY[0x193ABEDD0](v4);

  return 0x2064696C61766E69;
}

uint64_t implicit closure #7 in LazyStack<>.place(subviews:context:cache:in:)(double a1, double a2)
{
  _StringGuts.grow(_:)(20);

  strcpy(v5, "invalid #3; ");
  v2 = Double.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](544437792, 0xE400000000000000);
  v3 = Double.description.getter();
  MEMORY[0x193ABEDD0](v3);

  return v5[0];
}

uint64_t implicit closure #8 in LazyStack<>.place(subviews:context:cache:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  _StringGuts.grow(_:)(33);

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  MEMORY[0x193ABEDD0](0x203E2D2029, 0xE500000000000000);
  type metadata accessor for _LazyStack_Cache(0, a3, a4, v8);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  MEMORY[0x193ABEDD0](0x696C61766E69202CLL, 0xEB00000000203A64);
  if (*(a2 + 40))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(a2 + 40))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v9, v10);

  return 0x28646563616C70;
}

unint64_t implicit closure #1 in LazyStack<>.placer(subviews:context:cache:)(double a1, double a2)
{
  _StringGuts.grow(_:)(29);

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  return 0xD00000000000001BLL;
}

uint64_t implicit closure #2 in LazyStack<>.placer(subviews:context:cache:)(double a1, double a2)
{
  _StringGuts.grow(_:)(16);

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  MEMORY[0x193ABEDD0](0x5D5B203E2D2029, 0xE700000000000000);
  return 0x28646563616C70;
}

unint64_t implicit closure #2 in LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _LazyStack_Cache(0, a2, a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v11 = 0xD000000000000016;
  v12 = 0x800000018DD7AD90;
  (*(v6 + 16))(v8, a1, v5);
  if (*(*&v8[*(v5 + 60)] + 16))
  {
    EstimationCache.average.getter();
  }

  (*(v6 + 8))(v8, v5);
  v9 = Double.description.getter();
  MEMORY[0x193ABEDD0](v9);

  return v11;
}

void StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, int *a6, double a7)
{
  v8 = v7;
  v45[0] = a1;
  type metadata accessor for [[_LazyLayout_Subview]](0);
  v15 = v14;
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type [[_LazyLayout_Subview]] and conformance [A], type metadata accessor for [[_LazyLayout_Subview]], MEMORY[0x1E69E6340]);
  if (Collection.isEmpty.getter())
  {
    return;
  }

  StackPlacement.reset(index:position:stoppingCondition:skipFirst:)(a2, 0, 1, 1, a6, a7);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v41 = v16;
  if (a4)
  {
    v17 = *(v7 + a6[10]);
    v18 = a6[14];
    v19 = *(v7 + v18);
    v20 = __OFSUB__(v19, v17);
    v21 = v19 - v17;
    if (v20)
    {
      goto LABEL_31;
    }

    *(v7 + v18) = v21;
    *(v16 + 16) = 1;
  }

  v40 = a3;
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type [[_LazyLayout_Subview]] and conformance [A], type metadata accessor for [[_LazyLayout_Subview]], MEMORY[0x1E69E6310]);
  v23 = v22;

  MEMORY[0x193ABE9C0](v45, v15, v23);
  v24 = v45[0];
  v25 = *(v45[0] + 16);
  if (!v25)
  {
LABEL_27:

    swift_beginAccess();
    *(v42 + 16) = 1;
    swift_beginAccess();
    *(v41 + 16) = 1;
    flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v40 & 1, v8, v41, a5 & 1, v43, v42, *(a6 + 2), *(a6 + 3));

    return;
  }

  v26 = a6[18];
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (v25 <= *(v24 + 16))
  {
    v29 = v28;
    v30 = *(v24 + 8 * v25 + 24);

    *(v8 + v26) = v30;
    if (v27 == 1)
    {
      *(v42 + 16) = 1;
      flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(0, v8, v41, a5 & 1, v43, v42, *(a6 + 2), *(a6 + 3));
    }

    else
    {
      if (v27)
      {
        *(v41 + 16) = 1;
        flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(0, v8, v41, a5 & 1, v43, v42, *(a6 + 2), *(a6 + 3));
        goto LABEL_25;
      }

      v31 = a6[19];
      v32 = *(v8 + v31);
      *(v8 + v31) = v30;
      if (v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v28;
      }

      *(v8 + v26) = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v8 + v26);
      if (isUniquelyReferenced_nonNull_native)
      {
        v36 = *(v35 + 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 1, v35);
        }

        swift_arrayDestroy();
        if (v36)
        {
          v37 = &v35[112 * v36];
          v38 = *(v35 + 2) - v36;
          memmove(v35 + 32, v37 + 32, 112 * v38);
          *(v35 + 2) = v38;
        }

        *(v8 + v26) = v35;
      }

      else
      {
        if (*(v35 + 3) >= 2uLL)
        {
          type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview>, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6F90]);
          v28 = swift_allocObject();
          v39 = _swift_stdlib_malloc_size(v28);
          v28[2] = 0;
          v28[3] = 2 * ((v39 - 32) / 112);
        }

        *(v8 + v26) = v28;
      }
    }

    v28 = v29;
LABEL_25:
    if (*(v43 + 16) == 1)
    {

      return;
    }

    ++v27;
    if (!--v25)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

double closure #1 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:)(uint64_t a1, _BYTE *a2, uint64_t *a3, void *a4, char a5)
{
  if (*(a1 + 101) & 1) != 0 || (*(a1 + 102))
  {
    if (a5)
    {
      v6 = a4[1];
    }

    else
    {
      v6 = 0;
    }

    if (a5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a4[1];
    }

    LOBYTE(v12) = (a5 & 1) == 0;
    _LazyLayout_Subview.proposeSize(_:)(v6, v12, v7, a5 & 1, &v12);
    type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_ProposedSubview], &type metadata for _LazyLayout_ProposedSubview, MEMORY[0x1E69E62F8]);
    Array.append(_:)();
    goto LABEL_10;
  }

  outlined init with copy of _LazyLayout_Subview(a1, &v12);
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
  Array.append(_:)();

  v11 = MEMORY[0x193ABF270](v10, &type metadata for _LazyLayout_Subview);

  if (v11 == *a4)
  {
LABEL_10:
    *a2 = 1;
  }

  return result;
}

uint64_t closure #2 in LazyStack<>.proposeSizes(at:subviews:context:cache:in:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = *(a2 + 24);
  LOBYTE(v6) = *(a2 + 8);
  _LazyLayout_Subview.proposeSize(_:)(v2, v6, v3, v4, &v6);
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_ProposedSubview], &type metadata for _LazyLayout_ProposedSubview, MEMORY[0x1E69E62F8]);
  return Array.append(_:)();
}

void closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)(uint64_t a1, BOOL *a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v11 = a7;
  v14 = a4;
  if (*(a1 + 101))
  {
    v16 = 1;
  }

  else if (*(a1 + 102))
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a1 + 96);
  v18 = *(a1 + 100);
  if ((*(a3 + 4) & 1) == 0)
  {
    if ((*(a1 + 100) & 1) == 0)
    {
      v20 = *a3 == v17;
      if (v16)
      {
LABEL_14:
        v19 = a5 >> 1;
        if (a5 >> 1 == 1)
        {
          goto LABEL_20;
        }

LABEL_15:
        if (!v19)
        {
          __break(1u);
          goto LABEL_46;
        }

        v21 = *a6;
        v22 = *a6 % v19;
        if (v22)
        {
          v23 = __OFSUB__(v19, v22);
          v24 = v19 - v22;
          if (v23)
          {
            goto LABEL_47;
          }

          v23 = __OFADD__(v21, v24);
          v25 = v21 + v24;
          if (v23)
          {
            goto LABEL_48;
          }

          *a6 = v25;
        }

LABEL_20:
        v26 = *a7 < *a6;
        *a2 = v26;
        if (v26)
        {
          goto LABEL_44;
        }

        goto LABEL_24;
      }

      if (*a3 == v17)
      {
        goto LABEL_23;
      }
    }

LABEL_12:
    v20 = 0;
    goto LABEL_14;
  }

  if ((*(a1 + 100) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v16)
  {
    v19 = a5 >> 1;
    v20 = 1;
    if (a5 >> 1 == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_23:
  v20 = 1;
LABEL_24:
  v47 = v17;
  v48 = a2;
  v46 = a9;
  v27 = *a4;
  if (v27 == 3)
  {
    goto LABEL_31;
  }

  if (v27 == v16 && v20)
  {
    goto LABEL_31;
  }

  v45 = a1;
  swift_beginAccess();
  a1 = v45;
  v9 = *(a8 + 16);
  if (!*(v9 + 16))
  {
    goto LABEL_31;
  }

  v42 = v11;
  swift_beginAccess();
  v11 = *(a9 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a9 + 16) = v11;
  v43 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v30 = v11[2];
    v29 = v11[3];
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v11);
      v31 = v30 + 1;
      v11 = v41;
    }

    v11[2] = v31;
    v11[v30 + 4] = v9;
    *(v46 + 16) = v11;
    swift_endAccess();
    swift_beginAccess();
    *(a8 + 16) = MEMORY[0x1E69E7CC0];

    v14 = v43;
    a1 = v45;
    v11 = v42;
LABEL_31:
    outlined init with copy of _LazyLayout_Subview(a1, v49);
    swift_beginAccess();
    type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
    v9 = a8 + 16;
    Array.append(_:)();
    swift_endAccess();
    if (!v16)
    {
      break;
    }

    if (!__OFADD__(*a6, a5 >> 1))
    {
      *a6 += a5 >> 1;
      goto LABEL_43;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    *(v46 + 16) = v11;
  }

  if (__OFADD__(*a6, 1))
  {
    goto LABEL_49;
  }

  v32 = v11;
  ++*a6;
  swift_beginAccess();

  v34 = MEMORY[0x193ABF270](v33, &type metadata for _LazyLayout_Subview);

  v35 = v34 == a5 >> 1;
  v11 = v32;
  if (v35)
  {
    swift_beginAccess();
    v36 = *(a8 + 16);
    if (*(v36 + 16))
    {
      swift_beginAccess();
      v37 = *(v46 + 16);

      v38 = swift_isUniquelyReferenced_nonNull_native();
      *(v46 + 16) = v37;
      v44 = v14;
      if ((v38 & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
        *(v46 + 16) = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
      }

      v37[2] = v40 + 1;
      v37[v40 + 4] = v36;
      *(v46 + 16) = v37;
      swift_endAccess();
      swift_beginAccess();
      *(a8 + 16) = MEMORY[0x1E69E7CC0];

      v14 = v44;
      v11 = v32;
    }
  }

LABEL_43:
  *v48 = *v11 < *a6;
  v17 = v47;
LABEL_44:
  *a3 = v17;
  *(a3 + 4) = v18;
  *v14 = v16;
}

double (*implicit closure #1 in LazyStack<>.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:)(uint64_t a1, uint64_t a2, uint64_t a3))(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in LazyStack<>.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:);
}

uint64_t implicit closure #2 in LazyStack<>.boundingRect(at:subviews:context:cache:)(double a1, double a2, double a3, double a4)
{
  _StringGuts.grow(_:)(25);
  MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD7AD70);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v4);

  MEMORY[0x193ABEDD0](544434464, 0xE400000000000000);
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EstimationCache(unint64_t *a1, uint64_t *a2)
{
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ12CoreGraphics7CGFloatV_SiTt1g5(*a1, *a2) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ12CoreGraphics7CGFloatV_SiTt1g5(a1[1], a2[1]))
  {

    JUMPOUT(0x193ABDD70);
  }

  return 0;
}

uint64_t implicit closure #3 in StackPlacement.place(subviews:from:position:stopping:style:)(double a1, double a2, double a3)
{
  _StringGuts.grow(_:)(26);

  strcpy(v6, "placing from #");
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v4 = Double.description.getter();
  MEMORY[0x193ABEDD0](v4);

  MEMORY[0x193ABEDD0](544106784, 0xE400000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  return v6[0];
}

uint64_t specialized StackPlacement.log(_:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Logger?(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, static Log.lazyStack);
  outlined init with copy of EstimationCache(v16, v11, type metadata accessor for Logger?);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of EstimationCache(v11, type metadata accessor for Logger?);
  }

  (*(v13 + 32))(v15, v11, v12);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  strcpy(v31, "placing from #");
  HIBYTE(v31[1]) = -18;
  v27 = a5;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v18);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v19 = Double.description.getter();
  MEMORY[0x193ABEDD0](v19);

  MEMORY[0x193ABEDD0](544106784, 0xE400000000000000);
  v29 = a3;
  v30 = a2;
  v27 = 0;
  v28 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v27, v28);

  v21 = v31[0];
  v20 = v31[1];
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000047, 0x800000018DD75AD0, v31);
    *(v24 + 12) = 2080;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v31);

    *(v24 + 14) = v26;
    _os_log_impl(&dword_18D018000, v22, v23, "%s: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v25, -1, -1);
    MEMORY[0x193AC4820](v24, -1, -1);
  }

  else
  {
  }

  return (*(v13 + 8))(v15, v12);
}

{
  type metadata accessor for Logger?(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, static Log.lazyStack);
  outlined init with copy of EstimationCache(v16, v11, type metadata accessor for Logger?);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of EstimationCache(v11, type metadata accessor for Logger?);
  }

  (*(v13 + 32))(v15, v11, v12);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  strcpy(v31, "placing from #");
  HIBYTE(v31[1]) = -18;
  v27 = a5;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v18);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v19 = Double.description.getter();
  MEMORY[0x193ABEDD0](v19);

  MEMORY[0x193ABEDD0](544106784, 0xE400000000000000);
  v29 = a3;
  v30 = a2;
  v27 = 0;
  v28 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v27, v28);

  v21 = v31[0];
  v20 = v31[1];
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000047, 0x800000018DD75980, v31);
    *(v24 + 12) = 2080;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v31);

    *(v24 + 14) = v26;
    _os_log_impl(&dword_18D018000, v22, v23, "%s: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v25, -1, -1);
    MEMORY[0x193AC4820](v24, -1, -1);
  }

  else
  {
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t StackPlacement.placeSection(_:from:)(__int128 *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = (v3 + *(a3 + 80));
  outlined destroy of _LazyLayout_Subview?(v8, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[6] = 0u;
  StackPlacement.flushMinorGroup()(a3);
  result = StackPlacement.shouldStop()(a3);
  if (result)
  {
    return result;
  }

  v10 = a1[3];
  v36 = a1[2];
  v37 = v10;
  v38 = *(a1 + 8);
  v39 = 0;
  v11 = a1[1];
  v34 = *a1;
  v35 = v11;
  v12 = _LazyLayout_Section.header.getter(v33);
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v27 = v13;
  v28 = v14;
  v29 = v4;
  v30 = a2;
  v32 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v39, &v32, partial apply for closure #1 in StackPlacement.placeSection(_:from:), v26);
  outlined destroy of _LazyLayout_Subviews(v33);
  result = StackPlacement.shouldStop()(a3);
  if (result)
  {
    return result;
  }

  v15 = a1[3];
  v36 = a1[2];
  v37 = v15;
  v38 = *(a1 + 8);
  v16 = a1[1];
  v34 = *a1;
  v35 = v16;
  _LazyLayout_Section.content.getter(v33);
  MEMORY[0x1EEE9AC00](v17);
  v27 = v13;
  v28 = v14;
  v29 = v4;
  v32 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(a2, &v32, partial apply for closure #2 in StackPlacement.placeSection(_:from:), v26);
  result = outlined destroy of _LazyLayout_Subviews(v33);
  v18 = *a2;
  if (*a2)
  {
    v19 = *(v4 + *(a3 + 40)) & 0x7FFFFFFFFFFFFFFFLL;
    if (v19 != 1)
    {
      if (v19)
      {
        v20 = v18 % v19;
        v21 = __OFSUB__(v18, v20);
        v22 = v18 - v20;
        if (!v21)
        {
          *a2 = v22;
          goto LABEL_8;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

LABEL_8:
  StackPlacement.flushMinorGroup()(a3);
  result = StackPlacement.shouldStop()(a3);
  if ((result & 1) == 0 || *(v4 + *(a3 + 44)) < *(v4 + *(a3 + 64)) && (*(v4 + *(a3 + 48)) & 2) != 0)
  {
    v32 = 0;
    v23 = a1[3];
    v36 = a1[2];
    v37 = v23;
    v38 = *(a1 + 8);
    v24 = a1[1];
    v34 = *a1;
    v35 = v24;
    _LazyLayout_Section.footer.getter(v33);
    MEMORY[0x1EEE9AC00](v25);
    v27 = v13;
    v28 = v14;
    v29 = v4;
    v30 = a2;
    v31 = 2;
    _LazyLayout_Subviews.apply(from:style:to:)(&v32, &v31, partial apply for closure #3 in StackPlacement.placeSection(_:from:), v26);
    return outlined destroy of _LazyLayout_Subviews(v33);
  }

  return result;
}

void StackPlacement.placeHeaderOrFooter(start:subview:kind:)(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = v4;
  v8 = *a3;
  v9 = *a1;
  if (*a1)
  {
    v10 = *(v4 + *(a4 + 40));
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      *a1 = v12;
      if (v8 == 1)
      {
        v13 = *(a4 + 80);
        v14 = MEMORY[0x1E69E6720];
        outlined init with copy of _LazyLayout_Subview?(v4 + v13, &v77, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
        v15 = v77;
        outlined destroy of _LazyLayout_Subview?(&v77, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v14, type metadata accessor for [_LazyLayout_Subview]);
        if (!v15)
        {
          outlined destroy of _LazyLayout_Subview?(v4 + v13, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
          outlined init with copy of _LazyLayout_Subview(a2, v4 + v13);
        }
      }

      return;
    }

    __break(1u);
    goto LABEL_65;
  }

  v16 = *(a4 + 60);
  if ((*(v4 + v16) & 1) == 0)
  {
    v18 = *(a4 + 36);
    v19 = *(v4 + v18);
    v20 = v4 + *(a4 + 40);
    if (v19)
    {
      v21 = *(v20 + 8);
    }

    else
    {
      v21 = 0;
    }

    if (*(v4 + v18))
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v20 + 8);
    }

    v23 = *(v4 + *(a4 + 76));
    v66 = v4 + *(a4 + 40);
    v65 = *(a4 + 36);
    v69 = v23;
    v68 = v22;
    v67 = v21;
    if (v23)
    {
      if (!*(v23 + 16))
      {
LABEL_67:
        __break(1u);
        return;
      }

      outlined init with copy of _LazyLayout_Subview(v23 + 32, &v77);
    }

    else
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v77 = 0u;
    }

    v63 = *(a4 + 16);
    v64 = *(a4 + 24);
    (*(v64 + 40))();
    v24 = *(a2 + 8);
    v25 = *(LazyLayoutViewCache.item(data:)((a2 + 16)) + 44);

    v26 = *MEMORY[0x1E698D3F8];
    v74 = v24;
    v75 = v25;
    v76 = v26;
    v70 = v67;
    v71 = v19 ^ 1;
    v72 = v68;
    v73 = v19;
    LayoutProxy.lengthThatFits(_:in:)(&v70, v19);
    v28 = v27;
    MEMORY[0x1EEE9AC00](v29);
    v30 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply));
    v32 = v31;
    outlined destroy of _LazyLayout_Subview?(&v77, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
    if (v32)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v30;
    }

    if (v69)
    {
      v34 = *&v33;
    }

    else
    {
      v34 = 0;
    }

    StackPlacement.addMeasurements(length:spacing:)(v34, v69 == 0, a4, v28);
    v35 = *(a4 + 64);
    v36 = v33 + *(v5 + v35);
    *(v5 + v35) = v36;
    if (StackPlacement.isVisible(length:)(a4, v28))
    {
      StackPlacement.addVisibleSubview(length:spacing:)(a4, v28, v33);
    }

    else
    {
      if ((*(v5 + *(a4 + 48)) & 2) == 0 || v8 != 2)
      {
        if (v8 == 1)
        {
          v46 = *(a4 + 80);
          v47 = MEMORY[0x1E69E6720];
          outlined init with copy of _LazyLayout_Subview?(v5 + v46, &v77, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
          v48 = v77;
          outlined destroy of _LazyLayout_Subview?(&v77, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v47, type metadata accessor for [_LazyLayout_Subview]);
          if (!v48)
          {
            outlined destroy of _LazyLayout_Subview?(v5 + v46, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
            outlined init with copy of _LazyLayout_Subview(a2, v5 + v46);
          }
        }

        goto LABEL_51;
      }

      if (*(v5 + *(a4 + 88) + 8) < *(v5 + *(a4 + 88)))
      {
LABEL_51:
        *(v5 + v35) = v28 + v36;
        goto LABEL_52;
      }
    }

    StackPlacement.flushPendingHeader()(a4);
    v36 = *(v5 + v35);
    v37 = *(v5 + v65) == 0;
    if (*(v5 + v65))
    {
      v38 = 0.0;
    }

    else
    {
      v38 = *(v5 + v35);
    }

    if (*(v5 + v65))
    {
      v39 = *(v5 + v35);
    }

    else
    {
      v39 = 0.0;
    }

    v40 = *(v66 + 8);
    if (*(v5 + v65))
    {
      v41 = *(v66 + 8);
    }

    else
    {
      v41 = v28;
    }

    *&v77 = v41;
    if (!v37)
    {
      v40 = v28;
    }

    BYTE8(v77) = 0;
    *&v78 = v40;
    BYTE8(v78) = 0;
    if (v8 == 2)
    {
      v44 = (*(v64 + 56))(v63);
    }

    else
    {
      v42 = 0.5;
      v43 = 0.5;
      if (v8 != 1)
      {
LABEL_50:
        StackPlacement.emit(_:at:size:anchor:)(v38, v39, v42, v43, a2, &v77, a4);
        goto LABEL_51;
      }

      (*(v64 + 48))(v63);
    }

    v42 = v44;
    v43 = v45;
    goto LABEL_50;
  }

  *(v4 + v16) = 0;
  if (v8 == 1)
  {
    v17 = *(a4 + 80);
    outlined destroy of _LazyLayout_Subview?(v5 + v17, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
    outlined init with copy of _LazyLayout_Subview(a2, v5 + v17);
  }

LABEL_52:
  v49 = *(v5 + *(a4 + 40));
  v50 = *(a4 + 56);
  v51 = *(v5 + v50);
  v11 = __OFADD__(v51, v49);
  v52 = v51 + v49;
  if (v11)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  *(v5 + v50) = v52;
  if (v49 < 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v49)
  {
    v53 = *(a4 + 72);
    v54 = *(v5 + v53);
    do
    {
      outlined init with copy of _LazyLayout_Subview(a2, &v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
      }

      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      if (v56 >= v55 >> 1)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v54);
      }

      *(v54 + 2) = v56 + 1;
      v57 = &v54[112 * v56];
      v58 = v77;
      v59 = v79;
      *(v57 + 3) = v78;
      *(v57 + 4) = v59;
      *(v57 + 2) = v58;
      v60 = v80;
      v61 = v81;
      v62 = v83;
      *(v57 + 7) = v82;
      *(v57 + 8) = v62;
      *(v57 + 5) = v60;
      *(v57 + 6) = v61;
      --v49;
    }

    while (v49);
    *(v5 + v53) = v54;
  }

  swapSubviews(_:_:)((v5 + *(a4 + 76)), (v5 + *(a4 + 72)));
}

void $defer #1 <A>() in StackPlacement.flushMinorGroup()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StackPlacement(0, a2, a3, a4);
  v6 = *(v5 + 72);
  v7 = (a1 + *(v5 + 76));

  swapSubviews(_:_:)(v7, (a1 + v6));
}

void specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(a1, a2, a3, a4, a5, a6, closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply, specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
}

{
  specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
}

void specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(char a1, uint64_t *a2, _BYTE *a3, char a4, _BYTE *a5, _BYTE *a6, void (*a7)(uint64_t *__return_ptr, _OWORD *), double (*a8)(uint64_t, uint64_t, void, uint64_t, unint64_t, double))
{
  v14 = a2 + 17;
  v13 = a2[17];
  v15 = *(v13 + 16);
  if ((a1 & 1) != 0 || v15)
  {
    v16 = a2 + 18;
    v17 = a2[18];
    if (!v17)
    {
LABEL_43:
      __break(1u);
      return;
    }

    if (v15)
    {
      v8 = a3;

      a3 = v8;
      if (*(v17 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v13 = 0;
      if (*(v17 + 16))
      {
LABEL_6:
        v45 = a3;
        outlined init with copy of _LazyLayout_Subview(v17 + 32, &v54);
        if (v57 == 1)
        {

          outlined destroy of _LazyLayout_Subview(&v54);
        }

        else
        {
          v18 = v58;

          outlined destroy of _LazyLayout_Subview(&v54);
          if (v18 != 1)
          {
            v29 = *a2;
            v30 = a2[1];
            v31 = *(a2 + 6);
            v32 = *(a2 + 5);
            v53[0] = *(a2 + 16);
            v23 = a8(v17, v13, *&v29, v30, v53[0] | (v32 << 32), v31);
            v28 = v33;

LABEL_26:
            swift_beginAccess();
            if (*v45 == 1)
            {
              *(a2 + 14) = *(a2 + 14) - v23;
            }

            v34 = a2[12];
            if (v34)
            {
              swift_beginAccess();
              if (*v45)
              {
                *(a2 + 14) = *(a2 + 14) - v28;
              }
            }

            if (v28 + *(a2 + 14) <= *(a2 + 7) && (a1 & 1) == 0 && (a4 & 1) == 0)
            {
              swift_beginAccess();
              *a5 = 1;
LABEL_39:
              swapSubviews(_:_:)(v16, v14);
              return;
            }

            v35 = a2[4];
            v36 = __OFSUB__(v34, v35);
            v37 = v34 - v35;
            if (!v36)
            {
              swift_beginAccess();
              if (*a6 == 1 && (v37 & 0x8000000000000000) == 0)
              {
                a2[12] = v37;
              }

              goto LABEL_39;
            }

            __break(1u);
            goto LABEL_42;
          }
        }

        v38 = v14;
        outlined init with copy of _LazyLayout_Subview(v17 + 32, &v54);

        LOBYTE(v17) = *(a2 + 24);
        if (v17)
        {
          v14 = a2[5];
        }

        else
        {
          v14 = 0;
        }

        if (*(a2 + 24))
        {
          v8 = 0;
        }

        else
        {
          v8 = a2[5];
        }

        v40 = a6;
        v41 = a2 + 18;
        v39 = a5;
        if (v13)
        {
          if (!*(v13 + 16))
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          outlined init with copy of _LazyLayout_Subview(v13 + 32, v53);

          goto LABEL_21;
        }

LABEL_20:
        memset(v53, 0, 112);
LABEL_21:
        v19 = v55;
        v20 = *(LazyLayoutViewCache.item(data:)(v56) + 44);

        v21 = *MEMORY[0x1E698D3F8];
        v50 = v19;
        v51 = v20;
        v52 = v21;
        v46 = v14;
        v47 = v17 ^ 1;
        v48 = v8;
        v49 = v17;
        LayoutProxy.lengthThatFits(_:in:)(&v46, v17);
        v23 = v22;
        MEMORY[0x1EEE9AC00](v24);
        v25 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(a7));
        v27 = v26;
        outlined destroy of _LazyLayout_Subview?(v53, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
        if (v27)
        {
          v28 = 0.0;
        }

        else
        {
          v28 = v25;
        }

        outlined destroy of _LazyLayout_Subview(&v54);
        a6 = v40;
        v16 = v41;
        v14 = v38;
        a5 = v39;
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_20;
  }
}

void flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a3;
  v63 = a6;
  v60 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = &v56 - v13;
  v64 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v21 = type metadata accessor for StackPlacement(0, a7, a8, v20);
  v22 = v21;
  v23 = *(a2 + *(v21 + 72));
  v24 = *(v23 + 16);
  v61 = a1;
  if ((a1 & 1) != 0 || v24)
  {
    v56 = a5;
    v25 = *(a2 + *(v21 + 76));
    if (!v25)
    {
      goto LABEL_40;
    }

    if (v24)
    {

      if (*(v25 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v23 = 0;
      if (*(v25 + 16))
      {
LABEL_6:
        outlined init with copy of _LazyLayout_Subview(v25 + 32, &v73);
        if (v76)
        {

          outlined destroy of _LazyLayout_Subview(&v73);
        }

        else
        {
          v26 = v77;

          outlined destroy of _LazyLayout_Subview(&v73);
          if ((v26 & 1) == 0)
          {
            (*(v64 + 16))(v19, a2, a7);
            v41 = a2 + v22[10];
            v43 = type metadata accessor for MinorProperties(0, a7, a8, v42);
            v44 = v57;
            v45 = v41 + *(v43 + 40);
            v46 = v58;
            (*(v57 + 16))(v58, v45, AssociatedTypeWitness);
            v36 = (*(a8 + 80))(v25, v23, v46, a7, a8);
            v40 = v47;

            (*(v44 + 8))(v58, AssociatedTypeWitness);
            (*(v64 + 8))(v19, a7);
LABEL_24:
            v48 = v62;
            swift_beginAccess();
            v49 = v63;
            if (*(v48 + 16) == 1)
            {
              *(a2 + v22[16]) = *(a2 + v22[16]) - v36;
            }

            v50 = v22[14];
            v51 = *(a2 + v50);
            if (v51)
            {
              swift_beginAccess();
              if (*(v48 + 16) == 1)
              {
                *(a2 + v22[16]) = *(a2 + v22[16]) - v40;
              }
            }

            if (v40 + *(a2 + v22[16]) <= *(a2 + v22[11]) && (v61 & 1) == 0 && (v60 & 1) == 0)
            {
              v52 = v56;
              swift_beginAccess();
              *(v52 + 16) = 1;
LABEL_37:
              swapSubviews(_:_:)((a2 + v22[19]), (a2 + v22[18]));
              return;
            }

            v53 = *(a2 + v22[10]);
            v54 = __OFSUB__(v51, v53);
            v55 = v51 - v53;
            if (!v54)
            {
              swift_beginAccess();
              if (*(v49 + 16) == 1 && (v55 & 0x8000000000000000) == 0)
              {
                *(a2 + v50) = v55;
              }

              goto LABEL_37;
            }

            __break(1u);
LABEL_40:
            __break(1u);
            return;
          }
        }

        outlined init with copy of _LazyLayout_Subview(v25 + 32, &v73);

        LODWORD(v25) = *(a2 + v22[9]);
        v27 = *(a2 + v22[10] + 8);
        LODWORD(AssociatedTypeWitness) = v25 ^ 1;
        if (v25)
        {
          a1 = v27;
        }

        else
        {
          a1 = 0;
        }

        if (v25)
        {
          v27 = 0;
        }

        v58 = v27;
        if (v23)
        {
          Array.subscript.getter();

LABEL_19:
          v28 = v64;
          (*(v64 + 16))(v16, a2, a7);
          v29 = (*(a8 + 40))(a7, a8);
          v31 = v30;
          (*(v28 + 8))(v16, a7);
          v32 = v74;
          v33 = *(LazyLayoutViewCache.item(data:)(v75) + 44);

          v34 = *MEMORY[0x1E698D3F8];
          v69 = v32;
          v70 = v33;
          v71 = v34;
          v65 = a1;
          v66 = AssociatedTypeWitness;
          v67 = v58;
          v68 = v25;
          LayoutProxy.lengthThatFits(_:in:)(&v65, v25);
          v36 = v35;
          MEMORY[0x1EEE9AC00](v37);
          *(&v56 - 4) = v29;
          *(&v56 - 24) = v31 & 1;
          *(&v56 - 23) = v25;
          *(&v56 - 2) = &v73;
          v38 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply));
          LOBYTE(v32) = v39;
          outlined destroy of _LazyLayout_Subview?(v72, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
          if (v32)
          {
            v40 = 0.0;
          }

          else
          {
            v40 = v38;
          }

          outlined destroy of _LazyLayout_Subview(&v73);
          goto LABEL_24;
        }

LABEL_18:
        memset(v72, 0, 112);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_18;
  }
}

uint64_t protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyVStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  *&v10 = &unk_1F0070948;
  *(&v10 + 1) = partial apply for specialized implicit closure #2 in implicit closure #1 in LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:);
  return protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyHStackLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, v10, closure #1 in LazyStack<>.placementOfNearbySubview(_:subviews:context:cache:)partial apply, specialized LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:));
}

uint64_t protocol witness for LazyLayout.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:) in conformance LazyVStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  *&v10 = &unk_1F0070920;
  *(&v10 + 1) = partial apply for specialized implicit closure #2 in implicit closure #1 in LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:);
  return protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyHStackLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, v10, partial apply for closure #1 in LazyStack<>.placementOfNearbySubview(_:subviews:context:cache:), specialized LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:));
}

double protocol witness for LazyLayout.boundingRect(at:subviews:context:cache:) in conformance LazyHStackLayout@<D0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, void (*a5)(_OWORD *__return_ptr, uint64_t, uint64_t, _BYTE *, uint64_t, uint64_t, uint64_t, unint64_t)@<X6>, uint64_t a6@<X8>)
{
  memcpy(__dst, __src, 0x129uLL);
  v12 = *v6;
  v13 = *(v6 + 8);
  v14 = *(v6 + 20);
  LOBYTE(v17[0]) = *(v6 + 16);
  a5(v17, a2, a3, __dst, a4, v12, v13, LOBYTE(v17[0]) | (v14 << 32));
  result = *v17;
  v16 = v17[1];
  *a6 = v17[0];
  *(a6 + 16) = v16;
  *(a6 + 32) = v18;
  return result;
}

uint64_t specialized closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:)(uint64_t a1, _BYTE *a2, void *a3, __n128 a4)
{
  if (AGGraphHasDeadlinePassed())
  {
    result = AGGraphCancelUpdate();
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = *(LazyLayoutViewCache.item(data:)((a1 + 16)) + 44);

    v9 = *MEMORY[0x1E698D3F8];
    v16 = v7;
    v17 = v8;
    v18 = v9;
    if (one-time initialization token for unspecified != -1)
    {
      swift_once();
    }

    v12 = static _ProposedSize.unspecified;
    v13 = byte_1ED52ECF8;
    v14 = qword_1ED52ED00;
    v15 = byte_1ED52ED08;
    result = LayoutProxy.size(in:)(&v12);
    *a3 = v11;
  }

  *a2 = 1;
  return result;
}

{
  if (AGGraphHasDeadlinePassed())
  {
    result = AGGraphCancelUpdate();
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = *(LazyLayoutViewCache.item(data:)((a1 + 16)) + 44);

    v9 = *MEMORY[0x1E698D3F8];
    v16 = v7;
    v17 = v8;
    v18 = v9;
    if (one-time initialization token for unspecified != -1)
    {
      swift_once();
    }

    v12 = static _ProposedSize.unspecified;
    v13 = byte_1ED52ECF8;
    v14 = qword_1ED52ED00;
    v15 = byte_1ED52ED08;
    result = LayoutProxy.size(in:)(&v12);
    *a3 = v11;
  }

  *a2 = 1;
  return result;
}

void specialized implicit closure #2 in implicit closure #1 in LazyStack<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  v14 = CGRectGetWidth(v19) * 0.5 + a5;
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  v15 = CGRectGetHeight(v20) * 0.5 + a6;

  CGRect.distance(to:)(v14, v15, a1, a2, a3, a4);
}

uint64_t specialized LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v9 = *a4;
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v12 = (v10 + 16);
  v32 = a1;
  v30 = 0;
  v31 = 1;
  v29 = 3;
  result = swift_allocObject();
  v14 = result;
  *(result + 16) = v11;
  v15 = (result + 16);
  v16 = v9 >> 1;
  v17 = (v9 >> 1) - 1;
  if (v9 >> 1 == 1)
  {
LABEL_6:
    v19 = __OFADD__(a2, v17);
    v21 = a2 + v17;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      v27 = a1;
      v28 = v21;
      v26[0] = v9;
      MEMORY[0x1EEE9AC00](result);
      v25[2] = &v30;
      v25[3] = &v29;
      v25[4] = v9;
      v25[5] = &v32;
      v25[6] = &v28;
      v25[7] = v14;
      v25[8] = v10;
      *a5 = _LazyLayout_Subviews.apply(from:style:to:)(&v27, v26, partial apply for closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:), v25) & 1;
      swift_beginAccess();
      a3 = *(v14 + 16);
      if (!*(a3 + 16))
      {
LABEL_12:
        swift_beginAccess();
        v24 = *(v10 + 16);

        return v24;
      }

      swift_beginAccess();
      a5 = *v12;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_9:
        v23 = a5[2];
        v22 = a5[3];
        if (v23 >= v22 >> 1)
        {
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, a5);
        }

        a5[2] = v23 + 1;
        a5[v23 + 4] = a3;
        *v12 = a5;
        swift_endAccess();
        *v15 = v11;

        goto LABEL_12;
      }
    }

    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a5[2] + 1, 1, a5);
    goto LABEL_9;
  }

  if (!v16)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = a2 % v16;
  if (!(a2 % v16))
  {
    goto LABEL_6;
  }

  v19 = __OFSUB__(v16, v18);
  v20 = v16 - v18;
  if (v19)
  {
    goto LABEL_16;
  }

  v19 = __OFADD__(a2, v20);
  a2 += v20;
  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *initializeBufferWithCopyOfBuffer for _LazyStack_Cache(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v8 = *(v6 + 80);
  v7 = *(v6 + 84);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v6 + 64);
  v11 = v9 + v10;
  if (v7)
  {
    v12 = v9 + v10;
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = type metadata accessor for IndexSet();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = (v15 | v8) <= 7 && ((*(v14 + 80) | v8) & 0x100000) == 0;
  if (v16 && ((-17 - v15) | v15) - *(*(v13 - 8) + 64) + ((-9 - (v15 | 7) - ((((((((((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v15 | 7) + 26 <= 0x18)
  {
    v17 = v13;
    if (v7)
    {
      if (!(*(v6 + 48))(((a2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v7, AssociatedTypeWitness))
      {
LABEL_31:
        *a1 = *a2;
        v22 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        v23 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v22 = *v23;
        (*(v6 + 16))(v22 + 1, v23 + 1, AssociatedTypeWitness);
        if (!v7)
        {
          *(a1 + v11) = 0;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (!*(a2 + v11))
      {
        goto LABEL_31;
      }

      v19 = (*(a2 + v11) - 1) << (8 * v11);
      if (v11 > 3)
      {
        v19 = 0;
      }

      if (v11)
      {
        v20 = v11 <= 3 ? v11 : 4;
        if (v20 > 2)
        {
          v21 = v20 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
        }

        else
        {
          v21 = v20 == 1 ? *a2 : *a2;
        }
      }

      else
      {
        v21 = 0;
      }

      if ((v21 | v19) == 0xFFFFFFFF)
      {
        goto LABEL_31;
      }
    }

    memcpy(a1, a2, v12);
LABEL_33:
    v24 = (a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = (a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    *(v24 + 8) = *(v25 + 8);
    *v24 = v26;
    v27 = ((a1 + v12 + 23) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((a2 + v12 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v28;
    v29 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
    v30 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v30;
    v31 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v33 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
    v34 = ((v32 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v33 = *v34;
    *((v33 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
    v37 = *v36;
    v36 += 15;
    *v35 = v37;
    v35 += 15;
    v38 = (v36 & 0xFFFFFFFFFFFFFFF8) + 8;
    *(v35 & 0xFFFFFFFFFFFFFFF8) = *(v36 & 0xFFFFFFFFFFFFFFF8);
    v39 = (v35 & 0xFFFFFFFFFFFFFFF8) + 8;
    v40 = *(v14 + 16);

    v40(v39, v38, v17);
    return a1;
  }

  v18 = *a2;
  *a1 = *a2;
  a1 = (v18 + (((v15 | v8) & 0xF8 ^ 0x1F8) & ((v15 | v8) + 16)));

  return a1;
}

unsigned __int16 *assignWithCopy for _LazyStack_Cache(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v54 = ~v8;
  if (!v7)
  {
    v14 = 8 * v10;
    if (*(a1 + v10))
    {
      v15 = (*(a1 + v10) - 1) << v14;
      if (v10 > 3)
      {
        v15 = 0;
      }

      if (v10)
      {
        v16 = v10 <= 3 ? ((v8 + 16) & ~v8) + *(v6 + 64) : 4;
        if (v16 > 2)
        {
          v17 = v16 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
        }

        else
        {
          v17 = v16 == 1 ? *a1 : *a1;
        }
      }

      else
      {
        v17 = 0;
      }

      if ((v17 | v15) != 0xFFFFFFFF)
      {
        if (!a2[v10])
        {
          goto LABEL_60;
        }

        v18 = (a2[v10] - 1) << v14;
        if (v10 > 3)
        {
          v18 = 0;
        }

        if (v10)
        {
          v19 = v10 <= 3 ? ((v8 + 16) & ~v8) + *(v6 + 64) : 4;
          if (v19 > 2)
          {
            v20 = v19 == 3 ? *a2 | (a2[2] << 16) : *a2;
          }

          else
          {
            v20 = v19 == 1 ? *a2 : *a2;
          }
        }

        else
        {
          v20 = 0;
        }

        if ((v20 | v18) == 0xFFFFFFFF)
        {
          goto LABEL_60;
        }

LABEL_52:
        if (v7)
        {
          v24 = v10;
        }

        else
        {
          v24 = v10 + 1;
        }

        memcpy(a1, a2, v24);
        goto LABEL_62;
      }
    }

    if (!a2[v10])
    {
LABEL_56:
      *a1 = *a2;
      v25 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      v26 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v25 = *v26;
      (*(v6 + 24))((v25 + v8 + 8) & v9, (v26 + v8 + 8) & v9, AssociatedTypeWitness);
      goto LABEL_62;
    }

    v21 = (a2[v10] - 1) << v14;
    if (v10 > 3)
    {
      v21 = 0;
    }

    if (v10)
    {
      if (v10 <= 3)
      {
        v22 = ((v8 + 16) & ~v8) + *(v6 + 64);
      }

      else
      {
        v22 = 4;
      }

      if (v22 > 2)
      {
        if (v22 == 3)
        {
          v23 = *a2 | (a2[2] << 16);
        }

        else
        {
          v23 = *a2;
        }
      }

      else if (v22 == 1)
      {
        v23 = *a2;
      }

      else
      {
        v23 = *a2;
      }
    }

    else
    {
      v23 = 0;
    }

    v13 = (v23 | v21) + 1;
LABEL_50:
    v9 = ~v8;
    if (v13)
    {
      (*(v6 + 8))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v54, AssociatedTypeWitness);
      goto LABEL_52;
    }

    goto LABEL_56;
  }

  v11 = *(v6 + 48);
  v12 = v11((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v9, v7, AssociatedTypeWitness);
  v13 = v11((((a2 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, v7, AssociatedTypeWitness);
  if (!v12)
  {
    goto LABEL_50;
  }

  if (v13)
  {
    goto LABEL_52;
  }

LABEL_60:
  *a1 = *a2;
  v27 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  (*(v6 + 16))((v27 + v8 + 8) & v54, (v28 + v8 + 8) & v54, AssociatedTypeWitness);
  if (!v7)
  {
    *(a1 + v10) = 0;
  }

LABEL_62:
  if (v7)
  {
    v29 = v10;
  }

  else
  {
    v29 = v10 + 1;
  }

  v30 = a1 + v29;
  v31 = &a2[v29];
  v32 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = *v33;
  *(v32 + 8) = *(v33 + 8);
  *v32 = v34;
  v35 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v35 = *v36;
  v35[1] = v36[1];
  v37 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v36 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v37 = *v38;
  v37[1] = v38[1];
  v39 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  v39[1] = v40[1];
  v41 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v40 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v41 = *v42;
  v43 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
  v44 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v43 = *v44;
  v45 = type metadata accessor for IndexSet();
  v46 = *(v45 - 8);
  v47 = *(v46 + 80);
  v48 = *(v46 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v49 = ((v43 + v47 + 8) & v48);
  v50 = v44 + v47 + 8;
  v51 = (v50 & v48) + 15;
  *v49 = *(v50 & v48);

  v52 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
  v51 &= 0xFFFFFFFFFFFFFFF8;
  *v52 = *v51;

  (*(v46 + 24))((v52 + v47 + 8) & ~v47, (v47 + 8 + v51) & ~v47, v45);
  return a1;
}

void *initializeWithTake for _LazyStack_Cache(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = ((v8 + 16) & ~v8) + *(v6 + 64);
  if (!v7)
  {
    if (!*(a2 + v10))
    {
      goto LABEL_24;
    }

    v11 = (*(a2 + v10) - 1) << (8 * v10);
    if (v10 > 3)
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10 <= 3 ? ((v8 + 16) & ~v8) + *(v6 + 64) : 4;
      if (v12 > 2)
      {
        v13 = v12 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v13 = v12 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v13 = 0;
    }

    if ((v13 | v11) == 0xFFFFFFFF)
    {
      goto LABEL_24;
    }

LABEL_20:
    if (v7)
    {
      v14 = v10;
    }

    else
    {
      v14 = v10 + 1;
    }

    memcpy(a1, a2, v14);
    goto LABEL_26;
  }

  if ((*(v6 + 48))((((a2 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v9, *(v6 + 84), AssociatedTypeWitness))
  {
    goto LABEL_20;
  }

LABEL_24:
  *a1 = *a2;
  v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  (*(v6 + 32))((v15 + v8 + 8) & v9, (v16 + v8 + 8) & v9, AssociatedTypeWitness);
  if (!v7)
  {
    *(a1 + v10) = 0;
  }

LABEL_26:
  if (v7)
  {
    v17 = v10;
  }

  else
  {
    v17 = v10 + 1;
  }

  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 8) = *(v21 + 8);
  *v20 = v22;
  v23 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  v29 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = type metadata accessor for IndexSet();
  v34 = *(v33 - 8);
  v35 = *(v34 + 32);
  v36 = *(v34 + 80);
  v37 = *(v34 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v38 = ((v31 + v36 + 8) & v37);
  v39 = ((v32 + v36 + 8) & v37);
  *v38 = *v39;
  v40 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  v41 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v40 = *v41;
  v35((v40 + v36 + 8) & ~v36, (v41 + v36 + 8) & ~v36, v33);
  return a1;
}

uint64_t getEnumTagSinglePayload for _LazyStack_Cache(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = v15;
  }

  if (!v7)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v13 + ((v12 + 16) & ~v12);
  v18 = v14 | 7;
  if (a2 <= v16)
  {
    goto LABEL_35;
  }

  v19 = *(*(v9 - 8) + 64) - ((-17 - v14) | v14) - ((-9 - v18 - ((((((((((v17 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v18) - 2;
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_15;
  }

  v22 = ((a2 - v16 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v22))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_22;
    }

LABEL_35:
    if (v8 < v15)
    {
      v26 = ((v14 + 8 + ((((((((((a1 + v17 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v18);
      if ((v11 & 0x80000000) != 0)
      {
        v31 = *(v10 + 48);

        return v31((v14 + 8 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
      }

      else
      {
        v27 = *v26;
        if (*v26 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }

    if (v7)
    {
      v29 = (*(v6 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, v7, AssociatedTypeWitness);
      v30 = v29 != 0;
      result = (v29 - 1);
      if (result != 0 && v30)
      {
        return result;
      }
    }

    return 0;
  }

  if (v22 > 0xFF)
  {
    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (v22 < 2)
  {
    goto LABEL_35;
  }

LABEL_15:
  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_35;
  }

LABEL_22:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v16 + (v25 | v23) + 1;
}

void storeEnumTagSinglePayload for _LazyStack_Cache(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v41 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for IndexSet();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (v17 <= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v17;
  }

  v19 = (v15 + 16) & ~v15;
  v16 = *(v8 + 64);
  v20 = v19 + v16;
  if (v9)
  {
    v21 = v19 + v16;
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = *(v13 + 80);
  v23 = *(v13 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v24 = v22 + 8;
  v25 = ((v22 + 16) & ~v22) + *(*(v11 - 8) + 64);
  v26 = ((v22 + 8 + ((((((((((v21 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v23) + v25;
  if (a3 <= v18)
  {
    goto LABEL_27;
  }

  if (v26 > 3)
  {
    v12 = 1;
    if (v18 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v29 = ~v18 + a2;
    if (v26 >= 4)
    {
      bzero(a1, v26);
      *a1 = v29;
      v30 = 1;
      if (v12 > 1)
      {
        goto LABEL_30;
      }

LABEL_74:
      if (v12)
      {
        a1[v26] = v30;
      }

      return;
    }

    v30 = (v29 >> (8 * v26)) + 1;
    if (v26)
    {
      v35 = v29 & ~(-1 << (8 * v26));
      bzero(a1, v26);
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          *a1 = v35;
          if (v12 <= 1)
          {
            goto LABEL_74;
          }
        }

        else
        {
          *a1 = v29;
          if (v12 <= 1)
          {
            goto LABEL_74;
          }
        }

LABEL_30:
        if (v12 == 2)
        {
          *&a1[v26] = v30;
        }

        else
        {
          *&a1[v26] = v30;
        }

        return;
      }

      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    if (v12 <= 1)
    {
      goto LABEL_74;
    }

    goto LABEL_30;
  }

  v27 = ((a3 - v18 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
  if (!HIWORD(v27))
  {
    if (v27 < 0x100)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    if (v27 >= 2)
    {
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }

LABEL_27:
    if (v18 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v12 = 4;
  if (v18 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v26] = 0;
  }

  else if (v12)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v10 >= v17)
  {
    if (v10 >= a2)
    {
      if (a2 >= v9)
      {
        if (v20 <= 3)
        {
          v39 = ~(-1 << (8 * v20));
        }

        else
        {
          v39 = -1;
        }

        if (v20)
        {
          v32 = v39 & (a2 - v9);
          if (v20 <= 3)
          {
            v33 = v20;
          }

          else
          {
            v33 = 4;
          }

          v34 = a1;
          goto LABEL_87;
        }
      }

      else
      {
        v38 = *(v41 + 56);

        v38((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v15, (a2 + 1), v9, AssociatedTypeWitness);
      }
    }

    else
    {
      if (v21 <= 3)
      {
        v36 = ~(-1 << (8 * v21));
      }

      else
      {
        v36 = -1;
      }

      if (v21)
      {
        v32 = v36 & (~v10 + a2);
        if (v21 <= 3)
        {
          v33 = v21;
        }

        else
        {
          v33 = 4;
        }

        v34 = a1;
        v20 = v21;
        goto LABEL_87;
      }
    }
  }

  else
  {
    a1 = ((v24 + (((((((((&a1[v21 + 23] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v23);
    if (v17 >= a2)
    {
      if ((v14 & 0x80000000) != 0)
      {
        v40 = *(v13 + 56);

        v40((v24 + ((a1 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v22, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v37 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v37 = (a2 - 1);
        }

        *a1 = v37;
      }
    }

    else
    {
      if (v25 <= 3)
      {
        v31 = ~(-1 << (8 * v25));
      }

      else
      {
        v31 = -1;
      }

      if (v25)
      {
        v32 = v31 & (~v17 + a2);
        if (v25 <= 3)
        {
          v33 = v25;
        }

        else
        {
          v33 = 4;
        }

        v34 = a1;
        v20 = v25;
LABEL_87:
        bzero(v34, v20);
        if (v33 > 2)
        {
          if (v33 == 3)
          {
            *a1 = v32;
            a1[2] = BYTE2(v32);
          }

          else
          {
            *a1 = v32;
          }
        }

        else if (v33 == 1)
        {
          *a1 = v32;
        }

        else
        {
          *a1 = v32;
        }
      }
    }
  }
}

char *initializeBufferWithCopyOfBuffer for EstimationCache(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    a1[1] = a2[1];
    v6 = *(a3 + 24);
    v8 = type metadata accessor for IndexSet();
    v9 = *(*(v8 - 8) + 16);

    v9(v5 + v6, a2 + v6, v8);
  }

  return v5;
}

char *assignWithCopy for EstimationCache(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for IndexSet();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  return a1;
}

char *initializeWithTake for EstimationCache(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = type metadata accessor for IndexSet();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithTake for EstimationCache(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for IndexSet();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for PlacementProperties(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = ((v7 + 16) & ~v7) + *(v6 + 64);
  if (v7 > 7 || (*(v6 + 80) & 0x100000) != 0 || ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v12 = AssociatedTypeWitness;
    *a1 = *a2;
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    (*(v6 + 16))(v13 + 1, v14 + 1, v12);
    v15 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = (a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v15 = *v16;
    *(v15 + 16) = *(v16 + 16);
    *(v15 + 17) = *(v16 + 17);
    v17 = ((v15 + 25) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v16 + 25) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    *((v17 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

void *assignWithCopy for PlacementProperties(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  (*(v8 + 24))((v5 + v10 + 8) & ~v10, (v6 + v10 + 8) & ~v10, AssociatedTypeWitness);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 40) + 7;
  v12 = (a1 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 16) = *(v13 + 16);
  *(v12 + 17) = *(v13 + 17);
  v14 = ((v12 + 25) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 25) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *initializeWithTake for PlacementProperties(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  (*(v8 + 32))((v5 + v10 + 8) & ~v10, (v6 + v10 + 8) & ~v10, AssociatedTypeWitness);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 32) + 7;
  v12 = (a1 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 16) = *(v13 + 16);
  *(v12 + 17) = *(v13 + 17);
  v14 = ((v12 + 25) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 25) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for PlacementProperties(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v5 + v10 + 8) & ~v10, (v6 + v10 + 8) & ~v10, AssociatedTypeWitness);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 24) + 7;
  v12 = (a1 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 16) = *(v13 + 16);
  *(v12 + 17) = *(v13 + 17);
  v14 = ((v12 + 25) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 25) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlacementProperties(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  v11 = ((v9 + 16) & ~v9) + v10;
  if (v8 < a2)
  {
    v12 = ((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v13 = v12 & 0xFFFFFFF8;
    if ((v12 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = a2 - v8 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *(a1 + v12);
        if (v17)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v17 = *(a1 + v12);
        if (v17)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v16)
    {
      v17 = *(a1 + v12);
      if (v17)
      {
LABEL_20:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          v19 = *a1;
        }

        else
        {
          v19 = 0;
        }

        v23 = v8 + (v19 | v18);
        return (v23 + 1);
      }
    }
  }

  if (v7 < 0xFE)
  {
    v22 = *(((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v22 >= 2)
    {
      v23 = (v22 + 2147483646) & 0x7FFFFFFF;
      return (v23 + 1);
    }

    return 0;
  }

  v20 = *(v6 + 48);

  return v20((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
}

void storeEnumTagSinglePayload for PlacementProperties(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 16) & ~v9) + *(v7 + 64);
  v12 = ((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v15 = 0;
    v16 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((v11 + 7) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a3 - v10 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v12] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v12] = 0;
      }

      else if (v15)
      {
        a1[v12] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v8 < 0xFE)
        {
          *((&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8) + 16) = a2 + 1;
        }

        else if (v8 >= a2)
        {
          v22 = *(v7 + 56);

          v22((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, a2);
        }

        else
        {
          if (v11 <= 3)
          {
            v19 = ~(-1 << (8 * v11));
          }

          else
          {
            v19 = -1;
          }

          if (v11)
          {
            v20 = v19 & (~v8 + a2);
            if (v11 <= 3)
            {
              v21 = v11;
            }

            else
            {
              v21 = 4;
            }

            bzero(a1, v11);
            if (v21 > 2)
            {
              if (v21 == 3)
              {
                *a1 = v20;
                a1[2] = BYTE2(v20);
              }

              else
              {
                *a1 = v20;
              }
            }

            else if (v21 == 1)
            {
              *a1 = v20;
            }

            else
            {
              *a1 = v20;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  if (((((((v11 + 7) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((((((v11 + 7) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v18 = ~v10 + a2;
    bzero(a1, ((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *&a1[v12] = v17;
    }

    else
    {
      *&a1[v12] = v17;
    }
  }

  else if (v15)
  {
    a1[v12] = v17;
  }
}

void *initializeBufferWithCopyOfBuffer for StackPlacement(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = type metadata accessor for IndexSet();
  v71 = *(v12 - 8);
  v13 = *(v71 + 80);
  v14 = v13;
  v15 = v13 | *(v6 + 80) & 0xF8 | v10;
  v16 = (v13 | *(v6 + 80) | v10) & 0x100000;
  v17 = v15 <= 7 && v16 == 0;
  if (v17 && (v18 = ((v10 + 16) & ~v10) + v11 + 7, ((-17 - v14) | v14) - *(*(v12 - 8) + 64) + ((-18 - ((v14 | 7) + ((((((((((((((((((((v18 + (((v10 | 7) + v7 + 1) & ~(v10 | 7))) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 43) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8))) | v14 | 7) + 26 <= 0x18))
  {
    v70 = v12;
    (*(v6 + 16))(a1, a2, v5);
    v19 = a2 + v7;
    *(a1 + v7) = *(a2 + v7);
    v20 = (a1 + v7) & 0xFFFFFFFFFFFFFFF8;
    v21 = ((v19 & 0xFFFFFFFFFFFFFFF8) + 8);
    *(v20 + 8) = *v21;
    v20 += 8;
    v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    v23 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    (*(v9 + 16))((v22 + (v10 | 8)) & ~v10, (v23 + (v10 | 8)) & ~v10, AssociatedTypeWitness);
    v24 = ((v18 + v20) & 0xFFFFFFFFFFFFFFF8);
    v25 = ((v21 + v18) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v25;
    v26 = ((v25 + 19) & 0xFFFFFFFFFFFFFFF8);
    v27 = v26 + 43;
    v28 = ((v24 + 19) & 0xFFFFFFFFFFFFFFF8);
    *v28 = *v26;
    v29 = (v28 + 11) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v26 + 11) & 0xFFFFFFFFFFFFFFF8;
    v31 = *v30;
    *(v29 + 8) = *(v30 + 8);
    *v29 = v31;
    v32 = (v28 + 27) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v26 + 27) & 0xFFFFFFFFFFFFFFF8;
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
    v34 = ((v28 + 43) & 0xFFFFFFFFFFFFFFF8);
    v35 = (v27 & 0xFFFFFFFFFFFFFFF8) + 15;
    v36 = (v27 & 0xFFFFFFFFFFFFFFF8) + 31;
    *v34 = *(v27 & 0xFFFFFFFFFFFFFFF8);
    v37 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 &= 0xFFFFFFFFFFFFFFF8;
    v38 = *v35;
    *(v37 + 8) = *(v35 + 8);
    *v37 = v38;
    v36 &= 0xFFFFFFFFFFFFFFF8;
    v39 = ((v34 + 31) & 0xFFFFFFFFFFFFFFF8);
    *v39 = *v36;
    v40 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
    v41 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v41 = *v40;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = *v43;

    if (v44 < 0xFFFFFFFF)
    {
      v50 = *v43;
      v51 = *(v43 + 32);
      *(v42 + 16) = *(v43 + 16);
      *(v42 + 32) = v51;
      *v42 = v50;
      v52 = *(v43 + 48);
      v53 = *(v43 + 64);
      v54 = *(v43 + 96);
      *(v42 + 80) = *(v43 + 80);
      *(v42 + 96) = v54;
      *(v42 + 48) = v52;
      *(v42 + 64) = v53;
    }

    else
    {
      *v42 = v44;
      *(v42 + 8) = *(v43 + 8);
      v45 = *(v43 + 40);
      *(v42 + 40) = v45;
      *(v42 + 48) = *(v43 + 48);
      v46 = **(v45 - 8);

      v46(v42 + 16, v43 + 16, v45);
      *(v42 + 56) = *(v43 + 56);
      *(v42 + 64) = *(v43 + 64);
      *(v42 + 68) = *(v43 + 68);
      *(v42 + 72) = *(v43 + 72);
      *(v42 + 80) = *(v43 + 80);
      v47 = *(v43 + 88);
      *(v42 + 92) = *(v43 + 92);
      *(v42 + 88) = v47;
      v48 = *(v43 + 99);
      *(v42 + 96) = *(v43 + 96);
      *(v42 + 99) = v48;
      *(v42 + 104) = *(v43 + 104);
    }

    v55 = ((v42 + 119) & 0xFFFFFFFFFFFFFFF8);
    v56 = ((v43 + 119) & 0xFFFFFFFFFFFFFFF8);
    *v55 = *v56;
    v57 = ((v55 + 15) & 0xFFFFFFFFFFFFFFF8);
    v58 = ((v56 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v57 = *v58;
    v59 = ((v57 + 23) & 0xFFFFFFFFFFFFFFF8);
    v60 = ((v58 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v59 = *v60;
    v61 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
    *v61 = *v62;
    *(v61 + 16) = *(v62 + 16);
    v63 = (v59 + 47) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v60 + 47) & 0xFFFFFFFFFFFFFFF8;
    v65 = *v64;
    v64 += 15;
    *v63 = v65;
    v63 += 15;
    v66 = (v64 & 0xFFFFFFFFFFFFFFF8) + 8;
    *(v63 & 0xFFFFFFFFFFFFFFF8) = *(v64 & 0xFFFFFFFFFFFFFFF8);
    v67 = (v63 & 0xFFFFFFFFFFFFFFF8) + 8;
    v68 = *(v71 + 16);

    v68(v67, v66, v70);
  }

  else
  {
    v49 = *a2;
    *a1 = *a2;
    a1 = (v49 + (((v15 | 7) + 16) & ~(v15 | 7)));
  }

  return a1;
}

uint64_t assignWithCopy for StackPlacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = (v6 + a2);
  *(v6 + a1) = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 24);
  v12 = v10 + 24;
  v13 = *(v10 + 80);
  v14 = (v13 | 7) + 1;
  v15 = ((v14 + v7) & ~(v13 | 7));
  v16 = (&v8[v14] & ~(v13 | 7));
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v11((v17 + v13 + 8) & ~v13, (v18 + v13 + 8) & ~v13, AssociatedTypeWitness);
  v19 = *(v12 + 40) + ((v13 + 16) & ~v13) + 7;
  v20 = ((v15 + v19) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v16 + v19) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v20[1] = v21[1];
  v22 = ((v20 + 19) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = (v22 + 11) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 11) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 8);
  *v24 = *v25;
  *(v24 + 8) = v26;
  v27 = (v22 + 27) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v23 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);
  v29 = (v22 + 43) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v23 + 43) & 0xFFFFFFFFFFFFFFF8;
  v31 = v30 + 15;
  v32 = *v30;
  v30 += 31;
  v33 = v29 + 15;
  *v29 = v32;
  v29 += 31;
  v33 &= 0xFFFFFFFFFFFFFFF8;
  v31 &= 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v24) = *(v31 + 8);
  *v33 = *v31;
  *(v33 + 8) = v24;
  v34 = (v30 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v29 & 0xFFFFFFFFFFFFFFF8) = *(v30 & 0xFFFFFFFFFFFFFFF8);
  v35 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;

  v35 &= 0xFFFFFFFFFFFFFFF8;
  v36 = (v34 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v35 = *(v34 & 0xFFFFFFFFFFFFFFF8);

  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = v36 & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  if (*v37 < 0xFFFFFFFFuLL)
  {
    if (v39 >= 0xFFFFFFFF)
    {
      *v37 = v39;
      *(v37 + 8) = *(v38 + 8);
      v43 = *(v38 + 40);
      *(v37 + 40) = v43;
      *(v37 + 48) = *(v38 + 48);
      v44 = **(v43 - 8);

      v44(v37 + 16, v38 + 16, v43);
      *(v37 + 56) = *(v38 + 56);
      *(v37 + 64) = *(v38 + 64);
      *(v37 + 68) = *(v38 + 68);
      *(v37 + 72) = *(v38 + 72);
      *(v37 + 80) = *(v38 + 80);
      v45 = *(v38 + 88);
      *(v37 + 92) = *(v38 + 92);
      *(v37 + 88) = v45;
      v46 = *(v38 + 99);
      *(v37 + 96) = *(v38 + 96);
      *(v37 + 99) = v46;
      *(v37 + 104) = *(v38 + 104);

      goto LABEL_8;
    }

LABEL_7:
    v47 = *v38;
    v48 = *(v38 + 32);
    *(v37 + 16) = *(v38 + 16);
    *(v37 + 32) = v48;
    *v37 = v47;
    v49 = *(v38 + 48);
    v50 = *(v38 + 64);
    v51 = *(v38 + 96);
    *(v37 + 80) = *(v38 + 80);
    *(v37 + 96) = v51;
    *(v37 + 48) = v49;
    *(v37 + 64) = v50;
    goto LABEL_8;
  }

  if (v39 < 0xFFFFFFFF)
  {

    __swift_destroy_boxed_opaque_existential_1((v37 + 16));

    goto LABEL_7;
  }

  *v37 = v39;

  *(v37 + 8) = *(v38 + 8);
  __swift_assign_boxed_opaque_existential_1((v37 + 16), (v38 + 16), v40);
  *(v37 + 56) = *(v38 + 56);

  *(v37 + 64) = *(v38 + 64);
  *(v37 + 68) = *(v38 + 68);
  *(v37 + 72) = *(v38 + 72);

  *(v37 + 80) = *(v38 + 80);

  v41 = *(v38 + 88);
  *(v37 + 92) = *(v38 + 92);
  *(v37 + 88) = v41;
  v42 = *(v38 + 96);
  *(v37 + 100) = *(v38 + 100);
  *(v37 + 96) = v42;
  *(v37 + 101) = *(v38 + 101);
  *(v37 + 102) = *(v38 + 102);
  *(v37 + 104) = *(v38 + 104);
LABEL_8:
  v52 = ((v37 + 119) & 0xFFFFFFFFFFFFFFF8);
  v53 = (v38 + 119) & 0xFFFFFFFFFFFFFFF8;
  v54 = *v53;
  v53 += 15;
  *v52 = v54;

  v55 = ((v52 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v55 = *(v53 & 0xFFFFFFFFFFFFFFF8);
  v55[1] = *((v53 & 0xFFFFFFFFFFFFFFF8) + 8);
  v56 = ((v55 + 23) & 0xFFFFFFFFFFFFFFF8);
  v57 = (((v53 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v56 = *v57;
  v56[1] = v57[1];
  v58 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v58 = *v59;
  *(v58 + 8) = *(v59 + 8);
  *(v58 + 16) = *(v59 + 16);
  v60 = type metadata accessor for IndexSet();
  v61 = *(v60 - 8);
  v62 = *(v61 + 80);
  v63 = (v62 | 7) + 17;
  v64 = ((v63 + v58) & ~(v62 | 7));
  v65 = ((v63 + v59) & ~(v62 | 7));
  *v64 = *v65;

  v66 = ((v64 + 15) & 0xFFFFFFFFFFFFFFF8);
  v67 = ((v65 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v66 = *v67;

  (*(v61 + 24))((v66 + v62 + 8) & ~v62, (v67 + v62 + 8) & ~v62, v60);
  return a1;
}

uint64_t initializeWithTake for StackPlacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = (v6 + a2);
  *(v6 + a1) = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 32);
  v12 = v10 + 32;
  v13 = *(v10 + 80);
  v14 = (v13 | 7) + 1;
  v15 = ((v14 + v7) & ~(v13 | 7));
  v16 = (&v8[v14] & ~(v13 | 7));
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v11((v17 + v13 + 8) & ~v13, (v18 + v13 + 8) & ~v13, AssociatedTypeWitness);
  v19 = *(v12 + 32) + ((v13 + 16) & ~v13) + 7;
  v20 = ((v15 + v19) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v16 + v19) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 19) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = (v22 + 11) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 11) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  *(v24 + 8) = *(v25 + 8);
  *v24 = v26;
  v27 = (v22 + 27) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v23 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);
  v29 = ((v22 + 43) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v23 + 43) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  *(v31 + 8) = *(v32 + 8);
  *v31 = v33;
  v34 = ((v29 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v30 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  v36 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;
  v38 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
  v40 = v39[3];
  v41 = v39[4];
  v42 = v39[6];
  v38[5] = v39[5];
  v38[6] = v42;
  v38[3] = v40;
  v38[4] = v41;
  v43 = *v39;
  v44 = v39[2];
  v38[1] = v39[1];
  v38[2] = v44;
  *v38 = v43;
  v45 = ((v38 + 119) & 0xFFFFFFFFFFFFFFF8);
  v46 = ((v39 + 119) & 0xFFFFFFFFFFFFFFF8);
  *v45 = *v46;
  v47 = ((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
  v48 = ((v46 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v47 = *v48;
  v49 = ((v47 + 23) & 0xFFFFFFFFFFFFFFF8);
  v50 = ((v48 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v49 = *v50;
  v51 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v51 = *v52;
  *(v51 + 16) = *(v52 + 16);
  v53 = type metadata accessor for IndexSet();
  v54 = *(v53 - 8);
  v55 = *(v54 + 32);
  v56 = *(v54 + 80);
  v57 = (v56 | 7) + 17;
  v58 = ((v57 + v51) & ~(v56 | 7));
  v59 = ((v57 + v52) & ~(v56 | 7));
  *v58 = *v59;
  v60 = ((v58 + 15) & 0xFFFFFFFFFFFFFFF8);
  v61 = ((v59 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v60 = *v61;
  v55((v60 + v56 + 8) & ~v56, (v61 + v56 + 8) & ~v56, v53);
  return a1;
}

uint64_t assignWithTake for StackPlacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = (v6 + a2);
  *(v6 + a1) = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 40);
  v12 = v10 + 40;
  v13 = *(v10 + 80);
  v14 = (v13 | 7) + 1;
  v15 = ((v14 + v7) & ~(v13 | 7));
  v16 = (&v8[v14] & ~(v13 | 7));
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v11((v17 + v13 + 8) & ~v13, (v18 + v13 + 8) & ~v13, AssociatedTypeWitness);
  v19 = *(v12 + 24) + ((v13 + 16) & ~v13) + 7;
  v20 = ((v15 + v19) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v16 + v19) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v20[1] = v21[1];
  v22 = ((v20 + 19) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = (v22 + 11) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 11) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 8);
  *v24 = *v25;
  *(v24 + 8) = v26;
  v27 = (v22 + 27) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v23 + 27) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);
  v29 = (v22 + 43) & 0xFFFFFFFFFFFFFFF8;
  v30 = ((v23 + 43) & 0xFFFFFFFFFFFFFFF8);
  v31 = v29 + 15;
  *v29 = *v30;
  v29 += 31;
  v31 &= 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v24) = *(v32 + 8);
  *v31 = *v32;
  *(v31 + 8) = v24;
  v33 = ((v30 + 31) & 0xFFFFFFFFFFFFFFF8);
  *(v29 & 0xFFFFFFFFFFFFFFF8) = *v33;
  v34 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;

  v34 &= 0xFFFFFFFFFFFFFFF8;
  v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;

  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*v36 < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*v37 < 0xFFFFFFFFuLL)
  {

    __swift_destroy_boxed_opaque_existential_1((v36 + 16));

LABEL_5:
    v42 = *v37;
    v43 = *(v37 + 32);
    *(v36 + 16) = *(v37 + 16);
    *(v36 + 32) = v43;
    *v36 = v42;
    v44 = *(v37 + 48);
    v45 = *(v37 + 64);
    v46 = *(v37 + 96);
    *(v36 + 80) = *(v37 + 80);
    *(v36 + 96) = v46;
    *(v36 + 48) = v44;
    *(v36 + 64) = v45;
    goto LABEL_6;
  }

  *v36 = *v37;

  *(v36 + 8) = *(v37 + 8);
  __swift_destroy_boxed_opaque_existential_1((v36 + 16));
  v38 = *(v37 + 16);
  v39 = *(v37 + 32);
  *(v36 + 48) = *(v37 + 48);
  *(v36 + 16) = v38;
  *(v36 + 32) = v39;
  *(v36 + 56) = *(v37 + 56);

  *(v36 + 64) = *(v37 + 64);
  *(v36 + 68) = *(v37 + 68);
  *(v36 + 72) = *(v37 + 72);

  *(v36 + 80) = *(v37 + 80);

  v40 = *(v37 + 88);
  *(v36 + 92) = *(v37 + 92);
  *(v36 + 88) = v40;
  v41 = *(v37 + 96);
  *(v36 + 100) = *(v37 + 100);
  *(v36 + 96) = v41;
  *(v36 + 101) = *(v37 + 101);
  *(v36 + 102) = *(v37 + 102);
  *(v36 + 104) = *(v37 + 104);
LABEL_6:
  v47 = ((v36 + 119) & 0xFFFFFFFFFFFFFFF8);
  v48 = (v37 + 119) & 0xFFFFFFFFFFFFFFF8;
  v49 = *v48;
  v48 += 15;
  *v47 = v49;

  v50 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v50 = *(v48 & 0xFFFFFFFFFFFFFFF8);
  v50[1] = *((v48 & 0xFFFFFFFFFFFFFFF8) + 8);
  v51 = ((v50 + 23) & 0xFFFFFFFFFFFFFFF8);
  v52 = (((v48 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v51 = *v52;
  v51[1] = v52[1];
  v53 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v53 = *v54;
  *(v53 + 8) = *(v54 + 8);
  *(v53 + 16) = *(v54 + 16);
  v55 = type metadata accessor for IndexSet();
  v56 = *(v55 - 8);
  v57 = *(v56 + 80);
  v58 = (v57 | 7) + 17;
  v59 = ((v58 + v53) & ~(v57 | 7));
  v60 = ((v58 + v54) & ~(v57 | 7));
  *v59 = *v60;

  v61 = ((v59 + 15) & 0xFFFFFFFFFFFFFFF8);
  v62 = ((v60 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v61 = *v62;

  (*(v56 + 40))((v61 + v57 + 8) & ~v57, (v62 + v57 + 8) & ~v57, v55);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for MinorProperties(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && (*(v6 + 80) & 0x100000) == 0 && ((-17 - v7) | v7) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = AssociatedTypeWitness;
    v13 = *a2;
    v12 = a2 + 15;
    *a1 = v13;
    v14 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *(v12 & 0xFFFFFFFFFFFFFFF8);
    (*(v6 + 16))(v14 + 1, (v12 & 0xFFFFFFFFFFFFFFF8) + 8, v11);
  }

  else
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  return a1;
}

void *assignWithCopy for MinorProperties(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 24))((v4 + *(v7 + 80) + 8) & ~*(v7 + 80), (v5 + *(v7 + 80) + 8) & ~*(v7 + 80), AssociatedTypeWitness);
  return a1;
}

void *initializeWithTake for MinorProperties(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 32))((v4 + *(v7 + 80) + 8) & ~*(v7 + 80), (v5 + *(v7 + 80) + 8) & ~*(v7 + 80), AssociatedTypeWitness);
  return a1;
}

void *assignWithTake for MinorProperties(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 40))((v4 + *(v7 + 80) + 8) & ~*(v7 + 80), (v5 + *(v7 + 80) + 8) & ~*(v7 + 80), AssociatedTypeWitness);
  return a1;
}

void partial apply for closure #1 in StackPlacement.placeSection(_:from:)(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[5];
  v11 = 1;
  v10 = type metadata accessor for StackPlacement(0, v7, v8, a4);
  StackPlacement.placeHeaderOrFooter(start:subview:kind:)(v9, a1, &v11, v10);
  *a2 = (*(a1 + 101) & 1) == 0;
}

void partial apply for closure #3 in StackPlacement.placeSection(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[5];
  v10 = 2;
  v9 = type metadata accessor for StackPlacement(0, v6, v7, a4);
  StackPlacement.placeHeaderOrFooter(start:subview:kind:)(v8, a1, &v10, v9);
}

uint64_t outlined init with copy of _LazyLayout_Subview?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined destroy of _LazyLayout_Subview?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t partial apply for specialized closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:)(uint64_t a1, _BYTE *a2, __n128 a3)
{
  return specialized closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:)(a1, a2, *(v3 + 16), a3);
}

{
  return specialized closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:)(a1, a2, *(v3 + 16), a3);
}

void type metadata accessor for _LazyStack_Cache<LazyVStackLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for _LazyStack_Cache(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for [[_LazyLayout_Subview]](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [[_LazyLayout_Subview]])
  {
    type metadata accessor for [_LazyLayout_Subview](255, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [[_LazyLayout_Subview]]);
    }
  }
}

double specialized LazyStack<>.distanceFromRect(_:toRect:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  (*(*(a2 + 8) + 32))(&v31);
  v20 = *(a2 + 32);
  v21 = v20(a1, a2);
  if (Axis.Set.contains(_:)((v21 & 1)))
  {
    v33.origin.x = a7;
    v33.origin.y = a8;
    v33.size.width = a9;
    v33.size.height = a10;
    v30 = a6;
    v22 = CGRectGetWidth(v33) * 0.5 + a7;
    v34.origin.x = a7;
    v34.origin.y = a8;
    v34.size.width = a9;
    v34.size.height = a10;
    v23 = CGRectGetHeight(v34) * 0.5 + a8;

    CGRect.distance(to:)(v22, v23, a3, a4, a5, v30);
  }

  else
  {
    v25 = v20(a1, a2);
    if (v25)
    {
      v26 = a6;
    }

    else
    {
      v26 = a5;
    }

    if (v25)
    {
      v27 = a4;
    }

    else
    {
      v27 = a3;
    }

    if (v25)
    {
      v28 = a8;
    }

    else
    {
      v28 = a7;
    }

    if (v25)
    {
      v29 = a10;
    }

    else
    {
      v29 = a9;
    }

    return vabdd_f64(v28 + v29 * 0.5, v26 * 0.5 + v27) - (v26 * 0.5 + v29 * 0.5);
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t ViewIdentity.Tracker.update(for:)(int *a1, _DWORD *a2)
{
  v3 = *a2 >> 1;
  if (v3 == v2[1] && (v4 = *v2) != 0)
  {
    v5 = 0;
  }

  else
  {
    v4 = static ViewIdentity.nextSeed;
    v5 = 1;
    if ((static ViewIdentity.nextSeed + 1) > 1)
    {
      v6 = static ViewIdentity.nextSeed + 1;
    }

    else
    {
      v6 = 1;
    }

    static ViewIdentity.nextSeed = v6;
    *v2 = v4;
    v2[1] = v3;
  }

  *a1 = v4;
  return v5;
}

uint64_t IdentityLink.wrappedValue.getter@<X0>(_DWORD *a1@<X8>)
{
  if (*v1)
  {
    *a1 = *v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void ViewIdentity.init()(int *a1@<X8>)
{
  v1 = static ViewIdentity.nextSeed;
  if ((static ViewIdentity.nextSeed + 1) > 1)
  {
    v2 = static ViewIdentity.nextSeed + 1;
  }

  else
  {
    v2 = 1;
  }

  static ViewIdentity.nextSeed = v2;
  *a1 = v1;
}

Swift::Int ViewIdentity.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t ViewIdentity.description.getter()
{
  _StringGuts.grow(_:)(16);

  strcpy(v2, "ViewIdentity(");
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v2[0];
}

uint64_t VariableBlurEffect.resolve(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  LODWORD(v36) = a3;
  v35 = a2;
  type metadata accessor for Text.Style?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v34 = v10;
  v11 = type metadata accessor for ImageResolutionContext(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  v17 = type metadata accessor for Text.Style(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  LODWORD(v33) = *MEMORY[0x1E698D3F8];
  *(v14 + 2) = 0;
  v19 = v12[8];
  v18(&v14[v19], 1, 1, v17);
  v20 = v12[9];
  v21 = &v14[v12[10]];
  *v21 = 520;
  v21[2] = 2;
  v14[v12[11]] = 3;
  v14[v12[12]] = 1;
  *v14 = v16;
  *(v14 + 1) = v15;

  outlined assign with take of Text.Style?(v34, &v14[v19]);
  *&v14[v20] = v33;
  (*(*v35 + 80))(&v37, v14);
  outlined init with copy of GraphicsImage(&v37, v48);
  outlined destroy of Image.Resolved(&v37);
  v35 = v37;
  v22 = v38;
  v34 = v39;
  v23 = v40;
  v24 = v42;
  v25 = v43;
  v26 = v41 & 0xFFFFFFFF00000007;
  v27 = v44 & 1;
  LODWORD(v20) = v47 & 0x30301FF;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0x80000000;
  *a4 = a5;
  *(a4 + 8) = v36;
  v28 = *(a4 + 96);
  v48[4] = *(a4 + 80);
  v49[0] = v28;
  *(v49 + 12) = *(a4 + 108);
  v29 = *(a4 + 32);
  v48[0] = *(a4 + 16);
  v48[1] = v29;
  v30 = *(a4 + 64);
  v48[2] = *(a4 + 48);
  v48[3] = v30;
  v36 = v45;
  v33 = v46;
  outlined destroy of VariableBlurStyle.Mask(v48);
  *(a4 + 16) = v35;
  *(a4 + 24) = v22;
  v31 = v33;
  *(a4 + 32) = v34;
  *(a4 + 48) = v23;
  *(a4 + 56) = v26;
  *(a4 + 64) = v24;
  *(a4 + 72) = v25;
  *(a4 + 80) = v27;
  *(a4 + 104) = v31;
  *(a4 + 88) = v36;
  *(a4 + 120) = v20;
  return _s7SwiftUI22ImageResolutionContextVWOhTm_0(v14, type metadata accessor for ImageResolutionContext);
}

__n128 VariableBlurStyle.init(radius:isOpaque:dither:mask:)@<Q0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 120) = 0x80000000;
  *a4 = a5;
  *(a4 + 8) = a1;
  *(a4 + 9) = a2;
  v7 = *(a4 + 96);
  v13[4] = *(a4 + 80);
  v14[0] = v7;
  *(v14 + 12) = *(a4 + 108);
  v8 = *(a4 + 32);
  v13[0] = *(a4 + 16);
  v13[1] = v8;
  v9 = *(a4 + 64);
  v13[2] = *(a4 + 48);
  v13[3] = v9;
  outlined destroy of VariableBlurStyle.Mask(v13);
  v10 = *(a3 + 80);
  *(a4 + 80) = *(a3 + 64);
  *(a4 + 96) = v10;
  *(a4 + 108) = *(a3 + 92);
  v11 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v11;
  result = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VariableBlurEffect(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v2 == *(a2 + 8) || ((*(*v2 + 96))(*a1) & 1) != 0)
  {
    return v3 ^ v4 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t VariableBlurStyle.mask.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v13 = v1[5];
  v2 = v13;
  v14[0] = v3;
  *(v14 + 12) = *(v1 + 108);
  v4 = *(v14 + 12);
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  v6 = v1[4];
  v11 = v1[3];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  *(a1 + 92) = v4;
  return outlined init with copy of VariableBlurStyle.Mask(v10, &v9);
}

__n128 VariableBlurStyle.mask.setter(uint64_t a1)
{
  v3 = v1[6];
  v9[4] = v1[5];
  v10[0] = v3;
  *(v10 + 12) = *(v1 + 108);
  v4 = v1[2];
  v9[0] = v1[1];
  v9[1] = v4;
  v5 = v1[4];
  v9[2] = v1[3];
  v9[3] = v5;
  outlined destroy of VariableBlurStyle.Mask(v9);
  v6 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v6;
  *(v1 + 108) = *(a1 + 92);
  v7 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v7;
  result = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = result;
  return result;
}