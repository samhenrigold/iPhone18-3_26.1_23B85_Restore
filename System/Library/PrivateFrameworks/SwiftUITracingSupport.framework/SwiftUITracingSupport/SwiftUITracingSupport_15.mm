void specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(uint64_t a1, unsigned int a2, char a3, uint64_t a4)
{
  if (v4[48])
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v5 = *(v4 + 22);
  v6 = *v4;
  if (v6 >= *(v5 + 116))
  {
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v9 = *(*(v7 + 8 * v6) + 8);
  if (*(v9 + 44) <= a2)
  {
    goto LABEL_143;
  }

  v185 = v4;
  v10 = *(v9 + 32);
  if (!v10)
  {
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v184 = a2;
  v12 = (v10 + (a2 << 7));
  v13 = v12[1];
  v215 = *v12;
  v216 = v13;
  v14 = v12[5];
  v219 = v12[4];
  v220 = v14;
  v15 = v12[7];
  v221 = v12[6];
  v222 = v15;
  v16 = v12[3];
  v217 = v12[2];
  v218 = v16;
  LOBYTE(v207) = BYTE8(v216);
  v17 = 256;
  if (!BYTE9(v216))
  {
    v17 = 0;
  }

  v18 = v17 | (HIDWORD(v216) << 32);
  v19 = HeterogeneousBuffer.type(at:)(0, *(&v215 + 1), v216, v17 | v207, v217);
  v20 = swift_conformsToProtocol2();
  if (!v20)
  {
    goto LABEL_177;
  }

  v21 = v20;
  v187 = v5;
  v22 = HeterogeneousBuffer.index(after:)(0, *(&v215 + 1), v216, v18 | BYTE8(v216), v217);
  LOBYTE(v207) = BYTE8(v216);
  v23 = HeterogeneousBuffer.type(at:)(v22, *(&v215 + 1), v216, v18 | BYTE8(v216), v217);
  v24 = swift_conformsToProtocol2();
  if (!v24)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v23, &v215, v19, v21, v24, &v188);
  if (v185[48])
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v25 = *v185;
  if (v25 >= *(v5 + 116))
  {
    goto LABEL_144;
  }

  v26 = *(v5 + 104);
  if (!v26)
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v188 != &type metadata for Event.AttributeValue && v188 != &type metadata for Event.AttributeStack)
  {
    goto LABEL_162;
  }

  static PlatformViews.subtype(source:within:)(v189, *(*(v26 + 8 * v25) + 8), &v207);
  if (v185[48])
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v27 = *v185;
  if (v27 >= *(v5 + 116))
  {
    goto LABEL_145;
  }

  v28 = *(v5 + 104);
  if (!v28)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v29 = *(*(v28 + 8 * v27) + 8);
  if (*(v29 + 44) <= a2)
  {
    goto LABEL_146;
  }

  v179 = a3;
  v183 = a2;
  v30 = *(v29 + 32);
  if (!v30)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v181 = v207;
  v180 = BYTE8(v207);
  v31 = BYTE9(v207);
  v32 = (v30 + (v184 << 7));
  v33 = v32[1];
  v207 = *v32;
  v208 = v33;
  v34 = v32[5];
  v211 = v32[4];
  v212 = v34;
  v35 = v32[7];
  v213 = v32[6];
  v214 = v35;
  v36 = v32[3];
  v209 = v32[2];
  v210 = v36;
  v37 = *(&v207 + 1);
  v38 = v208;
  v39 = BYTE8(v208);
  v40 = v209;
  v194[0] = BYTE8(v208);
  v41 = 256;
  if (!BYTE9(v208))
  {
    v41 = 0;
  }

  v42 = v41 | (HIDWORD(v208) << 32);
  v43 = HeterogeneousBuffer.type(at:)(0, *(&v207 + 1), v208, v41 | BYTE8(v208), v209);
  v44 = swift_conformsToProtocol2();
  if (!v44)
  {
    goto LABEL_184;
  }

  v45 = v44;
  v194[0] = v39;
  v46 = HeterogeneousBuffer.index(after:)(0, v37, v38, v42 | v39, v40);
  v194[0] = v39;
  v47 = HeterogeneousBuffer.type(at:)(v46, v37, v38, v42 | v39, v40);
  v48 = swift_conformsToProtocol2();
  if (!v48)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v47, &v207, v43, v45, v48, v190);
  *&v194[6] = v190[0];
  *&v194[22] = v190[1];
  *&v194[38] = v191;
  *&v201[10] = *v194;
  *&v200 = a1;
  *(&v200 + 1) = &protocol witness table for PlatformViews;
  *v201 = v181;
  v201[8] = v180;
  v201[9] = v31;
  *&v201[26] = *&v194[16];
  *&v201[36] = *&v194[26];
  Hasher.init()();
  MEMORY[0x26D69DBC0](a1);
  v204 = *&v194[32];
  v205 = v195;
  v206 = v196;
  v202 = *v194;
  v203 = *&v194[16];
  v49 = Hasher.finalize()();
  if (v185[48])
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v50 = *v185;
  if (v50 >= *(v5 + 116))
  {
    goto LABEL_147;
  }

  v51 = *(v5 + 104);
  if (!v51)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  v52 = v49;
  v53 = *(*(*(v51 + 8 * v50) + 8) + 192);
  v54 = *v53;
  if ((*v53)[1].Kind)
  {
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(&v200);
    if (v56)
    {
      v57 = *(v54[3].Description + v55);
      goto LABEL_40;
    }

    v50 = *v185;
    v58 = v185[48] == 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v194[32] = *&v201[16];
  v195 = *&v201[32];
  LODWORD(v196) = *&v201[48];
  *v194 = v200;
  *&v194[16] = *v201;
  if (!v58)
  {
LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  v5 = v187;
  if (v50 >= *(v187 + 116))
  {
    goto LABEL_160;
  }

  v61 = *(v187 + 104);
  if (v61)
  {
    v62 = v59;
    v63 = v60;
    v64 = *(*(v61 + 8 * v50) + 8);
    v65 = *(v64 + 212);
    if (v65 == *(v64 + 208))
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v65);
    }

    v66 = *(v64 + 200);
    if (!v66)
    {
      goto LABEL_206;
    }

    v67 = *(v64 + 212);
    v68 = v66 + 120 * v67;
    v69 = v195;
    *(v68 + 32) = *&v194[32];
    *(v68 + 48) = v69;
    v70 = v196;
    v71 = *&v194[16];
    *v68 = *v194;
    *(v68 + 16) = v71;
    *(v68 + 64) = v70;
    *(v68 + 72) = v52;
    *(v68 + 80) = 0;
    *(v68 + 88) = 0;
    *(v68 + 96) = 0;
    *(v68 + 104) = v62;
    *(v68 + 112) = v63;
    if (v67 == -1)
    {
      goto LABEL_161;
    }

    *(v64 + 212) = v67 + 1;
    v57 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v192 = *v53;
    *v53 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, &v200, isUniquelyReferenced_nonNull_native);
    *v53 = v192;

LABEL_40:
    if (v185[48])
    {
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    v73 = *v185;
    if (v73 < *(v5 + 116))
    {
      v74 = *(v5 + 104);
      if (!v74)
      {
LABEL_189:
        __break(1u);
        goto LABEL_190;
      }

      v75 = *(*(v74 + 8 * v73) + 8);
      if (*(v75 + 44) > a2)
      {
        v76 = *(v75 + 32);
        if (!v76)
        {
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

        v77 = (v76 + (v184 << 7));
        v78 = v77[1];
        *v194 = *v77;
        *&v194[16] = v78;
        v79 = v77[5];
        v196 = v77[4];
        v197 = v79;
        v80 = v77[7];
        v198 = v77[6];
        v199 = v80;
        v81 = v77[3];
        *&v194[32] = v77[2];
        v195 = v81;
        v82 = *&v194[8];
        v83 = *&v194[16];
        v84 = v194[24];
        v85 = *&v194[32];
        LOBYTE(v192) = v194[24];
        v86 = 256;
        if (!v194[25])
        {
          v86 = 0;
        }

        v87 = v86 | (*&v194[28] << 32);
        v88 = HeterogeneousBuffer.type(at:)(0, *&v194[8], *&v194[16], v86 | v194[24], *&v194[32]);
        v89 = swift_conformsToProtocol2();
        if (!v89)
        {
          goto LABEL_191;
        }

        v90 = v89;
        LOBYTE(v192) = v84;
        v91 = HeterogeneousBuffer.index(after:)(0, v82, v83, v87 | v84, v85);
        LOBYTE(v192) = v84;
        v92 = HeterogeneousBuffer.type(at:)(v91, v82, v83, v87 | v84, v85);
        v93 = swift_conformsToProtocol2();
        if (!v93)
        {
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v92, v194, v88, v90, v93, &v192);
        if (v192 == &type metadata for Event.AttributeStack || v192 == &type metadata for Event.AttributeValue)
        {
          v95 = v193;
        }

        else
        {
          v95 = 0xFFFFFFFFLL;
        }

        v96 = v185;
        specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v95, a1, &protocol witness table for PlatformViews, *&v57 | 0xFFFFFFFF00000000, 4, v179 & 1);
        if (v185[48])
        {
          goto LABEL_193;
        }

        v98 = *v185;
        if (v98 < *(v5 + 116))
        {
          v99 = *(v5 + 104);
          if (!v99)
          {
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }

          v100 = *(*(v99 + 8 * v98) + 8);
          v101 = *(v100 + 44);
          if (v101 > a2)
          {
            v102 = *(v100 + 32);
            if (!v102)
            {
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
              goto LABEL_198;
            }

            v103 = v97;
            if (v97 < v101)
            {
              v104 = (v102 + (v184 << 7));
              v186 = v97;
              v105 = (v102 + (v97 << 7));
              v106 = *v105;
              if (v104[31] == v104[30])
              {
                specialized UnsafeArray.growToCapacity(_:)();
              }

              v107 = *(v104 + 14);
              if (!v107)
              {
                goto LABEL_196;
              }

              v108 = v104[31];
              v109 = v107 + 8 * v108;
              *v109 = -24448;
              *(v109 + 4) = v106;
              if (v108 != -1)
              {
                v104[31] = v108 + 1;
                v110 = *v104;
                if (v105[31] == v105[30])
                {
                  specialized UnsafeArray.growToCapacity(_:)();
                }

                v111 = *(v105 + 14);
                if (!v111)
                {
                  goto LABEL_197;
                }

                v112 = v105[31];
                v113 = v111 + 8 * v112;
                *v113 = 24704;
                *(v113 + 4) = v110;
                if (v112 != -1)
                {
                  v105[31] = v112 + 1;
                  if (v185[48])
                  {
LABEL_198:
                    __break(1u);
                    goto LABEL_199;
                  }

                  v114 = v187;
                  v115 = *v185;
                  if (v115 < *(v187 + 116))
                  {
                    v116 = *(v187 + 104);
                    if (!v116)
                    {
LABEL_199:
                      __break(1u);
LABEL_200:
                      __break(1u);
LABEL_201:
                      __break(1u);
LABEL_202:
                      __break(1u);
LABEL_203:
                      __break(1u);
                      goto LABEL_204;
                    }

                    v117 = *(*(v116 + 8 * v115) + 8);
                    if (*(v117 + 44) > v183)
                    {
                      v118 = *(v117 + 32);
                      if (!v118)
                      {
                        goto LABEL_200;
                      }

                      v119 = 0;
                      v120 = v118 + (v184 << 7);
                      v121 = *(v120 + 112);
                      v122 = *(v120 + 124);
                      v123 = MEMORY[0x277D84F90];
LABEL_75:
                      v124 = (v121 + 8 * v119);
                      while (v122 != v119)
                      {
                        if (v119 >= v122)
                        {
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
LABEL_135:
                          __break(1u);
LABEL_136:
                          __break(1u);
LABEL_137:
                          __break(1u);
LABEL_138:
                          __break(1u);
LABEL_139:
                          __break(1u);
LABEL_140:
                          __break(1u);
LABEL_141:
                          __break(1u);
                          goto LABEL_142;
                        }

                        if (!v121)
                        {
                          goto LABEL_163;
                        }

                        v125 = v119 + 1;
                        if (__OFADD__(v119, 1))
                        {
                          goto LABEL_130;
                        }

                        v127 = *v124;
                        v124 += 4;
                        v126 = v127;
                        ++v119;
                        if ((v127 & 0x80000000) == 0 && (v126 & 0xC03) != 0)
                        {
                          v128 = *(v124 - 1);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v123 + 16) + 1, 1);
                          }

                          v130 = *(v123 + 16);
                          v129 = *(v123 + 24);
                          v131 = v130 + 1;
                          if (v130 >= v129 >> 1)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1);
                            v131 = v130 + 1;
                          }

                          *(v123 + 16) = v131;
                          v132 = v123 + 8 * v130;
                          *(v132 + 32) = v126;
                          *(v132 + 36) = v128;
                          v119 = v125;
                          v114 = v187;
                          goto LABEL_75;
                        }
                      }

                      v133 = *(v123 + 16);
                      if (v133)
                      {
                        v134 = 0;
                        v135 = (v123 + 36);
                        while (v134 < *(v123 + 16))
                        {
                          if (v96[48])
                          {
                            goto LABEL_164;
                          }

                          v136 = *v96;
                          if (v136 >= *(v114 + 116))
                          {
                            goto LABEL_132;
                          }

                          v137 = *(v114 + 104);
                          if (!v137)
                          {
                            goto LABEL_165;
                          }

                          v138 = *v135;
                          v139 = *(*(v137 + 8 * v136) + 8);
                          v140 = *(v139 + 44);
                          if (v138 >= v140)
                          {
                            goto LABEL_133;
                          }

                          v141 = *(v139 + 32);
                          if (!v141)
                          {
                            goto LABEL_166;
                          }

                          if (v103 >= v140)
                          {
                            goto LABEL_134;
                          }

                          v142 = *(v135 - 2);
                          v143 = (v141 + (v138 << 7));
                          v144 = (v141 + (v186 << 7));
                          v145 = *v144;
                          if (v143[31] == v143[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v146 = *(v143 + 14);
                          if (!v146)
                          {
                            goto LABEL_167;
                          }

                          v147 = v142 & 0x1FFF;
                          v148 = v143[31];
                          v149 = v146 + 8 * v148;
                          *v149 = v147 | 0xA000;
                          *(v149 + 4) = v145;
                          if (v148 == -1)
                          {
                            goto LABEL_135;
                          }

                          v143[31] = v148 + 1;
                          v150 = *v143;
                          if (v144[31] == v144[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v151 = *(v144 + 14);
                          v96 = v185;
                          if (!v151)
                          {
                            goto LABEL_168;
                          }

                          v152 = v144[31];
                          v153 = v151 + 8 * v152;
                          *v153 = v147 | 0x6000;
                          *(v153 + 4) = v150;
                          if (v152 == -1)
                          {
                            goto LABEL_136;
                          }

                          ++v134;
                          v144[31] = v152 + 1;
                          v135 += 2;
                          v114 = v187;
                          if (v133 == v134)
                          {
                            goto LABEL_105;
                          }
                        }

                        goto LABEL_131;
                      }

LABEL_105:

                      v154 = *(a4 + 16);
                      if (v154)
                      {
                        v155 = (a4 + 32);
                        while (!v96[48])
                        {
                          v156 = *v96;
                          if (v156 >= *(v114 + 116))
                          {
                            goto LABEL_137;
                          }

                          v157 = *(v114 + 104);
                          if (!v157)
                          {
                            goto LABEL_170;
                          }

                          v159 = *v155++;
                          v158 = v159;
                          v160 = *(*(v157 + 8 * v156) + 8);
                          v161 = *(v160 + 44);
                          if (v159 >= v161)
                          {
                            goto LABEL_138;
                          }

                          v162 = *(v160 + 32);
                          if (!v162)
                          {
                            goto LABEL_171;
                          }

                          if (v103 >= v161)
                          {
                            goto LABEL_139;
                          }

                          v163 = (v162 + (v158 << 7));
                          v164 = (v162 + (v186 << 7));
                          v165 = *v164;
                          if (v163[31] == v163[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v166 = *(v163 + 14);
                          if (!v166)
                          {
                            goto LABEL_172;
                          }

                          v167 = v163[31];
                          v168 = v166 + 8 * v167;
                          *v168 = -24512;
                          *(v168 + 4) = v165;
                          if (v167 == -1)
                          {
                            goto LABEL_140;
                          }

                          v163[31] = v167 + 1;
                          v169 = *v163;
                          if (v164[31] == v164[30])
                          {
                            specialized UnsafeArray.growToCapacity(_:)();
                          }

                          v170 = *(v164 + 14);
                          if (!v170)
                          {
                            goto LABEL_173;
                          }

                          v171 = v164[31];
                          v172 = v170 + 8 * v171;
                          *v172 = 24640;
                          *(v172 + 4) = v169;
                          if (v171 == -1)
                          {
                            goto LABEL_141;
                          }

                          v164[31] = v171 + 1;
                          --v154;
                          v114 = v187;
                          if (!v154)
                          {
                            goto LABEL_122;
                          }
                        }

                        goto LABEL_169;
                      }

LABEL_122:
                      if (v96[48])
                      {
                        goto LABEL_201;
                      }

                      v173 = *v96;
                      if (v173 < *(v114 + 116))
                      {
                        v174 = *(v114 + 104);
                        if (!v174)
                        {
                          goto LABEL_202;
                        }

                        v175 = *(*(v174 + 8 * v173) + 8);
                        v176 = *(v175 + 44);
                        if (v103 < v176)
                        {
                          v177 = *(v175 + 32);
                          if (!v177)
                          {
                            goto LABEL_203;
                          }

                          if (v176 > v183)
                          {
                            Event.hide(_:within:)((v177 + (v184 << 7)), v96);
                            return;
                          }

                          goto LABEL_159;
                        }

LABEL_158:
                        __break(1u);
LABEL_159:
                        __break(1u);
LABEL_160:
                        __break(1u);
LABEL_161:
                        __break(1u);
LABEL_162:
                        __break(1u);
LABEL_163:
                        __break(1u);
LABEL_164:
                        __break(1u);
LABEL_165:
                        __break(1u);
LABEL_166:
                        __break(1u);
LABEL_167:
                        __break(1u);
LABEL_168:
                        __break(1u);
LABEL_169:
                        __break(1u);
LABEL_170:
                        __break(1u);
LABEL_171:
                        __break(1u);
LABEL_172:
                        __break(1u);
LABEL_173:
                        __break(1u);
                        goto LABEL_174;
                      }

LABEL_157:
                      __break(1u);
                      goto LABEL_158;
                    }

LABEL_156:
                    __break(1u);
                    goto LABEL_157;
                  }

LABEL_155:
                  __break(1u);
                  goto LABEL_156;
                }

LABEL_154:
                __break(1u);
                goto LABEL_155;
              }

LABEL_153:
              __break(1u);
              goto LABEL_154;
            }

LABEL_152:
            __break(1u);
            goto LABEL_153;
          }

LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
}

unint64_t specialized static TreeAbstractionImp.model(tree:within:position:abstraction:)(unint64_t result, unsigned __int8 *a2, char a3, unint64_t a4, char a5, uint64_t a6)
{
  if (a2[48])
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v10 = *(a2 + 22);
  v11 = *a2;
  if (v11 >= *(v10 + 116))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = *(v10 + 104);
  if (!v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v13 = *(*(v12 + 8 * v11) + 8);
  v8 = HIDWORD(result);
  v14 = *(v13 + 124);
  if (HIDWORD(result) >= v14)
  {
    goto LABEL_32;
  }

  v15 = *(v13 + 112);
  if (!v15)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  v16 = *(v15 + 168 * HIDWORD(result));
  v17 = *(v16 + 16);
  if (result >= v17)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (*(v16 + 208 * result + 176) != 1)
  {
    return 0;
  }

  if ((a3 & 2) != 0 && (a5 & 1) == 0)
  {
    if (HIDWORD(a4) < v14)
    {
      if ((a4 & 0x80000000) == 0)
      {
        v9 = a4;
        v18 = (v15 + 168 * HIDWORD(a4));
        v6 = *v18;
        if (a4 < *(*v18 + 16))
        {
          v19 = *(v6 + 208 * a4 + 184);
          if (v19)
          {
            v20 = v19 == v7;
          }

          else
          {
            v20 = 0;
          }

          if (!v20)
          {
            goto LABEL_18;
          }

          v35 = result;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v18 = v6;
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            v6 = result;
            *v18 = result;
          }

          if (v9 < *(v6 + 16))
          {
            Tree.hide(within:_:)(a2, v35);
            return a4;
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_18:
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  if (v17 >> 31)
  {
    goto LABEL_38;
  }

  v9 = v17 | result & 0xFFFFFFFF00000000;
  result = Tree.init(abstraction:_:id:within:)(result, v7, a6, v9, a2, v38);
  if (v8 >= *(v13 + 124))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v21 = *(v13 + 112);
  if (!v21)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  v8 = (v21 + 168 * v8);
  v6 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_40:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    *v8 = v6;
  }

  v24 = *(v6 + 16);
  v23 = *(v6 + 24);
  if (v24 >= v23 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v6);
    result = v9;
    *v8 = v6;
  }

  else
  {
    result = v9;
  }

  *(v6 + 16) = v24 + 1;
  v25 = (v6 + 208 * v24);
  v25[2] = v38[0];
  v26 = v38[1];
  v27 = v38[2];
  v28 = v38[4];
  v25[5] = v38[3];
  v25[6] = v28;
  v25[3] = v26;
  v25[4] = v27;
  v29 = v38[5];
  v30 = v38[6];
  v31 = v38[8];
  v25[9] = v38[7];
  v25[10] = v31;
  v25[7] = v29;
  v25[8] = v30;
  v32 = v38[9];
  v33 = v38[10];
  v34 = v38[12];
  v25[13] = v38[11];
  v25[14] = v34;
  v25[11] = v32;
  v25[12] = v33;
  return result;
}

uint64_t static TypedEventAbstraction.subtype(source:within:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  result = hash<A>(type:)(v2, a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(unint64_t result, unsigned __int8 *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (a2[48])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = *(a2 + 22);
  v7 = *a2;
  if (v7 >= *(v6 + 116))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v6 + 104);
  if (v8)
  {
    v5 = *(*(v8 + 8 * v7) + 8);
    if (*a3 == -1)
    {
LABEL_5:
      v9 = *a4;
      v34 = *(*a4 + 16);
      if (!v34)
      {
        return 0;
      }

      v10 = 0;
      v11 = result;
      v12 = (v9 + 48);
      v13 = HIDWORD(result);
      v14 = 168 * HIDWORD(result);
      while (1)
      {
        if (v10 >= *(v9 + 16))
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if (*(v5 + 124) <= v13)
        {
          goto LABEL_18;
        }

        v15 = *(v5 + 112);
        if (!v15)
        {
          break;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }

        v16 = *(v15 + v14);
        if (v11 >= *(v16 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(v16 + 208 * v11 + 120);
        if (v17 != -1)
        {
          v18 = *(v12 - 4);
          v19 = *(v12 - 1);
          v20 = *v12;
          v21 = *(*v5 + 136);
          v23 = v21[1];
          v22 = v21[2];
          v40[0] = *v21;
          v40[1] = v23;
          v40[2] = v22;
          v24 = v21[6];
          v26 = v21[3];
          v25 = v21[4];
          v40[5] = v21[5];
          v40[6] = v24;
          v40[3] = v26;
          v40[4] = v25;
          v37 = v18;
          v38 = v19;
          v39 = v20;
          v27 = v21[5];
          v36[4] = v21[4];
          v36[5] = v27;
          v36[6] = v21[6];
          v28 = v21[1];
          v36[0] = *v21;
          v36[1] = v28;
          v29 = v21[3];
          v36[2] = v21[2];
          v36[3] = v29;

          outlined init with copy of Interpreter.Storage.Types(v40, v35);
          PType.Pattern.match(type:within:)(v17, v36);
          v31 = v30;

          result = outlined destroy of Interpreter.Storage.Types(v40);
          if (v31)
          {
            return 1;
          }
        }

        ++v10;
        v12 += 6;
        if (v34 == v10)
        {
          return 0;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    v32 = result;
    v33 = a4;
    swift_once();
    a4 = v33;
    result = v32;
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t static TypedEventAbstraction.hasOwnership(for:within:)(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a2[48])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(a2 + 22);
  v5 = *a2;
  if (v5 >= *(v4 + 116))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(*(v6 + 8 * v5) + 8);
  result = (*(a4 + 16))(a3, a4);
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v12 = result + 32;
    while (v11 < *(v9 + 16))
    {
      if (*(v8 + 44) <= v7)
      {
        goto LABEL_21;
      }

      v13 = *(v8 + 32);
      if (!v13)
      {
        goto LABEL_25;
      }

      v14 = v13 + (v7 << 7);
      v17 = *(v14 + 8);
      v16 = v14 + 8;
      v15 = v17;
      if (!*(v16 + 24))
      {
        goto LABEL_22;
      }

      if (*(v16 + 16))
      {
        goto LABEL_26;
      }

      if (!v15)
      {
        goto LABEL_27;
      }

      if (*v15 == &type metadata for Event.AttributeValue)
      {
        v18 = *(v15 + 8);
        if (v18 >= *(v8 + 84))
        {
          goto LABEL_23;
        }

        v19 = *(v8 + 72);
        if (!v19)
        {
          goto LABEL_28;
        }

        result = Attribute.Pattern.match(_:within:)(*(v19 + 312 * v18 + 32), v8);
        if (result)
        {
          v20 = 1;
          goto LABEL_19;
        }
      }

      ++v11;
      v12 += 72;
      if (v10 == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

unint64_t static TypedEventAbstraction.new(from:within:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  result = (*(a4 + 24))(a3, a4);
  if (a2[48])
  {
    goto LABEL_9;
  }

  v11 = *(a2 + 22);
  v12 = *a2;
  if (v12 >= *(v11 + 116))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = *(v11 + 104);
  if (!v13)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v14 = *(a4 + 8);
  v15 = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(a1, result, *(*(v13 + 8 * v12) + 8));

  if (v15)
  {
    Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v5, a1, 0, v15, a3, v14);
    v17 = v16;

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18 | ((v15 == 0) << 32);
}

uint64_t _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 44) <= result)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v4 = *(a3 + 32);
  if (!v4)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = v4 + (result << 7);
  v7 = *(v6 + 112);
  v8 = *(v6 + 124);
  v29 = a2 + 32;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v5;
LABEL_5:
  while (v10 != v8)
  {
    if (v10 >= v8)
    {
      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_44;
    }

    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_38;
    }

    v11 = 8 * v10;
    v12 = *(v7 + 8 * v10);
    v13 = v12 & 0xA000;
    v14 = v12 & 0xC03;
    v15 = v13 != 0x2000 || v14 == 0;
    v10 = v5;
    if (!v15)
    {
      v16 = v9;
      v17 = *(v7 + 4 + v11);
      v18 = *(a2 + 16);
      if (v18)
      {
        v19 = v29;
        while (v17 < *(a3 + 44))
        {
          v20 = *(a3 + 32);
          if (!v20)
          {
            goto LABEL_40;
          }

          v21 = v20 + (v17 << 7);
          v24 = *(v21 + 8);
          v23 = v21 + 8;
          v22 = v24;
          if (!*(v23 + 24))
          {
            goto LABEL_35;
          }

          if (*(v23 + 16))
          {
            goto LABEL_41;
          }

          if (!v22)
          {
            goto LABEL_42;
          }

          if (*v22 == &type metadata for Event.AttributeValue)
          {
            v25 = *(v22 + 8);
            if (v25 >= *(a3 + 84))
            {
              goto LABEL_36;
            }

            v26 = *(a3 + 72);
            if (!v26)
            {
              goto LABEL_43;
            }

            result = Attribute.Pattern.match(_:within:)(*(v26 + 312 * v25 + 32), a3);
            if (result)
            {
              v10 = v5;
              v9 = v16;
              goto LABEL_5;
            }
          }

          v19 += 72;
          if (!--v18)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_26:
      v9 = v16;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
        v9 = result;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      if (v28 >= v27 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v28 + 1;
      *(v9 + 4 * v28 + 32) = v17;
      goto LABEL_4;
    }
  }

  if (!*(v9 + 16))
  {

    return 0;
  }

  return v9;
}

uint64_t _s21SwiftUITracingSupport21TypedEventAbstractionPAAE8observes6update6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5(uint64_t a1, unsigned __int8 *a2)
{
  if (a2[48])
  {
    goto LABEL_6;
  }

  v2 = *(a2 + 22);
  if (*a2 >= *(v2 + 116))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*(v2 + 104))
  {
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(uint64_t result, unsigned __int8 *a2, void *a3, void *a4, uint64_t a5)
{
  if (a2[48])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = *(a2 + 22);
  v8 = *a2;
  if (v8 >= *(v7 + 116))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    v22 = a4;
    swift_once();
    a4 = v22;
    goto LABEL_5;
  }

  v9 = *(v7 + 104);
  if (!v9)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = *(*(v9 + 8 * v8) + 8);
  if (*a3 != -1)
  {
    goto LABEL_26;
  }

LABEL_5:
  v10 = *a4;
  v11 = *(*a4 + 16);

  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (*(v6 + 44) <= v5)
      {
        goto LABEL_22;
      }

      v14 = *(v6 + 32);
      if (!v14)
      {
        break;
      }

      v15 = v14 + (v5 << 7);
      v18 = *(v15 + 8);
      v17 = v15 + 8;
      v16 = v18;
      if (!*(v17 + 24))
      {
        goto LABEL_23;
      }

      if (*(v17 + 16))
      {
        goto LABEL_28;
      }

      if (!v16)
      {
        goto LABEL_29;
      }

      if (*v16 == &type metadata for Event.AttributeValue)
      {
        v19 = *(v16 + 8);
        if (v19 >= *(v6 + 84))
        {
          goto LABEL_24;
        }

        v20 = *(v6 + 72);
        if (!v20)
        {
          goto LABEL_30;
        }

        result = Attribute.Pattern.match(_:within:)(*(v20 + 312 * v19 + 32), v6);
        if (result)
        {
          v21 = 1;
          goto LABEL_20;
        }
      }

      ++v12;
      v13 += 72;
      if (v11 == v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_19:
  v21 = 0;
LABEL_20:

  return v21;
}

uint64_t static TypedEventAbstraction.observes(update:within:)(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a2[48])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(a2 + 22);
  v5 = *a2;
  if (v5 >= *(v4 + 116))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(*(v6 + 8 * v5) + 8);
  result = (*(a4 + 24))(a3, a4);
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v12 = result + 32;
    while (v11 < *(v9 + 16))
    {
      if (*(v8 + 44) <= v7)
      {
        goto LABEL_21;
      }

      v13 = *(v8 + 32);
      if (!v13)
      {
        goto LABEL_25;
      }

      v14 = v13 + (v7 << 7);
      v17 = *(v14 + 8);
      v16 = v14 + 8;
      v15 = v17;
      if (!*(v16 + 24))
      {
        goto LABEL_22;
      }

      if (*(v16 + 16))
      {
        goto LABEL_26;
      }

      if (!v15)
      {
        goto LABEL_27;
      }

      if (*v15 == &type metadata for Event.AttributeValue)
      {
        v18 = *(v15 + 8);
        if (v18 >= *(v8 + 84))
        {
          goto LABEL_23;
        }

        v19 = *(v8 + 72);
        if (!v19)
        {
          goto LABEL_28;
        }

        result = Attribute.Pattern.match(_:within:)(*(v19 + 312 * v18 + 32), v8);
        if (result)
        {
          v20 = 1;
          goto LABEL_19;
        }
      }

      ++v11;
      v12 += 72;
      if (v10 == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

uint64_t static TypedEventAbstraction.mut(_:observing:within:)(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  v6 = 256;
  if (!*(a1 + 25))
  {
    v6 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v6 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32));
  if (*(result + 28) == a2)
  {
    return 1;
  }

  v8 = *(a1 + 112);
  v9 = (v8 + 4);
  v10 = *(a1 + 124) + 1;
  do
  {
    if (!--v10)
    {
      goto LABEL_18;
    }

    if (!v8)
    {
      goto LABEL_24;
    }

    v11 = *(v9 - 2);
    v12 = *v9;
    v9 += 2;
    v13 = v11 & 0x4000;
  }

  while (v12 != a2 || v13 != 0);
  if (a3[48])
  {
    goto LABEL_25;
  }

  v15 = *(a3 + 22);
  v16 = *a3;
  if (v16 >= *(v15 + 116))
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = *(v15 + 104);
  if (!v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = *(*(v17 + 8 * v16) + 8);
  if (*(v18 + 44) <= a2)
  {
    goto LABEL_23;
  }

  v19 = *(v18 + 32);
  if (!v19)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  Event.hide(_:within:)((v19 + (a2 << 7)), a3);
LABEL_18:
  v20 = 256;
  if (!*(a1 + 25))
  {
    v20 = 0;
  }

  HIDWORD(specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v20 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32))[1].Description) = a2;
  return 1;
}

uint64_t specialized static TypedEventAbstraction.subtype(source:within:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*result != &type metadata for Event.AttributeValue && *result != &type metadata for Event.AttributeStack)
  {
    goto LABEL_11;
  }

  v4 = *(result + 32);
  if (v4 >= *(a2 + 84))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(a2 + 72);
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5 + 312 * v4;
  if ((*(v6 + 101) & 1) == 0)
  {
    v7 = *(v6 + 100);
    *a3 = *(v6 + 92);
    *(a3 + 8) = v7;
    *(a3 + 9) = 1;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static TypedEventAbstraction.subtype(source:within:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result == &type metadata for Event.AttributeValue || *result == &type metadata for Event.AttributeStack)
  {
    return (*(a4 + 32))(*(result + 32), a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t static TypedEventAbstraction.displayName(for:within:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 9))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_getMetatypeMetadata();
    return String.init<A>(describing:)();
  }

  return result;
}

uint64_t T_InstantiateBegin.model(within:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, a1);
  v4 = a1 + 56;
  v5 = *(a1 + 72);
  v34[0] = *(a1 + 56);
  v34[1] = v5;
  v35[0] = *(a1 + 88);
  *(v35 + 9) = *(a1 + 97);
  v6 = a1 + 88;
  v7 = a1 + 100;
  v8 = a1 + 104;
  result = *(a1 + 29);
  while (1)
  {
    v10 = *v8;
    if (result < *v7)
    {
      v11 = (*v6 + 8 * result);
      if ((v11[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v10)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v34);
    }

    v6 = v10 + 32;
    v7 = v10 + 44;
    v8 = v10 + 48;
    v4 = v10;
  }

  v12 = *v4;
  if (!v12)
  {
    goto LABEL_39;
  }

  result = specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(v3, *(*(v12 + 24 * *v11) + 32), 0xFFFFFFFFFFFFFFFFLL, 0, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11InstantiateV_Ttg5, &type metadata for Event.Instantiate, &_s21SwiftUITracingSupport5EventV11InstantiateVmMd, &_s21SwiftUITracingSupport5EventV11InstantiateVmMR);
  if (a1[48])
  {
    goto LABEL_34;
  }

  v13 = *(a1 + 22);
  v14 = *a1;
  if (v14 >= *(v13 + 116))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = *(v13 + 104);
  if (!v15)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v16 = *(*(v15 + 8 * v14) + 8);
  if (v3 >= *(v16 + 124))
  {
    goto LABEL_31;
  }

  v17 = *(v16 + 112);
  if (!v17)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = v17 + 168 * v3;
  *(v18 + 124) = result;
  *(v18 + 128) = 0;
  if (a1[48])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = *(v13 + 116);
  v20 = *a1;
  if (v20 >= v19)
  {
    goto LABEL_32;
  }

  v21 = *(*(v15 + 8 * v20) + 8);
  if (result >= *(v21 + 44))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v22 = *(v21 + 32);
  if (!v22)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  v23 = v22 + (result << 7);
  v24 = *(v23 + 8);
  v25 = *(v23 + 16);
  v26 = v23 + 8;
  v27 = 256;
  if (!*(v26 + 17))
  {
    v27 = 0;
  }

  v28 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5Tm(v24, v25, v27 | (*(v26 + 20) << 32) | *(v26 + 16), *(v26 + 24), _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5);
  if (v28)
  {
    v29 = *v28;
    v30 = v28[1];
  }

  else
  {
    v30 = MEMORY[0x277D84FA0];
    v29 = MEMORY[0x277D84FA0];
  }

  specialized Set._Variant.insert(_:)(v33, v3);
  v31 = 256;
  if (!*(v26 + 17))
  {
    v31 = 0;
  }

  v32 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5Tm(*v26, *(v26 + 8), v31 | (*(v26 + 20) << 32) | *(v26 + 16), *(v26 + 24), _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5);
  if (v32)
  {
    *v32 = v29;
    v32[1] = v30;
  }

  else
  {
    specialized HeterogeneousBuffer.insert<A>(_:)(v29, v30);
  }
}

uint64_t T_UninstantiateBegin.model(within:)(uint64_t a1, uint64_t a2)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, a1);
  v4 = (a1 + 56);
  v5 = *(a1 + 72);
  v12[0] = *(a1 + 56);
  v12[1] = v5;
  v13[0] = *(a1 + 88);
  *(v13 + 9) = *(a1 + 97);
  v6 = (a1 + 88);
  v7 = (a1 + 100);
  v8 = (a1 + 104);
  v9 = *(a1 + 116);
  while (1)
  {
    v10 = *v8;
    if (v9 < *v7)
    {
      v11 = (*v6 + 8 * v9);
      if ((v11[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v10)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(a1 + 116), 0, v12);
    }

    v6 = (v10 + 32);
    v7 = (v10 + 44);
    v8 = (v10 + 48);
    v4 = v10;
  }

  if (*v4)
  {
    return specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(result, *(*(*v4 + 24 * *v11) + 32), 0xFFFFFFFFFFFFFFFFLL, 0, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV13UninstantiateV_Ttg5, &type metadata for Event.Uninstantiate, &_s21SwiftUITracingSupport5EventV13UninstantiateVmMd, &_s21SwiftUITracingSupport5EventV13UninstantiateVmMR);
  }

  __break(1u);
  return result;
}

uint64_t T_AssignRootSubgraph.model(within:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  v10 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, a1);
  v11 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a4, a1);
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a3, a1);
  if (a1[48])
  {
    goto LABEL_56;
  }

  v13 = *(a1 + 22);
  v14 = *a1;
  if (v14 >= *(v13 + 116))
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 16) + 1, 1, a3);
    a3 = result;
    *v6 = result;
    goto LABEL_7;
  }

  v15 = *(v13 + 104);
  if (!v15)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v16 = *(*(v15 + 8 * v14) + 8);
  if (v10 >= *(v16 + 148))
  {
    goto LABEL_40;
  }

  v17 = *(v16 + 136);
  if (!v17)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  LODWORD(a4) = result;
  v5 = v10;
  v18 = v17 + 80 * v10;
  v19 = *(v18 + 48);
  v6 = (v18 + 48);
  a3 = v19;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v19;
  if ((result & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_7:
  v21 = *(a3 + 16);
  v20 = *(a3 + 24);
  if (v21 >= v20 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, a3);
    a3 = result;
    *v6 = result;
  }

  *(a3 + 16) = v21 + 1;
  *(a3 + 4 * v21 + 32) = v11;
  if (a1[48])
  {
    goto LABEL_59;
  }

  v22 = *a1;
  if (v22 >= *(v13 + 116))
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v23 = *(v13 + 104);
  if (!v23)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v24 = *(*(v23 + 8 * v22) + 8);
  if (v11 >= *(v24 + 124))
  {
    goto LABEL_43;
  }

  v25 = *(v24 + 112);
  if (!v25)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v26 = v25 + 168 * v11;
  *(v26 + 16) = v10;
  *(v26 + 20) = 0;
  if (a1[48])
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v27 = *(v13 + 116);
  v28 = *a1;
  if (v28 >= v27)
  {
    goto LABEL_44;
  }

  v29 = *(*(v23 + 8 * v28) + 8);
  if (v11 >= *(v29 + 124))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v30 = *(v29 + 112);
  if (!v30)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(v30 + 168 * v11 + 114) = 1;
  if (a1[48])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v31 = *a1;
  if (v31 >= v27)
  {
    goto LABEL_46;
  }

  v32 = *(*(v23 + 8 * v31) + 8);
  if (a4 >= *(v32 + 124))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v33 = *(v32 + 112);
  if (!v33)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v34 = v33 + 168 * a4;
  *(v34 + 16) = v10;
  *(v34 + 20) = 0;
  if (a1[48])
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v35 = *(v13 + 116);
  v36 = *a1;
  if (v36 >= v35)
  {
    goto LABEL_48;
  }

  v37 = *(*(v23 + 8 * v36) + 8);
  if (a4 >= *(v37 + 124))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v38 = *(v37 + 112);
  if (!v38)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *(v38 + 168 * a4 + 113) = 1;
  if (a5 > 0x7Fu)
  {
    goto LABEL_50;
  }

  if (a5 > 4u)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (a1[48])
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v39 = *a1;
  if (v39 >= v35)
  {
    goto LABEL_51;
  }

  v40 = *(*(v23 + 8 * v39) + 8);
  if (v10 >= *(v40 + 148))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v41 = *(v40 + 136);
  if (!v41)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  *(v41 + 80 * v5 + 61) = a5;
  if (a1[48])
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v42 = *a1;
  if (v42 >= v35)
  {
    goto LABEL_53;
  }

  v43 = *(*(v23 + 8 * v42) + 8);
  if (v10 >= *(v43 + 148))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v44 = *(v43 + 136);
  if (!v44)
  {
LABEL_71:
    __break(1u);
    return result;
  }

  v45 = v44 + 80 * v5;
  if (*(v45 + 60) == 1)
  {
    *(v45 + 56) = a4;
    *(v45 + 60) = 0;
  }

  return result;
}

unint64_t T_RecordNamedProperty.model(within:)(unsigned __int8 *a1, unint64_t a2)
{
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2 >> 16, a1);
  if (a1[48])
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 22);
  v6 = *a1;
  if (v6 >= *(v5 + 116))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  v9 = *(*(v7 + 8 * v6) + 8);
  if (result >= *(v9 + 84))
  {
    goto LABEL_12;
  }

  v10 = *(v9 + 72);
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(v10 + 312 * result + 180);
  if (v11 >= *(v9 + 124))
  {
    goto LABEL_13;
  }

  v12 = *(v9 + 112);
  if (!v12)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = v12 + 168 * v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v13 + 160);
  *(v13 + 160) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, isUniquelyReferenced_nonNull_native);
  *(v13 + 160) = v15;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance ChargeToParentA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ChargeToParentA.types, one-time initialization function for types) & 1;
  result = specialized static ChargeToParentA.observes(tree:within:)(a1, a2);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance VariadicViewTreeA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static VariadicViewTreeA.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static VariadicViewTreeA.hiddenTypes, one-time initialization function for hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance TextA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static TextA.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static TextA.hiddenTypes, one-time initialization function for hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance AnyViewA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static AnyViewA.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static AnyViewA.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance ConditionalViewA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ConditionalViewA.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static ConditionalViewA.hiddenTypes, one-time initialization function for hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance TupleViewA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static TupleViewA.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static TupleViewA.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance SubgraphManagingViewA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static SubgraphManagingViewA.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static SubgraphManagingViewA.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance NavigationSplitViewA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static NavigationSplitViewA.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static NavigationSplitViewA.hiddenTypes, one-time initialization function for hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance ButtonA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ButtonA.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static ButtonA.hiddenTypes, one-time initialization function for hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance ColorA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ColorA.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static ColorA.hiddenTypes, one-time initialization function for hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance OpacityRendererEffectA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static OpacityRendererEffectA.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static OpacityRendererEffectA.hiddenTypes, one-time initialization function for hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance TabViewA@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static TabViewA.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static TabViewA.hiddenTypes, one-time initialization function for hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static TreeAbstractionImp.buildCache(tree:within:) in conformance ModifierAbstraction@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = _s21SwiftUITracingSupport26TypedSystemViewAbstractionPAAE12hasOwnership3for6withinSbAA7TreeRefV_AA11InterpreterC8IteratorVztFZAA05TupleF1AV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ModifierAbstraction.types, one-time initialization function for types);
  *a3 = result & 1 | 2;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance EnvironmentWriting@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static EnvironmentWriting.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static EnvironmentWriting.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance DisplayList@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static DisplayList.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static DisplayList.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance PlatformItemList@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PlatformItemList.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PlatformItemList.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

ValueMetadata **protocol witness for static EventAbstraction.subtype(source:within:) in conformance PlatformViews@<X0>(ValueMetadata **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*result == &type metadata for Event.AttributeValue || *result == &type metadata for Event.AttributeStack)
  {
    return static PlatformViews.subtype(source:within:)(*(result + 8), a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance PlatformViews@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PlatformViews.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PlatformViews.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.new(from:within:) in conformance PlatformViews(uint64_t result, unsigned __int8 *a2)
{
  v4 = result;
  if (one-time initialization token for types == -1)
  {
    if (!a2[48])
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_once();
  if (a2[48])
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = *(a2 + 22);
  v6 = *a2;
  if (v6 >= *(v5 + 116))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v5 + 104);
  if (!v7)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v8 = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v4, static PlatformViews.types, *(*(v7 + 8 * v6) + 8));
  if (v8)
  {
    specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v2, v4, 0, v8);
    v10 = v9;

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11 | ((v8 == 0) << 32);
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance PreferenceList@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PreferenceList.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for hiddenTypes, &static PreferenceList.hiddenTypes, one-time initialization function for hiddenTypes);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance AccessibilityNodeList@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static AccessibilityNodeList.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static AccessibilityNodeList.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance ViewTransform@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewTransform.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewTransform.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.new(from:within:) in conformance ViewResponder(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v11 = result;
  if (*a5 == -1)
  {
    if (!a2[48])
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = a6;
  result = swift_once();
  a6 = v19;
  if (a2[48])
  {
    goto LABEL_10;
  }

LABEL_3:
  v12 = *(a2 + 22);
  v13 = *a2;
  if (v13 >= *(v12 + 116))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(v12 + 104);
  if (!v14)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v15 = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v11, *a6, *(*(v14 + 8 * v13) + 8));
  if (v15)
  {
    specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v11, 0, v15, a7);
    v17 = v16;

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18 | ((v15 == 0) << 32);
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance Layout@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static Layout.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static Layout.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance PhaseWriting@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PhaseWriting.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static PhaseWriting.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance Transactions@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static Transactions.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static Transactions.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance ViewBodies@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewBodies.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE8observes6update6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5(a1, a2);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t protocol witness for static EventAbstraction.new(from:within:) in conformance ViewBodies(unint64_t result, unsigned __int8 *a2)
{
  if (a2[48])
  {
    goto LABEL_9;
  }

  v3 = *(a2 + 22);
  v4 = *a2;
  if (v4 >= *(v3 + 116))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(result, MEMORY[0x277D84F90], *(*(v5 + 8 * v4) + 8));
  if (v7)
  {
    specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v2, v6, 0, v7, &protocol witness table for ViewBodies);
    v9 = v8;

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 | ((v7 == 0) << 32);
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance ConditionalContent@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ConditionalContent.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ConditionalContent.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance ResolvedContent@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ResolvedContent.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ResolvedContent.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.new(from:within:) in conformance EnvironmentWriting(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v11 = result;
  if (*a5 == -1)
  {
    if (!a2[48])
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = a6;
  result = swift_once();
  a6 = v19;
  if (a2[48])
  {
    goto LABEL_10;
  }

LABEL_3:
  v12 = *(a2 + 22);
  v13 = *a2;
  if (v13 >= *(v12 + 116))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(v12 + 104);
  if (!v14)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v15 = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v11, *a6, *(*(v14 + 8 * v13) + 8));
  if (v15)
  {
    specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v11, 0, v15, a7);
    v17 = v16;

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18 | ((v15 == 0) << 32);
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance ViewCreation@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewCreation.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewCreation.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static TypedEventAbstraction.hiddenTypes.getter in conformance EnvironmentWriting(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

ValueMetadata **protocol witness for static EventAbstraction.subtype(source:within:) in conformance ViewTransform@<X0>(ValueMetadata **result@<X0>, uint64_t a2@<X8>)
{
  if (*result == &type metadata for Event.AttributeValue || *result == &type metadata for Event.AttributeStack)
  {
    *a2 = v2;
    *(a2 + 8) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static EventAbstraction.buildCache(update:within:) in conformance ViewResponder@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewResponder.types, one-time initialization function for types) & 1;
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(a1, a2, &one-time initialization token for types, &static ViewResponder.types, one-time initialization function for types);
  v8 = v6 | 2;
  if ((result & 1) == 0)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for static EventAbstraction.mut(_:observing:within:) in conformance EnvironmentWriting(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  v6 = 256;
  if (!*(a1 + 25))
  {
    v6 = 0;
  }

  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v6 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32));
  if (*(result + 28) == a2)
  {
    return 1;
  }

  v8 = *(a1 + 112);
  v9 = (v8 + 4);
  v10 = *(a1 + 124) + 1;
  do
  {
    if (!--v10)
    {
      goto LABEL_18;
    }

    if (!v8)
    {
      goto LABEL_24;
    }

    v11 = *(v9 - 2);
    v12 = *v9;
    v9 += 2;
    v13 = v11 & 0x4000;
  }

  while (v12 != a2 || v13 != 0);
  if (a3[48])
  {
    goto LABEL_25;
  }

  v15 = *(a3 + 22);
  v16 = *a3;
  if (v16 >= *(v15 + 116))
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = *(v15 + 104);
  if (!v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = *(*(v17 + 8 * v16) + 8);
  if (*(v18 + 44) <= a2)
  {
    goto LABEL_23;
  }

  v19 = *(v18 + 32);
  if (!v19)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  Event.hide(_:within:)((v19 + (a2 << 7)), a3);
LABEL_18:
  v20 = 256;
  if (!*(a1 + 25))
  {
    v20 = 0;
  }

  HIDWORD(specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), v20 | (*(a1 + 28) << 32) | *(a1 + 24), *(a1 + 32))[1].Description) = a2;
  return 1;
}

uint64_t specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, unint64_t a8, char a9, int a10, uint64_t a11, int a12, uint64_t a13)
{
  *&v85 = MEMORY[0x277D84F90];
  *(&v85 + 1) = a3;
  v15 = &v85;
  v63 = HIDWORD(a8);
  LODWORD(v64) = a8;
  *&v86 = a4;
  *(&v86 + 1) = a1;
  v87 = a2;
  v88 = a6;
  v89 = a7;
  v90 = MEMORY[0x277D84F90];
  *&v91 = 0;
  BYTE8(v91) = a5;
  *(&v91 + 9) = 0;
  v92 = 0;
  v93[0] = MEMORY[0x277D84F90];
  v93[1] = a3;
  v93[2] = a4;
  v93[3] = a1;
  v93[4] = a2;
  v93[5] = a6;
  v93[6] = a7;
  v93[7] = MEMORY[0x277D84F90];
  v93[8] = 0;
  v94 = a5;
  v95 = 0;
  v96 = 0;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, a7);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v85, v81, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA5PTypeV5FieldVAA0D4PairVyytSiGGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA5PTypeV5FieldVAA0D4PairVyytSiGGMR);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v93, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA5PTypeV5FieldVAA0D4PairVyytSiGGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA5PTypeV5FieldVAA0D4PairVyytSiGGMR);
  v16 = v85;
  v17 = v88;
  v18 = v89;
  *&v77 = v87;
  *(&v78 + 1) = v90;
  v79 = v91;
  v80 = v92;
  v75 = v85;
  v76 = v86;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, a7);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v17, v18);
  *(&v77 + 1) = a6;
  *&v78 = a7;
  LOBYTE(v81[0]) = a9 & 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_52:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
  }

  v20 = *(v16 + 16);
  v19 = *(v16 + 24);
  if (v20 >= v19 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v16);
  }

  v21 = BYTE10(v91);
  v22 = v90;
  *(v16 + 16) = v20 + 1;
  v23 = v16 + 48 * v20;
  *(v23 + 32) = v64;
  *(v23 + 36) = v63;
  *(v23 + 40) = a9 & 1;
  v24 = v97;
  *(v23 + 41) = *(v15 + 181);
  *(v23 + 43) = v24;
  *(v23 + 44) = a10;
  *(v23 + 48) = a11;
  *(v23 + 56) = a12;
  *(v23 + 64) = a13;
  *(v23 + 72) = 0;
  *&v75 = v16;
  for (i = 1; ; i = *(v75 + 16))
  {
    if (!i)
    {
      v26 = *(v22 + 2);
      if (!v26)
      {
        break;
      }

      goto LABEL_32;
    }

    v26 = *(v22 + 2);
    if (v26)
    {
      v27 = *&v22[56 * v26 + 16];
      LOBYTE(v65) = 0;
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v28 = *(v16 + 16);
      if (!v28)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      v28 = *(v16 + 16);
      if (!v28)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
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
        goto LABEL_52;
      }
    }

    v29 = v16 + 48 * v28;
    v30 = *(v29 - 16);
    v31 = *(v29 - 12);
    v32 = *(v29 - 8);
    v33 = *(v29 - 4);
    v34 = *v29;
    v35 = *(v29 + 8);
    v36 = *(v29 + 16);
    v15 = *(v29 + 24);
    *(v16 + 16) = v28 - 1;
    *&v65 = __PAIR64__(v31, v30);
    BYTE8(v65) = v32 & 1;
    HIDWORD(v65) = v33;
    *&v66 = v34;
    DWORD2(v66) = v35;
    v74 = v36;
    *&v75 = v16;
    BYTE9(v79) = 1;
    v80 = BYTE8(v79);
    *&v79 = v15;
    v37 = *(&v75 + 1);
    v16 = v76;

    v37(&v65, &v74, &v75);

    if (BYTE10(v79) == 1)
    {
      break;
    }

    BYTE9(v79) = 0;
    v38 = v80;
    if (v80)
    {
      if (BYTE8(v79) == 1)
      {
        v38 = v80 - 1;
        if (__OFSUB__(v80, 1))
        {
          goto LABEL_49;
        }

        --v80;
      }

      LODWORD(v63) = v32 & 1;
      v71 = v32 & 1;
      v64 = v74;
      v22 = *(&v78 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v40 = *(v22 + 2);
      v39 = *(v22 + 3);
      if (v40 >= v39 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v22);
      }

      *(v22 + 2) = v40 + 1;
      v41 = &v22[56 * v40];
      *(v41 + 8) = v30;
      *(v41 + 9) = v31;
      v41[40] = v63;
      v42 = v73;
      *(v41 + 41) = v72;
      v41[43] = v42;
      *(v41 + 11) = v33;
      *(v41 + 6) = v34;
      *(v41 + 14) = v35;
      *(v41 + 8) = v64;
      *(v41 + 9) = v38;
      *(v41 + 10) = v15;
    }

    else
    {
      v22 = *(&v78 + 1);
      v16 = *(*(&v78 + 1) + 16);
      if (!v16)
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      }

      if (v16 > *(v22 + 2))
      {
        goto LABEL_50;
      }

      v43 = &v22[56 * v16];
      v45 = *(v43 + 2);
      v44 = v43 + 16;
      v46 = v45 - 1;
      if (__OFSUB__(v45, 1))
      {
        goto LABEL_51;
      }

      *v44 = v46;
    }

    *(&v78 + 1) = v22;
LABEL_31:
    v21 = 0;
    v26 = *(v22 + 2);
    if (!v26)
    {
      goto LABEL_6;
    }

LABEL_32:
    v47 = &v22[56 * v26];
    v48 = *(v47 + 2);
    LOBYTE(v65) = 0;
    if (v48)
    {
      goto LABEL_6;
    }

    v49 = v47 - 24;
    v50 = *(v47 - 3);
    v51 = *(v47 - 16);
    v52 = *(v47 - 3);
    v53 = *(v49 + 2);
    v54 = *(v49 + 6);
    v55 = *(v49 + 4);
    v56 = *(v49 + 6);
    LOBYTE(v72) = 0;
    *&v65 = v50;
    BYTE8(v65) = v51 & 1;
    HIDWORD(v65) = v52;
    *&v66 = v53;
    DWORD2(v66) = v54;
    v74 = v55;
    *&v79 = v56;
    v16 = v77;
    v81[2] = v77;
    v82 = v78;
    v84 = v80;
    v81[0] = v75;
    v81[1] = v76;
    v83 = v79;
    (*(&v76 + 1))(&v65, &v74, v81);
    if (v21)
    {
      break;
    }

    v22 = *(&v82 + 1);
    if (!*(*(&v82 + 1) + 16))
    {
      goto LABEL_46;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v57 = *(v22 + 2);
      if (!v57)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      v57 = *(v22 + 2);
      if (!v57)
      {
        goto LABEL_47;
      }
    }

    *(&v78 + 1) = v22;
    *(v22 + 2) = v57 - 1;
    if (v57 != 1)
    {
      v58 = &v22[56 * v57];
      v60 = *(v58 - 5);
      v59 = v58 - 40;
      v61 = v60 - 1;
      if (__OFSUB__(v60, 1))
      {
        goto LABEL_48;
      }

      *v59 = v61;
    }

    v21 = 0;
LABEL_6:
    v16 = v75;
  }

  v67 = v77;
  v68 = v78;
  v69 = v79;
  v70 = v80;
  v65 = v75;
  v66 = v76;
  return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v65, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA5PTypeV5FieldVAA0D4PairVyytSiGGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA5PTypeV5FieldVAA0D4PairVyytSiGGMR);
}

uint64_t specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, char a11)
{
  *&v68 = MEMORY[0x277D84F90];
  *(&v68 + 1) = a3;
  *&v69 = a4;
  *(&v69 + 1) = a1;
  v70 = a2;
  v71 = a6;
  v72 = a7;
  v73 = MEMORY[0x277D84F90];
  *&v74 = 0;
  BYTE8(v74) = a5;
  *(&v74 + 9) = 0;
  v75 = 0;
  v76[0] = MEMORY[0x277D84F90];
  v76[1] = a3;
  v76[2] = a4;
  v76[3] = a1;
  v76[4] = a2;
  v76[5] = a6;
  v76[6] = a7;
  v76[7] = MEMORY[0x277D84F90];
  v76[8] = 0;
  v77 = a5;
  v78 = 0;
  v79 = 0;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, a7);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v68, v64, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAFGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAFGMR);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v76, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAFGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAFGMR);
  v14 = v68;
  v15 = v71;
  v16 = v72;
  *&v60 = v70;
  *(&v61 + 1) = v73;
  v62 = v74;
  v63 = v75;
  v58 = v68;
  v59 = v69;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, a7);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v15, v16);
  *(&v60 + 1) = a6;
  *&v61 = a7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
  }

  v18 = *(v14 + 16);
  v17 = *(v14 + 24);
  if (v18 >= v17 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v14);
  }

  v19 = BYTE10(v74);
  v20 = v73;
  *(v14 + 16) = v18 + 1;
  v21 = v14 + 40 * v18;
  *(v21 + 32) = a8;
  *(v21 + 40) = a9 & 1;
  *(v21 + 48) = a10;
  *(v21 + 56) = a11 & 1;
  *(v21 + 64) = 0;
  *&v58 = v14;
  for (i = 1; ; i = *(v58 + 16))
  {
    if (!i)
    {
      v23 = *(v20 + 2);
      if (!v23)
      {
        break;
      }

      goto LABEL_32;
    }

    v23 = *(v20 + 2);
    if (v23 && !*&v20[48 * v23 + 16])
    {
      goto LABEL_32;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v24 = *(v14 + 16);
      if (!v24)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
      v24 = *(v14 + 16);
      if (!v24)
      {
LABEL_46:
        __break(1u);
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
        goto LABEL_53;
      }
    }

    v25 = v14 + 40 * v24;
    v26 = *(v25 - 8);
    v27 = *v25;
    v28 = *(v25 + 8);
    v29 = *(v25 + 16);
    v30 = *(v25 + 24);
    *(v14 + 16) = v24 - 1;
    *&v54[0] = v26;
    BYTE8(v54[0]) = v27;
    v56 = v28;
    v57 = v29;
    BYTE9(v62) = 1;
    v63 = BYTE8(v62);
    *&v58 = v14;
    *&v62 = v30;
    v31 = *(&v58 + 1);
    v14 = v59;

    v31(v54, &v56, &v58);

    if (BYTE10(v62) == 1)
    {
      break;
    }

    BYTE9(v62) = 0;
    v32 = v63;
    if (v63)
    {
      if (BYTE8(v62) == 1)
      {
        v32 = v63 - 1;
        if (__OFSUB__(v63, 1))
        {
          goto LABEL_50;
        }

        --v63;
      }

      v33 = v56;
      a8 = v57;
      v20 = *(&v61 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v35 = *(v20 + 2);
      v34 = *(v20 + 3);
      if (v35 >= v34 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v20);
      }

      *(v20 + 2) = v35 + 1;
      v36 = &v20[48 * v35];
      *(v36 + 4) = v26;
      v36[40] = v27;
      *(v36 + 6) = v33;
      v36[56] = a8;
      *(v36 + 8) = v32;
      *(v36 + 9) = v30;
    }

    else
    {
      v20 = *(&v61 + 1);
      v14 = *(*(&v61 + 1) + 16);
      if (!v14)
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      }

      if (v14 > *(v20 + 2))
      {
        goto LABEL_51;
      }

      v37 = &v20[48 * v14];
      v39 = *(v37 + 2);
      v38 = v37 + 16;
      v40 = v39 - 1;
      if (__OFSUB__(v39, 1))
      {
        goto LABEL_52;
      }

      *v38 = v40;
    }

    *(&v61 + 1) = v20;
LABEL_31:
    v19 = 0;
    v23 = *(v20 + 2);
    if (!v23)
    {
      goto LABEL_6;
    }

LABEL_32:
    v41 = &v20[48 * v23];
    if (*(v41 + 2))
    {
      goto LABEL_6;
    }

    v43 = *(v41 - 2);
    v42 = v41 - 16;
    v44 = v42[8];
    v45 = *(v42 + 2);
    v46 = v42[24];
    v47 = *(v42 + 5);
    *&v54[0] = v43;
    BYTE8(v54[0]) = v44;
    v56 = v45;
    v57 = v46;
    *&v62 = v47;
    v14 = v60;
    v64[2] = v60;
    v65 = v61;
    v67 = v63;
    v64[0] = v58;
    v64[1] = v59;
    v66 = v62;
    (*(&v59 + 1))(v54, &v56, v64);
    if (v19)
    {
      break;
    }

    v20 = *(&v65 + 1);
    if (!*(*(&v65 + 1) + 16))
    {
      goto LABEL_47;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v48 = *(v20 + 2);
      if (!v48)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v48 = *(v20 + 2);
      if (!v48)
      {
        goto LABEL_48;
      }
    }

    *(&v61 + 1) = v20;
    *(v20 + 2) = v48 - 1;
    if (v48 != 1)
    {
      v49 = &v20[48 * v48];
      v51 = *(v49 - 4);
      v50 = v49 - 32;
      v52 = v51 - 1;
      if (__OFSUB__(v51, 1))
      {
        goto LABEL_49;
      }

      *v50 = v52;
    }

    v19 = 0;
LABEL_6:
    v14 = v58;
  }

  v54[2] = v60;
  v54[3] = v61;
  v54[4] = v62;
  v55 = v63;
  v54[0] = v58;
  v54[1] = v59;
  return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v54, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAFGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAFGMR);
}

uint64_t specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *&v83 = MEMORY[0x277D84F90];
  *(&v83 + 1) = a3;
  *&v84 = a4;
  *(&v84 + 1) = a1;
  v85 = a2;
  v86 = a6;
  v87 = a7;
  v88 = MEMORY[0x277D84F90];
  *&v89 = 0;
  BYTE8(v89) = a5;
  *(&v89 + 9) = 0;
  v90 = 0;
  v91[0] = MEMORY[0x277D84F90];
  v91[1] = a3;
  v91[2] = a4;
  v91[3] = a1;
  v91[4] = a2;
  v91[5] = a6;
  v91[6] = a7;
  v91[7] = MEMORY[0x277D84F90];
  v91[8] = 0;
  v92 = a5;
  v93 = 0;
  v94 = 0;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, a7);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v83, v79, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAA11InterpreterC7StorageV012abstractViewE06withinyAH8IteratorVz_tF0M4DataL_VGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAA11InterpreterC7StorageV012abstractViewE06withinyAH8IteratorVz_tF0M4DataL_VGMR);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v91, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAA11InterpreterC7StorageV012abstractViewE06withinyAH8IteratorVz_tF0M4DataL_VGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAA11InterpreterC7StorageV012abstractViewE06withinyAH8IteratorVz_tF0M4DataL_VGMR);
  v15 = v83;
  v16 = v86;
  v17 = v87;
  *&v75 = v85;
  *(&v76 + 1) = v88;
  v77 = v89;
  v78 = v90;
  v73 = v83;
  v74 = v84;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, a7);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, v17);
  *(&v75 + 1) = a6;
  *&v76 = a7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
  }

  v19 = *(v15 + 16);
  v18 = *(v15 + 24);
  if (v19 >= v18 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v15);
  }

  v20 = BYTE10(v89);
  v21 = v88;
  *(v15 + 16) = v19 + 1;
  v22 = v15 + 56 * v19;
  *(v22 + 32) = a8;
  *(v22 + 40) = a9 & 1;
  *(v22 + 48) = a10;
  *(v22 + 56) = a11;
  *(v22 + 64) = a12;
  *(v22 + 72) = a13 & 1;
  *(v22 + 80) = 0;
  *&v73 = v15;
  for (i = 1; ; i = *(v73 + 16))
  {
    if (!i)
    {
      v24 = *(v21 + 2);
      if (!v24)
      {
        break;
      }

      goto LABEL_32;
    }

    v24 = *(v21 + 2);
    if (v24 && !*&v21[64 * v24 + 16])
    {
      goto LABEL_32;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = *(v15 + 16);
      if (!v25)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v25 = *(v15 + 16);
      if (!v25)
      {
LABEL_46:
        __break(1u);
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
        goto LABEL_53;
      }
    }

    v26 = v15 + 56 * v25;
    v27 = *(v26 - 24);
    v28 = *(v26 - 16);
    v29 = *(v26 + 8);
    v30 = *(v26 + 16);
    v31 = *(v26 + 24);
    v32 = *(v26 - 8);
    *(v15 + 16) = v25 - 1;
    v71 = v27;
    v72 = v28;
    v61 = v32;
    *&v62 = v29;
    BYTE8(v62) = v30;
    BYTE9(v77) = 1;
    v78 = BYTE8(v77);
    *&v73 = v15;
    *&v77 = v31;
    v33 = *(&v73 + 1);
    v15 = v74;

    v33(&v71, &v61, &v73);

    if (BYTE10(v77) == 1)
    {
      break;
    }

    BYTE9(v77) = 0;
    v34 = v78;
    if (v78)
    {
      if (BYTE8(v77) == 1)
      {
        v34 = v78 - 1;
        if (__OFSUB__(v78, 1))
        {
          goto LABEL_50;
        }

        --v78;
      }

      v35 = v61;
      a8 = v62;
      v36 = BYTE8(v62);
      v21 = *(&v76 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      }

      v38 = *(v21 + 2);
      v37 = *(v21 + 3);
      if (v38 >= v37 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v21);
      }

      v70 = v28;
      v68 = v36;
      *(v21 + 2) = v38 + 1;
      v39 = &v21[64 * v38];
      *(v39 + 4) = v27;
      v39[40] = v70;
      v40 = *v69;
      *(v39 + 11) = *&v69[3];
      *(v39 + 41) = v40;
      *(v39 + 3) = v35;
      *(v39 + 8) = a8;
      v39[72] = v68;
      v41 = *v67;
      *(v39 + 19) = *&v67[3];
      *(v39 + 73) = v41;
      *(v39 + 10) = v34;
      *(v39 + 11) = v31;
    }

    else
    {
      v21 = *(&v76 + 1);
      v15 = *(*(&v76 + 1) + 16);
      if (!v15)
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      }

      if (v15 > *(v21 + 2))
      {
        goto LABEL_51;
      }

      v42 = &v21[64 * v15];
      v44 = *(v42 + 2);
      v43 = v42 + 16;
      v45 = v44 - 1;
      if (__OFSUB__(v44, 1))
      {
        goto LABEL_52;
      }

      *v43 = v45;
    }

    *(&v76 + 1) = v21;
LABEL_31:
    v20 = 0;
    v24 = *(v21 + 2);
    if (!v24)
    {
      goto LABEL_6;
    }

LABEL_32:
    v46 = &v21[64 * v24];
    if (*(v46 + 2))
    {
      goto LABEL_6;
    }

    v48 = *(v46 - 4);
    v47 = v46 - 32;
    v49 = v47[8];
    v50 = *(v47 + 4);
    v51 = v47[40];
    v52 = *(v47 + 7);
    v53 = *(v47 + 1);
    v71 = v48;
    v72 = v49 & 1;
    v61 = v53;
    *&v62 = v50;
    BYTE8(v62) = v51 & 1;
    *&v77 = v52;
    v15 = v75;
    v79[2] = v75;
    v80 = v76;
    v82 = v78;
    v79[0] = v73;
    v79[1] = v74;
    v81 = v77;
    (*(&v74 + 1))(&v71, &v61, v79);
    if (v20)
    {
      break;
    }

    v21 = *(&v80 + 1);
    if (!*(*(&v80 + 1) + 16))
    {
      goto LABEL_47;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v54 = *(v21 + 2);
      if (!v54)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      v54 = *(v21 + 2);
      if (!v54)
      {
        goto LABEL_48;
      }
    }

    *(&v76 + 1) = v21;
    *(v21 + 2) = v54 - 1;
    if (v54 != 1)
    {
      v55 = &v21[64 * v54];
      v57 = *(v55 - 6);
      v56 = v55 - 48;
      v58 = v57 - 1;
      if (__OFSUB__(v57, 1))
      {
        goto LABEL_49;
      }

      *v56 = v58;
    }

    v20 = 0;
LABEL_6:
    v15 = v73;
  }

  v63 = v75;
  v64 = v76;
  v65 = v77;
  v66 = v78;
  v61 = v73;
  v62 = v74;
  return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v61, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAA11InterpreterC7StorageV012abstractViewE06withinyAH8IteratorVz_tF0M4DataL_VGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA0E3RefVSgAA11InterpreterC7StorageV012abstractViewE06withinyAH8IteratorVz_tF0M4DataL_VGMR);
}

uint64_t specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v8) = a8;
  *&v55 = MEMORY[0x277D84F90];
  *(&v55 + 1) = a3;
  *&v56 = a4;
  *(&v56 + 1) = a1;
  v57 = a2;
  v58 = a6;
  v59 = a7;
  v60 = MEMORY[0x277D84F90];
  *&v61 = 0;
  BYTE8(v61) = a5;
  *(&v61 + 9) = 0;
  v62 = 0;
  v63[0] = MEMORY[0x277D84F90];
  v63[1] = a3;
  v63[2] = a4;
  v63[3] = a1;
  v63[4] = a2;
  v63[5] = a6;
  v63[6] = a7;
  v63[7] = MEMORY[0x277D84F90];
  v63[8] = 0;
  v64 = a5;
  v65 = 0;
  v66 = 0;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, a7);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v55, v51, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA06UnsafeE7NodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGytGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA06UnsafeE7NodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGytGMR);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v63, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA06UnsafeE7NodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGytGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA06UnsafeE7NodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGytGMR);
  v11 = v55;
  v12 = v58;
  v13 = v59;
  *&v47 = v57;
  *(&v48 + 1) = v60;
  v49 = v61;
  v50 = v62;
  v45 = v55;
  v46 = v56;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, a7);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v12, v13);
  *(&v47 + 1) = a6;
  *&v48 = a7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v15 = *(v11 + 2);
  v14 = *(v11 + 3);
  if (v15 >= v14 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v11);
  }

  v16 = BYTE10(v61);
  v17 = v60;
  *(v11 + 2) = v15 + 1;
  v18 = &v11[16 * v15];
  *(v18 + 8) = v8;
  *(v18 + 5) = 0;
  *&v45 = v11;
  for (i = 1; ; i = *(v45 + 16))
  {
    if (!i)
    {
      v20 = *(v17 + 2);
      if (!v20)
      {
        break;
      }

      goto LABEL_32;
    }

    v20 = *(v17 + 2);
    if (v20 && !*&v17[24 * v20 + 16])
    {
      goto LABEL_32;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = *(v11 + 2);
      if (!v21)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
      v21 = *(v11 + 2);
      if (!v21)
      {
LABEL_46:
        __break(1u);
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
        goto LABEL_53;
      }
    }

    v22 = v21 - 1;
    v23 = &v11[16 * v22];
    v24 = *(v23 + 8);
    v25 = *(v23 + 5);
    *(v11 + 2) = v22;
    LODWORD(v43[0]) = v24;
    BYTE9(v49) = 1;
    v50 = BYTE8(v49);
    *&v45 = v11;
    *&v49 = v25;
    v26 = *(&v45 + 1);
    LODWORD(v8) = v46;

    v26(v43);

    if (BYTE10(v49) == 1)
    {
      break;
    }

    BYTE9(v49) = 0;
    v11 = v50;
    if (v50)
    {
      if (BYTE8(v49) == 1)
      {
        v11 = v50 - 1;
        if (__OFSUB__(v50, 1))
        {
          goto LABEL_50;
        }

        --v50;
      }

      v27 = v43[0];
      v17 = *(&v48 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v29 = *(v17 + 2);
      v28 = *(v17 + 3);
      v8 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v17);
      }

      *(v17 + 2) = v8;
      v30 = &v17[24 * v29];
      *(v30 + 8) = v27;
      *(v30 + 5) = v11;
      *(v30 + 6) = v25;
    }

    else
    {
      v17 = *(&v48 + 1);
      v8 = *(*(&v48 + 1) + 16);
      if (!v8)
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      }

      if (v8 > *(v17 + 2))
      {
        goto LABEL_51;
      }

      v31 = &v17[24 * v8];
      v33 = *(v31 + 2);
      v32 = v31 + 16;
      v34 = v33 - 1;
      if (__OFSUB__(v33, 1))
      {
        goto LABEL_52;
      }

      *v32 = v34;
    }

    *(&v48 + 1) = v17;
LABEL_31:
    v16 = 0;
    v20 = *(v17 + 2);
    if (!v20)
    {
      goto LABEL_6;
    }

LABEL_32:
    v35 = &v17[24 * v20];
    if (*(v35 + 2))
    {
      goto LABEL_6;
    }

    v36 = *(v35 + 3);
    LODWORD(v43[0]) = *(v35 + 2);
    *&v49 = v36;
    LODWORD(v8) = v47;
    v51[2] = v47;
    v52 = v48;
    v54 = v50;
    v51[0] = v45;
    v51[1] = v46;
    v53 = v49;
    (*(&v46 + 1))(v43);
    if (v16)
    {
      break;
    }

    v17 = *(&v52 + 1);
    if (!*(*(&v52 + 1) + 16))
    {
      goto LABEL_47;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v37 = *(v17 + 2);
      if (!v37)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      v37 = *(v17 + 2);
      if (!v37)
      {
        goto LABEL_48;
      }
    }

    *(&v48 + 1) = v17;
    *(v17 + 2) = v37 - 1;
    if (v37 != 1)
    {
      v38 = &v17[24 * v37];
      v40 = *(v38 - 1);
      v39 = v38 - 8;
      v41 = v40 - 1;
      if (__OFSUB__(v40, 1))
      {
        goto LABEL_49;
      }

      *v39 = v41;
    }

    v16 = 0;
LABEL_6:
    v11 = v45;
  }

  v43[2] = v47;
  v43[3] = v48;
  v43[4] = v49;
  v44 = v50;
  v43[0] = v45;
  v43[1] = v46;
  return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v43, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA06UnsafeE7NodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGytGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA06UnsafeE7NodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGytGMR);
}

{
  LODWORD(v8) = a8;
  *&v55 = MEMORY[0x277D84F90];
  *(&v55 + 1) = a3;
  *&v56 = a4;
  *(&v56 + 1) = a1;
  v57 = a2;
  v58 = a6;
  v59 = a7;
  v60 = MEMORY[0x277D84F90];
  *&v61 = 0;
  BYTE8(v61) = a5;
  *(&v61 + 9) = 0;
  v62 = 0;
  v63[0] = MEMORY[0x277D84F90];
  v63[1] = a3;
  v63[2] = a4;
  v63[3] = a1;
  v63[4] = a2;
  v63[5] = a6;
  v63[6] = a7;
  v63[7] = MEMORY[0x277D84F90];
  v63[8] = 0;
  v64 = a5;
  v65 = 0;
  v66 = 0;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, a7);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v55, v51, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA8EventRefVytGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA8EventRefVytGMR);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v63, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA8EventRefVytGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA8EventRefVytGMR);
  v11 = v55;
  v12 = v58;
  v13 = v59;
  *&v47 = v57;
  *(&v48 + 1) = v60;
  v49 = v61;
  v50 = v62;
  v45 = v55;
  v46 = v56;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, a7);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v12, v13);
  *(&v47 + 1) = a6;
  *&v48 = a7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v15 = *(v11 + 2);
  v14 = *(v11 + 3);
  if (v15 >= v14 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v11);
  }

  v16 = BYTE10(v61);
  v17 = v60;
  *(v11 + 2) = v15 + 1;
  v18 = &v11[16 * v15];
  *(v18 + 8) = v8;
  *(v18 + 5) = 0;
  *&v45 = v11;
  for (i = 1; ; i = *(v45 + 16))
  {
    if (!i)
    {
      v20 = *(v17 + 2);
      if (!v20)
      {
        break;
      }

      goto LABEL_32;
    }

    v20 = *(v17 + 2);
    if (v20 && !*&v17[24 * v20 + 16])
    {
      goto LABEL_32;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = *(v11 + 2);
      if (!v21)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
      v21 = *(v11 + 2);
      if (!v21)
      {
LABEL_46:
        __break(1u);
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
        goto LABEL_53;
      }
    }

    v22 = v21 - 1;
    v23 = &v11[16 * v22];
    v24 = *(v23 + 8);
    v25 = *(v23 + 5);
    *(v11 + 2) = v22;
    LODWORD(v43[0]) = v24;
    BYTE9(v49) = 1;
    v50 = BYTE8(v49);
    *&v45 = v11;
    *&v49 = v25;
    v26 = *(&v45 + 1);
    LODWORD(v8) = v46;

    v26(v43);

    if (BYTE10(v49) == 1)
    {
      break;
    }

    BYTE9(v49) = 0;
    v11 = v50;
    if (v50)
    {
      if (BYTE8(v49) == 1)
      {
        v11 = v50 - 1;
        if (__OFSUB__(v50, 1))
        {
          goto LABEL_50;
        }

        --v50;
      }

      v17 = *(&v48 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v28 = *(v17 + 2);
      v27 = *(v17 + 3);
      v8 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v17);
      }

      *(v17 + 2) = v8;
      v29 = &v17[24 * v28];
      *(v29 + 8) = v24;
      *(v29 + 5) = v11;
      *(v29 + 6) = v25;
    }

    else
    {
      v17 = *(&v48 + 1);
      v8 = *(*(&v48 + 1) + 16);
      if (!v8)
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      }

      if (v8 > *(v17 + 2))
      {
        goto LABEL_51;
      }

      v30 = &v17[24 * v8];
      v32 = *(v30 + 2);
      v31 = v30 + 16;
      v33 = v32 - 1;
      if (__OFSUB__(v32, 1))
      {
        goto LABEL_52;
      }

      *v31 = v33;
    }

    *(&v48 + 1) = v17;
LABEL_31:
    v16 = 0;
    v20 = *(v17 + 2);
    if (!v20)
    {
      goto LABEL_6;
    }

LABEL_32:
    v34 = &v17[24 * v20];
    if (*(v34 + 2))
    {
      goto LABEL_6;
    }

    v35 = *(v34 + 2);
    v36 = *(v34 + 3);
    LODWORD(v43[0]) = v35;
    *&v49 = v36;
    LODWORD(v8) = v47;
    v51[2] = v47;
    v52 = v48;
    v54 = v50;
    v51[0] = v45;
    v51[1] = v46;
    v53 = v49;
    (*(&v46 + 1))(v43);
    if (v16)
    {
      break;
    }

    v17 = *(&v52 + 1);
    if (!*(*(&v52 + 1) + 16))
    {
      goto LABEL_47;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v37 = *(v17 + 2);
      if (!v37)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      v37 = *(v17 + 2);
      if (!v37)
      {
        goto LABEL_48;
      }
    }

    *(&v48 + 1) = v17;
    *(v17 + 2) = v37 - 1;
    if (v37 != 1)
    {
      v38 = &v17[24 * v37];
      v40 = *(v38 - 1);
      v39 = v38 - 8;
      v41 = v40 - 1;
      if (__OFSUB__(v40, 1))
      {
        goto LABEL_49;
      }

      *v39 = v41;
    }

    v16 = 0;
LABEL_6:
    v11 = v45;
  }

  v43[2] = v47;
  v43[3] = v48;
  v43[4] = v49;
  v44 = v50;
  v43[0] = v45;
  v43[1] = v46;
  return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v43, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA8EventRefVytGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVyAA8EventRefVytGMR);
}

uint64_t specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, id a8, void *a9, uint64_t a10, char a11)
{
  v14 = a9;
  *&v74 = MEMORY[0x277D84F90];
  *(&v74 + 1) = a3;
  *&v75 = a4;
  *(&v75 + 1) = a1;
  v76 = a2;
  v77 = a6;
  v78 = a7;
  v79 = MEMORY[0x277D84F90];
  *&v80 = 0;
  BYTE8(v80) = a5;
  *(&v80 + 9) = 0;
  v81 = 0;
  v82[0] = MEMORY[0x277D84F90];
  v82[1] = a3;
  v82[2] = a4;
  v82[3] = a1;
  v82[4] = a2;
  v82[5] = a6;
  v82[6] = a7;
  v82[7] = MEMORY[0x277D84F90];
  v82[8] = 0;
  v83 = a5;
  v84 = 0;
  v85 = 0;

  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, a7);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v74, v70, &_s21SwiftUITracingSupport22IterativeTreeTraversalVySo13AGTreeElementaAA05writeE5State8subgraph6handleySo13AGSubgraphRefa_AA5TraceV0A2UIVztF7ContextL_VGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVySo13AGTreeElementaAA05writeE5State8subgraph6handleySo13AGSubgraphRefa_AA5TraceV0A2UIVztF7ContextL_VGMR);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v82, &_s21SwiftUITracingSupport22IterativeTreeTraversalVySo13AGTreeElementaAA05writeE5State8subgraph6handleySo13AGSubgraphRefa_AA5TraceV0A2UIVztF7ContextL_VGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVySo13AGTreeElementaAA05writeE5State8subgraph6handleySo13AGSubgraphRefa_AA5TraceV0A2UIVztF7ContextL_VGMR);
  v15 = v74;
  v16 = v77;
  v17 = v78;
  *&v66 = v76;
  *(&v67 + 1) = v79;
  v68 = v80;
  v69 = v81;
  v64 = v74;
  v65 = v75;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, a7);
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, v17);
  *(&v66 + 1) = a6;
  *&v67 = a7;
  v18 = a9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_62:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
  }

  v20 = *(v15 + 16);
  v19 = *(v15 + 24);
  if (v20 >= v19 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
  }

  v21 = BYTE10(v80);
  v22 = v79;
  *(v15 + 16) = v20 + 1;
  v23 = (v15 + 40 * v20);
  v23[4] = a8;
  v23[5] = v14;
  v23[6] = a10;
  *(v23 + 56) = a11 & 1;
  v23[8] = 0;
  *&v64 = v15;
  for (i = 1; ; i = *(v64 + 16))
  {
    if (!i)
    {
      if (!v22[2])
      {
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    v25 = v22[2];
    if (v25)
    {
      if (!v22[6 * v25 + 2])
      {
        goto LABEL_32;
      }

      if (!*(v15 + 16))
      {
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
        goto LABEL_62;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = *(v15 + 16);
      if (!v26)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v26 = *(v15 + 16);
      if (!v26)
      {
        goto LABEL_53;
      }
    }

    v27 = (v15 + 40 * v26);
    v28 = *(v27 - 1);
    v29 = *(v27 + 16);
    v14 = v27[3];
    v30 = *v27;
    *(v15 + 16) = v26 - 1;
    v63 = v28;
    *&v64 = v15;
    v57 = v30;
    LOBYTE(v58) = v29;
    BYTE9(v68) = 1;
    v69 = BYTE8(v68);
    *&v68 = v14;
    v31 = *(&v64 + 1);
    v15 = v65;

    v31(&v63, &v57, &v64);

    if (BYTE10(v68) == 1)
    {

      goto LABEL_51;
    }

    BYTE9(v68) = 0;
    v32 = v69;
    if (v69)
    {
      if (BYTE8(v68))
      {
        v32 = v69 - 1;
        if (__OFSUB__(v69, 1))
        {
          goto LABEL_57;
        }

        --v69;
      }

      v33 = v57;
      v34 = v58;
      v22 = *(&v67 + 1);
      v15 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
      }

      v36 = v22[2];
      v35 = v22[3];
      a8 = (v36 + 1);
      if (v36 >= v35 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v22);
      }

      v22[2] = a8;
      v37 = &v22[6 * v36];
      v37[4] = v28;
      *(v37 + 5) = v33;
      *(v37 + 56) = v34;
      v37[8] = v32;
      v37[9] = v14;
      goto LABEL_31;
    }

    v22 = *(&v67 + 1);
    v15 = *(*(&v67 + 1) + 16);
    if (v15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      }

      if (v15 > v22[2])
      {
        goto LABEL_60;
      }

      v38 = &v22[6 * v15];
      v40 = v38[2];
      v39 = v38 + 2;
      v41 = v40 - 1;
      if (__OFSUB__(v40, 1))
      {
        goto LABEL_61;
      }

      *v39 = v41;
LABEL_31:
      *(&v67 + 1) = v22;
      v21 = 0;
LABEL_32:
      v42 = v22[2];
      if (!v42)
      {
        goto LABEL_6;
      }

      goto LABEL_33;
    }

    v21 = 0;
    v42 = v22[2];
    if (!v42)
    {
      goto LABEL_6;
    }

LABEL_33:
    if (v22[6 * v42 + 2])
    {
      goto LABEL_6;
    }

    v43 = v22[2];
    if (!v43)
    {
      goto LABEL_54;
    }

    v44 = &v22[6 * v43 + 4];
    v45 = *(v44 - 24);
    v46 = *(v44 - 8);
    v47 = *(v44 - 40);
    v63 = *(v44 - 48);
    v57 = v47;
    LOBYTE(v58) = v45;
    *&v68 = v46;
    v48 = *(&v65 + 1);
    v15 = v66;
    v70[2] = v66;
    v71 = v67;
    v73 = v69;
    v70[0] = v64;
    v70[1] = v65;
    v72 = v68;
    a8 = v47;
    v48(&v63, &v57, v70);
    if (v21)
    {
      break;
    }

    v22 = *(&v71 + 1);
    if (!*(*(&v71 + 1) + 16))
    {
      goto LABEL_55;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v49 = v22[2];
      if (!v49)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      v49 = v22[2];
      if (!v49)
      {
        goto LABEL_56;
      }
    }

    v15 = (v22 + 4);
    v50 = v22[6 * v49 - 1];
    v22[2] = v49 - 1;
    *(&v67 + 1) = v22;

    v51 = v22[2];
    if (v51)
    {
      if (v51 > v22[2])
      {
        goto LABEL_58;
      }

      v52 = (v15 + 48 * v51);
      v53 = *(v52 - 2);
      v54 = __OFSUB__(v53, 1);
      v55 = v53 - 1;
      if (v54)
      {
        goto LABEL_59;
      }

      *(v52 - 2) = v55;
      *(&v67 + 1) = v22;
    }

    v21 = 0;
LABEL_6:
    v15 = v64;
  }

LABEL_51:
  v59 = v66;
  v60 = v67;
  v61 = v68;
  v62 = v69;
  v57 = v64;
  v58 = v65;
  return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v57, &_s21SwiftUITracingSupport22IterativeTreeTraversalVySo13AGTreeElementaAA05writeE5State8subgraph6handleySo13AGSubgraphRefa_AA5TraceV0A2UIVztF7ContextL_VGMd, &_s21SwiftUITracingSupport22IterativeTreeTraversalVySo13AGTreeElementaAA05writeE5State8subgraph6handleySo13AGSubgraphRefa_AA5TraceV0A2UIVztF7ContextL_VGMR);
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Invalidation)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV17DynamicPropertiesV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.DynamicProperties)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Update)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV13UninstantiateV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Uninstantiate)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Transaction)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Allocation)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11InstantiateV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Instantiate)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GraphV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Graph)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Action)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Prefetch)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeValueV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.AttributeValue)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.AttributeStack)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8AbstractV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Abstract)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA07TestingC0O19TestEventWBacktraceV_Ttg5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a2 - result;
  v9 = a4;
  while (1)
  {
    v10 = v7;
    if (v7 >= v9)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v8 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for TestingSupport.TestEventWBacktrace)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GroupV_Ttg5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Group)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9IgnorableV_Ttg5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Ignorable)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10ObservableV_Ttgq5(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Observable)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9AnimationV_Ttg5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.Animation)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10RenderTickV_Ttg5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.RenderTick)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV20GraphRootValueUpdateV_Ttg5Tm(uint64_t result, uint64_t a2, char a3, unsigned int a4)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a4;
  v9 = a2 - result;
  while (1)
  {
    v10 = v7;
    if (v7 >= v8)
    {
      return v6 | (v10 << 32);
    }

    if (a3)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v9 < v6)
    {
      break;
    }

    v11 = *(v5 + v6);
    if (v11 == &type metadata for Event.GraphRootValueUpdate)
    {
      return v6 | (v10 << 32);
    }

    result = specialized HeterogeneousBuffer.stride<A>(of:)(v11);
    v12 = result + v6;
    if (__OFADD__(result, v6))
    {
      goto LABEL_13;
    }

    if (v12 > 0xFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    v7 = v10 + 1;
    v6 = v12;
    if (v12 < 0)
    {
      __break(1u);
      return v6 | (v10 << 32);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

ValueMetadata *specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (result != &type metadata for Event.AttributeValue)
  {
    return 0;
  }

  if (v5 <= HIDWORD(a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_9:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (result != &type metadata for Event.Abstract)
  {
    return 0;
  }

  if (v5 <= HIDWORD(a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_9:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (result != &type metadata for Event.Graph)
  {
    return 0;
  }

  if (v5 <= HIDWORD(a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_9:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (result != &type metadata for Event.Instantiate)
  {
    return 0;
  }

  if (v5 <= HIDWORD(a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_9:
  __break(1u);
  return result;
}

{
  v5 = a5;
  v6 = a4;
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (result != &type metadata for Event.Uninstantiate)
  {
    return 0;
  }

  if (v5 <= HIDWORD(a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2)
  {
    return (a2 + a1 + 8);
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t))
{
  v6 = a3;
  v8 = HIDWORD(a3);
  result = a5(a1, a2, a3 & 0xFFFFFFFF00000101);
  if (result == v8 && HIDWORD(result) == a4)
  {
    return 0;
  }

  if (HIDWORD(result) >= a4)
  {
    __break(1u);
  }

  else if ((v6 & 1) == 0)
  {
    if (a1)
    {
      return a1 + result + 8;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5Tm(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t))
{
  v6 = a3;
  v8 = HIDWORD(a3);
  result = a5(a1, a2, a3 & 0xFFFFFFFF00000101);
  if (result == v8 && HIDWORD(result) == a4)
  {
    return 0;
  }

  if (HIDWORD(result) >= a4)
  {
    __break(1u);
  }

  else if ((v6 & 1) == 0)
  {
    if (a1)
    {
      return a1 + result + 8;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance EventRef()
{
  v3 = *v0;
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v1);

  return HIDWORD(v3);
}

unint64_t protocol witness for Tracepoint.model(within:) in conformance T_IndirectNodeAdded(unint64_t a1)
{
  *(&v3 + 4) = *(v1 + 4);
  HIDWORD(v3) = *(v1 + 12);
  return T_IndirectNodeAdded.model(within:)(a1, v3, *(&v3 + 1));
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x26D69CC20](a1);

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  if (!a2)
  {
LABEL_12:
    v11 = 0;
    a3 = 0;
LABEL_17:
    *result = isEscapingClosureAtFileLocation;
    result[1] = v11;
    result[2] = v4;
    return a3;
  }

  if (!a3)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = a2;
    v12 = result;
    v6 = 1;
    v13 = a3;
    while (1)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0;
      v8 = swift_allocObject();
      *(v8 + 16) = &v18;
      *(v8 + 24) = v7;
      result = swift_allocObject();
      result[2] = partial apply for closure #1 in KtraceFile.ChunkIterator.next();
      result[3] = v8;
      if (!*(v18 + 16))
      {
        goto LABEL_20;
      }

      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
      aBlock[5] = result;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
      aBlock[3] = &block_descriptor_891;
      v9 = _Block_copy(aBlock);

      ktrace_file_iterate();
      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      swift_beginAccess();
      outlined init with copy of ResourceSet<Interpreter, ()>(v7 + 16, &v15, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);

      if (!v16)
      {
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v15, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMd, &_s21SwiftUITracingSupport16KTraceFile_Chunk_pSgMR);
        isEscapingClosureAtFileLocation = v18;
        v11 = v19;
        a3 = v6 - 1;
LABEL_16:
        v4 = v20;
        result = v12;
        goto LABEL_17;
      }

      outlined init with take of Inspectable(&v15, v17);
      result = outlined init with take of Inspectable(v17, v5);
      a3 = v13;
      if (v13 == v6)
      {
        isEscapingClosureAtFileLocation = v18;
        v11 = v19;
        goto LABEL_16;
      }

      v5 += 40;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned __int16 a6)
{
  v6 = a6;
  v7 = HIDWORD(a5);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_25:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v9;
    *(result + 24) = v6;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
    while (1)
    {
      if (v9 == v7)
      {
LABEL_22:
        v9 = HIDWORD(a5);
        a3 = v8;
        goto LABEL_25;
      }

      v11 = (a4 + 4 + 8 * v9);
      v12 = v9;
      while (1)
      {
        if (v12 >= v7)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if (!a4)
        {
          goto LABEL_29;
        }

        v9 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_27;
        }

        v13 = *(v11 - 2);
        if (((v6 & 0xC000) == 0 || (v13 & (v6 & 0xC000 ^ 0xC000)) == 0) && ((v6 & 0x2000) == 0 || (v13 & 0x2000) != 0))
        {
          break;
        }

LABEL_8:
        v11 += 2;
        ++v12;
        if (v9 == v7)
        {
          goto LABEL_22;
        }
      }

      if ((v6 & 0x1FFF) == 0)
      {
        break;
      }

      if ((v6 & 0x1FFF & v13) == 0)
      {
        goto LABEL_8;
      }

LABEL_18:
      *a2 = *v11;
      if (v10 == a3)
      {
        goto LABEL_25;
      }

      ++a2;
      v8 = v10;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    if (v6)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (**a1)(), unint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  *a1 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v7 = a3 + 48 * a2;
    v8 = *(v7 + 40);
    v9 = *(v7 + 48);
    v10 = *(v7 + 56);
    v11 = *(v7 + 64);
    *result = *(v7 + 32);
    *(result + 8) = v8;
    *(result + 2) = v9;
    *(result + 24) = v10;
    *(result + 2) = v11;
    return Snapshot.subscript.read;
  }

  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D69CE00](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t _StringGuts.validateInclusiveScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateInclusiveSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateInclusiveSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport11InterpreterC0B0V5TypesV12TypeMatchKeyVSbGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport11InterpreterC0B0V5TypesV12TypeMatchKeyVSbGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      *&v7 = *(*(v5 + 48) + 8 * v20);
      v31 = v7;
      v21 = *(*(v5 + 56) + v20);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v31);
      Hasher._combine(_:)(DWORD1(v31));
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(&v7 + 1) = *(&v31 + 1);
      *(*(v8 + 48) + 8 * v16) = v31;
      *(*(v8 + 56) + v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport20AggregateTreeElementOyAC5EventV2IdVGAC06UnsafeG0V6SymbolV3RefVyAjC9MergeOnceVyAC0iG5StatsVG__GGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport20AggregateTreeElementOyAC5EventV2IdVGAC06UnsafeG0V6SymbolV3RefVyAjC9MergeOnceVyAC0iG5StatsVG__GGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 40 * v21;
      v23 = *(v22 + 32);
      v35 = *(v22 + 16);
      v36 = *v22;
      v34 = *(*(v5 + 56) + 4 * v21);
      Hasher.init(_seed:)();
      if (v36)
      {
        MEMORY[0x26D69DBC0](1);
        Hasher.init()();
        MEMORY[0x26D69DBC0](v36);
        MEMORY[0x26D69DBC0](v35);
        v24 = Hasher.finalize()();
        MEMORY[0x26D69DBC0](v24);
        Hasher._combine(_:)(v23);
      }

      else
      {
        MEMORY[0x26D69DBC0](0);
      }

      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v16 = v35;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v16 = v35;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 40 * v15;
      *(v17 + 16) = v16;
      *v17 = v36;
      *(v17 + 32) = v23;
      *(*(v7 + 56) + 4 * v15) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport20AggregateTreeElementOyAC04ViewG0V8TElementOGAC06UnsafeG0V6SymbolV3RefVyAjC9MergeOnceVyAC05EventG5StatsVG__GGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport20AggregateTreeElementOyAC04ViewG0V8TElementOGAC06UnsafeG0V6SymbolV3RefVyAjC9MergeOnceVyAC05EventG5StatsVG__GGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v4;
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          if (v8 >= v13)
          {
            break;
          }

          v19 = v9[v8];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v12 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if ((v38 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_42;
        }

        v37 = 1 << *(v5 + 32);
        v3 = v2;
        if (v37 >= 64)
        {
          bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v37;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 40 * v20;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v25 = *(v22 + 8);
      v42 = *v22;
      v40 = *(v21 + 4 * v20);
      v41 = *(v22 + 32);
      Hasher.init(_seed:)();
      if ((~(v24 & v23 & v25) & 0xF000000000000007) == 0)
      {
        v26 = 0;
LABEL_17:
        MEMORY[0x26D69DBC0](v26);
        goto LABEL_25;
      }

      MEMORY[0x26D69DBC0](1);
      v27 = v24 >> 62;
      if ((v24 >> 62) > 1)
      {
        if (v27 != 2)
        {
          v26 = 2;
          goto LABEL_17;
        }

        v29 = 3;
      }

      else
      {
        if (!v27)
        {
          MEMORY[0x26D69DBC0](0);
          Hasher.init()();
          MEMORY[0x26D69DBC0](v42);
          MEMORY[0x26D69DBC0](v23);
          v28 = Hasher.finalize()();
          MEMORY[0x26D69DBC0](v28);
          Hasher._combine(_:)(v41);
          goto LABEL_25;
        }

        v29 = 1;
      }

      MEMORY[0x26D69DBC0](v29);
      MEMORY[0x26D69DC00](v42);
LABEL_25:
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v42;
      *(v16 + 8) = v25;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
      *(v16 + 32) = v41;
      *(*(v7 + 56) + 4 * v15) = v40;
      ++*(v7 + 16);
      v5 = v39;
    }
  }

LABEL_42:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport19ViewGraphRootValuesVAC12AttributeRefVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport19ViewGraphRootValuesVAC12AttributeRefVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 2 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 2 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy21SwiftUITracingSupport13TransactionIDVSayAC8EventRefVGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport13TransactionIDVSayAC8EventRefVGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport11AttributeIDVAC0F3RefVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport11AttributeIDVAC0F3RefVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *(v21 + 8);
      v23 = *v21;
      v24 = *(*(v5 + 56) + 4 * v20);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      MEMORY[0x26D69DC00](v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v22;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport11AnimationIDVAC8EventRefVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport11AnimationIDVAC8EventRefVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport8SubgraphV10PrimaryKeyOAC7TreeRefVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8SubgraphV10PrimaryKeyOAC7TreeRefVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 12 * v20;
      v23 = *(v22 + 8);
      v24 = *v22;
      v36 = *(v21 + 8 * v20);
      Hasher.init(_seed:)();
      if (v23)
      {
        MEMORY[0x26D69DBC0](1);
        LODWORD(v25) = v24;
      }

      else
      {
        v25 = HIDWORD(v24);
        MEMORY[0x26D69DBC0](0);
        Hasher._combine(_:)(v24);
      }

      Hasher._combine(_:)(v25);
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 12 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      v5 = v35;
      *(*(v7 + 56) + 8 * v15) = v36;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport8SnapshotV14AbstractionKeyVAC10AbstractIDVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8SnapshotV14AbstractionKeyVAC10AbstractIDVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v8 >= v13)
          {
            break;
          }

          v19 = v9[v8];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v12 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if ((v34 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_39;
        }

        v33 = 1 << *(v5 + 32);
        v3 = v2;
        if (v33 >= 64)
        {
          bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v33;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 72 * v20;
      v22 = *(v21 + 16);
      v37 = *(v21 + 24);
      v42 = *(v21 + 26);
      v43 = *(v21 + 30);
      v23 = *(v21 + 25);
      v40 = *(v21 + 32);
      v41 = *v21;
      v39 = *(v21 + 48);
      v38 = *(v21 + 64);
      v36 = *(*(v5 + 56) + 4 * v20);
      Hasher.init(_seed:)();
      MEMORY[0x26D69DBC0](v41);
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          MEMORY[0x26D69DBC0](2);
          Hasher._combine(_:)(v22);
          goto LABEL_23;
        }

        v24 = 3;
      }

      else
      {
        if (v23)
        {
          MEMORY[0x26D69DBC0](1);
          Hasher._combine(_:)(v22);
          v5 = v35;
          Hasher._combine(_:)(HIDWORD(v22));
          Hasher._combine(_:)(v37);
          goto LABEL_23;
        }

        v24 = 0;
      }

      MEMORY[0x26D69DBC0](v24);
      MEMORY[0x26D69DBC0](v22);
LABEL_23:
      Hasher.init()();
      MEMORY[0x26D69DBC0](v40);
      MEMORY[0x26D69DBC0](v39);
      v25 = Hasher.finalize()();
      MEMORY[0x26D69DBC0](v25);
      Hasher._combine(_:)(v38);
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 72 * v15;
      *v16 = v41;
      *(v16 + 16) = v22;
      *(v16 + 24) = v37;
      *(v16 + 25) = v23;
      *(v16 + 26) = v42;
      *(v16 + 30) = v43;
      *(v16 + 32) = v40;
      *(v16 + 48) = v39;
      *(v16 + 64) = v38;
      *(*(v7 + 56) + 4 * v15) = v36;
      ++*(v7 + 16);
    }
  }

LABEL_39:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport5EventV2IdVAC11InterpreterC0F16AbstractionCacheVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport5EventV2IdVAC11InterpreterC0F16AbstractionCacheVGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 40 * v20;
      v34 = *(v21 + 16);
      v35 = *v21;
      v22 = *(v21 + 32);
      v23 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher.init()();
      MEMORY[0x26D69DBC0](v35);
      MEMORY[0x26D69DBC0](v34);
      v24 = Hasher.finalize()();
      MEMORY[0x26D69DBC0](v24);
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v35;
      *(v16 + 16) = v34;
      *(v16 + 32) = v22;
      *(*(v7 + 56) + 8 * v15) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport5EventV2IdVAC0F3RefVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport5EventV2IdVAC0F3RefVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 40 * v20;
      v22 = *(v21 + 32);
      v34 = *v21;
      v35 = *(v21 + 16);
      v23 = *(*(v5 + 56) + 4 * v20);
      Hasher.init(_seed:)();
      Hasher.init()();
      MEMORY[0x26D69DBC0](v34);
      MEMORY[0x26D69DBC0](v35);
      v24 = Hasher.finalize()();
      MEMORY[0x26D69DBC0](v24);
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v34;
      *(v16 + 16) = v35;
      *(v16 + 32) = v22;
      *(*(v7 + 56) + 4 * v15) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport14Evolution_PairVAC0F0_pXpGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport14Evolution_PairVAC0F0_pXpGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 8 * v20);
      v22 = *(v21 + 1);
      v23 = *v21;
      v33 = *(*(v5 + 56) + 16 * v20);
      Hasher.init(_seed:)();
      MEMORY[0x26D69DBC0](v23);
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 8 * v15;
      *v16 = v23;
      *(v16 + 4) = v22;
      *(*(v7 + 56) + 16 * v15) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport4TreeV8CacheKeyOAC11InterpreterC0f11AbstractionG0VGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport4TreeV8CacheKeyOAC11InterpreterC0f11AbstractionG0VGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 8 * v21;
      v23 = *(v5 + 56) + 24 * v21;
      v24 = *(v22 + 4);
      v25 = *v22;
      v37 = *(v23 + 16);
      v35 = *v23;
      v36 = *(v23 + 8);
      Hasher.init(_seed:)();
      if (v24)
      {
        MEMORY[0x26D69DBC0](1);
      }

      else
      {
        MEMORY[0x26D69DBC0](0);
        Hasher._combine(_:)(v25);
      }

      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 8 * v15;
      *v16 = v25;
      *(v16 + 4) = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v35;
      *(v17 + 8) = v36;
      *(v17 + 16) = v37;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport7TreeRefVAEGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport7TreeRefVAEGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      MEMORY[0x26D69DC00](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport10ChangelistC2IdOAC10UnsafeTreeV6SymbolV3RefVyAgC10Subforest2V4ItemV__GGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport10ChangelistC2IdOAC10UnsafeTreeV6SymbolV3RefVyAgC10Subforest2V4ItemV__GGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *(v21 + 8);
      v23 = *v21;
      v34 = *(*(v5 + 56) + 4 * v20);
      Hasher.init(_seed:)();
      if (v22 == 1)
      {
        if (v23)
        {
          v24 = 2;
        }

        else
        {
          v24 = 1;
        }

        MEMORY[0x26D69DBC0](v24);
      }

      else
      {
        MEMORY[0x26D69DBC0](0);
        MEMORY[0x26D69DC00](v23);
      }

      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v22;
      *(*(v7 + 56) + 4 * v15) = v34;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_37;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport8EventRefVSiGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8EventRefVSiGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport10ChangelistC2IdOSiGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport10ChangelistC2IdOSiGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *(v21 + 8);
      v23 = *v21;
      v34 = *(*(v5 + 56) + 8 * v20);
      Hasher.init(_seed:)();
      if (v22 == 1)
      {
        if (v23)
        {
          v24 = 2;
        }

        else
        {
          v24 = 1;
        }

        MEMORY[0x26D69DBC0](v24);
      }

      else
      {
        MEMORY[0x26D69DBC0](0);
        MEMORY[0x26D69DC00](v23);
      }

      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v22;
      *(*(v7 + 56) + 8 * v15) = v34;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_37;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport5EventV2IdVSiGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport5EventV2IdVSiGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 40 * v20;
      v22 = *(v21 + 32);
      v34 = *v21;
      v35 = *(v21 + 16);
      v23 = *(*(v5 + 56) + 8 * v20);
      Hasher.init(_seed:)();
      Hasher.init()();
      MEMORY[0x26D69DBC0](v34);
      MEMORY[0x26D69DBC0](v35);
      v24 = Hasher.finalize()();
      MEMORY[0x26D69DBC0](v24);
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v34;
      *(v16 + 16) = v35;
      *(v16 + 32) = v22;
      *(*(v7 + 56) + 8 * v15) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport23TracepointAssertionPairVs6UInt32VGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport23TracepointAssertionPairVs6UInt32VGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *(v21 + 8);
      v23 = *v21;
      v24 = *(*(v5 + 56) + 4 * v20);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      MEMORY[0x26D69DBC0](v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v22;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataVSays6UInt32V_AGtGGMd, &_ss18_DictionaryStorageCy10Foundation4DataVSays6UInt32V_AGtGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v30 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        outlined copy of Data._Representation(v30, *(*(v5 + 48) + 16 * v20 + 8));
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v16 = v30;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v16 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SwiftUITracingSupport12AttachmentIDV5TypedVy_SSGGMd, &_ss18_DictionaryStorageCySS21SwiftUITracingSupport12AttachmentIDV5TypedVy_SSGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10AGGraphRefaSo010AGSubgraphD0aGMd, &_ss18_DictionaryStorageCySo10AGGraphRefaSo010AGSubgraphD0aGMR);
  v32 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      Hasher.init(_seed:)();
      type metadata accessor for AGGraphRef(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type AGGraphRef and conformance AGGraphRef, type metadata accessor for AGGraphRef, &protocol conformance descriptor for AGGraphRef);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}