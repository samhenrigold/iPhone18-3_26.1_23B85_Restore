uint64_t getEnumTagSinglePayload for NSNotificationCenter.Notifications.State(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Int()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger_];
}

uint64_t storeEnumTagSinglePayload for Locale.Language(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t protocol witness for _LocaleProtocol.prefs.getter in conformance _LocaleICU@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v12[6] = *(v1 + 152);
  v13[0] = v3;
  *(v13 + 12) = *(v1 + 180);
  v4 = *(v1 + 72);
  v5 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v12[3] = v5;
  v12[4] = *(v1 + 120);
  v12[5] = v2;
  v12[0] = *(v1 + 56);
  v12[1] = v4;
  v6 = *(v1 + 136);
  v7 = *(v1 + 168);
  a1[6] = *(v1 + 152);
  a1[7] = v7;
  *(a1 + 124) = *(v1 + 180);
  v8 = *(v1 + 72);
  v9 = *(v1 + 104);
  a1[2] = *(v1 + 88);
  a1[3] = v9;
  a1[4] = *(v1 + 120);
  a1[5] = v6;
  *a1 = *(v1 + 56);
  a1[1] = v8;
  return outlined init with copy of FloatingPointRoundingRule?(v12, &v11, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
}

uint64_t specialized static Locale.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 48);
  if (v5(ObjectType, v2) & 1) != 0 || (v6 = ObjectType, v7 = v3, v8 = swift_getObjectType(), v9 = *(v7 + 48), swift_unknownObjectRetain(), v95 = v8, v10 = v8, v3 = v7, ObjectType = v6, v11 = v9(v10, v3), swift_unknownObjectRelease(), (v11))
  {
    if (v5(ObjectType, v2))
    {
      v12 = swift_getObjectType();
      v13 = *(v3 + 48);
      swift_unknownObjectRetain();
      v14 = v13(v12, v3);
      swift_unknownObjectRelease();
      return v14 & 1;
    }

    return 0;
  }

  v16 = (*(v2 + 64))(v6, v2);
  v18 = v17;
  if (v16 == (*(v3 + 64))(v95, v3) && v18 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  (*(v2 + 464))(__src, v6, v2);
  (*(v3 + 464))(&__src[9], v95, v3);
  v140[6] = __src[6];
  v141[0] = __src[7];
  *(v141 + 12) = *(&__src[7] + 12);
  v140[2] = __src[2];
  v140[3] = __src[3];
  v140[4] = __src[4];
  v140[5] = __src[5];
  v140[0] = __src[0];
  v140[1] = __src[1];
  if (_s10Foundation17LocalePreferencesVSgWOg(v140) == 1)
  {
    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 12) = *(&__src[16] + 12);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (_s10Foundation17LocalePreferencesVSgWOg(__dst) == 1)
    {
      v136 = __src[6];
      *v137 = __src[7];
      *&v137[12] = *(&__src[7] + 12);
      v132 = __src[2];
      v133 = __src[3];
      v134 = __src[4];
      v135 = __src[5];
      v130 = __src[0];
      v131 = __src[1];
      outlined destroy of TermOfAddress?(&v130, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
      return 1;
    }

    goto LABEL_17;
  }

  *&v137[12] = *(&__src[7] + 12);
  v136 = __src[6];
  *v137 = __src[7];
  v132 = __src[2];
  v133 = __src[3];
  v134 = __src[4];
  v135 = __src[5];
  v130 = __src[0];
  v131 = __src[1];
  v96 = LOBYTE(__src[0]);
  v129[0] = *(__src + 1);
  *(v129 + 3) = DWORD1(__src[0]);
  v94 = *(&__src[0] + 1);
  v92 = *&__src[2];
  v93 = __src[1];
  v22 = *(&__src[2] + 1);
  v23 = __src[3];
  v24 = *&__src[4];
  v25 = __src[5];
  v91 = *(&__src[4] + 1);
  v89 = *(&__src[6] + 1);
  v90 = *&__src[6];
  v26 = __src[7];
  v88 = *(&__src[7] + 12) >> 32;
  v27 = BYTE8(__src[8]);
  v28 = BYTE9(__src[8]);
  v29 = BYTE10(__src[8]);
  v30 = BYTE11(__src[8]);
  __dst[6] = __src[15];
  __dst[7] = __src[16];
  *(&__dst[7] + 12) = *(&__src[16] + 12);
  __dst[2] = __src[11];
  __dst[3] = __src[12];
  __dst[4] = __src[13];
  __dst[5] = __src[14];
  __dst[0] = __src[9];
  __dst[1] = __src[10];
  if (_s10Foundation17LocalePreferencesVSgWOg(__dst) == 1)
  {
    LOBYTE(v121) = v96;
    *(&v121 + 1) = *(__src + 1);
    DWORD1(v121) = DWORD1(__src[0]);
    *(&v121 + 1) = v94;
    v122 = v93;
    *&v123 = v92;
    *(&v123 + 1) = v22;
    v124 = v23;
    *&v125 = v24;
    *(&v125 + 1) = v91;
    v126 = v25;
    *&v127 = v90;
    *(&v127 + 1) = v89;
    *v128 = v26;
    *&v128[16] = v88;
    v128[24] = v27;
    v128[25] = v28;
    v128[26] = v29;
    v128[27] = v30;
    outlined init with copy of LocalePreferences?(&v130, v119);
    outlined destroy of LocalePreferences(&v121);
LABEL_17:
    memcpy(__dst, __src, 0x11CuLL);
    outlined destroy of TermOfAddress?(__dst, &_s10Foundation17LocalePreferencesVSg_ADtMd, &_s10Foundation17LocalePreferencesVSg_ADtMR);
    return 0;
  }

  v87 = v22;
  v83 = v30;
  v84 = v29;
  v85 = v28;
  v86 = v27;
  v121 = __src[9];
  v122 = __src[10];
  v123 = __src[11];
  v124 = __src[12];
  v125 = __src[13];
  v126 = __src[14];
  v127 = __src[15];
  *v128 = __src[16];
  *&v128[12] = *(&__src[16] + 12);
  v31 = *(&__src[10] + 1);
  v32 = *(&__src[13] + 1);
  v33 = *&__src[13];
  v34 = *(&__src[14] + 1);
  v35 = *&__src[14];
  if (v96 == 2)
  {
    if (v121 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v121 == 2 || ((v121 ^ v96) & 1) != 0)
  {
    goto LABEL_48;
  }

  v81 = *(&v127 + 1);
  v82 = v127;
  v80 = *&v128[16];
  v36 = *v128;
  v78 = v128[25];
  v79 = v128[24];
  v77 = v128[26];
  if (v94)
  {
    if (!*(&v121 + 1))
    {
      goto LABEL_48;
    }

    v76 = v128[27];
    v37 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v94, *(&v121 + 1));
    v35 = v126;
    v32 = *(&v125 + 1);
    v33 = v125;
    v34 = *(&v126 + 1);
    if ((v37 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v76 = v128[27];
    if (*(&v121 + 1))
    {
      goto LABEL_48;
    }
  }

  if (*(&v93 + 1))
  {
    if (!*(&v122 + 1))
    {
      goto LABEL_48;
    }

    if (v93 != __PAIR128__(v31, v122))
    {
      v73 = v34;
      v38 = v35;
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v35 = v38;
      v34 = v73;
      if ((v39 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_33:
    if (v22)
    {
      v40 = v26;
      if (*(&v123 + 1))
      {
        if (__PAIR128__(v22, v92) == v123 || (v74 = v34, v41 = v35, v42 = _stringCompareWithSmolCheck(_:_:expecting:)(), v35 = v41, v34 = v74, (v42 & 1) != 0))
        {
LABEL_37:
          v43 = v23;
          if (v23)
          {
            if (v124)
            {
              v44 = v34;
              v45 = v33;
              v46 = v32;
              v47 = v35;
              v48 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(v23, v124);
              v35 = v47;
              v32 = v46;
              v33 = v45;
              v34 = v44;
              if (v48)
              {
LABEL_40:
                v49 = *(&v23 + 1);
                v72 = v35;
                v75 = v34;
                if (*(&v23 + 1))
                {
                  v50 = v24;
                  if (*(&v124 + 1) && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(*(&v23 + 1), *(&v124 + 1)) & 1) != 0)
                  {
LABEL_43:
                    if (v50)
                    {
                      if (!v33)
                      {
                        outlined init with copy of LocalePreferences?(&v130, v119);
                        outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
                        v53 = 0;
                        v58 = v91;
                        v40 = v26;
                        v54 = v89;
                        v55 = v90;
                        v56 = *(&v26 + 1);
                        v57 = *(&v25 + 1);
                        v59 = v25;
                        goto LABEL_51;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      outlined init with copy of LocalePreferences?(&v130, v119);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                      v51 = v33;
                      v52 = static _CFObject.== infix(_:_:)();

                      if ((v52 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else
                    {
                      if (v33)
                      {
                        outlined init with copy of LocalePreferences?(&v130, v119);
                        goto LABEL_109;
                      }

                      outlined init with copy of LocalePreferences?(&v130, v119);
                    }

                    if (v91)
                    {
                      if (!v32)
                      {
                        goto LABEL_109;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                      v62 = v32;
                      v63 = static _CFObject.== infix(_:_:)();

                      if ((v63 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v32)
                    {
                      goto LABEL_109;
                    }

                    if (v25)
                    {
                      if (!v72)
                      {
                        goto LABEL_109;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                      v64 = v72;
                      v65 = static _CFObject.== infix(_:_:)();

                      if ((v65 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v72)
                    {
                      goto LABEL_109;
                    }

                    if (*(&v25 + 1))
                    {
                      if (!v75)
                      {
                        goto LABEL_109;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                      v66 = v75;
                      v67 = static _CFObject.== infix(_:_:)();

                      if ((v67 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v75)
                    {
                      goto LABEL_109;
                    }

                    if (v90)
                    {
                      if (!v82)
                      {
                        goto LABEL_109;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
                      v68 = v82;
                      v69 = static _CFObject.== infix(_:_:)();

                      if ((v69 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v82)
                    {
                      goto LABEL_109;
                    }

                    if (v89)
                    {
                      if (!v81)
                      {
                        goto LABEL_109;
                      }

                      v70 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4DateV11FormatStyleV0cE0V_SSTt1g5(v89, v81);

                      if ((v70 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v81)
                    {
                      goto LABEL_109;
                    }

                    if (v26)
                    {
                      if (!v36)
                      {
                        goto LABEL_109;
                      }

                      v71 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt32V_SSTt1g5(v26, v36);

                      if ((v71 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v36)
                    {
                      goto LABEL_109;
                    }

                    if (v88)
                    {
                      if (!v80 || (*(&v26 + 1) != *(&v36 + 1) || v88 != v80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v80)
                    {
                      goto LABEL_109;
                    }

                    if (v86 == 2)
                    {
                      if (v79 == 2)
                      {
                        goto LABEL_106;
                      }
                    }

                    else if (v79 != 2 && ((v79 ^ v86) & 1) == 0)
                    {
LABEL_106:
                      outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
                      if (v85 == 2)
                      {
                        if (v78 != 2)
                        {
LABEL_110:
                          v53 = 0;
LABEL_111:
                          v40 = v26;
                          v54 = v89;
                          v55 = v90;
                          v56 = *(&v26 + 1);
                          goto LABEL_50;
                        }
                      }

                      else if (v78 == 2 || ((v78 ^ v85) & 1) != 0)
                      {
                        goto LABEL_110;
                      }

                      if (v84 == 2)
                      {
                        v58 = v91;
                        v40 = v26;
                        v54 = v89;
                        v55 = v90;
                        v56 = *(&v26 + 1);
                        v57 = *(&v25 + 1);
                        v59 = v25;
                        v50 = v24;
                        v49 = *(&v23 + 1);
                        v43 = v23;
                        v61 = v92;
                        v60 = v93;
                        if (v77 != 2)
                        {
                          v53 = 0;
                          goto LABEL_53;
                        }
                      }

                      else
                      {
                        v53 = 0;
                        if (v77 == 2)
                        {
                          goto LABEL_111;
                        }

                        v58 = v91;
                        v40 = v26;
                        v54 = v89;
                        v55 = v90;
                        v56 = *(&v26 + 1);
                        v57 = *(&v25 + 1);
                        v59 = v25;
                        v50 = v24;
                        v49 = *(&v23 + 1);
                        v43 = v23;
                        v61 = v92;
                        v60 = v93;
                        if ((v77 ^ v84))
                        {
                          goto LABEL_53;
                        }
                      }

                      if (v83 == 2)
                      {
                        if (v76 != 2)
                        {
                          goto LABEL_110;
                        }
                      }

                      else if (v76 == 2 || ((v76 ^ v83) & 1) != 0)
                      {
                        goto LABEL_110;
                      }

                      v53 = 1;
                      goto LABEL_111;
                    }

LABEL_109:
                    outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
                    goto LABEL_110;
                  }
                }

                else
                {
                  v50 = v24;
                  if (!*(&v124 + 1))
                  {
                    goto LABEL_43;
                  }
                }

                outlined init with copy of LocalePreferences?(&v130, v119);
                outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
                v53 = 0;
                v54 = v89;
                v55 = v90;
                v56 = *(&v26 + 1);
                v57 = *(&v25 + 1);
                v58 = v91;
                v59 = v25;
                goto LABEL_52;
              }
            }
          }

          else if (!v124)
          {
            goto LABEL_40;
          }

          outlined init with copy of LocalePreferences?(&v130, v119);
          outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
          v53 = 0;
          v54 = v89;
          v55 = v90;
          v56 = *(&v26 + 1);
          v57 = *(&v25 + 1);
          v58 = v91;
          v59 = v25;
          v50 = v24;
          v49 = *(&v23 + 1);
          goto LABEL_52;
        }
      }
    }

    else
    {
      v40 = v26;
      if (!*(&v123 + 1))
      {
        goto LABEL_37;
      }
    }

    outlined init with copy of LocalePreferences?(&v130, v119);
    outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
    v53 = 0;
    goto LABEL_49;
  }

  if (!*(&v122 + 1))
  {
    goto LABEL_33;
  }

LABEL_48:
  outlined init with copy of LocalePreferences?(&v130, v119);
  outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
  v53 = 0;
  v40 = v26;
LABEL_49:
  v54 = v89;
  v55 = v90;
  v56 = *(&v26 + 1);
LABEL_50:
  v57 = *(&v25 + 1);
  v58 = v91;
  v59 = v25;
  v50 = v24;
LABEL_51:
  v49 = *(&v23 + 1);
  v43 = v23;
LABEL_52:
  v61 = v92;
  v60 = v93;
LABEL_53:
  v97 = v96;
  *v98 = v129[0];
  *&v98[3] = *(v129 + 3);
  v99 = v94;
  v100 = v60;
  v101 = *(&v93 + 1);
  v102 = v61;
  v103 = v87;
  v104 = v43;
  v105 = v49;
  v106 = v50;
  v107 = v58;
  v108 = v59;
  v109 = v57;
  v110 = v55;
  v111 = v54;
  v112 = v40;
  v113 = v56;
  v114 = v88;
  v115 = v86;
  v116 = v85;
  v117 = v84;
  v118 = v83;
  outlined destroy of LocalePreferences(&v97);
  v119[6] = __src[6];
  v120[0] = __src[7];
  *(v120 + 12) = *(&__src[7] + 12);
  v119[2] = __src[2];
  v119[3] = __src[3];
  v119[4] = __src[4];
  v119[5] = __src[5];
  v119[0] = __src[0];
  v119[1] = __src[1];
  outlined destroy of TermOfAddress?(v119, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
  return v53;
}

uint64_t String.init(format:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = specialized withVaList<A>(_:_:)(a3, a3, a1, a2, 0, 0);

  return v6;
}

uint64_t specialized withVaList<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  type metadata accessor for __VaListBuilder();
  v7 = swift_allocObject();
  v7[2] = 8;
  v7[3] = 0;
  v8 = v7 + 3;
  v7[4] = 0;
  v7[5] = 0;
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_26:
    v27 = __VaListBuilder.va_list()();
    closure #1 in String.init(format:locale:arguments:)(v27, a2, a3, a4, a5, a6, &v33);

    return v33;
  }

  v10 = 0;
  v11 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v11 + 40 * v10), *(v11 + 40 * v10 + 24));
    result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v13 = *v8;
    v14 = *(result + 16);
    v15 = __OFADD__(*v8, v14);
    v16 = *v8 + v14;
    if (v15)
    {
      break;
    }

    v17 = v7[4];
    if (v17 >= v16)
    {
      goto LABEL_18;
    }

    if (v17 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v18 = v7[5];
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    v7[4] = v16;
    if ((v16 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v19 = result;
    v20 = swift_slowAlloc();
    v21 = v20;
    v7[5] = v20;
    if (v18)
    {
      if (v20 != v18 || v20 >= &v18[8 * v13])
      {
        memmove(v20, v18, 8 * v13);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      result = v19;
LABEL_18:
      v21 = v7[5];
      if (!v21)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v19;
    if (!v21)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v23 = *(result + 16);
    if (v23)
    {
      v24 = (result + 32);
      v25 = *v8;
      while (1)
      {
        v26 = *v24++;
        *&v21[8 * v25] = v26;
        v25 = *v8 + 1;
        if (__OFADD__(*v8, 1))
        {
          break;
        }

        *v8 = v25;
        if (!--v23)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v10 == v9)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void closure #1 in String.init(format:locale:arguments:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v7 = a4;
  v121 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v106 = v8;
  if (v8)
  {
    v115 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v11 = v8;
    v9 = v115;
    v12 = a2 + 32;
    while (1)
    {
      outlined init with copy of Hashable & Sendable(v12, &v117);
      __swift_project_boxed_opaque_existential_1(&v117, v120);
      DynamicType = swift_getDynamicType();
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_11;
        }

        if (swift_dynamicCastMetatype())
        {
          v14 = 0xE400000000000000;
          v15 = 1684564005;
          goto LABEL_6;
        }

        if (swift_dynamicCastMetatype())
        {
          v14 = 0xE300000000000000;
          v15 = 6580261;
          goto LABEL_6;
        }

        if (swift_dynamicCastMetatype())
        {
          v14 = 0xE200000000000000;
          v15 = 25637;
          goto LABEL_6;
        }

        if (!swift_dynamicCastMetatype())
        {
          break;
        }
      }

      v14 = 0xE400000000000000;
      v15 = 1684827173;
LABEL_6:
      __swift_destroy_boxed_opaque_existential_1(&v117);
      v114 = v9;
      v17 = v9[2];
      v16 = v9[3];
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      v9[2] = v17 + 1;
      v18 = &v9[2 * v17];
      v18[4] = v15;
      v18[5] = v14;
      v12 += 40;
      if (!--v11)
      {
        v7 = a4;
        v21 = a1;
        goto LABEL_53;
      }
    }

    if (swift_dynamicCastMetatype())
    {
      v14 = 0xE400000000000000;
      v15 = 1969776677;
      goto LABEL_6;
    }

    if (swift_dynamicCastMetatype())
    {
      v14 = 0xE300000000000000;
      v15 = 7694373;
      goto LABEL_6;
    }

    if (swift_dynamicCastMetatype())
    {
      v14 = 0xE200000000000000;
      v15 = 29989;
      goto LABEL_6;
    }

    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        v14 = 0xE200000000000000;
        v15 = 26149;
      }

      else if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
      {
        v14 = 0xE300000000000000;
        v15 = 6712357;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys5UInt8VGMd, &_sSPys5UInt8VGMR);
        if (swift_dynamicCastMetatype() || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys5UInt8VGMd, &_sSpys5UInt8VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys4Int8VGMd, &_sSpys4Int8VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys5UInt8VGMd, &_sSAys5UInt8VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys4Int8VGMd, &_sSAys4Int8VGMR), swift_dynamicCastMetatype()))
        {
          v14 = 0xE200000000000000;
          v15 = 29477;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys6UInt16VGMd, &_sSPys6UInt16VGMR);
          if (swift_dynamicCastMetatype() || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys5Int16VGMd, &_sSPys5Int16VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys6UInt16VGMd, &_sSpys6UInt16VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys5Int16VGMd, &_sSpys5Int16VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys6UInt16VGMd, &_sSAys6UInt16VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys5Int16VGMd, &_sSAys5Int16VGMR), swift_dynamicCastMetatype()))
          {
            v14 = 0xE200000000000000;
            v15 = 21285;
          }

          else
          {
            v19 = swift_conformsToProtocol2();
            if (DynamicType)
            {
              v20 = v19 == 0;
            }

            else
            {
              v20 = 1;
            }

            if (v20)
            {
              v15 = 16421;
            }

            else
            {
              v15 = 28709;
            }

            v14 = 0xE200000000000000;
          }
        }
      }

      goto LABEL_6;
    }

LABEL_11:
    v14 = 0xE400000000000000;
    v15 = 1970039845;
    goto LABEL_6;
  }

  v21 = a1;
LABEL_53:
  v117 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
  BidirectionalCollection<>.joined(separator:)();

  v22 = String._bridgeToObjectiveCImpl()();
  v23 = String._bridgeToObjectiveCImpl()();
  if (a5)
  {
    ObjectType = swift_getObjectType();
    v25 = (*(a6 + 488))(ObjectType);
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_opt_self();
  v117 = 0;
  v27 = [v26 _stringWithValidatedFormat_validFormatSpecifiers_locale_arguments_error_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v27)
  {
    v28 = v117;

    isTaggedPointer = _objc_isTaggedPointer(v27);
    v30 = v27;
    v31 = v30;
    if (!isTaggedPointer)
    {
LABEL_62:
      v117 = 0;
      if (__CFStringIsCF())
      {
        v33 = v117;
        if (v117)
        {
          goto LABEL_168;
        }

LABEL_157:
        v35 = 0xE000000000000000;
        goto LABEL_172;
      }

      v38 = v31;
      v39 = String.init(_nativeStorage:)();
      if (v40)
      {
        v33 = v39;
        v35 = v40;

        goto LABEL_172;
      }

      v117 = [v38 length];
      if (v117)
      {
LABEL_168:
        v33 = String.init(_cocoaString:)();
        v35 = v102;
        goto LABEL_171;
      }

LABEL_165:
      v33 = 0;
      v35 = 0xE000000000000000;
      goto LABEL_172;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v30);
    if (!TaggedPointerTag)
    {
      goto LABEL_152;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v35 = v34;

        goto LABEL_171;
      }

      goto LABEL_62;
    }

    v96 = [v31 UTF8String];
    if (v96)
    {
      v97 = String.init(utf8String:)(v96);
      if (v98)
      {
        goto LABEL_153;
      }

      __break(1u);
LABEL_152:
      _CFIndirectTaggedPointerStringGetContents();
      v97 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v98)
      {
        [v31 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v33 = v114;
        v35 = v116;
        goto LABEL_171;
      }

LABEL_153:
      v33 = v97;
      v35 = v98;

      goto LABEL_171;
    }

    __break(1u);
LABEL_174:
    __break(1u);
    return;
  }

  if (v117)
  {
    v36 = v117;
    v37 = a2;
  }

  else
  {
    v37 = a2;
    if (one-time initialization token for _nilObjCError != -1)
    {
      swift_once();
    }

    v36 = _nilObjCError;
    v41 = _nilObjCError;
  }

  swift_willThrow();
  v42 = MEMORY[0x1E69E7CC0];
  v104 = v36;
  if (!v8)
  {
    v43 = MEMORY[0x1E69E7CC0];
    if ((_foundation_swift_format_string_validation_enabled() & 1) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_136;
  }

  v108 = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v43 = v42;
  v44 = v37 + 32;
  v45 = v37 + 32;
  v46 = v8;
  do
  {
    outlined init with copy of Hashable & Sendable(v45, &v117);
    __swift_project_boxed_opaque_existential_1(&v117, v120);
    swift_getDynamicType();
    v47 = _typeName(_:qualified:)();
    v49 = v48;
    __swift_destroy_boxed_opaque_existential_1(&v117);
    v51 = v42[2];
    v50 = v42[3];
    if (v51 >= v50 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
    }

    v42[2] = v51 + 1;
    v52 = &v42[2 * v51];
    v52[4] = v47;
    v52[5] = v49;
    v45 += 40;
    --v46;
  }

  while (v46);
  v53 = v106;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v106, 0);
  do
  {
    outlined init with copy of Hashable & Sendable(v44, &v117);
    __swift_project_boxed_opaque_existential_1(&v117, v120);
    v54 = swift_getDynamicType();
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
LABEL_80:
      v55 = 0xE400000000000000;
      v56 = 1684827173;
      goto LABEL_81;
    }

    if (swift_dynamicCastMetatype())
    {
LABEL_86:
      v55 = 0xE400000000000000;
      v56 = 1970039845;
      goto LABEL_81;
    }

    if (swift_dynamicCastMetatype())
    {
      v55 = 0xE400000000000000;
      v56 = 1684564005;
    }

    else if (swift_dynamicCastMetatype())
    {
      v55 = 0xE300000000000000;
      v56 = 6580261;
    }

    else if (swift_dynamicCastMetatype())
    {
      v55 = 0xE200000000000000;
      v56 = 25637;
    }

    else
    {
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_80;
      }

      if (swift_dynamicCastMetatype())
      {
        v55 = 0xE400000000000000;
        v56 = 1969776677;
      }

      else if (swift_dynamicCastMetatype())
      {
        v55 = 0xE300000000000000;
        v56 = 7694373;
      }

      else if (swift_dynamicCastMetatype())
      {
        v55 = 0xE200000000000000;
        v56 = 29989;
      }

      else
      {
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_86;
        }

        if (swift_dynamicCastMetatype())
        {
          v55 = 0xE200000000000000;
          v56 = 26149;
        }

        else if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
        {
          v55 = 0xE300000000000000;
          v56 = 6712357;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys5UInt8VGMd, &_sSPys5UInt8VGMR);
          if (swift_dynamicCastMetatype() || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys5UInt8VGMd, &_sSpys5UInt8VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys4Int8VGMd, &_sSpys4Int8VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys5UInt8VGMd, &_sSAys5UInt8VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys4Int8VGMd, &_sSAys4Int8VGMR), swift_dynamicCastMetatype()))
          {
            v55 = 0xE200000000000000;
            v56 = 29477;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys6UInt16VGMd, &_sSPys6UInt16VGMR);
            if (swift_dynamicCastMetatype() || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys5Int16VGMd, &_sSPys5Int16VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys6UInt16VGMd, &_sSpys6UInt16VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys5Int16VGMd, &_sSpys5Int16VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys6UInt16VGMd, &_sSAys6UInt16VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys5Int16VGMd, &_sSAys5Int16VGMR), swift_dynamicCastMetatype()))
            {
              v55 = 0xE200000000000000;
              v56 = 21285;
            }

            else
            {
              v60 = swift_conformsToProtocol2();
              if (v54)
              {
                v61 = v60 == 0;
              }

              else
              {
                v61 = 1;
              }

              if (v61)
              {
                v56 = 16421;
              }

              else
              {
                v56 = 28709;
              }

              v55 = 0xE200000000000000;
            }
          }
        }
      }
    }

LABEL_81:
    __swift_destroy_boxed_opaque_existential_1(&v117);
    v114 = v42;
    v58 = v42[2];
    v57 = v42[3];
    if (v58 >= v57 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
    }

    v42[2] = v58 + 1;
    v59 = &v42[2 * v58];
    v59[4] = v56;
    v59[5] = v55;
    v44 += 40;
    --v53;
  }

  while (v53);
  v7 = v108;
  v62 = _foundation_swift_format_string_validation_enabled();
  if (v62)
  {
LABEL_136:
    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(139);
    MEMORY[0x1865CB0E0](0xD00000000000003ALL, 0x80000001814891D0);
    v85 = MEMORY[0x1E69E6158];
    v86 = MEMORY[0x1865CB4E0](v43, MEMORY[0x1E69E6158]);
    MEMORY[0x1865CB0E0](v86);

    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181489210);
    v87 = MEMORY[0x1865CB4E0](v42, v85);
    v81 = v88;
    MEMORY[0x1865CB0E0](v87);

    MEMORY[0x1865CB0E0](0xD00000000000002FLL, 0x8000000181489230);
    v114 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](93, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_137;
  }

LABEL_128:

  if (one-time initialization token for stringLogger != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, stringLogger);

  v64 = v36;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v117 = v69;
    *v67 = 136446722;
    v70 = MEMORY[0x1865CB4E0](v43, MEMORY[0x1E69E6158]);
    v71 = v7;
    v73 = v72;

    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v73, &v117);
    v7 = v71;

    *(v67 + 4) = v74;
    *(v67 + 12) = 2082;
    v75 = MEMORY[0x1865CB4E0](v42, MEMORY[0x1E69E6158]);
    v77 = v76;

    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v117);
    v36 = v104;

    *(v67 + 14) = v78;
    *(v67 + 22) = 2112;
    v79 = v104;
    v80 = _swift_stdlib_bridgeErrorToNSError();
    *(v67 + 24) = v80;
    *v68 = v80;
    _os_log_impl(&dword_18075C000, v65, v66, "String(format:locale:arguments:): Provided argument types %{public}s (with inferred specifiers %{public}s) do not match the format string's specifiers [%@]", v67, 0x20u);
    outlined destroy of TermOfAddress?(v68, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1865D2690](v68, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1865D2690](v69, -1, -1);
    MEMORY[0x1865D2690](v67, -1, -1);
  }

  else
  {
  }

  v81 = a1;
  v82 = a6;
  if (a5)
  {
    v83 = &type metadata for Locale;
    v84 = a5;
    goto LABEL_138;
  }

LABEL_137:
  v84 = 0;
  v82 = 0;
  v83 = 0;
  v119 = 0;
LABEL_138:
  v117 = v84;
  v118 = v82;
  v120 = v83;
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString, off_1E69EE918);
  swift_unknownObjectRetain();

  v89 = NSString.__allocating_init(format:locale:arguments:)(a3, v7, &v117, v81);
  v90 = _objc_isTaggedPointer(v89);
  v91 = v89;
  v31 = v91;
  if (!v90)
  {
    goto LABEL_143;
  }

  v92 = _objc_getTaggedPointerTag(v91);
  switch(v92)
  {
    case 0:
      goto LABEL_161;
    case 0x16:
      v99 = [v31 UTF8String];
      if (!v99)
      {
        goto LABEL_174;
      }

      v100 = String.init(utf8String:)(v99);
      if (v101)
      {
LABEL_162:
        v33 = v100;
        v35 = v101;

        goto LABEL_170;
      }

      __break(1u);
LABEL_161:
      _CFIndirectTaggedPointerStringGetContents();
      v100 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v101)
      {
        [v31 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v33 = v114;
        v35 = v116;
        goto LABEL_170;
      }

      goto LABEL_162;
    case 2:
      MEMORY[0x1EEE9AC00](v92);
      v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v35 = v93;

      goto LABEL_171;
  }

LABEL_143:
  v117 = 0;
  if (!__CFStringIsCF())
  {
    v38 = v31;
    v94 = String.init(_nativeStorage:)();
    if (v95)
    {
      v33 = v94;
      v35 = v95;

      goto LABEL_172;
    }

    v117 = [v38 length];
    if (v117)
    {
      goto LABEL_169;
    }

    goto LABEL_165;
  }

  v33 = v117;
  if (!v117)
  {

    goto LABEL_157;
  }

LABEL_169:
  v33 = String.init(_cocoaString:)();
  v35 = v103;
LABEL_170:

LABEL_171:
LABEL_172:
  *a7 = v33;
  a7[1] = v35;
}

uint64_t NSNotificationCenter.Publisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v35 = *(a2 - 8);
  v6 = v35;
  v36 = a3;
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = *v3;
  v12 = *(v3 + 8);
  v13 = *(v3 + 16);
  v14 = *(v6 + 16);
  v16 = &v34 - v15;
  v37 = &v34 - v15;
  v14(v10);
  v38 = type metadata accessor for Notification.Subscription(0, a2, a3, v17);
  v18 = swift_allocObject();
  swift_unknownObjectRetain();
  v19 = v11;
  v34 = v19;
  v20 = v12;
  v21 = swift_slowAlloc();
  *v21 = 0;
  v18[2] = v21;
  v22 = swift_slowAlloc();
  *v22 = 0;
  v18[3] = v22;
  v18[4] = 0;
  v18[5] = v19;
  v18[6] = v20;
  v18[7] = v13;
  v18[8] = 0;
  v23 = swift_allocObject();
  swift_weakInit();
  (v14)(v8, v16, a2);
  v24 = v35;
  v25 = (*(v35 + 80) + 40) & ~*(v35 + 80);
  v26 = swift_allocObject();
  v27 = v36;
  *(v26 + 2) = a2;
  *(v26 + 3) = v27;
  *(v26 + 4) = v23;
  (*(v24 + 32))(&v26[v25], v8, a2);
  WitnessTable = partial apply for closure #1 in Notification.Subscription.init(_:_:_:_:);
  v43 = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v41 = &block_descriptor_17;
  v28 = _Block_copy(aBlock);
  v29 = v20;
  v30 = v34;
  v31 = v29;
  swift_unknownObjectRetain();

  v32 = [v30 addObserverForName:v31 object:v13 queue:0 usingBlock:v28];
  _Block_release(v28);

  swift_unknownObjectRelease();
  v18[8] = v32;
  swift_unknownObjectRelease();
  (*(v24 + 8))(v37, a2);
  v41 = v38;
  WitnessTable = swift_getWitnessTable();
  aBlock[0] = v18;
  dispatch thunk of Subscriber.receive(subscription:)();
  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_18082BFC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18082BFFC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void Notification.Subscription.request(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + 32);
  static Subscribers.Demand.unlimited.getter();
  if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
  {
    static Subscribers.Demand.unlimited.getter();
    v5 = static Subscribers.Demand.== infix(_:_:)();
    v6 = static Subscribers.Demand.unlimited.getter();
    if ((v5 & 1) == 0)
    {
      if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
      {
        if ((v4 | a1) < 0)
        {
          __break(1u);
          goto LABEL_14;
        }

        v6 = v4 + a1;
        if (!__OFADD__(v4, a1))
        {
          if ((v6 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_14:
          __break(1u);
          return;
        }
      }

      v6 = static Subscribers.Demand.unlimited.getter();
    }

LABEL_9:
    *(v1 + 32) = v6;
  }

  os_unfair_lock_unlock(v3);
}

uint64_t specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  result = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_SRyAJGTt2g5Tm(a1, a2, a3, a4, specialized closure #1 in StringProtocol.addingPercentEncoding<A>(utf8Buffer:component:skipAlreadyEncoded:));
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t specialized appendedPath #1 <A>() in _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3[168])
  {
    v4 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v4 = String.subscript.getter();
  }

  v5 = MEMORY[0x1865CAE80](v4);
  v7 = v6;

  v13 = v5;
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 && v3[72] == 1 && v3[96] == 1 && v3[120] == 1 && v3[144] == 1)
  {
    if (v3[48] != 1)
    {
      String.subscript.getter();

      v12 = *a2;

      return v12;
    }

    v5 = 46;
    v7 = 0xE100000000000000;
    v13 = 46;
  }

  if ((specialized BidirectionalCollection.last.getter(v5, v7) & 0x1FF) == 0x2F || (specialized Collection.first.getter(*a2, *(a2 + 8)) & 0x1FF) == 0x2F)
  {
    if ((specialized BidirectionalCollection.last.getter(v5, v7) & 0x1FF) == 0x2F && (specialized Collection.first.getter(*a2, *(a2 + 8)) & 0x1FF) == 0x2F)
    {
      specialized RangeReplaceableCollection<>.popLast()();
    }
  }

  else
  {
    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

  v10 = *a2;
  v9 = *(a2 + 8);

  MEMORY[0x1865CB0E0](v10, v9);

  return v13;
}

double specialized URLComponents._URLComponents.init(parseInfo:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v9[160] = 1;
  v3 = *(a1 + 218);
  *&v10 = a1;
  *(&v10 + 1) = 0x101010101010101;
  v11[0] = 1;
  memset(&v11[8], 0, 72);
  v12[0] = 1;
  memset(&v12[8], 0, 48);
  v12[56] = v3;
  v12[57] = 0;
  v14 = 1;
  v13[0] = a1;
  v13[1] = 0x101010101010101;
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v20 = 1;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v24 = v3;
  outlined init with copy of URLComponents._URLComponents(&v10, v9);
  outlined destroy of URLComponents._URLComponents(v13);
  v4 = *&v12[16];
  a2[6] = *v12;
  a2[7] = v4;
  a2[8] = *&v12[32];
  *(a2 + 138) = *&v12[42];
  v5 = *&v11[32];
  a2[2] = *&v11[16];
  a2[3] = v5;
  v6 = *&v11[64];
  a2[4] = *&v11[48];
  a2[5] = v6;
  result = *&v10;
  v8 = *v11;
  *a2 = v10;
  a2[1] = v8;
  return result;
}

Swift::String __swiftcall URLComponents._URLComponents._uncheckedString(original:)(Swift::Bool original)
{
  v2 = v1;
  v102 = *MEMORY[0x1E69E9840];
  if (original && *v1)
  {
    v3 = *(*v1 + 220);
  }

  else
  {
    v3 = 0;
  }

  v96 = 0;
  v97 = 0xE000000000000000;
  if (*(v1 + 32))
  {
    v4 = *(v1 + 24);
    v5 = *(v2 + 32);
LABEL_7:
    *&v101 = v4;
    *(&v101 + 1) = v5;

    MEMORY[0x1865CB0E0](58, 0xE100000000000000);
    MEMORY[0x1865CB0E0](v4, v5);

    goto LABEL_11;
  }

  if ((*(v1 + 9) & 1) != 0 && *v1 && (*(*v1 + 48) & 1) == 0)
  {
    v44 = String.subscript.getter();
    v4 = MEMORY[0x1865CAE80](v44);
    v5 = v45;

    goto LABEL_7;
  }

LABEL_11:
  if (URLComponents._URLComponents.hasAuthority.getter())
  {
    MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
  }

  if ((v3 & 1) != 0 && (v6 = URLComponents._URLComponents.user.getter(), v7) || (v6 = URLComponents._URLComponents.percentEncodedUser.getter(), v8))
  {
    MEMORY[0x1865CB0E0](v6);
  }

  if ((v3 & 2) != 0)
  {
    v9 = URLComponents._URLComponents.password.getter();
    if (v10)
    {
      *&v101 = 58;
      *(&v101 + 1) = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v9);
LABEL_23:

      MEMORY[0x1865CB0E0](v101, *(&v101 + 1));

      goto LABEL_24;
    }
  }

  if (*(v2 + 64))
  {
    v11 = *(v2 + 56);
    v12 = *(v2 + 64);
LABEL_22:
    *&v101 = 58;
    *(&v101 + 1) = 0xE100000000000000;

    MEMORY[0x1865CB0E0](v11, v12);
    goto LABEL_23;
  }

  if ((*(v2 + 11) & 1) != 0 && *v2 && (*(*v2 + 96) & 1) == 0)
  {
    v19 = String.subscript.getter();
    v11 = MEMORY[0x1865CAE80](v19);
    v12 = v20;

    goto LABEL_22;
  }

LABEL_24:
  URLComponents._URLComponents.percentEncodedUser.getter();
  if (v13)
  {
LABEL_27:

    v14 = MEMORY[0x1865CB0E0](64, 0xE100000000000000);
    goto LABEL_28;
  }

  v14 = *(v2 + 64);
  if (v14)
  {
LABEL_26:

    goto LABEL_27;
  }

  if ((*(v2 + 11) & 1) != 0 && *v2 && (*(*v2 + 96) & 1) == 0)
  {
    v33 = String.subscript.getter();
    MEMORY[0x1865CAE80](v33);

    goto LABEL_26;
  }

LABEL_28:
  if ((v3 & 4) == 0)
  {
    goto LABEL_29;
  }

  v101 = *(v2 + 72);
  v17 = *(&v101 + 1);
  if (*(&v101 + 1))
  {
    v18 = v101;
  }

  else if ((*(v2 + 12) & 1) != 0 && *v2 && (*(*v2 + 120) & 1) == 0)
  {
    v46 = String.subscript.getter();
    v18 = MEMORY[0x1865CAE80](v46);
    v17 = v47;
  }

  else
  {
    v14 = URLComponents._URLComponents.port.getter();
    if (v21)
    {
      URLComponents._URLComponents.percentEncodedUser.getter();
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    v18 = 0;
    v17 = 0xE000000000000000;
  }

  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    outlined init with copy of FloatingPointRoundingRule?(&v101, &v100, &_sSSSgMd, &_sSSSgMR);

    v15 = 0;
    v29 = 0xE000000000000000;
LABEL_87:
    v16 = v29;
    goto LABEL_88;
  }

  if (*(v2 + 152))
  {
    *&v100 = v18;
    *(&v100 + 1) = v17;
    MEMORY[0x1EEE9AC00](v14);
    v94[0] = &v100;
    v94[1] = MEMORY[0x1E69E7CD0];
    v95 = 4;
    outlined init with copy of FloatingPointRoundingRule?(&v101, &v98, &_sSSSgMd, &_sSSSgMR);

    v25 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v92, v18, v17);
    if (v26 == 1)
    {
      v27 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v18, v17, MEMORY[0x1E69E7CD0], 4);
      v29 = v28;
LABEL_84:
      swift_bridgeObjectRelease_n();
LABEL_85:
      if (v29)
      {
        v15 = v27;
        goto LABEL_87;
      }

LABEL_29:
      v15 = URLComponents._URLComponents.encodedHost.getter();
      if (!v16)
      {
LABEL_89:
        if ((*(v2 + 13) & 1) != 0 && *v2 && (*(*v2 + 144) & 1) == 0)
        {
          v66 = String.subscript.getter();
          *&v100 = 58;
          *(&v100 + 1) = 0xE100000000000000;
          v67 = MEMORY[0x1865CAE80](v66);
          v69 = v68;

          MEMORY[0x1865CB0E0](v67, v69);
        }

        else
        {
          v63 = URLComponents._URLComponents.port.getter();
          if (v64)
          {
            goto LABEL_96;
          }

          *&v100 = 58;
          *(&v100 + 1) = 0xE100000000000000;
          v98 = v63;
          v65 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v65);
        }

        MEMORY[0x1865CB0E0](v100, *(&v100 + 1));

LABEL_96:
        if ((v3 & 8) != 0)
        {
          v72 = URLComponents._URLComponents.path.getter(v63);
        }

        else
        {
          v100 = *(v2 + 104);
          v70 = *(&v100 + 1);
          if (*(&v100 + 1))
          {
            v71 = v100;
          }

          else if ((*(v2 + 14) & 1) != 0 && *v2)
          {
            if (*(*v2 + 168))
            {
              v74 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
            }

            else
            {
              v74 = String.subscript.getter();
            }

            v71 = MEMORY[0x1865CAE80](v74);
            v70 = v75;
          }

          else
          {
            v71 = 0;
            v70 = 0xE000000000000000;
          }

          outlined init with copy of FloatingPointRoundingRule?(&v100, &v98, &_sSSSgMd, &_sSSSgMR);
          v72 = v71;
          v73 = v70;
        }

        MEMORY[0x1865CB0E0](v72, v73);

        if ((v3 & 0x10) != 0 && (v76 = URLComponents._URLComponents.query.getter(), v77))
        {
          v98 = 63;
          v99 = 0xE100000000000000;
          MEMORY[0x1865CB0E0](v76);
        }

        else
        {
          if (*(v2 + 128))
          {
            v78 = *(v2 + 120);
            v79 = *(v2 + 128);
          }

          else
          {
            if (*(v2 + 15) & 1) == 0 || !*v2 || (*(*v2 + 192))
            {
LABEL_115:
              if ((v3 & 0x20) != 0 && (v80 = URLComponents._URLComponents.fragment.getter(), v81))
              {
                v98 = 35;
                v99 = 0xE100000000000000;
                MEMORY[0x1865CB0E0](v80);
              }

              else
              {
                v82 = *(v2 + 144);
                if (v82)
                {
                  v83 = *(v2 + 136);
                  v84 = v82;
                }

                else
                {
                  if (*(v2 + 16) & 1) == 0 || !*v2 || (*(*v2 + 216))
                  {
                    goto LABEL_122;
                  }

                  v89 = String.subscript.getter();
                  v83 = MEMORY[0x1865CAE80](v89);
                  v84 = v90;
                }

                v98 = 35;
                v99 = 0xE100000000000000;

                MEMORY[0x1865CB0E0](v83, v84);
              }

              MEMORY[0x1865CB0E0](v98, v99);

LABEL_122:
              v85 = v96;
              v86 = v97;
              goto LABEL_142;
            }

            v87 = String.subscript.getter();
            v78 = MEMORY[0x1865CAE80](v87);
            v79 = v88;
          }

          v98 = 63;
          v99 = 0xE100000000000000;

          MEMORY[0x1865CB0E0](v78, v79);
        }

        MEMORY[0x1865CB0E0](v98, v99);

        goto LABEL_115;
      }

LABEL_88:
      MEMORY[0x1865CB0E0](v15, v16);

      goto LABEL_89;
    }

    v29 = v26;
LABEL_83:
    v27 = v25;
    goto LABEL_84;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    outlined init with copy of FloatingPointRoundingRule?(&v101, &v100, &_sSSSgMd, &_sSSSgMR);
  }

  else if ((v17 & 0x2000000000000000) != 0)
  {
    *&v100 = v18;
    *(&v100 + 1) = v17 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v14);
    LOBYTE(v95) = 0;
    MEMORY[0x1EEE9AC00](v34);
    v92 = &v100;
    v93 = HIBYTE(v17) & 0xF;
    outlined init with copy of FloatingPointRoundingRule?(&v101, &v98, &_sSSSgMd, &_sSSSgMR);

    v25 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v100, v93, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v94, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v29 = v35;
    if (v35 != 1)
    {
      goto LABEL_83;
    }
  }

  else
  {
    if ((v18 & 0x1000000000000000) != 0)
    {
      v30 = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v14 = _StringObject.sharedUTF8.getter();
      if (!v14)
      {
        outlined init with copy of FloatingPointRoundingRule?(&v101, &v100, &_sSSSgMd, &_sSSSgMR);
        v62 = one-time initialization token for idnaTranscoder;

        if (v62 != -1)
        {
          swift_once();
        }

        if (byte_1ED436DC0)
        {
          v29 = 0;
          v25 = 0;
          goto LABEL_83;
        }

        if (swift_stdlib_isStackAllocationSafe())
        {
          __break(1u);
        }

        swift_slowAlloc();
        __break(1u);
        goto LABEL_139;
      }

      v30 = v14;
      v23 = v57;
    }

    MEMORY[0x1EEE9AC00](v14);
    LOBYTE(v95) = 0;
    MEMORY[0x1EEE9AC00](v31);
    v92 = v30;
    v93 = v23;
    outlined init with copy of FloatingPointRoundingRule?(&v101, &v100, &_sSSSgMd, &_sSSSgMR);

    v25 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v30, v23, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v94, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v29 = v32;
    if (v32 != 1)
    {
      goto LABEL_83;
    }
  }

  *&v100 = v18;
  *(&v100 + 1) = v17;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v36 = String._bridgeToObjectiveCImpl()();

  v37 = [v36 _fastCharacterContents];
  v38 = v36;
  if (v37)
  {
    *&v100 = v18;
    *(&v100 + 1) = v17;
    StringProtocol._ephemeralString.getter();
    v39 = String._bridgeToObjectiveCImpl()();

    v40 = [v39 length];
    v41 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v41);
    LOBYTE(v95) = 0;
    MEMORY[0x1EEE9AC00](v42);
    v92 = v37;
    v93 = v40;
    v27 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v37);
    v29 = v43;
    swift_bridgeObjectRelease_n();
    goto LABEL_85;
  }

  *&v100 = v18;
  *(&v100 + 1) = v17;

  v48 = String.init<A>(_:)();
  v50 = v48;
  v51 = v49;
  if ((v49 & 0x1000000000000000) != 0)
  {
    v50 = static String._copying(_:)(v48, v49);
    v59 = v58;

    v51 = v59;
    if ((v59 & 0x2000000000000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_77:
    *&v100 = v50;
    *(&v100 + 1) = v51 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v48);
    LOBYTE(v95) = 0;
    MEMORY[0x1EEE9AC00](v60);
    v92 = &v100;
    v93 = v55;
    v54 = &v100;
    goto LABEL_78;
  }

  if ((v49 & 0x2000000000000000) != 0)
  {
    goto LABEL_77;
  }

LABEL_70:
  if ((v50 & 0x1000000000000000) != 0)
  {
    v52 = (v51 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_72:
    MEMORY[0x1EEE9AC00](v52);
    LOBYTE(v95) = 0;
    MEMORY[0x1EEE9AC00](v53);
    v92 = v54;
    v93 = v55;
LABEL_78:
    v27 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v54, v55, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v56, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v29 = v61;

    goto LABEL_84;
  }

  v52 = _StringObject.sharedUTF8.getter();
  if (v52)
  {
    goto LABEL_72;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_29;
  }

LABEL_139:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  v85 = swift_slowAlloc();
  __break(1u);
LABEL_142:
  result._object = v86;
  result._countAndFlagsBits = v85;
  return result;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

void *URL.appendingPathComponent(_:isDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  ObjectType = swift_getObjectType();
  result = (*(v9 + 336))(v14, a1, a2, a3, ObjectType, v9);
  v13 = v14[0];
  if (v14[0])
  {
    v9 = v14[1];
  }

  else
  {
    result = swift_unknownObjectRetain();
    v13 = v10;
  }

  *a4 = v13;
  a4[1] = v9;
  return result;
}

void _BridgedURL.appendingPathComponent(_:isDirectory:)(char a1@<W2>, uint64_t *a2@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url);
  v6 = [v5 URLByAppendingPathComponent:String._bridgeToObjectiveCImpl()() isDirectory:a1 & 1];
  swift_unknownObjectRelease();
  if (v6)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v6, &v66);

    *a2 = v66;
    return;
  }

  v7 = [v5 absoluteString];
  if (!v7)
  {
    v16 = 0xE000000000000000;
    goto LABEL_25;
  }

  v8 = v7;
  isTaggedPointer = _objc_isTaggedPointer(v7);
  v10 = v8;
  v11 = v10;
  if (!isTaggedPointer)
  {
LABEL_9:
    LOBYTE(v64[0]) = 0;
    *&v66 = 0;
    LOBYTE(v54[0]) = 0;
    LOBYTE(v52[0]) = 0;
    if (__CFStringIsCF())
    {

LABEL_14:
      v7 = 0;
      v16 = 0xE000000000000000;
      goto LABEL_25;
    }

    v17 = v11;
    v18 = String.init(_nativeStorage:)();
    if (v19)
    {
      v20 = v18;
      v21 = v19;

      v16 = v21;
      v7 = v20;
      goto LABEL_25;
    }

    *&v66 = [v17 length];
    if (!v66)
    {

      goto LABEL_14;
    }

    v29 = String.init(_cocoaString:)();
    v30 = v31;
    goto LABEL_24;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v10);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag == 22)
    {
      v22 = [v11 UTF8String];
      if (v22)
      {
        v23 = String.init(utf8String:)(v22);
        if (v24)
        {
          v25 = v23;
          v26 = v24;

          v7 = v25;
          v16 = v26;
          goto LABEL_25;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_63;
    }

    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v13 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v15 = v14;

      v16 = v15;
      v7 = v13;
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  LOWORD(v54[0]) = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v27 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v28)
  {
    v29 = v27;
    v30 = v28;
  }

  else
  {
    [v11 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v30 = *(&v64[0] + 1);
    v29 = *&v64[0];
  }

LABEL_24:

  v16 = v30;
  v7 = v29;
LABEL_25:
  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v7, v16, 1, v64);
  v72 = v64[6];
  v73[0] = v64[7];
  v73[1] = v65[0];
  *(&v73[1] + 10) = *(v65 + 10);
  v68 = v64[2];
  v69 = v64[3];
  v70 = v64[4];
  v71 = v64[5];
  v66 = v64[0];
  v67 = v64[1];
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(&v66) == 1)
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v60 = v70;
  v61 = v71;
  v62 = v72;
  v56 = v66;
  v57 = v67;
  v58 = v68;
  v59 = v69;
  WORD4(v63[2]) = WORD4(v73[2]);
  *(&v63[1] + 8) = *(&v73[1] + 8);
  *(v63 + 8) = *(v73 + 8);
  *&v63[0] = *&v73[0];
  URLComponents.path.getter();
  v32 = String._bridgeToObjectiveCImpl()();

  v33 = [v32 stringByAppendingPathComponent_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v33)
  {
    goto LABEL_49;
  }

  v34 = _objc_isTaggedPointer(v33);
  v35 = v33;
  v36 = v35;
  if (v34)
  {
    v37 = _objc_getTaggedPointerTag(v35);
    if (!v37)
    {
      goto LABEL_44;
    }

    if (v37 != 22)
    {
      if (v37 == 2)
      {
        MEMORY[0x1EEE9AC00](v37);
        v38 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v40 = v39;

        if ((a1 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      goto LABEL_34;
    }

    v44 = [v36 UTF8String];
    if (v44)
    {
      v45 = String.init(utf8String:)(v44);
      if (v46)
      {
        goto LABEL_45;
      }

      __break(1u);
LABEL_44:
      _CFIndirectTaggedPointerStringGetContents();
      v45 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v46)
      {
        [v36 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v40 = *(&v52[0] + 1);
        v38 = *&v52[0];

        if ((a1 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

LABEL_45:
      v38 = v45;
      v40 = v46;

      if ((a1 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

LABEL_63:
    __break(1u);
    return;
  }

LABEL_34:
  LOBYTE(v52[0]) = 0;
  *&v54[0] = 0;
  if (__CFStringIsCF())
  {
    v38 = *&v54[0];

    v40 = 0xE000000000000000;
    if ((a1 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v41 = v36;
  v42 = String.init(_nativeStorage:)();
  if (v43)
  {
    v38 = v42;
    v40 = v43;

    if ((a1 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  *&v54[0] = [v41 length];
  if (*&v54[0])
  {
    v38 = String.init(_cocoaString:)();
    v40 = v51;

    if ((a1 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_49:
  v38 = 0;
  v40 = 0xE000000000000000;
  if (a1)
  {
LABEL_50:
    *&v54[0] = v38;
    *(&v54[0] + 1) = v40;

    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

LABEL_51:
  BYTE8(v56) = 0;
  BYTE14(v56) = 0;
  v47 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v47 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {
    v48 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(v38, v40, 0);
    v50 = v49;
  }

  else
  {

    v48 = 0;
    v50 = 0xE000000000000000;
  }

  *(&v62 + 1) = v48;
  *&v63[0] = v50;
  v53[0] = v63[1];
  *(v53 + 10) = *(&v63[1] + 10);
  v52[2] = v58;
  v52[3] = v59;
  v52[4] = v60;
  v52[5] = v61;
  v52[0] = v56;
  v52[1] = v57;
  v52[6] = v62;
  v52[7] = v63[0];
  outlined init with copy of URLComponents(v52, v54);
  URLComponents.url.getter(a2);
  v54[6] = v62;
  v54[7] = v63[0];
  v55[0] = v63[1];
  *(v55 + 10) = *(&v63[1] + 10);
  v54[2] = v58;
  v54[3] = v59;
  v54[4] = v60;
  v54[5] = v61;
  v54[0] = v56;
  v54[1] = v57;
  outlined destroy of URLComponents(v54);
  outlined destroy of URLComponents(v52);
}

void protocol witness for _URLProtocol.baseURL.getter in conformance _BridgedURL(SEL *a1@<X2>, _OWORD *a2@<X8>)
{
  v4 = [*(v2 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) *a1];
  if (v4)
  {
    v5 = v4;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v4, &v7);

    v6 = v7;
  }

  else
  {
    v6 = 0uLL;
  }

  *a2 = v6;
}

uint64_t outlined consume of _CodingPathNode?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t JSONEncoder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 2;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 120) = 0;
  *(v0 + 128) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMR);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 136) = v2;
  return v0;
}

uint64_t get_enum_tag_for_layout_string_s8Sendable_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t one-time initialization function for vmOpsThreshold()
{
  if (one-time initialization token for _pageSize != -1)
  {
    result = swift_once();
  }

  if ((_pageSize - 0x2000000000000000) >> 62 == 3)
  {
    static __DataStorage.vmOpsThreshold = 4 * _pageSize;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int one-time initialization function for _pageSize()
{
  result = _platform_shims_vm_size();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    _pageSize = result;
  }

  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CGPoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  return [objc_allocWithZone(NSValue) initWithBytes:&v5 objCType:a3];
}

uint64_t _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  result = _ArrayBuffer.capacity.getter();
  if ((a3 & 1) != 0 && result < a2 && result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a4 < 0 || (a4 & 0x4000000000000000) != 0))
    {
      goto LABEL_27;
    }

    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v12 = a4 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v12 = a4;
    }

    for (i = *(v12 + 16); ; i = __CocoaSet.count.getter())
    {
      v14 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)();
      if (a1)
      {
        break;
      }

      if ((i & 0x8000000000000000) == 0)
      {
        _ArrayBuffer._copyContents(subRange:initializing:)();
        return v14;
      }

      __break(1u);
LABEL_27:
      specialized _ArrayBuffer._nonNative.getter(a4);
    }

    if (_swift_isClassOrObjCExistentialType())
    {
      v15 = a4 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v15 = a4;
    }

    v16 = *(a5 - 8);
    if (v14 < v15 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v14 + v17 >= v15 + v17 + *(v16 + 72) * i))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != v15)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (_swift_isClassOrObjCExistentialType())
    {
      v18 = a4 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v18 = a4;
    }

    *(v18 + 16) = 0;

    return v14;
  }

  return result;
}

void closure #1 in static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(char *, char *, uint64_t), uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v80 = a7;
  v85 = a5;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v76 = v13;
  v77 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v72 - v19;
  v87 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v83 = &v72 - v23;
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  v78 = v24;
  v79 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v74 = &v72 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v72 - v31;
  v33 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v72 - v39;
  v88 = a1;
  if (!a1)
  {
    goto LABEL_44;
  }

  if (a3)
  {
    [v85 _getObjects_andKeys_count_];
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v81 = a6;
    v86 = a3;
    if (isClassOrObjCExistentialType)
    {
      if (a6 >= 1)
      {
        v42 = v88 - 8;
        v43 = a6;
        while (1)
        {
          v89 = *(v42 + 8 * v43);
          swift_unknownObjectRetain();
          v44 = swift_dynamicCast();
          v45 = *(v33 + 56);
          if (!v44)
          {
            break;
          }

          --v43;
          v45(v27, 0, 1, a8);
          v46 = *(v33 + 32);
          v46(v36, v27, a8);
          v46((v88 + *(v33 + 72) * v43), v36, a8);
          if ((v43 + 1) <= 1)
          {
            goto LABEL_18;
          }
        }

        v45(v27, 1, 1, a8);
        (*(v79 + 8))(v27, v78);
        goto LABEL_36;
      }
    }

    else if (a6 >= 1)
    {
      v47 = (v33 + 56);
      v72 = (v79 + 32);
      v43 = a6;
      v85 = (v88 - 8);
      while (1)
      {
        v48 = v85[v43];
        swift_unknownObjectRetain();
        if (_swift_isClassOrObjCExistentialType())
        {
          v89 = v48;
          v49 = swift_dynamicCast();
          (*v47)(v32, v49 ^ 1u, 1, a8);
        }

        else
        {
          (*v47)(v74, 1, 1, a8);
          _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)();
          swift_unknownObjectRelease();
          (*v72)(v32, v74, v78);
        }

        if ((*(v33 + 48))(v32, 1, a8) == 1)
        {
          break;
        }

        --v43;
        v50 = *(v33 + 32);
        v50(v40, v32, a8);
        v50((v88 + *(v33 + 72) * v43), v40, a8);
        if ((v43 + 1) <= 1)
        {
          goto LABEL_18;
        }
      }

      (*(v79 + 8))(v32, v78);
      goto LABEL_36;
    }

    v43 = a6;
    if (a6)
    {
LABEL_36:
      if (!__OFSUB__(v81, v43))
      {
        swift_arrayDestroy();
        *v80 = 0;
        return;
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_18:
    *v80 = 1;
    if (_swift_isClassOrObjCExistentialType())
    {
      v51 = v81;
      if (v81 >= 1)
      {
        v52 = (v87 + 56);
        v53 = v86 - 8;
        v54 = v81;
        v55 = v75;
        v56 = v87;
        while (1)
        {
          v89 = *(v53 + 8 * v54);
          swift_unknownObjectRetain();
          v57 = swift_dynamicCast();
          v58 = *v52;
          if (!v57)
          {
            break;
          }

          --v54;
          v58(v55, 0, 1, a9);
          v59 = *(v56 + 32);
          v60 = v82;
          v59(v82, v55, a9);
          v59((v86 + *(v56 + 72) * v54), v60, a9);
          if ((v54 + 1) <= 1)
          {
            goto LABEL_33;
          }
        }

        v58(v55, 1, 1, a9);
        (*(v77 + 8))(v55, v76);
        goto LABEL_40;
      }
    }

    else
    {
      v51 = v81;
      if (v81 >= 1)
      {
        v61 = (v87 + 56);
        v85 = (v77 + 32);
        v62 = (v87 + 48);
        v63 = v86 - 8;
        v54 = v81;
        v64 = v83;
        while (1)
        {
          v65 = *(v63 + 8 * v54);
          swift_unknownObjectRetain();
          if (_swift_isClassOrObjCExistentialType())
          {
            v89 = v65;
            v66 = v84;
            v67 = swift_dynamicCast();
            (*v61)(v66, v67 ^ 1u, 1, a9);
          }

          else
          {
            v71 = v73;
            (*v61)(v73, 1, 1, a9);
            _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)();
            swift_unknownObjectRelease();
            v66 = v84;
            (*v85)(v84, v71, v76);
          }

          if ((*v62)(v66, 1, a9) == 1)
          {
            break;
          }

          --v54;
          v68 = v87;
          v69 = v66;
          v70 = *(v87 + 32);
          v70(v64, v69, a9);
          v70((v86 + *(v68 + 72) * v54), v64, a9);
          if ((v54 + 1) <= 1)
          {
            goto LABEL_33;
          }
        }

        (*(v77 + 8))(v66, v76);
        goto LABEL_40;
      }
    }

    v54 = v51;
    if (!v51)
    {
LABEL_33:
      *v80 = 1;
      return;
    }

LABEL_40:
    if (!__OFSUB__(v81, v54))
    {
      swift_arrayDestroy();
      *v80 = 0;
      swift_arrayDestroy();
      return;
    }

    goto LABEL_43;
  }

LABEL_45:
  __break(1u);
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CGSize(uint64_t a1, uint64_t a2)
{

  return protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CGPoint(a1, a2, "{CGSize=dd}");
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(uint64_t a1, void *a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeNil(forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:)) & 1;
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void, void, void, void, void))
{
  return a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]);
}

{
  return a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]);
}

{
  return a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]);
}

{
  return a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]);
}

{
  return a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]);
}

uint64_t _PlistDecoder.unwrapString<A>(from:for:_:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v43 = a5;
  v44 = a3;
  v11 = *v5;
  v12 = *(a4 - 8);
  v41 = v6;
  v42 = v12;
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v45 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = *(v11 + 80);
  v22 = *(v11 + 88);
  if ((*(v22 + 40))(a1, v21, v22, v18))
  {
    v39 = a2;
    v41 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    *v23 = MEMORY[0x1E69E6158];
    v25 = *(v45 + 16);
    v25(v20, v44, v14);
    v25(v16, v20, v14);
    v26 = v42;
    if ((*(v42 + 48))(v16, 1, a4) == 1)
    {
      v27 = *(v45 + 8);
      v27(v16, v14);
      v28 = _CodingPathNode.path.getter(v39);
      v27(v20, v14);
    }

    else
    {
      v31 = *(v26 + 32);
      v44 = v24;
      v32 = v40;
      v31(v40, v16, a4);
      v33 = _CodingPathNode.path.getter(v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v35 = v43;
      *(inited + 56) = a4;
      *(inited + 64) = v35;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v26 + 16))(boxed_opaque_existential_0, v32, a4);
      v46 = v33;
      specialized Array.append<A>(contentsOf:)(inited);
      v37 = v32;
      v24 = v44;
      (*(v26 + 8))(v37, a4);
      (*(v45 + 8))(v20, v14);
      v28 = v46;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v41 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
  }

  else
  {
    v29 = v7[3];
    v30 = *(v22 + 72);
    swift_unknownObjectRetain();
    v28 = v30(a1, v29, a2, v44, a4, v43, v21, v22);
    swift_unknownObjectRelease();
  }

  return v28;
}

char *_PlistKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a4;
  v66 = a3;
  v67 = a2;
  v13 = type metadata accessor for Optional();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v49 - v14;
  swift_getAssociatedTypeWitness();
  v58 = a6;
  v59 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v49 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - v23;
  v61 = v20;
  v60 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v49 = &v49 - v26;
  v62 = a1;
  v64 = a5;
  v65 = a7;
  v27 = dispatch thunk of CodingKey.stringValue.getter();
  v29 = v66;
  if (!*(v66 + 16))
  {

    goto LABEL_6;
  }

  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_6:
    (*(v60 + 56))(v24, 1, 1, v61);
    (*(v22 + 8))(v24, v21);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v62, v63, v64, v65, v41, &_sSSmMd, &_sSSmMR, &_sSSmmMd, &_sSSmmMR);
    swift_willThrow();
    return v24;
  }

  v34 = v55;
  v33 = v56;
  v35 = *(v29 + 56) + *(v55 + 72) * v30;
  v36 = v53;
  (*(v55 + 16))(v53, v35, v56);
  v37 = v54;
  (*(v34 + 32))(v54, v36, v33);
  v38 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v39 = swift_checkMetadataState();
  v40 = v57;
  v38(v37, v39, AssociatedConformanceWitness);
  (*(v34 + 8))(v37, v33);
  swift_unknownObjectRelease();
  if (!v40)
  {
    v44 = v60;
    v43 = v61;
    (*(v60 + 56))(v24, 0, 1, v61);
    v45 = v49;
    (*(v44 + 32))(v49, v24, v43);
    v46 = v64;
    v47 = *(v64 - 8);
    v48 = v50;
    (*(v47 + 16))(v50, v62, v64);
    (*(v47 + 56))(v48, 0, 1, v46);
    v24 = _PlistDecoder.unwrapString<A>(from:for:_:)(v45, v63, v48, v46, v65);
    (*(v51 + 8))(v48, v52);
    (*(v44 + 8))(v45, v43);
  }

  return v24;
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

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t BPlistScanner.scanInteger(rawTypeMarker:index:objectRangeEndIndex:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result & 0xF;
  if (v4 > 4)
  {
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    return swift_willThrow();
  }

  v6 = 1 << v4;
  v7 = (a2 + 1);
  if (a3 - (a2 + 1) < 1 << v4)
  {
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v8 = xmmword_181247320;
    return swift_willThrow();
  }

  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[4];
  v13 = (1 << v4);
  if (v13 <= 3)
  {
    switch(v13)
    {
      case 1u:
        if (v12 < v11)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        if ((v11 - v9) < 0)
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        if ((v12 - v11) < 0)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if ((v9 + v10 - v12) < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v14 = *v7;
        break;
      case 2u:
        if (v12 < v11)
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if ((v11 - v9) < 0)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if ((v12 - v11) < 0)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        if ((v9 + v10 - v12) < 0)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v14 = __rev16(*(a2 + 1));
        break;
      case 3u:
LABEL_12:
        if (v12 < v11)
        {
          __break(1u);
        }

        else if ((v11 - v9) >= 0)
        {
          if ((v12 - v11) >= 0)
          {
            if ((v9 + v10 - v12) >= 0)
            {
              v14 = 0;
              do
              {
                v15 = *v7++;
                v14 = v15 | (v14 << 8);
                --v6;
              }

              while (v6);
              break;
            }

            goto LABEL_51;
          }

LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        __break(1u);
        goto LABEL_50;
      default:
        goto LABEL_36;
    }

LABEL_47:
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v4 != 4;
    return v17 | 0x8000000000000000;
  }

  if (v13 - 5 < 3)
  {
    goto LABEL_12;
  }

  if (v13 != 4)
  {
    if (v13 == 8)
    {
      if (v12 >= v11)
      {
        if ((v11 - v9) >= 0)
        {
          if ((v12 - v11) >= 0)
          {
            if ((v9 + v10 - v12) >= 0)
            {
              v16 = *(a2 + 1);
LABEL_41:
              v14 = bswap64(v16);
              goto LABEL_47;
            }

            goto LABEL_70;
          }

          goto LABEL_68;
        }

        goto LABEL_66;
      }

      goto LABEL_64;
    }

LABEL_36:
    if (v12 >= v11)
    {
      if ((v11 - v9) >= 0)
      {
        if ((v12 - v11) >= 0)
        {
          if ((v9 + v10 - v12) >= 0)
          {
            v16 = *&v7[v6 - 8];
            goto LABEL_41;
          }

          goto LABEL_63;
        }

LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v12 < v11)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if ((v11 - v9) < 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v12 - v11) < 0)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if ((v9 + v10 - v12) >= 0)
  {
    v14 = bswap32(*(a2 + 1));
    goto LABEL_47;
  }

LABEL_71:
  __break(1u);
  return result;
}

uint64_t BPlistMap.Value.integerValue<A, B>(in:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v152 = a7;
  v153 = a3;
  v154 = a2;
  v155 = a4;
  v149 = a8;
  v156 = *(a6 - 8);
  v150 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v148 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v141 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v142 = &v141 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v141 - v16;
  v157 = v18;
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v159 = v19;
  v160 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v151 = &v141 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v145 = &v141 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v147 = &v141 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v144 = &v141 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v146 = &v141 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v141 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v141 - v37;
  v39 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v141 - v43;
  v49 = MEMORY[0x1EEE9AC00](v45);
  v51 = &v141 - v50;
  if (v47 >> 60 != 7)
  {
    if (v47 >> 60 != 8)
    {
      v77 = v47;
      v79 = v159;
      v78 = v160;
      v80 = *(v160 + 16);
      v81 = v151;
      v80(v151, v155, v159, v49);
      (v80)(v22, v81, v79);
      v83 = v156;
      v82 = v157;
      if ((*(v156 + 48))(v22, 1, v157) == 1)
      {
        v84 = *(v78 + 8);
        v84(v22, v79);
        _CodingPathNode.path.getter(v153);
        v84(v81, v79);
      }

      else
      {
        v108 = v148;
        (*(v83 + 32))(v148, v22, v82);
        v109 = v82;
        v110 = _CodingPathNode.path.getter(v153);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v112 = v150;
        *(inited + 56) = v109;
        *(inited + 64) = v112;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(v83 + 16))(boxed_opaque_existential_0, v108, v109);
        v162 = v110;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v83 + 8))(v108, v109);
        (*(v78 + 8))(v151, v79);
      }

      type metadata accessor for DecodingError();
      swift_allocError();
      _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5Tm(v154, v77, BPlistMap.Value.debugDataTypeDescription.getter, v114);

      return swift_willThrow();
    }

    v52 = v48;
    v53 = v46;
    v54 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    if (*((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
    {
      v162 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      dispatch thunk of Numeric.init<A>(exactly:)();
      v55 = *(a5 - 8);
      if ((*(v55 + 48))(v41, 1, a5) == 1)
      {
        (*(v52 + 8))(v41, v53);
        v162 = 0;
        v163 = 0xE000000000000000;
        _StringGuts.grow(_:)(52);
        MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
        v161 = v54;
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v56);

        MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
        v57 = _typeName(_:qualified:)();
        MEMORY[0x1865CB0E0](v57);

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        v154 = v162;
        v152 = v163;
        v58 = type metadata accessor for DecodingError();
        v59 = swift_allocError();
        v151 = v60;
        v62 = v159;
        v61 = v160;
        v63 = *(v160 + 16);
        v64 = v147;
        v63(v147, v155, v159);
        v65 = v145;
        v63(v145, v64, v62);
        v66 = v65;
        v68 = v156;
        v67 = v157;
        if ((*(v156 + 48))(v66, 1, v157) == 1)
        {
          v69 = *(v61 + 8);
          v69(v66, v62);
          _CodingPathNode.path.getter(v153);
          v69(v64, v62);
        }

        else
        {
          v125 = v143;
          (*(v68 + 32))(v143, v66, v67);
          v126 = _CodingPathNode.path.getter(v153);
          v158 = v59;
          v127 = v67;
          v128 = v126;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
          v129 = swift_initStackObject();
          *(v129 + 16) = xmmword_181218E20;
          v130 = v150;
          *(v129 + 56) = v127;
          *(v129 + 64) = v130;
          v131 = __swift_allocate_boxed_opaque_existential_0((v129 + 32));
          (*(v68 + 16))(v131, v125, v127);
          v162 = v128;
          specialized Array.append<A>(contentsOf:)(v129);
          (*(v68 + 8))(v125, v127);
          (*(v61 + 8))(v147, v62);
        }

LABEL_37:
        v139 = v151;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v58 - 8) + 104))(v139, *MEMORY[0x1E69E6B00]);
        return swift_willThrow();
      }

      v51 = v41;
    }

    else
    {
      v162 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      dispatch thunk of Numeric.init<A>(exactly:)();
      v55 = *(a5 - 8);
      if ((*(v55 + 48))(v44, 1, a5) == 1)
      {
        (*(v52 + 8))(v44, v53);
        v162 = 0;
        v163 = 0xE000000000000000;
        _StringGuts.grow(_:)(52);
        MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
        v161 = v54;
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v85);

        MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
        v86 = _typeName(_:qualified:)();
        MEMORY[0x1865CB0E0](v86);

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        v154 = v162;
        v152 = v163;
        v58 = type metadata accessor for DecodingError();
        v87 = swift_allocError();
        v151 = v88;
        v90 = v159;
        v89 = v160;
        v91 = *(v160 + 16);
        v92 = v146;
        v91(v146, v155, v159);
        v93 = v144;
        v91(v144, v92, v90);
        v94 = v93;
        v96 = v156;
        v95 = v157;
        if ((*(v156 + 48))(v94, 1, v157) == 1)
        {
          v97 = *(v89 + 8);
          v97(v94, v90);
          _CodingPathNode.path.getter(v153);
          v97(v92, v90);
        }

        else
        {
          v132 = v142;
          (*(v96 + 32))(v142, v94, v95);
          v133 = _CodingPathNode.path.getter(v153);
          v158 = v87;
          v134 = v95;
          v135 = v133;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
          v136 = swift_initStackObject();
          *(v136 + 16) = xmmword_181218E20;
          v137 = v150;
          *(v136 + 56) = v134;
          *(v136 + 64) = v137;
          v138 = __swift_allocate_boxed_opaque_existential_0((v136 + 32));
          (*(v96 + 16))(v138, v132, v134);
          v162 = v135;
          specialized Array.append<A>(contentsOf:)(v136);
          (*(v96 + 8))(v132, v134);
          (*(v89 + 8))(v146, v90);
        }

        goto LABEL_37;
      }

      v51 = v44;
    }

    return (*(v55 + 32))(v149, v51, a5);
  }

  v151 = v35;
  v147 = v17;
  v148 = v38;
  v70 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v71 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  if (v71 == 8)
  {
    v72 = v48;
    v73 = v46;
    v74 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v75 = v159;
    v76 = v160;
    if ((~v70 & 0x7FF0000000000000) == 0 && (v70 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v74 = NAN;
    }

LABEL_25:
    v162 = *&v74;
    lazy protocol witness table accessor for type Double and conformance Double();
    dispatch thunk of BinaryInteger.init<A>(exactly:)();
    v55 = *(a5 - 8);
    if ((*(v55 + 48))(v51, 1, a5) == 1)
    {
      (*(v72 + 8))(v51, v73);
      v162 = 0;
      v163 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);
      MEMORY[0x1865CB0E0](0xD000000000000016, 0x80000001814848F0);
      Double.write<A>(to:)();
      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      v99 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v99);

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v159 = v162;
      v154 = v163;
      v160 = type metadata accessor for DecodingError();
      v100 = swift_allocError();
      v152 = v101;
      v102 = *(v76 + 16);
      v103 = v148;
      v102(v148, v155, v75);
      v104 = v151;
      v102(v151, v103, v75);
      v106 = v156;
      v105 = v157;
      if ((*(v156 + 48))(v104, 1, v157) == 1)
      {
        v107 = *(v76 + 8);
        v107(v104, v75);
        _CodingPathNode.path.getter(v153);
        v107(v103, v75);
      }

      else
      {
        v116 = v104;
        v117 = v147;
        (*(v106 + 32))(v147, v116, v105);
        v118 = _CodingPathNode.path.getter(v153);
        v158 = v100;
        v119 = v105;
        v120 = v118;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        v121 = swift_initStackObject();
        *(v121 + 16) = xmmword_181218E20;
        v122 = v150;
        *(v121 + 56) = v119;
        *(v121 + 64) = v122;
        v123 = __swift_allocate_boxed_opaque_existential_0((v121 + 32));
        (*(v106 + 16))(v123, v117, v119);
        v162 = v120;
        specialized Array.append<A>(contentsOf:)(v121);
        (*(v106 + 8))(v117, v119);
        (*(v76 + 8))(v103, v75);
      }

      v124 = v152;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v160 - 8) + 104))(v124, *MEMORY[0x1E69E6B00]);
      return swift_willThrow();
    }

    return (*(v55 + 32))(v149, v51, a5);
  }

  v75 = v159;
  v76 = v160;
  if (v71 == 4)
  {
    v71 = v158;
    if (!HIDWORD(v70))
    {
      v72 = v48;
      v73 = v46;
      if ((v70 & 0x7FFFFF) != 0 && (~v70 & 0x7F800000) == 0)
      {
        v74 = NAN;
      }

      else
      {
        v74 = *&v70;
      }

      goto LABEL_25;
    }

    __break(1u);
  }

  v162 = 0;
  v163 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v162 = 0xD000000000000023;
  v163 = 0x80000001814848C0;
  v161 = v71;
  v140 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v140);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void type metadata completion function for _PlistUnkeyedDecodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _PlistDecoder(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      type metadata accessor for Optional();
      if (v6 <= 0x3F)
      {
        type metadata accessor for Int?();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Int?()
{
  if (!lazy cache variable for type metadata for Int?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int?);
    }
  }
}

uint64_t _PlistDecoder.singleValueContainer()@<X0>(void *a1@<X8>, uint64_t a2@<X3>)
{
  a1[3] = type metadata accessor for _PlistDecoder(0, *(*v2 + 80), *(*v2 + 88), a2);
  a1[4] = swift_getWitnessTable();
  *a1 = v2;
}

uint64_t _PlistDecoder.decode(_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v20 = &v18 - v11;
  v12 = *(v0 + 16);

  if (MEMORY[0x1865CB560](v13, AssociatedTypeWitness))
  {
    v19 = v0;
    v21 = v12;
    type metadata accessor for Array();
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    (*(v3 + 16))(v5, v8, v2);
    if ((*(v9 + 48))(v5, 1, AssociatedTypeWitness) != 1)
    {

      (*(v3 + 8))(v8, v2);
      v14 = v20;
      (*(v9 + 32))(v20, v5, AssociatedTypeWitness);
      v15 = *(v19 + 40);

      v16 = specialized _PlistDecoder.unwrapString<A>(from:for:_:)(v14, v15, 0, 0, 0, 255);
      (*(v9 + 8))(v14, AssociatedTypeWitness);

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v3 + 8))(v5, v2);
  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  v33 = v4;
  v34 = v3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v32 - v15;
  v16 = *(v2 + 16);

  if (MEMORY[0x1865CB560](v17, AssociatedTypeWitness))
  {
    v32 = v1;
    v36[0] = v16;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v38 = v13;
    BidirectionalCollection.last.getter();
    v18 = v38;
    (*(v7 + 16))(v9, v12, v6);
    if ((*(v18 + 48))(v9, 1, AssociatedTypeWitness) != 1)
    {

      (*(v7 + 8))(v12, v6);
      v19 = v35;
      (*(v18 + 32))(v35, v9, AssociatedTypeWitness);
      v20 = *(v2 + 40);
      memset(v36, 0, sizeof(v36));
      v37 = -1;
      v21 = v33;
      v22 = v34;
      if ((*(v34 + 40))(v19, v33, v34))
      {
        v23 = type metadata accessor for DecodingError();
        swift_allocError();
        v25 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
        *v25 = MEMORY[0x1E69E6370];

        _CodingPathNode.path.getter(v20);
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B08], v23);
        swift_willThrow();
      }

      else
      {
        LOBYTE(v23) = v22 + 48;
        v26 = *(v22 + 48);
        v27 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();

        v28 = v27;
        v29 = v32;
        v30 = v26(v19, v20, v36, &type metadata for _CodingKey, v28, v21, v22);
        if (!v29)
        {
          LOBYTE(v23) = v30;
          (*(v38 + 8))(v19, AssociatedTypeWitness);

          return v23 & 1;
        }
      }

      (*(v38 + 8))(v19, AssociatedTypeWitness);

      return v23 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v7 + 8))(v9, v6);
  __break(1u);
  return result;
}

{
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Optional();
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v20 = v0;
  v14 = *(v0 + 16);

  if (MEMORY[0x1865CB560](v15, AssociatedTypeWitness))
  {
    v18 = v1;
    v21 = v14;
    type metadata accessor for Array();
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    v2 = v19;
    (*(v4 + 16))(v6, v9, v19);
    if ((*(v10 + 48))(v6, 1, AssociatedTypeWitness) != 1)
    {

      (*(v4 + 8))(v9, v2);
      (*(v10 + 32))(v13, v6, AssociatedTypeWitness);
      v16 = *(v20 + 40);

      specialized _PlistDecoder.unwrapFloatingPoint<A, B>(from:for:_:)(v13, v16, 0, 0, 0, 255);
      (*(v10 + 8))(v13, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v4 + 8))(v6, v2);
  __break(1u);
  return result;
}

{
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Optional();
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v20 = v0;
  v14 = *(v0 + 16);

  if (MEMORY[0x1865CB560](v15, AssociatedTypeWitness))
  {
    v18 = v1;
    v21 = v14;
    type metadata accessor for Array();
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    v2 = v19;
    (*(v4 + 16))(v6, v9, v19);
    if ((*(v10 + 48))(v6, 1, AssociatedTypeWitness) != 1)
    {

      (*(v4 + 8))(v9, v2);
      (*(v10 + 32))(v13, v6, AssociatedTypeWitness);
      v16 = *(v20 + 40);

      specialized _PlistDecoder.unwrapFloatingPoint<A, B>(from:for:_:)(v13, v16, 0, 0, 0, 255);
      (*(v10 + 8))(v13, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v4 + 8))(v6, v2);
  __break(1u);
  return result;
}

uint64_t specialized _PlistDecoder.unwrapString<A>(from:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v28 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E6158];
    if (a6 == -1)
    {
      v20 = _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      v20 = _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v22 = swift_allocObject();
      *(inited + 32) = v22;
      *(v22 + 16) = a3;
      *(v22 + 24) = a4;
      *(v22 + 32) = a5;
      *(v22 + 40) = a6;
      v29 = v20;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    swift_willThrow();
  }

  else
  {
    v23 = v7[3];
    v24 = *(v16 + 72);
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v20 = v24(a1, v23, a2, v27, &type metadata for _CodingKey, v25, v15, v16);
    swift_unknownObjectRelease();
  }

  return v20;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _PlistDecoder<A>()
{
  return _PlistDecoder.decode(_:)();
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)() & 1;
}

{
  return _PlistDecoder.decode(_:)();
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)();
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

uint64_t _PlistUnkeyedDecodingContainer.decode<A>(_:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a5;
  v73 = a4;
  v81 = a1;
  v82 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v60 - v10;
  v78 = v8;
  v83 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v60 - v12;
  v77 = AssociatedConformanceWitness;
  v75 = AssociatedTypeWitness;
  v13 = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v71 = &v60 - v29;
  v30 = *(v15 + 16);
  v66 = *(a2 + 40);
  v30(v17, &v84[v66], v14, v28);
  v79 = *(v21 + 48);
  v31 = v79(v17, 1, v13);
  v80 = v14;
  v74 = v15;
  if (v31 == 1)
  {
    v60 = v21 + 48;
    v63 = v20;
    v64 = v13;
    v62 = v21;
    v61 = *(v15 + 8);
    v61(v17, v14);
    v65 = a2;
    v32 = v77;
    swift_getAssociatedTypeWitness();
    v33 = swift_getAssociatedConformanceWitness();
    v34 = *(v33 + 16);
    v35 = swift_checkMetadataState();
    v36 = v84;
    v37 = v76;
    v34(v35, v33);
    v38 = v78;
    if ((*(v83 + 48))(v37, 1, v78) == 1)
    {
      (*(v68 + 8))(v37, v69);
      v39 = v63;
      (*(v62 + 56))(v63, 1, 1, v64);
      v40 = v82;
      v41 = v65;
      v61(v39, v80);
LABEL_7:
      type metadata accessor for DecodingError();
      v44 = swift_allocError();
      _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v81, v41, v40, v45);
      v85 = v44;
      return swift_willThrow();
    }

    v51 = v70;
    (*(v83 + 32))(v70, v37, v38);
    v52 = *(v32 + 80);
    swift_unknownObjectRetain();
    v53 = v51;
    v54 = swift_checkMetadataState();
    v55 = v67;
    v56 = v85;
    v52(v53, v54, v32);
    v85 = v56;
    if (v56)
    {
      (*(v83 + 8))(v53, v38);
      return swift_unknownObjectRelease();
    }

    (*(v83 + 8))(v53, v38);
    swift_unknownObjectRelease();
    v58 = v66;
    v61(&v36[v66], v80);
    v21 = v62;
    v13 = v64;
    (*(v62 + 16))(&v36[v58], v55, v64);
    v43 = *(v21 + 56);
    (v43)(&v36[v58], 0, 1, v13);
    v42 = *(v21 + 32);
    v59 = v55;
    v20 = v63;
    v42(v63, v59, v13);
    (v43)(v20, 0, 1, v13);
    v41 = v65;
  }

  else
  {
    v42 = *(v21 + 32);
    v42(v26, v17, v13);
    v42(v20, v26, v13);
    v43 = *(v21 + 56);
    (v43)(v20, 0, 1, v13);
    v36 = v84;
    v41 = a2;
  }

  if (v79(v20, 1, v13) == 1)
  {
    v40 = v82;
    (*(v74 + 8))(v20, v80);
    goto LABEL_7;
  }

  v84 = v43;
  v47 = v71;
  v42(v71, v20, v13);
  v48 = *(v41 + 48);
  v49 = *&v36[v48];
  v50 = v85;
  specialized _PlistDecoder.unwrapGeneric<A, B>(_:as:for:_:)(v47, v81, *&v36[*(v41 + 52)], v49, 0, 0, 2u, v82, v72, v73);
  v85 = v50;
  if (v50)
  {
    return (*(v21 + 8))(v47, v13);
  }

  (*(v21 + 8))(v47, v13);
  *&v36[v48] = v49 + 1;
  v57 = v66;
  (*(v74 + 8))(&v36[v66], v80);
  return (v84)(&v36[v57], 1, 1, v13);
}

void protocol witness for PlistArrayIterator.next() in conformance BPlistMap.ArrayIterator(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    v4 = 0;
LABEL_5:
    *a1 = v4;
    *(a1 + 8) = v2 == v3;
    return;
  }

  if (v2 < v3)
  {
    v4 = *(*v1 + 8 * v2 + 32);
    v1[1] = v2 + 1;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t PropertyListDecoder.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t _PlistDecoder.unwrapGeneric<A, B>(_:as:for:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v89 = a7;
  v84 = a6;
  v87 = a4;
  v92 = a1;
  v93 = a3;
  v95 = a2;
  v86 = a8;
  v10 = *(*v8 + 88);
  v11 = *(*v8 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v82 = v78 - v12;
  v88 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v81 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v78 - v16;
  v94 = a5;
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v78 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v78 - v25;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v78 - v31;
  if (v28 != &type metadata for Date)
  {
    v80 = v11;
    v79 = v10;
    if (v28 != &type metadata for Data)
    {
      v78[1] = v28;
      v33 = *(v29 + 16);
      v34 = v29;
      v33(v23, v93, v18, v30);
      (v33)(v20, v23, v18);
      v35 = v88;
      v36 = v94;
      v37 = (*(v88 + 48))(v20, 1, v94);
      v38 = v91;
      if (v37 == 1)
      {
        v39 = *(v34 + 8);
        v39(v23, v18);
        v39(v20, v18);
        v40 = v95;

        v43 = AssociatedTypeWitness;
LABEL_20:
        v73 = *(v38 + 40);
        *(v38 + 40) = v40;
        v74 = type metadata accessor for _PlistDecodingStorage(0, v43, v41, v42);

        specialized _PlistDecodingStorage.push(container:)(v92, v74);
        v96[3] = type metadata accessor for _PlistDecoder(0, v80, v79, v75);
        v96[4] = swift_getWitnessTable();
        v96[0] = v38;

        v76 = v90;
        dispatch thunk of Decodable.init(from:)();
        if (v76)
        {
          *(v38 + 40) = v73;

          if (MEMORY[0x1865CB560](*(v38 + 16), v43))
          {
LABEL_24:
            type metadata accessor for Array();
            swift_getWitnessTable();
            swift_getWitnessTable();
            v77 = v82;
            RangeReplaceableCollection<>.removeLast()();

            return (*(v83 + 8))(v77, v43);
          }

          __break(1u);
        }

        *(v38 + 40) = v73;

        result = MEMORY[0x1865CB560](*(v38 + 16), v43);
        if (result)
        {
          goto LABEL_24;
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v56 = *(v35 + 32);
      v57 = v81;
      v56(v81, v20, v36);
      v40 = swift_allocObject();
      v58 = v89;
      v40[5] = v36;
      v40[6] = v58;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v40 + 2);
      v56(boxed_opaque_existential_0, v57, v36);
      (*(v34 + 8))(v23, v18);
      v60 = v95;
      v40[7] = v95;
      if (v60 >> 62)
      {
        if (v60 >> 62 != 1)
        {
          v43 = AssociatedTypeWitness;
          v72 = 1;
LABEL_19:
          v40[8] = v72;
          goto LABEL_20;
        }

        v61 = ((v60 & 0x3FFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v61 = (v60 + 64);
      }

      v43 = AssociatedTypeWitness;
      v71 = *v61;

      v72 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    v53 = v90;
    result = _PlistDecoder.unwrapData<A>(from:for:_:)(v92, v95, v93, v94, v89);
    if (v53)
    {
      return result;
    }

    v96[0] = result;
    v96[1] = v55;
    return swift_dynamicCast();
  }

  AssociatedTypeWitness = v17;
  v44 = v29;
  v45 = v92;
  v46 = v11;
  if (((*(v10 + 40))(v92, v11, v10, v30) & 1) == 0)
  {
    v62 = *(v91 + 24);
    v63 = *(v10 + 56);
    swift_unknownObjectRetain();
    v64 = v90;
    v63(v96, v45, v62, v95, v93, v94, v89, v46, v10);
    result = swift_unknownObjectRelease();
    if (v64)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  v91 = type metadata accessor for DecodingError();
  v92 = swift_allocError();
  v90 = v47;
  *v47 = &type metadata for Date;
  v48 = v44;
  v49 = *(v44 + 16);
  v49(v32, v93, v18);
  v49(v26, v32, v18);
  v50 = v88;
  v51 = v94;
  if ((*(v88 + 48))(v26, 1, v94) == 1)
  {
    v52 = *(v48 + 8);
    v52(v26, v18);
    _CodingPathNode.path.getter(v95);
    v52(v32, v18);
  }

  else
  {
    v65 = AssociatedTypeWitness;
    (*(v50 + 32))(AssociatedTypeWitness, v26, v51);
    v66 = _CodingPathNode.path.getter(v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    v68 = v89;
    *(inited + 56) = v51;
    *(inited + 64) = v68;
    v69 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(v50 + 16))(v69, v65, v51);
    v96[7] = v66;
    specialized Array.append<A>(contentsOf:)(inited);
    (*(v50 + 8))(v65, v51);
    (*(v48 + 8))(v32, v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
  v70 = v90;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v91 - 8) + 104))(v70, *MEMORY[0x1E69E6B08]);
  return swift_willThrow();
}

uint64_t _PlistDecoder.decode<A>(_:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v53 = a3;
  v54 = a4;
  v55 = a2;
  v59 = a1;
  v6 = *(*v4 + 88);
  v7 = *(*v4 + 80);
  swift_getAssociatedTypeWitness();
  v60 = v6;
  v56 = v7;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v50 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v51 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v58 = v50 - v20;
  v21 = v5[2];
  v52 = (v5 + 2);

  if (!MEMORY[0x1865CB560](v22, AssociatedTypeWitness))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v61[0] = v21;
  v23 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v64 = v16;
  v50[0] = WitnessTable;
  v50[1] = v23;
  BidirectionalCollection.last.getter();
  v25 = v64;
  (*(v10 + 16))(v12, v15, v9);
  if ((*(v25 + 48))(v12, 1, AssociatedTypeWitness) != 1)
  {

    (*(v10 + 8))(v15, v9);
    v26 = v58;
    (*(v25 + 32))(v58, v12, AssociatedTypeWitness);
    v9 = v5[5];
    memset(v62, 0, sizeof(v62));
    v63 = -1;
    v29 = &type metadata for Date;
    if (v59 == &type metadata for Date)
    {
LABEL_8:
      v34 = v60;
      v35 = v56;
      if (((*(v60 + 40))(v26, v56, v60) & 1) == 0)
      {
        v43 = v5[3];
        v44 = *(v34 + 56);
        v45 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v59 = (v9 & 0x3FFFFFFFFFFFFFFFLL);

        swift_unknownObjectRetain();
        v46 = v45;
        v47 = v57;
        v44(v61, v26, v43, v9, v62, &type metadata for _CodingKey, v46, v35, v34);
        swift_unknownObjectRelease();
        if (!v47)
        {
          swift_dynamicCast();
        }

        v42 = v64;
        goto LABEL_19;
      }

      v36 = type metadata accessor for DecodingError();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v38 = v29;

      _CodingPathNode.path.getter(v9);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6B08], v36);
      swift_willThrow();
      goto LABEL_12;
    }

    v30 = v60;
    v29 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
    if (v59 == &type metadata for Data)
    {

      v39 = v57;
      v40 = specialized _PlistDecoder.unwrapData<A>(from:for:_:)(v26, v9, 0, 0, 0, 255);
      if (!v39)
      {
        v61[0] = v40;
        v61[1] = v41;
        swift_dynamicCast();
      }

LABEL_12:
      v42 = v64;
LABEL_19:
      (*(v42 + 8))(v26, AssociatedTypeWitness);
    }

    v31 = type metadata accessor for _PlistDecodingStorage(0, AssociatedTypeWitness, v27, v28);
    swift_retain_n();
    v12 = v52;
    specialized _PlistDecodingStorage.push(container:)(v26, v31);
    v61[3] = type metadata accessor for _PlistDecoder(0, v56, v30, v32);
    v61[4] = swift_getWitnessTable();
    v61[0] = v5;

    v33 = v57;
    dispatch thunk of Decodable.init(from:)();
    v10 = v33;
    if (v33)
    {
      v5[5] = v9;

      if (!MEMORY[0x1865CB560](v5[2], AssociatedTypeWitness))
      {
        __break(1u);
        goto LABEL_8;
      }

LABEL_16:
      swift_getWitnessTable();
      v48 = v51;
      RangeReplaceableCollection<>.removeLast()();

      v42 = v64;
      (*(v64 + 8))(v48, AssociatedTypeWitness);
      goto LABEL_19;
    }

    v5[5] = v9;

    if (MEMORY[0x1865CB560](v5[2], AssociatedTypeWitness))
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

LABEL_22:
  result = (*(v10 + 8))(v12, v9);
  __break(1u);
  return result;
}

uint64_t specialized _PlistDecodingStorage.push(container:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v3, v4);
  type metadata accessor for Array();
  Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v8 = *v2;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v10 = v8;
  }

  Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(v10 + 16));
  return Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

id _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA10BufferViewVyAHG_Tt1B5(char *a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v45 = *MEMORY[0x1E69E9840];
  v5 = 2;
  if (a3 > 2348810495)
  {
    if (a3 > 2483028223)
    {
      if (a3 != 2483028224)
      {
        if (a3 != 2550137088)
        {
          if (a3 == 2617245952)
          {
            v5 = 0;
            goto LABEL_34;
          }

          goto LABEL_38;
        }

        v5 = 1;
LABEL_34:
        closure #2 in String.init<A>(bytes:encoding:)(a1, a2, v5, closure #1 in closure #3 in String.init<A>(bytes:encoding:), v44);
        if (*(&v44[0] + 1))
        {
          return *&v44[0];
        }

        result = specialized String.init<A, B>(_validating:as:)();
        if (!v14)
        {
          return 0;
        }

        return result;
      }

      goto LABEL_29;
    }

    if (a3 == 2348810496)
    {
      goto LABEL_34;
    }

    if (a3 == 2415919360)
    {
      v5 = 1;
      goto LABEL_30;
    }

LABEL_38:
    result = [objc_allocWithZone(NSString) initWithBytes:a1 length:a2 encoding:a3];
    if (!result)
    {
      return result;
    }

    v15 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v17 = v15;
    v18 = v17;
    if (!isTaggedPointer)
    {
      goto LABEL_44;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v17);
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v34 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v35)
      {
        v36 = v34;
      }

      else
      {
        [v18 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v36 = v43;
      }

      goto LABEL_81;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v20 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v20;
      }

LABEL_44:
      *&v44[0] = 0;
      if (__CFStringIsCF())
      {

        return 0;
      }

      v21 = v18;
      v22 = String.init(_nativeStorage:)();
      if (v23)
      {
        v24 = v22;

        return v24;
      }

      if (![v21 length])
      {

        return 0;
      }

      v36 = String.init(_cocoaString:)();
LABEL_81:

      return v36;
    }

    result = [v18 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v32)
      {
        v33 = result;

        return v33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_91;
  }

  if (a3 > 6)
  {
    if (a3 != 7)
    {
      if (a3 == 10)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }

LABEL_22:
    result = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5(a1, a2);
    if (v11)
    {
      return result;
    }

    if (one-time initialization token for compatibility1 != -1)
    {
      swift_once();
    }

    if (static String.compatibility1)
    {
      if (v3)
      {
        v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v3, 0);
        if (specialized Sequence._copyContents(initializing:)(v44, (v12 + 4), v3, v4, v3) != v3)
        {
          __break(1u);
LABEL_29:
          v5 = 0;
LABEL_30:
          closure #2 in String.init<A>(bytes:encoding:)(v4, v3, v5, closure #1 in closure #2 in String.init<A>(bytes:encoding:), v44);
          if (*(&v44[0] + 1))
          {
            return *&v44[0];
          }

          result = specialized String.init<A, B>(_validating:as:)(v4, v3, v5);
          if (!v13)
          {
            return 0;
          }

          return result;
        }
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      v25 = [objc_allocWithZone(NSString) initWithBytes:v12 + 4 length:v12[2] encoding:a3];
      if (v25)
      {
        v26 = v25;
        v27 = _objc_isTaggedPointer(v25);
        v28 = v26;
        v29 = v28;
        if (v27)
        {
          v30 = _objc_getTaggedPointerTag(v28);
          if (v30)
          {
            if (v30 != 22)
            {
              if (v30 == 2)
              {
                MEMORY[0x1EEE9AC00](v30);
                v31 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_86:

                return v31;
              }

              goto LABEL_55;
            }

            result = [v29 UTF8String];
            if (!result)
            {
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            result = String.init(utf8String:)(result);
            if (!v40)
            {
LABEL_92:
              __break(1u);
              return result;
            }

            v31 = result;
          }

          else
          {
            _CFIndirectTaggedPointerStringGetContents();
            v41 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v42)
            {
              [v29 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();

              return v43;
            }

            v31 = v41;
          }

          goto LABEL_85;
        }

LABEL_55:
        *&v44[0] = 0;
        if (__CFStringIsCF())
        {
          v31 = *&v44[0];
          if (!*&v44[0])
          {

            goto LABEL_86;
          }
        }

        else
        {
          v37 = v29;
          v38 = String.init(_nativeStorage:)();
          if (v39)
          {
            v31 = v38;

            goto LABEL_86;
          }

          *&v44[0] = [v37 length];
          if (!*&v44[0])
          {

            v31 = 0;
            goto LABEL_86;
          }
        }

        v31 = String.init(_cocoaString:)();
LABEL_85:

        goto LABEL_86;
      }
    }

    return 0;
  }

  if (a3 == 1)
  {
    goto LABEL_22;
  }

  if (a3 != 4)
  {
    goto LABEL_38;
  }

  if (specialized Sequence<>.starts<A>(with:)(&_sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA10BufferViewVyAHG_Tt1B5Tv_r, a1, a2))
  {
    v6 = v3 < 3;
    v3 -= 3;
    if (v6)
    {
      __break(1u);
    }

    v4 += 3;
  }

  result = static String._tryFromUTF8(_:)();
  if (!v8)
  {
    result = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v4, v3);
    if (!v9)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized _PlistDecoder.unwrapGeneric<A, B>(_:as:for:_:)@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v66 = a8;
  v70 = a7;
  v71 = a3;
  v65 = a9;
  v16 = *(*v10 + 88);
  v17 = *(*v10 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v67 = a4;
  v73[0] = a4;
  v73[1] = a5;
  v22 = a5;
  v23 = v70;
  v24 = a6;
  v73[2] = a6;
  v74 = v70;
  if (a2 == &type metadata for Date)
  {
    if ((*(v16 + 40))(a1, v17, v16, v21))
    {
      v27 = type metadata accessor for DecodingError();
      swift_allocError();
      v35 = v23;
      v23 = v36;
      *v36 = &type metadata for Date;
      if (v35 != -1)
      {
        v37 = v67;
        outlined copy of _CodingKey(v67, v22, a6, v35);
        v38 = _CodingPathNode.path.getter(v71);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v40 = swift_allocObject();
        *(inited + 32) = v40;
        *(v40 + 16) = v37;
        *(v40 + 24) = v22;
        *(v40 + 32) = a6;
        *(v40 + 40) = v35;
        v75 = v38;
        specialized Array.append<A>(contentsOf:)(inited);
LABEL_26:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v27 - 8) + 104))(v23, *MEMORY[0x1E69E6B08], v27);
        return swift_willThrow();
      }

LABEL_25:
      _CodingPathNode.path.getter(v71);
      goto LABEL_26;
    }

    v44 = *(v69 + 24);
    v45 = *(v16 + 56);
    v46 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v47 = v46;
    v48 = v68;
    v45(v72, a1, v44, v71, v73, &type metadata for _CodingKey, v47, v17, v16);
    result = swift_unknownObjectRelease();
    if (v48)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  v63 = v16;
  if (v20 == &type metadata for Data)
  {
    v41 = v68;
    result = specialized _PlistDecoder.unwrapData<A>(from:for:_:)(a1, v71, v67, v22, a6, v70);
    if (v41)
    {
      return result;
    }

    v72[0] = result;
    v72[1] = v43;
    return swift_dynamicCast();
  }

  v25 = v17;
  v62 = v20;
  v59 = &v59 - v18;
  v60 = v19;
  v26 = v22;
  v61 = a1;
  v27 = v69;
  if (v70 != 0xFF)
  {
    v28 = swift_allocObject();
    v28[5] = &type metadata for _CodingKey;
    v28[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v29 = swift_allocObject();
    v28[2] = v29;
    v30 = v67;
    *(v29 + 16) = v67;
    *(v29 + 24) = v26;
    *(v29 + 32) = v24;
    *(v29 + 40) = v23;
    v31 = v71;
    v32 = v71 >> 62;
    v28[7] = v71;
    v33 = v25;
    if (v31 >> 62)
    {
      if (v32 != 1)
      {
        v50 = 1;
        goto LABEL_17;
      }

      v34 = ((v31 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v34 = (v31 + 64);
    }

    v49 = *v34;

    v50 = v49 + 1;
    if (!__OFADD__(v49, 1))
    {
LABEL_17:
      v28[8] = v50;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_25;
  }

  v28 = v71;

  v30 = v67;
  v33 = v25;
LABEL_18:
  v71 = a10;
  v51 = *(v27 + 40);
  *(v27 + 40) = v28;
  outlined copy of _CodingKey?(v30, v26, v24, v23);
  v52 = AssociatedTypeWitness;
  v55 = type metadata accessor for _PlistDecodingStorage(0, AssociatedTypeWitness, v53, v54);

  specialized _PlistDecodingStorage.push(container:)(v61, v55);
  v72[3] = type metadata accessor for _PlistDecoder(0, v33, v63, v56);
  v72[4] = swift_getWitnessTable();
  v72[0] = v27;

  v57 = v68;
  dispatch thunk of Decodable.init(from:)();
  if (v57)
  {
    *(v27 + 40) = v51;

    if (MEMORY[0x1865CB560](*(v27 + 16), v52))
    {
LABEL_22:
      type metadata accessor for Array();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v58 = v59;
      RangeReplaceableCollection<>.removeLast()();

      return (*(v60 + 8))(v58, v52);
    }

    __break(1u);
  }

  *(v27 + 40) = v51;

  result = MEMORY[0x1865CB560](*(v27 + 16), v52);
  if (result)
  {
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_18083410C()
{
  outlined consume of _CodingKey(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_18083414C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

NSDate __swiftcall Date._bridgeToObjectiveC()()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E695DF00]);

  return [v2 initWithTimeIntervalSinceReferenceDate_];
}

uint64_t (*PropertyListDecoder.decode<A>(_:from:format:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void)
{
  v7 = *v6;
  v27 = a5;
  v28 = a6;
  v29 = a1;
  v21 = a5;
  v22 = v6;
  v23 = partial apply for closure #1 in PropertyListDecoder.decode<A>(_:from:format:);
  v24 = v26;
  v25 = a4;
  v15 = a5;
  v16 = v6;
  v17 = partial apply for closure #1 in PropertyListDecoder.decode<A>(_:from:format:);
  v18 = v26;
  v19 = a4;
  v9[2] = a5;
  v10 = v6;
  v11 = a4;
  v12 = partial apply for closure #1 in PropertyListDecoder.decode<A>(_:from:format:);
  v13 = v26;
  v35 = a5;
  v36 = partial apply for closure #1 in PropertyListDecoder._decode<A>(_:from:format:);
  v37 = &v20;
  v38 = v7;
  v39 = partial apply for closure #2 in PropertyListDecoder._decode<A>(_:from:format:);
  v40 = &v14;
  v41 = partial apply for closure #3 in PropertyListDecoder._decode<A>(_:from:format:);
  v42 = v9;
  v43 = v7;
  v31 = a5;
  v32 = partial apply for closure #1 in static PropertyListDecoder.detectFormatAndConvertEncoding<A>(for:binaryPlist:xml:openstep:);
  v33 = &v34;
  return Data._Representation.withUnsafeBytes<A>(_:)(partial apply for closure #1 in Data.withBufferView<A>(_:), v30, a2, a3);
}

uint64_t closure #1 in static PropertyListDecoder.detectFormatAndConvertEncoding<A>(for:binaryPlist:xml:openstep:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(_DWORD *, uint64_t, __n128)@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, void (*a6)(id)@<X7>, char *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v44 = a6;
  v47 = a4;
  v48 = a5;
  v46 = a7;
  v50 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v49);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  if (a2 >= 41 && *a1 == 1768714338 && *(a1 + 3) == 812938089)
  {
    return a3(a1, a2, v21);
  }

  v51 = v43 - v19;
  v45 = v20;
  result = static PropertyListDecoder.detectEncoding(of:)(&v52, a1, a2);
  if (!v10)
  {
    v24 = result;
    v25 = a2 < result;
    v26 = a2 - result;
    if (v25)
    {
      __break(1u);
    }

    else
    {
      v27 = v52;
      v28 = v51;
      v29 = (*(v50 + 56))(v51, 1, 1, a10);
      v43[1] = v43;
      MEMORY[0x1EEE9AC00](v29);
      v43[-4] = a10;
      v43[-3] = v28;
      v30 = v48;
      v43[-2] = v47;
      v43[-1] = v30;
      _s10Foundation19PropertyListDecoderC22withUTF8Representation2of14sourceEncoding_xAA10BufferViewVys5UInt8VG_SSAAE0J0VxAKKXEtKlFZyt_Tt3B5(a1 + v24, v26, v27, partial apply for closure #1 in closure #1 in static PropertyListDecoder.detectFormatAndConvertEncoding<A>(for:binaryPlist:xml:openstep:));
      v48 = 0;
      v43[0] = v27;
      v47 = v26;
      v31 = v45;
      v32 = v51;
      v33 = v49;
      (*(v45 + 16))(v17, v51, v49);
      v34 = v50;
      if ((*(v50 + 48))(v17, 1, a10) == 1)
      {
        v35 = *(v31 + 8);
        v35(v17, v33);
        v36 = _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA10BufferViewVyAHG_Tt1B5(a1 + v24, v47, v43[0]);
        if (v37)
        {
          v38 = v33;
          v44(v36);
        }

        else
        {
          v40 = type metadata accessor for DecodingError();
          swift_allocError();
          v42 = v41;
          _CodingPathNode.path.getter(0x8000000000000000);
          v38 = v49;
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6B00], v40);
          swift_willThrow();
        }

        return (v35)(v51, v38);
      }

      else
      {
        v39 = *(v34 + 32);
        v39(v15, v17, a10);
        v39(v46, v15, a10);
        return (*(v31 + 8))(v32, v33);
      }
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in PropertyListDecoder.decode<A>(_:from:format:)(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 8))(v4, v2, v3, v5, v6);
}

uint64_t _PlistDecoder.container<A>(keyedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v30 = a2;
  v26 = a4;
  v27 = a1;
  v5 = *(*v4 + 88);
  v6 = *(*v4 + 80);
  swift_getAssociatedTypeWitness();
  v31 = v5;
  v28 = v6;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v29 = v4;
  v18 = v4[2];

  if (MEMORY[0x1865CB560](v19, AssociatedTypeWitness))
  {
    v33 = v18;
    type metadata accessor for Array();
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    v4 = v25;
    (*(v8 + 16))(v10, v13, v25);
    if ((*(v14 + 48))(v10, 1, AssociatedTypeWitness) != 1)
    {

      (*(v8 + 8))(v13, v4);
      (*(v14 + 32))(v17, v10, AssociatedTypeWitness);
      v20 = v29;
      v21 = v29[5];
      v22 = *(v31 + 24);

      v22(v27, v17, v20, v21, v30, v32);
      (*(v14 + 8))(v17, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v8 + 8))(v10, v4);
  __break(1u);
  return result;
}

uint64_t _PlistKeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v63 = a3;
  v67 = a8;
  v68 = a5;
  v70 = a4;
  v71 = a2;
  v56 = a1;
  v54 = a9;
  v13 = type metadata accessor for Optional();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v52 - v14;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v59 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v52 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v52 - v23;
  v65 = v20;
  v64 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v53 = &v52 - v26;
  v69 = a6;
  v66 = a10;
  v27 = dispatch thunk of CodingKey.stringValue.getter();
  v29 = v70;
  if (!*(v70 + 16))
  {

    goto LABEL_6;
  }

  v52 = AssociatedConformanceWitness;
  v30 = v16;
  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_6:
    (*(v64 + 56))(v24, 1, 1, v65);
    (*(v22 + 8))(v24, v21);
    type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    MetatypeMetadata = swift_getMetatypeMetadata();
    _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v71, v68, v69, MetatypeMetadata, v44, v66);
    return swift_willThrow();
  }

  v34 = v30;
  v35 = v59;
  v36 = AssociatedTypeWitness;
  (*(v30 + 16))(v59, *(v29 + 56) + *(v30 + 72) * v31, AssociatedTypeWitness);
  v37 = v60;
  (*(v30 + 32))(v60, v35, v36);
  v38 = v52;
  v39 = *(v52 + 80);
  swift_unknownObjectRetain();
  v40 = swift_checkMetadataState();
  v41 = v62;
  v39(v37, v40, v38);
  (*(v34 + 8))(v37, v36);
  if (v41)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v47 = v64;
  v46 = v65;
  (*(v64 + 56))(v24, 0, 1, v65);
  v48 = v53;
  (*(v47 + 32))();
  v49 = v69;
  v50 = *(v69 - 8);
  v51 = v55;
  (*(v50 + 16))(v55, v71, v69);
  (*(v50 + 56))(v51, 0, 1, v49);
  _PlistDecoder.unwrapGeneric<A, B>(_:as:for:_:)(v48, v68, v51, v67, v49, a12, v66, v54);
  (*(v57 + 8))(v51, v58);
  return (*(v47 + 8))(v48, v46);
}

uint64_t _PlistDecoder.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PropertyListDecoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *specialized _PlistDecoder.init(referencing:options:codingPathNode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[2] = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);

  os_unfair_lock_lock(v9 + 10);
  closure #1 in BPlistMap.loadValue(at:)(&v9[4], v8, a1, &v17);
  os_unfair_lock_unlock(v9 + 10);
  if (v4)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13_PlistDecoderCyAA21_BPlistDecodingFormatVGMd, &_s10Foundation13_PlistDecoderCyAA21_BPlistDecodingFormatVGMR);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v17;

    v11 = v3[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      v3[2] = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v3[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    v15 = v3[2];
    *(v15 + 16) = v14 + 1;
    *(v15 + 8 * v14 + 32) = v10;
    v3[2] = v15;
    v3[4] = a2;
    v3[5] = a3;
  }

  return v3;
}

uint64_t BPlistScanner.scanDictionary(rawTypeMarker:index:objectRangeEndIndex:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result & 0xF;
  v55 = (a2 + 1);
  if (v5 == 15)
  {
    v6 = a3;
    v7 = BufferReader.readInt(updatingIndex:objectRangeEnd:for:)(&v55, a3, 0x616E6F6974636964, 0xEA00000000007972);
    if (v4)
    {
      return v7;
    }

    v5 = v7;
    a3 = v6;
    if (v7 < 0)
    {
      goto LABEL_7;
    }
  }

  v8 = *(v3 + 55);
  if (!is_mul_ok(2 * v5, v8))
  {
    goto LABEL_7;
  }

  v9 = 2 * v5 * v8;
  if (v9 < 0)
  {
LABEL_102:
    __break(1u);
  }

  else
  {
    v10 = v55;
    if ((a3 - v55) < v9)
    {
LABEL_7:
      lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
      swift_allocError();
      v12 = xmmword_181247380;
LABEL_8:
      *v11 = v12;
      return swift_willThrow();
    }

    v13 = MEMORY[0x1865CAAC0](v5, MEMORY[0x1E69E6530], MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
    v50 = v5 * v8;
    if ((v5 * v8) >> 64 == (v5 * v8) >> 63)
    {
      v14 = v13;
      if (!v5)
      {
        v28 = v13;
LABEL_90:
        v48 = swift_allocObject();
        *(v48 + 16) = v28;
        return v48 | 0x3000000000000000;
      }

      v15 = 0;
      v52 = *v3;
      v53 = v3[1];
      v54 = *(v3 + 4);
      v49 = v5;
      while (1)
      {
        if (v8 <= 3)
        {
          if (v8 <= 1)
          {
            if (v8)
            {
              if (v54 < v53)
              {
                goto LABEL_105;
              }

              if ((v53 - v52) < 0)
              {
                goto LABEL_113;
              }

              if ((v54 - v53) < 0)
              {
                goto LABEL_114;
              }

              if ((v52 + *(&v52 + 1) - v54) < 0)
              {
                goto LABEL_123;
              }

              v17 = *v10;
            }

            else
            {
              v17 = v8;
            }

            goto LABEL_55;
          }

          if (v8 == 2)
          {
            if (v54 < v53)
            {
              goto LABEL_104;
            }

            if ((v53 - v52) < 0)
            {
              goto LABEL_111;
            }

            if ((v54 - v53) < 0)
            {
              goto LABEL_118;
            }

            if ((v52 + *(&v52 + 1) - v54) < 0)
            {
              goto LABEL_120;
            }

            v17 = __rev16(*v10);
            goto LABEL_55;
          }
        }

        else if ((v8 - 5) >= 3)
        {
          if (v8 == 4)
          {
            if (v54 < v53)
            {
              goto LABEL_107;
            }

            if ((v53 - v52) < 0)
            {
              goto LABEL_109;
            }

            if ((v54 - v53) < 0)
            {
              goto LABEL_115;
            }

            if ((v52 + *(&v52 + 1) - v54) < 0)
            {
              goto LABEL_121;
            }

            v17 = bswap32(*v10);
          }

          else
          {
            if (v8 == 8)
            {
              if (v54 < v53)
              {
                goto LABEL_106;
              }

              if ((v53 - v52) < 0)
              {
                goto LABEL_110;
              }

              if ((v54 - v53) < 0)
              {
                goto LABEL_116;
              }

              v16 = v10;
              if ((v52 + *(&v52 + 1) - v54) < 0)
              {
                goto LABEL_119;
              }
            }

            else
            {
              if (v54 < v53)
              {
                goto LABEL_108;
              }

              if ((v53 - v52) < 0)
              {
                goto LABEL_112;
              }

              if ((v54 - v53) < 0)
              {
                goto LABEL_117;
              }

              if ((v52 + *(&v52 + 1) - v54) < 0)
              {
                goto LABEL_122;
              }

              v16 = (v10 + v8 - 8);
            }

            v17 = bswap64(*v16);
            if (v17 < 0)
            {
LABEL_91:

              lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
              swift_allocError();
              v12 = xmmword_181247320;
              goto LABEL_8;
            }
          }

          goto LABEL_55;
        }

        if (v54 < v53)
        {
          goto LABEL_98;
        }

        if ((v53 - v52) < 0)
        {
          goto LABEL_99;
        }

        if ((v54 - v53) < 0)
        {
          goto LABEL_100;
        }

        if ((v52 + *(&v52 + 1) - v54) < 0)
        {
          goto LABEL_101;
        }

        v17 = 0;
        for (i = 0; i != v8; ++i)
        {
          v17 = *(v10 + i) | (v17 << 8);
        }

        if (v17 < 0)
        {
          goto LABEL_91;
        }

LABEL_55:
        v19 = BufferReader.getBoundsCheckedSizedInt(at:size:)((v10 + v50), v8);
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_91;
        }

        v20 = v19;
        v51 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
        v24 = *(v14 + 16);
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v27 = v22;
        if (*(v14 + 24) >= v26)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v28 = v14;
            if (v22)
            {
              goto LABEL_63;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd, &_ss18_DictionaryStorageCyS2iGMR);
            v31 = static _DictionaryStorage.copy(original:)();
            v28 = v31;
            if (*(v14 + 16))
            {
              v32 = (v31 + 64);
              v33 = v14 + 64;
              v34 = ((1 << *(v28 + 32)) + 63) >> 6;
              if (v28 != v14 || v32 >= v33 + 8 * v34)
              {
                memmove(v32, (v14 + 64), 8 * v34);
              }

              v35 = 0;
              *(v28 + 16) = *(v14 + 16);
              v36 = 1 << *(v14 + 32);
              if (v36 < 64)
              {
                v37 = ~(-1 << v36);
              }

              else
              {
                v37 = -1;
              }

              v38 = v37 & *(v14 + 64);
              for (j = (v36 + 63) >> 6; v38; *(*(v28 + 56) + 8 * v41) = v44)
              {
                v40 = __clz(__rbit64(v38));
                v38 &= v38 - 1;
                v41 = v40 | (v35 << 6);
LABEL_78:
                v44 = *(*(v14 + 56) + 8 * v41);
                *(*(v28 + 48) + 8 * v41) = *(*(v14 + 48) + 8 * v41);
              }

              v42 = v35;
              while (1)
              {
                v35 = v42 + 1;
                if (__OFADD__(v42, 1))
                {
                  goto LABEL_124;
                }

                if (v35 >= j)
                {
                  break;
                }

                v43 = *(v33 + 8 * v35);
                ++v42;
                if (v43)
                {
                  v38 = (v43 - 1) & v43;
                  v41 = __clz(__rbit64(v43)) | (v35 << 6);
                  goto LABEL_78;
                }
              }
            }

            if (v27)
            {
LABEL_63:
              *(*(v28 + 56) + 8 * v23) = v20;
              goto LABEL_83;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
          v28 = v14;
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
          if ((v27 & 1) != (v30 & 1))
          {
            goto LABEL_125;
          }

          v23 = v29;
          if (v27)
          {
            goto LABEL_63;
          }
        }

        *(v28 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        *(*(v28 + 48) + 8 * v23) = v17;
        *(*(v28 + 56) + 8 * v23) = v20;
        v45 = *(v28 + 16);
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_97;
        }

        *(v28 + 16) = v47;
LABEL_83:
        if (v54 < v53)
        {
          goto LABEL_93;
        }

        if ((v53 - v52) < 0)
        {
          goto LABEL_94;
        }

        if ((v54 - v53) < 0)
        {
          goto LABEL_95;
        }

        if ((v52 + *(&v52 + 1) - v54) < 0)
        {
          goto LABEL_96;
        }

        v15 = v51 + 1;
        v10 = (v10 + v8);
        v14 = v28;
        if (v51 + 1 == v49)
        {
          goto LABEL_90;
        }
      }
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  v7 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return v7;
}

uint64_t sub_180835C28()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t closure #1 in BPlistMap.loadValue(at:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a3 + 56);
  if (*(v5 + 16) <= a2)
  {
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v7 = xmmword_1812468B0;
    return swift_willThrow();
  }

  else if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    result = BPlistScanner.scanObject(at:)(*(v5 + 8 * a2 + 32));
    if (!v4)
    {
      *a4 = result;
    }
  }

  return result;
}

uint64_t BPlistScanner.scanObject(at:)(uint64_t a1)
{
  if (a1 < 0)
  {
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v8 = xmmword_181247320;
    return swift_willThrow();
  }

  v2 = (v1[3] + a1);
  if ((&v2[-*v1] & 0x8000000000000000) != 0 || (*v1 + v1[1] - v2) < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = v1[9];
  if (v3 < 0)
  {
LABEL_23:
    __break(1u);
    JUMPOUT(0x180835F40);
  }

  v4 = *v2;
  v5 = v1[5];
  v6 = specialized BPlistTypeMarker.init(_:)(v4);
  result = 0x9000000000000008;
  switch(v6)
  {
    case 1:
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      goto LABEL_16;
    case 2:
      v9 = swift_allocObject();
      *(v9 + 16) = 1;
LABEL_16:
      result = v9 | 0x6000000000000000;
      break;
    case 3:
      result = BPlistScanner.scanInteger(rawTypeMarker:index:objectRangeEndIndex:)(v4, v2, v5 + v3);
      break;
    case 4:
      result = BPlistScanner.scanReal(rawTypeMarker:index:objectRangeEndIndex:)(v4, v2, v5 + v3);
      break;
    case 5:
      result = BPlistScanner.scanDate(index:objectRangeEndIndex:)(v2, v5 + v3);
      break;
    case 6:
      result = BPlistScanner.scanData(rawTypeMarker:index:objectRangeEndIndex:)(v4, v2, v5 + v3);
      break;
    case 7:
      result = BPlistScanner.scanASCIIString(rawTypeMarker:index:objectRangeEndIndex:)(v4, v2, v5 + v3);
      break;
    case 8:
      result = BPlistScanner.scanUTF16BEString(rawTypeMarker:index:objectRangeEndIndex:)(v4, v2, v5 + v3);
      break;
    case 9:
      result = 0x9000000000000000;
      break;
    case 10:
    case 11:
      result = BPlistScanner.scanArrayOrSet(typeMarker:rawTypeMarker:index:objectRangeEndIndex:)(v6, v4, v2, v5 + v3);
      break;
    case 12:
      result = BPlistScanner.scanDictionary(rawTypeMarker:index:objectRangeEndIndex:)(v4, v2, v5 + v3);
      break;
    case 13:
      lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
      swift_allocError();
      *v10 = 0;
      v10[1] = 0;
      return swift_willThrow();
    default:
      return result;
  }

  return result;
}

void closure #1 in PropertyListDecoder._decode<A>(_:from:format:)(unsigned int *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, void *a6)
{
  v106 = *MEMORY[0x1E69E9840];
  v10 = specialized static BPlistScanner.scanBinaryPropertyList(from:)(a1, a2);
  if (!v6)
  {
    v11 = *(a3 + 16);
    v12 = v10;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13_PlistDecoderCyAA21_BPlistDecodingFormatVGMd, &_s10Foundation13_PlistDecoderCyAA21_BPlistDecodingFormatVGMR);
    swift_allocObject();

    v26 = specialized _PlistDecoder.init(referencing:options:codingPathNode:)(v12, v11, 0x8000000000000000);
    *(&v101 + 1) = v13;
    v102 = &protocol witness table for _PlistDecoder<A>;
    v99 = v26;

    a4(&v99);
    __swift_destroy_boxed_opaque_existential_1(&v99);
    if (swift_isUniquelyReferenced_nonNull_native() && (swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
    {
      goto LABEL_27;
    }

    v33 = *(v26[3] + 64);

    os_unfair_lock_lock((v33 + 40));
    if (*(v33 + 32))
    {
LABEL_26:
      os_unfair_lock_unlock((v33 + 40));

LABEL_27:

      *a6 = 200;
      return;
    }

    v34 = *(v33 + 24);
    v35 = v34 + 1;
    if (!__OFADD__(v34, 1))
    {
      v36 = *(v33 + 16);
      v37 = swift_slowAlloc();
      if ((v34 & 0x8000000000000000) == 0)
      {
        v38 = v37;
        memmove(v37, v36, v34);
        v38[v34] = 0;
        if ((v35 & 0x8000000000000000) == 0)
        {
          *(v33 + 16) = v38;
          *(v33 + 24) = v35;
          *(v33 + 32) = v38;
          goto LABEL_26;
        }

LABEL_114:
        __break(1u);
      }

LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_108;
  }

  v15 = v105;
  v96 = v104;
  v16 = type metadata accessor for DecodingError();
  swift_allocError();
  v18 = v17;
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v20 = @"NSDebugDescription";
  v21 = v20;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v20);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v25 = v24;

          goto LABEL_30;
        }

        goto LABEL_9;
      }

      v30 = [(__CFString *)v21 UTF8String];
      if (!v30)
      {
        __break(1u);
        goto LABEL_116;
      }

      v31 = String.init(utf8String:)(v30);
      if (v32)
      {
LABEL_18:
        v23 = v31;
        v25 = v32;

        goto LABEL_30;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v32)
    {
      [(__CFString *)v21 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v23 = v97;
      v25 = v98;
      goto LABEL_30;
    }

    goto LABEL_18;
  }

LABEL_9:
  LOBYTE(v97) = 0;
  v99 = 0;
  if (__CFStringIsCF())
  {
    v23 = v99;

LABEL_13:
    v25 = 0xE000000000000000;
    goto LABEL_30;
  }

  v27 = v21;
  v28 = String.init(_nativeStorage:)();
  if (v29)
  {
    v23 = v28;
    v25 = v29;

    goto LABEL_30;
  }

  v99 = [(__CFString *)v27 length];
  if (!v99)
  {

    v23 = 0;
    goto LABEL_13;
  }

  v23 = String.init(_cocoaString:)();
  v25 = v39;
LABEL_30:
  v103[0] = v23;
  v103[1] = v25;
  v95 = v18;
  if (v105)
  {
    if (v105 == 1)
    {
      v40 = 0x8000000181484EC0;
      v41 = 0xD000000000000016;
    }

    else
    {
      _StringGuts.grow(_:)(16);

      v99 = 0x2074707572726F43;
      v100 = 0xE800000000000000;
      MEMORY[0x1865CB0E0](v104, v105);
      MEMORY[0x1865CB0E0](0x65756C617620, 0xE600000000000000);
      v41 = 0x2074707572726F43;
      v40 = 0xE800000000000000;
    }
  }

  else
  {
    v40 = 0xEE0072656B72616DLL;
    v41 = 0x2064696C61766E49;
  }

  v103[5] = MEMORY[0x1E69E6158];
  v103[2] = v41;
  v103[3] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v42 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of FloatingPointRoundingRule?(v103, &v99, &_sSS_yptMd, &_sSS_yptMR);

  outlined destroy of TermOfAddress?(v103, &_sSS_yptMd, &_sSS_yptMR);
  v43 = v99;
  v44 = v100;
  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v100);
  v47 = v46;

  if (v47)
  {
    __break(1u);
    goto LABEL_110;
  }

  v42[(v45 >> 6) + 8] |= 1 << v45;
  v48 = (v42[6] + 16 * v45);
  *v48 = v43;
  v48[1] = v44;
  outlined init with take of Any(&v101, (v42[7] + 32 * v45));
  v49 = v42[2];
  v50 = __OFADD__(v49, 1);
  v51 = v49 + 1;
  if (v50)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v42[2] = v51;
  v52 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v53 = @"NSCocoaErrorDomain";
  v54 = v53;
  v94 = v16;
  if (!v52)
  {
    goto LABEL_42;
  }

  v55 = _objc_getTaggedPointerTag(v53);
  switch(v55)
  {
    case 0:
LABEL_51:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v60)
      {
        [(__CFString *)v54 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_59;
      }

      goto LABEL_52;
    case 0x16:
      v58 = [(__CFString *)v54 UTF8String];
      if (v58)
      {
        String.init(utf8String:)(v58);
        if (v59)
        {
          goto LABEL_52;
        }

        __break(1u);
        goto LABEL_51;
      }

LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    case 2:
      MEMORY[0x1EEE9AC00](v55);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_59;
  }

LABEL_42:
  LOBYTE(v97) = 0;
  v99 = 0;
  if (!__CFStringIsCF())
  {
    v56 = v54;
    String.init(_nativeStorage:)();
    if (v57 || (v99 = [(__CFString *)v56 length]) == 0)
    {

      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (!v99)
  {
LABEL_52:

    goto LABEL_59;
  }

LABEL_58:
  String.init(_cocoaString:)();
LABEL_59:
  v61 = objc_allocWithZone(NSError);
  v62 = String._bridgeToObjectiveCImpl()();

  v63 = [v61 initWithDomain:v62 code:3840 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v64 = [v63 domain];
  if (!v64)
  {
    goto LABEL_71;
  }

  v65 = v64;
  v66 = _objc_isTaggedPointer(v64);
  v67 = v65;
  v68 = v67;
  if ((v66 & 1) == 0)
  {
LABEL_65:
    LOBYTE(v97) = 0;
    v99 = 0;
    if (__CFStringIsCF())
    {
      if (v99)
      {
LABEL_80:
        v70 = String.init(_cocoaString:)();
        v72 = v79;
        goto LABEL_81;
      }
    }

    else
    {
      v73 = v68;
      v74 = String.init(_nativeStorage:)();
      if (v75)
      {
        v70 = v74;
        v72 = v75;

        goto LABEL_82;
      }

      v99 = [v73 length];
      if (v99)
      {
        goto LABEL_80;
      }
    }

LABEL_71:
    v70 = 0;
    v72 = 0xE000000000000000;
    goto LABEL_82;
  }

  v69 = _objc_getTaggedPointerTag(v67);
  if (!v69)
  {
    goto LABEL_75;
  }

  if (v69 != 22)
  {
    if (v69 == 2)
    {
      MEMORY[0x1EEE9AC00](v69);
      v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v72 = v71;

LABEL_82:
      v80 = v54;
      v81 = v80;
      if (!v52)
      {
        goto LABEL_87;
      }

      v82 = _objc_getTaggedPointerTag(v80);
      if (!v82)
      {
        goto LABEL_97;
      }

      if (v82 != 22)
      {
        if (v82 == 2)
        {
          MEMORY[0x1EEE9AC00](v82);
          v83 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v85 = v84;

          goto LABEL_103;
        }

LABEL_87:
        v99 = 0;
        if (__CFStringIsCF())
        {
          if (v99)
          {
LABEL_102:
            v83 = String.init(_cocoaString:)();
            v85 = v92;
LABEL_103:
            if (v70 == v83 && v72 == v85)
            {
              outlined consume of URL.ParseStrategy.ComponentParseStrategy<String>(v96, v15);

LABEL_107:
              DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
              (*(*(v94 - 8) + 104))(v95, *MEMORY[0x1E69E6B00]);
              swift_willThrow();
LABEL_108:

              return;
            }

            v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined consume of URL.ParseStrategy.ComponentParseStrategy<String>(v96, v15);

            if (v93)
            {
              goto LABEL_107;
            }

LABEL_111:
            __break(1u);
            goto LABEL_112;
          }
        }

        else
        {
          v86 = v81;
          v87 = String.init(_nativeStorage:)();
          if (v88)
          {
            v83 = v87;
            v85 = v88;

            goto LABEL_103;
          }

          v99 = [(__CFString *)v86 length];
          if (v99)
          {
            goto LABEL_102;
          }
        }

        v83 = 0;
        v85 = 0xE000000000000000;
        goto LABEL_103;
      }

      v89 = [(__CFString *)v81 UTF8String];
      if (v89)
      {
        v90 = String.init(utf8String:)(v89);
        if (v91)
        {
          goto LABEL_98;
        }

        __break(1u);
LABEL_97:
        _CFIndirectTaggedPointerStringGetContents();
        v90 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v91)
        {
          [(__CFString *)v81 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v83 = v97;
          v85 = v98;
          goto LABEL_103;
        }

LABEL_98:
        v83 = v90;
        v85 = v91;

        goto LABEL_103;
      }

      goto LABEL_117;
    }

    goto LABEL_65;
  }

  v76 = [v68 UTF8String];
  if (v76)
  {
    v77 = String.init(utf8String:)(v76);
    if (v78)
    {
      goto LABEL_76;
    }

    __break(1u);
LABEL_75:
    _CFIndirectTaggedPointerStringGetContents();
    v77 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v78)
    {
      [v68 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v70 = v97;
      v72 = v98;
      goto LABEL_81;
    }

LABEL_76:
    v70 = v77;
    v72 = v78;

LABEL_81:
    goto LABEL_82;
  }

LABEL_118:
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_10Foundation9BPlistMapC5ValueO(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 8)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 9;
  }
}

uint64_t getEnumTagSinglePayload for BPlistMap.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x77 && *(a1 + 8))
  {
    return (*a1 + 119);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x76)
  {
    v3 = -1;
  }

  return v3 + 1;
}

unsigned int *specialized static BPlistScanner.scanBinaryPropertyList(from:)(unsigned int *a1, uint64_t a2)
{
  v2 = a1;
  result = specialized static BPlistScanner.parseTopLevelInfo(from:)(a1, a2, &v35);
  if (v42)
  {
LABEL_41:
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v26 = xmmword_1812187D0;
    swift_willThrow();
    return v2;
  }

  v4 = v37;
  v5 = v38;
  v7 = v39;
  v6 = v40;
  v8 = v41;
  v43 = v35;
  v44 = v36;
  if ((v39 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v9 = 0x40000;
  if (v39 < 0x40000)
  {
    v9 = v39;
  }

  if (*(MEMORY[0x1E69E7CC0] + 16) <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0, MEMORY[0x1E69E7CC0]);
  if (v8 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v11 = v8 - 1;
  if (!v8)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v12 = result;
  v31 = v5;
  v32 = v2;
  v33 = v6;
  v30 = v8;
  if (v7)
  {
    v13 = 0;
    v14 = a2;
    v15 = v2 + a2;
    v16 = (v2 + v8);
    v17 = v4 - 8;
    v18 = v4 - 5;
    while (1)
    {
      if (v15 - v16 < v4)
      {
LABEL_40:

        goto LABEL_41;
      }

      if (v4 <= 3)
      {
        if (v4 > 1)
        {
          if (v4 != 2)
          {
LABEL_24:
            if (v14 < 0)
            {
              __break(1u);
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            v20 = 0;
            for (i = 0; i != v4; ++i)
            {
              v20 = *(v16 + i) | (v20 << 8);
            }

            goto LABEL_35;
          }

          if (v14 < 0)
          {
            goto LABEL_52;
          }

          v20 = __rev16(*v16);
        }

        else
        {
          v20 = v4;
          if (!v4)
          {
            goto LABEL_36;
          }

          if (v14 < 0)
          {
            goto LABEL_54;
          }

          v20 = *v16;
        }
      }

      else
      {
        if (v18 < 3)
        {
          goto LABEL_24;
        }

        if (v4 == 4)
        {
          if (v14 < 0)
          {
            goto LABEL_50;
          }

          v20 = bswap32(*v16);
        }

        else
        {
          if (v4 == 8)
          {
            if (v14 < 0)
            {
              goto LABEL_53;
            }

            v19 = *v16;
          }

          else
          {
            if (v14 < 0)
            {
              goto LABEL_51;
            }

            v19 = *(v16 + v17);
          }

          v20 = bswap64(v19);
        }
      }

LABEL_35:
      if (v11 < v20)
      {
        goto LABEL_40;
      }

LABEL_36:
      v23 = *(v12 + 2);
      v22 = *(v12 + 3);
      v2 = (v23 + 1);
      if (v23 >= v22 >> 1)
      {
        v24 = v12;
        v25 = v11;
        v29 = v17;
        v28 = v18;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v24);
        v18 = v28;
        v17 = v29;
        v11 = v25;
        v14 = a2;
        v12 = result;
      }

      ++v13;
      *(v12 + 2) = v2;
      *&v12[8 * v23 + 32] = v20;
      v16 = (v16 + v4);
      if (v13 == v7)
      {
        goto LABEL_43;
      }
    }
  }

  v14 = a2;
LABEL_43:
  v27 = v14;
  type metadata accessor for BPlistMap();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA0D4ViewVys5UInt8VG6buffer_SVSg10allocationt_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA0D4ViewVys5UInt8VG6buffer_SVSg10allocationt_GMR);
  result = swift_allocObject();
  result[10] = 0;
  *(result + 2) = v32;
  *(result + 3) = v27;
  *(result + 4) = 0;
  *(v2 + 8) = result;
  v2[4] = v43;
  *(v2 + 10) = v44;
  *(v2 + 22) = v4;
  *(v2 + 23) = v31;
  *(v2 + 3) = v7;
  *(v2 + 4) = v33;
  *(v2 + 5) = v30;
  if ((v33 & 0x8000000000000000) == 0)
  {
    *(v2 + 6) = v33;
    *(v2 + 7) = v12;
    return v2;
  }

LABEL_55:
  __break(1u);
  return result;
}

unsigned int *specialized static BPlistScanner.parseTopLevelInfo(from:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0uLL;
  if (a2 < 41 || (*result == 1768714338 ? (v4 = *(result + 3) == 812938089) : (v4 = 0), !v4))
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
    goto LABEL_7;
  }

  v5 = 0;
  v8 = result + a2;
  v7 = 1;
  if (!*(result + a2 - 24))
  {
    goto LABEL_36;
  }

  v9 = vrev64q_s8(*(result + a2 - 24));
  if (v9.i64[0] < 0)
  {
    goto LABEL_36;
  }

  v10 = bswap64(*(v8 - 1));
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v11 = v9.i64[1] < v9.i64[0] && v10 >= 9;
  if (!v11 || v10 >= a2 - 32)
  {
    goto LABEL_36;
  }

  v5 = 0;
  v13 = *(v8 - 4);
  if (!BYTE6(v13))
  {
    goto LABEL_36;
  }

  if (!HIBYTE(v13))
  {
    goto LABEL_36;
  }

  v5 = 0;
  if (!is_mul_ok(v9.u64[0], BYTE6(v13)))
  {
    goto LABEL_36;
  }

  v14 = v9.i64[0] * BYTE6(v13);
  if (!v14)
  {
    goto LABEL_36;
  }

  v11 = __CFADD__(v10, v14);
  v15 = v10 + v14;
  if (v11)
  {
    goto LABEL_24;
  }

  v5 = 0;
  v11 = __CFADD__(v15, 32);
  v16 = v15 + 32;
  if (v11 || v16 != a2)
  {
    goto LABEL_36;
  }

  if (!(v13 >> 59) && v9.i64[0] >> ((v13 >> 53) & 0x38) || BYTE6(v13) <= 7u && v10 >> (8 * (BYTE6(v13) & 7u)) || (v17 = v9.i64[1] * BYTE6(v13), (v9.i64[1] * BYTE6(v13)) >> 64 != v17 >> 63))
  {
LABEL_24:
    v5 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v5 = 0;
  v18 = v10 + v17;
  if (__OFADD__(v10, v17) || v18 >= a2)
  {
LABEL_36:
    v6 = 0;
    goto LABEL_7;
  }

  v21 = v9;
  v19 = a3;
  result = BufferReader.getSizedInt(at:endIndex:size:)((result + v18), v8, BYTE6(v13));
  v5 = 0;
  if (v20)
  {
    v6 = 0;
    v7 = 1;
    a3 = v19;
    v3 = 0uLL;
  }

  else
  {
    v7 = 1;
    a3 = v19;
    v3 = 0uLL;
    v6 = 0;
    if (result >= 8 && result < v10)
    {
      v7 = 0;
      v5 = v13 & 0xFF00FFFFFFFFFFFFLL | (BYTE6(v13) << 48);
      v6 = v10;
      v3 = v21;
    }
  }

LABEL_7:
  *a3 = v5;
  *(a3 + 8) = v3;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  return result;
}

unsigned int *BufferReader.getSizedInt(at:endIndex:size:)(unsigned int *result, uint64_t a2, uint64_t a3)
{
  if (a2 - result < a3)
  {
    return 0;
  }

  if (a3 <= 3)
  {
    if (a3 <= 1)
    {
      v4 = a3;
      if (!a3)
      {
        return v4;
      }

      if (a3 != 1)
      {
        goto LABEL_38;
      }

      v8 = v3[2];
      v9 = v3[4];
      if (v9 >= v8)
      {
        if ((v8 - *v3) >= 0)
        {
          if ((v9 - v8) >= 0)
          {
            if ((*v3 + v3[1] - v9) >= 0)
            {
              return *result;
            }

            goto LABEL_65;
          }

          goto LABEL_60;
        }

        goto LABEL_55;
      }

      goto LABEL_50;
    }

    if (a3 == 2)
    {
      v14 = v3[2];
      v15 = v3[4];
      if (v15 >= v14)
      {
        if ((v14 - *v3) >= 0)
        {
          if ((v15 - v14) >= 0)
          {
            if ((*v3 + v3[1] - v15) >= 0)
            {
              return __rev16(*result);
            }

            goto LABEL_66;
          }

          goto LABEL_61;
        }

        goto LABEL_56;
      }

      goto LABEL_51;
    }

LABEL_21:
    v10 = v3[2];
    v11 = v3[4];
    if (v11 < v10)
    {
      __break(1u);
    }

    else if ((v10 - *v3) >= 0)
    {
      if ((v11 - v10) >= 0)
      {
        if ((*v3 + v3[1] - v11) >= 0)
        {
          v4 = 0;
          v12 = a3;
          do
          {
            v13 = *result;
            result = (result + 1);
            v4 = v13 | (v4 << 8);
            --v12;
          }

          while (v12);
          return v4;
        }

        goto LABEL_49;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_48;
  }

  if ((a3 - 5) < 3)
  {
    goto LABEL_21;
  }

  if (a3 == 4)
  {
    v16 = v3[2];
    v17 = v3[4];
    if (v17 >= v16)
    {
      if ((v16 - *v3) >= 0)
      {
        if ((v17 - v16) >= 0)
        {
          if ((*v3 + v3[1] - v17) >= 0)
          {
            return bswap32(*result);
          }

          goto LABEL_68;
        }

        goto LABEL_63;
      }

      goto LABEL_58;
    }

    goto LABEL_53;
  }

  if (a3 == 8)
  {
    v5 = v3[2];
    v6 = v3[4];
    if (v6 >= v5)
    {
      if ((v5 - *v3) >= 0)
      {
        if ((v6 - v5) >= 0)
        {
          if ((*v3 + v3[1] - v6) >= 0)
          {
            v7 = *result;
            return bswap64(v7);
          }

          goto LABEL_67;
        }

        goto LABEL_62;
      }

      goto LABEL_57;
    }

    goto LABEL_52;
  }

LABEL_38:
  if (__OFSUB__(a3, 8))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v18 = v3[2];
  v19 = v3[4];
  if (v19 < v18)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if ((v18 - *v3) < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v19 - v18) < 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if ((*v3 + v3[1] - v19) >= 0)
  {
    v7 = *(result + a3 - 8);
    return bswap64(v7);
  }

LABEL_70:
  __break(1u);
  return result;
}

unsigned int *BufferReader.getBoundsCheckedSizedInt(at:size:)(unsigned int *result, uint64_t a2)
{
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        return 0;
      }

      if (a2 != 1)
      {
        goto LABEL_37;
      }

      v6 = v2[2];
      v7 = v2[4];
      if (v7 >= v6)
      {
        if ((v6 - *v2) >= 0)
        {
          if ((v7 - v6) >= 0)
          {
            if ((*v2 + v2[1] - v7) >= 0)
            {
              return *result;
            }

            goto LABEL_63;
          }

          goto LABEL_58;
        }

        goto LABEL_53;
      }

      goto LABEL_48;
    }

    if (a2 == 2)
    {
      v12 = v2[2];
      v13 = v2[4];
      if (v13 >= v12)
      {
        if ((v12 - *v2) >= 0)
        {
          if ((v13 - v12) >= 0)
          {
            if ((*v2 + v2[1] - v13) >= 0)
            {
              return __rev16(*result);
            }

            goto LABEL_64;
          }

          goto LABEL_59;
        }

        goto LABEL_54;
      }

      goto LABEL_49;
    }
  }

  else if ((a2 - 5) >= 3)
  {
    if (a2 == 4)
    {
      v14 = v2[2];
      v15 = v2[4];
      if (v15 >= v14)
      {
        if ((v14 - *v2) >= 0)
        {
          if ((v15 - v14) >= 0)
          {
            if ((*v2 + v2[1] - v15) >= 0)
            {
              return bswap32(*result);
            }

            goto LABEL_66;
          }

          goto LABEL_61;
        }

        goto LABEL_56;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v3 = v2[2];
      v4 = v2[4];
      if (v4 >= v3)
      {
        if ((v3 - *v2) >= 0)
        {
          if ((v4 - v3) >= 0)
          {
            if ((*v2 + v2[1] - v4) >= 0)
            {
              v5 = *result;
              return bswap64(v5);
            }

            goto LABEL_65;
          }

          goto LABEL_60;
        }

        goto LABEL_55;
      }

      goto LABEL_50;
    }

LABEL_37:
    if (!__OFSUB__(a2, 8))
    {
      v16 = v2[2];
      v17 = v2[4];
      if (v17 >= v16)
      {
        if ((v16 - *v2) >= 0)
        {
          if ((v17 - v16) >= 0)
          {
            if ((*v2 + v2[1] - v17) >= 0)
            {
              v5 = *(result + a2 - 8);
              return bswap64(v5);
            }

            goto LABEL_68;
          }

LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          return result;
        }

        goto LABEL_62;
      }

      goto LABEL_57;
    }

    goto LABEL_52;
  }

  v8 = v2[2];
  v9 = v2[4];
  if (v9 < v8)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v8 - *v2) < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if ((v9 - v8) < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((*v2 + v2[1] - v9) < 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v10 = 0;
  do
  {
    v11 = *result;
    result = (result + 1);
    v10 = v11 | (v10 << 8);
    --a2;
  }

  while (a2);
  return v10;
}

uint64_t storeEnumTagSinglePayload for BPlistMap.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5(char *a1, uint64_t a2)
{
  v2 = a2;
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (a1 && v2)
  {
    while (1)
    {
      v5 = *a1;
      if (v5 < 0)
      {
        break;
      }

      v7 = *(v4 + 2);
      v6 = *(v4 + 3);
      if (v7 >= v6 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
      }

      ++a1;
      *(v4 + 2) = v7 + 1;
      v4[v7 + 32] = v5;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    v8 = static String._tryFromUTF8(_:)();
    v10 = v9;

    if (v10)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t protocol witness for PlistDecodingMap.value(from:) in conformance BPlistMap@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v6 = *a1;
  v7 = *(v2 + 64);

  os_unfair_lock_lock(v7 + 10);
  closure #1 in BPlistMap.loadValue(at:)(&v7[4], v6, v4, &v10);
  os_unfair_lock_unlock(v7 + 10);
  if (v3)
  {
  }

  v9 = v10;

  *a2 = v9;
  return result;
}

uint64_t BPlistScanner.scanASCIIString(rawTypeMarker:index:objectRangeEndIndex:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = (a2 + 1);
  v12 = (a2 + 1);
  if ((~result & 0xF) != 0)
  {
    v7 = result & 0xF;
    v8 = a3 - v5;
    if ((a3 - v5) < 0)
    {
      goto LABEL_17;
    }

LABEL_6:
    if (v8 < v7)
    {
      goto LABEL_17;
    }

    if (v7 == 5)
    {
      if ((&v5[-*v3] & 0x8000000000000000) != 0 || (v9 = *v3 + v3[1], (v9 - v5) < 1))
      {
        __break(1u);
      }

      else
      {
        if (*v5 != 36)
        {
          goto LABEL_16;
        }

        if (v9 >= v5)
        {
          if (*v5 == 1819635236 && v5[4] == 108)
          {
            return 0x9000000000000010;
          }

          goto LABEL_16;
        }
      }

      __break(1u);
      return result;
    }

LABEL_16:
    result = swift_allocObject();
    *(result + 16) = &v5[-v3[5]];
    *(result + 24) = v7;
    *(result + 32) = 1;
    return result;
  }

  result = BufferReader.readInt(updatingIndex:objectRangeEnd:for:)(&v12, a3, 0x7473204949435341, 0xEC000000676E6972);
  if (v4)
  {
    return result;
  }

  v7 = result;
  v5 = v12;
  v8 = a3 - v12;
  if ((a3 - v12) >= 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
  swift_allocError();
  *v11 = xmmword_181247360;
  return swift_willThrow();
}

id partial apply for closure #1 in static _BPlistDecodingFormat.unwrapString<A>(from:in:for:_:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  return partial apply for closure #1 in static _BPlistDecodingFormat.unwrapString<A>(from:in:for:_:)(a1, a2, a3);
}

{
  if (*(v3 + 16))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2415919360;
  }

  result = _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA10BufferViewVyAHG_Tt1B5(a1, a2, v5);
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t static _BPlistDecodingFormat.container<A>(keyedBy:for:referencing:codingPathNode:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  if (a2 >> 60 != 3)
  {
    if (a2 >> 60 == 9 && (a2 == 0x9000000000000008 || a2 == 0x9000000000000010))
    {
      v9 = type metadata accessor for DecodingError();
      swift_allocError();
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      v12 = *(v7 + 40);

      _CodingPathNode.path.getter(v12);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6B08], v9);
    }

    else
    {
      v13 = *(a3 + 40);

      _CodingPathNode.path.getter(v13);

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      type metadata accessor for DecodingError();
      swift_allocError();
      _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5(v14, a2, v15);
    }

    return swift_willThrow();
  }

  v17 = v6;
  v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v91 = v18 + 64;
  v19 = -1 << *(v18 + 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v18 + 64);
  v22 = *(v18 + 16);
  v93[0] = MEMORY[0x1E69E7CC8];
  v23 = v22 >> 1;

  swift_bridgeObjectRetain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSiGMd, &_sSDySSSiGMR);
  Dictionary.reserveCapacity(_:)(v23);
  v24 = v93[0];
  v25 = (63 - v19) >> 6;

  v26 = 0;
  v88 = v18;
  for (i = v7; ; v7 = i)
  {
    if (!v21)
    {
      v29 = v26;
      while (1)
      {
        v28 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v28 >= v25)
        {

          outlined consume of Set<AnyKeyPath>.Iterator._Variant(v18);
          v94 = v7;
          v95 = v24;
          v96 = a4;

          v93[0] = a5;
          v93[1] = &type metadata for _BPlistDecodingFormat;
          v93[2] = a6;
          v93[3] = &protocol witness table for _BPlistDecodingFormat;
          type metadata accessor for _PlistKeyedDecodingContainer(0, v93);
          swift_getWitnessTable();
          KeyedDecodingContainer.init<A>(_:)();
        }

        v21 = *(v91 + 8 * v28);
        ++v29;
        if (v21)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v28 = v26;
LABEL_20:
    v30 = (v28 << 9) | (8 * __clz(__rbit64(v21)));
    v31 = *(v18 + 56);
    v32 = *(*(v18 + 48) + v30);
    v92 = *(v31 + v30);
    v33 = *(v7 + 24);
    v34 = *(v33 + 64);

    os_unfair_lock_lock((v34 + 40));
    v35 = *(v33 + 56);
    if (v32 >= *(v35 + 16))
    {
      v93[0] = v24;
      lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
      swift_allocError();
      *v79 = xmmword_1812468B0;
      swift_willThrow();
      goto LABEL_55;
    }

    if (v32 < 0)
    {
      goto LABEL_60;
    }

    v36 = *(v35 + 8 * v32 + 32);
    v37 = *(v34 + 16);
    v38 = *(v34 + 24);
    v39 = *(v33 + 32);
    v103 = *(v33 + 16);
    v104 = v39;
    v97 = v37;
    v98 = v38;
    v99 = v37;
    v100 = v37;
    v101 = v37 + v38;
    v102 = v37;
    v40 = BPlistScanner.scanObject(at:)(v36);
    if (v17)
    {
      break;
    }

    v41 = v40;
    os_unfair_lock_unlock((v34 + 40));

    if (v41 >> 60 == 9 && ((v41 + 0x6FFFFFFFFFFFFFF8) & 0xFFFFFFFFFFFFFFF7) == 0)
    {
      v93[0] = v24;
      v80 = type metadata accessor for DecodingError();
      swift_allocError();
      v82 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v82 = MEMORY[0x1E69E6158];
      _CodingPathNode.path.getter(a4);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v80 - 8) + 104))(v82, *MEMORY[0x1E69E6B08], v80);
      swift_willThrow();

      outlined consume of Set<AnyKeyPath>.Iterator._Variant(v88);
      outlined consume of BPlistMap.Value(v41);
      goto LABEL_57;
    }

    v43 = *(i + 24);

    v44 = _s10Foundation21_BPlistDecodingFormatV12unwrapString4from2in3for_SSAA0B3MapC5ValueO_AiA15_CodingPathNodeOxSgtKs0L3KeyRzlFZAA01_lO0O_Tt3g5(v41, v43, a4, 0, 0, 0, 255);
    v46 = v45;

    v47 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v47;
    v49 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v46);
    v51 = *(v47 + 16);
    v52 = (v50 & 1) == 0;
    v53 = __OFADD__(v51, v52);
    v54 = v51 + v52;
    if (v53)
    {
      goto LABEL_61;
    }

    v55 = v50;
    if (*(v47 + 24) >= v54)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_32;
      }

      v84 = v49;
      v60 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
      v61 = static _DictionaryStorage.copy(original:)();
      v47 = v61;
      v89 = v60;
      if (*(v60 + 16))
      {
        v62 = (v61 + 64);
        v63 = (v60 + 64);
        v64 = ((1 << *(v47 + 32)) + 63) >> 6;
        v83 = v60 + 64;
        if (v47 != v60 || v62 >= &v63[8 * v64])
        {
          memmove(v62, v63, 8 * v64);
        }

        v65 = 0;
        *(v47 + 16) = *(v60 + 16);
        v66 = 1 << *(v60 + 32);
        if (v66 < 64)
        {
          v67 = ~(-1 << v66);
        }

        else
        {
          v67 = -1;
        }

        v68 = v67 & *(v60 + 64);
        v69 = (v66 + 63) >> 6;
        if (v68)
        {
          do
          {
            v70 = __clz(__rbit64(v68));
            v87 = (v68 - 1) & v68;
LABEL_49:
            v73 = v70 | (v65 << 6);
            v74 = (*(v89 + 48) + 16 * v73);
            v76 = *v74;
            v75 = v74[1];
            v77 = *(*(v89 + 56) + 8 * v73);
            v78 = (*(v47 + 48) + 16 * v73);
            *v78 = v76;
            v78[1] = v75;
            *(*(v47 + 56) + 8 * v73) = v77;

            v68 = v87;
          }

          while (v87);
        }

        v71 = v65;
        while (1)
        {
          v65 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            goto LABEL_63;
          }

          if (v65 >= v69)
          {
            break;
          }

          v72 = *(v83 + 8 * v65);
          ++v71;
          if (v72)
          {
            v70 = __clz(__rbit64(v72));
            v87 = (v72 - 1) & v72;
            goto LABEL_49;
          }
        }
      }

      v49 = v84;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v54, isUniquelyReferenced_nonNull_native);
      v47 = v94;
      v49 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v46);
      if ((v55 & 1) != (v56 & 1))
      {
        goto LABEL_64;
      }
    }

LABEL_32:
    v21 &= v21 - 1;
    if (v55)
    {
      v27 = v49;

      *(*(v47 + 56) + 8 * v27) = v92;
      outlined consume of BPlistMap.Value(v41);
    }

    else
    {
      *(v47 + 8 * (v49 >> 6) + 64) |= 1 << v49;
      v57 = (*(v47 + 48) + 16 * v49);
      *v57 = v44;
      v57[1] = v46;
      *(*(v47 + 56) + 8 * v49) = v92;
      outlined consume of BPlistMap.Value(v41);
      v58 = *(v47 + 16);
      v53 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v53)
      {
        goto LABEL_62;
      }

      *(v47 + 16) = v59;
    }

    v24 = v47;
    v26 = v28;
    v17 = 0;
    v18 = v88;
  }

  v93[0] = v24;
LABEL_55:
  os_unfair_lock_unlock((v34 + 40));

  outlined consume of Set<AnyKeyPath>.Iterator._Variant(v88);

LABEL_57:
}

uint64_t _s10Foundation21_BPlistDecodingFormatV12unwrapString4from2in3for_SSAA0B3MapC5ValueO_AiA15_CodingPathNodeOxSgtKs0L3KeyRzlFZAA01_lO0O_Tt3g5(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = a3;
  if (a1 >> 60)
  {
    v22 = ~a7;
    v23 = _CodingPathNode.path.getter(a3);
    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v24 = swift_allocObject();
      *(inited + 32) = v24;
      *(v24 + 16) = a4;
      *(v24 + 24) = a5;
      *(v24 + 32) = a6;
      *(v24 + 40) = a7;
      *&v31 = v23;
      outlined copy of _CodingKey(a4, a5, a6, a7);
      specialized Array.append<A>(contentsOf:)(inited);
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5(MEMORY[0x1E69E6158], a1, v25);

    goto LABEL_16;
  }

  v32 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);

  os_unfair_lock_lock((v16 + 40));
  closure #1 in BPlistMap.withBuffer<A>(for:perform:)specialized partial apply((v16 + 16), &v31);
  if (!v7)
  {
    os_unfair_lock_unlock((v16 + 40));
    v18 = *(&v31 + 1);
    inited = v31;

    if (v18)
    {
      return inited;
    }

    if (a7 == -1)
    {

LABEL_15:
      inited = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v28;
      outlined copy of _CodingKey?(a4, a5, v32, a7);
      _CodingPathNode.path.getter(v13);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(inited - 8) + 104))(v29, *MEMORY[0x1E69E6B00], inited);

LABEL_16:
      swift_willThrow();
      return inited;
    }

    v19 = swift_allocObject();
    v19[5] = &type metadata for _CodingKey;
    v19[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v20 = swift_allocObject();
    v19[2] = v20;
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;
    *(v20 + 32) = v32;
    *(v20 + 40) = a7;
    v19[7] = v13;
    if (v13 >> 62)
    {
      if (v13 >> 62 != 1)
      {
        v27 = 1;
        goto LABEL_14;
      }

      v21 = ((v13 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v21 = (v13 + 64);
    }

    v26 = *v21;

    v27 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
LABEL_14:
      v19[8] = v27;
      v13 = v19;
      goto LABEL_15;
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v16 + 40));

  __break(1u);
  return result;
}

uint64_t sub_180839118()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18083915C()
{
  outlined consume of _CodingKey(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

void *specialized closure #1 in BPlistMap.withBuffer<A>(for:perform:)@<X0>(void *result@<X0>, void *(*a2)(__int128 *__return_ptr, uint64_t, uint64_t, void, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v7 = result[1];
  v8 = v7 < a4 + a3 || v7 < a4;
  if (v8 || (a4 | a3) < 0 || v7 <= a3)
  {
    __break(1u);
  }

  else
  {
    result = a2(&v9, *result + a3, a4, *result, v7);
    if (!v5)
    {
      *a5 = v9;
    }
  }

  return result;
}

unint64_t outlined consume of BPlistMap.Value(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 3)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  else
  {
    if (v1 > 5)
    {
      if (v1 != 6 && v1 != 7 && v1 != 8)
      {
        return result;
      }
    }

    if (v1 == 4 || v1 == 5)
    {
    }
  }

  return result;
}

uint64_t BPlistMap.__deallocating_deinit()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 40));
  result = *(v1 + 32);
  if (result)
  {
    if (result != *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    MEMORY[0x1865D2690]();
  }

  os_unfair_lock_unlock((v1 + 40));

  return swift_deallocClassInstance();
}

unint64_t BufferReader.readInt(updatingIndex:objectRangeEnd:for:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *result;
  if (*result >= a2)
  {
    goto LABEL_8;
  }

  v8 = v4[2];
  v9 = v4[4];
  if (v9 < v8)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((v8 - *v4) < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v9 - v8) < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((*v4 + v4[1] - v9) >= 0)
  {
    v11 = result;
    v13 = v7 + 1;
    v12 = *v7;
    *result = v7 + 1;
    if (specialized BPlistTypeMarker.init(_:)(v12) != 3 || (v14 = 1 << (v12 & 0xF), (a2 - v13) < v14))
    {
LABEL_8:
      lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
      swift_allocError();
      *v15 = a3;
      v15[1] = a4;
      swift_willThrow();
    }

    if (v14 > 3)
    {
      if ((v14 - 5) < 3)
      {
        goto LABEL_15;
      }

      if (v14 == 4)
      {
        result = bswap32(*(v7 + 1));
        goto LABEL_25;
      }

      if (v14 != 8)
      {
        goto LABEL_23;
      }

      result = bswap64(*(v7 + 1));
    }

    else
    {
      switch(v14)
      {
        case 1:
          result = *v13;
          break;
        case 2:
          result = __rev16(*(v7 + 1));
          break;
        case 3:
LABEL_15:
          result = 0;
          v16 = v7 + 1;
          v17 = 1 << (v12 & 0xF);
          do
          {
            v18 = *v16++;
            result = v18 | (result << 8);
            --v17;
          }

          while (v17);
          break;
        default:
LABEL_23:
          result = bswap64(*&v13[v14 - 8]);
          break;
      }
    }

LABEL_25:
    *v11 = &v13[v14];
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized BPlistTypeMarker.init(_:)(uint64_t result)
{
  v1 = (result >> 4) ^ 8;
  if (v1 <= 8)
  {
    if (v1 <= 3)
    {
      if (!v1)
      {
        return 9;
      }

      if (v1 == 2)
      {
        return 10;
      }
    }

    else
    {
      switch(v1)
      {
        case 4:
          return 11;
        case 5:
          return 12;
        case 8:
          if (!result)
          {
            return result;
          }

          if (result == 9)
          {
            return 2;
          }

          if (result == 8)
          {
            return 1;
          }

          break;
      }
    }
  }

  else if (v1 > 11)
  {
    switch(v1)
    {
      case 12:
        return 6;
      case 13:
        return 7;
      case 14:
        return 8;
    }
  }

  else
  {
    if (v1 == 9)
    {
      return 3;
    }

    if (v1 == 10)
    {
      return 4;
    }

    if (result == 51)
    {
      return 5;
    }
  }

  return 13;
}

uint64_t static _BPlistDecodingFormat.unwrapString<A>(from:in:for:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a6;
  v74 = a3;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v70 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v66 - v12;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v69 = &v66 - v27;
  if (v25 >> 60)
  {
    v72 = v25;
    v44 = *(v14 + 16);
    v44(v19, a4, v13, v26);
    (v44)(v16, v19, v13);
    if ((v9[6])(v16, 1, a5) == 1)
    {
      v45 = *(v14 + 8);
      v45(v16, v13);
      v34 = _CodingPathNode.path.getter(v74);
      v45(v19, v13);
    }

    else
    {
      v46 = v70;
      v9[4](v70, v16, a5);
      v47 = _CodingPathNode.path.getter(v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v49 = v71;
      *(inited + 56) = a5;
      *(inited + 64) = v49;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      v9[2](boxed_opaque_existential_0, v46, a5);
      *&v73 = v47;
      specialized Array.append<A>(contentsOf:)(inited);
      (v9[1])(v46, a5);
      (*(v14 + 8))(v19, v13);
      v34 = v73;
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5(MEMORY[0x1E69E6158], v72, v51);

    goto LABEL_17;
  }

  v67 = a5;
  v70 = v9;
  MEMORY[0x1EEE9AC00](v24);
  *(&v66 - 16) = v28;
  v29 = *(a2 + 64);
  *&v31 = MEMORY[0x1EEE9AC00](v30);
  *(&v66 - 4) = partial apply for closure #1 in static _BPlistDecodingFormat.unwrapString<A>(from:in:for:_:);
  *(&v66 - 3) = v32;
  *(&v66 - 1) = v31;

  os_unfair_lock_lock((v29 + 40));
  v33 = v72;
  partial apply for specialized closure #1 in BPlistMap.withBuffer<A>(for:perform:)((v29 + 16), &v73);
  if (!v33)
  {
    os_unfair_lock_unlock((v29 + 40));
    v35 = *(&v73 + 1);
    v34 = v73;

    if (v35)
    {
      return v34;
    }

    v36 = v14;
    v37 = *(v14 + 16);
    v38 = v69;
    v39 = v13;
    v37(v69, a4, v13);
    v37(v22, v38, v13);
    v40 = v70;
    v41 = v67;
    if (v70[6](v22, 1, v67) == 1)
    {
      v42 = *(v36 + 8);
      v42(v38, v13);
      v42(v22, v13);
      v43 = v74;
      v34 = v74 & 0x3FFFFFFFFFFFFFFFLL;

LABEL_16:
      v62 = type metadata accessor for DecodingError();
      swift_allocError();
      v64 = v63;
      _CodingPathNode.path.getter(v43);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v62 - 8) + 104))(v64, *MEMORY[0x1E69E6B00], v62);

LABEL_17:
      swift_willThrow();
      return v34;
    }

    v52 = v40[4];
    v53 = v68;
    v52(v68, v22, v41);
    v54 = swift_allocObject();
    v55 = v71;
    *(v54 + 40) = v41;
    *(v54 + 48) = v55;
    v56 = __swift_allocate_boxed_opaque_existential_0((v54 + 16));
    v52(v56, v53, v41);
    v57 = *(v36 + 8);
    v29 = v36 + 8;
    v57(v38, v39);
    v58 = v74;
    *(v54 + 56) = v74;
    if (v58 >> 62)
    {
      if (v58 >> 62 != 1)
      {
        v61 = 1;
        goto LABEL_15;
      }

      v59 = ((v58 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v59 = (v58 + 64);
    }

    v60 = *v59;

    v61 = v60 + 1;
    if (!__OFADD__(v60, 1))
    {
LABEL_15:
      *(v54 + 64) = v61;
      v34 = v54 & 0x3FFFFFFFFFFFFFFFLL;
      v43 = v54;
      goto LABEL_16;
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v29 + 40));

  __break(1u);
  return result;
}

uint64_t static _BPlistDecodingFormat.unwrapBool<A>(from:for:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a3;
  v31 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v15;
  if (a1 >> 60 == 6)
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v28 = a1;
    v19 = *(v11 + 16);
    v19(&v27 - v15, v30, v10, v16);
    (v19)(v13, v17, v10);
    if ((*(v7 + 48))(v13, 1, a4) == 1)
    {
      v20 = *(v11 + 8);
      v20(v13, v10);
      _CodingPathNode.path.getter(v31);
      v20(v17, v10);
    }

    else
    {
      (*(v7 + 32))(v9, v13, a4);
      v21 = _CodingPathNode.path.getter(v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v23 = v29;
      *(inited + 56) = a4;
      *(inited + 64) = v23;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v7 + 16))(boxed_opaque_existential_0, v9, a4);
      v32 = v21;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v7 + 8))(v9, a4);
      (*(v11 + 8))(v17, v10);
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5(MEMORY[0x1E69E6370], v28, v25);

    swift_willThrow();
  }

  return v18 & 1;
}

uint64_t type metadata instantiation function for _PlistDecodingStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for _PlistKeyedDecodingContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _PlistDecoder.unkeyedContainer()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24[1] = a1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  v26 = v3;
  v24[2] = v4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v24 - v15);
  v25 = v2;
  v17 = *(v2 + 16);

  if (MEMORY[0x1865CB560](v18, AssociatedTypeWitness))
  {
    v24[0] = v16;
    v27 = v17;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v16 = v7;
    BidirectionalCollection.last.getter();
    (v7[2])(v9, v12, v6);
    if ((*(v13 + 48))(v9, 1, AssociatedTypeWitness) != 1)
    {

      v7[1](v12, v6);
      v19 = v24[0];
      (*(v13 + 32))(v24[0], v9, AssociatedTypeWitness);
      v20 = v25;
      v21 = *(v25 + 40);
      v22 = *(v26 + 32);

      v22(v19, v20, v21);
      (*(v13 + 8))(v19, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  result = v16[1](v9, v6);
  __break(1u);
  return result;
}

unint64_t BPlistScanner.scanArrayOrSet(typeMarker:rawTypeMarker:index:objectRangeEndIndex:)(char a1, int a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v38 = (a3 + 1);
  if ((~a2 & 0xF) != 0)
  {
    result = a2 & 0xF;
  }

  else
  {
    v8 = a4;
    result = BufferReader.readInt(updatingIndex:objectRangeEnd:for:)(&v38, a4, 0x7961727261, 0xE500000000000000);
    if (v5)
    {
      return result;
    }

    a4 = v8;
  }

  v10 = *(v4 + 55);
  if (!is_mul_ok(result, v10))
  {
    goto LABEL_8;
  }

  if (((result * v10) & 0x8000000000000000) != 0)
  {
    goto LABEL_77;
  }

  v11 = v38;
  if ((a4 - v38) < (result * v10))
  {
LABEL_8:
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v12 = xmmword_181247390;
    return swift_willThrow();
  }

  if (result >= 0x40000)
  {
    v13 = 0x40000;
  }

  else
  {
    v13 = result;
  }

  v37 = result;
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0, MEMORY[0x1E69E7CC0]);
  v14 = v37;
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_98;
  }

  v15 = result;
  v36 = a1;
  if (!v37)
  {
LABEL_65:
    v30 = swift_allocObject();
    *(v30 + 16) = v15;
    v31 = 0x2000000000000000;
    if (v36 == 10)
    {
      v31 = 0x1000000000000000;
    }

    return v31 | v30;
  }

  v16 = 0;
  v17 = v6[2];
  v18 = v6[4];
  v19 = v17 - *v6;
  v20 = v18 - v17;
  v21 = *v6 + v6[1] - v18;
  v22 = v10 - 8;
  while (1)
  {
    if (v10 <= 3)
    {
      if (v10 <= 1)
      {
        if (v10)
        {
          if (v18 < v17)
          {
            goto LABEL_81;
          }

          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_87;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }

          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_95;
          }

          v24 = *v11;
        }

        else
        {
          v24 = v10;
        }

        goto LABEL_58;
      }

      if (v10 == 2)
      {
        if (v18 < v17)
        {
          goto LABEL_79;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_88;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_96;
        }

        v24 = __rev16(*v11);
        goto LABEL_58;
      }
    }

    else if ((v10 - 5) >= 3)
    {
      if (v10 == 4)
      {
        if (v18 < v17)
        {
          goto LABEL_80;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_92;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_97;
        }

        v24 = bswap32(*v11);
      }

      else
      {
        if (v10 == 8)
        {
          if (v18 < v17)
          {
            goto LABEL_82;
          }

          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_83;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_91;
          }

          v23 = v11;
          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_93;
          }
        }

        else
        {
          if (v18 < v17)
          {
            goto LABEL_78;
          }

          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_89;
          }

          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_94;
          }

          v23 = (v11 + v22);
        }

        v24 = bswap64(*v23);
        if ((v24 & 0x8000000000000000) != 0)
        {
LABEL_68:
          lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
          swift_allocError();
          *v32 = xmmword_181247320;
          swift_willThrow();
        }
      }

      goto LABEL_58;
    }

    if (v18 < v17)
    {
      goto LABEL_73;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_74;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_75;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    v24 = 0;
    for (i = 0; i != v10; ++i)
    {
      v24 = *(v11 + i) | (v24 << 8);
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

LABEL_58:
    v27 = *(v15 + 16);
    v26 = *(v15 + 24);
    if (v27 >= v26 >> 1)
    {
      v28 = v15;
      v34 = v21;
      v35 = v19;
      v29 = v20;
      v33 = v22;
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v28);
      v22 = v33;
      v21 = v34;
      v20 = v29;
      v19 = v35;
      v15 = result;
      v14 = v37;
    }

    *(v15 + 16) = v27 + 1;
    *(v15 + 8 * v27 + 32) = v24;
    if (v18 < v17)
    {
      break;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_70;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    ++v16;
    v11 = (v11 + v10);
    if (v16 == v14)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

uint64_t static _BPlistDecodingFormat.unkeyedContainer(for:referencing:codingPathNode:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 >> 60 == 1)
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *(v14 + 16);
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation30_PlistUnkeyedDecodingContainerVyAA07_BPlistD6FormatVGMd, &_s10Foundation30_PlistUnkeyedDecodingContainerVyAA07_BPlistD6FormatVGMR);
    a4[4] = lazy protocol witness table accessor for type _PlistUnkeyedDecodingContainer<_BPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>();
    v18 = swift_allocObject();
    *a4 = v18;
    *(v18 + 32) = xmmword_1812468C0;
    *(v18 + 16) = a2;
    *(v18 + 24) = v14;
    *(v18 + 64) = 0;
    *(v18 + 72) = a3;
    *(v18 + 48) = v15;
    *(v18 + 56) = 0;
  }

  else
  {
    if (a1 >> 60 == 9 && (a1 == 0x9000000000000008 || a1 == 0x9000000000000010))
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
      v9 = *(a2 + 40);

      _CodingPathNode.path.getter(v9);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    }

    else
    {
      v10 = *(a2 + 40);

      _CodingPathNode.path.getter(v10);

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
      type metadata accessor for DecodingError();
      swift_allocError();
      _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5(v11, a1, v12);
    }

    return swift_willThrow();
  }
}